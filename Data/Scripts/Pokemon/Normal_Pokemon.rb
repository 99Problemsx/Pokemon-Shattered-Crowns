#===============================================================================
# Shattered Crowns - Normal Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :PIDGEY do |s|
  s.name          "Pidgey"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 40, attack: 45, defense: 40, speed: 56, sp_atk: 35, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      50
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :KEENEYE, :TANGLEDFEET
  s.hidden_abilities :BIGPECKS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 5, :SANDATTACK
    m.at 9, :GUST
    m.at 13, :QUICKATTACK
    m.at 17, :WHIRLWIND
    m.at 21, :TWISTER
    m.at 25, :FEATHERDANCE
    m.at 29, :AGILITY
    m.at 33, :WINGATTACK
    m.at 37, :ROOST
    m.at 41, :TAILWIND
    m.at 45, :AERIALACE
    m.at 49, :AIRSLASH
    m.at 53, :HURRICANE
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :AIRCUTTER, :AIRSLASH, :BRAVEBIRD, :UPROAR
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.3
  s.weight        1.8
  s.color         :Brown
  s.shape         :Winged
  s.habitat       :Forest
  s.category      "Tiny Bird"
  s.pokedex_entry "It has an extremely sharp sense of direction. It can unerringly return home to its nest, however far it may be removed from its familiar surroundings."
  s.generation    1
  s.evolves_into  :PIDGEOTTO, :Level, 18
end

GameData::Species.define :PIDGEOTTO do |s|
  s.name          "Pidgeotto"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 63, attack: 60, defense: 55, speed: 71, sp_atk: 50, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      122
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :KEENEYE, :TANGLEDFEET
  s.hidden_abilities :BIGPECKS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :SANDATTACK
    m.at 1, :GUST
    m.at 5, :SANDATTACK
    m.at 9, :GUST
    m.at 13, :QUICKATTACK
    m.at 17, :WHIRLWIND
    m.at 22, :TWISTER
    m.at 27, :FEATHERDANCE
    m.at 32, :AGILITY
    m.at 37, :WINGATTACK
    m.at 42, :ROOST
    m.at 47, :TAILWIND
    m.at 52, :AERIALACE
    m.at 57, :AIRSLASH
    m.at 62, :HURRICANE
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        1.1
  s.weight        30.0
  s.color         :Brown
  s.shape         :Winged
  s.habitat       :Forest
  s.category      "Bird"
  s.pokedex_entry "This Pokémon flies around, patrolling its large territory. If its living space is violated, it shows no mercy in thoroughly punishing the foe with its sharp claws."
  s.generation    1
  s.evolves_into  :PIDGEOT, :Level, 36
end

GameData::Species.define :PIDGEOT do |s|
  s.name          "Pidgeot"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 83, attack: 80, defense: 75, speed: 101, sp_atk: 70, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      240
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :KEENEYE, :TANGLEDFEET
  s.hidden_abilities :BIGPECKS
  s.moves do |m|
    m.at 1, :HURRICANE
    m.at 1, :TACKLE
    m.at 1, :SANDATTACK
    m.at 1, :GUST
    m.at 1, :QUICKATTACK
    m.at 5, :SANDATTACK
    m.at 9, :GUST
    m.at 13, :QUICKATTACK
    m.at 17, :WHIRLWIND
    m.at 22, :TWISTER
    m.at 27, :FEATHERDANCE
    m.at 32, :AGILITY
    m.at 38, :WINGATTACK
    m.at 44, :ROOST
    m.at 50, :TAILWIND
    m.at 56, :AERIALACE
    m.at 62, :AIRSLASH
    m.at 68, :HURRICANE
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :LASERFOCUS, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        1.5
  s.weight        39.5
  s.color         :Brown
  s.shape         :Winged
  s.habitat       :Forest
  s.category      "Bird"
  s.pokedex_entry "Pidgeot has gorgeous, glossy feathers. Many trainers are so captivated by the beautiful feathers on its head that they choose Pidgeot as their Pokémon."
  s.generation    1
end

GameData::Species.define :RATTATA do |s|
  s.name          "Rattata"
  s.types         :NORMAL
  s.base_stats    hp: 30, attack: 56, defense: 35, speed: 72, sp_atk: 25, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      51
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :RUNAWAY, :GUTS
  s.hidden_abilities :HUSTLE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 4, :QUICKATTACK
    m.at 7, :FOCUSENERGY
    m.at 10, :BITE
    m.at 13, :LASERFOCUS
    m.at 16, :TAKEDOWN
    m.at 19, :ASSURANCE
    m.at 22, :CRUNCH
    m.at 25, :SUCKERPUNCH
    m.at 28, :SUPERFANG
    m.at 31, :DOUBLEEDGE
    m.at 34, :ENDEAVOR
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :UPROAR, :UTURN, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BITE, :COUNTER, :FINALGAMBIT, :FLAMEWHEEL, :FURYSWIPES, :LASTRESORT, :REVENGE, :REVERSAL, :SCREECH, :UPROAR
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.3
  s.weight        3.5
  s.color         :Purple
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Mouse"
  s.pokedex_entry "A Rattata is cautious in the extreme. Even while it is asleep, it constantly moves its ears and listens for danger. It will make its nest anywhere."
  s.generation    1
  s.evolves_into  :RATICATE, :Level, 20
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :CHILANBERRY
end

GameData::Species.define :RATICATE do |s|
  s.name          "Raticate"
  s.types         :NORMAL
  s.base_stats    hp: 55, attack: 81, defense: 60, speed: 97, sp_atk: 50, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      145
  s.catch_rate    127
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :RUNAWAY, :GUTS
  s.hidden_abilities :HUSTLE
  s.moves do |m|
    m.at 0, :SCARYFACE
    m.at 1, :SWORDSDANCE
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :QUICKATTACK
    m.at 1, :FOCUSENERGY
    m.at 4, :QUICKATTACK
    m.at 7, :FOCUSENERGY
    m.at 10, :BITE
    m.at 13, :LASERFOCUS
    m.at 16, :TAKEDOWN
    m.at 19, :ASSURANCE
    m.at 24, :CRUNCH
    m.at 29, :SUCKERPUNCH
    m.at 34, :SUPERFANG
    m.at 39, :DOUBLEEDGE
    m.at 44, :ENDEAVOR
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :UPROAR, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.7
  s.weight        18.5
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Mouse"
  s.pokedex_entry "A Raticate's sturdy fangs grow steadily. To keep them ground down, it gnaws on rocks and logs. It may even chew on the walls of houses."
  s.generation    1
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :CHILANBERRY
end

GameData::Species.define :SPEAROW do |s|
  s.name          "Spearow"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 40, attack: 60, defense: 30, speed: 70, sp_atk: 31, sp_def: 31
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      52
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :KEENEYE
  s.hidden_abilities :SNIPER
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 4, :LEER
    m.at 8, :ASSURANCE
    m.at 11, :FURYATTACK
    m.at 15, :AERIALACE
    m.at 18, :WINGATTACK
    m.at 22, :TAKEDOWN
    m.at 25, :AGILITY
    m.at 29, :FOCUSENERGY
    m.at 32, :ROOST
    m.at 36, :DRILLPECK
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :ECHOEDVOICE, :ENDURE, :FACADE, :FALSESWIPE, :FLY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :ASTONISH, :FEATHERDANCE, :QUICKATTACK, :SCARYFACE, :SKYATTACK, :TRIATTACK, :UPROAR, :WHIRLWIND
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.3
  s.weight        2.0
  s.color         :Brown
  s.shape         :Winged
  s.habitat       :RoughTerrain
  s.category      "Tiny Bird"
  s.pokedex_entry "Its loud cry can be heard over half a mile away. If its high, keening cry is heard echoing all around, it is a sign that they are warning each other of danger."
  s.generation    1
  s.evolves_into  :FEAROW, :Level, 20
  s.wild_item_uncommon :SHARPBEAK
end

GameData::Species.define :FEAROW do |s|
  s.name          "Fearow"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 65, attack: 90, defense: 65, speed: 100, sp_atk: 61, sp_def: 61
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      155
  s.catch_rate    90
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :KEENEYE
  s.hidden_abilities :SNIPER
  s.moves do |m|
    m.at 1, :DRILLRUN
    m.at 1, :PLUCK
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 1, :LEER
    m.at 4, :LEER
    m.at 8, :ASSURANCE
    m.at 11, :FURYATTACK
    m.at 15, :AERIALACE
    m.at 18, :WINGATTACK
    m.at 23, :TAKEDOWN
    m.at 27, :AGILITY
    m.at 32, :FOCUSENERGY
    m.at 36, :ROOST
    m.at 41, :DRILLPECK
    m.at 45, :DRILLRUN
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :ECHOEDVOICE, :ENDURE, :FACADE, :FALSESWIPE, :FLY, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :LASERFOCUS, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :THROATCHOP, :TWISTER, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        1.2
  s.weight        38.0
  s.color         :Brown
  s.shape         :Winged
  s.habitat       :RoughTerrain
  s.category      "Beak"
  s.pokedex_entry "Its long neck and elongated beak are ideal for catching prey in soil or water. It deftly moves this extended and skinny beak to pluck prey."
  s.generation    1
  s.wild_item_uncommon :SHARPBEAK
end

GameData::Species.define :JIGGLYPUFF do |s|
  s.name          "Jigglypuff"
  s.types         :NORMAL, :FAIRY
  s.base_stats    hp: 115, attack: 45, defense: 20, speed: 20, sp_atk: 45, sp_def: 25
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      95
  s.catch_rate    170
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :CUTECHARM, :COMPETITIVE
  s.hidden_abilities :FRIENDGUARD
  s.moves do |m|
    m.at 1, :SWEETKISS
    m.at 1, :DISARMINGVOICE
    m.at 1, :DISABLE
    m.at 1, :CHARM
    m.at 1, :SING
    m.at 1, :POUND
    m.at 1, :COPYCAT
    m.at 1, :DEFENSECURL
    m.at 4, :ECHOEDVOICE
    m.at 8, :COVET
    m.at 12, :STOCKPILE
    m.at 12, :SWALLOW
    m.at 12, :SPITUP
    m.at 16, :ROUND
    m.at 20, :REST
    m.at 24, :BODYSLAM
    m.at 28, :MIMIC
    m.at 32, :GYROBALL
    m.at 36, :HYPERVOICE
    m.at 40, :PLAYROUGH
    m.at 44, :DOUBLEEDGE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BATONPASS, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRICKBREAK, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COUNTER, :COVET, :DAZZLINGGLEAM, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :GRAVITY, :GYROBALL, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :KNOCKOFF, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROLEPLAY, :ROLLOUT, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STEALTHROCK, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRIATTACK, :UPROAR, :WATERPULSE, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   2560
  s.height        0.5
  s.weight        5.5
  s.color         :Pink
  s.shape         :Bipedal
  s.habitat       :Grassland
  s.category      "Balloon"
  s.pokedex_entry "Nothing can avoid falling asleep hearing a Jigglypuff's song. The sound waves of its singing voice match the brain waves of someone in a deep sleep."
  s.generation    1
  s.evolves_into  :WIGGLYTUFF, :Item, MOONSTONE
  s.wild_item_uncommon :MOONSTONE
end

GameData::Species.define :WIGGLYTUFF do |s|
  s.name          "Wigglytuff"
  s.types         :NORMAL, :FAIRY
  s.base_stats    hp: 140, attack: 70, defense: 45, speed: 45, sp_atk: 85, sp_def: 50
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      218
  s.catch_rate    50
  s.happiness     50
  s.evs           hp: 3
  s.abilities     :CUTECHARM, :COMPETITIVE
  s.hidden_abilities :FRISK
  s.moves do |m|
    m.at 1, :SWEETKISS
    m.at 1, :DISARMINGVOICE
    m.at 1, :DISABLE
    m.at 1, :CHARM
    m.at 1, :ECHOEDVOICE
    m.at 1, :COVET
    m.at 1, :STOCKPILE
    m.at 1, :SWALLOW
    m.at 1, :SPITUP
    m.at 1, :ROUND
    m.at 1, :REST
    m.at 1, :BODYSLAM
    m.at 1, :MIMIC
    m.at 1, :GYROBALL
    m.at 1, :PLAYROUGH
    m.at 1, :HYPERVOICE
    m.at 1, :DOUBLEEDGE
    m.at 1, :SING
    m.at 1, :POUND
    m.at 1, :COPYCAT
    m.at 1, :DEFENSECURL
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BATONPASS, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRICKBREAK, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COUNTER, :COVET, :DAZZLINGGLEAM, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GYROBALL, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROLEPLAY, :ROLLOUT, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STEALTHROCK, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRIATTACK, :UPROAR, :WATERPULSE, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   2560
  s.height        1.0
  s.weight        12.0
  s.color         :Pink
  s.shape         :Bipedal
  s.habitat       :Grassland
  s.category      "Balloon"
  s.pokedex_entry "Its fur is the ultimate in luxuriousness. Sleeping alongside a Wigglytuff is simply divine. Its body expands seemingly without end when it inhales."
  s.generation    1
  s.wild_item_uncommon :MOONSTONE
end

GameData::Species.define :MEOWTH do |s|
  s.name          "Meowth"
  s.types         :NORMAL
  s.base_stats    hp: 40, attack: 45, defense: 35, speed: 90, sp_atk: 40, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      58
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :PICKUP, :TECHNICIAN
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 1, :FAKEOUT
    m.at 1, :GROWL
    m.at 4, :FEINT
    m.at 8, :SCRATCH
    m.at 12, :PAYDAY
    m.at 16, :BITE
    m.at 20, :TAUNT
    m.at 24, :ASSURANCE
    m.at 29, :FURYSWIPES
    m.at 32, :SCREECH
    m.at 36, :SLASH
    m.at 40, :NASTYPLOT
    m.at 44, :PLAYROUGH
  end
  s.tutor_moves   :AERIALACE, :AMNESIA, :ASSURANCE, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CUT, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERVOICE, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LASHOUT, :LASTRESORT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PAYDAY, :PLAYROUGH, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :TORMENT, :UPROAR, :UTURN, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_moves     :AMNESIA, :CHARM, :COVET, :FLAIL, :FOULPLAY, :HYPNOSIS, :LASTRESORT, :SPITE, :TAILWHIP
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        4.2
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Urban
  s.category      "Scratch Cat"
  s.pokedex_entry "Meowth withdraw their sharp claws into their paws to silently sneak about. For some reason, this Pokémon loves shiny coins that glitter with light."
  s.generation    1
  s.evolves_into  :PERSIAN, :Level, 28
  s.evolves_into  :PERRSERKER, :None
  s.wild_item_uncommon :QUICKCLAW
end

GameData::Species.define :PERSIAN do |s|
  s.name          "Persian"
  s.types         :NORMAL
  s.base_stats    hp: 65, attack: 70, defense: 60, speed: 115, sp_atk: 65, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      154
  s.catch_rate    90
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :LIMBER, :TECHNICIAN
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 0, :POWERGEM
    m.at 1, :SWITCHEROO
    m.at 1, :FAKEOUT
    m.at 1, :GROWL
    m.at 1, :FEINT
    m.at 1, :SCRATCH
    m.at 12, :PAYDAY
    m.at 16, :BITE
    m.at 20, :TAUNT
    m.at 24, :ASSURANCE
    m.at 31, :FURYSWIPES
    m.at 36, :SCREECH
    m.at 42, :SLASH
    m.at 48, :NASTYPLOT
    m.at 54, :PLAYROUGH
  end
  s.tutor_moves   :AERIALACE, :AMNESIA, :ASSURANCE, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CUT, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :EMBARGO, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LASHOUT, :LASTRESORT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PAYDAY, :PLAYROUGH, :POWERGEM, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROUND, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SKITTERSMACK, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :TORMENT, :UPROAR, :UTURN, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        32.0
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Urban
  s.category      "Classy Cat"
  s.pokedex_entry "A Persian's six bold whiskers sense air movements to determine what is in its vicinity. It becomes docile if grabbed by the whiskers."
  s.generation    1
  s.wild_item_uncommon :QUICKCLAW
end

GameData::Species.define :FARFETCHD do |s|
  s.name          "Farfetch'd"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 52, attack: 90, defense: 55, speed: 60, sp_atk: 58, sp_def: 62
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      132
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :KEENEYE, :INNERFOCUS
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :SANDATTACK
    m.at 5, :LEER
    m.at 10, :FURYCUTTER
    m.at 15, :CUT
    m.at 20, :AERIALACE
    m.at 25, :AIRCUTTER
    m.at 30, :KNOCKOFF
    m.at 35, :FALSESWIPE
    m.at 40, :SLASH
    m.at 45, :SWORDSDANCE
    m.at 50, :AIRSLASH
    m.at 55, :LEAFBLADE
    m.at 60, :AGILITY
    m.at 65, :BRAVEBIRD
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :ATTRACT, :BATONPASS, :BODYSLAM, :BRAVEBIRD, :BRUTALSWING, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :COVET, :CUT, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FALSESWIPE, :FLY, :FOCUSENERGY, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LEAFBLADE, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :POISONJAB, :PROTECT, :PSYCHUP, :REST, :RETALIATE, :RETURN, :REVENGE, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :SOLARBLADE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :THIEF, :THROATCHOP, :TWISTER, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :COVET, :CURSE, :FEATHERDANCE, :FEINT, :FINALGAMBIT, :FIRSTIMPRESSION, :FLAIL, :GUST, :LEAFBLADE, :MUDSLAP, :NIGHTSLASH, :QUICKATTACK, :REVENGE, :ROOST, :SIMPLEBEAM, :SKYATTACK
  s.egg_groups    :Flying, :Field
  s.hatch_steps   5120
  s.height        0.8
  s.weight        15.0
  s.color         :Brown
  s.shape         :Winged
  s.habitat       :Grassland
  s.category      "Wild Duck"
  s.pokedex_entry "It is always seen with a stick from a plant. Apparently, there are good sticks and bad sticks. This Pokémon occasionally fights with others over choice sticks."
  s.generation    1
  s.evolves_into  :SIRFETCHD, :None
  s.wild_item_uncommon :LEEK
end

GameData::Species.define :DODUO do |s|
  s.name          "Doduo"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 35, attack: 85, defense: 45, speed: 75, sp_atk: 35, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      62
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :RUNAWAY, :EARLYBIRD
  s.hidden_abilities :TANGLEDFEET
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 5, :QUICKATTACK
    m.at 8, :LEER
    m.at 12, :FURYATTACK
    m.at 15, :WINGATTACK
    m.at 19, :PLUCK
    m.at 22, :DOUBLEHIT
    m.at 26, :AGILITY
    m.at 29, :UPROAR
    m.at 33, :ACUPRESSURE
    m.at 36, :SWORDSDANCE
    m.at 40, :LUNGE
    m.at 43, :DRILLPECK
    m.at 47, :ENDEAVOR
    m.at 50, :THRASH
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HIDDENPOWER, :KNOCKOFF, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLUCK, :PROTECT, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :THIEF, :UPROAR, :WORKUP, :TERABLAST
  s.egg_moves     :ASSURANCE, :BRAVEBIRD, :ENDEAVOR, :FLAIL, :HAZE, :QUICKATTACK, :SUPERSONIC
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        1.4
  s.weight        39.2
  s.color         :Brown
  s.shape         :HeadLegs
  s.habitat       :Grassland
  s.category      "Twin Bird"
  s.pokedex_entry "Even while eating or sleeping, one of the heads remains always vigilant for any sign of danger. When threatened, it flees at over 60 miles per hour."
  s.generation    1
  s.evolves_into  :DODRIO, :Level, 31
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :SHARPBEAK
end

GameData::Species.define :DODRIO do |s|
  s.name          "Dodrio"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 60, attack: 110, defense: 70, speed: 110, sp_atk: 60, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      165
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :RUNAWAY, :EARLYBIRD
  s.hidden_abilities :TANGLEDFEET
  s.moves do |m|
    m.at 0, :TRIATTACK
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 1, :QUICKATTACK
    m.at 5, :QUICKATTACK
    m.at 8, :LEER
    m.at 12, :FURYATTACK
    m.at 15, :WINGATTACK
    m.at 19, :PLUCK
    m.at 22, :DOUBLEHIT
    m.at 26, :AGILITY
    m.at 29, :UPROAR
    m.at 34, :ACUPRESSURE
    m.at 38, :SWORDSDANCE
    m.at 43, :LUNGE
    m.at 47, :DRILLPECK
    m.at 52, :ENDEAVOR
    m.at 56, :THRASH
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :KNOCKOFF, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :PLUCK, :PROTECT, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :TORMENT, :UPROAR, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        1.8
  s.weight        85.2
  s.color         :Brown
  s.shape         :HeadLegs
  s.habitat       :Grassland
  s.category      "Triple Bird"
  s.pokedex_entry "A peculiar Pokémon species with three heads. It vigorously races across grassy plains even in arid seasons with little rainfall."
  s.generation    1
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :SHARPBEAK
end

