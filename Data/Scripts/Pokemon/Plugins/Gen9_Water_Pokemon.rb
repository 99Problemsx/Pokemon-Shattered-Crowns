#===============================================================================
# Shattered Crowns - Gen9 water Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :BASCULEGION do |s|
  s.name          "Basculegion"
  s.types         :WATER, :GHOST
  s.base_stats    hp: 120, attack: 112, defense: 65, speed: 78, sp_atk: 80, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 3
  s.abilities     :SWIFTSWIM, :ADAPTABILITY
  s.hidden_abilities :MOLDBREAKER
  s.moves do |m|
    m.at 1, :PHANTOMFORCE
    m.at 1, :TAILWHIP
    m.at 1, :WATERGUN
    m.at 1, :SHADOWBALL
    m.at 4, :TACKLE
    m.at 8, :FLAIL
    m.at 12, :AQUAJET
    m.at 16, :BITE
    m.at 20, :SCARYFACE
    m.at 24, :HEADBUTT
    m.at 28, :SOAK
    m.at 32, :CRUNCH
    m.at 36, :TAKEDOWN
    m.at 40, :UPROAR
    m.at 44, :WAVECRASH
    m.at 48, :THRASH
    m.at 52, :DOUBLEEDGE
    m.at 56, :HEADSMASH
  end
  s.tutor_moves   :AGILITY, :BLIZZARD, :CHILLINGWATER, :CONFUSERAY, :CRUNCH, :DOUBLEEDGE, :ENDEAVOR, :ENDURE, :FACADE, :FLIPTURN, :GIGAIMPACT, :HEX, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICYWIND, :LIQUIDATION, :MUDDYWATER, :MUDSHOT, :NIGHTSHADE, :OUTRAGE, :PAINSPLIT, :PHANTOMFORCE, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :SCALESHOT, :SCARYFACE, :SHADOWBALL, :SLEEPTALK, :SNOWSCAPE, :SPITE, :SUBSTITUTE, :SURF, :SWIFT, :TAKEDOWN, :UPROAR, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Water2
  s.hatch_steps   10455
  s.height        3.0
  s.weight        110.0
  s.color         :Green
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Big Fish"
  s.pokedex_entry "Clads itself in the souls of comrades that perished before fulfilling their goals of journeying upstream. No other species throughout other aquatic environments is Basculegion’s equal."
  s.generation    8
  s.flags         :DefaultForm_2, :InheritFormWithEverStone, :HasGenderedSprites
  s.wild_item_uncommon :DEEPSEATOOTH
end

GameData::Species.define :QUAXLY do |s|
  s.name          "Quaxly"
  s.types         :WATER
  s.base_stats    hp: 55, attack: 65, defense: 45, speed: 50, sp_atk: 50, sp_def: 45
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :TORRENT
  s.hidden_abilities :MOXIE
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 7, :WORKUP
    m.at 10, :WINGATTACK
    m.at 13, :AQUAJET
    m.at 17, :DOUBLEHIT
    m.at 21, :AQUACUTTER
    m.at 24, :AIRSLASH
    m.at 28, :FOCUSENERGY
    m.at 31, :ACROBATICS
    m.at 35, :LIQUIDATION
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :AIRSLASH, :BATONPASS, :BRAVEBIRD, :CHILLINGWATER, :DISARMINGVOICE, :ENCORE, :ENDURE, :FACADE, :HELPINGHAND, :HYDROPUMP, :LIQUIDATION, :LOWKICK, :MISTYTERRAIN, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :SLEEPTALK, :SUBSTITUTE, :SURF, :SWIFT, :TAKEDOWN, :WATERPLEDGE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :DETECT, :LASTRESORT, :RAPIDSPIN, :ROOST
  s.egg_groups    :Flying, :Water1
  s.hatch_steps   5120
  s.height        0.5
  s.weight        6.1
  s.color         :Blue
  s.shape         :Winged
  s.habitat       :WatersEdge
  s.category      "Duckling"
  s.pokedex_entry "This Pokémon migrated to Paldea from distant lands long ago. The gel secreted by its feathers repels water and grime."
  s.generation    9
  s.evolves_into  :QUAXWELL, :Level, 16
end

