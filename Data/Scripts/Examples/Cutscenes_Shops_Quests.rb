#===============================================================================
# Example: Cutscenes, Shops, and Quests
#===============================================================================
# Demonstrates the V2 DSL features added to the Script System.
# Now using named switches and variables from 008_SwitchesVariables.rb
#===============================================================================

#===============================================================================
# CUTSCENES
#===============================================================================
GameData::Cutscene.define :professor_intro do |scene|
  scene.fade_out
  scene.play_bgm 'Lab'  # Use actual filename from Audio/BGM/
  scene.fade_in
  
  scene.say 'Professor Oak', 'Hello there! Welcome to the world of Pokémon!'
  scene.wait 20
  scene.say 'Professor Oak', 'My name is Oak. People call me the Pokémon Professor.'
  scene.message 'A Pokéball appears on the table...'
  
  # Using named variable constant instead of magic number
  scene.choice ['Boy', 'Girl'], variable: VAR::PLAYER_GENDER do |choice|
    if choice == 0
      pbChangePlayer(1)  # Player [1] = Boy (Red)
      pbMessage('You chose to play as a boy!')
    else
      pbChangePlayer(2)  # Player [2] = Girl (Leaf)
      pbMessage('You chose to play as a girl!')
    end
  end
  
  scene.say 'Professor Oak', 'Your very own Pokémon adventure is about to begin!'
  
  # Using named switch constant
  scene.set_switch SW::MET_PROFESSOR, true
  scene.set_switch SW::CUTSCENE_INTRO_PLAYED, true
end

GameData::Cutscene.define :receive_starter do |scene|
  scene.say 'Professor Oak', 'Pick any Pokémon you like!'
  
  # Using named variable for starter choice
  scene.choice ['Bulbasaur', 'Charmander', 'Squirtle'], variable: VAR::STARTER_CHOICE do |choice|
    case choice
    when 0
      scene.give_pokemon :BULBASAUR, 5
    when 1
      scene.give_pokemon :CHARMANDER, 5
    when 2
      scene.give_pokemon :SQUIRTLE, 5
    end
  end
  
  scene.give_item :POTION, 5
  scene.say 'Professor Oak', 'Take these Potions too. Good luck!'
  
  # Mark that player got their starter
  scene.set_switch SW::GOT_STARTER, true
  scene.set_switch SW::CUTSCENE_STARTER_PLAYED, true
end

#===============================================================================
# SHOPS
#===============================================================================
GameData::Shop.define :pokecenter_basic do |shop|
  shop.greeting 'Welcome! How may I help you?'
  shop.farewell 'Please come again!'
  
  shop.items :POKEBALL, :POTION, :ANTIDOTE, :PARALYZEHEAL, :AWAKENING
end

GameData::Shop.define :pokecenter_advanced do |shop|
  shop.greeting 'Welcome to the Pokémon Mart!'
  
  # Basic items (always available)
  shop.items :POKEBALL, :POTION, :ANTIDOTE
  
  # Items unlocked by badge count
  shop.badge_items 1, :SUPERPOTION, :GREATBALL
  shop.badge_items 3, :HYPERPOTION, :ULTRABALL, :SUPERREPEL
  shop.badge_items 5, :MAXPOTION, :MAXREPEL, :FULLHEAL
  shop.badge_items 7, :FULLRESTORE, :REVIVE
  
  # Challenge mode exclusive items
  shop.challenge_mode_items :RARECANDY, :PPUP
end

GameData::Shop.define :tm_shop do |shop|
  shop.greeting 'Looking for some TMs?'
  
  shop.tm :TM01  # Focus Punch
  shop.tm :TM02  # Dragon Claw
  shop.tm :TM03, condition: -> { $player.badge_count >= 4 }  # Water Pulse
end

#===============================================================================
# QUESTS
#===============================================================================
GameData::Quest.define :first_pokemon do |q|
  q.name 'A New Beginning'
  q.description 'Visit Professor Oak and receive your first Pokémon.'
  q.category :main
  
  q.objective 'Visit Professor Oak\'s Lab'
  q.objective 'Choose your starter Pokémon'
  
  q.reward_item :POKEBALL, 5
  
  q.on_complete do
    pbMessage('You received 5 Poké Balls as a quest reward!')
  end
end

GameData::Quest.define :catch_10_pokemon do |q|
  q.name 'Gotta Catch \'Em All!'
  q.description 'Catch 10 different species of Pokémon.'
  q.category :side
  
  q.objective 'Catch 10 Pokémon', count: 10
  
  q.reward_money 5000
  q.reward_item :PREMIERBALL, 10
end

GameData::Quest.define :defeat_rival do |q|
  q.name 'Friendly Rivalry'
  q.description 'Defeat your rival in battle.'
  q.category :main
  
  q.objective 'Battle your rival on Route 22'
  
  q.reward_item :RARECANDY, 1
end

# Daily quest example
GameData::Quest.define :daily_trainer do |q|
  q.name 'Daily Battle'
  q.description 'Defeat any trainer today.'
  q.category :daily
  
  q.objective 'Win 1 trainer battle'
  
  q.reward_money 1000
end
