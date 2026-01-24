#===============================================================================
# Route 1
#===============================================================================
# Map ID: 36
#===============================================================================

#===============================================================================
# WILD ENCOUNTERS
#===============================================================================

GameData::MapEncounter.define :route_1 do |enc|
  enc.map_id 36
  enc.name "Route 1"
  
  # Grass encounters (common early-game Pokemon)
  enc.land do |land|
    land.encounter :PIDGEY, 2..4, 30      # 30% chance
    land.encounter :RATTATA, 2..4, 30     # 30% chance
    land.encounter :SENTRET, 2..3, 20     # 20% chance
    land.encounter :HOOTHOOT, 2..3, 10    # 10% chance
    land.encounter :SPEAROW, 3..4, 10     # 10% chance
  end
  
  # Optional: Morning encounters (if you want time-based)
  enc.land_morning do |land|
    land.encounter :PIDGEY, 2..4, 30
    land.encounter :SENTRET, 2..4, 30
    land.encounter :RATTATA, 2..3, 20
    land.encounter :HOOTHOOT, 2..3, 10
    land.encounter :SPEAROW, 3..4, 10
  end
  
  # Optional: Night encounters
  enc.land_night do |land|
    land.encounter :HOOTHOOT, 2..4, 40
    land.encounter :RATTATA, 2..4, 30
    land.encounter :PIDGEY, 2..3, 20
    land.encounter :SENTRET, 2..3, 10
  end
end

#===============================================================================
# TRAINERS
#===============================================================================

# Youngster Joey - First trainer on the route
GameData::MapTrainer.define :route_1_joey do |trainer|
  trainer.map_id 36
  trainer.event_id 5  # Replace with actual event ID
  trainer.trainer_type :YOUNGSTER
  trainer.name "Joey"
  trainer.version 0
  
  trainer.lose_text "Aw, my Rattata!"
  
  trainer.pokemon do |team|
    team.add :RATTATA, 3
  end
end

# Lass Alice - Second trainer
GameData::MapTrainer.define :route_1_alice do |trainer|
  trainer.map_id 36
  trainer.event_id 6  # Replace with actual event ID
  trainer.trainer_type :LASS
  trainer.name "Alice"
  trainer.version 0
  
  trainer.lose_text "Oh no, I lost!"
  
  trainer.pokemon do |team|
    team.add :PIDGEY, 3
    team.add :SENTRET, 2
  end
end

# Bug Catcher Ben - Third trainer
GameData::MapTrainer.define :route_1_ben do |trainer|
  trainer.map_id 36
  trainer.event_id 7  # Replace with actual event ID
  trainer.trainer_type :BUGCATCHER
  trainer.name "Ben"
  trainer.version 0
  
  trainer.lose_text "My bugs weren't strong enough!"
  
  trainer.pokemon do |team|
    team.add :CATERPIE, 2
    team.add :WEEDLE, 2
    team.add :CATERPIE, 3
  end
end

#===============================================================================
# ITEMS
#===============================================================================

# Hidden items and visible items on the route
# These can be placed via RPG Maker events or defined here

# Example: Potion on the ground
# Event: Item Ball
# Script: pbItemBall(:POTION)

# Example: Hidden Potion in grass
# Event: Hidden Item
# Script: pbHiddenItem(:POTION)

#===============================================================================
# ACHIEVEMENTS
#===============================================================================

GameData::Achievement.define :route_1_explored do |a|
  a.name "First Steps"
  a.description "Explore Route 1 for the first time."
  a.reward_money 100
end

GameData::Achievement.define :route_1_all_trainers do |a|
  a.name "Route 1 Champion"
  a.description "Defeat all trainers on Route 1."
  a.reward_item :GREATBALL, 3
end

#===============================================================================
# EVENT HANDLERS
#===============================================================================

# Achievement for first visit
EventHandlers.add(:on_map_or_spriteset_change, :route_1_first_visit,
  proc {
    next if !$game_map || $game_map.map_id != 36
    next if $game_switches[SW::ARRIVED_ROUTE_1]
    
    $game_switches[SW::ARRIVED_ROUTE_1] = true
    pbMessage("\\se[Fanfare2]You arrived at Route 1!")
    
    # Grant achievement
    GameData::Achievement.unlock(:route_1_explored)
  }
)

#===============================================================================
# TRAINER BATTLE HELPERS
#===============================================================================

# Call these from RPG Maker events
def pbRoute1Joey
  GameData::MapTrainer.battle(:route_1_joey)
end

def pbRoute1Alice
  GameData::MapTrainer.battle(:route_1_alice)
end

def pbRoute1Ben
  GameData::MapTrainer.battle(:route_1_ben)
end
