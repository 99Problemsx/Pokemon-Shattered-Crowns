#===============================================================================
# Shattered Crowns - Gen9 grass Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :SPRIGATITO do |s|
  s.name          "Sprigatito"
  s.types         :GRASS
  s.base_stats    hp: 40, attack: 61, defense: 54, speed: 65, sp_atk: 45, sp_def: 45
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :PROTEAN
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :TAILWHIP
    m.at 1, :LEAFAGE
    m.at 7, :BITE
    m.at 10, :HONECLAWS
    m.at 13, :MAGICALLEAF
    m.at 15, :QUICKATTACK
    m.at 17, :SEEDBOMB
    m.at 21, :UTURN
    m.at 25, :WORRYSEED
    m.at 28, :SLASH
    m.at 32, :ENERGYBALL
    m.at 36, :PLAYROUGH
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :BULLETSEED, :CHARM, :DISARMINGVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :LEAFSTORM, :MAGICALLEAF, :MUDSLAP, :NASTYPLOT, :PETALBLIZZARD, :PLAYROUGH, :PROTECT, :REST, :SEEDBOMB, :SHADOWCLAW, :SLEEPTALK, :SOLARBEAM, :SUBSTITUTE, :SWIFT, :TAKEDOWN, :TAUNT, :TRAILBLAZE, :UTURN, :TERABLAST
  s.egg_moves     :ALLYSWITCH, :COPYCAT, :LEECHSEED, :PETALBLIZZARD, :SUCKERPUNCH
  s.egg_groups    :Field, :Grass
  s.hatch_steps   5120
  s.height        0.4
  s.weight        4.1
  s.color         :Green
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Grass Cat"
  s.pokedex_entry "The sweet scent its body gives off mesmerizes those around it. The scent grows stronger when this Pokémon is in the sun."
  s.generation    9
  s.evolves_into  :FLORAGATO, :Level, 16
end

GameData::Species.define :FLORAGATO do |s|
  s.name          "Floragato"
  s.types         :GRASS
  s.base_stats    hp: 61, attack: 80, defense: 63, speed: 83, sp_atk: 60, sp_def: 63
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      144
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :OVERGROW
  s.hidden_abilities :PROTEAN
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :TAILWHIP
    m.at 1, :LEAFAGE
    m.at 7, :BITE
    m.at 10, :HONECLAWS
    m.at 13, :MAGICALLEAF
    m.at 15, :QUICKATTACK
    m.at 20, :SEEDBOMB
    m.at 24, :UTURN
    m.at 28, :WORRYSEED
    m.at 33, :SLASH
    m.at 38, :ENERGYBALL
    m.at 42, :PLAYROUGH
    m.at 46, :LEAFSTORM
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :BULLETSEED, :CHARM, :DISARMINGVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FLING, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :LEAFSTORM, :LOWKICK, :LOWSWEEP, :MAGICALLEAF, :MUDSLAP, :NASTYPLOT, :PETALBLIZZARD, :PLAYROUGH, :PROTECT, :REST, :SEEDBOMB, :SHADOWCLAW, :SLEEPTALK, :SOLARBEAM, :SUBSTITUTE, :SWIFT, :TAKEDOWN, :TAUNT, :THUNDERPUNCH, :TRAILBLAZE, :UTURN, :TERABLAST
  s.egg_groups    :Field, :Grass
  s.hatch_steps   5120
  s.height        0.9
  s.weight        12.2
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Grass Cat"
  s.pokedex_entry "Floragato deftly wields the vine hidden beneath its long fur, slamming the hard flower bud against its opponents."
  s.generation    9
  s.evolves_into  :MEOWSCARADA, :Level, 36
end

