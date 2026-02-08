#===============================================================================
# Shattered Crowns - Water Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :SQUIRTLE do |s|
  s.name          "Squirtle"
  s.types         :WATER
  s.base_stats    hp: 44, attack: 48, defense: 65, speed: 43, sp_atk: 50, sp_def: 64
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      63
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :TORRENT
  s.hidden_abilities :RAINDISH
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 3, :WATERGUN
    m.at 6, :WITHDRAW
    m.at 9, :RAPIDSPIN
    m.at 12, :BITE
    m.at 15, :WATERPULSE
    m.at 18, :PROTECT
    m.at 21, :RAINDANCE
    m.at 24, :AQUATAIL
    m.at 27, :SHELLSMASH
    m.at 30, :IRONDEFENSE
    m.at 33, :HYDROPUMP
    m.at 36, :SKULLBASH
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :AURASPHERE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRINE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :DYNAMICPUNCH, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FLIPTURN, :FOCUSPUNCH, :FRUSTRATION, :GYROBALL, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONDEFENSE, :IRONTAIL, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AQUAJET, :AQUARING, :AURASPHERE, :FAKEOUT, :FLAIL, :HAZE, :LIFEDEW, :MIRRORCOAT, :MIST, :MUDDYWATER, :WATERSPOUT, :YAWN
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        0.5
  s.weight        9.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Tiny Turtle"
  s.pokedex_entry "Its shell is not just for protection. Its rounded shape and the grooves on its surface minimize resistance in water, enabling Squirtle to swim at high speeds."
  s.generation    1
  s.evolves_into  :WARTORTLE, :Level, 16
end

GameData::Species.define :WARTORTLE do |s|
  s.name          "Wartortle"
  s.types         :WATER
  s.base_stats    hp: 59, attack: 63, defense: 80, speed: 58, sp_atk: 65, sp_def: 80
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1, sp_defense: 1
  s.abilities     :TORRENT
  s.hidden_abilities :RAINDISH
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :WATERGUN
    m.at 1, :WITHDRAW
    m.at 9, :RAPIDSPIN
    m.at 12, :BITE
    m.at 15, :WATERPULSE
    m.at 20, :PROTECT
    m.at 25, :RAINDANCE
    m.at 30, :AQUATAIL
    m.at 35, :SHELLSMASH
    m.at 40, :IRONDEFENSE
    m.at 45, :HYDROPUMP
    m.at 50, :SKULLBASH
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :AURASPHERE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRINE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :DYNAMICPUNCH, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FLIPTURN, :FOCUSPUNCH, :FRUSTRATION, :GYROBALL, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONDEFENSE, :IRONTAIL, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        1.0
  s.weight        22.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Turtle"
  s.pokedex_entry "Its large tail is covered with rich, thick fur that deepens in color with age. The scratches on its shell are evidence of this Pokémon's toughness in battle."
  s.generation    1
  s.evolves_into  :BLASTOISE, :Level, 36
end

GameData::Species.define :BLASTOISE do |s|
  s.name          "Blastoise"
  s.types         :WATER
  s.base_stats    hp: 79, attack: 83, defense: 100, speed: 78, sp_atk: 85, sp_def: 105
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 3
  s.abilities     :TORRENT
  s.hidden_abilities :RAINDISH
  s.moves do |m|
    m.at 0, :FLASHCANNON
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :WATERGUN
    m.at 1, :WITHDRAW
    m.at 9, :RAPIDSPIN
    m.at 12, :BITE
    m.at 15, :WATERPULSE
    m.at 20, :PROTECT
    m.at 25, :RAINDANCE
    m.at 30, :AQUATAIL
    m.at 35, :SHELLSMASH
    m.at 42, :IRONDEFENSE
    m.at 49, :HYDROPUMP
    m.at 56, :SKULLBASH
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :AURASPHERE, :AVALANCHE, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :DARKPULSE, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :DRAGONTAIL, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FALSESWIPE, :FLASHCANNON, :FLING, :FLIPTURN, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROCANNON, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONDEFENSE, :IRONTAIL, :LIQUIDATION, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SIGNALBEAM, :SLEEPTALK, :SMACKDOWN, :SNORE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :TERRAINPULSE, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        1.6
  s.weight        85.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Shellfish"
  s.pokedex_entry "The waterspouts that protrude from its shell are highly accurate. Their bullets of water can precisely nail tin cans from a distance of over 160 feet."
  s.generation    1
end

GameData::Species.define :PSYDUCK do |s|
  s.name          "Psyduck"
  s.types         :WATER
  s.base_stats    hp: 50, attack: 52, defense: 48, speed: 55, sp_atk: 65, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      64
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :DAMP, :CLOUDNINE
  s.hidden_abilities :SWIFTSWIM
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :TAILWHIP
    m.at 3, :WATERGUN
    m.at 6, :CONFUSION
    m.at 9, :FURYSWIPES
    m.at 12, :WATERPULSE
    m.at 15, :DISABLE
    m.at 18, :ZENHEADBUTT
    m.at 21, :SCREECH
    m.at 24, :AQUATAIL
    m.at 27, :SOAK
    m.at 30, :PSYCHUP
    m.at 34, :AMNESIA
    m.at 36, :HYDROPUMP
    m.at 39, :WONDERROOM
  end
  s.tutor_moves   :AERIALACE, :AMNESIA, :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRINE, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :ENCORE, :ENDURE, :FACADE, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FUTURESIGHT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYDROPUMP, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :LIGHTSCREEN, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYDAY, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROLEPLAY, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TELEKINESIS, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WONDERROOM, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :CLEARSMOG, :CONFUSERAY, :CROSSCHOP, :ENCORE, :FUTURESIGHT, :HYPNOSIS, :PSYBEAM, :SIMPLEBEAM, :YAWN
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        0.8
  s.weight        19.6
  s.color         :Yellow
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Duck"
  s.pokedex_entry "When its headache intensifies, it starts using strange powers. However, it has no recollection of its powers, so it always looks befuddled and bewildered."
  s.generation    1
  s.evolves_into  :GOLDUCK, :Level, 33
end

GameData::Species.define :GOLDUCK do |s|
  s.name          "Golduck"
  s.types         :WATER
  s.base_stats    hp: 80, attack: 82, defense: 78, speed: 85, sp_atk: 95, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :DAMP, :CLOUDNINE
  s.hidden_abilities :SWIFTSWIM
  s.moves do |m|
    m.at 1, :AQUAJET
    m.at 1, :SCRATCH
    m.at 1, :TAILWHIP
    m.at 1, :WATERGUN
    m.at 1, :CONFUSION
    m.at 9, :FURYSWIPES
    m.at 12, :WATERPULSE
    m.at 15, :DISABLE
    m.at 18, :ZENHEADBUTT
    m.at 21, :SCREECH
    m.at 24, :AQUATAIL
    m.at 27, :SOAK
    m.at 30, :PSYCHUP
    m.at 36, :AMNESIA
    m.at 40, :HYDROPUMP
    m.at 45, :WONDERROOM
  end
  s.tutor_moves   :AERIALACE, :AMNESIA, :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRINE, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :ENCORE, :ENDURE, :FACADE, :FLASH, :FLING, :FLIPTURN, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :FUTURESIGHT, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :LIQUIDATION, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSLAP, :NATURALGIFT, :PAYDAY, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REST, :RETURN, :ROCKCLIMB, :ROCKSMASH, :ROLEPLAY, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TELEKINESIS, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WONDERROOM, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        1.7
  s.weight        76.6
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Duck"
  s.pokedex_entry "A Golduck is an adept swimmer. It sometimes joins competitive swimmers in training. It uses psychic powers when its forehead shimmers with light."
  s.generation    1
end

GameData::Species.define :POLIWAG do |s|
  s.name          "Poliwag"
  s.types         :WATER
  s.base_stats    hp: 40, attack: 50, defense: 40, speed: 90, sp_atk: 40, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      60
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :WATERABSORB, :DAMP
  s.hidden_abilities :SWIFTSWIM
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :HYPNOSIS
    m.at 6, :POUND
    m.at 12, :MUDSHOT
    m.at 18, :BUBBLEBEAM
    m.at 24, :RAINDANCE
    m.at 30, :BODYSLAM
    m.at 36, :EARTHPOWER
    m.at 42, :HYDROPUMP
    m.at 48, :BELLYDRUM
    m.at 54, :DOUBLEEDGE
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :THIEF, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :BUBBLEBEAM, :ENCORE, :ENDEAVOR, :HAZE, :MINDREADER, :MIST, :MUDSHOT, :SPLASH, :WATERPULSE
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        0.6
  s.weight        12.4
  s.color         :Blue
  s.shape         :HeadLegs
  s.habitat       :WatersEdge
  s.category      "Tadpole"
  s.pokedex_entry "It is possible to see this Pokémon's spiral innards right through its thin skin. However, the skin is also very flexible. Even sharp fangs bounce right off it."
  s.generation    1
  s.evolves_into  :POLIWHIRL, :Level, 25
end

GameData::Species.define :POLIWHIRL do |s|
  s.name          "Poliwhirl"
  s.types         :WATER
  s.base_stats    hp: 65, attack: 65, defense: 65, speed: 90, sp_atk: 50, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      135
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :WATERABSORB, :DAMP
  s.hidden_abilities :SWIFTSWIM
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :HYPNOSIS
    m.at 6, :POUND
    m.at 12, :MUDSHOT
    m.at 18, :BUBBLEBEAM
    m.at 24, :RAINDANCE
    m.at 32, :BODYSLAM
    m.at 40, :EARTHPOWER
    m.at 48, :HYDROPUMP
    m.at 56, :BELLYDRUM
    m.at 66, :DOUBLEEDGE
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FOCUSPUNCH, :FRUSTRATION, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICEPUNCH, :ICYWIND, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :THIEF, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        1.0
  s.weight        20.0
  s.color         :Blue
  s.shape         :Bipedal
  s.habitat       :WatersEdge
  s.category      "Tadpole"
  s.pokedex_entry "Its body surface is always wet and slick with an oily fluid. Because of this greasy covering, it can easily slip and slide out of the clutches of any enemy in battle."
  s.generation    1
  s.evolves_into  :POLIWRATH, :Item, WATERSTONE
  s.evolves_into  :POLITOED, :TradeItem, KINGSROCK
  s.wild_item_uncommon :KINGSROCK
end

GameData::Species.define :POLIWRATH do |s|
  s.name          "Poliwrath"
  s.types         :WATER, :FIGHTING
  s.base_stats    hp: 90, attack: 95, defense: 95, speed: 70, sp_atk: 70, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      255
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 3
  s.abilities     :WATERABSORB, :DAMP
  s.hidden_abilities :SWIFTSWIM
  s.moves do |m|
    m.at 0, :SUBMISSION
    m.at 1, :CIRCLETHROW
    m.at 1, :MINDREADER
    m.at 1, :DYNAMICPUNCH
    m.at 1, :BUBBLEBEAM
    m.at 1, :RAINDANCE
    m.at 1, :BODYSLAM
    m.at 1, :EARTHPOWER
    m.at 1, :HYDROPUMP
    m.at 1, :BELLYDRUM
    m.at 1, :DOUBLEEDGE
    m.at 1, :WATERGUN
    m.at 1, :HYPNOSIS
    m.at 1, :POUND
    m.at 1, :MUDSHOT
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :COUNTER, :DARKESTLARIAT, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HIGHHORSEPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :LIQUIDATION, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :THIEF, :THROATCHOP, :VACUUMWAVE, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        1.3
  s.weight        54.0
  s.color         :Blue
  s.shape         :Bipedal
  s.habitat       :WatersEdge
  s.category      "Tadpole"
  s.pokedex_entry "Its highly developed muscles never grow fatigued, however much it exercises. This Pokémon can swim back and forth across the Pacific Ocean without effort."
  s.generation    1
  s.wild_item_uncommon :KINGSROCK
end

GameData::Species.define :TENTACOOL do |s|
  s.name          "Tentacool"
  s.types         :WATER, :POISON
  s.base_stats    hp: 40, attack: 40, defense: 35, speed: 70, sp_atk: 50, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      67
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :CLEARBODY, :LIQUIDOOZE
  s.hidden_abilities :RAINDISH
  s.moves do |m|
    m.at 1, :POISONSTING
    m.at 1, :WATERGUN
    m.at 4, :ACID
    m.at 8, :WRAP
    m.at 12, :SUPERSONIC
    m.at 16, :WATERPULSE
    m.at 20, :SCREECH
    m.at 24, :BUBBLEBEAM
    m.at 28, :HEX
    m.at 32, :ACIDARMOR
    m.at 36, :POISONJAB
    m.at 40, :SURF
    m.at 44, :SLUDGEWAVE
    m.at 48, :HYDROPUMP
  end
  s.tutor_moves   :ATTRACT, :BIND, :BLIZZARD, :BRINE, :BRUTALSWING, :CAPTIVATE, :CONFIDE, :CROSSPOISON, :CUT, :DAZZLINGGLEAM, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :GIGADRAIN, :HAIL, :HEX, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :INFESTATION, :KNOCKOFF, :MAGICCOAT, :MIMIC, :MUDDYWATER, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWORDSDANCE, :THIEF, :TOXICSPIKES, :VENOSHOCK, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :ACUPRESSURE, :AQUARING, :AURORABEAM, :CONFUSERAY, :HAZE, :KNOCKOFF, :MIRRORCOAT, :MUDDYWATER, :RAPIDSPIN, :TICKLE
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        0.9
  s.weight        45.5
  s.color         :Blue
  s.shape         :Multiped
  s.habitat       :Sea
  s.category      "Jellyfish"
  s.pokedex_entry "Its body is almost entirely composed of water. It ensnares its foe with its two long tentacles, then stabs with the poison stingers at their tips."
  s.generation    1
  s.evolves_into  :TENTACRUEL, :Level, 30
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :TENTACRUEL do |s|
  s.name          "Tentacruel"
  s.types         :WATER, :POISON
  s.base_stats    hp: 80, attack: 70, defense: 65, speed: 100, sp_atk: 80, sp_def: 120
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      180
  s.catch_rate    60
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :CLEARBODY, :LIQUIDOOZE
  s.hidden_abilities :RAINDISH
  s.moves do |m|
    m.at 1, :REFLECTTYPE
    m.at 1, :POISONSTING
    m.at 1, :WATERGUN
    m.at 1, :ACID
    m.at 1, :WRAP
    m.at 12, :SUPERSONIC
    m.at 16, :WATERPULSE
    m.at 20, :SCREECH
    m.at 24, :BUBBLEBEAM
    m.at 28, :HEX
    m.at 34, :ACIDARMOR
    m.at 40, :POISONJAB
    m.at 46, :SURF
    m.at 52, :SLUDGEWAVE
    m.at 58, :HYDROPUMP
  end
  s.tutor_moves   :ATTRACT, :BIND, :BLIZZARD, :BRINE, :BRUTALSWING, :CAPTIVATE, :CONFIDE, :CORROSIVEGAS, :CROSSPOISON, :CUT, :DAZZLINGGLEAM, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HAIL, :HEX, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INFESTATION, :KNOCKOFF, :MAGICCOAT, :MIMIC, :MUDDYWATER, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWORDSDANCE, :THIEF, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        1.6
  s.weight        55.0
  s.color         :Blue
  s.shape         :Multiped
  s.habitat       :Sea
  s.category      "Jellyfish"
  s.pokedex_entry "It lives in complex rock formations on the ocean floor and traps prey using its 80 tentacles. Its red orbs glow when it grows excited or agitated."
  s.generation    1
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :SLOWPOKE do |s|
  s.name          "Slowpoke"
  s.types         :WATER, :PSYCHIC
  s.base_stats    hp: 90, attack: 65, defense: 65, speed: 15, sp_atk: 40, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      63
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :OBLIVIOUS, :OWNTEMPO
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :CURSE
    m.at 3, :GROWL
    m.at 6, :WATERGUN
    m.at 9, :YAWN
    m.at 12, :CONFUSION
    m.at 15, :DISABLE
    m.at 18, :WATERPULSE
    m.at 21, :HEADBUTT
    m.at 24, :ZENHEADBUTT
    m.at 27, :AMNESIA
    m.at 30, :SURF
    m.at 33, :SLACKOFF
    m.at 36, :PSYCHIC
    m.at 39, :PSYCHUP
    m.at 42, :RAINDANCE
    m.at 45, :HEALPULSE
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :AQUATAIL, :ATTRACT, :BLIZZARD, :BLOCK, :BODYSLAM, :BRINE, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FRUSTRATION, :FUTURESIGHT, :GRASSKNOT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :IMPRISON, :INCINERATE, :IRONTAIL, :LIGHTSCREEN, :LIQUIDATION, :MAGICCOAT, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PAYDAY, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BELCH, :BELLYDRUM, :BLOCK, :FUTURESIGHT, :SNORE, :STOMP, :WONDERROOM, :ZENHEADBUTT
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        1.2
  s.weight        36.0
  s.color         :Pink
  s.shape         :Quadruped
  s.habitat       :WatersEdge
  s.category      "Dopey"
  s.pokedex_entry "It catches prey by dipping its tail in water at the side of a river. But it often forgets what it is doing and spends whole days just loafing at the water's edge."
  s.generation    1
  s.evolves_into  :SLOWBRO, :Level, 37
  s.evolves_into  :SLOWKING, :TradeItem, KINGSROCK
  s.wild_item_uncommon :LAGGINGTAIL
end

GameData::Species.define :SLOWBRO do |s|
  s.name          "Slowbro"
  s.types         :WATER, :PSYCHIC
  s.base_stats    hp: 95, attack: 75, defense: 110, speed: 30, sp_atk: 100, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      172
  s.catch_rate    75
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :OBLIVIOUS, :OWNTEMPO
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :WITHDRAW
    m.at 1, :TACKLE
    m.at 1, :CURSE
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 9, :YAWN
    m.at 12, :CONFUSION
    m.at 15, :DISABLE
    m.at 18, :WATERPULSE
    m.at 21, :HEADBUTT
    m.at 24, :ZENHEADBUTT
    m.at 27, :AMNESIA
    m.at 30, :SURF
    m.at 33, :SLACKOFF
    m.at 36, :PSYCHIC
    m.at 41, :PSYCHUP
    m.at 46, :RAINDANCE
    m.at 51, :HEALPULSE
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :AMNESIA, :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRINE, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IMPRISON, :INCINERATE, :IRONDEFENSE, :IRONTAIL, :LIGHTSCREEN, :LIQUIDATION, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYDAY, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RAZORSHELL, :RECYCLE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        1.6
  s.weight        78.5
  s.color         :Pink
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Hermit Crab"
  s.pokedex_entry "Its tail has a Shellder firmly attached with a bite. As a result, the tail can't be used for fishing anymore. This forces it to reluctantly swim and catch prey."
  s.generation    1
  s.wild_item_uncommon :KINGSROCK
end

GameData::Species.define :SEEL do |s|
  s.name          "Seel"
  s.types         :WATER
  s.base_stats    hp: 65, attack: 45, defense: 55, speed: 45, sp_atk: 45, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      65
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :THICKFAT, :HYDRATION
  s.hidden_abilities :ICEBODY
  s.moves do |m|
    m.at 1, :HEADBUTT
    m.at 3, :GROWL
    m.at 7, :WATERGUN
    m.at 11, :ICYWIND
    m.at 13, :ENCORE
    m.at 17, :ICESHARD
    m.at 21, :REST
    m.at 23, :AQUARING
    m.at 27, :AURORABEAM
    m.at 31, :AQUAJET
    m.at 33, :BRINE
    m.at 37, :TAKEDOWN
    m.at 41, :DIVE
    m.at 43, :AQUATAIL
    m.at 47, :ICEBEAM
    m.at 51, :SAFEGUARD
    m.at 53, :HAIL
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :HAIL, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :IRONTAIL, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :THIEF, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :BELCH, :DISABLE, :ENCORE, :ENTRAINMENT, :FAKEOUT, :HORNDRILL, :ICICLESPEAR, :LICK, :PERISHSONG, :SLAM, :SPITUP, :STOCKPILE, :SWALLOW
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        1.1
  s.weight        90.0
  s.color         :White
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Sea Lion"
  s.pokedex_entry "Seel hunt for prey in frigid, ice-covered seas. When it needs to breathe, it punches a hole through the ice with the sharply protruding section of its head."
  s.generation    1
  s.evolves_into  :DEWGONG, :Level, 34
end

GameData::Species.define :DEWGONG do |s|
  s.name          "Dewgong"
  s.types         :WATER, :ICE
  s.base_stats    hp: 90, attack: 70, defense: 80, speed: 70, sp_atk: 70, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      166
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :THICKFAT, :HYDRATION
  s.hidden_abilities :ICEBODY
  s.moves do |m|
    m.at 0, :SHEERCOLD
    m.at 1, :HEADBUTT
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 1, :BUBBLEBEAM
    m.at 1, :ICYWIND
    m.at 3, :GROWL
    m.at 7, :BUBBLEBEAM
    m.at 11, :ICYWIND
    m.at 13, :ENCORE
    m.at 17, :ICESHARD
    m.at 21, :REST
    m.at 23, :AQUARING
    m.at 27, :AURORABEAM
    m.at 31, :AQUAJET
    m.at 33, :BRINE
    m.at 39, :TAKEDOWN
    m.at 45, :DIVE
    m.at 49, :AQUATAIL
    m.at 55, :ICEBEAM
    m.at 61, :SAFEGUARD
    m.at 65, :HAIL
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONTAIL, :LIQUIDATION, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :THIEF, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        1.7
  s.weight        120.0
  s.color         :White
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Sea Lion"
  s.pokedex_entry "It loves to snooze on bitterly cold ice. The sight of this Pokémon sleeping on a glacier was mistakenly thought to be a mermaid by a mariner long ago."
  s.generation    1
end

GameData::Species.define :SHELLDER do |s|
  s.name          "Shellder"
  s.types         :WATER
  s.base_stats    hp: 30, attack: 65, defense: 100, speed: 40, sp_atk: 45, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      61
  s.catch_rate    190
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :SHELLARMOR, :SKILLLINK
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 4, :WITHDRAW
    m.at 8, :ICESHARD
    m.at 12, :LEER
    m.at 16, :WHIRLPOOL
    m.at 20, :SUPERSONIC
    m.at 24, :AURORABEAM
    m.at 28, :PROTECT
    m.at 32, :RAZORSHELL
    m.at 36, :IRONDEFENSE
    m.at 40, :ICEBEAM
    m.at 44, :SHELLSMASH
    m.at 48, :HYDROPUMP
  end
  s.tutor_moves   :ATTRACT, :AVALANCHE, :BLIZZARD, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FRUSTRATION, :HAIL, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :LIQUIDATION, :MIMIC, :MUDSHOT, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :ROCKBLAST, :ROUND, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TRIATTACK, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AQUARING, :BUBBLEBEAM, :ICICLESPEAR, :LIFEDEW, :MUDSHOT, :RAPIDSPIN, :ROCKBLAST, :SCREECH, :TAKEDOWN, :WATERPULSE
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        0.3
  s.weight        4.0
  s.color         :Purple
  s.shape         :Head
  s.habitat       :Sea
  s.category      "Bivalve"
  s.pokedex_entry "At night, it burrows a hole in the seafloor with its broad tongue to make a place to sleep. While asleep, it closes its shell, but leaves its tongue hanging out."
  s.generation    1
  s.evolves_into  :CLOYSTER, :Item, WATERSTONE
  s.wild_item_common   :PEARL
  s.wild_item_uncommon :BIGPEARL
end

