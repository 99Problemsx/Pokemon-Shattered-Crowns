#===============================================================================
# Shattered Crowns - Dragon Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :DRATINI do |s|
  s.name          "Dratini"
  s.types         :DRAGON
  s.base_stats    hp: 41, attack: 64, defense: 45, speed: 50, sp_atk: 50, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      60
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 1
  s.abilities     :SHEDSKIN
  s.hidden_abilities :MARVELSCALE
  s.moves do |m|
    m.at 1, :WRAP
    m.at 1, :LEER
    m.at 5, :TWISTER
    m.at 10, :THUNDERWAVE
    m.at 15, :DRAGONTAIL
    m.at 20, :AGILITY
    m.at 25, :SLAM
    m.at 31, :AQUATAIL
    m.at 35, :DRAGONRUSH
    m.at 40, :SAFEGUARD
    m.at 45, :RAINDANCE
    m.at 50, :DRAGONDANCE
    m.at 55, :OUTRAGE
    m.at 60, :HYPERBEAM
  end
  s.tutor_moves   :AGILITY, :AQUATAIL, :ATTRACT, :BIND, :BLIZZARD, :BODYSLAM, :BREAKINGSWIPE, :BRUTALSWING, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :ENDURE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMETHROWER, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INCINERATE, :IRONTAIL, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALESHOT, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TWISTER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :AQUAJET, :DRAGONBREATH, :DRAGONDANCE, :DRAGONRUSH, :EXTREMESPEED, :HAZE, :MIST, :SUPERSONIC, :WATERPULSE
  s.egg_groups    :Water1, :Dragon
  s.hatch_steps   10240
  s.height        1.8
  s.weight        3.3
  s.color         :Blue
  s.shape         :Serpentine
  s.habitat       :WatersEdge
  s.category      "Dragon"
  s.pokedex_entry "A Dratini continually molts and sloughs off its old skin. It does so because the life energy within its body steadily builds to reach uncontrollable levels."
  s.generation    1
  s.evolves_into  :DRAGONAIR, :Level, 30
  s.wild_item_uncommon :DRAGONSCALE
end

GameData::Species.define :DRAGONAIR do |s|
  s.name          "Dragonair"
  s.types         :DRAGON
  s.base_stats    hp: 61, attack: 84, defense: 65, speed: 70, sp_atk: 70, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      147
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 2
  s.abilities     :SHEDSKIN
  s.hidden_abilities :MARVELSCALE
  s.moves do |m|
    m.at 1, :WRAP
    m.at 1, :LEER
    m.at 1, :TWISTER
    m.at 1, :THUNDERWAVE
    m.at 15, :DRAGONTAIL
    m.at 20, :AGILITY
    m.at 25, :SLAM
    m.at 33, :AQUATAIL
    m.at 39, :DRAGONRUSH
    m.at 46, :SAFEGUARD
    m.at 53, :RAINDANCE
    m.at 60, :DRAGONDANCE
    m.at 67, :OUTRAGE
    m.at 74, :HYPERBEAM
  end
  s.tutor_moves   :AGILITY, :AQUATAIL, :ATTRACT, :BIND, :BLIZZARD, :BODYSLAM, :BREAKINGSWIPE, :BRUTALSWING, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :ENDURE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMETHROWER, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INCINERATE, :IRONTAIL, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALESHOT, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TWISTER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Dragon
  s.hatch_steps   10240
  s.height        4.0
  s.weight        16.5
  s.color         :Blue
  s.shape         :Serpentine
  s.habitat       :WatersEdge
  s.category      "Dragon"
  s.pokedex_entry "A Dragonair stores an enormous amount of energy inside its body. It is said to alter the weather around it by loosing energy from the crystals on its neck and tail."
  s.generation    1
  s.evolves_into  :DRAGONITE, :Level, 55
  s.wild_item_uncommon :DRAGONSCALE
end

GameData::Species.define :DRAGONITE do |s|
  s.name          "Dragonite"
  s.types         :DRAGON, :FLYING
  s.base_stats    hp: 91, attack: 134, defense: 95, speed: 80, sp_atk: 100, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 3
  s.abilities     :INNERFOCUS
  s.hidden_abilities :MULTISCALE
  s.moves do |m|
    m.at 0, :HURRICANE
    m.at 1, :WINGATTACK
    m.at 1, :ROOST
    m.at 1, :EXTREMESPEED
    m.at 1, :FIREPUNCH
    m.at 1, :THUNDERPUNCH
    m.at 1, :WRAP
    m.at 1, :LEER
    m.at 1, :TWISTER
    m.at 1, :THUNDERWAVE
    m.at 15, :DRAGONTAIL
    m.at 20, :AGILITY
    m.at 25, :SLAM
    m.at 33, :AQUATAIL
    m.at 39, :DRAGONRUSH
    m.at 41, :OUTRAGE
    m.at 46, :SAFEGUARD
    m.at 53, :RAINDANCE
    m.at 62, :DRAGONDANCE
    m.at 80, :HYPERBEAM
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :AQUATAIL, :ATTRACT, :BIND, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DEFOG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FIRESPIN, :FLAMETHROWER, :FLING, :FLY, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HAIL, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONHEAD, :IRONTAIL, :LIGHTSCREEN, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :OUTRAGE, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALESHOT, :SECRETPOWER, :SHOCKWAVE, :SKYDROP, :SLEEPTALK, :SNORE, :STEELWING, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :SWIFT, :TAILWIND, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TWISTER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water1, :Dragon
  s.hatch_steps   10240
  s.height        2.2
  s.weight        210.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :WatersEdge
  s.category      "Dragon"
  s.pokedex_entry "It can circle the globe in just 16 hours. It is a kindhearted Pokémon that leads lost and foundering ships in a storm to the safety of land."
  s.generation    1
  s.wild_item_uncommon :DRAGONSCALE
end

