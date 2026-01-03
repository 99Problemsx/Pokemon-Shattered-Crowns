#===============================================================================
# Example: Trainer Teams
#===============================================================================
# Pre-defined teams for use with trainers throughout the game.
#===============================================================================

#===============================================================================
# RIVAL TEAMS - Progress throughout the game
#===============================================================================
GameData::TrainerTeam.define :rival_battle_1 do |team|
  team.description "Rival's first battle (Route 22)"
  team.add :PIDGEY, 5
end

GameData::TrainerTeam.define :rival_battle_2 do |team|
  team.description "Rival's second battle (Cerulean)"
  team.add :PIDGEOTTO, 17
  team.add :RATTATA, 15
  team.add :CHARMANDER, 18  # Depends on starter
end

GameData::TrainerTeam.define :rival_champion do |team|
  team.description "Rival as Champion"
  team.ace :PIDGEOT, 59, moves: [:WING_ATTACK, :QUICK_ATTACK, :SKY_ATTACK, :MIRROR_MOVE]
  team.add :ALAKAZAM, 57, moves: [:PSYCHIC, :RECOVER, :FUTURE_SIGHT]
  team.add :RHYDON, 55
  team.add :GYARADOS, 58
  team.add :ARCANINE, 57
  team.ace :CHARIZARD, 61, item: :SITRUSBERRY
end

#===============================================================================
# GYM LEADER TEAMS
#===============================================================================
GameData::TrainerTeam.define :gym_brock do |team|
  team.description "Brock - Pewter City Gym"
  team.add :GEODUDE, 12
  team.ace :ONIX, 14, moves: [:ROCK_THROW, :BIND, :HARDEN, :TACKLE]
end

GameData::TrainerTeam.define :gym_misty do |team|
  team.description "Misty - Cerulean City Gym"
  team.add :STARYU, 18
  team.ace :STARMIE, 21, moves: [:WATER_PULSE, :SWIFT, :RECOVER]
end

GameData::TrainerTeam.define :gym_surge do |team|
  team.description "Lt. Surge - Vermilion City Gym"
  team.add :VOLTORB, 21
  team.add :PIKACHU, 18
  team.ace :RAICHU, 24, moves: [:THUNDERBOLT, :QUICK_ATTACK, :DOUBLE_TEAM]
end

#===============================================================================
# ELITE FOUR TEAMS
#===============================================================================
GameData::TrainerTeam.define :elite_lorelei do |team|
  team.description "Lorelei - Ice Master"
  team.add :DEWGONG, 52
  team.add :CLOYSTER, 51
  team.add :SLOWBRO, 52
  team.add :JYNX, 54
  team.ace :LAPRAS, 54, moves: [:ICE_BEAM, :SURF, :CONFUSE_RAY, :BODY_SLAM]
end

GameData::TrainerTeam.define :elite_bruno do |team|
  team.description "Bruno - Fighting Master"
  team.add :ONIX, 51
  team.add :HITMONCHAN, 53
  team.add :HITMONLEE, 53
  team.add :ONIX, 54
  team.ace :MACHAMP, 56, moves: [:CROSS_CHOP, :ROCK_SLIDE, :EARTHQUAKE]
end

#===============================================================================
# GENERIC TRAINER TEAMS
#===============================================================================
GameData::TrainerTeam.define :youngster_basic do |team|
  team.description "Basic youngster team"
  team.add :RATTATA, 4
end

GameData::TrainerTeam.define :bug_catcher_early do |team|
  team.description "Early game bug catcher"
  team.add :CATERPIE, 4
  team.add :WEEDLE, 4
end

GameData::TrainerTeam.define :lass_early do |team|
  team.description "Early game lass"
  team.add :PIDGEY, 5
  team.add :RATTATA, 4
end

GameData::TrainerTeam.define :hiker_rock do |team|
  team.description "Hiker with rock types"
  team.add :GEODUDE, 15
  team.add :GEODUDE, 15
  team.add :ONIX, 17
end

#===============================================================================
# TEAM ROCKET
#===============================================================================
GameData::TrainerTeam.define :rocket_grunt_basic do |team|
  team.description "Basic Team Rocket grunt"
  team.add :RATTATA, 13
  team.add :ZUBAT, 13
end

GameData::TrainerTeam.define :rocket_admin do |team|
  team.description "Team Rocket Admin"
  team.add :GOLBAT, 32
  team.add :ARBOK, 32
  team.add :WEEZING, 32
end