GameData::Species.define :CLOYSTER do |s|
  s.name          "Cloyster"
  s.types         :WATER, :ICE
  s.base_stats    hp: 50, attack: 95, defense: 180, speed: 70, sp_atk: 85, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      184
  s.catch_rate    60
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SHELLARMOR, :SKILLLINK
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 0, :ICICLESPEAR
    m.at 1, :ICICLECRASH
    m.at 1, :TOXICSPIKES
    m.at 1, :SPIKES
    m.at 1, :LEER
    m.at 1, :WHIRLPOOL
    m.at 1, :SUPERSONIC
    m.at 1, :AURORABEAM
    m.at 1, :PROTECT
    m.at 1, :RAZORSHELL
    m.at 1, :IRONDEFENSE
    m.at 1, :ICEBEAM
    m.at 1, :SHELLSMASH
    m.at 1, :HYDROPUMP
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 1, :WITHDRAW
    m.at 1, :ICESHARD
  end
  s.tutor_moves   :ATTRACT, :AVALANCHE, :BLIZZARD, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :LIGHTSCREEN, :LIQUIDATION, :MIMIC, :MUDSHOT, :NATURALGIFT, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :ROCKBLAST, :ROUND, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SIGNALBEAM, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SPIKES, :STEELROLLER, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TORMENT, :TOXICSPIKES, :TRIATTACK, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        1.5
  s.weight        132.5
  s.color         :Purple
  s.shape         :Head
  s.habitat       :Sea
  s.category      "Bivalve"
  s.pokedex_entry "It swims in the sea by swallowing water, then jetting it out toward the rear. The Cloyster shoots spikes from its shell using the same system."
  s.generation    1
  s.wild_item_common   :PEARL
  s.wild_item_uncommon :BIGPEARL
end

GameData::Species.define :KRABBY do |s|
  s.name          "Krabby"
  s.types         :WATER
  s.base_stats    hp: 30, attack: 105, defense: 90, speed: 50, sp_atk: 25, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      65
  s.catch_rate    225
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :HYPERCUTTER, :SHELLARMOR
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :LEER
    m.at 4, :HARDEN
    m.at 8, :METALCLAW
    m.at 12, :MUDSHOT
    m.at 16, :PROTECT
    m.at 20, :BUBBLEBEAM
    m.at 24, :STOMP
    m.at 29, :FLAIL
    m.at 32, :RAZORSHELL
    m.at 36, :SLAM
    m.at 40, :SWORDSDANCE
    m.at 44, :CRABHAMMER
    m.at 48, :GUILLOTINE
  end
  s.tutor_moves   :AGILITY, :ALLYSWITCH, :AMNESIA, :ANCIENTPOWER, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRINE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FRUSTRATION, :FURYCUTTER, :HAIL, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :KNOCKOFF, :LIQUIDATION, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :THIEF, :WATERPULSE, :WHIRLPOOL, :XSCISSOR, :TERABLAST
  s.egg_moves     :AGILITY, :ALLYSWITCH, :AMNESIA, :ANCIENTPOWER, :FLAIL, :HAMMERARM, :HAZE, :KNOCKOFF, :NIGHTSLASH, :SLAM, :SLASH, :TICKLE
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        0.4
  s.weight        6.5
  s.color         :Red
  s.shape         :Insectoid
  s.habitat       :WatersEdge
  s.category      "River Crab"
  s.pokedex_entry "Krabby live in holes dug into beaches. On sandy shores with little in the way of food, they can be seen squabbling with each other over territory."
  s.generation    1
  s.evolves_into  :KINGLER, :Level, 28
end

GameData::Species.define :KINGLER do |s|
  s.name          "Kingler"
  s.types         :WATER
  s.base_stats    hp: 55, attack: 130, defense: 115, speed: 75, sp_atk: 50, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      166
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :HYPERCUTTER, :SHELLARMOR
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :WIDEGUARD
    m.at 1, :HAMMERARM
    m.at 1, :WATERGUN
    m.at 1, :LEER
    m.at 1, :HARDEN
    m.at 1, :METALCLAW
    m.at 12, :MUDSHOT
    m.at 16, :PROTECT
    m.at 20, :BUBBLEBEAM
    m.at 24, :STOMP
    m.at 31, :FLAIL
    m.at 36, :RAZORSHELL
    m.at 42, :SLAM
    m.at 48, :SWORDSDANCE
    m.at 54, :CRABHAMMER
    m.at 60, :GUILLOTINE
  end
  s.tutor_moves   :AGILITY, :ALLYSWITCH, :AMNESIA, :ANCIENTPOWER, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRINE, :BRUTALSWING, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :KNOCKOFF, :LIQUIDATION, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :QUASH, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :THIEF, :WATERPULSE, :WHIRLPOOL, :XSCISSOR, :TERABLAST
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        1.3
  s.weight        60.0
  s.color         :Red
  s.shape         :Insectoid
  s.habitat       :WatersEdge
  s.category      "Pincer"
  s.pokedex_entry "It waves its huge, oversized claw in the air to communicate with others. But since the claw is so heavy, this Pokémon quickly tires."
  s.generation    1
end

GameData::Species.define :HORSEA do |s|
  s.name          "Horsea"
  s.types         :WATER
  s.base_stats    hp: 30, attack: 40, defense: 70, speed: 60, sp_atk: 70, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      59
  s.catch_rate    225
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :SWIFTSWIM, :SNIPER
  s.hidden_abilities :DAMP
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :LEER
    m.at 5, :SMOKESCREEN
    m.at 10, :TWISTER
    m.at 15, :FOCUSENERGY
    m.at 20, :DRAGONBREATH
    m.at 25, :BUBBLEBEAM
    m.at 30, :AGILITY
    m.at 35, :LASERFOCUS
    m.at 40, :DRAGONPULSE
    m.at 45, :HYDROPUMP
    m.at 50, :DRAGONDANCE
    m.at 55, :RAINDANCE
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BLIZZARD, :BOUNCE, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :DRAGONPULSE, :ENDURE, :FACADE, :FLASHCANNON, :FLIPTURN, :FOCUSENERGY, :FRUSTRATION, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :LIQUIDATION, :MIMIC, :MUDDYWATER, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCALESHOT, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TWISTER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AURORABEAM, :CLEARSMOG, :DISABLE, :DRAGONBREATH, :FLAIL, :MUDDYWATER, :OCTAZOOKA, :OUTRAGE, :SPLASH, :WATERPULSE
  s.egg_groups    :Water1, :Dragon
  s.hatch_steps   5120
  s.height        0.4
  s.weight        8.0
  s.color         :Blue
  s.shape         :HeadBase
  s.habitat       :Sea
  s.category      "Dragon"
  s.pokedex_entry "By cleverly flicking the fins on its back side to side, it moves in any direction while facing forward. It spits ink to escape if it senses danger."
  s.generation    1
  s.evolves_into  :SEADRA, :Level, 32
  s.wild_item_uncommon :DRAGONSCALE
end

GameData::Species.define :SEADRA do |s|
  s.name          "Seadra"
  s.types         :WATER
  s.base_stats    hp: 55, attack: 65, defense: 95, speed: 85, sp_atk: 95, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      154
  s.catch_rate    75
  s.happiness     50
  s.evs           defense: 1, sp_attack: 1
  s.abilities     :POISONPOINT, :SNIPER
  s.hidden_abilities :DAMP
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :LEER
    m.at 1, :SMOKESCREEN
    m.at 1, :TWISTER
    m.at 15, :FOCUSENERGY
    m.at 20, :DRAGONBREATH
    m.at 25, :BUBBLEBEAM
    m.at 30, :AGILITY
    m.at 37, :LASERFOCUS
    m.at 44, :DRAGONPULSE
    m.at 51, :HYDROPUMP
    m.at 58, :DRAGONDANCE
    m.at 65, :RAINDANCE
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BLIZZARD, :BOUNCE, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :DRAGONPULSE, :ENDURE, :FACADE, :FLASHCANNON, :FLIPTURN, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :LASERFOCUS, :LIQUIDATION, :MIMIC, :MUDDYWATER, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCALESHOT, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TWISTER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Dragon
  s.hatch_steps   5120
  s.height        1.2
  s.weight        25.0
  s.color         :Blue
  s.shape         :HeadBase
  s.habitat       :Sea
  s.category      "Dragon"
  s.pokedex_entry "The poisonous barbs all over its body are highly valued as ingredients for making traditional herbal medicine. It shows no mercy to anything approaching its nest."
  s.generation    1
  s.evolves_into  :KINGDRA, :TradeItem, DRAGONSCALE
  s.wild_item_uncommon :DRAGONSCALE
end

GameData::Species.define :GOLDEEN do |s|
  s.name          "Goldeen"
  s.types         :WATER
  s.base_stats    hp: 45, attack: 67, defense: 60, speed: 63, sp_atk: 35, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      64
  s.catch_rate    225
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :SWIFTSWIM, :WATERVEIL
  s.hidden_abilities :LIGHTNINGROD
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :TAILWHIP
    m.at 5, :SUPERSONIC
    m.at 10, :WATERPULSE
    m.at 15, :HORNATTACK
    m.at 20, :AGILITY
    m.at 25, :AQUARING
    m.at 30, :FLAIL
    m.at 35, :WATERFALL
    m.at 40, :SOAK
    m.at 45, :MEGAHORN
    m.at 50, :HORNDRILL
  end
  s.tutor_moves   :AGILITY, :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BOUNCE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :ENDURE, :FACADE, :FLIPTURN, :FRUSTRATION, :FURYCUTTER, :HAIL, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :KNOCKOFF, :MEGAHORN, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCALESHOT, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :THROATCHOP, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :ACUPRESSURE, :AQUATAIL, :BODYSLAM, :HAZE, :HYDROPUMP, :MUDSHOT, :MUDSLAP, :PSYBEAM, :SKULLBASH
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        0.6
  s.weight        15.0
  s.color         :Red
  s.shape         :Finned
  s.habitat       :WatersEdge
  s.category      "Goldfish"
  s.pokedex_entry "In the springtime, schools of Goldeen can be seen swimming up falls and rivers. It metes out staggering damage with its single horn."
  s.generation    1
  s.evolves_into  :SEAKING, :Level, 33
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :MYSTICWATER
end

GameData::Species.define :SEAKING do |s|
  s.name          "Seaking"
  s.types         :WATER
  s.base_stats    hp: 80, attack: 92, defense: 65, speed: 68, sp_atk: 65, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      158
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SWIFTSWIM, :WATERVEIL
  s.hidden_abilities :LIGHTNINGROD
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :TAILWHIP
    m.at 1, :SUPERSONIC
    m.at 1, :WATERPULSE
    m.at 15, :HORNATTACK
    m.at 20, :AGILITY
    m.at 25, :AQUARING
    m.at 30, :FLAIL
    m.at 37, :WATERFALL
    m.at 44, :SOAK
    m.at 51, :MEGAHORN
    m.at 58, :HORNDRILL
  end
  s.tutor_moves   :AGILITY, :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BOUNCE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :ENDURE, :FACADE, :FLIPTURN, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :KNOCKOFF, :MEGAHORN, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCALESHOT, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :THROATCHOP, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        1.3
  s.weight        39.0
  s.color         :Red
  s.shape         :Finned
  s.habitat       :WatersEdge
  s.category      "Goldfish"
  s.pokedex_entry "It punches holes in boulders on stream- beds. This is a clever innovation that prevents its eggs from being attacked or washed away by the current."
  s.generation    1
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :MYSTICWATER
end

GameData::Species.define :STARYU do |s|
  s.name          "Staryu"
  s.types         :WATER
  s.base_stats    hp: 30, attack: 45, defense: 55, speed: 85, sp_atk: 70, sp_def: 55
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      68
  s.catch_rate    225
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :ILLUMINATE, :NATURALCURE
  s.hidden_abilities :ANALYTIC
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 4, :WATERGUN
    m.at 8, :CONFUSERAY
    m.at 12, :RAPIDSPIN
    m.at 16, :MINIMIZE
    m.at 20, :SWIFT
    m.at 24, :PSYBEAM
    m.at 28, :BRINE
    m.at 32, :LIGHTSCREEN
    m.at 36, :POWERGEM
    m.at 40, :PSYCHIC
    m.at 44, :SURF
    m.at 48, :RECOVER
    m.at 52, :COSMICPOWER
    m.at 56, :HYDROPUMP
  end
  s.tutor_moves   :BLIZZARD, :BRINE, :CONFIDE, :COSMICPOWER, :DAZZLINGGLEAM, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FLASH, :FLASHCANNON, :FLIPTURN, :FRUSTRATION, :GRAVITY, :GYROBALL, :HAIL, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NATURALGIFT, :PAINSPLIT, :POWERGEM, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLLOUT, :ROUND, :SCALD, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRIATTACK, :TWISTER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        0.8
  s.weight        34.5
  s.color         :Brown
  s.shape         :HeadBase
  s.habitat       :Sea
  s.category      "Star Shape"
  s.pokedex_entry "It gathers with others in the night and makes its red core glow on and off with the twinkling stars. It can regenerate limbs if they are severed from its body."
  s.generation    1
  s.evolves_into  :STARMIE, :Item, WATERSTONE
  s.wild_item_common   :STARDUST
  s.wild_item_uncommon :STARPIECE
end

GameData::Species.define :STARMIE do |s|
  s.name          "Starmie"
  s.types         :WATER, :PSYCHIC
  s.base_stats    hp: 60, attack: 75, defense: 85, speed: 115, sp_atk: 100, sp_def: 85
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      182
  s.catch_rate    60
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :ILLUMINATE, :NATURALCURE
  s.hidden_abilities :ANALYTIC
  s.moves do |m|
    m.at 1, :RAPIDSPIN
    m.at 1, :MINIMIZE
    m.at 1, :SWIFT
    m.at 1, :PSYBEAM
    m.at 1, :BRINE
    m.at 1, :LIGHTSCREEN
    m.at 1, :POWERGEM
    m.at 1, :PSYCHIC
    m.at 1, :SURF
    m.at 1, :RECOVER
    m.at 1, :COSMICPOWER
    m.at 1, :HYDROPUMP
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :WATERGUN
    m.at 1, :CONFUSERAY
  end
  s.tutor_moves   :AGILITY, :ALLYSWITCH, :AVALANCHE, :BLIZZARD, :BRINE, :CONFIDE, :COSMICPOWER, :DAZZLINGGLEAM, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ENDURE, :EXPANDINGFORCE, :FACADE, :FLASH, :FLASHCANNON, :FLIPTURN, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GYROBALL, :HAIL, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :LIGHTSCREEN, :MAGICCOAT, :METEORBEAM, :MIMIC, :NATURALGIFT, :PAINSPLIT, :POWERGEM, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLLOUT, :ROUND, :SCALD, :SECRETPOWER, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :TWISTER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WONDERROOM, :TERABLAST
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        1.1
  s.weight        80.0
  s.color         :Purple
  s.shape         :HeadBase
  s.habitat       :Sea
  s.category      "Mysterious"
  s.pokedex_entry "People in ancient times imagined that Starmie were transformed from the reflections of stars that twinkled on gentle waves at night."
  s.generation    1
  s.wild_item_common   :STARDUST
  s.wild_item_uncommon :STARPIECE
end

GameData::Species.define :MAGIKARP do |s|
  s.name          "Magikarp"
  s.types         :WATER
  s.base_stats    hp: 20, attack: 10, defense: 55, speed: 80, sp_atk: 15, sp_def: 20
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      40
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :SWIFTSWIM
  s.hidden_abilities :RATTLED
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 15, :TACKLE
    m.at 25, :FLAIL
  end
  s.tutor_moves   :BOUNCE, :HYDROPUMP
  s.egg_groups    :Water2, :Dragon
  s.hatch_steps   1280
  s.height        0.9
  s.weight        10.0
  s.color         :Red
  s.shape         :Finned
  s.habitat       :WatersEdge
  s.category      "Fish"
  s.pokedex_entry "Its swimming muscles are weak, so it is easily washed away by currents. In places where water pools, you can see many Magikarp deposited there by the flow."
  s.generation    1
  s.evolves_into  :GYARADOS, :Level, 20
  s.flags         :HasGenderedSprites
end

GameData::Species.define :GYARADOS do |s|
  s.name          "Gyarados"
  s.types         :WATER, :FLYING
  s.base_stats    hp: 95, attack: 125, defense: 79, speed: 81, sp_atk: 60, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      189
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :INTIMIDATE
  s.hidden_abilities :MOXIE
  s.moves do |m|
    m.at 0, :BITE
    m.at 1, :FLAIL
    m.at 1, :SPLASH
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :TWISTER
    m.at 4, :WHIRLPOOL
    m.at 8, :ICEFANG
    m.at 12, :BRINE
    m.at 16, :SCARYFACE
    m.at 21, :WATERFALL
    m.at 24, :CRUNCH
    m.at 28, :RAINDANCE
    m.at 32, :AQUATAIL
    m.at 36, :DRAGONDANCE
    m.at 40, :HYDROPUMP
    m.at 44, :HURRICANE
    m.at 48, :THRASH
    m.at 52, :HYPERBEAM
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRINE, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DARKPULSE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICYWIND, :INCINERATE, :IRONHEAD, :IRONTAIL, :LASHOUT, :MIMIC, :MUDDYWATER, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POWERWHIP, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SANDSTORM, :SCALD, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :SPITE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TWISTER, :UPROAR, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water2, :Dragon
  s.hatch_steps   1280
  s.height        6.5
  s.weight        235.0
  s.color         :Blue
  s.shape         :Serpentine
  s.habitat       :WatersEdge
  s.category      "Atrocious"
  s.pokedex_entry "It is an extremely vicious and violent Pokémon. When humans begin to fight, it will appear and burn everything to the ground with intensely hot flames."
  s.generation    1
  s.flags         :HasGenderedSprites
end

GameData::Species.define :LAPRAS do |s|
  s.name          "Lapras"
  s.types         :WATER, :ICE
  s.base_stats    hp: 130, attack: 85, defense: 80, speed: 60, sp_atk: 85, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      187
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :WATERABSORB, :SHELLARMOR
  s.hidden_abilities :HYDRATION
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 5, :SING
    m.at 10, :MIST
    m.at 15, :LIFEDEW
    m.at 20, :ICESHARD
    m.at 25, :CONFUSERAY
    m.at 30, :WATERPULSE
    m.at 35, :BRINE
    m.at 40, :BODYSLAM
    m.at 45, :ICEBEAM
    m.at 50, :RAINDANCE
    m.at 55, :HYDROPUMP
    m.at 60, :PERISHSONG
    m.at 65, :SHEERCOLD
  end
  s.tutor_moves   :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BRINE, :BULLDOZE, :CAPTIVATE, :CHARM, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :DRAGONPULSE, :DREAMEATER, :DRILLRUN, :ECHOEDVOICE, :ENDURE, :FACADE, :FROSTBREATH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :HAIL, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONHEAD, :IRONTAIL, :LIQUIDATION, :MEGAHORN, :MIMIC, :NATURALGIFT, :OUTRAGE, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :THUNDER, :THUNDERBOLT, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :CURSE, :DRAGONDANCE, :FISSURE, :FREEZEDRY, :FUTURESIGHT, :HORNDRILL, :SPARKLINGARIA, :TICKLE, :WHIRLPOOL
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   10240
  s.height        2.5
  s.weight        220.0
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Transport"
  s.pokedex_entry "People have driven Lapras almost to the point of extinction. In the evenings, it is said to sing plaintively as it seeks what few others of its kind still remain."
  s.generation    1
  s.wild_item_common   :MYSTICWATER
  s.wild_item_uncommon :MYSTICWATER
  s.wild_item_rare     :MYSTICWATER
end

GameData::Species.define :VAPOREON do |s|
  s.name          "Vaporeon"
  s.types         :WATER
  s.base_stats    hp: 130, attack: 65, defense: 60, speed: 65, sp_atk: 110, sp_def: 95
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      184
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :WATERABSORB
  s.hidden_abilities :HYDRATION
  s.moves do |m|
    m.at 0, :WATERGUN
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
    m.at 20, :HAZE
    m.at 25, :WATERPULSE
    m.at 30, :AURORABEAM
    m.at 35, :AQUARING
    m.at 40, :MUDDYWATER
    m.at 45, :ACIDARMOR
    m.at 50, :HYDROPUMP
    m.at 55, :LASTRESORT
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BATONPASS, :BLIZZARD, :BODYSLAM, :BRINE, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FAKETEARS, :FLIPTURN, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :LIQUIDATION, :MIMIC, :MUDDYWATER, :MUDSLAP, :NATURALGIFT, :PAYDAY, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SCALD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   8960
  s.height        1.0
  s.weight        29.0
  s.color         :Blue
  s.shape         :Quadruped
  s.habitat       :Urban
  s.category      "Bubble Jet"
  s.pokedex_entry "Vaporeon underwent a spontaneous mutation and grew fins and gills that allow them to live underwater. They have the ability to freely control water."
  s.generation    1
end

GameData::Species.define :TOTODILE do |s|
  s.name          "Totodile"
  s.types         :WATER
  s.base_stats    hp: 50, attack: 65, defense: 64, speed: 43, sp_atk: 44, sp_def: 48
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      63
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :TORRENT
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 6, :WATERGUN
    m.at 8, :MUDSLAP
    m.at 13, :BITE
    m.at 15, :SCARYFACE
    m.at 20, :ICEFANG
    m.at 22, :FLAIL
    m.at 27, :CRUNCH
    m.at 29, :LOWKICK
    m.at 34, :SLASH
    m.at 36, :SCREECH
    m.at 41, :THRASH
    m.at 43, :AQUATAIL
    m.at 48, :SUPERPOWER
    m.at 50, :HYDROPUMP
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :BLIZZARD, :BLOCK, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONCLAW, :DYNAMICPUNCH, :ENDURE, :FACADE, :FLING, :FOCUSPUNCH, :FRUSTRATION, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SPITE, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :UPROAR, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :AQUAJET, :BLOCK, :CRUNCH, :DRAGONDANCE, :FAKETEARS, :FLATTER, :HYDROPUMP, :ICEPUNCH, :METALCLAW, :THRASH
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        0.6
  s.weight        9.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Big Jaw"
  s.pokedex_entry "Despite its small body, Totodile's jaws are very powerful. While it may think it is just playfully nipping, its bite has enough strength to cause serious injury."
  s.generation    2
  s.evolves_into  :CROCONAW, :Level, 18
end

GameData::Species.define :CROCONAW do |s|
  s.name          "Croconaw"
  s.types         :WATER
  s.base_stats    hp: 65, attack: 80, defense: 80, speed: 58, sp_atk: 59, sp_def: 63
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1, defense: 1
  s.abilities     :TORRENT
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :WATERGUN
    m.at 6, :WATERGUN
    m.at 8, :MUDSLAP
    m.at 13, :BITE
    m.at 15, :SCARYFACE
    m.at 21, :ICEFANG
    m.at 24, :FLAIL
    m.at 30, :CRUNCH
    m.at 33, :LOWKICK
    m.at 39, :SLASH
    m.at 42, :SCREECH
    m.at 48, :THRASH
    m.at 51, :AQUATAIL
    m.at 57, :SUPERPOWER
    m.at 60, :HYDROPUMP
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :BLIZZARD, :BLOCK, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONCLAW, :DYNAMICPUNCH, :ENDURE, :FACADE, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :UPROAR, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        1.1
  s.weight        25.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Big Jaw"
  s.pokedex_entry "Once its jaws clamp down on its foe, it will absolutely not let go. Because the tips of its fangs are forked back like fishhooks, they become irremovably embedded."
  s.generation    2
  s.evolves_into  :FERALIGATR, :Level, 30
end

GameData::Species.define :FERALIGATR do |s|
  s.name          "Feraligatr"
  s.types         :WATER
  s.base_stats    hp: 85, attack: 105, defense: 100, speed: 78, sp_atk: 79, sp_def: 83
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2, defense: 1
  s.abilities     :TORRENT
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :AGILITY
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :WATERGUN
    m.at 1, :MUDSLAP
    m.at 6, :WATERGUN
    m.at 8, :MUDSLAP
    m.at 13, :BITE
    m.at 15, :SCARYFACE
    m.at 21, :ICEFANG
    m.at 24, :FLAIL
    m.at 32, :CRUNCH
    m.at 37, :LOWKICK
    m.at 45, :SLASH
    m.at 50, :SCREECH
    m.at 58, :THRASH
    m.at 63, :AQUATAIL
    m.at 71, :SUPERPOWER
    m.at 76, :HYDROPUMP
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYDROCANNON, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :LIQUIDATION, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :UPROAR, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        2.3
  s.weight        88.8
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Big Jaw"
  s.pokedex_entry "It opens its huge mouth to intimidate enemies. In battle, it runs using its thick and powerful hind legs to charge the foe with incredible speed."
  s.generation    2