GameData::Species.define :MEOWSCARADA do |s|
  s.name          "Meowscarada"
  s.types         :GRASS, :DARK
  s.base_stats    hp: 76, attack: 110, defense: 70, speed: 123, sp_atk: 81, sp_def: 70
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :OVERGROW
  s.hidden_abilities :PROTEAN
  s.moves do |m|
    m.at -1, :DOUBLETEAM
    m.at -1, :TRICK
    m.at 0, :FLOWERTRICK
    m.at 1, :LEAFAGE
    m.at 1, :TAILWHIP
    m.at 1, :SCRATCH
    m.at 7, :BITE
    m.at 10, :HONECLAWS
    m.at 13, :MAGICALLEAF
    m.at 15, :QUICKATTACK
    m.at 20, :SEEDBOMB
    m.at 24, :UTURN
    m.at 29, :WORRYSEED
    m.at 33, :SLASH
    m.at 38, :NIGHTSLASH
    m.at 42, :ENERGYBALL
    m.at 47, :PLAYROUGH
    m.at 52, :KNOCKOFF
    m.at 58, :GRASSYTERRAIN
    m.at 64, :LEAFSTORM
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AURASPHERE, :BRICKBREAK, :BULLETSEED, :CHARM, :CHILLINGWATER, :DARKPULSE, :DISARMINGVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FLING, :FOULPLAY, :FRENZYPLANT, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :HYPERBEAM, :KNOCKOFF, :LASHOUT, :LEAFSTORM, :LOWKICK, :LOWSWEEP, :MAGICALLEAF, :MUDSLAP, :NASTYPLOT, :PETALBLIZZARD, :PLAYROUGH, :POLLENPUFF, :POWERGEM, :PROTECT, :PSYCHUP, :REST, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SKILLSWAP, :SLEEPTALK, :SOLARBEAM, :SPIKES, :SUBSTITUTE, :SWIFT, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :THUNDERPUNCH, :TOXICSPIKES, :TRAILBLAZE, :TRICK, :TRICKROOM, :TRIPLEAXEL, :UTURN, :TERABLAST
  s.egg_groups    :Field, :Grass
  s.hatch_steps   5120
  s.height        1.5
  s.weight        31.2
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Magician"
  s.pokedex_entry "This Pokémon uses the reflective fur lining its cape to camouflage the stem of its flower, creating the illusion that the flower is floating."
  s.generation    9
end

GameData::Species.define :SMOLIV do |s|
  s.name          "Smoliv"
  s.types         :GRASS, :NORMAL
  s.base_stats    hp: 41, attack: 35, defense: 45, speed: 30, sp_atk: 58, sp_def: 51
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      52
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :EARLYBIRD
  s.hidden_abilities :HARVEST
  s.moves do |m|
    m.at 1, :SWEETSCENT
    m.at 1, :TACKLE
    m.at 5, :ABSORB
    m.at 7, :GROWTH
    m.at 10, :RAZORLEAF
    m.at 13, :HELPINGHAND
    m.at 16, :FLAIL
    m.at 20, :MEGADRAIN
    m.at 23, :GRASSYTERRAIN
    m.at 27, :SEEDBOMB
    m.at 30, :ENERGYBALL
    m.at 34, :LEECHSEED
    m.at 38, :TERRAINPULSE
  end
  s.tutor_moves   :BULLETSEED, :CHARM, :EARTHPOWER, :ENDURE, :ENERGYBALL, :FACADE, :GIGADRAIN, :GRASSKNOT, :GRASSYTERRAIN, :HELPINGHAND, :LEAFSTORM, :MAGICALLEAF, :PROTECT, :REST, :SEEDBOMB, :SLEEPTALK, :SOLARBEAM, :SOLARBLADE, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TRAILBLAZE, :WEATHERBALL, :TERABLAST
  s.egg_moves     :MEMENTO, :STRENGTHSAP, :SYNTHESIS, :WEATHERBALL
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.3
  s.weight        6.5
  s.color         :Green
  s.shape         :HeadBase
  s.habitat       :Grassland
  s.category      "Olive"
  s.pokedex_entry "It protects itself from enemies by emitting oil from the fruit on its head. This oil is bitter and astringent enough to make someone flinch."
  s.generation    9
  s.evolves_into  :DOLLIV, :Level, 25
end

