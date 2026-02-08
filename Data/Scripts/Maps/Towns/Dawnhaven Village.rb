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
  scene.message "That dream still lingers in your mind..."
  scene.message "Golden light... a broken crown..."
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
  
  scene.message "He studied you with a warm smile."
  scene.message "There was a knowing look in his eyes."
  scene.message "As if he saw something special in you."
  
  scene.message "\\bProfessor Aldric\\b: Hmm..."
  scene.message "\\bProfessor Aldric\\b: Yes, you have that spark."
  
  scene.message "\\b\\PN\\b: Spark...?"
  
  scene.message "\\bProfessor Aldric\\b: *chuckling* The spark of adventure!"
  scene.message "\\bProfessor Aldric\\b: I can always tell."
  scene.message "\\bProfessor Aldric\\b: Now then, your Pokémon partner awaits!"
  
  scene.message "He led you to three Poké Balls on a table."
  
  scene.message "\\bProfessor Aldric\\b: I have three Pokémon here."
  scene.message "\\bProfessor Aldric\\b: Each one special in its own way."
  scene.message "\\bProfessor Aldric\\b: Choose wisely..."
  scene.message "\\bProfessor Aldric\\b: This partner will be with you through everything."
  
  scene.set_switch SW::MET_ALDRIC, true
end

# AFTER CHOOSING STARTER - BONDING MOMENT
# (Marks appear later in Chapter 8, Cult attacks in Chapter 7)
GameData::Cutscene.define :dawnhaven_starter_chosen do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  scene.message "You reached for the Poké Ball..."
  scene.message "The moment your fingers touched it, you felt a connection."
  scene.message "Your first partner. Your first step."
  
  scene.message "\\bProfessor Aldric\\b: *smiling warmly*"
  scene.message "\\bProfessor Aldric\\b: A wonderful choice."
  scene.message "\\bProfessor Aldric\\b: I can see you two will be great partners."
  
  scene.message "\\b\\PN\\b: Thank you, Professor."
  
  scene.message "\\bProfessor Aldric\\b: Now, remember..."
  scene.message "\\bProfessor Aldric\\b: A trainer's bond with their Pokémon is everything."
  scene.message "\\bProfessor Aldric\\b: Trust each other. Grow together."
  
  scene.message "\\bProfessor Aldric\\b: Here, take this as well."
  scene.message "He handed you a Pokédex and some Poké Balls."
  
  scene.message "\\bProfessor Aldric\\b: Fill this with knowledge."
  scene.message "\\bProfessor Aldric\\b: And those Poké Balls—catch new friends along the way."
  
  scene.message "\\bProfessor Aldric\\b: Your journey begins now, \\PN."
  scene.message "\\bProfessor Aldric\\b: Make Dawnhaven proud!"
  
  scene.set_switch SW::GOT_FIRST_POKEMON, true
end

# PARENTS GOODBYE - Before leaving town
# (Matches Main_Story.rb ch1_parents_goodbye)
GameData::Cutscene.define :dawnhaven_parents_goodbye do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  scene.message "\\i[YOUR HOME - BEFORE DEPARTURE]"
  scene.message "You found Mom and Dad waiting outside."
  
  scene.message "\\bMom\\b: \\PN... my little adventurer."
  scene.message "\\bMom\\b: *wiping eyes* I can't believe this day is here."
  
  scene.message "\\bDad\\b: We're so proud of you."
  scene.message "\\bDad\\b: Remember what I taught you about camping?"
  
  scene.message "\\b\\PN\\b: Always check for wild Pokémon before setting up."
  
  scene.message "\\bDad\\b: *laughing* That's my kid!"
  
  scene.message "\\bMom\\b: Here, I packed some supplies."
  scene.message "She handed you a bag full of potions and snacks."
  
  scene.message "\\bMom\\b: And call home whenever you can!"
  
  scene.message "\\bDad\\b: Go see the world, \\PN."
  scene.message "\\bDad\\b: And remember—home will always be here."
  
  scene.message "\\b\\PN\\b: I'll make you both proud. I promise."
  
  scene.message "With one last hug, you turned toward the village exit."
  scene.message "A whole region awaited."
end

# FIRST WILD BATTLE - On the route out of town
GameData::Cutscene.define :dawnhaven_first_wild do |scene|
  scene.play_bgm 'Pokemon RSE - Route 101'
  
  scene.message "As you stepped onto Route 1..."
  scene.message "The tall grass rustled."
  
  scene.message "\\b\\PN\\b: My first wild Pokémon!"
  
  scene.message "Your partner chirped eagerly."
  scene.message "Ready to battle at your side."
  
  scene.message "(This is it. My adventure truly begins!)"
end

# MEETING RAGNAR AT TOWN EXIT
# (Matches Main_Story.rb ch1_ragnar_appears - no cult mention yet)
GameData::Cutscene.define :dawnhaven_meet_ragnar do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bVoice\\b: Yo! \\PN! Wait up!"
  
  scene.message "Your childhood friend came running up."
  scene.message "Grin as wide as ever. Energy boundless."
  
  scene.message "\\bRagnar\\b: You weren't gonna leave without me, right?"
  scene.message "\\bRagnar\\b: We promised to start our journeys together!"
  
  scene.message "\\b\\PN\\b: Ragnar! You got your Pokémon too?"
  
  scene.message "\\bRagnar\\b: Check it out!"
  scene.message "He showed off a Poké Ball proudly."
  scene.message "\\bRagnar\\b: Pikachu! My partner!"
  scene.message "\\bRagnar\\b: We're gonna be the BEST team ever!"
  
  scene.message "\\b\\PN\\b: That's great! Want to travel together?"
  
  scene.message "\\bRagnar\\b: *grinning* Actually..."
  scene.message "\\bRagnar\\b: I was thinking we should be RIVALS!"
  scene.message "\\bRagnar\\b: We train separately, get stronger..."
  scene.message "\\bRagnar\\b: Then battle to see who's best!"
  
  scene.message "\\b\\PN\\b: *smiling* Sounds like a plan."
  
  scene.message "\\bRagnar\\b: But first—let's battle right now!"
  scene.message "\\bRagnar\\b: Pikachu vs your new partner!"
  scene.message "\\bRagnar\\b: Show me what you've got!"
  
  scene.set_switch SW::MET_RAGNAR, true
end

#===============================================================================
# NPC DIALOGUES
#===============================================================================

GameData::Dialogue.define :dawnhaven_villager_1 do |npc|
  npc.default "Dawnhaven Village... named for our beautiful sunrises."
  npc.default "I've lived here all my life."
  
  npc.if_switch SW::GOT_FIRST_POKEMON do
    npc.say "So you got your first Pokémon?"
    npc.say "How exciting! I remember when I was your age..."
    npc.say "The world seemed so full of possibilities."
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
