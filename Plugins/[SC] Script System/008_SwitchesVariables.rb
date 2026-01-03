#===============================================================================
# Shattered Crowns Script System - Switches & Variables
#===============================================================================
# Named constants matching your RPG Maker switch/variable setup.
# These integrate with Pokemon Essentials' existing switch/variable system.
#===============================================================================

module SCScripts
  #=============================================================================
  # Game Switches - Named constants for $game_switches
  #=============================================================================
  module Switches
    #---------------------------------------------------------------------------
    # System switches (1-25) - Essentials Core
    #---------------------------------------------------------------------------
    STARTING_OVER               = 1
    SEEN_POKERUS_IN_CENTER      = 2
    CHOOSING_STARTER            = 3
    DEFEATED_GYM_1              = 4
    DEFEATED_GYM_2              = 5
    DEFEATED_GYM_3              = 6
    DEFEATED_GYM_4              = 7
    DEFEATED_GYM_5              = 8
    DEFEATED_GYM_6              = 9
    DEFEATED_GYM_7              = 10
    DEFEATED_GYM_8              = 11
    DEFEATED_ELITE_FOUR         = 12
    FOSSIL_REVIVAL_IN_PROGRESS  = 13
    # 14-25: Script condition switches (PBDayNight, etc.)
    
    #---------------------------------------------------------------------------
    # Feature switches (26-50)
    #---------------------------------------------------------------------------
    # 26-27: Bug Contest switches
    # 28: s:pbInChallenge?
    HAS_NATIONAL_DEX            = 29
    # 30: s:pbNextMysteryGiftID
    SHINY_WILD_POKEMON          = 31
    FATEFUL_ENCOUNTERS          = 32
    NO_MONEY_LOST_IN_BATTLE     = 33
    NO_MEGA_EVOLUTION           = 34
    DISABLE_BOX_LINK            = 35
    # 36-37: Gender check switches
    # 38-50: RESERVED
    
    #---------------------------------------------------------------------------
    # Location/Event switches (51-75)
    #---------------------------------------------------------------------------
    VISITED_BERTH_ISLAND        = 51
    VISITED_FARADAY_ISLAND      = 52
    LATIAS_LATIOS_ROAMING       = 53
    KYOGRE_ROAMING              = 54
    ENTEI_ROAMING               = 55
    RESET_MEW_ENCOUNTER         = 56
    BOULDER_DOWN_HOLE_ROCK      = 57
    BOULDER_DOWN_HOLE_ICE       = 58
    # 59-75: Available for custom use
    
    #---------------------------------------------------------------------------
    # Custom Game Switches (76-99) - Add your story switches here
    #---------------------------------------------------------------------------
    MET_PROFESSOR               = 76
    GOT_STARTER                 = 77
    GOT_POKEDEX                 = 78
    # Add more story switches as needed (79-99 available)
    
    #---------------------------------------------------------------------------
    # Quest Switches (100+) - For quest system
    #---------------------------------------------------------------------------
    # Move quest switches to higher numbers to avoid conflicts
    QUEST_FIRST_POKEMON_STARTED  = 100
    QUEST_FIRST_POKEMON_COMPLETE = 101
    QUEST_CATCH_10_STARTED       = 102
    QUEST_CATCH_10_COMPLETE      = 103
    
    #---------------------------------------------------------------------------
    # Cutscene Switches (120+)
    #---------------------------------------------------------------------------
    CUTSCENE_INTRO_PLAYED        = 120
    CUTSCENE_STARTER_PLAYED      = 121
    
    #---------------------------------------------------------------------------
    # Dawnhaven Story Switches (130+)
    #---------------------------------------------------------------------------
    INTRO_PLAYED                 = 130
    MET_MOM                      = 131
    GOT_FIRST_POKEMON            = 132
    MET_ALDRIC                   = 133
    FIRST_DREAM                  = 134
    MET_RAGNAR                   = 135
    
    #---------------------------------------------------------------------------
    # Challenge Mode Switches (140+)
    #---------------------------------------------------------------------------
    NUZLOCKE_MODE                = 140
    SET_MODE                     = 141
    NO_BATTLE_ITEMS              = 142
    RANDOMIZER_MODE              = 143
    EXP_SHARE_ALL                = 144
    ARRIVED_DAWNHAVEN            = 145
    
    #---------------------------------------------------------------------------
    # Helper methods
    #---------------------------------------------------------------------------
    def self.on?(switch_id)
      $game_switches[switch_id]
    end
    
    def self.set(switch_id, value = true)
      $game_switches[switch_id] = value
      $game_map&.need_refresh = true
    end
    
    def self.off(switch_id)
      set(switch_id, false)
    end
    
    def self.toggle(switch_id)
      set(switch_id, !on?(switch_id))
    end
    
    # Gym badge count helper
    def self.gym_badge_count
      count = 0
      (DEFEATED_GYM_1..DEFEATED_GYM_8).each { |sw| count += 1 if on?(sw) }
      count
    end
  end
  
  #=============================================================================
  # Game Variables - Named constants for $game_variables
  #=============================================================================
  module Variables
    #---------------------------------------------------------------------------
    # System variables (1-25) - Essentials Core
    #---------------------------------------------------------------------------
    TEMP_POKEMON_CHOICE     = 1
    TEMP_MOVE_CHOICE        = 2
    TEMP_POKEMON_NAME       = 3
    TEMP_MOVE_NAME          = 4
    TEMP_TEXT_ENTRY         = 5
    POKECENTER_HEALING_BALL = 6
    STARTER_CHOICE          = 7
    APRICORN_BEING_CONVERTED = 8
    FOSSIL_BEING_REVIVED    = 9
    ELEVATOR_CURRENT_FLOOR  = 10
    ELEVATOR_NEW_FLOOR      = 11
    RIVAL_NAME              = 12
    E4_DEFEATED_COUNT       = 13
    COMBINED_FOSSIL_SPECIES = 14
    # 15-24: RESERVED
    
    #---------------------------------------------------------------------------
    # Custom Variables (25+) - Add your game variables here
    #---------------------------------------------------------------------------
    PLAYER_GENDER           = 25  # Custom: 0 = Boy, 1 = Girl
    DIFFICULTY_MODE         = 26  # 0 = Normal, 1 = Hard, 2 = Nuzlocke
    LEVEL_CAP_MODE          = 27  # 0 = None, 1 = Gym, 2 = Strict
    
    #---------------------------------------------------------------------------
    # Quest Tracking (50+)
    #---------------------------------------------------------------------------
    QUEST_CATCH_COUNT       = 50  # For "Catch 10 Pokemon" quest
    
    #---------------------------------------------------------------------------
    # Event/Choice Results (60+)
    #---------------------------------------------------------------------------
    CHOICE_RESULT           = 60
    TEMP_EVENT_ID           = 61
    TEMP_MAP_ID             = 62
    
    #---------------------------------------------------------------------------
    # Helper methods
    #---------------------------------------------------------------------------
    def self.get(var_id)
      $game_variables[var_id]
    end
    
    def self.set(var_id, value)
      $game_variables[var_id] = value
    end
    
    def self.add(var_id, amount)
      $game_variables[var_id] ||= 0
      $game_variables[var_id] += amount
    end
    
    def self.subtract(var_id, amount)
      add(var_id, -amount)
    end
  end