GameData::Species.define :LICKITUNG do |s|
  s.name          "Lickitung"
  s.types         :NORMAL
  s.base_stats    hp: 90, attack: 55, defense: 75, speed: 30, sp_atk: 60, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      77
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :OWNTEMPO, :OBLIVIOUS
  s.hidden_abilities :CLOUDNINE
  s.moves do |m|
    m.at 1, :LICK
    m.at 1, :DEFENSECURL
    m.at 6, :ROLLOUT
    m.at 12, :SUPERSONIC
    m.at 18, :WRAP
    m.at 24, :DISABLE
    m.at 30, :STOMP
    m.at 36, :KNOCKOFF
    m.at 42, :SCREECH
    m.at 48, :SLAM
    m.at 54, :POWERWHIP
    m.at 60, :BELLYDRUM
  end
  s.tutor_moves   :AMNESIA, :AQUATAIL, :ATTRACT, :BIND, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONTAIL, :DREAMEATER, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONTAIL, :KNOCKOFF, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :POWERWHIP, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWORDSDANCE, :TERRAINPULSE, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :WATERPULSE, :WHIRLPOOL, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AMNESIA, :BELCH, :BELLYDRUM, :BODYSLAM, :CURSE, :HAMMERARM, :MUDDYWATER, :SNORE, :THRASH, :ZENHEADBUTT
  s.egg_groups    :Monster
  s.hatch_steps   5120
  s.height        1.2
  s.weight        65.5
  s.color         :Pink
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Licking"
  s.pokedex_entry "Whenever it sees something unfamiliar, it always licks the object because it memorizes things by texture and taste. It is somewhat put off by sour things."
  s.generation    1
  s.evolves_into  :LICKILICKY, :HasMove, ROLLOUT
  s.wild_item_uncommon :LAGGINGTAIL
end

GameData::Species.define :CHANSEY do |s|
  s.name          "Chansey"
  s.types         :NORMAL
  s.base_stats    hp: 250, attack: 5, defense: 5, speed: 50, sp_atk: 35, sp_def: 105
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Fast
  s.base_exp      395
  s.catch_rate    30
  s.happiness     140
  s.evs           hp: 2
  s.abilities     :NATURALCURE, :SERENEGRACE
  s.hidden_abilities :HEALER
  s.moves do |m|
    m.at 1, :SWEETKISS
    m.at 1, :DISARMINGVOICE
    m.at 1, :COVET
    m.at 1, :CHARM
    m.at 1, :MINIMIZE
    m.at 1, :POUND
    m.at 1, :COPYCAT
    m.at 1, :DEFENSECURL
    m.at 4, :TAILWHIP
    m.at 8, :ECHOEDVOICE
    m.at 12, :LIFEDEW
    m.at 16, :SING
    m.at 20, :FLING
    m.at 24, :TAKEDOWN
    m.at 28, :HEALPULSE
    m.at 32, :HELPINGHAND
    m.at 36, :LIGHTSCREEN
    m.at 40, :DOUBLEEDGE
    m.at 44, :SOFTBOILED
    m.at 48, :LASTRESORT
    m.at 52, :HEALINGWISH
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COUNTER, :COVET, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HAIL, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :RECYCLE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOFTBOILED, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRIATTACK, :UPROAR, :WATERPULSE, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AROMATHERAPY, :COUNTER, :GRAVITY, :HEALBELL, :HELPINGHAND, :METRONOME, :PRESENT, :SEISMICTOSS
  s.egg_groups    :Fairy
  s.hatch_steps   10240
  s.height        1.1
  s.weight        34.6
  s.color         :Pink
  s.shape         :BipedalTail
  s.habitat       :Urban
  s.category      "Egg"
  s.pokedex_entry "Chansey lay nutritionally excellent eggs every day. The eggs are so delicious, they are eagerly devoured by even those who have lost their appetite."
  s.generation    1
  s.evolves_into  :BLISSEY, :Happiness
  s.wild_item_common   :LUCKYPUNCH
end

GameData::Species.define :KANGASKHAN do |s|
  s.name          "Kangaskhan"
  s.types         :NORMAL
  s.base_stats    hp: 105, attack: 95, defense: 80, speed: 90, sp_atk: 40, sp_def: 80
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      172
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :EARLYBIRD, :SCRAPPY
  s.hidden_abilities :INNERFOCUS
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :TAILWHIP
    m.at 4, :GROWL
    m.at 8, :FAKEOUT
    m.at 12, :BITE
    m.at 16, :STOMP
    m.at 20, :FOCUSENERGY
    m.at 24, :HEADBUTT
    m.at 28, :SUCKERPUNCH
    m.at 32, :DOUBLEHIT
    m.at 36, :CRUNCH
    m.at 40, :ENDURE
    m.at 44, :REVERSAL
    m.at 48, :OUTRAGE
    m.at 52, :LASTRESORT
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ASSURANCE, :ATTRACT, :AVALANCHE, :BEATUP, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CRUNCH, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONTAIL, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SURF, :SWAGGER, :TERRAINPULSE, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :UPROAR, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_moves     :CIRCLETHROW, :COUNTER, :CRUSHCLAW, :DISABLE, :DOUBLEEDGE, :ENDEAVOR, :FOCUSENERGY, :HAMMERARM, :STOMP, :UPROAR
  s.egg_groups    :Monster
  s.hatch_steps   5120
  s.height        2.2
  s.weight        80.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Parent"
  s.pokedex_entry "If you come across a young Kangaskhan playing by itself, never try to catch it. The baby's parent is sure to be in the area, and it will become violently enraged."
  s.generation    1
end

GameData::Species.define :TAUROS do |s|
  s.name          "Tauros"
  s.types         :NORMAL
  s.base_stats    hp: 75, attack: 100, defense: 95, speed: 110, sp_atk: 40, sp_def: 70
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Slow
  s.base_exp      172
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1, speed: 1
  s.abilities     :INTIMIDATE, :ANGERPOINT
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 5, :WORKUP
    m.at 10, :PAYBACK
    m.at 15, :ASSURANCE
    m.at 20, :HORNATTACK
    m.at 25, :SCARYFACE
    m.at 30, :ZENHEADBUTT
    m.at 35, :TAKEDOWN
    m.at 40, :REST
    m.at 45, :SWAGGER
    m.at 50, :THRASH
    m.at 55, :DOUBLEEDGE
    m.at 60, :GIGAIMPACT
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BLIZZARD, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INCINERATE, :IRONHEAD, :IRONTAIL, :LASHOUT, :MEGAHORN, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SOLARBEAM, :SPITE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :THROATCHOP, :THUNDER, :THUNDERBOLT, :UPROAR, :WATERPULSE, :WHIRLPOOL, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.4
  s.weight        88.4
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Wild Bull"
  s.pokedex_entry "It is not satisfied unless it is rampaging at all times. If there is no opponent for Tauros to battle, it will charge at thick trees and knock them down to calm itself."
  s.generation    1
end

GameData::Species.define :DITTO do |s|
  s.name          "Ditto"
  s.types         :NORMAL
  s.base_stats    hp: 48, attack: 48, defense: 48, speed: 48, sp_atk: 48, sp_def: 48
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      101
  s.catch_rate    35
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :LIMBER
  s.hidden_abilities :IMPOSTER
  s.moves do |m|
    m.at 1, :TRANSFORM
  end
  s.egg_groups    :Ditto
  s.hatch_steps   5120
  s.height        0.3
  s.weight        4.0
  s.color         :Purple
  s.shape         :Head
  s.habitat       :Urban
  s.category      "Transform"
  s.pokedex_entry "A Ditto rearranges its cell structure to transform itself. However, if it tries to change based on its memory, it will get details wrong."
  s.generation    1
  s.wild_item_common   :QUICKPOWDER
  s.wild_item_uncommon :METALPOWDER
end

GameData::Species.define :EEVEE do |s|
  s.name          "Eevee"
  s.types         :NORMAL
  s.base_stats    hp: 55, attack: 55, defense: 50, speed: 55, sp_atk: 45, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      65
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :RUNAWAY, :ADAPTABILITY
  s.hidden_abilities :ANTICIPATION
  s.moves do |m|
    m.at 1, :COVET
    m.at 1, :HELPINGHAND
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :TAILWHIP
    m.at 5, :SANDATTACK
    m.at 10, :QUICKATTACK
    m.at 15, :BABYDOLLEYES
    m.at 20, :SWIFT
    m.at 25, :BITE
    m.at 30, :COPYCAT
    m.at 35, :BATONPASS
    m.at 40, :TAKEDOWN
    m.at 45, :CHARM
    m.at 50, :DOUBLEEDGE
    m.at 55, :LASTRESORT
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FAKETEARS, :FOCUSENERGY, :FRUSTRATION, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYDAY, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :WEATHERBALL, :WORKUP, :TERABLAST
  s.egg_moves     :CHARM, :COVET, :CURSE, :DETECT, :DOUBLEKICK, :FAKETEARS, :FLAIL, :MUDSLAP, :STOREDPOWER, :TICKLE, :WISH, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   8960
  s.height        0.3
  s.weight        6.5
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Urban
  s.category      "Evolution"
  s.pokedex_entry "An Eevee has an unstable genetic makeup that suddenly mutates due to its environment. Radiation from various stones causes this Pokémon to evolve."
  s.generation    1
  s.evolves_into  :VAPOREON, :Item, WATERSTONE
  s.evolves_into  :JOLTEON, :Item, THUNDERSTONE
  s.evolves_into  :FLAREON, :Item, FIRESTONE
  s.evolves_into  :LEAFEON, :Item, LEAFSTONE
  s.evolves_into  :LEAFEON, :LocationFlag, MossRock
  s.evolves_into  :GLACEON, :Item, ICESTONE
  s.evolves_into  :GLACEON, :LocationFlag, IceRock
  s.evolves_into  :SYLVEON, :HappinessMoveType, FAIRY
  s.evolves_into  :ESPEON, :HappinessDay, 
  s.evolves_into  :UMBREON, :HappinessNight
end

GameData::Species.define :PORYGON do |s|
  s.name          "Porygon"
  s.types         :NORMAL
  s.base_stats    hp: 65, attack: 60, defense: 70, speed: 40, sp_atk: 85, sp_def: 75
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      79
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :TRACE, :DOWNLOAD
  s.hidden_abilities :ANALYTIC
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :CONVERSION
    m.at 5, :RECYCLE
    m.at 10, :MAGNETRISE
    m.at 15, :THUNDERSHOCK
    m.at 20, :PSYBEAM
    m.at 25, :CONVERSION2
    m.at 30, :AGILITY
    m.at 35, :RECOVER
    m.at 40, :DISCHARGE
    m.at 45, :TRIATTACK
    m.at 50, :MAGICCOAT
    m.at 55, :LOCKON
    m.at 60, :ZAPCANNON
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ALLYSWITCH, :BLIZZARD, :CHARGEBEAM, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EERIEIMPULSE, :ELECTROWEB, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :GUARDSWAP, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASTRESORT, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PAINSPLIT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPEEDSWAP, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.8
  s.weight        36.5
  s.color         :Pink
  s.shape         :HeadLegs
  s.habitat       :Urban
  s.category      "Virtual"
  s.pokedex_entry "It is capable of reverting itself entirely back to program data in order to enter cyberspace. A Porygon is copy-protected so it cannot be duplicated."
  s.generation    1
  s.evolves_into  :PORYGON2, :TradeItem, UPGRADE
end

GameData::Species.define :SNORLAX do |s|
  s.name          "Snorlax"
  s.types         :NORMAL
  s.base_stats    hp: 160, attack: 110, defense: 65, speed: 30, sp_atk: 65, sp_def: 110
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Slow
  s.base_exp      189
  s.catch_rate    25
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :IMMUNITY, :THICKFAT
  s.hidden_abilities :GLUTTONY
  s.moves do |m|
    m.at 1, :RECYCLE
    m.at 1, :COVET
    m.at 1, :STOCKPILE
    m.at 1, :SWALLOW
    m.at 1, :SCREECH
    m.at 1, :FLING
    m.at 1, :METRONOME
    m.at 1, :FLAIL
    m.at 1, :LASTRESORT
    m.at 1, :LICK
    m.at 1, :TACKLE
    m.at 1, :DEFENSECURL
    m.at 1, :BLOCK
    m.at 12, :YAWN
    m.at 16, :BITE
    m.at 20, :REST
    m.at 20, :SNORE
    m.at 20, :SLEEPTALK
    m.at 24, :CRUNCH
    m.at 28, :BODYSLAM
    m.at 32, :HEAVYSLAM
    m.at 36, :AMNESIA
    m.at 40, :HIGHHORSEPOWER
    m.at 44, :HAMMERARM
    m.at 48, :BELLYDRUM
    m.at 52, :BELCH
    m.at 56, :GIGAIMPACT
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :ATTRACT, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CHARM, :CONFIDE, :COUNTER, :COVET, :CRUNCH, :DARKESTLARIAT, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENCORE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HEADBUTT, :HEATCRASH, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONHEAD, :LASTRESORT, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PAYDAY, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :RAINDANCE, :RECYCLE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNATCH, :SNORE, :SOLARBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :TERRAINPULSE, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :UPROAR, :WATERPULSE, :WHIRLPOOL, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AFTERYOU, :BELCH, :CHARM, :COUNTER, :CURSE, :DOUBLEEDGE, :FISSURE, :GASTROACID, :LICK, :POWERUPPUNCH, :SELFDESTRUCT, :WHIRLWIND, :ZENHEADBUTT
  s.egg_groups    :Monster
  s.hatch_steps   10240
  s.height        2.1
  s.weight        460.0
  s.color         :Black
  s.shape         :Bipedal
  s.habitat       :Mountain
  s.category      "Sleeping"
  s.pokedex_entry "Snorlax's typical day consists of nothing more than eating and sleeping. It is such a docile Pokémon that there are children who use its big belly as a place to play."
  s.generation    1
  s.wild_item_common   :LEFTOVERS
  s.wild_item_uncommon :LEFTOVERS
  s.wild_item_rare     :LEFTOVERS
end

GameData::Species.define :SENTRET do |s|
  s.name          "Sentret"
  s.types         :NORMAL
  s.base_stats    hp: 35, attack: 46, defense: 34, speed: 20, sp_atk: 35, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      43
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :RUNAWAY, :KEENEYE
  s.hidden_abilities :FRISK
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 4, :DEFENSECURL
    m.at 7, :QUICKATTACK
    m.at 13, :FURYSWIPES
    m.at 16, :HELPINGHAND
    m.at 19, :FOLLOWME
    m.at 25, :SLAM
    m.at 28, :REST
    m.at 31, :SUCKERPUNCH
    m.at 36, :AMNESIA
    m.at 39, :BATONPASS
    m.at 42, :REVERSAL
    m.at 47, :HYPERVOICE
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SURF, :SWAGGER, :SWIFT, :THIEF, :THUNDERBOLT, :THUNDERPUNCH, :TRICK, :UPROAR, :UTURN, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_moves     :BABYDOLLEYES, :CHARM, :COVET, :DOUBLEEDGE, :FOCUSENERGY, :LASTRESORT, :REVERSAL, :SLASH, :TRICK
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.8
  s.weight        6.0
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Scout"
  s.pokedex_entry "They take turns standing guard when it is time to sleep. The sentry awakens the others if it senses danger. If one gets separated, it turns sleepless with fear."
  s.generation    2
  s.evolves_into  :FURRET, :Level, 15
end

GameData::Species.define :FURRET do |s|
  s.name          "Furret"
  s.types         :NORMAL
  s.base_stats    hp: 85, attack: 76, defense: 64, speed: 90, sp_atk: 45, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      145
  s.catch_rate    90
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :RUNAWAY, :KEENEYE
  s.hidden_abilities :FRISK
  s.moves do |m|
    m.at 0, :AGILITY
    m.at 1, :COIL
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :DEFENSECURL
    m.at 1, :QUICKATTACK
    m.at 4, :DEFENSECURL
    m.at 7, :QUICKATTACK
    m.at 13, :FURYSWIPES
    m.at 17, :HELPINGHAND
    m.at 21, :FOLLOWME
    m.at 28, :SLAM
    m.at 32, :REST
    m.at 36, :SUCKERPUNCH
    m.at 42, :AMNESIA
    m.at 46, :BATONPASS
    m.at 50, :REVERSAL
    m.at 56, :HYPERVOICE
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROLLOUT, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SURF, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :TRICK, :UPROAR, :UTURN, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        1.8
  s.weight        32.5
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Long Body"
  s.pokedex_entry "A Furret has a very slim build. When under attack, it can squirm through narrow spaces and get away. In spite of its short limbs, it is very nimble and fleet."
  s.generation    2
end

GameData::Species.define :HOOTHOOT do |s|
  s.name          "Hoothoot"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 60, attack: 30, defense: 30, speed: 50, sp_atk: 36, sp_def: 56
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      52
  s.catch_rate    255
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :INSOMNIA, :KEENEYE
  s.hidden_abilities :TINTEDLENS
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 3, :TACKLE
    m.at 6, :ECHOEDVOICE
    m.at 9, :CONFUSION
    m.at 12, :REFLECT
    m.at 15, :PSYCHOSHIFT
    m.at 18, :AIRSLASH
    m.at 21, :EXTRASENSORY
    m.at 24, :TAKEDOWN
    m.at 27, :UPROAR
    m.at 30, :ROOST
    m.at 33, :MOONBLAST
    m.at 36, :HYPNOSIS
    m.at 39, :DREAMEATER
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :AMNESIA, :ATTRACT, :CALMMIND, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :HURRICANE, :HYPERVOICE, :IMPRISON, :MAGICCOAT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROOST, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SILVERWIND, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AGILITY, :DEFOG, :FEATHERDANCE, :HURRICANE, :MEANLOOK, :NIGHTSHADE, :SKYATTACK, :SUPERSONIC, :WHIRLWIND, :WINGATTACK
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.7
  s.weight        21.2
  s.color         :Brown
  s.shape         :Winged
  s.habitat       :Forest
  s.category      "Owl"
  s.pokedex_entry "It has an internal organ that senses the earth's rotation. Using this special organ, a Hoothoot begins hooting at precisely the same time every day."
  s.generation    2
  s.evolves_into  :NOCTOWL, :Level, 20
end

GameData::Species.define :NOCTOWL do |s|
  s.name          "Noctowl"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 100, attack: 50, defense: 50, speed: 70, sp_atk: 86, sp_def: 96
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      158
  s.catch_rate    90
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :INSOMNIA, :KEENEYE
  s.hidden_abilities :TINTEDLENS
  s.moves do |m|
    m.at 1, :SKYATTACK
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 1, :TACKLE
    m.at 1, :ECHOEDVOICE
    m.at 9, :CONFUSION
    m.at 12, :REFLECT
    m.at 15, :PSYCHOSHIFT
    m.at 18, :AIRSLASH
    m.at 23, :EXTRASENSORY
    m.at 28, :TAKEDOWN
    m.at 33, :UPROAR
    m.at 38, :ROOST
    m.at 43, :MOONBLAST
    m.at 48, :HYPNOSIS
    m.at 53, :DREAMEATER
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :AMNESIA, :ATTRACT, :CALMMIND, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :HYPERVOICE, :IMPRISON, :LASERFOCUS, :MAGICCOAT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROOST, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SILVERWIND, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        1.6
  s.weight        40.8
  s.color         :Brown
  s.shape         :Winged
  s.habitat       :Forest
  s.category      "Owl"
  s.pokedex_entry "It unfailingly catches prey in darkness. Noctowl owe their success to superior vision that allows them to see in minimal light, and to their supple and silent wings."
  s.generation    2
end

