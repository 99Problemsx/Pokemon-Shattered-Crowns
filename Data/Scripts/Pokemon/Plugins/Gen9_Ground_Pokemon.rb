#===============================================================================
# Shattered Crowns - Gen9 ground Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :URSALUNA do |s|
  s.name          "Ursaluna"
  s.types         :GROUND, :NORMAL
  s.base_stats    hp: 130, attack: 140, defense: 105, speed: 50, sp_atk: 45, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      275
  s.catch_rate    20
  s.happiness     70
  s.evs           attack: 3
  s.abilities     :GUTS, :BULLETPROOF
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 0, :HEADLONGRUSH
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :LICK
    m.at 1, :FAKETEARS
    m.at 1, :COVET
    m.at 8, :FURYSWIPES
    m.at 13, :PAYBACK
    m.at 17, :SWEETSCENT
    m.at 22, :SLASH
    m.at 25, :PLAYNICE
    m.at 29, :PLAYROUGH
    m.at 35, :SCARYFACE
    m.at 41, :REST
    m.at 41, :SNORE
    m.at 48, :HIGHHORSEPOWER
    m.at 56, :THRASH
    m.at 64, :HAMMERARM
  end
  s.tutor_moves   :AERIALACE, :AVALANCHE, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CHARM, :CLOSECOMBAT, :CRUNCH, :CURSE, :DIG, :DOUBLEEDGE, :DRAINPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FAKETEARS, :FIREPUNCH, :FLING, :FOCUSPUNCH, :GIGAIMPACT, :GUNKSHOT, :HARDPRESS, :HEAVYSLAM, :HELPINGHAND, :HIGHHORSEPOWER, :HYPERBEAM, :HYPERVOICE, :ICEPUNCH, :LOWKICK, :METALCLAW, :METRONOME, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :ROAR, :ROCKSLIDE, :ROCKTOMB, :SCARYFACE, :SEEDBOMB, :SHADOWCLAW, :SLEEPTALK, :SMACKDOWN, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SUPERCELLSLAM, :SWIFT, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :THUNDERPUNCH, :TRAILBLAZE, :UPROAR, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5140
  s.height        2.4
  s.weight        290.0
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Mountain
  s.category      "Peat"
  s.pokedex_entry "It is believed that the swampy terrain of its ancient home region that gave Ursaluna its burly physique and newfound capacity to manipulate peat at will."
  s.generation    8
end

GameData::Species.define :TOEDSCOOL do |s|
  s.name          "Toedscool"
  s.types         :GROUND, :GRASS
  s.base_stats    hp: 40, attack: 40, defense: 35, speed: 70, sp_atk: 50, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      67
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :MYCELIUMMIGHT
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :WRAP
    m.at 4, :ABSORB
    m.at 8, :POISONPOWDER
    m.at 8, :STUNSPORE
    m.at 12, :SUPERSONIC
    m.at 15, :TACKLE
    m.at 16, :MEGADRAIN
    m.at 20, :SCREECH
    m.at 24, :MUDSHOT
    m.at 28, :HEX
    m.at 32, :SEEDBOMB
    m.at 36, :SPORE
    m.at 40, :GROWTH
    m.at 44, :GIGADRAIN
    m.at 48, :EARTHPOWER
    m.at 52, :POWERWHIP
  end
  s.tutor_moves   :ACIDSPRAY, :BULLETSEED, :CONFUSERAY, :DAZZLINGGLEAM, :EARTHPOWER, :ENDURE, :ENERGYBALL, :FLASHCANNON, :FOULPLAY, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HEX, :KNOCKOFF, :LEAFSTORM, :LIGHTSCREEN, :LUNGE, :MAGICALLEAF, :MUDSHOT, :MUDSLAP, :PAINSPLIT, :PROTECT, :RAINDANCE, :REFLECT, :REST, :SCARYFACE, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SOLARBEAM, :SPIKES, :SUBSTITUTE, :SWIFT, :TAUNT, :TOXIC, :TOXICSPIKES, :TRAILBLAZE, :TRICKROOM, :VENOSHOCK, :TERABLAST
  s.egg_moves     :ACUPRESSURE, :KNOCKOFF, :LEECHSEED, :MIRRORCOAT, :RAGEPOWDER, :RAPIDSPIN, :TICKLE, :TOXIC
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.9
  s.weight        33.0
  s.color         :Yellow
  s.shape         :Multiped
  s.habitat       :Forest
  s.category      "Woodear"
  s.pokedex_entry "Toedscool lives in muggy forests. The flaps that fall from its body are chewy and very delicious."
  s.generation    9
  s.evolves_into  :TOEDSCRUEL, :Level, 30
  s.wild_item_uncommon :TINYMUSHROOM
end