GameData::Species.define :ALTARIA do |s|
  s.name          "Altaria"
  s.types         :DRAGON, :FLYING
  s.base_stats    hp: 75, attack: 70, defense: 90, speed: 80, sp_atk: 70, sp_def: 105
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      172
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :NATURALCURE
  s.hidden_abilities :CLOUDNINE
  s.moves do |m|
    m.at 0, :DRAGONPULSE
    m.at 1, :HURRICANE
    m.at 1, :PLUCK
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 1, :DISARMINGVOICE
    m.at 1, :MIST
    m.at 12, :FURYATTACK
    m.at 16, :ROUND
    m.at 20, :DRAGONBREATH
    m.at 24, :SAFEGUARD
    m.at 28, :SING
    m.at 32, :COTTONGUARD
    m.at 38, :TAKEDOWN
    m.at 44, :MOONBLAST
    m.at 50, :PERISHSONG
    m.at 56, :SKYATTACK
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRCUTTER, :ATTRACT, :BODYSLAM, :BREAKINGSWIPE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DREAMEATER, :DUALWINGBEAT, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FALSESWIPE, :FIREBLAST, :FIRESPIN, :FLAMETHROWER, :FLY, :FRUSTRATION, :GIGAIMPACT, :HEALBELL, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HURRICANE, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :INCINERATE, :IRONTAIL, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :OUTRAGE, :PLAYROUGH, :PLUCK, :POWERSWAP, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UPROAR, :WONDERROOM, :TERABLAST
  s.egg_groups    :Flying, :Dragon
  s.hatch_steps   5120
  s.height        1.1
  s.weight        20.6
  s.color         :Blue
  s.shape         :Winged
  s.habitat       :Forest
  s.category      "Humming"
  s.pokedex_entry "It hums in a beautiful soprano voice. It flies among white clouds in the blue sky. It launches intensely hot fireballs from its mouth."
  s.generation    3
end

GameData::Species.define :BAGON do |s|
  s.name          "Bagon"
  s.types         :DRAGON
  s.base_stats    hp: 45, attack: 75, defense: 60, speed: 50, sp_atk: 40, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      60
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 1
  s.abilities     :ROCKHEAD
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :EMBER
    m.at 1, :LEER
    m.at 5, :BITE
    m.at 10, :DRAGONBREATH
    m.at 15, :HEADBUTT
    m.at 20, :SCARYFACE
    m.at 25, :CRUNCH
    m.at 31, :DRAGONCLAW
    m.at 35, :ZENHEADBUTT
    m.at 40, :FOCUSENERGY
    m.at 45, :FLAMETHROWER
    m.at 50, :OUTRAGE
    m.at 55, :DOUBLEEDGE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FLAMETHROWER, :FOCUSENERGY, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYDROPUMP, :HYPERVOICE, :INCINERATE, :IRONDEFENSE, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TWISTER, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :DEFENSECURL, :DRAGONDANCE, :DRAGONRUSH, :FIREFANG, :HYDROPUMP, :THRASH, :TWISTER
  s.egg_groups    :Dragon
  s.hatch_steps   10240
  s.height        0.6
  s.weight        42.1
  s.color         :Blue
  s.shape         :Bipedal
  s.habitat       :RoughTerrain
  s.category      "Rock Head"
  s.pokedex_entry "Although it is small, this Pokémon is very powerful because its body is a bundle of muscles. It launches head-butts with its ironlike skull."
  s.generation    3
  s.evolves_into  :SHELGON, :Level, 30
  s.wild_item_uncommon :DRAGONFANG
end

GameData::Species.define :SHELGON do |s|
  s.name          "Shelgon"
  s.types         :DRAGON
  s.base_stats    hp: 65, attack: 95, defense: 100, speed: 50, sp_atk: 60, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      147
  s.catch_rate    45
  s.happiness     35
  s.evs           defense: 2
  s.abilities     :ROCKHEAD
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 0, :PROTECT
    m.at 1, :EMBER
    m.at 1, :LEER
    m.at 1, :BITE
    m.at 1, :DRAGONBREATH
    m.at 15, :HEADBUTT
    m.at 20, :SCARYFACE
    m.at 25, :CRUNCH
    m.at 33, :DRAGONCLAW
    m.at 39, :ZENHEADBUTT
    m.at 46, :FOCUSENERGY
    m.at 53, :FLAMETHROWER
    m.at 60, :OUTRAGE
    m.at 67, :DOUBLEEDGE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FLAMETHROWER, :FOCUSENERGY, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYDROPUMP, :HYPERVOICE, :INCINERATE, :IRONDEFENSE, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TWISTER, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Dragon
  s.hatch_steps   10240
  s.height        1.1
  s.weight        110.5
  s.color         :White
  s.shape         :Quadruped
  s.habitat       :RoughTerrain
  s.category      "Endurance"
  s.pokedex_entry "It hardly eats while it awaits evolution. It becomes hardier by enduring hunger. Its shell peels off the instant it begins to evolve."
  s.generation    3
  s.evolves_into  :SALAMENCE, :Level, 50
  s.wild_item_uncommon :DRAGONFANG
end

GameData::Species.define :SALAMENCE do |s|
  s.name          "Salamence"
  s.types         :DRAGON, :FLYING
  s.base_stats    hp: 95, attack: 135, defense: 80, speed: 100, sp_atk: 110, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 3
  s.abilities     :INTIMIDATE
  s.hidden_abilities :MOXIE
  s.moves do |m|
    m.at 0, :FLY
    m.at 1, :PROTECT
    m.at 1, :DRAGONTAIL
    m.at 1, :EMBER
    m.at 1, :LEER
    m.at 1, :BITE
    m.at 1, :DRAGONBREATH
    m.at 15, :HEADBUTT
    m.at 20, :SCARYFACE
    m.at 25, :CRUNCH
    m.at 33, :DRAGONCLAW
    m.at 39, :ZENHEADBUTT
    m.at 46, :FOCUSENERGY
    m.at 55, :FLAMETHROWER
    m.at 64, :OUTRAGE
    m.at 73, :DOUBLEEDGE
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :AIRSLASH, :AQUATAIL, :ATTRACT, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DEFENSECURL, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FLAMETHROWER, :FLY, :FOCUSENERGY, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :INCINERATE, :IRONDEFENSE, :IRONTAIL, :LASERFOCUS, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROOST, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STEELWING, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THUNDERFANG, :TWISTER, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Dragon
  s.hatch_steps   10240
  s.height        1.5
  s.weight        102.6
  s.color         :Blue
  s.shape         :Quadruped
  s.habitat       :RoughTerrain
  s.category      "Dragon"
  s.pokedex_entry "After many long years, its cellular structure underwent a sudden mutation to grow wings. When angered, it loses all thought and rampages out of control."
  s.generation    3
  s.wild_item_uncommon :DRAGONFANG
end

