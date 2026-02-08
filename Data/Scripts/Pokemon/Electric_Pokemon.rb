#===============================================================================
# Shattered Crowns - Electric Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :PIKACHU do |s|
  s.name          "Pikachu"
  s.types         :ELECTRIC
  s.base_stats    hp: 35, attack: 55, defense: 40, speed: 90, sp_atk: 50, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      112
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :STATIC
  s.hidden_abilities :LIGHTNINGROD
  s.moves do |m|
    m.at 1, :PLAYNICE
    m.at 1, :SWEETKISS
    m.at 1, :NUZZLE
    m.at 1, :NASTYPLOT
    m.at 1, :CHARM
    m.at 1, :THUNDERSHOCK
    m.at 1, :TAILWHIP
    m.at 1, :GROWL
    m.at 1, :QUICKATTACK
    m.at 4, :THUNDERWAVE
    m.at 8, :DOUBLETEAM
    m.at 12, :ELECTROBALL
    m.at 16, :FEINT
    m.at 20, :SPARK
    m.at 24, :AGILITY
    m.at 28, :SLAM
    m.at 32, :DISCHARGE
    m.at 36, :THUNDERBOLT
    m.at 40, :LIGHTSCREEN
    m.at 44, :THUNDER
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DYNAMICPUNCH, :ECHOEDVOICE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENCORE, :ENDURE, :FACADE, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYDAY, :PLAYROUGH, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :REVERSAL, :RISINGVOLTAGE, :ROCKSMASH, :ROLLOUT, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :VOLTSWITCH, :VOLTTACKLE, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   2560
  s.height        0.4
  s.weight        6.0
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Forest
  s.category      "Mouse"
  s.pokedex_entry "It stores electricity in the electric sacs on its cheeks. When it releases pent-up energy in a burst, the electric power is equal to a lightning bolt."
  s.generation    1
  s.evolves_into  :RAICHU, :Item, THUNDERSTONE
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :LIGHTBALL
end

GameData::Species.define :RAICHU do |s|
  s.name          "Raichu"
  s.types         :ELECTRIC
  s.base_stats    hp: 60, attack: 90, defense: 55, speed: 110, sp_atk: 90, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      243
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :STATIC
  s.hidden_abilities :LIGHTNINGROD
  s.moves do |m|
    m.at 0, :THUNDERPUNCH
    m.at 1, :PLAYNICE
    m.at 1, :SWEETKISS
    m.at 1, :NUZZLE
    m.at 1, :NASTYPLOT
    m.at 1, :CHARM
    m.at 1, :THUNDERWAVE
    m.at 1, :DOUBLETEAM
    m.at 1, :ELECTROBALL
    m.at 1, :FEINT
    m.at 1, :SPARK
    m.at 1, :AGILITY
    m.at 1, :SLAM
    m.at 1, :DISCHARGE
    m.at 1, :THUNDERBOLT
    m.at 1, :LIGHTSCREEN
    m.at 1, :THUNDER
    m.at 1, :THUNDERSHOCK
    m.at 1, :TAILWHIP
    m.at 1, :GROWL
    m.at 1, :QUICKATTACK
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DYNAMICPUNCH, :ECHOEDVOICE, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENCORE, :ENDURE, :FACADE, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYDAY, :PLAYROUGH, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :REVERSAL, :RISINGVOLTAGE, :ROCKSMASH, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SPEEDSWAP, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   2560
  s.height        0.8
  s.weight        30.0
  s.color         :Yellow
  s.shape         :BipedalTail
  s.habitat       :Forest
  s.category      "Mouse"
  s.pokedex_entry "If it stores too much electricity, its behavior turns aggressive. To avoid this, it occasionally discharges excess energy and calms itself down."
  s.generation    1
  s.flags         :HasGenderedSprites
end

GameData::Species.define :MAGNEMITE do |s|
  s.name          "Magnemite"
  s.types         :ELECTRIC, :STEEL
  s.base_stats    hp: 25, attack: 35, defense: 70, speed: 45, sp_atk: 95, sp_def: 55
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      65
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :MAGNETPULL, :STURDY
  s.hidden_abilities :ANALYTIC
  s.moves do |m|
    m.at 1, :THUNDERSHOCK
    m.at 1, :TACKLE
    m.at 4, :SUPERSONIC
    m.at 8, :THUNDERWAVE
    m.at 12, :ELECTROBALL
    m.at 16, :GYROBALL
    m.at 20, :SPARK
    m.at 24, :SCREECH
    m.at 28, :MAGNETRISE
    m.at 32, :FLASHCANNON
    m.at 36, :DISCHARGE
    m.at 40, :METALSOUND
    m.at 44, :LIGHTSCREEN
    m.at 48, :LOCKON
    m.at 52, :ZAPCANNON
  end
  s.tutor_moves   :CHARGEBEAM, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :ELECTROBALL, :ELECTROWEB, :ENDURE, :EXPLOSION, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :GRAVITY, :GYROBALL, :HIDDENPOWER, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHUP, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :RISINGVOLTAGE, :ROLLOUT, :ROUND, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEELBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.3
  s.weight        6.0
  s.color         :Gray
  s.shape         :HeadArms
  s.habitat       :RoughTerrain
  s.category      "Magnet"
  s.pokedex_entry "The units at its sides are extremely powerful magnets. They generate enough magnetism to draw in iron objects from over 300 feet away."
  s.generation    1
  s.evolves_into  :MAGNETON, :Level, 30
  s.wild_item_uncommon :METALCOAT
end

GameData::Species.define :MAGNETON do |s|
  s.name          "Magneton"
  s.types         :ELECTRIC, :STEEL
  s.base_stats    hp: 50, attack: 60, defense: 95, speed: 70, sp_atk: 120, sp_def: 70
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      163
  s.catch_rate    60
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :MAGNETPULL, :STURDY
  s.hidden_abilities :ANALYTIC
  s.moves do |m|
    m.at 0, :TRIATTACK
    m.at 1, :ELECTRICTERRAIN
    m.at 1, :THUNDERSHOCK
    m.at 1, :TACKLE
    m.at 1, :SUPERSONIC
    m.at 1, :THUNDERWAVE
    m.at 12, :ELECTROBALL
    m.at 16, :GYROBALL
    m.at 20, :SPARK
    m.at 24, :SCREECH
    m.at 28, :MAGNETRISE
    m.at 34, :FLASHCANNON
    m.at 40, :DISCHARGE
    m.at 46, :METALSOUND
    m.at 52, :LIGHTSCREEN
    m.at 58, :LOCKON
    m.at 64, :ZAPCANNON
  end
  s.tutor_moves   :CHARGEBEAM, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :EXPLOSION, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :GYROBALL, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHUP, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :RISINGVOLTAGE, :ROLLOUT, :ROUND, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEELBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRIATTACK, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.0
  s.weight        60.0
  s.color         :Gray
  s.shape         :MultiBody
  s.habitat       :RoughTerrain
  s.category      "Magnet"
  s.pokedex_entry "It is actually three Magnemite linked by magnetism. It generates powerful radio waves that raise temperatures by 3.6 degrees F within a 3,300-foot radius."
  s.generation    1
  s.evolves_into  :MAGNEZONE, :Item, THUNDERSTONE
  s.evolves_into  :MAGNEZONE, :LocationFlag, Magnetic
  s.wild_item_uncommon :METALCOAT
end

GameData::Species.define :VOLTORB do |s|
  s.name          "Voltorb"
  s.types         :ELECTRIC
  s.base_stats    hp: 40, attack: 30, defense: 50, speed: 100, sp_atk: 55, sp_def: 55
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      66
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :SOUNDPROOF, :STATIC
  s.hidden_abilities :AFTERMATH
  s.moves do |m|
    m.at 1, :CHARGE
    m.at 1, :TACKLE
    m.at 4, :THUNDERSHOCK
    m.at 6, :EERIEIMPULSE
    m.at 9, :SPARK
    m.at 11, :ROLLOUT
    m.at 13, :SCREECH
    m.at 16, :CHARGEBEAM
    m.at 20, :SWIFT
    m.at 22, :ELECTROBALL
    m.at 26, :SELFDESTRUCT
    m.at 29, :LIGHTSCREEN
    m.at 34, :MAGNETRISE
    m.at 37, :DISCHARGE
    m.at 41, :EXPLOSION
    m.at 46, :GYROBALL
    m.at 48, :MIRRORCOAT
  end
  s.tutor_moves   :CHARGEBEAM, :CONFIDE, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :LIGHTSCREEN, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUCKERPUNCH, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.5
  s.weight        10.4
  s.color         :Red
  s.shape         :Head
  s.habitat       :Urban
  s.category      "Ball"
  s.pokedex_entry "It bears an uncanny and unexplained resemblance to a Poké Ball. Because it explodes at the slightest shock, even veteran trainers treat it with caution."
  s.generation    1
  s.evolves_into  :ELECTRODE, :Level, 30
end

