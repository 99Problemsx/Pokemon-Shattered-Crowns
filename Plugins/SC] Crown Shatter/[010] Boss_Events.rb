#===============================================================================
# Crown Shatter — Boss Battle Events
# Game-specific boss trainer scripts for story battles.
#===============================================================================
# To use in RPG Maker XP events, add a Script command BEFORE the trainer battle:
#
#   setBattleRule("midbattleScript", :BOSS_GENERAL_SHADE)
#   setBattleRule("databoxStyle", :Boss)
#   setBattleRule("canLose")
#   TrainerBattle.start(:GENERAL_SHADE, "Shade")
#
#===============================================================================

if defined?(MidbattleScripts)
  module MidbattleScripts

    #===========================================================================
    # BOSS EVENT 1: General Shade
    # Spiritomb is his ace — becomes a boss with Dark Aura passive.
    # When shields break, Shade taunts the player.
    # At half HP, Spiritomb gains Calm Mind through stat boosts.
    #
    # Event Script:
    #   setBattleRule("midbattleScript", :BOSS_GENERAL_SHADE)
    #   setBattleRule("databoxStyle", :Boss)
    #   setBattleRule("canLose")
    #   TrainerBattle.start(:GENERAL_SHADE, "Shade")
    #===========================================================================
    BOSS_GENERAL_SHADE = {
      # Spiritomb becomes a boss when sent out
      "AfterSendOut_SPIRITOMB_foe" => {
        "makeBoss" => { shields: 3, passive: :PRESSURE, hp_boost: 4 }
      },
      # Also if switched in later
      "AfterSwitchIn_SPIRITOMB_foe" => {
        "makeBoss" => { shields: 3, passive: :PRESSURE, hp_boost: 4 }
      },
      # First shield break
      "BossShieldBroken_SPIRITOMB_foe" => {
        "speech" => "Impressive... but Spiritomb feeds on suffering."
      },
      # At half HP — phase transition
      "TargetHPHalf_SPIRITOMB_foe" => {
        "speech"       => "You've awakened something ancient within Spiritomb!",
        "bossPassive"  => :DARKAURA,
        "battlerStats" => [:SPECIAL_ATTACK, 1, :SPECIAL_DEFENSE, 1]
      },
      # All shields broken
      "TargetHPLow_SPIRITOMB_foe" => {
        "speech" => "This is far from over, child..."
      }
    }

    #===========================================================================
    # BOSS EVENT 2: Malachar Final Boss
    # Darkrai is his ace — terrifying boss with Dark Void + shields.
    # Phase 1: Bad Dreams passive. Phase 2: At half HP, shields regenerate
    # and passive changes to Pressure for PP drain.
    #
    # Event Script:
    #   setBattleRule("midbattleScript", :BOSS_MALACHAR_FINAL)
    #   setBattleRule("databoxStyle", :Boss)
    #   setBattleRule("battleBGM", "Battle Malachar")
    #   setBattleRule("canLose")
    #   TrainerBattle.start(:MALACHAR, "Malachar")
    #===========================================================================
    BOSS_MALACHAR_FINAL = {
      # Darkrai becomes a boss on send out
      "AfterSendOut_DARKRAI_foe" => {
        "makeBoss" => { shields: 4, passive: :BADDREAMS, hp_boost: 5 }
      },
      "AfterSwitchIn_DARKRAI_foe" => {
        "makeBoss" => { shields: 4, passive: :BADDREAMS, hp_boost: 5 }
      },
      # Turn 1 — Malachar monologue
      "RoundStartCommand_1_foe" => {
        "speech" => "The fragments of the Shattered Crown cry out...\nDarkrai will consume your hope!"
      },
      # Shield breaks — escalating dialogue
      "BossShieldBroken_DARKRAI_foe" => {
        "speech" => "A crack in the darkness... but it only grows deeper!"
      },
      # Phase 2 — half HP triggers shield regen + new passive
      "TargetHPHalf_DARKRAI_foe" => {
        "speech"       => "Enough! The nightmare realm bends to MY will!",
        "bossPassive"  => :PRESSURE,
        "bossShields"  => 3,
        "battlerStats" => [:SPEED, 2, :SPECIAL_ATTACK, 1]
      },
      # Low HP — desperation
      "TargetHPLow_DARKRAI_foe" => {
        "speech" => "No... the fragments... they can't reject me! NOT NOW!"
      },
      # Fainted
      "BattlerFainted_DARKRAI_foe" => {
        "speech" => "The darkness... recedes..."
      }
    }

    #===========================================================================
    # BOSS EVENT 3: Malachar Reborn — Eternamax Eternatus
    # Post-game ultimate boss. Eternatus is the only Pokemon and is a
    # massive boss with 5 shields, huge HP, and phase transitions.
    # Phase 1: Pressure. Phase 2 (half HP): Shields restore + Beast Boost.
    # Phase 3 (low HP): Final shield restore + stat surge.
    #
    # Event Script:
    #   setBattleRule("midbattleScript", :BOSS_MALACHAR_REBORN)
    #   setBattleRule("databoxStyle", :Boss)
    #   setBattleRule("battleBGM", "Battle Malachar Reborn")
    #   setBattleRule("canLose")
    #   TrainerBattle.start(:CULT_LEADER, "Malachar Reborn")
    #===========================================================================
    BOSS_MALACHAR_REBORN = {
      # Eternatus becomes the ultimate boss
      "AfterSendOut_ETERNATUS_foe" => {
        "makeBoss" => { shields: 5, passive: :PRESSURE, hp_boost: 8 }
      },
      # Opening monologue
      "RoundStartCommand_1_foe" => {
        "speech" => "I have transcended mortality!\nNidhoggr and I are ONE!"
      },
      # Shield breaks — escalating power
      "BossShieldBroken_ETERNATUS_foe" => {
        "speech"       => "Each shattered shield only makes us STRONGER!",
        "battlerStats" => [:ATTACK, 1, :SPECIAL_ATTACK, 1]
      },
      # Phase 2 — half HP
      "TargetHPHalf_ETERNATUS_foe" => {
        "speech"       => "You think you can destroy a GOD?\nThe cycle begins anew!",
        "bossPassive"  => :BEASTBOOST,
        "bossShields"  => 3,
        "battlerStats" => [:SPEED, 2]
      },
      # Phase 3 — low HP, final stand
      "TargetHPLow_ETERNATUS_foe" => {
        "speech"       => "I WILL NOT FALL! THE CROWN'S POWER IS ETERNAL!",
        "bossShields"  => 2,
        "battlerStats" => [:DEFENSE, 2, :SPECIAL_DEFENSE, 2]
      },
      # Defeat
      "BattlerFainted_ETERNATUS_foe" => {
        "speech" => "Even in failure... I showed the world its flaws..."
      }
    }

  end
end