GameData::Species.define :LATIAS do |s|
  s.name          "Latias"
  s.types         :DRAGON, :PSYCHIC
  s.base_stats    hp: 80, attack: 80, defense: 90, speed: 110, sp_atk: 110, sp_def: 130
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     90
  s.evs           sp_defense: 3
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :STOREDPOWER
    m.at 1, :CHARM
    m.at 5, :HELPINGHAND
    m.at 10, :RECOVER
    m.at 15, :CONFUSION
    m.at 20, :TAILWIND
    m.at 25, :DRAGONBREATH
    m.at 30, :WISH
    m.at 35, :MISTBALL
    m.at 40, :ZENHEADBUTT
    m.at 45, :DRAGONPULSE
    m.at 50, :HEALPULSE
    m.at 55, :REFLECTTYPE
    m.at 60, :PSYCHIC
    m.at 65, :GUARDSPLIT
    m.at 70, :HEALINGWISH
    m.at 75, :PSYCHOSHIFT
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRSLASH, :ALLYSWITCH, :ATTRACT, :AURASPHERE, :BATONPASS, :BODYSLAM, :BREAKINGSWIPE, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :CUT, :DEFOG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DREAMEATER, :DUALWINGBEAT, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLY, :FRUSTRATION, :FURYCUTTER, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEBEAM, :ICYWIND, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :MUDSLAP, :MYSTICALFIRE, :NATURALGIFT, :OUTRAGE, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROLEPLAY, :ROOST, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALESHOT, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRIATTACK, :TRICK, :TWISTER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.4
  s.weight        40.0
  s.color         :Red
  s.shape         :Winged
  s.habitat       :WatersEdge
  s.category      "Eon"
  s.pokedex_entry "They make a small herd of only several members. They rarely make contact with people or other Pokémon. They disappear if they sense enemies."
  s.generation    3
  s.flags         :Legendary
end

GameData::Species.define :LATIOS do |s|
  s.name          "Latios"
  s.types         :DRAGON, :PSYCHIC
  s.base_stats    hp: 80, attack: 90, defense: 80, speed: 110, sp_atk: 130, sp_def: 110
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     90
  s.evs           sp_attack: 3
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :STOREDPOWER
    m.at 1, :DRAGONDANCE
    m.at 5, :HELPINGHAND
    m.at 10, :RECOVER
    m.at 15, :CONFUSION
    m.at 20, :TAILWIND
    m.at 25, :DRAGONBREATH
    m.at 30, :ALLYSWITCH
    m.at 35, :LUSTERPURGE
    m.at 40, :ZENHEADBUTT
    m.at 45, :DRAGONPULSE
    m.at 50, :HEALPULSE
    m.at 55, :SIMPLEBEAM
    m.at 60, :PSYCHIC
    m.at 65, :POWERSPLIT
    m.at 70, :MEMENTO
    m.at 75, :PSYCHOSHIFT
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRSLASH, :ALLYSWITCH, :ATTRACT, :AURASPHERE, :BATONPASS, :BODYSLAM, :BREAKINGSWIPE, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CUT, :DEFOG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DREAMEATER, :DUALWINGBEAT, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLY, :FRUSTRATION, :FURYCUTTER, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEBEAM, :ICYWIND, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MUDSLAP, :MYSTICALFIRE, :NATURALGIFT, :OUTRAGE, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROOST, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALESHOT, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRIATTACK, :TRICK, :TWISTER, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        2.0
  s.weight        60.0
  s.color         :Blue
  s.shape         :Winged
  s.habitat       :WatersEdge
  s.category      "Eon"
  s.pokedex_entry "Even in hiding, it can detect the locations of others and sense their emotions since it has telepathy. Its intelligence allows it to understand human languages."
  s.generation    3
  s.flags         :Legendary
end

GameData::Species.define :RAYQUAZA do |s|
  s.name          "Rayquaza"
  s.types         :DRAGON, :FLYING
  s.base_stats    hp: 105, attack: 150, defense: 90, speed: 95, sp_atk: 150, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    45
  s.happiness     0
  s.evs           attack: 2, sp_attack: 1
  s.abilities     :AIRLOCK
  s.moves do |m|
    m.at 1, :DRAGONASCENT
    m.at 1, :TWISTER
    m.at 1, :ANCIENTPOWER
    m.at 1, :AIRSLASH
    m.at 1, :SCARYFACE
    m.at 9, :CRUNCH
    m.at 18, :DRAGONDANCE
    m.at 27, :EXTREMESPEED
    m.at 36, :DRAGONPULSE
    m.at 45, :HYPERVOICE
    m.at 54, :REST
    m.at 63, :FLY
    m.at 72, :HURRICANE
    m.at 81, :OUTRAGE
    m.at 90, :HYPERBEAM
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :ANCIENTPOWER, :AQUATAIL, :AVALANCHE, :BIND, :BLIZZARD, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CONFIDE, :COSMICPOWER, :CRUNCH, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONASCENT, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLING, :FLY, :FOCUSBLAST, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICYWIND, :INCINERATE, :IRONHEAD, :IRONTAIL, :METEORBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SKYDROP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TWISTER, :UPROAR, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        7.0
  s.weight        206.5
  s.color         :Green
  s.shape         :Serpentine
  s.habitat       :Rare
  s.category      "Sky High"
  s.pokedex_entry "A Pokémon that flies endlessly in the ozone layer. It is said it would descend to the ground if Kyogre and Groudon were to fight."
  s.generation    3
  s.flags         :Legendary
end

GameData::Species.define :GIBLE do |s|
  s.name          "Gible"
  s.types         :DRAGON, :GROUND
  s.base_stats    hp: 58, attack: 70, defense: 45, speed: 42, sp_atk: 40, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      60
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :SANDVEIL
  s.hidden_abilities :ROUGHSKIN
  s.moves do |m|
    m.at 1, :SANDTOMB
    m.at 1, :TACKLE
    m.at 6, :SANDATTACK
    m.at 12, :DRAGONBREATH
    m.at 18, :BULLDOZE
    m.at 25, :BITE
    m.at 30, :SLASH
    m.at 36, :DRAGONCLAW
    m.at 42, :DIG
    m.at 48, :SANDSTORM
    m.at 54, :TAKEDOWN
    m.at 60, :DRAGONRUSH
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :IRONHEAD, :IRONTAIL, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCALESHOT, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TWISTER, :TERABLAST
  s.egg_moves     :BODYSLAM, :DOUBLEEDGE, :DRAGONBREATH, :IRONHEAD, :METALCLAW, :MUDSHOT, :OUTRAGE, :SANDTOMB, :SCARYFACE, :THRASH, :TWISTER
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   10240
  s.height        0.7
  s.weight        20.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Land Shark"
  s.pokedex_entry "It nests in small, horizontal holes in cave walls. It pounces to catch prey that stray too close."
  s.generation    4
  s.evolves_into  :GABITE, :Level, 24
  s.flags         :HasGenderedSprites
