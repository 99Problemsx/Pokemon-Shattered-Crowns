#===============================================================================
# Shattered Crowns - Gen9 fairy Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :ENAMORUS do |s|
  s.name          "Enamorus"
  s.types         :FAIRY, :FLYING
  s.base_stats    hp: 74, attack: 115, defense: 70, speed: 106, sp_atk: 135, sp_def: 80
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Slow
  s.base_exp      116
  s.catch_rate    3
  s.happiness     90
  s.evs           sp_attack: 3
  s.abilities     :CUTECHARM
  s.hidden_abilities :CONTRARY
  s.moves do |m|
    m.at 1, :FAIRYWIND
    m.at 1, :ASTONISH
    m.at 5, :TORMENT
    m.at 10, :FLATTER
    m.at 15, :TWISTER
    m.at 20, :DRAININGKISS
    m.at 25, :IRONDEFENSE
    m.at 30, :IMPRISON
    m.at 35, :MYSTICALFIRE
    m.at 40, :DAZZLINGGLEAM
    m.at 45, :EXTRASENSORY
    m.at 50, :UPROAR
    m.at 55, :SUPERPOWER
    m.at 60, :HEALINGWISH
    m.at 65, :MOONBLAST
    m.at 70, :OUTRAGE
    m.at 75, :SPRINGTIDESTORM
  end
  s.tutor_moves   :AGILITY, :ALLURINGVOICE, :BODYSLAM, :CALMMIND, :DAZZLINGGLEAM, :DISARMINGVOICE, :DRAININGKISS, :EARTHPOWER, :ENDURE, :FACADE, :FLY, :FOCUSBLAST, :GIGAIMPACT, :GRASSKNOT, :GRASSYTERRAIN, :HYPERBEAM, :IMPRISON, :IRONDEFENSE, :IRONHEAD, :MISTYEXPLOSION, :MISTYTERRAIN, :OUTRAGE, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :SCARYFACE, :SLEEPTALK, :SLUDGEBOMB, :SUBSTITUTE, :SUNNYDAY, :TAILWIND, :TAKEDOWN, :TAUNT, :UPROAR, :WEATHERBALL, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30855
  s.height        1.8
  s.weight        48.0
  s.color         :Pink
  s.shape         :HeadArms
  s.habitat       :Rare
  s.category      "Love-Hate"
  s.pokedex_entry "When it flies to this land from across the sea, the bitter winter comes to an end. According to legend, this Pokémon's love gives rise to the budding of fresh life across Hisui."
  s.generation    8
  s.flags         :Legendary, :ForcesOfNature
end

GameData::Species.define :FIDOUGH do |s|
  s.name          "Fidough"
  s.types         :FAIRY
  s.base_stats    hp: 37, attack: 55, defense: 70, speed: 65, sp_atk: 30, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :OWNTEMPO
  s.hidden_abilities :KLUTZ
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :TACKLE
    m.at 3, :LICK
    m.at 6, :TAILWHIP
    m.at 8, :COVET
    m.at 11, :BITE
    m.at 15, :BABYDOLLEYES
    m.at 18, :PLAYROUGH
    m.at 22, :WORKUP
    m.at 26, :BATONPASS
    m.at 30, :ROAR
    m.at 33, :DOUBLEEDGE
    m.at 36, :CHARM
    m.at 40, :CRUNCH
    m.at 45, :LASTRESORT
  end
  s.tutor_moves   :AGILITY, :ALLURINGVOICE, :BATONPASS, :BODYSLAM, :CHARM, :CRUNCH, :DAZZLINGGLEAM, :DIG, :DOUBLEEDGE, :ENDEAVOR, :ENDURE, :FACADE, :FIREFANG, :HELPINGHAND, :ICEFANG, :MISTYTERRAIN, :MUDSHOT, :MUDSLAP, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :PSYCHUP, :RAINDANCE, :REST, :ROAR, :SLEEPTALK, :SNARL, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :THUNDERFANG, :TRAILBLAZE, :TERABLAST
  s.egg_moves     :COPYCAT, :HOWL, :SWEETSCENT, :WISH, :YAWN
  s.egg_groups    :Field, :Mineral
  s.hatch_steps   5120
  s.height        0.3
  s.weight        10.9
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Urban
  s.category      "Puppy"
  s.pokedex_entry "This Pokémon is smooth and moist to the touch. Yeast in Fidough’s breath induces fermentation in the Pokémon’s vicinity."
  s.generation    9
  s.evolves_into  :DACHSBUN, :Level, 26
