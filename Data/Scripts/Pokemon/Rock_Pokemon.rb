#===============================================================================
# Shattered Crowns - Rock Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :GEODUDE do |s|
  s.name          "Geodude"
  s.types         :ROCK, :GROUND
  s.base_stats    hp: 40, attack: 80, defense: 100, speed: 20, sp_atk: 30, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      60
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :ROCKHEAD, :STURDY
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :DEFENSECURL
    m.at 4, :SANDSTORM
    m.at 6, :ROCKPOLISH
    m.at 10, :ROLLOUT
    m.at 12, :HARDEN
    m.at 16, :ROCKTHROW
    m.at 18, :SMACKDOWN
    m.at 22, :BULLDOZE
    m.at 24, :SELFDESTRUCT
    m.at 28, :STEALTHROCK
    m.at 30, :ROCKBLAST
    m.at 34, :EARTHQUAKE
    m.at 36, :EXPLOSION
    m.at 40, :DOUBLEEDGE
    m.at 42, :STONEEDGE
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :INCINERATE, :IRONDEFENSE, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THUNDERPUNCH, :TERABLAST
  s.egg_moves     :AUTOTOMIZE, :BLOCK, :CURSE, :FLAIL, :HAMMERARM, :MEGAPUNCH, :WIDEGUARD
  s.egg_groups    :Mineral
  s.hatch_steps   3840
  s.height        0.4
  s.weight        20.0
  s.color         :Brown
  s.shape         :HeadArms
  s.habitat       :Mountain
  s.category      "Rock"
  s.pokedex_entry "It climbs mountain paths using only the power of its arms. Because they look just like boulders lining paths, hikers may step on them without noticing."
  s.generation    1
  s.evolves_into  :GRAVELER, :Level, 25
  s.wild_item_uncommon :EVERSTONE
end

GameData::Species.define :GRAVELER do |s|
  s.name          "Graveler"
  s.types         :ROCK, :GROUND
  s.base_stats    hp: 55, attack: 95, defense: 115, speed: 35, sp_atk: 45, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      137
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :ROCKHEAD, :STURDY
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :DEFENSECURL
    m.at 1, :ROCKPOLISH
    m.at 4, :SANDSTORM
    m.at 6, :ROCKPOLISH
    m.at 10, :ROLLOUT
    m.at 12, :HARDEN
    m.at 16, :ROCKTHROW
    m.at 18, :SMACKDOWN
    m.at 22, :BULLDOZE
    m.at 24, :SELFDESTRUCT
    m.at 30, :STEALTHROCK
    m.at 34, :ROCKBLAST
    m.at 40, :EARTHQUAKE
    m.at 44, :EXPLOSION
    m.at 50, :DOUBLEEDGE
    m.at 54, :STONEEDGE
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :INCINERATE, :IRONDEFENSE, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THUNDERPUNCH, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   3840
  s.height        1.0
  s.weight        105.0
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Mountain
  s.category      "Rock"
  s.pokedex_entry "They descend from mountains by tumbling down steep slopes. They are so brutal, they smash aside obstructing trees and huge boulders with thunderous tackles."
  s.generation    1
  s.evolves_into  :GOLEM, :Trade
  s.wild_item_uncommon :EVERSTONE
end

GameData::Species.define :GOLEM do |s|
  s.name          "Golem"
  s.types         :ROCK, :GROUND
  s.base_stats    hp: 80, attack: 120, defense: 130, speed: 45, sp_atk: 55, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      248
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 3
  s.abilities     :ROCKHEAD, :STURDY
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :HEAVYSLAM
    m.at 1, :TACKLE
    m.at 1, :DEFENSECURL
    m.at 1, :ROCKPOLISH
    m.at 4, :SANDSTORM
    m.at 6, :ROCKPOLISH
    m.at 10, :ROLLOUT
    m.at 12, :HARDEN
    m.at 16, :ROCKTHROW
    m.at 18, :SMACKDOWN
    m.at 22, :BULLDOZE
    m.at 24, :SELFDESTRUCT
    m.at 30, :STEALTHROCK
    m.at 34, :ROCKBLAST
    m.at 40, :EARTHQUAKE
    m.at 44, :EXPLOSION
    m.at 50, :DOUBLEEDGE
    m.at 54, :STONEEDGE
    m.at 60, :HEAVYSLAM
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THUNDERPUNCH, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   3840
  s.height        1.4
  s.weight        300.0
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Mountain
  s.category      "Megaton"
  s.pokedex_entry "It is said to live in volcanic craters on mountain peaks. Once a year, it sheds its hide and grows larger. The shed hide crumbles and returns to the soil."
  s.generation    1
  s.wild_item_uncommon :EVERSTONE
end

GameData::Species.define :ONIX do |s|
  s.name          "Onix"
  s.types         :ROCK, :GROUND
  s.base_stats    hp: 35, attack: 45, defense: 160, speed: 70, sp_atk: 30, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      77
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :ROCKHEAD, :STURDY
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :BIND
    m.at 1, :ROCKTHROW
    m.at 4, :SMACKDOWN
    m.at 8, :ROCKPOLISH
    m.at 12, :DRAGONBREATH
    m.at 16, :CURSE
    m.at 20, :ROCKSLIDE
    m.at 24, :SCREECH
    m.at 28, :SANDTOMB
    m.at 32, :STEALTHROCK
    m.at 36, :SLAM
    m.at 40, :SANDSTORM
    m.at 44, :DIG
    m.at 48, :IRONTAIL
    m.at 52, :STONEEDGE
    m.at 56, :DOUBLEEDGE
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BIND, :BLOCK, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DRILLRUN, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FLASHCANNON, :FRUSTRATION, :GYROBALL, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :IRONHEAD, :IRONTAIL, :METEORBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PROTECT, :PSYCHUP, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TORMENT, :TWISTER, :TERABLAST
  s.egg_moves     :BLOCK, :DEFENSECURL, :DRAGONTAIL, :FLAIL, :HEADSMASH, :HEAVYSLAM, :ROCKBLAST, :ROLLOUT, :WIDEGUARD
  s.egg_groups    :Mineral
  s.hatch_steps   6400
  s.height        8.8
  s.weight        210.0
  s.color         :Gray
  s.shape         :Serpentine
  s.habitat       :Cave
  s.category      "Rock Snake"
  s.pokedex_entry "There is a magnet in its brain that prevents an Onix from losing direction while tunneling. As it grows older, its body becomes steadily rounder and smoother."
  s.generation    1
  s.evolves_into  :STEELIX, :TradeItem, METALCOAT
end

GameData::Species.define :OMANYTE do |s|
  s.name          "Omanyte"
  s.types         :ROCK, :WATER
  s.base_stats    hp: 35, attack: 40, defense: 100, speed: 35, sp_atk: 90, sp_def: 55
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      71
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :SWIFTSWIM, :SHELLARMOR
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 1, :BIND
    m.at 1, :WITHDRAW
    m.at 5, :ROLLOUT
    m.at 10, :SANDATTACK
    m.at 15, :WATERGUN
    m.at 20, :LEER
    m.at 25, :MUDSHOT
    m.at 30, :ANCIENTPOWER
    m.at 35, :BRINE
    m.at 41, :PROTECT
    m.at 45, :ROCKBLAST
    m.at 50, :SURF
    m.at 55, :SHELLSMASH
    m.at 60, :HYDROPUMP
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BIND, :BLIZZARD, :BODYSLAM, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :FACADE, :FRUSTRATION, :GYROBALL, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :KNOCKOFF, :METEORBEAM, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCALD, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :SPIKES, :STEALTHROCK, :SUBSTITUTE, :SURF, :SWAGGER, :THIEF, :TOXICSPIKES, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AURORABEAM, :BITE, :BUBBLEBEAM, :HAZE, :KNOCKOFF, :MUDDYWATER, :REFLECTTYPE, :SLAM, :SPIKES, :SUPERSONIC, :TICKLE, :TOXICSPIKES, :WATERPULSE, :WHIRLPOOL
  s.egg_groups    :Water1, :Water3
  s.hatch_steps   7680
  s.height        0.4
  s.weight        7.5
  s.color         :Blue
  s.shape         :Multiped
  s.habitat       :Sea
  s.category      "Spiral"
  s.pokedex_entry "One of the ancient and long-since-extinct Pokémon that have been regenerated from fossils by humans. If attacked, it withdraws into its hard shell."
  s.generation    1
  s.evolves_into  :OMASTAR, :Level, 40
end

GameData::Species.define :OMASTAR do |s|
  s.name          "Omastar"
  s.types         :ROCK, :WATER
  s.base_stats    hp: 70, attack: 60, defense: 125, speed: 55, sp_atk: 115, sp_def: 70
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SWIFTSWIM, :SHELLARMOR
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 0, :CRUNCH
    m.at 1, :BIND
    m.at 1, :WITHDRAW
    m.at 1, :ROLLOUT
    m.at 1, :SANDATTACK
    m.at 15, :WATERGUN
    m.at 20, :LEER
    m.at 25, :MUDSHOT
    m.at 30, :ANCIENTPOWER
    m.at 35, :BRINE
    m.at 43, :PROTECT
    m.at 49, :ROCKBLAST
    m.at 56, :SURF
    m.at 63, :SHELLSMASH
    m.at 70, :HYDROPUMP
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BIND, :BLIZZARD, :BODYSLAM, :BRINE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :KNOCKOFF, :LIQUIDATION, :METEORBEAM, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PINMISSILE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKBLAST, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCALD, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :SPIKES, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SURF, :SWAGGER, :THIEF, :TOXICSPIKES, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Water3
  s.hatch_steps   7680
  s.height        1.0
  s.weight        35.0
  s.color         :Blue
  s.shape         :Multiped
  s.habitat       :Sea
  s.category      "Spiral"
  s.pokedex_entry "An Omastar uses its tentacles to capture its prey. It is believed to have become extinct because its shell grew too large, making its movements slow and ponderous."
  s.generation    1
end

