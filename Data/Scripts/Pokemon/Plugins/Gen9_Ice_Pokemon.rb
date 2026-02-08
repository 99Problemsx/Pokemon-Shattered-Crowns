#===============================================================================
# Shattered Crowns - Gen9 ice Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :CETODDLE do |s|
  s.name          "Cetoddle"
  s.types         :ICE
  s.base_stats    hp: 108, attack: 68, defense: 45, speed: 43, sp_atk: 30, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      67
  s.catch_rate    150
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :THICKFAT, :SNOWCLOAK
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 1, :TACKLE
    m.at 6, :GROWL
    m.at 9, :ECHOEDVOICE
    m.at 12, :ICESHARD
    m.at 15, :REST
    m.at 19, :TAKEDOWN
    m.at 25, :FLAIL
    m.at 27, :AVALANCHE
    m.at 31, :BOUNCE
    m.at 36, :BODYSLAM
    m.at 40, :AMNESIA
    m.at 44, :ICESPINNER
    m.at 49, :DOUBLEEDGE
    m.at 53, :BLIZZARD
  end
  s.tutor_moves   :AMNESIA, :AVALANCHE, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CHARM, :CHILLINGWATER, :CURSE, :DOUBLEEDGE, :EARTHQUAKE, :ENDURE, :FACADE, :HEAVYSLAM, :HELPINGHAND, :HIGHHORSEPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEFANG, :ICESPINNER, :ICICLESPEAR, :ICYWIND, :KNOCKOFF, :LIQUIDATION, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :SLEEPTALK, :SNOWSCAPE, :STOMPINGTANTRUM, :SUBSTITUTE, :TAKEDOWN, :WATERPULSE, :TERABLAST
  s.egg_moves     :BELLYDRUM, :ENTRAINMENT, :ICICLECRASH, :SUPERPOWER, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   6400
  s.height        1.2
  s.weight        45.0
  s.color         :White
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Terra Whale"
  s.pokedex_entry "This species left the ocean and began living on land a very long time ago. It seems to be closely related to Wailmer."
  s.generation    9
  s.evolves_into  :CETITAN, :Item, ICESTONE
end

GameData::Species.define :CETITAN do |s|
  s.name          "Cetitan"
  s.types         :ICE
  s.base_stats    hp: 170, attack: 113, defense: 65, speed: 73, sp_atk: 45, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      182
  s.catch_rate    50
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :THICKFAT, :SLUSHRUSH
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 1, :TACKLE
    m.at 6, :GROWL
    m.at 9, :ECHOEDVOICE
    m.at 12, :ICESHARD
    m.at 15, :REST
    m.at 19, :TAKEDOWN
    m.at 25, :FLAIL
    m.at 27, :AVALANCHE
    m.at 31, :BOUNCE
    m.at 36, :BODYSLAM
    m.at 40, :AMNESIA
    m.at 44, :ICESPINNER
    m.at 49, :DOUBLEEDGE
    m.at 53, :BLIZZARD
  end
  s.tutor_moves   :AMNESIA, :AVALANCHE, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CHARM, :CHILLINGWATER, :CURSE, :DOUBLEEDGE, :EARTHQUAKE, :ENDURE, :FACADE, :GIGAIMPACT, :HARDPRESS, :HEAVYSLAM, :HELPINGHAND, :HIGHHORSEPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEFANG, :ICEPUNCH, :ICESPINNER, :ICICLESPEAR, :ICYWIND, :KNOCKOFF, :LIQUIDATION, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :SLEEPTALK, :SNOWSCAPE, :STOMPINGTANTRUM, :SUBSTITUTE, :TAKEDOWN, :WATERPULSE, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   6400
  s.height        4.5
  s.weight        700.0
  s.color         :White
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Terra Whale"
  s.pokedex_entry "This Pokémon wanders around snowy, icy areas. It protects its body with powerful muscles and a thick layer of fat under its skin."
  s.generation    9
end

GameData::Species.define :IRONBUNDLE do |s|
  s.name          "Iron Bundle"
  s.types         :ICE, :WATER
  s.base_stats    hp: 56, attack: 80, defense: 114, speed: 136, sp_atk: 124, sp_def: 60
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    50
  s.happiness     0
  s.evs           speed: 3
  s.abilities     :QUARKDRIVE
  s.moves do |m|
    m.at -1, :ELECTRICTERRAIN
    m.at 1, :PRESENT
    m.at 7, :POWDERSNOW
    m.at 14, :WHIRLPOOL
    m.at 21, :TAKEDOWN
    m.at 28, :DRILLPECK
    m.at 35, :HELPINGHAND
    m.at 42, :FREEZEDRY
    m.at 49, :FLIPTURN
    m.at 56, :ICEBEAM
    m.at 63, :AGILITY
    m.at 70, :SNOWSCAPE
    m.at 77, :HYDROPUMP
    m.at 84, :AURORAVEIL
    m.at 91, :BLIZZARD
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :AIRCUTTER, :AVALANCHE, :BLIZZARD, :BODYSLAM, :CHILLINGWATER, :ELECTRICTERRAIN, :ENCORE, :ENDURE, :FACADE, :FLING, :FLIPTURN, :GIGAIMPACT, :HELPINGHAND, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICESPINNER, :ICYWIND, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :SLEEPTALK, :SNOWSCAPE, :SUBSTITUTE, :SWIFT, :TAKEDOWN, :TAUNT, :THIEF, :UTURN, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        0.6
  s.weight        11.0
  s.color         :Red
  s.shape         :Winged
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "Its shape is similar to a robot featured in a paranormal magazine article. The robot was said to have been created by an ancient civilization."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