GameData::Species.define :DOLLIV do |s|
  s.name          "Dolliv"
  s.types         :GRASS, :NORMAL
  s.base_stats    hp: 52, attack: 53, defense: 60, speed: 33, sp_atk: 78, sp_def: 78
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      124
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :EARLYBIRD
  s.hidden_abilities :HARVEST
  s.moves do |m|
    m.at 1, :SWEETSCENT
    m.at 1, :TACKLE
    m.at 5, :ABSORB
    m.at 7, :GROWTH
    m.at 10, :RAZORLEAF
    m.at 13, :HELPINGHAND
    m.at 16, :FLAIL
    m.at 20, :MEGADRAIN
    m.at 23, :GRASSYTERRAIN
    m.at 29, :SEEDBOMB
    m.at 34, :ENERGYBALL
    m.at 37, :LEECHSEED
    m.at 42, :TERRAINPULSE
  end
  s.tutor_moves   :BULLETSEED, :CHARM, :EARTHPOWER, :ENDURE, :ENERGYBALL, :FACADE, :GIGADRAIN, :GRASSKNOT, :GRASSYTERRAIN, :HELPINGHAND, :LEAFSTORM, :MAGICALLEAF, :PROTECT, :REST, :SEEDBOMB, :SLEEPTALK, :SOLARBEAM, :SOLARBLADE, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TRAILBLAZE, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.6
  s.weight        11.9
  s.color         :Green
  s.shape         :HeadBase
  s.habitat       :Grassland
  s.category      "Olive"
  s.pokedex_entry "Dolliv shares its tasty, fresh-scented oil with others. This species has coexisted with humans since times long gone."
  s.generation    9
  s.evolves_into  :ARBOLIVA, :Level, 35
end

GameData::Species.define :ARBOLIVA do |s|
  s.name          "Arboliva"
  s.types         :GRASS, :NORMAL
  s.base_stats    hp: 78, attack: 69, defense: 90, speed: 39, sp_atk: 125, sp_def: 109
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      255
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :SEEDSOWER
  s.hidden_abilities :HARVEST
  s.moves do |m|
    m.at 1, :MIRRORCOAT
    m.at 1, :TACKLE
    m.at 1, :SAFEGUARD
    m.at 1, :SWEETSCENT
    m.at 5, :ABSORB
    m.at 7, :GROWTH
    m.at 10, :RAZORLEAF
    m.at 13, :HELPINGHAND
    m.at 16, :FLAIL
    m.at 20, :MEGADRAIN
    m.at 23, :GRASSYTERRAIN
    m.at 29, :SEEDBOMB
    m.at 34, :ENERGYBALL
    m.at 39, :LEECHSEED
    m.at 46, :TERRAINPULSE
    m.at 52, :PETALBLIZZARD
    m.at 58, :PETALDANCE
  end
  s.tutor_moves   :ALLURINGVOICE, :BULLETSEED, :CHARM, :DAZZLINGGLEAM, :EARTHPOWER, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FLING, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYTERRAIN, :HELPINGHAND, :HYPERBEAM, :HYPERVOICE, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :METRONOME, :PETALBLIZZARD, :POLLENPUFF, :PROTECT, :PSYCHUP, :REFLECT, :REST, :SEEDBOMB, :SLEEPTALK, :SOLARBEAM, :SOLARBLADE, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TRAILBLAZE, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        1.4
  s.weight        48.2
  s.color         :Green
  s.shape         :HeadBase
  s.habitat       :Grassland
  s.category      "Olive"
  s.pokedex_entry "This calm Pokémon is very compassionate. It will share its delicious, nutrient-rich oil with weakened Pokémon."
  s.generation    9
end

