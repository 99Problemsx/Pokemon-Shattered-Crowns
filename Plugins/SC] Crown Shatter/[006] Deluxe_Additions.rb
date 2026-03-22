#===============================================================================
# Crown Shatter — Deluxe Battle Kit Integration
#===============================================================================
# Midbattle scripting triggers, battle rules, and AI registration hooks
# for Crown Shatter. Follows the same pattern as Terastallization.
#===============================================================================

#===============================================================================
# Game Stats Tracking
#===============================================================================
if defined?(GameStats)
  class GameStats
    attr_accessor :shatter_count

    alias shatter_initialize initialize
    def initialize
      shatter_initialize
      @shatter_count = 0
    end
  end
end

#===============================================================================
# Battle Rules — "nocrownshatter" / "wildcrownshatter"
#===============================================================================
if defined?(Game_Temp)
  class Game_Temp
    alias shatter_add_battle_rule add_battle_rule
    def add_battle_rule(rule, var = nil)
      case rule.downcase
      when "nocrownshatter"
        @battle_rules["nocrownshatter"] = true
      when "wildcrownshatter"
        @battle_rules["wildcrownshatter"] = var || true
      else
        shatter_add_battle_rule(rule, var)
      end
    end
  end
end

#===============================================================================
# Additional battle rules list
#===============================================================================
if defined?(Battle) && Battle.method_defined?(:additionalRules)
  class Battle
    alias shatter_additionalRules additionalRules
    def additionalRules
      rules = shatter_additionalRules || []
      rules.push("nocrownshatter")
      return rules
    end
  end
end

#===============================================================================
# Midbattle Handlers — Crown Shatter Triggers
#===============================================================================
if defined?(MidbattleHandlers)
  #=============================================================================
  # "crownShatter" — Force a battler to Shatter mid-battle
  #=============================================================================
  MidbattleHandlers.add(:midbattle_triggers, "crownShatter",
    proc { |battle, idxBattler, idxTarget, params|
      battler = battle.battlers[idxBattler]
      next if !battler || battler.fainted?
      side  = battler.idxOwnSide
      # Override: allow forced Shatter even if already used
      battle.sides[side].effects[PBEffects::ShatterUsed] = false
      owner = battle.pbGetOwnerIndexFromBattlerIndex(idxBattler)
      battle.crown_shatter[side][owner] = -1
      battle.pbCrownShatter(idxBattler)
    }
  )

  #=============================================================================
  # "disableShatter" — Toggle Shatter availability
  #=============================================================================
  MidbattleHandlers.add(:midbattle_triggers, "disableShatter",
    proc { |battle, idxBattler, idxTarget, params|
      battler = battle.battlers[idxBattler]
      next if !battler
      side  = battler.idxOwnSide
      if params
        # Disable: mark as used
        battle.sides[side].effects[PBEffects::ShatterUsed] = true
      else
        # Re-enable
        battle.sides[side].effects[PBEffects::ShatterUsed] = false
        owner = battle.pbGetOwnerIndexFromBattlerIndex(idxBattler)
        battle.crown_shatter[side][owner] = -1
      end
    }
  )

  #=============================================================================
  # "setShatterField" — Directly set a Shatter Field without a battler
  #=============================================================================
  MidbattleHandlers.add(:midbattle_triggers, "setShatterField",
    proc { |battle, idxBattler, idxTarget, params|
      type = params.is_a?(Symbol) ? params : params.to_s.upcase.to_sym rescue :FIRE
      field_data = CrownShatter::SHATTER_FIELDS[type]
      next unless field_data
      duration = Settings::SHATTER_FIELD_DURATION rescue 5
      battle.field.effects[PBEffects::ShatterField]     = duration
      battle.field.effects[PBEffects::ShatterFieldType] = type
      battle.pbDisplay(_INTL(field_data[:message]))
      battle.apply_shatter_immediate_effects(type, field_data, idxBattler) if battle.respond_to?(:apply_shatter_immediate_effects)
    }
  )

  #=============================================================================
  # "clearShatterField" — Remove the active Shatter Field
  #=============================================================================
  MidbattleHandlers.add(:midbattle_triggers, "clearShatterField",
    proc { |battle, idxBattler, idxTarget, params|
      if battle.shatterFieldActive?
        type = battle.shatterFieldType
        field_data = CrownShatter::SHATTER_FIELDS[type]
        battle.field.effects[PBEffects::ShatterField]     = 0
        battle.field.effects[PBEffects::ShatterFieldType] = nil
        end_msg = field_data ? field_data[:end_message] : "The Shatter Field faded."
        battle.pbDisplay(_INTL(end_msg))
      end
    }
  )
end

#===============================================================================
# AI Registration — Enemy Shatter Decision
#===============================================================================
class Battle::AI
  #=============================================================================
  # Register AI's Shatter intent
  #=============================================================================
  alias shatter_pbRegisterEnemySpecialAction pbRegisterEnemySpecialAction
  def pbRegisterEnemySpecialAction(idxBattler)
    # Check if Shatter is available and AI wants to use it
    if @battle.pbCanShatter?(idxBattler) && should_ai_shatter?(idxBattler)
      @battle.pbRegisterShatter(idxBattler)
      return
    end
    shatter_pbRegisterEnemySpecialAction(idxBattler)
  end

  #=============================================================================
  # Basic AI Shatter evaluation (overridden by AAI Shatter Intelligence)
  #=============================================================================
  def should_ai_shatter?(idxBattler)
    battler = @battle.battlers[idxBattler]
    return false if !battler || battler.fainted?
    # Basic heuristic: use Shatter when HP > 60% and turn >= 2
    return false if battler.hp < battler.totalhp * 0.6
    return false if @battle.turnCount < 1
    # Don't Shatter if a Shatter Field is already active with same type
    if @battle.shatterFieldActive?
      return false if @battle.shatterFieldType == battler.pokemon.types[0]
    end
    # 40% base chance for vanilla AI (AAI overrides this with proper scoring)
    return rand(100) < 40
  end
end