end

GameData::Species.define :CHINCHOU do |s|
  s.name          "Chinchou"
  s.types         :WATER, :ELECTRIC
  s.base_stats    hp: 75, attack: 38, defense: 38, speed: 67, sp_atk: 56, sp_def: 56
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      66
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :VOLTABSORB, :ILLUMINATE
  s.hidden_abilities :WATERABSORB
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :SUPERSONIC
    m.at 4, :ELECTROBALL
    m.at 8, :THUNDERWAVE
    m.at 12, :BUBBLEBEAM
    m.at 16, :CONFUSERAY
    m.at 20, :SPARK
    m.at 24, :CHARGE
    m.at 28, :DISCHARGE
    m.at 32, :AQUARING
    m.at 36, :FLAIL
    m.at 40, :TAKEDOWN
    m.at 44, :HYDROPUMP
  end
  s.tutor_moves   :AGILITY, :AMNESIA, :ATTRACT, :BLIZZARD, :BOUNCE, :BRINE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ELECTROBALL, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :HAIL, :HEALBELL, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUCKERPUNCH, :SURF, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :VOLTSWITCH, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WILDCHARGE, :TERABLAST
  s.egg_moves     :AGILITY, :AMNESIA, :FLAIL, :MIST, :PSYBEAM, :SCREECH, :SOAK, :WATERPULSE, :WHIRLPOOL
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        0.5
  s.weight        12.0
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Angler"
  s.pokedex_entry "When it senses danger, it discharges positive and negative electricity from its two antennae. It lives in depths beyond sunlight's reach."
  s.generation    2
  s.evolves_into  :LANTURN, :Level, 27
  s.wild_item_uncommon :DEEPSEASCALE
end

GameData::Species.define :LANTURN do |s|
  s.name          "Lanturn"
  s.types         :WATER, :ELECTRIC
  s.base_stats    hp: 125, attack: 58, defense: 58, speed: 67, sp_atk: 76, sp_def: 76
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      161
  s.catch_rate    75
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :VOLTABSORB, :ILLUMINATE
  s.hidden_abilities :WATERABSORB
  s.moves do |m|
    m.at 0, :STOCKPILE
    m.at 0, :SWALLOW
    m.at 0, :SPITUP
    m.at 1, :EERIEIMPULSE
    m.at 1, :WATERGUN
    m.at 1, :SUPERSONIC
    m.at 1, :ELECTROBALL
    m.at 1, :THUNDERWAVE
    m.at 12, :BUBBLEBEAM
    m.at 16, :CONFUSERAY
    m.at 20, :SPARK
    m.at 24, :CHARGE
    m.at 30, :DISCHARGE
    m.at 36, :AQUARING
    m.at 42, :FLAIL
    m.at 48, :TAKEDOWN
    m.at 54, :HYDROPUMP
  end
  s.tutor_moves   :AGILITY, :AMNESIA, :AQUATAIL, :ATTRACT, :BLIZZARD, :BOUNCE, :BRINE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EERIEIMPULSE, :ELECTROBALL, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEALBELL, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUCKERPUNCH, :SURF, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :VOLTSWITCH, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        1.2
  s.weight        22.5
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Light"
  s.pokedex_entry "The light-emitting orbs on its back are very bright. They are formed from a part of its dorsal fin. This Pokémon illuminates the inky darkness of deep seas."
  s.generation    2
  s.wild_item_uncommon :DEEPSEASCALE
end

GameData::Species.define :MARILL do |s|
  s.name          "Marill"
  s.types         :WATER, :FAIRY
  s.base_stats    hp: 70, attack: 20, defense: 50, speed: 40, sp_atk: 20, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      88
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :THICKFAT, :HUGEPOWER
  s.hidden_abilities :SAPSIPPER
  s.moves do |m|
    m.at 1, :ROLLOUT
    m.at 1, :DEFENSECURL
    m.at 1, :SPLASH
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 1, :TAILWHIP
    m.at 1, :HELPINGHAND
    m.at 6, :BUBBLEBEAM
    m.at 9, :CHARM
    m.at 12, :SLAM
    m.at 15, :BOUNCE
    m.at 19, :AQUATAIL
    m.at 21, :PLAYROUGH
    m.at 24, :AQUARING
    m.at 27, :RAINDANCE
    m.at 30, :HYDROPUMP
    m.at 33, :DOUBLEEDGE
    m.at 36, :SUPERPOWER
  end
  s.tutor_moves   :AMNESIA, :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRICKBREAK, :BRUTALSWING, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DYNAMICPUNCH, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FUTURESIGHT, :GRASSKNOT, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LIGHTSCREEN, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROLLOUT, :ROUND, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWIFT, :UPROAR, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_moves     :AMNESIA, :AQUAJET, :BELLYDRUM, :BODYSLAM, :COPYCAT, :ENCORE, :FAKETEARS, :FUTURESIGHT, :MUDDYWATER, :PERISHSONG, :PRESENT, :SING, :SLAM, :SOAK, :SUPERPOWER, :SUPERSONIC, :TICKLE
  s.egg_groups    :Water1, :Fairy
  s.hatch_steps   2560
  s.height        0.4
  s.weight        8.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Aqua Mouse"
  s.pokedex_entry "Its body is covered with water-repellent fur. Because of the fur, it can swim through water at high speed without being slowed by the water's resistance."
  s.generation    2
  s.evolves_into  :AZUMARILL, :Level, 18
end

GameData::Species.define :AZUMARILL do |s|
  s.name          "Azumarill"
  s.types         :WATER, :FAIRY
  s.base_stats    hp: 100, attack: 50, defense: 80, speed: 50, sp_atk: 60, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      210
  s.catch_rate    75
  s.happiness     50
  s.evs           hp: 3
  s.abilities     :THICKFAT, :HUGEPOWER
  s.hidden_abilities :SAPSIPPER
  s.moves do |m|
    m.at 1, :ROLLOUT
    m.at 1, :DEFENSECURL
    m.at 1, :SPLASH
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 1, :TAILWHIP
    m.at 1, :HELPINGHAND
    m.at 6, :BUBBLEBEAM
    m.at 9, :CHARM
    m.at 12, :SLAM
    m.at 15, :BOUNCE
    m.at 21, :AQUATAIL
    m.at 25, :PLAYROUGH
    m.at 30, :AQUARING
    m.at 35, :RAINDANCE
    m.at 40, :HYDROPUMP
    m.at 45, :DOUBLEEDGE
    m.at 50, :SUPERPOWER
  end
  s.tutor_moves   :AMNESIA, :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DYNAMICPUNCH, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LIGHTSCREEN, :LIQUIDATION, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROLLOUT, :ROUND, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWIFT, :UPROAR, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Water1, :Fairy
  s.hatch_steps   2560
  s.height        0.8
  s.weight        28.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Aqua Rabbit"
  s.pokedex_entry "It lives in water virtually all day long. Its body color and pattern act as camouflage that makes it tough for enemies to spot in water."
  s.generation    2
end

GameData::Species.define :POLITOED do |s|
  s.name          "Politoed"
  s.types         :WATER
  s.base_stats    hp: 90, attack: 75, defense: 75, speed: 70, sp_atk: 90, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      250
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 3
  s.abilities     :WATERABSORB, :DAMP
  s.hidden_abilities :DRIZZLE
  s.moves do |m|
    m.at 0, :BOUNCE
    m.at 1, :SWAGGER
    m.at 1, :HYPERVOICE
    m.at 1, :PERISHSONG
    m.at 1, :BUBBLEBEAM
    m.at 1, :RAINDANCE
    m.at 1, :BODYSLAM
    m.at 1, :EARTHPOWER
    m.at 1, :HYDROPUMP
    m.at 1, :BELLYDRUM
    m.at 1, :DOUBLEEDGE
    m.at 1, :WATERGUN
    m.at 1, :HYPNOSIS
    m.at 1, :POUND
    m.at 1, :MUDSHOT
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :LIQUIDATION, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :THIEF, :UPROAR, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        1.1
  s.weight        33.9
  s.color         :Green
  s.shape         :Bipedal
  s.habitat       :WatersEdge
  s.category      "Frog"
  s.pokedex_entry "The curled hair on its head proves its status as a king. It is said that the longer and curlier the hair, the more respect it earns from its peers."
  s.generation    2
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :KINGSROCK
end

GameData::Species.define :WOOPER do |s|
  s.name          "Wooper"
  s.types         :WATER, :GROUND
  s.base_stats    hp: 55, attack: 45, defense: 45, speed: 15, sp_atk: 25, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      42
  s.catch_rate    255
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :DAMP, :WATERABSORB
  s.hidden_abilities :UNAWARE
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :TAILWHIP
    m.at 4, :RAINDANCE
    m.at 8, :MUDSHOT
    m.at 12, :MIST
    m.at 12, :HAZE
    m.at 16, :SLAM
    m.at 21, :YAWN
    m.at 24, :AQUATAIL
    m.at 28, :MUDDYWATER
    m.at 32, :AMNESIA
    m.at 36, :TOXIC
    m.at 40, :EARTHQUAKE
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :EERIEIMPULSE, :ENCORE, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GUARDSWAP, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INFESTATION, :IRONTAIL, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALD, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :ACIDSPRAY, :AFTERYOU, :ANCIENTPOWER, :BODYSLAM, :COUNTER, :CURSE, :DOUBLEKICK, :EERIEIMPULSE, :ENCORE, :GUARDSWAP, :POWERUPPUNCH, :RECOVER, :SPITUP, :STOCKPILE, :SWALLOW
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        8.5
  s.color         :Blue
  s.shape         :HeadLegs
  s.habitat       :WatersEdge
  s.category      "Water Fish"
  s.pokedex_entry "Wooper usually live in water but come out onto land seeking food occasionally. On land, they coat their bodies with a gooey, toxic film."
  s.generation    2
  s.evolves_into  :QUAGSIRE, :Level, 20
  s.flags         :HasGenderedSprites
end

GameData::Species.define :QUAGSIRE do |s|
  s.name          "Quagsire"
  s.types         :WATER, :GROUND
  s.base_stats    hp: 95, attack: 85, defense: 85, speed: 35, sp_atk: 65, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      151
  s.catch_rate    90
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :DAMP, :WATERABSORB
  s.hidden_abilities :UNAWARE
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :TAILWHIP
    m.at 1, :RAINDANCE
    m.at 1, :MUDSHOT
    m.at 12, :MIST
    m.at 12, :HAZE
    m.at 16, :SLAM
    m.at 23, :YAWN
    m.at 28, :AQUATAIL
    m.at 34, :MUDDYWATER
    m.at 40, :AMNESIA
    m.at 46, :TOXIC
    m.at 52, :EARTHQUAKE
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :EERIEIMPULSE, :ENCORE, :ENDURE, :FACADE, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GUARDSWAP, :HAIL, :HEADBUTT, :HIDDENPOWER, :HIGHHORSEPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INFESTATION, :IRONTAIL, :LIQUIDATION, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :THIEF, :TOXIC, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        1.4
  s.weight        75.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Water Fish"
  s.pokedex_entry "A Quagsire hunts by leaving its mouth wide open in water and waiting for its prey to blunder in. Because it doesn't move, it does not get very hungry."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :SLOWKING do |s|
  s.name          "Slowking"
  s.types         :WATER, :PSYCHIC
  s.base_stats    hp: 95, attack: 75, defense: 80, speed: 30, sp_atk: 100, sp_def: 110
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      172
  s.catch_rate    70
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :OBLIVIOUS, :OWNTEMPO
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :POWERGEM
    m.at 1, :NASTYPLOT
    m.at 1, :SWAGGER
    m.at 1, :TACKLE
    m.at 1, :CURSE
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 9, :YAWN
    m.at 12, :CONFUSION
    m.at 15, :DISABLE
    m.at 18, :WATERPULSE
    m.at 21, :HEADBUTT
    m.at 24, :ZENHEADBUTT
    m.at 27, :AMNESIA
    m.at 30, :SURF
    m.at 33, :SLACKOFF
    m.at 36, :PSYCHIC
    m.at 39, :PSYCHUP
    m.at 42, :RAINDANCE
    m.at 45, :HEALPULSE
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYSLAM, :BRICKBREAK, :BRINE, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONTAIL, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IMPRISON, :INCINERATE, :IRONDEFENSE, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :LIQUIDATION, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYDAY, :POWERGEM, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :QUASH, :RAINDANCE, :RAZORSHELL, :RECYCLE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        2.0
  s.weight        79.5
  s.color         :Pink
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Royal"
  s.pokedex_entry "It undertakes research every day to solve the mysteries of the world. However, it apparently forgets everything if the Shellder on its head comes off."
  s.generation    2
  s.wild_item_uncommon :KINGSROCK
end

GameData::Species.define :QWILFISH do |s|
  s.name          "Qwilfish"
  s.types         :WATER, :POISON
  s.base_stats    hp: 65, attack: 95, defense: 85, speed: 85, sp_atk: 55, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      88
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :POISONPOINT, :SWIFTSWIM
  s.hidden_abilities :INTIMIDATE
  s.moves do |m|
    m.at 1, :POISONSTING
    m.at 1, :TACKLE
    m.at 4, :HARDEN
    m.at 8, :WATERGUN
    m.at 12, :FELLSTINGER
    m.at 16, :MINIMIZE
    m.at 20, :SPIKES
    m.at 24, :BRINE
    m.at 28, :REVENGE
    m.at 32, :PINMISSILE
    m.at 36, :TOXICSPIKES
    m.at 40, :POISONJAB
    m.at 44, :STOCKPILE
    m.at 44, :SPITUP
    m.at 48, :TAKEDOWN
    m.at 52, :TOXIC
    m.at 56, :AQUATAIL
    m.at 60, :ACUPRESSURE
    m.at 66, :DESTINYBOND
  end
  s.tutor_moves   :AQUATAIL, :ASSURANCE, :ATTRACT, :BLIZZARD, :BOUNCE, :BRINE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FRUSTRATION, :GYROBALL, :HAIL, :HEADBUTT, :HEX, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :LIQUIDATION, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVENGE, :REVERSAL, :ROLLOUT, :ROUND, :SCALD, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SPIKES, :STEELROLLER, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THROATCHOP, :THUNDERWAVE, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :ACIDSPRAY, :AQUAJET, :ASTONISH, :BUBBLEBEAM, :FLAIL, :HAZE, :SUPERSONIC, :WATERPULSE
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        0.5
  s.weight        3.9
  s.color         :Gray
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Balloon"
  s.pokedex_entry "A Qwilfish uses the pressure of water it swallows to shoot toxic quills all at once from all over its body. It finds swimming to be somewhat challenging."
  s.generation    2
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :CORSOLA do |s|
  s.name          "Corsola"
  s.types         :WATER, :ROCK
  s.base_stats    hp: 65, attack: 55, defense: 95, speed: 35, sp_atk: 65, sp_def: 95
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      144
  s.catch_rate    60
  s.happiness     50
  s.evs           defense: 1, sp_defense: 1
  s.abilities     :HUSTLE, :NATURALCURE
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 5, :WATERGUN
    m.at 10, :AQUARING
    m.at 15, :ENDURE
    m.at 20, :ANCIENTPOWER
    m.at 25, :BUBBLEBEAM
    m.at 30, :FLAIL
    m.at 35, :LIFEDEW
    m.at 40, :POWERGEM
    m.at 45, :EARTHPOWER
    m.at 50, :RECOVER
    m.at 55, :MIRRORCOAT
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRINE, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :EXPLOSION, :FACADE, :FRUSTRATION, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :LIGHTSCREEN, :LIQUIDATION, :MAGICCOAT, :METEORBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERGEM, :PROTECT, :PSYCHIC, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALD, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SURF, :SWAGGER, :THROATCHOP, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AMNESIA, :AQUARING, :CONFUSERAY, :CURSE, :HEADSMASH, :ICICLESPEAR, :INGRAIN, :LIQUIDATION, :MIST, :NATUREPOWER, :SCREECH, :WATERPULSE
  s.egg_groups    :Water1, :Water3
  s.hatch_steps   5120
  s.height        0.6
  s.weight        5.0
  s.color         :Pink
  s.shape         :Insectoid
  s.habitat       :Sea
  s.category      "Coral"
  s.pokedex_entry "Corsola live in warm southern seas. If the sea becomes polluted, the beautiful coral stalks become discolored and crumble away in tatters."
  s.generation    2
  s.evolves_into  :CURSOLA, :None
  s.wild_item_uncommon :LUMINOUSMOSS
end

GameData::Species.define :REMORAID do |s|
  s.name          "Remoraid"
  s.types         :WATER
  s.base_stats    hp: 35, attack: 65, defense: 35, speed: 65, sp_atk: 65, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      60
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :HUSTLE, :SNIPER
  s.hidden_abilities :MOODY
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :HELPINGHAND
    m.at 4, :WATERPULSE
    m.at 8, :FOCUSENERGY
    m.at 12, :PSYBEAM
    m.at 16, :AURORABEAM
    m.at 20, :BUBBLEBEAM
    m.at 24, :LOCKON
    m.at 28, :BULLETSEED
    m.at 32, :ICEBEAM
    m.at 36, :HYDROPUMP
    m.at 40, :SOAK
    m.at 44, :HYPERBEAM
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BLIZZARD, :BOUNCE, :BRINE, :BULLETSEED, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DEFENSECURL, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FOCUSENERGY, :FRUSTRATION, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INCINERATE, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROCKBLAST, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SIGNALBEAM, :SLEEPTALK, :SMACKDOWN, :SNORE, :STRINGSHOT, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :THIEF, :THUNDERWAVE, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :ACIDSPRAY, :AURORABEAM, :ENTRAINMENT, :FLAIL, :HAZE, :MUDSHOT, :OCTAZOOKA, :ROCKBLAST, :SCREECH, :SNORE, :SUPERSONIC, :SWIFT, :WATERSPOUT
  s.egg_groups    :Water1, :Water2
  s.hatch_steps   5120
  s.height        0.6
  s.weight        12.0
  s.color         :Gray
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Jet"
  s.pokedex_entry "A Remoraid uses its abdominal muscles to forcefully expel swallowed water, then shoot down flying prey. When evolution approaches, it travels down rivers."
  s.generation    2
  s.evolves_into  :OCTILLERY, :Level, 25
end

GameData::Species.define :OCTILLERY do |s|
  s.name          "Octillery"
  s.types         :WATER
  s.base_stats    hp: 75, attack: 105, defense: 75, speed: 45, sp_atk: 105, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 1, sp_attack: 1
  s.abilities     :SUCTIONCUPS, :SNIPER
  s.hidden_abilities :MOODY
  s.moves do |m|
    m.at 0, :OCTAZOOKA
    m.at 1, :GUNKSHOT
    m.at 1, :ROCKBLAST
    m.at 1, :HELPINGHAND
    m.at 1, :WATERGUN
    m.at 1, :WRAP
    m.at 1, :WATERPULSE
    m.at 1, :FOCUSENERGY
    m.at 12, :PSYBEAM
    m.at 16, :AURORABEAM
    m.at 20, :BUBBLEBEAM
    m.at 24, :LOCKON
    m.at 30, :BULLETSEED
    m.at 36, :ICEBEAM
    m.at 42, :HYDROPUMP
    m.at 48, :SOAK
    m.at 54, :HYPERBEAM
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BIND, :BLIZZARD, :BOUNCE, :BRINE, :BULLETSEED, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DEFENSECURL, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASHCANNON, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INCINERATE, :LIQUIDATION, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROCKBLAST, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNORE, :STRINGSHOT, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :THIEF, :THUNDERWAVE, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Water2
  s.hatch_steps   5120
  s.height        0.9
  s.weight        28.5
  s.color         :Red
  s.shape         :Multiped
  s.habitat       :Sea
  s.category      "Jet"
  s.pokedex_entry "It ensnares its foe with its suction- cupped tentacles before delivering the finishing blow. If the foe turns out to be too strong, it spews ink to escape."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :MANTINE do |s|
  s.name          "Mantine"
  s.types         :WATER, :FLYING
  s.base_stats    hp: 85, attack: 40, defense: 70, speed: 70, sp_atk: 80, sp_def: 140
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      170
  s.catch_rate    25
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :SWIFTSWIM, :WATERABSORB
  s.hidden_abilities :WATERVEIL
  s.moves do |m|
    m.at 1, :PSYBEAM
    m.at 1, :BULLETSEED
    m.at 1, :ROOST
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 1, :SUPERSONIC
    m.at 1, :WINGATTACK
    m.at 12, :WATERPULSE
    m.at 16, :WIDEGUARD
    m.at 20, :AGILITY
    m.at 24, :BUBBLEBEAM
    m.at 28, :HEADBUTT
    m.at 32, :AIRSLASH
    m.at 36, :AQUARING
    m.at 40, :BOUNCE
    m.at 44, :TAKEDOWN
    m.at 48, :HYDROPUMP
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :AMNESIA, :AQUATAIL, :ASSURANCE, :ATTRACT, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BOUNCE, :BRINE, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DEFOG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONHEAD, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROOST, :ROUND, :SCALD, :SECRETPOWER, :SEEDBOMB, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STRINGSHOT, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TAILWIND, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AMNESIA, :CONFUSERAY, :HAZE, :HYDROPUMP, :MIRRORCOAT, :SLAM, :SPLASH, :TAILWIND, :TWISTER, :WIDEGUARD
  s.egg_groups    :Water1
  s.hatch_steps   6400
  s.height        2.1
  s.weight        220.0
  s.color         :Purple
  s.shape         :Winged
  s.habitat       :Sea
  s.category      "Kite"
  s.pokedex_entry "On sunny days, schools of Mantine can be seen elegantly leaping over the waves. It is not bothered by the Remoraid that hitches rides."
  s.generation    2
end

GameData::Species.define :KINGDRA do |s|
  s.name          "Kingdra"
  s.types         :WATER, :DRAGON
  s.base_stats    hp: 75, attack: 95, defense: 95, speed: 85, sp_atk: 95, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      270
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1, sp_attack: 1, sp_defense: 1
  s.abilities     :SWIFTSWIM, :SNIPER
  s.hidden_abilities :DAMP
  s.moves do |m|
    m.at 1, :WHIRLPOOL
    m.at 1, :YAWN
    m.at 1, :WATERGUN
    m.at 1, :LEER
    m.at 1, :SMOKESCREEN
    m.at 1, :TWISTER
    m.at 15, :FOCUSENERGY
    m.at 20, :DRAGONBREATH
    m.at 25, :BUBBLEBEAM
    m.at 30, :AGILITY
    m.at 37, :LASERFOCUS
    m.at 44, :DRAGONPULSE
    m.at 51, :HYDROPUMP
    m.at 58, :DRAGONDANCE
    m.at 65, :RAINDANCE
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BLIZZARD, :BODYSLAM, :BOUNCE, :BREAKINGSWIPE, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONDANCE, :DRAGONPULSE, :ENDURE, :FACADE, :FLASHCANNON, :FLIPTURN, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONHEAD, :LASERFOCUS, :LIQUIDATION, :MIMIC, :MUDDYWATER, :NATURALGIFT, :OUTRAGE, :PROTECT, :QUASH, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCALESHOT, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TWISTER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Dragon
  s.hatch_steps   5120
  s.height        1.8
  s.weight        152.0
  s.color         :Blue
  s.shape         :HeadBase
  s.habitat       :Sea
  s.category      "Dragon"
  s.pokedex_entry "It sleeps quietly, deep on the seafloor. When it comes up to the surface, it creates a huge whirlpool that can swallow even ships."
  s.generation    2
  s.wild_item_uncommon :DRAGONSCALE