GameData::Species.define :KABUTO do |s|
  s.name          "Kabuto"
  s.types         :ROCK, :WATER
  s.base_stats    hp: 30, attack: 80, defense: 90, speed: 55, sp_atk: 55, sp_def: 45
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      71
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :SWIFTSWIM, :BATTLEARMOR
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :HARDEN
    m.at 5, :SCRATCH
    m.at 10, :SANDATTACK
    m.at 15, :AQUAJET
    m.at 20, :LEER
    m.at 25, :MUDSHOT
    m.at 30, :ANCIENTPOWER
    m.at 35, :BRINE
    m.at 41, :PROTECT
    m.at 45, :LEECHLIFE
    m.at 50, :LIQUIDATION
    m.at 55, :METALSOUND
    m.at 60, :STONEEDGE
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRINE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :FACADE, :FRUSTRATION, :GIGADRAIN, :HAIL, :HIDDENPOWER, :HONECLAWS, :HYDROPUMP, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :KNOCKOFF, :LEECHLIFE, :LIQUIDATION, :METEORBEAM, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCALD, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SURF, :SWAGGER, :THIEF, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AURORABEAM, :BUBBLEBEAM, :CONFUSERAY, :FLAIL, :ICYWIND, :KNOCKOFF, :MEGADRAIN, :MUDSHOT, :RAPIDSPIN, :SCREECH, :TAKEDOWN
  s.egg_groups    :Water1, :Water3
  s.hatch_steps   7680
  s.height        0.5
  s.weight        11.5
  s.color         :Brown
  s.shape         :Insectoid
  s.habitat       :Sea
  s.category      "Shellfish"
  s.pokedex_entry "This Pokémon has been regenerated from a fossil. However, in rare cases, living examples have been discovered. Kabuto have not changed for 300 million years."
  s.generation    1
  s.evolves_into  :KABUTOPS, :Level, 40
end

GameData::Species.define :KABUTOPS do |s|
  s.name          "Kabutops"
  s.types         :ROCK, :WATER
  s.base_stats    hp: 60, attack: 115, defense: 105, speed: 80, sp_atk: 65, sp_def: 70
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SWIFTSWIM, :BATTLEARMOR
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 0, :SLASH
    m.at 1, :NIGHTSLASH
    m.at 1, :FEINT
    m.at 1, :ABSORB
    m.at 1, :HARDEN
    m.at 1, :SCRATCH
    m.at 1, :SANDATTACK
    m.at 15, :AQUAJET
    m.at 20, :LEER
    m.at 25, :MUDSHOT
    m.at 30, :ANCIENTPOWER
    m.at 35, :BRINE
    m.at 43, :PROTECT
    m.at 49, :LEECHLIFE
    m.at 56, :LIQUIDATION
    m.at 63, :METALSOUND
    m.at 70, :STONEEDGE
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRINE, :CAPTIVATE, :CONFIDE, :CROSSPOISON, :CUT, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :FACADE, :FLIPTURN, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :KNOCKOFF, :LEECHLIFE, :LIQUIDATION, :LOWKICK, :MEGAKICK, :METEORBEAM, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PROTECT, :PSYCHOCUT, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :ROCKBLAST, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCALD, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :THIEF, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :XSCISSOR, :TERABLAST
  s.egg_groups    :Water1, :Water3
  s.hatch_steps   7680
  s.height        1.3
  s.weight        40.5
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :Sea
  s.category      "Shellfish"
  s.pokedex_entry "Kabutops once swam underwater to hunt for prey. It was apparently evolving from being a water dweller to living on land as evident from changes in its gills and legs."
  s.generation    1
end

GameData::Species.define :AERODACTYL do |s|
  s.name          "Aerodactyl"
  s.types         :ROCK, :FLYING
  s.base_stats    hp: 80, attack: 105, defense: 65, speed: 130, sp_atk: 60, sp_def: 75
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Slow
  s.base_exp      180
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :ROCKHEAD, :PRESSURE
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 1, :BITE
    m.at 1, :ANCIENTPOWER
    m.at 5, :SUPERSONIC
    m.at 10, :WINGATTACK
    m.at 15, :SCARYFACE
    m.at 20, :ROCKSLIDE
    m.at 25, :ROAR
    m.at 30, :CRUNCH
    m.at 35, :IRONHEAD
    m.at 40, :TAKEDOWN
    m.at 45, :STONEEDGE
    m.at 50, :AGILITY
    m.at 55, :HYPERBEAM
    m.at 60, :GIGAIMPACT
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRCUTTER, :ANCIENTPOWER, :AQUATAIL, :ASSURANCE, :ATTRACT, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DUALWINGBEAT, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FLAMETHROWER, :FLY, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HURRICANE, :HYPERBEAM, :ICEFANG, :INCINERATE, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :METEORBEAM, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PAYBACK, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STEELWING, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :THUNDERFANG, :TORMENT, :TWISTER, :TERABLAST
  s.egg_moves     :ASSURANCE, :CURSE, :DRAGONBREATH, :ROOST, :TAILWIND, :WHIRLWIND, :WIDEGUARD
  s.egg_groups    :Flying
  s.hatch_steps   8960
  s.height        1.8
  s.weight        59.0
  s.color         :Purple
  s.shape         :Winged
  s.habitat       :Mountain
  s.category      "Fossil"
  s.pokedex_entry "Aerodactyl is a Pokémon from the age of dinosaurs. It was regenerated from DNA extracted from amber. It is imagined to have been the king of the skies."
  s.generation    1
end

GameData::Species.define :SUDOWOODO do |s|
  s.name          "Sudowoodo"
  s.types         :ROCK
  s.base_stats    hp: 70, attack: 100, defense: 115, speed: 30, sp_atk: 30, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      144
  s.catch_rate    65
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :STURDY, :ROCKHEAD
  s.hidden_abilities :RATTLED
  s.moves do |m|
    m.at 0, :SLAM
    m.at 1, :STONEEDGE
    m.at 1, :HAMMERARM
    m.at 1, :WOODHAMMER
    m.at 1, :FAKETEARS
    m.at 1, :COPYCAT
    m.at 1, :FLAIL
    m.at 1, :ROCKTHROW
    m.at 12, :BLOCK
    m.at 16, :MIMIC
    m.at 20, :ROCKTOMB
    m.at 24, :TEARFULLOOK
    m.at 28, :SUCKERPUNCH
    m.at 32, :ROCKSLIDE
    m.at 36, :LOWKICK
    m.at 40, :COUNTER
    m.at 44, :DOUBLEEDGE
    m.at 48, :HEADSMASH
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BLOCK, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FAKETEARS, :FIREPUNCH, :FLING, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :IRONDEFENSE, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROLLOUT, :ROUND, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SEISMICTOSS, :SELFDESTRUCT, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :THUNDERPUNCH, :TORMENT, :UPROAR, :TERABLAST
  s.egg_moves     :CURSE, :DEFENSECURL, :HARDEN, :HEADBUTT, :ROCKPOLISH, :ROLLOUT, :SANDTOMB, :SELFDESTRUCT
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.2
  s.weight        38.0
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Imitation"
  s.pokedex_entry "It mimics a tree to avoid being attacked by enemies. But since its forelegs remain green throughout the year, it is easily identified as a fake in the winter."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :LARVITAR do |s|
  s.name          "Larvitar"
  s.types         :ROCK, :GROUND
  s.base_stats    hp: 50, attack: 64, defense: 50, speed: 41, sp_atk: 45, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      60
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 1
  s.abilities     :GUTS
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 3, :ROCKTHROW
    m.at 6, :PAYBACK
    m.at 9, :BITE
    m.at 12, :SCARYFACE
    m.at 15, :ROCKSLIDE
    m.at 18, :STOMPINGTANTRUM
    m.at 21, :SCREECH
    m.at 24, :DARKPULSE
    m.at 27, :CRUNCH
    m.at 31, :EARTHQUAKE
    m.at 33, :STONEEDGE
    m.at 36, :THRASH
    m.at 39, :SANDSTORM
    m.at 42, :HYPERBEAM
  end
  s.tutor_moves   :ANCIENTPOWER, :ASSURANCE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FOCUSENERGY, :FRUSTRATION, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :MIMIC, :MUDDYWATER, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNARL, :SNORE, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :TORMENT, :UPROAR, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :ASSURANCE, :CURSE, :DRAGONDANCE, :FOCUSENERGY, :IRONDEFENSE, :IRONHEAD, :OUTRAGE, :STOMP
  s.egg_groups    :Monster
  s.hatch_steps   10240
  s.height        0.6
  s.weight        72.0
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Rock Skin"
  s.pokedex_entry "A Larvitar is born deep under the ground. It must eat its way through the soil above and reach the surface for it to see its parents' faces."
  s.generation    2
  s.evolves_into  :PUPITAR, :Level, 30
end

GameData::Species.define :PUPITAR do |s|
  s.name          "Pupitar"
  s.types         :ROCK, :GROUND
  s.base_stats    hp: 70, attack: 84, defense: 70, speed: 51, sp_atk: 65, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      144
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 2
  s.abilities     :SHEDSKIN
  s.moves do |m|
    m.at 0, :IRONDEFENSE
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :ROCKTHROW
    m.at 1, :PAYBACK
    m.at 9, :BITE
    m.at 12, :SCARYFACE
    m.at 15, :ROCKSLIDE
    m.at 18, :STOMPINGTANTRUM
    m.at 21, :SCREECH
    m.at 24, :DARKPULSE
    m.at 27, :CRUNCH
    m.at 33, :EARTHQUAKE
    m.at 37, :STONEEDGE
    m.at 42, :THRASH
    m.at 47, :SANDSTORM
    m.at 52, :HYPERBEAM
  end
  s.tutor_moves   :ANCIENTPOWER, :ASSURANCE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FOCUSENERGY, :FRUSTRATION, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :MIMIC, :MUDDYWATER, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNARL, :SNORE, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :TORMENT, :UPROAR, :TERABLAST
  s.egg_groups    :Monster
  s.hatch_steps   10240
  s.height        1.2
  s.weight        152.0
  s.color         :Gray
  s.shape         :Serpentine
  s.habitat       :Mountain
  s.category      "Hard Shell"
  s.pokedex_entry "A Pupitar creates a gas inside its body that it ejects under compression to propel itself like a jet. Its body can withstand a collision with solid steel."
  s.generation    2
  s.evolves_into  :TYRANITAR, :Level, 55
end

