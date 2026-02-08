#===============================================================================
# Shattered Crowns - Grass Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :BULBASAUR do |s|
  s.name          "Bulbasaur"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 45, attack: 49, defense: 49, speed: 45, sp_atk: 65, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      64
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :CHLOROPHYLL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 3, :VINEWHIP
    m.at 6, :GROWTH
    m.at 9, :LEECHSEED
    m.at 12, :RAZORLEAF
    m.at 15, :POISONPOWDER
    m.at 15, :SLEEPPOWDER
    m.at 18, :SEEDBOMB
    m.at 21, :TAKEDOWN
    m.at 24, :SWEETSCENT
    m.at 27, :SYNTHESIS
    m.at 30, :WORRYSEED
    m.at 33, :DOUBLEEDGE
    m.at 36, :SOLARBEAM
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BIND, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CHARM, :CONFIDE, :CUT, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :GRASSYTERRAIN, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :KNOCKOFF, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERWHIP, :PROTECT, :REST, :RETURN, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STRENGTH, :STRINGSHOT, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :VENOSHOCK, :WEATHERBALL, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_moves     :AMNESIA, :CHARM, :CURSE, :GRASSYTERRAIN, :INGRAIN, :LEAFSTORM, :MAGICALLEAF, :NATUREPOWER, :PETALDANCE, :POWERWHIP, :SKULLBASH, :SLUDGE, :TOXIC
  s.egg_groups    :Monster, :Grass
  s.hatch_steps   5120
  s.height        0.7
  s.weight        6.9
  s.color         :Green
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Seed"
  s.pokedex_entry "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger."
  s.generation    1
  s.evolves_into  :IVYSAUR, :Level, 16
end

GameData::Species.define :IVYSAUR do |s|
  s.name          "Ivysaur"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 60, attack: 62, defense: 63, speed: 60, sp_atk: 80, sp_def: 80
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1, sp_defense: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :CHLOROPHYLL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :VINEWHIP
    m.at 1, :GROWTH
    m.at 9, :LEECHSEED
    m.at 12, :RAZORLEAF
    m.at 15, :POISONPOWDER
    m.at 15, :SLEEPPOWDER
    m.at 20, :SEEDBOMB
    m.at 25, :TAKEDOWN
    m.at 30, :SWEETSCENT
    m.at 35, :SYNTHESIS
    m.at 40, :WORRYSEED
    m.at 45, :DOUBLEEDGE
    m.at 50, :SOLARBEAM
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BIND, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CHARM, :CONFIDE, :CUT, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :GRASSYTERRAIN, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :KNOCKOFF, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERWHIP, :PROTECT, :REST, :RETURN, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STRENGTH, :STRINGSHOT, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :VENOSHOCK, :WEATHERBALL, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Monster, :Grass
  s.hatch_steps   5120
  s.height        1.0
  s.weight        13.0
  s.color         :Green
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Seed"
  s.pokedex_entry "To support its bulb, Ivysaur's legs grow sturdy. If it spends more time lying in the sunlight, the bud will soon bloom into a large flower."
  s.generation    1
  s.evolves_into  :VENUSAUR, :Level, 32
end

GameData::Species.define :VENUSAUR do |s|
  s.name          "Venusaur"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 80, attack: 82, defense: 83, speed: 80, sp_atk: 100, sp_def: 100
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      263
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2, sp_defense: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :CHLOROPHYLL
  s.moves do |m|
    m.at 0, :PETALBLIZZARD
    m.at 1, :PETALDANCE
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :VINEWHIP
    m.at 1, :GROWTH
    m.at 9, :LEECHSEED
    m.at 12, :RAZORLEAF
    m.at 15, :POISONPOWDER
    m.at 15, :SLEEPPOWDER
    m.at 20, :SEEDBOMB
    m.at 25, :TAKEDOWN
    m.at 30, :SWEETSCENT
    m.at 37, :SYNTHESIS
    m.at 44, :WORRYSEED
    m.at 51, :DOUBLEEDGE
    m.at 58, :SOLARBEAM
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BIND, :BLOCK, :BODYSLAM, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CHARM, :CONFIDE, :CUT, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLASH, :FRENZYPLANT, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :GRASSYTERRAIN, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :KNOCKOFF, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OUTRAGE, :POWERWHIP, :PROTECT, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :STRINGSHOT, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TERRAINPULSE, :TOXIC, :VENOSHOCK, :WEATHERBALL, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Monster, :Grass
  s.hatch_steps   5120
  s.height        2.0
  s.weight        100.0
  s.color         :Green
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Seed"
  s.pokedex_entry "Venusaur's flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower's aroma soothes the emotions of people."
  s.generation    1
  s.flags         :HasGenderedSprites
end

GameData::Species.define :ODDISH do |s|
  s.name          "Oddish"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 45, attack: 50, defense: 55, speed: 30, sp_atk: 75, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      64
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :CHLOROPHYLL
  s.hidden_abilities :RUNAWAY
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :GROWTH
    m.at 4, :ACID
    m.at 8, :SWEETSCENT
    m.at 12, :MEGADRAIN
    m.at 14, :POISONPOWDER
    m.at 16, :STUNSPORE
    m.at 18, :SLEEPPOWDER
    m.at 20, :GIGADRAIN
    m.at 24, :TOXIC
    m.at 28, :MOONBLAST
    m.at 32, :GRASSYTERRAIN
    m.at 36, :MOONLIGHT
    m.at 40, :PETALDANCE
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BULLETSEED, :CAPTIVATE, :CHARM, :CONFIDE, :CUT, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HIDDENPOWER, :INFESTATION, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_moves     :AFTERYOU, :CHARM, :FLAIL, :INGRAIN, :LEECHSEED, :NATUREPOWER, :RAZORLEAF, :STRENGTHSAP, :SYNTHESIS, :TEETERDANCE, :TICKLE
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.5
  s.weight        5.4
  s.color         :Blue
  s.shape         :HeadLegs
  s.habitat       :Grassland
  s.category      "Weed"
  s.pokedex_entry "It grows by absorbing moonlight. During the daytime, it buries itself in the ground, leaving only its leaves exposed to avoid detection by its enemies."
  s.generation    1
  s.evolves_into  :GLOOM, :Level, 21
  s.wild_item_uncommon :ABSORBBULB
end

GameData::Species.define :GLOOM do |s|
  s.name          "Gloom"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 60, attack: 65, defense: 70, speed: 40, sp_atk: 85, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      138
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :CHLOROPHYLL
  s.hidden_abilities :STENCH
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :GROWTH
    m.at 1, :ACID
    m.at 1, :SWEETSCENT
    m.at 12, :MEGADRAIN
    m.at 14, :POISONPOWDER
    m.at 16, :STUNSPORE
    m.at 18, :SLEEPPOWDER
    m.at 20, :GIGADRAIN
    m.at 26, :TOXIC
    m.at 32, :MOONBLAST
    m.at 38, :GRASSYTERRAIN
    m.at 44, :MOONLIGHT
    m.at 50, :PETALDANCE
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BULLETSEED, :CAPTIVATE, :CHARM, :CONFIDE, :CUT, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HIDDENPOWER, :INFESTATION, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.8
  s.weight        8.6
  s.color         :Blue
  s.shape         :Bipedal
  s.habitat       :Grassland
  s.category      "Weed"
  s.pokedex_entry "A horribly noxious honey drools from its mouth. One whiff of the honey can result in memory loss. Some fans are said to enjoy this overwhelming stink, however."
  s.generation    1
  s.evolves_into  :VILEPLUME, :Item, LEAFSTONE
  s.evolves_into  :BELLOSSOM, :Item, SUNSTONE
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :ABSORBBULB
end

GameData::Species.define :VILEPLUME do |s|
  s.name          "Vileplume"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 75, attack: 80, defense: 85, speed: 50, sp_atk: 110, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      245
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :CHLOROPHYLL
  s.hidden_abilities :EFFECTSPORE
  s.moves do |m|
    m.at 0, :PETALBLIZZARD
    m.at 1, :AROMATHERAPY
    m.at 1, :MEGADRAIN
    m.at 1, :POISONPOWDER
    m.at 1, :STUNSPORE
    m.at 1, :SLEEPPOWDER
    m.at 1, :GIGADRAIN
    m.at 1, :TOXIC
    m.at 1, :MOONBLAST
    m.at 1, :GRASSYTERRAIN
    m.at 1, :MOONLIGHT
    m.at 1, :PETALDANCE
    m.at 1, :ABSORB
    m.at 1, :GROWTH
    m.at 1, :ACID
    m.at 1, :SWEETSCENT
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CHARM, :CONFIDE, :CORROSIVEGAS, :CUT, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POLLENPUFF, :PROTECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        1.2
  s.weight        18.6
  s.color         :Red
  s.shape         :Bipedal
  s.habitat       :Grassland
  s.category      "Flower"
  s.pokedex_entry "In seasons when it produces more pollen, the air around a Vileplume turns yellow with the powder as it walks. The pollen is highly toxic and causes paralysis."
  s.generation    1
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :ABSORBBULB
end

GameData::Species.define :BELLSPROUT do |s|
  s.name          "Bellsprout"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 50, attack: 75, defense: 35, speed: 40, sp_atk: 70, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      60
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :CHLOROPHYLL
  s.hidden_abilities :GLUTTONY
  s.moves do |m|
    m.at 1, :VINEWHIP
    m.at 7, :GROWTH
    m.at 11, :WRAP
    m.at 13, :SLEEPPOWDER
    m.at 15, :POISONPOWDER
    m.at 17, :STUNSPORE
    m.at 23, :ACID
    m.at 27, :KNOCKOFF
    m.at 29, :SWEETSCENT
    m.at 35, :GASTROACID
    m.at 39, :RAZORLEAF
    m.at 41, :POISONJAB
    m.at 47, :SLAM
  end
  s.tutor_moves   :ATTRACT, :BIND, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GRASSKNOT, :HIDDENPOWER, :INFESTATION, :KNOCKOFF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POISONJAB, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THIEF, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_moves     :ACIDSPRAY, :BELCH, :CLEARSMOG, :ENCORE, :INGRAIN, :LEECHLIFE, :MAGICALLEAF, :POWERWHIP, :STRENGTHSAP, :SYNTHESIS, :TICKLE, :WEATHERBALL, :WORRYSEED
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.7
  s.weight        4.0
  s.color         :Green
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Flower"
  s.pokedex_entry "A Bellsprout's thin and flexible body lets it bend and sway to avoid any attack, however strong it may be. From its mouth, it leaks a fluid that melts even iron."
  s.generation    1
  s.evolves_into  :WEEPINBELL, :Level, 21
end

GameData::Species.define :WEEPINBELL do |s|
  s.name          "Weepinbell"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 65, attack: 90, defense: 50, speed: 55, sp_atk: 85, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      137
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :CHLOROPHYLL
  s.hidden_abilities :GLUTTONY
  s.moves do |m|
    m.at 1, :VINEWHIP
    m.at 1, :GROWTH
    m.at 1, :WRAP
    m.at 7, :GROWTH
    m.at 11, :WRAP
    m.at 13, :SLEEPPOWDER
    m.at 15, :POISONPOWDER
    m.at 17, :STUNSPORE
    m.at 24, :ACID
    m.at 29, :KNOCKOFF
    m.at 32, :SWEETSCENT
    m.at 39, :GASTROACID
    m.at 44, :RAZORLEAF
    m.at 47, :POISONJAB
    m.at 54, :SLAM
  end
  s.tutor_moves   :ATTRACT, :BIND, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GRASSKNOT, :HIDDENPOWER, :INFESTATION, :KNOCKOFF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POISONJAB, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THIEF, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        1.0
  s.weight        6.4
  s.color         :Green
  s.shape         :HeadBase
  s.habitat       :Forest
  s.category      "Flycatcher"
  s.pokedex_entry "At night, a Weepinbell hangs on to a tree branch with its hooked rear and sleeps. If it moves around in its sleep, it may wake up to find itself on the ground."
  s.generation    1
  s.evolves_into  :VICTREEBEL, :Item, LEAFSTONE
end

GameData::Species.define :VICTREEBEL do |s|
  s.name          "Victreebel"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 80, attack: 105, defense: 65, speed: 70, sp_atk: 100, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      245
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :CHLOROPHYLL
  s.hidden_abilities :GLUTTONY
  s.moves do |m|
    m.at 0, :LEAFTORNADO
    m.at 1, :STOCKPILE
    m.at 1, :SWALLOW
    m.at 1, :SPITUP
    m.at 1, :GROWTH
    m.at 1, :WRAP
    m.at 1, :POISONPOWDER
    m.at 1, :STUNSPORE
    m.at 1, :ACID
    m.at 1, :KNOCKOFF
    m.at 1, :GASTROACID
    m.at 1, :POISONJAB
    m.at 1, :SLAM
    m.at 1, :VINEWHIP
    m.at 1, :SLEEPPOWDER
    m.at 1, :SWEETSCENT
    m.at 1, :RAZORLEAF
    m.at 32, :LEAFSTORM
    m.at 44, :LEAFBLADE
  end
  s.tutor_moves   :ATTRACT, :BIND, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :KNOCKOFF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POISONJAB, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THIEF, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        1.7
  s.weight        15.5
  s.color         :Green
  s.shape         :HeadBase
  s.habitat       :Forest
  s.category      "Flycatcher"
  s.pokedex_entry "The long vine extending from its head is waved about as if it were a living thing to attract prey. When an unsuspecting victim approaches, it is swallowed whole."
  s.generation    1
end

GameData::Species.define :EXEGGCUTE do |s|
  s.name          "Exeggcute"
  s.types         :GRASS, :PSYCHIC
  s.base_stats    hp: 60, attack: 40, defense: 80, speed: 40, sp_atk: 60, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      65
  s.catch_rate    90
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :CHLOROPHYLL
  s.hidden_abilities :HARVEST
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :HYPNOSIS
    m.at 5, :REFLECT
    m.at 10, :LEECHSEED
    m.at 15, :MEGADRAIN
    m.at 20, :CONFUSION
    m.at 25, :SYNTHESIS
    m.at 30, :BULLETSEED
    m.at 35, :GIGADRAIN
    m.at 40, :EXTRASENSORY
    m.at 45, :UPROAR
    m.at 50, :WORRYSEED
    m.at 55, :SOLARBEAM
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BLOCK, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :GRAVITY, :HIDDENPOWER, :INFESTATION, :LEAFSTORM, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHUP, :REFLECT, :REST, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SELFDESTRUCT, :SKILLSWAP, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TELEKINESIS, :THIEF, :TRICKROOM, :UPROAR, :WORRYSEED, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :BLOCK, :CURSE, :GRASSYTERRAIN, :INGRAIN, :LEAFSTORM, :MOONLIGHT, :NATUREPOWER, :POISONPOWDER, :POWERSWAP, :SLEEPPOWDER, :STUNSPORE, :SYNTHESIS
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.4
  s.weight        2.5
  s.color         :Pink
  s.shape         :MultiBody
  s.habitat       :Forest
  s.category      "Egg"
  s.pokedex_entry "It consists of six eggs that care for each other. The eggs attract each other and spin around. When cracks increasingly appear, it is close to evolution."
  s.generation    1
  s.evolves_into  :EXEGGUTOR, :Item, LEAFSTONE
  s.wild_item_uncommon :PSYCHICSEED
end

GameData::Species.define :EXEGGUTOR do |s|
  s.name          "Exeggutor"
  s.types         :GRASS, :PSYCHIC
  s.base_stats    hp: 95, attack: 95, defense: 85, speed: 55, sp_atk: 125, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      186
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :CHLOROPHYLL
  s.hidden_abilities :HARVEST
  s.moves do |m|
    m.at 0, :STOMP
    m.at 1, :SEEDBOMB
    m.at 1, :PSYSHOCK
    m.at 1, :WOODHAMMER
    m.at 1, :LEAFSTORM
    m.at 1, :MEGADRAIN
    m.at 1, :CONFUSION
    m.at 1, :SYNTHESIS
    m.at 1, :BULLETSEED
    m.at 1, :GIGADRAIN
    m.at 1, :EXTRASENSORY
    m.at 1, :UPROAR
    m.at 1, :WORRYSEED
    m.at 1, :SOLARBEAM
    m.at 1, :ABSORB
    m.at 1, :HYPNOSIS
    m.at 1, :REFLECT
    m.at 1, :LEECHSEED
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BLOCK, :BULLDOZE, :BULLETSEED, :CALMMIND, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :EXPLOSION, :FACADE, :FLASH, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :GRAVITY, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :LEAFSTORM, :LIGHTSCREEN, :LOWKICK, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SELFDESTRUCT, :SKILLSWAP, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TELEKINESIS, :TERRAINPULSE, :THIEF, :TRICKROOM, :UPROAR, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        2.0
  s.weight        120.0
  s.color         :Yellow
  s.shape         :HeadLegs
  s.habitat       :Forest
  s.category      "Coconut"
  s.pokedex_entry "Originally from the tropics, Exeggutor's heads grow larger with exposure to bright sunlight. It is said that when the heads fall, they group to form an Exeggcute."
  s.generation    1
end

