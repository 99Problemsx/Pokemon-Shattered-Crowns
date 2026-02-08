#===============================================================================
# Shattered Crowns - Gen9 rock Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :NACLI do |s|
  s.name          "Nacli"
  s.types         :ROCK
  s.base_stats    hp: 55, attack: 55, defense: 75, speed: 25, sp_atk: 35, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      56
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :PURIFYINGSALT, :STURDY
  s.hidden_abilities :CLEARBODY
  s.moves do |m|
    m.at 1, :HARDEN
    m.at 1, :TACKLE
    m.at 5, :ROCKTHROW
    m.at 7, :MUDSHOT
    m.at 10, :SMACKDOWN
    m.at 13, :ROCKPOLISH
    m.at 16, :HEADBUTT
    m.at 20, :IRONDEFENSE
    m.at 25, :RECOVER
    m.at 30, :ROCKSLIDE
    m.at 33, :STEALTHROCK
    m.at 35, :HEAVYSLAM
    m.at 40, :EARTHQUAKE
    m.at 45, :STONEEDGE
  end
  s.tutor_moves   :BODYSLAM, :BULLDOZE, :CURSE, :DIG, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FLASHCANNON, :HEAVYSLAM, :HELPINGHAND, :IRONDEFENSE, :IRONHEAD, :METEORBEAM, :MUDSHOT, :POWERGEM, :PROTECT, :RAINDANCE, :REST, :ROCKSLIDE, :SANDSTORM, :SLEEPTALK, :SMACKDOWN, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :CURSE, :FISSURE, :POWERGEM
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.4
  s.weight        16.0
  s.color         :Brown
  s.shape         :Head
  s.habitat       :Cave
  s.category      "Rock Salt"
  s.pokedex_entry "It was born in a layer of rock salt deep under the earth. This species was particularly treasured in the old days, as they would share precious salt."
  s.generation    9
  s.evolves_into  :NACLSTACK, :Level, 24
end

GameData::Species.define :NACLSTACK do |s|
  s.name          "Naclstack"
  s.types         :ROCK
  s.base_stats    hp: 60, attack: 60, defense: 100, speed: 35, sp_atk: 35, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      124
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :PURIFYINGSALT, :STURDY
  s.hidden_abilities :CLEARBODY
  s.moves do |m|
    m.at 0, :SALTCURE
    m.at 1, :HARDEN
    m.at 1, :TACKLE
    m.at 5, :ROCKTHROW
    m.at 7, :MUDSHOT
    m.at 10, :SMACKDOWN
    m.at 13, :ROCKPOLISH
    m.at 16, :HEADBUTT
    m.at 20, :IRONDEFENSE
    m.at 30, :RECOVER
    m.at 34, :ROCKSLIDE
    m.at 38, :STEALTHROCK
    m.at 41, :HEAVYSLAM
    m.at 45, :EARTHQUAKE
    m.at 51, :STONEEDGE
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BULLDOZE, :CURSE, :DIG, :DOUBLEEDGE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FLASHCANNON, :GIGAIMPACT, :HEAVYSLAM, :HELPINGHAND, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :METEORBEAM, :MUDSHOT, :POWERGEM, :PROTECT, :RAINDANCE, :REST, :ROCKSLIDE, :SANDSTORM, :SLEEPTALK, :SMACKDOWN, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.6
  s.weight        105.0
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Cave
  s.category      "Rock Salt"
  s.pokedex_entry "This Pokémon dry cures its prey by spraying salt over them. The curing process steals away the water in the prey’s body."
  s.generation    9
  s.evolves_into  :GARGANACL, :Level, 38
end

GameData::Species.define :GARGANACL do |s|
  s.name          "Garganacl"
  s.types         :ROCK
  s.base_stats    hp: 100, attack: 100, defense: 130, speed: 35, sp_atk: 45, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      250
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 3
  s.abilities     :PURIFYINGSALT, :STURDY
  s.hidden_abilities :CLEARBODY
  s.moves do |m|
    m.at 0, :HAMMERARM
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :BLOCK
    m.at 1, :ROCKBLAST
    m.at 1, :WIDEGUARD
    m.at 5, :ROCKTHROW
    m.at 7, :MUDSHOT
    m.at 10, :ROCKTOMB
    m.at 13, :ROCKPOLISH
    m.at 16, :HEADBUTT
    m.at 24, :SALTCURE
    m.at 30, :RECOVER
    m.at 34, :ROCKSLIDE
    m.at 40, :STEALTHROCK
    m.at 44, :HEAVYSLAM
    m.at 49, :EARTHQUAKE
    m.at 54, :STONEEDGE
    m.at 60, :EXPLOSION
  end
  s.tutor_moves   :AVALANCHE, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CURSE, :DIG, :DOUBLEEDGE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLASHCANNON, :FLING, :FOCUSPUNCH, :GIGAIMPACT, :GRAVITY, :HARDPRESS, :HEAVYSLAM, :HELPINGHAND, :HYPERBEAM, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :METEORBEAM, :MUDSHOT, :POWERGEM, :PROTECT, :RAINDANCE, :REST, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SLEEPTALK, :SMACKDOWN, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :THUNDERPUNCH, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        2.3
  s.weight        240.0
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Cave
  s.category      "Rock Salt"
  s.pokedex_entry "Garganacl will rub its fingertips together and sprinkle injured Pokémon with salt. Even severe wounds will promptly heal afterward."
  s.generation    9
