#===============================================================================
# Shattered Crowns - Ice Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :JYNX do |s|
  s.name          "Jynx"
  s.types         :ICE, :PSYCHIC
  s.base_stats    hp: 65, attack: 50, defense: 35, speed: 95, sp_atk: 115, sp_def: 95
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      159
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :OBLIVIOUS, :FOREWARN
  s.hidden_abilities :DRYSKIN
  s.moves do |m|
    m.at 1, :SWEETKISS
    m.at 1, :LICK
    m.at 1, :POUND
    m.at 1, :POWDERSNOW
    m.at 1, :COPYCAT
    m.at 12, :CONFUSION
    m.at 16, :COVET
    m.at 20, :SING
    m.at 24, :FAKETEARS
    m.at 28, :ICEPUNCH
    m.at 34, :PSYCHIC
    m.at 40, :LOVELYKISS
    m.at 46, :MEANLOOK
    m.at 52, :PERISHSONG
    m.at 58, :BLIZZARD
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :AURORAVEIL, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COUNTER, :COVET, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ECHOEDVOICE, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FROSTBREATH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HAIL, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICICLESPEAR, :ICYWIND, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :TORMENT, :TRICK, :TRICKROOM, :TRIPLEAXEL, :UPROAR, :WATERPULSE, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   6400
  s.height        1.4
  s.weight        40.6
  s.color         :Red
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Human Shape"
  s.pokedex_entry "A Jynx sashays rhythmically as if it were dancing. Its motions are so bouncingly alluring, people seeing it are compelled to shake their hips without noticing."
  s.generation    1
end

GameData::Species.define :ARTICUNO do |s|
  s.name          "Articuno"
  s.types         :ICE, :FLYING
  s.base_stats    hp: 90, attack: 85, defense: 100, speed: 85, sp_atk: 95, sp_def: 125
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           sp_defense: 3
  s.abilities     :PRESSURE
  s.hidden_abilities :SNOWCLOAK
  s.moves do |m|
    m.at 1, :GUST
    m.at 1, :MIST
    m.at 5, :POWDERSNOW
    m.at 10, :REFLECT
    m.at 15, :ICESHARD
    m.at 20, :AGILITY
    m.at 25, :ANCIENTPOWER
    m.at 30, :TAILWIND
    m.at 35, :FREEZEDRY
    m.at 40, :ROOST
    m.at 45, :ICEBEAM
    m.at 50, :HAIL
    m.at 55, :HURRICANE
    m.at 60, :MINDREADER
    m.at 65, :BLIZZARD
    m.at 70, :SHEERCOLD
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :ANCIENTPOWER, :AURORAVEIL, :AVALANCHE, :BLIZZARD, :BRAVEBIRD, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FLY, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :LASERFOCUS, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROOST, :ROUND, :SANDSTORM, :SECRETPOWER, :SIGNALBEAM, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TRIPLEAXEL, :TWISTER, :UTURN, :WATERPULSE, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        1.7
  s.weight        55.4
  s.color         :Blue
  s.shape         :Winged
  s.habitat       :Rare
  s.category      "Freeze"
  s.pokedex_entry "Articuno is a legendary bird Pokémon that can control ice. The flapping of its wings chills the air. As a result, it is said that when this Pokémon flies, snow will fall."
  s.generation    1
  s.flags         :Legendary
end

GameData::Species.define :SWINUB do |s|
  s.name          "Swinub"
  s.types         :ICE, :GROUND
  s.base_stats    hp: 50, attack: 50, defense: 40, speed: 50, sp_atk: 30, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      50
  s.catch_rate    225
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :OBLIVIOUS, :SNOWCLOAK
  s.hidden_abilities :THICKFAT
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :MUDSLAP
    m.at 5, :POWDERSNOW
    m.at 10, :FLAIL
    m.at 15, :ICESHARD
    m.at 20, :MIST
    m.at 25, :ENDURE
    m.at 30, :ICYWIND
    m.at 35, :AMNESIA
    m.at 40, :TAKEDOWN
    m.at 45, :EARTHQUAKE
    m.at 50, :BLIZZARD
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :LIGHTSCREEN, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :BITE, :BODYSLAM, :CURSE, :DOUBLEEDGE, :FISSURE, :FREEZEDRY, :ICICLECRASH, :ICICLESPEAR, :MUDSHOT, :TAKEDOWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        6.5
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Cave
  s.category      "Pig"
  s.pokedex_entry "It roots for food by rubbing its snout against the ground. Its favorite food is a mushroom that grows under dried grass. It occasionally roots out hot springs."
  s.generation    2
  s.evolves_into  :PILOSWINE, :Level, 33
end

GameData::Species.define :PILOSWINE do |s|
  s.name          "Piloswine"
  s.types         :ICE, :GROUND
  s.base_stats    hp: 100, attack: 100, defense: 80, speed: 50, sp_atk: 60, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      158
  s.catch_rate    75
  s.happiness     50
  s.evs           hp: 1, attack: 1
  s.abilities     :OBLIVIOUS, :SNOWCLOAK
  s.hidden_abilities :THICKFAT
  s.moves do |m|
    m.at 0, :ICEFANG
    m.at 1, :ANCIENTPOWER
    m.at 1, :TACKLE
    m.at 1, :MUDSLAP
    m.at 1, :POWDERSNOW
    m.at 1, :FLAIL
    m.at 15, :ICESHARD
    m.at 20, :MIST
    m.at 25, :ENDURE
    m.at 30, :ICYWIND
    m.at 37, :AMNESIA
    m.at 44, :TAKEDOWN
    m.at 51, :EARTHQUAKE
    m.at 58, :BLIZZARD
    m.at 65, :THRASH
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICICLESPEAR, :ICYWIND, :LIGHTSCREEN, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.1
  s.weight        55.8
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Cave
  s.category      "Swine"
  s.pokedex_entry "A Piloswine is covered by a thick coat of long hair for enduring freezing cold. It uses its tusks to dig up food that has been buried under ice."
  s.generation    2
  s.evolves_into  :MAMOSWINE, :HasMove, ANCIENTPOWER
  s.flags         :HasGenderedSprites