GameData::Species.define :TANGELA do |s|
  s.name          "Tangela"
  s.types         :GRASS
  s.base_stats    hp: 65, attack: 55, defense: 115, speed: 60, sp_atk: 100, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      87
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :CHLOROPHYLL, :LEAFGUARD
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :BIND
    m.at 4, :STUNSPORE
    m.at 8, :GROWTH
    m.at 12, :MEGADRAIN
    m.at 16, :VINEWHIP
    m.at 20, :POISONPOWDER
    m.at 24, :ANCIENTPOWER
    m.at 28, :KNOCKOFF
    m.at 32, :GIGADRAIN
    m.at 36, :SLEEPPOWDER
    m.at 40, :SLAM
    m.at 44, :TICKLE
    m.at 48, :POWERWHIP
    m.at 52, :INGRAIN
    m.at 56, :GRASSYTERRAIN
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :ATTRACT, :BIND, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :KNOCKOFF, :LEAFSTORM, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAINSPLIT, :POWERSWAP, :POWERWHIP, :PROTECT, :PSYCHUP, :REFLECT, :REST, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THIEF, :WORRYSEED, :TERABLAST
  s.egg_moves     :AMNESIA, :CONFUSION, :ENDEAVOR, :FLAIL, :LEAFSTORM, :LEECHSEED, :MEGADRAIN, :NATUREPOWER, :POWERSWAP, :RAGEPOWDER
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        1.0
  s.weight        35.0
  s.color         :Blue
  s.shape         :HeadLegs
  s.habitat       :Grassland
  s.category      "Vine"
  s.pokedex_entry "Its vines snap off easily and painlessly if they are grabbed, allowing it to make a quick getaway. The lost vines are replaced by new growth the very next day."
  s.generation    1
  s.evolves_into  :TANGROWTH, :HasMove, ANCIENTPOWER
end

GameData::Species.define :CHIKORITA do |s|
  s.name          "Chikorita"
  s.types         :GRASS
  s.base_stats    hp: 45, attack: 49, defense: 65, speed: 45, sp_atk: 49, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      64
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :LEAFGUARD
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 6, :RAZORLEAF
    m.at 9, :POISONPOWDER
    m.at 12, :SYNTHESIS
    m.at 17, :REFLECT
    m.at 20, :MAGICALLEAF
    m.at 23, :NATUREPOWER
    m.at 28, :SWEETSCENT
    m.at 31, :LIGHTSCREEN
    m.at 34, :BODYSLAM
    m.at 39, :SAFEGUARD
    m.at 42, :AROMATHERAPY
    m.at 45, :SOLARBEAM
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :HEADBUTT, :HIDDENPOWER, :IRONTAIL, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :AROMATHERAPY, :BODYSLAM, :COUNTER, :FLAIL, :GRASSYTERRAIN, :HEALPULSE, :INGRAIN, :LEAFSTORM, :LEECHSEED, :NATUREPOWER, :VINEWHIP
  s.egg_groups    :Monster, :Grass
  s.hatch_steps   5120
  s.height        0.9
  s.weight        6.4
  s.color         :Green
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Leaf"
  s.pokedex_entry "It waves its leaf around to keep foes at bay. However, a sweet fragrance also wafts from the leaf, creating a friendly atmosphere that becalms the battlers."
  s.generation    2
  s.evolves_into  :BAYLEEF, :Level, 16
end

GameData::Species.define :BAYLEEF do |s|
  s.name          "Bayleef"
  s.types         :GRASS
  s.base_stats    hp: 60, attack: 62, defense: 80, speed: 60, sp_atk: 63, sp_def: 80
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1, sp_defense: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :LEAFGUARD
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :RAZORLEAF
    m.at 1, :POISONPOWDER
    m.at 6, :RAZORLEAF
    m.at 9, :POISONPOWDER
    m.at 12, :SYNTHESIS
    m.at 18, :REFLECT
    m.at 22, :MAGICALLEAF
    m.at 26, :NATUREPOWER
    m.at 32, :SWEETSCENT
    m.at 36, :LIGHTSCREEN
    m.at 40, :BODYSLAM
    m.at 46, :SAFEGUARD
    m.at 50, :AROMATHERAPY
    m.at 54, :SOLARBEAM
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :HEADBUTT, :HIDDENPOWER, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Monster, :Grass
  s.hatch_steps   5120
  s.height        1.2
  s.weight        15.8
  s.color         :Green
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Leaf"
  s.pokedex_entry "A Bayleef's neck is ringed by curled-up leaves. Inside each leaf is a small tree shoot. The fragrance of this shoot makes people peppy."
  s.generation    2
  s.evolves_into  :MEGANIUM, :Level, 32
end

GameData::Species.define :MEGANIUM do |s|
  s.name          "Meganium"
  s.types         :GRASS
  s.base_stats    hp: 80, attack: 82, defense: 100, speed: 80, sp_atk: 83, sp_def: 100
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      263
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1, sp_defense: 2
  s.abilities     :OVERGROW
  s.hidden_abilities :LEAFGUARD
  s.moves do |m|
    m.at 0, :PETALDANCE
    m.at 1, :PETALBLIZZARD
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :RAZORLEAF
    m.at 1, :POISONPOWDER
    m.at 6, :RAZORLEAF
    m.at 9, :POISONPOWDER
    m.at 12, :SYNTHESIS
    m.at 18, :REFLECT
    m.at 22, :MAGICALLEAF
    m.at 26, :NATUREPOWER
    m.at 34, :SWEETSCENT
    m.at 40, :LIGHTSCREEN
    m.at 46, :BODYSLAM
    m.at 54, :SAFEGUARD
    m.at 60, :AROMATHERAPY
    m.at 66, :SOLARBEAM
    m.at 70, :PETALBLIZZARD
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BODYSLAM, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONTAIL, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRENZYPLANT, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSPLEDGE, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OUTRAGE, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Monster, :Grass
  s.hatch_steps   5120
  s.height        1.8
  s.weight        100.5
  s.color         :Green
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Herb"
  s.pokedex_entry "The fragrance of a Meganium's flower soothes and calms emotions. In battle, it gives off more of its becalming scent to blunt the foe's fighting spirit."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :BELLOSSOM do |s|
  s.name          "Bellossom"
  s.types         :GRASS
  s.base_stats    hp: 75, attack: 80, defense: 95, speed: 50, sp_atk: 90, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      245
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 3
  s.abilities     :CHLOROPHYLL
  s.hidden_abilities :HEALER
  s.moves do |m|
    m.at 0, :PETALBLIZZARD
    m.at 1, :QUIVERDANCE
    m.at 1, :MEGADRAIN
    m.at 1, :POISONPOWDER
    m.at 1, :STUNSPORE
    m.at 1, :SLEEPPOWDER
    m.at 1, :GIGADRAIN
    m.at 1, :TOXIC
    m.at 1, :MOONBLAST
    m.at 1, :GRASSYTERRAIN
    m.at 1, :MOONLIGHT
    m.at 1, :PETALDANCE
    m.at 1, :ABSORB
    m.at 1, :GROWTH
    m.at 1, :ACID
    m.at 1, :SWEETSCENT
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BATONPASS, :BULLETSEED, :CAPTIVATE, :CHARM, :CONFIDE, :CUT, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :LASERFOCUS, :LEAFBLADE, :LEAFSTORM, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PLAYROUGH, :PROTECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :UPROAR, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.4
  s.weight        5.8
  s.color         :Green
  s.shape         :Bipedal
  s.habitat       :Grassland
  s.category      "Flower"
  s.pokedex_entry "Its flower petals deepen in color through exposure to sunlight. When cloudy weather persists, it does a dance that is thought to be a sun-summoning ritual."
  s.generation    2
  s.wild_item_uncommon :ABSORBBULB
end

GameData::Species.define :HOPPIP do |s|
  s.name          "Hoppip"
  s.types         :GRASS, :FLYING
  s.base_stats    hp: 35, attack: 35, defense: 40, speed: 50, sp_atk: 35, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      50
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :CHLOROPHYLL, :LEAFGUARD
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 1, :ABSORB
    m.at 4, :SYNTHESIS
    m.at 6, :TAILWHIP
    m.at 8, :TACKLE
    m.at 10, :FAIRYWIND
    m.at 12, :POISONPOWDER
    m.at 14, :STUNSPORE
    m.at 16, :SLEEPPOWDER
    m.at 19, :BULLETSEED
    m.at 22, :LEECHSEED
    m.at 25, :MEGADRAIN
    m.at 28, :ACROBATICS
    m.at 31, :RAGEPOWDER
    m.at 34, :COTTONSPORE
    m.at 37, :UTURN
    m.at 40, :WORRYSEED
    m.at 43, :GIGADRAIN
    m.at 46, :BOUNCE
    m.at 49, :MEMENTO
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BOUNCE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :INFESTATION, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHUP, :REFLECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :UTURN, :WORRYSEED, :TERABLAST
  s.egg_moves     :AMNESIA, :AROMATHERAPY, :CONFUSION, :COTTONGUARD, :DOUBLEEDGE, :ENCORE, :GRASSYTERRAIN, :HELPINGHAND, :SEEDBOMB, :STRENGTHSAP, :WORRYSEED
  s.egg_groups    :Fairy, :Grass
  s.hatch_steps   5120
  s.height        0.4
  s.weight        0.5
  s.color         :Pink
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Cottonweed"
  s.pokedex_entry "This Pokémon drifts and floats with the wind. If it senses the approach of strong winds, a Hoppip links leaves with others to prepare against being blown away."
  s.generation    2
  s.evolves_into  :SKIPLOOM, :Level, 18
end

GameData::Species.define :SKIPLOOM do |s|
  s.name          "Skiploom"
  s.types         :GRASS, :FLYING
  s.base_stats    hp: 55, attack: 45, defense: 50, speed: 80, sp_atk: 45, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      119
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :CHLOROPHYLL, :LEAFGUARD
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 1, :ABSORB
    m.at 1, :SYNTHESIS
    m.at 1, :TAILWHIP
    m.at 4, :SYNTHESIS
    m.at 6, :TAILWHIP
    m.at 8, :TACKLE
    m.at 10, :FAIRYWIND
    m.at 12, :POISONPOWDER
    m.at 14, :STUNSPORE
    m.at 16, :SLEEPPOWDER
    m.at 20, :BULLETSEED
    m.at 24, :LEECHSEED
    m.at 28, :MEGADRAIN
    m.at 32, :ACROBATICS
    m.at 36, :RAGEPOWDER
    m.at 40, :COTTONSPORE
    m.at 44, :UTURN
    m.at 48, :WORRYSEED
    m.at 52, :GIGADRAIN
    m.at 56, :BOUNCE
    m.at 60, :MEMENTO
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BOUNCE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :INFESTATION, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHUP, :REFLECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :UTURN, :WORRYSEED, :TERABLAST
  s.egg_groups    :Fairy, :Grass
  s.hatch_steps   5120
  s.height        0.6
  s.weight        1.0
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Cottonweed"
  s.pokedex_entry "It blossoms when the temperature rises above 64 degrees F. Because its flower's blooming changes with the temperature, it is sometimes used as a thermometer."
  s.generation    2
  s.evolves_into  :JUMPLUFF, :Level, 27
end

GameData::Species.define :JUMPLUFF do |s|
  s.name          "Jumpluff"
  s.types         :GRASS, :FLYING
  s.base_stats    hp: 75, attack: 55, defense: 70, speed: 110, sp_atk: 55, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      230
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :CHLOROPHYLL, :LEAFGUARD
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 1, :ABSORB
    m.at 1, :SYNTHESIS
    m.at 1, :TAILWHIP
    m.at 4, :SYNTHESIS
    m.at 6, :TAILWHIP
    m.at 8, :TACKLE
    m.at 10, :FAIRYWIND
    m.at 12, :POISONPOWDER
    m.at 14, :STUNSPORE
    m.at 16, :SLEEPPOWDER
    m.at 20, :BULLETSEED
    m.at 24, :LEECHSEED
    m.at 29, :MEGADRAIN
    m.at 34, :ACROBATICS
    m.at 39, :RAGEPOWDER
    m.at 44, :COTTONSPORE
    m.at 49, :UTURN
    m.at 54, :WORRYSEED
    m.at 59, :GIGADRAIN
    m.at 64, :BOUNCE
    m.at 69, :MEMENTO
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BOUNCE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHUP, :REFLECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :UTURN, :WORRYSEED, :TERABLAST
  s.egg_groups    :Fairy, :Grass
  s.hatch_steps   5120
  s.height        0.8
  s.weight        3.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Cottonweed"
  s.pokedex_entry "Jumpluff ride warm southern winds to cross the sea and fly to foreign lands. This Pokémon lands when it encounters cold air while it is floating."
  s.generation    2
end

GameData::Species.define :SUNKERN do |s|
  s.name          "Sunkern"
  s.types         :GRASS
  s.base_stats    hp: 30, attack: 30, defense: 30, speed: 30, sp_atk: 30, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      36
  s.catch_rate    235
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :CHLOROPHYLL, :SOLARPOWER
  s.hidden_abilities :EARLYBIRD
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWTH
    m.at 4, :INGRAIN
    m.at 7, :ABSORB
    m.at 10, :MEGADRAIN
    m.at 13, :LEECHSEED
    m.at 16, :RAZORLEAF
    m.at 19, :WORRYSEED
    m.at 22, :GIGADRAIN
    m.at 25, :ENDEAVOR
    m.at 28, :SYNTHESIS
    m.at 34, :SOLARBEAM
    m.at 37, :DOUBLEEDGE
    m.at 40, :SUNNYDAY
    m.at 43, :SEEDBOMB
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :UPROAR, :WORRYSEED, :TERABLAST
  s.egg_moves     :CURSE, :ENCORE, :GRASSYTERRAIN, :HELPINGHAND, :INGRAIN, :LEECHSEED, :MORNINGSUN, :NATUREPOWER, :SWEETSCENT
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.3
  s.weight        1.8
  s.color         :Yellow
  s.shape         :Head
  s.habitat       :Grassland
  s.category      "Seed"
  s.pokedex_entry "Sunkern try to minimize movement to conserve the nutrients they have stored in their bodies for evolution. They will not eat, subsisting only on morning dew."
  s.generation    2
  s.evolves_into  :SUNFLORA, :Item, SUNSTONE
end

GameData::Species.define :SUNFLORA do |s|
  s.name          "Sunflora"
  s.types         :GRASS
  s.base_stats    hp: 75, attack: 75, defense: 55, speed: 30, sp_atk: 105, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      149
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :CHLOROPHYLL, :SOLARPOWER
  s.hidden_abilities :EARLYBIRD
  s.moves do |m|
    m.at 1, :FLOWERSHIELD
    m.at 1, :ENDEAVOR
    m.at 1, :SYNTHESIS
    m.at 1, :SEEDBOMB
    m.at 1, :POUND
    m.at 1, :TACKLE
    m.at 1, :GROWTH
    m.at 4, :INGRAIN
    m.at 7, :ABSORB
    m.at 10, :MEGADRAIN
    m.at 13, :LEECHSEED
    m.at 16, :RAZORLEAF
    m.at 19, :WORRYSEED
    m.at 22, :GIGADRAIN
    m.at 25, :BULLETSEED
    m.at 28, :PETALDANCE
    m.at 34, :SOLARBEAM
    m.at 37, :DOUBLEEDGE
    m.at 40, :SUNNYDAY
    m.at 43, :LEAFSTORM
    m.at 50, :PETALBLIZZARD
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :UPROAR, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.8
  s.weight        8.5
  s.color         :Yellow
  s.shape         :Bipedal
  s.habitat       :Grassland
  s.category      "Sun"
  s.pokedex_entry "Sunflora convert solar energy into nutrition. They are highly active in the warm daytime but suddenly stop moving as soon as the sun sets."
  s.generation    2
end

GameData::Species.define :TREECKO do |s|
  s.name          "Treecko"
  s.types         :GRASS
  s.base_stats    hp: 40, attack: 45, defense: 35, speed: 70, sp_atk: 65, sp_def: 55
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :UNBURDEN
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :LEER
    m.at 3, :LEAFAGE
    m.at 6, :QUICKATTACK
    m.at 9, :MEGADRAIN
    m.at 12, :DETECT
    m.at 15, :QUICKGUARD
    m.at 18, :ASSURANCE
    m.at 21, :GIGADRAIN
    m.at 24, :SLAM
    m.at 27, :DOUBLETEAM
    m.at 30, :ENERGYBALL
    m.at 33, :SCREECH
    m.at 36, :ENDEAVOR
    m.at 39, :LEAFSTORM
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ASSURANCE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :GRASSYTERRAIN, :HEADBUTT, :HIDDENPOWER, :IRONTAIL, :LEAFSTORM, :LOWKICK, :MAGICALLEAF, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :THUNDERPUNCH, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_moves     :ABSORB, :CRUNCH, :CRUSHCLAW, :DOUBLEKICK, :DRAGONBREATH, :ENDEAVOR, :GRASSYTERRAIN, :LEAFSTORM, :LEECHSEED, :MAGICALLEAF, :NIGHTSLASH, :SLASH, :SYNTHESIS, :WORRYSEED
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   5120
  s.height        0.5
  s.weight        5.0
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Forest
  s.category      "Wood Gecko"
  s.pokedex_entry "It makes its nest in a giant tree in the forest. It ferociously guards against anything nearing its territory. It is said to be the protector of the trees."
  s.generation    3
  s.evolves_into  :GROVYLE, :Level, 16
end