end

GameData::Species.define :KLAWF do |s|
  s.name          "Klawf"
  s.types         :ROCK
  s.base_stats    hp: 70, attack: 100, defense: 115, speed: 75, sp_atk: 35, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      158
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :ANGERSHELL, :SHELLARMOR
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :ROCKTHROW
    m.at 1, :VISEGRIP
    m.at 6, :HARDEN
    m.at 9, :ROCKSMASH
    m.at 13, :ROCKTOMB
    m.at 17, :METALCLAW
    m.at 21, :PROTECT
    m.at 24, :ROCKBLAST
    m.at 29, :XSCISSOR
    m.at 33, :SWORDSDANCE
    m.at 37, :FLAIL
    m.at 42, :ROCKSLIDE
    m.at 47, :HIGHHORSEPOWER
    m.at 51, :IRONDEFENSE
    m.at 56, :GUILLOTINE
  end
  s.tutor_moves   :BODYSLAM, :BRICKBREAK, :BULLDOZE, :DIG, :EARTHPOWER, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :GIGAIMPACT, :HELPINGHAND, :HIGHHORSEPOWER, :HYPERBEAM, :IRONDEFENSE, :KNOCKOFF, :METALCLAW, :METEORBEAM, :MUDSHOT, :MUDSLAP, :POWERGEM, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SMACKDOWN, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SWORDSDANCE, :TAKEDOWN, :TEMPERFLARE, :THIEF, :THROATCHOP, :TRAILBLAZE, :XSCISSOR, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :CRABHAMMER, :ENDEAVOR, :KNOCKOFF
  s.egg_groups    :Water3
  s.hatch_steps   8960
  s.height        1.3
  s.weight        79.0
  s.color         :Red
  s.shape         :Insectoid
  s.habitat       :RoughTerrain
  s.category      "Ambush"
  s.pokedex_entry "Klawf hangs upside-down from cliffs, waiting for prey. But Klawf can’t remain in this position for long because its blood rushes to its head."
  s.generation    9
end

GameData::Species.define :GLIMMET do |s|
  s.name          "Glimmet"
  s.types         :ROCK, :POISON
  s.base_stats    hp: 48, attack: 35, defense: 42, speed: 60, sp_atk: 105, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      70
  s.catch_rate    70
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :TOXICDEBRIS
  s.hidden_abilities :CORROSION
  s.moves do |m|
    m.at 1, :ROCKTHROW
    m.at 1, :HARDEN
    m.at 1, :SMACKDOWN
    m.at 7, :ACIDSPRAY
    m.at 11, :ANCIENTPOWER
    m.at 15, :ROCKPOLISH
    m.at 18, :STEALTHROCK
    m.at 22, :VENOSHOCK
    m.at 26, :SANDSTORM
    m.at 29, :SELFDESTRUCT
    m.at 33, :ROCKSLIDE
    m.at 37, :POWERGEM
    m.at 41, :ACIDARMOR
    m.at 46, :SLUDGEWAVE
  end
  s.tutor_moves   :ACIDSPRAY, :CONFUSERAY, :DAZZLINGGLEAM, :ENDURE, :FACADE, :GUNKSHOT, :IRONDEFENSE, :LIGHTSCREEN, :METEORBEAM, :MUDSHOT, :POWERGEM, :PROTECT, :RAINDANCE, :REFLECT, :REST, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SANDTOMB, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SPIKES, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :TOXIC, :TOXICSPIKES, :VENOSHOCK, :TERABLAST
  s.egg_moves     :EXPLOSION, :MEMENTO, :TOXIC
  s.egg_groups    :Mineral
  s.hatch_steps   7680
  s.height        0.7
  s.weight        8.0
  s.color         :Blue
  s.shape         :Head
  s.habitat       :Cave
  s.category      "Ore"
  s.pokedex_entry "It absorbs nutrients from cave walls. The petals it wears are made of crystallized poison."
  s.generation    9
  s.evolves_into  :GLIMMORA, :Level, 35
end

