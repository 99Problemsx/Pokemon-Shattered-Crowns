#===============================================================================
# Shattered Crowns Script System - Encounter Definitions
#===============================================================================
# Complete PBS replacement for encounters.txt
# Defines wild encounter data using Ruby DSL instead of text files.
#===============================================================================

module GameData
  #=============================================================================
  # Encounter - Define wild encounters per map
  #=============================================================================
  class Encounter < ScriptBase
    def self.define(map_id, version = 0, &block)
      key = "#{map_id}_#{version}"
      builder = EncounterBuilder.new(map_id, version)
      yield(builder) if block_given?
      ScriptRegistry.register_encounter(key, builder.to_data)
    end
    
    def self.get(map_id, version = 0)
      key = "#{map_id}_#{version}"
      ScriptRegistry.get_encounter(key)
    end
    
    def self.exists?(map_id, version = 0)
      !get(map_id, version).nil?
    end
    
    def self.for_map(map_id)
      results = []
      ScriptRegistry.encounters.each do |key, data|
        results << data if data[:map_id] == map_id
      end
      results
    end
    
    def self.each
      ScriptRegistry.encounters.each { |key, data| yield(key, data) }
    end
    
    def self.count
      ScriptRegistry.encounters.count
    end
  end
  
  #=============================================================================
  # EncounterBuilder
  #=============================================================================
  class EncounterBuilder
    attr_reader :map_id, :version
    
    ENCOUNTER_TYPES = [
      :land, :landday, :landnight, :landmorning,
      :water, :cave, :cavewater,
      :oldrod, :goodrod, :superrod,
      :rocksmash, :headbuttlow, :headbutthigh,
      :pokeradar, :bugcontest
    ]
    
    def initialize(map_id, version)
      @map_id = map_id
      @version = version
      @data = {
        map_id: map_id,
        version: version,
        encounters: {}
      }
    end
    
    # Dynamic method generation for all encounter types
    ENCOUNTER_TYPES.each do |type|
      define_method(type) do |density = 0, &block|
        enc_builder = EncounterListBuilder.new(type, density)
        block.call(enc_builder) if block
        @data[:encounters][type] = enc_builder.to_data
        self
      end
    end
    
    def to_data
      @data.dup
    end
  end
  
  #=============================================================================
  # EncounterListBuilder - Builder for individual encounter list
  #=============================================================================
  class EncounterListBuilder
    def initialize(type, density)
      @type = type
      @density = density
      @pokemon = []
    end
    
    def add(species, level, probability, form: nil)
      species = DSL.to_id(species)
      
      # Handle level ranges
      if level.is_a?(Range)
        min_level = level.first
        max_level = level.last
      else
        min_level = level
        max_level = level
      end
      
      @pokemon << {
        species: species,
        form: form,
        min_level: min_level,
        max_level: max_level,
        probability: probability
      }
      self
    end
    
    def to_data
      {
        type: @type,
        density: @density,
        pokemon: @pokemon
      }
    end
  end
end

#===============================================================================
# ScriptRegistry Extensions for Encounters
#===============================================================================
module GameData
  module ScriptRegistry
    class << self
      def encounters
        @encounters ||= {}
      end
      
      def register_encounter(key, data)
        encounters[key] = data
      end
      
      def get_encounter(key)
        encounters[key]
      end
    end
  end
end