GameData::Species.define :TYRANITAR do |s|
  s.name          "Tyranitar"
  s.types         :ROCK, :DARK
  s.base_stats    hp: 100, attack: 134, defense: 110, speed: 61, sp_atk: 95, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 3
  s.abilities     :SANDSTREAM
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 1, :IRONDEFENSE
    m.at 1, :THUNDERFANG
    m.at 1, :ICEFANG
    m.at 1, :FIREFANG
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :ROCKTHROW
    m.at 1, :PAYBACK
    m.at 9, :BITE
    m.at 12, :SCARYFACE
    m.at 15, :ROCKSLIDE
    m.at 18, :STOMPINGTANTRUM
    m.at 21, :SCREECH
    m.at 24, :DARKPULSE
    m.at 27, :CRUNCH
    m.at 33, :EARTHQUAKE
    m.at 37, :STONEEDGE
    m.at 42, :THRASH
    m.at 47, :SANDSTORM
    m.at 52, :HYPERBEAM
    m.at 59, :GIGAIMPACT
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :AQUATAIL, :ASSURANCE, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICEPUNCH, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LASHOUT, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROAR, :ROCKBLAST, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNARL, :SNORE, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :UPROAR, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Monster
  s.hatch_steps   10240
  s.height        2.0
  s.weight        202.0
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Armor"
  s.pokedex_entry "A Tyranitar is so overwhelmingly powerful, it can bring down a whole mountain to make its nest. It roams in mountains seeking new opponents to fight."
  s.generation    2
end

GameData::Species.define :NOSEPASS do |s|
  s.name          "Nosepass"
  s.types         :ROCK
  s.base_stats    hp: 30, attack: 45, defense: 135, speed: 30, sp_atk: 45, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      75
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :STURDY, :MAGNETPULL
  s.hidden_abilities :SANDFORCE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 4, :HARDEN
    m.at 7, :BLOCK
    m.at 10, :ROCKTHROW
    m.at 13, :THUNDERWAVE
    m.at 16, :REST
    m.at 19, :SPARK
    m.at 22, :ROCKSLIDE
    m.at 25, :POWERGEM
    m.at 28, :ROCKBLAST
    m.at 31, :DISCHARGE
    m.at 34, :SANDSTORM
    m.at 37, :EARTHPOWER
    m.at 40, :STONEEDGE
    m.at 43, :LOCKON
    m.at 43, :ZAPCANNON
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BLOCK, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREPUNCH, :FRUSTRATION, :GRAVITY, :HEADBUTT, :HIDDENPOWER, :ICEPUNCH, :IRONDEFENSE, :MAGICCOAT, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PROTECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :VOLTSWITCH, :TERABLAST
  s.egg_moves     :BLOCK, :DOUBLEEDGE, :ROLLOUT, :WIDEGUARD
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.0
  s.weight        97.0
  s.color         :Gray
  s.shape         :Bipedal
  s.habitat       :Cave
  s.category      "Compass"
  s.pokedex_entry "Its body emits a powerful magnetism. It feeds on prey that is pulled in by the force. Its magnetism is stronger in cold seasons."
  s.generation    3
  s.evolves_into  :PROBOPASS, :LocationFlag, Magnetic
  s.evolves_into  :PROBOPASS, :Item, THUNDERSTONE
  s.wild_item_uncommon :MAGNET
end

GameData::Species.define :LUNATONE do |s|
  s.name          "Lunatone"
  s.types         :ROCK, :PSYCHIC
  s.base_stats    hp: 90, attack: 55, defense: 65, speed: 70, sp_atk: 95, sp_def: 85
  s.gender_ratio  :Genderless
  s.growth_rate   :Fast
  s.base_exp      161
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :MOONBLAST
    m.at 1, :MOONLIGHT
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :CONFUSION
    m.at 1, :ROCKTHROW
    m.at 5, :HYPNOSIS
    m.at 10, :ROCKPOLISH
    m.at 15, :ROCKSLIDE
    m.at 20, :PSYSHOCK
    m.at 25, :COSMICPOWER
    m.at 30, :PSYCHIC
    m.at 35, :STONEEDGE
    m.at 40, :FUTURESIGHT
    m.at 45, :MAGICROOM
    m.at 50, :EXPLOSION
  end
  s.tutor_moves   :ACROBATICS, :ALLYSWITCH, :ANCIENTPOWER, :BATONPASS, :BLIZZARD, :BODYSLAM, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COSMICPOWER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EARTHPOWER, :EARTHQUAKE, :EMBARGO, :ENDURE, :EXPLOSION, :FACADE, :FLASH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GYROBALL, :HAIL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONHEAD, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :METEORBEAM, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAINSPLIT, :POWERGEM, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :TELEKINESIS, :TRICKROOM, :WEATHERBALL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   6400
  s.height        1.0
  s.weight        168.0
  s.color         :Yellow
  s.shape         :Head
  s.habitat       :Cave
  s.category      "Meteorite"
  s.pokedex_entry "It becomes very active on the night of a full moon. This Pokémon was first discovered 40 years ago at the site of a meteor strike."
  s.generation    3
  s.wild_item_common   :STARDUST
  s.wild_item_uncommon :MOONSTONE
end

GameData::Species.define :SOLROCK do |s|
  s.name          "Solrock"
  s.types         :ROCK, :PSYCHIC
  s.base_stats    hp: 90, attack: 95, defense: 85, speed: 70, sp_atk: 55, sp_def: 65
  s.gender_ratio  :Genderless
  s.growth_rate   :Fast
  s.base_exp      161
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :FLAREBLITZ
    m.at 1, :MORNINGSUN
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :CONFUSION
    m.at 1, :ROCKTHROW
    m.at 5, :HYPNOSIS
    m.at 10, :ROCKPOLISH
    m.at 15, :ROCKSLIDE
    m.at 20, :ZENHEADBUTT
    m.at 25, :COSMICPOWER
    m.at 30, :PSYCHIC
    m.at 35, :STONEEDGE
    m.at 40, :SOLARBEAM
    m.at 45, :WONDERROOM
    m.at 50, :EXPLOSION
  end
  s.tutor_moves   :ACROBATICS, :ALLYSWITCH, :ANCIENTPOWER, :BATONPASS, :BODYSLAM, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COSMICPOWER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EARTHPOWER, :EARTHQUAKE, :EMBARGO, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMETHROWER, :FLAREBLITZ, :FLASH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GYROBALL, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :METEORBEAM, :MIMIC, :NATURALGIFT, :OVERHEAT, :PAINSPLIT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TELEKINESIS, :TRICKROOM, :WEATHERBALL, :WILLOWISP, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   6400
  s.height        1.2
  s.weight        154.0
  s.color         :Red
  s.shape         :Head
  s.habitat       :Cave
  s.category      "Meteorite"
  s.pokedex_entry "Solar energy is the source of this Pokémon's power. On sunny days, groups of Solrock line up facing the sun and absorb its light."
  s.generation    3
  s.wild_item_common   :STARDUST
  s.wild_item_uncommon :SUNSTONE
end

GameData::Species.define :LILEEP do |s|
  s.name          "Lileep"
  s.types         :ROCK, :GRASS
  s.base_stats    hp: 66, attack: 41, defense: 77, speed: 23, sp_atk: 61, sp_def: 87
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Erratic
  s.base_exp      71
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :SUCTIONCUPS
  s.hidden_abilities :STORMDRAIN
  s.moves do |m|
    m.at 1, :WRAP
    m.at 1, :ASTONISH
    m.at 4, :ACID
    m.at 8, :CONFUSERAY
    m.at 12, :INGRAIN
    m.at 16, :ANCIENTPOWER
    m.at 20, :MEGADRAIN
    m.at 24, :BRINE
    m.at 28, :AMNESIA
    m.at 32, :GASTROACID
    m.at 36, :GIGADRAIN
    m.at 41, :STOCKPILE
    m.at 41, :SPITUP
    m.at 41, :SWALLOW
    m.at 44, :ENERGYBALL
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :ATTRACT, :BIND, :BODYSLAM, :BRINE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GRASSKNOT, :HIDDENPOWER, :INFESTATION, :METEORBEAM, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SMACKDOWN, :SNORE, :SOLARBEAM, :STEALTHROCK, :STRINGSHOT, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WORRYSEED, :TERABLAST
  s.egg_moves     :BIND, :CURSE, :MEGADRAIN, :MIRRORCOAT, :RECOVER, :TICKLE
  s.egg_groups    :Water3
  s.hatch_steps   7680
  s.height        1.0
  s.weight        23.8
  s.color         :Purple
  s.shape         :HeadBase
  s.habitat       :Sea
  s.category      "Sea Lily"
  s.pokedex_entry "It disguises itself as seaweed by making its tentacles sway. Unsuspecting prey that come too close are swallowed whole. It became extinct 100 million years ago."
  s.generation    3
  s.evolves_into  :CRADILY, :Level, 40
  s.wild_item_uncommon :BIGROOT
end

GameData::Species.define :CRADILY do |s|
  s.name          "Cradily"
  s.types         :ROCK, :GRASS
  s.base_stats    hp: 86, attack: 81, defense: 97, speed: 43, sp_atk: 81, sp_def: 107
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Erratic
  s.base_exp      173
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :SUCTIONCUPS
  s.hidden_abilities :STORMDRAIN
  s.moves do |m|
    m.at 1, :LEECHSEED
    m.at 1, :WRAP
    m.at 1, :ASTONISH
    m.at 1, :ACID
    m.at 1, :CONFUSERAY
    m.at 12, :INGRAIN
    m.at 16, :ANCIENTPOWER
    m.at 20, :MEGADRAIN
    m.at 24, :BRINE
    m.at 28, :AMNESIA
    m.at 32, :GASTROACID
    m.at 36, :GIGADRAIN
    m.at 43, :STOCKPILE
    m.at 43, :SPITUP
    m.at 43, :SWALLOW
    m.at 48, :ENERGYBALL
  end
  s.tutor_moves   :AMNESIA, :ANCIENTPOWER, :ATTRACT, :BIND, :BLOCK, :BODYSLAM, :BRINE, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYTERRAIN, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :METEORBEAM, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :POWERWHIP, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNORE, :SOLARBEAM, :STEALTHROCK, :STONEEDGE, :STRENGTH, :STRINGSHOT, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :WORRYSEED, :TERABLAST
  s.egg_groups    :Water3
  s.hatch_steps   7680
  s.height        1.5
  s.weight        60.4
  s.color         :Green
  s.shape         :HeadBase
  s.habitat       :Sea
  s.category      "Barnacle"
  s.pokedex_entry "It drags its heavy body along the seafloor. It makes its nest in the shallows of warm seas. Cradily can be seen on beaches when the tide goes out."
  s.generation    3
  s.wild_item_uncommon :BIGROOT
end

