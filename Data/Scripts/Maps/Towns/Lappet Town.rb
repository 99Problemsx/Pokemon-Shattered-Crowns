#===============================================================================
# Lappet Town - Starter Town Script
#===============================================================================
# Map ID: 2
# NPCs, Events, Cutscenes, and Gifts for the starting town.
#===============================================================================

#===============================================================================
# SWITCHES & VARIABLES for Lappet Town
#===============================================================================
# These extend the base switches - add to 008_SwitchesVariables.rb if needed
# SW::MET_PROFESSOR = 76
# SW::GOT_STARTER = 77
# SW::GOT_POKEDEX = 78
# SW::DELIVERED_PARCEL = 79

#===============================================================================
# CUTSCENES
#===============================================================================

# Professor intro when entering lab for the first time
# Pass the event ID when calling: pbCutscene(:lappet_lab_intro, event_id: 1)
GameData::Cutscene.define :lappet_lab_intro do |scene, event_id: nil|
  scene.fade_out
  scene.play_bgm 'Lab'
  scene.fade_in
  
  scene.message "Welcome to my laboratory!"
  scene.message "I am Professor Oak, the Pokémon Professor."
  scene.message "This world is inhabited by creatures called Pokémon!"
  scene.message "Some people keep them as pets, others use them for battles."
  scene.message "But first, tell me about yourself."
  
  scene.choice ['Boy', 'Girl'], variable: VAR::PLAYER_GENDER do |choice|
    if choice == 0
      pbChangePlayer(1)
    else  
      pbChangePlayer(2)
    end
  end
  
  scene.message "Wonderful! Now, what was your name again?"
  scene.script { pbTrainerName }
  
  scene.message "\\PN! What a wonderful name!"
  
  # Battle Mechanic Selection
  scene.message "Now, before you begin your adventure..."
  scene.message "The world of Pokémon has evolved with different battle mechanics."
  scene.message "Which one would you like to experience?"
  
  scene.script do
    BattleMechanicChoice.show_selection
  end
  
  scene.message "Excellent choice!"
  
  # Story Choice Mode Selection
  scene.message "And one final question..."
  scene.message "Do you wish to forge your own destiny?"
  scene.message "In Story Choice Mode, your decisions will change the story."
  
  scene.choice ['Standard Story', 'Story Choice Mode'] do |mode|
    if mode == 1
      scene.script { StoryChoices.set_mode(true) }
      scene.message "Very well. Your choices will shape the future."
      scene.message "Choose wisely."
    else
      scene.script { StoryChoices.set_mode(false) }
      scene.message "A classic tale then. Let the story unfold."
    end
  end
  
  scene.message "Your very own Pokémon adventure is about to begin!"
  
  scene.set_switch SW::MET_PROFESSOR, true
  scene.disable_event(event_id) if event_id  # Prevent re-triggering this intro
end

# Starter selection scene
# Pass the event ID when calling: pbCutscene(:lappet_choose_starter, event_id: 2)
GameData::Cutscene.define :lappet_choose_starter do |scene, event_id: nil|
  scene.message "Now, \\PN, which Pokémon will you choose?"
  scene.message "Take your time and choose wisely!"
  
  scene.choice ['Bulbasaur (Grass)', 'Charmander (Fire)', 'Squirtle (Water)'], variable: VAR::STARTER_CHOICE do |choice|
    case choice
    when 0
      pbMessage("Bulbasaur, the Seed Pokémon! An excellent choice!")
      pbAddPokemon(:BULBASAUR, 5)
    when 1
      pbMessage("Charmander, the Lizard Pokémon! A fiery spirit!")
      pbAddPokemon(:CHARMANDER, 5)
    when 2
      pbMessage("Squirtle, the Tiny Turtle Pokémon! A solid partner!")
      pbAddPokemon(:SQUIRTLE, 5)
    end
  end
  
  scene.message "I'm also giving you this Pokédex."
  scene.script { pbReceiveItem(:POKEDEX) }
  
  scene.message "And take these Poké Balls to catch wild Pokémon!"
  scene.script { pbReceiveItem(:POKEBALL, 5) }
  
  scene.set_switch SW::GOT_STARTER, true
  scene.set_switch SW::GOT_POKEDEX, true
  scene.disable_event(event_id) if event_id  # Prevent re-triggering starter selection
