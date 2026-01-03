#===============================================================================
# Shattered Crowns Script System - Map Connections
#===============================================================================
# Define map connections between areas.
#===============================================================================

module GameData
  #=============================================================================
  # MapConnection - Define connections between maps
  #=============================================================================
  class MapConnection < ScriptBase
    @connections = []
    
    class << self
      attr_accessor :connections
    end
    
    #---------------------------------------------------------------------------
    # Define a connection
    # Usage: MapConnection.define 3, :East, 5, :West
    #---------------------------------------------------------------------------
    def self.define(map1_id, edge1, map2_id, edge2, offset = 0)
      connection = {
        map1: map1_id,
        edge1: edge1,
        map2: map2_id,
        edge2: edge2,
        offset: offset
      }
      @connections << connection
      SCScripts.log("Registered map connection: Map #{map1_id} #{edge1} <-> Map #{map2_id} #{edge2}")
    end
    
    #---------------------------------------------------------------------------
    # Bulk define connections
    #---------------------------------------------------------------------------
    def self.bulk_define(&block)
      instance_eval(&block) if block_given?
    end
    
    def self.connect(map1_id, edge1, map2_id, edge2, offset = 0)
      define(map1_id, edge1, map2_id, edge2, offset)
    end
    
    #---------------------------------------------------------------------------
    # Get connections for a map
    #---------------------------------------------------------------------------
    def self.for_map(map_id)
      @connections.select { |c| c[:map1] == map_id || c[:map2] == map_id }
    end
    
    #---------------------------------------------------------------------------
    # Get all connections
    #---------------------------------------------------------------------------
    def self.all
      @connections
    end
  end
end

#===============================================================================
# Example Usage
#===============================================================================
# GameData::MapConnection.bulk_define do
#   connect 3, :East, 4, :West      # Lappet Town -> Route 1
#   connect 4, :East, 5, :West      # Route 1 -> Viridian City
#   connect 5, :North, 6, :South    # Viridian City -> Route 2
#   connect 5, :West, 7, :East      # Viridian City -> Route 22
# end