GameData::Species.define :BRAMBLIN do |s|
  s.name          "Bramblin"
  s.types         :GRASS, :GHOST
  s.base_stats    hp: 40, attack: 65, defense: 30, speed: 60, sp_atk: 45, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      55
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :WINDRIDER
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :DEFENSECURL
    m.at 1, :ROLLOUT
    m.at 1, :ASTONISH
    m.at 5, :ABSORB
    m.at 9, :RAPIDSPIN
    m.at 13, :BULLETSEED
    m.at 17, :INFESTATION
    m.at 21, :HEX
    m.at 25, :MEGADRAIN
    m.at 29, :DISABLE
    m.at 35, :PHANTOMFORCE
    m.at 40, :GIGADRAIN
    m.at 45, :CURSE
    m.at 50, :PAINSPLIT
    m.at 55, :POWERWHIP
  end
  s.tutor_moves   :BULLETSEED, :CONFUSERAY, :CURSE, :ENDURE, :ENERGYBALL, :FACADE, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HEX, :LEAFSTORM, :NIGHTSHADE, :PAINSPLIT, :PHANTOMFORCE, :POLTERGEIST, :POUNCE, :PROTECT, :REST, :SCARYFACE, :SEEDBOMB, :SHADOWBALL, :SLEEPTALK, :SOLARBEAM, :SPIKES, :SPITE, :SUBSTITUTE, :THIEF, :TRAILBLAZE, :TERABLAST
  s.egg_moves     :BEATUP, :BLOCK, :LEECHSEED, :SHADOWSNEAK, :STRENGTHSAP
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.6
  s.weight        0.6
  s.color         :Brown
  s.shape         :Head
  s.habitat       :RoughTerrain
  s.category      "Tumbleweed"
  s.pokedex_entry "A soul unable to move on to the afterlife was blown around by the wind until it got tangled up with dried grass and became a Pokémon."
  s.generation    9
  s.evolves_into  :BRAMBLEGHAST, :LevelWalk, 1000
end

GameData::Species.define :BRAMBLEGHAST do |s|
  s.name          "Brambleghast"
  s.types         :GRASS, :GHOST
  s.base_stats    hp: 55, attack: 115, defense: 70, speed: 90, sp_atk: 80, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :WINDRIDER
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :DEFENSECURL
    m.at 1, :ROLLOUT
    m.at 1, :ASTONISH
    m.at 5, :ABSORB
    m.at 9, :RAPIDSPIN
    m.at 13, :BULLETSEED
    m.at 17, :INFESTATION
    m.at 21, :HEX
    m.at 25, :MEGADRAIN
    m.at 29, :DISABLE
    m.at 35, :PHANTOMFORCE
    m.at 40, :GIGADRAIN
    m.at 45, :CURSE
    m.at 50, :PAINSPLIT
    m.at 55, :POWERWHIP
  end
  s.tutor_moves   :BULLETSEED, :CONFUSERAY, :CURSE, :ENDURE, :ENERGYBALL, :FACADE, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HEX, :HYPERBEAM, :LEAFSTORM, :NIGHTSHADE, :PAINSPLIT, :PHANTOMFORCE, :POLTERGEIST, :POUNCE, :PROTECT, :REST, :SCARYFACE, :SEEDBOMB, :SHADOWBALL, :SKITTERSMACK, :SLEEPTALK, :SOLARBEAM, :SPIKES, :SPITE, :SUBSTITUTE, :THIEF, :TRAILBLAZE, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        1.2
  s.weight        6.0
  s.color         :Brown
  s.shape         :Head
  s.habitat       :RoughTerrain
  s.category      "Tumbleweed"
  s.pokedex_entry "It will open the branches of its head to envelop its prey. Once it absorbs all the life energy it needs, it expels the prey and discards it."
  s.generation    9
end

GameData::Species.define :CAPSAKID do |s|
  s.name          "Capsakid"
  s.types         :GRASS
  s.base_stats    hp: 50, attack: 62, defense: 40, speed: 50, sp_atk: 62, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :CHLOROPHYLL, :INSOMNIA
  s.hidden_abilities :KLUTZ
  s.moves do |m|
    m.at 1, :LEAFAGE
    m.at 1, :LEER
    m.at 4, :BITE
    m.at 10, :GROWTH
    m.at 13, :RAZORLEAF
    m.at 17, :SUNNYDAY
    m.at 21, :BULLETSEED
    m.at 24, :HEADBUTT
    m.at 28, :ZENHEADBUTT
    m.at 38, :CRUNCH
    m.at 44, :SEEDBOMB
    m.at 48, :SOLARBEAM
  end
  s.tutor_moves   :BULLETSEED, :CRUNCH, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :LEAFSTORM, :MAGICALLEAF, :PROTECT, :REST, :SANDSTORM, :SEEDBOMB, :SLEEPTALK, :SOLARBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :TAKEDOWN, :THIEF, :TRAILBLAZE, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :INGRAIN, :LEECHSEED, :RAGEPOWDER, :ROLLOUT, :WORRYSEED
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.3
  s.weight        3.0
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Spicy Pepper"
  s.pokedex_entry "The more sunlight this Pokémon bathes in, the more spicy chemicals are produced by its body, and thus the spicier its moves become."
  s.generation    9
  s.evolves_into  :SCOVILLAIN, :Item, FIRESTONE
