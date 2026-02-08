#===============================================================================
# Shattered Crowns - Gen9 normal Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :WYRDEER do |s|
  s.name          "Wyrdeer"
  s.types         :NORMAL, :PSYCHIC
  s.base_stats    hp: 103, attack: 105, defense: 72, speed: 65, sp_atk: 105, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      263
  s.catch_rate    45
  s.happiness     70
  s.evs           attack: 1, sp_attack: 1
  s.abilities     :INTIMIDATE, :FRISK
  s.hidden_abilities :SAPSIPPER
  s.moves do |m|
    m.at 0, :PSYSHIELDBASH
    m.at 1, :TACKLE
    m.at 3, :LEER
    m.at 7, :ASTONISH
    m.at 10, :HYPNOSIS
    m.at 13, :STOMP
    m.at 16, :SANDATTACK
    m.at 21, :TAKEDOWN
    m.at 23, :CONFUSERAY
    m.at 27, :CALMMIND
    m.at 32, :ROLEPLAY
    m.at 37, :ZENHEADBUTT
    m.at 49, :IMPRISON
    m.at 55, :DOUBLEEDGE
    m.at 62, :MEGAHORN
  end
  s.tutor_moves   :AGILITY, :BODYSLAM, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFUSERAY, :CURSE, :DIG, :DOUBLEEDGE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FUTURESIGHT, :GIGAIMPACT, :GRAVITY, :HELPINGHAND, :HIGHHORSEPOWER, :HYPERBEAM, :IMPRISON, :LIGHTSCREEN, :LUNGE, :PROTECT, :PSYBEAM, :PSYCHIC, :PSYCHICNOISE, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :ROAR, :SCARYFACE, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :SOLARBEAM, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TAKEDOWN, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRAILBLAZE, :TRICK, :TRICKROOM, :UPROAR, :WILDCHARGE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5355
  s.height        1.8
  s.weight        95.1
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Big Horn"
  s.pokedex_entry "The black orbs shine with an uncanny light when the Pokémon is erecting invisible barriers. The fur shed from its beard retains heat well and is a highly useful material for winter clothing"
  s.generation    8
end

GameData::Species.define :LECHONK do |s|
  s.name          "Lechonk"
  s.types         :NORMAL
  s.base_stats    hp: 54, attack: 45, defense: 40, speed: 35, sp_atk: 35, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      51
  s.catch_rate    255
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :AROMAVEIL, :GLUTTONY
  s.hidden_abilities :THICKFAT
  s.moves do |m|
    m.at 1, :TAILWHIP
    m.at 1, :TACKLE
    m.at 5, :DISARMINGVOICE
    m.at 8, :ECHOEDVOICE
    m.at 12, :MUDSHOT
    m.at 15, :COVET
    m.at 17, :DIG
    m.at 21, :HEADBUTT
    m.at 24, :YAWN
    m.at 27, :TAKEDOWN
    m.at 30, :WORKUP
    m.at 32, :UPROAR
    m.at 35, :DOUBLEEDGE
  end
  s.tutor_moves   :BODYSLAM, :BULLDOZE, :BULLETSEED, :CHILLINGWATER, :CURSE, :DIG, :DISARMINGVOICE, :DOUBLEEDGE, :ENDEAVOR, :ENDURE, :FACADE, :HELPINGHAND, :HYPERVOICE, :IRONHEAD, :MUDSHOT, :MUDSLAP, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :SEEDBOMB, :SLEEPTALK, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :TAKEDOWN, :THIEF, :TRAILBLAZE, :UPROAR, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ENDEAVOR, :SPITUP, :STOCKPILE, :STUFFCHEEKS, :SWALLOW
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.5
  s.weight        10.2
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Hog"
  s.pokedex_entry "It searches for food all day. It possesses a keen sense of smell but doesn’t use it for anything other than foraging."
  s.generation    9
  s.evolves_into  :OINKOLOGNE, :Level, 18
end