end

GameData::Species.define :DELIBIRD do |s|
  s.name          "Delibird"
  s.types         :ICE, :FLYING
  s.base_stats    hp: 45, attack: 55, defense: 45, speed: 75, sp_atk: 65, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      116
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :VITALSPIRIT, :HUSTLE
  s.hidden_abilities :INSOMNIA
  s.moves do |m|
    m.at 1, :PRESENT
    m.at 25, :DRILLPECK
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ASSURANCE, :ATTRACT, :AURORAVEIL, :AVALANCHE, :BATONPASS, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRAVEBIRD, :BRICKBREAK, :BRUTALSWING, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :DUALWINGBEAT, :ENDURE, :FACADE, :FLING, :FLY, :FOCUSPUNCH, :FROSTBREATH, :FRUSTRATION, :FUTURESIGHT, :GUNKSHOT, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :ICEBEAM, :ICEPUNCH, :ICICLESPEAR, :ICYWIND, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLUCK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SIGNALBEAM, :SKYATTACK, :SLEEPTALK, :SNORE, :SPIKES, :STEELWING, :SUBSTITUTE, :SWAGGER, :SWIFT, :THIEF, :TRIPLEAXEL, :WATERPULSE, :WEATHERBALL, :TERABLAST
  s.egg_moves     :AURORABEAM, :AURORAVEIL, :COUNTER, :DESTINYBOND, :FAKEOUT, :FREEZEDRY, :FUTURESIGHT, :ICEPUNCH, :ICESHARD, :ICYWIND, :MEMENTO, :QUICKATTACK, :RAPIDSPIN, :SPIKES, :SPLASH
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        0.9
  s.weight        16.0
  s.color         :Red
  s.shape         :Winged
  s.habitat       :Mountain
  s.category      "Delivery"
  s.pokedex_entry "It carries food bundled up in its tail. There was a famous explorer who managed to scale Mt. Everest thanks to a Delibird sharing its food."
  s.generation    2
end

GameData::Species.define :SMOOCHUM do |s|
  s.name          "Smoochum"
  s.types         :ICE, :PSYCHIC
  s.base_stats    hp: 45, attack: 30, defense: 15, speed: 65, sp_atk: 85, sp_def: 65
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :OBLIVIOUS, :FOREWARN
  s.hidden_abilities :HYDRATION
  s.moves do |m|
    m.at 1, :LICK
    m.at 1, :POUND
    m.at 4, :POWDERSNOW
    m.at 8, :COPYCAT
    m.at 12, :CONFUSION
    m.at 16, :COVET
    m.at 20, :SING
    m.at 24, :FAKETEARS
    m.at 28, :ICEPUNCH
    m.at 32, :PSYCHIC
    m.at 36, :SWEETKISS
    m.at 40, :MEANLOOK
    m.at 44, :PERISHSONG
    m.at 48, :BLIZZARD
  end
  s.tutor_moves   :ATTRACT, :AURORAVEIL, :AVALANCHE, :BLIZZARD, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COUNTER, :COVET, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :DYNAMICPUNCH, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :FLASH, :FLING, :FROSTBREATH, :FRUSTRATION, :GRASSKNOT, :HAIL, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :ICEBEAM, :ICEPUNCH, :ICYWIND, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :THIEF, :TRICK, :TRICKROOM, :UPROAR, :WATERPULSE, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :FAKEOUT, :ICEPUNCH, :ROLEPLAY, :WISH
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        0.4
  s.weight        6.0
  s.color         :Pink
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Kiss"
  s.pokedex_entry "It actively runs about, but also falls often. Whenever it falls, it will check its reflection on a lake's surface to make sure its face hasn't become dirty."
  s.generation    2
  s.evolves_into  :JYNX, :Level, 30
end

GameData::Species.define :SNORUNT do |s|
  s.name          "Snorunt"
  s.types         :ICE
  s.base_stats    hp: 50, attack: 50, defense: 50, speed: 50, sp_atk: 50, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      60
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :INNERFOCUS, :ICEBODY
  s.hidden_abilities :MOODY
  s.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 1, :ASTONISH
    m.at 5, :LEER
    m.at 10, :DOUBLETEAM
    m.at 15, :ICESHARD
    m.at 20, :PROTECT
    m.at 25, :ICYWIND
    m.at 30, :FROSTBREATH
    m.at 35, :BITE
    m.at 40, :ICEFANG
    m.at 45, :HAIL
    m.at 50, :HEADBUTT
    m.at 55, :CRUNCH
    m.at 60, :BLIZZARD
  end
  s.tutor_moves   :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYSLAM, :CAPTIVATE, :CONFIDE, :CRUNCH, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FAKETEARS, :FLASH, :FROSTBREATH, :FRUSTRATION, :HAIL, :HEADBUTT, :HEX, :HIDDENPOWER, :ICEBEAM, :ICEFANG, :ICYWIND, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNORE, :SPIKES, :SPITE, :SUBSTITUTE, :SWAGGER, :WATERPULSE, :WEATHERBALL, :TERABLAST
  s.egg_moves     :BLOCK, :DISABLE, :FAKETEARS, :HEX, :ICICLECRASH, :ROLLOUT, :SPIKES, :SWITCHEROO, :WEATHERBALL
  s.egg_groups    :Fairy, :Mineral
  s.hatch_steps   5120
  s.height        0.7
  s.weight        16.8
  s.color         :Gray
  s.shape         :Bipedal
  s.habitat       :Cave
  s.category      "Snow Hat"
  s.pokedex_entry "They tend to move about in groups of around five Snorunt. In snowy regions, it is said that when they are seen late at night, snowfall will arrive by morning."
  s.generation    3
  s.evolves_into  :GLALIE, :Level, 42
  s.evolves_into  :FROSLASS, :ItemFemale, DAWNSTONE
  s.wild_item_uncommon :SNOWBALL