end

GameData::Species.define :SCOVILLAIN do |s|
  s.name          "Scovillain"
  s.types         :GRASS, :FIRE
  s.base_stats    hp: 65, attack: 108, defense: 65, speed: 75, sp_atk: 108, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      170
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :CHLOROPHYLL, :INSOMNIA
  s.hidden_abilities :MOODY
  s.moves do |m|
    m.at 0, :SPICYEXTRACT
    m.at 0, :FLAMETHROWER
    m.at 1, :LEER
    m.at 1, :FIREFANG
    m.at 1, :LEAFAGE
    m.at 4, :BITE
    m.at 10, :GROWTH
    m.at 13, :RAZORLEAF
    m.at 17, :SUNNYDAY
    m.at 21, :BULLETSEED
    m.at 24, :HEADBUTT
    m.at 28, :ZENHEADBUTT
    m.at 33, :WORRYSEED
    m.at 38, :CRUNCH
    m.at 44, :SEEDBOMB
    m.at 48, :SOLARBEAM
    m.at 48, :OVERHEAT
  end
  s.tutor_moves   :BULLETSEED, :BURNINGJEALOUSY, :CRUNCH, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FIREBLAST, :FIREFANG, :FLAMETHROWER, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :HYPERBEAM, :LASHOUT, :LEAFSTORM, :MAGICALLEAF, :OVERHEAT, :PROTECT, :REST, :SANDSTORM, :SCARYFACE, :SEEDBOMB, :SLEEPTALK, :SOLARBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :TAKEDOWN, :TEMPERFLARE, :THIEF, :TRAILBLAZE, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.9
  s.weight        15.0
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Spicy Pepper"
  s.pokedex_entry "The red head converts spicy chemicals into fire energy and blasts the surrounding area with a super spicy stream of flame."
  s.generation    9
end

GameData::Species.define :BRUTEBONNET do |s|
  s.name          "Brute Bonnet"
  s.types         :GRASS, :DARK
  s.base_stats    hp: 111, attack: 127, defense: 99, speed: 55, sp_atk: 79, sp_def: 99
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    50
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :PROTOSYNTHESIS
  s.moves do |m|
    m.at -1, :SUNNYDAY
    m.at 1, :ABSORB
    m.at 1, :GROWTH
    m.at 1, :ASTONISH
    m.at 7, :STUNSPORE
    m.at 14, :MEGADRAIN
    m.at 21, :SYNTHESIS
    m.at 28, :CLEARSMOG
    m.at 35, :PAYBACK
    m.at 42, :THRASH
    m.at 49, :GIGADRAIN
    m.at 56, :SUCKERPUNCH
    m.at 63, :SPORE
    m.at 70, :INGRAIN
    m.at 77, :RAGEPOWDER
    m.at 91, :SOLARBEAM
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BULLETSEED, :CLOSECOMBAT, :CONFUSERAY, :CRUNCH, :DARKPULSE, :DOUBLEEDGE, :EARTHPOWER, :ENDURE, :ENERGYBALL, :FACADE, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYTERRAIN, :HEX, :HYPERBEAM, :LASHOUT, :LEAFSTORM, :MAGICALLEAF, :OUTRAGE, :POLLENPUFF, :PROTECT, :REST, :SCARYFACE, :SEEDBOMB, :SLEEPTALK, :SOLARBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :TAUNT, :THIEF, :TRAILBLAZE, :VENOSHOCK, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        1.2
  s.weight        21.0
  s.color         :Gray
  s.shape         :HeadArms
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "It is possible that the creature listed as Brute Bonnet in a certain book could actually be this Pokémon."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

