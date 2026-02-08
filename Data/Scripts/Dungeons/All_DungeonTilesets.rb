#===============================================================================
# Shattered Crowns - Dungeon Tileset Definitions
#===============================================================================
# Auto-generated from PBS/dungeon_tilesets.txt
# Uses GameData::DungeonTileset.define format
#===============================================================================

GameData::DungeonTileset.define 7 do |t|
  t.autotile  1, :floor_patch
  t.tile      40, :void
  t.tile      41, :void_decoration
  t.tile      48, :void_decoration_large
  t.tile      42, :floor
  t.tile      50, :floor_decoration_large
  t.tile      0, :walls
  t.double_walls          true
  t.floor_patch_under_walls true
end

GameData::DungeonTileset.define 23 do |t|
  t.autotile  1, :floor_decoration
  t.tile      40, :void
  t.tile      42, :floor
  t.tile      43, :floor
  t.tile      44, :floor
  t.tile      45, :floor
  t.tile      46, :floor
  t.tile      47, :floor_patch
  t.tile      8, :walls
  t.tile      25, :wall_top
  t.snap_to_large_grid    true
  t.large_void_tiles      true
  t.large_wall_tiles      true
  t.thin_north_wall_offset -8
end