GameData::Species.define :ANORITH do |s|
  s.name          "Anorith"
  s.types         :ROCK, :BUG
  s.base_stats    hp: 45, attack: 95, defense: 50, speed: 75, sp_atk: 40, sp_def: 50
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Erratic
  s.base_exp      71
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :BATTLEARMOR
  s.hidden_abilities :SWIFTSWIM
  s.moves do |m|
    m.at 1, :FURYCUTTER
    m.at 1, :HARDEN
    m.at 4, :WATERGUN
    m.at 8, :SMACKDOWN
    m.at 12, :METALCLAW
    m.at 16, :ANCIENTPOWER
    m.at 20, :BUGBITE
    m.at 24, :BRINE
    m.at 28, :SLASH
    m.at 32, :CRUSHCLAW
    m.at 36, :ROCKBLAST
    m.at 41, :PROTECT
    m.at 44, :XSCISSOR
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BRINE, :BUGBITE, :CAPTIVATE, :CONFIDE, :CROSSPOISON, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :FACADE, :FALSESWIPE, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :IRONDEFENSE, :KNOCKOFF, :METEORBEAM, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :WATERPULSE, :XSCISSOR, :TERABLAST
  s.egg_moves     :AQUAJET, :CROSSPOISON, :CURSE, :IRONDEFENSE, :KNOCKOFF, :RAPIDSPIN, :SANDATTACK, :SCREECH, :WATERPULSE
  s.egg_groups    :Water3
  s.hatch_steps   7680
  s.height        0.7
  s.weight        12.5
  s.color         :Gray
  s.shape         :Insectoid
  s.habitat       :WatersEdge
  s.category      "Old Shrimp"
  s.pokedex_entry "It was resurrected from a fossil using the power of science. It swims by undulating the wings at its sides. They were feet that adapted to life in the sea."
  s.generation    3
  s.evolves_into  :ARMALDO, :Level, 40
end

GameData::Species.define :ARMALDO do |s|
  s.name          "Armaldo"
  s.types         :ROCK, :BUG
  s.base_stats    hp: 75, attack: 125, defense: 100, speed: 45, sp_atk: 70, sp_def: 80
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Erratic
  s.base_exp      173
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :BATTLEARMOR
  s.hidden_abilities :SWIFTSWIM
  s.moves do |m|
    m.at 1, :FURYCUTTER
    m.at 1, :HARDEN
    m.at 1, :WATERGUN
    m.at 1, :SMACKDOWN
    m.at 12, :METALCLAW
    m.at 16, :ANCIENTPOWER
    m.at 20, :BUGBITE
    m.at 24, :BRINE
    m.at 28, :SLASH
    m.at 32, :CRUSHCLAW
    m.at 36, :ROCKBLAST
    m.at 43, :PROTECT
    m.at 48, :XSCISSOR
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BRINE, :BRUTALSWING, :BUGBITE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CROSSPOISON, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FALSESWIPE, :FLASHCANNON, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONDEFENSE, :IRONTAIL, :KNOCKOFF, :LIQUIDATION, :LOWKICK, :METEORBEAM, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :WATERPULSE, :XSCISSOR, :TERABLAST
  s.egg_groups    :Water3
  s.hatch_steps   7680
  s.height        1.5
  s.weight        68.2
  s.color         :Gray
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Plate"
  s.pokedex_entry "Armaldo usually lives on land. However, when it hunts for prey, it dives beneath the ocean. It swims around using its two large wings."
  s.generation    3
end

GameData::Species.define :REGIROCK do |s|
  s.name          "Regirock"
  s.types         :ROCK
  s.base_stats    hp: 80, attack: 100, defense: 200, speed: 50, sp_atk: 50, sp_def: 100
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           defense: 3
  s.abilities     :CLEARBODY
  s.hidden_abilities :STURDY
  s.moves do |m|
    m.at 1, :CHARGEBEAM
    m.at 1, :ROCKTHROW
    m.at 6, :BULLDOZE
    m.at 12, :ANCIENTPOWER
    m.at 18, :STOMP
    m.at 24, :ROCKSLIDE
    m.at 30, :CURSE
    m.at 36, :IRONDEFENSE
    m.at 42, :HAMMERARM
    m.at 48, :STONEEDGE
    m.at 54, :SUPERPOWER
    m.at 60, :LOCKON
    m.at 66, :ZAPCANNON
    m.at 72, :HYPERBEAM
    m.at 78, :EXPLOSION
  end
  s.tutor_moves   :ANCIENTPOWER, :BLOCK, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREPUNCH, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :REST, :RETURN, :ROCKBLAST, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SEISMICTOSS, :SELFDESTRUCT, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        1.7
  s.weight        230.0
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Cave
  s.category      "Rock Peak"
  s.pokedex_entry "A Pokémon that is made entirely of rocks and boulders. If parts of its body chip off in battle, Regirock repairs itself by adding new rocks."
  s.generation    3
  s.flags         :Legendary
end

GameData::Species.define :CRANIDOS do |s|
  s.name          "Cranidos"
  s.types         :ROCK
  s.base_stats    hp: 67, attack: 125, defense: 40, speed: 58, sp_atk: 30, sp_def: 30
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Erratic
  s.base_exp      70
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :MOLDBREAKER
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :HEADBUTT
    m.at 1, :LEER
    m.at 6, :FOCUSENERGY
    m.at 10, :ROCKPOLISH
    m.at 15, :TAKEDOWN
    m.at 19, :SCARYFACE
    m.at 24, :ASSURANCE
    m.at 28, :SWORDSDANCE
    m.at 33, :ANCIENTPOWER
    m.at 37, :ZENHEADBUTT
    m.at 42, :SCREECH
    m.at 46, :HEADSMASH
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BLIZZARD, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :DRAGONPULSE, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FRUSTRATION, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :INCINERATE, :IRONHEAD, :IRONTAIL, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :SPITE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :UPROAR, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :CRUNCH, :CURSE, :DOUBLEEDGE, :HAMMERARM, :IRONHEAD, :LEER, :SLAM, :STOMP, :THRASH, :WHIRLWIND
  s.egg_groups    :Monster
  s.hatch_steps   7680
  s.height        0.9
  s.weight        31.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Head Butt"
  s.pokedex_entry "It lived in jungles around 100 million years ago. Its skull is as hard as iron."
  s.generation    4
  s.evolves_into  :RAMPARDOS, :Level, 30
end

GameData::Species.define :RAMPARDOS do |s|
  s.name          "Rampardos"
  s.types         :ROCK
  s.base_stats    hp: 97, attack: 165, defense: 60, speed: 58, sp_atk: 65, sp_def: 50
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Erratic
  s.base_exp      173
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :MOLDBREAKER
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 0, :ENDEAVOR
    m.at 1, :HEADBUTT
    m.at 1, :LEER
    m.at 1, :FOCUSENERGY
    m.at 6, :FOCUSENERGY
    m.at 10, :ROCKPOLISH
    m.at 15, :TAKEDOWN
    m.at 19, :SCARYFACE
    m.at 24, :ASSURANCE
    m.at 28, :SWORDSDANCE
    m.at 36, :ANCIENTPOWER
    m.at 43, :ZENHEADBUTT
    m.at 51, :SCREECH
    m.at 58, :HEADSMASH
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :AVALANCHE, :BLIZZARD, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :DRAGONPULSE, :DRAGONTAIL, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :INCINERATE, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PAINSPLIT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :UPROAR, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Monster
  s.hatch_steps   7680
  s.height        1.6
  s.weight        102.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Head Butt"
  s.pokedex_entry "Its powerful head butt has enough power to shatter even the most durable things upon impact."
  s.generation    4
end

GameData::Species.define :SHIELDON do |s|
  s.name          "Shieldon"
  s.types         :ROCK, :STEEL
  s.base_stats    hp: 30, attack: 42, defense: 118, speed: 30, sp_atk: 42, sp_def: 88
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Erratic
  s.base_exp      70
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :STURDY
  s.hidden_abilities :SOUNDPROOF
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :PROTECT
    m.at 6, :TAUNT
    m.at 10, :METALSOUND
    m.at 15, :TAKEDOWN
    m.at 19, :IRONDEFENSE
    m.at 24, :SWAGGER
    m.at 28, :ANCIENTPOWER
    m.at 33, :ENDURE
    m.at 37, :METALBURST
    m.at 42, :IRONHEAD
    m.at 46, :HEAVYSLAM
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BLIZZARD, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASHCANNON, :FRUSTRATION, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THUNDER, :THUNDERBOLT, :TORMENT, :TERABLAST
  s.egg_moves     :BODYSLAM, :COUNTER, :CURSE, :DOUBLEEDGE, :FISSURE, :FOCUSENERGY, :GUARDSPLIT, :HEADBUTT, :ROCKBLAST, :SCARYFACE, :SCREECH, :WIDEGUARD
  s.egg_groups    :Monster
  s.hatch_steps   7680
  s.height        0.5
  s.weight        57.0
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Shield"
  s.pokedex_entry "A Pokémon that lived in jungles around 100 million years ago. Its facial hide is extremely hard."
  s.generation    4
  s.evolves_into  :BASTIODON, :Level, 30
end

GameData::Species.define :BASTIODON do |s|
  s.name          "Bastiodon"
  s.types         :ROCK, :STEEL
  s.base_stats    hp: 60, attack: 52, defense: 168, speed: 30, sp_atk: 47, sp_def: 138
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Erratic
  s.base_exp      173
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :STURDY
  s.hidden_abilities :SOUNDPROOF
  s.moves do |m|
    m.at 0, :BLOCK
    m.at 1, :TACKLE
    m.at 1, :PROTECT
    m.at 1, :TAUNT
    m.at 1, :METALSOUND
    m.at 6, :TAUNT
    m.at 10, :METALSOUND
    m.at 15, :TAKEDOWN
    m.at 19, :IRONDEFENSE
    m.at 24, :SWAGGER
    m.at 28, :ANCIENTPOWER
    m.at 36, :ENDURE
    m.at 43, :METALBURST
    m.at 51, :IRONHEAD
    m.at 58, :HEAVYSLAM
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :MAGICCOAT, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THUNDER, :THUNDERBOLT, :TORMENT, :TERABLAST
  s.egg_groups    :Monster
  s.hatch_steps   7680
  s.height        1.3
  s.weight        149.5
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Shield"
  s.pokedex_entry "Any frontal attack is repulsed. It is a docile Pokémon that feeds on grass and berries."
  s.generation    4
end