GameData::Species.define :IRONLEAVES do |s|
  s.name          "Iron Leaves"
  s.types         :GRASS, :PSYCHIC
  s.base_stats    hp: 90, attack: 130, defense: 88, speed: 104, sp_atk: 70, sp_def: 108
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      295
  s.catch_rate    5
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :QUARKDRIVE
  s.moves do |m|
    m.at -1, :QUASH
    m.at -1, :ELECTRICTERRAIN
    m.at 1, :WORKUP
    m.at 1, :HELPINGHAND
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 7, :MAGICALLEAF
    m.at 14, :RETALIATE
    m.at 21, :QUICKGUARD
    m.at 28, :NIGHTSLASH
    m.at 35, :SWORDSDANCE
    m.at 42, :SACREDSWORD
    m.at 49, :LEAFBLADE
    m.at 56, :PSYBLADE
    m.at 63, :CLOSECOMBAT
    m.at 70, :IMPRISON
    m.at 77, :MEGAHORN
    m.at 84, :ALLYSWITCH
    m.at 91, :SOLARBLADE
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRSLASH, :BRICKBREAK, :CALMMIND, :CLOSECOMBAT, :COACHING, :DOUBLEEDGE, :ELECTRICTERRAIN, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FOCUSBLAST, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYTERRAIN, :GRAVITY, :HELPINGHAND, :HYPERBEAM, :IMPRISON, :IRONDEFENSE, :LEAFSTORM, :MAGICALLEAF, :METALSOUND, :PROTECT, :PSYCHICTERRAIN, :REST, :REVERSAL, :SCARYFACE, :SLEEPTALK, :SMARTSTRIKE, :SOLARBEAM, :SOLARBLADE, :SUBSTITUTE, :SWIFT, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THROATCHOP, :TRAILBLAZE, :WILDCHARGE, :XSCISSOR, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        1.5
  s.weight        125.0
  s.color         :Green
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "According to the few eyewitness accounts that exist, it used its shining blades to julienne large trees and boulders."
  s.generation    9
  s.flags         :Paradox
end

GameData::Species.define :DIPPLIN do |s|
  s.name          "Dipplin"
  s.types         :GRASS, :DRAGON
  s.base_stats    hp: 80, attack: 80, defense: 110, speed: 40, sp_atk: 95, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      170
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SUPERSWEETSYRUP, :GLUTTONY
  s.hidden_abilities :STICKYHOLD
  s.moves do |m|
    m.at -1, :INFESTATION
    m.at 0, :DOUBLEHIT
    m.at 1, :SWEETSCENT
    m.at 1, :RECYCLE
    m.at 1, :WITHDRAW
    m.at 1, :ASTONISH
    m.at 4, :DRAGONTAIL
    m.at 8, :GROWTH
    m.at 12, :DRAGONBREATH
    m.at 16, :PROTECT
    m.at 20, :BULLETSEED
    m.at 28, :SYRUPBOMB
    m.at 32, :DRAGONPULSE
    m.at 36, :RECOVER
    m.at 40, :ENERGYBALL
    m.at 44, :SUBSTITUTE
  end
  s.tutor_moves   :BODYSLAM, :BUGBITE, :BULLETSEED, :DRACOMETEOR, :DRAGONCHEER, :DRAGONPULSE, :DRAGONTAIL, :ENDURE, :ENERGYBALL, :FACADE, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :GYROBALL, :HYPERBEAM, :LEAFSTORM, :OUTRAGE, :POLLENPUFF, :POUNCE, :PROTECT, :REFLECT, :REST, :SEEDBOMB, :SLEEPTALK, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TERABLAST
  s.egg_groups    :Grass, :Dragon
  s.hatch_steps   5120
  s.height        0.4
  s.weight        4.4
  s.color         :Green
  s.shape         :Head
  s.habitat       :Forest
  s.category      "Candy Apple"
  s.pokedex_entry "The head sticking out belongs to the fore-wyrm, while the tail belongs to the core-wyrm. The two share one apple and help each other out."
  s.generation    9
  s.evolves_into  :HYDRAPPLE, :HasMove, DRAGONCHEER
end

