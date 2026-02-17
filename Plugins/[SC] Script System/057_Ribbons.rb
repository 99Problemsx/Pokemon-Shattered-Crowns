#===============================================================================
# Shattered Crowns Script System - Ribbon Definitions
#===============================================================================
# Complete PBS replacement for ribbons.txt
# Defines ribbon data using Ruby DSL instead of text files.
#===============================================================================

module GameData
  #=============================================================================
  # Ribbon - Define achievement ribbons
  #=============================================================================
  class Ribbon
    def self.define(id, &block)
      id = DSL.to_id(id)
      builder = RibbonBuilder.new(id)
      yield(builder) if block_given?
      ScriptRegistry.register_ribbon(id, builder.to_data)
    end
    
    def self.get(id)
      ScriptRegistry.get_ribbon(DSL.to_id(id))
    end
    
    def self.exists?(id)
      !ScriptRegistry.get_ribbon(DSL.to_id(id)).nil?
    end
    
    def self.each
      ScriptRegistry.ribbons.each { |id, data| yield(id, data) }
    end
    
    def self.count
      ScriptRegistry.ribbons.count
    end
  end
  
  #=============================================================================
  # RibbonBuilder
  #=============================================================================
  class RibbonBuilder
    attr_reader :id
    
    def initialize(id)
      @id = id
      @data = {
        id: id,
        name: id.to_s.split('_').map(&:capitalize).join(' '),
        icon_pos: 0,
        description: "",
        flags: []
      }
    end
    
    def name(value);        @data[:name] = value; self; end
    def icon_pos(value);    @data[:icon_pos] = value; self; end
    def description(value); @data[:description] = value; self; end
    def flags(*values);     @data[:flags] = values.flatten; self; end
    
    def to_data
      @data.dup
    end
  end
end

#===============================================================================
# ScriptRegistry Extensions for Ribbons
#===============================================================================
module GameData
  module ScriptRegistry
    class << self
      def ribbons
        @ribbons ||= {}
      end
      
      def register_ribbon(id, data)
        ribbons[id] = data
      end
      
      def get_ribbon(id)
        ribbons[id]
      end
    end
  end
end
