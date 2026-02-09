#===============================================================================
# SHATTERED CROWNS - SOUNDTRACK MAPPING
# Comprehensive BGM assignments for all story scenes
#===============================================================================
# This file serves as a reference for soundtrack usage throughout the game.
# Each section lists the BGM tracks used for different story beats.
#===============================================================================

module SoundtrackMapping
  
  #=============================================================================
  # ACT 1: THE AWAKENING (Chapters 1-10)
  # Themes: Wonder, Discovery, Growing Danger
  #=============================================================================
  ACT_1_BGM = {
    # Chapter 1: Family Moments
    ch1_morning: 'Pokemon XY - Vaniville Town',
    ch1_breakfast: 'Pokemon HGSS - New Bark Town',
    ch1_parents_reveal: 'Pokemon XY - Emotion',
    
    # Chapter 2: Journey Begins
    ch2_starter_selection: 'Pokemon XY - Professor Sycamore\'s Theme',
    ch2_first_route: 'Pokemon XY - Route 1',
    ch2_first_battle: 'Pokemon XY - Battle! Wild Pokemon',
    
    # Chapter 3: Meeting Friends
    ch3_lyra_intro: 'Pokemon HGSS - Goldenrod City',
    ch3_kael_intro: 'Pokemon XY - Anistar City',
    ch3_trio_formed: 'Pokemon XY - Friends Theme',
    
    # Chapter 4-5: First Gym
    ch4_verdant_city: 'Pokemon XY - Lumiose City',
    ch4_gym_battle: 'Pokemon XY - Gym Leader Battle',
    ch4_first_badge: 'Pokemon XY - Victory! Gym Leader',
    
    # Chapter 6-7: First Danger
    ch6_cult_rumors: 'Pokemon XY - Tension',
    ch7_first_attack: 'Pokemon XY - Team Flare Appears',
    ch7_cultist_battle: 'Pokemon XY - Battle! Team Flare',
    
    # Chapter 8-10: Marks Awaken
    ch8_strange_dreams: 'Pokemon ORAS - Sea Mauville',
    ch9_marks_glow: 'Pokemon XY - Legendary Pokemon',
    ch10_professor_aldric: 'Pokemon XY - Professor Sycamore\'s Theme'
  }
  
  #=============================================================================
  # ACT 2: THE GATHERING STORM (Chapters 11-20)
  # Themes: Growing Powers, Building Bonds, Increasing Darkness
  #=============================================================================
  ACT_2_BGM = {
    # Chapter 11-12: General Shade
    ch11_shade_appears: 'Pokemon XY - Lysandre Theme',
    ch12_first_confrontation: 'Pokemon USUM - Battle! Ultra Recon Squad',
    ch12_escape: 'Pokemon XY - Running',
    
    # Chapter 13-14: Training Arc
    ch13_special_training: 'Pokemon XY - Route 18',
    ch14_power_growth: 'Pokemon SWSH - Slumbering Weald',
    
    # Chapter 15-16: Guardian Visions
    ch15_xerneas_vision: 'Pokemon XY - Legendary Pokemon',
    ch16_yveltal_vision: 'Pokemon XY - Legendary Pokemon',
    ch16_zacian_vision: 'Pokemon SWSH - Zacian-Zamazenta Theme',
    
    # Chapter 17-18: Emotional Beats
    ch17_campfire: 'Pokemon XY - Pokemon Center (Night)',
    ch17_confessions: 'Pokemon XY - Emotion',
    ch18_bonds_deepen: 'Pokemon XY - Friends Forever',
    
    # Chapter 19-20: Rising Action
    ch19_cult_hideout: 'Pokemon Colosseum - The Under',
    ch20_rescue_mission: 'Pokemon XY - Team Flare Hideout'
  }
  
  #=============================================================================
  # ACT 3: THE TEST (Chapters 21-30)
  # Themes: Trials, Sacrifice, Determination
  #=============================================================================
  ACT_3_BGM = {
    # Chapter 21-23: Guardian Trials
    ch21_xerneas_trial: 'Pokemon XY - Geosenge Town',
    ch22_yveltal_trial: 'Pokemon XY - Anistar City',
    ch23_zacian_trial: 'Pokemon SWSH - Battle Tower',
    
    # Chapter 24-25: Character Growth
    ch24_lyra_backstory: 'Pokemon XY - Laverre City',
    ch25_kael_backstory: 'Pokemon XY - Empty Streets',
    
    # Chapter 26-27: Major Battle
    ch26_shade_rematch: 'Pokemon USUM - Battle! Ultra Necrozma',
    ch27_shade_defeated: 'Pokemon XY - Lysandre Defeated',
    
    # Chapter 28-30: Final Prep
    ch28_gathering_allies: 'Pokemon XY - Shalour City',
    ch29_last_night: 'Pokemon XY - Snowbelle City',
    ch30_march_to_battle: 'Pokemon ORAS - Victory Road'
  }
  
  #=============================================================================
  # ACT 4: THE CRUCIBLE (Chapters 31-45)
  # Themes: Sacrifice, Loss, Ultimate Battle
  #=============================================================================
  ACT_4_BGM = {
    # Chapter 31-32: Elena's Sacrifice
    ch31_final_approach: 'Pokemon XY - Team Flare Secret HQ',
    ch32_elena_captured: 'Pokemon XY - Tension',
    ch32_malachar_reveal: 'Pokemon XY - Lysandre Theme',
    ch32_elena_sacrifice: 'Pokemon XY - Emotion',
    
    # Chapter 33: Guardians Manifest
    ch33_guardians_arrive: 'Pokemon SWSH - Battle! Zacian/Zamazenta',
    ch33_power_unlocked: 'Pokemon ORAS - Primal Reversion',
    
    # Chapter 33.5: Malachar Battle
    ch33_5_malachar: 'Pokemon SWSH - Battle! Rose',
    ch33_5_malachar_defeated: 'Pokemon XY - Lysandre Defeated',
    ch33_5_nidhoggr_awakes: 'Pokemon SwSh - Eternatus Awakens',
    
    # Chapter 34: Nidhoggr Battle
    ch34_nidhoggr_emerges: 'Pokemon SwSh - Eternatus Theme',
    ch34_phase_1: 'Pokemon SWSH - Eternatus Phase 2',
    ch34_phase_2: 'Pokemon SWSH - Eternatus Phase 3',
    ch34_final_strike: 'Pokemon USUM - Battle! Ultra Necrozma',
    
    # Chapter 35: Victory
    ch35_nidhoggr_sealed: 'Pokemon XY - Victory Road (End)',
    ch35_aftermath: 'Pokemon XY - Denouement',
    
    # Chapters 36-45: Recovery & Healing
    ch36_healing: 'Pokemon XY - Pokemon Village',
    ch40_rebuilding: 'Pokemon HGSS - National Park',
    ch45_peace_returns: 'Pokemon XY - Cyllage City'
  }
  
  #=============================================================================
  # ACT 5: THE ETERNAL SEAL (Chapters 46-55)
  # Themes: Hope, Love, Legacy
  #=============================================================================
  ACT_5_BGM = {
    # Chapter 46-49: New Beginnings
    ch46_new_world: 'Pokemon XY - Shalour City',
    ch47_sanctuary: 'Pokemon XY - Laverre City',
    ch48_celebrations: 'Pokemon HGSS - Goldenrod City',
    
    # Chapter 50-52: Romance & Joy
    ch50_confession: 'Pokemon XY - Emotion',
    ch51_future_together: 'Pokemon XY - Friends Forever',
    ch52_wedding: 'Pokemon XY - Hall of Fame',
    
    # Chapter 53-54: Farewells
    ch53_farewells: 'Pokemon XY - Emotion',
    ch54_road_ahead: 'Pokemon XY - Route 1',
    
    # Chapter 55: True Ending
    ch55_reflection: 'Pokemon XY - Emotion',
    ch55_guardians_speak: 'Pokemon SWSH - Zacian-Zamazenta Theme',
    ch55_ending: 'Pokemon XY - Credits',
    ch55_true_ending: 'Pokemon XY - Emotion'
  }
  
  #=============================================================================
  # SIDE QUEST BGM ASSIGNMENTS
  #=============================================================================
  SIDE_QUEST_BGM = {
    # Guardian Legend Quests
    guardian_zacian: 'Pokemon SWSH - Slumbering Weald',
    guardian_zamazenta: 'Pokemon SWSH - Zacian-Zamazenta Theme',
    guardian_xerneas: 'Pokemon XY - Xerneas-Yveltal Theme',
    guardian_yveltal: 'Pokemon XY - Xerneas-Yveltal Theme',
    guardian_echo: 'Pokemon SWSH - Battle! Zacian/Zamazenta',
    
    # Character Backstory Quests
    kaels_past_orphanage: 'Pokemon XY - Empty Streets',
    kaels_past_shadow: 'Pokemon USUM - Battle! Ultra Necrozma',
    lyras_secret_temple: 'Pokemon BW - Relic Castle',
    lyras_secret_trials: 'Pokemon SM - Altar of the Sunne',
    elenas_legacy: 'Pokemon XY - Parfum Palace',
    elenas_memorial: 'Pokemon SWSH - Ballonlea',
    
    # NPC Spotlight Quests
    joeys_rattata: 'Pokemon HGSS - Route 30',
    helenas_research_ruins: 'Pokemon BW - Relic Castle',
    helenas_research_escape: 'Pokemon USUM - Ultra Necrozma',
    aldrics_experiment: 'Pokemon Colosseum - Cipher Lab',
    aldrics_chimera: 'Pokemon USUM - Battle! Ultra Necrozma',
    
    # Misc Quests
    cult_infiltration: 'Pokemon XD - Cipher Lab',
    treasure_hunt: 'Pokemon HGSS - Safari Zone',
    legendary_encounter: 'Pokemon XY - Legendary Pokemon'
  }
  
  #=============================================================================
  # BATTLE BGM BY TRAINER TYPE
  #=============================================================================
  BATTLE_BGM = {
    # Generic Trainers
    youngster: 'Pokemon XY - Battle! Trainer',
    lass: 'Pokemon XY - Battle! Trainer',
    hiker: 'Pokemon XY - Battle! Trainer',
    scientist: 'Pokemon XY - Battle! Trainer',
    
    # Gym Leaders
    gym_leader: 'Pokemon XY - Battle! Gym Leader',
    elite_four: 'Pokemon ORAS - Battle! Elite Four',
    champion: 'Pokemon ORAS - Battle! Champion',
    
    # Story Antagonists
    cultist: 'Pokemon XY - Battle! Team Flare',
    cult_admin: 'Pokemon XY - Battle! Team Flare Admin',
    general_shade: 'Pokemon USUM - Battle! Ultra Recon Squad',
    cult_leader_malachar: 'Pokemon SWSH - Battle! Rose',
    
    # Boss Battles
    guardian_echo: 'Pokemon SWSH - Battle! Zacian/Zamazenta',
    shadow_self: 'Pokemon USUM - Battle! Ultra Necrozma',
    subject_zero: 'Pokemon USUM - Battle! Ultra Necrozma',
    nidhoggr_phase_1: 'Pokemon SWSH - Eternatus Phase 2',
    nidhoggr_phase_2: 'Pokemon SWSH - Eternatus Phase 3',
    
    # Post-Game
    eternal_malachar: 'Pokemon SWSH - Eternatus Phase 3',
    legendary_wild: 'Pokemon XY - Battle! Legendary Pokemon'
  }
  
  #=============================================================================
  # EMOTIONAL SCENE BGM REFERENCE
  #=============================================================================
  EMOTIONAL_BGM = {
    sad: 'Pokemon XY - Emotion',
    happy: 'Pokemon XY - Friends Forever',
    tense: 'Pokemon XY - Tension',
    victory: 'Pokemon XY - Victory! Trainer',
    defeat: 'Pokemon XY - Sad',
    romantic: 'Pokemon XY - Emotion',
    epic: 'Pokemon ORAS - Primal Reversion',
    mysterious: 'Pokemon ORAS - Sea Mauville',
    peaceful: 'Pokemon XY - Pokemon Village',
    triumphant: 'Pokemon XY - Hall of Fame'
  }
  
  #=============================================================================
  # ME (Music Effects) - Short Jingles
  #=============================================================================
  MUSIC_EFFECTS = {
    item_get: 'Pokemon XY - Item Get',
    badge_get: 'Pokemon XY - Badge Get',
    level_up: 'Pokemon XY - Level Up',
    evolution: 'Pokemon XY - Evolution',
    pokemon_caught: 'Pokemon XY - Pokemon Caught',
    quest_complete: 'Pokemon XY - Fanfare',
    guardian_power: 'Pokemon SWSH - Zacian-Zamazenta Fanfare'
  }
  
end
