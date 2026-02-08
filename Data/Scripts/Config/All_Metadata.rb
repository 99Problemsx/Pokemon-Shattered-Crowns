#===============================================================================
# Shattered Crowns - Global Metadata & Player Character Definitions
#===============================================================================
# Auto-generated from PBS/metadata.txt
# Uses GameData::Metadata.define and GameData::PlayerMetadata.define format
#===============================================================================

GameData::Metadata.define do |m|
  m.start_money       3000
  m.start_item_storage :POTION
  m.home              3, 7, 5, 8
  m.storage_creator   "Bill"
  m.wild_battle_bgm   "Battle wild"
  m.trainer_battle_bgm "Battle trainer"
  m.wild_victory_bgm  "Battle victory wild"
  m.trainer_victory_bgm "Battle victory trainer"
  m.surf_bgm          "Surfing"
  m.bicycle_bgm       "Bicycle"
end

GameData::PlayerMetadata.define 1 do |p|
  p.trainer_type  :POKEMONTRAINER_Red
  p.walk_charset  "Protagonist_M_Walk"
  p.run_charset   "boy_run"
  p.cycle_charset "boy_bike"
  p.surf_charset  "boy_surf"
  p.dive_charset  "boy_surf"
  p.fish_charset  "boy_fish_offset"
  p.surf_fish_charset "boy_fish_offset"
end

GameData::PlayerMetadata.define 2 do |p|
  p.trainer_type  :POKEMONTRAINER_Leaf
  p.walk_charset  "trainer_POKEMONTRAINER_Leaf"
  p.run_charset   "girl_run"
  p.cycle_charset "girl_bike"
  p.surf_charset  "girl_surf"
  p.dive_charset  "girl_surf"
  p.fish_charset  "girl_fish_offset"
  p.surf_fish_charset "girl_fish_offset"
end