GameData::Species.define :OINKOLOGNE do |s|
  s.name          "Oinkologne"
  s.types         :NORMAL
  s.base_stats    hp: 110, attack: 100, defense: 75, speed: 65, sp_atk: 59, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      171
  s.catch_rate    100
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :LINGERINGAROMA, :GLUTTONY
  s.hidden_abilities :THICKFAT
  s.moves do |m|
    m.at 1, :TAILWHIP
    m.at 1, :TACKLE
    m.at 5, :DISARMINGVOICE
    m.at 8, :ECHOEDVOICE
    m.at 12, :MUDSHOT
    m.at 15, :COVET
    m.at 17, :DIG
    m.at 23, :HEADBUTT
    m.at 26, :TAKEDOWN
    m.at 27, :YAWN
    m.at 34, :WORKUP
    m.at 38, :UPROAR
    m.at 42, :DOUBLEEDGE
    m.at 48, :EARTHPOWER
    m.at 54, :BELCH
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BULLDOZE, :BULLETSEED, :CHILLINGWATER, :CURSE, :DIG, :DISARMINGVOICE, :DOUBLEEDGE, :EARTHPOWER, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :GIGAIMPACT, :HELPINGHAND, :HIGHHORSEPOWER, :HYPERBEAM, :HYPERVOICE, :IRONHEAD, :LASHOUT, :MUDSHOT, :MUDSLAP, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :SEEDBOMB, :SLEEPTALK, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :TAKEDOWN, :THIEF, :TRAILBLAZE, :UPROAR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        1.0
  s.weight        120.0
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Hog"
  s.pokedex_entry "It entrances female Pokémon with the sweet, alluring scent that wafts from all over its body."
  s.generation    9
end

GameData::Species.define :TANDEMAUS do |s|
  s.name          "Tandemaus"
  s.types         :NORMAL
  s.base_stats    hp: 50, attack: 50, defense: 45, speed: 75, sp_atk: 40, sp_def: 45
  s.gender_ratio  :Genderless
  s.growth_rate   :Fast
  s.base_exp      61
  s.catch_rate    150
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :RUNAWAY, :PICKUP
  s.hidden_abilities :OWNTEMPO
  s.moves do |m|
    m.at 1, :BABYDOLLEYES
    m.at 1, :POUND
    m.at 5, :ECHOEDVOICE
    m.at 8, :HELPINGHAND
    m.at 11, :SUPERFANG
    m.at 14, :DOUBLEHIT
    m.at 18, :BULLETSEED
    m.at 22, :ENCORE
    m.at 26, :PLAYROUGH
    m.at 30, :HYPERVOICE
    m.at 33, :CHARM
    m.at 37, :BEATUP
    m.at 41, :COPYCAT
    m.at 46, :POPULATIONBOMB
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :BATONPASS, :BULLETSEED, :CHARM, :CRUNCH, :DIG, :DOUBLEEDGE, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :GRASSKNOT, :HELPINGHAND, :HYPERVOICE, :LOWKICK, :LOWSWEEP, :MUDSHOT, :MUDSLAP, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :SEEDBOMB, :SHADOWCLAW, :SLEEPTALK, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWIFT, :TAKEDOWN, :TAUNT, :THIEF, :THUNDERWAVE, :UTURN, :WATERPULSE, :TERABLAST
  s.egg_moves     :AFTERYOU, :BATONPASS, :BITE, :FEINT, :SWITCHEROO, :TICKLE
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   2560
  s.height        0.3
  s.weight        1.8
  s.color         :White
  s.shape         :MultiBody
  s.habitat       :Urban
  s.category      "Couple"
  s.pokedex_entry "Exhibiting great teamwork, they use their incisors to cut pieces out of any material that might be useful for a nest, then make off with them."
  s.generation    9
  s.evolves_into  :MAUSHOLD, :Level, 25
end

GameData::Species.define :MAUSHOLD do |s|
  s.name          "Maushold"
  s.types         :NORMAL
  s.base_stats    hp: 74, attack: 75, defense: 70, speed: 111, sp_atk: 65, sp_def: 75
  s.gender_ratio  :Genderless
  s.growth_rate   :Fast
  s.base_exp      165
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :FRIENDGUARD, :CHEEKPOUCH
  s.hidden_abilities :TECHNICIAN
  s.moves do |m|
    m.at 1, :TIDYUP
    m.at 1, :POUND
    m.at 1, :FOLLOWME
    m.at 1, :BABYDOLLEYES
    m.at 5, :ECHOEDVOICE
    m.at 8, :HELPINGHAND
    m.at 11, :SUPERFANG
    m.at 14, :DOUBLEHIT
    m.at 18, :BULLETSEED
    m.at 22, :ENCORE
    m.at 29, :PLAYROUGH
    m.at 33, :HYPERVOICE
    m.at 37, :CHARM
    m.at 41, :BEATUP
    m.at 46, :COPYCAT
    m.at 53, :POPULATIONBOMB
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :BATONPASS, :BULLETSEED, :CHARM, :CHILLINGWATER, :CRUNCH, :DIG, :DOUBLEEDGE, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HYPERBEAM, :HYPERVOICE, :LOWKICK, :LOWSWEEP, :MUDSHOT, :MUDSLAP, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :SEEDBOMB, :SHADOWCLAW, :SLEEPTALK, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWIFT, :TAKEDOWN, :TAUNT, :THIEF, :THUNDERWAVE, :TRAILBLAZE, :UTURN, :WATERPULSE, :TERABLAST
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   2560
  s.height        0.3
  s.weight        2.8
  s.color         :White
  s.shape         :MultiBody
  s.habitat       :Urban
  s.category      "Family"
  s.pokedex_entry "They build huge nests with many rooms that are used for different purposes, such as eating and sleeping."
  s.generation    9