end

GameData::Species.define :GABITE do |s|
  s.name          "Gabite"
  s.types         :DRAGON, :GROUND
  s.base_stats    hp: 68, attack: 90, defense: 65, speed: 82, sp_atk: 50, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      144
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SANDVEIL
  s.hidden_abilities :ROUGHSKIN
  s.moves do |m|
    m.at 1, :DUALCHOP
    m.at 1, :SANDTOMB
    m.at 1, :TACKLE
    m.at 1, :SANDATTACK
    m.at 1, :DRAGONBREATH
    m.at 18, :BULLDOZE
    m.at 27, :BITE
    m.at 34, :SLASH
    m.at 42, :DRAGONCLAW
    m.at 50, :DIG
    m.at 58, :SANDSTORM
    m.at 66, :TAKEDOWN
    m.at 74, :DRAGONRUSH
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :DUALCHOP, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCALESHOT, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TWISTER, :TERABLAST
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   10240
  s.height        1.4
  s.weight        56.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Cave"
  s.pokedex_entry "There is a long-held belief that medicine made from its scales will heal even incurable illnesses."
  s.generation    4
  s.evolves_into  :GARCHOMP, :Level, 48
  s.flags         :HasGenderedSprites
end

GameData::Species.define :GARCHOMP do |s|
  s.name          "Garchomp"
  s.types         :DRAGON, :GROUND
  s.base_stats    hp: 108, attack: 130, defense: 95, speed: 102, sp_atk: 80, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :SANDVEIL
  s.hidden_abilities :ROUGHSKIN
  s.moves do |m|
    m.at 0, :CRUNCH
    m.at 1, :DUALCHOP
    m.at 1, :SANDTOMB
    m.at 1, :TACKLE
    m.at 1, :SANDATTACK
    m.at 1, :DRAGONBREATH
    m.at 18, :BULLDOZE
    m.at 27, :BITE
    m.at 34, :SLASH
    m.at 42, :DRAGONCLAW
    m.at 52, :DIG
    m.at 62, :SANDSTORM
    m.at 72, :TAKEDOWN
    m.at 82, :DRAGONRUSH
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ATTRACT, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DIG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :DUALCHOP, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FALSESWIPE, :FIREBLAST, :FIREFANG, :FLAMETHROWER, :FLING, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :INCINERATE, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCALESHOT, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TWISTER, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   10240
  s.height        1.9
  s.weight        95.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Mach"
  s.pokedex_entry "When it folds up its body and extends its wings, it looks like a jet plane. It flies at sonic speed."
  s.generation    4
  s.flags         :HasGenderedSprites
end

GameData::Species.define :AXEW do |s|
  s.name          "Axew"
  s.types         :DRAGON
  s.base_stats    hp: 46, attack: 87, defense: 60, speed: 57, sp_atk: 30, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      64
  s.catch_rate    75
  s.happiness     35
  s.evs           attack: 1
  s.abilities     :RIVALRY, :MOLDBREAKER
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 3, :BITE
    m.at 6, :FALSESWIPE
    m.at 9, :ASSURANCE
    m.at 12, :TAUNT
    m.at 15, :SLASH
    m.at 18, :DRAGONCLAW
    m.at 21, :SCARYFACE
    m.at 24, :CRUNCH
    m.at 27, :DRAGONDANCE
    m.at 30, :DUALCHOP
    m.at 33, :LASERFOCUS
    m.at 36, :DRAGONPULSE
    m.at 39, :SWORDSDANCE
    m.at 42, :OUTRAGE
    m.at 45, :GUILLOTINE
    m.at 48, :GIGAIMPACT
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ASSURANCE, :ATTRACT, :BREAKINGSWIPE, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DIG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DUALCHOP, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :IRONTAIL, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_moves     :COUNTER, :ENDEAVOR, :FIRSTIMPRESSION, :HARDEN, :NIGHTSLASH
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   10240
  s.height        0.6
  s.weight        18.0
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Tusk"
  s.pokedex_entry "They mark their territory by leaving gashes in trees with their tusks. If a tusk breaks, a new one grows in quickly."
  s.generation    5
  s.evolves_into  :FRAXURE, :Level, 38
end

GameData::Species.define :FRAXURE do |s|
  s.name          "Fraxure"
  s.types         :DRAGON
  s.base_stats    hp: 66, attack: 117, defense: 70, speed: 67, sp_atk: 40, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      144
  s.catch_rate    60
  s.happiness     35
  s.evs           attack: 2
  s.abilities     :RIVALRY, :MOLDBREAKER
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :BITE
    m.at 1, :FALSESWIPE
    m.at 9, :ASSURANCE
    m.at 12, :TAUNT
    m.at 15, :SLASH
    m.at 18, :DRAGONCLAW
    m.at 21, :SCARYFACE
    m.at 24, :CRUNCH
    m.at 27, :DRAGONDANCE
    m.at 30, :DUALCHOP
    m.at 33, :LASERFOCUS
    m.at 36, :DRAGONPULSE
    m.at 41, :SWORDSDANCE
    m.at 46, :OUTRAGE
    m.at 51, :GUILLOTINE
    m.at 56, :GIGAIMPACT
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ASSURANCE, :ATTRACT, :BREAKINGSWIPE, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DIG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DUALCHOP, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :IRONTAIL, :LOWKICK, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   10240
  s.height        1.0
  s.weight        36.0
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Axe Jaw"
  s.pokedex_entry "Their tusks can shatter rocks. Territory battles between Fraxure can be intensely violent."
  s.generation    5
  s.evolves_into  :HAXORUS, :Level, 48
end

GameData::Species.define :HAXORUS do |s|
  s.name          "Haxorus"
  s.types         :DRAGON
  s.base_stats    hp: 76, attack: 147, defense: 90, speed: 97, sp_atk: 60, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      270
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 3
  s.abilities     :RIVALRY, :MOLDBREAKER
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :BITE
    m.at 1, :FALSESWIPE
    m.at 9, :ASSURANCE
    m.at 12, :TAUNT
    m.at 15, :SLASH
    m.at 18, :DRAGONCLAW
    m.at 21, :SCARYFACE
    m.at 24, :CRUNCH
    m.at 27, :DRAGONDANCE
    m.at 30, :DUALCHOP
    m.at 33, :LASERFOCUS
    m.at 36, :DRAGONPULSE
    m.at 41, :SWORDSDANCE
    m.at 46, :OUTRAGE
    m.at 53, :GUILLOTINE
    m.at 60, :GIGAIMPACT
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ASSURANCE, :ATTRACT, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CRUNCH, :CUT, :DIG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DUALCHOP, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :INCINERATE, :IRONTAIL, :LASERFOCUS, :LOWKICK, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POISONJAB, :PROTECT, :PSYCHOCUT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNARL, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   10240
  s.height        1.8
  s.weight        105.5
  s.color         :Yellow
  s.shape         :BipedalTail
  s.category      "Axe Jaw"
  s.pokedex_entry "Their sturdy tusks will stay sharp even if used to cut steel beams. These Pokémon are covered in hard armor."
  s.generation    5