GameData::Species.define :QUAXWELL do |s|
  s.name          "Quaxwell"
  s.types         :WATER
  s.base_stats    hp: 70, attack: 85, defense: 65, speed: 65, sp_atk: 65, sp_def: 60
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      144
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :TORRENT
  s.hidden_abilities :MOXIE
  s.moves do |m|
    m.at 1, :DOUBLEHIT
    m.at 1, :POUND
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 7, :WORKUP
    m.at 10, :WINGATTACK
    m.at 13, :AQUAJET
    m.at 17, :WATERPULSE
    m.at 19, :LOWSWEEP
    m.at 23, :AQUACUTTER
    m.at 27, :AIRSLASH
    m.at 32, :FOCUSENERGY
    m.at 38, :ACROBATICS
    m.at 43, :LIQUIDATION
    m.at 48, :FEATHERDANCE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :AIRSLASH, :BATONPASS, :BRAVEBIRD, :CHILLINGWATER, :DISARMINGVOICE, :ENCORE, :ENDURE, :FACADE, :FEATHERDANCE, :FLIPTURN, :HELPINGHAND, :HYDROPUMP, :LIQUIDATION, :LOWKICK, :LOWSWEEP, :MISTYTERRAIN, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :SLEEPTALK, :SUBSTITUTE, :SURF, :SWIFT, :TAKEDOWN, :TRIPLEAXEL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Flying, :Water1
  s.hatch_steps   5120
  s.height        1.2
  s.weight        21.5
  s.color         :Blue
  s.shape         :Winged
  s.habitat       :WatersEdge
  s.category      "Practicing"
  s.pokedex_entry "These Pokémon constantly run through shallow waters to train their legs, then compete with each other to see which of them kicks most gracefully."
  s.generation    9
  s.evolves_into  :QUAQUAVAL, :Level, 36
end

GameData::Species.define :QUAQUAVAL do |s|
  s.name          "Quaquaval"
  s.types         :WATER, :FIGHTING
  s.base_stats    hp: 85, attack: 120, defense: 80, speed: 85, sp_atk: 85, sp_def: 75
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :TORRENT
  s.hidden_abilities :MOXIE
  s.moves do |m|
    m.at -1, :COUNTER
    m.at 0, :AQUASTEP
    m.at 1, :GROWL
    m.at 1, :WATERGUN
    m.at 1, :DOUBLEHIT
    m.at 1, :POUND
    m.at 7, :WORKUP
    m.at 10, :WINGATTACK
    m.at 13, :AQUAJET
    m.at 17, :WATERPULSE
    m.at 17, :LOWSWEEP
    m.at 21, :AQUACUTTER
    m.at 27, :AIRSLASH
    m.at 32, :FOCUSENERGY
    m.at 38, :MEGAKICK
    m.at 43, :ACROBATICS
    m.at 47, :LIQUIDATION
    m.at 52, :FEATHERDANCE
    m.at 58, :CLOSECOMBAT
    m.at 64, :WAVECRASH
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :BATONPASS, :BRAVEBIRD, :BRICKBREAK, :BULKUP, :CHILLINGWATER, :CLOSECOMBAT, :COACHING, :DISARMINGVOICE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FEATHERDANCE, :FLING, :FLIPTURN, :GIGAIMPACT, :HELPINGHAND, :HURRICANE, :HYDROCANNON, :HYDROPUMP, :HYPERBEAM, :ICESPINNER, :ICYWIND, :KNOCKOFF, :LIQUIDATION, :LOWKICK, :LOWSWEEP, :MISTYTERRAIN, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :REVERSAL, :SLEEPTALK, :SUBSTITUTE, :SURF, :SWIFT, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :TRIPLEAXEL, :UPPERHAND, :UTURN, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Flying, :Water1
  s.hatch_steps   5120
  s.height        1.8
  s.weight        61.9
  s.color         :Blue
  s.shape         :Winged
  s.habitat       :WatersEdge
  s.category      "Dancer"
  s.pokedex_entry "A single kick from a Quaquaval can send a truck rolling. This Pokémon uses its powerful legs to perform striking dances from far-off lands."
  s.generation    9
end