GameData::Species.define :POLTCHAGEIST do |s|
  s.name          "Poltchageist"
  s.types         :GRASS, :GHOST
  s.base_stats    hp: 40, attack: 45, defense: 45, speed: 50, sp_atk: 74, sp_def: 54
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      62
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :HOSPITALITY
  s.hidden_abilities :HEATPROOF
  s.moves do |m|
    m.at 1, :STUNSPORE
    m.at 1, :ASTONISH
    m.at 1, :WITHDRAW
    m.at 6, :ABSORB
    m.at 12, :LIFEDEW
    m.at 18, :FOULPLAY
    m.at 24, :MEGADRAIN
    m.at 30, :HEX
    m.at 36, :RAGEPOWDER
    m.at 42, :GIGADRAIN
    m.at 48, :SHADOWBALL
    m.at 54, :MEMENTO
    m.at 60, :LEAFSTORM
  end
  s.tutor_moves   :CALMMIND, :CURSE, :ENDURE, :ENERGYBALL, :FOULPLAY, :GIGADRAIN, :GRASSYTERRAIN, :HEX, :IMPRISON, :IRONDEFENSE, :LEAFSTORM, :MAGICALLEAF, :NASTYPLOT, :NIGHTSHADE, :PAINSPLIT, :PHANTOMFORCE, :POLTERGEIST, :PROTECT, :PSYCHUP, :REFLECT, :REST, :SCALD, :SHADOWBALL, :SLEEPTALK, :SOLARBEAM, :SPITE, :SUBSTITUTE, :TRICKROOM, :UPROAR, :TERABLAST
  s.egg_groups    :Mineral, :Amorphous
  s.hatch_steps   5120
  s.height        0.1
  s.weight        1.1
  s.color         :Green
  s.shape         :Head
  s.habitat       :Urban
  s.category      "Matcha"
  s.pokedex_entry "Supposedly, the regrets of a tea ceremony master who died before perfecting his craft lingered in some matcha and became a Pokémon."
  s.generation    9
  s.evolves_into  :SINISTCHA, :Item, UNREMARKABLETEACUP
end

GameData::Species.define :SINISTCHA do |s|
  s.name          "Sinistcha"
  s.types         :GRASS, :GHOST
  s.base_stats    hp: 71, attack: 60, defense: 106, speed: 70, sp_atk: 121, sp_def: 80
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      178
  s.catch_rate    60
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :HOSPITALITY
  s.hidden_abilities :HEATPROOF
  s.moves do |m|
    m.at 0, :MATCHAGOTCHA
    m.at 1, :ASTONISH
    m.at 1, :WITHDRAW
    m.at 1, :STUNSPORE
    m.at 6, :ABSORB
    m.at 12, :LIFEDEW
    m.at 18, :FOULPLAY
    m.at 24, :MEGADRAIN
    m.at 30, :HEX
    m.at 36, :RAGEPOWDER
    m.at 42, :GIGADRAIN
    m.at 48, :SHADOWBALL
    m.at 54, :MEMENTO
    m.at 60, :LEAFSTORM
  end
  s.tutor_moves   :CALMMIND, :CURSE, :ENDURE, :ENERGYBALL, :FOULPLAY, :GIGADRAIN, :GRASSYTERRAIN, :HEX, :HYPERBEAM, :IMPRISON, :IRONDEFENSE, :LEAFSTORM, :MAGICALLEAF, :NASTYPLOT, :NIGHTSHADE, :PAINSPLIT, :PHANTOMFORCE, :POLTERGEIST, :PROTECT, :PSYCHUP, :REFLECT, :REST, :SCALD, :SHADOWBALL, :SLEEPTALK, :SOLARBEAM, :SPITE, :SUBSTITUTE, :TRICKROOM, :UPROAR, :TERABLAST
  s.egg_groups    :Mineral, :Amorphous
  s.hatch_steps   5120
  s.height        0.2
  s.weight        4.9
  s.color         :Green
  s.shape         :Head
  s.habitat       :Urban
  s.category      "Matcha"
  s.pokedex_entry "It pretends to be tea, trying to fool people into drinking it so it can drain their life-force. Its ruse is generally unsuccessful."
  s.generation    9
end

