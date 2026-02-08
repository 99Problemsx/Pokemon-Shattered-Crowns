#===============================================================================
# Shattered Crowns - Battle Facility List Definitions
#===============================================================================
# Auto-generated from PBS/battle_facility_lists.txt
# Uses GameData::BattleFacilityList.define format
#===============================================================================

GameData::BattleFacilityList.define :DefaultTrainerList do |l|
  l.trainers   "battle_tower_trainers.txt"
  l.pokemon    "battle_tower_pokemon.txt"
end

GameData::BattleFacilityList.define :TrainerList do |l|
  l.trainers   "cup_poke_trainers.txt"
  l.pokemon    "cup_poke_pkmn.txt"
  l.challenges :pokecupsingle, :pokecupdouble
end

GameData::BattleFacilityList.define :TrainerList do |l|
  l.trainers   "cup_little_trainers.txt"
  l.pokemon    "cup_little_pkmn.txt"
  l.challenges :littlecupsingle, :littlecupdouble
end

GameData::BattleFacilityList.define :TrainerList do |l|
  l.trainers   "cup_pika_trainers.txt"
  l.pokemon    "cup_pika_pkmn.txt"
  l.challenges :pikacupsingle, :pikacupdouble
end

GameData::BattleFacilityList.define :TrainerList do |l|
  l.trainers   "cup_fancy_trainers_single.txt"
  l.pokemon    "cup_fancy_pkmn_single.txt"
  l.challenges :fancycupsingle, :fancycupdouble
end

