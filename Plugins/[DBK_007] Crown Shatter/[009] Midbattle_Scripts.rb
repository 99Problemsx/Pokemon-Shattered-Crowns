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