end

GameData::Species.define :GLALIE do |s|
  s.name          "Glalie"
  s.types         :ICE
  s.base_stats    hp: 80, attack: 80, defense: 80, speed: 80, sp_atk: 80, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    75
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :INNERFOCUS, :ICEBODY
  s.hidden_abilities :MOODY
  s.moves do |m|
    m.at 0, :FREEZEDRY
    m.at 1, :SHEERCOLD
    m.at 1, :POWDERSNOW
    m.at 1, :ASTONISH
    m.at 1, :LEER
    m.at 1, :DOUBLETEAM
    m.at 15, :ICESHARD
    m.at 20, :PROTECT
    m.at 25, :ICYWIND
    m.at 30, :FROSTBREATH
    m.at 35, :BITE
    m.at 40, :ICEFANG
    m.at 47, :HAIL
    m.at 54, :HEADBUTT
    m.at 61, :CRUNCH
    m.at 68, :BLIZZARD
  end
  s.tutor_moves   :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DARKPULSE, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FAKETEARS, :FLASH, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HAIL, :HEADBUTT, :HEX, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICICLESPEAR, :ICYWIND, :IRONHEAD, :LASERFOCUS, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLLOUT, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SPIKES, :SPITE, :STEELROLLER, :SUBSTITUTE, :SUPERFANG, :SWAGGER, :TAUNT, :TORMENT, :WATERPULSE, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Fairy, :Mineral
  s.hatch_steps   5120
  s.height        1.5
  s.weight        256.5
  s.color         :Gray
  s.shape         :Head
  s.habitat       :Cave
  s.category      "Face"
  s.pokedex_entry "A Glalie has the power to instantaneously freeze moisture in the atmosphere. A dazzling cloud of diamondlike ice crystals forms around its body."
  s.generation    3
end

GameData::Species.define :SPHEAL do |s|
  s.name          "Spheal"
  s.types         :ICE, :WATER
  s.base_stats    hp: 70, attack: 40, defense: 50, speed: 25, sp_atk: 55, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      58
  s.catch_rate    255
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :THICKFAT, :ICEBODY
  s.hidden_abilities :OBLIVIOUS
  s.moves do |m|
    m.at 1, :ROLLOUT
    m.at 1, :DEFENSECURL
    m.at 4, :GROWL
    m.at 8, :WATERGUN
    m.at 12, :POWDERSNOW
    m.at 16, :REST
    m.at 20, :SNORE
    m.at 24, :BRINE
    m.at 28, :AURORABEAM
    m.at 33, :ENCORE
    m.at 36, :BODYSLAM
    m.at 40, :SURF
    m.at 44, :BLIZZARD
    m.at 48, :HAIL
    m.at 52, :SHEERCOLD
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FROSTBREATH, :FRUSTRATION, :HAIL, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :IRONTAIL, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SUPERFANG, :SURF, :SWAGGER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AQUARING, :BELLYDRUM, :CURSE, :FISSURE, :ROLLOUT, :SPITUP, :STOCKPILE, :SWALLOW, :WATERPULSE, :YAWN
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        0.8
  s.weight        39.5
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Clap"
  s.pokedex_entry "It is completely covered with plushy fur. As a result, it never feels the cold even when it is rolling about on ice floes or diving in the sea."
  s.generation    3
  s.evolves_into  :SEALEO, :Level, 32
end

GameData::Species.define :SEALEO do |s|
  s.name          "Sealeo"
  s.types         :ICE, :WATER
  s.base_stats    hp: 90, attack: 60, defense: 70, speed: 45, sp_atk: 75, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      144
  s.catch_rate    120
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :THICKFAT, :ICEBODY
  s.hidden_abilities :OBLIVIOUS
  s.moves do |m|
    m.at 0, :SWAGGER
    m.at 1, :ROLLOUT
    m.at 1, :DEFENSECURL
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 12, :POWDERSNOW
    m.at 16, :REST
    m.at 20, :SNORE
    m.at 24, :BRINE
    m.at 28, :AURORABEAM
    m.at 35, :ENCORE
    m.at 40, :BODYSLAM
    m.at 46, :SURF
    m.at 52, :BLIZZARD
    m.at 58, :HAIL
    m.at 64, :SHEERCOLD
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FROSTBREATH, :FRUSTRATION, :HAIL, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IRONTAIL, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SUPERFANG, :SURF, :SWAGGER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        1.1
  s.weight        87.6
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Ball Roll"
  s.pokedex_entry "Sealeo live in herds on ice floes. Using its powerful flippers, it shatters ice. It dives into the sea to hunt prey five times a day."
  s.generation    3
  s.evolves_into  :WALREIN, :Level, 44
end

