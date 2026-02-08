#===============================================================================
# Shattered Crowns - Gen9 electric Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :PAWMI do |s|
  s.name          "Pawmi"
  s.types         :ELECTRIC
  s.base_stats    hp: 45, attack: 50, defense: 20, speed: 60, sp_atk: 40, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      48
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :STATIC, :NATURALCURE
  s.hidden_abilities :IRONFIST
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :SCRATCH
    m.at 3, :THUNDERSHOCK
    m.at 6, :QUICKATTACK
    m.at 8, :CHARGE
    m.at 12, :NUZZLE
    m.at 15, :DIG
    m.at 19, :BITE
    m.at 23, :SPARK
    m.at 27, :THUNDERWAVE
    m.at 31, :ENTRAINMENT
    m.at 35, :SLAM
    m.at 38, :DISCHARGE
    m.at 40, :AGILITY
    m.at 44, :WILDCHARGE
  end
  s.tutor_moves   :AGILITY, :BATONPASS, :CHARGE, :CHARGEBEAM, :CHARM, :CRUNCH, :DIG, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENCORE, :ENDURE, :FACADE, :FLING, :HELPINGHAND, :METALCLAW, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :SLEEPTALK, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWIFT, :TAKEDOWN, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_moves     :FAKEOUT, :MACHPUNCH, :SWEETKISS, :WISH
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.3
  s.weight        2.5
  s.color         :Yellow
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Mouse"
  s.pokedex_entry "It has underdeveloped electric sacs on its cheeks. These sacs can produce electricity only if Pawmi rubs them furiously with the pads on its forepaws."
  s.generation    9
  s.evolves_into  :PAWMO, :Level, 18
end

GameData::Species.define :PAWMO do |s|
  s.name          "Pawmo"
  s.types         :ELECTRIC, :FIGHTING
  s.base_stats    hp: 60, attack: 75, defense: 40, speed: 85, sp_atk: 50, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      123
  s.catch_rate    80
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :VOLTABSORB, :NATURALCURE
  s.hidden_abilities :IRONFIST
  s.moves do |m|
    m.at 0, :ARMTHRUST
    m.at 1, :GROWL
    m.at 1, :SCRATCH
    m.at 3, :THUNDERSHOCK
    m.at 6, :QUICKATTACK
    m.at 8, :CHARGE
    m.at 12, :NUZZLE
    m.at 15, :DIG
    m.at 19, :BITE
    m.at 23, :SPARK
    m.at 27, :THUNDERWAVE
    m.at 32, :SLAM
    m.at 38, :ENTRAINMENT
    m.at 42, :DISCHARGE
    m.at 46, :AGILITY
    m.at 52, :WILDCHARGE
  end
  s.tutor_moves   :AGILITY, :BATONPASS, :CHARGE, :CHARGEBEAM, :CHARM, :COACHING, :CRUNCH, :DIG, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENCORE, :ENDURE, :FACADE, :FLING, :FOCUSPUNCH, :HELPINGHAND, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :METALCLAW, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :SLEEPTALK, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWIFT, :TAKEDOWN, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERPUNCH, :THUNDERWAVE, :UPPERHAND, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.4
  s.weight        6.5
  s.color         :Yellow
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Mouse"
  s.pokedex_entry "When its group is attacked, Pawmo is the first to leap into battle, defeating enemies with a fighting technique that utilizes electric shocks."
  s.generation    9
  s.evolves_into  :PAWMOT, :LevelWalk, 1000
end

GameData::Species.define :PAWMOT do |s|
  s.name          "Pawmot"
  s.types         :ELECTRIC, :FIGHTING
  s.base_stats    hp: 70, attack: 115, defense: 70, speed: 105, sp_atk: 70, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      245
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :VOLTABSORB, :NATURALCURE
  s.hidden_abilities :IRONFIST
  s.moves do |m|
    m.at 0, :REVIVALBLESSING
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :WILDCHARGE
    m.at 3, :THUNDERSHOCK
    m.at 6, :QUICKATTACK
    m.at 8, :CHARGE
    m.at 12, :NUZZLE
    m.at 15, :DIG
    m.at 19, :BITE
    m.at 23, :SPARK
    m.at 25, :ARMTHRUST
    m.at 29, :THUNDERWAVE
    m.at 33, :SLAM
    m.at 39, :ENTRAINMENT
    m.at 44, :CLOSECOMBAT
    m.at 49, :DISCHARGE
    m.at 54, :AGILITY
    m.at 60, :DOUBLESHOCK
  end
  s.tutor_moves   :AGILITY, :BATONPASS, :BODYPRESS, :BRICKBREAK, :BULKUP, :CHARGE, :CHARGEBEAM, :CHARM, :CLOSECOMBAT, :COACHING, :CRUNCH, :DIG, :DOUBLEEDGE, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENCORE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HYPERBEAM, :ICEPUNCH, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :METALCLAW, :METRONOME, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :ROCKTOMB, :SEEDBOMB, :SLEEPTALK, :SUBSTITUTE, :SUNNYDAY, :SUPERCELLSLAM, :SUPERFANG, :SWIFT, :TAKEDOWN, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERPUNCH, :THUNDERWAVE, :UPPERHAND, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.9
  s.weight        41.0
  s.color         :Yellow
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Hands-On"
  s.pokedex_entry "This Pokémon normally is slow to react, but once it enters battle, it will strike down its enemies with lightning-fast movements."
  s.generation    9
