#===============================================================================
# Route 1 (Map 36)
#===============================================================================
# Map ID: 036
# The first route connecting Dawnhaven Village and Sunrise Farm.
# Features: Basic wild Pokémon, Youngster Joey (Quest NPC/Trainer).
#===============================================================================

#===============================================================================
# MAP SETTINGS
#===============================================================================
# Wild Encounters are handled by PBS/encounters.txt
# This script handles map-specific events and quests.

#===============================================================================
# QUEST NPC: YOUNGSTER JOEY
#===============================================================================
# Coordinates: Needs to be placed via event on map, but logic is here.
# Event Step calling this: run_route1_joey_event

def run_route1_joey_event
  quest = GameData::Quest.get(:novice_catcher)
  
  if quest.completed?
    pbMessage("\\bJoey\\b: My Rattata is in the top percentage of Rattata!")
    return
  end
  
  if quest.active?
    pbMessage("\\bJoey\\b: Did you catch that Pidgey yet?")
    pbMessage("\\bJoey\\b: Remember, lower its HP first!")
    return
  end
  
  # Quest not started
  GameData::Cutscene.play(:sq_novice_catcher_start)
  quest.start
end

#===============================================================================
# TRAINERS
#===============================================================================

EventHandlers.add(:on_trainer_load, :route1_trainers,
  proc { |trainer|
    next if $game_map.map_id != 36
    
    # Example dynamic trainer logic if needed
    # For standard trainers, use the event editor "Trainer" comment
  }
)