GameData::Species.define :IGGLYBUFF do |s|
  s.name          "Igglybuff"
  s.types         :NORMAL, :FAIRY
  s.base_stats    hp: 90, attack: 30, defense: 15, speed: 15, sp_atk: 40, sp_def: 20
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      42
  s.catch_rate    170
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :CUTECHARM, :COMPETITIVE
  s.hidden_abilities :FRIENDGUARD
  s.moves do |m|
    m.at 1, :SING
    m.at 1, :POUND
    m.at 1, :COPYCAT
    m.at 4, :DEFENSECURL
    m.at 8, :SWEETKISS
    m.at 12, :DISARMINGVOICE
    m.at 16, :DISABLE
    m.at 20, :CHARM
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BOUNCE, :CAPTIVATE, :CHARM, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FIREBLAST, :FLAMETHROWER, :FLASH, :FLING, :FRUSTRATION, :GRASSKNOT, :GRAVITY, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICYWIND, :INCINERATE, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MISTYTERRAIN, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROLLOUT, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THUNDERWAVE, :UPROAR, :WATERPULSE, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_moves     :COVET, :FAKETEARS, :GRAVITY, :HEALPULSE, :LASTRESORT, :MISTYTERRAIN, :PERISHSONG, :PRESENT, :ROLLOUT, :WISH
  s.egg_groups    :Undiscovered
  s.hatch_steps   2560
  s.height        0.3
  s.weight        1.0
  s.color         :Pink
  s.shape         :Bipedal
  s.habitat       :Grassland
  s.category      "Balloon"
  s.pokedex_entry "Its soft and pliable body is very bouncy. When it sings continuously with all its might, its body steadily turns a deepening pink color."
  s.generation    2
  s.evolves_into  :JIGGLYPUFF, :Happiness
end

GameData::Species.define :AIPOM do |s|
  s.name          "Aipom"
  s.types         :NORMAL
  s.base_stats    hp: 55, attack: 70, defense: 55, speed: 85, sp_atk: 40, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      72
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :RUNAWAY, :PICKUP
  s.hidden_abilities :SKILLLINK
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :TAILWHIP
    m.at 4, :SANDATTACK
    m.at 8, :ASTONISH
    m.at 11, :BATONPASS
    m.at 15, :TICKLE
    m.at 18, :FURYSWIPES
    m.at 22, :SWIFT
    m.at 25, :SCREECH
    m.at 29, :AGILITY
    m.at 32, :DOUBLEHIT
    m.at 36, :FLING
    m.at 39, :NASTYPLOT
    m.at 43, :LASTRESORT
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BODYSLAM, :BOUNCE, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GRASSKNOT, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :ICEPUNCH, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :SPITE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :UTURN, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_moves     :AGILITY, :BEATUP, :BOUNCE, :COUNTER, :COVET, :FAKEOUT, :QUICKGUARD, :REVENGE, :SCREECH, :SLAM, :SPITE, :SWITCHEROO
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.8
  s.weight        11.5
  s.color         :Purple
  s.shape         :BipedalTail
  s.habitat       :Forest
  s.category      "Long Tail"
  s.pokedex_entry "Its tail ends with a dexterous, handlike appendage. However, because it uses the tail so much, Aipom's real hands have become rather clumsy."
  s.generation    2
  s.evolves_into  :AMBIPOM, :HasMove, DOUBLEHIT
  s.flags         :HasGenderedSprites
end

GameData::Species.define :GIRAFARIG do |s|
  s.name          "Girafarig"
  s.types         :NORMAL, :PSYCHIC
  s.base_stats    hp: 70, attack: 80, defense: 65, speed: 85, sp_atk: 90, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      159
  s.catch_rate    60
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :INNERFOCUS, :EARLYBIRD
  s.hidden_abilities :SAPSIPPER
  s.moves do |m|
    m.at 1, :POWERSWAP
    m.at 1, :GUARDSWAP
    m.at 1, :ASTONISH
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 5, :CONFUSION
    m.at 10, :ASSURANCE
    m.at 14, :STOMP
    m.at 19, :PSYBEAM
    m.at 23, :AGILITY
    m.at 28, :DOUBLEHIT
    m.at 32, :ZENHEADBUTT
    m.at 37, :CRUNCH
    m.at 41, :BATONPASS
    m.at 46, :NASTYPLOT
    m.at 50, :PSYCHIC
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GRASSKNOT, :GRAVITY, :HEADBUTT, :HIDDENPOWER, :HYPERVOICE, :IRONTAIL, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICK, :TRICKROOM, :UPROAR, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AMNESIA, :BEATUP, :DOUBLEKICK, :FUTURESIGHT, :MAGICCOAT, :MEANLOOK, :MIRRORCOAT, :TAKEDOWN, :WISH
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.5
  s.weight        41.5
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Long Neck"
  s.pokedex_entry "A Girafarig is an herbivore--it eats grass and tree shoots. While it is eating, its tail makes chewing and swallowing motions as if it were also eating."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :DUNSPARCE do |s|
  s.name          "Dunsparce"
  s.types         :NORMAL
  s.base_stats    hp: 100, attack: 70, defense: 70, speed: 45, sp_atk: 65, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      145
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :SERENEGRACE, :RUNAWAY
  s.hidden_abilities :RATTLED
  s.moves do |m|
    m.at 1, :FLAIL
    m.at 1, :DEFENSECURL
    m.at 4, :MUDSLAP
    m.at 8, :ROLLOUT
    m.at 12, :GLARE
    m.at 16, :SCREECH
    m.at 20, :ANCIENTPOWER
    m.at 24, :DRILLRUN
    m.at 28, :YAWN
    m.at 32, :BODYSLAM
    m.at 36, :TAKEDOWN
    m.at 40, :ROOST
    m.at 44, :DRAGONRUSH
    m.at 48, :COIL
    m.at 52, :DOUBLEEDGE
    m.at 56, :ENDEAVOR
  end
  s.tutor_moves   :AGILITY, :AIRSLASH, :AMNESIA, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :BATONPASS, :BIND, :BLIZZARD, :BODYSLAM, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DRILLRUN, :DUALWINGBEAT, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FRUSTRATION, :GYROBALL, :HEADBUTT, :HELPINGHAND, :HEX, :HIDDENPOWER, :ICEBEAM, :INCINERATE, :IRONTAIL, :LASTRESORT, :MAGICCOAT, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :POISONJAB, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROOST, :ROUND, :SCALESHOT, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TERRAINPULSE, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :WATERPULSE, :WILDCHARGE, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AGILITY, :ANCIENTPOWER, :AQUATAIL, :ASTONISH, :BITE, :CURSE, :HEADBUTT, :HEX, :LASTRESORT, :MAGICCOAT, :SNORE
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.5
  s.weight        14.0
  s.color         :Yellow
  s.shape         :Serpentine
  s.habitat       :Cave
  s.category      "Land Snake"
  s.pokedex_entry "Its drill-tipped tail is used to burrow into the ground backwards. This Pokémon is known to make its nest in complex shapes deep under the ground."
  s.generation    2
end

GameData::Species.define :TEDDIURSA do |s|
  s.name          "Teddiursa"
  s.types         :NORMAL
  s.base_stats    hp: 60, attack: 80, defense: 50, speed: 40, sp_atk: 50, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      66
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :PICKUP, :QUICKFEET
  s.hidden_abilities :HONEYGATHER
  s.moves do |m|
    m.at 1, :FLING
    m.at 1, :COVET
    m.at 1, :SCRATCH
    m.at 1, :BABYDOLLEYES
    m.at 1, :LICK
    m.at 1, :FAKETEARS
    m.at 8, :FURYSWIPES
    m.at 15, :PAYBACK
    m.at 22, :SWEETSCENT
    m.at 25, :PLAYNICE
    m.at 29, :SLASH
    m.at 36, :CHARM
    m.at 43, :REST
    m.at 43, :SNORE
    m.at 50, :THRASH
    m.at 57, :FLING
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERVOICE, :ICEPUNCH, :LASTRESORT, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THUNDERPUNCH, :TORMENT, :WORKUP, :TERABLAST
  s.egg_moves     :BELLYDRUM, :CLOSECOMBAT, :COUNTER, :CROSSCHOP, :CRUNCH, :DOUBLEEDGE, :FAKETEARS, :METALCLAW, :NIGHTSLASH, :PLAYROUGH, :SEISMICTOSS, :TAKEDOWN, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        8.8
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Little Bear"
  s.pokedex_entry "It licks its palms that are sweetened by being soaked in honey. A Teddiursa makes its own honey by blending fruits and pollen collected by Beedrill."
  s.generation    2
  s.evolves_into  :URSARING, :Level, 30
end

GameData::Species.define :URSARING do |s|
  s.name          "Ursaring"
  s.types         :NORMAL
  s.base_stats    hp: 90, attack: 130, defense: 75, speed: 55, sp_atk: 75, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :GUTS, :QUICKFEET
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 1, :HAMMERARM
    m.at 1, :FLING
    m.at 1, :BABYDOLLEYES
    m.at 1, :CHARM
    m.at 1, :COVET
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :LICK
    m.at 1, :FAKETEARS
    m.at 8, :FURYSWIPES
    m.at 15, :PAYBACK
    m.at 22, :SWEETSCENT
    m.at 25, :PLAYNICE
    m.at 29, :SLASH
    m.at 38, :SCARYFACE
    m.at 47, :REST
    m.at 49, :SNORE
    m.at 58, :THRASH
    m.at 67, :HAMMERARM
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :AVALANCHE, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICEPUNCH, :LASERFOCUS, :LASTRESORT, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SMACKDOWN, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :THUNDERPUNCH, :TORMENT, :UPROAR, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.8
  s.weight        125.8
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Hibernator"
  s.pokedex_entry "In forests, it is said that there are many streams and towering trees where an Ursaring gathers food. It walks through its forest collecting food every day."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :PORYGON2 do |s|
  s.name          "Porygon2"
  s.types         :NORMAL
  s.base_stats    hp: 85, attack: 80, defense: 90, speed: 60, sp_atk: 105, sp_def: 95
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      180
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :TRACE, :DOWNLOAD
  s.hidden_abilities :ANALYTIC
  s.moves do |m|
    m.at 1, :DEFENSECURL
    m.at 1, :TACKLE
    m.at 1, :CONVERSION
    m.at 1, :RECYCLE
    m.at 1, :MAGNETRISE
    m.at 15, :THUNDERSHOCK
    m.at 20, :PSYBEAM
    m.at 25, :CONVERSION2
    m.at 30, :AGILITY
    m.at 35, :RECOVER
    m.at 40, :DISCHARGE
    m.at 45, :TRIATTACK
    m.at 50, :MAGICCOAT
    m.at 55, :LOCKON
    m.at 60, :ZAPCANNON
    m.at 65, :HYPERBEAM
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ALLYSWITCH, :BLIZZARD, :CHARGEBEAM, :CONFIDE, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EERIEIMPULSE, :ELECTROWEB, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :GUARDSWAP, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASTRESORT, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PAINSPLIT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPEEDSWAP, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.6
  s.weight        32.5
  s.color         :Red
  s.shape         :HeadLegs
  s.habitat       :Urban
  s.category      "Virtual"
  s.pokedex_entry "It was created by humans using the power of science. It has been given artificial intelligence that enables it to learn new gestures and emotions on its own."
  s.generation    2
  s.evolves_into  :PORYGONZ, :TradeItem, DUBIOUSDISC
end

GameData::Species.define :STANTLER do |s|
  s.name          "Stantler"
  s.types         :NORMAL
  s.base_stats    hp: 73, attack: 95, defense: 62, speed: 85, sp_atk: 85, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      163
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :INTIMIDATE, :FRISK
  s.hidden_abilities :SAPSIPPER
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 3, :LEER
    m.at 7, :ASTONISH
    m.at 10, :HYPNOSIS
    m.at 13, :STOMP
    m.at 16, :SANDATTACK
    m.at 21, :TAKEDOWN
    m.at 23, :CONFUSERAY
    m.at 27, :CALMMIND
    m.at 33, :ROLEPLAY
    m.at 38, :ZENHEADBUTT
    m.at 43, :LUNGE
    m.at 49, :IMPRISON
    m.at 50, :ENTRAINMENT
    m.at 55, :DOUBLEEDGE
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BOUNCE, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :HEADBUTT, :HIDDENPOWER, :IRONTAIL, :LASTRESORT, :LIGHTSCREEN, :MAGICROOM, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROLEPLAY, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICKROOM, :UPROAR, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BITE, :DISABLE, :DOUBLEKICK, :EXTRASENSORY, :MEGAHORN, :SPITE, :THRASH, :ZENHEADBUTT
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.4
  s.weight        71.2
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Forest
  s.category      "Big Horn"
  s.pokedex_entry "Stantler's magnificent antlers were once traded at high prices as works of art. As a result, this Pokémon was hunted close to extinction."
  s.generation    2
end

GameData::Species.define :SMEARGLE do |s|
  s.name          "Smeargle"
  s.types         :NORMAL
  s.base_stats    hp: 55, attack: 20, defense: 35, speed: 75, sp_atk: 20, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      88
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :OWNTEMPO, :TECHNICIAN
  s.hidden_abilities :MOODY
  s.moves do |m|
    m.at 1, :SKETCH
    m.at 11, :SKETCH
    m.at 21, :SKETCH
    m.at 31, :SKETCH
    m.at 41, :SKETCH
    m.at 51, :SKETCH
    m.at 61, :SKETCH
    m.at 71, :SKETCH
    m.at 81, :SKETCH
    m.at 91, :SKETCH
  end
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.2
  s.weight        58.0
  s.color         :White
  s.shape         :BipedalTail
  s.habitat       :Urban
  s.category      "Painter"
  s.pokedex_entry "A Smeargle marks its territory using a fluid that leaks out from the tip of its tail. About 5,000 different marks left by this Pokémon have been found."
  s.generation    2
end

GameData::Species.define :MILTANK do |s|
  s.name          "Miltank"
  s.types         :NORMAL
  s.base_stats    hp: 95, attack: 80, defense: 105, speed: 100, sp_atk: 40, sp_def: 70
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Slow
  s.base_exp      172
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :THICKFAT, :SCRAPPY
  s.hidden_abilities :SAPSIPPER
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 5, :ROLLOUT
    m.at 10, :DEFENSECURL
    m.at 15, :STOMP
    m.at 20, :HEALBELL
    m.at 25, :HEADBUTT
    m.at 30, :ZENHEADBUTT
    m.at 35, :MILKDRINK
    m.at 40, :BODYSLAM
    m.at 45, :PLAYROUGH
    m.at 50, :CHARM
    m.at 55, :HIGHHORSEPOWER
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CHARM, :CONFIDE, :COUNTER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEADBUTT, :HEALBELL, :HEAVYSLAM, :HELPINGHAND, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONHEAD, :IRONTAIL, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEALTHROCK, :STEELROLLER, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :WATERPULSE, :WHIRLPOOL, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BELCH, :CURSE, :DOUBLEEDGE, :FOCUSPUNCH, :HAMMERARM, :HELPINGHAND, :PRESENT, :REVERSAL, :SEISMICTOSS
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.2
  s.weight        75.5
  s.color         :Pink
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Milk Cow"
  s.pokedex_entry "It gives over five gallons of milk daily. Its sweet milk is enjoyed by children and adults alike. People who can't drink milk turn it into yogurt and eat it instead."
  s.generation    2
  s.wild_item_common   :MOOMOOMILK
  s.wild_item_uncommon :MOOMOOMILK
  s.wild_item_rare     :MOOMOOMILK
end

GameData::Species.define :BLISSEY do |s|
  s.name          "Blissey"
  s.types         :NORMAL
  s.base_stats    hp: 255, attack: 10, defense: 10, speed: 55, sp_atk: 75, sp_def: 135
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Fast
  s.base_exp      635
  s.catch_rate    30
  s.happiness     140
  s.evs           hp: 3
  s.abilities     :NATURALCURE, :SERENEGRACE
  s.hidden_abilities :HEALER
  s.moves do |m|
    m.at 1, :SWEETKISS
    m.at 1, :DISARMINGVOICE
    m.at 1, :COVET
    m.at 1, :CHARM
    m.at 1, :MINIMIZE
    m.at 1, :POUND
    m.at 1, :COPYCAT
    m.at 1, :DEFENSECURL
    m.at 4, :TAILWHIP
    m.at 8, :ECHOEDVOICE
    m.at 12, :LIFEDEW
    m.at 16, :SING
    m.at 20, :FLING
    m.at 24, :TAKEDOWN
    m.at 28, :HEALPULSE
    m.at 32, :HELPINGHAND
    m.at 36, :LIGHTSCREEN
    m.at 40, :DOUBLEEDGE
    m.at 44, :SOFTBOILED
    m.at 48, :LASTRESORT
    m.at 52, :HEALINGWISH
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COUNTER, :COVET, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HAIL, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :RECYCLE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOFTBOILED, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRIATTACK, :UPROAR, :WATERPULSE, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   10240
  s.height        1.5
  s.weight        46.8
  s.color         :Pink
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Happiness"
  s.pokedex_entry "If it senses sadness with its fluffy fur, a Blissey will rush over to the sad person, however far away, to share an egg of happiness that brings a smile to any face."
  s.generation    2
  s.wild_item_common   :LUCKYEGG
  s.wild_item_uncommon :LUCKYEGG
  s.wild_item_rare     :LUCKYEGG
end

GameData::Species.define :ZIGZAGOON do |s|
  s.name          "Zigzagoon"
  s.types         :NORMAL
  s.base_stats    hp: 38, attack: 30, defense: 41, speed: 60, sp_atk: 30, sp_def: 41
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      56
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :PICKUP, :GLUTTONY
  s.hidden_abilities :QUICKFEET
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 3, :SANDATTACK
    m.at 6, :TAILWHIP
    m.at 9, :COVET
    m.at 12, :HEADBUTT
    m.at 15, :BABYDOLLEYES
    m.at 18, :PINMISSILE
    m.at 21, :REST
    m.at 24, :TAKEDOWN
    m.at 27, :FLING
    m.at 30, :FLAIL
    m.at 33, :BELLYDRUM
    m.at 36, :DOUBLEEDGE
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :FURYCUTTER, :GRASSKNOT, :GUNKSHOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASHOUT, :LASTRESORT, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PINMISSILE, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SURF, :SWAGGER, :SWIFT, :TAILSLAP, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICK, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_moves     :CHARM, :EXTREMESPEED, :HELPINGHAND, :MUDSLAP, :SIMPLEBEAM, :TICKLE, :TRICK
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.4
  s.weight        17.5
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Tiny Raccoon"
  s.pokedex_entry "Rubbing its nose against the ground, it always wanders about back and forth in search of something. It is distinguished by the zigzag footprints it leaves."
  s.generation    3
  s.evolves_into  :LINOONE, :Level, 20
  s.wild_item_common   :POTION
  s.wild_item_uncommon :REVIVE
end

GameData::Species.define :LINOONE do |s|
  s.name          "Linoone"
  s.types         :NORMAL
  s.base_stats    hp: 78, attack: 70, defense: 61, speed: 100, sp_atk: 50, sp_def: 61
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      147
  s.catch_rate    90
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :PICKUP, :GLUTTONY
  s.hidden_abilities :QUICKFEET
  s.moves do |m|
    m.at 0, :SLASH
    m.at 1, :SWITCHEROO
    m.at 1, :PINMISSILE
    m.at 1, :BABYDOLLEYES
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :SANDATTACK
    m.at 1, :TAILWHIP
    m.at 9, :COVET
    m.at 12, :HEADBUTT
    m.at 15, :HONECLAWS
    m.at 18, :FURYSWIPES
    m.at 23, :REST
    m.at 28, :TAKEDOWN
    m.at 33, :FLING
    m.at 38, :FLAIL
    m.at 43, :BELLYDRUM
    m.at 48, :DOUBLEEDGE
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASHOUT, :LASTRESORT, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PINMISSILE, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SURF, :SWAGGER, :SWIFT, :TAILSLAP, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICK, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.5
  s.weight        32.5
  s.color         :White
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Rushing"
  s.pokedex_entry "It is exceedingly fast if it only has to run in a straight line. When it spots pond- dwelling prey underwater, it quickly leaps in and catches it with its sharp claws."
  s.generation    3
  s.evolves_into  :OBSTAGOON, :None
  s.wild_item_common   :POTION
  s.wild_item_uncommon :MAXREVIVE
end

GameData::Species.define :TAILLOW do |s|
  s.name          "Taillow"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 40, attack: 55, defense: 30, speed: 85, sp_atk: 30, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      54
  s.catch_rate    200
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :GUTS
  s.hidden_abilities :SCRAPPY
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 5, :FOCUSENERGY
    m.at 9, :QUICKATTACK
    m.at 13, :WINGATTACK
    m.at 17, :DOUBLETEAM
    m.at 21, :AERIALACE
    m.at 25, :QUICKGUARD
    m.at 29, :AGILITY
    m.at 33, :AIRSLASH
    m.at 37, :ENDEAVOR
    m.at 41, :BRAVEBIRD
    m.at 45, :REVERSAL
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :BOOMBURST, :BRAVEBIRD, :HURRICANE, :SKYATTACK, :SUPERSONIC, :WHIRLWIND
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.3
  s.weight        2.3
  s.color         :Blue
  s.shape         :Winged
  s.habitat       :Grassland
  s.category      "Tiny Swallow"
  s.pokedex_entry "Although it is small, it is very courageous. It will take on a larger Skarmory on an equal footing. However, its will weakens if it becomes hungry."
  s.generation    3
  s.evolves_into  :SWELLOW, :Level, 22