GameData::Species.define :OGERPON do |s|
  s.name          "Ogerpon"
  s.types         :GRASS
  s.base_stats    hp: 80, attack: 120, defense: 84, speed: 110, sp_atk: 60, sp_def: 96
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Slow
  s.base_exp      275
  s.catch_rate    5
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :DEFIANT
  s.moves do |m|
    m.at -1, :HORNLEECH
    m.at -1, :DOUBLEKICK
    m.at -1, :COUNTER
    m.at -1, :RETALIATE
    m.at 1, :VINEWHIP
    m.at 1, :LEECHSEED
    m.at 1, :QUICKATTACK
    m.at 1, :FOLLOWME
    m.at 6, :FOCUSENERGY
    m.at 12, :GROWTH
    m.at 18, :SLAM
    m.at 24, :LOWSWEEP
    m.at 30, :IVYCUDGEL
    m.at 36, :THROATCHOP
    m.at 42, :SYNTHESIS
    m.at 48, :SPIKYSHIELD
    m.at 54, :POWERWHIP
    m.at 60, :SUPERPOWER
    m.at 66, :WOODHAMMER
  end
  s.tutor_moves   :BRICKBREAK, :BULLETSEED, :CHARM, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLING, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :KNOCKOFF, :LASHOUT, :LEAFSTORM, :LOWKICK, :LOWSWEEP, :MAGICALLEAF, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SEEDBOMB, :SLEEPTALK, :SOLARBEAM, :SOLARBLADE, :SPIKES, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THROATCHOP, :TRAILBLAZE, :UTURN, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   2560
  s.height        1.2
  s.weight        39.8
  s.color         :Green
  s.shape         :Bipedal
  s.habitat       :Rare
  s.category      "Mask"
  s.pokedex_entry "This Pokémon's type changes based on which mask it's wearing. It confounds its enemies with nimble movements and kicks."
  s.generation    9
  s.flags         :Legendary, :TeraType_GRASS
end

GameData::Species.define :HYDRAPPLE do |s|
  s.name          "Hydrapple"
  s.types         :GRASS, :DRAGON
  s.base_stats    hp: 106, attack: 80, defense: 110, speed: 44, sp_atk: 120, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      270
  s.catch_rate    10
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :SUPERSWEETSYRUP, :REGENERATOR
  s.hidden_abilities :STICKYHOLD
  s.moves do |m|
    m.at -1, :YAWN
    m.at -1, :DOUBLEHIT
    m.at -1, :INFESTATION
    m.at 0, :FICKLEBEAM
    m.at 1, :WITHDRAW
    m.at 1, :SWEETSCENT
    m.at 1, :RECYCLE
    m.at 1, :ASTONISH
    m.at 4, :DRAGONTAIL
    m.at 8, :GROWTH
    m.at 12, :DRAGONBREATH
    m.at 16, :PROTECT
    m.at 20, :BULLETSEED
    m.at 28, :SYRUPBOMB
    m.at 32, :DRAGONPULSE
    m.at 36, :RECOVER
    m.at 40, :ENERGYBALL
    m.at 44, :SUBSTITUTE
    m.at 54, :POWERWHIP
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BUGBITE, :BULLETSEED, :CURSE, :DOUBLEEDGE, :DRACOMETEOR, :DRAGONCHEER, :DRAGONPULSE, :DRAGONTAIL, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :GYROBALL, :HEAVYSLAM, :HYDROPUMP, :HYPERBEAM, :LEAFSTORM, :MAGICALLEAF, :NASTYPLOT, :OUTRAGE, :POLLENPUFF, :POUNCE, :PROTECT, :RAINDANCE, :REFLECT, :REST, :SEEDBOMB, :SLEEPTALK, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :UPROAR, :TERABLAST
  s.egg_groups    :Grass, :Dragon
  s.hatch_steps   2560
  s.height        1.8
  s.weight        93.0
  s.color         :Green
  s.shape         :MultiBody
  s.habitat       :Forest
  s.category      "Apple Hydra"
  s.pokedex_entry "Seven syrpents live inside an apple made of syrup. The syrpent in the center is the commander."
  s.generation    9
end

