#===============================================================================
# Dawnhaven Village - Starter Town
#===============================================================================
# Map ID: 032
# Your hometown - where the journey truly begins after the intro.
#===============================================================================

#===============================================================================
# MAP ENTRY - FIRST TIME IN DAWNHAVEN (After intro transfer)
#===============================================================================

EventHandlers.add(:on_map_or_spriteset_change, :dawnhaven_first_arrival,
  proc {
    next if !$game_map || !$scene.is_a?(Scene_Map)
    next if $game_map.map_id != 32  # Only map 32 (Dawnhaven Village)
    
    # First time entering from intro
    if $game_switches[SW::INTRO_PLAYED] && !$game_switches[SW::ARRIVED_DAWNHAVEN]
      pbWait(1)
      GameData::Cutscene.play(:dawnhaven_arrival)
      $game_switches[SW::ARRIVED_DAWNHAVEN] = true
    end
  }
)

# Route 1 Block - Prevent leaving without starter
EventHandlers.add(:on_player_step_taken, :block_route_1,
  proc {
    next if $game_map.map_id != 32
    next if $game_switches[SW::GOT_STARTER] # Allow if got starter
    
    # Check coordinates for town exit (adjust these based on map)
    # Assuming exit is at the top or right logic
    # Placeholder: Assuming exit is Y < 5
    if $game_player.y < 5
      pbMessage("You can't go into the tall grass without a Pokémon!")
      pbMessage("It's too dangerous!")
      $game_player.move_route([PBMoveRoute::Down], true)
    end
  }
)

#===============================================================================
# CUTSCENES
#===============================================================================

# ARRIVAL IN DAWNHAVEN - After waking from dream
GameData::Cutscene.define :dawnhaven_arrival do |scene|
  scene.fade_in
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  scene.message "\\i[DAWNHAVEN VILLAGE - YOUR ROOM]"
  scene.message "You're standing in your room."
  scene.message "The mark on your arm still faintly glows."
  scene.message "Mom's voice calls from downstairs..."
  
  scene.message "\\bMom\\b: \\PN! Hurry up!"
  scene.message "\\bMom\\b: You don't want to keep the Professor waiting!"
  
  scene.message "(I should talk to Mom, then head to the lab...)"
end

# TALK TO MOM BEFORE LEAVING
GameData::Cutscene.define :dawnhaven_mom_dialogue do |scene|
  if !$game_switches[SW::MET_MOM]
    scene.message "\\bMom\\b: There you are, sleepyhead!"
    scene.message "\\bMom\\b: Professor Aldric called twice already."
    scene.message "\\bMom\\b: He seemed very excited to meet you."
    scene.message "\\bMom\\b: Something about 'special potential'?"
    
    scene.message "\\b\\PN\\b: (Special potential...?)"
    
    scene.message "\\bMom\\b: Don't forget to say goodbye!"
    scene.message "\\bMom\\b: And be careful out there."
    scene.message "\\bMom\\b: I love you, \\PN."
    
    scene.set_switch SW::MET_MOM, true
  else
    scene.message "\\bMom\\b: Go on! Professor Aldric is waiting!"
    scene.message "\\bMom\\b: I'll be here when you get back."
  end
end