end

GameData::Species.define :DRUDDIGON do |s|
  s.name          "Druddigon"
  s.types         :DRAGON
  s.base_stats    hp: 77, attack: 120, defense: 90, speed: 48, sp_atk: 60, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      170
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :ROUGHSKIN, :SHEERFORCE
  s.hidden_abilities :MOLDBREAKER
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 5, :BITE
    m.at 10, :DRAGONTAIL
    m.at 15, :METALCLAW
    m.at 20, :SCARYFACE
    m.at 25, :SLASH
    m.at 30, :DRAGONCLAW
    m.at 35, :HONECLAWS
    m.at 40, :CRUNCH
    m.at 45, :IRONHEAD
    m.at 50, :OUTRAGE
    m.at 55, :SUPERPOWER
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ATTRACT, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CRUNCH, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :EARTHQUAKE, :ENDURE, :FACADE, :FIREFANG, :FIREPUNCH, :FLAMETHROWER, :FLASHCANNON, :FLING, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :INCINERATE, :IRONHEAD, :IRONTAIL, :LASHOUT, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SMACKDOWN, :SNARL, :SNATCH, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :TAUNT, :THUNDERFANG, :THUNDERPUNCH, :TORMENT, :TOXIC, :TERABLAST
  s.egg_moves     :GLARE, :NIGHTSLASH, :POISONTAIL, :SUCKERPUNCH
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   7680
  s.height        1.6
  s.weight        139.0
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Cave"
  s.pokedex_entry "It races through narrow caves, using its sharp claws to catch prey. Then skin on its face is harder than a rock."
  s.generation    5
  s.wild_item_uncommon :DRAGONFANG
end

GameData::Species.define :RESHIRAM do |s|
  s.name          "Reshiram"
  s.types         :DRAGON, :FIRE
  s.base_stats    hp: 100, attack: 120, defense: 100, speed: 90, sp_atk: 150, sp_def: 120
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    3
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :TURBOBLAZE
  s.moves do |m|
    m.at 1, :DRAGONBREATH
    m.at 1, :NOBLEROAR
    m.at 1, :ANCIENTPOWER
    m.at 1, :FIREFANG
    m.at 8, :SLASH
    m.at 16, :CRUNCH
    m.at 24, :EXTRASENSORY
    m.at 32, :DRAGONPULSE
    m.at 40, :FLAMETHROWER
    m.at 48, :FUSIONFLARE
    m.at 56, :HYPERVOICE
    m.at 64, :FIREBLAST
    m.at 72, :IMPRISON
    m.at 80, :OUTRAGE
    m.at 88, :BLUEFLARE
  end
  s.tutor_moves   :BODYPRESS, :BREAKINGSWIPE, :BRUTALSWING, :CONFIDE, :CRUNCH, :CUT, :DEFOG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :EARTHPOWER, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FLY, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HEATCRASH, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :IMPRISON, :INCINERATE, :LASERFOCUS, :LIGHTSCREEN, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :PAYBACK, :PROTECT, :PSYCHIC, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SAFEGUARD, :SCALESHOT, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TOXIC, :WEATHERBALL, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        3.2
  s.weight        330.0
  s.color         :White
  s.shape         :Winged
  s.category      "Vast White"
  s.pokedex_entry "When Reshiram's tail flares, the heat energy moves the atmosphere and changes the world's weather."
  s.generation    5
  s.flags         :Legendary
end

GameData::Species.define :ZEKROM do |s|
  s.name          "Zekrom"
  s.types         :DRAGON, :ELECTRIC
  s.base_stats    hp: 100, attack: 150, defense: 120, speed: 90, sp_atk: 120, sp_def: 100
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    3
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :TERAVOLT
  s.moves do |m|
    m.at 1, :DRAGONBREATH
    m.at 1, :NOBLEROAR
    m.at 1, :ANCIENTPOWER
    m.at 1, :THUNDERFANG
    m.at 8, :SLASH
    m.at 16, :CRUNCH
    m.at 24, :ZENHEADBUTT
    m.at 32, :DRAGONCLAW
    m.at 40, :THUNDERBOLT
    m.at 48, :FUSIONBOLT
    m.at 56, :HYPERVOICE
    m.at 64, :THUNDER
    m.at 72, :IMPRISON
    m.at 80, :OUTRAGE
    m.at 88, :BOLTSTRIKE
  end
  s.tutor_moves   :BODYPRESS, :BREAKINGSWIPE, :BRUTALSWING, :CHARGEBEAM, :CONFIDE, :CRUNCH, :CUT, :DEFOG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :EARTHPOWER, :ECHOEDVOICE, :ELECTROBALL, :ENDURE, :FACADE, :FLASH, :FLASHCANNON, :FLING, :FLY, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :IMPRISON, :LASERFOCUS, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PROTECT, :PSYCHIC, :RAINDANCE, :REFLECT, :REST, :RETURN, :RISINGVOLTAGE, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SAFEGUARD, :SCALESHOT, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEELWING, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAILWIND, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WEATHERBALL, :WILDCHARGE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        2.9
  s.weight        345.0
  s.color         :Black
  s.shape         :BipedalTail
  s.category      "Deep Black"
  s.pokedex_entry "This Pokémon appears in legends. In its tail, it has a giant generator that creates electricity."
  s.generation    5
  s.flags         :Legendary
end