GameData::Species.define :GROVYLE do |s|
  s.name          "Grovyle"
  s.types         :GRASS
  s.base_stats    hp: 50, attack: 65, defense: 45, speed: 95, sp_atk: 85, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :OVERGROW
  s.hidden_abilities :UNBURDEN
  s.moves do |m|
    m.at 1, :FURYCUTTER
    m.at 1, :FALSESWIPE
    m.at 1, :XSCISSOR
    m.at 1, :ENERGYBALL
    m.at 1, :POUND
    m.at 1, :LEER
    m.at 1, :LEAFAGE
    m.at 1, :QUICKATTACK
    m.at 9, :MEGADRAIN
    m.at 12, :DETECT
    m.at 15, :QUICKGUARD
    m.at 20, :ASSURANCE
    m.at 25, :GIGADRAIN
    m.at 30, :SLAM
    m.at 35, :DOUBLETEAM
    m.at 40, :LEAFBLADE
    m.at 45, :SCREECH
    m.at 50, :ENDEAVOR
    m.at 55, :LEAFSTORM
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ASSURANCE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :GRASSYTERRAIN, :HEADBUTT, :HIDDENPOWER, :IRONTAIL, :LEAFBLADE, :LEAFSTORM, :LOWKICK, :LOWSWEEP, :MAGICALLEAF, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SLEEPTALK, :SNORE, :SOLARBEAM, :SOLARBLADE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :THUNDERPUNCH, :WORKUP, :WORRYSEED, :XSCISSOR, :TERABLAST
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   5120
  s.height        0.9
  s.weight        21.6
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Forest
  s.category      "Wood Gecko"
  s.pokedex_entry "Leaves grow out of this Pokémon's body. They help obscure a Grovyle from the eyes of its enemies while it is in a thickly overgrown forest."
  s.generation    3
  s.evolves_into  :SCEPTILE, :Level, 36
end

GameData::Species.define :SCEPTILE do |s|
  s.name          "Sceptile"
  s.types         :GRASS
  s.base_stats    hp: 70, attack: 85, defense: 65, speed: 120, sp_atk: 105, sp_def: 85
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :OVERGROW
  s.hidden_abilities :UNBURDEN
  s.moves do |m|
    m.at 0, :DUALCHOP
    m.at 1, :FURYCUTTER
    m.at 1, :FALSESWIPE
    m.at 1, :XSCISSOR
    m.at 1, :ENERGYBALL
    m.at 1, :POUND
    m.at 1, :LEER
    m.at 1, :LEAFAGE
    m.at 1, :QUICKATTACK
    m.at 5, :MEGADRAIN
    m.at 12, :DETECT
    m.at 15, :QUICKGUARD
    m.at 20, :ASSURANCE
    m.at 25, :GIGADRAIN
    m.at 30, :SLAM
    m.at 35, :DOUBLETEAM
    m.at 42, :LEAFBLADE
    m.at 49, :SCREECH
    m.at 56, :ENDEAVOR
    m.at 63, :LEAFSTORM
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ASSURANCE, :ATTRACT, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :CROSSPOISON, :CRUNCH, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAINPUNCH, :DUALCHOP, :DYNAMICPUNCH, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRENZYPLANT, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :GRASSYTERRAIN, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONTAIL, :LASERFOCUS, :LEAFBLADE, :LEAFSTORM, :LOWKICK, :LOWSWEEP, :MAGICALLEAF, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OUTRAGE, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SCALESHOT, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SLEEPTALK, :SNORE, :SOLARBEAM, :SOLARBLADE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :THROATCHOP, :THUNDERPUNCH, :WORKUP, :WORRYSEED, :XSCISSOR, :TERABLAST
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   5120
  s.height        1.7
  s.weight        52.2
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Forest
  s.category      "Forest"
  s.pokedex_entry "In the jungle, its power is without equal. This Pokémon carefully grows trees and plants. It regulates its body temperature by basking in sunlight."
  s.generation    3
end

GameData::Species.define :SEEDOT do |s|
  s.name          "Seedot"
  s.types         :GRASS
  s.base_stats    hp: 40, attack: 40, defense: 50, speed: 30, sp_atk: 30, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      44
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :CHLOROPHYLL, :EARLYBIRD
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 3, :ABSORB
    m.at 6, :ASTONISH
    m.at 9, :GROWTH
    m.at 12, :ROLLOUT
    m.at 15, :MEGADRAIN
    m.at 18, :PAYBACK
    m.at 21, :NATUREPOWER
    m.at 24, :SUNNYDAY
    m.at 27, :SYNTHESIS
    m.at 30, :SUCKERPUNCH
    m.at 33, :EXPLOSION
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BEATUP, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FALSESWIPE, :FLASH, :FOULPLAY, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HEADBUTT, :HIDDENPOWER, :MIMIC, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POWERSWAP, :PROTECT, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SELFDESTRUCT, :SHADOWBALL, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WORRYSEED, :TERABLAST
  s.egg_moves     :AMNESIA, :BEATUP, :DEFOG, :FOULPLAY, :GRASSYTERRAIN, :LEECHSEED, :NIGHTSLASH, :POWERSWAP, :QUICKATTACK, :TAKEDOWN, :WORRYSEED
  s.egg_groups    :Field, :Grass
  s.hatch_steps   3840
  s.height        0.5
  s.weight        4.0
  s.color         :Brown
  s.shape         :HeadLegs
  s.habitat       :Forest
  s.category      "Acorn"
  s.pokedex_entry "It hangs off branches and absorbs nutrients. When it finishes eating, its body becomes so heavy that it drops to the ground with a thump."
  s.generation    3
  s.evolves_into  :NUZLEAF, :Level, 14
  s.wild_item_uncommon :POWERHERB
end

GameData::Species.define :NUZLEAF do |s|
  s.name          "Nuzleaf"
  s.types         :GRASS, :DARK
  s.base_stats    hp: 70, attack: 70, defense: 40, speed: 60, sp_atk: 60, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      119
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :CHLOROPHYLL, :EARLYBIRD
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 0, :RAZORLEAF
    m.at 1, :AIRCUTTER
    m.at 1, :TORMENT
    m.at 1, :FAKEOUT
    m.at 1, :SWAGGER
    m.at 1, :SYNTHESIS
    m.at 1, :EXPLOSION
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :ABSORB
    m.at 1, :ASTONISH
    m.at 9, :GROWTH
    m.at 12, :ROLLOUT
    m.at 18, :MEGADRAIN
    m.at 24, :PAYBACK
    m.at 30, :NATUREPOWER
    m.at 36, :SUNNYDAY
    m.at 43, :EXTRASENSORY
    m.at 50, :SUCKERPUNCH
    m.at 57, :LEAFBLADE
  end
  s.tutor_moves   :AMNESIA, :ASSURANCE, :ATTRACT, :BEATUP, :BODYSLAM, :BRICKBREAK, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EMBARGO, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FALSESWIPE, :FLASH, :FLING, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :LASHOUT, :LEAFBLADE, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POWERSWAP, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SELFDESTRUCT, :SHADOWBALL, :SLEEPTALK, :SNARL, :SNORE, :SOLARBEAM, :SOLARBLADE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :THIEF, :TORMENT, :WORRYSEED, :TERABLAST
  s.egg_groups    :Field, :Grass
  s.hatch_steps   3840
  s.height        1.0
  s.weight        28.0
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Wily"
  s.pokedex_entry "A forest-dwelling Pokémon that is skilled at climbing trees. Its long and pointed nose is its weak point. It loses power if the nose is gripped."
  s.generation    3
  s.evolves_into  :SHIFTRY, :Item, LEAFSTONE
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :POWERHERB
end

GameData::Species.define :SHIFTRY do |s|
  s.name          "Shiftry"
  s.types         :GRASS, :DARK
  s.base_stats    hp: 90, attack: 100, defense: 60, speed: 80, sp_atk: 90, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      240
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :CHLOROPHYLL, :EARLYBIRD
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 0, :LEAFTORNADO
    m.at 1, :RAZORLEAF
    m.at 1, :AIRCUTTER
    m.at 1, :TORMENT
    m.at 1, :FAKEOUT
    m.at 1, :SWAGGER
    m.at 1, :WHIRLWIND
    m.at 1, :HURRICANE
    m.at 1, :SYNTHESIS
    m.at 1, :EXPLOSION
    m.at 1, :GROWTH
    m.at 1, :ROLLOUT
    m.at 1, :MEGADRAIN
    m.at 1, :PAYBACK
    m.at 1, :NATUREPOWER
    m.at 1, :SUNNYDAY
    m.at 1, :EXTRASENSORY
    m.at 1, :SUCKERPUNCH
    m.at 1, :LEAFBLADE
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :ABSORB
    m.at 1, :ASTONISH
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :AIRSLASH, :AMNESIA, :ASSURANCE, :ATTRACT, :BEATUP, :BODYSLAM, :BOUNCE, :BRICKBREAK, :BRUTALSWING, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DEFENSECURL, :DEFOG, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EMBARGO, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FALSESWIPE, :FLASH, :FLING, :FOCUSBLAST, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :ICYWIND, :KNOCKOFF, :LASHOUT, :LEAFBLADE, :LEAFSTORM, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :OMINOUSWIND, :PAYBACK, :POWERSWAP, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :REST, :RETALIATE, :RETURN, :REVENGE, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SELFDESTRUCT, :SHADOWBALL, :SILVERWIND, :SLEEPTALK, :SNARL, :SNORE, :SOLARBEAM, :SOLARBLADE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :TAILWIND, :THIEF, :THROATCHOP, :TORMENT, :TWISTER, :WORRYSEED, :XSCISSOR, :TERABLAST
  s.egg_groups    :Field, :Grass
  s.hatch_steps   3840
  s.height        1.3
  s.weight        59.6
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Wicked"
  s.pokedex_entry "It is said to arrive on chilly, wintry winds. Feared from long ago as the guardian of forests, this Pokémon lives in a deep forest where people do not venture."
  s.generation    3
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :POWERHERB
end

GameData::Species.define :SHROOMISH do |s|
  s.name          "Shroomish"
  s.types         :GRASS
  s.base_stats    hp: 60, attack: 40, defense: 60, speed: 35, sp_atk: 40, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fluctuating
  s.base_exp      59
  s.catch_rate    255
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :EFFECTSPORE, :POISONHEAL
  s.hidden_abilities :QUICKFEET
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :TACKLE
    m.at 5, :STUNSPORE
    m.at 8, :LEECHSEED
    m.at 12, :MEGADRAIN
    m.at 15, :HEADBUTT
    m.at 19, :POISONPOWDER
    m.at 22, :WORRYSEED
    m.at 26, :GIGADRAIN
    m.at 29, :GROWTH
    m.at 33, :TOXIC
    m.at 36, :SEEDBOMB
    m.at 40, :SPORE
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNATCH, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TOXIC, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_moves     :CHARM, :FAKETEARS, :HELPINGHAND, :SEEDBOMB, :WORRYSEED
  s.egg_groups    :Fairy, :Grass
  s.hatch_steps   3840
  s.height        0.4
  s.weight        4.5
  s.color         :Brown
  s.shape         :HeadLegs
  s.habitat       :Forest
  s.category      "Mushroom"
  s.pokedex_entry "It loves to eat damp, composted soil in forests. If you enter a forest after a long rain, you can see many Shroomish feasting on composted soil."
  s.generation    3
  s.evolves_into  :BRELOOM, :Level, 23
  s.wild_item_common   :TINYMUSHROOM
  s.wild_item_uncommon :BIGMUSHROOM
end

GameData::Species.define :BRELOOM do |s|
  s.name          "Breloom"
  s.types         :GRASS, :FIGHTING
  s.base_stats    hp: 60, attack: 130, defense: 80, speed: 70, sp_atk: 60, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fluctuating
  s.base_exp      161
  s.catch_rate    90
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :EFFECTSPORE, :POISONHEAL
  s.hidden_abilities :TECHNICIAN
  s.moves do |m|
    m.at 0, :MACHPUNCH
    m.at 1, :POISONPOWDER
    m.at 1, :WORRYSEED
    m.at 1, :GIGADRAIN
    m.at 1, :GROWTH
    m.at 1, :TOXIC
    m.at 1, :SPORE
    m.at 1, :ABSORB
    m.at 1, :TACKLE
    m.at 1, :STUNSPORE
    m.at 1, :LEECHSEED
    m.at 5, :STUNSPORE
    m.at 8, :LEECHSEED
    m.at 12, :MEGADRAIN
    m.at 15, :HEADBUTT
    m.at 19, :FEINT
    m.at 22, :COUNTER
    m.at 28, :FORCEPALM
    m.at 33, :MINDREADER
    m.at 39, :DRAINPUNCH
    m.at 44, :SEEDBOMB
    m.at 50, :DYNAMICPUNCH
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IRONTAIL, :LASERFOCUS, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SLEEPTALK, :SLUDGEBOMB, :SNATCH, :SNORE, :SOLARBEAM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THUNDERPUNCH, :VACUUMWAVE, :VENOSHOCK, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Fairy, :Grass
  s.hatch_steps   3840
  s.height        1.2
  s.weight        39.2
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Forest
  s.category      "Mushroom"
  s.pokedex_entry "It scatters spores from holes in the cap on its head. It loves warm and humid climates. It feeds on trees and plants in fields and forests."
  s.generation    3
  s.wild_item_common   :TINYMUSHROOM
  s.wild_item_uncommon :BIGMUSHROOM
end

GameData::Species.define :ROSELIA do |s|
  s.name          "Roselia"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 50, attack: 60, defense: 45, speed: 65, sp_atk: 100, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      140
  s.catch_rate    150
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :NATURALCURE, :POISONPOINT
  s.hidden_abilities :LEAFGUARD
  s.moves do |m|
    m.at 0, :POISONSTING
    m.at 1, :ABSORB
    m.at 1, :GROWTH
    m.at 1, :STUNSPORE
    m.at 1, :WORRYSEED
    m.at 5, :MEGADRAIN
    m.at 10, :LEECHSEED
    m.at 15, :MAGICALLEAF
    m.at 20, :TOXICSPIKES
    m.at 25, :SWEETSCENT
    m.at 30, :GIGADRAIN
    m.at 35, :SYNTHESIS
    m.at 40, :TOXIC
    m.at 45, :PETALBLIZZARD
    m.at 50, :AROMATHERAPY
    m.at 55, :INGRAIN
    m.at 60, :PETALDANCE
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :HIDDENPOWER, :LEAFSTORM, :MAGICALLEAF, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PINMISSILE, :POISONJAB, :POWERWHIP, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SPIKES, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :TOXICSPIKES, :UPROAR, :VENOSHOCK, :WEATHERBALL, :WORRYSEED, :TERABLAST
  s.egg_moves     :COTTONSPORE, :EXTRASENSORY, :LEAFSTORM, :LIFEDEW, :MINDREADER, :PINMISSILE, :POWERWHIP, :RAZORLEAF, :SEEDBOMB, :SLEEPPOWDER, :SPIKES, :SYNTHESIS
  s.egg_groups    :Fairy, :Grass
  s.hatch_steps   5120
  s.height        0.3
  s.weight        2.0
  s.color         :Green
  s.shape         :Bipedal
  s.habitat       :Grassland
  s.category      "Thorn"
  s.pokedex_entry "A Roselia that drinks nutritionally rich springwater blooms with lovely flowers. The fragrance of its flowers has the effect of making its foes careless."
  s.generation    3
  s.evolves_into  :ROSERADE, :Item, SHINYSTONE
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :CACNEA do |s|
  s.name          "Cacnea"
  s.types         :GRASS
  s.base_stats    hp: 50, attack: 85, defense: 40, speed: 35, sp_atk: 85, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      67
  s.catch_rate    190
  s.happiness     35
  s.evs           sp_attack: 1
  s.abilities     :SANDVEIL
  s.hidden_abilities :WATERABSORB
  s.moves do |m|
    m.at 1, :POISONSTING
    m.at 1, :LEER
    m.at 4, :ABSORB
    m.at 7, :GROWTH
    m.at 10, :LEECHSEED
    m.at 13, :SANDATTACK
    m.at 16, :POISONJAB
    m.at 19, :ASSURANCE
    m.at 22, :INGRAIN
    m.at 26, :PAYBACK
    m.at 30, :SPIKES
    m.at 34, :SUCKERPUNCH
    m.at 38, :PINMISSILE
    m.at 42, :ENERGYBALL
    m.at 46, :COTTONSPORE
    m.at 50, :SANDSTORM
    m.at 54, :DESTINYBOND
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :LOWKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SANDSTORM, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THUNDERPUNCH, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_moves     :ACID, :BELCH, :BLOCK, :COUNTER, :DISABLE, :DYNAMICPUNCH, :FELLSTINGER, :LOWKICK, :MAGICALLEAF, :POWERUPPUNCH, :SEEDBOMB, :SWITCHEROO, :TEETERDANCE, :WORRYSEED
  s.egg_groups    :Grass, :Humanlike
  s.hatch_steps   5120
  s.height        0.4
  s.weight        51.3
  s.color         :Green
  s.shape         :Bipedal
  s.habitat       :RoughTerrain
  s.category      "Cactus"
  s.pokedex_entry "Cacnea live in deserts with virtually no rainfall. It battles by swinging its thick, spiked arms. Once a year, a yellow flower blooms."
  s.generation    3
  s.evolves_into  :CACTURNE, :Level, 32
  s.wild_item_uncommon :STICKYBARB
end