end

GameData::Species.define :SWELLOW do |s|
  s.name          "Swellow"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 60, attack: 85, defense: 60, speed: 125, sp_atk: 75, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      159
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :GUTS
  s.hidden_abilities :SCRAPPY
  s.moves do |m|
    m.at 1, :BRAVEBIRD
    m.at 1, :AIRSLASH
    m.at 1, :PLUCK
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 1, :FOCUSENERGY
    m.at 1, :QUICKATTACK
    m.at 5, :FOCUSENERGY
    m.at 9, :QUICKATTACK
    m.at 13, :WINGATTACK
    m.at 17, :DOUBLETEAM
    m.at 21, :AERIALACE
    m.at 27, :QUICKGUARD
    m.at 33, :AGILITY
    m.at 39, :AIRSLASH
    m.at 45, :ENDEAVOR
    m.at 51, :BRAVEBIRD
    m.at 57, :REVERSAL
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :LASERFOCUS, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.7
  s.weight        19.8
  s.color         :Blue
  s.shape         :Winged
  s.habitat       :Grassland
  s.category      "Swallow"
  s.pokedex_entry "A Swellow dives upon prey from far above. It never misses its targets. It takes to the skies in search of lands with a warm climate."
  s.generation    3
end

GameData::Species.define :SLAKOTH do |s|
  s.name          "Slakoth"
  s.types         :NORMAL
  s.base_stats    hp: 60, attack: 60, defense: 60, speed: 30, sp_atk: 35, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      56
  s.catch_rate    255
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :TRUANT
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :YAWN
    m.at 6, :ENCORE
    m.at 9, :SLACKOFF
    m.at 14, :REST
    m.at 17, :AMNESIA
    m.at 22, :COVET
    m.at 25, :HEADBUTT
    m.at 30, :COUNTER
    m.at 33, :FLAIL
    m.at 38, :PLAYROUGH
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULKUP, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_moves     :AFTERYOU, :BODYSLAM, :CRUSHCLAW, :CURSE, :HAMMERARM, :NIGHTSLASH, :SLASH, :SNORE, :TICKLE
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.8
  s.weight        24.0
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Forest
  s.category      "Slacker"
  s.pokedex_entry "It sleeps virtually all day and night long. It doesn't change its nest its entire life, but it sometimes travels great distances by swimming in rivers."
  s.generation    3
  s.evolves_into  :VIGOROTH, :Level, 18
end

GameData::Species.define :VIGOROTH do |s|
  s.name          "Vigoroth"
  s.types         :NORMAL
  s.base_stats    hp: 80, attack: 80, defense: 80, speed: 90, sp_atk: 55, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      154
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :VITALSPIRIT
  s.moves do |m|
    m.at 1, :REVERSAL
    m.at 1, :YAWN
    m.at 1, :SLACKOFF
    m.at 1, :REST
    m.at 1, :AMNESIA
    m.at 1, :COVET
    m.at 1, :FLAIL
    m.at 1, :PLAYROUGH
    m.at 1, :SCRATCH
    m.at 1, :FOCUSENERGY
    m.at 1, :ENCORE
    m.at 1, :UPROAR
    m.at 6, :ENCORE
    m.at 9, :UPROAR
    m.at 14, :FURYSWIPES
    m.at 17, :ENDURE
    m.at 23, :SLASH
    m.at 27, :HEADBUTT
    m.at 33, :COUNTER
    m.at 37, :FOCUSPUNCH
    m.at 43, :REVERSAL
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :UPROAR, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        1.4
  s.weight        46.5
  s.color         :White
  s.shape         :BipedalTail
  s.habitat       :Forest
  s.category      "Wild Monkey"
  s.pokedex_entry "It can't keep still because its blood boils with energy. It runs through the fields and mountains all day to calm itself. If it doesn't, it can't sleep at night."
  s.generation    3
  s.evolves_into  :SLAKING, :Level, 36
end

GameData::Species.define :SLAKING do |s|
  s.name          "Slaking"
  s.types         :NORMAL
  s.base_stats    hp: 150, attack: 160, defense: 100, speed: 100, sp_atk: 95, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 3
  s.abilities     :TRUANT
  s.moves do |m|
    m.at 0, :SWAGGER
    m.at 1, :HAMMERARM
    m.at 1, :FLING
    m.at 1, :PLAYROUGH
    m.at 1, :REVERSAL
    m.at 1, :FOCUSENERGY
    m.at 1, :UPROAR
    m.at 1, :FURYSWIPES
    m.at 1, :ENDURE
    m.at 1, :SLASH
    m.at 1, :FOCUSPUNCH
    m.at 1, :SCRATCH
    m.at 1, :YAWN
    m.at 1, :ENCORE
    m.at 1, :SLACKOFF
    m.at 6, :ENCORE
    m.at 9, :SLACKOFF
    m.at 14, :REST
    m.at 17, :AMNESIA
    m.at 23, :COVET
    m.at 27, :HEADBUTT
    m.at 33, :COUNTER
    m.at 39, :FLAIL
    m.at 47, :FLING
    m.at 53, :SUCKERPUNCH
    m.at 61, :HAMMERARM
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ATTRACT, :BLIZZARD, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :QUASH, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        2.0
  s.weight        130.5
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Lazy"
  s.pokedex_entry "Hordes of Slaking gather around trees when fruits come into season. They wait around patiently for ripened fruits to fall out of the trees."
  s.generation    3
end

GameData::Species.define :WHISMUR do |s|
  s.name          "Whismur"
  s.types         :NORMAL
  s.base_stats    hp: 64, attack: 51, defense: 23, speed: 28, sp_atk: 51, sp_def: 23
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      48
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :SOUNDPROOF
  s.hidden_abilities :RATTLED
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :POUND
    m.at 5, :ECHOEDVOICE
    m.at 10, :HOWL
    m.at 15, :REST
    m.at 15, :SLEEPTALK
    m.at 21, :STOMP
    m.at 25, :ROAR
    m.at 30, :SUPERSONIC
    m.at 35, :UPROAR
    m.at 40, :SCREECH
    m.at 45, :HYPERVOICE
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FRUSTRATION, :HEADBUTT, :HIDDENPOWER, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROLLOUT, :ROUND, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THUNDERPUNCH, :UPROAR, :WATERPULSE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :CIRCLETHROW, :DISARMINGVOICE, :ENDEAVOR, :EXTRASENSORY, :FAKETEARS, :HAMMERARM, :SMOKESCREEN, :SNORE, :TAKEDOWN, :WHIRLWIND
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        16.3
  s.color         :Pink
  s.shape         :BipedalTail
  s.habitat       :Cave
  s.category      "Whisper"
  s.pokedex_entry "Its cries equal a jet plane in volume. It inhales through its ear canals. Because of this system, it can cry continually without having to catch its breath."
  s.generation    3
  s.evolves_into  :LOUDRED, :Level, 20
end

GameData::Species.define :LOUDRED do |s|
  s.name          "Loudred"
  s.types         :NORMAL
  s.base_stats    hp: 84, attack: 71, defense: 43, speed: 48, sp_atk: 71, sp_def: 43
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      126
  s.catch_rate    120
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :SOUNDPROOF
  s.hidden_abilities :SCRAPPY
  s.moves do |m|
    m.at 0, :BITE
    m.at 1, :ASTONISH
    m.at 1, :POUND
    m.at 1, :ECHOEDVOICE
    m.at 1, :HOWL
    m.at 15, :REST
    m.at 15, :SLEEPTALK
    m.at 23, :STOMP
    m.at 29, :ROAR
    m.at 36, :SUPERSONIC
    m.at 43, :UPROAR
    m.at 50, :SCREECH
    m.at 57, :HYPERVOICE
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FRUSTRATION, :HEADBUTT, :HIDDENPOWER, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THUNDERPUNCH, :TORMENT, :UPROAR, :WATERPULSE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        40.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :Cave
  s.category      "Big Voice"
  s.pokedex_entry "It positions the round speakers on its head to assail foes with ultrasonic waves at massive volume. It builds power by stomping the ground."
  s.generation    3
  s.evolves_into  :EXPLOUD, :Level, 40
end

GameData::Species.define :EXPLOUD do |s|
  s.name          "Exploud"
  s.types         :NORMAL
  s.base_stats    hp: 104, attack: 91, defense: 63, speed: 68, sp_atk: 91, sp_def: 73
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      245
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 3
  s.abilities     :SOUNDPROOF
  s.hidden_abilities :SCRAPPY
  s.moves do |m|
    m.at 0, :CRUNCH
    m.at 1, :BITE
    m.at 1, :ICEFANG
    m.at 1, :FIREFANG
    m.at 1, :THUNDERFANG
    m.at 1, :ASTONISH
    m.at 1, :POUND
    m.at 1, :ECHOEDVOICE
    m.at 1, :HOWL
    m.at 15, :REST
    m.at 15, :SLEEPTALK
    m.at 23, :STOMP
    m.at 29, :ROAR
    m.at 36, :SUPERSONIC
    m.at 45, :UPROAR
    m.at 54, :SCREECH
    m.at 63, :HYPERVOICE
    m.at 72, :BOOMBURST
    m.at 81, :HYPERBEAM
  end
  s.tutor_moves   :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FIREBLAST, :FIREFANG, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEFANG, :ICEPUNCH, :ICYWIND, :INCINERATE, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :TAUNT, :TERRAINPULSE, :THUNDERFANG, :THUNDERPUNCH, :TORMENT, :UPROAR, :WATERPULSE, :WHIRLPOOL, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        1.5
  s.weight        84.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :Cave
  s.category      "Loud Noise"
  s.pokedex_entry "It has sound-generating organs all over its body. It communicates with others by adjusting the tone and volume of the cries it emits."
  s.generation    3
end

GameData::Species.define :AZURILL do |s|
  s.name          "Azurill"
  s.types         :NORMAL, :FAIRY
  s.base_stats    hp: 50, attack: 20, defense: 40, speed: 20, sp_atk: 20, sp_def: 40
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      38
  s.catch_rate    150
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :THICKFAT, :HUGEPOWER
  s.hidden_abilities :SAPSIPPER
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 1, :WATERGUN
    m.at 1, :TAILWHIP
    m.at 3, :HELPINGHAND
    m.at 6, :BUBBLEBEAM
    m.at 9, :CHARM
    m.at 12, :SLAM
    m.at 15, :BOUNCE
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRUTALSWING, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :FRUSTRATION, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LIGHTSCREEN, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLLOUT, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :UPROAR, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_moves     :AQUAJET, :BELLYDRUM, :BODYSLAM, :COPYCAT, :ENCORE, :FAKETEARS, :MUDDYWATER, :PERISHSONG, :PRESENT, :SING, :SLAM, :SOAK, :SUPERSONIC, :TICKLE
  s.egg_groups    :Undiscovered
  s.hatch_steps   2560
  s.height        0.2
  s.weight        2.0
  s.color         :Blue
  s.shape         :HeadLegs
  s.habitat       :WatersEdge
  s.category      "Polka Dot"
  s.pokedex_entry "Its tail, which is packed with nutrition, is very bouncy like a rubber ball. On sunny days they gather at the edge of water and splash about for fun."
  s.generation    3
  s.evolves_into  :MARILL, :Happiness
end

GameData::Species.define :SKITTY do |s|
  s.name          "Skitty"
  s.types         :NORMAL
  s.base_stats    hp: 50, attack: 45, defense: 45, speed: 50, sp_atk: 35, sp_def: 35
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      52
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :CUTECHARM, :NORMALIZE
  s.hidden_abilities :WONDERSKIN
  s.moves do |m|
    m.at 1, :FAKEOUT
    m.at 1, :GROWL
    m.at 1, :TAILWHIP
    m.at 4, :TACKLE
    m.at 7, :SING
    m.at 10, :ATTRACT
    m.at 13, :DISARMINGVOICE
    m.at 16, :FURYSWIPES
    m.at 19, :COPYCAT
    m.at 22, :PAYBACK
    m.at 25, :CHARM
    m.at 31, :FACADE
    m.at 34, :COVET
    m.at 37, :HEALBELL
    m.at 40, :DOUBLEEDGE
    m.at 43, :BABYDOLLEYES
    m.at 46, :PLAYROUGH
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COVET, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GRASSKNOT, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASTRESORT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :UPROAR, :WATERPULSE, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BATONPASS, :COSMICPOWER, :FAKEOUT, :FAKETEARS, :HELPINGHAND, :LASTRESORT, :SIMPLEBEAM, :SUCKERPUNCH, :TICKLE, :UPROAR, :WISH, :ZENHEADBUTT
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   3840
  s.height        0.6
  s.weight        11.0
  s.color         :Pink
  s.shape         :Quadruped
  s.habitat       :Forest
  s.category      "Kitten"
  s.pokedex_entry "A Skitty's adorably cute behavior makes it highly popular. In battle, it makes its tail puff out. It threatens foes with a sharp growl."
  s.generation    3
  s.evolves_into  :DELCATTY, :Item, MOONSTONE
end

GameData::Species.define :DELCATTY do |s|
  s.name          "Delcatty"
  s.types         :NORMAL
  s.base_stats    hp: 70, attack: 65, defense: 65, speed: 90, sp_atk: 55, sp_def: 55
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      140
  s.catch_rate    60
  s.happiness     50
  s.evs           hp: 1, speed: 1
  s.abilities     :CUTECHARM, :NORMALIZE
  s.hidden_abilities :WONDERSKIN
  s.moves do |m|
    m.at 1, :FAKEOUT
    m.at 1, :SING
    m.at 1, :DISARMINGVOICE
    m.at 1, :FURYSWIPES
    m.at 1, :COPYCAT
    m.at 1, :PAYBACK
    m.at 1, :CHARM
    m.at 1, :FACADE
    m.at 1, :COVET
    m.at 1, :HEALBELL
    m.at 1, :DOUBLEEDGE
    m.at 1, :BABYDOLLEYES
    m.at 1, :PLAYROUGH
    m.at 1, :ATTRACT
    m.at 1, :GROWL
    m.at 1, :TAILWHIP
    m.at 1, :TACKLE
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COVET, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :UPROAR, :WATERPULSE, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   3840
  s.height        1.1
  s.weight        32.6
  s.color         :Purple
  s.shape         :Quadruped
  s.habitat       :Forest
  s.category      "Prim"
  s.pokedex_entry "Rather than keeping a permanent lair, it habitually seeks comfortable spots and sleeps there. It is nocturnal and becomes active at dusk."
  s.generation    3
end

GameData::Species.define :SPINDA do |s|
  s.name          "Spinda"
  s.types         :NORMAL
  s.base_stats    hp: 60, attack: 60, defense: 60, speed: 60, sp_atk: 60, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      126
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :OWNTEMPO, :TANGLEDFEET
  s.hidden_abilities :CONTRARY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 5, :COPYCAT
    m.at 10, :TEETERDANCE
    m.at 14, :PSYBEAM
    m.at 19, :HYPNOSIS
    m.at 23, :BODYSLAM
    m.at 28, :SUCKERPUNCH
    m.at 32, :TEETERDANCE
    m.at 37, :UPROAR
    m.at 41, :PSYCHUP
    m.at 46, :DOUBLEEDGE
    m.at 50, :FLAIL
    m.at 55, :THRASH
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEPUNCH, :ICYWIND, :LASTRESORT, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :RECYCLE, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :THIEF, :THUNDERPUNCH, :TRICK, :TRICKROOM, :UPROAR, :WATERPULSE, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BATONPASS, :DISABLE, :ENCORE, :FAKEOUT, :FAKETEARS, :GUARDSPLIT, :ICYWIND, :PSYCHOCUT, :PSYCHOSHIFT, :RAPIDSPIN, :ROLEPLAY, :TRICK, :WISH
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   3840
  s.height        1.1
  s.weight        5.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Spot Panda"
  s.pokedex_entry "It is distinguished by a pattern of spots that is always different. Its unsteady, tottering walk has the effect of fouling its foe's aim."
  s.generation    3
end

GameData::Species.define :SWABLU do |s|
  s.name          "Swablu"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 45, attack: 40, defense: 60, speed: 50, sp_atk: 40, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      62
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :NATURALCURE
  s.hidden_abilities :CLOUDNINE
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 4, :DISARMINGVOICE
    m.at 8, :MIST
    m.at 12, :FURYATTACK
    m.at 16, :ROUND
    m.at 20, :DRAGONBREATH
    m.at 24, :SAFEGUARD
    m.at 28, :SING
    m.at 32, :COTTONGUARD
    m.at 36, :TAKEDOWN
    m.at 40, :MOONBLAST
    m.at 44, :PERISHSONG
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRCUTTER, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :DREAMEATER, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :FACADE, :FALSESWIPE, :FLY, :FRUSTRATION, :HEALBELL, :HEATWAVE, :HIDDENPOWER, :HYPERVOICE, :ICEBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :OUTRAGE, :PLAYROUGH, :PLUCK, :POWERSWAP, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :TERABLAST
  s.egg_moves     :AGILITY, :ASTONISH, :DEFOG, :DRAGONRUSH, :FEATHERDANCE, :HAZE, :HYPERVOICE, :PLAYROUGH, :POWERSWAP, :ROOST, :TAILWIND
  s.egg_groups    :Flying, :Dragon
  s.hatch_steps   5120
  s.height        0.4
  s.weight        1.2
  s.color         :Blue
  s.shape         :Winged
  s.habitat       :Forest
  s.category      "Cotton Bird"
  s.pokedex_entry "A Pokémon that has wings like cottony clouds. After enduring winter, in which little food is available, Swablu flocks move closer to towns in the spring."
  s.generation    3
  s.evolves_into  :ALTARIA, :Level, 35
end

GameData::Species.define :ZANGOOSE do |s|
  s.name          "Zangoose"
  s.types         :NORMAL
  s.base_stats    hp: 73, attack: 115, defense: 60, speed: 90, sp_atk: 60, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      160
  s.catch_rate    90
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :IMMUNITY
  s.hidden_abilities :TOXICBOOST
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 5, :QUICKATTACK
    m.at 8, :FURYCUTTER
    m.at 12, :HONECLAWS
    m.at 15, :AERIALACE
    m.at 19, :SLASH
    m.at 22, :REVENGE
    m.at 26, :CRUSHCLAW
    m.at 29, :FALSESWIPE
    m.at 33, :FACADE
    m.at 36, :DETECT
    m.at 40, :XSCISSOR
    m.at 43, :TAUNT
    m.at 47, :SWORDSDANCE
    m.at 50, :CLOSECOMBAT
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EMBARGO, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :WATERPULSE, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_moves     :BELLYDRUM, :COUNTER, :CURSE, :DISABLE, :DOUBLEHIT, :DOUBLEKICK, :FEINT, :FINALGAMBIT, :FLAIL, :FURYSWIPES, :METALCLAW, :NIGHTSLASH, :QUICKGUARD
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.3
  s.weight        40.3
  s.color         :White
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Cat Ferret"
  s.pokedex_entry "When it battles, it stands on its hind legs and attacks with its sharply clawed forelegs. Its fur bristles if it encounters any Seviper."
  s.generation    3
  s.wild_item_uncommon :QUICKCLAW
end

GameData::Species.define :CASTFORM do |s|
  s.name          "Castform"
  s.types         :NORMAL
  s.base_stats    hp: 70, attack: 70, defense: 70, speed: 70, sp_atk: 70, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      147
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :FORECAST
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 10, :WATERGUN
    m.at 10, :EMBER
    m.at 10, :POWDERSNOW
    m.at 15, :HEADBUTT
    m.at 20, :RAINDANCE
    m.at 20, :SUNNYDAY
    m.at 20, :HAIL
    m.at 25, :WEATHERBALL
    m.at 35, :HYDROPUMP
    m.at 35, :FIREBLAST
    m.at 35, :BLIZZARD
    m.at 45, :HURRICANE
  end
  s.tutor_moves   :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FRUSTRATION, :HAIL, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :INCINERATE, :LASTRESORT, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SANDSTORM, :SCALD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_moves     :AMNESIA, :CLEARSMOG, :COSMICPOWER, :DISABLE, :FUTURESIGHT, :GUARDSWAP, :HEX, :REFLECTTYPE
  s.egg_groups    :Fairy, :Amorphous
  s.hatch_steps   6400
  s.height        0.3
  s.weight        0.8
  s.color         :Gray
  s.shape         :Head
  s.habitat       :Grassland
  s.category      "Weather"
  s.pokedex_entry "It alters its form depending on the weather. Changes in the climate such as the temperature and humidity appear to affect its cellular structure."
  s.generation    3
  s.wild_item_common   :MYSTICWATER
  s.wild_item_uncommon :MYSTICWATER
  s.wild_item_rare     :MYSTICWATER