GameData::Species.define :BONSLY do |s|
  s.name          "Bonsly"
  s.types         :ROCK
  s.base_stats    hp: 50, attack: 80, defense: 95, speed: 10, sp_atk: 10, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      58
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :STURDY, :ROCKHEAD
  s.hidden_abilities :RATTLED
  s.moves do |m|
    m.at 1, :FAKETEARS
    m.at 1, :COPYCAT
    m.at 4, :FLAIL
    m.at 8, :ROCKTHROW
    m.at 12, :BLOCK
    m.at 16, :MIMIC
    m.at 20, :ROCKTOMB
    m.at 24, :TEARFULLOOK
    m.at 28, :SUCKERPUNCH
    m.at 32, :ROCKSLIDE
    m.at 36, :LOWKICK
    m.at 40, :COUNTER
    m.at 44, :DOUBLEEDGE
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BLOCK, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CONFIDE, :COVET, :DIG, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :EXPLOSION, :FACADE, :FAKETEARS, :FOULPLAY, :FRUSTRATION, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :LOWKICK, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :PSYCHUP, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROLLOUT, :ROUND, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :THIEF, :UPROAR, :TERABLAST
  s.egg_moves     :CURSE, :DEFENSECURL, :HARDEN, :HEADBUTT, :ROCKPOLISH, :ROLLOUT, :SANDTOMB, :SELFDESTRUCT
  s.egg_groups    :Undiscovered
  s.hatch_steps   5120
  s.height        0.5
  s.weight        15.0
  s.color         :Brown
  s.shape         :HeadLegs
  s.category      "Bonsai"
  s.pokedex_entry "It looks as if it is always crying. It is actually adjusting its body's fluid levels by eliminating excess."
  s.generation    4
  s.evolves_into  :SUDOWOODO, :HasMove, MIMIC
end

GameData::Species.define :PROBOPASS do |s|
  s.name          "Probopass"
  s.types         :ROCK, :STEEL
  s.base_stats    hp: 60, attack: 55, defense: 145, speed: 40, sp_atk: 75, sp_def: 150
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      184
  s.catch_rate    60
  s.happiness     50
  s.evs           defense: 1, sp_defense: 2
  s.abilities     :STURDY, :MAGNETPULL
  s.hidden_abilities :SANDFORCE
  s.moves do |m|
    m.at 0, :TRIATTACK
    m.at 1, :MAGNETICFLUX
    m.at 1, :MAGNETRISE
    m.at 1, :GRAVITY
    m.at 1, :WIDEGUARD
    m.at 1, :BLOCK
    m.at 1, :HARDEN
    m.at 1, :ROCKTHROW
    m.at 1, :TACKLE
    m.at 1, :IRONDEFENSE
    m.at 1, :BLOCK
    m.at 4, :IRONDEFENSE
    m.at 7, :BLOCK
    m.at 10, :SMACKDOWN
    m.at 13, :THUNDERWAVE
    m.at 16, :REST
    m.at 19, :SPARK
    m.at 22, :ROCKSLIDE
    m.at 25, :POWERGEM
    m.at 28, :ROCKBLAST
    m.at 31, :DISCHARGE
    m.at 34, :SANDSTORM
    m.at 37, :EARTHPOWER
    m.at 40, :STONEEDGE
    m.at 43, :LOCKON
    m.at 43, :ZAPCANNON
    m.at 50, :BODYPRESS
  end
  s.tutor_moves   :ALLYSWITCH, :ANCIENTPOWER, :ATTRACT, :BLOCK, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREPUNCH, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :MAGICCOAT, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PROTECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :VOLTSWITCH, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.4
  s.weight        340.0
  s.color         :Gray
  s.shape         :MultiBody
  s.category      "Compass"
  s.pokedex_entry "It exudes strong magnetism from all over. It controls three small units called Mini-Noses."
  s.generation    4
  s.wild_item_uncommon :MAGNET
end

GameData::Species.define :ROGGENROLA do |s|
  s.name          "Roggenrola"
  s.types         :ROCK
  s.base_stats    hp: 55, attack: 75, defense: 85, speed: 15, sp_atk: 25, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      56
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :STURDY, :WEAKARMOR
  s.hidden_abilities :SANDFORCE
  s.moves do |m|
    m.at 1, :SANDATTACK
    m.at 1, :TACKLE
    m.at 4, :HARDEN
    m.at 8, :STEALTHROCK
    m.at 12, :MUDSLAP
    m.at 16, :SMACKDOWN
    m.at 20, :IRONDEFENSE
    m.at 24, :HEADBUTT
    m.at 28, :ROCKSLIDE
    m.at 32, :ROCKBLAST
    m.at 36, :SANDSTORM
    m.at 40, :STONEEDGE
    m.at 44, :EXPLOSION
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BODYPRESS, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FLASHCANNON, :FRUSTRATION, :GRAVITY, :HEAVYSLAM, :HIDDENPOWER, :IRONDEFENSE, :METEORBEAM, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SWAGGER, :TOXIC, :TERABLAST
  s.egg_moves     :AUTOTOMIZE, :CURSE, :GRAVITY, :TAKEDOWN, :WIDEGUARD
  s.egg_groups    :Mineral
  s.hatch_steps   3840
  s.height        0.4
  s.weight        18.0
  s.color         :Blue
  s.shape         :HeadLegs
  s.category      "Mantle"
  s.pokedex_entry "They were discovered a hundred years ago in an earthquake fissure. Inside each one is an energy core."
  s.generation    5
  s.evolves_into  :BOLDORE, :Level, 25
  s.wild_item_common   :EVERSTONE
  s.wild_item_uncommon :HARDSTONE
end

GameData::Species.define :BOLDORE do |s|
  s.name          "Boldore"
  s.types         :ROCK
  s.base_stats    hp: 70, attack: 105, defense: 105, speed: 20, sp_atk: 50, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      137
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 1, defense: 1
  s.abilities     :STURDY, :WEAKARMOR
  s.hidden_abilities :SANDFORCE
  s.moves do |m|
    m.at 0, :POWERGEM
    m.at 1, :SANDATTACK
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :STEALTHROCK
    m.at 12, :MUDSLAP
    m.at 16, :SMACKDOWN
    m.at 20, :IRONDEFENSE
    m.at 24, :HEADBUTT
    m.at 30, :ROCKSLIDE
    m.at 36, :ROCKBLAST
    m.at 42, :SANDSTORM
    m.at 48, :STONEEDGE
    m.at 54, :EXPLOSION
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BODYPRESS, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FLASHCANNON, :FRUSTRATION, :GRAVITY, :HEAVYSLAM, :HIDDENPOWER, :IRONDEFENSE, :METEORBEAM, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POWERGEM, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SWAGGER, :TOXIC, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   3840
  s.height        0.9
  s.weight        102.0
  s.color         :Blue
  s.shape         :Multiped
  s.category      "Ore"
  s.pokedex_entry "Because its energy was too great to be contained, the energy leaked and formed orange crystals."
  s.generation    5
  s.evolves_into  :GIGALITH, :Trade
  s.wild_item_common   :EVERSTONE
  s.wild_item_uncommon :HARDSTONE
end

GameData::Species.define :GIGALITH do |s|
  s.name          "Gigalith"
  s.types         :ROCK
  s.base_stats    hp: 85, attack: 135, defense: 130, speed: 25, sp_atk: 60, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      258
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :STURDY, :SANDSTREAM
  s.hidden_abilities :SANDFORCE
  s.moves do |m|
    m.at 1, :POWERGEM
    m.at 1, :SANDATTACK
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :STEALTHROCK
    m.at 12, :MUDSLAP
    m.at 16, :SMACKDOWN
    m.at 20, :IRONDEFENSE
    m.at 24, :HEADBUTT
    m.at 30, :ROCKSLIDE
    m.at 36, :ROCKBLAST
    m.at 42, :SANDSTORM
    m.at 48, :STONEEDGE
    m.at 54, :EXPLOSION
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BODYPRESS, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :HEAVYSLAM, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :LASERFOCUS, :METEORBEAM, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POWERGEM, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :THROATCHOP, :TOXIC, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   3840
  s.height        1.7
  s.weight        260.0
  s.color         :Blue
  s.shape         :Multiped
  s.category      "Compressed"
  s.pokedex_entry "The solar energy absorbed by its body's orange crystals is magnified internally and fired from its mouth."
  s.generation    5
  s.wild_item_common   :EVERSTONE
  s.wild_item_uncommon :HARDSTONE
end

GameData::Species.define :ARCHEN do |s|
  s.name          "Archen"
  s.types         :ROCK, :FLYING
  s.base_stats    hp: 55, attack: 112, defense: 45, speed: 70, sp_atk: 74, sp_def: 45
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      71
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :DEFEATIST
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 3, :ROCKTHROW
    m.at 6, :WINGATTACK
    m.at 9, :DRAGONBREATH
    m.at 12, :ANCIENTPOWER
    m.at 15, :PLUCK
    m.at 18, :QUICKGUARD
    m.at 21, :UTURN
    m.at 24, :ROCKSLIDE
    m.at 27, :SCARYFACE
    m.at 30, :CRUNCH
    m.at 33, :AGILITY
    m.at 36, :TAILWIND
    m.at 39, :DRAGONCLAW
    m.at 42, :THRASH
    m.at 45, :ENDEAVOR
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ALLYSWITCH, :AQUATAIL, :ASSURANCE, :ATTRACT, :BOUNCE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DEFOG, :DIG, :DOUBLETEAM, :DRAGONCLAW, :DRAGONPULSE, :DUALWINGBEAT, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :IRONDEFENSE, :IRONTAIL, :KNOCKOFF, :LASHOUT, :METEORBEAM, :MIMIC, :NATURALGIFT, :PLUCK, :PROTECT, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STEELWING, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :TORMENT, :TOXIC, :UPROAR, :UTURN, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BITE, :DEFOG, :DOUBLETEAM, :HEADSMASH, :KNOCKOFF, :SWITCHEROO
  s.egg_groups    :Flying, :Water3
  s.hatch_steps   7680
  s.height        0.5
  s.weight        9.5
  s.color         :Yellow
  s.shape         :Winged
  s.category      "First Bird"
  s.pokedex_entry "Revived from a fossil, this Pokémon is thought to be the ancestor of all bird Pokémon."
  s.generation    5
  s.evolves_into  :ARCHEOPS, :Level, 37
end