GameData::Species.define :CACTURNE do |s|
  s.name          "Cacturne"
  s.types         :GRASS, :DARK
  s.base_stats    hp: 70, attack: 115, defense: 60, speed: 55, sp_atk: 115, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      166
  s.catch_rate    60
  s.happiness     35
  s.evs           attack: 1, sp_attack: 1
  s.abilities     :SANDVEIL
  s.hidden_abilities :WATERABSORB
  s.moves do |m|
    m.at 0, :SPIKYSHIELD
    m.at 1, :DESTINYBOND
    m.at 1, :REVENGE
    m.at 1, :POISONSTING
    m.at 1, :LEER
    m.at 1, :ABSORB
    m.at 1, :GROWTH
    m.at 4, :ABSORB
    m.at 7, :GROWTH
    m.at 10, :LEECHSEED
    m.at 13, :SANDATTACK
    m.at 16, :POISONJAB
    m.at 19, :ASSURANCE
    m.at 22, :INGRAIN
    m.at 26, :PAYBACK
    m.at 30, :SPIKES
    m.at 35, :SUCKERPUNCH
    m.at 38, :PINMISSILE
    m.at 44, :ENERGYBALL
    m.at 49, :COTTONSPORE
    m.at 54, :SANDSTORM
    m.at 59, :DESTINYBOND
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :EMBARGO, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :REST, :RETALIATE, :RETURN, :ROLEPLAY, :ROUND, :SANDSTORM, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THUNDERPUNCH, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass, :Humanlike
  s.hatch_steps   5120
  s.height        1.3
  s.weight        77.4
  s.color         :Green
  s.shape         :Bipedal
  s.habitat       :RoughTerrain
  s.category      "Scarecrow"
  s.pokedex_entry "After spending thousands of years in harsh deserts, its blood transformed into the same substances as sand. It is nocturnal, so it hunts at night."
  s.generation    3
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :STICKYBARB
end

GameData::Species.define :TROPIUS do |s|
  s.name          "Tropius"
  s.types         :GRASS, :FLYING
  s.base_stats    hp: 99, attack: 68, defense: 83, speed: 51, sp_atk: 72, sp_def: 87
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      161
  s.catch_rate    200
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :CHLOROPHYLL, :SOLARPOWER
  s.hidden_abilities :HARVEST
  s.moves do |m|
    m.at 1, :LEAFSTORM
    m.at 1, :LEER
    m.at 1, :GUST
    m.at 1, :GROWTH
    m.at 1, :RAZORLEAF
    m.at 6, :SWEETSCENT
    m.at 10, :STOMP
    m.at 16, :MAGICALLEAF
    m.at 21, :WHIRLWIND
    m.at 26, :LEAFTORNADO
    m.at 30, :DRAGONDANCE
    m.at 36, :AIRSLASH
    m.at 41, :BODYSLAM
    m.at 46, :DRAGONHAMMER
    m.at 50, :SYNTHESIS
    m.at 56, :SOLARBEAM
    m.at 61, :LEAFSTORM
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :BODYSLAM, :BRUTALSWING, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLY, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OMINOUSWIND, :OUTRAGE, :PROTECT, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TAILWIND, :TWISTER, :WORRYSEED, :TERABLAST
  s.egg_moves     :CURSE, :DRAGONDANCE, :DRAGONHAMMER, :HEADBUTT, :LEAFBLADE, :LEAFSTORM, :LEECHSEED, :NATUREPOWER, :SLAM, :SYNTHESIS
  s.egg_groups    :Monster, :Grass
  s.hatch_steps   6400
  s.height        2.0
  s.weight        100.0
  s.color         :Green
  s.shape         :Quadruped
  s.habitat       :Forest
  s.category      "Fruit"
  s.pokedex_entry "It flies by flapping its broad leaves. The bunch of fruit that grows around its neck is deliciously sweet. In the spring, it scatters pollen from its neck."
  s.generation    3
end

GameData::Species.define :TURTWIG do |s|
  s.name          "Turtwig"
  s.types         :GRASS
  s.base_stats    hp: 55, attack: 68, defense: 64, speed: 31, sp_atk: 45, sp_def: 55
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      64
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :SHELLARMOR
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 5, :WITHDRAW
    m.at 6, :LEAFAGE
    m.at 10, :GROWTH
    m.at 13, :RAZORLEAF
    m.at 17, :CURSE
    m.at 21, :BITE
    m.at 25, :MEGADRAIN
    m.at 29, :LEECHSEED
    m.at 33, :SYNTHESIS
    m.at 37, :CRUNCH
    m.at 41, :GIGADRAIN
    m.at 45, :LEAFSTORM
  end
  s.tutor_moves   :ATTRACT, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :HEADBUTT, :HIDDENPOWER, :IRONTAIL, :LIGHTSCREEN, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEALTHROCK, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_moves     :AMNESIA, :BODYSLAM, :DOUBLEEDGE, :EARTHPOWER, :GRASSYTERRAIN, :GROWTH, :HEAVYSLAM, :SANDTOMB, :SEEDBOMB, :SPITUP, :STOCKPILE, :SUPERPOWER, :SWALLOW, :THRASH, :TICKLE, :WIDEGUARD, :WORRYSEED
  s.egg_groups    :Monster, :Grass
  s.hatch_steps   5120
  s.height        0.4
  s.weight        10.2
  s.color         :Green
  s.shape         :Quadruped
  s.category      "Tiny Leaf"
  s.pokedex_entry "Made from soil, the shell on its back hardens when it drinks water. It lives along lakes."
  s.generation    4
  s.evolves_into  :GROTLE, :Level, 18
end

GameData::Species.define :GROTLE do |s|
  s.name          "Grotle"
  s.types         :GRASS
  s.base_stats    hp: 75, attack: 89, defense: 85, speed: 36, sp_atk: 55, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1, defense: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :SHELLARMOR
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :WITHDRAW
    m.at 1, :ABSORB
    m.at 5, :WITHDRAW
    m.at 6, :LEAFAGE
    m.at 10, :GROWTH
    m.at 13, :RAZORLEAF
    m.at 17, :CURSE
    m.at 22, :BITE
    m.at 27, :MEGADRAIN
    m.at 32, :LEECHSEED
    m.at 37, :SYNTHESIS
    m.at 42, :CRUNCH
    m.at 47, :GIGADRAIN
    m.at 52, :LEAFSTORM
  end
  s.tutor_moves   :ATTRACT, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :HEADBUTT, :HIDDENPOWER, :IRONTAIL, :LIGHTSCREEN, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEALTHROCK, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Monster, :Grass
  s.hatch_steps   5120
  s.height        1.1
  s.weight        97.0
  s.color         :Green
  s.shape         :Quadruped
  s.category      "Grove"
  s.pokedex_entry "It lives along water in forests. In the daytime, it leaves the forest to sunbathe its treed shell."
  s.generation    4
  s.evolves_into  :TORTERRA, :Level, 32
end

GameData::Species.define :TORTERRA do |s|
  s.name          "Torterra"
  s.types         :GRASS, :GROUND
  s.base_stats    hp: 95, attack: 109, defense: 105, speed: 56, sp_atk: 75, sp_def: 85
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      263
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2, defense: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :SHELLARMOR
  s.moves do |m|
    m.at 0, :EARTHQUAKE
    m.at 1, :WOODHAMMER
    m.at 1, :TACKLE
    m.at 1, :WITHDRAW
    m.at 1, :ABSORB
    m.at 1, :RAZORLEAF
    m.at 5, :WITHDRAW
    m.at 6, :LEAFAGE
    m.at 10, :GROWTH
    m.at 13, :RAZORLEAF
    m.at 17, :CURSE
    m.at 22, :BITE
    m.at 27, :MEGADRAIN
    m.at 33, :LEECHSEED
    m.at 39, :SYNTHESIS
    m.at 45, :CRUNCH
    m.at 51, :GIGADRAIN
    m.at 57, :LEAFSTORM
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRENZYPLANT, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSPLEDGE, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :IRONHEAD, :IRONTAIL, :LIGHTSCREEN, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OUTRAGE, :PROTECT, :REFLECT, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Monster, :Grass
  s.hatch_steps   5120
  s.height        2.2
  s.weight        310.0
  s.color         :Green
  s.shape         :Quadruped
  s.category      "Continent"
  s.pokedex_entry "Small Pokémon occasionally gather on its unmoving back to begin building their nests."
  s.generation    4
end

GameData::Species.define :BUDEW do |s|
  s.name          "Budew"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 40, attack: 30, defense: 35, speed: 55, sp_atk: 50, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      56
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :NATURALCURE, :POISONPOINT
  s.hidden_abilities :LEAFGUARD
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :GROWTH
    m.at 1, :STUNSPORE
    m.at 1, :WORRYSEED
  end
  s.tutor_moves   :ATTRACT, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DAZZLINGGLEAM, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :HIDDENPOWER, :LEAFSTORM, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PINMISSILE, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SPIKES, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :UPROAR, :VENOSHOCK, :WEATHERBALL, :WORRYSEED, :TERABLAST
  s.egg_moves     :COTTONSPORE, :EXTRASENSORY, :LEAFSTORM, :LIFEDEW, :MINDREADER, :PINMISSILE, :POWERWHIP, :RAZORLEAF, :SEEDBOMB, :SLEEPPOWDER, :SPIKES, :SYNTHESIS
  s.egg_groups    :Undiscovered
  s.hatch_steps   5120
  s.height        0.2
  s.weight        1.2
  s.color         :Green
  s.shape         :Bipedal
  s.category      "Bud"
  s.pokedex_entry "Over the winter, it closes its bud and endures the cold. In spring, the bud opens and releases pollen."
  s.generation    4
  s.evolves_into  :ROSELIA, :HappinessDay
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :ROSERADE do |s|
  s.name          "Roserade"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 60, attack: 70, defense: 65, speed: 90, sp_atk: 125, sp_def: 105
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      258
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :NATURALCURE, :POISONPOINT
  s.hidden_abilities :TECHNICIAN
  s.moves do |m|
    m.at 1, :GRASSYTERRAIN
    m.at 1, :POISONSTING
    m.at 1, :VENOMDRENCH
    m.at 1, :MEGADRAIN
    m.at 1, :LEECHSEED
    m.at 1, :MAGICALLEAF
    m.at 1, :TOXICSPIKES
    m.at 1, :SWEETSCENT
    m.at 1, :GIGADRAIN
    m.at 1, :SYNTHESIS
    m.at 1, :TOXIC
    m.at 1, :PETALBLIZZARD
    m.at 1, :AROMATHERAPY
    m.at 1, :INGRAIN
    m.at 1, :PETALDANCE
    m.at 1, :ABSORB
    m.at 1, :GROWTH
    m.at 1, :STUNSPORE
    m.at 1, :WORRYSEED
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HIDDENPOWER, :HYPERBEAM, :LASERFOCUS, :LEAFSTORM, :MAGICALLEAF, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PINMISSILE, :POISONJAB, :POWERWHIP, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SPIKES, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :TOXICSPIKES, :UPROAR, :VENOMDRENCH, :VENOSHOCK, :WEATHERBALL, :WORRYSEED, :TERABLAST
  s.egg_groups    :Fairy, :Grass
  s.hatch_steps   5120
  s.height        0.9
  s.weight        14.5
  s.color         :Green
  s.shape         :Bipedal
  s.category      "Bouquet"
  s.pokedex_entry "It attracts prey with a sweet aroma, then downs it with thorny whips hidden in its arms."
  s.generation    4
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :CHERUBI do |s|
  s.name          "Cherubi"
  s.types         :GRASS
  s.base_stats    hp: 45, attack: 35, defense: 45, speed: 35, sp_atk: 62, sp_def: 53
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      55
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :CHLOROPHYLL
  s.moves do |m|
    m.at 1, :MORNINGSUN
    m.at 1, :TACKLE
    m.at 5, :LEAFAGE
    m.at 10, :GROWTH
    m.at 15, :HELPINGHAND
    m.at 20, :MAGICALLEAF
    m.at 26, :LEECHSEED
    m.at 30, :TAKEDOWN
    m.at 35, :PETALBLIZZARD
    m.at 40, :WORRYSEED
    m.at 45, :SOLARBEAM
  end
  s.tutor_moves   :ATTRACT, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :HIDDENPOWER, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POLLENPUFF, :PROTECT, :REST, :RETURN, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WEATHERBALL, :WORRYSEED, :TERABLAST
  s.egg_moves     :AROMATHERAPY, :DEFENSECURL, :FLOWERSHIELD, :GRASSYTERRAIN, :HEALINGWISH, :HEALPULSE, :NATUREPOWER, :RAZORLEAF, :ROLLOUT, :SEEDBOMB, :SWEETSCENT, :TICKLE, :WEATHERBALL
  s.egg_groups    :Fairy, :Grass
  s.hatch_steps   5120
  s.height        0.4
  s.weight        3.3
  s.color         :Pink
  s.shape         :MultiBody
  s.category      "Cherry"
  s.pokedex_entry "The small ball holds the nutrients needed for evolution. Apparently, it is very sweet and tasty."
  s.generation    4
  s.evolves_into  :CHERRIM, :Level, 25
  s.wild_item_uncommon :MIRACLESEED
end

GameData::Species.define :CHERRIM do |s|
  s.name          "Cherrim"
  s.types         :GRASS
  s.base_stats    hp: 70, attack: 60, defense: 70, speed: 85, sp_atk: 87, sp_def: 78
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      158
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :FLOWERGIFT
  s.moves do |m|
    m.at 0, :SUNNYDAY
    m.at 1, :FLOWERSHIELD
    m.at 1, :MORNINGSUN
    m.at 1, :TACKLE
    m.at 1, :LEAFAGE
    m.at 1, :GROWTH
    m.at 15, :HELPINGHAND
    m.at 20, :MAGICALLEAF
    m.at 28, :LEECHSEED
    m.at 34, :TAKEDOWN
    m.at 41, :PETALBLIZZARD
    m.at 48, :WORRYSEED
    m.at 55, :SOLARBEAM
    m.at 62, :PETALDANCE
  end
  s.tutor_moves   :ATTRACT, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :LASERFOCUS, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PLAYROUGH, :POLLENPUFF, :PROTECT, :REST, :RETURN, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SOLARBLADE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WEATHERBALL, :WORRYSEED, :TERABLAST
  s.egg_groups    :Fairy, :Grass
  s.hatch_steps   5120
  s.height        0.5
  s.weight        9.3
  s.color         :Purple
  s.shape         :HeadLegs
  s.category      "Blossom"
  s.pokedex_entry "Its folded petals are pretty tough. Bird Pokémon can peck at them all they want, and Cherrim won't be bothered at all."
  s.generation    4
  s.wild_item_uncommon :MIRACLESEED
end

GameData::Species.define :CARNIVINE do |s|
  s.name          "Carnivine"
  s.types         :GRASS
  s.base_stats    hp: 74, attack: 100, defense: 72, speed: 46, sp_atk: 90, sp_def: 72
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      159
  s.catch_rate    200
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :BIND
    m.at 1, :GROWTH
    m.at 7, :BITE
    m.at 11, :VINEWHIP
    m.at 17, :SWEETSCENT
    m.at 21, :INGRAIN
    m.at 27, :GRASSKNOT
    m.at 31, :LEAFTORNADO
    m.at 37, :STOCKPILE
    m.at 37, :SPITUP
    m.at 37, :SWALLOW
    m.at 41, :CRUNCH
    m.at 47, :SEEDBOMB
    m.at 50, :POWERWHIP
  end
  s.tutor_moves   :ATTRACT, :BIND, :BUGBITE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FRUSTRATION, :FURYCUTTER, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :KNOCKOFF, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THIEF, :THROATCHOP, :WORRYSEED, :TERABLAST
  s.egg_moves     :ACIDSPRAY, :LEECHSEED, :MAGICALLEAF, :RAGEPOWDER, :RAZORLEAF, :SLAM, :SLEEPPOWDER, :STUNSPORE, :SYNTHESIS, :WORRYSEED
  s.egg_groups    :Grass
  s.hatch_steps   6400
  s.height        1.4
  s.weight        27.0
  s.color         :Green
  s.shape         :Multiped
  s.category      "Bug Catcher"
  s.pokedex_entry "It attracts prey with its sweet-smelling saliva, then chomps down. It takes a whole day to eat prey."
  s.generation    4
end

GameData::Species.define :SNOVER do |s|
  s.name          "Snover"
  s.types         :GRASS, :ICE
  s.base_stats    hp: 60, attack: 62, defense: 50, speed: 40, sp_atk: 62, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      67
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :SNOWWARNING
  s.hidden_abilities :SOUNDPROOF
  s.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 1, :LEER
    m.at 5, :LEAFAGE
    m.at 10, :MIST
    m.at 15, :ICESHARD
    m.at 20, :RAZORLEAF
    m.at 25, :ICYWIND
    m.at 30, :SWAGGER
    m.at 35, :INGRAIN
    m.at 41, :WOODHAMMER
    m.at 45, :BLIZZARD
    m.at 50, :SHEERCOLD
  end
  s.tutor_moves   :ATTRACT, :AVALANCHE, :BLIZZARD, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FROSTBREATH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :HAIL, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :LIGHTSCREEN, :MAGICALLEAF, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WATERPULSE, :WEATHERBALL, :WORRYSEED, :TERABLAST
  s.egg_moves     :DOUBLEEDGE, :GROWTH, :LEECHSEED, :MAGICALLEAF, :MIST, :SEEDBOMB, :SKULLBASH, :STOMP
  s.egg_groups    :Monster, :Grass
  s.hatch_steps   5120
  s.height        1.0
  s.weight        50.5
  s.color         :White
  s.shape         :BipedalTail
  s.category      "Frost Tree"
  s.pokedex_entry "It lives on snowy mountains. Having had little contact with humans, it is boldly inquisitive."
  s.generation    4
  s.evolves_into  :ABOMASNOW, :Level, 40
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :NEVERMELTICE
end