GameData::Species.define :ELECTRODE do |s|
  s.name          "Electrode"
  s.types         :ELECTRIC
  s.base_stats    hp: 60, attack: 50, defense: 70, speed: 150, sp_atk: 80, sp_def: 80
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      172
  s.catch_rate    60
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :SOUNDPROOF, :STATIC
  s.hidden_abilities :AFTERMATH
  s.moves do |m|
    m.at 1, :MAGNETICFLUX
    m.at 1, :CHARGE
    m.at 1, :TACKLE
    m.at 1, :EERIEIMPULSE
    m.at 4, :THUNDERSHOCK
    m.at 6, :EERIEIMPULSE
    m.at 9, :SPARK
    m.at 11, :ROLLOUT
    m.at 13, :SCREECH
    m.at 16, :CHARGEBEAM
    m.at 20, :SWIFT
    m.at 22, :ELECTROBALL
    m.at 26, :SELFDESTRUCT
    m.at 29, :LIGHTSCREEN
    m.at 36, :MAGNETRISE
    m.at 41, :DISCHARGE
    m.at 47, :EXPLOSION
    m.at 54, :GYROBALL
    m.at 58, :MIRRORCOAT
  end
  s.tutor_moves   :CHARGEBEAM, :CONFIDE, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :LIGHTSCREEN, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUCKERPUNCH, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.2
  s.weight        66.6
  s.color         :Red
  s.shape         :Head
  s.habitat       :Urban
  s.category      "Ball"
  s.pokedex_entry "They appear in great numbers at electric power plants. Because they feed on electricity, they cause massive and chaotic blackouts in nearby cities."
  s.generation    1
end

GameData::Species.define :ELECTABUZZ do |s|
  s.name          "Electabuzz"
  s.types         :ELECTRIC
  s.base_stats    hp: 65, attack: 83, defense: 57, speed: 105, sp_atk: 95, sp_def: 85
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Medium
  s.base_exp      172
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :STATIC
  s.hidden_abilities :VITALSPIRIT
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 1, :THUNDERSHOCK
    m.at 1, :CHARGE
    m.at 12, :SWIFT
    m.at 16, :SHOCKWAVE
    m.at 20, :THUNDERWAVE
    m.at 24, :SCREECH
    m.at 28, :THUNDERPUNCH
    m.at 34, :DISCHARGE
    m.at 40, :LOWKICK
    m.at 46, :THUNDERBOLT
    m.at 52, :LIGHTSCREEN
    m.at 58, :THUNDER
    m.at 64, :GIGAIMPACT
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :COVET, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :IRONTAIL, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   6400
  s.height        1.1
  s.weight        30.0
  s.color         :Yellow
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Electric"
  s.pokedex_entry "When a storm approaches, it competes with others to scale heights that are likely to be stricken by lightning. Some towns use Electabuzz as lightning rods."
  s.generation    1
  s.evolves_into  :ELECTIVIRE, :TradeItem, ELECTIRIZER
  s.wild_item_uncommon :ELECTIRIZER
end

GameData::Species.define :JOLTEON do |s|
  s.name          "Jolteon"
  s.types         :ELECTRIC
  s.base_stats    hp: 65, attack: 65, defense: 60, speed: 130, sp_atk: 110, sp_def: 95
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      184
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :VOLTABSORB
  s.hidden_abilities :QUICKFEET
  s.moves do |m|
    m.at 0, :THUNDERSHOCK
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
    m.at 20, :THUNDERWAVE
    m.at 25, :DOUBLEKICK
    m.at 30, :THUNDERFANG
    m.at 35, :PINMISSILE
    m.at 40, :DISCHARGE
    m.at 45, :AGILITY
    m.at 50, :THUNDER
    m.at 55, :LASTRESORT
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BATONPASS, :BODYSLAM, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ELECTROBALL, :ENDURE, :FACADE, :FAKETEARS, :FLASH, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYDAY, :PINMISSILE, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :RISINGVOLTAGE, :ROAR, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :VOLTSWITCH, :WEATHERBALL, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   8960
  s.height        0.8
  s.weight        24.5
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Urban
  s.category      "Lightning"
  s.pokedex_entry "Its cells generate weak power that is amplified by its fur's static electricity to drop thunderbolts. The bristling fur is made of electrically charged needles."
  s.generation    1
end

GameData::Species.define :ZAPDOS do |s|
  s.name          "Zapdos"
  s.types         :ELECTRIC, :FLYING
  s.base_stats    hp: 90, attack: 90, defense: 85, speed: 100, sp_atk: 125, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           sp_attack: 3
  s.abilities     :PRESSURE
  s.hidden_abilities :STATIC
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :THUNDERWAVE
    m.at 5, :THUNDERSHOCK
    m.at 10, :LIGHTSCREEN
    m.at 15, :PLUCK
    m.at 20, :AGILITY
    m.at 25, :ANCIENTPOWER
    m.at 30, :CHARGE
    m.at 35, :DRILLPECK
    m.at 40, :ROOST
    m.at 45, :DISCHARGE
    m.at 50, :RAINDANCE
    m.at 55, :THUNDER
    m.at 60, :DETECT
    m.at 65, :MAGNETICFLUX
    m.at 70, :ZAPCANNON
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRCUTTER, :ANCIENTPOWER, :BATONPASS, :BRAVEBIRD, :CHARGEBEAM, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :EERIEIMPULSE, :ENDURE, :FACADE, :FLASH, :FLY, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEATWAVE, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :LASERFOCUS, :LIGHTSCREEN, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROAR, :ROCKSMASH, :ROOST, :ROUND, :SANDSTORM, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TWISTER, :UTURN, :VOLTSWITCH, :WEATHERBALL, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        1.6
  s.weight        52.6
  s.color         :Yellow
  s.shape         :Winged
  s.habitat       :Rare
  s.category      "Electric"
  s.pokedex_entry "Zapdos is a legendary bird Pokémon that has the ability to control electricity. It usually lives in thunderclouds. It gains power if it is stricken by lightning bolts."
  s.generation    1
  s.flags         :Legendary
end

GameData::Species.define :PICHU do |s|
  s.name          "Pichu"
  s.types         :ELECTRIC
  s.base_stats    hp: 20, attack: 40, defense: 15, speed: 60, sp_atk: 35, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      41
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :STATIC
  s.hidden_abilities :LIGHTNINGROD
  s.moves do |m|
    m.at 1, :THUNDERSHOCK
    m.at 1, :TAILWHIP
    m.at 4, :PLAYNICE
    m.at 8, :SWEETKISS
    m.at 12, :NUZZLE
    m.at 16, :NASTYPLOT
    m.at 20, :CHARM
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ELECTRICTERRAIN, :ELECTROWEB, :ENCORE, :ENDURE, :FACADE, :FLASH, :FLING, :FRUSTRATION, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :LIGHTSCREEN, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PLAYROUGH, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :REVERSAL, :ROLLOUT, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :CHARGE, :DISARMINGVOICE, :ELECTRICTERRAIN, :ENCORE, :FAKEOUT, :FLAIL, :PRESENT, :REVERSAL, :THUNDERPUNCH, :TICKLE, :WISH
  s.egg_groups    :Undiscovered
  s.hatch_steps   2560
  s.height        0.3
  s.weight        2.0
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Forest
  s.category      "Tiny Mouse"
  s.pokedex_entry "It is still inept at retaining electricity. When it is startled, it discharges power accidentally. It gets better at holding power as it grows older."
  s.generation    2
  s.evolves_into  :PIKACHU, :Happiness
  s.flags         :SOSForm_0
end

GameData::Species.define :MAREEP do |s|
  s.name          "Mareep"
  s.types         :ELECTRIC
  s.base_stats    hp: 55, attack: 40, defense: 40, speed: 35, sp_atk: 65, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      56
  s.catch_rate    235
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :STATIC
  s.hidden_abilities :PLUS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 4, :THUNDERWAVE
    m.at 8, :THUNDERSHOCK
    m.at 11, :COTTONSPORE
    m.at 15, :CHARGE
    m.at 18, :TAKEDOWN
    m.at 22, :ELECTROBALL
    m.at 25, :CONFUSERAY
    m.at 29, :POWERGEM
    m.at 32, :DISCHARGE
    m.at 36, :COTTONGUARD
    m.at 39, :CHARGEBEAM
    m.at 43, :LIGHTSCREEN
    m.at 46, :THUNDER
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ELECTROWEB, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :HEADBUTT, :HEALBELL, :HIDDENPOWER, :IRONTAIL, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :WILDCHARGE, :TERABLAST
  s.egg_moves     :AFTERYOU, :AGILITY, :BODYSLAM, :CHARGE, :EERIEIMPULSE, :ELECTRICTERRAIN, :FLATTER, :SANDATTACK, :SCREECH, :TAKEDOWN
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        7.8
  s.color         :White
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Wool"
  s.pokedex_entry "Its fluffy wool rubs together and builds a static charge. The more energy is charged, the more brightly the lightbulb at the tip of its tail glows."
  s.generation    2
  s.evolves_into  :FLAAFFY, :Level, 15
end

GameData::Species.define :FLAAFFY do |s|
  s.name          "Flaaffy"
  s.types         :ELECTRIC
  s.base_stats    hp: 70, attack: 55, defense: 55, speed: 45, sp_atk: 80, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      128
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :STATIC
  s.hidden_abilities :PLUS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :THUNDERWAVE
    m.at 1, :THUNDERSHOCK
    m.at 4, :THUNDERWAVE
    m.at 8, :THUNDERSHOCK
    m.at 11, :COTTONSPORE
    m.at 16, :CHARGE
    m.at 20, :TAKEDOWN
    m.at 25, :ELECTROBALL
    m.at 29, :CONFUSERAY
    m.at 34, :POWERGEM
    m.at 38, :DISCHARGE
    m.at 43, :COTTONGUARD
    m.at 47, :CHARGEBEAM
    m.at 52, :LIGHTSCREEN
    m.at 56, :THUNDER
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :ECHOEDVOICE, :ELECTROWEB, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :HEADBUTT, :HEALBELL, :HIDDENPOWER, :IRONTAIL, :LIGHTSCREEN, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        0.8
  s.weight        13.3
  s.color         :Pink
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Wool"
  s.pokedex_entry "Its fleece quality changes to generate strong static electricity with a small amount of wool. The bare, slick parts of its hide are shielded against electricity."
  s.generation    2
  s.evolves_into  :AMPHAROS, :Level, 30