GameData::Species.define :WALREIN do |s|
  s.name          "Walrein"
  s.types         :ICE, :WATER
  s.base_stats    hp: 110, attack: 80, defense: 90, speed: 65, sp_atk: 95, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 3
  s.abilities     :THICKFAT, :ICEBODY
  s.hidden_abilities :OBLIVIOUS
  s.moves do |m|
    m.at 1, :SWAGGER
    m.at 1, :CRUNCH
    m.at 1, :ICEFANG
    m.at 1, :ROLLOUT
    m.at 1, :DEFENSECURL
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 12, :POWDERSNOW
    m.at 16, :REST
    m.at 20, :SNORE
    m.at 24, :BRINE
    m.at 28, :AURORABEAM
    m.at 35, :ENCORE
    m.at 40, :BODYSLAM
    m.at 48, :SURF
    m.at 56, :BLIZZARD
    m.at 64, :HAIL
    m.at 72, :SHEERCOLD
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DEFENSECURL, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FROSTBREATH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HAIL, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICICLESPEAR, :ICYWIND, :IRONHEAD, :IRONTAIL, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEELROLLER, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUPERFANG, :SURF, :SWAGGER, :SWORDSDANCE, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        1.4
  s.weight        150.6
  s.color         :Blue
  s.shape         :Quadruped
  s.habitat       :Sea
  s.category      "Ice Break"
  s.pokedex_entry "To protect its herd, the leader battles anything that invades its territory, even at the cost of its life. Its tusks may snap off in battle."
  s.generation    3
end

GameData::Species.define :REGICE do |s|
  s.name          "Regice"
  s.types         :ICE
  s.base_stats    hp: 80, attack: 50, defense: 100, speed: 50, sp_atk: 100, sp_def: 200
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           sp_defense: 3
  s.abilities     :CLEARBODY
  s.hidden_abilities :ICEBODY
  s.moves do |m|
    m.at 1, :CHARGEBEAM
    m.at 1, :ICYWIND
    m.at 6, :BULLDOZE
    m.at 12, :ANCIENTPOWER
    m.at 18, :STOMP
    m.at 24, :ICEBEAM
    m.at 30, :CURSE
    m.at 36, :AMNESIA
    m.at 42, :HAMMERARM
    m.at 48, :BLIZZARD
    m.at 54, :SUPERPOWER
    m.at 60, :LOCKON
    m.at 66, :ZAPCANNON
    m.at 72, :HYPERBEAM
    m.at 78, :EXPLOSION
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :AURORAVEIL, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :HAIL, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICICLESPEAR, :ICYWIND, :IRONHEAD, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SELFDESTRUCT, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        1.8
  s.weight        175.0
  s.color         :Blue
  s.shape         :Bipedal
  s.habitat       :Cave
  s.category      "Iceberg"
  s.pokedex_entry "Its entire body is made of Antarctic ice. After extensive studies, researchers believe the ice was formed during an ice age."
  s.generation    3
  s.flags         :Legendary
end

GameData::Species.define :GLACEON do |s|
  s.name          "Glaceon"
  s.types         :ICE
  s.base_stats    hp: 65, attack: 60, defense: 110, speed: 65, sp_atk: 130, sp_def: 95
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      184
  s.catch_rate    45
  s.happiness     35
  s.evs           sp_attack: 2
  s.abilities     :SNOWCLOAK
  s.hidden_abilities :ICEBODY
  s.moves do |m|
    m.at 0, :ICYWIND
    m.at 1, :COVET
    m.at 1, :SWIFT
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
    m.at 20, :ICESHARD
    m.at 25, :BITE
    m.at 30, :ICEFANG
    m.at 35, :HAIL
    m.at 40, :FREEZEDRY
    m.at 45, :MIRRORCOAT
    m.at 50, :BLIZZARD
    m.at 55, :LASTRESORT
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :AURORAVEIL, :AVALANCHE, :BATONPASS, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FAKETEARS, :FOCUSENERGY, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEFANG, :ICICLESPEAR, :ICYWIND, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYDAY, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TRIPLEAXEL, :WATERPULSE, :WEATHERBALL, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   8960
  s.height        0.8
  s.weight        25.9
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Fresh Snow"
  s.pokedex_entry "As a protective technique, it can completely freeze its fur to make its hairs stand like needles."
  s.generation    4
end

GameData::Species.define :MAMOSWINE do |s|
  s.name          "Mamoswine"
  s.types         :ICE, :GROUND
  s.base_stats    hp: 110, attack: 130, defense: 80, speed: 80, sp_atk: 70, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      265
  s.catch_rate    50
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :OBLIVIOUS, :SNOWCLOAK
  s.hidden_abilities :THICKFAT
  s.moves do |m|
    m.at 0, :DOUBLEHIT
    m.at 1, :ICEFANG
    m.at 1, :ANCIENTPOWER
    m.at 1, :TACKLE
    m.at 1, :MUDSLAP
    m.at 1, :POWDERSNOW
    m.at 1, :FLAIL
    m.at 15, :ICESHARD
    m.at 20, :MIST
    m.at 25, :ENDURE
    m.at 30, :ICYWIND
    m.at 37, :AMNESIA
    m.at 44, :TAKEDOWN
    m.at 51, :EARTHQUAKE
    m.at 58, :BLIZZARD
    m.at 65, :THRASH
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HAIL, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICICLESPEAR, :ICYWIND, :IRONHEAD, :KNOCKOFF, :LIGHTSCREEN, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        2.5
  s.weight        291.0
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Twin Tusk"
  s.pokedex_entry "Its impressive tusks are made of ice. The population thinned when it turned warm after the ice age."
  s.generation    4
  s.flags         :HasGenderedSprites
end