GameData::Species.define :ABOMASNOW do |s|
  s.name          "Abomasnow"
  s.types         :GRASS, :ICE
  s.base_stats    hp: 90, attack: 92, defense: 75, speed: 60, sp_atk: 92, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      173
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 1, sp_attack: 1
  s.abilities     :SNOWWARNING
  s.hidden_abilities :SOUNDPROOF
  s.moves do |m|
    m.at 0, :ICEPUNCH
    m.at 1, :AURORAVEIL
    m.at 1, :POWDERSNOW
    m.at 1, :LEER
    m.at 1, :LEAFAGE
    m.at 1, :MIST
    m.at 15, :ICESHARD
    m.at 20, :RAZORLEAF
    m.at 25, :ICYWIND
    m.at 30, :SWAGGER
    m.at 35, :INGRAIN
    m.at 43, :WOODHAMMER
    m.at 49, :BLIZZARD
    m.at 56, :SHEERCOLD
  end
  s.tutor_moves   :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BRICKBREAK, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FROSTBREATH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICICLESPEAR, :ICYWIND, :IRONTAIL, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WATERPULSE, :WEATHERBALL, :WORRYSEED, :TERABLAST
  s.egg_groups    :Monster, :Grass
  s.hatch_steps   5120
  s.height        2.2
  s.weight        135.5
  s.color         :White
  s.shape         :BipedalTail
  s.category      "Frost Tree"
  s.pokedex_entry "It whips up blizzards in mountains that are always buried in snow. It is the abominable snowman."
  s.generation    4
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :NEVERMELTICE
end

GameData::Species.define :TANGROWTH do |s|
  s.name          "Tangrowth"
  s.types         :GRASS
  s.base_stats    hp: 100, attack: 100, defense: 125, speed: 50, sp_atk: 110, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      187
  s.catch_rate    30
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :CHLOROPHYLL, :LEAFGUARD
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :BLOCK
    m.at 1, :ABSORB
    m.at 1, :BIND
    m.at 1, :STUNSPORE
    m.at 1, :GROWTH
    m.at 12, :MEGADRAIN
    m.at 16, :VINEWHIP
    m.at 20, :POISONPOWDER
    m.at 24, :ANCIENTPOWER
    m.at 28, :KNOCKOFF
    m.at 32, :GIGADRAIN
    m.at 36, :SLEEPPOWDER
    m.at 40, :SLAM
    m.at 44, :TICKLE
    m.at 48, :POWERWHIP
    m.at 52, :INGRAIN
    m.at 56, :GRASSYTERRAIN
  end
  s.tutor_moves   :AERIALACE, :AMNESIA, :ANCIENTPOWER, :ATTRACT, :BIND, :BLOCK, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FOCUSBLAST, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :KNOCKOFF, :LEAFSTORM, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PAINSPLIT, :PAYBACK, :POISONJAB, :POWERSWAP, :POWERWHIP, :PROTECT, :PSYCHUP, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SOLARBLADE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THIEF, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        2.0
  s.weight        128.6
  s.color         :Blue
  s.shape         :Bipedal
  s.category      "Vine"
  s.pokedex_entry "It ensnares prey by extending arms made of vines. Losing arms to predators does not trouble it."
  s.generation    4
  s.flags         :HasGenderedSprites
end

GameData::Species.define :LEAFEON do |s|
  s.name          "Leafeon"
  s.types         :GRASS
  s.base_stats    hp: 65, attack: 110, defense: 130, speed: 95, sp_atk: 60, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      184
  s.catch_rate    45
  s.happiness     35
  s.evs           defense: 2
  s.abilities     :LEAFGUARD
  s.hidden_abilities :CHLOROPHYLL
  s.moves do |m|
    m.at 0, :RAZORLEAF
    m.at 1, :COVET
    m.at 1, :SWIFT
    m.at 1, :BITE
    m.at 1, :COPYCAT
    m.at 1, :BATONPASS
    m.at 1, :TAKEDOWN
    m.at 1, :CHARM
    m.at 1, :DOUBLEEDGE
    m.at 1, :HELPINGHAND
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :TAILWHIP
    m.at 5, :SANDATTACK
    m.at 10, :QUICKATTACK
    m.at 15, :BABYDOLLEYES
    m.at 20, :LEECHSEED
    m.at 25, :MAGICALLEAF
    m.at 30, :SYNTHESIS
    m.at 35, :SUNNYDAY
    m.at 40, :GIGADRAIN
    m.at 45, :SWORDSDANCE
    m.at 50, :LEAFBLADE
    m.at 55, :LASTRESORT
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BATONPASS, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FLASH, :FOCUSENERGY, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LEAFBLADE, :LEAFSTORM, :MAGICALLEAF, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PAYDAY, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SLEEPTALK, :SNORE, :SOLARBEAM, :SOLARBLADE, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :WEATHERBALL, :WORKUP, :WORRYSEED, :XSCISSOR, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   8960
  s.height        1.0
  s.weight        25.5
  s.color         :Green
  s.shape         :Quadruped
  s.category      "Verdant"
  s.pokedex_entry "Just like a plant, it uses photosynthesis. As a result, it is always enveloped in clear air."
  s.generation    4
end

GameData::Species.define :SHAYMIN do |s|
  s.name          "Shaymin"
  s.types         :GRASS
  s.base_stats    hp: 100, attack: 100, defense: 100, speed: 100, sp_atk: 100, sp_def: 100
  s.gender_ratio  :Genderless
  s.growth_rate   :Parabolic
  s.base_exp      300
  s.catch_rate    45
  s.happiness     100
  s.evs           hp: 3
  s.abilities     :NATURALCURE
  s.moves do |m|
    m.at 1, :GROWTH
    m.at 10, :MAGICALLEAF
    m.at 19, :LEECHSEED
    m.at 28, :SYNTHESIS
    m.at 37, :SWEETSCENT
    m.at 46, :HEALINGWISH
    m.at 55, :WORRYSEED
    m.at 64, :AROMATHERAPY
    m.at 73, :ENERGYBALL
    m.at 82, :SWEETKISS
    m.at 91, :HEALINGWISH
    m.at 100, :SEEDFLARE
  end
  s.tutor_moves   :BULLETSEED, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :EARTHPOWER, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :LASERFOCUS, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PROTECT, :PSYCHIC, :PSYCHUP, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.2
  s.weight        2.1
  s.color         :Green
  s.shape         :Quadruped
  s.category      "Gratitude"
  s.pokedex_entry "It lives in flower patches and avoids detection by curling up to look like a flowering plant."
  s.generation    4
  s.flags         :Mythical
  s.wild_item_common   :LUMBERRY
  s.wild_item_uncommon :LUMBERRY
  s.wild_item_rare     :LUMBERRY
end

GameData::Species.define :SNIVY do |s|
  s.name          "Snivy"
  s.types         :GRASS
  s.base_stats    hp: 45, attack: 45, defense: 55, speed: 63, sp_atk: 45, sp_def: 55
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :CONTRARY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 4, :LEER
    m.at 7, :VINEWHIP
    m.at 10, :WRAP
    m.at 13, :GROWTH
    m.at 16, :LEAFTORNADO
    m.at 19, :LEECHSEED
    m.at 22, :MEGADRAIN
    m.at 25, :SLAM
    m.at 28, :LEAFBLADE
    m.at 31, :COIL
    m.at 34, :GIGADRAIN
    m.at 37, :WRINGOUT
    m.at 40, :GASTROACID
    m.at 43, :LEAFSTORM
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ATTRACT, :BIND, :CALMMIND, :CAPTIVATE, :CONFIDE, :CUT, :DEFOG, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :HIDDENPOWER, :IRONTAIL, :KNOCKOFF, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TAUNT, :TORMENT, :TOXIC, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_moves     :CAPTIVATE, :GLARE, :GRASSYTERRAIN, :IRONTAIL, :MAGICALLEAF, :MEANLOOK, :MIRRORCOAT, :NATURALGIFT, :PURSUIT, :SWEETSCENT, :TWISTER
  s.egg_groups    :Field, :Grass
  s.hatch_steps   5120
  s.height        0.6
  s.weight        8.1
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Grass Snake"
  s.pokedex_entry "They photosynthesize by bathing their tails in sunlight. When they are not feeling well, their tails droop."
  s.generation    5
  s.evolves_into  :SERVINE, :Level, 17
end

GameData::Species.define :SERVINE do |s|
  s.name          "Servine"
  s.types         :GRASS
  s.base_stats    hp: 60, attack: 60, defense: 75, speed: 83, sp_atk: 60, sp_def: 75
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      145
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :OVERGROW
  s.hidden_abilities :CONTRARY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :VINEWHIP
    m.at 1, :WRAP
    m.at 4, :LEER
    m.at 7, :VINEWHIP
    m.at 10, :WRAP
    m.at 13, :GROWTH
    m.at 16, :LEAFTORNADO
    m.at 20, :LEECHSEED
    m.at 24, :MEGADRAIN
    m.at 28, :SLAM
    m.at 32, :LEAFBLADE
    m.at 36, :COIL
    m.at 40, :GIGADRAIN
    m.at 44, :WRINGOUT
    m.at 48, :GASTROACID
    m.at 52, :LEAFSTORM
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ATTRACT, :BIND, :CALMMIND, :CAPTIVATE, :CONFIDE, :CUT, :DEFOG, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :HIDDENPOWER, :IRONTAIL, :KNOCKOFF, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TAUNT, :TORMENT, :TOXIC, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Field, :Grass
  s.hatch_steps   5120
  s.height        0.8
  s.weight        16.0
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Grass Snake"
  s.pokedex_entry "They avoid attacks by sinking into the shadows of thick foliage. They retaliate with masterful whipping techniques."
  s.generation    5
  s.evolves_into  :SERPERIOR, :Level, 36
end

GameData::Species.define :SERPERIOR do |s|
  s.name          "Serperior"
  s.types         :GRASS
  s.base_stats    hp: 75, attack: 75, defense: 95, speed: 113, sp_atk: 75, sp_def: 95
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      264
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :OVERGROW
  s.hidden_abilities :CONTRARY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :VINEWHIP
    m.at 1, :WRAP
    m.at 4, :LEER
    m.at 7, :VINEWHIP
    m.at 10, :WRAP
    m.at 13, :GROWTH
    m.at 16, :LEAFTORNADO
    m.at 20, :LEECHSEED
    m.at 24, :MEGADRAIN
    m.at 28, :SLAM
    m.at 32, :LEAFBLADE
    m.at 38, :COIL
    m.at 44, :GIGADRAIN
    m.at 50, :WRINGOUT
    m.at 56, :GASTROACID
    m.at 62, :LEAFSTORM
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ATTRACT, :BIND, :BRUTALSWING, :CALMMIND, :CAPTIVATE, :CONFIDE, :CUT, :DEFOG, :DOUBLETEAM, :DRAGONPULSE, :DRAGONTAIL, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRENZYPLANT, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSPLEDGE, :HIDDENPOWER, :HYPERBEAM, :IRONTAIL, :KNOCKOFF, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :OUTRAGE, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TAUNT, :TORMENT, :TOXIC, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Field, :Grass
  s.hatch_steps   5120
  s.height        3.3
  s.weight        63.0
  s.color         :Green
  s.shape         :Serpentine
  s.category      "Regal"
  s.pokedex_entry "They raise their heads to intimidate opponents, but only give it their all when fighting a powerful opponent."
  s.generation    5
end

GameData::Species.define :PANSAGE do |s|
  s.name          "Pansage"
  s.types         :GRASS
  s.base_stats    hp: 50, attack: 53, defense: 48, speed: 64, sp_atk: 53, sp_def: 48
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      63
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :GLUTTONY
  s.hidden_abilities :OVERGROW
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :PLAYNICE
    m.at 4, :LEER
    m.at 7, :LICK
    m.at 10, :VINEWHIP
    m.at 13, :FURYSWIPES
    m.at 16, :LEECHSEED
    m.at 19, :BITE
    m.at 22, :SEEDBOMB
    m.at 25, :TORMENT
    m.at 28, :FLING
    m.at 31, :ACROBATICS
    m.at 34, :GRASSKNOT
    m.at 37, :RECYCLE
    m.at 40, :NATURALGIFT
    m.at 43, :CRUNCH
  end
  s.tutor_moves   :ACROBATICS, :ATTRACT, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :IRONTAIL, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PROTECT, :RECYCLE, :REST, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TAUNT, :THIEF, :TORMENT, :TOXIC, :UPROAR, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_moves     :ASTONISH, :BULLETSEED, :COVET, :DISARMINGVOICE, :GRASSWHISTLE, :LEAFSTORM, :LOWKICK, :MAGICALLEAF, :NASTYPLOT, :ROLEPLAY, :SPIKYSHIELD, :TICKLE
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        10.5
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Grass Monkey"
  s.pokedex_entry "It shares the leaf on its head with weary-looking Pokémon. These leaves are known to relieve stress."
  s.generation    5
  s.evolves_into  :SIMISAGE, :Item, LEAFSTONE
end

GameData::Species.define :SIMISAGE do |s|
  s.name          "Simisage"
  s.types         :GRASS
  s.base_stats    hp: 75, attack: 98, defense: 63, speed: 101, sp_atk: 98, sp_def: 63
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      174
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :GLUTTONY
  s.hidden_abilities :OVERGROW
  s.moves do |m|
    m.at 1, :LEER
    m.at 1, :LICK
    m.at 1, :FURYSWIPES
    m.at 1, :SEEDBOMB
  end
  s.tutor_moves   :ACROBATICS, :ATTRACT, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSPLEDGE, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONTAIL, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RECYCLE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SYNTHESIS, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :TOXIC, :UPROAR, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.1
  s.weight        30.5
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Thorn Monkey"
  s.pokedex_entry "Ill tempered, it fights by swinging its barbed tail around wildly. The leaf growing on its head is very bitter."
  s.generation    5
end

GameData::Species.define :COTTONEE do |s|
  s.name          "Cottonee"
  s.types         :GRASS, :FAIRY
  s.base_stats    hp: 40, attack: 27, defense: 60, speed: 66, sp_atk: 37, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      56
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :PRANKSTER, :INFILTRATOR
  s.hidden_abilities :CHLOROPHYLL
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :HELPINGHAND
    m.at 3, :FAIRYWIND
    m.at 6, :STUNSPORE
    m.at 12, :MEGADRAIN
    m.at 15, :RAZORLEAF
    m.at 18, :GROWTH
    m.at 21, :POISONPOWDER
    m.at 24, :GIGADRAIN
    m.at 27, :CHARM
    m.at 30, :LEECHSEED
    m.at 33, :COTTONSPORE
    m.at 36, :ENERGYBALL
    m.at 39, :SUNNYDAY
    m.at 42, :ENDEAVOR
    m.at 45, :COTTONGUARD
    m.at 48, :SOLARBEAM
  end
  s.tutor_moves   :ATTRACT, :BEATUP, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DEFOG, :DOUBLETEAM, :DREAMEATER, :ENCORE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :HIDDENPOWER, :KNOCKOFF, :MIMIC, :MISTYTERRAIN, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :TOXIC, :WORRYSEED, :TERABLAST
  s.egg_moves     :MEMENTO, :NATUREPOWER, :SWITCHEROO, :TICKLE, :WORRYSEED
  s.egg_groups    :Grass, :Fairy
  s.hatch_steps   5120
  s.height        0.3
  s.weight        0.6
  s.color         :Green
  s.shape         :Head
  s.category      "Cotton Puff"
  s.pokedex_entry "They go wherever the wind takes them. On rainy days, their bodies are heavier, so they take shelter beneath big trees."
  s.generation    5
  s.evolves_into  :WHIMSICOTT, :Item, SUNSTONE
  s.wild_item_uncommon :ABSORBBULB
end

GameData::Species.define :WHIMSICOTT do |s|
  s.name          "Whimsicott"
  s.types         :GRASS, :FAIRY
  s.base_stats    hp: 60, attack: 67, defense: 85, speed: 116, sp_atk: 77, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :PRANKSTER, :INFILTRATOR
  s.hidden_abilities :CHLOROPHYLL
  s.moves do |m|
    m.at 1, :GUST
    m.at 1, :TAILWIND
    m.at 1, :MOONBLAST
    m.at 1, :MEMENTO
    m.at 1, :HURRICANE
    m.at 1, :MEGADRAIN
    m.at 1, :RAZORLEAF
    m.at 1, :GROWTH
    m.at 1, :POISONPOWDER
    m.at 1, :GIGADRAIN
    m.at 1, :CHARM
    m.at 1, :LEECHSEED
    m.at 1, :COTTONSPORE
    m.at 1, :ENERGYBALL
    m.at 1, :SUNNYDAY
    m.at 1, :ENDEAVOR
    m.at 1, :COTTONGUARD
    m.at 1, :SOLARBEAM
    m.at 1, :ABSORB
    m.at 1, :HELPINGHAND
    m.at 1, :FAIRYWIND
    m.at 1, :STUNSPORE
  end
  s.tutor_moves   :ATTRACT, :BEATUP, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DEFOG, :DOUBLETEAM, :DREAMEATER, :ENCORE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FLASH, :FLING, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :KNOCKOFF, :LIGHTSCREEN, :MIMIC, :MISTYTERRAIN, :NATURALGIFT, :NATUREPOWER, :PLAYROUGH, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :TOXIC, :TRICKROOM, :UTURN, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass, :Fairy
  s.hatch_steps   5120
  s.height        0.7
  s.weight        6.6
  s.color         :Green
  s.shape         :Bipedal
  s.category      "Windveiled"
  s.pokedex_entry "Riding whirlwinds, they appear. These Pokémon sneak through gaps into houses and cause all sorts of mischief."
  s.generation    5
  s.wild_item_uncommon :ABSORBBULB