GameData::Species.define :GLIMMORA do |s|
  s.name          "Glimmora"
  s.types         :ROCK, :POISON
  s.base_stats    hp: 83, attack: 55, defense: 90, speed: 86, sp_atk: 130, sp_def: 81
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      184
  s.catch_rate    25
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :TOXICDEBRIS
  s.hidden_abilities :CORROSION
  s.moves do |m|
    m.at 0, :MORTALSPIN
    m.at 1, :SMACKDOWN
    m.at 1, :SPIKYSHIELD
    m.at 1, :ROCKTHROW
    m.at 1, :HARDEN
    m.at 1, :TOXICSPIKES
    m.at 7, :ACIDSPRAY
    m.at 11, :ANCIENTPOWER
    m.at 15, :ROCKPOLISH
    m.at 18, :STEALTHROCK
    m.at 22, :VENOSHOCK
    m.at 26, :SANDSTORM
    m.at 29, :SELFDESTRUCT
    m.at 33, :ROCKSLIDE
    m.at 39, :POWERGEM
    m.at 44, :ACIDARMOR
    m.at 50, :SLUDGEWAVE
  end
  s.tutor_moves   :ACIDSPRAY, :CONFUSERAY, :DAZZLINGGLEAM, :EARTHPOWER, :ENDURE, :ENERGYBALL, :FACADE, :FLASHCANNON, :GIGAIMPACT, :GUNKSHOT, :HYPERBEAM, :IRONDEFENSE, :LIGHTSCREEN, :METEORBEAM, :MUDSHOT, :POWERGEM, :PROTECT, :RAINDANCE, :REFLECT, :REST, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SANDTOMB, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SOLARBEAM, :SPIKES, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :TOXIC, :TOXICSPIKES, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   7680
  s.height        1.5
  s.weight        45.0
  s.color         :Blue
  s.shape         :Head
  s.habitat       :Cave
  s.category      "Ore"
  s.pokedex_entry "When this Pokémon detects danger, it will open up its crystalline petals and fire beams from its conical body."
  s.generation    9
end

GameData::Species.define :IRONTHORNS do |s|
  s.name          "Iron Thorns"
  s.types         :ROCK, :ELECTRIC
  s.base_stats    hp: 100, attack: 134, defense: 110, speed: 72, sp_atk: 70, sp_def: 84
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    30
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :QUARKDRIVE
  s.moves do |m|
    m.at -1, :ELECTRICTERRAIN
    m.at 1, :IRONDEFENSE
    m.at 1, :THUNDERFANG
    m.at 1, :ICEFANG
    m.at 1, :FIREFANG
    m.at 1, :ROCKTHROW
    m.at 7, :SCREECH
    m.at 21, :ROCKTOMB
    m.at 28, :BITE
    m.at 35, :CHARGE
    m.at 42, :ROCKSLIDE
    m.at 49, :SANDSTORM
    m.at 56, :WILDCHARGE
    m.at 63, :PINMISSILE
    m.at 70, :EARTHQUAKE
    m.at 77, :STEALTHROCK
    m.at 84, :STONEEDGE
    m.at 91, :GIGAIMPACT
  end
  s.tutor_moves   :BLIZZARD, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BULLDOZE, :CHARGE, :CHARGEBEAM, :CRUNCH, :CURSE, :DIG, :DOUBLEEDGE, :DRAGONCLAW, :DRAGONDANCE, :DRAGONTAIL, :EARTHPOWER, :EARTHQUAKE, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :GIGAIMPACT, :HEAVYSLAM, :HIGHHORSEPOWER, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :LOWKICK, :METALCLAW, :METEORBEAM, :POWERGEM, :PROTECT, :RAINDANCE, :REST, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SLEEPTALK, :SMACKDOWN, :SNARL, :SPIKES, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SUPERCELLSLAM, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERPUNCH, :THUNDERWAVE, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        1.6
  s.weight        303.0
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "It has some similarities to a Pokémon introduced in a dubious magazine as a Tyranitar from one billion years into the future."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

GameData::Species.define :IRONBOULDER do |s|
  s.name          "Iron Boulder"
  s.types         :ROCK, :PSYCHIC
  s.base_stats    hp: 90, attack: 120, defense: 80, speed: 124, sp_atk: 68, sp_def: 108
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      295
  s.catch_rate    10
  s.happiness     0
  s.evs           speed: 3
  s.abilities     :QUARKDRIVE
  s.moves do |m|
    m.at 1, :HORNATTACK
    m.at 1, :LEER
    m.at 1, :ROCKTHROW
    m.at 1, :ELECTRICTERRAIN
    m.at 7, :QUICKATTACK
    m.at 14, :SLASH
    m.at 21, :AGILITY
    m.at 28, :PSYCHOCUT
    m.at 35, :COUNTER
    m.at 42, :ROCKTOMB
    m.at 49, :SACREDSWORD
    m.at 56, :MIGHTYCLEAVE
    m.at 63, :SWORDSDANCE
    m.at 70, :MEGAHORN
    m.at 77, :QUICKGUARD
    m.at 84, :STONEEDGE
    m.at 91, :GIGAIMPACT
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRSLASH, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CLOSECOMBAT, :DOUBLEEDGE, :EARTHQUAKE, :ELECTRICTERRAIN, :ENDURE, :FACADE, :GIGAIMPACT, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :METEORBEAM, :POISONJAB, :PROTECT, :PSYCHIC, :PSYSHOCK, :REST, :ROCKBLAST, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SLEEPTALK, :SOLARBLADE, :STONEEDGE, :SUBSTITUTE, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THROATCHOP, :WILDCHARGE, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        1.5
  s.weight        162.5
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "It was named after a mysterious object recorded in an old book. Its body seems to be metallic."
  s.generation    9
  s.flags         :Paradox
end

