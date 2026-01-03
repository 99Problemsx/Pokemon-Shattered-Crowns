#===============================================================================
# Example: Switches, Variables, Encounters, and Trainers
#===============================================================================
# Demonstrates the core data DSL features using SW:: and VAR:: constants.
#===============================================================================

#===============================================================================
# SWITCHES - Using SW:: constants from 008_SwitchesVariables.rb
#===============================================================================
# Already defined in 008_SwitchesVariables.rb:
#   SW::MET_PROFESSOR      = 76
#   SW::GOT_STARTER        = 77
#   SW::GOT_POKEDEX        = 78
#   SW::DEFEATED_GYM_1     = 4  (etc.)
#
# Usage in events:
#   SW.on?(SW::GOT_STARTER)       # Check if ON
#   SW.set(SW::GOT_STARTER)       # Turn ON
#   SW.off(SW::GOT_STARTER)       # Turn OFF
#   SW.toggle(SW::GOT_STARTER)    # Toggle

#===============================================================================
# VARIABLES - Using VAR:: constants from 008_SwitchesVariables.rb
#===============================================================================
# Already defined in 008_SwitchesVariables.rb:
#   VAR::STARTER_CHOICE   = 7
#   VAR::PLAYER_GENDER    = 25
#   VAR::RIVAL_NAME       = 12
#
# Usage in events:
#   VAR.get(VAR::STARTER_CHOICE)      # Get value
#   VAR.set(VAR::STARTER_CHOICE, 0)   # Set value
#   VAR.add(VAR::POKEMON_CAUGHT, 1)   # Add to value

#===============================================================================
# ENCOUNTERS - Route 101 wild Pokemon
#===============================================================================
class Route101Encounters < GameData::MapEncounter
  register :Land, 25 do
    add(30, Pokemon.new(:PIDGEY), level(2, 4))
    add(25, Pokemon.new(:RATTATA), level(2, 4))
    add(20, Pokemon.new(:CATERPIE), level(3, 5))
    add(15, Pokemon.new(:WEEDLE), level(3, 5))
    add(10, Pokemon.new(:PIKACHU), level(3, 5))
  end
end

#===============================================================================
# TRAINERS - Route 101 trainers
#===============================================================================
class Route101Trainers < GameData::MapTrainer
  register 5, :YOUNGSTER, 'Joey' do |t|
    t.intro = "Hey! Are you a trainer too?"
    t.lose = "Wow, you're strong!"
    t.party << Pokemon.new(:RATTATA, 4)
  end
  
  register 6, :LASS, 'Marie' do |t|
    t.intro = "Let's have a battle!"
    t.lose = "You're really good!"
    t.party << Pokemon.new(:PIDGEY, 3)
    t.party << Pokemon.new(:RATTATA, 3)
  end
end

#===============================================================================
# QUICK REFERENCE - Event Script Commands
#===============================================================================
# Switches:
#   SW.on?(SW::GOT_STARTER)
#   SW.set(SW::GOT_STARTER, true)
#   SW.gym_badge_count  # Returns 0-8
#
# Variables:
#   VAR.get(VAR::STARTER_CHOICE)
#   VAR.set(VAR::STARTER_CHOICE, 0)
#
# Cutscenes:
#   pbCutscene(:professor_intro)
#
# Shops:
#   pbShop(:pokecenter_basic)
#
# Quests:
#   pbQuest(:start, :first_pokemon)
#   pbQuest(:complete, :first_pokemon)