GameData::Species.define :ARCHEOPS do |s|
  s.name          "Archeops"
  s.types         :ROCK, :FLYING
  s.base_stats    hp: 75, attack: 140, defense: 65, speed: 110, sp_atk: 112, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      177
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :DEFEATIST
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 1, :ROCKTHROW
    m.at 1, :WINGATTACK
    m.at 9, :DRAGONBREATH
    m.at 12, :ANCIENTPOWER
    m.at 15, :PLUCK
    m.at 18, :QUICKGUARD
    m.at 21, :UTURN
    m.at 24, :ROCKSLIDE
    m.at 27, :SCARYFACE
    m.at 30, :CRUNCH
    m.at 33, :AGILITY
    m.at 36, :TAILWIND
    m.at 41, :DRAGONCLAW
    m.at 46, :THRASH
    m.at 51, :ENDEAVOR
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRSLASH, :ALLYSWITCH, :AQUATAIL, :ASSURANCE, :ATTRACT, :BOUNCE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DEFOG, :DIG, :DOUBLETEAM, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FLY, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONDEFENSE, :IRONTAIL, :KNOCKOFF, :LASHOUT, :METEORBEAM, :MIMIC, :NATURALGIFT, :OUTRAGE, :PLUCK, :PROTECT, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SKYATTACK, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STEELWING, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :TORMENT, :TOXIC, :UPROAR, :UTURN, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Flying, :Water3
  s.hatch_steps   7680
  s.height        1.4
  s.weight        32.0
  s.color         :Yellow
  s.shape         :Winged
  s.category      "First Bird"
  s.pokedex_entry "It runs better than it flies. It catches prey by running at speeds comparable to those of an automobile."
  s.generation    5
end

GameData::Species.define :TERRAKION do |s|
  s.name          "Terrakion"
  s.types         :ROCK, :FIGHTING
  s.base_stats    hp: 91, attack: 129, defense: 90, speed: 108, sp_atk: 72, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           attack: 3
  s.abilities     :JUSTIFIED
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 1, :HELPINGHAND
    m.at 1, :WORKUP
    m.at 7, :SMACKDOWN
    m.at 14, :QUICKGUARD
    m.at 21, :DOUBLEKICK
    m.at 28, :RETALIATE
    m.at 35, :ROCKSLIDE
    m.at 42, :TAKEDOWN
    m.at 49, :SACREDSWORD
    m.at 56, :SWORDSDANCE
    m.at 63, :STONEEDGE
    m.at 70, :CLOSECOMBAT
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :BLOCK, :BRICKBREAK, :BULLDOZE, :CALMMIND, :CLOSECOMBAT, :COACHING, :CONFIDE, :CUT, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FALSESWIPE, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IRONHEAD, :LASERFOCUS, :MEGAHORN, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :PSYCHUP, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROAR, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SMARTSTRIKE, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :TOXIC, :WORKUP, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        1.9
  s.weight        260.0
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Cavern"
  s.pokedex_entry "Its charge is strong enough to break through a giant castle wall in one blow. This Pokémon is spoken of in legends."
  s.generation    5
  s.flags         :Legendary
end

GameData::Species.define :BINACLE do |s|
  s.name          "Binacle"
  s.types         :ROCK, :WATER
  s.base_stats    hp: 42, attack: 52, defense: 67, speed: 50, sp_atk: 39, sp_def: 56
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :TOUGHCLAWS, :SNIPER
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :MUDSLAP
    m.at 4, :WITHDRAW
    m.at 8, :WATERGUN
    m.at 12, :FURYCUTTER
    m.at 16, :FURYSWIPES
    m.at 20, :ANCIENTPOWER
    m.at 24, :ROCKPOLISH
    m.at 28, :SLASH
    m.at 32, :HONECLAWS
    m.at 36, :RAZORSHELL
    m.at 40, :SHELLSMASH
    m.at 44, :CROSSCHOP
  end
  s.tutor_moves   :AERIALACE, :ASSURANCE, :ATTRACT, :BEATUP, :BLIZZARD, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :DUALCHOP, :EARTHQUAKE, :EMBARGO, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FRUSTRATION, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :ICYWIND, :INFESTATION, :IRONDEFENSE, :LIQUIDATION, :MIMIC, :MUDSHOT, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALD, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :SWORDSDANCE, :TAUNT, :THIEF, :TORMENT, :TOXIC, :UPROAR, :WATERPULSE, :XSCISSOR, :TERABLAST
  s.egg_moves     :NIGHTSLASH, :SANDATTACK, :SWITCHEROO
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        0.5
  s.weight        31.0
  s.color         :Brown
  s.shape         :MultiBody
  s.category      "Two-Handed"
  s.pokedex_entry "They stretch and then contract, yanking their rocks along with them in bold hops. They eat seaweed that washes up on the shoreline."
  s.generation    6
  s.evolves_into  :BARBARACLE, :Level, 39
end

GameData::Species.define :BARBARACLE do |s|
  s.name          "Barbaracle"
  s.types         :ROCK, :WATER
  s.base_stats    hp: 72, attack: 105, defense: 115, speed: 68, sp_atk: 54, sp_def: 86
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :TOUGHCLAWS, :SNIPER
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 1, :SKULLBASH
    m.at 1, :SCRATCH
    m.at 1, :MUDSLAP
    m.at 1, :WITHDRAW
    m.at 1, :WATERGUN
    m.at 12, :FURYCUTTER
    m.at 16, :FURYSWIPES
    m.at 20, :ANCIENTPOWER
    m.at 24, :ROCKPOLISH
    m.at 28, :SLASH
    m.at 32, :HONECLAWS
    m.at 36, :RAZORSHELL
    m.at 42, :SHELLSMASH
    m.at 48, :CROSSCHOP
    m.at 54, :STONEEDGE
  end
  s.tutor_moves   :AERIALACE, :ASSURANCE, :ATTRACT, :BEATUP, :BLIZZARD, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DIVE, :DOUBLETEAM, :DRAGONCLAW, :DUALCHOP, :EARTHPOWER, :EARTHQUAKE, :EMBARGO, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INFESTATION, :IRONDEFENSE, :LASERFOCUS, :LIQUIDATION, :LOWKICK, :METEORBEAM, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALD, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :TAUNT, :THIEF, :TORMENT, :TOXIC, :UPROAR, :WATERPULSE, :WHIRLPOOL, :XSCISSOR, :TERABLAST
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        1.3
  s.weight        96.0
  s.color         :Brown
  s.shape         :MultiBody
  s.category      "Collective"
  s.pokedex_entry "Barbaracle's legs and hands have minds of their own, and they will move independently. But they usually follow the head's orders."
  s.generation    6
end

GameData::Species.define :TYRUNT do |s|
  s.name          "Tyrunt"
  s.types         :ROCK, :DRAGON
  s.base_stats    hp: 58, attack: 89, defense: 77, speed: 48, sp_atk: 45, sp_def: 45
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      72
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :STRONGJAW
  s.hidden_abilities :STURDY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 4, :ROAR
    m.at 8, :ANCIENTPOWER
    m.at 12, :CHARM
    m.at 16, :BITE
    m.at 20, :DRAGONTAIL
    m.at 24, :STOMP
    m.at 28, :ROCKSLIDE
    m.at 32, :CRUNCH
    m.at 36, :DRAGONCLAW
    m.at 40, :THRASH
    m.at 44, :EARTHQUAKE
    m.at 48, :HORNDRILL
  end
  s.tutor_moves   :AERIALACE, :ASSURANCE, :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CHARM, :CLOSECOMBAT, :CONFIDE, :CRUNCH, :DARKPULSE, :DIG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREFANG, :FRUSTRATION, :HIDDENPOWER, :HONECLAWS, :HYPERVOICE, :ICEFANG, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LASHOUT, :METEORBEAM, :MIMIC, :NATURALGIFT, :OUTRAGE, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THUNDERFANG, :TOXIC, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :CURSE, :POISONFANG, :ROCKPOLISH, :ROCKTHROW
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   7680
  s.height        0.8
  s.weight        26.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Royal Heir"
  s.pokedex_entry "Its immense jaws have enough destructive force that it can chew up an automobile. It lived 100 million years ago."
  s.generation    6
  s.evolves_into  :TYRANTRUM, :LevelDay, 39
end

GameData::Species.define :TYRANTRUM do |s|
  s.name          "Tyrantrum"
  s.types         :ROCK, :DRAGON
  s.base_stats    hp: 82, attack: 121, defense: 119, speed: 71, sp_atk: 69, sp_def: 59
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      182
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :STRONGJAW
  s.hidden_abilities :ROCKHEAD
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :ROAR
    m.at 1, :ANCIENTPOWER
    m.at 12, :CHARM
    m.at 16, :BITE
    m.at 20, :DRAGONTAIL
    m.at 24, :STOMP
    m.at 28, :ROCKSLIDE
    m.at 32, :CRUNCH
    m.at 36, :DRAGONCLAW
    m.at 42, :THRASH
    m.at 48, :EARTHQUAKE
    m.at 54, :HORNDRILL
    m.at 60, :GIGAIMPACT
    m.at 66, :HEADSMASH
  end
  s.tutor_moves   :AERIALACE, :ASSURANCE, :ATTRACT, :BLOCK, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CHARM, :CLOSECOMBAT, :CONFIDE, :CRUNCH, :DARKPULSE, :DIG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREFANG, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICEFANG, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LASHOUT, :METEORBEAM, :MIMIC, :NATURALGIFT, :OUTRAGE, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THUNDERFANG, :TOXIC, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   7680
  s.height        2.5
  s.weight        270.0
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Despot"
  s.pokedex_entry "Thanks to its gargantuan jaws, which could shred thick metal plates as if they were paper, it was invincible in the ancient world it once inhabited."
  s.generation    6
end

GameData::Species.define :AMAURA do |s|
  s.name          "Amaura"
  s.types         :ROCK, :ICE
  s.base_stats    hp: 77, attack: 59, defense: 50, speed: 46, sp_atk: 67, sp_def: 63
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      72
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :REFRIGERATE
  s.hidden_abilities :SNOWWARNING
  s.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 1, :GROWL
    m.at 4, :ENCORE
    m.at 8, :ANCIENTPOWER
    m.at 12, :ICYWIND
    m.at 16, :ROUND
    m.at 20, :MIST
    m.at 24, :AURORABEAM
    m.at 28, :THUNDERWAVE
    m.at 32, :NATUREPOWER
    m.at 36, :FREEZEDRY
    m.at 40, :ICEBEAM
    m.at 44, :LIGHTSCREEN
    m.at 48, :HAIL
    m.at 52, :BLIZZARD
    m.at 56, :HYPERBEAM
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :DRAGONTAIL, :DREAMEATER, :EARTHPOWER, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FLASH, :FLASHCANNON, :FROSTBREATH, :FRUSTRATION, :HAIL, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LIGHTSCREEN, :MAGNETRISE, :METEORBEAM, :MIMIC, :MUDSHOT, :NATURALGIFT, :NATUREPOWER, :OUTRAGE, :PROTECT, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :WATERPULSE, :WEATHERBALL, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AURORAVEIL, :DISCHARGE, :HAZE, :MIRRORCOAT, :ROCKTHROW, :TAKEDOWN
  s.egg_groups    :Monster
  s.hatch_steps   7680
  s.height        1.3
  s.weight        25.2
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Tundra"
  s.pokedex_entry "This ancient Pokémon was restored from part of its body that had been frozen in ice for over 100 million years."
  s.generation    6
  s.evolves_into  :AURORUS, :LevelNight, 39