end

GameData::Species.define :KECLEON do |s|
  s.name          "Kecleon"
  s.types         :NORMAL
  s.base_stats    hp: 60, attack: 90, defense: 70, speed: 40, sp_atk: 60, sp_def: 120
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      154
  s.catch_rate    200
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :COLORCHANGE
  s.hidden_abilities :PROTEAN
  s.moves do |m|
    m.at 1, :THIEF
    m.at 1, :TAILWHIP
    m.at 1, :ASTONISH
    m.at 1, :LICK
    m.at 1, :SCRATCH
    m.at 4, :BIND
    m.at 7, :SHADOWSNEAK
    m.at 10, :FEINT
    m.at 13, :FURYSWIPES
    m.at 16, :DISABLE
    m.at 18, :PSYBEAM
    m.at 21, :ANCIENTPOWER
    m.at 25, :SLASH
    m.at 30, :DETECT
    m.at 33, :SHADOWCLAW
    m.at 38, :SCREECH
    m.at 42, :SUBSTITUTE
    m.at 46, :SUCKERPUNCH
    m.at 50, :FOULPLAY
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :BIND, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLING, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :LOWKICK, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :RAINDANCE, :RECYCLE, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROLLOUT, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STEALTHROCK, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRICK, :TRICKROOM, :WATERPULSE, :WONDERROOM, :WORKUP, :TERABLAST
  s.egg_moves     :DISABLE, :FAKEOUT, :FOULPLAY, :MAGICCOAT, :POWERUPPUNCH, :RECOVER, :TRICK
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        22.0
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Forest
  s.category      "Color Swap"
  s.pokedex_entry "A Pokémon that has the ability to alter its body colors to match its surroundings. A Kecleon reverts to its original colors if it is startled."
  s.generation    3
end

GameData::Species.define :STARLY do |s|
  s.name          "Starly"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 40, attack: 55, defense: 30, speed: 60, sp_atk: 30, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      49
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :KEENEYE
  s.hidden_abilities :RECKLESS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 5, :QUICKATTACK
    m.at 9, :WINGATTACK
    m.at 13, :DOUBLETEAM
    m.at 17, :ENDEAVOR
    m.at 21, :WHIRLWIND
    m.at 25, :AERIALACE
    m.at 29, :TAKEDOWN
    m.at 33, :AGILITY
    m.at 37, :BRAVEBIRD
    m.at 41, :FINALGAMBIT
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :ASTONISH, :DETECT, :DOUBLEEDGE, :FEATHERDANCE, :FURYATTACK, :REVENGE, :SANDATTACK, :UPROAR
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.3
  s.weight        2.0
  s.color         :Brown
  s.shape         :Winged
  s.category      "Starling"
  s.pokedex_entry "They flock in great numbers. Though small, they flap their wings with great power."
  s.generation    4
  s.evolves_into  :STARAVIA, :Level, 14
  s.flags         :HasGenderedSprites
end

GameData::Species.define :STARAVIA do |s|
  s.name          "Staravia"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 55, attack: 75, defense: 50, speed: 80, sp_atk: 40, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      119
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :INTIMIDATE
  s.hidden_abilities :RECKLESS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :QUICKATTACK
    m.at 5, :QUICKATTACK
    m.at 9, :WINGATTACK
    m.at 13, :DOUBLETEAM
    m.at 18, :ENDEAVOR
    m.at 23, :WHIRLWIND
    m.at 28, :AERIALACE
    m.at 33, :TAKEDOWN
    m.at 38, :AGILITY
    m.at 43, :BRAVEBIRD
    m.at 48, :FINALGAMBIT
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.6
  s.weight        15.5
  s.color         :Brown
  s.shape         :Winged
  s.category      "Starling"
  s.pokedex_entry "It flies around forests and fields in search of bug Pokémon. It stays within a huge flock."
  s.generation    4
  s.evolves_into  :STARAPTOR, :Level, 34
  s.flags         :HasGenderedSprites
end

GameData::Species.define :STARAPTOR do |s|
  s.name          "Staraptor"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 85, attack: 120, defense: 70, speed: 100, sp_atk: 50, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      243
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :INTIMIDATE
  s.hidden_abilities :RECKLESS
  s.moves do |m|
    m.at 0, :CLOSECOMBAT
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :QUICKATTACK
    m.at 1, :WINGATTACK
    m.at 5, :QUICKATTACK
    m.at 9, :WINGATTACK
    m.at 13, :DOUBLETEAM
    m.at 18, :ENDEAVOR
    m.at 23, :WHIRLWIND
    m.at 28, :AERIALACE
    m.at 33, :TAKEDOWN
    m.at 41, :AGILITY
    m.at 49, :BRAVEBIRD
    m.at 57, :FINALGAMBIT
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :LASERFOCUS, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        1.2
  s.weight        24.9
  s.color         :Brown
  s.shape         :Winged
  s.category      "Predator"
  s.pokedex_entry "It has a savage nature. It will courageously challenge foes that are much larger."
  s.generation    4
  s.flags         :HasGenderedSprites
end

GameData::Species.define :BIDOOF do |s|
  s.name          "Bidoof"
  s.types         :NORMAL
  s.base_stats    hp: 59, attack: 45, defense: 40, speed: 31, sp_atk: 35, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      50
  s.catch_rate    255
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :SIMPLE, :UNAWARE
  s.hidden_abilities :MOODY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 5, :DEFENSECURL
    m.at 9, :ROLLOUT
    m.at 13, :HEADBUTT
    m.at 17, :TAUNT
    m.at 21, :YAWN
    m.at 25, :CRUNCH
    m.at 29, :TAKEDOWN
    m.at 33, :SUPERFANG
    m.at 37, :SWORDSDANCE
    m.at 41, :AMNESIA
    m.at 45, :SUPERPOWER
    m.at 49, :CURSE
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BLIZZARD, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FRUSTRATION, :FURYCUTTER, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROLLOUT, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :STEALTHROCK, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :WORKUP, :TERABLAST
  s.egg_moves     :AQUATAIL, :DEFENSECURL, :DOUBLEEDGE, :FURYSWIPES, :QUICKATTACK, :ROLLOUT, :SKULLBASH
  s.egg_groups    :Water1, :Field
  s.hatch_steps   3840
  s.height        0.5
  s.weight        20.0
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Plump Mouse"
  s.pokedex_entry "With nerves of steel, nothing can perturb it. It is more agile and active than it appears."
  s.generation    4
  s.evolves_into  :BIBAREL, :Level, 15
  s.flags         :HasGenderedSprites
end

GameData::Species.define :BIBAREL do |s|
  s.name          "Bibarel"
  s.types         :NORMAL, :WATER
  s.base_stats    hp: 79, attack: 85, defense: 60, speed: 71, sp_atk: 55, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      144
  s.catch_rate    127
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SIMPLE, :UNAWARE
  s.hidden_abilities :MOODY
  s.moves do |m|
    m.at 0, :WATERGUN
    m.at 1, :AQUAJET
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 5, :DEFENSECURL
    m.at 9, :ROLLOUT
    m.at 13, :HEADBUTT
    m.at 18, :TAUNT
    m.at 23, :YAWN
    m.at 28, :CRUNCH
    m.at 33, :TAKEDOWN
    m.at 38, :SUPERFANG
    m.at 43, :SWORDSDANCE
    m.at 48, :AMNESIA
    m.at 53, :SUPERPOWER
    m.at 58, :CURSE
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BLIZZARD, :BULLDOZE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COVET, :CUT, :DIG, :DIVE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASTRESORT, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSMASH, :ROLLOUT, :ROUND, :SCALD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SUPERPOWER, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   3840
  s.height        1.0
  s.weight        31.5
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Beaver"
  s.pokedex_entry "It makes its nest by damming streams with bark and mud. It is known as an industrious worker."
  s.generation    4
  s.flags         :HasGenderedSprites
end

GameData::Species.define :AMBIPOM do |s|
  s.name          "Ambipom"
  s.types         :NORMAL
  s.base_stats    hp: 75, attack: 100, defense: 66, speed: 115, sp_atk: 60, sp_def: 66
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      169
  s.catch_rate    45
  s.happiness     100
  s.evs           speed: 2
  s.abilities     :TECHNICIAN, :PICKUP
  s.hidden_abilities :SKILLLINK
  s.moves do |m|
    m.at 1, :DUALCHOP
    m.at 1, :SCRATCH
    m.at 1, :TAILWHIP
    m.at 1, :SANDATTACK
    m.at 1, :ASTONISH
    m.at 4, :SANDATTACK
    m.at 8, :ASTONISH
    m.at 11, :BATONPASS
    m.at 15, :TICKLE
    m.at 18, :FURYSWIPES
    m.at 22, :SWIFT
    m.at 25, :SCREECH
    m.at 29, :AGILITY
    m.at 32, :DOUBLEHIT
    m.at 36, :FLING
    m.at 39, :NASTYPLOT
    m.at 43, :LASTRESORT
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BODYSLAM, :BOUNCE, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEPUNCH, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :SPITE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :UTURN, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.2
  s.weight        20.3
  s.color         :Purple
  s.shape         :BipedalTail
  s.category      "Long Tail"
  s.pokedex_entry "To eat, it deftly shucks nuts with its two tails. It rarely uses its arms now."
  s.generation    4
  s.flags         :HasGenderedSprites
end

GameData::Species.define :BUNEARY do |s|
  s.name          "Buneary"
  s.types         :NORMAL
  s.base_stats    hp: 55, attack: 66, defense: 44, speed: 85, sp_atk: 44, sp_def: 56
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      70
  s.catch_rate    190
  s.happiness     0
  s.evs           speed: 1
  s.abilities     :RUNAWAY, :KLUTZ
  s.hidden_abilities :LIMBER
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 1, :POUND
    m.at 4, :DEFENSECURL
    m.at 8, :BABYDOLLEYES
    m.at 12, :AFTERYOU
    m.at 16, :QUICKATTACK
    m.at 20, :DOUBLEKICK
    m.at 24, :CHARM
    m.at 28, :BATONPASS
    m.at 32, :HEADBUTT
    m.at 36, :AGILITY
    m.at 40, :ENTRAINMENT
    m.at 44, :FLATTER
    m.at 48, :BOUNCE
    m.at 52, :HEALINGWISH
  end
  s.tutor_moves   :AFTERYOU, :AGILITY, :ASSURANCE, :ATTRACT, :BATONPASS, :BOUNCE, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COSMICPOWER, :COVET, :CUT, :DIG, :DOUBLETEAM, :DRAINPUNCH, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FIREPUNCH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :IRONTAIL, :LASTRESORT, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRIPLEAXEL, :UPROAR, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_moves     :CIRCLETHROW, :COPYCAT, :COSMICPOWER, :DOUBLEHIT, :ENCORE, :FAKEOUT, :FAKETEARS, :FIREPUNCH, :FLAIL, :FOCUSPUNCH, :ICEPUNCH, :LOWKICK, :POWERUPPUNCH, :SWEETKISS, :SWITCHEROO, :TEETERDANCE, :THUNDERPUNCH
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   5120
  s.height        0.4
  s.weight        5.5
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Rabbit"
  s.pokedex_entry "It slams foes by sharply uncoiling its rolled ears. It stings enough to make a grown-up cry in pain."
  s.generation    4
  s.evolves_into  :LOPUNNY, :Happiness
end

GameData::Species.define :LOPUNNY do |s|
  s.name          "Lopunny"
  s.types         :NORMAL
  s.base_stats    hp: 65, attack: 76, defense: 84, speed: 105, sp_atk: 54, sp_def: 96
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    60
  s.happiness     140
  s.evs           speed: 2
  s.abilities     :CUTECHARM, :KLUTZ
  s.hidden_abilities :LIMBER
  s.moves do |m|
    m.at 1, :MIRRORCOAT
    m.at 1, :MAGICCOAT
    m.at 1, :SPLASH
    m.at 1, :POUND
    m.at 1, :DEFENSECURL
    m.at 1, :BABYDOLLEYES
    m.at 12, :AFTERYOU
    m.at 16, :QUICKATTACK
    m.at 20, :DOUBLEKICK
    m.at 24, :CHARM
    m.at 28, :BATONPASS
    m.at 32, :HEADBUTT
    m.at 36, :AGILITY
    m.at 40, :ENTRAINMENT
    m.at 44, :FLATTER
    m.at 48, :BOUNCE
    m.at 52, :HEALINGWISH
    m.at 56, :HIGHJUMPKICK
  end
  s.tutor_moves   :ACROBATICS, :AFTERYOU, :AGILITY, :ASSURANCE, :ATTRACT, :AURASPHERE, :BATONPASS, :BLIZZARD, :BOUNCE, :BRUTALSWING, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CLOSECOMBAT, :CONFIDE, :COSMICPOWER, :COVET, :CUT, :DIG, :DOUBLETEAM, :DRAINPUNCH, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRIPLEAXEL, :UPROAR, :UTURN, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   5120
  s.height        1.2
  s.weight        33.3
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Rabbit"
  s.pokedex_entry "An extremely cautious Pokémon. It cloaks its body with its fluffy ear fur when it senses danger."
  s.generation    4
end

GameData::Species.define :GLAMEOW do |s|
  s.name          "Glameow"
  s.types         :NORMAL
  s.base_stats    hp: 49, attack: 55, defense: 42, speed: 85, sp_atk: 42, sp_def: 37
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      62
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :LIMBER, :OWNTEMPO
  s.hidden_abilities :KEENEYE
  s.moves do |m|
    m.at 1, :FAKEOUT
    m.at 5, :SCRATCH
    m.at 8, :GROWL
    m.at 13, :HYPNOSIS
    m.at 17, :AERIALACE
    m.at 20, :FURYSWIPES
    m.at 25, :CHARM
    m.at 29, :TAUNT
    m.at 32, :RETALIATE
    m.at 37, :SLASH
    m.at 41, :SUCKERPUNCH
    m.at 44, :ATTRACT
    m.at 48, :HONECLAWS
    m.at 50, :PLAYROUGH
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERVOICE, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :TORMENT, :UTURN, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_moves     :ASSURANCE, :BITE, :FAKETEARS, :FLAIL, :LASTRESORT, :QUICKATTACK, :SANDATTACK, :TAILWHIP
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.5
  s.weight        3.9
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Catty"
  s.pokedex_entry "It claws if displeased and purrs when affectionate. Its fickleness is very popular among some."
  s.generation    4
  s.evolves_into  :PURUGLY, :Level, 38
end

GameData::Species.define :PURUGLY do |s|
  s.name          "Purugly"
  s.types         :NORMAL
  s.base_stats    hp: 71, attack: 82, defense: 64, speed: 112, sp_atk: 64, sp_def: 59
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      158
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :THICKFAT, :OWNTEMPO
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 0, :SWAGGER
    m.at 1, :FAKEOUT
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :SUCKERPUNCH
    m.at 1, :PLAYROUGH
    m.at 5, :SCRATCH
    m.at 8, :GROWL
    m.at 13, :HYPNOSIS
    m.at 17, :AERIALACE
    m.at 20, :FURYSWIPES
    m.at 25, :CHARM
    m.at 29, :TAUNT
    m.at 32, :RETALIATE
    m.at 37, :SLASH
    m.at 45, :BODYSLAM
    m.at 52, :ATTRACT
    m.at 60, :HONECLAWS
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROLLOUT, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNATCH, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :TORMENT, :UTURN, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        43.8
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Tiger Cat"
  s.pokedex_entry "It is a brazen brute that barges its way into another Pokémon's nest and claims it as its own."
  s.generation    4
end

GameData::Species.define :HAPPINY do |s|
  s.name          "Happiny"
  s.types         :NORMAL
  s.base_stats    hp: 100, attack: 5, defense: 5, speed: 30, sp_atk: 15, sp_def: 65
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Fast
  s.base_exp      110
  s.catch_rate    130
  s.happiness     140
  s.evs           hp: 1
  s.abilities     :NATURALCURE, :SERENEGRACE
  s.hidden_abilities :FRIENDGUARD
  s.moves do |m|
    m.at 1, :MINIMIZE
    m.at 1, :POUND
    m.at 1, :COPYCAT
    m.at 4, :DEFENSECURL
    m.at 8, :SWEETKISS
    m.at 12, :DISARMINGVOICE
    m.at 16, :COVET
    m.at 20, :CHARM
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FLING, :FRUSTRATION, :GRASSKNOT, :GRAVITY, :HAIL, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICYWIND, :INCINERATE, :LASTRESORT, :LIGHTSCREEN, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THUNDERWAVE, :UPROAR, :WATERPULSE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AROMATHERAPY, :COUNTER, :GRAVITY, :HEALBELL, :HELPINGHAND, :LASTRESORT, :METRONOME, :PRESENT, :SEISMICTOSS
  s.egg_groups    :Undiscovered
  s.hatch_steps   10240
  s.height        0.6
  s.weight        24.4
  s.color         :Pink
  s.shape         :Bipedal
  s.category      "Playhouse"
  s.pokedex_entry "It loves round white things. It carries an egg-shaped rock in imitation of Chansey."
  s.generation    4
  s.evolves_into  :CHANSEY, :DayHoldItem, OVALSTONE
  s.wild_item_common   :OVALSTONE
end

GameData::Species.define :CHATOT do |s|
  s.name          "Chatot"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 76, attack: 65, defense: 45, speed: 91, sp_atk: 92, sp_def: 42
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      144
  s.catch_rate    30
  s.happiness     35
  s.evs           attack: 1
  s.abilities     :KEENEYE, :TANGLEDFEET
  s.hidden_abilities :BIGPECKS
  s.moves do |m|
    m.at 1, :HYPERVOICE
    m.at 1, :CHATTER
    m.at 1, :CONFIDE
    m.at 1, :TAUNT
    m.at 5, :PECK
    m.at 9, :GROWL
    m.at 13, :SING
    m.at 17, :FURYATTACK
    m.at 21, :CHATTER
    m.at 25, :TAUNT
    m.at 29, :ROUND
    m.at 33, :MIMIC
    m.at 37, :ECHOEDVOICE
    m.at 41, :ROOST
    m.at 45, :UPROAR
    m.at 49, :PARTINGSHOT
    m.at 50, :FEATHERDANCE
    m.at 57, :HYPERVOICE
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :HYPERVOICE, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLEPLAY, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :TORMENT, :TWISTER, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :AGILITY, :AIRCUTTER, :BOOMBURST, :ENCORE, :NIGHTSHADE, :SUPERSONIC
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        0.5
  s.weight        1.9
  s.color         :Black
  s.shape         :Winged
  s.category      "Music Note"
  s.pokedex_entry "It can learn and speak human words. If they gather, they all learn the same saying."
  s.generation    4
  s.wild_item_uncommon :METRONOME
end

GameData::Species.define :MUNCHLAX do |s|
  s.name          "Munchlax"
  s.types         :NORMAL
  s.base_stats    hp: 135, attack: 85, defense: 40, speed: 5, sp_atk: 40, sp_def: 85
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Slow
  s.base_exp      78
  s.catch_rate    50
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :PICKUP, :THICKFAT
  s.hidden_abilities :GLUTTONY
  s.moves do |m|
    m.at 1, :LICK
    m.at 1, :TACKLE
    m.at 4, :DEFENSECURL
    m.at 8, :RECYCLE
    m.at 12, :COVET
    m.at 16, :BITE
    m.at 20, :STOCKPILE
    m.at 20, :SWALLOW
    m.at 24, :SCREECH
    m.at 28, :BODYSLAM
    m.at 32, :FLING
    m.at 36, :AMNESIA
    m.at 40, :METRONOME
    m.at 44, :FLAIL
    m.at 48, :BELLYDRUM
    m.at 52, :LASTRESORT
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DOUBLETEAM, :EARTHQUAKE, :ENCORE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :LASTRESORT, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYDAY, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :RAINDANCE, :RECYCLE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :UPROAR, :WATERPULSE, :WHIRLPOOL, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AFTERYOU, :BELCH, :CHARM, :COUNTER, :CURSE, :DOUBLEEDGE, :FISSURE, :GASTROACID, :LICK, :SELFDESTRUCT, :WHIRLWIND, :ZENHEADBUTT
  s.egg_groups    :Undiscovered
  s.hatch_steps   10240
  s.height        0.6
  s.weight        105.0
  s.color         :Black
  s.shape         :Bipedal
  s.category      "Big Eater"
  s.pokedex_entry "It wolfs down its weight in food once a day, swallowing food whole with almost no chewing."
  s.generation    4
  s.evolves_into  :SNORLAX, :Happiness
  s.wild_item_common   :LEFTOVERS
  s.wild_item_uncommon :LEFTOVERS
  s.wild_item_rare     :LEFTOVERS