end

GameData::Species.define :SQUAWKABILLY do |s|
  s.name          "Squawkabilly"
  s.types         :NORMAL, :FLYING
  s.base_stats    hp: 82, attack: 96, defense: 51, speed: 92, sp_atk: 45, sp_def: 51
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      146
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :INTIMIDATE, :HUSTLE
  s.hidden_abilities :GUTS
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :PECK
    m.at 1, :MIMIC
    m.at 6, :QUICKATTACK
    m.at 10, :TORMENT
    m.at 13, :AERIALACE
    m.at 17, :FURYATTACK
    m.at 20, :TAUNT
    m.at 24, :UPROAR
    m.at 27, :COPYCAT
    m.at 30, :FLY
    m.at 34, :FACADE
    m.at 38, :SWAGGER
    m.at 42, :BRAVEBIRD
    m.at 47, :ROOST
    m.at 52, :REVERSAL
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :AIRSLASH, :BRAVEBIRD, :DOUBLEEDGE, :DUALWINGBEAT, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FEATHERDANCE, :FLY, :FOULPLAY, :GIGAIMPACT, :HEATWAVE, :HELPINGHAND, :HURRICANE, :HYPERBEAM, :HYPERVOICE, :LASHOUT, :POUNCE, :PROTECT, :REST, :REVERSAL, :SCARYFACE, :SLEEPTALK, :SUBSTITUTE, :SUNNYDAY, :TAILWIND, :TAKEDOWN, :TAUNT, :THIEF, :UPROAR, :UTURN, :TERABLAST
  s.egg_moves     :DOUBLEEDGE, :FINALGAMBIT, :FLATTER, :PARTINGSHOT
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.6
  s.weight        2.4
  s.color         :Green
  s.shape         :Winged
  s.habitat       :Urban
  s.category      "Parrot"
  s.pokedex_entry "These Pokémon prefer to live in cities. They form flocks based on the color of their feathers, and they fight over territory."
  s.generation    9
end

GameData::Species.define :FARIGIRAF do |s|
  s.name          "Farigiraf"
  s.types         :NORMAL, :PSYCHIC
  s.base_stats    hp: 120, attack: 90, defense: 70, speed: 60, sp_atk: 110, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      260
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 3
  s.abilities     :CUDCHEW, :ARMORTAIL
  s.hidden_abilities :SAPSIPPER
  s.moves do |m|
    m.at 1, :POWERSWAP
    m.at 1, :GUARDSWAP
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :ASTONISH
    m.at 5, :CONFUSION
    m.at 10, :ASSURANCE
    m.at 14, :STOMP
    m.at 19, :PSYBEAM
    m.at 23, :AGILITY
    m.at 28, :DOUBLEHIT
    m.at 32, :TWINBEAM
    m.at 37, :CRUNCH
    m.at 41, :BATONPASS
    m.at 46, :NASTYPLOT
    m.at 50, :PSYCHIC
  end
  s.tutor_moves   :AGILITY, :AMNESIA, :BATONPASS, :BODYSLAM, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFUSERAY, :CRUNCH, :CURSE, :DAZZLINGGLEAM, :DOUBLEEDGE, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FOULPLAY, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HELPINGHAND, :HIGHHORSEPOWER, :HYPERBEAM, :HYPERVOICE, :IMPRISON, :IRONHEAD, :LIGHTSCREEN, :LOWKICK, :NASTYPLOT, :NIGHTSHADE, :PROTECT, :PSYBEAM, :PSYCHIC, :PSYCHICFANGS, :PSYCHICNOISE, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :ROAR, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :STOMPINGTANTRUM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TAKEDOWN, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRAILBLAZE, :TRICK, :TRICKROOM, :UPROAR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        3.2
  s.weight        160.0
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Long Neck"
  s.pokedex_entry "Now that the brain waves from the head and tail are synced up, the psychic power of this Pokémon is 10 times stronger than Girafarig’s."
  s.generation    9
