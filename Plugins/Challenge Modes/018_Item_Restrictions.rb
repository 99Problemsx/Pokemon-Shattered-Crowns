#===============================================================================
# Item Restrictions Rule for Challenge Modes
# Bans X-Items and limits Revive/Full Restore usage per battle
#===============================================================================

module ChallengeModes
  # Initialize item usage counter
  @battle_item_usage ||= {}
  
  # Check if Item Restrictions rule is active
  def self.item_restrictions?
    return on?(:ITEM_RESTRICTIONS)
  end
  
  # Reset item usage counter (called at battle start)
  def self.reset_battle_items
    @battle_item_usage = {}
  end
  
  # Get item usage count for current battle
  def self.get_item_usage(item_id)
    @battle_item_usage ||= {}
    return @battle_item_usage[item_id] || 0
  end
  
  # Increment item usage count
  def self.increment_item_usage(item_id)
    @battle_item_usage ||= {}
    @battle_item_usage[item_id] ||= 0
    @battle_item_usage[item_id] += 1
  end
  
  # Check if item is allowed
  def self.can_use_item?(item_id)
    return true if !item_restrictions?

    item_data = GameData::Item.try_get(item_id)
    return true unless item_data
    item_symbol = item_data.id
    
    # Check if item is banned
    if ITEM_RESTRICTIONS_CONFIG[:banned_items].include?(item_symbol)
      return false
    end
    
    # Check if item is limited
    if ITEM_RESTRICTIONS_CONFIG[:limited_items].include?(item_symbol)
      limit = ITEM_RESTRICTIONS_CONFIG[:item_limits][item_symbol] || 3
      usage = get_item_usage(item_symbol)
      return usage < limit
    end
    
    return true
  end
  
  # Get remaining uses for limited item
  def self.remaining_uses(item_id)
    return -1 if !item_restrictions?

    item_data = GameData::Item.try_get(item_id)
    return -1 unless item_data
    item_symbol = item_data.id
    
    return -1 if !ITEM_RESTRICTIONS_CONFIG[:limited_items].include?(item_symbol)
    
    limit = ITEM_RESTRICTIONS_CONFIG[:item_limits][item_symbol] || 3
    usage = get_item_usage(item_symbol)
    return limit - usage
  end
end

#===============================================================================
# Hook into battle item usage
#===============================================================================
class Battle
  alias __challengemodes_itemrestrict__pbUseItemOnPokemon pbUseItemOnPokemon unless method_defined?(:__challengemodes_itemrestrict__pbUseItemOnPokemon)

  # Signature must match Essentials v21.1: (item, idxParty, userBattler).
  # Earlier versions of this file used (item, battler, scene) and crashed
  # on the first item use in battle because userBattler.pbDisplay doesn't
  # exist. Display messages now go through self.pbDisplay (Battle's own).
  def pbUseItemOnPokemon(item, idxParty, userBattler)
    if ChallengeModes.item_restrictions?
      item_data = GameData::Item.try_get(item)
      if item_data
        item_symbol = item_data.id

        # Banned items
        if ChallengeModes::ITEM_RESTRICTIONS_CONFIG[:banned_items].include?(item_symbol)
          pbDisplay(_INTL("{1} is banned in Challenge Mode!", item_data.name))
          return false
        end

        # Limited items: enforce limit, then increment + announce
        if ChallengeModes::ITEM_RESTRICTIONS_CONFIG[:limited_items].include?(item_symbol)
          limit = ChallengeModes::ITEM_RESTRICTIONS_CONFIG[:item_limits][item_symbol] || 3
          if !ChallengeModes.can_use_item?(item_symbol)
            pbDisplay(_INTL("You've already used {1} {2} this battle!", limit, item_data.name))
            return false
          end
          ChallengeModes.increment_item_usage(item_symbol)
          remaining = ChallengeModes.remaining_uses(item_symbol)
          if remaining == 0
            pbDisplay(_INTL("(That was your last {1} for this battle)", item_data.name))
          elsif remaining > 0
            pbDisplay(_INTL("({1} {2} remaining this battle)", remaining, item_data.name))
          end
        end
      end
    end

    return __challengemodes_itemrestrict__pbUseItemOnPokemon(item, idxParty, userBattler)
  end
  
  # Reset item counter at battle start
  alias __challengemodes_itemrestrict__pbStartBattle pbStartBattle unless method_defined?(:__challengemodes_itemrestrict__pbStartBattle)
  
  def pbStartBattle
    ChallengeModes.reset_battle_items if ChallengeModes.item_restrictions?
    return __challengemodes_itemrestrict__pbStartBattle
  end