end

GameData::Species.define :AMPHAROS do |s|
  s.name          "Ampharos"
  s.types         :ELECTRIC
  s.base_stats    hp: 90, attack: 75, defense: 85, speed: 55, sp_atk: 115, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      255
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :STATIC
  s.hidden_abilities :PLUS
  s.moves do |m|
    m.at 0, :THUNDERPUNCH
    m.at 1, :ZAPCANNON
    m.at 1, :MAGNETICFLUX
    m.at 1, :DRAGONPULSE
    m.at 1, :FIREPUNCH
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :THUNDERWAVE
    m.at 1, :THUNDERSHOCK
    m.at 4, :THUNDERWAVE
    m.at 8, :THUNDERSHOCK
    m.at 11, :COTTONSPORE
    m.at 16, :CHARGE
    m.at 20, :TAKEDOWN
    m.at 25, :ELECTROBALL
    m.at 29, :CONFUSERAY
    m.at 35, :POWERGEM
    m.at 40, :DISCHARGE
    m.at 46, :COTTONGUARD
    m.at 51, :CHARGEBEAM
    m.at 57, :LIGHTSCREEN
    m.at 62, :THUNDER
    m.at 65, :DRAGONPULSE
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :DYNAMICPUNCH, :ECHOEDVOICE, :ELECTROWEB, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEALBELL, :HIDDENPOWER, :HYPERBEAM, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        1.4
  s.weight        61.5
  s.color         :Yellow
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Light"
  s.pokedex_entry "It gives off so much light that it can be seen even from space. People in the old days used its light to send signals back and forth with others far away."
  s.generation    2
end

GameData::Species.define :ELEKID do |s|
  s.name          "Elekid"
  s.types         :ELECTRIC
  s.base_stats    hp: 45, attack: 63, defense: 37, speed: 95, sp_atk: 65, sp_def: 55
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Medium
  s.base_exp      72
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :STATIC
  s.hidden_abilities :VITALSPIRIT
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 4, :THUNDERSHOCK
    m.at 8, :CHARGE
    m.at 12, :SWIFT
    m.at 16, :SHOCKWAVE
    m.at 20, :THUNDERWAVE
    m.at 24, :SCREECH
    m.at 28, :THUNDERPUNCH
    m.at 32, :DISCHARGE
    m.at 36, :LOWKICK
    m.at 40, :THUNDERBOLT
    m.at 44, :LIGHTSCREEN
    m.at 48, :THUNDER
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :COVET, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :LIGHTSCREEN, :LOWKICK, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :CROSSCHOP, :DYNAMICPUNCH, :FEINT, :FIREPUNCH, :FOCUSPUNCH, :HAMMERARM, :ICEPUNCH
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        0.6
  s.weight        23.5
  s.color         :Yellow
  s.shape         :Bipedal
  s.habitat       :Grassland
  s.category      "Electric"
  s.pokedex_entry "If it touches metal and discharges the electricity it has stored in its body, an Elekid begins swinging its arms in circles to recharge itself."
  s.generation    2
  s.evolves_into  :ELECTABUZZ, :Level, 30
  s.wild_item_uncommon :ELECTIRIZER
end

GameData::Species.define :RAIKOU do |s|
  s.name          "Raikou"
  s.types         :ELECTRIC
  s.base_stats    hp: 90, attack: 85, defense: 75, speed: 115, sp_atk: 115, sp_def: 100
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           sp_attack: 1, speed: 2
  s.abilities     :PRESSURE
  s.hidden_abilities :INNERFOCUS
  s.moves do |m|
    m.at 1, :EXTREMESPEED
    m.at 1, :THUNDERSHOCK
    m.at 1, :LEER
    m.at 1, :CHARGE
    m.at 1, :QUICKATTACK
    m.at 6, :SPARK
    m.at 12, :BITE
    m.at 18, :CALMMIND
    m.at 24, :ROAR
    m.at 30, :THUNDERFANG
    m.at 36, :HOWL
    m.at 42, :CRUNCH
    m.at 48, :EXTRASENSORY
    m.at 54, :DISCHARGE
    m.at 60, :REFLECT
    m.at 66, :RAINDANCE
    m.at 72, :THUNDER
    m.at 78, :ZAPCANNON
  end
  s.tutor_moves   :AGILITY, :AURASPHERE, :BODYSLAM, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :CRUNCH, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EERIEIMPULSE, :ELECTRICTERRAIN, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHUP, :QUASH, :RAINDANCE, :REFLECT, :REST, :RETURN, :RISINGVOLTAGE, :ROAR, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SANDSTORM, :SCALD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNARL, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :VOLTSWITCH, :WEATHERBALL, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        1.9
  s.weight        178.0
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Thunder"
  s.pokedex_entry "Raikou embodies the speed of lightning. Its roars send shock waves shuddering through the air and ground as if lightning bolts were crashing down."
  s.generation    2
  s.flags         :Legendary
end

GameData::Species.define :ELECTRIKE do |s|
  s.name          "Electrike"
  s.types         :ELECTRIC
  s.base_stats    hp: 40, attack: 45, defense: 40, speed: 65, sp_atk: 65, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      59
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :STATIC, :LIGHTNINGROD
  s.hidden_abilities :MINUS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :THUNDERWAVE
    m.at 4, :LEER
    m.at 8, :HOWL
    m.at 12, :QUICKATTACK
    m.at 16, :SHOCKWAVE
    m.at 20, :BITE
    m.at 24, :THUNDERFANG
    m.at 28, :ROAR
    m.at 32, :DISCHARGE
    m.at 36, :CHARGE
    m.at 40, :WILDCHARGE
    m.at 44, :THUNDER
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CRUNCH, :DOUBLEEDGE, :DOUBLETEAM, :EERIEIMPULSE, :ELECTROBALL, :ENDURE, :FACADE, :FIREFANG, :FLAMETHROWER, :FLASH, :FRUSTRATION, :HEADBUTT, :HIDDENPOWER, :ICEFANG, :IRONTAIL, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROAR, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNARL, :SNORE, :STRENGTH, :SUBSTITUTE, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :CRUNCH, :CURSE, :DISCHARGE, :EERIEIMPULSE, :ELECTROBALL, :FIREFANG, :HEADBUTT, :ICEFANG, :SPARK, :SWIFT, :SWITCHEROO, :THUNDERFANG, :UPROAR
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        15.2
  s.color         :Green
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Lightning"
  s.pokedex_entry "It generates electricity using friction from the atmosphere. In seasons with especially arid air, its entire body blazes with violent showers of sparks."
  s.generation    3
  s.evolves_into  :MANECTRIC, :Level, 26
end

GameData::Species.define :MANECTRIC do |s|
  s.name          "Manectric"
  s.types         :ELECTRIC
  s.base_stats    hp: 70, attack: 75, defense: 60, speed: 105, sp_atk: 105, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      166
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :STATIC, :LIGHTNINGROD
  s.hidden_abilities :MINUS
  s.moves do |m|
    m.at 1, :FIREFANG
    m.at 1, :TACKLE
    m.at 1, :THUNDERWAVE
    m.at 1, :LEER
    m.at 1, :HOWL
    m.at 12, :QUICKATTACK
    m.at 16, :SHOCKWAVE
    m.at 20, :BITE
    m.at 24, :THUNDERFANG
    m.at 30, :ROAR
    m.at 36, :DISCHARGE
    m.at 42, :CHARGE
    m.at 48, :WILDCHARGE
    m.at 54, :THUNDER
    m.at 60, :ELECTRICTERRAIN
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CRUNCH, :DOUBLEEDGE, :DOUBLETEAM, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ENDURE, :FACADE, :FIREFANG, :FLAMETHROWER, :FLASH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEFANG, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :OVERHEAT, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROAR, :ROUND, :SCARYFACE, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNARL, :SNORE, :STRENGTH, :SUBSTITUTE, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.5
  s.weight        40.2
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Discharge"
  s.pokedex_entry "Because lightning falls in their vicinities, Manectric were thought to have been born from lightning. In battle, they create thunderclouds."
  s.generation    3
end

GameData::Species.define :PLUSLE do |s|
  s.name          "Plusle"
  s.types         :ELECTRIC
  s.base_stats    hp: 60, attack: 50, defense: 40, speed: 95, sp_atk: 85, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      142
  s.catch_rate    200
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :PLUS
  s.hidden_abilities :LIGHTNINGROD
  s.moves do |m|
    m.at 1, :NUZZLE
    m.at 1, :PLAYNICE
    m.at 1, :GROWL
    m.at 1, :THUNDERWAVE
    m.at 1, :QUICKATTACK
    m.at 4, :HELPINGHAND
    m.at 7, :SPARK
    m.at 10, :ENCORE
    m.at 13, :SKILLSWAP
    m.at 16, :SWIFT
    m.at 19, :ELECTROBALL
    m.at 22, :COPYCAT
    m.at 25, :CHARM
    m.at 28, :CHARGE
    m.at 31, :DISCHARGE
    m.at 34, :BATONPASS
    m.at 37, :AGILITY
    m.at 40, :LASTRESORT
    m.at 43, :THUNDER
    m.at 46, :NASTYPLOT
    m.at 49, :ENTRAINMENT
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :ECHOEDVOICE, :ELECTROWEB, :ENDURE, :FACADE, :FLASH, :FLING, :FRUSTRATION, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :LASTRESORT, :LIGHTSCREEN, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :CHARM, :DISCHARGE, :FAKETEARS, :SING, :SWEETKISS, :TEARFULLOOK, :WISH
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.4
  s.weight        4.2
  s.color         :Yellow
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Cheering"
  s.pokedex_entry "It has the trait of cheering on its fellow Pokémon. By shorting out the electricity it releases from its paws, it creates pom-poms for cheering."
  s.generation    3
  s.wild_item_uncommon :CELLBATTERY
