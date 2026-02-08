#===============================================================================
# Shattered Crowns - Flying Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :TORNADUS do |s|
  s.name          "Tornadus"
  s.types         :FLYING
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
    m.at 1, :GUST
    m.at 5, :LEER
    m.at 10, :SWAGGER
    m.at 15, :BITE
    m.at 20, :AIRCUTTER
    m.at 25, :AGILITY
    m.at 30, :TAILWIND
    m.at 35, :AIRSLASH
    m.at 40, :CRUNCH
    m.at 45, :EXTRASENSORY
    m.at 50, :UPROAR
    m.at 55, :HAMMERARM
    m.at 60, :RAINDANCE
    m.at 65, :HURRICANE
    m.at 70, :THRASH
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRSLASH, :ASSURANCE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULKUP, :CAPTIVATE, :CONFIDE, :CRUNCH, :DARKPULSE, :DEFOG, :DOUBLETEAM, :EMBARGO, :ENDURE, :FACADE, :FLING, :FLY, :FOCUSBLAST, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HEATWAVE, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :ICYWIND, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LASHOUT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :REVENGE, :ROCKSMASH, :ROLEPLAY, :ROUND, :SCARYFACE, :SECRETPOWER, :SKYDROP, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNORE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TAILWIND, :TAUNT, :THIEF, :TORMENT, :TOXIC, :UPROAR, :UTURN, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.5
  s.weight        63.0
  s.color         :Green
  s.shape         :HeadArms
  s.category      "Cyclone"
  s.pokedex_entry "Tornadus expels massive energy from its tail, causing severe storms. Its power is great enough to blow houses away."
  s.generation    5
  s.flags         :Legendary
end

GameData::Species.define :NOIBAT do |s|
  s.name          "Noibat"
  s.types         :FLYING, :DRAGON
  s.base_stats    hp: 40, attack: 30, defense: 35, speed: 55, sp_atk: 45, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      49
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :FRISK, :INFILTRATOR
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :ABSORB
    m.at 4, :GUST
    m.at 8, :SUPERSONIC
    m.at 12, :DOUBLETEAM
    m.at 16, :WINGATTACK
    m.at 20, :BITE
    m.at 24, :AIRCUTTER
    m.at 28, :WHIRLWIND
    m.at 32, :SUPERFANG
    m.at 36, :AIRSLASH
    m.at 40, :SCREECH
    m.at 44, :ROOST
    m.at 49, :TAILWIND
    m.at 52, :HURRICANE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRSLASH, :ATTRACT, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DEFOG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONPULSE, :DREAMEATER, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :HURRICANE, :HYPERVOICE, :IRONTAIL, :LEECHLIFE, :MIMIC, :NATURALGIFT, :OUTRAGE, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROOST, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SKYATTACK, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :TORMENT, :TOXIC, :UPROAR, :UTURN, :WATERPULSE, :WILDCHARGE, :XSCISSOR, :TERABLAST
  s.egg_moves     :DEFOG, :DRAGONRUSH
  s.egg_groups    :Flying, :Dragon
  s.hatch_steps   5120
  s.height        0.5
  s.weight        8.0
  s.color         :Purple
  s.shape         :Winged
  s.category      "Sound Wave"
  s.pokedex_entry "Even a robust wrestler will become dizzy and unable to stand when exposed to its 200,000-hertz ultrasonic waves."
  s.generation    6
  s.evolves_into  :NOIVERN, :Level, 48
end

GameData::Species.define :NOIVERN do |s|
  s.name          "Noivern"
  s.types         :FLYING, :DRAGON
  s.base_stats    hp: 85, attack: 70, defense: 80, speed: 123, sp_atk: 97, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      187
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :FRISK, :INFILTRATOR
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 0, :DRAGONPULSE
    m.at 1, :MOONLIGHT
    m.at 1, :ABSORB
    m.at 1, :TACKLE
    m.at 1, :GUST
    m.at 1, :SUPERSONIC
    m.at 12, :DOUBLETEAM
    m.at 16, :WINGATTACK
    m.at 20, :BITE
    m.at 24, :AIRCUTTER
    m.at 28, :WHIRLWIND
    m.at 32, :SUPERFANG
    m.at 36, :AIRSLASH
    m.at 40, :SCREECH
    m.at 44, :ROOST
    m.at 51, :TAILWIND
    m.at 56, :HURRICANE
    m.at 62, :BOOMBURST
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRSLASH, :ATTRACT, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DEFOG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DREAMEATER, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :FACADE, :FLAMETHROWER, :FLY, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HURRICANE, :HYPERBEAM, :HYPERVOICE, :IRONTAIL, :LASERFOCUS, :LEECHLIFE, :MIMIC, :NATURALGIFT, :OUTRAGE, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROOST, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SKYATTACK, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :TORMENT, :TOXIC, :UPROAR, :UTURN, :WATERPULSE, :WILDCHARGE, :XSCISSOR, :TERABLAST
  s.egg_groups    :Flying, :Dragon
  s.hatch_steps   5120
  s.height        1.5
  s.weight        85.0
  s.color         :Purple
  s.shape         :Winged
  s.category      "Sound Wave"
  s.pokedex_entry "They fly around on moonless nights and attack careless prey. Nothing can beat them in a battle in the dark."
  s.generation    6
end