GameData::Species.define :FROSLASS do |s|
  s.name          "Froslass"
  s.types         :ICE, :GHOST
  s.base_stats    hp: 70, attack: 80, defense: 70, speed: 110, sp_atk: 80, sp_def: 70
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :SNOWCLOAK
  s.hidden_abilities :CURSEDBODY
  s.moves do |m|
    m.at 0, :HEX
    m.at 1, :DESTINYBOND
    m.at 1, :PROTECT
    m.at 1, :BITE
    m.at 1, :ICEFANG
    m.at 1, :HEADBUTT
    m.at 1, :CRUNCH
    m.at 1, :POWDERSNOW
    m.at 1, :ASTONISH
    m.at 1, :LEER
    m.at 1, :DOUBLETEAM
    m.at 15, :ICESHARD
    m.at 20, :DRAININGKISS
    m.at 25, :ICYWIND
    m.at 30, :FROSTBREATH
    m.at 35, :CONFUSERAY
    m.at 40, :HAIL
    m.at 47, :WILLOWISP
    m.at 54, :AURORAVEIL
    m.at 61, :SHADOWBALL
    m.at 68, :BLIZZARD
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :AURORAVEIL, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :CRUNCH, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :EMBARGO, :ENDURE, :FACADE, :FAKETEARS, :FLASH, :FLING, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HEX, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICEPUNCH, :ICICLESPEAR, :ICYWIND, :IMPRISON, :LASERFOCUS, :LIGHTSCREEN, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNATCH, :SNORE, :SPIKES, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SWAGGER, :TAUNT, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TRICK, :TRIPLEAXEL, :WATERPULSE, :WEATHERBALL, :WILLOWISP, :TERABLAST
  s.egg_groups    :Fairy, :Mineral
  s.hatch_steps   5120
  s.height        1.3
  s.weight        26.6
  s.color         :White
  s.shape         :HeadArms
  s.category      "Snow Land"
  s.pokedex_entry "It freezes foes with an icy breath nearly -60 degrees F. What seems to be its body is actually hollow."
  s.generation    4
end

GameData::Species.define :VANILLITE do |s|
  s.name          "Vanillite"
  s.types         :ICE
  s.base_stats    hp: 36, attack: 50, defense: 50, speed: 44, sp_atk: 65, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      61
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :ICEBODY, :SNOWCLOAK
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :HARDEN
    m.at 4, :TAUNT
    m.at 8, :MIST
    m.at 12, :ICYWIND
    m.at 16, :AVALANCHE
    m.at 20, :HAIL
    m.at 24, :ICICLESPEAR
    m.at 28, :UPROAR
    m.at 32, :ACIDARMOR
    m.at 36, :MIRRORCOAT
    m.at 40, :ICEBEAM
    m.at 44, :BLIZZARD
    m.at 48, :SHEERCOLD
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :AVALANCHE, :BLIZZARD, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FLASHCANNON, :FROSTBREATH, :FRUSTRATION, :HAIL, :HIDDENPOWER, :HYPERVOICE, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IMPRISON, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SELFDESTRUCT, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :TAUNT, :TOXIC, :UPROAR, :WATERPULSE, :TERABLAST
  s.egg_moves     :AURORAVEIL, :AUTOTOMIZE, :EXPLOSION, :ICESHARD, :ICICLECRASH, :MAGNETRISE
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.4
  s.weight        5.7
  s.color         :White
  s.shape         :HeadBase
  s.category      "Fresh Snow"
  s.pokedex_entry "This Pokémon formed from icicles bathed in energy from the morning sun. It sleeps buried in snow."
  s.generation    5
  s.evolves_into  :VANILLISH, :Level, 35
  s.wild_item_uncommon :NEVERMELTICE
end

GameData::Species.define :VANILLISH do |s|
  s.name          "Vanillish"
  s.types         :ICE
  s.base_stats    hp: 51, attack: 65, defense: 65, speed: 59, sp_atk: 80, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      138
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :ICEBODY, :SNOWCLOAK
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :HARDEN
    m.at 1, :TAUNT
    m.at 1, :MIST
    m.at 12, :ICYWIND
    m.at 16, :AVALANCHE
    m.at 20, :HAIL
    m.at 24, :ICICLESPEAR
    m.at 28, :UPROAR
    m.at 32, :ACIDARMOR
    m.at 38, :MIRRORCOAT
    m.at 44, :ICEBEAM
    m.at 50, :BLIZZARD
    m.at 56, :SHEERCOLD
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :AVALANCHE, :BLIZZARD, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FLASHCANNON, :FROSTBREATH, :FRUSTRATION, :HAIL, :HIDDENPOWER, :HYPERVOICE, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IMPRISON, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SELFDESTRUCT, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :TAUNT, :TOXIC, :UPROAR, :WATERPULSE, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.1
  s.weight        41.0
  s.color         :White
  s.shape         :HeadBase
  s.category      "Icy Snow"
  s.pokedex_entry "It conceals itself from enemy eyes by creating many small ice particles and hiding among them."
  s.generation    5
  s.evolves_into  :VANILLUXE, :Level, 47
  s.wild_item_uncommon :NEVERMELTICE
end

GameData::Species.define :VANILLUXE do |s|
  s.name          "Vanilluxe"
  s.types         :ICE
  s.base_stats    hp: 71, attack: 95, defense: 85, speed: 79, sp_atk: 110, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      268
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :ICEBODY, :SNOWWARNING
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 1, :WEATHERBALL
    m.at 1, :ICICLECRASH
    m.at 1, :FREEZEDRY
    m.at 1, :ASTONISH
    m.at 1, :HARDEN
    m.at 1, :TAUNT
    m.at 1, :MIST
    m.at 12, :ICYWIND
    m.at 16, :AVALANCHE
    m.at 20, :HAIL
    m.at 24, :ICICLESPEAR
    m.at 28, :UPROAR
    m.at 32, :ACIDARMOR
    m.at 38, :MIRRORCOAT
    m.at 44, :ICEBEAM
    m.at 52, :BLIZZARD
    m.at 60, :SHEERCOLD
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :AVALANCHE, :BEATUP, :BLIZZARD, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FLASHCANNON, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IMPRISON, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SELFDESTRUCT, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :TAUNT, :TOXIC, :UPROAR, :WATERPULSE, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.3
  s.weight        57.5
  s.color         :White
  s.shape         :MultiBody
  s.category      "Snowstorm"
  s.pokedex_entry "If both heads get angry simultaneously, this Pokémon expels a blizzard, burying everything in snow."
  s.generation    5
  s.wild_item_common   :NEVERMELTICE
