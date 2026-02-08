#===============================================================================
# Shattered Crowns - Type Definitions
#===============================================================================
# Auto-generated from PBS/types.txt
# Uses GameData::Type.define format
#===============================================================================

GameData::Type.define :NORMAL do |t|
  t.name        "Normal"
  t.icon_pos    0
  t.weaknesses  :FIGHTING
  t.immunities  :GHOST
end

GameData::Type.define :FIGHTING do |t|
  t.name        "Fighting"
  t.icon_pos    1
  t.weaknesses  :FLYING, :PSYCHIC, :FAIRY
  t.resistances :ROCK, :BUG, :DARK
end

GameData::Type.define :FLYING do |t|
  t.name        "Flying"
  t.icon_pos    2
  t.weaknesses  :ROCK, :ELECTRIC, :ICE
  t.resistances :FIGHTING, :BUG, :GRASS
  t.immunities  :GROUND
end

GameData::Type.define :POISON do |t|
  t.name        "Poison"
  t.icon_pos    3
  t.weaknesses  :GROUND, :PSYCHIC
  t.resistances :FIGHTING, :POISON, :BUG, :GRASS, :FAIRY
end

GameData::Type.define :GROUND do |t|
  t.name        "Ground"
  t.icon_pos    4
  t.weaknesses  :WATER, :GRASS, :ICE
  t.resistances :POISON, :ROCK
  t.immunities  :ELECTRIC
end

GameData::Type.define :ROCK do |t|
  t.name        "Rock"
  t.icon_pos    5
  t.weaknesses  :FIGHTING, :GROUND, :STEEL, :WATER, :GRASS
  t.resistances :NORMAL, :FLYING, :POISON, :FIRE
end

GameData::Type.define :BUG do |t|
  t.name        "Bug"
  t.icon_pos    6
  t.weaknesses  :FLYING, :ROCK, :FIRE
  t.resistances :FIGHTING, :GROUND, :GRASS
end

GameData::Type.define :GHOST do |t|
  t.name        "Ghost"
  t.icon_pos    7
  t.weaknesses  :GHOST, :DARK
  t.resistances :POISON, :BUG
  t.immunities  :NORMAL, :FIGHTING
end

GameData::Type.define :STEEL do |t|
  t.name        "Steel"
  t.icon_pos    8
  t.weaknesses  :FIGHTING, :GROUND, :FIRE
  t.resistances :NORMAL, :FLYING, :ROCK, :BUG, :STEEL, :GRASS, :PSYCHIC, :ICE, :DRAGON, :FAIRY
  t.immunities  :POISON
end

GameData::Type.define :QMARKS do |t|
  t.name        "???"
  t.icon_pos    9
end

GameData::Type.define :FIRE do |t|
  t.name        "Fire"
  t.icon_pos    10
  t.weaknesses  :GROUND, :ROCK, :WATER
  t.resistances :BUG, :STEEL, :FIRE, :GRASS, :ICE, :FAIRY
end

GameData::Type.define :WATER do |t|
  t.name        "Water"
  t.icon_pos    11
  t.weaknesses  :GRASS, :ELECTRIC
  t.resistances :STEEL, :FIRE, :WATER, :ICE
end

GameData::Type.define :GRASS do |t|
  t.name        "Grass"
  t.icon_pos    12
  t.weaknesses  :FLYING, :POISON, :BUG, :FIRE, :ICE
  t.resistances :GROUND, :WATER, :GRASS, :ELECTRIC
end

GameData::Type.define :ELECTRIC do |t|
  t.name        "Electric"
  t.icon_pos    13
  t.weaknesses  :GROUND
  t.resistances :FLYING, :STEEL, :ELECTRIC
end

GameData::Type.define :PSYCHIC do |t|
  t.name        "Psychic"
  t.icon_pos    14
  t.weaknesses  :BUG, :GHOST, :DARK
  t.resistances :FIGHTING, :PSYCHIC
end

GameData::Type.define :ICE do |t|
  t.name        "Ice"
  t.icon_pos    15
  t.weaknesses  :FIGHTING, :ROCK, :STEEL, :FIRE
  t.resistances :ICE
end

GameData::Type.define :DRAGON do |t|
  t.name        "Dragon"
  t.icon_pos    16
  t.weaknesses  :ICE, :DRAGON, :FAIRY
  t.resistances :FIRE, :WATER, :GRASS, :ELECTRIC
end

GameData::Type.define :DARK do |t|
  t.name        "Dark"
  t.icon_pos    17
  t.weaknesses  :FIGHTING, :BUG, :FAIRY
  t.resistances :GHOST, :DARK
  t.immunities  :PSYCHIC
end

GameData::Type.define :FAIRY do |t|
  t.name        "Fairy"
  t.icon_pos    18
  t.weaknesses  :POISON, :STEEL
  t.resistances :FIGHTING, :BUG, :DARK
  t.immunities  :DRAGON
end

GameData::Type.define :STELLAR do |t|
  t.name        "Stellar"
  t.icon_pos    19
end

