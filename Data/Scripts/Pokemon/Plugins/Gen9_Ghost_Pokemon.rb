#===============================================================================
# Shattered Crowns - Gen9 ghost Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :GREAVARD do |s|
  s.name          "Greavard"
  s.types         :GHOST
  s.base_stats    hp: 50, attack: 61, defense: 60, speed: 34, sp_atk: 30, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      58
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :PICKUP
  s.hidden_abilities :FLUFFY
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :TACKLE
    m.at 3, :LICK
    m.at 6, :TAILWHIP
    m.at 6, :BITE
    m.at 9, :ROAR
    m.at 12, :HEADBUTT
    m.at 16, :DIG
    m.at 24, :REST
    m.at 28, :CRUNCH
    m.at 32, :PLAYROUGH
    m.at 37, :HELPINGHAND
    m.at 41, :PHANTOMFORCE
    m.at 46, :CHARM
    m.at 52, :DOUBLEEDGE
  end
  s.tutor_moves   :BULLDOZE, :CHARM, :CONFUSERAY, :CRUNCH, :DIG, :DOUBLEEDGE, :ENDEAVOR, :ENDURE, :FACADE, :FIREFANG, :HELPINGHAND, :HEX, :ICEFANG, :MUDSHOT, :MUDSLAP, :NIGHTSHADE, :PAINSPLIT, :PHANTOMFORCE, :PLAYROUGH, :POLTERGEIST, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :ROAR, :SANDSTORM, :SCARYFACE, :SHADOWBALL, :SLEEPTALK, :SNARL, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :THIEF, :THUNDERFANG, :TRICK, :UPROAR, :TERABLAST
  s.egg_moves     :ALLYSWITCH, :DESTINYBOND, :DISABLE, :HOWL, :MEMENTO, :SHADOWSNEAK, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        35.0
  s.color         :White
  s.shape         :Quadruped
  s.habitat       :Mountain
  s.category      "Ghost Dog"
  s.pokedex_entry "It is said that a dog Pokémon that died in the wild without ever interacting with a human was reborn as this Pokémon."
  s.generation    9
  s.evolves_into  :HOUNDSTONE, :LevelNight, 30
end

GameData::Species.define :HOUNDSTONE do |s|
  s.name          "Houndstone"
  s.types         :GHOST
  s.base_stats    hp: 72, attack: 101, defense: 100, speed: 68, sp_atk: 50, sp_def: 97
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      171
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SANDRUSH
  s.hidden_abilities :FLUFFY
  s.moves do |m|
    m.at 0, :LASTRESPECTS
    m.at 1, :GROWL
    m.at 1, :TACKLE
    m.at 3, :LICK
    m.at 6, :TAILWHIP
    m.at 6, :BITE
    m.at 9, :ROAR
    m.at 12, :HEADBUTT
    m.at 16, :DIG
    m.at 24, :REST
    m.at 28, :CRUNCH
    m.at 36, :PLAYROUGH
    m.at 41, :HELPINGHAND
    m.at 46, :PHANTOMFORCE
    m.at 51, :CHARM
    m.at 58, :DOUBLEEDGE
  end
  s.tutor_moves   :BODYPRESS, :BULLDOZE, :CHARM, :CONFUSERAY, :CRUNCH, :DIG, :DOUBLEEDGE, :ENDEAVOR, :ENDURE, :FACADE, :FIREFANG, :GIGAIMPACT, :HELPINGHAND, :HEX, :HYPERBEAM, :ICEFANG, :MUDSHOT, :MUDSLAP, :NIGHTSHADE, :PAINSPLIT, :PHANTOMFORCE, :PLAYROUGH, :POLTERGEIST, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :ROAR, :SANDSTORM, :SCARYFACE, :SHADOWBALL, :SLEEPTALK, :SNARL, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :THIEF, :THUNDERFANG, :TRICK, :UPROAR, :WILLOWISP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        2.0
  s.weight        15.0
  s.color         :White
  s.shape         :Quadruped
  s.habitat       :Mountain
  s.category      "Ghost Dog"
  s.pokedex_entry "Houndstone spends most of its time sleeping in graveyards. Among all the dog Pokémon, this one is most loyal to its master."
  s.generation    9
end

GameData::Species.define :FLUTTERMANE do |s|
  s.name          "Flutter Mane"
  s.types         :GHOST, :FAIRY
  s.base_stats    hp: 55, attack: 55, defense: 55, speed: 135, sp_atk: 135, sp_def: 135
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    30
  s.happiness     0
  s.evs           speed: 1
  s.abilities     :PROTOSYNTHESIS
  s.moves do |m|
    m.at -1, :SUNNYDAY
    m.at 1, :CONFUSERAY
    m.at 1, :SPITE
    m.at 1, :ASTONISH
    m.at 7, :PSYBEAM
    m.at 14, :MEANLOOK
    m.at 21, :MEMENTO
    m.at 28, :WISH
    m.at 35, :DAZZLINGGLEAM
    m.at 42, :SHADOWBALL
    m.at 49, :MYSTICALFIRE
    m.at 56, :POWERGEM
    m.at 63, :PSYSHOCK
    m.at 70, :PHANTOMFORCE
    m.at 77, :PAINSPLIT
    m.at 84, :MOONBLAST
    m.at 91, :PERISHSONG
  end
  s.tutor_moves   :CALMMIND, :CHARGEBEAM, :CHARM, :CONFUSERAY, :DARKPULSE, :DAZZLINGGLEAM, :DISARMINGVOICE, :DRAININGKISS, :ENDURE, :ENERGYBALL, :FAKETEARS, :GIGAIMPACT, :HELPINGHAND, :HEX, :HYPERBEAM, :HYPERVOICE, :ICYWIND, :IMPRISON, :MAGICALLEAF, :MISTYTERRAIN, :NIGHTSHADE, :PAINSPLIT, :PHANTOMFORCE, :POLTERGEIST, :POWERGEM, :PROTECT, :PSYBEAM, :PSYSHOCK, :REST, :SHADOWBALL, :SLEEPTALK, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICKROOM, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        1.4
  s.weight        4.0
  s.color         :Gray
  s.shape         :Head
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "This Pokémon has characteristics similar to those of Flutter Mane, a creature mentioned in a certain book."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

GameData::Species.define :GIMMIGHOUL do |s|
  s.name          "Gimmighoul"
  s.types         :GHOST
  s.base_stats    hp: 45, attack: 30, defense: 70, speed: 10, sp_atk: 75, sp_def: 70
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      60
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :RATTLED
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :TACKLE
  end
  s.tutor_moves   :CONFUSERAY, :ENDURE, :HEX, :LIGHTSCREEN, :NASTYPLOT, :NIGHTSHADE, :POWERGEM, :PROTECT, :REFLECT, :REST, :SHADOWBALL, :SLEEPTALK, :SUBSTITUTE, :TAKEDOWN, :THIEF, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   12800
  s.height        0.3
  s.weight        5.0
  s.color         :Brown
  s.shape         :Head
  s.habitat       :Urban
  s.category      "Coin Chest"
  s.pokedex_entry "This Pokémon was born inside a treasure chest about 1,500 years ago. It sucks the life-force out of scoundrels who try to steal the treasure."
  s.generation    9
  s.evolves_into  :GHOLDENGO, :CollectItems, GIMMIGHOULCOIN
end