end

GameData::Species.define :SUICUNE do |s|
  s.name          "Suicune"
  s.types         :WATER
  s.base_stats    hp: 100, attack: 75, defense: 115, speed: 85, sp_atk: 90, sp_def: 115
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           defense: 1, sp_defense: 2
  s.abilities     :PRESSURE
  s.hidden_abilities :INNERFOCUS
  s.moves do |m|
    m.at 1, :SHEERCOLD
    m.at 1, :EXTREMESPEED
    m.at 1, :WATERGUN
    m.at 1, :LEER
    m.at 1, :GUST
    m.at 1, :MIST
    m.at 6, :WATERPULSE
    m.at 12, :BITE
    m.at 18, :CALMMIND
    m.at 24, :ROAR
    m.at 30, :ICEFANG
    m.at 36, :TAILWIND
    m.at 42, :CRUNCH
    m.at 48, :EXTRASENSORY
    m.at 54, :SURF
    m.at 60, :MIRRORCOAT
    m.at 66, :RAINDANCE
    m.at 72, :HYDROPUMP
    m.at 78, :BLIZZARD
  end
  s.tutor_moves   :AGILITY, :AIRSLASH, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRINE, :BULLDOZE, :CALMMIND, :CONFIDE, :CRUNCH, :CUT, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICYWIND, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :PSYCHUP, :QUASH, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SANDSTORM, :SCALD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SLEEPTALK, :SNARL, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :TAILWIND, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        2.0
  s.weight        187.0
  s.color         :Blue
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Aurora"
  s.pokedex_entry "Suicune embodies the compassion of a pure spring of water. It runs across the land with gliding elegance. It has the power to purify dirty water."
  s.generation    2
  s.flags         :Legendary
end

GameData::Species.define :MUDKIP do |s|
  s.name          "Mudkip"
  s.types         :WATER
  s.base_stats    hp: 50, attack: 70, defense: 50, speed: 40, sp_atk: 50, sp_def: 50
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :TORRENT
  s.hidden_abilities :DAMP
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 3, :WATERGUN
    m.at 6, :ROCKSMASH
    m.at 9, :ROCKTHROW
    m.at 12, :PROTECT
    m.at 15, :SUPERSONIC
    m.at 18, :WATERPULSE
    m.at 21, :ROCKSLIDE
    m.at 24, :TAKEDOWN
    m.at 27, :AMNESIA
    m.at 30, :SURF
    m.at 33, :SCREECH
    m.at 36, :ENDEAVOR
    m.at 39, :HYDROPUMP
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :IRONTAIL, :LOWKICK, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SLUDGEWAVE, :SNORE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :UPROAR, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :BITE, :COUNTER, :CURSE, :DOUBLEEDGE, :MIRRORCOAT, :MUDSLAP, :SLUDGE, :STOMP, :UPROAR, :WHIRLPOOL, :WIDEGUARD, :YAWN
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        0.4
  s.weight        7.6
  s.color         :Blue
  s.shape         :Quadruped
  s.habitat       :WatersEdge
  s.category      "Mud Fish"
  s.pokedex_entry "On land, it can powerfully lift large boulders by planting its four feet and heaving. It sleeps by burying itself in soil at the water's edge."
  s.generation    3
  s.evolves_into  :MARSHTOMP, :Level, 16
end

GameData::Species.define :MARSHTOMP do |s|
  s.name          "Marshtomp"
  s.types         :WATER, :GROUND
  s.base_stats    hp: 70, attack: 85, defense: 70, speed: 50, sp_atk: 60, sp_def: 70
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :TORRENT
  s.hidden_abilities :DAMP
  s.moves do |m|
    m.at 0, :MUDSHOT
    m.at 1, :EARTHQUAKE
    m.at 1, :SURF
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 1, :ROCKSMASH
    m.at 9, :ROCKTHROW
    m.at 12, :PROTECT
    m.at 15, :SUPERSONIC
    m.at 20, :WATERPULSE
    m.at 25, :ROCKSLIDE
    m.at 30, :TAKEDOWN
    m.at 35, :AMNESIA
    m.at 40, :MUDDYWATER
    m.at 45, :SCREECH
    m.at 50, :ENDEAVOR
    m.at 55, :HYDROPUMP
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDTOMB, :SCALD, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SLUDGEWAVE, :SNORE, :STEALTHROCK, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :UPROAR, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        0.7
  s.weight        28.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Mud Fish"
  s.pokedex_entry "Its toughened hind legs enable it to stand upright. Because it weakens if its skin dries out, it replenishes fluids by playing in mud."
  s.generation    3
  s.evolves_into  :SWAMPERT, :Level, 36
end

GameData::Species.define :SWAMPERT do |s|
  s.name          "Swampert"
  s.types         :WATER, :GROUND
  s.base_stats    hp: 100, attack: 110, defense: 90, speed: 60, sp_atk: 85, sp_def: 90
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      268
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :TORRENT
  s.hidden_abilities :DAMP
  s.moves do |m|
    m.at 1, :MUDSHOT
    m.at 1, :HAMMERARM
    m.at 1, :EARTHQUAKE
    m.at 1, :SURF
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 1, :ROCKSMASH
    m.at 9, :ROCKTHROW
    m.at 12, :PROTECT
    m.at 15, :SUPERSONIC
    m.at 20, :WATERPULSE
    m.at 25, :ROCKSLIDE
    m.at 30, :TAKEDOWN
    m.at 35, :AMNESIA
    m.at 42, :MUDDYWATER
    m.at 49, :SCREECH
    m.at 56, :ENDEAVOR
    m.at 63, :HYDROPUMP
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DARKESTLARIAT, :DEFENSECURL, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FLIPTURN, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HIGHHORSEPOWER, :HYDROCANNON, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :LIQUIDATION, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDTOMB, :SCALD, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SLUDGEWAVE, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :UPROAR, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        1.5
  s.weight        81.9
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Mud Fish"
  s.pokedex_entry "If it senses the approach of a storm and a tidal wave, it protects its seaside nest by piling up boulders. It swims as fast as a jet ski."
  s.generation    3
end

GameData::Species.define :LOTAD do |s|
  s.name          "Lotad"
  s.types         :WATER, :GRASS
  s.base_stats    hp: 40, attack: 30, defense: 30, speed: 30, sp_atk: 40, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      44
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :SWIFTSWIM, :RAINDISH
  s.hidden_abilities :OWNTEMPO
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :GROWL
    m.at 3, :ABSORB
    m.at 6, :WATERGUN
    m.at 9, :MIST
    m.at 12, :MEGADRAIN
    m.at 16, :FLAIL
    m.at 20, :BUBBLEBEAM
    m.at 24, :NATUREPOWER
    m.at 28, :GIGADRAIN
    m.at 33, :RAINDANCE
    m.at 38, :ZENHEADBUTT
    m.at 43, :ENERGYBALL
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :HAIL, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THIEF, :UPROAR, :WATERPULSE, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :COUNTER, :FLAIL, :LEECHSEED, :RAZORLEAF, :SWEETSCENT, :SYNTHESIS, :TEETERDANCE, :TICKLE, :WATERGUN
  s.egg_groups    :Water1, :Grass
  s.hatch_steps   3840
  s.height        0.5
  s.weight        2.6
  s.color         :Green
  s.shape         :Insectoid
  s.habitat       :WatersEdge
  s.category      "Water Weed"
  s.pokedex_entry "This Pokémon lives in ponds with clean water. It is known to ferry small Pokémon across ponds by carrying them on the broad leaf on its head."
  s.generation    3
  s.evolves_into  :LOMBRE, :Level, 14
  s.wild_item_uncommon :MENTALHERB
end

GameData::Species.define :LOMBRE do |s|
  s.name          "Lombre"
  s.types         :WATER, :GRASS
  s.base_stats    hp: 60, attack: 50, defense: 50, speed: 50, sp_atk: 60, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      119
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :SWIFTSWIM, :RAINDISH
  s.hidden_abilities :OWNTEMPO
  s.moves do |m|
    m.at 1, :TEETERDANCE
    m.at 1, :FAKEOUT
    m.at 1, :KNOCKOFF
    m.at 1, :FLAIL
    m.at 1, :ASTONISH
    m.at 1, :GROWL
    m.at 1, :ABSORB
    m.at 1, :WATERGUN
    m.at 9, :MIST
    m.at 12, :MEGADRAIN
    m.at 18, :FURYSWIPES
    m.at 24, :BUBBLEBEAM
    m.at 30, :NATUREPOWER
    m.at 36, :GIGADRAIN
    m.at 43, :RAINDANCE
    m.at 50, :ZENHEADBUTT
    m.at 57, :ENERGYBALL
    m.at 64, :HYDROPUMP
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :ECHOEDVOICE, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYDROPUMP, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :KNOCKOFF, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SCALD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THIEF, :THUNDERPUNCH, :UPROAR, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Water1, :Grass
  s.hatch_steps   3840
  s.height        1.2
  s.weight        32.5
  s.color         :Green
  s.shape         :Bipedal
  s.habitat       :WatersEdge
  s.category      "Jolly"
  s.pokedex_entry "In the evening, it takes great delight in popping out of rivers and startling people. It feeds on aquatic moss that grows on rocks in the riverbed."
  s.generation    3
  s.evolves_into  :LUDICOLO, :Item, WATERSTONE
  s.wild_item_uncommon :MENTALHERB
end

GameData::Species.define :LUDICOLO do |s|
  s.name          "Ludicolo"
  s.types         :WATER, :GRASS
  s.base_stats    hp: 80, attack: 70, defense: 70, speed: 70, sp_atk: 90, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      240
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 3
  s.abilities     :SWIFTSWIM, :RAINDISH
  s.hidden_abilities :OWNTEMPO
  s.moves do |m|
    m.at 1, :TEETERDANCE
    m.at 1, :FAKEOUT
    m.at 1, :KNOCKOFF
    m.at 1, :FLAIL
    m.at 1, :MIST
    m.at 1, :MEGADRAIN
    m.at 1, :FURYSWIPES
    m.at 1, :BUBBLEBEAM
    m.at 1, :NATUREPOWER
    m.at 1, :GIGADRAIN
    m.at 1, :RAINDANCE
    m.at 1, :ZENHEADBUTT
    m.at 1, :ENERGYBALL
    m.at 1, :HYDROPUMP
    m.at 1, :ASTONISH
    m.at 1, :GROWL
    m.at 1, :ABSORB
    m.at 1, :WATERGUN
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :ECHOEDVOICE, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :KNOCKOFF, :LEAFSTORM, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SCALD, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THIEF, :THUNDERPUNCH, :UPROAR, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Water1, :Grass
  s.hatch_steps   3840
  s.height        1.5
  s.weight        55.0
  s.color         :Green
  s.shape         :Bipedal
  s.habitat       :WatersEdge
  s.category      "Carefree"
  s.pokedex_entry "When it hears festive music, all the cells in its body become stimulated, and it begins moving in rhythm. It does not quail even when it faces a tough opponent."
  s.generation    3
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :MENTALHERB
end

GameData::Species.define :WINGULL do |s|
  s.name          "Wingull"
  s.types         :WATER, :FLYING
  s.base_stats    hp: 40, attack: 30, defense: 30, speed: 85, sp_atk: 55, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      54
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :KEENEYE, :HYDRATION
  s.hidden_abilities :RAINDISH
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 5, :QUICKATTACK
    m.at 10, :SUPERSONIC
    m.at 15, :WINGATTACK
    m.at 20, :WATERPULSE
    m.at 26, :AGILITY
    m.at 30, :AIRSLASH
    m.at 35, :MIST
    m.at 40, :ROOST
    m.at 45, :HURRICANE
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :ATTRACT, :BLIZZARD, :BRINE, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HAIL, :HIDDENPOWER, :HURRICANE, :ICEBEAM, :ICYWIND, :KNOCKOFF, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SCALD, :SECRETPOWER, :SHOCKWAVE, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :UTURN, :WATERPULSE, :TERABLAST
  s.egg_moves     :AERIALACE, :AGILITY, :AIRCUTTER, :AQUARING, :GUST, :KNOCKOFF, :MIST, :SOAK, :TWISTER, :WIDEGUARD
  s.egg_groups    :Water1, :Flying
  s.hatch_steps   5120
  s.height        0.6
  s.weight        9.5
  s.color         :White
  s.shape         :Winged
  s.habitat       :Sea
  s.category      "Seagull"
  s.pokedex_entry "It makes its nest on a sheer cliff at the edge of the sea. It has trouble keeping its wings flapping in flight. Instead, it soars on updrafts."
  s.generation    3
  s.evolves_into  :PELIPPER, :Level, 25
  s.wild_item_common   :PRETTYFEATHER
end

GameData::Species.define :PELIPPER do |s|
  s.name          "Pelipper"
  s.types         :WATER, :FLYING
  s.base_stats    hp: 60, attack: 50, defense: 100, speed: 65, sp_atk: 95, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      154
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :KEENEYE, :DRIZZLE
  s.hidden_abilities :RAINDISH
  s.moves do |m|
    m.at 1, :PROTECT
    m.at 1, :SOAK
    m.at 1, :QUICKATTACK
    m.at 1, :AGILITY
    m.at 1, :AIRSLASH
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 1, :TAILWIND
    m.at 1, :SUPERSONIC
    m.at 15, :WINGATTACK
    m.at 20, :WATERPULSE
    m.at 28, :STOCKPILE
    m.at 28, :SWALLOW
    m.at 28, :SPITUP
    m.at 34, :FLING
    m.at 41, :MIST
    m.at 48, :ROOST
    m.at 55, :HURRICANE
    m.at 62, :HYDROPUMP
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :ATTRACT, :BLIZZARD, :BRAVEBIRD, :BRINE, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FLY, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HAIL, :HIDDENPOWER, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :KNOCKOFF, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PAYBACK, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SCALD, :SECRETPOWER, :SEEDBOMB, :SHOCKWAVE, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :UTURN, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Flying
  s.hatch_steps   5120
  s.height        1.2
  s.weight        28.0
  s.color         :Yellow
  s.shape         :Winged
  s.habitat       :Sea
  s.category      "Water Bird"
  s.pokedex_entry "It skims the tops of waves as it flies. When it spots prey, it uses its large beak to scoop up the victim with water. It protects its eggs in its beak."
  s.generation    3
  s.wild_item_common   :PRETTYFEATHER
end

GameData::Species.define :CARVANHA do |s|
  s.name          "Carvanha"
  s.types         :WATER, :DARK
  s.base_stats    hp: 45, attack: 90, defense: 20, speed: 65, sp_atk: 65, sp_def: 20
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      61
  s.catch_rate    225
  s.happiness     35
  s.evs           attack: 1
  s.abilities     :ROUGHSKIN
  s.hidden_abilities :SPEEDBOOST
  s.moves do |m|
    m.at 1, :AQUAJET
    m.at 1, :LEER
    m.at 4, :POISONFANG
    m.at 8, :FOCUSENERGY
    m.at 12, :SCARYFACE
    m.at 16, :BITE
    m.at 20, :ICEFANG
    m.at 24, :SCREECH
    m.at 28, :SWAGGER
    m.at 32, :CRUNCH
    m.at 36, :AGILITY
    m.at 40, :LIQUIDATION
    m.at 44, :TAKEDOWN
  end
  s.tutor_moves   :AGILITY, :ANCIENTPOWER, :ASSURANCE, :ATTRACT, :BLIZZARD, :BOUNCE, :BRINE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DARKPULSE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FLIPTURN, :FOCUSENERGY, :FRUSTRATION, :FURYCUTTER, :HAIL, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICEFANG, :ICYWIND, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SCALD, :SCALESHOT, :SCARYFACE, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :SPITE, :SUBSTITUTE, :SUPERFANG, :SURF, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :TORMENT, :UPROAR, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :DESTINYBOND, :DOUBLEEDGE, :HYDROPUMP, :SWIFT, :THRASH, :WATERPULSE
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        0.8
  s.weight        20.8
  s.color         :Red
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Savage"
  s.pokedex_entry "Carvanha attack ships in swarms, making them sink. Although it is said to be a very vicious Pokémon, it timidly flees as soon as it finds itself alone."
  s.generation    3
  s.evolves_into  :SHARPEDO, :Level, 30
  s.wild_item_uncommon :DEEPSEATOOTH
end

GameData::Species.define :SHARPEDO do |s|
  s.name          "Sharpedo"
  s.types         :WATER, :DARK
  s.base_stats    hp: 70, attack: 120, defense: 40, speed: 95, sp_atk: 95, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      161
  s.catch_rate    60
  s.happiness     35
  s.evs           attack: 2
  s.abilities     :ROUGHSKIN
  s.hidden_abilities :SPEEDBOOST
  s.moves do |m|
    m.at 0, :SLASH
    m.at 1, :NIGHTSLASH
    m.at 1, :AQUAJET
    m.at 1, :LEER
    m.at 1, :POISONFANG
    m.at 1, :FOCUSENERGY
    m.at 12, :SCARYFACE
    m.at 16, :BITE
    m.at 20, :ICEFANG
    m.at 24, :SCREECH
    m.at 28, :SWAGGER
    m.at 34, :CRUNCH
    m.at 40, :AGILITY
    m.at 46, :LIQUIDATION
    m.at 52, :TAKEDOWN
  end
  s.tutor_moves   :AGILITY, :ANCIENTPOWER, :ASSURANCE, :ATTRACT, :AVALANCHE, :BLIZZARD, :BOUNCE, :BRINE, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CRUNCH, :DARKPULSE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FLIPTURN, :FOCUSENERGY, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICYWIND, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SCALESHOT, :SCARYFACE, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUPERFANG, :SURF, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :TORMENT, :UPROAR, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        1.8
  s.weight        88.8
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Brutal"
  s.pokedex_entry "The vicious and sly gangster of the sea. Its skin is specially textured to minimize drag in water. Its speed tops out at over 75 miles per hour."
  s.generation    3
  s.wild_item_uncommon :DEEPSEATOOTH
end

GameData::Species.define :WAILMER do |s|
  s.name          "Wailmer"
  s.types         :WATER
  s.base_stats    hp: 130, attack: 70, defense: 35, speed: 60, sp_atk: 70, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fluctuating
  s.base_exp      80
  s.catch_rate    125
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :WATERVEIL, :OBLIVIOUS
  s.hidden_abilities :PRESSURE
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 3, :GROWL
    m.at 6, :ASTONISH
    m.at 12, :WATERGUN
    m.at 15, :MIST
    m.at 18, :WATERPULSE
    m.at 21, :HEAVYSLAM
    m.at 24, :BRINE
    m.at 27, :WHIRLPOOL
    m.at 30, :DIVE
    m.at 33, :BOUNCE
    m.at 36, :BODYSLAM
    m.at 39, :REST
    m.at 42, :AMNESIA
    m.at 45, :HYDROPUMP
    m.at 48, :WATERSPOUT
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BOUNCE, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HYDROPUMP, :HYPERVOICE, :ICEBEAM, :ICYWIND, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SCALD, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AQUARING, :BODYSLAM, :CLEARSMOG, :CURSE, :DEFENSECURL, :DOUBLEEDGE, :FISSURE, :ROLLOUT, :SNORE, :SOAK, :THRASH, :TICKLE, :ZENHEADBUTT
  s.egg_groups    :Field, :Water2
  s.hatch_steps   10240
  s.height        2.0
  s.weight        130.0
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Ball Whale"
  s.pokedex_entry "While this Pokémon usually lives in the sea, it can survive on land, although not too long. It loses vitality if its body becomes dried out."
  s.generation    3
  s.evolves_into  :WAILORD, :Level, 40
end

GameData::Species.define :WAILORD do |s|
  s.name          "Wailord"
  s.types         :WATER
  s.base_stats    hp: 170, attack: 90, defense: 45, speed: 60, sp_atk: 90, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fluctuating
  s.base_exp      175
  s.catch_rate    60
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :WATERVEIL, :OBLIVIOUS
  s.hidden_abilities :PRESSURE
  s.moves do |m|
    m.at 1, :SOAK
    m.at 1, :NOBLEROAR
    m.at 1, :SPLASH
    m.at 1, :GROWL
    m.at 1, :ASTONISH
    m.at 1, :WATERGUN
    m.at 15, :MIST
    m.at 18, :WATERPULSE
    m.at 21, :HEAVYSLAM
    m.at 24, :BRINE
    m.at 27, :WHIRLPOOL
    m.at 30, :DIVE
    m.at 33, :BOUNCE
    m.at 36, :BODYSLAM
    m.at 39, :REST
    m.at 44, :AMNESIA
    m.at 49, :HYDROPUMP
    m.at 54, :WATERSPOUT
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BOUNCE, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONHEAD, :LIQUIDATION, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SCALD, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field, :Water2
  s.hatch_steps   10240
  s.height        14.5
  s.weight        398.0
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Float Whale"
  s.pokedex_entry "It breathes through nostrils that it raises above the sea. By inhaling to its maximum capacity, a Wailord can dive close to 10,000 feet beneath the waves."
  s.generation    3
end

GameData::Species.define :BARBOACH do |s|
  s.name          "Barboach"
  s.types         :WATER, :GROUND
  s.base_stats    hp: 50, attack: 48, defense: 43, speed: 60, sp_atk: 46, sp_def: 41
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      58
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :OBLIVIOUS, :ANTICIPATION
  s.hidden_abilities :HYDRATION
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :WATERGUN
    m.at 6, :REST
    m.at 6, :SNORE
    m.at 12, :WATERPULSE
    m.at 18, :AMNESIA
    m.at 24, :AQUATAIL
    m.at 31, :MUDDYWATER
    m.at 36, :EARTHQUAKE
    m.at 42, :FUTURESIGHT
    m.at 48, :FISSURE
  end
  s.tutor_moves   :AMNESIA, :AQUATAIL, :ATTRACT, :BLIZZARD, :BOUNCE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :FUTURESIGHT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKTOMB, :ROUND, :SANDSTORM, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :DRAGONDANCE, :EARTHPOWER, :FLAIL, :HYDROPUMP, :MUDDYWATER, :MUDSHOT, :SPARK, :TAKEDOWN, :THRASH, :WHIRLPOOL
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        0.4
  s.weight        1.9
  s.color         :Gray
  s.shape         :Finned
  s.habitat       :WatersEdge
  s.category      "Whiskers"
  s.pokedex_entry "Its body is covered with a slimy film. The film acts as a barrier to prevent germs in muddy water from entering the Barboach's body."
  s.generation    3
  s.evolves_into  :WHISCASH, :Level, 30
end

GameData::Species.define :WHISCASH do |s|
  s.name          "Whiscash"
  s.types         :WATER, :GROUND
  s.base_stats    hp: 110, attack: 78, defense: 73, speed: 60, sp_atk: 76, sp_def: 71
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      164
  s.catch_rate    75
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :OBLIVIOUS, :ANTICIPATION
  s.hidden_abilities :HYDRATION
  s.moves do |m|
    m.at 0, :THRASH
    m.at 1, :BELCH
    m.at 1, :ZENHEADBUTT
    m.at 1, :TICKLE
    m.at 1, :MUDSLAP
    m.at 1, :WATERGUN
    m.at 1, :REST
    m.at 1, :SNORE
    m.at 12, :WATERPULSE
    m.at 18, :AMNESIA
    m.at 24, :AQUATAIL
    m.at 33, :MUDDYWATER
    m.at 40, :EARTHQUAKE
    m.at 48, :FUTURESIGHT
    m.at 56, :FISSURE
  end
  s.tutor_moves   :AMNESIA, :AQUATAIL, :ATTRACT, :BLIZZARD, :BOUNCE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :LIQUIDATION, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :UPROAR, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        0.9
  s.weight        23.6
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :WatersEdge
  s.category      "Whiskers"
  s.pokedex_entry "Mysteriously, it can foretell earthquakes. In the daytime, it sleeps in mud at the bottom of a pond. When it awakens, it continually feeds throughout the night."
  s.generation    3
end