end

GameData::Species.define :DACHSBUN do |s|
  s.name          "Dachsbun"
  s.types         :FAIRY
  s.base_stats    hp: 57, attack: 80, defense: 115, speed: 95, sp_atk: 50, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      167
  s.catch_rate    90
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :WELLBAKEDBODY
  s.hidden_abilities :AROMAVEIL
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :TACKLE
    m.at 3, :LICK
    m.at 6, :TAILWHIP
    m.at 8, :COVET
    m.at 11, :BITE
    m.at 15, :BABYDOLLEYES
    m.at 18, :PLAYROUGH
    m.at 22, :WORKUP
    m.at 29, :BATONPASS
    m.at 33, :ROAR
    m.at 38, :DOUBLEEDGE
    m.at 42, :CHARM
    m.at 47, :CRUNCH
    m.at 53, :LASTRESORT
  end
  s.tutor_moves   :AGILITY, :ALLURINGVOICE, :BATONPASS, :BODYPRESS, :BODYSLAM, :CHARM, :CRUNCH, :DAZZLINGGLEAM, :DIG, :DOUBLEEDGE, :DRAININGKISS, :ENDEAVOR, :ENDURE, :FACADE, :FIREFANG, :GIGAIMPACT, :HELPINGHAND, :HYPERBEAM, :ICEFANG, :MISTYTERRAIN, :MUDSHOT, :MUDSLAP, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :PSYCHUP, :RAINDANCE, :REST, :ROAR, :SCARYFACE, :SLEEPTALK, :SNARL, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :THUNDERFANG, :TRAILBLAZE, :TERABLAST
  s.egg_groups    :Field, :Mineral
  s.hatch_steps   5120
  s.height        0.5
  s.weight        14.9
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Urban
  s.category      "Dog"
  s.pokedex_entry "The pleasant aroma that emanates from this Pokémon’s body helps wheat grow, so Dachsbun has been treasured by farming villages."
  s.generation    9
end

GameData::Species.define :TINKATINK do |s|
  s.name          "Tinkatink"
  s.types         :FAIRY, :STEEL
  s.base_stats    hp: 50, attack: 45, defense: 45, speed: 58, sp_atk: 35, sp_def: 64
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Parabolic
  s.base_exp      59
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :MOLDBREAKER, :OWNTEMPO
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 1, :FAIRYWIND
    m.at 1, :ASTONISH
    m.at 5, :BABYDOLLEYES
    m.at 8, :METALCLAW
    m.at 11, :COVET
    m.at 14, :ROCKSMASH
    m.at 17, :DRAININGKISS
    m.at 21, :SWEETKISS
    m.at 24, :BRUTALSWING
    m.at 27, :SLAM
    m.at 31, :FLASHCANNON
    m.at 35, :PLAYROUGH
    m.at 39, :FAKEOUT
    m.at 43, :FLATTER
    m.at 47, :SKITTERSMACK
    m.at 52, :KNOCKOFF
  end
  s.tutor_moves   :DRAININGKISS, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FLASHCANNON, :FLING, :FOULPLAY, :HELPINGHAND, :KNOCKOFF, :LIGHTSCREEN, :METALCLAW, :METALSOUND, :METRONOME, :PLAYROUGH, :POUNCE, :PROTECT, :REFLECT, :REST, :ROCKSLIDE, :ROCKTOMB, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :STEALTHROCK, :STEELBEAM, :STONEEDGE, :SUBSTITUTE, :SWORDSDANCE, :THIEF, :THUNDERWAVE, :TERABLAST
  s.egg_moves     :FEINT, :ICEHAMMER, :QUASH
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.4
  s.weight        8.9
  s.color         :Pink
  s.shape         :Bipedal
  s.habitat       :RoughTerrain
  s.category      "Metalsmith"
  s.pokedex_entry "It swings its handmade hammer around to protect itself, but the hammer is often stolen by Pokémon that eat metal."
  s.generation    9
  s.evolves_into  :TINKATUFF, :Level, 24
end

