#===============================================================================
# Crown Shatter — Midbattle Script Examples
#===============================================================================
# Example midbattle scripts demonstrating Crown Shatter integration with
# DBK's midbattle scripting system. These can be used as templates.
#===============================================================================

if defined?(MidbattleScripts)
  module MidbattleScripts
    #===========================================================================
    # Example 1: Boss Trainer Shatters on Turn 3
    # Usage: setBattleRule("midbattleScript", :SHATTER_BOSS_FIRE)
    #===========================================================================
    SHATTER_BOSS_FIRE = {
      "RoundStartCommand_3_foe" => {
        "speech"       => "The power of the Shattered Crown flows through me!",
        "crownShatter" => true
      },
      "AfterCrownShatter_foe" => {
        "speech" => "Feel the heat of the Scorched Field!"
      }
    }

    #===========================================================================
    # Example 2: Rival Shatters when their Pokemon is at half HP
    # Usage: setBattleRule("midbattleScript", :SHATTER_RIVAL_COUNTER)
    #===========================================================================
    SHATTER_RIVAL_COUNTER = {
      "TargetHPHalf_foe" => {
        "speech"       => "You think you've got me?\\nTime to turn this around!",
        "crownShatter" => true
      },
      "AfterCrownShatter_foe" => {
        "speech" => "The battlefield bends to MY will now!"
      }
    }

    #===========================================================================
    # Example 3: Both sides get Shatter disabled until a story trigger
    # Usage: setBattleRule("midbattleScript", :SHATTER_STORY_UNLOCK)
    #===========================================================================
    SHATTER_STORY_UNLOCK = {
      "RoundStartCommand_1" => {
        "disableShatter" => true  # Both sides disabled
      },
      "RoundStartCommand_3_foe" => {
        "speech"         => "I can feel the crown's power awakening!",
        "disableShatter" => false  # Re-enable for foe
      },
      "RoundStartCommand_4_player" => {
        "speech"         => "The crown fragment resonates with you too!",
        "disableShatter" => false  # Re-enable for player
      }
    }

    #===========================================================================
    # Example 4: A scripted Shatter Field is set without any battler Shattering
    # Usage: setBattleRule("midbattleScript", :SHATTER_FIELD_PRESET)
    #===========================================================================
    SHATTER_FIELD_PRESET = {
      "RoundStartCommand_1" => {
        "speech"          => "This ancient arena carries the mark of the Shattered Crown!",
        "setShatterField" => :DRAGON
      }
    }

    #===========================================================================
    # Example 5: Gym Leader Shatters, then taunts
    # Usage: setBattleRule("midbattleScript", :GYM_LEADER_SHATTER)
    #===========================================================================
    GYM_LEADER_SHATTER = {
      "RoundStartCommand_2_foe" => {
        "speech" => "Witness the true power of the crown!"
      },
      "RoundStartCommand_3_foe" => {
        "crownShatter" => true
      },
      "AfterCrownShatter_foe" => {
        "battlerStats" => [:ATTACK, 1, :SPECIAL_ATTACK, 1]
      },
      "BattlerFainted_foe" => {
        "speech" => "The crown... its power wasn't enough?"
      }
    }

    #===========================================================================
    # Example 6: Boss Trainer — Foe's Pokemon becomes a boss on Turn 1
    # The "makeBoss" command grants shields, HP boost, and immunities.
    # Shield mechanics (segments, breaks) are handled automatically.
    #
    # Usage:
    #   setBattleRule("midbattleScript", :BOSS_TRAINER_DEMO)
    #   setBattleRule("databoxStyle", :Boss)  # Optional: boss databox
    #===========================================================================
    BOSS_TRAINER_DEMO = {
      "RoundStartCommand_1_foe" => {
        "makeBoss" => { shields: 3, passive: :INTIMIDATE, hp_boost: 5 }
      },
      "BossShieldBroken_foe" => {
        "speech" => "You broke through one of my shields!"
      }
    }

    #===========================================================================
    # Example 7: Boss Trainer — Only a specific species becomes a boss
    # Uses AfterSwitchIn to boss-ify the Pokemon when it enters battle.
    # The first send-out also triggers AfterSendOut.
    #
    # Usage:
    #   setBattleRule("midbattleScript", :BOSS_ACE_POKEMON)
    #   setBattleRule("databoxStyle", :Boss)
    #===========================================================================
    BOSS_ACE_POKEMON = {
      # When a Meowth is sent out at battle start
      "AfterSendOut_MEOWTH_foe" => {
        "makeBoss" => { shields: 2, passive: :TECHNICIAN, hp_boost: 3 }
      },
      # When a Meowth switches in mid-battle
      "AfterSwitchIn_MEOWTH_foe" => {
        "makeBoss" => { shields: 2, passive: :TECHNICIAN, hp_boost: 3 }
      },
      # Trainer reacts to shields breaking
      "BossShieldBroken_MEOWTH_foe" => {
        "speech" => "Meowth's shield shattered! But we won't go down easy!"
      }
    }

    #===========================================================================
    # Example 8: Boss with Phase Transitions — shields restore + new passive
    # The boss gains a new passive ability each time shields are restored.
    #
    # Usage:
    #   setBattleRule("midbattleScript", :BOSS_PHASE_TRANSITION)
    #   setBattleRule("databoxStyle", :Boss)
    #===========================================================================
    BOSS_PHASE_TRANSITION = {
      "RoundStartCommand_1_foe" => {
        "makeBoss" => { shields: 2, passive: :DROUGHT, hp_boost: 5 }
      },
      "TargetHPHalf_foe" => {
        "speech"       => "Phase 2! The weather shifts!",
        "bossPassive"  => :DRIZZLE,
        "bossShields"  => 2
      }
    }
  end
end

#===============================================================================
# Proc-Based Example — Adaptive Shatter based on battle state
# Usage: setBattleRule("midbattleScript", :ADAPTIVE_SHATTER)
#===============================================================================
if defined?(MidbattleHandlers)
  MidbattleHandlers.add(:midbattle_scripts, :ADAPTIVE_SHATTER,
    proc { |battle, idxBattler, idxTarget, trigger|
      next if !battle.battlers[idxBattler]
      case trigger
      when "TargetHPHalf_foe"
        # Foe Shatters when pushed to half HP
        battler = battle.battlers[idxBattler]
        side = battler.idxOwnSide
        unless battle.sides[side].effects[PBEffects::ShatterUsed]
          battle.pbDisplayPaused(_INTL("{1}: You've pushed me far enough!", battler.trainer.name)) rescue nil
          battle.pbCrownShatter(idxBattler)
        end
      when "RoundStartCommand_5_player"
        # Player gets a message encouraging them to Shatter
        unless battle.sides[0].effects[PBEffects::ShatterUsed]
          battle.pbDisplayPaused("The crown fragment in your bag trembles with power...")
        end
      end
    }
  )
end