GameData::Species.define :CORPHISH do |s|
  s.name          "Corphish"
  s.types         :WATER
  s.base_stats    hp: 43, attack: 80, defense: 65, speed: 35, sp_atk: 50, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fluctuating
  s.base_exp      62
  s.catch_rate    205
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :HYPERCUTTER, :SHELLARMOR
  s.hidden_abilities :ADAPTABILITY
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :HARDEN
    m.at 4, :LEER
    m.at 8, :TAUNT
    m.at 12, :BUBBLEBEAM
    m.at 16, :KNOCKOFF
    m.at 20, :DOUBLEHIT
    m.at 24, :PROTECT
    m.at 28, :NIGHTSLASH
    m.at 32, :RAZORSHELL
    m.at 36, :SWORDSDANCE
    m.at 40, :CRUNCH
    m.at 44, :CRABHAMMER
    m.at 48, :ENDEAVOR
    m.at 52, :GUILLOTINE
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FRUSTRATION, :FURYCUTTER, :HAIL, :HIDDENPOWER, :HONECLAWS, :HYDROPUMP, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :KNOCKOFF, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :TAUNT, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :XSCISSOR, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :AQUAJET, :BODYSLAM, :DOUBLEEDGE, :DRAGONDANCE, :ENDEAVOR, :KNOCKOFF, :METALCLAW, :SLASH, :SUPERPOWER, :SWITCHEROO
  s.egg_groups    :Water1, :Water3
  s.hatch_steps   3840
  s.height        0.6
  s.weight        11.5
  s.color         :Red
  s.shape         :Insectoid
  s.habitat       :WatersEdge
  s.category      "Ruffian"
  s.pokedex_entry "Once it grips prey with its large pincers, it will never let go, no matter what. It is a hardy Pokémon that can thrive in any environment."
  s.generation    3
  s.evolves_into  :CRAWDAUNT, :Level, 30
end

GameData::Species.define :CRAWDAUNT do |s|
  s.name          "Crawdaunt"
  s.types         :WATER, :DARK
  s.base_stats    hp: 63, attack: 120, defense: 85, speed: 55, sp_atk: 90, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fluctuating
  s.base_exp      164
  s.catch_rate    155
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :HYPERCUTTER, :SHELLARMOR
  s.hidden_abilities :ADAPTABILITY
  s.moves do |m|
    m.at 0, :SWIFT
    m.at 1, :WATERGUN
    m.at 1, :HARDEN
    m.at 1, :LEER
    m.at 1, :TAUNT
    m.at 12, :BUBBLEBEAM
    m.at 16, :KNOCKOFF
    m.at 20, :DOUBLEHIT
    m.at 24, :PROTECT
    m.at 28, :NIGHTSLASH
    m.at 34, :RAZORSHELL
    m.at 40, :SWORDSDANCE
    m.at 46, :CRUNCH
    m.at 52, :CRABHAMMER
    m.at 58, :ENDEAVOR
    m.at 64, :GUILLOTINE
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DARKPULSE, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HONECLAWS, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :KNOCKOFF, :LASHOUT, :LIQUIDATION, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PROTECT, :RAINDANCE, :RAZORSHELL, :REST, :RETALIATE, :RETURN, :REVENGE, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNARL, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :XSCISSOR, :TERABLAST
  s.egg_groups    :Water1, :Water3
  s.hatch_steps   3840
  s.height        1.1
  s.weight        32.8
  s.color         :Red
  s.shape         :Insectoid
  s.habitat       :WatersEdge
  s.category      "Rogue"
  s.pokedex_entry "A brutish Pokémon that loves to battle. A veteran Crawdaunt that has prevailed in hundreds of battles has giant pincers marked with countless scars."
  s.generation    3
end

GameData::Species.define :FEEBAS do |s|
  s.name          "Feebas"
  s.types         :WATER
  s.base_stats    hp: 20, attack: 15, defense: 20, speed: 80, sp_atk: 10, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      40
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :SWIFTSWIM, :OBLIVIOUS
  s.hidden_abilities :ADAPTABILITY
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 15, :TACKLE
    m.at 25, :FLAIL
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :IRONTAIL, :LIGHTSCREEN, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCALESHOT, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :CONFUSERAY, :DRAGONBREATH, :HAZE, :HYPNOSIS, :MIRRORCOAT, :MIST, :TICKLE
  s.egg_groups    :Water1, :Dragon
  s.hatch_steps   5120
  s.height        0.6
  s.weight        7.4
  s.color         :Brown
  s.shape         :Finned
  s.habitat       :WatersEdge
  s.category      "Fish"
  s.pokedex_entry "Feebas live in ponds that are heavily infested with weeds. Because of its hopelessly shabby appearance, it seems as if few trainers raise it."
  s.generation    3
  s.evolves_into  :MILOTIC, :TradeItem, PRISMSCALE
  s.evolves_into  :MILOTIC, :Beauty, 170
end

GameData::Species.define :MILOTIC do |s|
  s.name          "Milotic"
  s.types         :WATER
  s.base_stats    hp: 95, attack: 60, defense: 79, speed: 81, sp_atk: 100, sp_def: 125
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      189
  s.catch_rate    60
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :MARVELSCALE, :COMPETITIVE
  s.hidden_abilities :CUTECHARM
  s.moves do |m|
    m.at 0, :WATERPULSE
    m.at 1, :FLAIL
    m.at 1, :SPLASH
    m.at 1, :TACKLE
    m.at 1, :WRAP
    m.at 1, :WATERGUN
    m.at 4, :DISARMINGVOICE
    m.at 8, :TWISTER
    m.at 12, :AQUARING
    m.at 16, :ATTRACT
    m.at 20, :LIFEDEW
    m.at 24, :DRAGONTAIL
    m.at 28, :RECOVER
    m.at 32, :AQUATAIL
    m.at 36, :SAFEGUARD
    m.at 40, :SURF
    m.at 44, :RAINDANCE
    m.at 48, :COIL
    m.at 52, :HYDROPUMP
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :AVALANCHE, :BIND, :BLIZZARD, :BODYSLAM, :BREAKINGSWIPE, :BRINE, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :ENDURE, :FACADE, :FLIPTURN, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IMPRISON, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SCALESHOT, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TRIPLEAXEL, :TWISTER, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Dragon
  s.hatch_steps   5120
  s.height        6.2
  s.weight        162.0
  s.color         :Pink
  s.shape         :Serpentine
  s.habitat       :WatersEdge
  s.category      "Tender"
  s.pokedex_entry "It is said to live at the bottom of large lakes. Considered to be the most beautiful of all Pokémon, it has been depicted in paintings and statues."
  s.generation    3
  s.flags         :HasGenderedSprites
end

GameData::Species.define :CLAMPERL do |s|
  s.name          "Clamperl"
  s.types         :WATER
  s.base_stats    hp: 35, attack: 64, defense: 85, speed: 32, sp_atk: 74, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      69
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :SHELLARMOR
  s.hidden_abilities :RATTLED
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :WHIRLPOOL
    m.at 1, :IRONDEFENSE
    m.at 50, :SHELLSMASH
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AQUARING, :BODYSLAM, :CONFUSERAY, :MUDDYWATER, :SUPERSONIC
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        0.4
  s.weight        52.5
  s.color         :Blue
  s.shape         :Head
  s.habitat       :Sea
  s.category      "Bivalve"
  s.pokedex_entry "A Clamperl slams its shell closed on prey to prevent escape. The pearl it creates upon evolution is said to be infused with a mysterious energy."
  s.generation    3
  s.evolves_into  :HUNTAIL, :TradeItem, DEEPSEATOOTH
  s.evolves_into  :GOREBYSS, :TradeItem, DEEPSEASCALE
  s.wild_item_common   :PEARL
  s.wild_item_uncommon :BIGPEARL
end

GameData::Species.define :HUNTAIL do |s|
  s.name          "Huntail"
  s.types         :WATER
  s.base_stats    hp: 55, attack: 104, defense: 105, speed: 52, sp_atk: 94, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      170
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 1, defense: 1
  s.abilities     :SWIFTSWIM
  s.hidden_abilities :WATERVEIL
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :IRONDEFENSE
    m.at 1, :SHELLSMASH
    m.at 1, :WHIRLPOOL
    m.at 1, :BITE
    m.at 5, :SCREECH
    m.at 9, :SCARYFACE
    m.at 11, :RAINDANCE
    m.at 14, :WATERPULSE
    m.at 16, :ICEFANG
    m.at 19, :BRINE
    m.at 23, :SUCKERPUNCH
    m.at 26, :DIVE
    m.at 29, :BATONPASS
    m.at 34, :CRUNCH
    m.at 39, :AQUATAIL
    m.at 45, :COIL
    m.at 50, :HYDROPUMP
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BIND, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INFESTATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SUCKERPUNCH, :SUPERFANG, :SURF, :SWAGGER, :SWIFT, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        1.7
  s.weight        27.0
  s.color         :Blue
  s.shape         :Serpentine
  s.habitat       :Sea
  s.category      "Deep Sea"
  s.pokedex_entry "To withstand the crushing water pressure deep under the sea, its spine is very thick and sturdy. Its tail, which is shaped like a small fish, has eyes that light up."
  s.generation    3
  s.wild_item_uncommon :DEEPSEATOOTH
end

GameData::Species.define :GOREBYSS do |s|
  s.name          "Gorebyss"
  s.types         :WATER
  s.base_stats    hp: 55, attack: 84, defense: 105, speed: 52, sp_atk: 114, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      170
  s.catch_rate    60
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :SWIFTSWIM
  s.hidden_abilities :HYDRATION
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :IRONDEFENSE
    m.at 1, :SHELLSMASH
    m.at 1, :WHIRLPOOL
    m.at 1, :CONFUSION
    m.at 5, :RAINDANCE
    m.at 9, :AGILITY
    m.at 11, :DRAININGKISS
    m.at 14, :WATERPULSE
    m.at 16, :AMNESIA
    m.at 19, :AQUARING
    m.at 23, :SAFEGUARD
    m.at 26, :DIVE
    m.at 29, :BATONPASS
    m.at 34, :PSYCHIC
    m.at 39, :AQUATAIL
    m.at 45, :COIL
    m.at 50, :HYDROPUMP
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BIND, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INFESTATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        1.8
  s.weight        22.6
  s.color         :Pink
  s.shape         :Serpentine
  s.habitat       :Sea
  s.category      "South Sea"
  s.pokedex_entry "A Gorebyss siphons the body fluids of prey through its thin, tubular mouth. Its light pink body color turns vivid when it finishes feeding."
  s.generation    3
  s.wild_item_uncommon :DEEPSEASCALE
end

GameData::Species.define :RELICANTH do |s|
  s.name          "Relicanth"
  s.types         :WATER, :ROCK
  s.base_stats    hp: 100, attack: 90, defense: 130, speed: 55, sp_atk: 45, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Slow
  s.base_exp      170
  s.catch_rate    25
  s.happiness     50
  s.evs           hp: 1, defense: 1
  s.abilities     :SWIFTSWIM, :ROCKHEAD
  s.hidden_abilities :STURDY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 5, :WATERGUN
    m.at 10, :ANCIENTPOWER
    m.at 15, :YAWN
    m.at 20, :DIVE
    m.at 25, :TAKEDOWN
    m.at 30, :AQUATAIL
    m.at 35, :REST
    m.at 40, :FLAIL
    m.at 45, :HYDROPUMP
    m.at 50, :DOUBLEEDGE
    m.at 55, :HEADSMASH
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BOUNCE, :BRINE, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :LIQUIDATION, :METEORBEAM, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALD, :SCALESHOT, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SURF, :SWAGGER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AMNESIA, :AQUATAIL, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :SKULLBASH, :SNORE, :ZENHEADBUTT
  s.egg_groups    :Water1, :Water2
  s.hatch_steps   10240
  s.height        1.0
  s.weight        23.4
  s.color         :Gray
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Longevity"
  s.pokedex_entry "A Pokémon that was once believed to be extinct. The species has not changed its form for 100 million years. It walks on the seafloor using its pectoral fins."
  s.generation    3
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :DEEPSEASCALE
end

GameData::Species.define :LUVDISC do |s|
  s.name          "Luvdisc"
  s.types         :WATER
  s.base_stats    hp: 43, attack: 30, defense: 55, speed: 97, sp_atk: 40, sp_def: 65
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      116
  s.catch_rate    225
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :SWIFTSWIM
  s.hidden_abilities :HYDRATION
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :CHARM
    m.at 4, :WATERGUN
    m.at 7, :AGILITY
    m.at 9, :DRAININGKISS
    m.at 13, :TEARFULLOOK
    m.at 17, :WATERPULSE
    m.at 20, :ATTRACT
    m.at 22, :BRINE
    m.at 26, :FLAIL
    m.at 31, :SWEETKISS
    m.at 34, :TAKEDOWN
    m.at 37, :BABYDOLLEYES
    m.at 40, :AQUARING
    m.at 42, :SOAK
    m.at 46, :HYDROPUMP
    m.at 49, :SAFEGUARD
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BOUNCE, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :LIQUIDATION, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AQUAJET, :AQUARING, :ENTRAINMENT, :HEALPULSE, :SPLASH, :SUPERSONIC
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        0.6
  s.weight        8.7
  s.color         :Pink
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Rendezvous"
  s.pokedex_entry "Luvdisc make the branches of Corsola their nests. There is a custom from long ago of giving a Luvdisc as a gift to express one's feelings of love."
  s.generation    3
  s.wild_item_common   :HEARTSCALE
end

GameData::Species.define :KYOGRE do |s|
  s.name          "Kyogre"
  s.types         :WATER
  s.base_stats    hp: 100, attack: 100, defense: 90, speed: 90, sp_atk: 150, sp_def: 140
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      335
  s.catch_rate    3
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :DRIZZLE
  s.moves do |m|
    m.at 1, :WATERPULSE
    m.at 1, :ANCIENTPOWER
    m.at 1, :BODYSLAM
    m.at 1, :SCARYFACE
    m.at 9, :AQUATAIL
    m.at 18, :CALMMIND
    m.at 27, :MUDDYWATER
    m.at 36, :ICEBEAM
    m.at 45, :SHEERCOLD
    m.at 54, :AQUARING
    m.at 63, :ORIGINPULSE
    m.at 72, :HYDROPUMP
    m.at 81, :DOUBLEEDGE
    m.at 90, :WATERSPOUT
  end
  s.tutor_moves   :ANCIENTPOWER, :AQUATAIL, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYSLAM, :BRICKBREAK, :BRINE, :BULLDOZE, :CALMMIND, :CONFIDE, :DEFENSECURL, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONHEAD, :LIQUIDATION, :MIMIC, :MUDDYWATER, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SCALD, :SCARYFACE, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :UPROAR, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        4.5
  s.weight        352.0
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Sea Basin"
  s.pokedex_entry "Kyogre has appeared in mythology as the creator of the sea. After long years of feuding with Groudon, it took to sleep at the bottom of the sea."
  s.generation    3
  s.flags         :Legendary
end

GameData::Species.define :PIPLUP do |s|
  s.name          "Piplup"
  s.types         :WATER
  s.base_stats    hp: 53, attack: 51, defense: 53, speed: 40, sp_atk: 61, sp_def: 56
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      63
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :TORRENT
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 1, :POUND
    m.at 4, :GROWL
    m.at 6, :WATERGUN
    m.at 11, :CHARM
    m.at 15, :PECK
    m.at 18, :BUBBLEBEAM
    m.at 22, :SWAGGER
    m.at 25, :FURYATTACK
    m.at 29, :BRINE
    m.at 32, :WHIRLPOOL
    m.at 36, :MIST
    m.at 39, :DRILLPECK
    m.at 43, :HYDROPUMP
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BLIZZARD, :BRICKBREAK, :BRINE, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DEFOG, :DIG, :DIVE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :GRASSKNOT, :HAIL, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLUCK, :PROTECT, :QUASH, :RAINDANCE, :REST, :RETURN, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEALTHROCK, :SUBSTITUTE, :SURF, :SWAGGER, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_moves     :AGILITY, :AQUARING, :DOUBLEHIT, :FEATHERDANCE, :FLAIL, :HYDROPUMP, :ICYWIND, :MUDSLAP, :SNORE, :SUPERSONIC, :YAWN
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        5.2
  s.color         :Blue
  s.shape         :Bipedal
  s.category      "Penguin"
  s.pokedex_entry "Because it is very proud, it hates accepting food from people. Its thick down guards it from cold."
  s.generation    4
  s.evolves_into  :PRINPLUP, :Level, 16
end

GameData::Species.define :PRINPLUP do |s|
  s.name          "Prinplup"
  s.types         :WATER
  s.base_stats    hp: 64, attack: 66, defense: 68, speed: 50, sp_atk: 81, sp_def: 76
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :TORRENT
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 0, :METALCLAW
    m.at 1, :POUND
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 4, :GROWL
    m.at 8, :WATERGUN
    m.at 11, :CHARM
    m.at 15, :PECK
    m.at 19, :BUBBLEBEAM
    m.at 24, :SWAGGER
    m.at 28, :FURYATTACK
    m.at 33, :BRINE
    m.at 37, :WHIRLPOOL
    m.at 42, :MIST
    m.at 46, :DRILLPECK
    m.at 50, :HYDROPUMP
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BLIZZARD, :BRICKBREAK, :BRINE, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DEFOG, :DIG, :DIVE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :GRASSKNOT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :ICYWIND, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLUCK, :PROTECT, :QUASH, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SHADOWCLAW, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEALTHROCK, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        0.8
  s.weight        23.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Penguin"
  s.pokedex_entry "It lives alone, away from others. Apparently, every one of them believes it is the most important."
  s.generation    4
  s.evolves_into  :EMPOLEON, :Level, 36
end

GameData::Species.define :EMPOLEON do |s|
  s.name          "Empoleon"
  s.types         :WATER, :STEEL
  s.base_stats    hp: 84, attack: 86, defense: 88, speed: 60, sp_atk: 111, sp_def: 101
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :TORRENT
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 0, :AQUAJET
    m.at 1, :METALCLAW
    m.at 1, :POUND
    m.at 1, :CHARM
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 4, :GROWL
    m.at 8, :WATERGUN
    m.at 11, :SWORDSDANCE
    m.at 15, :PECK
    m.at 19, :BUBBLEBEAM
    m.at 24, :SWAGGER
    m.at 28, :FURYATTACK
    m.at 33, :BRINE
    m.at 39, :WHIRLPOOL
    m.at 46, :MIST
    m.at 52, :DRILLPECK
    m.at 59, :HYDROPUMP
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :AVALANCHE, :BLIZZARD, :BRICKBREAK, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DEFOG, :DIG, :DIVE, :DOUBLETEAM, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FLASHCANNON, :FLING, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GRASSKNOT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYDROCANNON, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :KNOCKOFF, :LASERFOCUS, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLUCK, :PROTECT, :QUASH, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SHADOWCLAW, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEALTHROCK, :STEELWING, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :SWORDSDANCE, :THROATCHOP, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        1.7
  s.weight        84.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Emperor"
  s.pokedex_entry "The three horns that extend from its beak attest to its power. The leader has the biggest horns."
  s.generation    4
end

GameData::Species.define :BUIZEL do |s|
  s.name          "Buizel"
  s.types         :WATER
  s.base_stats    hp: 55, attack: 65, defense: 35, speed: 85, sp_atk: 60, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      66
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :SWIFTSWIM
  s.hidden_abilities :WATERVEIL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 4, :GROWL
    m.at 7, :TAILWHIP
    m.at 11, :QUICKATTACK
    m.at 15, :WATERGUN
    m.at 18, :BITE
    m.at 21, :SWIFT
    m.at 24, :AQUAJET
    m.at 27, :DOUBLEHIT
    m.at 31, :WHIRLPOOL
    m.at 35, :WATERFALL
    m.at 38, :AQUATAIL
    m.at 41, :AGILITY
    m.at 45, :HYDROPUMP
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BLIZZARD, :BRICKBREAK, :BRINE, :BULKUP, :CAPTIVATE, :CONFIDE, :DIG, :DIVE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FOCUSPUNCH, :FRUSTRATION, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AQUARING, :AQUATAIL, :BATONPASS, :FURYCUTTER, :FURYSWIPES, :HEADBUTT, :HELPINGHAND, :MUDSLAP, :SLASH, :SOAK, :SWITCHEROO
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        0.7
  s.weight        29.5
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Sea Weasel"
  s.pokedex_entry "It has a flotation sac that is like an inflatable collar. It floats on water with its head out."
  s.generation    4
  s.evolves_into  :FLOATZEL, :Level, 26
  s.flags         :HasGenderedSprites
end

GameData::Species.define :FLOATZEL do |s|
  s.name          "Floatzel"
  s.types         :WATER
  s.base_stats    hp: 85, attack: 105, defense: 55, speed: 115, sp_atk: 85, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :SWIFTSWIM
  s.hidden_abilities :WATERVEIL
  s.moves do |m|
    m.at 1, :ICEFANG
    m.at 1, :CRUNCH
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :QUICKATTACK
    m.at 4, :GROWL
    m.at 7, :TAILWHIP
    m.at 11, :QUICKATTACK
    m.at 15, :WATERGUN
    m.at 18, :BITE
    m.at 21, :SWIFT
    m.at 24, :AQUAJET
    m.at 29, :DOUBLEHIT
    m.at 35, :WHIRLPOOL
    m.at 41, :WATERFALL
    m.at 46, :AQUATAIL
    m.at 51, :AGILITY
    m.at 57, :HYDROPUMP
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BLIZZARD, :BRICKBREAK, :BRINE, :BULKUP, :CAPTIVATE, :CONFIDE, :DIG, :DIVE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :LIQUIDATION, :LOWKICK, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TAUNT, :TORMENT, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        1.1
  s.weight        33.5
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Sea Weasel"
  s.pokedex_entry "It floats using its well-developed flotation sac. It assists in the rescues of drowning people."
  s.generation    4
  s.flags         :HasGenderedSprites
end

GameData::Species.define :SHELLOS do |s|
  s.name          "Shellos"
  s.types         :WATER
  s.base_stats    hp: 76, attack: 48, defense: 48, speed: 34, sp_atk: 57, sp_def: 62
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      65
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :STICKYHOLD, :STORMDRAIN
  s.hidden_abilities :SANDFORCE
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :MUDSLAP
    m.at 5, :HARDEN
    m.at 10, :RECOVER
    m.at 15, :WATERPULSE
    m.at 20, :ANCIENTPOWER
    m.at 25, :BODYSLAM
    m.at 31, :MUDDYWATER
    m.at 35, :EARTHPOWER
    m.at 40, :RAINDANCE
    m.at 45, :MEMENTO
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :INFESTATION, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SNORE, :STRINGSHOT, :SUBSTITUTE, :SURF, :SWAGGER, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :ACIDARMOR, :AMNESIA, :CLEARSMOG, :COUNTER, :CURSE, :FISSURE, :MEMENTO, :MIRRORCOAT, :MIST, :SLUDGE, :SPITUP, :STOCKPILE, :SWALLOW, :YAWN
  s.egg_groups    :Water1, :Amorphous
  s.hatch_steps   5120
  s.height        0.3
  s.weight        6.3
  s.color         :Purple
  s.shape         :Serpentine
  s.category      "Sea Slug"
  s.pokedex_entry "This Pokémon's habitat shapes its physique. According to some theories, life in warm ocean waters causes this variation to develop."
  s.generation    4
  s.evolves_into  :GASTRODON, :Level, 30
  s.flags         :InheritFormFromMother
end