GameData::Species.define :TINKATUFF do |s|
  s.name          "Tinkatuff"
  s.types         :FAIRY, :STEEL
  s.base_stats    hp: 65, attack: 55, defense: 55, speed: 78, sp_atk: 45, sp_def: 82
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Parabolic
  s.base_exp      133
  s.catch_rate    90
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :MOLDBREAKER, :OWNTEMPO
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 1, :FAIRYWIND
    m.at 1, :ASTONISH
    m.at 5, :BABYDOLLEYES
    m.at 8, :METALCLAW
    m.at 11, :COVET
    m.at 14, :ROCKSMASH
    m.at 17, :DRAININGKISS
    m.at 21, :SWEETKISS
    m.at 24, :BRUTALSWING
    m.at 27, :SLAM
    m.at 31, :FLASHCANNON
    m.at 35, :PLAYROUGH
    m.at 39, :FAKEOUT
    m.at 43, :FLATTER
    m.at 47, :SKITTERSMACK
    m.at 52, :KNOCKOFF
  end
  s.tutor_moves   :BRICKBREAK, :DRAININGKISS, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FLASHCANNON, :FLING, :FOULPLAY, :HELPINGHAND, :KNOCKOFF, :LIGHTSCREEN, :METALCLAW, :METALSOUND, :METRONOME, :PLAYROUGH, :POUNCE, :PROTECT, :REFLECT, :REST, :ROCKSLIDE, :ROCKTOMB, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :STEALTHROCK, :STEELBEAM, :STONEEDGE, :SUBSTITUTE, :SWORDSDANCE, :THIEF, :THUNDERWAVE, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.7
  s.weight        59.1
  s.color         :Pink
  s.shape         :Bipedal
  s.habitat       :RoughTerrain
  s.category      "Hammer"
  s.pokedex_entry "This Pokémon will attack groups of Pawniard and Bisharp, gathering metal from them in order to create a large and sturdy hammer."
  s.generation    9
  s.evolves_into  :TINKATON, :Level, 38
end

GameData::Species.define :TINKATON do |s|
  s.name          "Tinkaton"
  s.types         :FAIRY, :STEEL
  s.base_stats    hp: 85, attack: 75, defense: 77, speed: 94, sp_atk: 70, sp_def: 105
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Parabolic
  s.base_exp      253
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 3
  s.abilities     :MOLDBREAKER, :OWNTEMPO
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 0, :GIGATONHAMMER
    m.at 1, :FAIRYWIND
    m.at 1, :ASTONISH
    m.at 5, :BABYDOLLEYES
    m.at 8, :METALCLAW
    m.at 11, :COVET
    m.at 14, :ROCKSMASH
    m.at 17, :DRAININGKISS
    m.at 21, :SWEETKISS
    m.at 24, :BRUTALSWING
    m.at 27, :SLAM
    m.at 31, :FLASHCANNON
    m.at 35, :PLAYROUGH
    m.at 39, :FAKEOUT
    m.at 43, :FLATTER
    m.at 47, :SKITTERSMACK
    m.at 52, :KNOCKOFF
  end
  s.tutor_moves   :BRICKBREAK, :BULLDOZE, :DRAININGKISS, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FLASHCANNON, :FLING, :FOULPLAY, :HARDPRESS, :HEAVYSLAM, :HELPINGHAND, :KNOCKOFF, :LIGHTSCREEN, :METALCLAW, :METALSOUND, :METRONOME, :PLAYROUGH, :POUNCE, :PROTECT, :REFLECT, :REST, :ROCKSLIDE, :ROCKTOMB, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :SMACKDOWN, :STEALTHROCK, :STEELBEAM, :STONEEDGE, :SUBSTITUTE, :SWORDSDANCE, :THIEF, :THUNDERWAVE, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.7
  s.weight        112.8
  s.color         :Pink
  s.shape         :Bipedal
  s.habitat       :RoughTerrain
  s.category      "Hammer"
  s.pokedex_entry "This intelligent Pokémon has a very daring disposition. It knocks rocks into the sky with its hammer, aiming for flying Corviknight."
  s.generation    9
end