end

GameData::Species.define :LICKILICKY do |s|
  s.name          "Lickilicky"
  s.types         :NORMAL
  s.base_stats    hp: 110, attack: 85, defense: 95, speed: 50, sp_atk: 80, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      180
  s.catch_rate    30
  s.happiness     50
  s.evs           hp: 3
  s.abilities     :OWNTEMPO, :OBLIVIOUS
  s.hidden_abilities :CLOUDNINE
  s.moves do |m|
    m.at 1, :LICK
    m.at 1, :DEFENSECURL
    m.at 1, :ROLLOUT
    m.at 1, :SUPERSONIC
    m.at 18, :WRAP
    m.at 24, :DISABLE
    m.at 30, :STOMP
    m.at 36, :KNOCKOFF
    m.at 42, :SCREECH
    m.at 48, :SLAM
    m.at 54, :POWERWHIP
    m.at 60, :BELLYDRUM
  end
  s.tutor_moves   :AMNESIA, :AQUATAIL, :ATTRACT, :BIND, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONTAIL, :DREAMEATER, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONTAIL, :KNOCKOFF, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :POWERWHIP, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWORDSDANCE, :TERRAINPULSE, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :WATERPULSE, :WHIRLPOOL, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Monster
  s.hatch_steps   5120
  s.height        1.7
  s.weight        140.0
  s.color         :Pink
  s.shape         :Bipedal
  s.category      "Licking"
  s.pokedex_entry "It wraps things with its extensible tongue. Getting too close to it will leave you soaked with drool."
  s.generation    4
  s.wild_item_uncommon :LAGGINGTAIL
end

GameData::Species.define :PORYGONZ do |s|
  s.name          "Porygon-Z"
  s.types         :NORMAL
  s.base_stats    hp: 85, attack: 80, defense: 70, speed: 90, sp_atk: 135, sp_def: 75
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      268
  s.catch_rate    30
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :ADAPTABILITY, :DOWNLOAD
  s.hidden_abilities :ANALYTIC
  s.moves do |m|
    m.at 1, :TRICKROOM
    m.at 1, :NASTYPLOT
    m.at 1, :DEFENSECURL
    m.at 1, :TACKLE
    m.at 1, :CONVERSION
    m.at 1, :RECYCLE
    m.at 1, :MAGNETRISE
    m.at 15, :THUNDERSHOCK
    m.at 20, :PSYBEAM
    m.at 25, :CONVERSION2
    m.at 30, :AGILITY
    m.at 35, :RECOVER
    m.at 40, :DISCHARGE
    m.at 45, :TRIATTACK
    m.at 50, :MAGICCOAT
    m.at 55, :LOCKON
    m.at 60, :ZAPCANNON
    m.at 65, :HYPERBEAM
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ALLYSWITCH, :BLIZZARD, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EERIEIMPULSE, :ELECTROWEB, :EMBARGO, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :GUARDSWAP, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASTRESORT, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAINSPLIT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPEEDSWAP, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :UPROAR, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.9
  s.weight        34.0
  s.color         :Red
  s.shape         :HeadArms
  s.category      "Virtual"
  s.pokedex_entry "Additional software was installed to make it a better Pokémon. It began acting oddly, however."
  s.generation    4
end

GameData::Species.define :REGIGIGAS do |s|
  s.name          "Regigigas"
  s.types         :NORMAL
  s.base_stats    hp: 110, attack: 160, defense: 110, speed: 100, sp_atk: 80, sp_def: 110
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      335
  s.catch_rate    3
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :SLOWSTART
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :CONFUSERAY
    m.at 6, :PAYBACK
    m.at 12, :REVENGE
    m.at 18, :STOMP
    m.at 24, :PROTECT
    m.at 30, :KNOCKOFF
    m.at 36, :MEGAPUNCH
    m.at 42, :BODYPRESS
    m.at 48, :WIDEGUARD
    m.at 54, :ZENHEADBUTT
    m.at 60, :HEAVYSLAM
    m.at 66, :HAMMERARM
    m.at 72, :GIGAIMPACT
    m.at 78, :CRUSHGRIP
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :AVALANCHE, :BLOCK, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CONFIDE, :DARKESTLARIAT, :DOUBLETEAM, :DRAINPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :HEADBUTT, :HEATCRASH, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEPUNCH, :ICYWIND, :IRONHEAD, :KNOCKOFF, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TERRAINPULSE, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        3.7
  s.weight        420.0
  s.color         :White
  s.shape         :Bipedal
  s.category      "Colossal"
  s.pokedex_entry "There is an enduring legend that states this Pokémon towed continents with ropes."
  s.generation    4
  s.flags         :Legendary
end

GameData::Species.define :ARCEUS do |s|
  s.name          "Arceus"
  s.types         :NORMAL
  s.base_stats    hp: 120, attack: 120, defense: 120, speed: 120, sp_atk: 120, sp_def: 120
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      360
  s.catch_rate    3
  s.happiness     0
  s.evs           hp: 3
  s.abilities     :MULTITYPE
  s.moves do |m|
    m.at 1, :SEISMICTOSS
    m.at 1, :COSMICPOWER
    m.at 10, :GRAVITY
    m.at 20, :EARTHPOWER
    m.at 30, :HYPERVOICE
    m.at 40, :EXTREMESPEED
    m.at 50, :HEALINGWISH
    m.at 60, :FUTURESIGHT
    m.at 70, :RECOVER
    m.at 80, :HYPERBEAM
    m.at 90, :PERISHSONG
    m.at 100, :JUDGMENT
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :AQUATAIL, :AVALANCHE, :BLIZZARD, :BRICKBREAK, :BRINE, :BULLDOZE, :BULLETSEED, :CALMMIND, :CHARGEBEAM, :CONFIDE, :CUT, :DARKPULSE, :DEFOG, :DIVE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :DREAMEATER, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FLASHCANNON, :FLY, :FOCUSBLAST, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HAIL, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICYWIND, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :LIQUIDATION, :MAGICCOAT, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :OUTRAGE, :OVERHEAT, :PAYBACK, :POISONJAB, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :QUASH, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNORE, :SOLARBEAM, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICK, :TRICKROOM, :TWISTER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WILLOWISP, :WORKUP, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        3.2
  s.weight        320.0
  s.color         :White
  s.shape         :Quadruped
  s.category      "Alpha"
  s.pokedex_entry "It is described in mythology as the Pokémon that shaped the universe with its 1,000 arms."
  s.generation    4
  s.flags         :Mythical
end

GameData::Species.define :PATRAT do |s|
  s.name          "Patrat"
  s.types         :NORMAL
  s.base_stats    hp: 45, attack: 55, defense: 39, speed: 42, sp_atk: 35, sp_def: 39
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      51
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :RUNAWAY, :KEENEYE
  s.hidden_abilities :ANALYTIC
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 3, :LEER
    m.at 6, :BITE
    m.at 8, :BIDE
    m.at 11, :DETECT
    m.at 13, :SANDATTACK
    m.at 16, :CRUNCH
    m.at 18, :HYPNOSIS
    m.at 21, :SUPERFANG
    m.at 23, :AFTERYOU
    m.at 26, :FOCUSENERGY
    m.at 28, :WORKUP
    m.at 31, :HYPERFANG
    m.at 33, :NASTYPLOT
    m.at 36, :MEANLOOK
    m.at 38, :BATONPASS
    m.at 41, :SLAM
  end
  s.tutor_moves   :AFTERYOU, :AQUATAIL, :ATTRACT, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :GRASSKNOT, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :LOWKICK, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWORDSDANCE, :THUNDERBOLT, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ASSURANCE, :BULLETSEED, :FLAIL, :FORESIGHT, :IRONTAIL, :PURSUIT, :REVENGE, :SCREECH, :TEARFULLOOK
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.5
  s.weight        11.6
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Scout"
  s.pokedex_entry "Extremely cautious, they take shifts to maintain a constant watch of their nest. They feel insecure without a lookout."
  s.generation    5
  s.evolves_into  :WATCHOG, :Level, 20
end

GameData::Species.define :WATCHOG do |s|
  s.name          "Watchog"
  s.types         :NORMAL
  s.base_stats    hp: 60, attack: 85, defense: 69, speed: 77, sp_atk: 60, sp_def: 69
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      147
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :ILLUMINATE, :KEENEYE
  s.hidden_abilities :ANALYTIC
  s.moves do |m|
    m.at 0, :CONFUSERAY
    m.at 1, :ROTOTILLER
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :BITE
    m.at 1, :LOWKICK
    m.at 3, :LEER
    m.at 6, :BITE
    m.at 8, :BIDE
    m.at 11, :DETECT
    m.at 13, :SANDATTACK
    m.at 16, :CRUNCH
    m.at 18, :HYPNOSIS
    m.at 22, :SUPERFANG
    m.at 25, :AFTERYOU
    m.at 29, :FOCUSENERGY
    m.at 32, :PSYCHUP
    m.at 36, :HYPERFANG
    m.at 39, :NASTYPLOT
    m.at 43, :MEANLOOK
    m.at 46, :BATONPASS
    m.at 50, :SLAM
  end
  s.tutor_moves   :AFTERYOU, :AQUATAIL, :ATTRACT, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :DREAMEATER, :ENDEAVOR, :ENDURE, :FACADE, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :LOWKICK, :MIMIC, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWORDSDANCE, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.1
  s.weight        27.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Lookout"
  s.pokedex_entry "They make the patterns on their bodies shine in order to threaten predators. Keen eyesight lets them see in the dark."
  s.generation    5
end

GameData::Species.define :LILLIPUP do |s|
  s.name          "Lillipup"
  s.types         :NORMAL
  s.base_stats    hp: 45, attack: 60, defense: 45, speed: 55, sp_atk: 25, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      55
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :VITALSPIRIT, :PICKUP
  s.hidden_abilities :RUNAWAY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 4, :WORKUP
    m.at 8, :BITE
    m.at 12, :RETALIATE
    m.at 17, :BABYDOLLEYES
    m.at 20, :PLAYROUGH
    m.at 24, :CRUNCH
    m.at 28, :TAKEDOWN
    m.at 32, :HELPINGHAND
    m.at 36, :REVERSAL
    m.at 40, :ROAR
    m.at 44, :LASTRESORT
    m.at 48, :GIGAIMPACT
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ATTRACT, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CRUNCH, :DIG, :DOUBLETEAM, :ENDURE, :FACADE, :FIREFANG, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEFANG, :LASTRESORT, :MIMIC, :NATURALGIFT, :PAYBACK, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROAR, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNARL, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :TOXIC, :UPROAR, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_moves     :AFTERYOU, :COVET, :HOWL, :LICK, :MUDSLAP, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.4
  s.weight        4.1
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Puppy"
  s.pokedex_entry "The long hair around its face provides an amazing radar that lets it sense subtle changes in its surroundings."
  s.generation    5
  s.evolves_into  :HERDIER, :Level, 16
end

GameData::Species.define :HERDIER do |s|
  s.name          "Herdier"
  s.types         :NORMAL
  s.base_stats    hp: 65, attack: 80, defense: 65, speed: 60, sp_atk: 35, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      130
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :INTIMIDATE, :SANDRUSH
  s.hidden_abilities :SCRAPPY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :WORKUP
    m.at 1, :BITE
    m.at 12, :RETALIATE
    m.at 19, :BABYDOLLEYES
    m.at 24, :PLAYROUGH
    m.at 30, :CRUNCH
    m.at 36, :TAKEDOWN
    m.at 42, :HELPINGHAND
    m.at 48, :REVERSAL
    m.at 54, :ROAR
    m.at 60, :LASTRESORT
    m.at 66, :GIGAIMPACT
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ATTRACT, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CRUNCH, :DIG, :DOUBLETEAM, :ENDURE, :FACADE, :FIREFANG, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEFANG, :LASTRESORT, :MIMIC, :NATURALGIFT, :PAYBACK, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROAR, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNARL, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :TOXIC, :UPROAR, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.9
  s.weight        14.7
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Loyal Dog"
  s.pokedex_entry "It loyally follows its Trainer's orders. For ages, they have helped Trainers raise Pokémon."
  s.generation    5
  s.evolves_into  :STOUTLAND, :Level, 32
end

GameData::Species.define :STOUTLAND do |s|
  s.name          "Stoutland"
  s.types         :NORMAL
  s.base_stats    hp: 85, attack: 110, defense: 90, speed: 80, sp_atk: 45, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      250
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :INTIMIDATE, :SANDRUSH
  s.hidden_abilities :SCRAPPY
  s.moves do |m|
    m.at 1, :ICEFANG
    m.at 1, :FIREFANG
    m.at 1, :THUNDERFANG
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :WORKUP
    m.at 1, :BITE
    m.at 12, :RETALIATE
    m.at 19, :BABYDOLLEYES
    m.at 24, :PLAYROUGH
    m.at 30, :CRUNCH
    m.at 38, :TAKEDOWN
    m.at 46, :HELPINGHAND
    m.at 54, :REVERSAL
    m.at 62, :ROAR
    m.at 70, :LASTRESORT
    m.at 78, :GIGAIMPACT
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ATTRACT, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CRUNCH, :DIG, :DOUBLETEAM, :ENDURE, :FACADE, :FIREFANG, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEFANG, :IRONHEAD, :LASTRESORT, :MIMIC, :NATURALGIFT, :PAYBACK, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROAR, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SNARL, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :TOXIC, :UPROAR, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        1.2
  s.weight        61.0
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Big-Hearted"
  s.pokedex_entry "This extremely wise Pokémon excels at rescuing people stranded at sea or in the mountains."
  s.generation    5
end

GameData::Species.define :PIDOVE do |s|
  s.name          "Pidove"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 50, attack: 55, defense: 50, speed: 43, sp_atk: 36, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      53
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :BIGPECKS, :SUPERLUCK
  s.hidden_abilities :RIVALRY
  s.moves do |m|
    m.at 1, :GUST
    m.at 1, :GROWL
    m.at 4, :LEER
    m.at 8, :QUICKATTACK
    m.at 12, :TAUNT
    m.at 16, :AIRCUTTER
    m.at 20, :SWAGGER
    m.at 24, :FEATHERDANCE
    m.at 28, :DETECT
    m.at 32, :AIRSLASH
    m.at 36, :ROOST
    m.at 40, :TAILWIND
    m.at 44, :SKYATTACK
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRSLASH, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :FACADE, :FLY, :FOCUSENERGY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :MIMIC, :NATURALGIFT, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :TOXIC, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :DEFOG, :HYPNOSIS, :MORNINGSUN, :NIGHTSLASH, :WISH
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.3
  s.weight        2.1
  s.color         :Gray
  s.shape         :Winged
  s.category      "Tiny Pigeon"
  s.pokedex_entry "These Pokémon live in cities. They are accustomed to people. Flocks often gather in parks and plazas."
  s.generation    5
  s.evolves_into  :TRANQUILL, :Level, 21
end

GameData::Species.define :TRANQUILL do |s|
  s.name          "Tranquill"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 62, attack: 77, defense: 62, speed: 65, sp_atk: 50, sp_def: 42
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      125
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :BIGPECKS, :SUPERLUCK
  s.hidden_abilities :RIVALRY
  s.moves do |m|
    m.at 1, :GUST
    m.at 1, :GROWL
    m.at 1, :LEER
    m.at 1, :QUICKATTACK
    m.at 12, :TAUNT
    m.at 16, :AIRCUTTER
    m.at 20, :SWAGGER
    m.at 26, :FEATHERDANCE
    m.at 34, :DETECT
    m.at 38, :AIRSLASH
    m.at 44, :ROOST
    m.at 50, :TAILWIND
    m.at 56, :SKYATTACK
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRSLASH, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :FACADE, :FLY, :FOCUSENERGY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :MIMIC, :NATURALGIFT, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :TOXIC, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.6
  s.weight        15.0
  s.color         :Gray
  s.shape         :Winged
  s.category      "Wild Pigeon"
  s.pokedex_entry "Many people believe that, deep in the forest where Tranquill live, there is a peaceful place where there is no war."
  s.generation    5
  s.evolves_into  :UNFEZANT, :Level, 32
end

GameData::Species.define :UNFEZANT do |s|
  s.name          "Unfezant"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 80, attack: 115, defense: 80, speed: 93, sp_atk: 65, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      244
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :BIGPECKS, :SUPERLUCK
  s.hidden_abilities :RIVALRY
  s.moves do |m|
    m.at 1, :GUST
    m.at 1, :GROWL
    m.at 1, :LEER
    m.at 1, :QUICKATTACK
    m.at 12, :TAUNT
    m.at 16, :AIRCUTTER
    m.at 20, :SWAGGER
    m.at 26, :FEATHERDANCE
    m.at 36, :DETECT
    m.at 42, :AIRSLASH
    m.at 50, :ROOST
    m.at 58, :TAILWIND
    m.at 66, :SKYATTACK
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRSLASH, :ATTRACT, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :FACADE, :FLY, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :MIMIC, :NATURALGIFT, :PLUCK, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :TOXIC, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        1.2
  s.weight        29.0
  s.color         :Gray
  s.shape         :Winged
  s.category      "Proud"
  s.pokedex_entry "Males have plumage on their heads. They will never let themselves feel close to anyone other than their Trainers."
  s.generation    5
  s.flags         :HasGenderedSprites
end

GameData::Species.define :AUDINO do |s|
  s.name          "Audino"
  s.types         :NORMAL
  s.base_stats    hp: 103, attack: 60, defense: 86, speed: 50, sp_atk: 60, sp_def: 86
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      390
  s.catch_rate    255
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :HEALER, :REGENERATOR
  s.hidden_abilities :KLUTZ
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :PLAYNICE
    m.at 4, :DISARMINGVOICE
    m.at 9, :BABYDOLLEYES
    m.at 12, :HELPINGHAND
    m.at 16, :GROWL
    m.at 20, :ZENHEADBUTT
    m.at 24, :LIFEDEW
    m.at 28, :AFTERYOU
    m.at 32, :TAKEDOWN
    m.at 36, :SIMPLEBEAM
    m.at 40, :HYPERVOICE
    m.at 44, :HEALPULSE
    m.at 48, :DOUBLEEDGE
    m.at 52, :ENTRAINMENT
    m.at 56, :MISTYTERRAIN
    m.at 60, :LASTRESORT
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :AMNESIA, :ATTRACT, :BLIZZARD, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DIG, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :LOWKICK, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MISTYTERRAIN, :NATURALGIFT, :PAINSPLIT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :TELEKINESIS, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :TRICKROOM, :UPROAR, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :HEALINGWISH, :SWEETKISS, :WISH, :YAWN
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        1.1
  s.weight        31.0
  s.color         :Pink
  s.shape         :BipedalTail
  s.category      "Hearing"
  s.pokedex_entry "Its auditory sense is astounding. It has a radar-like ability to understand its surrounding through slight sounds."
  s.generation    5
  s.wild_item_common   :ORANBERRY
  s.wild_item_uncommon :SITRUSBERRY
end

GameData::Species.define :MINCCINO do |s|
  s.name          "Minccino"
  s.types         :NORMAL
  s.base_stats    hp: 55, attack: 50, defense: 40, speed: 75, sp_atk: 40, sp_def: 40
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      60
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :CUTECHARM, :TECHNICIAN
  s.hidden_abilities :SKILLLINK
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :BABYDOLLEYES
    m.at 4, :HELPINGHAND
    m.at 8, :ECHOEDVOICE
    m.at 12, :SING
    m.at 16, :CHARM
    m.at 20, :SWIFT
    m.at 24, :ENCORE
    m.at 28, :AFTERYOU
    m.at 32, :TAILSLAP
    m.at 36, :TICKLE
    m.at 40, :SLAM
    m.at 44, :HYPERVOICE
    m.at 48, :LASTRESORT
  end
  s.tutor_moves   :AFTERYOU, :AQUATAIL, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DIG, :DOUBLETEAM, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :FLING, :FRUSTRATION, :GRASSKNOT, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :MIMIC, :NATURALGIFT, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILSLAP, :THIEF, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TRIPLEAXEL, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :AQUATAIL, :FLAIL, :KNOCKOFF, :TAILWHIP
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.4
  s.weight        5.8
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Chinchilla"
  s.pokedex_entry "These Pokémon prefer a tidy habitat. They are always sweeping and dusting, using their tails as brooms."
  s.generation    5
  s.evolves_into  :CINCCINO, :Item, SHINYSTONE