GameData::Species.define :KYUREM do |s|
  s.name          "Kyurem"
  s.types         :DRAGON, :ICE
  s.base_stats    hp: 125, attack: 130, defense: 90, speed: 95, sp_atk: 130, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      330
  s.catch_rate    3
  s.happiness     0
  s.evs           hp: 1, attack: 1, sp_attack: 1
  s.abilities     :PRESSURE
  s.moves do |m|
    m.at 1, :DRAGONBREATH
    m.at 1, :NOBLEROAR
    m.at 1, :ANCIENTPOWER
    m.at 1, :FREEZEDRY
    m.at 8, :SLASH
    m.at 16, :ENDEAVOR
    m.at 24, :DRAGONPULSE
    m.at 32, :ICEBEAM
    m.at 40, :HYPERVOICE
    m.at 48, :SCARYFACE
    m.at 56, :BLIZZARD
    m.at 64, :IMPRISON
    m.at 72, :OUTRAGE
    m.at 80, :GLACIATE
    m.at 88, :SHEERCOLD
  end
  s.tutor_moves   :BLIZZARD, :BODYPRESS, :BREAKINGSWIPE, :BRUTALSWING, :CONFIDE, :CUT, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :EARTHPOWER, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLASHCANNON, :FLING, :FLY, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IMPRISON, :IRONHEAD, :LASERFOCUS, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PROTECT, :PSYCHIC, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SAFEGUARD, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEELWING, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TOXIC, :WEATHERBALL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        3.0
  s.weight        325.0
  s.color         :Gray
  s.shape         :BipedalTail
  s.category      "Boundary"
  s.pokedex_entry "It generates a powerful, freezing energy inside itself, but its body became frozen when the energy leaked out."
  s.generation    5
  s.flags         :Legendary
end

GameData::Species.define :GOOMY do |s|
  s.name          "Goomy"
  s.types         :DRAGON
  s.base_stats    hp: 45, attack: 50, defense: 35, speed: 40, sp_atk: 55, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      60
  s.catch_rate    45
  s.happiness     35
  s.evs           sp_defense: 1
  s.abilities     :SAPSIPPER, :HYDRATION
  s.hidden_abilities :GOOEY
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :TACKLE
    m.at 5, :WATERGUN
    m.at 10, :DRAGONBREATH
    m.at 15, :PROTECT
    m.at 20, :FLAIL
    m.at 25, :WATERPULSE
    m.at 30, :RAINDANCE
    m.at 35, :DRAGONPULSE
    m.at 41, :CURSE
    m.at 45, :BODYSLAM
    m.at 50, :MUDDYWATER
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONPULSE, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :INFESTATION, :IRONTAIL, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THUNDERBOLT, :TOXIC, :WATERPULSE, :TERABLAST
  s.egg_moves     :COUNTER, :LIFEDEW
  s.egg_groups    :Dragon
  s.hatch_steps   10240
  s.height        0.3
  s.weight        2.8
  s.color         :Purple
  s.shape         :Serpentine
  s.category      "Soft Tissue"
  s.pokedex_entry "Its source of protection is its slimy, germ-laden mucous membrane. Anyone who touches it needs some thorough hand-washing."
  s.generation    6
  s.evolves_into  :SLIGGOO, :Level, 40
  s.wild_item_uncommon :SHEDSHELL
end

GameData::Species.define :SLIGGOO do |s|
  s.name          "Sliggoo"
  s.types         :DRAGON
  s.base_stats    hp: 68, attack: 75, defense: 53, speed: 60, sp_atk: 83, sp_def: 113
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      158
  s.catch_rate    45
  s.happiness     35
  s.evs           sp_defense: 2
  s.abilities     :SAPSIPPER, :HYDRATION
  s.hidden_abilities :GOOEY
  s.moves do |m|
    m.at 0, :ACIDSPRAY
    m.at 1, :ABSORB
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 1, :DRAGONBREATH
    m.at 15, :PROTECT
    m.at 20, :FLAIL
    m.at 25, :WATERPULSE
    m.at 30, :RAINDANCE
    m.at 35, :DRAGONPULSE
    m.at 43, :CURSE
    m.at 49, :BODYSLAM
    m.at 56, :MUDDYWATER
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONPULSE, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :ICEBEAM, :INFESTATION, :IRONTAIL, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THUNDERBOLT, :TOXIC, :WATERPULSE, :TERABLAST
  s.egg_groups    :Dragon
  s.hatch_steps   10240
  s.height        0.8
  s.weight        17.5
  s.color         :Purple
  s.shape         :Serpentine
  s.category      "Soft Tissue"
  s.pokedex_entry "This Pokémon's mucous can dissolve anything. Toothless, it sprays mucous on its prey. Once they're nicely dissolved, it slurps them up."
  s.generation    6
  s.evolves_into  :GOODRA, :LevelRain, 50
  s.wild_item_uncommon :SHEDSHELL
end

GameData::Species.define :GOODRA do |s|
  s.name          "Goodra"
  s.types         :DRAGON
  s.base_stats    hp: 90, attack: 100, defense: 70, speed: 80, sp_atk: 110, sp_def: 150
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    45
  s.happiness     35
  s.evs           sp_defense: 3
  s.abilities     :SAPSIPPER, :HYDRATION
  s.hidden_abilities :GOOEY
  s.moves do |m|
    m.at 0, :AQUATAIL
    m.at 1, :ACIDSPRAY
    m.at 1, :POISONTAIL
    m.at 1, :TEARFULLOOK
    m.at 1, :FEINT
    m.at 1, :ABSORB
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 1, :DRAGONBREATH
    m.at 15, :PROTECT
    m.at 20, :FLAIL
    m.at 25, :WATERPULSE
    m.at 30, :RAINDANCE
    m.at 35, :DRAGONPULSE
    m.at 43, :CURSE
    m.at 49, :BODYSLAM
    m.at 58, :MUDDYWATER
    m.at 67, :POWERWHIP
  end
  s.tutor_moves   :AQUATAIL, :ASSURANCE, :ATTRACT, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONPULSE, :DRAGONTAIL, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :INCINERATE, :INFESTATION, :IRONTAIL, :LASERFOCUS, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :OUTRAGE, :POWERWHIP, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :TOXIC, :WATERPULSE, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Dragon
  s.hatch_steps   10240
  s.height        2.0
  s.weight        150.5
  s.color         :Purple
  s.shape         :BipedalTail
  s.category      "Dragon"
  s.pokedex_entry "It gets picked on because it's meek. But then, whoever teased it gets to feel the full force of its horns and a good swatting from its thick tail."
  s.generation    6
end