GameData::Species.define :SCREAMTAIL do |s|
  s.name          "Scream Tail"
  s.types         :FAIRY, :PSYCHIC
  s.base_stats    hp: 115, attack: 65, defense: 99, speed: 111, sp_atk: 65, sp_def: 115
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    50
  s.happiness     0
  s.evs           hp: 3
  s.abilities     :PROTOSYNTHESIS
  s.moves do |m|
    m.at -1, :SUNNYDAY
    m.at 1, :POUND
    m.at 1, :SING
    m.at 1, :DISABLE
    m.at 7, :HOWL
    m.at 14, :NOBLEROAR
    m.at 21, :BITE
    m.at 28, :BODYSLAM
    m.at 35, :REST
    m.at 42, :PLAYROUGH
    m.at 49, :HYPERVOICE
    m.at 56, :PSYCHICFANGS
    m.at 63, :CRUNCH
    m.at 70, :WISH
    m.at 77, :GYROBALL
    m.at 84, :PERISHSONG
    m.at 91, :BOOMBURST
  end
  s.tutor_moves   :AMNESIA, :BATONPASS, :BLIZZARD, :BODYSLAM, :BULKUP, :CALMMIND, :CRUNCH, :DAZZLINGGLEAM, :DIG, :DOUBLEEDGE, :DRAINPUNCH, :ENCORE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FIREBLAST, :FIREFANG, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :GIGAIMPACT, :GRASSKNOT, :GYROBALL, :HELPINGHAND, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEFANG, :ICEPUNCH, :IMPRISON, :LIGHTSCREEN, :METRONOME, :MISTYEXPLOSION, :MISTYTERRAIN, :PLAYROUGH, :PROTECT, :PSYBEAM, :PSYCHIC, :PSYCHICFANGS, :PSYCHICNOISE, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :ROAR, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SLEEPTALK, :SNOWSCAPE, :STEALTHROCK, :STOMPINGTANTRUM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERPUNCH, :THUNDERWAVE, :TRICK, :TRICKROOM, :UPROAR, :WATERPULSE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        1.2
  s.weight        8.0
  s.color         :Pink
  s.shape         :Bipedal
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "There has been only one reported sighting of this Pokémon. It resembles a mysterious creature depicted in an old expedition journal."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

GameData::Species.define :IRONVALIANT do |s|
  s.name          "Iron Valiant"
  s.types         :FAIRY, :FIGHTING
  s.base_stats    hp: 74, attack: 130, defense: 90, speed: 116, sp_atk: 120, sp_def: 60
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      295
  s.catch_rate    10
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :QUARKDRIVE
  s.moves do |m|
    m.at -1, :ELECTRICTERRAIN
    m.at 1, :DOUBLETEAM
    m.at 1, :FURYCUTTER
    m.at 1, :SHADOWSNEAK
    m.at 1, :DISABLE
    m.at 7, :HYPNOSIS
    m.at 14, :FEINT
    m.at 21, :FUTURESIGHT
    m.at 28, :DAZZLINGGLEAM
    m.at 35, :PSYCHOCUT
    m.at 42, :NIGHTSLASH
    m.at 49, :LEAFBLADE
    m.at 56, :MOONBLAST
    m.at 63, :CLOSECOMBAT
    m.at 70, :KNOCKOFF
    m.at 77, :DESTINYBOND
    m.at 84, :WIDEGUARD
    m.at 84, :QUICKGUARD
    m.at 91, :SPIRITBREAK
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AURASPHERE, :BRICKBREAK, :CALMMIND, :CHARGEBEAM, :CLOSECOMBAT, :COACHING, :CONFUSERAY, :DAZZLINGGLEAM, :DRAINPUNCH, :ELECTRICTERRAIN, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FALSESWIPE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HEX, :HYPERBEAM, :HYPERVOICE, :ICEPUNCH, :ICYWIND, :IMPRISON, :KNOCKOFF, :LIGHTSCREEN, :LIQUIDATION, :LOWKICK, :MAGICALLEAF, :METRONOME, :MISTYTERRAIN, :POISONJAB, :PROTECT, :PSYBEAM, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :REFLECT, :REST, :REVERSAL, :SHADOWBALL, :SHADOWCLAW, :SKILLSWAP, :SLEEPTALK, :STOREDPOWER, :SUBSTITUTE, :SWIFT, :SWORDSDANCE, :TAUNT, :THROATCHOP, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRICK, :TRICKROOM, :VACUUMWAVE, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        1.4
  s.weight        35.0
  s.color         :White
  s.shape         :Bipedal
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "It has some similarities to a mad scientist’s invention covered in a paranormal magazine."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