end

GameData::Species.define :MINUN do |s|
  s.name          "Minun"
  s.types         :ELECTRIC
  s.base_stats    hp: 60, attack: 40, defense: 50, speed: 95, sp_atk: 75, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      142
  s.catch_rate    200
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :MINUS
  s.hidden_abilities :VOLTABSORB
  s.moves do |m|
    m.at 1, :NUZZLE
    m.at 1, :PLAYNICE
    m.at 1, :GROWL
    m.at 1, :THUNDERWAVE
    m.at 1, :QUICKATTACK
    m.at 4, :HELPINGHAND
    m.at 7, :SPARK
    m.at 10, :ENCORE
    m.at 13, :SWITCHEROO
    m.at 16, :SWIFT
    m.at 19, :ELECTROBALL
    m.at 22, :COPYCAT
    m.at 25, :FAKETEARS
    m.at 28, :CHARGE
    m.at 31, :DISCHARGE
    m.at 34, :BATONPASS
    m.at 37, :AGILITY
    m.at 40, :LASTRESORT
    m.at 43, :THUNDER
    m.at 46, :NASTYPLOT
    m.at 49, :ENTRAINMENT
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :ECHOEDVOICE, :ELECTROWEB, :ENDURE, :FACADE, :FLASH, :FLING, :FRUSTRATION, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :LASTRESORT, :LIGHTSCREEN, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :CHARM, :DISCHARGE, :FAKETEARS, :SING, :SWEETKISS, :TEARFULLOOK, :WISH
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.4
  s.weight        4.2
  s.color         :Yellow
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Cheering"
  s.pokedex_entry "At a meeting of Pokémon academics, it was announced that simultaneous exposure to electricity from a Plusle and Minun will promote circulation and boost vitality."
  s.generation    3
  s.wild_item_uncommon :CELLBATTERY
end

GameData::Species.define :SHINX do |s|
  s.name          "Shinx"
  s.types         :ELECTRIC
  s.base_stats    hp: 45, attack: 65, defense: 34, speed: 45, sp_atk: 40, sp_def: 34
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      53
  s.catch_rate    235
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :RIVALRY, :INTIMIDATE
  s.hidden_abilities :GUTS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 4, :THUNDERSHOCK
    m.at 8, :CHARGE
    m.at 12, :BITE
    m.at 16, :SPARK
    m.at 20, :ROAR
    m.at 24, :VOLTSWITCH
    m.at 28, :SCARYFACE
    m.at 32, :THUNDERWAVE
    m.at 36, :CRUNCH
    m.at 40, :DISCHARGE
    m.at 44, :SWAGGER
    m.at 48, :WILDCHARGE
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CRUNCH, :DOUBLETEAM, :EERIEIMPULSE, :ELECTROBALL, :ENDURE, :FACADE, :FAKETEARS, :FIREFANG, :FLASH, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :ICEFANG, :IRONTAIL, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROAR, :ROUND, :SCARYFACE, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNARL, :SNORE, :STRENGTH, :SUBSTITUTE, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :BABYDOLLEYES, :DOUBLEKICK, :EERIEIMPULSE, :FAKETEARS, :FIREFANG, :HELPINGHAND, :HOWL, :ICEFANG, :NIGHTSLASH, :QUICKATTACK, :SHOCKWAVE, :SWIFT, :TAKEDOWN, :THUNDERFANG
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.5
  s.weight        9.5
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Flash"
  s.pokedex_entry "All of its fur dazzles if danger is sensed. It flees while the foe is momentarily blinded."
  s.generation    4
  s.evolves_into  :LUXIO, :Level, 15
  s.flags         :HasGenderedSprites
end

GameData::Species.define :LUXIO do |s|
  s.name          "Luxio"
  s.types         :ELECTRIC
  s.base_stats    hp: 60, attack: 85, defense: 49, speed: 60, sp_atk: 60, sp_def: 49
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      127
  s.catch_rate    120
  s.happiness     100
  s.evs           attack: 2
  s.abilities     :RIVALRY, :INTIMIDATE
  s.hidden_abilities :GUTS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :THUNDERSHOCK
    m.at 1, :CHARGE
    m.at 12, :BITE
    m.at 18, :SPARK
    m.at 24, :ROAR
    m.at 31, :VOLTSWITCH
    m.at 36, :SCARYFACE
    m.at 42, :THUNDERWAVE
    m.at 48, :CRUNCH
    m.at 54, :DISCHARGE
    m.at 60, :SWAGGER
    m.at 68, :WILDCHARGE
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CRUNCH, :DOUBLETEAM, :EERIEIMPULSE, :ELECTROBALL, :ENDURE, :FACADE, :FAKETEARS, :FIREFANG, :FLASH, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :ICEFANG, :IRONTAIL, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROAR, :ROUND, :SCARYFACE, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNARL, :SNORE, :STRENGTH, :SUBSTITUTE, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.9
  s.weight        30.5
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Spark"
  s.pokedex_entry "Its claws loose electricity with enough amperage to cause fainting. They live in small groups."
  s.generation    4
  s.evolves_into  :LUXRAY, :Level, 30
  s.flags         :HasGenderedSprites
end

GameData::Species.define :LUXRAY do |s|
  s.name          "Luxray"
  s.types         :ELECTRIC
  s.base_stats    hp: 80, attack: 120, defense: 79, speed: 70, sp_atk: 95, sp_def: 79
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      262
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :RIVALRY, :INTIMIDATE
  s.hidden_abilities :GUTS
  s.moves do |m|
    m.at 1, :ELECTRICTERRAIN
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :THUNDERSHOCK
    m.at 1, :CHARGE
    m.at 12, :BITE
    m.at 18, :SPARK
    m.at 24, :ROAR
    m.at 33, :VOLTSWITCH
    m.at 40, :SCARYFACE
    m.at 48, :THUNDERWAVE
    m.at 56, :CRUNCH
    m.at 64, :DISCHARGE
    m.at 72, :SWAGGER
    m.at 80, :WILDCHARGE
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CRUNCH, :DOUBLETEAM, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ENDURE, :FACADE, :FAKETEARS, :FIREFANG, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEFANG, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROAR, :ROUND, :SCARYFACE, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNARL, :SNORE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWIFT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.4
  s.weight        42.0
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Gleam Eyes"
  s.pokedex_entry "It has eyes that can see through anything. It spots and captures prey hiding behind objects."
  s.generation    4
  s.flags         :HasGenderedSprites
end

GameData::Species.define :PACHIRISU do |s|
  s.name          "Pachirisu"
  s.types         :ELECTRIC
  s.base_stats    hp: 60, attack: 45, defense: 70, speed: 95, sp_atk: 45, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      142
  s.catch_rate    200
  s.happiness     100
  s.evs           speed: 1
  s.abilities     :RUNAWAY, :PICKUP
  s.hidden_abilities :VOLTABSORB
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :BABYDOLLEYES
    m.at 5, :QUICKATTACK
    m.at 9, :CHARM
    m.at 13, :SPARK
    m.at 17, :ENDURE
    m.at 19, :NUZZLE
    m.at 21, :SWIFT
    m.at 25, :ELECTROBALL
    m.at 29, :SWEETKISS
    m.at 33, :THUNDERWAVE
    m.at 37, :SUPERFANG
    m.at 41, :DISCHARGE
    m.at 45, :LASTRESORT
    m.at 49, :THUNDER
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :ECHOEDVOICE, :ELECTROWEB, :ENDURE, :FACADE, :FLASH, :FLING, :FRUSTRATION, :GRASSKNOT, :GUNKSHOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUPERFANG, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :UTURN, :VOLTSWITCH, :TERABLAST
  s.egg_moves     :BABYDOLLEYES, :BITE, :CHARGE, :COVET, :DEFENSECURL, :FAKETEARS, :FLAIL, :FLATTER, :FOLLOWME, :ROLLOUT, :TAILWHIP
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   2560
  s.height        0.4
  s.weight        3.9
  s.color         :White
  s.shape         :Quadruped
  s.category      "EleSquirrel"
  s.pokedex_entry "It makes fur balls that crackle with static electricity. It stores them with berries in tree holes."
  s.generation    4
  s.flags         :HasGenderedSprites
end

GameData::Species.define :MAGNEZONE do |s|
  s.name          "Magnezone"
  s.types         :ELECTRIC, :STEEL
  s.base_stats    hp: 70, attack: 70, defense: 115, speed: 60, sp_atk: 130, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      268
  s.catch_rate    30
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :MAGNETPULL, :STURDY
  s.hidden_abilities :ANALYTIC
  s.moves do |m|
    m.at 1, :TRIATTACK
    m.at 1, :ELECTRICTERRAIN
    m.at 1, :MAGNETICFLUX
    m.at 1, :MIRRORCOAT
    m.at 1, :THUNDERSHOCK
    m.at 1, :TACKLE
    m.at 1, :SUPERSONIC
    m.at 1, :THUNDERWAVE
    m.at 12, :ELECTROBALL
    m.at 16, :GYROBALL
    m.at 20, :SPARK
    m.at 24, :SCREECH
    m.at 28, :MAGNETRISE
    m.at 34, :FLASHCANNON
    m.at 40, :DISCHARGE
    m.at 46, :METALSOUND
    m.at 52, :LIGHTSCREEN
    m.at 58, :LOCKON
    m.at 64, :ZAPCANNON
  end
  s.tutor_moves   :ALLYSWITCH, :BODYPRESS, :CHARGEBEAM, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :EXPLOSION, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :GYROBALL, :HEAVYSLAM, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :LIGHTSCREEN, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHUP, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :RISINGVOLTAGE, :ROLLOUT, :ROUND, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEELBEAM, :STEELROLLER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRIATTACK, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.2
  s.weight        180.0
  s.color         :Gray
  s.shape         :HeadArms
  s.category      "Magnet Area"
  s.pokedex_entry "It evolved from exposure to a special magnetic field. Three units generate magnetism."
  s.generation    4
  s.wild_item_uncommon :METALCOAT