GameData::Species.define :ZYGARDE do |s|
  s.name          "Zygarde"
  s.types         :DRAGON, :GROUND
  s.base_stats    hp: 108, attack: 100, defense: 121, speed: 95, sp_atk: 81, sp_def: 95
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     0
  s.evs           hp: 3
  s.abilities     :AURABREAK, :POWERCONSTRUCT
  s.moves do |m|
    m.at 1, :THOUSANDARROWS
    m.at 1, :THOUSANDWAVES
    m.at 1, :COREENFORCER
    m.at 1, :BIND
    m.at 1, :BULLDOZE
    m.at 1, :DRAGONBREATH
    m.at 1, :BITE
    m.at 8, :HAZE
    m.at 16, :DIG
    m.at 24, :SAFEGUARD
    m.at 32, :CRUNCH
    m.at 40, :DRAGONPULSE
    m.at 48, :LANDSWRATH
    m.at 56, :GLARE
    m.at 64, :SANDSTORM
    m.at 72, :COIL
    m.at 80, :EARTHQUAKE
    m.at 88, :OUTRAGE
  end
  s.tutor_moves   :BIND, :BLOCK, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BULLDOZE, :CONFIDE, :CRUNCH, :DIG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :HYPERVOICE, :IRONTAIL, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAINSPLIT, :PAYBACK, :PROTECT, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALESHOT, :SCORCHINGSANDS, :SECRETPOWER, :SHOCKWAVE, :SKITTERSMACK, :SLEEPTALK, :SLUDGEWAVE, :SNORE, :SPITE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :TOXIC, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        5.0
  s.weight        305.0
  s.color         :Green
  s.shape         :Serpentine
  s.category      "Order"
  s.pokedex_entry "It's thought to be monitoring the ecosystem. There are rumors that even greater power lies hidden within it."
  s.generation    6
  s.flags         :Legendary
end

GameData::Species.define :JANGMOO do |s|
  s.name          "Jangmo-o"
  s.types         :DRAGON
  s.base_stats    hp: 45, attack: 55, defense: 65, speed: 45, sp_atk: 45, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      60
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :BULLETPROOF, :SOUNDPROOF
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 4, :PROTECT
    m.at 8, :DRAGONTAIL
    m.at 12, :SCARYFACE
    m.at 16, :HEADBUTT
    m.at 20, :WORKUP
    m.at 24, :SCREECH
    m.at 28, :IRONDEFENSE
    m.at 32, :DRAGONCLAW
    m.at 36, :NOBLEROAR
    m.at 40, :DRAGONDANCE
    m.at 44, :OUTRAGE
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ATTRACT, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DUALCHOP, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSBLAST, :FRUSTRATION, :HIDDENPOWER, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LOWKICK, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PROTECT, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALESHOT, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TAUNT, :TOXIC, :UPROAR, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_moves     :COUNTER, :DRAGONBREATH, :FOCUSPUNCH
  s.egg_groups    :Dragon
  s.hatch_steps   10240
  s.height        0.6
  s.weight        29.7
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Scaly"
  s.pokedex_entry "It expresses its feelings by smacking its scales. Metallic sounds echo through the tall mountains where Jangmo-o lives."
  s.generation    7
  s.evolves_into  :HAKAMOO, :Level, 35
  s.wild_item_uncommon :RAZORCLAW
end

GameData::Species.define :HAKAMOO do |s|
  s.name          "Hakamo-o"
  s.types         :DRAGON, :FIGHTING
  s.base_stats    hp: 55, attack: 75, defense: 90, speed: 65, sp_atk: 65, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      147
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :BULLETPROOF, :SOUNDPROOF
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 1, :AUTOTOMIZE
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :PROTECT
    m.at 1, :DRAGONTAIL
    m.at 12, :SCARYFACE
    m.at 16, :HEADBUTT
    m.at 20, :WORKUP
    m.at 24, :SCREECH
    m.at 28, :IRONDEFENSE
    m.at 32, :DRAGONCLAW
    m.at 38, :NOBLEROAR
    m.at 44, :DRAGONDANCE
    m.at 50, :OUTRAGE
    m.at 56, :CLOSECOMBAT
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ATTRACT, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSBLAST, :FRUSTRATION, :HIDDENPOWER, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PROTECT, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALESHOT, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TAUNT, :TOXIC, :UPROAR, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_groups    :Dragon
  s.hatch_steps   10240
  s.height        1.2
  s.weight        47.0
  s.color         :Gray
  s.shape         :BipedalTail
  s.category      "Scaly"
  s.pokedex_entry "It sheds and regrows its scales on a continuous basis. The scales become harder and sharper each time they're regrown."
  s.generation    7
  s.evolves_into  :KOMMOO, :Level, 45
  s.wild_item_uncommon :RAZORCLAW
end

GameData::Species.define :KOMMOO do |s|
  s.name          "Kommo-o"
  s.types         :DRAGON, :FIGHTING
  s.base_stats    hp: 75, attack: 110, defense: 125, speed: 85, sp_atk: 100, sp_def: 105
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 3
  s.abilities     :BULLETPROOF, :SOUNDPROOF
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 0, :CLANGINGSCALES
    m.at 1, :BELLYDRUM
    m.at 1, :AUTOTOMIZE
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :PROTECT
    m.at 1, :DRAGONTAIL
    m.at 12, :SCARYFACE
    m.at 16, :HEADBUTT
    m.at 20, :WORKUP
    m.at 24, :SCREECH
    m.at 28, :IRONDEFENSE
    m.at 32, :DRAGONCLAW
    m.at 38, :NOBLEROAR
    m.at 44, :DRAGONDANCE
    m.at 52, :OUTRAGE
    m.at 60, :CLOSECOMBAT
    m.at 68, :CLANGOROUSSOUL
    m.at 76, :BOOMBURST
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ATTRACT, :AURASPHERE, :BODYPRESS, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FIREPUNCH, :FLAMETHROWER, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POISONJAB, :PROTECT, :REST, :RETURN, :REVENGE, :REVERSAL, :ROAR, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALESHOT, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :TAUNT, :THUNDERPUNCH, :TOXIC, :UPROAR, :WATERPULSE, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_groups    :Dragon
  s.hatch_steps   10240
  s.height        1.6
  s.weight        78.2
  s.color         :Gray
  s.shape         :BipedalTail
  s.category      "Scaly"
  s.pokedex_entry "Its rigid scales function as offense and defense. In the past, its scales were processed and used to make weapons and other commodities."
  s.generation    7
  s.wild_item_common   :RAZORCLAW
end