end

GameData::Species.define :AURORUS do |s|
  s.name          "Aurorus"
  s.types         :ROCK, :ICE
  s.base_stats    hp: 123, attack: 77, defense: 72, speed: 58, sp_atk: 99, sp_def: 92
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      104
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :REFRIGERATE
  s.hidden_abilities :SNOWWARNING
  s.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 1, :GROWL
    m.at 1, :ENCORE
    m.at 1, :ANCIENTPOWER
    m.at 12, :ICYWIND
    m.at 16, :ROUND
    m.at 20, :MIST
    m.at 24, :AURORABEAM
    m.at 28, :THUNDERWAVE
    m.at 32, :NATUREPOWER
    m.at 36, :FREEZEDRY
    m.at 42, :ICEBEAM
    m.at 48, :LIGHTSCREEN
    m.at 54, :HAIL
    m.at 60, :BLIZZARD
    m.at 66, :HYPERBEAM
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :DRAGONTAIL, :DREAMEATER, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENCORE, :ENDURE, :FACADE, :FLASH, :FLASHCANNON, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LIGHTSCREEN, :MAGNETRISE, :METEORBEAM, :MIMIC, :MUDSHOT, :NATURALGIFT, :NATUREPOWER, :OUTRAGE, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :WATERPULSE, :WEATHERBALL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Monster
  s.hatch_steps   7680
  s.height        2.7
  s.weight        225.0
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Tundra"
  s.pokedex_entry "Using its diamond-shaped crystals, it can instantly create a wall of ice to block an opponent's attack."
  s.generation    6
end

GameData::Species.define :CARBINK do |s|
  s.name          "Carbink"
  s.types         :ROCK, :FAIRY
  s.base_stats    hp: 50, attack: 50, defense: 150, speed: 50, sp_atk: 50, sp_def: 150
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      100
  s.catch_rate    60
  s.happiness     50
  s.evs           defense: 1, sp_defense: 1
  s.abilities     :CLEARBODY
  s.hidden_abilities :STURDY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 5, :GUARDSPLIT
    m.at 10, :SMACKDOWN
    m.at 15, :FLAIL
    m.at 20, :ANCIENTPOWER
    m.at 25, :ROCKPOLISH
    m.at 30, :LIGHTSCREEN
    m.at 35, :ROCKSLIDE
    m.at 40, :SKILLSWAP
    m.at 45, :POWERGEM
    m.at 50, :STEALTHROCK
    m.at 55, :MOONBLAST
    m.at 60, :STONEEDGE
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :BODYPRESS, :CALMMIND, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :EXPLOSION, :FACADE, :FLASH, :FRUSTRATION, :GRAVITY, :GUARDSWAP, :GYROBALL, :HAIL, :HIDDENPOWER, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MAGNETRISE, :METEORBEAM, :MIMIC, :MISTYEXPLOSION, :NATURALGIFT, :NATUREPOWER, :POWERGEM, :PROTECT, :PSYCHIC, :PSYCHUP, :REFLECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SKILLSWAP, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :TERRAINPULSE, :TOXIC, :TRICKROOM, :WONDERROOM, :TERABLAST
  s.egg_groups    :Fairy, :Mineral
  s.hatch_steps   6400
  s.height        0.3
  s.weight        5.7
  s.color         :Gray
  s.shape         :Head
  s.category      "Jewel"
  s.pokedex_entry "Born from the high temperatures and pressures deep underground, it defends itself by firing beams from the jewel part of its body."
  s.generation    6
end

GameData::Species.define :DIANCIE do |s|
  s.name          "Diancie"
  s.types         :ROCK, :FAIRY
  s.base_stats    hp: 50, attack: 100, defense: 150, speed: 50, sp_atk: 100, sp_def: 150
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     50
  s.evs           defense: 1, sp_defense: 2
  s.abilities     :CLEARBODY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 7, :GUARDSPLIT
    m.at 14, :SMACKDOWN
    m.at 21, :FLAIL
    m.at 28, :ANCIENTPOWER
    m.at 35, :ROCKPOLISH
    m.at 42, :LIGHTSCREEN
    m.at 49, :ROCKSLIDE
    m.at 56, :SKILLSWAP
    m.at 63, :POWERGEM
    m.at 70, :STEALTHROCK
    m.at 77, :MOONBLAST
    m.at 84, :STONEEDGE
    m.at 91, :DIAMONDSTORM
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :AMNESIA, :BATONPASS, :BODYPRESS, :CALMMIND, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :EARTHPOWER, :ENCORE, :ENDEAVOR, :ENDURE, :EXPLOSION, :FACADE, :FAKETEARS, :FLASH, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :GUARDSWAP, :GYROBALL, :HAIL, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :LASTRESORT, :LIGHTSCREEN, :MAGNETRISE, :METEORBEAM, :METRONOME, :MIMIC, :MISTYEXPLOSION, :MYSTICALFIRE, :NATURALGIFT, :NATUREPOWER, :PLAYROUGH, :POWERGEM, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SKILLSWAP, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :TERRAINPULSE, :TOXIC, :TRICKROOM, :WONDERROOM, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        0.7
  s.weight        8.8
  s.color         :Pink
  s.shape         :HeadArms
  s.category      "Jewel"
  s.pokedex_entry "A sudden transformation of Carbink, its pink, glimmering body is said to be the loveliest sight in the whole world."
  s.generation    6
  s.flags         :Mythical
end

GameData::Species.define :ROCKRUFF do |s|
  s.name          "Rockruff"
  s.types         :ROCK
  s.base_stats    hp: 45, attack: 65, defense: 40, speed: 60, sp_atk: 30, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      56
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :KEENEYE, :VITALSPIRIT
  s.hidden_abilities :STEADFAST
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 4, :SANDATTACK
    m.at 8, :DOUBLETEAM
    m.at 12, :ROCKTHROW
    m.at 16, :HOWL
    m.at 20, :BITE
    m.at 24, :ROCKTOMB
    m.at 28, :ROAR
    m.at 32, :ROCKSLIDE
    m.at 36, :CRUNCH
    m.at 40, :SCARYFACE
    m.at 44, :STEALTHROCK
    m.at 48, :STONEEDGE
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CONFIDE, :COVET, :CRUNCH, :DOUBLETEAM, :EARTHPOWER, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREFANG, :FRUSTRATION, :HIDDENPOWER, :HYPERVOICE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LASTRESORT, :MIMIC, :NATURALGIFT, :PLAYROUGH, :PROTECT, :REST, :RETURN, :ROAR, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TAUNT, :THUNDERFANG, :TOXIC, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ENDEAVOR, :LASTRESORT, :THRASH
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.5
  s.weight        9.2
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Puppy"
  s.pokedex_entry "This Pokémon has lived with people since times long ago. It can sense when its Trainer is in the dumps and will stick close by its Trainer's side."
  s.generation    7
  s.evolves_into  :LYCANROC, :Level, 25
end

GameData::Species.define :LYCANROC do |s|
  s.name          "Lycanroc"
  s.types         :ROCK
  s.base_stats    hp: 75, attack: 115, defense: 65, speed: 112, sp_atk: 55, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      170
  s.catch_rate    90
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :KEENEYE, :SANDRUSH
  s.hidden_abilities :STEADFAST
  s.moves do |m|
    m.at 0, :SUCKERPUNCH
    m.at 1, :ACCELEROCK
    m.at 1, :QUICKGUARD
    m.at 1, :QUICKATTACK
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :SANDATTACK
    m.at 1, :DOUBLETEAM
    m.at 12, :ROCKTHROW
    m.at 16, :HOWL
    m.at 20, :BITE
    m.at 24, :ROCKTOMB
    m.at 30, :ROAR
    m.at 36, :ROCKSLIDE
    m.at 42, :CRUNCH
    m.at 48, :SCARYFACE
    m.at 54, :STEALTHROCK
    m.at 60, :STONEEDGE
  end
  s.tutor_moves   :AGILITY, :ASSURANCE, :ATTRACT, :BRICKBREAK, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :COVET, :CRUNCH, :DOUBLETEAM, :DRILLRUN, :EARTHPOWER, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREFANG, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERVOICE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LASHOUT, :LASTRESORT, :MIMIC, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILSLAP, :TAUNT, :THUNDERFANG, :TOXIC, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.8
  s.weight        25.0
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Wolf"
  s.pokedex_entry "Its quick movements confuse its enemies. Well equipped with claws and fangs, it also uses the sharp rocks in its mane as weapons."
  s.generation    7
end

GameData::Species.define :MINIOR do |s|
  s.name          "Minior"
  s.types         :ROCK, :FLYING
  s.base_stats    hp: 60, attack: 60, defense: 100, speed: 60, sp_atk: 60, sp_def: 100
  s.gender_ratio  :Genderless
  s.growth_rate   :Parabolic
  s.base_exp      154
  s.catch_rate    30
  s.happiness     50
  s.evs           defense: 1, sp_defense: 1
  s.abilities     :SHIELDSDOWN
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 3, :DEFENSECURL
    m.at 8, :ROLLOUT
    m.at 10, :CONFUSERAY
    m.at 15, :SWIFT
    m.at 17, :ANCIENTPOWER
    m.at 22, :SELFDESTRUCT
    m.at 24, :STEALTHROCK
    m.at 29, :TAKEDOWN
    m.at 31, :AUTOTOMIZE
    m.at 36, :COSMICPOWER
    m.at 38, :POWERGEM
    m.at 43, :DOUBLEEDGE
    m.at 45, :SHELLSMASH
    m.at 50, :EXPLOSION
  end
  s.tutor_moves   :ACROBATICS, :ATTRACT, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :EXPLOSION, :FACADE, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :GYROBALL, :HIDDENPOWER, :HYPERBEAM, :IRONHEAD, :LASTRESORT, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :REFLECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :TELEKINESIS, :TOXIC, :UTURN, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   6400
  s.height        0.3
  s.weight        40.0
  s.color         :Brown
  s.shape         :Head
  s.category      "Meteor"
  s.pokedex_entry "Originally making its home in the ozone layer, it hurtles to the ground when the shell enclosing its body grows too heavy."
  s.generation    7
  s.wild_item_uncommon :STARPIECE