end

GameData::Species.define :PETILIL do |s|
  s.name          "Petilil"
  s.types         :GRASS
  s.base_stats    hp: 45, attack: 35, defense: 50, speed: 30, sp_atk: 70, sp_def: 50
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      56
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :CHLOROPHYLL, :OWNTEMPO
  s.hidden_abilities :LEAFGUARD
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :GROWTH
    m.at 3, :HELPINGHAND
    m.at 6, :STUNSPORE
    m.at 9, :MEGADRAIN
    m.at 12, :AROMATHERAPY
    m.at 15, :MAGICALLEAF
    m.at 18, :SLEEPPOWDER
    m.at 21, :GIGADRAIN
    m.at 24, :LEECHSEED
    m.at 27, :AFTERYOU
    m.at 30, :ENERGYBALL
    m.at 33, :SYNTHESIS
    m.at 36, :SUNNYDAY
    m.at 39, :ENTRAINMENT
    m.at 42, :LEAFSTORM
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CUT, :DOUBLETEAM, :DREAMEATER, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :LASERFOCUS, :LEAFSTORM, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POLLENPUFF, :PROTECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TOXIC, :WORRYSEED, :TERABLAST
  s.egg_moves     :HEALINGWISH, :INGRAIN, :SWEETSCENT, :WORRYSEED
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.5
  s.weight        6.6
  s.color         :Green
  s.shape         :HeadBase
  s.category      "Bulb"
  s.pokedex_entry "Since they prefer moist, nutrient-rich soil, the areas where Petilil live are known to be good for growing plants."
  s.generation    5
  s.evolves_into  :LILLIGANT, :Item, SUNSTONE
  s.wild_item_uncommon :ABSORBBULB
end

GameData::Species.define :LILLIGANT do |s|
  s.name          "Lilligant"
  s.types         :GRASS
  s.base_stats    hp: 70, attack: 60, defense: 75, speed: 90, sp_atk: 110, sp_def: 75
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :CHLOROPHYLL, :OWNTEMPO
  s.hidden_abilities :LEAFGUARD
  s.moves do |m|
    m.at 0, :PETALDANCE
    m.at 1, :PETALBLIZZARD
    m.at 1, :QUIVERDANCE
    m.at 1, :TEETERDANCE
    m.at 1, :MEGADRAIN
    m.at 1, :AROMATHERAPY
    m.at 1, :MAGICALLEAF
    m.at 1, :SLEEPPOWDER
    m.at 1, :GIGADRAIN
    m.at 1, :LEECHSEED
    m.at 1, :AFTERYOU
    m.at 1, :ENERGYBALL
    m.at 1, :SYNTHESIS
    m.at 1, :SUNNYDAY
    m.at 1, :ENTRAINMENT
    m.at 1, :LEAFSTORM
    m.at 1, :ABSORB
    m.at 1, :GROWTH
    m.at 1, :HELPINGHAND
    m.at 1, :STUNSPORE
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CUT, :DOUBLETEAM, :DREAMEATER, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :LASERFOCUS, :LEAFBLADE, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POLLENPUFF, :PROTECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SOLARBLADE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        1.1
  s.weight        16.3
  s.color         :Green
  s.shape         :HeadBase
  s.category      "Flowering"
  s.pokedex_entry "The fragrance of the garland on its head has a relaxing effect. It withers if a Trainer does not take good care of it."
  s.generation    5
  s.wild_item_uncommon :ABSORBBULB
end

GameData::Species.define :MARACTUS do |s|
  s.name          "Maractus"
  s.types         :GRASS
  s.base_stats    hp: 75, attack: 86, defense: 67, speed: 60, sp_atk: 106, sp_def: 67
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      161
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :WATERABSORB, :CHLOROPHYLL
  s.hidden_abilities :STORMDRAIN
  s.moves do |m|
    m.at 1, :SPIKYSHIELD
    m.at 1, :PECK
    m.at 1, :ABSORB
    m.at 1, :AFTERYOU
    m.at 1, :INGRAIN
    m.at 4, :GROWTH
    m.at 8, :MEGADRAIN
    m.at 12, :LEECHSEED
    m.at 16, :SUCKERPUNCH
    m.at 20, :PINMISSILE
    m.at 24, :GIGADRAIN
    m.at 28, :SWEETSCENT
    m.at 32, :SYNTHESIS
    m.at 36, :PETALBLIZZARD
    m.at 40, :COTTONSPORE
    m.at 44, :SUNNYDAY
    m.at 48, :SOLARBEAM
    m.at 52, :ACUPRESSURE
    m.at 56, :PETALDANCE
    m.at 60, :COTTONGUARD
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ASSURANCE, :ATTRACT, :BOUNCE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRAINPUNCH, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :KNOCKOFF, :LEAFSTORM, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PINMISSILE, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPIKES, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :THROATCHOP, :TOXIC, :UPROAR, :WEATHERBALL, :WORRYSEED, :TERABLAST
  s.egg_moves     :WOODHAMMER, :WORRYSEED
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        1.0
  s.weight        28.0
  s.color         :Green
  s.shape         :HeadBase
  s.category      "Cactus"
  s.pokedex_entry "Arid regions are their habitat. They move rhythmically, making a sound similar to maracas."
  s.generation    5
  s.wild_item_uncommon :MIRACLESEED
end

GameData::Species.define :FOONGUS do |s|
  s.name          "Foongus"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 69, attack: 55, defense: 45, speed: 15, sp_atk: 55, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      59
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :EFFECTSPORE
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :ASTONISH
    m.at 4, :GROWTH
    m.at 8, :STUNSPORE
    m.at 12, :MEGADRAIN
    m.at 16, :SYNTHESIS
    m.at 20, :CLEARSMOG
    m.at 24, :SWEETSCENT
    m.at 28, :GIGADRAIN
    m.at 32, :INGRAIN
    m.at 36, :TOXIC
    m.at 40, :RAGEPOWDER
    m.at 44, :SOLARBEAM
    m.at 48, :SPORE
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GRASSKNOT, :HIDDENPOWER, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POLLENPUFF, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TOXIC, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_moves     :DEFENSECURL, :POISONPOWDER, :ROLLOUT, :WORRYSEED
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.2
  s.weight        1.0
  s.color         :White
  s.shape         :HeadArms
  s.category      "Mushroom"
  s.pokedex_entry "For some reason, this Pokémon resembles a Poké Ball. They release poison spores to repel those who try to catch them."
  s.generation    5
  s.evolves_into  :AMOONGUSS, :Level, 39
  s.wild_item_common   :TINYMUSHROOM
  s.wild_item_uncommon :BIGMUSHROOM
end

GameData::Species.define :AMOONGUSS do |s|
  s.name          "Amoonguss"
  s.types         :GRASS, :POISON
  s.base_stats    hp: 114, attack: 85, defense: 70, speed: 30, sp_atk: 85, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      162
  s.catch_rate    75
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :EFFECTSPORE
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :ASTONISH
    m.at 1, :GROWTH
    m.at 1, :STUNSPORE
    m.at 12, :MEGADRAIN
    m.at 16, :SYNTHESIS
    m.at 20, :CLEARSMOG
    m.at 24, :SWEETSCENT
    m.at 28, :GIGADRAIN
    m.at 32, :INGRAIN
    m.at 36, :TOXIC
    m.at 42, :RAGEPOWDER
    m.at 48, :SOLARBEAM
    m.at 54, :SPORE
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYTERRAIN, :HEX, :HIDDENPOWER, :HYPERBEAM, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POLLENPUFF, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TOXIC, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.6
  s.weight        10.5
  s.color         :White
  s.shape         :HeadArms
  s.category      "Mushroom"
  s.pokedex_entry "They show off their Poké Ball caps to lure prey, but very few Pokémon are fooled by this."
  s.generation    5
  s.wild_item_common   :TINYMUSHROOM
  s.wild_item_uncommon :BIGMUSHROOM
end

GameData::Species.define :FERROSEED do |s|
  s.name          "Ferroseed"
  s.types         :GRASS, :STEEL
  s.base_stats    hp: 44, attack: 50, defense: 91, speed: 10, sp_atk: 24, sp_def: 86
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :IRONBARBS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 5, :METALCLAW
    m.at 10, :PINMISSILE
    m.at 15, :INGRAIN
    m.at 20, :FLASHCANNON
    m.at 25, :IRONHEAD
    m.at 30, :SELFDESTRUCT
    m.at 35, :IRONDEFENSE
    m.at 41, :CURSE
    m.at 45, :GYROBALL
    m.at 50, :EXPLOSION
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :GIGADRAIN, :GRAVITY, :GYROBALL, :HIDDENPOWER, :HONECLAWS, :IRONDEFENSE, :IRONHEAD, :KNOCKOFF, :MAGNETRISE, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :REST, :RETURN, :REVENGE, :ROCKPOLISH, :ROCKSMASH, :ROUND, :SECRETPOWER, :SEEDBOMB, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPIKES, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :WORRYSEED, :TERABLAST
  s.egg_moves     :ACIDSPRAY, :GRAVITY, :KNOCKOFF, :LEECHSEED, :TOXIC
  s.egg_groups    :Grass, :Mineral
  s.hatch_steps   5120
  s.height        0.6
  s.weight        18.8
  s.color         :Gray
  s.shape         :Head
  s.category      "Thorn Seed"
  s.pokedex_entry "They stick their spikes into cave walls and absorb the minerals they find in the rock."
  s.generation    5
  s.evolves_into  :FERROTHORN, :Level, 40
  s.wild_item_uncommon :STICKYBARB
end

GameData::Species.define :FERROTHORN do |s|
  s.name          "Ferrothorn"
  s.types         :GRASS, :STEEL
  s.base_stats    hp: 74, attack: 94, defense: 131, speed: 20, sp_atk: 54, sp_def: 116
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      171
  s.catch_rate    90
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :IRONBARBS
  s.hidden_abilities :ANTICIPATION
  s.moves do |m|
    m.at 0, :POWERWHIP
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :METALCLAW
    m.at 1, :PINMISSILE
    m.at 15, :INGRAIN
    m.at 20, :FLASHCANNON
    m.at 25, :IRONHEAD
    m.at 30, :SELFDESTRUCT
    m.at 35, :IRONDEFENSE
    m.at 43, :CURSE
    m.at 49, :GYROBALL
    m.at 56, :EXPLOSION
  end
  s.tutor_moves   :AERIALACE, :ASSURANCE, :ATTRACT, :BLOCK, :BODYPRESS, :BRUTALSWING, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GYROBALL, :HEAVYSLAM, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :KNOCKOFF, :MAGNETRISE, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PINMISSILE, :POISONJAB, :POWERWHIP, :PROTECT, :REST, :RETURN, :REVENGE, :ROCKPOLISH, :ROCKSMASH, :ROUND, :SANDSTORM, :SECRETPOWER, :SEEDBOMB, :SELFDESTRUCT, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPIKES, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass, :Mineral
  s.hatch_steps   5120
  s.height        1.0
  s.weight        110.0
  s.color         :Gray
  s.shape         :Multiped
  s.category      "Thorn Pod"
  s.pokedex_entry "They attach themselves to cave ceilings, firing steel spikes at targets passing beneath them."
  s.generation    5
  s.wild_item_uncommon :STICKYBARB
end

GameData::Species.define :VIRIZION do |s|
  s.name          "Virizion"
  s.types         :GRASS, :FIGHTING
  s.base_stats    hp: 91, attack: 90, defense: 72, speed: 108, sp_atk: 90, sp_def: 129
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           sp_defense: 3
  s.abilities     :JUSTIFIED
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 1, :HELPINGHAND
    m.at 1, :WORKUP
    m.at 7, :MAGICALLEAF
    m.at 14, :QUICKGUARD
    m.at 21, :DOUBLEKICK
    m.at 28, :RETALIATE
    m.at 35, :GIGADRAIN
    m.at 42, :TAKEDOWN
    m.at 49, :SACREDSWORD
    m.at 56, :SWORDSDANCE
    m.at 63, :LEAFBLADE
    m.at 70, :CLOSECOMBAT
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :BLOCK, :BOUNCE, :BRICKBREAK, :CALMMIND, :CLOSECOMBAT, :COACHING, :CONFIDE, :CUT, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLASH, :FOCUSBLAST, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :LASERFOCUS, :LEAFBLADE, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MEGAHORN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :PSYCHUP, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROAR, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SOLARBEAM, :SOLARBLADE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :TAUNT, :TOXIC, :WORKUP, :WORRYSEED, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        2.0
  s.weight        200.0
  s.color         :Green
  s.shape         :Quadruped
  s.category      "Grassland"
  s.pokedex_entry "Its head sprouts horns as sharp as blades. Using whirlwind-like movements, it confounds and swiftly cuts opponents."
  s.generation    5
  s.flags         :Legendary
end

GameData::Species.define :CHESPIN do |s|
  s.name          "Chespin"
  s.types         :GRASS
  s.base_stats    hp: 56, attack: 61, defense: 65, speed: 38, sp_atk: 48, sp_def: 45
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      63
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :BULLETPROOF
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :VINEWHIP
    m.at 5, :VINEWHIP
    m.at 8, :ROLLOUT
    m.at 11, :BITE
    m.at 15, :LEECHSEED
    m.at 18, :PINMISSILE
    m.at 27, :TAKEDOWN
    m.at 32, :SEEDBOMB
    m.at 35, :MUDSHOT
    m.at 39, :BULKUP
    m.at 42, :BODYSLAM
    m.at 45, :PAINSPLIT
    m.at 48, :WOODHAMMER
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GYROBALL, :HELPINGHAND, :HIDDENPOWER, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LOWKICK, :LOWSWEEP, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAINSPLIT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :REFLECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SMACKDOWN, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TAUNT, :THUNDERPUNCH, :TOXIC, :WORKUP, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BELLYDRUM, :CURSE, :DEFENSECURL, :POWERUPPUNCH, :QUICKGUARD, :ROLLOUT, :SPIKES, :SYNTHESIS
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        9.0
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Spiny Nut"
  s.pokedex_entry "The quills on its head are usually soft. When it flexes them, the points become so hard and sharp that they can pierce rock."
  s.generation    6
  s.evolves_into  :QUILLADIN, :Level, 16
end

GameData::Species.define :QUILLADIN do |s|
  s.name          "Quilladin"
  s.types         :GRASS
  s.base_stats    hp: 61, attack: 78, defense: 95, speed: 57, sp_atk: 56, sp_def: 58
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :OVERGROW
  s.hidden_abilities :BULLETPROOF
  s.moves do |m|
    m.at 0, :NEEDLEARM
    m.at 1, :GROWL
    m.at 1, :VINEWHIP
    m.at 5, :VINEWHIP
    m.at 8, :ROLLOUT
    m.at 11, :BITE
    m.at 15, :LEECHSEED
    m.at 19, :PINMISSILE
    m.at 29, :TAKEDOWN
    m.at 35, :SEEDBOMB
    m.at 39, :MUDSHOT
    m.at 44, :BULKUP
    m.at 48, :BODYSLAM
    m.at 52, :PAINSPLIT
    m.at 56, :WOODHAMMER
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GYROBALL, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LOWKICK, :LOWSWEEP, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAINSPLIT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :REFLECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SMACKDOWN, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TAUNT, :THUNDERPUNCH, :TOXIC, :WORKUP, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.7
  s.weight        29.0
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Spiny Armor"
  s.pokedex_entry "They strengthen their lower bodies by running into one another. They are very kind and won't start fights."
  s.generation    6
  s.evolves_into  :CHESNAUGHT, :Level, 36
end

GameData::Species.define :CHESNAUGHT do |s|
  s.name          "Chesnaught"
  s.types         :GRASS, :FIGHTING
  s.base_stats    hp: 88, attack: 107, defense: 122, speed: 64, sp_atk: 74, sp_def: 75
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 3
  s.abilities     :OVERGROW
  s.hidden_abilities :BULLETPROOF
  s.moves do |m|
    m.at 0, :SPIKYSHIELD
    m.at 1, :NEEDLEARM
    m.at 1, :HAMMERARM
    m.at 1, :FEINT
    m.at 1, :BELLYDRUM
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :VINEWHIP
    m.at 1, :ROLLOUT
    m.at 5, :VINEWHIP
    m.at 8, :ROLLOUT
    m.at 11, :BITE
    m.at 15, :LEECHSEED
    m.at 19, :PINMISSILE
    m.at 29, :TAKEDOWN
    m.at 35, :SEEDBOMB
    m.at 41, :MUDSHOT
    m.at 48, :BULKUP
    m.at 54, :BODYSLAM
    m.at 60, :PAINSPLIT
    m.at 66, :WOODHAMMER
    m.at 72, :HAMMERARM
    m.at 78, :GIGAIMPACT
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BLOCK, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :DRAGONCLAW, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRENZYPLANT, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSPLEDGE, :GYROBALL, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LOWKICK, :LOWSWEEP, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAINSPLIT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :REFLECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SMACKDOWN, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TAUNT, :THUNDERPUNCH, :TOXIC, :WORKUP, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.6
  s.weight        90.0
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Spiny Armor"
  s.pokedex_entry "Its Tackle is forceful enough to flip a 50-ton tank. It shields its allies from danger with its own body."
  s.generation    6
