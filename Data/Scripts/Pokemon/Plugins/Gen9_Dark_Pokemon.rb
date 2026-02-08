#===============================================================================
# Shattered Crowns - Gen9 dark Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :OVERQWIL do |s|
  s.name          "Overqwil"
  s.types         :DARK, :POISON
  s.base_stats    hp: 85, attack: 115, defense: 95, speed: 85, sp_atk: 65, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      179
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :POISONPOINT, :SWIFTSWIM
  s.hidden_abilities :INTIMIDATE
  s.moves do |m|
    m.at 1, :POISONSTING
    m.at 1, :TACKLE
    m.at 4, :HARDEN
    m.at 8, :BITE
    m.at 12, :FELLSTINGER
    m.at 16, :MINIMIZE
    m.at 20, :SPIKES
    m.at 24, :BRINE
    m.at 28, :BARBBARRAGE
    m.at 32, :PINMISSILE
    m.at 36, :TOXICSPIKES
    m.at 40, :STOCKPILE
    m.at 40, :SPITUP
    m.at 44, :TOXIC
    m.at 48, :CRUNCH
    m.at 52, :ACUPRESSURE
    m.at 56, :DESTINYBOND
  end
  s.tutor_moves   :ACIDSPRAY, :AGILITY, :BLIZZARD, :CHILLINGWATER, :CRUNCH, :CURSE, :DARKPULSE, :DOUBLEEDGE, :ENDURE, :FACADE, :GIGAIMPACT, :GUNKSHOT, :GYROBALL, :HAZE, :HEX, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :LASHOUT, :LIQUIDATION, :MUDSHOT, :PAINSPLIT, :POISONJAB, :POISONTAIL, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :SCALESHOT, :SCARYFACE, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMARTSTRIKE, :SPIKES, :SPITE, :SUBSTITUTE, :SURF, :SWIFT, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THROATCHOP, :TOXIC, :TOXICSPIKES, :VENOSHOCK, :WATERFALL, :WATERPULSE, :TERABLAST
  s.egg_groups    :Water2
  s.hatch_steps   5355
  s.height        2.5
  s.weight        60.5
  s.color         :Black
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Pin Cluster"
  s.pokedex_entry "Its lancelike spikes and savage temperament have earned it the nickname \"sea fiend.\" It slurps up poison to nourish itself."
  s.generation    8
  s.flags         :DefaultForm_1, :InheritFormWithEverStone
end

GameData::Species.define :MASCHIFF do |s|
  s.name          "Maschiff"
  s.types         :DARK
  s.base_stats    hp: 60, attack: 78, defense: 60, speed: 51, sp_atk: 40, sp_def: 51
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      68
  s.catch_rate    150
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :INTIMIDATE, :RUNAWAY
  s.hidden_abilities :STAKEOUT
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :SCARYFACE
    m.at 4, :LICK
    m.at 7, :SNARL
    m.at 10, :HONECLAWS
    m.at 14, :BITE
    m.at 18, :ROAR
    m.at 22, :HEADBUTT
    m.at 26, :PAYBACK
    m.at 31, :CRUNCH
    m.at 35, :SWAGGER
    m.at 39, :REVERSAL
    m.at 43, :JAWLOCK
    m.at 49, :DOUBLEEDGE
  end
  s.tutor_moves   :BODYSLAM, :CHARM, :CRUNCH, :DARKPULSE, :DIG, :DOUBLEEDGE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FIREFANG, :HELPINGHAND, :ICEFANG, :LASHOUT, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :REVERSAL, :ROAR, :SCARYFACE, :SLEEPTALK, :SNARL, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TAUNT, :THIEF, :THUNDERFANG, :TRAILBLAZE, :TERABLAST
  s.egg_moves     :DESTINYBOND, :ENDEAVOR, :PLAYROUGH, :RETALIATE
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.5
  s.weight        16.0
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Urban
  s.category      "Rascal"
  s.pokedex_entry "It always scowls in an attempt to make opponents take it seriously, but even crying children will burst into laughter when they see Maschiff’s face."
  s.generation    9
  s.evolves_into  :MABOSSTIFF, :Level, 30
end