GameData::Species.define :GASTRODON do |s|
  s.name          "Gastrodon"
  s.types         :WATER, :GROUND
  s.base_stats    hp: 111, attack: 83, defense: 68, speed: 39, sp_atk: 92, sp_def: 82
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      166
  s.catch_rate    75
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :STICKYHOLD, :STORMDRAIN
  s.hidden_abilities :SANDFORCE
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :MUDSLAP
    m.at 1, :HARDEN
    m.at 1, :RECOVER
    m.at 15, :WATERPULSE
    m.at 20, :ANCIENTPOWER
    m.at 25, :BODYSLAM
    m.at 33, :MUDDYWATER
    m.at 39, :EARTHPOWER
    m.at 46, :RAINDANCE
    m.at 53, :MEMENTO
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :ATTRACT, :BLIZZARD, :BLOCK, :BODYSLAM, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DIVE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INFESTATION, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCALD, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :STRINGSHOT, :SUBSTITUTE, :SURF, :SWAGGER, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Amorphous
  s.hatch_steps   5120
  s.height        0.9
  s.weight        29.9
  s.color         :Purple
  s.shape         :Serpentine
  s.category      "Sea Slug"
  s.pokedex_entry "Its search for food sometimes leads it onto land, where it leaves behind a sticky trail of slime as it passes through."
  s.generation    4
  s.flags         :InheritFormFromMother
end

GameData::Species.define :FINNEON do |s|
  s.name          "Finneon"
  s.types         :WATER
  s.base_stats    hp: 49, attack: 49, defense: 56, speed: 66, sp_atk: 49, sp_def: 61
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      66
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :SWIFTSWIM, :STORMDRAIN
  s.hidden_abilities :WATERVEIL
  s.moves do |m|
    m.at 1, :POUND
    m.at 6, :WATERGUN
    m.at 10, :ATTRACT
    m.at 13, :RAINDANCE
    m.at 17, :GUST
    m.at 22, :WATERPULSE
    m.at 26, :FLAIL
    m.at 29, :SAFEGUARD
    m.at 33, :AQUARING
    m.at 38, :WHIRLPOOL
    m.at 42, :UTURN
    m.at 45, :BOUNCE
    m.at 49, :TAILWIND
    m.at 54, :SOAK
  end
  s.tutor_moves   :AIRCUTTER, :AQUATAIL, :ATTRACT, :BLIZZARD, :BOUNCE, :BRINE, :CAPTIVATE, :CONFIDE, :DEFOG, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :HAIL, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :MIMIC, :NATURALGIFT, :NATUREPOWER, :OMINOUSWIND, :PAYBACK, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TAILWIND, :TWISTER, :UTURN, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AGILITY, :AQUATAIL, :AURORABEAM, :CHARM, :CONFUSERAY, :FLAIL, :PSYBEAM, :SPLASH, :SWEETKISS, :TICKLE
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        0.4
  s.weight        7.0
  s.color         :Blue
  s.shape         :Finned
  s.category      "Wing Fish"
  s.pokedex_entry "After long exposure to sunlight, the patterns on its tail fins shine vividly when darkness arrives."
  s.generation    4
  s.evolves_into  :LUMINEON, :Level, 31
  s.flags         :HasGenderedSprites
end

GameData::Species.define :LUMINEON do |s|
  s.name          "Lumineon"
  s.types         :WATER
  s.base_stats    hp: 69, attack: 69, defense: 76, speed: 91, sp_atk: 69, sp_def: 86
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      161
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :SWIFTSWIM, :STORMDRAIN
  s.hidden_abilities :WATERVEIL
  s.moves do |m|
    m.at 1, :SOAK
    m.at 1, :GUST
    m.at 1, :POUND
    m.at 1, :WATERGUN
    m.at 1, :ATTRACT
    m.at 6, :WATERGUN
    m.at 10, :ATTRACT
    m.at 13, :RAINDANCE
    m.at 17, :GUST
    m.at 22, :WATERPULSE
    m.at 26, :FLAIL
    m.at 29, :SAFEGUARD
    m.at 35, :AQUARING
    m.at 42, :WHIRLPOOL
    m.at 48, :UTURN
    m.at 53, :BOUNCE
    m.at 59, :TAILWIND
    m.at 66, :SOAK
  end
  s.tutor_moves   :AIRCUTTER, :AQUATAIL, :ATTRACT, :BLIZZARD, :BOUNCE, :BRINE, :CAPTIVATE, :CONFIDE, :DEFOG, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PAYBACK, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TAILWIND, :TWISTER, :UTURN, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        1.2
  s.weight        24.0
  s.color         :Blue
  s.shape         :Finned
  s.category      "Neon"
  s.pokedex_entry "It lives on the deep-sea floor. It attracts prey by flashing the patterns on its four tail fins."
  s.generation    4
  s.flags         :HasGenderedSprites
end

GameData::Species.define :MANTYKE do |s|
  s.name          "Mantyke"
  s.types         :WATER, :FLYING
  s.base_stats    hp: 45, attack: 20, defense: 50, speed: 50, sp_atk: 60, sp_def: 120
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      69
  s.catch_rate    25
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :SWIFTSWIM, :WATERABSORB
  s.hidden_abilities :WATERVEIL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 4, :SUPERSONIC
    m.at 8, :WINGATTACK
    m.at 12, :WATERPULSE
    m.at 16, :WIDEGUARD
    m.at 20, :AGILITY
    m.at 24, :BUBBLEBEAM
    m.at 28, :HEADBUTT
    m.at 32, :AIRSLASH
    m.at 36, :AQUARING
    m.at 40, :BOUNCE
    m.at 44, :TAKEDOWN
    m.at 48, :HYDROPUMP
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :AMNESIA, :ATTRACT, :BLIZZARD, :BOUNCE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROUND, :SCALD, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TAILWIND, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AMNESIA, :CONFUSERAY, :HAZE, :HYDROPUMP, :MIRRORCOAT, :SLAM, :SPLASH, :TAILWIND, :TWISTER, :WIDEGUARD
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        1.0
  s.weight        65.0
  s.color         :Blue
  s.shape         :Winged
  s.category      "Kite"
  s.pokedex_entry "A friendly Pokémon that captures the subtle flows of seawater using its two antennae."
  s.generation    4
  s.evolves_into  :MANTINE, :HasInParty, REMORAID
end

GameData::Species.define :PALKIA do |s|
  s.name          "Palkia"
  s.types         :WATER, :DRAGON
  s.base_stats    hp: 90, attack: 120, defense: 100, speed: 100, sp_atk: 150, sp_def: 120
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    3
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :PRESSURE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :SCARYFACE
    m.at 1, :WATERPULSE
    m.at 8, :DRAGONBREATH
    m.at 16, :ANCIENTPOWER
    m.at 24, :SLASH
    m.at 32, :AQUARING
    m.at 40, :SPACIALREND
    m.at 48, :DRAGONCLAW
    m.at 56, :AURASPHERE
    m.at 64, :POWERGEM
    m.at 72, :AQUATAIL
    m.at 80, :EARTHPOWER
    m.at 88, :HYDROPUMP
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :AQUATAIL, :AURASPHERE, :AVALANCHE, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BRINE, :BULKUP, :BULLDOZE, :CONFIDE, :CUT, :DIVE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GRAVITY, :HAIL, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HONECLAWS, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :INCINERATE, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :POWERGEM, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICKROOM, :TWISTER, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        4.2
  s.weight        336.0
  s.color         :Purple
  s.shape         :BipedalTail
  s.category      "Spatial"
  s.pokedex_entry "It has the ability to distort space. It is described as a deity in Sinnoh-region mythology."
  s.generation    4
  s.flags         :Legendary
end

GameData::Species.define :PHIONE do |s|
  s.name          "Phione"
  s.types         :WATER
  s.base_stats    hp: 80, attack: 80, defense: 80, speed: 80, sp_atk: 80, sp_def: 80
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      240
  s.catch_rate    30
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :HYDRATION
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 9, :CHARM
    m.at 16, :SUPERSONIC
    m.at 24, :BUBBLEBEAM
    m.at 31, :ACIDARMOR
    m.at 39, :WHIRLPOOL
    m.at 46, :WATERPULSE
    m.at 54, :AQUARING
    m.at 61, :DIVE
    m.at 69, :RAINDANCE
  end
  s.tutor_moves   :ANCIENTPOWER, :BLIZZARD, :BOUNCE, :BRINE, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :GRASSKNOT, :HAIL, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :KNOCKOFF, :LASTRESORT, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :UPROAR, :UTURN, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Fairy
  s.hatch_steps   10240
  s.height        0.4
  s.weight        3.1
  s.color         :Blue
  s.shape         :HeadArms
  s.category      "Sea Drifter"
  s.pokedex_entry "A Pokémon that lives in warm seas. It inflates the flotation sac on its head to drift and search for food."
  s.generation    4
  s.flags         :Mythical
end

GameData::Species.define :MANAPHY do |s|
  s.name          "Manaphy"
  s.types         :WATER
  s.base_stats    hp: 100, attack: 100, defense: 100, speed: 100, sp_atk: 100, sp_def: 100
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     50
  s.evs           hp: 3
  s.abilities     :HYDRATION
  s.moves do |m|
    m.at 1, :TAILGLOW
    m.at 1, :WATERGUN
    m.at 9, :CHARM
    m.at 16, :SUPERSONIC
    m.at 24, :BUBBLEBEAM
    m.at 31, :ACIDARMOR
    m.at 39, :WHIRLPOOL
    m.at 46, :WATERPULSE
    m.at 54, :AQUARING
    m.at 61, :DIVE
    m.at 69, :RAINDANCE
    m.at 76, :HEARTSWAP
  end
  s.tutor_moves   :ANCIENTPOWER, :BLIZZARD, :BOUNCE, :BRINE, :CALMMIND, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DIVE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLING, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HAIL, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :KNOCKOFF, :LASTRESORT, :LIGHTSCREEN, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :UPROAR, :UTURN, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Fairy
  s.hatch_steps   2560
  s.height        0.3
  s.weight        1.4
  s.color         :Blue
  s.shape         :Bipedal
  s.category      "Seafaring"
  s.pokedex_entry "Born on a cold seafloor, it will swim great distances to return to its birthplace."
  s.generation    4
  s.flags         :Mythical
end

GameData::Species.define :OSHAWOTT do |s|
  s.name          "Oshawott"
  s.types         :WATER
  s.base_stats    hp: 55, attack: 55, defense: 45, speed: 45, sp_atk: 63, sp_def: 45
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :TORRENT
  s.hidden_abilities :SHELLARMOR
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 5, :TAILWHIP
    m.at 7, :WATERGUN
    m.at 11, :WATERSPORT
    m.at 13, :FOCUSENERGY
    m.at 17, :RAZORSHELL
    m.at 19, :FURYCUTTER
    m.at 23, :WATERPULSE
    m.at 25, :REVENGE
    m.at 29, :AQUAJET
    m.at 31, :ENCORE
    m.at 35, :AQUATAIL
    m.at 37, :RETALIATE
    m.at 41, :SWORDSDANCE
    m.at 43, :HYDROPUMP
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ATTRACT, :BLIZZARD, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FRUSTRATION, :GRASSKNOT, :HAIL, :HELPINGHAND, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :IRONTAIL, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWORDSDANCE, :TAUNT, :TOXIC, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_moves     :AIRSLASH, :ASSURANCE, :BRINE, :COPYCAT, :DETECT, :NIGHTSLASH, :SACREDSWORD, :SCREECH, :TRUMPCARD
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.5
  s.weight        5.9
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Sea Otter"
  s.pokedex_entry "The scalchop on its stomach is made from the same elements as claws. It detaches the scalchop for use as a blade."
  s.generation    5
  s.evolves_into  :DEWOTT, :Level, 17
end

GameData::Species.define :DEWOTT do |s|
  s.name          "Dewott"
  s.types         :WATER
  s.base_stats    hp: 75, attack: 75, defense: 60, speed: 60, sp_atk: 83, sp_def: 60
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      145
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :TORRENT
  s.hidden_abilities :SHELLARMOR
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :WATERGUN
    m.at 1, :WATERSPORT
    m.at 5, :TAILWHIP
    m.at 7, :WATERGUN
    m.at 11, :WATERSPORT
    m.at 13, :FOCUSENERGY
    m.at 18, :RAZORSHELL
    m.at 21, :FURYCUTTER
    m.at 26, :WATERPULSE
    m.at 29, :REVENGE
    m.at 34, :AQUAJET
    m.at 37, :ENCORE
    m.at 42, :AQUATAIL
    m.at 45, :RETALIATE
    m.at 50, :SWORDSDANCE
    m.at 53, :HYDROPUMP
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ATTRACT, :BLIZZARD, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FRUSTRATION, :GRASSKNOT, :HAIL, :HELPINGHAND, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :IRONTAIL, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWORDSDANCE, :TAUNT, :TOXIC, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.8
  s.weight        24.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Discipline"
  s.pokedex_entry "Scalchop techniques differ from one Dewott to another. It never neglects maintaining its scalchops."
  s.generation    5
  s.evolves_into  :SAMUROTT, :Level, 36
end

GameData::Species.define :SAMUROTT do |s|
  s.name          "Samurott"
  s.types         :WATER
  s.base_stats    hp: 95, attack: 100, defense: 85, speed: 70, sp_atk: 108, sp_def: 70
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      264
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :TORRENT
  s.hidden_abilities :SHELLARMOR
  s.moves do |m|
    m.at 0, :SLASH
    m.at 1, :MEGAHORN
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :WATERGUN
    m.at 1, :WATERSPORT
    m.at 5, :TAILWHIP
    m.at 7, :WATERGUN
    m.at 11, :WATERSPORT
    m.at 13, :FOCUSENERGY
    m.at 18, :RAZORSHELL
    m.at 21, :FURYCUTTER
    m.at 25, :WATERPULSE
    m.at 29, :REVENGE
    m.at 34, :AQUAJET
    m.at 39, :ENCORE
    m.at 46, :AQUATAIL
    m.at 51, :RETALIATE
    m.at 58, :SWORDSDANCE
    m.at 63, :HYDROPUMP
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ATTRACT, :BLIZZARD, :BLOCK, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DIVE, :DOUBLETEAM, :DRAGONTAIL, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HAIL, :HELPINGHAND, :HIDDENPOWER, :HYDROCANNON, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LIQUIDATION, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :TAUNT, :TOXIC, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.5
  s.weight        94.6
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Formidable"
  s.pokedex_entry "Part of the armor on its anterior legs becomes a giant sword. Its cry alone is enough to intimidate most enemies."
  s.generation    5
end

GameData::Species.define :PANPOUR do |s|
  s.name          "Panpour"
  s.types         :WATER
  s.base_stats    hp: 50, attack: 53, defense: 48, speed: 64, sp_atk: 53, sp_def: 48
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      63
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :GLUTTONY
  s.hidden_abilities :TORRENT
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :PLAYNICE
    m.at 4, :LEER
    m.at 7, :LICK
    m.at 10, :WATERGUN
    m.at 13, :FURYSWIPES
    m.at 16, :WATERSPORT
    m.at 19, :BITE
    m.at 22, :SCALD
    m.at 25, :TAUNT
    m.at 28, :FLING
    m.at 31, :ACROBATICS
    m.at 34, :BRINE
    m.at 37, :RECYCLE
    m.at 40, :NATURALGIFT
    m.at 43, :CRUNCH
  end
  s.tutor_moves   :ACROBATICS, :AQUATAIL, :ATTRACT, :BLIZZARD, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DIVE, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GASTROACID, :GRASSKNOT, :GUNKSHOT, :HAIL, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCALD, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :TAUNT, :THIEF, :TORMENT, :TOXIC, :UPROAR, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_moves     :AQUARING, :AQUATAIL, :ASTONISH, :COVET, :DISARMINGVOICE, :HYDROPUMP, :LOWKICK, :MUDSPORT, :NASTYPLOT, :ROLEPLAY, :TICKLE
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        13.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Spray"
  s.pokedex_entry "It does not thrive in dry environments. It keeps itself damp by shooting water stored in its head tuft from its tail."
  s.generation    5
  s.evolves_into  :SIMIPOUR, :Item, WATERSTONE
end

GameData::Species.define :SIMIPOUR do |s|
  s.name          "Simipour"
  s.types         :WATER
  s.base_stats    hp: 75, attack: 98, defense: 63, speed: 101, sp_atk: 98, sp_def: 63
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      174
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :GLUTTONY
  s.hidden_abilities :TORRENT
  s.moves do |m|
    m.at 1, :LEER
    m.at 1, :LICK
    m.at 1, :FURYSWIPES
    m.at 1, :SCALD
  end
  s.tutor_moves   :ACROBATICS, :AQUATAIL, :ATTRACT, :BLIZZARD, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DIVE, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GASTROACID, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HAIL, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :MIMIC, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCALD, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :TOXIC, :UPROAR, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        29.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Geyser"
  s.pokedex_entry "The high-pressure water expelled from its tail is so powerful, it can destroy a concrete wall."
  s.generation    5
end

GameData::Species.define :TYMPOLE do |s|
  s.name          "Tympole"
  s.types         :WATER
  s.base_stats    hp: 50, attack: 50, defense: 40, speed: 64, sp_atk: 50, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      59
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :SWIFTSWIM, :HYDRATION
  s.hidden_abilities :WATERABSORB
  s.moves do |m|
    m.at 1, :ECHOEDVOICE
    m.at 1, :GROWL
    m.at 4, :ACID
    m.at 8, :SUPERSONIC
    m.at 12, :MUDSHOT
    m.at 16, :ROUND
    m.at 20, :BUBBLEBEAM
    m.at 24, :FLAIL
    m.at 28, :UPROAR
    m.at 32, :AQUARING
    m.at 36, :HYPERVOICE
    m.at 40, :MUDDYWATER
    m.at 44, :RAINDANCE
    m.at 48, :HYDROPUMP
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BOUNCE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :EARTHPOWER, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HIDDENPOWER, :HYDROPUMP, :HYPERVOICE, :ICYWIND, :INFESTATION, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :UPROAR, :VENOMDRENCH, :WATERPULSE, :WEATHERBALL, :TERABLAST
  s.egg_moves     :MIST, :MUDSLAP, :TOXIC, :WATERPULSE
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        0.5
  s.weight        4.5
  s.color         :Blue
  s.shape         :Finned
  s.category      "Tadpole"
  s.pokedex_entry "By vibrating its cheeks, it emits sound waves imperceptible to humans. It uses the rhythm of these sounds to talk."
  s.generation    5
  s.evolves_into  :PALPITOAD, :Level, 25
end

GameData::Species.define :PALPITOAD do |s|
  s.name          "Palpitoad"
  s.types         :WATER, :GROUND
  s.base_stats    hp: 75, attack: 65, defense: 55, speed: 69, sp_atk: 65, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      134
  s.catch_rate    120
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :SWIFTSWIM, :HYDRATION
  s.hidden_abilities :WATERABSORB
  s.moves do |m|
    m.at 1, :ECHOEDVOICE
    m.at 1, :GROWL
    m.at 1, :ACID
    m.at 1, :SUPERSONIC
    m.at 12, :MUDSHOT
    m.at 16, :ROUND
    m.at 20, :BUBBLEBEAM
    m.at 24, :FLAIL
    m.at 30, :UPROAR
    m.at 37, :AQUARING
    m.at 42, :HYPERVOICE
    m.at 48, :MUDDYWATER
    m.at 54, :RAINDANCE
    m.at 60, :HYDROPUMP
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BOUNCE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :EARTHPOWER, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FOCUSPUNCH, :FRUSTRATION, :GASTROACID, :HAIL, :HIDDENPOWER, :HYDROPUMP, :HYPERVOICE, :ICYWIND, :INFESTATION, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :POWERWHIP, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STEALTHROCK, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :UPROAR, :VENOMDRENCH, :WATERPULSE, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        0.8
  s.weight        17.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Vibration"
  s.pokedex_entry "It lives in the water and on land. It uses its long, sticky tongue to capture prey."
  s.generation    5
  s.evolves_into  :SEISMITOAD, :Level, 36
end

GameData::Species.define :SEISMITOAD do |s|
  s.name          "Seismitoad"
  s.types         :WATER, :GROUND
  s.base_stats    hp: 105, attack: 95, defense: 75, speed: 74, sp_atk: 85, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      255
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 3
  s.abilities     :SWIFTSWIM, :POISONTOUCH
  s.hidden_abilities :WATERABSORB
  s.moves do |m|
    m.at 0, :DRAINPUNCH
    m.at 1, :GASTROACID
    m.at 1, :ECHOEDVOICE
    m.at 1, :GROWL
    m.at 1, :ACID
    m.at 1, :SUPERSONIC
    m.at 12, :MUDSHOT
    m.at 16, :ROUND
    m.at 20, :BUBBLEBEAM
    m.at 24, :FLAIL
    m.at 30, :UPROAR
    m.at 39, :AQUARING
    m.at 46, :HYPERVOICE
    m.at 54, :MUDDYWATER
    m.at 62, :RAINDANCE
    m.at 70, :HYDROPUMP
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BOUNCE, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DIVE, :DOUBLETEAM, :DRAINPUNCH, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GASTROACID, :GIGAIMPACT, :GRASSKNOT, :HAIL, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEPUNCH, :ICYWIND, :INFESTATION, :KNOCKOFF, :LIQUIDATION, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :POWERWHIP, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :UPROAR, :VENOMDRENCH, :VENOSHOCK, :WATERPULSE, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        1.5
  s.weight        62.0
  s.color         :Blue
  s.shape         :Bipedal
  s.category      "Vibration"
  s.pokedex_entry "It increases the power of its punches by vibrating the bumps on its fists. It can turn a boulder to rubble with one punch."
  s.generation    5
end

GameData::Species.define :BASCULIN do |s|
  s.name          "Basculin"
  s.types         :WATER
  s.base_stats    hp: 70, attack: 92, defense: 65, speed: 98, sp_atk: 80, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      161
  s.catch_rate    25
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :RECKLESS, :ADAPTABILITY
  s.hidden_abilities :MOLDBREAKER
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :TAILWHIP
    m.at 4, :TACKLE
    m.at 8, :FLAIL
    m.at 12, :AQUAJET
    m.at 16, :BITE
    m.at 20, :SCARYFACE
    m.at 24, :HEADBUTT
    m.at 28, :SOAK
    m.at 32, :CRUNCH
    m.at 36, :TAKEDOWN
    m.at 40, :FINALGAMBIT
    m.at 44, :AQUATAIL
    m.at 48, :THRASH
    m.at 52, :DOUBLEEDGE
    m.at 56, :HEADSMASH
  end
  s.tutor_moves   :AGILITY, :AQUATAIL, :ASSURANCE, :ATTRACT, :BOUNCE, :BRINE, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DIVE, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FLIPTURN, :FRUSTRATION, :HAIL, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICEFANG, :ICYWIND, :LIQUIDATION, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :REVENGE, :REVERSAL, :ROUND, :SCALD, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWIFT, :TAUNT, :TOXIC, :UPROAR, :WATERFALL, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BUBBLEBEAM, :ENDEAVOR
  s.egg_groups    :Water2
  s.hatch_steps   10240
  s.height        1.0
  s.weight        18.0
  s.color         :Green
  s.shape         :Finned
  s.category      "Hostile"
  s.pokedex_entry "Savage, violent Pokémon, red and blue Basculin are always fighting each other over territory."
  s.generation    5
  s.flags         :InheritFormFromMother
  s.wild_item_uncommon :DEEPSEATOOTH
end

GameData::Species.define :TIRTOUGA do |s|
  s.name          "Tirtouga"
  s.types         :WATER, :ROCK
  s.base_stats    hp: 54, attack: 78, defense: 103, speed: 22, sp_atk: 53, sp_def: 45
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      71
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :SOLIDROCK, :STURDY
  s.hidden_abilities :SWIFTSWIM
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :WITHDRAW
    m.at 3, :PROTECT
    m.at 6, :AQUAJET
    m.at 9, :SMACKDOWN
    m.at 12, :ANCIENTPOWER
    m.at 15, :BITE
    m.at 18, :WIDEGUARD
    m.at 21, :BRINE
    m.at 24, :ROCKSLIDE
    m.at 27, :CRUNCH
    m.at 30, :CURSE
    m.at 33, :IRONDEFENSE
    m.at 36, :AQUATAIL
    m.at 39, :RAINDANCE
    m.at 42, :HYDROPUMP
    m.at 45, :SHELLSMASH
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BLIZZARD, :BLOCK, :BODYSLAM, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DIG, :DIVE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :GUARDSWAP, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :IRONTAIL, :KNOCKOFF, :LIQUIDATION, :METEORBEAM, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCALD, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BLOCK, :KNOCKOFF, :ROCKTHROW, :ROLLOUT, :SLAM, :WATERPULSE
  s.egg_groups    :Water1, :Water3
  s.hatch_steps   7680
  s.height        0.7
  s.weight        16.5
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Prototurtle"
  s.pokedex_entry "About 100 million years ago, these Pokémon swam in oceans. It is thought they also went on land to attack prey."
  s.generation    5
  s.evolves_into  :CARRACOSTA, :Level, 37