GameData::Species.define :WIGLETT do |s|
  s.name          "Wiglett"
  s.types         :WATER
  s.base_stats    hp: 10, attack: 55, defense: 25, speed: 95, sp_atk: 35, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      49
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :GOOEY, :RATTLED
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :SANDATTACK
    m.at 4, :MUDSLAP
    m.at 8, :WRAP
    m.at 12, :AQUAJET
    m.at 20, :WATERPULSE
    m.at 20, :SLAM
    m.at 24, :HEADBUTT
    m.at 28, :DIG
    m.at 32, :SUCKERPUNCH
    m.at 36, :THROATCHOP
    m.at 40, :LIQUIDATION
  end
  s.tutor_moves   :AGILITY, :BLIZZARD, :BULLDOZE, :CHILLINGWATER, :DIG, :EARTHPOWER, :ENDURE, :FACADE, :FOULPLAY, :HELPINGHAND, :HYDROPUMP, :ICEBEAM, :LIQUIDATION, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :PROTECT, :RAINDANCE, :REST, :SANDSTORM, :SLEEPTALK, :STOMPINGTANTRUM, :SUBSTITUTE, :SURF, :SWIFT, :TAKEDOWN, :THROATCHOP, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :FINALGAMBIT, :MEMENTO
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        1.2
  s.weight        1.8
  s.color         :White
  s.shape         :HeadBase
  s.habitat       :Sea
  s.category      "Garden Eel"
  s.pokedex_entry "This Pokémon can pick up the scent of a Veluza just over 65 feet away and will hide itself in the sand."
  s.generation    9
  s.evolves_into  :WUGTRIO, :Level, 26
end

GameData::Species.define :WUGTRIO do |s|
  s.name          "Wugtrio"
  s.types         :WATER
  s.base_stats    hp: 35, attack: 100, defense: 50, speed: 120, sp_atk: 50, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      149
  s.catch_rate    50
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :GOOEY, :RATTLED
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :SANDATTACK
    m.at 1, :WRAP
    m.at 1, :WATERGUN
    m.at 12, :AQUAJET
    m.at 16, :SLAM
    m.at 20, :WATERPULSE
    m.at 24, :HEADBUTT
    m.at 30, :TRIPLEDIVE
    m.at 36, :DIG
    m.at 42, :SUCKERPUNCH
    m.at 48, :THROATCHOP
    m.at 54, :LIQUIDATION
  end
  s.tutor_moves   :AGILITY, :BLIZZARD, :BULLDOZE, :CHILLINGWATER, :DIG, :EARTHPOWER, :ENDURE, :FACADE, :FOULPLAY, :GIGAIMPACT, :HELPINGHAND, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :LIQUIDATION, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :PAINSPLIT, :PROTECT, :RAINDANCE, :REST, :SANDSTORM, :SLEEPTALK, :STOMPINGTANTRUM, :SUBSTITUTE, :SURF, :SWIFT, :TAKEDOWN, :THROATCHOP, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        1.2
  s.weight        5.4
  s.color         :Red
  s.shape         :HeadBase
  s.habitat       :Sea
  s.category      "Garden Eel"
  s.pokedex_entry "It has a vicious temperament, contrary to what its appearance may suggest. It wraps its long bodies around prey, then drags the prey into its den."
  s.generation    9
end

GameData::Species.define :FINIZEN do |s|
  s.name          "Finizen"
  s.types         :WATER
  s.base_stats    hp: 70, attack: 45, defense: 40, speed: 75, sp_atk: 45, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      63
  s.catch_rate    200
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :WATERVEIL
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :SUPERSONIC
    m.at 7, :ASTONISH
    m.at 10, :FOCUSENERGY
    m.at 13, :AQUAJET
    m.at 17, :DOUBLEHIT
    m.at 21, :DIVE
    m.at 25, :CHARM
    m.at 29, :ACROBATICS
    m.at 34, :ENCORE
    m.at 39, :AQUATAIL
    m.at 44, :MIST
    m.at 50, :HYDROPUMP
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :BLIZZARD, :BODYSLAM, :CHARM, :CHILLINGWATER, :DISARMINGVOICE, :DRAININGKISS, :ENCORE, :ENDURE, :FACADE, :FLING, :HAZE, :HELPINGHAND, :HYDROPUMP, :ICEBEAM, :ICYWIND, :LIQUIDATION, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :SLEEPTALK, :SUBSTITUTE, :SURF, :SWIFT, :TAKEDOWN, :WATERFALL, :WATERPULSE, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BOOMBURST, :BOUNCE, :COUNTER, :HAZE, :TICKLE
  s.egg_groups    :Field, :Water2
  s.hatch_steps   10240
  s.height        1.3
  s.weight        60.2
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Dolphin"
  s.pokedex_entry "It likes playing with others of its kind using the water ring on its tail. It uses ultrasonic waves to sense the emotions of other living creatures."
  s.generation    9
  s.evolves_into  :PALAFIN, :LevelWithPartner, 38
