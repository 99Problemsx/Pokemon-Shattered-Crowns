#===============================================================================
# Boss Battles — Midbattle Trigger Commands
# Registers new commands for use in DBK hash-style midbattle scripts.
# This allows boss mechanics to be applied to any battler (wild or trainer)
# through the standard midbattle scripting system.
#
# Available commands:
#   "makeBoss"    — Converts a battler into a boss mid-battle
#   "bossShields" — Sets or adjusts shield count on a boss
#   "bossPassive" — Sets or changes the passive ability on a boss
#
# Usage example in MidbattleScripts:
#
#   BOSS_TRAINER = {
#     "RoundStartCommand_1_foe" => {
#       "makeBoss" => { shields: 3, passive: :INTIMIDATE, hp_boost: 5 }
#     },
#     "BossShieldBroken_foe" => {
#       "speech" => "You broke through my shield!"
#     }
#   }
#
# Or from an event script:
#   setBattleRule("midbattleScript", :BOSS_TRAINER)
#
#===============================================================================

if defined?(MidbattleHandlers)
  #-----------------------------------------------------------------------------
  # makeBoss — Converts a battler into a boss mid-battle.
  #
  # Params:
  #   true  — Use all defaults (auto shields, default HP boost, default immunities)
  #   Hash  — Override specific settings:
  #     :shields    => Integer (number of shield segments, default: auto-calc)
  #     :passive    => :ABILITY (passive ability symbol)
  #     :hp_boost   => Integer (HP multiplier, default: BOSS_HP_BOOST)
  #     :immunities => [:SYMBOL, ...] (override immunities)
  #
  # Examples:
  #   "makeBoss" => true
  #   "makeBoss" => { shields: 3, passive: :INTIMIDATE, hp_boost: 5 }
  #   "makeBoss" => { shields: 2, immunities: [:FLINCH, :SLEEP] }
  #-----------------------------------------------------------------------------
  MidbattleHandlers.add(:midbattle_triggers, "makeBoss",
    proc { |battle, idxBattler, idxTarget, params|
      battler = battle.battlers[idxBattler]
      next if !battler || battler.fainted? || battle.decision > 0
      pkmn = battler.pokemon
      next if !pkmn
      next if pkmn.boss_pokemon  # Already a boss
      opts = params.is_a?(Hash) ? params : {}
      PBDebug.log("[Boss Battle] Making #{battler.pbThis} (#{battler.index}) into a boss via midbattle script")
      # Mark as boss
      pkmn.boss_pokemon = true
      # Apply HP boost
      hp_boost = opts[:hp_boost] || Settings::BOSS_HP_BOOST
      if hp_boost > 1 && pkmn.hp_level < hp_boost
        pkmn.hp_level = hp_boost
        pkmn.calc_stats
        pkmn.hp = pkmn.totalhp
        battler.pbUpdate
      end
      # Apply immunities
      immunities = opts[:immunities] || Settings::BOSS_DEFAULT_IMMUNITIES.clone
      pkmn.immunities = immunities
      # Set shields
      shields = opts[:shields] || pkmn.boss_shield_count
      battler.effects[PBEffects::BossShieldMax]     = shields
      battler.effects[PBEffects::BossShieldCurrent] = shields
      battler.effects[PBEffects::BossShieldsLost]   = 0
      # Set passive ability
      pa = opts[:passive]
      if pa && GameData::Ability.exists?(pa)
        battler.effects[PBEffects::BossPassiveAbility] = pa
        ability_name = GameData::Ability.get(pa).name
        battle.pbDisplay(_INTL("{1} radiates the power of {2}!", battler.pbThis, ability_name))
        Battle::AbilityEffects.triggerOnSwitchIn(pa, battler, battle, true)
      end
      # Announce
      battle.pbDisplay(_INTL("{1} is a powerful Boss Pokémon!", battler.pbThis))
      battle.pbDisplay(_INTL("It has {1} shield segments!", shields))
      # Refresh databox
      battle.scene.pbRefreshOne(battler.index)
    }
  )

  #-----------------------------------------------------------------------------
  # bossShields — Sets or adjusts the shield count on an existing boss.
  #
  # Params:
  #   Integer — Set absolute shield count
  #   :Reset  — Restore all shields to max
  #
  # Examples:
  #   "bossShields" => 5
  #   "bossShields" => :Reset
  #-----------------------------------------------------------------------------
  MidbattleHandlers.add(:midbattle_triggers, "bossShields",
    proc { |battle, idxBattler, idxTarget, params|
      battler = battle.battlers[idxBattler]
      next if !battler || !battler.isBoss? || battle.decision > 0
      case params
      when :Reset
        max = battler.bossShieldMax
        battler.effects[PBEffects::BossShieldCurrent] = max
        battler.effects[PBEffects::BossShieldsLost]   = 0
        PBDebug.log("[Boss Battle] #{battler.pbThis} shields reset to #{max}")
        battle.pbDisplay(_INTL("{1}'s shields have been restored!", battler.pbThis))
      when Integer
        battler.effects[PBEffects::BossShieldMax]     = params
        battler.effects[PBEffects::BossShieldCurrent] = params
        battler.effects[PBEffects::BossShieldsLost]   = 0
        PBDebug.log("[Boss Battle] #{battler.pbThis} shields set to #{params}")
        battle.pbDisplay(_INTL("{1} now has {2} shield segments!", battler.pbThis, params))
      end
      battle.scene.pbRefreshOne(battler.index)
    }
  )

  #-----------------------------------------------------------------------------
  # bossPassive — Sets or changes the passive ability on a boss battler.
  #
  # Params:
  #   :ABILITY — Ability symbol to set as passive
  #   nil      — Remove passive ability
  #
  # Examples:
  #   "bossPassive" => :INTIMIDATE
  #   "bossPassive" => nil
  #-----------------------------------------------------------------------------
  MidbattleHandlers.add(:midbattle_triggers, "bossPassive",
    proc { |battle, idxBattler, idxTarget, params|
      battler = battle.battlers[idxBattler]
      next if !battler || !battler.isBoss? || battle.decision > 0
      if params.nil?
        battler.effects[PBEffects::BossPassiveAbility] = nil
        PBDebug.log("[Boss Battle] #{battler.pbThis} passive ability removed")
        battle.pbDisplay(_INTL("{1}'s extra aura faded!", battler.pbThis))
      elsif GameData::Ability.exists?(params)
        battler.effects[PBEffects::BossPassiveAbility] = params
        ability_name = GameData::Ability.get(params).name
        PBDebug.log("[Boss Battle] #{battler.pbThis} passive ability set to #{ability_name}")
        battle.pbDisplay(_INTL("{1} radiates the power of {2}!", battler.pbThis, ability_name))
        Battle::AbilityEffects.triggerOnSwitchIn(params, battler, battle, true)
      end
    }
  )
end