end

GameData::Species.define :TADBULB do |s|
  s.name          "Tadbulb"
  s.types         :ELECTRIC
  s.base_stats    hp: 61, attack: 31, defense: 41, speed: 45, sp_atk: 59, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      54
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :OWNTEMPO, :STATIC
  s.hidden_abilities :DAMP
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :TACKLE
    m.at 7, :THUNDERSHOCK
    m.at 11, :WATERGUN
    m.at 17, :CHARGE
    m.at 21, :SPARK
    m.at 24, :MUDSHOT
    m.at 25, :FLAIL
    m.at 32, :DISCHARGE
    m.at 36, :WEATHERBALL
    m.at 40, :ELECTRICTERRAIN
    m.at 45, :SUCKERPUNCH
    m.at 50, :ZAPCANNON
  end
  s.tutor_moves   :ACIDSPRAY, :CHARGE, :CHARGEBEAM, :CHILLINGWATER, :CONFUSERAY, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :HYPERVOICE, :LIGHTSCREEN, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :PROTECT, :RAINDANCE, :REFLECT, :REST, :SLEEPTALK, :SUBSTITUTE, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :VOLTSWITCH, :WATERPULSE, :WEATHERBALL, :WILDCHARGE, :TERABLAST
  s.egg_moves     :MUDDYWATER, :PARABOLICCHARGE, :SOAK
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        0.3
  s.weight        0.4
  s.color         :Yellow
  s.shape         :Finned
  s.habitat       :WatersEdge
  s.category      "EleTadpole"
  s.pokedex_entry "Tadbulb shakes its tail to generate electricity. If it senses danger, it will make its head blink on and off to alert its allies."
  s.generation    9
  s.evolves_into  :BELLIBOLT, :Item, THUNDERSTONE
end

GameData::Species.define :BELLIBOLT do |s|
  s.name          "Bellibolt"
  s.types         :ELECTRIC
  s.base_stats    hp: 109, attack: 64, defense: 91, speed: 45, sp_atk: 103, sp_def: 83
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    50
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :ELECTROMORPHOSIS, :STATIC
  s.hidden_abilities :DAMP
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :MUDSLAP
    m.at 1, :SLACKOFF
    m.at 7, :THUNDERSHOCK
    m.at 11, :WATERGUN
    m.at 17, :CHARGE
    m.at 21, :SPARK
    m.at 24, :MUDSHOT
    m.at 25, :FLAIL
    m.at 32, :DISCHARGE
    m.at 36, :WEATHERBALL
    m.at 40, :ELECTRICTERRAIN
    m.at 45, :SUCKERPUNCH
    m.at 50, :ZAPCANNON
  end
  s.tutor_moves   :ACIDSPRAY, :CHARGE, :CHARGEBEAM, :CHILLINGWATER, :CONFUSERAY, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :GIGAIMPACT, :HYPERBEAM, :HYPERVOICE, :LIGHTSCREEN, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :PROTECT, :RAINDANCE, :REFLECT, :REST, :SLEEPTALK, :SUBSTITUTE, :SUPERCELLSLAM, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WATERPULSE, :WEATHERBALL, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        1.2
  s.weight        113.0
  s.color         :Green
  s.shape         :HeadArms
  s.habitat       :WatersEdge
  s.category      "EleFrog"
  s.pokedex_entry "When this Pokémon expands and contracts its wobbly body, the belly-button dynamo in its stomach produces a huge amount of electricity."
  s.generation    9
end