end

GameData::Species.define :ELECTIVIRE do |s|
  s.name          "Electivire"
  s.types         :ELECTRIC
  s.base_stats    hp: 75, attack: 123, defense: 67, speed: 95, sp_atk: 95, sp_def: 85
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Medium
  s.base_exp      270
  s.catch_rate    30
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :MOTORDRIVE
  s.hidden_abilities :VITALSPIRIT
  s.moves do |m|
    m.at 1, :WILDCHARGE
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 1, :THUNDERSHOCK
    m.at 1, :CHARGE
    m.at 12, :SWIFT
    m.at 16, :SHOCKWAVE
    m.at 20, :THUNDERWAVE
    m.at 24, :SCREECH
    m.at 28, :THUNDERPUNCH
    m.at 34, :DISCHARGE
    m.at 40, :LOWKICK
    m.at 46, :THUNDERBOLT
    m.at 52, :LIGHTSCREEN
    m.at 58, :THUNDER
    m.at 64, :GIGAIMPACT
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :COVET, :DARKESTLARIAT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :EARTHQUAKE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :IRONTAIL, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :UPROAR, :VOLTSWITCH, :WEATHERBALL, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   6400
  s.height        1.8
  s.weight        138.6
  s.color         :Yellow
  s.shape         :BipedalTail
  s.category      "Thunderbolt"
  s.pokedex_entry "It pushes the tips of its two tails against the foe, then lets loose with over 20,000 volts of power."
  s.generation    4
  s.wild_item_uncommon :ELECTIRIZER
end

GameData::Species.define :ROTOM do |s|
  s.name          "Rotom"
  s.types         :ELECTRIC, :GHOST
  s.base_stats    hp: 50, attack: 50, defense: 77, speed: 91, sp_atk: 95, sp_def: 77
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      154
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1, speed: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :DOUBLETEAM
    m.at 5, :THUNDERSHOCK
    m.at 10, :CONFUSERAY
    m.at 15, :CHARGE
    m.at 20, :ELECTROBALL
    m.at 25, :THUNDERWAVE
    m.at 30, :SHOCKWAVE
    m.at 35, :HEX
    m.at 40, :SUBSTITUTE
    m.at 45, :TRICK
    m.at 50, :DISCHARGE
    m.at 55, :UPROAR
  end
  s.tutor_moves   :ALLYSWITCH, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :HELPINGHAND, :HEX, :HIDDENPOWER, :HYPERVOICE, :LIGHTSCREEN, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :POLTERGEIST, :PROTECT, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICK, :UPROAR, :VOLTSWITCH, :WILLOWISP, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.3
  s.weight        0.3
  s.color         :Red
  s.shape         :Head
  s.category      "Plasma"
  s.pokedex_entry "Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc."
  s.generation    4
end

GameData::Species.define :BLITZLE do |s|
  s.name          "Blitzle"
  s.types         :ELECTRIC
  s.base_stats    hp: 45, attack: 60, defense: 32, speed: 76, sp_atk: 50, sp_def: 32
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      59
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :LIGHTNINGROD, :MOTORDRIVE
  s.hidden_abilities :SAPSIPPER
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 4, :TAILWHIP
    m.at 8, :CHARGE
    m.at 11, :SHOCKWAVE
    m.at 15, :THUNDERWAVE
    m.at 18, :FLAMECHARGE
    m.at 22, :PURSUIT
    m.at 25, :SPARK
    m.at 29, :STOMP
    m.at 32, :DISCHARGE
    m.at 36, :AGILITY
    m.at 39, :WILDCHARGE
    m.at 43, :THRASH
  end
  s.tutor_moves   :ATTRACT, :BOUNCE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DOUBLETEAM, :ENDURE, :FACADE, :FLAMECHARGE, :FLASH, :FRUSTRATION, :HIDDENPOWER, :LIGHTSCREEN, :LOWKICK, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :DOUBLEEDGE, :DOUBLEKICK, :ENDURE, :FEINT, :MEFIRST, :RAGE, :SANDATTACK, :SCREECH, :SHOCKWAVE, :SNATCH, :TAKEDOWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.8
  s.weight        29.8
  s.color         :Black
  s.shape         :Quadruped
  s.category      "Electrified"
  s.pokedex_entry "When thunderclouds cover the sky, it will appear. It can catch lightning with its mane and store the electricity."
  s.generation    5
  s.evolves_into  :ZEBSTRIKA, :Level, 27
end

GameData::Species.define :ZEBSTRIKA do |s|
  s.name          "Zebstrika"
  s.types         :ELECTRIC
  s.base_stats    hp: 75, attack: 100, defense: 63, speed: 116, sp_atk: 80, sp_def: 63
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      174
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :LIGHTNINGROD, :MOTORDRIVE
  s.hidden_abilities :SAPSIPPER
  s.moves do |m|
    m.at 1, :IONDELUGE
    m.at 1, :QUICKATTACK
    m.at 1, :TAILWHIP
    m.at 1, :CHARGE
    m.at 1, :THUNDERWAVE
    m.at 4, :TAILWHIP
    m.at 8, :CHARGE
    m.at 11, :SHOCKWAVE
    m.at 15, :THUNDERWAVE
    m.at 18, :FLAMECHARGE
    m.at 22, :PURSUIT
    m.at 25, :SPARK
    m.at 31, :STOMP
    m.at 36, :DISCHARGE
    m.at 42, :AGILITY
    m.at 47, :WILDCHARGE
    m.at 53, :THRASH
    m.at 58, :IONDELUGE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BOUNCE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DOUBLETEAM, :ENDURE, :FACADE, :FLAMECHARGE, :FLASH, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :LASERFOCUS, :LIGHTSCREEN, :LOWKICK, :MAGNETRISE, :MIMIC, :NATURALGIFT, :OVERHEAT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.6
  s.weight        79.5
  s.color         :Black
  s.shape         :Quadruped
  s.category      "Thunderbolt"
  s.pokedex_entry "This ill-tempered Pokémon is dangerous because when it's angry, it shoots lightning from its mane in all directions."
  s.generation    5
end

GameData::Species.define :EMOLGA do |s|
  s.name          "Emolga"
  s.types         :ELECTRIC, :FLYING
  s.base_stats    hp: 55, attack: 75, defense: 60, speed: 103, sp_atk: 75, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      150
  s.catch_rate    200
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :STATIC
  s.hidden_abilities :MOTORDRIVE
  s.moves do |m|
    m.at 1, :NUZZLE
    m.at 1, :TAILWHIP
    m.at 5, :DOUBLETEAM
    m.at 10, :QUICKATTACK
    m.at 15, :THUNDERSHOCK
    m.at 20, :CHARGE
    m.at 25, :ACROBATICS
    m.at 30, :SPARK
    m.at 35, :ENCORE
    m.at 40, :VOLTSWITCH
    m.at 45, :LIGHTSCREEN
    m.at 50, :DISCHARGE
    m.at 55, :AGILITY
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRSLASH, :ATTRACT, :BATONPASS, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :CUT, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :EERIEIMPULSE, :ELECTROBALL, :ELECTROWEB, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FRUSTRATION, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROOST, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPEEDSWAP, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :UTURN, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :ASTONISH, :COVET, :DEFOG, :ROOST, :SHOCKWAVE, :TICKLE
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        5.0
  s.color         :White
  s.shape         :Quadruped
  s.category      "Sky Squirrel"
  s.pokedex_entry "They live on treetops and glide using the inside of a cape-like membrane while discharging electricity."
  s.generation    5
end

GameData::Species.define :TYNAMO do |s|
  s.name          "Tynamo"
  s.types         :ELECTRIC
  s.base_stats    hp: 35, attack: 55, defense: 40, speed: 60, sp_atk: 45, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      55
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :THUNDERWAVE
    m.at 1, :SPARK
    m.at 1, :CHARGEBEAM
  end
  s.tutor_moves   :CHARGEBEAM, :MAGNETRISE, :THUNDERWAVE, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.2
  s.weight        0.3
  s.color         :White
  s.shape         :Finned
  s.category      "EleFish"
  s.pokedex_entry "These Pokémon move in schools. They have an electricity-generating organ, so they discharge electricity if in danger."
  s.generation    5
  s.evolves_into  :EELEKTRIK, :Level, 39
end

GameData::Species.define :EELEKTRIK do |s|
  s.name          "Eelektrik"
  s.types         :ELECTRIC
  s.base_stats    hp: 65, attack: 85, defense: 70, speed: 40, sp_atk: 75, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      142
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 0, :CRUNCH
    m.at 1, :HEADBUTT
    m.at 1, :THUNDERWAVE
    m.at 1, :SPARK
    m.at 1, :CHARGEBEAM
    m.at 9, :BIND
    m.at 19, :ACID
    m.at 29, :DISCHARGE
    m.at 44, :THUNDERBOLT
    m.at 49, :ACIDSPRAY
    m.at 54, :COIL
    m.at 59, :WILDCHARGE
    m.at 64, :GASTROACID
    m.at 69, :ZAPCANNON
    m.at 74, :THRASH
  end
  s.tutor_moves   :ACROBATICS, :AQUATAIL, :ATTRACT, :BIND, :BOUNCE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DOUBLETEAM, :ENDURE, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :HIDDENPOWER, :IRONTAIL, :KNOCKOFF, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUPERFANG, :SWAGGER, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :UTURN, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        1.2
  s.weight        22.0
  s.color         :Blue
  s.shape         :Finned
  s.category      "EleFish"
  s.pokedex_entry "These Pokémon have a big appetite. When they spot their prey, they attack it and paralyze it with electricity."
  s.generation    5
  s.evolves_into  :EELEKTROSS, :Item, THUNDERSTONE