end

#===============================================================================
# Block banned items in ItemHandlers — wraps existing handlers via add_if so
# we don't clobber Permafaint's CanUseInBattle handlers for REVIVE/MAXREVIVE
# (which guard against reviving permafainted Pokemon). When this rule is off
# the inner handler runs unmodified; when it's on we additionally enforce
# the ban / per-battle limit.
#
# ItemHandlers::CanUseInBattle has no `add_if`, so we read whatever handler
# is currently registered, build a wrapper that defers to it, and re-register.
#===============================================================================
[
  :XATTACK,    :XDEFEND,    :XSPATK, :XSPDEF, :XSPEED,
  :XACCURACY,  :DIREHIT,    :GUARDSPEC,
  :XATTACK2,   :XDEFEND2,   :XSPATK2, :XSPDEF2, :XSPEED2, :XACCURACY2,
  :XATTACK3,   :XDEFEND3,   :XSPATK3, :XSPDEF3, :XSPEED3, :XACCURACY3,
  :XATTACK6,   :XDEFEND6,   :XSPATK6, :XSPDEF6, :XSPEED6, :XACCURACY6,
  :REVIVE,     :MAXREVIVE,  :FULLRESTORE
].each do |item_id|
  next unless GameData::Item.exists?(item_id)
  inner = ItemHandlers::CanUseInBattle[item_id]
  ItemHandlers::CanUseInBattle.add(item_id,
    proc { |item, pokemon, battler, move, firstAction, battle, scene, showMessages|
      if ChallengeModes.item_restrictions?
        item_data = GameData::Item.try_get(item)
        if item_data
          item_symbol = item_data.id

          if ChallengeModes::ITEM_RESTRICTIONS_CONFIG[:banned_items].include?(item_symbol)
            battle.pbDisplay(_INTL("{1} is banned in Challenge Mode!", item_data.name)) if showMessages && battle
            next false
          end

          if ChallengeModes::ITEM_RESTRICTIONS_CONFIG[:limited_items].include?(item_symbol) &&
             !ChallengeModes.can_use_item?(item_symbol)
            limit = ChallengeModes::ITEM_RESTRICTIONS_CONFIG[:item_limits][item_symbol] || 3
            battle.pbDisplay(_INTL("You've already used {1} {2} this battle!", limit, item_data.name)) if showMessages && battle
            next false
          end
        end
      end

      # Defer to the previously registered handler so e.g. Permafaint's
      # "can't revive perma-fainted" check still runs.
      next true unless inner
      next inner.call(item, pokemon, battler, move, firstAction, battle, scene, showMessages)
    }
  )
end

#===============================================================================
# Script command to check item usage
#===============================================================================
def pbCheckItemUsage
  if !ChallengeModes.item_restrictions?
    pbMessage(_INTL("Item Restrictions is not active."))
    return
  end
  
  text = "Battle Item Usage:\\n"
  used_any = false
  
  ChallengeModes::ITEM_RESTRICTIONS_CONFIG[:limited_items].each do |item_symbol|
    usage = ChallengeModes.get_item_usage(item_symbol)
    if usage > 0
      data = GameData::Item.try_get(item_symbol)
      item_name = data ? data.name : item_symbol.to_s
      limit = ChallengeModes::ITEM_RESTRICTIONS_CONFIG[:item_limits][item_symbol] || 3
      text += "#{item_name}: #{usage}/#{limit}\\n"
      used_any = true
    end
  end
  
  if !used_any
    text += "No limited items used yet."
  end
  
  pbMessage(_INTL(text))
end

#===============================================================================
# (Removed: load-time `puts` block. Same reason as in 017_Species_Clause —
# gated on ChallengeModes.running? which is false at file-load time.)
#===============================================================================