end

GameData::Species.define :PALAFIN do |s|
  s.name          "Palafin"
  s.types         :WATER
  s.base_stats    hp: 100, attack: 70, defense: 72, speed: 100, sp_atk: 53, sp_def: 62
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      160
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :ZEROTOHERO
  s.moves do |m|
    m.at 0, :FLIPTURN
    m.at 1, :SUPERSONIC
    m.at 1, :WATERGUN
    m.at 1, :JETPUNCH
    m.at 7, :ASTONISH
    m.at 10, :FOCUSENERGY
    m.at 13, :AQUAJET
    m.at 17, :DOUBLEHIT
    m.at 21, :DIVE
    m.at 25, :CHARM
    m.at 29, :ACROBATICS
    m.at 34, :ENCORE
    m.at 39, :AQUATAIL
    m.at 44, :MIST
    m.at 50, :HYDROPUMP
    m.at 55, :FOCUSPUNCH
    m.at 61, :WAVECRASH
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :AURASPHERE, :BLIZZARD, :BODYSLAM, :BULKUP, :CHARM, :CHILLINGWATER, :CLOSECOMBAT, :DISARMINGVOICE, :DRAININGKISS, :DRAINPUNCH, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FLIPTURN, :FOCUSBLAST, :FOCUSPUNCH, :GIGAIMPACT, :GRASSKNOT, :HARDPRESS, :HAZE, :HELPINGHAND, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONHEAD, :LIQUIDATION, :OUTRAGE, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :REVERSAL, :SLEEPTALK, :SUBSTITUTE, :SURF, :SWIFT, :TAKEDOWN, :TAUNT, :THROATCHOP, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field, :Water2
  s.hatch_steps   10240
  s.height        1.3
  s.weight        60.2
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Dolphin"
  s.pokedex_entry "This Pokémon changes its appearance if it hears its allies calling for help. Palafin will never show anybody its moment of transformation."
  s.generation    9
end

GameData::Species.define :VELUZA do |s|
  s.name          "Veluza"
  s.types         :WATER, :PSYCHIC
  s.base_stats    hp: 90, attack: 102, defense: 73, speed: 70, sp_atk: 78, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      167
  s.catch_rate    100
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :MOLDBREAKER
  s.hidden_abilities :SHARPNESS
  s.moves do |m|
    m.at 1, :AQUAJET
    m.at 1, :TACKLE
    m.at 7, :PLUCK
    m.at 11, :WATERPULSE
    m.at 15, :FOCUSENERGY
    m.at 20, :SLASH
    m.at 25, :AQUACUTTER
    m.at 30, :FILLETAWAY
    m.at 35, :NIGHTSLASH
    m.at 40, :PSYCHOCUT
    m.at 45, :LIQUIDATION
    m.at 50, :CRUNCH
    m.at 55, :FINALGAMBIT
  end
  s.tutor_moves   :AGILITY, :BLIZZARD, :BODYSLAM, :CHILLINGWATER, :CRUNCH, :DOUBLEEDGE, :DRILLRUN, :ENDEAVOR, :ENDURE, :EXPANDINGFORCE, :FLIPTURN, :GIGAIMPACT, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICYWIND, :LIQUIDATION, :PAINSPLIT, :PROTECT, :PSYCHIC, :PSYCHICFANGS, :PSYCHICTERRAIN, :RAINDANCE, :REST, :SCALESHOT, :SLEEPTALK, :SNOWSCAPE, :STOREDPOWER, :SUBSTITUTE, :SURF, :TAKEDOWN, :WATERFALL, :WATERPULSE, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :RECOVER, :THRASH
  s.egg_groups    :Water2
  s.hatch_steps   5120
  s.height        2.5
  s.weight        90.0
  s.color         :Gray
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Jettison"
  s.pokedex_entry "When Veluza discards unnecessary flesh, its mind becomes honed and its psychic power increases. The spare flesh has a mild but delicious flavor."
  s.generation    9