end

GameData::Species.define :EELEKTROSS do |s|
  s.name          "Eelektross"
  s.types         :ELECTRIC
  s.base_stats    hp: 85, attack: 115, defense: 80, speed: 50, sp_atk: 105, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      258
  s.catch_rate    30
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :CRUNCH
    m.at 1, :THRASH
    m.at 1, :ZAPCANNON
    m.at 1, :GASTROACID
    m.at 1, :COIL
    m.at 1, :IONDELUGE
    m.at 1, :CRUSHCLAW
    m.at 1, :HEADBUTT
    m.at 1, :ACID
    m.at 1, :DISCHARGE
  end
  s.tutor_moves   :ACROBATICS, :AQUATAIL, :ATTRACT, :BIND, :BOUNCE, :BRICKBREAK, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CUT, :DOUBLETEAM, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :DRAINPUNCH, :ENDURE, :FACADE, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLASHCANNON, :FOCUSPUNCH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONTAIL, :KNOCKOFF, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :NATURALGIFT, :OUTRAGE, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUPERFANG, :SUPERPOWER, :SWAGGER, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :UTURN, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        2.1
  s.weight        80.5
  s.color         :Blue
  s.shape         :Finned
  s.category      "EleFish"
  s.pokedex_entry "With their sucker mouths, they suck in prey. Then they use their fangs to shock the prey with electricity."
  s.generation    5
end

GameData::Species.define :THUNDURUS do |s|
  s.name          "Thundurus"
  s.types         :ELECTRIC, :FLYING
  s.base_stats    hp: 79, attack: 115, defense: 70, speed: 111, sp_atk: 125, sp_def: 80
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     90
  s.evs           attack: 3
  s.abilities     :PRANKSTER
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :THUNDERSHOCK
    m.at 5, :LEER
    m.at 10, :SWAGGER
    m.at 15, :BITE
    m.at 20, :SHOCKWAVE
    m.at 25, :AGILITY
    m.at 30, :CHARGE
    m.at 35, :VOLTSWITCH
    m.at 40, :CRUNCH
    m.at 45, :DISCHARGE
    m.at 50, :UPROAR
    m.at 55, :HAMMERARM
    m.at 60, :RAINDANCE
    m.at 65, :THUNDER
    m.at 70, :THRASH
  end
  s.tutor_moves   :AGILITY, :ASSURANCE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULKUP, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CRUNCH, :DARKPULSE, :DEFOG, :DOUBLETEAM, :EERIEIMPULSE, :ELECTROBALL, :ELECTROWEB, :EMBARGO, :ENDURE, :FACADE, :FLASHCANNON, :FLING, :FLY, :FOCUSBLAST, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LASHOUT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :REVENGE, :RISINGVOLTAGE, :ROCKSMASH, :ROLEPLAY, :ROUND, :SCARYFACE, :SECRETPOWER, :SHOCKWAVE, :SKYDROP, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SMARTSTRIKE, :SNORE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TOXIC, :UPROAR, :UTURN, :VOLTSWITCH, :WEATHERBALL, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.5
  s.weight        61.0
  s.color         :Blue
  s.shape         :HeadArms
  s.category      "Bolt Strike"
  s.pokedex_entry "The spikes on its tail discharge immense bolts of lightning. It flies around the Unova region firing off lightning bolts."
  s.generation    5
  s.flags         :Legendary
end

GameData::Species.define :HELIOPTILE do |s|
  s.name          "Helioptile"
  s.types         :ELECTRIC, :NORMAL
  s.base_stats    hp: 44, attack: 38, defense: 33, speed: 70, sp_atk: 61, sp_def: 43
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      58
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :DRYSKIN, :SANDVEIL
  s.hidden_abilities :SOLARPOWER
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :TAILWHIP
    m.at 4, :POUND
    m.at 8, :THUNDERSHOCK
    m.at 12, :QUICKATTACK
    m.at 16, :CHARGE
    m.at 20, :BULLDOZE
    m.at 24, :VOLTSWITCH
    m.at 28, :PARABOLICCHARGE
    m.at 32, :THUNDERWAVE
    m.at 36, :THUNDERBOLT
    m.at 40, :ELECTRIFY
    m.at 44, :THUNDER
  end
  s.tutor_moves   :AGILITY, :ALLYSWITCH, :ATTRACT, :BULLDOZE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAGONTAIL, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GRASSKNOT, :HIDDENPOWER, :IRONTAIL, :LIGHTSCREEN, :LOWSWEEP, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SCALESHOT, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :UTURN, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :DRAGONRUSH, :DRAGONTAIL, :GLARE
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   5120
  s.height        0.5
  s.weight        6.0
  s.color         :Yellow
  s.shape         :BipedalTail
  s.category      "Generator"
  s.pokedex_entry "They make their home in deserts. They can generate their energy from basking in the sun, so eating food is not a requirement."
  s.generation    6
  s.evolves_into  :HELIOLISK, :Item, SUNSTONE
end

GameData::Species.define :HELIOLISK do |s|
  s.name          "Heliolisk"
  s.types         :ELECTRIC, :NORMAL
  s.base_stats    hp: 62, attack: 55, defense: 52, speed: 109, sp_atk: 109, sp_def: 94
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_attack: 1, speed: 1
  s.abilities     :DRYSKIN, :SANDVEIL
  s.hidden_abilities :SOLARPOWER
  s.moves do |m|
    m.at 1, :EERIEIMPULSE
    m.at 1, :DISCHARGE
    m.at 1, :QUICKATTACK
    m.at 1, :CHARGE
    m.at 1, :BULLDOZE
    m.at 1, :VOLTSWITCH
    m.at 1, :PARABOLICCHARGE
    m.at 1, :THUNDERWAVE
    m.at 1, :THUNDERBOLT
    m.at 1, :ELECTRIFY
    m.at 1, :THUNDER
    m.at 1, :MUDSLAP
    m.at 1, :TAILWHIP
    m.at 1, :POUND
    m.at 1, :THUNDERSHOCK
  end
  s.tutor_moves   :AGILITY, :ALLYSWITCH, :ATTRACT, :BREAKINGSWIPE, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAGONPULSE, :DRAGONTAIL, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IRONTAIL, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SCALESHOT, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :UTURN, :VOLTSWITCH, :WEATHERBALL, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   5120
  s.height        1.0
  s.weight        21.0
  s.color         :Yellow
  s.shape         :BipedalTail
  s.category      "Generator"
  s.pokedex_entry "They flare their frills and generate energy. A single Heliolisk can generate sufficient electricity to power a skyscraper."
  s.generation    6
end

GameData::Species.define :DEDENNE do |s|
  s.name          "Dedenne"
  s.types         :ELECTRIC, :FAIRY
  s.base_stats    hp: 67, attack: 58, defense: 57, speed: 101, sp_atk: 81, sp_def: 67
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      151
  s.catch_rate    180
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :CHEEKPOUCH, :PICKUP
  s.hidden_abilities :PLUS
  s.moves do |m|
    m.at 1, :NUZZLE
    m.at 1, :TAILWHIP
    m.at 5, :TACKLE
    m.at 10, :CHARGE
    m.at 15, :THUNDERSHOCK
    m.at 20, :CHARM
    m.at 25, :PARABOLICCHARGE
    m.at 30, :VOLTSWITCH
    m.at 35, :REST
    m.at 35, :SNORE
    m.at 40, :DISCHARGE
    m.at 45, :PLAYROUGH
    m.at 50, :SUPERFANG
    m.at 55, :ENTRAINMENT
    m.at 60, :THUNDER
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :ATTRACT, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :CUT, :DAZZLINGGLEAM, :DIG, :DOUBLETEAM, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FLASH, :FLING, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :LASTRESORT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PLAYROUGH, :PROTECT, :RAINDANCE, :RECYCLE, :REST, :RETALIATE, :RETURN, :RISINGVOLTAGE, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :UTURN, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :COVET, :MAGNETRISE, :TEARFULLOOK
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   5120
  s.height        0.2
  s.weight        2.2
  s.color         :Yellow
  s.shape         :BipedalTail
  s.category      "Antenna"
  s.pokedex_entry "Its whiskers serve as antennas. By sending and receiving electrical waves, it can communicate with others over vast distances."
  s.generation    6
end

GameData::Species.define :TOGEDEMARU do |s|
  s.name          "Togedemaru"
  s.types         :ELECTRIC, :STEEL
  s.base_stats    hp: 65, attack: 98, defense: 63, speed: 96, sp_atk: 40, sp_def: 73
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      152
  s.catch_rate    180
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :IRONBARBS, :LIGHTNINGROD
  s.hidden_abilities :STURDY
  s.moves do |m|
    m.at 1, :NUZZLE
    m.at 1, :TACKLE
    m.at 5, :DEFENSECURL
    m.at 10, :CHARGE
    m.at 15, :THUNDERSHOCK
    m.at 20, :FELLSTINGER
    m.at 25, :SPARK
    m.at 30, :PINMISSILE
    m.at 35, :MAGNETRISE
    m.at 40, :ZINGZAP
    m.at 45, :DISCHARGE
    m.at 50, :ELECTRICTERRAIN
    m.at 55, :WILDCHARGE
    m.at 60, :SPIKYSHIELD
  end
  s.tutor_moves   :AFTERYOU, :AGILITY, :ASSURANCE, :ATTRACT, :BOUNCE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COVET, :DOUBLETEAM, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GYROBALL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IRONHEAD, :IRONTAIL, :LASTRESORT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :REFLECT, :REST, :RETURN, :REVERSAL, :RISINGVOLTAGE, :ROLEPLAY, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SNORE, :STEELBEAM, :STEELROLLER, :SUBSTITUTE, :SUPERFANG, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :UTURN, :VOLTSWITCH, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :DISARMINGVOICE, :FAKEOUT, :FLAIL, :PRESENT, :TICKLE, :WISH
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   2560
  s.height        0.3
  s.weight        3.3
  s.color         :Gray
  s.shape         :BipedalTail
  s.category      "Roly-Poly"
  s.pokedex_entry "The long hairs on its back act as lightning rods. The bolts of lightning it attracts are stored as energy in its electric sac."
  s.generation    7
  s.wild_item_uncommon :ELECTRICSEED
