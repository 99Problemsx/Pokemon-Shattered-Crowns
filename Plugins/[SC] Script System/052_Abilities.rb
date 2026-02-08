#===============================================================================
# Shattered Crowns Script System - Ability Definitions
#===============================================================================
# Complete PBS replacement for abilities.txt
# Defines abilities using Ruby DSL instead of text files.
#===============================================================================

module GameData
  #=============================================================================
  # Ability - Define Pokemon abilities
  #=============================================================================
  class Ability < ScriptBase
    #---------------------------------------------------------------------------
    # Define a new ability
    # Usage:
    #   GameData::Ability.define :STATIC do |ability|
    #     ability.name "Static"
    #     ability.description "Contact may paralyze."
    #   end
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      id = DSL.to_id(id)
      builder = AbilityBuilder.new(id)
      yield(builder) if block_given?
      ScriptRegistry.register_ability(id, builder.to_data)
    end
    
    #---------------------------------------------------------------------------
    # Get ability data
    #---------------------------------------------------------------------------
    def self.get(id)
      ScriptRegistry.get_ability(DSL.to_id(id))
    end
    
    def self.exists?(id)
      !ScriptRegistry.get_ability(DSL.to_id(id)).nil?
    end
    
    def self.each
      ScriptRegistry.abilities.each { |id, data| yield(id, data) }
    end
    
    def self.count
      ScriptRegistry.abilities.count
    end
  end
  
  #=============================================================================
  # AbilityBuilder - Builder for ability data
  #=============================================================================
  class AbilityBuilder
    attr_reader :id
    
    def initialize(id)
      @id = id
      @data = {
        id: id,
        name: id.to_s.split('_').map(&:capitalize).join(' '),
        description: "No description.",
        flags: []
      }
    end
    
    # Basic properties
    def name(val); @data[:name] = val; end
    def description(val); @data[:description] = val; end
    
    # Flags
    def flags(*vals)
      @data[:flags].concat(vals.flatten.map { |f| DSL.to_id(f) })
    end
    
    # Common ability flags
    def cannot_copy; @data[:flags] << :CannotCopy; end
    def cannot_swap; @data[:flags] << :CannotSwap; end
    def cannot_suppress; @data[:flags] << :CannotSuppress; end
    def form_changing; @data[:flags] << :FormChanging; end
    
    def to_data
      @data[:flags].uniq!
      @data.compact
    end
  end
end

#===============================================================================
# Top-level Shortcut
#===============================================================================
def Ability
  GameData::Ability
end