end

# Rival encounter at town exit
# Pass the event ID when calling: pbCutscene(:lappet_rival_intro, event_id: 9)
GameData::Cutscene.define :lappet_rival_intro do |scene, event_id: nil|
  scene.message "Hey, wait up!"
  scene.message "\\PN, right? I'm Gary, Professor Oak's grandson!"
  scene.message "Gramps gave you a Pokémon, huh? Let me see!"
  scene.message "..."
  scene.message "Ha! Mine's way stronger! Let's battle!"
  
  scene.trainer_battle :RIVAL1, "Gary", 0
  
  scene.message "What?! I can't believe I lost!"
  scene.message "You just got lucky... I'll beat you next time!"
  scene.message "Smell ya later!"
  
  scene.set_switch SW::CUTSCENE_INTRO_PLAYED, true
  scene.disable_event(event_id) if event_id  # Disable the event that triggered this
end

#===============================================================================
# DIALOGUE TREES - NPCs
#===============================================================================

# Mom's dialogue
GameData::Dialogue.define :lappet_mom do |d|
  d.node :start do |n|
    n.condition { !SW.on?(SW::GOT_STARTER) }
    n.say "Good morning, sweetie!"
    n.say "Professor Oak was looking for you."
    n.say "You should go visit his lab!"
  end
  
  d.node :start do |n|
    n.condition { SW.on?(SW::GOT_STARTER) }
    n.say "Oh, you got your very own Pokémon!"
    n.say "I'm so proud of you, \\PN!"
    n.choice "Rest here", goto: :heal
    n.choice "I should go", goto: :bye
  end
  
  d.node :heal do |n|
    n.action { $player.party.each { |p| p.heal } }
    n.say "There, all rested up!"
    n.say "Be careful out there!"
  end
  
  d.node :bye do |n|
    n.say "Good luck on your adventure!"
  end
end

# Gary's dialogue (after battle)
GameData::Dialogue.define :lappet_gary_after_battle do |d|
  d.node :start do |n|
    n.say "Tch... I can't believe I lost to you!"
    n.say "But don't get cocky, \\PN!"
    n.say "I'm going to train hard and become the strongest trainer!"
    n.say "Next time we meet, I'll crush you!"
    n.say "Smell ya later!"
  end
end

# Friendly NPC at town center
GameData::Dialogue.define :lappet_townfolk_1 do |d|
  d.node :start do |n|
    n.say "Welcome to Lappet Town!"
    n.say "This is a quiet little town, but it's home."
    n.choice "Tell me about the town", goto: :info
    n.choice "Any tips?", goto: :tips
    n.choice "Bye!", goto: :bye
  end
  
  d.node :info do |n|
    n.say "Lappet Town is famous for Professor Oak's lab."
    n.say "Trainers come from all over to get their first Pokémon!"
    n.goto :start
  end
  
  d.node :tips do |n|
    n.say "Here's a tip: save your game often!"
    n.say "Open the menu and select SAVE anytime."
    n.say "Also, tall grass is where wild Pokémon hide!"
    n.goto :start
  end
  
  d.node :bye do |n|
    n.say "Take care out there!"
  end
end

# Old man by the water
GameData::Dialogue.define :lappet_fisherman do |d|
  d.node :start do |n|
    n.say "Ah, the sea breeze is wonderful today..."
    n.condition { !SW.on?(SW::GOT_STARTER) }
    n.say "You look like a young trainer!"
    n.say "Professor Oak should have a Pokémon for you."
  end
  
  d.node :start do |n|
    n.condition { SW.on?(SW::GOT_STARTER) && !$player.has_species?(:MAGIKARP) }
    n.say "Say, you're a trainer now, aren't you?"
    n.say "I caught too many Magikarp today..."
    n.choice "I'll take one!", goto: :give_magikarp
    n.choice "No thanks", goto: :decline
  end
  
  d.node :give_magikarp do |n|
    n.action { pbAddPokemon(:MAGIKARP, 5) }
    n.say "There you go! Take good care of it!"
    n.say "Magikarp may seem weak, but keep training it..."
  end
  
  d.node :decline do |n|
    n.say "Suit yourself! More fish for me!"
  end
  
  d.node :start do |n|
    n.condition { $player.has_species?(:MAGIKARP) }
    n.say "How's that Magikarp doing?"
    n.say "Keep training it, trust me!"
  end
