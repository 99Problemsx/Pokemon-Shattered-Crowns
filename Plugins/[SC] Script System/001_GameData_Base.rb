#===============================================================================
# Shattered Crowns Script System - GameData Base
#===============================================================================
# Core module and base class for all GameData types.
# Provides the registry pattern for storing defined scripts and DSL helpers.
#===============================================================================

module GameData
  #=============================================================================
  # ScriptRegistry - Stores all registered script data
  #=============================================================================
  module ScriptRegistry
    @maps = {}
    @encounters = {}
    @trainers = {}
    @animations = {}
    
    class << self
      attr_accessor :maps, :encounters, :trainers, :animations
    end
    
    def self.register_map(map_id, data)
      @maps[map_id] = data
      SCScripts.log("Registered map data for Map #{map_id}")
    end
    
    def self.register_encounter(map_id, encounter_type, data)
      @encounters[map_id] ||= {}
      @encounters[map_id][encounter_type] = data
      SCScripts.log("Registered #{encounter_type} encounters for Map #{map_id}")
    end
    
    def self.register_trainer(map_id, event_id, data)
      @trainers[map_id] ||= {}
      @trainers[map_id][event_id] = data
      SCScripts.log("Registered trainer #{data[:name]} (Event #{event_id}) for Map #{map_id}")
    end
    
    def self.get_map(map_id)
      @maps[map_id]
    end
    
    def self.get_encounters(map_id, encounter_type = nil)
      return nil unless @encounters[map_id]
      return @encounters[map_id] if encounter_type.nil?
      @encounters[map_id][encounter_type]
    end
    
    def self.get_trainer(map_id, event_id)
      return nil unless @trainers[map_id]
      @trainers[map_id][event_id]
    end
  end
  
  #=============================================================================
  # ScriptBase - Base class for all script definitions
  #=============================================================================
  class ScriptBase
    class << self
      attr_accessor :current_map_id
      
      # Set the current map context for registrations
      def for_map(map_id)
        @current_map_id = map_id
        yield if block_given?
        @current_map_id = nil
      end
    end
  end
end