end

GameData::Species.define :CUBCHOO do |s|
  s.name          "Cubchoo"
  s.types         :ICE
  s.base_stats    hp: 55, attack: 70, defense: 40, speed: 40, sp_atk: 60, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :SNOWCLOAK, :SLUSHRUSH
  s.hidden_abilities :RATTLED
  s.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 1, :GROWL
    m.at 3, :ENDURE
    m.at 6, :FURYSWIPES
    m.at 9, :ICYWIND
    m.at 12, :PLAYNICE
    m.at 15, :BRINE
    m.at 18, :FROSTBREATH
    m.at 21, :SLASH
    m.at 24, :FLAIL
    m.at 27, :CHARM
    m.at 30, :HAIL
    m.at 33, :THRASH
    m.at 36, :REST
    m.at 39, :BLIZZARD
    m.at 42, :SHEERCOLD
  end
  s.tutor_moves   :AERIALACE, :ASSURANCE, :ATTRACT, :AVALANCHE, :BLIZZARD, :BRINE, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FLING, :FOCUSPUNCH, :FROSTBREATH, :FRUSTRATION, :GRASSKNOT, :HAIL, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :ICEFANG, :ICEPUNCH, :ICYWIND, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :TOXIC, :WATERPULSE, :TERABLAST
  s.egg_moves     :FOCUSPUNCH, :NIGHTSLASH, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.5
  s.weight        8.5
  s.color         :White
  s.shape         :BipedalTail
  s.category      "Chill"
  s.pokedex_entry "Its nose is always running. It sniffs the snot back up because the mucus provides the raw material for its moves."
  s.generation    5
  s.evolves_into  :BEARTIC, :Level, 37
end

GameData::Species.define :BEARTIC do |s|
  s.name          "Beartic"
  s.types         :ICE
  s.base_stats    hp: 95, attack: 130, defense: 80, speed: 50, sp_atk: 70, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      177
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SNOWCLOAK, :SLUSHRUSH
  s.hidden_abilities :SWIFTSWIM
  s.moves do |m|
    m.at 0, :ICICLECRASH
    m.at 1, :AQUAJET
    m.at 1, :CHARM
    m.at 1, :POWDERSNOW
    m.at 1, :GROWL
    m.at 1, :ENDURE
    m.at 1, :FURYSWIPES
    m.at 9, :ICYWIND
    m.at 12, :PLAYNICE
    m.at 15, :BRINE
    m.at 18, :FROSTBREATH
    m.at 21, :SLASH
    m.at 24, :FLAIL
    m.at 27, :SWAGGER
    m.at 30, :HAIL
    m.at 33, :THRASH
    m.at 36, :REST
    m.at 41, :BLIZZARD
    m.at 46, :SHEERCOLD
    m.at 51, :SUPERPOWER
  end
  s.tutor_moves   :AERIALACE, :ASSURANCE, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYPRESS, :BRICKBREAK, :BRINE, :BULKUP, :BULLDOZE, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CUT, :DIG, :DIVE, :DOUBLETEAM, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HAIL, :HEAVYSLAM, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICEPUNCH, :ICICLESPEAR, :ICYWIND, :LIQUIDATION, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :TAUNT, :THROATCHOP, :TOXIC, :WATERPULSE, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        2.6
  s.weight        260.0
  s.color         :White
  s.shape         :Quadruped
  s.category      "Freezing"
  s.pokedex_entry "It freezes its breath to create fangs and claws of ice to fight with. Cold northern areas are its habitat."
  s.generation    5
end

GameData::Species.define :CRYOGONAL do |s|
  s.name          "Cryogonal"
  s.types         :ICE
  s.base_stats    hp: 80, attack: 50, defense: 50, speed: 105, sp_atk: 95, sp_def: 135
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      180
  s.catch_rate    25
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :BIND
    m.at 1, :ICESHARD
    m.at 4, :CONFUSERAY
    m.at 8, :RAPIDSPIN
    m.at 12, :LASERFOCUS
    m.at 16, :ICYWIND
    m.at 20, :MIST
    m.at 20, :HAZE
    m.at 24, :ANCIENTPOWER
    m.at 28, :AURORABEAM
    m.at 32, :SLASH
    m.at 32, :NIGHTSLASH
    m.at 36, :FREEZEDRY
    m.at 40, :LIGHTSCREEN
    m.at 40, :REFLECT
    m.at 44, :RECOVER
    m.at 48, :ICEBEAM
    m.at 52, :ACIDARMOR
    m.at 56, :SOLARBEAM
    m.at 60, :SHEERCOLD
  end
  s.tutor_moves   :ACROBATICS, :AURORAVEIL, :AVALANCHE, :BIND, :BLIZZARD, :CONFIDE, :DEFOG, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FLASHCANNON, :FROSTBREATH, :FRUSTRATION, :HAIL, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SELFDESTRUCT, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SWAGGER, :TOXIC, :TRIPLEAXEL, :WATERPULSE, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   6400
  s.height        1.1
  s.weight        148.0
  s.color         :Blue
  s.shape         :Head
  s.category      "Crystallizing"
  s.pokedex_entry "They are born in snow clouds. They use chains made of ice crystals to capture prey."
  s.generation    5
  s.wild_item_uncommon :NEVERMELTICE