end

GameData::Species.define :SKIDDO do |s|
  s.name          "Skiddo"
  s.types         :GRASS
  s.base_stats    hp: 66, attack: 65, defense: 48, speed: 52, sp_atk: 62, sp_def: 57
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      70
  s.catch_rate    200
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :SAPSIPPER
  s.hidden_abilities :GRASSPELT
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWTH
    m.at 7, :VINEWHIP
    m.at 9, :TAILWHIP
    m.at 12, :LEECHSEED
    m.at 13, :RAZORLEAF
    m.at 16, :WORRYSEED
    m.at 20, :SYNTHESIS
    m.at 22, :TAKEDOWN
    m.at 26, :BULLDOZE
    m.at 30, :SEEDBOMB
    m.at 34, :BULKUP
    m.at 38, :DOUBLEEDGE
    m.at 42, :HORNLEECH
    m.at 45, :LEAFBLADE
    m.at 50, :MILKDRINK
  end
  s.tutor_moves   :ATTRACT, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :HIDDENPOWER, :IRONTAIL, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SYNTHESIS, :TOXIC, :WILDCHARGE, :WORKUP, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :DEFENSECURL, :GRASSYTERRAIN, :MILKDRINK, :ROLLOUT
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.9
  s.weight        31.0
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Mount"
  s.pokedex_entry "If it has sunshine and water, it doesn't need to eat, because it can generate energy from the leaves on its back."
  s.generation    6
  s.evolves_into  :GOGOAT, :Level, 32
end

GameData::Species.define :GOGOAT do |s|
  s.name          "Gogoat"
  s.types         :GRASS
  s.base_stats    hp: 123, attack: 100, defense: 62, speed: 68, sp_atk: 97, sp_def: 81
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      186
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :SAPSIPPER
  s.hidden_abilities :GRASSPELT
  s.moves do |m|
    m.at 0, :AERIALACE
    m.at 1, :EARTHQUAKE
    m.at 1, :TACKLE
    m.at 1, :GROWTH
    m.at 1, :VINEWHIP
    m.at 1, :TAILWHIP
    m.at 7, :VINEWHIP
    m.at 9, :TAILWHIP
    m.at 12, :LEECHSEED
    m.at 13, :RAZORLEAF
    m.at 16, :WORRYSEED
    m.at 20, :SYNTHESIS
    m.at 22, :TAKEDOWN
    m.at 26, :BULLDOZE
    m.at 30, :SEEDBOMB
    m.at 34, :BULKUP
    m.at 40, :DOUBLEEDGE
    m.at 47, :HORNLEECH
    m.at 55, :LEAFBLADE
    m.at 58, :MILKDRINK
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BOUNCE, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HYPERBEAM, :IRONTAIL, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :SYNTHESIS, :TOXIC, :WILDCHARGE, :WORKUP, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.7
  s.weight        91.0
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Mount"
  s.pokedex_entry "It can tell how its trainer is feeling by subtle shifts in the grip on its horns. This empathetic sense lets them run as if one being."
  s.generation    6
end

GameData::Species.define :ROWLET do |s|
  s.name          "Rowlet"
  s.types         :GRASS, :FLYING
  s.base_stats    hp: 68, attack: 55, defense: 55, speed: 42, sp_atk: 50, sp_def: 50
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      64
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :LONGREACH
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 3, :LEAFAGE
    m.at 6, :ASTONISH
    m.at 9, :PECK
    m.at 12, :SHADOWSNEAK
    m.at 15, :RAZORLEAF
    m.at 18, :SYNTHESIS
    m.at 21, :PLUCK
    m.at 24, :NASTYPLOT
    m.at 27, :SUCKERPUNCH
    m.at 30, :LEAFBLADE
    m.at 33, :FEATHERDANCE
    m.at 36, :BRAVEBIRD
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :COVET, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :HIDDENPOWER, :LEAFBLADE, :LIGHTSCREEN, :MIMIC, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHADOWCLAW, :SKYATTACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_moves     :CONFUSERAY, :DEFOG, :DOUBLETEAM, :KNOCKOFF
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.3
  s.weight        1.5
  s.color         :Brown
  s.shape         :Winged
  s.category      "Grass Quill"
  s.pokedex_entry "It sends its feathers, which are as sharp as blades, flying in attack. Its legs are strong, so its kicks are also formidable."
  s.generation    7
  s.evolves_into  :DARTRIX, :Level, 17
end

GameData::Species.define :DARTRIX do |s|
  s.name          "Dartrix"
  s.types         :GRASS, :FLYING
  s.base_stats    hp: 78, attack: 75, defense: 75, speed: 52, sp_atk: 70, sp_def: 70
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      147
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :OVERGROW
  s.hidden_abilities :LONGREACH
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :LEAFAGE
    m.at 1, :ASTONISH
    m.at 9, :PECK
    m.at 12, :SHADOWSNEAK
    m.at 15, :RAZORLEAF
    m.at 20, :SYNTHESIS
    m.at 25, :PLUCK
    m.at 30, :NASTYPLOT
    m.at 35, :SUCKERPUNCH
    m.at 40, :LEAFBLADE
    m.at 45, :FEATHERDANCE
    m.at 50, :BRAVEBIRD
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :COVET, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :HIDDENPOWER, :LEAFBLADE, :LIGHTSCREEN, :MIMIC, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHADOWCLAW, :SKYATTACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.7
  s.weight        16.0
  s.color         :Brown
  s.shape         :Winged
  s.category      "Blade Quill"
  s.pokedex_entry "A bit of a dandy, it spends its free time preening its wings. Its preoccupation with any dirt on its plumage can leave it unable to battle."
  s.generation    7
  s.evolves_into  :DECIDUEYE, :Level, 34
end

GameData::Species.define :DECIDUEYE do |s|
  s.name          "Decidueye"
  s.types         :GRASS, :GHOST
  s.base_stats    hp: 78, attack: 107, defense: 75, speed: 70, sp_atk: 100, sp_def: 100
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :OVERGROW
  s.hidden_abilities :LONGREACH
  s.moves do |m|
    m.at 0, :SPIRITSHACKLE
    m.at 1, :PHANTOMFORCE
    m.at 1, :LEAFSTORM
    m.at 1, :UTURN
    m.at 1, :SPITE
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :LEAFAGE
    m.at 1, :ASTONISH
    m.at 9, :PECK
    m.at 12, :SHADOWSNEAK
    m.at 15, :RAZORLEAF
    m.at 20, :SYNTHESIS
    m.at 25, :PLUCK
    m.at 30, :NASTYPLOT
    m.at 37, :SUCKERPUNCH
    m.at 44, :LEAFBLADE
    m.at 51, :FEATHERDANCE
    m.at 58, :BRAVEBIRD
  end
  s.tutor_moves   :ACROBATICS, :AIRSLASH, :ATTRACT, :BATONPASS, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :COVET, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FRENZYPLANT, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :HEX, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :IMPRISON, :LASERFOCUS, :LEAFBLADE, :LEAFSTORM, :LIGHTSCREEN, :LOWSWEEP, :MIMIC, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :PHANTOMFORCE, :POLTERGEIST, :PROTECT, :PSYCHOCUT, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SKITTERSMACK, :SKYATTACK, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :SOLARBLADE, :SPITE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :TAILWIND, :TOXIC, :UTURN, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        1.6
  s.weight        36.6
  s.color         :Brown
  s.shape         :Winged
  s.category      "Arrow Quill"
  s.pokedex_entry "It fires arrow quills from its wings with such precision, they can pierce a pebble at distances over a hundred yards."
  s.generation    7
end

GameData::Species.define :FOMANTIS do |s|
  s.name          "Fomantis"
  s.types         :GRASS
  s.base_stats    hp: 40, attack: 55, defense: 35, speed: 35, sp_atk: 50, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      50
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :LEAFGUARD
  s.hidden_abilities :CONTRARY
  s.moves do |m|
    m.at 1, :LEAFAGE
    m.at 1, :FURYCUTTER
    m.at 5, :GROWTH
    m.at 10, :INGRAIN
    m.at 15, :RAZORLEAF
    m.at 20, :SWEETSCENT
    m.at 25, :SLASH
    m.at 30, :XSCISSOR
    m.at 35, :SYNTHESIS
    m.at 40, :LEAFBLADE
    m.at 45, :SUNNYDAY
    m.at 50, :SOLARBEAM
  end
  s.tutor_moves   :ATTRACT, :BUGBITE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :DUALCHOP, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLING, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :HIDDENPOWER, :LEAFBLADE, :LEAFSTORM, :LEECHLIFE, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POISONJAB, :PROTECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :WEATHERBALL, :WORRYSEED, :XSCISSOR, :TERABLAST
  s.egg_moves     :AROMATHERAPY, :DEFOG, :WORRYSEED
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.3
  s.weight        1.5
  s.color         :Pink
  s.shape         :BipedalTail
  s.category      "Sickle Grass"
  s.pokedex_entry "When the sun rises, Fomantis spreads its four leaves and bathes in the sunlight. The tip of its head has a pleasant aroma."
  s.generation    7
  s.evolves_into  :LURANTIS, :LevelDay, 34
  s.wild_item_uncommon :MIRACLESEED
end

GameData::Species.define :LURANTIS do |s|
  s.name          "Lurantis"
  s.types         :GRASS
  s.base_stats    hp: 70, attack: 105, defense: 90, speed: 45, sp_atk: 80, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :LEAFGUARD
  s.hidden_abilities :CONTRARY
  s.moves do |m|
    m.at 0, :PETALBLIZZARD
    m.at 1, :NIGHTSLASH
    m.at 1, :SOLARBEAM
    m.at 1, :DUALCHOP
    m.at 1, :LEAFAGE
    m.at 1, :FURYCUTTER
    m.at 1, :GROWTH
    m.at 1, :INGRAIN
    m.at 15, :RAZORLEAF
    m.at 20, :SWEETSCENT
    m.at 25, :SLASH
    m.at 30, :XSCISSOR
    m.at 37, :SYNTHESIS
    m.at 44, :LEAFBLADE
    m.at 51, :SUNNYDAY
    m.at 63, :SOLARBLADE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BRICKBREAK, :BUGBITE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CROSSPOISON, :DEFOG, :DOUBLETEAM, :DUALCHOP, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLING, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HIDDENPOWER, :HYPERBEAM, :KNOCKOFF, :LASERFOCUS, :LEAFBLADE, :LEAFSTORM, :LEECHLIFE, :LOWSWEEP, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POISONJAB, :PROTECT, :PSYCHOCUT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :SOLARBLADE, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TOXIC, :WEATHERBALL, :WORRYSEED, :XSCISSOR, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.9
  s.weight        18.5
  s.color         :Pink
  s.shape         :Bipedal
  s.category      "Bloom Sickle"
  s.pokedex_entry "It requires a lot of effort to maintain Lurantis's vivid coloring, but some collectors enjoy this work and treat it as their hobby."
  s.generation    7
  s.wild_item_uncommon :MIRACLESEED
end

GameData::Species.define :MORELULL do |s|
  s.name          "Morelull"
  s.types         :GRASS, :FAIRY
  s.base_stats    hp: 40, attack: 35, defense: 55, speed: 15, sp_atk: 65, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      57
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :ILLUMINATE, :EFFECTSPORE
  s.hidden_abilities :RAINDISH
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :ASTONISH
    m.at 4, :CONFUSERAY
    m.at 8, :INGRAIN
    m.at 12, :MEGADRAIN
    m.at 16, :SLEEPPOWDER
    m.at 20, :MOONLIGHT
    m.at 25, :STRENGTHSAP
    m.at 28, :GIGADRAIN
    m.at 32, :DAZZLINGGLEAM
    m.at 36, :SPORE
    m.at 40, :MOONBLAST
    m.at 44, :DREAMEATER
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :ATTRACT, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :ENDURE, :ENERGYBALL, :FACADE, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :HIDDENPOWER, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POLLENPUFF, :PROTECT, :RECYCLE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SIGNALBEAM, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :THUNDERWAVE, :TOXIC, :WONDERROOM, :WORRYSEED, :TERABLAST
  s.egg_moves     :GROWTH, :LEECHSEED, :POISONPOWDER, :STUNSPORE
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.2
  s.weight        1.5
  s.color         :Purple
  s.shape         :HeadBase
  s.category      "Illuminating"
  s.pokedex_entry "It scatters its shining spores around itself. Even though they're dangerous, nighttime tours of forests where Morelull live are popular."
  s.generation    7
  s.evolves_into  :SHIINOTIC, :Level, 24
  s.wild_item_common   :TINYMUSHROOM
  s.wild_item_uncommon :BIGMUSHROOM
end

GameData::Species.define :SHIINOTIC do |s|
  s.name          "Shiinotic"
  s.types         :GRASS, :FAIRY
  s.base_stats    hp: 60, attack: 45, defense: 80, speed: 30, sp_atk: 90, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      142
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :ILLUMINATE, :EFFECTSPORE
  s.hidden_abilities :RAINDISH
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :ASTONISH
    m.at 1, :CONFUSERAY
    m.at 1, :INGRAIN
    m.at 12, :MEGADRAIN
    m.at 16, :SLEEPPOWDER
    m.at 20, :MOONLIGHT
    m.at 27, :STRENGTHSAP
    m.at 32, :GIGADRAIN
    m.at 38, :DAZZLINGGLEAM
    m.at 44, :SPORE
    m.at 50, :MOONBLAST
    m.at 56, :DREAMEATER
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :ATTRACT, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :ENDURE, :ENERGYBALL, :FACADE, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HYPERBEAM, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POLLENPUFF, :PROTECT, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SIGNALBEAM, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :THUNDERWAVE, :TOXIC, :WEATHERBALL, :WONDERROOM, :WORRYSEED, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        1.0
  s.weight        11.5
  s.color         :Purple
  s.shape         :Bipedal
  s.category      "Illuminating"
  s.pokedex_entry "It puts its prey to sleep and siphons off their vitality through the tip of its arms. If one of its kind is weakened, it helps by sending it vitality."
  s.generation    7
  s.wild_item_common   :TINYMUSHROOM
  s.wild_item_uncommon :BIGMUSHROOM
end

GameData::Species.define :BOUNSWEET do |s|
  s.name          "Bounsweet"
  s.types         :GRASS
  s.base_stats    hp: 42, attack: 30, defense: 38, speed: 32, sp_atk: 30, sp_def: 38
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Parabolic
  s.base_exp      42
  s.catch_rate    235
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :LEAFGUARD, :OBLIVIOUS
  s.hidden_abilities :SWEETVEIL
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 4, :PLAYNICE
    m.at 8, :RAPIDSPIN
    m.at 12, :RAZORLEAF
    m.at 16, :SWEETSCENT
    m.at 20, :MAGICALLEAF
    m.at 24, :FLAIL
    m.at 28, :TEETERDANCE
    m.at 32, :AROMATICMIST
    m.at 36, :AROMATHERAPY
  end
  s.tutor_moves   :ATTRACT, :BOUNCE, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :HELPINGHAND, :HIDDENPOWER, :LIGHTSCREEN, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PLAYROUGH, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TOXIC, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ACUPRESSURE, :ENDEAVOR, :SYNTHESIS
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.3
  s.weight        3.2
  s.color         :Purple
  s.shape         :HeadLegs
  s.category      "Fruit"
  s.pokedex_entry "Because of its sweet, delicious aroma, bird Pokémon are always after it, but it's not intelligent enough to care."
  s.generation    7
  s.evolves_into  :STEENEE, :Level, 18
  s.wild_item_uncommon :GRASSYSEED
end

GameData::Species.define :STEENEE do |s|
  s.name          "Steenee"
  s.types         :GRASS
  s.base_stats    hp: 52, attack: 40, defense: 48, speed: 62, sp_atk: 40, sp_def: 48
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Parabolic
  s.base_exp      102
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :LEAFGUARD, :OBLIVIOUS
  s.hidden_abilities :SWEETVEIL
  s.moves do |m|
    m.at 1, :FLAIL
    m.at 1, :SPLASH
    m.at 1, :PLAYNICE
    m.at 1, :RAPIDSPIN
    m.at 1, :RAZORLEAF
    m.at 16, :SWEETSCENT
    m.at 22, :MAGICALLEAF
    m.at 28, :STOMP
    m.at 34, :TEETERDANCE
    m.at 40, :AROMATICMIST
    m.at 46, :AROMATHERAPY
    m.at 52, :LEAFSTORM
  end
  s.tutor_moves   :ATTRACT, :BOUNCE, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLING, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :HELPINGHAND, :HIDDENPOWER, :KNOCKOFF, :LEAFSTORM, :LIGHTSCREEN, :LOWSWEEP, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PLAYROUGH, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TOXIC, :TRIPLEAXEL, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.7
  s.weight        8.2
  s.color         :Purple
  s.shape         :Bipedal
  s.category      "Fruit"
  s.pokedex_entry "It's protected by its hard sepals, so it plays with bird Pokémon without worry. They peck it relentlessly, but it doesn't care."
  s.generation    7
  s.evolves_into  :TSAREENA, :HasMove, STOMP
  s.wild_item_uncommon :GRASSYSEED
