#===============================================================================
# Boss Battles — Global Midbattle Handlers
# Controls the boss battle lifecycle through midbattle triggers.
#===============================================================================

#===============================================================================
# Wild Boss Battle Setup — handles wild-battle-specific boss initialization.
# For trainer boss battles, use the "makeBoss" midbattle trigger command instead.
#===============================================================================
MidbattleHandlers.add(:midbattle_global, :wild_boss_battle,
  proc { |battle, idxBattler, idxTarget, trigger|
    next if !battle.wildBattle?
    next if battle.wildBattleMode != :boss
    foe = battle.battlers[1]
    next if !foe || !foe.wild?
    logname = _INTL("{1} ({2})", foe.pbThis, foe.index)

    case trigger
    #---------------------------------------------------------------------------
    # Initialize boss properties on the first round.
    #---------------------------------------------------------------------------
    when "RoundStartCommand_1_foe"
      if foe.isBoss?
        PBDebug.log("[Boss Battle] #{logname} boss properties initiated")
        rules = battle.bossRules || {}
        # Set shield effects
        shields = rules[:shields] || foe.pokemon.boss_shield_count
        foe.effects[PBEffects::BossShieldMax]     = shields
        foe.effects[PBEffects::BossShieldCurrent] = shields
        foe.effects[PBEffects::BossShieldsLost]   = 0
        # Set passive ability
        pa = rules[:passive_ability] || foe.pokemon.passive_ability
        if pa && GameData::Ability.exists?(pa)
          foe.effects[PBEffects::BossPassiveAbility] = pa
          ability_name = GameData::Ability.get(pa).name
          battle.pbDisplay(_INTL("{1} radiates the power of {2}!", foe.pbThis, ability_name))
          # Trigger passive ability switch-in effects
          Battle::AbilityEffects.triggerOnSwitchIn(pa, foe, battle, true)
        end
        # Disable pokeballs during boss fight
        battle.disablePokeBalls = true
        battle.sosBattle = false if defined?(battle.sosBattle)
        battle.totemBattle = nil if defined?(battle.totemBattle)
        # Display boss announcement
        battle.pbDisplay(_INTL("{1} is a powerful Boss Pokémon!", foe.pbThis))
        battle.pbDisplay(_INTL("It has {1} shield segments!", shields))
        # Refresh databox to show boss UI
        battle.scene.pbRefreshOne(foe.index)
      else
        # Not actually a boss — clear boss mode
        battle.wildBattleMode = nil
      end

    #---------------------------------------------------------------------------
    # Boss battle won — track stats.
    #---------------------------------------------------------------------------
    when "BattleEndWin"
      if battle.wildBattleMode == :boss
        PBDebug.log("[Boss Battle] Boss battle won")
      end
    end
  }
)

#===============================================================================
# Universal Boss Battle Core — handles shield/segment mechanics for ANY boss
# battler in any battle type (wild or trainer).
# This fires for every battler via the midbattle_global system.
#===============================================================================
MidbattleHandlers.add(:midbattle_global, :boss_battle_core,
  proc { |battle, idxBattler, idxTarget, trigger|
    next if idxBattler.nil?
    battler = battle.battlers[idxBattler]
    next if !battler || !battler.isBoss?

    case trigger
    #---------------------------------------------------------------------------
    # Check for shield breaks after dealing damage to any boss.
    #---------------------------------------------------------------------------
    when /\ATargetTookDamage/
      battler.pbCheckBossSegment

    #---------------------------------------------------------------------------
    # When all shields are broken — universal handling.
    #---------------------------------------------------------------------------
    when /\ABossShieldBroken/
      if battler.bossShieldCurrent <= 0
        # Re-enable pokeballs for wild boss battles
        if battle.wildBattle? && battle.wildBattleMode == :boss
          battle.disablePokeBalls = false
        end
        battle.pbDisplay(_INTL("All of {1}'s shields have been shattered!", battler.pbThis(true)))
        if battle.wildBattle? && battle.wildBattleMode == :boss
          battle.pbDisplay(_INTL("{1} can now be captured!", battler.pbThis))
        end
      end
    end
  }
)