end

GameData::Species.define :BERGMITE do |s|
  s.name          "Bergmite"
  s.types         :ICE
  s.base_stats    hp: 55, attack: 69, defense: 85, speed: 28, sp_atk: 32, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    190
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :OWNTEMPO, :ICEBODY
  s.hidden_abilities :STURDY
  s.moves do |m|
    m.at 1, :RAPIDSPIN
    m.at 1, :HARDEN
    m.at 3, :TACKLE
    m.at 6, :POWDERSNOW
    m.at 9, :CURSE
    m.at 12, :ICYWIND
    m.at 15, :PROTECT
    m.at 18, :AVALANCHE
    m.at 21, :BITE
    m.at 24, :ICEFANG
    m.at 27, :IRONDEFENSE
    m.at 30, :RECOVER
    m.at 33, :CRUNCH
    m.at 36, :TAKEDOWN
    m.at 39, :BLIZZARD
    m.at 42, :DOUBLEEDGE
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :AVALANCHE, :BLIZZARD, :CAPTIVATE, :CONFIDE, :CRUNCH, :DOUBLETEAM, :ENDURE, :FACADE, :FLASH, :FLASHCANNON, :FROSTBREATH, :FRUSTRATION, :GYROBALL, :HAIL, :HIDDENPOWER, :ICEBEAM, :ICEFANG, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNORE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :WATERPULSE, :TERABLAST
  s.egg_moves     :AURORAVEIL, :MIRRORCOAT, :MIST
  s.egg_groups    :Monster, :Mineral
  s.hatch_steps   5120
  s.height        1.0
  s.weight        99.5
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Ice Chunk"
  s.pokedex_entry "It blocks opponents' attacks with the ice that shields its body. It uses cold air to repair any cracks with new ice."
  s.generation    6
  s.evolves_into  :AVALUGG, :Level, 37
end

GameData::Species.define :AVALUGG do |s|
  s.name          "Avalugg"
  s.types         :ICE
  s.base_stats    hp: 95, attack: 117, defense: 184, speed: 28, sp_atk: 44, sp_def: 46
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      180
  s.catch_rate    55
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :OWNTEMPO, :ICEBODY
  s.hidden_abilities :STURDY
  s.moves do |m|
    m.at 0, :BODYSLAM
    m.at 1, :WIDEGUARD
    m.at 1, :RAPIDSPIN
    m.at 1, :HARDEN
    m.at 1, :TACKLE
    m.at 1, :POWDERSNOW
    m.at 9, :CURSE
    m.at 12, :ICYWIND
    m.at 15, :PROTECT
    m.at 18, :AVALANCHE
    m.at 21, :BITE
    m.at 24, :ICEFANG
    m.at 27, :IRONDEFENSE
    m.at 30, :RECOVER
    m.at 33, :CRUNCH
    m.at 36, :TAKEDOWN
    m.at 41, :BLIZZARD
    m.at 46, :DOUBLEEDGE
    m.at 51, :SKULLBASH
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FLASH, :FLASHCANNON, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HAIL, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :TOXIC, :WATERPULSE, :TERABLAST
  s.egg_groups    :Monster, :Mineral
  s.hatch_steps   5120
  s.height        2.0
  s.weight        505.0
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Iceberg"
  s.pokedex_entry "Its ice-covered body is as hard as steel. Its cumbersome frame crushes anything that stands in its way."
  s.generation    6
end

GameData::Species.define :MRRIME do |s|
  s.name          "Mr. Rime"
  s.types         :ICE, :PSYCHIC
  s.base_stats    hp: 80, attack: 85, defense: 75, speed: 70, sp_atk: 110, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      182
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :TANGLEDFEET, :SCREENCLEANER
  s.hidden_abilities :ICEBODY
  s.moves do |m|
    m.at 1, :FAKETEARS
    m.at 1, :SLACKOFF
    m.at 1, :AFTERYOU
    m.at 1, :BLOCK
    m.at 1, :COPYCAT
    m.at 1, :ENCORE
    m.at 1, :ROLEPLAY
    m.at 1, :PROTECT
    m.at 1, :RECYCLE
    m.at 1, :MIMIC
    m.at 1, :LIGHTSCREEN
    m.at 1, :REFLECT
    m.at 1, :SAFEGUARD
    m.at 1, :DAZZLINGGLEAM
    m.at 1, :MISTYTERRAIN
    m.at 1, :POUND
    m.at 1, :RAPIDSPIN
    m.at 1, :BATONPASS
    m.at 1, :ICESHARD
    m.at 12, :CONFUSION
    m.at 16, :ALLYSWITCH
    m.at 20, :ICYWIND
    m.at 24, :DOUBLEKICK
    m.at 28, :PSYBEAM
    m.at 32, :HYPNOSIS
    m.at 36, :MIRRORCOAT
    m.at 40, :SUCKERPUNCH
    m.at 44, :FREEZEDRY
    m.at 48, :PSYCHIC
    m.at 52, :TEETERDANCE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :AVALANCHE, :BATONPASS, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GUARDSWAP, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICICLESPEAR, :ICYWIND, :INFESTATION, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MISTYTERRAIN, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :TRIPLEAXEL, :UPROAR, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :CONFUSERAY, :FAKEOUT, :POWERSPLIT, :TICKLE
  s.egg_groups    :Humanlike
  s.hatch_steps   6400
  s.height        1.5
  s.weight        58.2
  s.color         :Purple
  s.shape         :Bipedal
  s.category      "Comedian"
  s.pokedex_entry "Its amusing movements make it very popular. It releases its psychic power from the pattern on its belly."
  s.generation    8
  s.flags         :DefaultForm_1, :InheritFormWithEverStone