end

GameData::Species.define :TSAREENA do |s|
  s.name          "Tsareena"
  s.types         :GRASS
  s.base_stats    hp: 72, attack: 120, defense: 98, speed: 72, sp_atk: 50, sp_def: 98
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Parabolic
  s.base_exp      255
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :LEAFGUARD, :QUEENLYMAJESTY
  s.hidden_abilities :SWEETVEIL
  s.moves do |m|
    m.at 0, :TROPKICK
    m.at 1, :POWERWHIP
    m.at 1, :FLAIL
    m.at 1, :PLAYNICE
    m.at 1, :SPLASH
    m.at 1, :SWAGGER
    m.at 1, :RAPIDSPIN
    m.at 1, :RAZORLEAF
    m.at 16, :SWEETSCENT
    m.at 22, :MAGICALLEAF
    m.at 28, :STOMP
    m.at 34, :TEETERDANCE
    m.at 40, :AROMATICMIST
    m.at 46, :AROMATHERAPY
    m.at 52, :LEAFSTORM
    m.at 58, :HIGHJUMPKICK
  end
  s.tutor_moves   :ACROBATICS, :ATTRACT, :BOUNCE, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLING, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :KNOCKOFF, :LASERFOCUS, :LEAFSTORM, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICALLEAF, :MEGAKICK, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PLAYROUGH, :POWERWHIP, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SOLARBLADE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TAUNT, :TOXIC, :TRIPLEAXEL, :UTURN, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        1.2
  s.weight        21.4
  s.color         :Purple
  s.shape         :Bipedal
  s.category      "Fruit"
  s.pokedex_entry "A Pokémon with an aggressive personality and a mastery of kicking, it cackles every time it kicks an opponent."
  s.generation    7
  s.wild_item_common   :GRASSYSEED
end

GameData::Species.define :TAPUBULU do |s|
  s.name          "Tapu Bulu"
  s.types         :GRASS, :FAIRY
  s.base_stats    hp: 70, attack: 130, defense: 115, speed: 75, sp_atk: 85, sp_def: 95
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    3
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :GRASSYSURGE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :LEAFAGE
    m.at 1, :ROCKSMASH
    m.at 5, :WITHDRAW
    m.at 10, :DISABLE
    m.at 15, :LEECHSEED
    m.at 20, :MEGADRAIN
    m.at 25, :WHIRLWIND
    m.at 30, :HORNATTACK
    m.at 35, :SCARYFACE
    m.at 40, :HORNLEECH
    m.at 45, :ZENHEADBUTT
    m.at 50, :MEANLOOK
    m.at 55, :NATURESMADNESS
    m.at 60, :WOODHAMMER
    m.at 65, :MEGAHORN
    m.at 70, :SKULLBASH
    m.at 75, :GRASSYTERRAIN
  end
  s.tutor_moves   :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLETSEED, :CALMMIND, :CLOSECOMBAT, :CONFIDE, :DARKESTLARIAT, :DAZZLINGGLEAM, :DUALCHOP, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYTERRAIN, :GUARDSWAP, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :IRONDEFENSE, :LIGHTSCREEN, :MEGAHORN, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POWERSWAP, :PROTECT, :PSYCHUP, :REFLECT, :REST, :RETURN, :REVENGE, :ROAR, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SMARTSTRIKE, :SNARL, :SNORE, :SOLARBEAM, :STONEEDGE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TAUNT, :TELEKINESIS, :TORMENT, :TOXIC, :WORKUP, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   3840
  s.height        1.9
  s.weight        45.5
  s.color         :Red
  s.shape         :HeadArms
  s.category      "Land Spirit"
  s.pokedex_entry "It pulls large trees up by the roots and swings them around. It causes vegetation to grow, and then it absorbs energy from the growth."
  s.generation    7
  s.flags         :Legendary
end

GameData::Species.define :KARTANA do |s|
  s.name          "Kartana"
  s.types         :GRASS, :STEEL
  s.base_stats    hp: 59, attack: 181, defense: 131, speed: 109, sp_atk: 59, sp_def: 31
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    45
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :BEASTBOOST
  s.moves do |m|
    m.at 1, :FURYCUTTER
    m.at 1, :VACUUMWAVE
    m.at 5, :RAZORLEAF
    m.at 10, :FALSESWIPE
    m.at 15, :CUT
    m.at 20, :AIRCUTTER
    m.at 25, :AERIALACE
    m.at 30, :DETECT
    m.at 35, :NIGHTSLASH
    m.at 40, :SYNTHESIS
    m.at 45, :LASERFOCUS
    m.at 50, :DEFOG
    m.at 55, :LEAFBLADE
    m.at 60, :SACREDSWORD
    m.at 65, :SWORDSDANCE
    m.at 70, :GUILLOTINE
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :BRICKBREAK, :CALMMIND, :CONFIDE, :DEFOG, :DOUBLETEAM, :ENDURE, :FALSESWIPE, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :IRONDEFENSE, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LEAFBLADE, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHOCUT, :REST, :RETURN, :ROUND, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SOLARBLADE, :STEELBEAM, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TAILWIND, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.3
  s.weight        0.1
  s.color         :White
  s.shape         :Bipedal
  s.category      "Drawn Sword"
  s.pokedex_entry "One of the Ultra Beast life-forms, it was observed cutting down a gigantic steel tower with one stroke of its blade."
  s.generation    7
  s.flags         :UltraBeast
end

GameData::Species.define :GROOKEY do |s|
  s.name          "Grookey"
  s.types         :GRASS
  s.base_stats    hp: 50, attack: 65, defense: 50, speed: 65, sp_atk: 40, sp_def: 40
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :OVERGROW
  s.hidden_abilities :GRASSYSURGE
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 6, :BRANCHPOKE
    m.at 8, :TAUNT
    m.at 12, :RAZORLEAF
    m.at 17, :SCREECH
    m.at 20, :KNOCKOFF
    m.at 24, :SLAM
    m.at 28, :UPROAR
    m.at 32, :WOODHAMMER
    m.at 36, :ENDEAVOR
  end
  s.tutor_moves   :ACROBATICS, :ASSURANCE, :ATTRACT, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLING, :FOCUSENERGY, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :HIDDENPOWER, :LOWKICK, :MAGICALLEAF, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROUND, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :SOLARBLADE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :TOXIC, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :FAKEOUT, :GROWTH, :HAMMERARM, :LEECHSEED, :NATUREPOWER, :STRENGTH, :WORRYSEED
  s.egg_groups    :Field, :Grass
  s.hatch_steps   5120
  s.height        0.3
  s.weight        5.0
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Chimp"
  s.pokedex_entry "When it uses its special stick to strike up a beat, the sound waves produced carry revitalizing energy to the plants and flowers in the area."
  s.generation    8
  s.evolves_into  :THWACKEY, :Level, 16
end

GameData::Species.define :THWACKEY do |s|
  s.name          "Thwackey"
  s.types         :GRASS
  s.base_stats    hp: 70, attack: 85, defense: 70, speed: 80, sp_atk: 55, sp_def: 60
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      147
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :OVERGROW
  s.hidden_abilities :GRASSYSURGE
  s.moves do |m|
    m.at 0, :DOUBLEHIT
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :BRANCHPOKE
    m.at 1, :TAUNT
    m.at 12, :RAZORLEAF
    m.at 19, :SCREECH
    m.at 24, :KNOCKOFF
    m.at 30, :SLAM
    m.at 36, :UPROAR
    m.at 42, :WOODHAMMER
    m.at 48, :ENDEAVOR
  end
  s.tutor_moves   :ACROBATICS, :ASSURANCE, :ATTRACT, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLING, :FOCUSENERGY, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :HIDDENPOWER, :LOWKICK, :MAGICALLEAF, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROUND, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :SOLARBLADE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :TOXIC, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Field, :Grass
  s.hatch_steps   5120
  s.height        0.7
  s.weight        14.0
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Beat"
  s.pokedex_entry "When it's drumming out rapid beats in battle, it gets so caught up in the rhythm that it won't even notice that it's already knocked out its opponent."
  s.generation    8
  s.evolves_into  :RILLABOOM, :Level, 35
end

GameData::Species.define :RILLABOOM do |s|
  s.name          "Rillaboom"
  s.types         :GRASS
  s.base_stats    hp: 100, attack: 125, defense: 90, speed: 85, sp_atk: 60, sp_def: 70
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :OVERGROW
  s.hidden_abilities :GRASSYSURGE
  s.moves do |m|
    m.at 0, :DRUMBEATING
    m.at 1, :DOUBLEHIT
    m.at 1, :GRASSYTERRAIN
    m.at 1, :NOBLEROAR
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :BRANCHPOKE
    m.at 1, :TAUNT
    m.at 12, :RAZORLEAF
    m.at 19, :SCREECH
    m.at 24, :KNOCKOFF
    m.at 30, :SLAM
    m.at 38, :UPROAR
    m.at 46, :WOODHAMMER
    m.at 54, :ENDEAVOR
    m.at 62, :BOOMBURST
  end
  s.tutor_moves   :ACROBATICS, :ASSURANCE, :ATTRACT, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DARKESTLARIAT, :DOUBLETEAM, :DRAINPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FRENZYPLANT, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :GRASSYTERRAIN, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :HYPERVOICE, :LEAFSTORM, :LOWKICK, :MAGICALLEAF, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSHOT, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :SOLARBEAM, :SOLARBLADE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :TOXIC, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Field, :Grass
  s.hatch_steps   5120
  s.height        2.1
  s.weight        90.0
  s.color         :Green
  s.shape         :Bipedal
  s.category      "Drummer"
  s.pokedex_entry "By drumming, it taps into the power of its special tree stump. The roots of the stump follow its direction in battle."
  s.generation    8
end

GameData::Species.define :GOSSIFLEUR do |s|
  s.name          "Gossifleur"
  s.types         :GRASS
  s.base_stats    hp: 40, attack: 40, defense: 60, speed: 10, sp_atk: 40, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      50
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :COTTONDOWN, :REGENERATOR
  s.hidden_abilities :EFFECTSPORE
  s.moves do |m|
    m.at 1, :LEAFAGE
    m.at 1, :SING
    m.at 4, :RAPIDSPIN
    m.at 8, :SWEETSCENT
    m.at 12, :RAZORLEAF
    m.at 16, :ROUND
    m.at 21, :LEAFTORNADO
    m.at 24, :SYNTHESIS
    m.at 28, :HYPERVOICE
    m.at 32, :AROMATHERAPY
    m.at 36, :LEAFSTORM
  end
  s.tutor_moves   :ATTRACT, :BULLETSEED, :CAPTIVATE, :CHARM, :CONFIDE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :POLLENPUFF, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TOXIC, :TERABLAST
  s.egg_moves     :GROWTH, :LEECHSEED, :POISONPOWDER, :SLEEPPOWDER, :STUNSPORE, :WORRYSEED
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.4
  s.weight        2.2
  s.color         :Green
  s.shape         :HeadBase
  s.category      "Flowering"
  s.pokedex_entry "It anchors itself in the ground with its single leg, then basks in the sun. After absorbing enough sunlight, its petals spread as it blooms brilliantly."
  s.generation    8
  s.evolves_into  :ELDEGOSS, :Level, 20
end

GameData::Species.define :ELDEGOSS do |s|
  s.name          "Eldegoss"
  s.types         :GRASS
  s.base_stats    hp: 60, attack: 50, defense: 90, speed: 60, sp_atk: 80, sp_def: 120
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      161
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :COTTONDOWN, :REGENERATOR
  s.hidden_abilities :EFFECTSPORE
  s.moves do |m|
    m.at 0, :COTTONSPORE
    m.at 1, :LEAFAGE
    m.at 1, :SING
    m.at 1, :RAPIDSPIN
    m.at 1, :SWEETSCENT
    m.at 12, :RAZORLEAF
    m.at 16, :ROUND
    m.at 23, :LEAFTORNADO
    m.at 28, :SYNTHESIS
    m.at 34, :HYPERVOICE
    m.at 40, :AROMATHERAPY
    m.at 46, :LEAFSTORM
    m.at 52, :COTTONGUARD
  end
  s.tutor_moves   :ATTRACT, :BULLETSEED, :CAPTIVATE, :CHARM, :CONFIDE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :POLLENPUFF, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TOXIC, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.5
  s.weight        2.5
  s.color         :Green
  s.shape         :HeadBase
  s.category      "Cotton Bloom"
  s.pokedex_entry "The seeds attached to its cotton fluff are full of nutrients. It spreads them on the wind so that plants and other Pokémon can benefit from them."
  s.generation    8
end

GameData::Species.define :APPLIN do |s|
  s.name          "Applin"
  s.types         :GRASS, :DRAGON
  s.base_stats    hp: 40, attack: 40, defense: 80, speed: 20, sp_atk: 40, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      52
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :RIPEN, :GLUTTONY
  s.hidden_abilities :BULLETPROOF
  s.moves do |m|
    m.at 1, :WITHDRAW
    m.at 1, :ASTONISH
  end
  s.tutor_moves   :ATTRACT, :DRACOMETEOR, :GRASSYGLIDE, :TERABLAST
  s.egg_moves     :DEFENSECURL, :RECYCLE, :ROLLOUT, :SUCKERPUNCH
  s.egg_groups    :Grass, :Dragon
  s.hatch_steps   5120
  s.height        0.2
  s.weight        0.5
  s.color         :Green
  s.shape         :Serpentine
  s.category      "Apple Core"
  s.pokedex_entry "It spends its entire life inside an apple. It hides from its natural enemies, bird Pokémon, by pretending it's just an apple and nothing more."
  s.generation    8
  s.evolves_into  :FLAPPLE, :Item, TARTAPPLE
  s.evolves_into  :APPLETUN, :Item, SWEETAPPLE
end

GameData::Species.define :FLAPPLE do |s|
  s.name          "Flapple"
  s.types         :GRASS, :DRAGON
  s.base_stats    hp: 70, attack: 110, defense: 80, speed: 70, sp_atk: 95, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      170
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :RIPEN, :GLUTTONY
  s.hidden_abilities :HUSTLE
  s.moves do |m|
    m.at 0, :WINGATTACK
    m.at 1, :RECYCLE
    m.at 1, :WITHDRAW
    m.at 1, :ASTONISH
    m.at 1, :GROWTH
    m.at 1, :TWISTER
    m.at 4, :ACIDSPRAY
    m.at 8, :ACROBATICS
    m.at 12, :LEECHSEED
    m.at 16, :PROTECT
    m.at 20, :DRAGONBREATH
    m.at 24, :DRAGONDANCE
    m.at 28, :DRAGONPULSE
    m.at 32, :GRAVAPPLE
    m.at 36, :IRONDEFENSE
    m.at 40, :FLY
    m.at 44, :DRAGONRUSH
  end
  s.tutor_moves   :ACROBATICS, :AIRSLASH, :ATTRACT, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONDANCE, :DRAGONPULSE, :DUALWINGBEAT, :ENDURE, :ENERGYBALL, :FACADE, :FLY, :FOCUSENERGY, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :HEAVYSLAM, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :MIMIC, :NATURALGIFT, :OUTRAGE, :PROTECT, :REST, :RETURN, :ROUND, :SCARYFACE, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TOXIC, :UTURN, :TERABLAST
  s.egg_groups    :Grass, :Dragon
  s.hatch_steps   5120
  s.height        0.3
  s.weight        1.0
  s.color         :Green
  s.shape         :Winged
  s.category      "Apple Wing"
  s.pokedex_entry "It ate a sour apple, and that induced its evolution. In its cheeks, it stores an acid capable of causing chemical burns."
  s.generation    8
end

GameData::Species.define :APPLETUN do |s|
  s.name          "Appletun"
  s.types         :GRASS, :DRAGON
  s.base_stats    hp: 110, attack: 85, defense: 80, speed: 30, sp_atk: 100, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      170
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :RIPEN, :GLUTTONY
  s.hidden_abilities :THICKFAT
  s.moves do |m|
    m.at 0, :HEADBUTT
    m.at 1, :RECYCLE
    m.at 1, :WITHDRAW
    m.at 1, :ASTONISH
    m.at 1, :GROWTH
    m.at 1, :SWEETSCENT
    m.at 4, :CURSE
    m.at 8, :STOMP
    m.at 12, :LEECHSEED
    m.at 16, :PROTECT
    m.at 20, :BULLETSEED
    m.at 24, :RECOVER
    m.at 28, :APPLEACID
    m.at 32, :BODYSLAM
    m.at 36, :IRONDEFENSE
    m.at 40, :DRAGONPULSE
    m.at 44, :ENERGYBALL
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BODYPRESS, :BODYSLAM, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONPULSE, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GYROBALL, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :IRONDEFENSE, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TOXIC, :TERABLAST
  s.egg_groups    :Grass, :Dragon
  s.hatch_steps   5120
  s.height        0.4
  s.weight        13.0
  s.color         :Green
  s.shape         :Quadruped
  s.category      "Apple Nectar"
  s.pokedex_entry "Its body is covered in sweet nectar, and the skin on its back is especially yummy. Children used to have it as a snack."
  s.generation    8
end