GameData::Species.define :DREEPY do |s|
  s.name          "Dreepy"
  s.types         :DRAGON, :GHOST
  s.base_stats    hp: 28, attack: 60, defense: 30, speed: 82, sp_atk: 40, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      54
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :CLEARBODY, :INFILTRATOR
  s.hidden_abilities :CURSEDBODY
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :INFESTATION
    m.at 1, :QUICKATTACK
    m.at 1, :BITE
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRACOMETEOR, :ENDURE, :FACADE, :FRUSTRATION, :HELPINGHAND, :HIDDENPOWER, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :THUNDERWAVE, :TOXIC, :TERABLAST
  s.egg_moves     :CONFUSERAY, :CURSE, :DISABLE, :DOUBLETEAM, :DRAGONTAIL, :GRUDGE, :SUCKERPUNCH
  s.egg_groups    :Amorphous, :Dragon
  s.hatch_steps   10240
  s.height        0.5
  s.weight        2.0
  s.color         :Green
  s.shape         :Serpentine
  s.category      "Lingering"
  s.pokedex_entry "After being reborn as a ghost Pokémon, Dreepy wanders the areas it used to inhabit back when it was alive in prehistoric seas."
  s.generation    8
  s.evolves_into  :DRAKLOAK, :Level, 50
end

GameData::Species.define :DRAKLOAK do |s|
  s.name          "Drakloak"
  s.types         :DRAGON, :GHOST
  s.base_stats    hp: 68, attack: 80, defense: 50, speed: 102, sp_atk: 60, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      144
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :CLEARBODY, :INFILTRATOR
  s.hidden_abilities :CURSEDBODY
  s.moves do |m|
    m.at 0, :DRAGONPULSE
    m.at 1, :ASTONISH
    m.at 1, :INFESTATION
    m.at 1, :QUICKATTACK
    m.at 1, :BITE
    m.at 6, :LOCKON
    m.at 12, :ASSURANCE
    m.at 18, :HEX
    m.at 24, :AGILITY
    m.at 30, :DOUBLEHIT
    m.at 36, :UTURN
    m.at 42, :DRAGONDANCE
    m.at 48, :PHANTOMFORCE
    m.at 54, :TAKEDOWN
    m.at 61, :DRAGONRUSH
    m.at 66, :DOUBLEEDGE
    m.at 72, :LASTRESORT
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :ALLYSWITCH, :ASSURANCE, :ATTRACT, :BATONPASS, :BEATUP, :BREAKINGSWIPE, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONDANCE, :DRAGONPULSE, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FRUSTRATION, :HELPINGHAND, :HEX, :HIDDENPOWER, :HYDROPUMP, :MIMIC, :NATURALGIFT, :OUTRAGE, :PHANTOMFORCE, :PROTECT, :PSYCHICFANGS, :REST, :RETURN, :ROUND, :SCALD, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :UTURN, :WILLOWISP, :TERABLAST
  s.egg_groups    :Amorphous, :Dragon
  s.hatch_steps   10240
  s.height        1.4
  s.weight        11.0
  s.color         :Green
  s.shape         :HeadArms
  s.category      "Caretaker"
  s.pokedex_entry "It's capable of flying faster than 120 mph. It battles alongside Dreepy and dotes on them until they successfully evolve."
  s.generation    8
  s.evolves_into  :DRAGAPULT, :Level, 60
end

GameData::Species.define :DRAGAPULT do |s|
  s.name          "Dragapult"
  s.types         :DRAGON, :GHOST
  s.base_stats    hp: 88, attack: 120, defense: 75, speed: 142, sp_atk: 100, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :CLEARBODY, :INFILTRATOR
  s.hidden_abilities :CURSEDBODY
  s.moves do |m|
    m.at 0, :DRAGONDARTS
    m.at 1, :DRAGONBREATH
    m.at 1, :SUCKERPUNCH
    m.at 1, :ASTONISH
    m.at 1, :INFESTATION
    m.at 1, :QUICKATTACK
    m.at 1, :BITE
    m.at 6, :LOCKON
    m.at 12, :ASSURANCE
    m.at 18, :HEX
    m.at 24, :AGILITY
    m.at 30, :DOUBLEHIT
    m.at 36, :UTURN
    m.at 42, :DRAGONDANCE
    m.at 48, :PHANTOMFORCE
    m.at 54, :TAKEDOWN
    m.at 63, :DRAGONRUSH
    m.at 70, :DOUBLEEDGE
    m.at 78, :LASTRESORT
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :ALLYSWITCH, :ASSURANCE, :ATTRACT, :BATONPASS, :BEATUP, :BODYSLAM, :BREAKINGSWIPE, :BRINE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLY, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HEX, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :OUTRAGE, :PHANTOMFORCE, :PROTECT, :PSYCHICFANGS, :REFLECT, :REST, :RETURN, :ROUND, :SCALD, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TRIATTACK, :UTURN, :WILLOWISP, :TERABLAST
  s.egg_groups    :Amorphous, :Dragon
  s.hatch_steps   10240
  s.height        3.0
  s.weight        50.0
  s.color         :Green
  s.shape         :BipedalTail
  s.category      "Stealth"
  s.pokedex_entry "When it isn't battling, it keeps Dreepy in the holes on its horns. Once a fight starts, it launches the Dreepy like supersonic missiles."
  s.generation    8
end

GameData::Species.define :REGIDRAGO do |s|
  s.name          "Regidrago"
  s.types         :DRAGON
  s.base_stats    hp: 200, attack: 100, defense: 50, speed: 80, sp_atk: 100, sp_def: 50
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           hp: 3
  s.abilities     :DRAGONSMAW
  s.moves do |m|
    m.at 1, :TWISTER
    m.at 1, :VISEGRIP
    m.at 6, :BITE
    m.at 12, :ANCIENTPOWER
    m.at 18, :DRAGONBREATH
    m.at 24, :FOCUSENERGY
    m.at 30, :CRUNCH
    m.at 36, :DRAGONCLAW
    m.at 42, :HAMMERARM
    m.at 48, :DRAGONDANCE
    m.at 54, :THRASH
    m.at 60, :LASERFOCUS
    m.at 66, :DRAGONENERGY
    m.at 72, :HYPERBEAM
    m.at 78, :EXPLOSION
  end
  s.tutor_moves   :BODYSLAM, :BREAKINGSWIPE, :CONFIDE, :CRUNCH, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :ENDURE, :FACADE, :FIREFANG, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :OUTRAGE, :PROTECT, :REFLECT, :REST, :RETURN, :REVERSAL, :ROUND, :SCALESHOT, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :THUNDERFANG, :TOXIC, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        2.1
  s.weight        200.0
  s.color         :Green
  s.shape         :Bipedal
  s.category      "Dragon Orb"
  s.pokedex_entry "Its body is composed of crystallized dragon energy. Regidrago is said to have the powers of every dragon Pokémon."
  s.generation    8
  s.flags         :Legendary
end