GameData::Species.define :ROOKIDEE do |s|
  s.name          "Rookidee"
  s.types         :FLYING
  s.base_stats    hp: 38, attack: 47, defense: 35, speed: 57, sp_atk: 33, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      49
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :KEENEYE, :UNNERVE
  s.hidden_abilities :BIGPECKS
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :LEER
    m.at 4, :POWERTRIP
    m.at 8, :HONECLAWS
    m.at 12, :FURYATTACK
    m.at 16, :PLUCK
    m.at 20, :TAUNT
    m.at 24, :SCARYFACE
    m.at 28, :DRILLPECK
    m.at 32, :SWAGGER
    m.at 36, :BRAVEBIRD
  end
  s.tutor_moves   :AGILITY, :AIRSLASH, :ASSURANCE, :ATTRACT, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FAKETEARS, :FLY, :FOCUSENERGY, :FRUSTRATION, :HIDDENPOWER, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :TOXIC, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :DEFOG, :ROCKSMASH, :ROOST, :SANDATTACK, :SKYATTACK, :SPITE, :TAILWIND
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.2
  s.weight        1.8
  s.color         :Blue
  s.shape         :Winged
  s.category      "Tiny Bird"
  s.pokedex_entry "Jumping nimbly about, this small-bodied Pokémon takes advantage of even the slightest opportunity to disorient larger opponents."
  s.generation    8
  s.evolves_into  :CORVISQUIRE, :Level, 18
end

GameData::Species.define :CORVISQUIRE do |s|
  s.name          "Corvisquire"
  s.types         :FLYING
  s.base_stats    hp: 68, attack: 67, defense: 55, speed: 77, sp_atk: 43, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      128
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :KEENEYE, :UNNERVE
  s.hidden_abilities :BIGPECKS
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :LEER
    m.at 1, :POWERTRIP
    m.at 1, :HONECLAWS
    m.at 12, :FURYATTACK
    m.at 16, :PLUCK
    m.at 22, :TAUNT
    m.at 28, :SCARYFACE
    m.at 34, :DRILLPECK
    m.at 40, :SWAGGER
    m.at 46, :BRAVEBIRD
  end
  s.tutor_moves   :AGILITY, :AIRSLASH, :ASSURANCE, :ATTRACT, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FAKETEARS, :FLY, :FOCUSENERGY, :FRUSTRATION, :HIDDENPOWER, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :TOXIC, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.8
  s.weight        16.0
  s.color         :Blue
  s.shape         :Winged
  s.category      "Raven"
  s.pokedex_entry "Smart enough to use tools in battle, these Pokémon have been seen picking up rocks and flinging them or using ropes to wrap up enemies."
  s.generation    8
  s.evolves_into  :CORVIKNIGHT, :Level, 38
end

GameData::Species.define :CORVIKNIGHT do |s|
  s.name          "Corviknight"
  s.types         :FLYING, :STEEL
  s.base_stats    hp: 98, attack: 87, defense: 105, speed: 67, sp_atk: 53, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      248
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 3
  s.abilities     :PRESSURE, :UNNERVE
  s.hidden_abilities :MIRRORARMOR
  s.moves do |m|
    m.at 0, :STEELWING
    m.at 1, :IRONDEFENSE
    m.at 1, :METALSOUND
    m.at 1, :PECK
    m.at 1, :LEER
    m.at 1, :POWERTRIP
    m.at 1, :HONECLAWS
    m.at 12, :FURYATTACK
    m.at 16, :PLUCK
    m.at 22, :TAUNT
    m.at 28, :SCARYFACE
    m.at 34, :DRILLPECK
    m.at 42, :SWAGGER
    m.at 50, :BRAVEBIRD
  end
  s.tutor_moves   :AGILITY, :AIRSLASH, :ASSURANCE, :ATTRACT, :BODYPRESS, :BODYSLAM, :BRAVEBIRD, :BULKUP, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FAKETEARS, :FLASHCANNON, :FLY, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HEAVYSLAM, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :LIGHTSCREEN, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEELBEAM, :STEELWING, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :TOXIC, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        2.2
  s.weight        75.0
  s.color         :Purple
  s.shape         :Winged
  s.category      "Raven"
  s.pokedex_entry "This Pokémon reigns supreme in the skies. The black luster of its steel body could drive terror into the heart of any foe."
  s.generation    8
end

GameData::Species.define :CRAMORANT do |s|
  s.name          "Cramorant"
  s.types         :FLYING, :WATER
  s.base_stats    hp: 70, attack: 85, defense: 55, speed: 85, sp_atk: 85, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      166
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :GULPMISSILE
  s.moves do |m|
    m.at 1, :BELCH
    m.at 1, :PECK
    m.at 1, :STOCKPILE
    m.at 1, :SWALLOW
    m.at 1, :SPITUP
    m.at 7, :WATERGUN
    m.at 14, :FURYATTACK
    m.at 21, :PLUCK
    m.at 28, :DIVE
    m.at 35, :DRILLPECK
    m.at 42, :AMNESIA
    m.at 49, :THRASH
    m.at 56, :HYDROPUMP
  end
  s.tutor_moves   :AGILITY, :AIRSLASH, :AMNESIA, :ASSURANCE, :ATTRACT, :BLIZZARD, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :LIQUIDATION, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :THIEF, :THROATCHOP, :TOXIC, :UPROAR, :WEATHERBALL, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AERIALACE, :AQUARING, :DEFOG, :FEATHERDANCE, :ROOST
  s.egg_groups    :Water1, :Flying
  s.hatch_steps   5120
  s.height        0.8
  s.weight        18.0
  s.color         :Blue
  s.shape         :Winged
  s.category      "Gulp"
  s.pokedex_entry "It's so strong that it can knock out some opponents in a single hit, but it also may forget what it's battling midfight."
  s.generation    8
end