end

#===============================================================================
# Shorthand aliases for cleaner syntax
#===============================================================================
SW = SCScripts::Switches
VAR = SCScripts::Variables

#===============================================================================
# Update Cutscene builder to use named switches/variables
#===============================================================================
class GameData::CutsceneBuilder
  # Override set_switch to accept symbols
  def set_switch(switch_id, value = true)
    # Convert symbol to constant if needed
    if switch_id.is_a?(Symbol)
      switch_id = SCScripts::Switches.const_get(switch_id) rescue switch_id
    end
    @steps << { type: :set_switch, switch_id: switch_id, value: value }
  end
  
  # Override set_variable to accept symbols  
  def set_variable(var_id, value)
    if var_id.is_a?(Symbol)
      var_id = SCScripts::Variables.const_get(var_id) rescue var_id
    end
    @steps << { type: :set_variable, var_id: var_id, value: value }
  end
  
  # Condition helpers using named switches
  def if_switch(switch_id, &block)
    if switch_id.is_a?(Symbol)
      switch_id = SCScripts::Switches.const_get(switch_id) rescue switch_id
    end
    condition(-> { $game_switches[switch_id] }, &block)
  end
  
  def unless_switch(switch_id, &block)
    if switch_id.is_a?(Symbol)
      switch_id = SCScripts::Switches.const_get(switch_id) rescue switch_id
    end
    condition(-> { !$game_switches[switch_id] }, &block)
  end
  
  # Check gym badges
  def if_badges(count, &block)
    condition(-> { SCScripts::Switches.gym_badge_count >= count }, &block)
  end
end