end

GameData::Species.define :CARRACOSTA do |s|
  s.name          "Carracosta"
  s.types         :WATER, :ROCK
  s.base_stats    hp: 74, attack: 108, defense: 133, speed: 32, sp_atk: 83, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SOLIDROCK, :STURDY
  s.hidden_abilities :SWIFTSWIM
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :WITHDRAW
    m.at 1, :PROTECT
    m.at 1, :AQUAJET
    m.at 9, :SMACKDOWN
    m.at 12, :ANCIENTPOWER
    m.at 15, :BITE
    m.at 18, :WIDEGUARD
    m.at 21, :BRINE
    m.at 24, :ROCKSLIDE
    m.at 27, :CRUNCH
    m.at 30, :CURSE
    m.at 33, :IRONDEFENSE
    m.at 36, :AQUATAIL
    m.at 41, :RAINDANCE
    m.at 46, :HYDROPUMP
    m.at 51, :SHELLSMASH
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BLIZZARD, :BLOCK, :BODYSLAM, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DIG, :DIVE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :GUARDSWAP, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LIQUIDATION, :LOWKICK, :METEORBEAM, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCALD, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :TOXIC, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Water1, :Water3
  s.hatch_steps   7680
  s.height        1.2
  s.weight        81.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Prototurtle"
  s.pokedex_entry "Incredible jaw strength enables them to chew up steel beams and rocks along with their prey."
  s.generation    5
end

GameData::Species.define :DUCKLETT do |s|
  s.name          "Ducklett"
  s.types         :WATER, :FLYING
  s.base_stats    hp: 62, attack: 44, defense: 50, speed: 55, sp_atk: 44, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :KEENEYE, :BIGPECKS
  s.hidden_abilities :HYDRATION
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 3, :WATERSPORT
    m.at 6, :DEFOG
    m.at 9, :WINGATTACK
    m.at 13, :WATERPULSE
    m.at 15, :AERIALACE
    m.at 19, :BUBBLEBEAM
    m.at 21, :FEATHERDANCE
    m.at 24, :AQUARING
    m.at 27, :AIRSLASH
    m.at 30, :ROOST
    m.at 34, :RAINDANCE
    m.at 37, :TAILWIND
    m.at 41, :BRAVEBIRD
    m.at 46, :HURRICANE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DIVE, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HAIL, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :LIQUIDATION, :MIMIC, :NATURALGIFT, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SURF, :SWAGGER, :TAILWIND, :TOXIC, :UPROAR, :WATERPULSE, :TERABLAST
  s.egg_moves     :AIRCUTTER, :AQUAJET, :BRINE, :GUST, :LUCKYCHANT, :MEFIRST, :MIRRORMOVE, :MUDSPORT, :STEELWING
  s.egg_groups    :Water1, :Flying
  s.hatch_steps   5120
  s.height        0.5
  s.weight        5.5
  s.color         :Blue
  s.shape         :Winged
  s.category      "Water Bird"
  s.pokedex_entry "When attacked, it uses its feathers to splash water, escaping under cover of the spray."
  s.generation    5
  s.evolves_into  :SWANNA, :Level, 35
end

GameData::Species.define :SWANNA do |s|
  s.name          "Swanna"
  s.types         :WATER, :FLYING
  s.base_stats    hp: 75, attack: 87, defense: 63, speed: 98, sp_atk: 87, sp_def: 63
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      166
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :KEENEYE, :BIGPECKS
  s.hidden_abilities :HYDRATION
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :WATERSPORT
    m.at 1, :DEFOG
    m.at 1, :WINGATTACK
    m.at 3, :WATERSPORT
    m.at 6, :DEFOG
    m.at 9, :WINGATTACK
    m.at 13, :WATERPULSE
    m.at 15, :AERIALACE
    m.at 19, :BUBBLEBEAM
    m.at 21, :FEATHERDANCE
    m.at 24, :AQUARING
    m.at 27, :AIRSLASH
    m.at 30, :ROOST
    m.at 34, :RAINDANCE
    m.at 40, :TAILWIND
    m.at 47, :BRAVEBIRD
    m.at 55, :HURRICANE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DIVE, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :LIQUIDATION, :MIMIC, :NATURALGIFT, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SCALD, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SURF, :SWAGGER, :TAILWIND, :TOXIC, :UPROAR, :WATERPULSE, :TERABLAST
  s.egg_groups    :Water1, :Flying
  s.hatch_steps   5120
  s.height        1.3
  s.weight        24.2
  s.color         :White
  s.shape         :Winged
  s.category      "White Bird"
  s.pokedex_entry "It administers sharp, powerful pecks with its bill. It whips its long neck to deliver forceful repeated strikes."
  s.generation    5
end

GameData::Species.define :FRILLISH do |s|
  s.name          "Frillish"
  s.types         :WATER, :GHOST
  s.base_stats    hp: 55, attack: 40, defense: 50, speed: 40, sp_atk: 65, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      67
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :WATERABSORB, :CURSEDBODY
  s.hidden_abilities :DAMP
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :WATERGUN
    m.at 4, :POISONSTING
    m.at 8, :NIGHTSHADE
    m.at 12, :WATERPULSE
    m.at 16, :RAINDANCE
    m.at 20, :HEX
    m.at 24, :BRINE
    m.at 28, :RECOVER
    m.at 32, :SHADOWBALL
    m.at 36, :WHIRLPOOL
    m.at 41, :HYDROPUMP
    m.at 44, :DESTINYBOND
    m.at 48, :WATERSPOUT
  end
  s.tutor_moves   :ATTRACT, :BIND, :BLIZZARD, :BRINE, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DAZZLINGGLEAM, :DIVE, :DOUBLETEAM, :DREAMEATER, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :HAIL, :HEX, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :IMPRISON, :MAGICCOAT, :MIMIC, :NATURALGIFT, :PAINSPLIT, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SPITE, :SUBSTITUTE, :SURF, :SWAGGER, :TAUNT, :TOXIC, :TRICK, :TRICKROOM, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WILLOWISP, :TERABLAST
  s.egg_moves     :ACIDARMOR, :BUBBLEBEAM, :CONFUSERAY, :MIST, :PAINSPLIT, :STRENGTHSAP
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        1.2
  s.weight        33.0
  s.color         :White
  s.shape         :Multiped
  s.category      "Floating"
  s.pokedex_entry "They paralyze prey with poison, then drag them down to their lairs, five miles below the surface."
  s.generation    5
  s.evolves_into  :JELLICENT, :Level, 40
  s.flags         :HasGenderedSprites
end

GameData::Species.define :JELLICENT do |s|
  s.name          "Jellicent"
  s.types         :WATER, :GHOST
  s.base_stats    hp: 100, attack: 60, defense: 70, speed: 60, sp_atk: 85, sp_def: 105
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    60
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :WATERABSORB, :CURSEDBODY
  s.hidden_abilities :DAMP
  s.moves do |m|
    m.at 1, :ACIDARMOR
    m.at 1, :ABSORB
    m.at 1, :WATERGUN
    m.at 1, :POISONSTING
    m.at 1, :NIGHTSHADE
    m.at 12, :WATERPULSE
    m.at 16, :RAINDANCE
    m.at 20, :HEX
    m.at 24, :BRINE
    m.at 28, :RECOVER
    m.at 32, :SHADOWBALL
    m.at 36, :WHIRLPOOL
    m.at 43, :HYDROPUMP
    m.at 48, :DESTINYBOND
    m.at 54, :WATERSPOUT
  end
  s.tutor_moves   :ATTRACT, :BIND, :BLIZZARD, :BRINE, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DAZZLINGGLEAM, :DIVE, :DOUBLETEAM, :DREAMEATER, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HAIL, :HEX, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IMPRISON, :MAGICCOAT, :MIMIC, :MUDDYWATER, :NATURALGIFT, :PAINSPLIT, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SPITE, :SUBSTITUTE, :SURF, :SWAGGER, :TAUNT, :TOXIC, :TRICK, :TRICKROOM, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WILLOWISP, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        2.2
  s.weight        135.0
  s.color         :White
  s.shape         :Multiped
  s.category      "Floating"
  s.pokedex_entry "They propel themselves by expelling absorbed seawater from their bodies. Their favorite food is life energy."
  s.generation    5
  s.flags         :HasGenderedSprites
end

GameData::Species.define :ALOMOMOLA do |s|
  s.name          "Alomomola"
  s.types         :WATER
  s.base_stats    hp: 165, attack: 75, defense: 80, speed: 65, sp_atk: 40, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      165
  s.catch_rate    75
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :HEALER, :HYDRATION
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :PLAYNICE
    m.at 1, :HYDROPUMP
    m.at 1, :WIDEGUARD
    m.at 1, :HEALINGWISH
    m.at 1, :HELPINGHAND
    m.at 1, :POUND
    m.at 1, :WATERSPORT
    m.at 5, :AQUARING
    m.at 9, :AQUAJET
    m.at 13, :DOUBLESLAP
    m.at 17, :HEALPULSE
    m.at 21, :PROTECT
    m.at 25, :WATERPULSE
    m.at 29, :WAKEUPSLAP
    m.at 33, :SOAK
    m.at 37, :WISH
    m.at 41, :BRINE
    m.at 45, :SAFEGUARD
    m.at 49, :WHIRLPOOL
    m.at 53, :HELPINGHAND
    m.at 57, :HEALINGWISH
    m.at 61, :WIDEGUARD
    m.at 65, :HYDROPUMP
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BOUNCE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HELPINGHAND, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :KNOCKOFF, :LIGHTSCREEN, :LIQUIDATION, :MAGICCOAT, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :WATERFALL, :WATERPULSE, :TERABLAST
  s.egg_moves     :ENDURE, :MIRRORCOAT, :MIST, :PAINSPLIT, :REFRESH, :TICKLE
  s.egg_groups    :Water1, :Water2
  s.hatch_steps   10240
  s.height        1.2
  s.weight        31.6
  s.color         :Pink
  s.shape         :Finned
  s.category      "Caring"
  s.pokedex_entry "Floating in the open sea is how they live. When they find a wounded Pokémon, they embrace it and bring it to shore."
  s.generation    5
end

GameData::Species.define :KELDEO do |s|
  s.name          "Keldeo"
  s.types         :WATER, :FIGHTING
  s.base_stats    hp: 91, attack: 72, defense: 90, speed: 108, sp_atk: 129, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           sp_attack: 3
  s.abilities     :JUSTIFIED
  s.moves do |m|
    m.at 1, :SECRETSWORD
    m.at 1, :AQUAJET
    m.at 1, :LEER
    m.at 1, :HELPINGHAND
    m.at 1, :WORKUP
    m.at 7, :BUBBLEBEAM
    m.at 14, :QUICKGUARD
    m.at 21, :DOUBLEKICK
    m.at 28, :RETALIATE
    m.at 35, :AQUATAIL
    m.at 42, :TAKEDOWN
    m.at 49, :SACREDSWORD
    m.at 56, :SWORDSDANCE
    m.at 63, :HYDROPUMP
    m.at 70, :CLOSECOMBAT
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :AQUATAIL, :AURASPHERE, :BOUNCE, :BRICKBREAK, :CALMMIND, :CLOSECOMBAT, :COACHING, :CONFIDE, :COVET, :CUT, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FLIPTURN, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICYWIND, :LASTRESORT, :LIQUIDATION, :LOWKICK, :MEGAHORN, :MIMIC, :MUDDYWATER, :NATURALGIFT, :POISONJAB, :PROTECT, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROAR, :ROCKSMASH, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SECRETSWORD, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :TOXIC, :WATERPULSE, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        1.4
  s.weight        48.5
  s.color         :Yellow
  s.shape         :Quadruped
  s.category      "Colt"
  s.pokedex_entry "It crosses the world, running over the surfaces of oceans and rivers. It appears at scenic waterfronts."
  s.generation    5
  s.flags         :Mythical
end

GameData::Species.define :FROAKIE do |s|
  s.name          "Froakie"
  s.types         :WATER
  s.base_stats    hp: 41, attack: 56, defense: 40, speed: 71, sp_atk: 62, sp_def: 44
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      63
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :TORRENT
  s.hidden_abilities :PROTEAN
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :GROWL
    m.at 5, :BUBBLE
    m.at 8, :QUICKATTACK
    m.at 10, :LICK
    m.at 14, :WATERPULSE
    m.at 18, :SMOKESCREEN
    m.at 21, :ROUND
    m.at 25, :FLING
    m.at 29, :SMACKDOWN
    m.at 35, :SUBSTITUTE
    m.at 39, :BOUNCE
    m.at 43, :DOUBLETEAM
    m.at 48, :HYDROPUMP
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BLIZZARD, :BOUNCE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DIVE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :GRASSKNOT, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :MIMIC, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNATCH, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :TAUNT, :THIEF, :TOXIC, :UTURN, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_moves     :BESTOW, :CAMOUFLAGE, :MINDREADER, :MUDSPORT, :POWERUPPUNCH, :TOXICSPIKES, :WATERSPORT
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        0.3
  s.weight        7.0
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Bubble Frog"
  s.pokedex_entry "It protects its skin by covering its body in delicate bubbles. Beneath its happy-go-lucky air, it keeps a watchful eye on its surroundings."
  s.generation    6
  s.evolves_into  :FROGADIER, :Level, 16
end

GameData::Species.define :FROGADIER do |s|
  s.name          "Frogadier"
  s.types         :WATER
  s.base_stats    hp: 54, attack: 63, defense: 52, speed: 97, sp_atk: 83, sp_def: 56
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :TORRENT
  s.hidden_abilities :PROTEAN
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :GROWL
    m.at 1, :BUBBLE
    m.at 5, :BUBBLE
    m.at 8, :QUICKATTACK
    m.at 10, :LICK
    m.at 14, :WATERPULSE
    m.at 19, :SMOKESCREEN
    m.at 23, :ROUND
    m.at 28, :FLING
    m.at 33, :SMACKDOWN
    m.at 40, :SUBSTITUTE
    m.at 45, :BOUNCE
    m.at 50, :DOUBLETEAM
    m.at 56, :HYDROPUMP
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BLIZZARD, :BOUNCE, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DIG, :DIVE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :GRASSKNOT, :GUNKSHOT, :HIDDENPOWER, :ICEBEAM, :ICEPUNCH, :ICYWIND, :LOWKICK, :MIMIC, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNATCH, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :TAUNT, :THIEF, :TOXIC, :UTURN, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        0.6
  s.weight        10.9
  s.color         :Blue
  s.shape         :Bipedal
  s.category      "Bubble Frog"
  s.pokedex_entry "It can throw bubble-covered pebbles with precise control, hitting empty cans up to a hundred feet away."
  s.generation    6
  s.evolves_into  :GRENINJA, :Level, 36
end

GameData::Species.define :GRENINJA do |s|
  s.name          "Greninja"
  s.types         :WATER, :DARK
  s.base_stats    hp: 72, attack: 95, defense: 67, speed: 122, sp_atk: 103, sp_def: 71
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :TORRENT
  s.hidden_abilities :PROTEAN
  s.moves do |m|
    m.at 0, :WATERSHURIKEN
    m.at 1, :NIGHTSLASH
    m.at 1, :HAZE
    m.at 1, :ROLEPLAY
    m.at 1, :MATBLOCK
    m.at 1, :POUND
    m.at 1, :GROWL
    m.at 1, :BUBBLE
    m.at 1, :QUICKATTACK
    m.at 5, :BUBBLE
    m.at 8, :QUICKATTACK
    m.at 10, :LICK
    m.at 14, :WATERPULSE
    m.at 19, :SMOKESCREEN
    m.at 23, :SHADOWSNEAK
    m.at 28, :SPIKES
    m.at 33, :FEINTATTACK
    m.at 42, :SUBSTITUTE
    m.at 49, :EXTRASENSORY
    m.at 56, :DOUBLETEAM
    m.at 68, :HYDROPUMP
    m.at 70, :HAZE
    m.at 77, :NIGHTSLASH
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BLIZZARD, :BOUNCE, :BRUTALSWING, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DIG, :DIVE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HIDDENPOWER, :HYDROCANNON, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :LOWKICK, :MIMIC, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNATCH, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :TAUNT, :THIEF, :TOXIC, :UTURN, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        1.5
  s.weight        40.0
  s.color         :Blue
  s.shape         :Bipedal
  s.category      "Ninja"
  s.pokedex_entry "It appears and vanishes with a ninja's grace. It toys with its enemies using swift movements, while slicing them with throwing stars of sharpest water."
  s.generation    6
end

GameData::Species.define :CLAUNCHER do |s|
  s.name          "Clauncher"
  s.types         :WATER
  s.base_stats    hp: 50, attack: 53, defense: 62, speed: 44, sp_atk: 58, sp_def: 63
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      66
  s.catch_rate    225
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :MEGALAUNCHER
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 1, :WATERGUN
    m.at 5, :VISEGRIP
    m.at 10, :FLAIL
    m.at 15, :AQUAJET
    m.at 20, :SMACKDOWN
    m.at 25, :HONECLAWS
    m.at 30, :WATERPULSE
    m.at 35, :SWORDSDANCE
    m.at 40, :AURASPHERE
    m.at 45, :BOUNCE
    m.at 50, :MUDDYWATER
    m.at 55, :CRABHAMMER
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :AURASPHERE, :BOUNCE, :CAPTIVATE, :CONFIDE, :CUT, :DIVE, :DOUBLETEAM, :DRAGONPULSE, :ENDURE, :FACADE, :FLASHCANNON, :FLIPTURN, :FRUSTRATION, :HELPINGHAND, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :IRONTAIL, :MIMIC, :MUDDYWATER, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWORDSDANCE, :TERRAINPULSE, :TOXIC, :UTURN, :VENOSHOCK, :WATERFALL, :WATERPULSE, :TERABLAST
  s.egg_moves     :AQUATAIL, :BUBBLEBEAM, :ENTRAINMENT
  s.egg_groups    :Water1, :Water3
  s.hatch_steps   3840
  s.height        0.5
  s.weight        8.3
  s.color         :Blue
  s.shape         :Insectoid
  s.category      "Water Gun"
  s.pokedex_entry "Through controlled expulsions of internal gas, it can expel water like a pistol shot. At close distances, it can shatter rock."
  s.generation    6
  s.evolves_into  :CLAWITZER, :Level, 37
end

GameData::Species.define :CLAWITZER do |s|
  s.name          "Clawitzer"
  s.types         :WATER
  s.base_stats    hp: 71, attack: 73, defense: 88, speed: 59, sp_atk: 120, sp_def: 89
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      100
  s.catch_rate    55
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :MEGALAUNCHER
  s.moves do |m|
    m.at 1, :DARKPULSE
    m.at 1, :DRAGONPULSE
    m.at 1, :HEALPULSE
    m.at 1, :SPLASH
    m.at 1, :WATERGUN
    m.at 1, :VISEGRIP
    m.at 1, :FLAIL
    m.at 15, :AQUAJET
    m.at 20, :SMACKDOWN
    m.at 25, :HONECLAWS
    m.at 30, :WATERPULSE
    m.at 35, :SWORDSDANCE
    m.at 42, :AURASPHERE
    m.at 49, :BOUNCE
    m.at 56, :MUDDYWATER
    m.at 63, :CRABHAMMER
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :AURASPHERE, :BOUNCE, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DIVE, :DOUBLETEAM, :DRAGONPULSE, :ENDURE, :FACADE, :FLASHCANNON, :FLIPTURN, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASERFOCUS, :LIQUIDATION, :MIMIC, :MUDDYWATER, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROUND, :SCALD, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWORDSDANCE, :TERRAINPULSE, :TOXIC, :UTURN, :VENOSHOCK, :WATERFALL, :WATERPULSE, :TERABLAST
  s.egg_groups    :Water1, :Water3
  s.hatch_steps   3840
  s.height        1.3
  s.weight        35.3
  s.color         :Blue
  s.shape         :Serpentine
  s.category      "Howitzer"
  s.pokedex_entry "By expelling water from the nozzle in the back of its claw, it can move at a speed of 60 knots."
  s.generation    6
end

GameData::Species.define :POPPLIO do |s|
  s.name          "Popplio"
  s.types         :WATER
  s.base_stats    hp: 50, attack: 54, defense: 54, speed: 40, sp_atk: 66, sp_def: 56
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      64
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :TORRENT
  s.hidden_abilities :LIQUIDVOICE
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :GROWL
    m.at 3, :WATERGUN
    m.at 6, :DISARMINGVOICE
    m.at 9, :AQUAJET
    m.at 12, :BABYDOLLEYES
    m.at 15, :ICYWIND
    m.at 18, :SING
    m.at 21, :BUBBLEBEAM
    m.at 24, :ENCORE
    m.at 27, :MISTYTERRAIN
    m.at 30, :HYPERVOICE
    m.at 33, :MOONBLAST
    m.at 36, :HYDROPUMP
  end
  s.tutor_moves   :ACROBATICS, :AMNESIA, :AQUATAIL, :ATTRACT, :BLIZZARD, :BRINE, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DIVE, :DOUBLETEAM, :DRAININGKISS, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FLIPTURN, :FRUSTRATION, :HAIL, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONTAIL, :MIMIC, :MISTYTERRAIN, :NATURALGIFT, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :TRIPLEAXEL, :UPROAR, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :WONDERROOM, :WORKUP, :TERABLAST
  s.egg_moves     :AQUARING, :LIFEDEW, :PERISHSONG
  s.egg_groups    :Water1, :Field
  s.hatch_steps   3840
  s.height        0.4
  s.weight        7.5
  s.color         :Blue
  s.shape         :Finned
  s.category      "Sea Lion"
  s.pokedex_entry "This Pokémon snorts body fluids from its nose, blowing balloons to smash into its foes. It's famous for being a hard worker."
  s.generation    7
  s.evolves_into  :BRIONNE, :Level, 17
end

GameData::Species.define :BRIONNE do |s|
  s.name          "Brionne"
  s.types         :WATER
  s.base_stats    hp: 60, attack: 69, defense: 69, speed: 50, sp_atk: 91, sp_def: 81
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      147
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :TORRENT
  s.hidden_abilities :LIQUIDVOICE
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 1, :DISARMINGVOICE
    m.at 9, :AQUAJET
    m.at 12, :BABYDOLLEYES
    m.at 15, :ICYWIND
    m.at 20, :SING
    m.at 25, :BUBBLEBEAM
    m.at 30, :ENCORE
    m.at 35, :MISTYTERRAIN
    m.at 40, :HYPERVOICE
    m.at 45, :MOONBLAST
    m.at 50, :HYDROPUMP
  end
  s.tutor_moves   :ACROBATICS, :AMNESIA, :AQUATAIL, :ATTRACT, :BLIZZARD, :BRINE, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DIVE, :DOUBLETEAM, :DRAININGKISS, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FLIPTURN, :FRUSTRATION, :HAIL, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONTAIL, :MIMIC, :MISTYTERRAIN, :NATURALGIFT, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :TRIPLEAXEL, :UPROAR, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :WONDERROOM, :WORKUP, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   3840
  s.height        0.6
  s.weight        17.5
  s.color         :Blue
  s.shape         :Finned
  s.category      "Pop Star"
  s.pokedex_entry "It gets excited when it sees a dance it doesn't know. This hard worker practices diligently until it can learn that dance."
  s.generation    7
  s.evolves_into  :PRIMARINA, :Level, 34