GameData::Species.define :WATTREL do |s|
  s.name          "Wattrel"
  s.types         :ELECTRIC, :FLYING
  s.base_stats    hp: 40, attack: 40, defense: 35, speed: 70, sp_atk: 55, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      56
  s.catch_rate    180
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :WINDPOWER, :VOLTABSORB
  s.hidden_abilities :COMPETITIVE
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 4, :THUNDERSHOCK
    m.at 7, :QUICKATTACK
    m.at 11, :PLUCK
    m.at 15, :SPARK
    m.at 19, :UPROAR
    m.at 23, :ROOST
    m.at 27, :DUALWINGBEAT
    m.at 32, :AGILITY
    m.at 37, :VOLTSWITCH
    m.at 43, :DISCHARGE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :BRAVEBIRD, :CHARGE, :CHARGEBEAM, :DUALWINGBEAT, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDEAVOR, :ENDURE, :FACADE, :FEATHERDANCE, :FLY, :HURRICANE, :PROTECT, :REST, :SLEEPTALK, :SUBSTITUTE, :SWIFT, :TAILWIND, :TAKEDOWN, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :UPROAR, :UTURN, :VOLTSWITCH, :WEATHERBALL, :WILDCHARGE, :TERABLAST
  s.egg_moves     :ENDEAVOR, :FEATHERDANCE, :SPITUP, :STOCKPILE, :SWALLOW, :WEATHERBALL
  s.egg_groups    :Water1, :Flying
  s.hatch_steps   5120
  s.height        0.4
  s.weight        3.6
  s.color         :Black
  s.shape         :Winged
  s.habitat       :WatersEdge
  s.category      "Storm Petrel"
  s.pokedex_entry "When its wings catch the wind, the bones within produce electricity. This Pokémon dives into the ocean, catching prey by electrocuting them."
  s.generation    9
  s.evolves_into  :KILOWATTREL, :Level, 25
end

GameData::Species.define :KILOWATTREL do |s|
  s.name          "Kilowattrel"
  s.types         :ELECTRIC, :FLYING
  s.base_stats    hp: 70, attack: 70, defense: 60, speed: 125, sp_atk: 105, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      172
  s.catch_rate    90
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :WINDPOWER, :VOLTABSORB
  s.hidden_abilities :COMPETITIVE
  s.moves do |m|
    m.at 0, :ELECTROBALL
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 4, :THUNDERSHOCK
    m.at 7, :QUICKATTACK
    m.at 11, :PLUCK
    m.at 15, :SPARK
    m.at 19, :UPROAR
    m.at 24, :ROOST
    m.at 30, :DUALWINGBEAT
    m.at 36, :AGILITY
    m.at 43, :VOLTSWITCH
    m.at 48, :DISCHARGE
    m.at 55, :HURRICANE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :BRAVEBIRD, :CHARGE, :CHARGEBEAM, :DUALWINGBEAT, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDEAVOR, :ENDURE, :FACADE, :FEATHERDANCE, :FLY, :GIGAIMPACT, :HURRICANE, :HYPERBEAM, :PROTECT, :REST, :SCARYFACE, :SLEEPTALK, :SUBSTITUTE, :SUPERCELLSLAM, :SWIFT, :TAILWIND, :TAKEDOWN, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :UPROAR, :UTURN, :VOLTSWITCH, :WEATHERBALL, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Water1, :Flying
  s.hatch_steps   5120
  s.height        1.4
  s.weight        38.6
  s.color         :Yellow
  s.shape         :Winged
  s.habitat       :WatersEdge
  s.category      "Frigatebird"
  s.pokedex_entry "Kilowattrel inflates its throat sac to amplify its electricity. By riding the wind, this Pokémon can fly over 430 miles in a day."
  s.generation    9
end

GameData::Species.define :SANDYSHOCKS do |s|
  s.name          "Sandy Shocks"
  s.types         :ELECTRIC, :GROUND
  s.base_stats    hp: 85, attack: 81, defense: 97, speed: 101, sp_atk: 121, sp_def: 85
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    30
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :PROTOSYNTHESIS
  s.moves do |m|
    m.at -1, :SUNNYDAY
    m.at 1, :THUNDERSHOCK
    m.at 1, :THUNDERWAVE
    m.at 1, :ELECTRICTERRAIN
    m.at 1, :SUPERSONIC
    m.at 7, :SPARK
    m.at 14, :BULLDOZE
    m.at 21, :CHARGEBEAM
    m.at 28, :TRIATTACK
    m.at 35, :SCREECH
    m.at 42, :HEAVYSLAM
    m.at 49, :METALSOUND
    m.at 56, :DISCHARGE
    m.at 63, :EARTHPOWER
    m.at 70, :MIRRORCOAT
    m.at 77, :GRAVITY
    m.at 84, :ZAPCANNON
    m.at 91, :MAGNETICFLUX
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BULLDOZE, :CHARGE, :CHARGEBEAM, :EARTHPOWER, :EARTHQUAKE, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FLASHCANNON, :GIGAIMPACT, :GRAVITY, :HEAVYSLAM, :HIGHHORSEPOWER, :HYPERBEAM, :IRONDEFENSE, :LIGHTSCREEN, :METALSOUND, :MUDSHOT, :POWERGEM, :PROTECT, :REFLECT, :REST, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SLEEPTALK, :SPIKES, :STEALTHROCK, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SUPERCELLSLAM, :SWIFT, :TAKEDOWN, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        2.3
  s.weight        60.0
  s.color         :Gray
  s.shape         :MultiBody
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "No records exist of this Pokémon being caught. Data is lacking, but the Pokémon’s traits match up with a creature shown in an expedition journal."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