end

# Kid playing in town
GameData::Dialogue.define :lappet_kid do |d|
  d.node :start do |n|
    n.say "I wanna be a Pokémon trainer too!"
    n.say "But mom says I have to wait until I'm older..."
    n.say "You're so lucky!"
  end
end

# Sign reader
GameData::Dialogue.define :lappet_sign_town do |d|
  d.node :start do |n|
    n.say "LAPPET TOWN"
    n.say "'Where New Journeys Begin'"
  end
end

GameData::Dialogue.define :lappet_sign_lab do |d|
  d.node :start do |n|
    n.say "PROFESSOR OAK'S LAB"
    n.say "'Pokémon Research Facility'"
  end
end

#===============================================================================
# MYSTERY GIFTS - Early game bonuses
#===============================================================================

GameData::MysteryGift.define :lappet_launch_gift do |gift|
  gift.name "Launch Day Pikachu"
  gift.description "A special Pikachu to celebrate your journey!"
  gift.pokemon :PIKACHU, 10, item: :LIGHTBALL
end

GameData::MysteryGift.define :lappet_potion_pack do |gift|
  gift.name "Starter Pack"
  gift.description "Essential supplies for new trainers!"
  gift.item :POTION, 10
end

#===============================================================================
# ACHIEVEMENTS
#===============================================================================

GameData::Achievement.define :first_steps do |a|
  a.name "First Steps"
  a.description "Leave your hometown for the first time."
  a.reward_item :POKEBALL, 3
end

GameData::Achievement.define :meet_professor do |a|
  a.name "Meeting the Professor"
  a.description "Meet Professor Oak in his lab."
  a.reward_money 500
end

#===============================================================================
# CHAPTER - Start the story
#===============================================================================

GameData::Chapter.define :prologue do |c|
  c.name "Prologue: A New Journey"
  c.order 1
  c.description "Your adventure begins in Lappet Town."
  c.on_enter { pbPlayBGM("Lappet Town") }
end

#===============================================================================
# EVENT SCRIPT REFERENCE
#===============================================================================
# Use these in RPG Maker events:
#
# IMPORTANT: For one-time events, you need TWO event pages:
#
# Page 1 (The actual event):
#   Condition: Self Switch A is OFF (and any other conditions)
#   Script: pbCutscene(:cutscene_name)
#   
# Page 2 (After event is done):
#   Condition: Self Switch A is ON
#   Content: Empty (or different dialogue/behavior)
#
# The cutscene will automatically set Self Switch A to ON when it calls
# scene.disable_event, which will switch to Page 2 and prevent re-triggering.
#
#-------------------------------------------------------------------------------
# Professor Oak (first meeting):
#   Page 1: Self Switch A OFF, Switch [MET_PROFESSOR] OFF
#   Script: pbCutscene(:lappet_lab_intro, event_id: 1)  # Replace 1 with your event ID
#   Page 2: Self Switch A ON (empty or "Welcome back!")
#
# Professor Oak (starter selection):
#   Page 1: Self Switch A OFF, [MET_PROFESSOR] ON, [GOT_STARTER] OFF
#   Script: pbCutscene(:lappet_choose_starter, event_id: 2)  # Replace 2 with your event ID
#   Page 2: Self Switch A ON (empty or different dialogue)
#
# Mom:
#   Script: pbDialogue(:lappet_mom)
#
# Townfolk:
#   Script: pbDialogue(:lappet_townfolk_1)
#
# Fisherman (gives Magikarp):
#   Script: pbDialogue(:lappet_fisherman)
#
# Kid:
#   Script: pbDialogue(:lappet_kid)
#
# Town Sign:
#   Script: pbDialogue(:lappet_sign_town)
#
# Lab Sign:
#   Script: pbDialogue(:lappet_sign_lab)
#
# Rival at town exit:
#   Page 1: Self Switch A OFF, [GOT_STARTER] ON
#   Script: pbCutscene(:lappet_rival_intro, event_id: 9)  # Replace 9 with your event ID
#   
#   Page 2: Self Switch A ON
#   Script: pbDialogue(:lappet_gary_after_battle)
#   (Gary shows different dialogue after being defeated)


