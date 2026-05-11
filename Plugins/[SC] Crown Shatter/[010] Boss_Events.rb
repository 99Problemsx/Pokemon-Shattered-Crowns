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
    # BOSS EVENT 2: Malachar — Hand of the Void (Chapter 31-32 fight)
    # Malachar himself, leader of the Shattered Hand. His ace is Hydreigon
    # (per PBS/trainers.txt). His full team is six dark/ghost specialists
    # ending in Darkrai or Eternatus depending on trainer entry. The fight
    # is mortal — Malachar IS the cult leader, NOT Nidhoggr. Nidhoggr only
    # manifests later, through Eternatus, after Hoopa is consumed (ch32).
    #
    # Hydreigon = the ace shield-fight. Final-team Pokemon get a passive
    # boost when they switch in to keep the late-game pressure on.
    #
    # Event Script:
    #   setBattleRule("midbattleScript", :BOSS_MALACHAR_FINAL)
    #   setBattleRule("databoxStyle", :Boss)
    #   setBattleRule("battleBGM", "Battle Malachar")
    #   setBattleRule("canLose")
    #   TrainerBattle.start(:CULT_LEADER, "Malachar")
    #===========================================================================
    BOSS_MALACHAR_FINAL = {
      # Hydreigon — Malachar's ace, becomes the shield-fight boss
      "AfterSendOut_HYDREIGON_foe" => {
        "makeBoss" => { shields: 4, passive: :DARKAURA, hp_boost: 5 }
      },
      "AfterSwitchIn_HYDREIGON_foe" => {
        "makeBoss" => { shields: 4, passive: :DARKAURA, hp_boost: 5 }
      },
      # Turn 1 — Malachar opens
      "RoundStartCommand_1_foe" => {
        "speech" => "You came all this way only to break against the Hand.\nThe Shattered Crowns are mine to wield!"
      },
      # Shield break — escalating dialogue
      "BossShieldBroken_HYDREIGON_foe" => {
        "speech" => "A single crack is nothing — the seal still trembles!"
      },
      # Phase 2 — half HP, Hydreigon enrages
      "TargetHPHalf_HYDREIGON_foe" => {
        "speech"       => "Hydreigon, end them! Buy me the moment I need!",
        "bossPassive"  => :BEASTBOOST,
        "bossShields"  => 2,
        "battlerStats" => [:SPECIAL_ATTACK, 1, :SPEED, 1]
      },
      # Low HP — desperation
      "TargetHPLow_HYDREIGON_foe" => {
        "speech" => "No... the fragments... they can't reject me! NOT NOW!"
      },
      # Late-team finishers get a stat boost on switch-in
      "AfterSwitchIn_TYRANITAR_foe"  => { "battlerStats" => [:ATTACK, 1, :DEFENSE, 1] },
      "AfterSwitchIn_CHANDELURE_foe" => { "battlerStats" => [:SPECIAL_ATTACK, 1] },
      "AfterSwitchIn_AEGISLASH_foe"  => { "battlerStats" => [:SPECIAL_ATTACK, 1, :DEFENSE, 1] },
      "AfterSwitchIn_GRIMMSNARL_foe" => { "battlerStats" => [:ATTACK, 1, :SPECIAL_DEFENSE, 1] }
    }

    #===========================================================================
    # BOSS EVENT 3: Nidhoggr — Eternatus Vessel (Chapter 34 final battle)
    # Per Chapter 34 (full_story_index.md), Nidhoggr — the primordial Void
    # entity — manifests by possessing Eternatus after Hoopa is consumed.
    # Malachar is NOT the speaker here; Nidhoggr addresses the Chosen
    # directly. Two phases mirror the chapter beats:
    #
    #   Phase 1 — ch34_first_clash / ch34_first_form_defeated
    #   Phase 2 — ch34_eternamax (Eternamax form, shields restored)
    #   Defeat — ch34_nidhoggr_sealed / ch34_eternatus_freed
    #
    # Event Script:
    #   setBattleRule("midbattleScript", :BOSS_NIDHOGGR_FINAL)
    #   setBattleRule("databoxStyle", :Boss)
    #   setBattleRule("battleBGM", "Battle Nidhoggr")
    #   setBattleRule("canLose")
    #   TrainerBattle.start(:CULT_LEADER, "Malachar Reborn")
    #
    # Legacy alias :BOSS_MALACHAR_REBORN is kept below for any event that
    # already references the old name — it points to the same data.
    #===========================================================================
    BOSS_NIDHOGGR_FINAL = {
      # Eternatus becomes Nidhoggr's vessel
      "AfterSendOut_ETERNATUS_foe" => {
        "makeBoss" => { shields: 5, passive: :PRESSURE, hp_boost: 8 }
      },
      # Opening — Nidhoggr addresses the Chosen
      "RoundStartCommand_1_foe" => {
        "speech" => "Little Chosen. You wear borrowed crowns and call them yours.\nI have waited since before your gods had names."
      },
      # Shield breaks — escalating menace
      "BossShieldBroken_ETERNATUS_foe" => {
        "speech"       => "Every crown shatters. Every seal frays.\nYou only quicken what was always coming.",
        "battlerStats" => [:ATTACK, 1, :SPECIAL_ATTACK, 1]
      },
      # Phase 2 — Eternamax transformation at half HP
      "TargetHPHalf_ETERNATUS_foe" => {
        "speech"       => "Then witness the form your seal could never contain.",
        "bossPassive"  => :BEASTBOOST,
        "bossShields"  => 3,
        "battlerStats" => [:SPEED, 2]
      },
      # Phase 3 — last stand
      "TargetHPLow_ETERNATUS_foe" => {
        "speech"       => "No mortal hand has ever held me. None ever will.",
        "bossShields"  => 2,
        "battlerStats" => [:DEFENSE, 2, :SPECIAL_DEFENSE, 2]
      },
      # Defeat — Nidhoggr is sealed, Eternatus is freed
      "BattlerFainted_ETERNATUS_foe" => {
        "speech" => "...the dark drains away. The dragon's eyes are its own again."
      }
    }

    # Legacy alias — kept so existing event scripts don't break.
    BOSS_MALACHAR_REBORN = BOSS_NIDHOGGR_FINAL

  end
end