GameData::Species.define :MABOSSTIFF do |s|
  s.name          "Mabosstiff"
  s.types         :DARK
  s.base_stats    hp: 80, attack: 120, defense: 90, speed: 85, sp_atk: 60, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      177
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :INTIMIDATE, :GUARDDOG
  s.hidden_abilities :STAKEOUT
  s.moves do |m|
    m.at 0, :COMEUPPANCE
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :SCARYFACE
    m.at 4, :LICK
    m.at 7, :SNARL
    m.at 10, :HONECLAWS
    m.at 14, :BITE
    m.at 18, :ROAR
    m.at 22, :HEADBUTT
    m.at 26, :PAYBACK
    m.at 34, :CRUNCH
    m.at 39, :SWAGGER
    m.at 43, :REVERSAL
    m.at 48, :JAWLOCK
    m.at 55, :DOUBLEEDGE
    m.at 60, :OUTRAGE
  end
  s.tutor_moves   :BODYSLAM, :CHARM, :CRUNCH, :CURSE, :DARKPULSE, :DIG, :DOUBLEEDGE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FIREFANG, :GIGAIMPACT, :HELPINGHAND, :HYPERBEAM, :HYPERVOICE, :ICEFANG, :LASHOUT, :OUTRAGE, :PAINSPLIT, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :REVERSAL, :ROAR, :SCARYFACE, :SLEEPTALK, :SNARL, :SPITE, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TAUNT, :THIEF, :THUNDERFANG, :TRAILBLAZE, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.1
  s.weight        61.0
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :Urban
  s.category      "Boss"
  s.pokedex_entry "This Pokémon can store energy in its large dewlap. Mabosstiff unleashes this energy all at once to blow away enemies."
  s.generation    9
end

GameData::Species.define :KINGAMBIT do |s|
  s.name          "Kingambit"
  s.types         :DARK, :STEEL
  s.base_stats    hp: 100, attack: 135, defense: 120, speed: 50, sp_atk: 60, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      275
  s.catch_rate    25
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :DEFIANT, :SUPREMEOVERLORD
  s.hidden_abilities :PRESSURE
  s.moves do |m|
    m.at 0, :KOWTOWCLEAVE
    m.at 1, :METALCLAW
    m.at 1, :METALBURST
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :FURYCUTTER
    m.at 15, :TORMENT
    m.at 20, :SCARYFACE
    m.at 25, :ASSURANCE
    m.at 30, :METALSOUND
    m.at 35, :SLASH
    m.at 40, :NIGHTSLASH
    m.at 45, :IRONDEFENSE
    m.at 50, :RETALIATE
    m.at 57, :IRONHEAD
    m.at 64, :SWORDSDANCE
    m.at 71, :GUILLOTINE
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :BRICKBREAK, :DARKPULSE, :DIG, :ENDURE, :FACADE, :FALSESWIPE, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOULPLAY, :GIGAIMPACT, :GRASSKNOT, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :LASHOUT, :LOWKICK, :LOWSWEEP, :METALCLAW, :METALSOUND, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SHADOWCLAW, :SLEEPTALK, :SNARL, :SPITE, :STEALTHROCK, :STEELBEAM, :STONEEDGE, :SUBSTITUTE, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :THUNDERWAVE, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        2.0
  s.weight        120.0
  s.color         :Black
  s.shape         :Bipedal
  s.habitat       :RoughTerrain
  s.category      "Big Blade"
  s.pokedex_entry "Only a Bisharp that stands above all others in its vast army can evolve into Kingambit."
  s.generation    9
end