end

GameData::Species.define :CINCCINO do |s|
  s.name          "Cinccino"
  s.types         :NORMAL
  s.base_stats    hp: 75, attack: 95, defense: 60, speed: 115, sp_atk: 65, sp_def: 60
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      165
  s.catch_rate    60
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :CUTECHARM, :TECHNICIAN
  s.hidden_abilities :SKILLLINK
  s.moves do |m|
    m.at 1, :BULLETSEED
    m.at 1, :ROCKBLAST
    m.at 1, :SING
    m.at 1, :CHARM
    m.at 1, :SWIFT
    m.at 1, :ENCORE
    m.at 1, :AFTERYOU
    m.at 1, :TAILSLAP
    m.at 1, :TICKLE
    m.at 1, :SLAM
    m.at 1, :HYPERVOICE
    m.at 1, :LASTRESORT
    m.at 1, :POUND
    m.at 1, :BABYDOLLEYES
    m.at 1, :HELPINGHAND
    m.at 1, :ECHOEDVOICE
  end
  s.tutor_moves   :AFTERYOU, :AQUATAIL, :ATTRACT, :BULLETSEED, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DIG, :DOUBLETEAM, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :FLING, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKBLAST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILSLAP, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TRIPLEAXEL, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.5
  s.weight        7.5
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Scarf"
  s.pokedex_entry "Their white fur feels amazing to touch. Their fur repels dust and prevents static electricity from building up."
  s.generation    5
end

GameData::Species.define :DEERLING do |s|
  s.name          "Deerling"
  s.types         :NORMAL, :GRASS
  s.base_stats    hp: 60, attack: 60, defense: 50, speed: 75, sp_atk: 40, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      67
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :CHLOROPHYLL, :SAPSIPPER
  s.hidden_abilities :SERENEGRACE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :CAMOUFLAGE
    m.at 4, :GROWL
    m.at 7, :SANDATTACK
    m.at 10, :DOUBLEKICK
    m.at 13, :LEECHSEED
    m.at 16, :FEINTATTACK
    m.at 20, :TAKEDOWN
    m.at 24, :JUMPKICK
    m.at 28, :AROMATHERAPY
    m.at 32, :ENERGYBALL
    m.at 36, :CHARM
    m.at 41, :NATUREPOWER
    m.at 46, :DOUBLEEDGE
    m.at 51, :SOLARBEAM
  end
  s.tutor_moves   :ATTRACT, :BOUNCE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :HIDDENPOWER, :LASTRESORT, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :THUNDERWAVE, :TOXIC, :WILDCHARGE, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_moves     :AGILITY, :BATONPASS, :FAKETEARS, :GRASSWHISTLE, :HEADBUTT, :NATURALGIFT, :ODORSLEUTH, :SLEEPTALK, :SYNTHESIS, :WORRYSEED
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        19.5
  s.color         :Pink
  s.shape         :Quadruped
  s.category      "Season"
  s.pokedex_entry "The turning of the seasons changes the color and scent of this Pokémon's fur. People use it to mark the seasons."
  s.generation    5
  s.evolves_into  :SAWSBUCK, :Level, 34
end

GameData::Species.define :SAWSBUCK do |s|
  s.name          "Sawsbuck"
  s.types         :NORMAL, :GRASS
  s.base_stats    hp: 80, attack: 100, defense: 70, speed: 95, sp_atk: 60, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      166
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :CHLOROPHYLL, :SAPSIPPER
  s.hidden_abilities :SERENEGRACE
  s.moves do |m|
    m.at 0, :HORNLEECH
    m.at 1, :MEGAHORN
    m.at 1, :TACKLE
    m.at 1, :CAMOUFLAGE
    m.at 1, :GROWL
    m.at 1, :SANDATTACK
    m.at 4, :GROWL
    m.at 7, :SANDATTACK
    m.at 10, :DOUBLEKICK
    m.at 13, :LEECHSEED
    m.at 16, :FEINTATTACK
    m.at 20, :TAKEDOWN
    m.at 24, :JUMPKICK
    m.at 28, :AROMATHERAPY
    m.at 32, :ENERGYBALL
    m.at 36, :CHARM
    m.at 44, :NATUREPOWER
    m.at 52, :DOUBLEEDGE
    m.at 60, :SOLARBEAM
  end
  s.tutor_moves   :ATTRACT, :BOUNCE, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HYPERBEAM, :LASTRESORT, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THUNDERWAVE, :TOXIC, :WILDCHARGE, :WORKUP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.9
  s.weight        92.5
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Season"
  s.pokedex_entry "The plants growing on its horns change according to the season. The leaders of the herd possess magnificent horns."
  s.generation    5
end

GameData::Species.define :BOUFFALANT do |s|
  s.name          "Bouffalant"
  s.types         :NORMAL
  s.base_stats    hp: 95, attack: 110, defense: 95, speed: 55, sp_atk: 40, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      172
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :RECKLESS, :SAPSIPPER
  s.hidden_abilities :SOUNDPROOF
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 5, :FOCUSENERGY
    m.at 10, :FURYATTACK
    m.at 15, :REVENGE
    m.at 20, :SCARYFACE
    m.at 25, :HORNATTACK
    m.at 30, :REVERSAL
    m.at 35, :THROATCHOP
    m.at 40, :HEADCHARGE
    m.at 45, :SWORDSDANCE
    m.at 50, :MEGAHORN
    m.at 55, :GIGAIMPACT
  end
  s.tutor_moves   :AERIALACE, :AMNESIA, :ASSURANCE, :ATTRACT, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CUT, :DOUBLETEAM, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HIGHHORSEPOWER, :IRONHEAD, :LASHOUT, :MEGAHORN, :MIMIC, :MUDSHOT, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :TAUNT, :THROATCHOP, :TOXIC, :UPROAR, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BELCH, :COTTONGUARD, :ENDEAVOR, :HEADBUTT, :MUDSLAP, :SKULLBASH, :STOMP
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.6
  s.weight        94.5
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Bash Buffalo"
  s.pokedex_entry "They charge wildly and headbutt everything. They headbutts have enough destructive force to derail a train."
  s.generation    5
end

GameData::Species.define :RUFFLET do |s|
  s.name          "Rufflet"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 70, attack: 83, defense: 50, speed: 60, sp_atk: 37, sp_def: 50
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Slow
  s.base_exp      70
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :KEENEYE, :SHEERFORCE
  s.hidden_abilities :HUSTLE
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :LEER
    m.at 6, :HONECLAWS
    m.at 12, :WINGATTACK
    m.at 18, :TAILWIND
    m.at 24, :SCARYFACE
    m.at 30, :AERIALACE
    m.at 36, :SLASH
    m.at 42, :WHIRLWIND
    m.at 48, :CRUSHCLAW
    m.at 55, :AIRSLASH
    m.at 60, :DEFOG
    m.at 66, :THRASH
    m.at 72, :BRAVEBIRD
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRSLASH, :ASSURANCE, :ATTRACT, :BRAVEBIRD, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CUT, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HURRICANE, :MIMIC, :NATURALGIFT, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SKYDROP, :SLEEPTALK, :SNORE, :STEELWING, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :TAILWIND, :TOXIC, :UTURN, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        0.5
  s.weight        10.5
  s.color         :White
  s.shape         :Winged
  s.category      "Eaglet"
  s.pokedex_entry "They will challenge anything, even strong opponents, without fear. Their frequent fights help them become stronger."
  s.generation    5
  s.evolves_into  :BRAVIARY, :Level, 54
end

GameData::Species.define :BRAVIARY do |s|
  s.name          "Braviary"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 100, attack: 123, defense: 75, speed: 80, sp_atk: 57, sp_def: 75
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Slow
  s.base_exp      179
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :KEENEYE, :SHEERFORCE
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 0, :SUPERPOWER
    m.at 1, :SKYATTACK
    m.at 1, :PECK
    m.at 1, :LEER
    m.at 1, :HONECLAWS
    m.at 1, :WINGATTACK
    m.at 18, :TAILWIND
    m.at 24, :SCARYFACE
    m.at 30, :AERIALACE
    m.at 36, :SLASH
    m.at 42, :WHIRLWIND
    m.at 48, :CRUSHCLAW
    m.at 57, :AIRSLASH
    m.at 64, :DEFOG
    m.at 72, :THRASH
    m.at 80, :BRAVEBIRD
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRSLASH, :ASSURANCE, :ATTRACT, :BRAVEBIRD, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CUT, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HURRICANE, :HYPERBEAM, :IRONHEAD, :LASERFOCUS, :MIMIC, :NATURALGIFT, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SNORE, :STEELWING, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :TAILWIND, :TOXIC, :UTURN, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        1.5
  s.weight        41.0
  s.color         :Red
  s.shape         :Winged
  s.category      "Valiant"
  s.pokedex_entry "The more scars they have, the more respect these brave soldiers of the sky get from their peers."
  s.generation    5
end

GameData::Species.define :MELOETTA do |s|
  s.name          "Meloetta"
  s.types         :NORMAL, :PSYCHIC
  s.base_stats    hp: 100, attack: 77, defense: 77, speed: 90, sp_atk: 128, sp_def: 128
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     100
  s.evs           sp_attack: 1, sp_defense: 1, speed: 1
  s.abilities     :SERENEGRACE
  s.moves do |m|
    m.at 1, :ROUND
    m.at 1, :QUICKATTACK
    m.at 1, :CONFUSION
    m.at 1, :SING
    m.at 6, :QUICKATTACK
    m.at 11, :CONFUSION
    m.at 16, :SING
    m.at 21, :TEETERDANCE
    m.at 26, :ACROBATICS
    m.at 31, :PSYBEAM
    m.at 36, :ECHOEDVOICE
    m.at 43, :UTURN
    m.at 50, :WAKEUPSLAP
    m.at 57, :PSYCHIC
    m.at 64, :HYPERVOICE
    m.at 71, :ROLEPLAY
    m.at 78, :CLOSECOMBAT
    m.at 85, :PERISHSONG
  end
  s.tutor_moves   :ACROBATICS, :ALLYSWITCH, :BRICKBREAK, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DUALCHOP, :ECHOEDVOICE, :EMBARGO, :ENDURE, :ENERGYBALL, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICEPUNCH, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :RELICSONG, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :TRICK, :TRICKROOM, :UPROAR, :UTURN, :WONDERROOM, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.6
  s.weight        6.5
  s.color         :White
  s.shape         :Bipedal
  s.category      "Melody"
  s.pokedex_entry "Many famous songs have been inspired by the melodies that Meloetta plays."
  s.generation    5
  s.flags         :Mythical
  s.wild_item_common   :STARPIECE
  s.wild_item_uncommon :STARPIECE
  s.wild_item_rare     :STARPIECE
end

GameData::Species.define :BUNNELBY do |s|
  s.name          "Bunnelby"
  s.types         :NORMAL
  s.base_stats    hp: 38, attack: 36, defense: 38, speed: 57, sp_atk: 32, sp_def: 36
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      47
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :PICKUP, :CHEEKPOUCH
  s.hidden_abilities :HUGEPOWER
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :LEER
    m.at 3, :TACKLE
    m.at 6, :LASERFOCUS
    m.at 9, :QUICKATTACK
    m.at 12, :MUDSHOT
    m.at 15, :FLAIL
    m.at 18, :DOUBLEKICK
    m.at 21, :BULLDOZE
    m.at 24, :DIG
    m.at 27, :BOUNCE
    m.at 30, :TAKEDOWN
    m.at 33, :SWORDSDANCE
    m.at 36, :EARTHQUAKE
    m.at 39, :SUPERFANG
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BOUNCE, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :GRASSKNOT, :HIDDENPOWER, :IRONHEAD, :IRONTAIL, :LASTRESORT, :MIMIC, :MUDSHOT, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RECYCLE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SMACKDOWN, :SNORE, :SPIKES, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERFANG, :SURF, :SWAGGER, :SWORDSDANCE, :THIEF, :TORMENT, :TOXIC, :UTURN, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_moves     :DEFENSECURL, :ROLLOUT
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.4
  s.weight        5.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Digging"
  s.pokedex_entry "It has ears like shovels. Digging holes strengthens its ears so much that they can sever thick roots effortlessly."
  s.generation    6
  s.evolves_into  :DIGGERSBY, :Level, 20
end

GameData::Species.define :DIGGERSBY do |s|
  s.name          "Diggersby"
  s.types         :NORMAL, :GROUND
  s.base_stats    hp: 85, attack: 56, defense: 77, speed: 78, sp_atk: 50, sp_def: 77
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      148
  s.catch_rate    127
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :PICKUP, :CHEEKPOUCH
  s.hidden_abilities :HUGEPOWER
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :LEER
    m.at 1, :TACKLE
    m.at 1, :LASERFOCUS
    m.at 9, :QUICKATTACK
    m.at 12, :MUDSHOT
    m.at 15, :FLAIL
    m.at 18, :DOUBLEKICK
    m.at 23, :BULLDOZE
    m.at 28, :DIG
    m.at 33, :BOUNCE
    m.at 38, :TAKEDOWN
    m.at 43, :SWORDSDANCE
    m.at 48, :EARTHQUAKE
    m.at 53, :SUPERFANG
    m.at 58, :HAMMERARM
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BODYSLAM, :BOUNCE, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GASTROACID, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEPUNCH, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSHOT, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RECYCLE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SMACKDOWN, :SNATCH, :SNORE, :SPIKES, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERFANG, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :THIEF, :THUNDERPUNCH, :TORMENT, :TOXIC, :UPROAR, :UTURN, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        1.0
  s.weight        42.4
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Digging"
  s.pokedex_entry "As powerful as an excavator, its ears can reduce dense bedrock to rubble. When it's finished digging, it lounges lazily."
  s.generation    6
end

GameData::Species.define :FLETCHLING do |s|
  s.name          "Fletchling"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 45, attack: 50, defense: 43, speed: 62, sp_atk: 40, sp_def: 38
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      56
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :BIGPECKS
  s.hidden_abilities :GALEWINGS
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 5, :QUICKATTACK
    m.at 10, :EMBER
    m.at 15, :FLAIL
    m.at 20, :ACROBATICS
    m.at 25, :AGILITY
    m.at 30, :AERIALACE
    m.at 35, :TAILWIND
    m.at 40, :STEELWING
    m.at 45, :ROOST
    m.at 50, :FLY
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FLAMECHARGE, :FLY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :MIMIC, :NATURALGIFT, :OVERHEAT, :PROTECT, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNATCH, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :TAUNT, :THIEF, :TOXIC, :UTURN, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_moves     :DEFOG, :FLAMECHARGE, :QUICKGUARD
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.3
  s.weight        1.7
  s.color         :Red
  s.shape         :Winged
  s.category      "Tiny Robin"
  s.pokedex_entry "These friendly Pokémon send signals to one another with beautiful chirps and tail-feather movements."
  s.generation    6
  s.evolves_into  :FLETCHINDER, :Level, 17
end

GameData::Species.define :FURFROU do |s|
  s.name          "Furfrou"
  s.types         :NORMAL
  s.base_stats    hp: 75, attack: 80, defense: 60, speed: 102, sp_atk: 65, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      165
  s.catch_rate    160
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :FURCOAT
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 5, :SANDATTACK
    m.at 9, :BABYDOLLEYES
    m.at 12, :HEADBUTT
    m.at 15, :TAILWHIP
    m.at 22, :BITE
    m.at 27, :ODORSLEUTH
    m.at 33, :RETALIATE
    m.at 35, :TAKEDOWN
    m.at 38, :CHARM
    m.at 42, :SUCKERPUNCH
    m.at 48, :COTTONGUARD
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DIG, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :IRONTAIL, :LASTRESORT, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROLEPLAY, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :THUNDERWAVE, :TOXIC, :UPROAR, :UTURN, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :CAPTIVATE, :MIMIC, :REFRESH, :ROLEPLAY, :WORKUP
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.2
  s.weight        28.0
  s.color         :White
  s.shape         :Quadruped
  s.category      "Poodle"
  s.pokedex_entry "Trimming its fluffy fur not only makes it more elegant but also increases the swiftness of its movements."
  s.generation    6
end

GameData::Species.define :PIKIPEK do |s|
  s.name          "Pikipek"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 35, attack: 75, defense: 30, speed: 65, sp_atk: 30, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      53
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :KEENEYE, :SKILLLINK
  s.hidden_abilities :PICKUP
  s.moves do |m|
    m.at 1, :PECK
    m.at 3, :GROWL
    m.at 7, :ECHOEDVOICE
    m.at 9, :ROCKSMASH
    m.at 13, :SUPERSONIC
    m.at 15, :PLUCK
    m.at 19, :ROOST
    m.at 21, :FURYATTACK
    m.at 25, :SCREECH
    m.at 27, :DRILLPECK
    m.at 31, :BULLETSEED
    m.at 33, :FEATHERDANCE
    m.at 37, :HYPERVOICE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FLAMECHARGE, :FLY, :FRUSTRATION, :GUNKSHOT, :HEATWAVE, :HIDDENPOWER, :HYPERVOICE, :KNOCKOFF, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :TAILWIND, :THIEF, :TOXIC, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :BOOMBURST, :BRAVEBIRD, :MIRRORMOVE, :TAILWIND, :UPROAR
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.3
  s.weight        1.2
  s.color         :Black
  s.shape         :Winged
  s.category      "Woodpecker"
  s.pokedex_entry "It pecks at trees with its hard beak. You can get some idea of its mood or condition from the rhythm of its pecking."
  s.generation    7
  s.evolves_into  :TRUMBEAK, :Level, 14
  s.wild_item_uncommon :ORANBERRY
end

GameData::Species.define :TRUMBEAK do |s|
  s.name          "Trumbeak"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 55, attack: 85, defense: 50, speed: 75, sp_atk: 40, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      124
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :KEENEYE, :SKILLLINK
  s.hidden_abilities :PICKUP
  s.moves do |m|
    m.at 1, :ROCKBLAST
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 1, :ECHOEDVOICE
    m.at 1, :ROCKSMASH
    m.at 3, :GROWL
    m.at 7, :ECHOEDVOICE
    m.at 9, :ROCKSMASH
    m.at 13, :SUPERSONIC
    m.at 16, :PLUCK
    m.at 21, :ROOST
    m.at 24, :FURYATTACK
    m.at 29, :SCREECH
    m.at 32, :DRILLPECK
    m.at 37, :BULLETSEED
    m.at 40, :FEATHERDANCE
    m.at 45, :HYPERVOICE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FLAMECHARGE, :FLY, :FRUSTRATION, :GUNKSHOT, :HEATWAVE, :HIDDENPOWER, :HYPERVOICE, :KNOCKOFF, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :TAILWIND, :THIEF, :TOXIC, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.6
  s.weight        14.8
  s.color         :Black
  s.shape         :Winged
  s.category      "Bugle Beak"
  s.pokedex_entry "It eats berries and stores their seeds in its beak. When it encounters enemies or prey, it fires off all the seeds in a burst."
  s.generation    7
  s.evolves_into  :TOUCANNON, :Level, 28
  s.wild_item_uncommon :SITRUSBERRY
end

GameData::Species.define :TOUCANNON do |s|
  s.name          "Toucannon"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 80, attack: 120, defense: 75, speed: 60, sp_atk: 75, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      243
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :KEENEYE, :SKILLLINK
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 0, :BEAKBLAST
    m.at 1, :ROCKBLAST
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 1, :ECHOEDVOICE
    m.at 1, :ROCKSMASH
    m.at 3, :GROWL
    m.at 7, :ECHOEDVOICE
    m.at 9, :ROCKSMASH
    m.at 13, :SUPERSONIC
    m.at 16, :PLUCK
    m.at 21, :ROOST
    m.at 24, :FURYATTACK
    m.at 30, :SCREECH
    m.at 34, :DRILLPECK
    m.at 40, :BULLETSEED
    m.at 44, :FEATHERDANCE
    m.at 50, :HYPERVOICE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FLAMECHARGE, :FLASHCANNON, :FLY, :FRUSTRATION, :GUNKSHOT, :HEATWAVE, :HIDDENPOWER, :HYPERVOICE, :KNOCKOFF, :MIMIC, :NATURALGIFT, :OVERHEAT, :PROTECT, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SEEDBOMB, :SKYATTACK, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :TAILWIND, :THIEF, :TOXIC, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        1.1
  s.weight        26.0
  s.color         :Black
  s.shape         :Winged
  s.category      "Cannon"
  s.pokedex_entry "They smack beaks with others of their kind to communicate. The strength and number of hits tell each other how they feel."
  s.generation    7
  s.wild_item_uncommon :RAWSTBERRY