end

GameData::Species.define :DONDOZO do |s|
  s.name          "Dondozo"
  s.types         :WATER
  s.base_stats    hp: 150, attack: 100, defense: 115, speed: 35, sp_atk: 65, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      265
  s.catch_rate    25
  s.happiness     50
  s.evs           hp: 3
  s.abilities     :UNAWARE, :OBLIVIOUS
  s.hidden_abilities :WATERVEIL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :SUPERSONIC
    m.at 1, :WATERGUN
    m.at 5, :TICKLE
    m.at 10, :FLAIL
    m.at 15, :REST
    m.at 15, :SLEEPTALK
    m.at 20, :DIVE
    m.at 25, :NOBLEROAR
    m.at 30, :SOAK
    m.at 35, :BODYSLAM
    m.at 40, :AQUATAIL
    m.at 45, :RAINDANCE
    m.at 50, :ORDERUP
    m.at 55, :HEAVYSLAM
    m.at 60, :DOUBLEEDGE
    m.at 65, :WAVECRASH
  end
  s.tutor_moves   :AVALANCHE, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CHILLINGWATER, :CRUNCH, :CURSE, :DOUBLEEDGE, :EARTHQUAKE, :ENDURE, :FACADE, :GIGAIMPACT, :HEAVYSLAM, :HYDROPUMP, :HYPERBEAM, :ICEFANG, :LIQUIDATION, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :ROCKSLIDE, :SCARYFACE, :SLEEPTALK, :STOMPINGTANTRUM, :SUBSTITUTE, :SURF, :TAKEDOWN, :WATERFALL, :WATERPULSE, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :CURSE, :FISSURE, :THRASH, :YAWN
  s.egg_groups    :Water2
  s.hatch_steps   10240
  s.height        12.0
  s.weight        220.0
  s.color         :Blue
  s.shape         :Finned
  s.habitat       :Sea
  s.category      "Big Catfish"
  s.pokedex_entry "This Pokémon is a glutton, but it’s bad at getting food. It teams up with a Tatsugiri to catch prey."
  s.generation    9
end

GameData::Species.define :WALKINGWAKE do |s|
  s.name          "Walking Wake"
  s.types         :WATER, :DRAGON
  s.base_stats    hp: 99, attack: 83, defense: 91, speed: 109, sp_atk: 125, sp_def: 83
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      295
  s.catch_rate    5
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :PROTOSYNTHESIS
  s.moves do |m|
    m.at -1, :SUNNYDAY
    m.at -1, :HONECLAWS
    m.at 1, :ROAR
    m.at 1, :LEER
    m.at 1, :AQUAJET
    m.at 1, :TWISTER
    m.at 7, :BITE
    m.at 14, :WATERPULSE
    m.at 21, :NOBLEROAR
    m.at 28, :DRAGONBREATH
    m.at 35, :BREAKINGSWIPE
    m.at 42, :DRAGONRUSH
    m.at 56, :HYDROSTEAM
    m.at 63, :DRAGONPULSE
    m.at 70, :OUTRAGE
    m.at 77, :FLAMETHROWER
    m.at 84, :HYDROPUMP
  end
  s.tutor_moves   :AGILITY, :BODYSLAM, :BREAKINGSWIPE, :CHILLINGWATER, :CRUNCH, :DOUBLEEDGE, :DRACOMETEOR, :DRAGONCHEER, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :ENDURE, :FACADE, :FIREFANG, :FLAMETHROWER, :FLIPTURN, :GIGAIMPACT, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :KNOCKOFF, :LIQUIDATION, :LOWKICK, :MUDSHOT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :ROAR, :SCALD, :SCARYFACE, :SLEEPTALK, :SNARL, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWIFT, :TAKEDOWN, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        3.5
  s.weight        280.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "This ferocious creature is shrouded in mystery. It's named after an aquatic monster mentioned in an old expedition journal."
  s.generation    9
  s.flags         :Paradox
end