GameData::Species.define :IRONJUGULIS do |s|
  s.name          "Iron Jugulis"
  s.types         :DARK, :FLYING
  s.base_stats    hp: 94, attack: 80, defense: 86, speed: 108, sp_atk: 122, sp_def: 80
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    30
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :QUARKDRIVE
  s.moves do |m|
    m.at 1, :WORKUP
    m.at 1, :ELECTRICTERRAIN
    m.at 1, :FOCUSENERGY
    m.at 1, :TRIATTACK
    m.at 1, :AIRCUTTER
    m.at 7, :ROAR
    m.at 14, :ASSURANCE
    m.at 21, :DRAGONBREATH
    m.at 28, :SNARL
    m.at 35, :CRUNCH
    m.at 42, :HYPERVOICE
    m.at 56, :AIRSLASH
    m.at 63, :KNOCKOFF
    m.at 70, :DARKPULSE
    m.at 77, :OUTRAGE
    m.at 84, :DRAGONPULSE
    m.at 91, :HYPERBEAM
  end
  s.tutor_moves   :ACROBATICS, :AIRCUTTER, :AIRSLASH, :BODYSLAM, :CHARGEBEAM, :CRUNCH, :DARKPULSE, :DOUBLEEDGE, :DRAGONCHEER, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :EARTHPOWER, :ELECTRICTERRAIN, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FLAMETHROWER, :FLASHCANNON, :FLY, :FOCUSBLAST, :GIGAIMPACT, :HEATWAVE, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :IRONHEAD, :KNOCKOFF, :LASHOUT, :METALSOUND, :METEORBEAM, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :ROAR, :ROCKTOMB, :SCARYFACE, :SLEEPTALK, :SNARL, :SUBSTITUTE, :SUNNYDAY, :TAILWIND, :TAKEDOWN, :TAUNT, :THROATCHOP, :UTURN, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        1.3
  s.weight        111.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "It resembles a certain Pokémon introduced in a paranormal magazine, described as the offspring of a Hydreigon that fell in love with a robot."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

GameData::Species.define :WOCHIEN do |s|
  s.name          "Wo-Chien"
  s.types         :DARK, :GRASS
  s.base_stats    hp: 85, attack: 85, defense: 100, speed: 70, sp_atk: 95, sp_def: 135
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    6
  s.happiness     0
  s.evs           sp_defense: 3
  s.abilities     :TABLETSOFRUIN
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :SPITE
    m.at 1, :MEANLOOK
    m.at 5, :TICKLE
    m.at 10, :PAYBACK
    m.at 15, :POISONPOWDER
    m.at 15, :STUNSPORE
    m.at 20, :MEGADRAIN
    m.at 25, :LEECHSEED
    m.at 30, :GROWTH
    m.at 35, :INGRAIN
    m.at 40, :DARKPULSE
    m.at 45, :GIGADRAIN
    m.at 50, :RUINATION
    m.at 55, :FOULPLAY
    m.at 60, :POWERWHIP
    m.at 65, :GRASSYTERRAIN
    m.at 70, :KNOCKOFF
    m.at 75, :LEAFSTORM
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BULLETSEED, :DARKPULSE, :ENDURE, :ENERGYBALL, :FACADE, :FOULPLAY, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYTERRAIN, :HEX, :HYPERBEAM, :KNOCKOFF, :LASHOUT, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MUDSHOT, :MUDSLAP, :POLLENPUFF, :PROTECT, :RAINDANCE, :REFLECT, :REST, :SCARYFACE, :SEEDBOMB, :SLEEPTALK, :SNARL, :SOLARBEAM, :SOLARBLADE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TAUNT, :TRAILBLAZE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        1.5
  s.weight        74.2
  s.color         :Brown
  s.shape         :Serpentine
  s.habitat       :Rare
  s.category      "Ruinous"
  s.pokedex_entry "The grudge of a person punished for writing the king’s evil deeds upon wooden tablets has clad itself in dead leaves to become a Pokémon."
  s.generation    9
  s.flags         :Legendary
end

GameData::Species.define :CHIENPAO do |s|
  s.name          "Chien-Pao"
  s.types         :DARK, :ICE
  s.base_stats    hp: 80, attack: 120, defense: 80, speed: 135, sp_atk: 90, sp_def: 65
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    6
  s.happiness     0
  s.evs           speed: 3
  s.abilities     :SWORDOFRUIN
  s.moves do |m|
    m.at 1, :SPITE
    m.at 1, :POWDERSNOW
    m.at 1, :MEANLOOK
    m.at 5, :ICYWIND
    m.at 10, :PAYBACK
    m.at 15, :MIST
    m.at 15, :HAZE
    m.at 20, :ICESHARD
    m.at 25, :SWORDSDANCE
    m.at 30, :SNOWSCAPE
    m.at 35, :NIGHTSLASH
    m.at 40, :DARKPULSE
    m.at 45, :ICICLECRASH
    m.at 50, :RUINATION
    m.at 55, :SUCKERPUNCH
    m.at 60, :SACREDSWORD
    m.at 65, :RECOVER
    m.at 70, :THROATCHOP
    m.at 75, :SHEERCOLD
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AVALANCHE, :BLIZZARD, :BRICKBREAK, :CRUNCH, :DARKPULSE, :ENDURE, :FACADE, :FALSESWIPE, :GIGAIMPACT, :HAZE, :HEX, :HYPERBEAM, :ICEFANG, :ICESPINNER, :ICYWIND, :LASHOUT, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :SCARYFACE, :SLEEPTALK, :SNARL, :SNOWSCAPE, :SPITE, :SUBSTITUTE, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THROATCHOP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        1.9
  s.weight        152.2
  s.color         :White
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Ruinous"
  s.pokedex_entry "This Pokémon can control 100 tons of fallen snow. It plays around innocently by leaping in and out of avalanches it has caused."
  s.generation    9
  s.flags         :Legendary