end

GameData::Species.define :TAPUKOKO do |s|
  s.name          "Tapu Koko"
  s.types         :ELECTRIC, :FAIRY
  s.base_stats    hp: 70, attack: 115, defense: 85, speed: 130, sp_atk: 95, sp_def: 75
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    3
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :ELECTRICSURGE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 1, :THUNDERSHOCK
    m.at 5, :WITHDRAW
    m.at 10, :FAIRYWIND
    m.at 15, :FALSESWIPE
    m.at 20, :SPARK
    m.at 25, :SHOCKWAVE
    m.at 30, :CHARGE
    m.at 35, :AGILITY
    m.at 40, :SCREECH
    m.at 45, :DISCHARGE
    m.at 50, :MEANLOOK
    m.at 55, :NATURESMADNESS
    m.at 60, :WILDCHARGE
    m.at 65, :BRAVEBIRD
    m.at 70, :POWERSWAP
    m.at 75, :ELECTRICTERRAIN
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ASSURANCE, :BRAVEBIRD, :CALMMIND, :CONFIDE, :DAZZLINGGLEAM, :DEFOG, :DOUBLETEAM, :ECHOEDVOICE, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FALSESWIPE, :FLY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IRONDEFENSE, :IRONHEAD, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POWERSWAP, :PROTECT, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROAR, :ROOST, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SNORE, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TOXIC, :UTURN, :VOLTSWITCH, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   3840
  s.height        1.8
  s.weight        20.5
  s.color         :Yellow
  s.shape         :HeadArms
  s.category      "Land Spirit"
  s.pokedex_entry "Although it's called a guardian deity, if a person or Pokémon puts it in a bad mood, it will become a malevolent deity and attack."
  s.generation    7
  s.flags         :Legendary
end

GameData::Species.define :XURKITREE do |s|
  s.name          "Xurkitree"
  s.types         :ELECTRIC
  s.base_stats    hp: 83, attack: 89, defense: 71, speed: 83, sp_atk: 173, sp_def: 71
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    45
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :BEASTBOOST
  s.moves do |m|
    m.at 1, :WRAP
    m.at 1, :THUNDERSHOCK
    m.at 5, :CHARGE
    m.at 10, :THUNDERWAVE
    m.at 15, :INGRAIN
    m.at 20, :SPARK
    m.at 25, :SHOCKWAVE
    m.at 30, :HYPNOSIS
    m.at 35, :EERIEIMPULSE
    m.at 40, :THUNDERPUNCH
    m.at 45, :DISCHARGE
    m.at 50, :MAGNETRISE
    m.at 55, :THUNDERBOLT
    m.at 60, :ELECTRICTERRAIN
    m.at 65, :POWERWHIP
    m.at 70, :ZAPCANNON
  end
  s.tutor_moves   :BIND, :BRUTALSWING, :CALMMIND, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FLING, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HIDDENPOWER, :HYPERBEAM, :LIGHTSCREEN, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POWERWHIP, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        3.8
  s.weight        100.0
  s.color         :Black
  s.shape         :BipedalTail
  s.category      "Glowing"
  s.pokedex_entry "One of the mysterious life-forms known as Ultra Beasts. Astonishing electric shocks emanate from its entire body, according to witnesses."
  s.generation    7
  s.flags         :UltraBeast
end

GameData::Species.define :ZERAORA do |s|
  s.name          "Zeraora"
  s.types         :ELECTRIC
  s.base_stats    hp: 88, attack: 112, defense: 75, speed: 143, sp_atk: 102, sp_def: 80
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     0
  s.evs           speed: 3
  s.abilities     :VOLTABSORB
  s.moves do |m|
    m.at 1, :POWERUPPUNCH
    m.at 1, :FAKEOUT
    m.at 1, :SCRATCH
    m.at 1, :QUICKATTACK
    m.at 1, :SNARL
    m.at 1, :SPARK
    m.at 8, :FURYSWIPES
    m.at 16, :QUICKGUARD
    m.at 24, :SLASH
    m.at 32, :VOLTSWITCH
    m.at 40, :CHARGE
    m.at 48, :THUNDERPUNCH
    m.at 56, :HONECLAWS
    m.at 64, :DISCHARGE
    m.at 72, :WILDCHARGE
    m.at 80, :AGILITY
    m.at 88, :PLASMAFISTS
    m.at 96, :CLOSECOMBAT
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ASSURANCE, :AURASPHERE, :BLAZEKICK, :BOUNCE, :BRICKBREAK, :BRUTALSWING, :BULKUP, :CALMMIND, :CLOSECOMBAT, :COACHING, :CONFIDE, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :ECHOEDVOICE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYDAY, :PLAYROUGH, :PROTECT, :REST, :RETURN, :REVENGE, :REVERSAL, :RISINGVOLTAGE, :ROUND, :SCARYFACE, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SUBSTITUTE, :SUPERPOWER, :SWIFT, :TAUNT, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.5
  s.weight        44.5
  s.color         :Yellow
  s.shape         :Bipedal
  s.category      "Thunderclap"
  s.pokedex_entry "It approaches its enemies at the speed of lightning, then tears them limb from limb with its sharp claws."
  s.generation    7
  s.flags         :Mythical
end

GameData::Species.define :YAMPER do |s|
  s.name          "Yamper"
  s.types         :ELECTRIC
  s.base_stats    hp: 59, attack: 45, defense: 50, speed: 26, sp_atk: 40, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      54
  s.catch_rate    255
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :BALLFETCH
  s.hidden_abilities :RATTLED
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 5, :NUZZLE
    m.at 10, :BITE
    m.at 15, :ROAR
    m.at 20, :SPARK
    m.at 26, :CHARM
    m.at 30, :CRUNCH
    m.at 35, :CHARGE
    m.at 40, :WILDCHARGE
    m.at 45, :PLAYROUGH
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CHARM, :CONFIDE, :CRUNCH, :DIG, :DOUBLETEAM, :ELECTROBALL, :ENDURE, :FACADE, :FIREFANG, :FRUSTRATION, :HELPINGHAND, :HIDDENPOWER, :MIMIC, :NATURALGIFT, :PLAYROUGH, :PROTECT, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :TOXIC, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :DISCHARGE, :DOUBLEEDGE, :FLAMECHARGE, :HOWL, :SANDATTACK
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.3
  s.weight        13.5
  s.color         :Yellow
  s.shape         :Quadruped
  s.category      "Puppy"
  s.pokedex_entry "This gluttonous Pokémon only assists people with their work because it wants treats. As it runs, it crackles with electricity."
  s.generation    8
  s.evolves_into  :BOLTUND, :Level, 25
end

GameData::Species.define :BOLTUND do |s|
  s.name          "Boltund"
  s.types         :ELECTRIC
  s.base_stats    hp: 69, attack: 90, defense: 60, speed: 121, sp_atk: 90, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      172
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :STRONGJAW
  s.hidden_abilities :COMPETITIVE
  s.moves do |m|
    m.at 1, :ELECTRIFY
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :NUZZLE
    m.at 1, :BITE
    m.at 15, :ROAR
    m.at 20, :SPARK
    m.at 28, :CHARM
    m.at 34, :CRUNCH
    m.at 41, :CHARGE
    m.at 48, :WILDCHARGE
    m.at 55, :PLAYROUGH
    m.at 62, :ELECTRICTERRAIN
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BULKUP, :CAPTIVATE, :CHARM, :CONFIDE, :CRUNCH, :DIG, :DOUBLETEAM, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ENDURE, :FACADE, :FIREFANG, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :MIMIC, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :TOXIC, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        34.0
  s.color         :Yellow
  s.shape         :Quadruped
  s.category      "Dog"
  s.pokedex_entry "This Pokémon generates electricity and channels it into its legs to keep them going strong. Boltund can run nonstop for three full days."
  s.generation    8
end

GameData::Species.define :TOXEL do |s|
  s.name          "Toxel"
  s.types         :ELECTRIC, :POISON
  s.base_stats    hp: 40, attack: 38, defense: 35, speed: 40, sp_atk: 54, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      48
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :RATTLED, :STATIC
  s.hidden_abilities :KLUTZ
  s.moves do |m|
    m.at 1, :BELCH
    m.at 1, :TEARFULLOOK
    m.at 1, :NUZZLE
    m.at 1, :GROWL
    m.at 1, :FLAIL
    m.at 1, :ACID
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENCORE, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :TOXIC, :TERABLAST
  s.egg_moves     :ENDEAVOR, :METALSOUND, :POWERUPPUNCH
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        0.4
  s.weight        11.0
  s.color         :Purple
  s.shape         :BipedalTail
  s.category      "Baby"
  s.pokedex_entry "It manipulates the chemical makeup of its poison to produce electricity. The voltage is weak, but it can cause a tingling paralysis."
  s.generation    8
  s.evolves_into  :TOXTRICITY, :Level, 30