GameData::Species.define :TOEDSCRUEL do |s|
  s.name          "Toedscruel"
  s.types         :GROUND, :GRASS
  s.base_stats    hp: 80, attack: 70, defense: 65, speed: 100, sp_atk: 80, sp_def: 120
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      180
  s.catch_rate    90
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :MYCELIUMMIGHT
  s.moves do |m|
    m.at 1, :WRAP
    m.at 1, :MUDSLAP
    m.at 1, :REFLECTTYPE
    m.at 4, :ABSORB
    m.at 8, :STUNSPORE
    m.at 8, :POISONPOWDER
    m.at 12, :SUPERSONIC
    m.at 15, :TACKLE
    m.at 16, :MEGADRAIN
    m.at 20, :SCREECH
    m.at 24, :MUDSHOT
    m.at 28, :HEX
    m.at 34, :SEEDBOMB
    m.at 40, :SPORE
    m.at 44, :GROWTH
    m.at 48, :GIGADRAIN
    m.at 54, :EARTHPOWER
    m.at 58, :POWERWHIP
  end
  s.tutor_moves   :ACIDSPRAY, :BULLETSEED, :CONFUSERAY, :DAZZLINGGLEAM, :EARTHPOWER, :ENDURE, :ENERGYBALL, :FLASHCANNON, :FOULPLAY, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HEX, :HYPERBEAM, :KNOCKOFF, :LEAFSTORM, :LIGHTSCREEN, :LUNGE, :MAGICALLEAF, :MUDSHOT, :MUDSLAP, :PAINSPLIT, :PROTECT, :RAINDANCE, :REFLECT, :REST, :SCARYFACE, :SEEDBOMB, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SOLARBEAM, :SPIKES, :SUBSTITUTE, :SWIFT, :TAUNT, :TOXIC, :TOXICSPIKES, :TRAILBLAZE, :TRICKROOM, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        1.9
  s.weight        58.0
  s.color         :Black
  s.shape         :Multiped
  s.habitat       :Forest
  s.category      "Woodear"
  s.pokedex_entry "These Pokémon gather into groups and form colonies deep within forests. They absolutely hate it when strangers approach."
  s.generation    9
  s.wild_item_common   :TINYMUSHROOM
end

GameData::Species.define :GREATTUSK do |s|
  s.name          "Great Tusk"
  s.types         :GROUND, :FIGHTING
  s.base_stats    hp: 115, attack: 131, defense: 131, speed: 87, sp_atk: 53, sp_def: 53
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    30
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :PROTOSYNTHESIS
  s.moves do |m|
    m.at 1, :SUNNYDAY
    m.at 1, :HORNATTACK
    m.at 1, :DEFENSECURL
    m.at 1, :ROLLOUT
    m.at 7, :BULLDOZE
    m.at 14, :TAUNT
    m.at 21, :RAPIDSPIN
    m.at 28, :BRICKBREAK
    m.at 35, :STOMPINGTANTRUM
    m.at 42, :KNOCKOFF
    m.at 49, :EARTHQUAKE
    m.at 56, :GIGAIMPACT
    m.at 63, :CLOSECOMBAT
    m.at 70, :ENDEAVOR
    m.at 77, :MEGAHORN
    m.at 84, :HEADSMASH
    m.at 91, :HEADLONGRUSH
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CLOSECOMBAT, :DIG, :DOUBLEEDGE, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREFANG, :FLASHCANNON, :GIGAIMPACT, :HEAVYSLAM, :HIGHHORSEPOWER, :HYPERBEAM, :ICEFANG, :ICESPINNER, :IRONHEAD, :KNOCKOFF, :MUDSHOT, :MUDSLAP, :PLAYROUGH, :PROTECT, :PSYSHOCK, :REST, :REVERSAL, :ROAR, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SLEEPTALK, :SMACKDOWN, :SMARTSTRIKE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SUPERCELLSLAM, :TAKEDOWN, :TAUNT, :TEMPERFLARE, :THROATCHOP, :THUNDERFANG, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        2.2
  s.weight        320.0
  s.color         :Purple
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "Sightings of this Pokémon have occurred in recent years. The name Great Tusk was taken from a creature listed in a certain book."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

GameData::Species.define :IRONTREADS do |s|
  s.name          "Iron Treads"
  s.types         :GROUND, :STEEL
  s.base_stats    hp: 90, attack: 112, defense: 120, speed: 106, sp_atk: 72, sp_def: 70
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    30
  s.happiness     0
  s.evs           defense: 3
  s.abilities     :QUARKDRIVE
  s.moves do |m|
    m.at 1, :ELECTRICTERRAIN
    m.at 1, :HORNATTACK
    m.at 1, :DEFENSECURL
    m.at 1, :ROLLOUT
    m.at 7, :BULLDOZE
    m.at 21, :RAPIDSPIN
    m.at 28, :IRONHEAD
    m.at 35, :STOMPINGTANTRUM
    m.at 42, :KNOCKOFF
    m.at 49, :EARTHQUAKE
    m.at 56, :HEAVYSLAM
    m.at 63, :WILDCHARGE
    m.at 70, :ENDEAVOR
    m.at 77, :MEGAHORN
    m.at 84, :GIGAIMPACT
    m.at 91, :STEELROLLER
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BULLDOZE, :DOUBLEEDGE, :EARTHPOWER, :EARTHQUAKE, :ELECTRICTERRAIN, :ELECTROBALL, :ENDEAVOR, :FACADE, :FLASHCANNON, :GIGAIMPACT, :GYROBALL, :HARDPRESS, :HEAVYSLAM, :HIGHHORSEPOWER, :HYPERBEAM, :ICEFANG, :ICESPINNER, :IRONDEFENSE, :IRONHEAD, :KNOCKOFF, :METALSOUND, :MUDSHOT, :MUDSLAP, :PROTECT, :REST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SLEEPTALK, :SMARTSTRIKE, :STEALTHROCK, :STEELBEAM, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUPERCELLSLAM, :TAKEDOWN, :THUNDER, :THUNDERFANG, :VOLTSWITCH, :WILDCHARGE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        0.9
  s.weight        240.0
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "This Pokémon closely resembles a scientific weapon that a paranormal magazine claimed was sent to this planet by aliens."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