# MEETING PROFESSOR ALDRIC AT THE LAB
GameData::Cutscene.define :dawnhaven_meet_aldric do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\i[PROFESSOR ALDRIC'S LAB]"
  scene.message "The lab was cluttered with ancient texts and research notes."
  scene.message "An eccentric man with wild grey hair looked up from his work."
  
  scene.message "\\bProfessor Aldric\\b: Ah! \\PN! At last!"
  scene.message "\\bProfessor Aldric\\b: I've been waiting for you."
  scene.message "\\bProfessor Aldric\\b: Come in, come in!"
  
  scene.message "He studied you intensely."
  scene.message "His eyes lingered on your arm."
  scene.message "Where the mark was hidden."
  
  scene.message "\\bProfessor Aldric\\b: Hmm..."
  scene.message "\\bProfessor Aldric\\b: Yes, I thought so."
  
  scene.message "\\b\\PN\\b: Thought what...?"
  
  scene.message "\\bProfessor Aldric\\b: *shaking head* Never mind that now."
  scene.message "\\bProfessor Aldric\\b: First things first!"
  scene.message "\\bProfessor Aldric\\b: Your Pokémon partner awaits!"
  
  scene.message "He led you to three Poké Balls on a table."
  
  scene.message "\\bProfessor Aldric\\b: I have three Pokémon here."
  scene.message "\\bProfessor Aldric\\b: Each one special in its own way."
  scene.message "\\bProfessor Aldric\\b: Choose wisely..."
  scene.message "\\bProfessor Aldric\\b: This partner will be with you through everything."
  
  scene.set_switch SW::MET_ALDRIC, true
end

# AFTER CHOOSING STARTER - ALDRIC NOTICES THE MARK
GameData::Cutscene.define :dawnhaven_aldric_sees_mark do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "As you reached for the Poké Ball..."
  scene.message "Your sleeve slipped."
  scene.message "The mark on your arm glowed faintly."
  
  scene.message "\\bProfessor Aldric\\b: *gasp*"
  scene.message "\\bProfessor Aldric\\b: That mark..."
  
  scene.message "\\b\\PN\\b: You... know what this is?"
  
  scene.message "\\bProfessor Aldric\\b: *face pale*"
  scene.message "\\bProfessor Aldric\\b: I've only read about it."
  scene.message "\\bProfessor Aldric\\b: In the oldest texts."
  scene.message "\\bProfessor Aldric\\b: From before the Reckoning."
  
  scene.message "\\bProfessor Aldric\\b: \\PN... you've been chosen."
  scene.message "\\bProfessor Aldric\\b: By the Guardians themselves."
  
  scene.message "\\b\\PN\\b: Chosen for what?"
  
  scene.message "\\bProfessor Aldric\\b: I... I don't know yet."
  scene.message "\\bProfessor Aldric\\b: But if the legends are true..."
  scene.message "\\bProfessor Aldric\\b: You aren't the only one."
  scene.message "\\bProfessor Aldric\\b: There should be two others."
  scene.message "\\bProfessor Aldric\\b: Marked by Xerneas and Yveltal."
  
  scene.message "\\bProfessor Aldric\\b: You must find them."
  scene.message "\\bProfessor Aldric\\b: Before—"
  
  scene.camera_shake 20, 50
  
  scene.message "\\bVoice Outside\\b: THERE! The Professor's lab!"
  scene.message "\\bVoice\\b: FIND THE MARKED ONE!"
  
  scene.message "\\bProfessor Aldric\\b: No... they've found us already."
  scene.message "\\bProfessor Aldric\\b: The Shattered Crown."
  
  scene.set_switch SW::GOT_FIRST_POKEMON, true
end

# THE CULT ATTACKS
GameData::Cutscene.define :dawnhaven_cult_attack do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  scene.camera_shake 10, 30
  
  scene.message "\\i[THE FIRST ATTACK]"
  scene.message "Robed figures burst through the door."
  scene.message "Dark energy crackled around them."
  
  scene.message "\\bCult Member\\b: Hand over the marked one!"
  scene.message "\\bCult Member\\b: Lord Malachar has decreed it!"
  
  scene.message "\\bProfessor Aldric\\b: \\PN—RUN!"
  
  scene.message "\\b\\PN\\b: I'm not leaving you!"
  
  scene.message "\\bProfessor Aldric\\b: Then FIGHT!"
  scene.message "\\bProfessor Aldric\\b: Your partner is with you now!"
  scene.message "\\bProfessor Aldric\\b: Together!"
end

# AFTER FIRST VICTORY
GameData::Cutscene.define :dawnhaven_after_cult_fight do |scene|
  scene.play_bgm 'Pokemon XY - Victory Road'
  
  scene.message "The cultists fled."
  scene.message "For now."
  
  scene.message "\\bProfessor Aldric\\b: *breathing heavily*"
  scene.message "\\bProfessor Aldric\\b: You... you did it."
  scene.message "\\bProfessor Aldric\\b: I knew you were special."
  
  scene.message "\\b\\PN\\b: What IS the Shattered Crown?"
  scene.message "\\b\\PN\\b: Why are they after me?"
  
  scene.message "\\bProfessor Aldric\\b: They are a cult."
  scene.message "\\bProfessor Aldric\\b: They believe the world is broken beyond repair."
  scene.message "\\bProfessor Aldric\\b: They want to release the Ancient Evils."
  scene.message "\\bProfessor Aldric\\b: To 'purify' everything through destruction."
  
  scene.message "\\bProfessor Aldric\\b: And they need the marked ones..."
  scene.message "\\bProfessor Aldric\\b: To break the seals."
  
  scene.message "\\b\\PN\\b: Then I have to find the others first."
  
  scene.message "\\bProfessor Aldric\\b: Yes."
  scene.message "\\bProfessor Aldric\\b: One should be at Sunrise Farm. Northeast of here."
  scene.message "\\bProfessor Aldric\\b: The other... I'm not sure."
  scene.message "\\bProfessor Aldric\\b: But you'll know them when you meet."
  
  scene.message "\\bProfessor Aldric\\b: Go, \\PN."
  scene.message "\\bProfessor Aldric\\b: The fate of Asgheim may depend on it."
end

# MEETING RAGNAR AT TOWN EXIT
GameData::Cutscene.define :dawnhaven_meet_ragnar do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bVoice\\b: Yo! \\PN! Wait up!"
  
  scene.message "Your childhood friend came running up."
  scene.message "Grin as wide as ever. Energy boundless."
  
  scene.message "\\bRagnar\\b: You weren't gonna leave without me, right?"
  scene.message "\\bRagnar\\b: We promised to start our journeys together!"
  
  scene.message "\\b\\PN\\b: Ragnar... things have gotten complicated."
  
  scene.message "\\bRagnar\\b: I heard about the attack!"
  scene.message "\\bRagnar\\b: Some creepy robed guys, right?"
  scene.message "\\bRagnar\\b: All the more reason to stick together!"
  
  scene.message "\\bRagnar\\b: Check it out!"
  scene.message "He showed off a Poké Ball."
  scene.message "\\bRagnar\\b: Pikachu! My partner!"
  scene.message "\\bRagnar\\b: We're gonna be the BEST!"
  
  scene.message "\\b\\PN\\b: Ragnar, I don't know what's coming."
  scene.message "\\b\\PN\\b: It could be dangerous."
  
  scene.message "\\bRagnar\\b: *grinning* DANGER is my middle name!"
  scene.message "\\bRagnar\\b: Actually it's Erik, but whatever!"
  scene.message "\\bRagnar\\b: You're not getting rid of me that easily."
  
  scene.message "\\b\\PN\\b: *smiling* Fine. But keep up."
  
  scene.message "\\bRagnar\\b: Keep up? I'll be ahead!"
  scene.message "\\bRagnar\\b: Race you to Sunrise Farm!"
  
  scene.message "He sprinted off before you could respond."
  scene.message "Some things never changed."
  
  scene.set_switch SW::MET_RAGNAR, true
end

#===============================================================================
# NPC DIALOGUES
#===============================================================================

GameData::Dialogue.define :dawnhaven_villager_1 do |npc|
  npc.default "Dawnhaven Village... named for our beautiful sunrises."
  npc.default "I've lived here all my life."
  
  npc.if_switch SW::GOT_FIRST_POKEMON do
    npc.say "Did you hear about the attack on the lab?"
    npc.say "Robed strangers... it's been fifty years since we've seen their kind."
    npc.say "Not since the Reckoning..."
  end
end

GameData::Dialogue.define :dawnhaven_villager_2 do |npc|
  npc.default "Professor Aldric has been here for decades."
  npc.default "They say he survived the Divine Reckoning as a child."
  npc.default "He doesn't like to talk about it..."
end

GameData::Dialogue.define :dawnhaven_villager_3 do |npc|
  npc.default "Your friend Ragnar was looking for you earlier!"
  npc.default "That boy has more energy than a Pikachu!"
end

GameData::Dialogue.define :dawnhaven_mom do |npc|
  npc.if_switch SW::MET_MOM do
    npc.say "Be safe out there, \\PN!"
    npc.say "Come back whenever you need a rest."
  end
  
  npc.default "Good morning, \\PN!"
  npc.default "Professor Aldric is waiting at the lab!"
end