end

GameData::Species.define :NIHILEGO do |s|
  s.name          "Nihilego"
  s.types         :ROCK, :POISON
  s.base_stats    hp: 109, attack: 53, defense: 47, speed: 103, sp_atk: 127, sp_def: 131
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    45
  s.happiness     0
  s.evs           sp_defense: 3
  s.abilities     :BEASTBOOST
  s.moves do |m|
    m.at 1, :WRAP
    m.at 1, :POUND
    m.at 5, :ACID
    m.at 10, :TICKLE
    m.at 15, :ACIDSPRAY
    m.at 20, :CLEARSMOG
    m.at 25, :POWERSPLIT
    m.at 25, :GUARDSPLIT
    m.at 30, :VENOSHOCK
    m.at 35, :HEADBUTT
    m.at 40, :TOXICSPIKES
    m.at 45, :VENOMDRENCH
    m.at 50, :POWERGEM
    m.at 55, :STEALTHROCK
    m.at 60, :MIRRORCOAT
    m.at 65, :WONDERROOM
    m.at 70, :HEADSMASH
  end
  s.tutor_moves   :ALLYSWITCH, :BIND, :BODYSLAM, :BRUTALSWING, :CHARGEBEAM, :CONFIDE, :CORROSIVEGAS, :CROSSPOISON, :DAZZLINGGLEAM, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FOULPLAY, :FRUSTRATION, :GRASSKNOT, :GUNKSHOT, :HEX, :HIDDENPOWER, :IRONHEAD, :KNOCKOFF, :LIGHTSCREEN, :MAGICCOAT, :METEORBEAM, :MIMIC, :NATURALGIFT, :PAINSPLIT, :POISONJAB, :POWERGEM, :PROTECT, :PSYCHIC, :PSYSHOCK, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SPITE, :STEALTHROCK, :SUBSTITUTE, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TOXICSPIKES, :TRICKROOM, :VENOMDRENCH, :VENOSHOCK, :WONDERROOM, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.2
  s.weight        55.5
  s.color         :White
  s.shape         :Multiped
  s.category      "Parasite"
  s.pokedex_entry "One of several mysterious Ultra Beasts. People on the street report observing those infested by it suddenly becoming violent."
  s.generation    7
  s.flags         :UltraBeast
end

GameData::Species.define :STAKATAKA do |s|
  s.name          "Stakataka"
  s.types         :ROCK, :STEEL
  s.base_stats    hp: 61, attack: 131, defense: 211, speed: 13, sp_atk: 53, sp_def: 101
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    30
  s.happiness     0
  s.evs           defense: 3
  s.abilities     :BEASTBOOST
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 5, :ROCKTHROW
    m.at 10, :PROTECT
    m.at 15, :STOMP
    m.at 20, :BLOCK
    m.at 25, :ROCKSLIDE
    m.at 30, :WIDEGUARD
    m.at 35, :AUTOTOMIZE
    m.at 40, :ROCKBLAST
    m.at 45, :MAGNETRISE
    m.at 50, :IRONDEFENSE
    m.at 55, :IRONHEAD
    m.at 60, :TAKEDOWN
    m.at 65, :STEALTHROCK
    m.at 70, :DOUBLEEDGE
  end
  s.tutor_moves   :ALLYSWITCH, :BIND, :BLOCK, :BODYPRESS, :BODYSLAM, :BRUTALSWING, :BULLDOZE, :EARTHQUAKE, :ENDURE, :FACADE, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :GYROBALL, :HEATCRASH, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :INFESTATION, :IRONDEFENSE, :IRONHEAD, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MAGNETRISE, :MEGAKICK, :METEORBEAM, :MIMIC, :NATURALGIFT, :PROTECT, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SKILLSWAP, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUPERPOWER, :TELEKINESIS, :TOXIC, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        5.5
  s.weight        820.0
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Rampart"
  s.pokedex_entry "When stone walls started moving and attacking, the brute's true identity was this mysterious life-form, which brings to mind an Ultra Beast."
  s.generation    7
  s.flags         :UltraBeast
end

GameData::Species.define :ROLYCOLY do |s|
  s.name          "Rolycoly"
  s.types         :ROCK
  s.base_stats    hp: 30, attack: 40, defense: 50, speed: 30, sp_atk: 40, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      48
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :STEAMENGINE, :HEATPROOF
  s.hidden_abilities :FLASHFIRE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :SMOKESCREEN
    m.at 5, :RAPIDSPIN
    m.at 10, :SMACKDOWN
    m.at 15, :ROCKPOLISH
    m.at 20, :ANCIENTPOWER
    m.at 25, :INCINERATE
    m.at 30, :STEALTHROCK
    m.at 35, :HEATCRASH
    m.at 40, :ROCKBLAST
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :GYROBALL, :HEATCRASH, :HIDDENPOWER, :IRONDEFENSE, :IRONHEAD, :METEORBEAM, :MIMIC, :NATURALGIFT, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :SPIKES, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :TOXIC, :WILLOWISP, :TERABLAST
  s.egg_moves     :BLOCK, :EXPLOSION, :MUDSLAP
  s.egg_groups    :Mineral
  s.hatch_steps   3840
  s.height        0.3
  s.weight        12.0
  s.color         :Black
  s.shape         :Head
  s.category      "Coal"
  s.pokedex_entry "Most of its body has the same composition as coal. Fittingly, this Pokémon was first discovered in coal mines about 400 years ago."
  s.generation    8
  s.evolves_into  :CARKOL, :Level, 18
end

GameData::Species.define :CARKOL do |s|
  s.name          "Carkol"
  s.types         :ROCK, :FIRE
  s.base_stats    hp: 80, attack: 60, defense: 90, speed: 50, sp_atk: 60, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      144
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :STEAMENGINE, :FLAMEBODY
  s.hidden_abilities :FLASHFIRE
  s.moves do |m|
    m.at 0, :FLAMECHARGE
    m.at 1, :TACKLE
    m.at 1, :SMOKESCREEN
    m.at 1, :RAPIDSPIN
    m.at 1, :SMACKDOWN
    m.at 15, :ROCKPOLISH
    m.at 20, :ANCIENTPOWER
    m.at 27, :INCINERATE
    m.at 35, :STEALTHROCK
    m.at 41, :HEATCRASH
    m.at 48, :ROCKBLAST
    m.at 55, :BURNUP
  end
  s.tutor_moves   :ATTRACT, :BODYPRESS, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :ENDURE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMETHROWER, :FLAREBLITZ, :FRUSTRATION, :GYROBALL, :HEATCRASH, :HEATWAVE, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :IRONDEFENSE, :IRONHEAD, :METEORBEAM, :MIMIC, :NATURALGIFT, :OVERHEAT, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCALD, :SCORCHINGSANDS, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :SPIKES, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :TOXIC, :WILLOWISP, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   3840
  s.height        1.1
  s.weight        78.0
  s.color         :Black
  s.shape         :HeadLegs
  s.category      "Coal"
  s.pokedex_entry "By rapidly rolling its legs, it can travel at over 18 mph. The temperature of the flames it breathes exceeds 1,000 degrees Celsius."
  s.generation    8
  s.evolves_into  :COALOSSAL, :Level, 34
end

GameData::Species.define :COALOSSAL do |s|
  s.name          "Coalossal"
  s.types         :ROCK, :FIRE
  s.base_stats    hp: 110, attack: 80, defense: 120, speed: 30, sp_atk: 80, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      255
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 3
  s.abilities     :STEAMENGINE, :FLAMEBODY
  s.hidden_abilities :FLASHFIRE
  s.moves do |m|
    m.at 0, :TARSHOT
    m.at 1, :FLAMECHARGE
    m.at 1, :TACKLE
    m.at 1, :SMOKESCREEN
    m.at 1, :RAPIDSPIN
    m.at 1, :SMACKDOWN
    m.at 15, :ROCKPOLISH
    m.at 20, :ANCIENTPOWER
    m.at 27, :INCINERATE
    m.at 37, :STEALTHROCK
    m.at 45, :HEATCRASH
    m.at 54, :ROCKBLAST
    m.at 63, :BURNUP
  end
  s.tutor_moves   :ATTRACT, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FIRESPIN, :FLAMETHROWER, :FLAREBLITZ, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEATCRASH, :HEATWAVE, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :MIMIC, :NATURALGIFT, :OVERHEAT, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCALD, :SCORCHINGSANDS, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPIKES, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :TOXIC, :WILLOWISP, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   3840
  s.height        2.8
  s.weight        310.5
  s.color         :Black
  s.shape         :Bipedal
  s.category      "Coal"
  s.pokedex_entry "While it's engaged in battle, its mountain of coal will burn bright red, sending off sparks that scorch the surrounding area."
  s.generation    8
end

GameData::Species.define :STONJOURNER do |s|
  s.name          "Stonjourner"
  s.types         :ROCK
  s.base_stats    hp: 100, attack: 125, defense: 135, speed: 70, sp_atk: 20, sp_def: 20
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      165
  s.catch_rate    60
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :POWERSPOT
  s.moves do |m|
    m.at 1, :ROCKTHROW
    m.at 1, :BLOCK
    m.at 6, :ROCKPOLISH
    m.at 12, :ROCKTOMB
    m.at 18, :GRAVITY
    m.at 24, :STOMP
    m.at 30, :STEALTHROCK
    m.at 36, :ROCKSLIDE
    m.at 42, :BODYSLAM
    m.at 48, :WIDEGUARD
    m.at 54, :HEAVYSLAM
    m.at 60, :STONEEDGE
    m.at 66, :MEGAKICK
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BODYPRESS, :BODYSLAM, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HEATCRASH, :HEAVYSLAM, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :IRONDEFENSE, :MEGAKICK, :METEORBEAM, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TOXIC, :WONDERROOM, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :CURSE
  s.egg_groups    :Mineral
  s.hatch_steps   6400
  s.height        2.5
  s.weight        520.0
  s.color         :Gray
  s.shape         :HeadLegs
  s.category      "Big Rock"
  s.pokedex_entry "Once a year, on a specific date and at a specific time, they gather out of nowhere and form up in a circle."
  s.generation    8
end