end

GameData::Species.define :TINGLU do |s|
  s.name          "Ting-Lu"
  s.types         :DARK, :GROUND
  s.base_stats    hp: 155, attack: 110, defense: 125, speed: 45, sp_atk: 55, sp_def: 80
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    6
  s.happiness     0
  s.evs           defense: 3
  s.abilities     :VESSELOFRUIN
  s.moves do |m|
    m.at 1, :SPITE
    m.at 1, :MEANLOOK
    m.at 1, :SANDTOMB
    m.at 5, :SPIKES
    m.at 10, :PAYBACK
    m.at 15, :STOMP
    m.at 20, :BULLDOZE
    m.at 25, :WHIRLWIND
    m.at 30, :TAUNT
    m.at 35, :THRASH
    m.at 40, :DARKPULSE
    m.at 45, :STOMPINGTANTRUM
    m.at 50, :RUINATION
    m.at 55, :THROATCHOP
    m.at 60, :ROCKSLIDE
    m.at 65, :MEMENTO
    m.at 70, :EARTHQUAKE
    m.at 75, :FISSURE
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BULLDOZE, :DARKPULSE, :DIG, :DOUBLEEDGE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :GIGAIMPACT, :HEAVYSLAM, :HEX, :HYPERBEAM, :LASHOUT, :MUDSHOT, :MUDSLAP, :PROTECT, :REST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SLEEPTALK, :SNARL, :SPIKES, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TAUNT, :THROATCHOP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        2.7
  s.weight        699.7
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Ruinous"
  s.pokedex_entry "The fear poured into an ancient ritual vessel has clad itself in rocks and dirt to become a Pokémon."
  s.generation    9
  s.flags         :Legendary
end

GameData::Species.define :CHIYU do |s|
  s.name          "Chi-Yu"
  s.types         :DARK, :FIRE
  s.base_stats    hp: 55, attack: 80, defense: 80, speed: 100, sp_atk: 135, sp_def: 120
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    6
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :BEADSOFRUIN
  s.moves do |m|
    m.at 1, :EMBER
    m.at 1, :SPITE
    m.at 1, :MEANLOOK
    m.at 5, :FLAMEWHEEL
    m.at 10, :PAYBACK
    m.at 15, :WILLOWISP
    m.at 20, :FLAMECHARGE
    m.at 25, :INCINERATE
    m.at 30, :CONFUSERAY
    m.at 35, :NASTYPLOT
    m.at 40, :DARKPULSE
    m.at 45, :LAVAPLUME
    m.at 50, :RUINATION
    m.at 55, :BOUNCE
    m.at 60, :SWAGGER
    m.at 65, :INFERNO
    m.at 70, :MEMENTO
    m.at 75, :OVERHEAT
  end
  s.tutor_moves   :BURNINGJEALOUSY, :CONFUSERAY, :CRUNCH, :DARKPULSE, :ENDURE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :GIGAIMPACT, :HEATWAVE, :HEX, :HYPERBEAM, :LASHOUT, :LIGHTSCREEN, :NASTYPLOT, :OVERHEAT, :PROTECT, :PSYCHIC, :REFLECT, :REST, :SCARYFACE, :SLEEPTALK, :SNARL, :SPITE, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TAUNT, :TEMPERFLARE, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        0.4
  s.weight        4.9
  s.color         :Red
  s.shape         :Finned
  s.habitat       :Rare
  s.category      "Ruinous"
  s.pokedex_entry "It controls flames burning at over 5,400 degrees Fahrenheit. It casually swims through the sea of lava it creates by melting rock and sand."
  s.generation    9
  s.flags         :Legendary
end