end

GameData::Species.define :SNOM do |s|
  s.name          "Snom"
  s.types         :ICE, :BUG
  s.base_stats    hp: 30, attack: 25, defense: 35, speed: 20, sp_atk: 45, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      37
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :SHIELDDUST
  s.hidden_abilities :ICESCALES
  s.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 1, :STRUGGLEBUG
  end
  s.tutor_moves   :ATTRACT, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :ICICLESPEAR, :ICYWIND, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :TOXIC, :TERABLAST
  s.egg_moves     :BUGBITE, :FAIRYWIND, :MIRRORCOAT
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        0.3
  s.weight        3.8
  s.color         :White
  s.shape         :Serpentine
  s.category      "Worm"
  s.pokedex_entry "It spits out thread imbued with a frigid sort of energy and uses it to tie its body to branches, disguising itself as an icicle while it sleeps."
  s.generation    8
  s.evolves_into  :FROSMOTH, :HappinessNight
  s.wild_item_uncommon :SNOWBALL
end

GameData::Species.define :FROSMOTH do |s|
  s.name          "Frosmoth"
  s.types         :ICE, :BUG
  s.base_stats    hp: 70, attack: 65, defense: 60, speed: 65, sp_atk: 125, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :SHIELDDUST
  s.hidden_abilities :ICESCALES
  s.moves do |m|
    m.at 0, :ICYWIND
    m.at 1, :POWDERSNOW
    m.at 1, :STRUGGLEBUG
    m.at 1, :HELPINGHAND
    m.at 1, :ATTRACT
    m.at 4, :STUNSPORE
    m.at 8, :INFESTATION
    m.at 12, :MIST
    m.at 16, :DEFOG
    m.at 21, :FEATHERDANCE
    m.at 24, :AURORABEAM
    m.at 28, :HAIL
    m.at 32, :BUGBUZZ
    m.at 36, :AURORAVEIL
    m.at 40, :BLIZZARD
    m.at 44, :TAILWIND
    m.at 48, :WIDEGUARD
    m.at 52, :QUIVERDANCE
  end
  s.tutor_moves   :ACROBATICS, :AIRSLASH, :ATTRACT, :AVALANCHE, :BLIZZARD, :BUGBUZZ, :CALMMIND, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HAIL, :HELPINGHAND, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IMPRISON, :LEECHLIFE, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :PLAYROUGH, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :TOXIC, :TRIPLEAXEL, :UTURN, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        1.3
  s.weight        42.0
  s.color         :White
  s.shape         :MultiWinged
  s.category      "Frost Moth"
  s.pokedex_entry "It shows no mercy to any who desecrate fields and mountains. It will fly around on its icy wings, causing a blizzard to chase offenders away."
  s.generation    8
end

GameData::Species.define :EISCUE do |s|
  s.name          "Eiscue"
  s.types         :ICE
  s.base_stats    hp: 75, attack: 80, defense: 110, speed: 50, sp_atk: 65, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      165
  s.catch_rate    60
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :ICEFACE
  s.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 1, :TACKLE
    m.at 6, :MIST
    m.at 12, :WEATHERBALL
    m.at 18, :ICYWIND
    m.at 24, :HEADBUTT
    m.at 30, :AMNESIA
    m.at 36, :FREEZEDRY
    m.at 42, :HAIL
    m.at 48, :AURORAVEIL
    m.at 54, :SURF
    m.at 60, :BLIZZARD
  end
  s.tutor_moves   :AGILITY, :AMNESIA, :ATTRACT, :AVALANCHE, :BLIZZARD, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICEPUNCH, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :LIQUIDATION, :MIMIC, :NATURALGIFT, :PROTECT, :REFLECT, :REST, :RETURN, :REVERSAL, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :WATERFALL, :WEATHERBALL, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AQUARING, :BELLYDRUM, :DOUBLEEDGE, :HEADSMASH, :ICICLECRASH, :SOAK
  s.egg_groups    :Water1, :Field
  s.hatch_steps   6400
  s.height        1.4
  s.weight        89.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Penguin"
  s.pokedex_entry "It drifted in on the flow of ocean waters from a frigid place. It keeps its head iced constantly to make sure it stays nice and cold."
  s.generation    8
end

GameData::Species.define :GLASTRIER do |s|
  s.name          "Glastrier"
  s.types         :ICE
  s.base_stats    hp: 100, attack: 145, defense: 130, speed: 30, sp_atk: 65, sp_def: 110
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           attack: 3
  s.abilities     :CHILLINGNEIGH
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 6, :DOUBLEKICK
    m.at 12, :AVALANCHE
    m.at 18, :STOMP
    m.at 24, :TORMENT
    m.at 30, :MIST
    m.at 36, :ICICLECRASH
    m.at 42, :TAKEDOWN
    m.at 48, :IRONDEFENSE
    m.at 54, :THRASH
    m.at 60, :TAUNT
    m.at 66, :DOUBLEEDGE
    m.at 72, :SWORDSDANCE
  end
  s.tutor_moves   :ASSURANCE, :AVALANCHE, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CLOSECOMBAT, :CONFIDE, :CRUNCH, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :LASHOUT, :MEGAHORN, :MIMIC, :MUDSHOT, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PROTECT, :REST, :RETURN, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SMARTSTRIKE, :SNARL, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :TAUNT, :THROATCHOP, :TOXIC, :UPROAR, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        2.2
  s.weight        800.0
  s.color         :White
  s.shape         :Quadruped
  s.category      "Wild Horse"
  s.pokedex_entry "Glastrier has tremendous physical strength, and the mask of ice covering its face is 100 times harder than diamond."
  s.generation    8
  s.flags         :Legendary
end

