#===============================================================================
# Shattered Crowns - Dungeon Parameter Definitions
#===============================================================================
# Auto-generated from PBS/dungeon_parameters.txt
# Uses GameData::DungeonParameters.define format
#===============================================================================

GameData::DungeonParameters.define :cave do |d|
  d.dungeon_size      5, 4
  d.cell_size         10, 10
  d.min_room_size     5, 5
  d.max_room_size     9, 9
  d.corridor_width    2
  d.shift_corridors   true
  d.node_layout       :full
  d.room_layout       :full
  d.room_chance       70
  d.extra_connections 2
  d.floor_patches     2,50,25
  d.floor_decorations 50,200
  d.void_decorations  50,200
end

GameData::DungeonParameters.define :forest do |d|
  d.dungeon_size      5, 4
  d.cell_size         10, 10
  d.min_room_size     4, 4
  d.max_room_size     8, 8
  d.corridor_width    2
  d.node_layout       :full
  d.room_layout       :full
  d.room_chance       70
  d.extra_connections 2
  d.floor_patches     3,75,25
  d.floor_decorations 50,200
  d.void_decorations  50,200
end