end

GameData::Species.define :PRIMARINA do |s|
  s.name          "Primarina"
  s.types         :WATER, :FAIRY
  s.base_stats    hp: 80, attack: 74, defense: 74, speed: 60, sp_atk: 126, sp_def: 116
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :TORRENT
  s.hidden_abilities :LIQUIDVOICE
  s.moves do |m|
    m.at 0, :SPARKLINGARIA
    m.at 1, :POUND
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 1, :DISARMINGVOICE
    m.at 9, :AQUAJET
    m.at 12, :BABYDOLLEYES
    m.at 15, :ICYWIND
    m.at 20, :SING
    m.at 25, :BUBBLEBEAM
    m.at 30, :ENCORE
    m.at 37, :MISTYTERRAIN
    m.at 44, :HYPERVOICE
    m.at 51, :MOONBLAST
    m.at 58, :HYDROPUMP
  end
  s.tutor_moves   :ACROBATICS, :AMNESIA, :AQUATAIL, :ATTRACT, :BLIZZARD, :BRINE, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DIVE, :DOUBLETEAM, :DRAININGKISS, :ECHOEDVOICE, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FLIPTURN, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HELPINGHAND, :HIDDENPOWER, :HYDROCANNON, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONTAIL, :LIGHTSCREEN, :LIQUIDATION, :MAGICCOAT, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SCALD, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :TRIPLEAXEL, :UPROAR, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :WONDERROOM, :WORKUP, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   3840
  s.height        1.8
  s.weight        44.0
  s.color         :Blue
  s.shape         :Finned
  s.category      "Soloist"
  s.pokedex_entry "It controls its water balloons with song. The melody is learned from others of its kind and is passed down from one generation to the next."
  s.generation    7
end

GameData::Species.define :WISHIWASHI do |s|
  s.name          "Wishiwashi"
  s.types         :WATER
  s.base_stats    hp: 45, attack: 20, defense: 20, speed: 40, sp_atk: 25, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      61
  s.catch_rate    60
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :SCHOOLING
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :GROWL
    m.at 4, :HELPINGHAND
    m.at 8, :BEATUP
    m.at 12, :BRINE
    m.at 16, :TEARFULLOOK
    m.at 20, :DIVE
    m.at 24, :SOAK
    m.at 28, :UPROAR
    m.at 32, :AQUATAIL
    m.at 36, :AQUARING
    m.at 40, :ENDEAVOR
    m.at 44, :HYDROPUMP
    m.at 48, :DOUBLEEDGE
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BEATUP, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COVET, :DIVE, :DOUBLETEAM, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FLIPTURN, :FRUSTRATION, :HAIL, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :IRONTAIL, :LIQUIDATION, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCALESHOT, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :UPROAR, :UTURN, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :MIST, :TAKEDOWN, :WATERPULSE
  s.egg_groups    :Water2
  s.hatch_steps   3840
  s.height        0.2
  s.weight        0.3
  s.color         :Blue
  s.shape         :Finned
  s.category      "Small Fry"
  s.pokedex_entry "It's awfully weak and notably tasty, so everyone is always out to get it. As it happens, anyone trying to bully it receives a painful lesson."
  s.generation    7
end

GameData::Species.define :DEWPIDER do |s|
  s.name          "Dewpider"
  s.types         :WATER, :BUG
  s.base_stats    hp: 38, attack: 40, defense: 52, speed: 27, sp_atk: 40, sp_def: 72
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      54
  s.catch_rate    200
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :WATERBUBBLE
  s.hidden_abilities :WATERABSORB
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :INFESTATION
    m.at 4, :BUGBITE
    m.at 8, :BITE
    m.at 12, :BUBBLEBEAM
    m.at 16, :AQUARING
    m.at 20, :HEADBUTT
    m.at 24, :CRUNCH
    m.at 28, :SOAK
    m.at 32, :ENTRAINMENT
    m.at 36, :LUNGE
    m.at 40, :LIQUIDATION
    m.at 44, :LEECHLIFE
    m.at 48, :MIRRORCOAT
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :CRUNCH, :DOUBLETEAM, :ENDURE, :FACADE, :FROSTBREATH, :FRUSTRATION, :GIGADRAIN, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :INFESTATION, :IRONDEFENSE, :LEECHLIFE, :LIQUIDATION, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SECRETPOWER, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :WATERFALL, :WATERPULSE, :WONDERROOM, :XSCISSOR, :TERABLAST
  s.egg_moves     :POWERSPLIT, :SPITUP, :STICKYWEB, :STOCKPILE
  s.egg_groups    :Water1, :Bug
  s.hatch_steps   3840
  s.height        0.3
  s.weight        4.0
  s.color         :Green
  s.shape         :HeadLegs
  s.category      "Water Bubble"
  s.pokedex_entry "When two Dewpider meet, they display their water bubbles to each other. Then the one with the smaller bubble gets out of the other's way."
  s.generation    7
  s.evolves_into  :ARAQUANID, :Level, 22
  s.wild_item_uncommon :MYSTICWATER
end

GameData::Species.define :ARAQUANID do |s|
  s.name          "Araquanid"
  s.types         :WATER, :BUG
  s.base_stats    hp: 68, attack: 70, defense: 92, speed: 42, sp_atk: 50, sp_def: 132
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      159
  s.catch_rate    100
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :WATERBUBBLE
  s.hidden_abilities :WATERABSORB
  s.moves do |m|
    m.at 1, :WIDEGUARD
    m.at 1, :WATERGUN
    m.at 1, :INFESTATION
    m.at 1, :BUGBITE
    m.at 1, :BITE
    m.at 12, :BUBBLEBEAM
    m.at 16, :AQUARING
    m.at 20, :HEADBUTT
    m.at 26, :CRUNCH
    m.at 32, :SOAK
    m.at 38, :ENTRAINMENT
    m.at 44, :LUNGE
    m.at 50, :LIQUIDATION
    m.at 56, :LEECHLIFE
    m.at 62, :MIRRORCOAT
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :CRUNCH, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FROSTBREATH, :FRUSTRATION, :GIGADRAIN, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :INFESTATION, :IRONDEFENSE, :LASERFOCUS, :LEECHLIFE, :LIQUIDATION, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :WATERFALL, :WATERPULSE, :WONDERROOM, :XSCISSOR, :TERABLAST
  s.egg_groups    :Water1, :Bug
  s.hatch_steps   3840
  s.height        1.8
  s.weight        82.0
  s.color         :Green
  s.shape         :Insectoid
  s.category      "Water Bubble"
  s.pokedex_entry "It delivers headbutts with the water bubble on its head. Small Pokémon get sucked into the bubble, where they drown."
  s.generation    7
  s.wild_item_uncommon :MYSTICWATER
end

GameData::Species.define :PYUKUMUKU do |s|
  s.name          "Pyukumuku"
  s.types         :WATER
  s.base_stats    hp: 55, attack: 60, defense: 130, speed: 5, sp_atk: 30, sp_def: 130
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      144
  s.catch_rate    60
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :INNARDSOUT
  s.hidden_abilities :UNAWARE
  s.moves do |m|
    m.at 1, :BATONPASS
    m.at 1, :HARDEN
    m.at 5, :HELPINGHAND
    m.at 10, :TAUNT
    m.at 15, :SAFEGUARD
    m.at 20, :COUNTER
    m.at 25, :PURIFY
    m.at 30, :CURSE
    m.at 35, :GASTROACID
    m.at 40, :PAINSPLIT
    m.at 45, :RECOVER
    m.at 50, :SOAK
    m.at 55, :TOXIC
    m.at 60, :MEMENTO
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :BLOCK, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDURE, :GASTROACID, :HAIL, :HELPINGHAND, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PROTECT, :PSYCHUP, :QUASH, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SPITE, :SUBSTITUTE, :SWAGGER, :TAUNT, :TOXIC, :VENOMDRENCH, :TERABLAST
  s.egg_moves     :MIRRORCOAT, :SPITE, :SWAGGER, :TICKLE
  s.egg_groups    :Water1
  s.hatch_steps   3840
  s.height        0.3
  s.weight        1.2
  s.color         :Black
  s.shape         :Serpentine
  s.category      "Sea Cucumber"
  s.pokedex_entry "It lives in shallow seas, such as areas near a beach. It can eject its internal organs, which it uses to engulf its prey or battle enemies."
  s.generation    7
end

GameData::Species.define :BRUXISH do |s|
  s.name          "Bruxish"
  s.types         :WATER, :PSYCHIC
  s.base_stats    hp: 68, attack: 105, defense: 70, speed: 92, sp_atk: 70, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      166
  s.catch_rate    80
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :DAZZLING, :STRONGJAW
  s.hidden_abilities :WONDERSKIN
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 4, :ASTONISH
    m.at 9, :CONFUSION
    m.at 12, :BITE
    m.at 17, :AQUAJET
    m.at 20, :DISABLE
    m.at 25, :PSYWAVE
    m.at 28, :CRUNCH
    m.at 33, :AQUATAIL
    m.at 36, :SCREECH
    m.at 41, :PSYCHICFANGS
    m.at 44, :SYNCHRONOISE
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ALLYSWITCH, :AQUATAIL, :ATTRACT, :BLIZZARD, :BULKUP, :CALMMIND, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :FACADE, :FLING, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :ICEBEAM, :IRONTAIL, :LIGHTSCREEN, :LIQUIDATION, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PROTECT, :PSYCHIC, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWORDSDANCE, :TAUNT, :TELEKINESIS, :TORMENT, :TOXIC, :TRICKROOM, :UPROAR, :VENOSHOCK, :WATERFALL, :WATERPULSE, :WONDERROOM, :TERABLAST
  s.egg_moves     :ICEFANG, :POISONFANG, :RAGE, :WATERPULSE
  s.egg_groups    :Water2
  s.hatch_steps   3840
  s.height        0.9
  s.weight        19.0
  s.color         :Pink
  s.shape         :Finned
  s.category      "Gnash Teeth"
  s.pokedex_entry "When it unleashes its psychic power from the protuberance on its head, the grating sound of grinding teeth echoes through the area."
  s.generation    7
  s.wild_item_uncommon :RAZORFANG
end

GameData::Species.define :TAPUFINI do |s|
  s.name          "Tapu Fini"
  s.types         :WATER, :FAIRY
  s.base_stats    hp: 70, attack: 75, defense: 115, speed: 85, sp_atk: 95, sp_def: 130
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    3
  s.happiness     50
  s.evs           sp_defense: 3
  s.abilities     :MISTYSURGE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :DISARMINGVOICE
    m.at 1, :WATERGUN
    m.at 5, :WITHDRAW
    m.at 10, :MIST
    m.at 10, :HAZE
    m.at 15, :AQUARING
    m.at 20, :WATERPULSE
    m.at 25, :BRINE
    m.at 30, :DEFOG
    m.at 35, :HEALPULSE
    m.at 40, :SURF
    m.at 45, :MUDDYWATER
    m.at 50, :MEANLOOK
    m.at 55, :NATURESMADNESS
    m.at 60, :MOONBLAST
    m.at 65, :HYDROPUMP
    m.at 70, :SOAK
    m.at 75, :MISTYTERRAIN
  end
  s.tutor_moves   :BLIZZARD, :BRINE, :CALMMIND, :CONFIDE, :DAZZLINGGLEAM, :DEFOG, :DIVE, :DOUBLETEAM, :DRAININGKISS, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONDEFENSE, :KNOCKOFF, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :MISTYTERRAIN, :MUDDYWATER, :NATURALGIFT, :NATUREPOWER, :PLAYROUGH, :PROTECT, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SURF, :SWAGGER, :TAUNT, :TELEKINESIS, :TORMENT, :TOXIC, :TRICK, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WONDERROOM, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   3840
  s.height        1.3
  s.weight        21.2
  s.color         :Purple
  s.shape         :HeadArms
  s.category      "Land Spirit"
  s.pokedex_entry "The dense fog it creates brings the downfall and destruction of its confused enemies. Ocean currents are the source of its energy."
  s.generation    7
  s.flags         :Legendary
end

GameData::Species.define :SOBBLE do |s|
  s.name          "Sobble"
  s.types         :WATER
  s.base_stats    hp: 50, attack: 40, defense: 40, speed: 70, sp_atk: 70, sp_def: 40
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 1, speed: 1
  s.abilities     :TORRENT
  s.hidden_abilities :SNIPER
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :GROWL
    m.at 6, :WATERGUN
    m.at 8, :BIND
    m.at 12, :WATERPULSE
    m.at 17, :TEARFULLOOK
    m.at 20, :SUCKERPUNCH
    m.at 24, :UTURN
    m.at 28, :LIQUIDATION
    m.at 32, :SOAK
    m.at 36, :RAINDANCE
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :BOUNCE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :LIGHTSCREEN, :LIQUIDATION, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TOXIC, :UTURN, :WATERPLEDGE, :WEATHERBALL, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_moves     :AQUAJET, :AQUARING, :DOUBLETEAM, :FELLSTINGER, :HAZE, :ICESHARD, :MIST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        0.3
  s.weight        4.0
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Water Lizard"
  s.pokedex_entry "When scared, this Pokémon cries. Its tears pack the chemical punch of 100 onions, and attackers won't be able to resist weeping."
  s.generation    8
  s.evolves_into  :DRIZZILE, :Level, 16
end

GameData::Species.define :DRIZZILE do |s|
  s.name          "Drizzile"
  s.types         :WATER
  s.base_stats    hp: 65, attack: 60, defense: 55, speed: 90, sp_atk: 95, sp_def: 55
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      147
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :TORRENT
  s.hidden_abilities :SNIPER
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 1, :BIND
    m.at 12, :WATERPULSE
    m.at 19, :TEARFULLOOK
    m.at 24, :SUCKERPUNCH
    m.at 30, :UTURN
    m.at 36, :LIQUIDATION
    m.at 42, :SOAK
    m.at 48, :RAINDANCE
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :BOUNCE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :HIDDENPOWER, :LIGHTSCREEN, :LIQUIDATION, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TOXIC, :UTURN, :WATERPLEDGE, :WEATHERBALL, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        0.7
  s.weight        11.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Water Lizard"
  s.pokedex_entry "A clever combatant, this Pokémon battles using water balloons created with moisture secreted from its palms."
  s.generation    8
  s.evolves_into  :INTELEON, :Level, 35
end

GameData::Species.define :INTELEON do |s|
  s.name          "Inteleon"
  s.types         :WATER
  s.base_stats    hp: 70, attack: 85, defense: 65, speed: 120, sp_atk: 125, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :TORRENT
  s.hidden_abilities :SNIPER
  s.moves do |m|
    m.at 0, :SNIPESHOT
    m.at 1, :ACROBATICS
    m.at 1, :POUND
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 1, :BIND
    m.at 12, :WATERPULSE
    m.at 19, :TEARFULLOOK
    m.at 24, :SUCKERPUNCH
    m.at 30, :UTURN
    m.at 38, :LIQUIDATION
    m.at 46, :SOAK
    m.at 54, :RAINDANCE
    m.at 62, :HYDROPUMP
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :AIRSLASH, :ATTRACT, :BATONPASS, :BLIZZARD, :BOUNCE, :BREAKINGSWIPE, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FLING, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYDROCANNON, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :LIGHTSCREEN, :LIQUIDATION, :METRONOME, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SCALESHOT, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TOXIC, :UTURN, :WATERFALL, :WATERPLEDGE, :WEATHERBALL, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        1.9
  s.weight        45.2
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Secret Agent"
  s.pokedex_entry "It has many hidden capabilities, such as fingertips that can shoot water and a membrane on its back that it can use to glide through the air."
  s.generation    8
end

GameData::Species.define :CHEWTLE do |s|
  s.name          "Chewtle"
  s.types         :WATER
  s.base_stats    hp: 50, attack: 64, defense: 50, speed: 44, sp_atk: 38, sp_def: 38
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      57
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :STRONGJAW, :SHELLARMOR
  s.hidden_abilities :SWIFTSWIM
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 7, :BITE
    m.at 14, :PROTECT
    m.at 21, :HEADBUTT
    m.at 28, :COUNTER
    m.at 35, :JAWLOCK
    m.at 42, :LIQUIDATION
    m.at 49, :BODYSLAM
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :HYDROPUMP, :ICEFANG, :LIQUIDATION, :MIMIC, :MUDSHOT, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVENGE, :ROUND, :SCALESHOT, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :DRAGONTAIL, :GASTROACID, :SKULLBASH
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        0.3
  s.weight        8.5
  s.color         :Green
  s.shape         :Quadruped
  s.category      "Snapping"
  s.pokedex_entry "It starts off battles by attacking with its rock-hard horn, but as soon as the opponent flinches, this Pokémon bites down and never lets go."
  s.generation    8
  s.evolves_into  :DREDNAW, :Level, 22
end

GameData::Species.define :DREDNAW do |s|
  s.name          "Drednaw"
  s.types         :WATER, :ROCK
  s.base_stats    hp: 90, attack: 115, defense: 90, speed: 74, sp_atk: 48, sp_def: 68
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      170
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :STRONGJAW, :SHELLARMOR
  s.hidden_abilities :SWIFTSWIM
  s.moves do |m|
    m.at 0, :ROCKTOMB
    m.at 1, :RAZORSHELL
    m.at 1, :CRUNCH
    m.at 1, :ROCKPOLISH
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 1, :BITE
    m.at 1, :PROTECT
    m.at 21, :HEADBUTT
    m.at 30, :COUNTER
    m.at 39, :JAWLOCK
    m.at 48, :LIQUIDATION
    m.at 57, :BODYSLAM
    m.at 66, :HEADSMASH
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DIG, :DIVE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FALSESWIPE, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HIGHHORSEPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEFANG, :IRONDEFENSE, :IRONTAIL, :LIQUIDATION, :MEGAHORN, :METEORBEAM, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :REVENGE, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCALD, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :THROATCHOP, :TOXIC, :WATERFALL, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Monster, :Water1
  s.hatch_steps   5120
  s.height        1.0
  s.weight        115.5
  s.color         :Green
  s.shape         :Quadruped
  s.category      "Bite"
  s.pokedex_entry "With jaws that can shear through steel rods, this highly aggressive Pokémon chomps down on its unfortunate prey."
  s.generation    8
end

GameData::Species.define :ARROKUDA do |s|
  s.name          "Arrokuda"
  s.types         :WATER
  s.base_stats    hp: 41, attack: 63, defense: 40, speed: 66, sp_atk: 40, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      56
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :SWIFTSWIM
  s.hidden_abilities :PROPELLERTAIL
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :AQUAJET
    m.at 6, :FURYATTACK
    m.at 12, :BITE
    m.at 18, :AGILITY
    m.at 24, :DIVE
    m.at 30, :LASERFOCUS
    m.at 36, :CRUNCH
    m.at 42, :LIQUIDATION
    m.at 48, :DOUBLEEDGE
  end
  s.tutor_moves   :AGILITY, :ASSURANCE, :ATTRACT, :BOUNCE, :BRICKBREAK, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CRUNCH, :DIVE, :DOUBLETEAM, :DRILLRUN, :ENDURE, :FACADE, :FOCUSENERGY, :FRUSTRATION, :HIDDENPOWER, :ICEFANG, :LIQUIDATION, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCALESHOT, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :THROATCHOP, :TOXIC, :WATERFALL, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :ACUPRESSURE, :NIGHTSLASH, :SLASH, :THRASH
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        0.5
  s.weight        1.0
  s.color         :Brown
  s.shape         :Finned
  s.category      "Rush"
  s.pokedex_entry "If it sees any movement around it, this Pokémon charges for it straightaway, leading with its sharply pointed jaw. It's very proud of that jaw."
  s.generation    8
  s.evolves_into  :BARRASKEWDA, :Level, 26
end

GameData::Species.define :BARRASKEWDA do |s|
  s.name          "Barraskewda"
  s.types         :WATER
  s.base_stats    hp: 61, attack: 123, defense: 60, speed: 136, sp_atk: 60, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      172
  s.catch_rate    60
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :SWIFTSWIM
  s.hidden_abilities :PROPELLERTAIL
  s.moves do |m|
    m.at 1, :THROATCHOP
    m.at 1, :PECK
    m.at 1, :AQUAJET
    m.at 1, :FURYATTACK
    m.at 1, :BITE
    m.at 18, :AGILITY
    m.at 24, :DIVE
    m.at 32, :LASERFOCUS
    m.at 40, :CRUNCH
    m.at 48, :LIQUIDATION
    m.at 56, :DOUBLEEDGE
  end
  s.tutor_moves   :AGILITY, :ASSURANCE, :ATTRACT, :BOUNCE, :BRICKBREAK, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CRUNCH, :DIVE, :DOUBLETEAM, :DRILLRUN, :ENDURE, :FACADE, :FLIPTURN, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEFANG, :LIQUIDATION, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :THROATCHOP, :TOXIC, :WATERFALL, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        1.3
  s.weight        30.0
  s.color         :Brown
  s.shape         :Finned
  s.category      "Skewer"
  s.pokedex_entry "This Pokémon has a jaw that's as sharp as a spear and as strong as steel. Apparently Barraskewda's flesh is surprisingly tasty, too."
  s.generation    8
end

GameData::Species.define :DRACOVISH do |s|
  s.name          "Dracovish"
  s.types         :WATER, :DRAGON
  s.base_stats    hp: 90, attack: 90, defense: 100, speed: 75, sp_atk: 70, sp_def: 80
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      177
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :WATERABSORB, :STRONGJAW
  s.hidden_abilities :SANDRUSH
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 7, :PROTECT
    m.at 14, :BRUTALSWING
    m.at 21, :ANCIENTPOWER
    m.at 28, :BITE
    m.at 35, :DRAGONBREATH
    m.at 42, :STOMP
    m.at 49, :SUPERFANG
    m.at 56, :CRUNCH
    m.at 63, :FISHIOUSREND
    m.at 70, :DRAGONPULSE
    m.at 77, :DRAGONRUSH
  end
  s.tutor_moves   :BODYSLAM, :BRINE, :BRUTALSWING, :BULLDOZE, :CONFIDE, :CRUNCH, :DIVE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONPULSE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEFANG, :IRONHEAD, :LEECHLIFE, :LIQUIDATION, :LOWKICK, :MEGAKICK, :METEORBEAM, :MIMIC, :NATURALGIFT, :OUTRAGE, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :WATERFALL, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   8960
  s.height        2.3
  s.weight        215.0
  s.color         :Green
  s.shape         :HeadLegs
  s.category      "Fossil"
  s.pokedex_entry "Powerful legs and jaws made it the apex predator of its time. Its own overhunting of its prey was what drove it to extinction."
  s.generation    8
end

GameData::Species.define :ARCTOVISH do |s|
  s.name          "Arctovish"
  s.types         :WATER, :ICE
  s.base_stats    hp: 90, attack: 90, defense: 100, speed: 55, sp_atk: 80, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      177
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :WATERABSORB, :ICEBODY
  s.hidden_abilities :SLUSHRUSH
  s.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 1, :WATERGUN
    m.at 7, :PROTECT
    m.at 14, :ICYWIND
    m.at 21, :ANCIENTPOWER
    m.at 28, :BITE
    m.at 35, :AURORAVEIL
    m.at 42, :FREEZEDRY
    m.at 49, :SUPERFANG
    m.at 56, :CRUNCH
    m.at 63, :FISHIOUSREND
    m.at 70, :ICICLECRASH
    m.at 77, :BLIZZARD
  end
  s.tutor_moves   :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRINE, :CONFIDE, :CRUNCH, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :LIQUIDATION, :METEORBEAM, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STONEEDGE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :WATERFALL, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   8960
  s.height        2.0
  s.weight        175.0
  s.color         :Blue
  s.shape         :Finned
  s.category      "Fossil"
  s.pokedex_entry "Though it's able to capture prey by freezing its surroundings, it has trouble eating the prey afterward because its mouth is on top of its head."
  s.generation    8
end