end

GameData::Species.define :DUDUNSPARCE do |s|
  s.name          "Dudunsparce"
  s.types         :NORMAL
  s.base_stats    hp: 125, attack: 100, defense: 80, speed: 55, sp_atk: 85, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      182
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
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
    m.at 32, :HYPERDRILL
    m.at 36, :ROOST
    m.at 40, :DRAGONRUSH
    m.at 44, :COIL
    m.at 48, :DOUBLEEDGE
    m.at 52, :ENDEAVOR
    m.at 56, :HURRICANE
    m.at 62, :BOOMBURST
  end
  s.tutor_moves   :AGILITY, :AIRSLASH, :AMNESIA, :BATONPASS, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BULLDOZE, :CALMMIND, :CHILLINGWATER, :CURSE, :DIG, :DOUBLEEDGE, :DRAGONTAIL, :DRILLRUN, :DUALWINGBEAT, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :GIGAIMPACT, :GYROBALL, :HEAVYSLAM, :HELPINGHAND, :HEX, :HURRICANE, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICESPINNER, :LUNGE, :MUDSHOT, :MUDSLAP, :OUTRAGE, :PAINSPLIT, :POISONJAB, :POISONTAIL, :POUNCE, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCALESHOT, :SCARYFACE, :SHADOWBALL, :SKITTERSMACK, :SLEEPTALK, :SMARTSTRIKE, :SOLARBEAM, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :TAILWIND, :TAKEDOWN, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :TOXIC, :UPROAR, :WILDCHARGE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        3.6
  s.weight        39.2
  s.color         :Yellow
  s.shape         :Serpentine
  s.habitat       :Cave
  s.category      "Land Snake"
  s.pokedex_entry "This Pokémon uses its hard tail to make its nest by boring holes into bedrock deep underground. The nest can reach lengths of over six miles."
  s.generation    9
end

GameData::Species.define :TERAPAGOS do |s|
  s.name          "Terapagos"
  s.types         :NORMAL
  s.base_stats    hp: 90, attack: 65, defense: 85, speed: 60, sp_atk: 65, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      90
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :TERASHIFT
  s.moves do |m|
    m.at 1, :WITHDRAW
    m.at 1, :TRIATTACK
    m.at 1, :RAPIDSPIN
    m.at 10, :ANCIENTPOWER
    m.at 20, :HEADBUTT
    m.at 30, :PROTECT
    m.at 40, :EARTHPOWER
    m.at 50, :HEAVYSLAM
    m.at 60, :TERASTARSTORM
    m.at 70, :DOUBLEEDGE
    m.at 80, :ROCKPOLISH
    m.at 90, :GYROBALL
  end
  s.tutor_moves   :AURASPHERE, :BODYPRESS, :BODYSLAM, :BUGBUZZ, :CALMMIND, :CRUNCH, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLEEDGE, :DRAGONPULSE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FLAMETHROWER, :FLAREBLITZ, :FLASHCANNON, :GIGAIMPACT, :GRAVITY, :GYROBALL, :HEATCRASH, :HEAVYSLAM, :HYPERBEAM, :ICEBEAM, :ICESPINNER, :IRONHEAD, :METEORBEAM, :POWERGEM, :PROTECT, :RAINDANCE, :REST, :ROAR, :ROCKSLIDE, :SCORCHINGSANDS, :SLEEPTALK, :SOLARBEAM, :STEALTHROCK, :STONEEDGE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SUPERCELLSLAM, :SURF, :TAKEDOWN, :THUNDER, :THUNDERBOLT, :TOXIC, :WATERPULSE, :WEATHERBALL, :WILDCHARGE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        0.2
  s.weight        6.5
  s.color         :Blue
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Tera"
  s.pokedex_entry "Terapagos protects itself using its power to transform energy into hard crystals. This Pokémon is the source of the Terastal phenomenon."
  s.generation    9
  s.flags         :Legendary, :TeraType_STELLAR
end