end

GameData::Species.define :TOXTRICITY do |s|
  s.name          "Toxtricity"
  s.types         :ELECTRIC, :POISON
  s.base_stats    hp: 75, attack: 98, defense: 70, speed: 75, sp_atk: 114, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      176
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :PUNKROCK, :PLUS
  s.hidden_abilities :TECHNICIAN
  s.moves do |m|
    m.at 0, :SPARK
    m.at 1, :EERIEIMPULSE
    m.at 1, :BELCH
    m.at 1, :TEARFULLOOK
    m.at 1, :NUZZLE
    m.at 1, :GROWL
    m.at 1, :FLAIL
    m.at 1, :ACID
    m.at 1, :THUNDERSHOCK
    m.at 1, :ACIDSPRAY
    m.at 1, :LEER
    m.at 1, :NOBLEROAR
    m.at 4, :CHARGE
    m.at 8, :SHOCKWAVE
    m.at 12, :SCARYFACE
    m.at 16, :TAUNT
    m.at 20, :VENOSHOCK
    m.at 24, :SCREECH
    m.at 28, :SWAGGER
    m.at 32, :TOXIC
    m.at 36, :DISCHARGE
    m.at 40, :POISONJAB
    m.at 44, :OVERDRIVE
    m.at 48, :BOOMBURST
    m.at 52, :SHIFTGEAR
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRAINPUNCH, :EERIEIMPULSE, :ELECTROBALL, :ENCORE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HEX, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNARL, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :UPROAR, :VENOSHOCK, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   6400
  s.height        1.6
  s.weight        40.0
  s.color         :Purple
  s.shape         :BipedalTail
  s.category      "Punk"
  s.pokedex_entry "When this Pokémon sounds as if it's strumming a guitar, it's actually clawing at the protrusions on its chest to generate electricity."
  s.generation    8
end

GameData::Species.define :PINCURCHIN do |s|
  s.name          "Pincurchin"
  s.types         :ELECTRIC
  s.base_stats    hp: 48, attack: 101, defense: 95, speed: 15, sp_atk: 91, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      152
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :LIGHTNINGROD
  s.hidden_abilities :ELECTRICSURGE
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :THUNDERSHOCK
    m.at 5, :WATERGUN
    m.at 10, :CHARGE
    m.at 15, :FURYATTACK
    m.at 20, :SPARK
    m.at 25, :BUBBLEBEAM
    m.at 30, :RECOVER
    m.at 35, :CURSE
    m.at 40, :ELECTRICTERRAIN
    m.at 45, :POISONJAB
    m.at 50, :ZINGZAP
    m.at 55, :ACUPRESSURE
    m.at 60, :DISCHARGE
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BRINE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ELECTRICTERRAIN, :ENDURE, :FACADE, :FRUSTRATION, :HEX, :HIDDENPOWER, :HYDROPUMP, :LIQUIDATION, :MIMIC, :MUDDYWATER, :NATURALGIFT, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :RISINGVOLTAGE, :ROUND, :SCALD, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :SPIKES, :SUBSTITUTE, :SURF, :SWAGGER, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :TERABLAST
  s.egg_moves     :MEMENTO, :SUCKERPUNCH
  s.egg_groups    :Water1, :Amorphous
  s.hatch_steps   5120
  s.height        0.3
  s.weight        1.0
  s.color         :Purple
  s.shape         :Multiped
  s.category      "Sea Urchin"
  s.pokedex_entry "It stores electricity in each spine. Even if one gets broken off, it still continues to emit electricity for at least three hours."
  s.generation    8
end

GameData::Species.define :MORPEKO do |s|
  s.name          "Morpeko"
  s.types         :ELECTRIC, :DARK
  s.base_stats    hp: 58, attack: 95, defense: 58, speed: 97, sp_atk: 70, sp_def: 58
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      153
  s.catch_rate    180
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :HUNGERSWITCH
  s.moves do |m|
    m.at 1, :THUNDERSHOCK
    m.at 1, :TAILWHIP
    m.at 5, :LEER
    m.at 10, :POWERTRIP
    m.at 15, :QUICKATTACK
    m.at 20, :FLATTER
    m.at 25, :BITE
    m.at 30, :SPARK
    m.at 35, :TORMENT
    m.at 40, :AGILITY
    m.at 45, :BULLETSEED
    m.at 50, :CRUNCH
    m.at 55, :AURAWHEEL
    m.at 60, :THRASH
  end
  s.tutor_moves   :AGILITY, :ASSURANCE, :ATTRACT, :BRICKBREAK, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CRUNCH, :DARKPULSE, :DOUBLETEAM, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FAKETEARS, :FIREFANG, :FLING, :FOULPLAY, :FRUSTRATION, :HIDDENPOWER, :ICEFANG, :LASHOUT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PROTECT, :PSYCHICFANGS, :REST, :RETURN, :REVENGE, :RISINGVOLTAGE, :ROUND, :SCARYFACE, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNARL, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :CHARGE, :FAKEOUT, :PARTINGSHOT, :QUASH, :RAPIDSPIN, :SUPERFANG, :SWAGGER, :TICKLE
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   2560
  s.height        0.3
  s.weight        3.0
  s.color         :Yellow
  s.shape         :Bipedal
  s.category      "Two-Sided"
  s.pokedex_entry "As it eats the seeds stored up in its pocket-like pouches, this Pokémon is not just satisfying its constant hunger. It's also generating electricity."
  s.generation    8
end

GameData::Species.define :DRACOZOLT do |s|
  s.name          "Dracozolt"
  s.types         :ELECTRIC, :DRAGON
  s.base_stats    hp: 90, attack: 100, defense: 90, speed: 75, sp_atk: 80, sp_def: 70
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      177
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :VOLTABSORB, :HUSTLE
  s.hidden_abilities :SANDRUSH
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :THUNDERSHOCK
    m.at 7, :CHARGE
    m.at 14, :AERIALACE
    m.at 21, :ANCIENTPOWER
    m.at 28, :PLUCK
    m.at 35, :DRAGONTAIL
    m.at 42, :STOMP
    m.at 49, :SLAM
    m.at 56, :DISCHARGE
    m.at 63, :BOLTBEAK
    m.at 70, :DRAGONPULSE
    m.at 77, :DRAGONRUSH
  end
  s.tutor_moves   :BODYSLAM, :BREAKINGSWIPE, :BRUTALSWING, :BULLDOZE, :CONFIDE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :EARTHPOWER, :EARTHQUAKE, :ELECTROBALL, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMETHROWER, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :IRONTAIL, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :MIMIC, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   8960
  s.height        1.8
  s.weight        190.0
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Fossil"
  s.pokedex_entry "In ancient times, it was unbeatable thanks to its powerful lower body, but it went extinct anyway after it depleted all its plant-based food sources."
  s.generation    8
end

GameData::Species.define :ARCTOZOLT do |s|
  s.name          "Arctozolt"
  s.types         :ELECTRIC, :ICE
  s.base_stats    hp: 90, attack: 100, defense: 90, speed: 55, sp_atk: 90, sp_def: 80
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      177
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :VOLTABSORB, :STATIC
  s.hidden_abilities :SLUSHRUSH
  s.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 1, :THUNDERSHOCK
    m.at 7, :CHARGE
    m.at 14, :ECHOEDVOICE
    m.at 21, :ANCIENTPOWER
    m.at 28, :PLUCK
    m.at 35, :AVALANCHE
    m.at 42, :FREEZEDRY
    m.at 49, :SLAM
    m.at 56, :DISCHARGE
    m.at 63, :BOLTBEAK
    m.at 70, :ICICLECRASH
    m.at 77, :BLIZZARD
  end
  s.tutor_moves   :AVALANCHE, :BLIZZARD, :BODYSLAM, :BULLDOZE, :CONFIDE, :DOUBLETEAM, :ELECTROBALL, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEFANG, :ICICLESPEAR, :ICYWIND, :IRONTAIL, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SURF, :SWAGGER, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   8960
  s.height        2.3
  s.weight        150.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Fossil"
  s.pokedex_entry "The shaking of its freezing upper half is what generates its electricity. It has a hard time walking around."
  s.generation    8
end

GameData::Species.define :REGIELEKI do |s|
  s.name          "Regieleki"
  s.types         :ELECTRIC
  s.base_stats    hp: 80, attack: 100, defense: 50, speed: 200, sp_atk: 100, sp_def: 50
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           speed: 3
  s.abilities     :TRANSISTOR
  s.moves do |m|
    m.at 1, :THUNDERSHOCK
    m.at 1, :RAPIDSPIN
    m.at 6, :ELECTROWEB
    m.at 12, :ANCIENTPOWER
    m.at 18, :SHOCKWAVE
    m.at 24, :THUNDERWAVE
    m.at 30, :EXTREMESPEED
    m.at 36, :THUNDERCAGE
    m.at 42, :THUNDERBOLT
    m.at 48, :MAGNETRISE
    m.at 54, :THRASH
    m.at 60, :LOCKON
    m.at 66, :ZAPCANNON
    m.at 72, :HYPERBEAM
    m.at 78, :EXPLOSION
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :ASSURANCE, :BODYSLAM, :BOUNCE, :CONFIDE, :DOUBLETEAM, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.2
  s.weight        145.0
  s.color         :Yellow
  s.shape         :Bipedal
  s.category      "Electron"
  s.pokedex_entry "This Pokémon is a cluster of electrical energy. It's said that removing the rings on Regieleki's body will unleash the Pokémon's latent power."
  s.generation    8
  s.flags         :Legendary
end