end

GameData::Species.define :YUNGOOS do |s|
  s.name          "Yungoos"
  s.types         :NORMAL
  s.base_stats    hp: 48, attack: 70, defense: 30, speed: 45, sp_atk: 30, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      51
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :STAKEOUT, :STRONGJAW
  s.hidden_abilities :ADAPTABILITY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 3, :LEER
    m.at 7, :PURSUIT
    m.at 10, :SANDATTACK
    m.at 13, :ODORSLEUTH
    m.at 16, :BIDE
    m.at 19, :BITE
    m.at 22, :MUDSLAP
    m.at 25, :SUPERFANG
    m.at 28, :TAKEDOWN
    m.at 31, :SCARYFACE
    m.at 34, :CRUNCH
    m.at 37, :HYPERFANG
    m.at 40, :YAWN
    m.at 43, :THRASH
    m.at 46, :REST
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :IRONTAIL, :LASTRESORT, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETURN, :ROCKTOMB, :ROUND, :SANDSTORM, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERFANG, :SWAGGER, :TAUNT, :THIEF, :TORMENT, :TOXIC, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :FIREFANG, :ICEFANG, :LASTRESORT, :REVENGE, :THUNDERFANG
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.4
  s.weight        6.0
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Loitering"
  s.pokedex_entry "Its stomach takes up most of its long torso. It's a big eater, so the amount Trainers have to spend on its food is no laughing matter."
  s.generation    7
  s.evolves_into  :GUMSHOOS, :LevelDay, 20
  s.wild_item_uncommon :PECHABERRY
end

GameData::Species.define :GUMSHOOS do |s|
  s.name          "Gumshoos"
  s.types         :NORMAL
  s.base_stats    hp: 88, attack: 110, defense: 60, speed: 45, sp_atk: 55, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      146
  s.catch_rate    127
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :STAKEOUT, :STRONGJAW
  s.hidden_abilities :ADAPTABILITY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :PURSUIT
    m.at 1, :SANDATTACK
    m.at 3, :LEER
    m.at 7, :PURSUIT
    m.at 10, :SANDATTACK
    m.at 13, :ODORSLEUTH
    m.at 16, :BIDE
    m.at 19, :BITE
    m.at 23, :MUDSLAP
    m.at 27, :SUPERFANG
    m.at 31, :TAKEDOWN
    m.at 35, :SCARYFACE
    m.at 39, :CRUNCH
    m.at 43, :HYPERFANG
    m.at 47, :YAWN
    m.at 51, :THRASH
    m.at 55, :REST
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DUALCHOP, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FRUSTRATION, :HIDDENPOWER, :ICEPUNCH, :IRONHEAD, :IRONTAIL, :LASTRESORT, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETURN, :ROAR, :ROCKTOMB, :ROUND, :SANDSTORM, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERFANG, :SWAGGER, :TAUNT, :THIEF, :THUNDERPUNCH, :TORMENT, :TOXIC, :UPROAR, :UTURN, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.7
  s.weight        14.2
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Stakeout"
  s.pokedex_entry "When it finds a trace of its prey, it patiently stakes out the location... but it's always snoozing by nightfall."
  s.generation    7
  s.wild_item_uncommon :PECHABERRY
end

GameData::Species.define :STUFFUL do |s|
  s.name          "Stufful"
  s.types         :NORMAL, :FIGHTING
  s.base_stats    hp: 70, attack: 75, defense: 50, speed: 50, sp_atk: 45, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      68
  s.catch_rate    140
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :FLUFFY, :KLUTZ
  s.hidden_abilities :CUTECHARM
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 4, :BABYDOLLEYES
    m.at 8, :PAYBACK
    m.at 12, :BRUTALSWING
    m.at 16, :ENDURE
    m.at 20, :STRENGTH
    m.at 24, :TAKEDOWN
    m.at 28, :FLAIL
    m.at 32, :HAMMERARM
    m.at 36, :THRASH
    m.at 40, :PAINSPLIT
    m.at 44, :DOUBLEEDGE
    m.at 48, :SUPERPOWER
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BIND, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CAPTIVATE, :CHARM, :COACHING, :CONFIDE, :DOUBLETEAM, :DUALCHOP, :EARTHQUAKE, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :HIDDENPOWER, :ICEPUNCH, :IRONHEAD, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PROTECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :TAUNT, :THUNDERPUNCH, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :DEFENSECURL, :FORCEPALM, :ROLLOUT, :STOMP
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.5
  s.weight        6.8
  s.color         :Pink
  s.shape         :Quadruped
  s.category      "Flailing"
  s.pokedex_entry "Despite its adorable appearance, when it gets angry and flails about, its arms and legs could knock a pro wrestler sprawling."
  s.generation    7
  s.evolves_into  :BEWEAR, :Level, 27
end

GameData::Species.define :BEWEAR do |s|
  s.name          "Bewear"
  s.types         :NORMAL, :FIGHTING
  s.base_stats    hp: 120, attack: 125, defense: 80, speed: 60, sp_atk: 55, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    70
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :FLUFFY, :KLUTZ
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 0, :BIND
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :BABYDOLLEYES
    m.at 1, :PAYBACK
    m.at 12, :BRUTALSWING
    m.at 16, :ENDURE
    m.at 20, :STRENGTH
    m.at 24, :TAKEDOWN
    m.at 30, :FLAIL
    m.at 36, :HAMMERARM
    m.at 42, :THRASH
    m.at 48, :PAINSPLIT
    m.at 54, :DOUBLEEDGE
    m.at 60, :SUPERPOWER
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BIND, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CAPTIVATE, :CHARM, :CLOSECOMBAT, :COACHING, :CONFIDE, :DARKESTLARIAT, :DOUBLETEAM, :DRAGONCLAW, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEPUNCH, :IRONHEAD, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PROTECT, :REST, :RETURN, :REVENGE, :REVERSAL, :ROAR, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :TAUNT, :THUNDERPUNCH, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        2.1
  s.weight        135.0
  s.color         :Pink
  s.shape         :BipedalTail
  s.category      "Strong Arm"
  s.pokedex_entry "It waves its hands wildly in intimidation and warning. Life is over for anyone who doesn't run away as fast as possible."
  s.generation    7
end

GameData::Species.define :ORANGURU do |s|
  s.name          "Oranguru"
  s.types         :NORMAL, :PSYCHIC
  s.base_stats    hp: 90, attack: 60, defense: 80, speed: 60, sp_atk: 90, sp_def: 110
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      172
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :INNERFOCUS, :TELEPATHY
  s.hidden_abilities :SYMBIOSIS
  s.moves do |m|
    m.at 1, :CONFUSION
    m.at 1, :TAUNT
    m.at 5, :AFTERYOU
    m.at 10, :CALMMIND
    m.at 15, :STOREDPOWER
    m.at 20, :PSYCHUP
    m.at 25, :QUASH
    m.at 30, :NASTYPLOT
    m.at 35, :ZENHEADBUTT
    m.at 40, :TRICKROOM
    m.at 45, :PSYCHIC
    m.at 50, :INSTRUCT
    m.at 55, :FOULPLAY
    m.at 60, :FUTURESIGHT
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :ATTRACT, :BLOCK, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COVET, :DOUBLETEAM, :DREAMEATER, :EARTHQUAKE, :EMBARGO, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FLING, :FOCUSBLAST, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRAVITY, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :KNOCKOFF, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :PAINSPLIT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :QUASH, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :TERRAINPULSE, :THUNDER, :THUNDERBOLT, :TOXIC, :TRICK, :TRICKROOM, :WONDERROOM, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :DREAMEATER, :EXTRASENSORY, :LASTRESORT, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.5
  s.weight        76.0
  s.color         :White
  s.shape         :Bipedal
  s.category      "Sage"
  s.pokedex_entry "It normally spends its time meditating in the treetops. It throws Poké Balls and gives other Pokémon orders as it pleases."
  s.generation    7
end

GameData::Species.define :TYPENULL do |s|
  s.name          "Type: Null"
  s.types         :NORMAL
  s.base_stats    hp: 95, attack: 95, defense: 95, speed: 59, sp_atk: 95, sp_def: 95
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      107
  s.catch_rate    3
  s.happiness     0
  s.evs           hp: 2
  s.abilities     :BATTLEARMOR
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :IMPRISON
    m.at 5, :AERIALACE
    m.at 10, :SCARYFACE
    m.at 15, :DOUBLEHIT
    m.at 20, :METALSOUND
    m.at 25, :CRUSHCLAW
    m.at 30, :AIRSLASH
    m.at 35, :TRIATTACK
    m.at 40, :XSCISSOR
    m.at 45, :IRONHEAD
    m.at 50, :TAKEDOWN
    m.at 55, :DOUBLEEDGE
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :CONFIDE, :DOUBLETEAM, :DRAGONCLAW, :ENDURE, :FACADE, :FLAMECHARGE, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYPERBEAM, :ICYWIND, :IMPRISON, :IRONDEFENSE, :IRONHEAD, :LASTRESORT, :MAGICCOAT, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROUND, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TERRAINPULSE, :THUNDERWAVE, :TOXIC, :TRIATTACK, :UTURN, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.9
  s.weight        120.5
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Synthetic"
  s.pokedex_entry "The heavy control mask it wears suppresses its intrinsic capabilities. This Pokémon has some hidden special power."
  s.generation    7
  s.evolves_into  :SILVALLY, :Happiness
  s.flags         :Legendary
end

GameData::Species.define :SILVALLY do |s|
  s.name          "Silvally"
  s.types         :NORMAL
  s.base_stats    hp: 95, attack: 95, defense: 95, speed: 95, sp_atk: 95, sp_def: 95
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    3
  s.happiness     0
  s.evs           hp: 3
  s.abilities     :RKSSYSTEM
  s.moves do |m|
    m.at 0, :MULTIATTACK
    m.at 1, :EXPLOSION
    m.at 1, :THUNDERFANG
    m.at 1, :ICEFANG
    m.at 1, :FIREFANG
    m.at 1, :POISONFANG
    m.at 1, :IMPRISON
    m.at 1, :IRONHEAD
    m.at 1, :TACKLE
    m.at 1, :BITE
    m.at 1, :AERIALACE
    m.at 1, :SCARYFACE
    m.at 15, :DOUBLEHIT
    m.at 20, :METALSOUND
    m.at 25, :CRUSHCLAW
    m.at 30, :AIRSLASH
    m.at 35, :TRIATTACK
    m.at 40, :XSCISSOR
    m.at 45, :CRUNCH
    m.at 50, :TAKEDOWN
    m.at 55, :DOUBLEEDGE
    m.at 60, :PARTINGSHOT
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :CONFIDE, :CRUNCH, :DEFOG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :ENDURE, :EXPLOSION, :FACADE, :FIREFANG, :FLAMECHARGE, :FLAMETHROWER, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :GRASSPLEDGE, :HAIL, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEFANG, :ICYWIND, :IMPRISON, :IRONDEFENSE, :IRONHEAD, :LASERFOCUS, :LASTRESORT, :MAGICCOAT, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKSLIDE, :ROUND, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHADOWCLAW, :SIGNALBEAM, :SLEEPTALK, :SNARL, :SNORE, :STEELBEAM, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :TERRAINPULSE, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :TOXIC, :TRIATTACK, :UTURN, :WORKUP, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        2.3
  s.weight        100.5
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Synthetic"
  s.pokedex_entry "Its trust in its partner is what awakens it. This Pokémon is capable of changing its type, a flexibility that is well displayed in battle."
  s.generation    7
  s.flags         :Legendary
end

GameData::Species.define :KOMALA do |s|
  s.name          "Komala"
  s.types         :NORMAL
  s.base_stats    hp: 65, attack: 115, defense: 65, speed: 65, sp_atk: 75, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      168
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :COMATOSE
  s.moves do |m|
    m.at 1, :DEFENSECURL
    m.at 1, :ROLLOUT
    m.at 6, :STOCKPILE
    m.at 6, :SPITUP
    m.at 6, :SWALLOW
    m.at 11, :RAPIDSPIN
    m.at 16, :YAWN
    m.at 21, :SLAM
    m.at 26, :FLAIL
    m.at 31, :SUCKERPUNCH
    m.at 36, :PSYCHUP
    m.at 41, :WOODHAMMER
    m.at 46, :THRASH
  end
  s.tutor_moves   :ACROBATICS, :ATTRACT, :BRICKBREAK, :BULKUP, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :IRONHEAD, :KNOCKOFF, :LASTRESORT, :LOWSWEEP, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHUP, :QUASH, :RETURN, :ROCKSLIDE, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :TOXIC, :UTURN, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :CHARM, :PLAYROUGH, :SING, :WISH
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        19.9
  s.color         :Blue
  s.shape         :Bipedal
  s.category      "Drowsing"
  s.pokedex_entry "It remains asleep from birth to death as a result of the sedative properties of the leaves that form its diet."
  s.generation    7
end

GameData::Species.define :DRAMPA do |s|
  s.name          "Drampa"
  s.types         :NORMAL, :DRAGON
  s.base_stats    hp: 78, attack: 60, defense: 85, speed: 36, sp_atk: 135, sp_def: 91
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      170
  s.catch_rate    70
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :BERSERK, :SAPSIPPER
  s.hidden_abilities :CLOUDNINE
  s.moves do |m|
    m.at 1, :PLAYNICE
    m.at 1, :ECHOEDVOICE
    m.at 5, :TWISTER
    m.at 10, :PROTECT
    m.at 15, :GLARE
    m.at 20, :SAFEGUARD
    m.at 25, :DRAGONBREATH
    m.at 30, :EXTRASENSORY
    m.at 35, :DRAGONPULSE
    m.at 40, :LIGHTSCREEN
    m.at 45, :FLY
    m.at 50, :HYPERVOICE
    m.at 55, :OUTRAGE
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BLIZZARD, :BLOCK, :BREAKINGSWIPE, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLING, :FLY, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICYWIND, :LASHOUT, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :OUTRAGE, :PLAYROUGH, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROOST, :ROUND, :SAFEGUARD, :SCALESHOT, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNARL, :SNORE, :SOLARBEAM, :STEELWING, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWIFT, :TAILWIND, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :UPROAR, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_moves     :DRAGONRUSH, :MIST, :TICKLE
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   5120
  s.height        3.0
  s.weight        185.0
  s.color         :White
  s.shape         :Serpentine
  s.category      "Placid"
  s.pokedex_entry "This Pokémon is friendly to people and loves children most of all. It comes from deep in the mountains to play with children it likes in town."
  s.generation    7
  s.wild_item_uncommon :PERSIMBERRY
end

GameData::Species.define :SKWOVET do |s|
  s.name          "Skwovet"
  s.types         :NORMAL
  s.base_stats    hp: 70, attack: 55, defense: 55, speed: 25, sp_atk: 35, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      55
  s.catch_rate    255
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :CHEEKPOUCH
  s.hidden_abilities :GLUTTONY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 5, :BITE
    m.at 10, :STUFFCHEEKS
    m.at 15, :STOCKPILE
    m.at 15, :SWALLOW
    m.at 15, :SPITUP
    m.at 20, :BODYSLAM
    m.at 25, :REST
    m.at 30, :COUNTER
    m.at 35, :BULLETSEED
    m.at 40, :SUPERFANG
    m.at 45, :BELCH
  end
  s.tutor_moves   :AMNESIA, :ASSURANCE, :ATTRACT, :BODYSLAM, :BRUTALSWING, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CRUNCH, :DIG, :DOUBLETEAM, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :GYROBALL, :HIDDENPOWER, :HYPERVOICE, :IRONTAIL, :MIMIC, :MUDSHOT, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :TAILSLAP, :THIEF, :TOXIC, :UPROAR, :TERABLAST
  s.egg_moves     :BELLYDRUM, :DEFENSECURL, :LASTRESORT, :ROLLOUT
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.3
  s.weight        2.5
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Cheeky"
  s.pokedex_entry "It eats berries nonstop—a habit that has made it more resilient than it looks. It'll show up on farms, searching for yet more berries."
  s.generation    8
  s.evolves_into  :GREEDENT, :Level, 24
  s.wild_item_uncommon :ORANBERRY
end

GameData::Species.define :GREEDENT do |s|
  s.name          "Greedent"
  s.types         :NORMAL
  s.base_stats    hp: 120, attack: 95, defense: 95, speed: 20, sp_atk: 55, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      161
  s.catch_rate    90
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :CHEEKPOUCH
  s.hidden_abilities :GLUTTONY
  s.moves do |m|
    m.at 0, :COVET
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :BITE
    m.at 1, :STUFFCHEEKS
    m.at 15, :STOCKPILE
    m.at 15, :SWALLOW
    m.at 15, :SPITUP
    m.at 20, :BODYSLAM
    m.at 27, :REST
    m.at 34, :COUNTER
    m.at 41, :BULLETSEED
    m.at 48, :SUPERFANG
    m.at 55, :BELCH
  end
  s.tutor_moves   :AMNESIA, :ASSURANCE, :ATTRACT, :BODYPRESS, :BODYSLAM, :BRUTALSWING, :BULLETSEED, :CAPTIVATE, :CONFIDE, :CRUNCH, :DIG, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FIREFANG, :FLING, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEFANG, :IRONTAIL, :MIMIC, :MUDSHOT, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHICFANGS, :REST, :RETURN, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :TAILSLAP, :THIEF, :THUNDERFANG, :TOXIC, :UPROAR, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        6.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Greedy"
  s.pokedex_entry "It stashes berries in its tail - so many berries that they fall out constantly. But this Pokémon is a bit slow-witted, so it doesn't notice the loss."
  s.generation    8
  s.wild_item_uncommon :SITRUSBERRY
end

GameData::Species.define :WOOLOO do |s|
  s.name          "Wooloo"
  s.types         :NORMAL
  s.base_stats    hp: 42, attack: 40, defense: 55, speed: 48, sp_atk: 40, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      122
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :FLUFFY, :RUNAWAY
  s.hidden_abilities :BULLETPROOF
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 4, :DEFENSECURL
    m.at 8, :COPYCAT
    m.at 12, :GUARDSPLIT
    m.at 16, :DOUBLEKICK
    m.at 21, :HEADBUTT
    m.at 25, :TAKEDOWN
    m.at 28, :GUARDSWAP
    m.at 32, :REVERSAL
    m.at 36, :COTTONGUARD
    m.at 40, :DOUBLEEDGE
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ELECTROBALL, :ENDURE, :FACADE, :FRUSTRATION, :GRASSYGLIDE, :GUARDSWAP, :HIDDENPOWER, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETURN, :REVERSAL, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :THUNDERWAVE, :TOXIC, :WILDCHARGE, :TERABLAST
  s.egg_moves     :COUNTER, :STOMP, :SWAGGER
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.6
  s.weight        6.0
  s.color         :White
  s.shape         :Quadruped
  s.category      "Sheep"
  s.pokedex_entry "Its curly fleece is such an effective cushion that this Pokémon could fall off a cliff and stand right back up at the bottom, unharmed."
  s.generation    8
  s.evolves_into  :DUBWOOL, :Level, 24
end

GameData::Species.define :DUBWOOL do |s|
  s.name          "Dubwool"
  s.types         :NORMAL
  s.base_stats    hp: 72, attack: 80, defense: 100, speed: 88, sp_atk: 60, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      172
  s.catch_rate    127
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :FLUFFY, :STEADFAST
  s.hidden_abilities :BULLETPROOF
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :DEFENSECURL
    m.at 1, :COPYCAT
    m.at 12, :GUARDSPLIT
    m.at 16, :DOUBLEKICK
    m.at 21, :HEADBUTT
    m.at 27, :TAKEDOWN
    m.at 32, :GUARDSWAP
    m.at 38, :REVERSAL
    m.at 44, :COTTONGUARD
    m.at 50, :DOUBLEEDGE
    m.at 56, :LASTRESORT
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BATONPASS, :BODYPRESS, :BODYSLAM, :BOUNCE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ELECTROBALL, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :GRASSYGLIDE, :GUARDSWAP, :HIDDENPOWER, :HYPERBEAM, :MEGAKICK, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :THUNDERWAVE, :TOXIC, :WILDCHARGE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        1.3
  s.weight        43.0
  s.color         :White
  s.shape         :Quadruped
  s.category      "Sheep"
  s.pokedex_entry "Its majestic horns are meant only to impress the opposite gender. They never see use in battle."
  s.generation    8
end