GameData::Species.define :MIRAIDON do |s|
  s.name          "Miraidon"
  s.types         :ELECTRIC, :DRAGON
  s.base_stats    hp: 100, attack: 85, defense: 100, speed: 135, sp_atk: 135, sp_def: 115
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      335
  s.catch_rate    3
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :HADRONENGINE
  s.moves do |m|
    m.at 1, :THUNDERSHOCK
    m.at 1, :DRAGONBREATH
    m.at 1, :ELECTRICTERRAIN
    m.at 7, :SHOCKWAVE
    m.at 14, :CHARGE
    m.at 21, :PARABOLICCHARGE
    m.at 28, :DISCHARGE
    m.at 35, :AGILITY
    m.at 42, :DRAGONPULSE
    m.at 56, :ELECTRODRIFT
    m.at 63, :METALSOUND
    m.at 70, :MIRRORCOAT
    m.at 77, :OUTRAGE
    m.at 84, :THUNDER
    m.at 91, :OVERHEAT
    m.at 98, :HYPERBEAM
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :BODYSLAM, :CALMMIND, :CHARGE, :CHARGEBEAM, :CONFUSERAY, :CRUNCH, :DAZZLINGGLEAM, :DRACOMETEOR, :DRAGONCHEER, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ENDURE, :FACADE, :FLASHCANNON, :GIGAIMPACT, :HEAVYSLAM, :HELPINGHAND, :HYPERBEAM, :LIGHTSCREEN, :METALSOUND, :OUTRAGE, :OVERHEAT, :POWERGEM, :PROTECT, :REFLECT, :REST, :SCARYFACE, :SLEEPTALK, :SNARL, :SOLARBEAM, :SUBSTITUTE, :SUPERCELLSLAM, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :UTURN, :VOLTSWITCH, :WILDCHARGE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        3.5
  s.weight        240.0
  s.color         :Blue
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "Much remains unknown about this creature. It resembles Cyclizar, but it is far more ruthless and powerful."
  s.generation    9
  s.flags         :Paradox, :Legendary
end

GameData::Species.define :RAGINGBOLT do |s|
  s.name          "Raging Bolt"
  s.types         :ELECTRIC, :DRAGON
  s.base_stats    hp: 125, attack: 73, defense: 91, speed: 75, sp_atk: 137, sp_def: 89
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      295
  s.catch_rate    10
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :PROTOSYNTHESIS
  s.moves do |m|
    m.at -1, :ANCIENTPOWER
    m.at 1, :TWISTER
    m.at 1, :SUNNYDAY
    m.at 1, :SHOCKWAVE
    m.at 1, :STOMP
    m.at 7, :CHARGE
    m.at 14, :DRAGONBREATH
    m.at 21, :ELECTRICTERRAIN
    m.at 28, :DISCHARGE
    m.at 35, :DRAGONTAIL
    m.at 42, :CALMMIND
    m.at 49, :THUNDERCLAP
    m.at 56, :DRAGONHAMMER
    m.at 63, :RISINGVOLTAGE
    m.at 70, :DRAGONPULSE
    m.at 77, :ZAPCANNON
    m.at 84, :BODYPRESS
    m.at 91, :THUNDER
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :CALMMIND, :CHARGE, :CHARGEBEAM, :CRUNCH, :DOUBLEEDGE, :DRACOMETEOR, :DRAGONCHEER, :DRAGONPULSE, :DRAGONTAIL, :EARTHQUAKE, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :GIGAIMPACT, :HEAVYSLAM, :HYPERBEAM, :HYPERVOICE, :OUTRAGE, :PROTECT, :REST, :ROAR, :SCARYFACE, :SLEEPTALK, :SNARL, :SOLARBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SUPERCELLSLAM, :TAKEDOWN, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERWAVE, :VOLTSWITCH, :WEATHERBALL, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        5.2
  s.weight        480.0
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "It's said to incinerate everything around it with lightning launched from its fur. Very little is known about this creature."
  s.generation    9
  s.flags         :Paradox
end

