#===============================================================================
# Shattered Crowns - Ghost Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :GASTLY do |s|
  s.name          "Gastly"
  s.types         :GHOST, :POISON
  s.base_stats    hp: 30, attack: 35, defense: 30, speed: 80, sp_atk: 100, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :LICK
    m.at 1, :CONFUSERAY
    m.at 4, :HYPNOSIS
    m.at 8, :MEANLOOK
    m.at 12, :PAYBACK
    m.at 16, :SPITE
    m.at 20, :CURSE
    m.at 24, :HEX
    m.at 28, :NIGHTSHADE
    m.at 32, :SUCKERPUNCH
    m.at 36, :DARKPULSE
    m.at 40, :SHADOWBALL
    m.at 44, :DESTINYBOND
    m.at 48, :DREAMEATER
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :CAPTIVATE, :CONFIDE, :CORROSIVEGAS, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FIREPUNCH, :FOULPLAY, :FRUSTRATION, :GIGADRAIN, :HEX, :HIDDENPOWER, :ICEPUNCH, :ICYWIND, :INFESTATION, :KNOCKOFF, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :POISONJAB, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SCARYFACE, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERBOLT, :THUNDERPUNCH, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :UPROAR, :VENOSHOCK, :WILLOWISP, :WONDERROOM, :TERABLAST
  s.egg_moves     :ASTONISH, :CLEARSMOG, :DISABLE, :FIREPUNCH, :GRUDGE, :HAZE, :ICEPUNCH, :PERISHSONG, :REFLECTTYPE, :SCARYFACE, :SMOG, :THUNDERPUNCH, :TOXIC
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        1.3
  s.weight        0.1
  s.color         :Purple
  s.shape         :Head
  s.habitat       :Cave
  s.category      "Gas"
  s.pokedex_entry "When exposed to a strong wind, a Gastly's gaseous body quickly dwindles away. They cluster under the eaves of houses to escape the ravages of wind."
  s.generation    1
  s.evolves_into  :HAUNTER, :Level, 25
end

GameData::Species.define :HAUNTER do |s|
  s.name          "Haunter"
  s.types         :GHOST, :POISON
  s.base_stats    hp: 45, attack: 50, defense: 45, speed: 95, sp_atk: 115, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    90
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 0, :SHADOWPUNCH
    m.at 1, :LICK
    m.at 1, :CONFUSERAY
    m.at 1, :HYPNOSIS
    m.at 1, :MEANLOOK
    m.at 12, :PAYBACK
    m.at 16, :SPITE
    m.at 20, :CURSE
    m.at 24, :HEX
    m.at 30, :NIGHTSHADE
    m.at 36, :SUCKERPUNCH
    m.at 42, :DARKPULSE
    m.at 48, :SHADOWBALL
    m.at 54, :DESTINYBOND
    m.at 60, :DREAMEATER
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :CAPTIVATE, :CONFIDE, :CORROSIVEGAS, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENCORE, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FIREPUNCH, :FLING, :FOULPLAY, :FRUSTRATION, :GIGADRAIN, :HEX, :HIDDENPOWER, :ICEPUNCH, :ICYWIND, :INFESTATION, :KNOCKOFF, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :POISONJAB, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SCARYFACE, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHADOWCLAW, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERBOLT, :THUNDERPUNCH, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :UPROAR, :VENOSHOCK, :WILLOWISP, :WONDERROOM, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        1.6
  s.weight        0.1
  s.color         :Purple
  s.shape         :HeadArms
  s.habitat       :Cave
  s.category      "Gas"
  s.pokedex_entry "If a Haunter beckons you while it is floating in darkness, don't approach it. This Pokémon will try to lick you with its tongue and steal your life away."
  s.generation    1
  s.evolves_into  :GENGAR, :Trade
end

GameData::Species.define :GENGAR do |s|
  s.name          "Gengar"
  s.types         :GHOST, :POISON
  s.base_stats    hp: 60, attack: 65, defense: 60, speed: 110, sp_atk: 130, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      250
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :CURSEDBODY
  s.moves do |m|
    m.at 1, :SHADOWPUNCH
    m.at 1, :PERISHSONG
    m.at 1, :REFLECTTYPE
    m.at 1, :LICK
    m.at 1, :CONFUSERAY
    m.at 1, :HYPNOSIS
    m.at 1, :MEANLOOK
    m.at 12, :PAYBACK
    m.at 16, :SPITE
    m.at 20, :CURSE
    m.at 24, :HEX
    m.at 30, :NIGHTSHADE
    m.at 36, :SUCKERPUNCH
    m.at 42, :DARKPULSE
    m.at 48, :SHADOWBALL
    m.at 54, :DESTINYBOND
    m.at 60, :DREAMEATER
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :CORROSIVEGAS, :COUNTER, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :EMBARGO, :ENCORE, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HEADBUTT, :HEX, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :ICYWIND, :IMPRISON, :INFESTATION, :KNOCKOFF, :LASERFOCUS, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :PHANTOMFORCE, :POISONJAB, :POLTERGEIST, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROLEPLAY, :ROUND, :SCARYFACE, :SECRETPOWER, :SEISMICTOSS, :SELFDESTRUCT, :SHADOWBALL, :SHADOWCLAW, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :UPROAR, :VENOSHOCK, :WILLOWISP, :WONDERROOM, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        1.5
  s.weight        40.5
  s.color         :Purple
  s.shape         :BipedalTail
  s.habitat       :Cave
  s.category      "Shadow"
  s.pokedex_entry "Deep in the night, your shadow cast by a streetlight may suddenly overtake you. It is actually a Gengar running past you, pretending to be your shadow."
  s.generation    1
end

GameData::Species.define :MISDREAVUS do |s|
  s.name          "Misdreavus"
  s.types         :GHOST
  s.base_stats    hp: 60, attack: 60, defense: 60, speed: 85, sp_atk: 85, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      87
  s.catch_rate    45
  s.happiness     35
  s.evs           sp_defense: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :CONFUSION
    m.at 5, :SPITE
    m.at 10, :ASTONISH
    m.at 14, :CONFUSERAY
    m.at 19, :MEANLOOK
    m.at 23, :HEX
    m.at 28, :PSYBEAM
    m.at 32, :PAINSPLIT
    m.at 37, :PAYBACK
    m.at 41, :SHADOWBALL
    m.at 46, :PERISHSONG
    m.at 50, :GRUDGE
    m.at 55, :POWERGEM
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :EMBARGO, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :HEADBUTT, :HEALBELL, :HIDDENPOWER, :HYPERVOICE, :ICYWIND, :MAGICCOAT, :MAGICROOM, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :UPROAR, :WILLOWISP, :WONDERROOM, :TERABLAST
  s.egg_moves     :CURSE, :DESTINYBOND, :IMPRISON, :MEMENTO, :SCREECH, :SHADOWSNEAK, :SPITE, :SUCKERPUNCH, :WONDERROOM
  s.egg_groups    :Amorphous
  s.hatch_steps   6400
  s.height        0.7
  s.weight        1.0
  s.color         :Gray
  s.shape         :Head
  s.habitat       :Cave
  s.category      "Screech"
  s.pokedex_entry "A Misdreavus frightens people with a creepy, sobbing cry. It apparently uses its red spheres to absorb the fear of foes as its nutrition."
  s.generation    2
  s.evolves_into  :MISMAGIUS, :Item, DUSKSTONE
end

GameData::Species.define :SHUPPET do |s|
  s.name          "Shuppet"
  s.types         :GHOST
  s.base_stats    hp: 44, attack: 75, defense: 35, speed: 45, sp_atk: 63, sp_def: 33
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      59
  s.catch_rate    225
  s.happiness     35
  s.evs           attack: 1
  s.abilities     :INSOMNIA, :FRISK
  s.hidden_abilities :CURSEDBODY
  s.moves do |m|
    m.at 1, :KNOCKOFF
    m.at 4, :SCREECH
    m.at 7, :NIGHTSHADE
    m.at 10, :SPITE
    m.at 13, :SHADOWSNEAK
    m.at 16, :WILLOWISP
    m.at 19, :PAINSPLIT
    m.at 22, :HEX
    m.at 26, :CURSE
    m.at 30, :SHADOWBALL
    m.at 34, :ROLEPLAY
    m.at 38, :SUCKERPUNCH
    m.at 42, :KNOCKOFF
    m.at 46, :GRUDGE
    m.at 50, :TRICK
    m.at 54, :PHANTOMFORCE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :ICYWIND, :KNOCKOFF, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROLEPLAY, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :WILLOWISP, :TERABLAST
  s.egg_moves     :ASTONISH, :CONFUSERAY, :DESTINYBOND, :DISABLE, :GUNKSHOT, :IMPRISON, :PHANTOMFORCE, :SHADOWSNEAK
  s.egg_groups    :Amorphous
  s.hatch_steps   6400
  s.height        0.6
  s.weight        2.3
  s.color         :Black
  s.shape         :Head
  s.habitat       :Urban
  s.category      "Puppet"
  s.pokedex_entry "This Pokémon roams about deep in the night seeking such negative emotions as grudges and envy. It retreats to its nest when the sun begins to rise."
  s.generation    3
  s.evolves_into  :BANETTE, :Level, 37
  s.wild_item_uncommon :SPELLTAG
end

GameData::Species.define :BANETTE do |s|
  s.name          "Banette"
  s.types         :GHOST
  s.base_stats    hp: 64, attack: 115, defense: 65, speed: 65, sp_atk: 83, sp_def: 63
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      159
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 2
  s.abilities     :INSOMNIA, :FRISK
  s.hidden_abilities :CURSEDBODY
  s.moves do |m|
    m.at 1, :PHANTOMFORCE
    m.at 1, :KNOCKOFF
    m.at 1, :SCREECH
    m.at 1, :NIGHTSHADE
    m.at 1, :SPITE
    m.at 4, :SCREECH
    m.at 7, :NIGHTSHADE
    m.at 10, :SPITE
    m.at 13, :SHADOWSNEAK
    m.at 16, :WILLOWISP
    m.at 19, :PAINSPLIT
    m.at 22, :HEX
    m.at 26, :CURSE
    m.at 30, :SHADOWBALL
    m.at 34, :ROLEPLAY
    m.at 40, :SUCKERPUNCH
    m.at 46, :KNOCKOFF
    m.at 52, :GRUDGE
    m.at 58, :TRICK
    m.at 64, :PHANTOMFORCE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :FACADE, :FLASH, :FLING, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICYWIND, :INFESTATION, :KNOCKOFF, :MAGICCOAT, :MAGICROOM, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROLEPLAY, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :WILLOWISP, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   6400
  s.height        1.1
  s.weight        12.5
  s.color         :Black
  s.shape         :BipedalTail
  s.habitat       :Urban
  s.category      "Marionette"
  s.pokedex_entry "An abandoned plush doll became this Pokémon. They are said to live in garbage dumps and wander about in search of the children that threw them away."
  s.generation    3
  s.wild_item_uncommon :SPELLTAG
end

GameData::Species.define :DUSKULL do |s|
  s.name          "Duskull"
  s.types         :GHOST
  s.base_stats    hp: 20, attack: 40, defense: 90, speed: 25, sp_atk: 30, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      59
  s.catch_rate    190
  s.happiness     35
  s.evs           sp_defense: 1
  s.abilities     :LEVITATE
  s.hidden_abilities :FRISK
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :LEER
    m.at 4, :DISABLE
    m.at 8, :SHADOWSNEAK
    m.at 12, :CONFUSERAY
    m.at 16, :NIGHTSHADE
    m.at 20, :PAYBACK
    m.at 24, :WILLOWISP
    m.at 28, :MEANLOOK
    m.at 32, :HEX
    m.at 36, :CURSE
    m.at 40, :SHADOWBALL
    m.at 44, :FUTURESIGHT
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BLIZZARD, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :FACADE, :FLASH, :FLING, :FRUSTRATION, :FUTURESIGHT, :GRAVITY, :HEADBUTT, :HELPINGHAND, :HEX, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :IMPRISON, :INFESTATION, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :REVENGE, :ROUND, :SECRETPOWER, :SHADOWBALL, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :TORMENT, :TRICK, :TRICKROOM, :WILLOWISP, :WONDERROOM, :TERABLAST
  s.egg_moves     :DESTINYBOND, :GRUDGE, :HAZE, :IMPRISON, :MEMENTO, :PAINSPLIT
  s.egg_groups    :Amorphous
  s.hatch_steps   6400
  s.height        0.8
  s.weight        15.0
  s.color         :Black
  s.shape         :HeadArms
  s.habitat       :Forest
  s.category      "Requiem"
  s.pokedex_entry "A glare from its single scarlet eye makes even burly grown-ups freeze in utter fear. It is a nocturnal Pokémon that roams about under the cloak of darkness."
  s.generation    3
  s.evolves_into  :DUSCLOPS, :Level, 37
  s.wild_item_uncommon :SPELLTAG
end

GameData::Species.define :DUSCLOPS do |s|
  s.name          "Dusclops"
  s.types         :GHOST
  s.base_stats    hp: 40, attack: 70, defense: 130, speed: 25, sp_atk: 60, sp_def: 130
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      159
  s.catch_rate    90
  s.happiness     35
  s.evs           defense: 1, sp_defense: 1
  s.abilities     :PRESSURE
  s.hidden_abilities :FRISK
  s.moves do |m|
    m.at 0, :SHADOWPUNCH
    m.at 1, :FIREPUNCH
    m.at 1, :ICEPUNCH
    m.at 1, :THUNDERPUNCH
    m.at 1, :GRAVITY
    m.at 1, :BIND
    m.at 1, :ASTONISH
    m.at 1, :LEER
    m.at 1, :DISABLE
    m.at 1, :SHADOWSNEAK
    m.at 12, :CONFUSERAY
    m.at 16, :NIGHTSHADE
    m.at 20, :PAYBACK
    m.at 24, :WILLOWISP
    m.at 28, :MEANLOOK
    m.at 32, :HEX
    m.at 36, :CURSE
    m.at 42, :SHADOWBALL
    m.at 48, :FUTURESIGHT
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BIND, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DYNAMICPUNCH, :EARTHQUAKE, :EMBARGO, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRAVITY, :HEADBUTT, :HELPINGHAND, :HEX, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IMPRISON, :INFESTATION, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :POLTERGEIST, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :REVENGE, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERPUNCH, :TORMENT, :TRICK, :TRICKROOM, :WILLOWISP, :WONDERROOM, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   6400
  s.height        1.6
  s.weight        30.6
  s.color         :Black
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Beckon"
  s.pokedex_entry "It is thought that its body is hollow with only a spectral ball of fire burning inside. However, no one has been able to confirm this theory as fact."
  s.generation    3
  s.evolves_into  :DUSKNOIR, :TradeItem, REAPERCLOTH
  s.wild_item_uncommon :SPELLTAG
end

GameData::Species.define :DRIFLOON do |s|
  s.name          "Drifloon"
  s.types         :GHOST, :FLYING
  s.base_stats    hp: 90, attack: 50, defense: 34, speed: 70, sp_atk: 60, sp_def: 44
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fluctuating
  s.base_exp      70
  s.catch_rate    125
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :AFTERMATH, :UNBURDEN
  s.hidden_abilities :FLAREBOOST
  s.moves do |m|
    m.at 1, :MINIMIZE
    m.at 1, :ASTONISH
    m.at 4, :GUST
    m.at 8, :FOCUSENERGY
    m.at 12, :PAYBACK
    m.at 16, :HEX
    m.at 20, :SHADOWBALL
    m.at 24, :STOCKPILE
    m.at 24, :SWALLOW
    m.at 24, :SPITUP
    m.at 29, :SELFDESTRUCT
    m.at 32, :DESTINYBOND
    m.at 36, :BATONPASS
    m.at 40, :TAILWIND
    m.at 44, :EXPLOSION
  end
  s.tutor_moves   :ACROBATICS, :AIRCUTTER, :ALLYSWITCH, :AMNESIA, :ATTRACT, :BATONPASS, :BIND, :BODYSLAM, :BRUTALSWING, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CUT, :DEFOG, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :EXPLOSION, :FACADE, :FLASH, :FOCUSENERGY, :FRUSTRATION, :GYROBALL, :HEX, :HIDDENPOWER, :ICYWIND, :KNOCKOFF, :MAGICCOAT, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SILVERWIND, :SKILLSWAP, :SLEEPTALK, :SNORE, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICK, :WEATHERBALL, :WILLOWISP, :TERABLAST
  s.egg_moves     :BODYSLAM, :CLEARSMOG, :DEFOG, :DESTINYBOND, :DISABLE, :HAZE, :HYPNOSIS, :MEMENTO, :TAILWIND, :WEATHERBALL
  s.egg_groups    :Amorphous
  s.hatch_steps   7680
  s.height        0.4
  s.weight        1.2
  s.color         :Purple
  s.shape         :HeadArms
  s.category      "Balloon"
  s.pokedex_entry "A Pokémon formed by the spirits of people and Pokémon. It loves damp, humid seasons."
  s.generation    4
  s.evolves_into  :DRIFBLIM, :Level, 28
end

GameData::Species.define :DRIFBLIM do |s|
  s.name          "Drifblim"
  s.types         :GHOST, :FLYING
  s.base_stats    hp: 150, attack: 80, defense: 44, speed: 80, sp_atk: 90, sp_def: 54
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fluctuating
  s.base_exp      174
  s.catch_rate    60
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :AFTERMATH, :UNBURDEN
  s.hidden_abilities :FLAREBOOST
  s.moves do |m|
    m.at 0, :PHANTOMFORCE
    m.at 1, :STRENGTHSAP
    m.at 1, :MINIMIZE
    m.at 1, :ASTONISH
    m.at 1, :GUST
    m.at 1, :FOCUSENERGY
    m.at 12, :PAYBACK
    m.at 16, :HEX
    m.at 20, :SHADOWBALL
    m.at 24, :STOCKPILE
    m.at 24, :SWALLOW
    m.at 24, :SPITUP
    m.at 31, :SELFDESTRUCT
    m.at 36, :DESTINYBOND
    m.at 42, :BATONPASS
    m.at 48, :TAILWIND
    m.at 54, :EXPLOSION
  end
  s.tutor_moves   :ACROBATICS, :AIRCUTTER, :ALLYSWITCH, :AMNESIA, :ATTRACT, :BATONPASS, :BIND, :BODYSLAM, :BRUTALSWING, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CUT, :DEFOG, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :EXPLOSION, :FACADE, :FLASH, :FLY, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEX, :HIDDENPOWER, :HYPERBEAM, :ICYWIND, :IMPRISON, :KNOCKOFF, :MAGICCOAT, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :PHANTOMFORCE, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SILVERWIND, :SKILLSWAP, :SLEEPTALK, :SNORE, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICK, :WEATHERBALL, :WILLOWISP, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   7680
  s.height        1.2
  s.weight        15.0
  s.color         :Purple
  s.shape         :HeadArms
  s.category      "Blimp"
  s.pokedex_entry "It's drowzy in daytime, but flies off in the evening in big groups. No one knows where they go."
  s.generation    4
end

GameData::Species.define :MISMAGIUS do |s|
  s.name          "Mismagius"
  s.types         :GHOST
  s.base_stats    hp: 60, attack: 60, defense: 60, speed: 105, sp_atk: 105, sp_def: 105
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      173
  s.catch_rate    45
  s.happiness     35
  s.evs           sp_attack: 1, sp_defense: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :MYSTICALFIRE
    m.at 1, :POWERGEM
    m.at 1, :PHANTOMFORCE
    m.at 1, :MAGICALLEAF
    m.at 1, :GROWL
    m.at 1, :SPITE
    m.at 1, :ASTONISH
    m.at 1, :CONFUSERAY
    m.at 1, :MEANLOOK
    m.at 1, :HEX
    m.at 1, :PSYBEAM
    m.at 1, :PAINSPLIT
    m.at 1, :PAYBACK
    m.at 1, :SHADOWBALL
    m.at 1, :PERISHSONG
    m.at 1, :GRUDGE
    m.at 1, :CONFUSION
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :EMBARGO, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEALBELL, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICYWIND, :LASERFOCUS, :MAGICCOAT, :MAGICROOM, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :UPROAR, :WILLOWISP, :WONDERROOM, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   6400
  s.height        0.9
  s.weight        4.4
  s.color         :Purple
  s.shape         :Head
  s.category      "Magical"
  s.pokedex_entry "Its cries sound like incantations. Those hearing it are tormented by headaches and hallucinations."
  s.generation    4
end

GameData::Species.define :SPIRITOMB do |s|
  s.name          "Spiritomb"
  s.types         :GHOST, :DARK
  s.base_stats    hp: 50, attack: 92, defense: 108, speed: 35, sp_atk: 92, sp_def: 108
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      170
  s.catch_rate    100
  s.happiness     50
  s.evs           defense: 1, sp_defense: 1
  s.abilities     :PRESSURE
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :NIGHTSHADE
    m.at 1, :CONFUSERAY
    m.at 5, :SHADOWSNEAK
    m.at 10, :SPITE
    m.at 15, :PAYBACK
    m.at 20, :NASTYPLOT
    m.at 25, :HEX
    m.at 30, :MEMENTO
    m.at 35, :SUCKERPUNCH
    m.at 40, :CURSE
    m.at 45, :SHADOWBALL
    m.at 50, :DARKPULSE
    m.at 55, :HYPNOSIS
    m.at 60, :DREAMEATER
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BURNINGJEALOUSY, :CALMMIND, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HEX, :HIDDENPOWER, :HYPERBEAM, :ICYWIND, :IMPRISON, :INFESTATION, :LASHOUT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :PHANTOMFORCE, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :QUASH, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SILVERWIND, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :TORMENT, :TRICK, :UPROAR, :WATERPULSE, :WILLOWISP, :WONDERROOM, :TERABLAST
  s.egg_moves     :DESTINYBOND, :DISABLE, :FOULPLAY, :GRUDGE, :IMPRISON, :PAINSPLIT, :SHADOWSNEAK, :SMOKESCREEN
  s.egg_groups    :Amorphous
  s.hatch_steps   7680
  s.height        1.0
  s.weight        108.0
  s.color         :Purple
  s.shape         :HeadBase
  s.category      "Forbidden"
  s.pokedex_entry "A Pokémon that was formed by 108 spirits. It is bound to a fissure in an odd keystone."
  s.generation    4
end

GameData::Species.define :DUSKNOIR do |s|
  s.name          "Dusknoir"
  s.types         :GHOST
  s.base_stats    hp: 45, attack: 100, defense: 135, speed: 45, sp_atk: 65, sp_def: 135
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      263
  s.catch_rate    45
  s.happiness     35
  s.evs           defense: 1, sp_defense: 2
  s.abilities     :PRESSURE
  s.hidden_abilities :FRISK
  s.moves do |m|
    m.at 1, :SHADOWPUNCH
    m.at 1, :FIREPUNCH
    m.at 1, :ICEPUNCH
    m.at 1, :THUNDERPUNCH
    m.at 1, :GRAVITY
    m.at 1, :BIND
    m.at 1, :ASTONISH
    m.at 1, :LEER
    m.at 1, :DISABLE
    m.at 1, :SHADOWSNEAK
    m.at 12, :CONFUSERAY
    m.at 16, :NIGHTSHADE
    m.at 20, :PAYBACK
    m.at 24, :WILLOWISP
    m.at 28, :MEANLOOK
    m.at 32, :HEX
    m.at 36, :CURSE
    m.at 42, :SHADOWBALL
    m.at 48, :FUTURESIGHT
    m.at 54, :DESTINYBOND
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BIND, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DARKESTLARIAT, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DYNAMICPUNCH, :EARTHQUAKE, :EMBARGO, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRAVITY, :HEADBUTT, :HELPINGHAND, :HEX, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IMPRISON, :INFESTATION, :LASERFOCUS, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :POLTERGEIST, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :REVENGE, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERPUNCH, :TORMENT, :TRICK, :TRICKROOM, :WILLOWISP, :WONDERROOM, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   6400
  s.height        2.2
  s.weight        106.6
  s.color         :Black
  s.shape         :HeadArms
  s.category      "Gripper"
  s.pokedex_entry "The antenna on its head captures radio waves from the world of spirits that command it to take people there."
  s.generation    4
  s.wild_item_uncommon :SPELLTAG
end

GameData::Species.define :GIRATINA do |s|
  s.name          "Giratina"
  s.types         :GHOST, :DRAGON
  s.base_stats    hp: 150, attack: 100, defense: 120, speed: 90, sp_atk: 100, sp_def: 120
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    3
  s.happiness     0
  s.evs           hp: 3
  s.abilities     :PRESSURE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :SHADOWSNEAK
    m.at 1, :DEFOG
    m.at 7, :DRAGONBREATH
    m.at 14, :ANCIENTPOWER
    m.at 21, :HEX
    m.at 28, :SLASH
    m.at 35, :SCARYFACE
    m.at 42, :SHADOWCLAW
    m.at 49, :SHADOWFORCE
    m.at 56, :PAINSPLIT
    m.at 63, :AURASPHERE
    m.at 70, :DRAGONCLAW
    m.at 77, :EARTHPOWER
    m.at 84, :DESTINYBOND
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ANCIENTPOWER, :AQUATAIL, :AURASPHERE, :BODYSLAM, :BREAKINGSWIPE, :BRUTALSWING, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :CUT, :DARKPULSE, :DEFOG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :DREAMEATER, :DUALWINGBEAT, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FLY, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GRAVITY, :HEADBUTT, :HEX, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICYWIND, :IRONHEAD, :IRONTAIL, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :OUTRAGE, :PAINSPLIT, :PAYBACK, :PHANTOMFORCE, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SILVERWIND, :SLEEPTALK, :SNORE, :SPITE, :STEELWING, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TWISTER, :WILLOWISP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        4.5
  s.weight        750.0
  s.color         :Black
  s.shape         :Multiped
  s.category      "Renegade"
  s.pokedex_entry "A Pokémon that is said to live in a world on the reverse side of ours. It appears in an ancient cemetery."
  s.generation    4
  s.flags         :Legendary
end

GameData::Species.define :YAMASK do |s|
  s.name          "Yamask"
  s.types         :GHOST
  s.base_stats    hp: 38, attack: 30, defense: 85, speed: 30, sp_atk: 55, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    190
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :MUMMY
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :PROTECT
    m.at 4, :HAZE
    m.at 8, :NIGHTSHADE
    m.at 12, :DISABLE
    m.at 16, :WILLOWISP
    m.at 20, :CRAFTYSHIELD
    m.at 24, :HEX
    m.at 28, :MEANLOOK
    m.at 32, :GRUDGE
    m.at 36, :CURSE
    m.at 40, :SHADOWBALL
    m.at 44, :DARKPULSE
    m.at 48, :POWERSPLIT
    m.at 48, :GUARDSPLIT
    m.at 52, :DESTINYBOND
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :ATTRACT, :BLOCK, :CALMMIND, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FLASH, :FRUSTRATION, :HEX, :HIDDENPOWER, :IMPRISON, :INFESTATION, :IRONDEFENSE, :KNOCKOFF, :MAGICCOAT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SWAGGER, :TELEKINESIS, :THIEF, :TOXIC, :TOXICSPIKES, :TRICK, :TRICKROOM, :WILLOWISP, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :MEMENTO
  s.egg_groups    :Mineral, :Amorphous
  s.hatch_steps   6400
  s.height        0.5
  s.weight        1.5
  s.color         :Black
  s.shape         :HeadArms
  s.category      "Spirit"
  s.pokedex_entry "These Pokémon arose from the spirits of people interred in graves in past ages. Each retains memories of its former life."
  s.generation    5
  s.evolves_into  :COFAGRIGUS, :Level, 34
  s.evolves_into  :RUNERIGUS, :None
  s.wild_item_uncommon :SPELLTAG
end

GameData::Species.define :COFAGRIGUS do |s|
  s.name          "Cofagrigus"
  s.types         :GHOST
  s.base_stats    hp: 58, attack: 50, defense: 145, speed: 30, sp_atk: 95, sp_def: 105
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      169
  s.catch_rate    90
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :MUMMY
  s.moves do |m|
    m.at 0, :SHADOWCLAW
    m.at 1, :SCARYFACE
    m.at 1, :ASTONISH
    m.at 1, :PROTECT
    m.at 1, :HAZE
    m.at 1, :NIGHTSHADE
    m.at 12, :DISABLE
    m.at 16, :WILLOWISP
    m.at 20, :CRAFTYSHIELD
    m.at 24, :HEX
    m.at 28, :MEANLOOK
    m.at 32, :GRUDGE
    m.at 38, :CURSE
    m.at 44, :SHADOWBALL
    m.at 50, :DARKPULSE
    m.at 56, :POWERSPLIT
    m.at 56, :GUARDSPLIT
    m.at 62, :DESTINYBOND
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :ATTRACT, :BLOCK, :BODYPRESS, :CALMMIND, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FLASH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUARDSWAP, :HEX, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :INFESTATION, :IRONDEFENSE, :KNOCKOFF, :MAGICCOAT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PHANTOMFORCE, :POLTERGEIST, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :REVENGE, :ROLEPLAY, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SWAGGER, :TELEKINESIS, :THIEF, :TOXIC, :TOXICSPIKES, :TRICK, :TRICKROOM, :WILLOWISP, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral, :Amorphous
  s.hatch_steps   6400
  s.height        1.7
  s.weight        76.5
  s.color         :Yellow
  s.shape         :HeadBase
  s.category      "Coffin"
  s.pokedex_entry "They pretend to be elaborate coffins to teach lessons to grave robbers. Their bodies are covered in pure gold."
  s.generation    5
  s.wild_item_uncommon :SPELLTAG
end

GameData::Species.define :LITWICK do |s|
  s.name          "Litwick"
  s.types         :GHOST, :FIRE
  s.base_stats    hp: 50, attack: 30, defense: 55, speed: 20, sp_atk: 65, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      55
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :FLASHFIRE, :FLAMEBODY
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :SMOG
    m.at 4, :EMBER
    m.at 8, :MINIMIZE
    m.at 12, :CONFUSERAY
    m.at 16, :HEX
    m.at 20, :WILLOWISP
    m.at 24, :FIRESPIN
    m.at 28, :NIGHTSHADE
    m.at 32, :CURSE
    m.at 36, :SHADOWBALL
    m.at 40, :INFERNO
    m.at 44, :IMPRISON
    m.at 48, :PAINSPLIT
    m.at 52, :OVERHEAT
    m.at 56, :MEMENTO
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BURNINGJEALOUSY, :CALMMIND, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :ENERGYBALL, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLASH, :FRUSTRATION, :HEATWAVE, :HEX, :HIDDENPOWER, :IMPRISON, :INCINERATE, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OVERHEAT, :PAINSPLIT, :PAYBACK, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :TOXIC, :TRICK, :TRICKROOM, :WILLOWISP, :TERABLAST
  s.egg_moves     :ACIDARMOR, :CLEARSMOG, :HAZE, :POWERSPLIT
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.3
  s.weight        3.1
  s.color         :White
  s.shape         :HeadBase
  s.category      "Candle"
  s.pokedex_entry "While shining a light and pretending to be a guide, it leeches off the life force of any who follow it."
  s.generation    5
  s.evolves_into  :LAMPENT, :Level, 41
end

GameData::Species.define :LAMPENT do |s|
  s.name          "Lampent"
  s.types         :GHOST, :FIRE
  s.base_stats    hp: 60, attack: 40, defense: 60, speed: 55, sp_atk: 95, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      130
  s.catch_rate    90
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :FLASHFIRE, :FLAMEBODY
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :SMOG
    m.at 1, :EMBER
    m.at 1, :MINIMIZE
    m.at 12, :CONFUSERAY
    m.at 16, :HEX
    m.at 20, :WILLOWISP
    m.at 24, :FIRESPIN
    m.at 28, :NIGHTSHADE
    m.at 32, :CURSE
    m.at 36, :SHADOWBALL
    m.at 40, :INFERNO
    m.at 46, :IMPRISON
    m.at 52, :PAINSPLIT
    m.at 58, :OVERHEAT
    m.at 64, :MEMENTO
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BURNINGJEALOUSY, :CALMMIND, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :ENERGYBALL, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLASH, :FRUSTRATION, :HEATWAVE, :HEX, :HIDDENPOWER, :IMPRISON, :INCINERATE, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OVERHEAT, :PAINSPLIT, :PAYBACK, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :TOXIC, :TRICK, :TRICKROOM, :WILLOWISP, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.6
  s.weight        13.0
  s.color         :Black
  s.shape         :HeadArms
  s.category      "Lamp"
  s.pokedex_entry "It arrives near the moment of death and steals spirit from the body."
  s.generation    5
  s.evolves_into  :CHANDELURE, :Item, DUSKSTONE
end

GameData::Species.define :CHANDELURE do |s|
  s.name          "Chandelure"
  s.types         :GHOST, :FIRE
  s.base_stats    hp: 60, attack: 55, defense: 90, speed: 80, sp_atk: 145, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      260
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :FLASHFIRE, :FLAMEBODY
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :CONFUSERAY
    m.at 1, :HEX
    m.at 1, :WILLOWISP
    m.at 1, :FIRESPIN
    m.at 1, :NIGHTSHADE
    m.at 1, :CURSE
    m.at 1, :SHADOWBALL
    m.at 1, :INFERNO
    m.at 1, :IMPRISON
    m.at 1, :PAINSPLIT
    m.at 1, :OVERHEAT
    m.at 1, :MEMENTO
    m.at 1, :ASTONISH
    m.at 1, :SMOG
    m.at 1, :EMBER
    m.at 1, :MINIMIZE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BURNINGJEALOUSY, :CALMMIND, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :ENERGYBALL, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLASH, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HEX, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :INCINERATE, :LASERFOCUS, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OVERHEAT, :PAINSPLIT, :PAYBACK, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :TOXIC, :TRICK, :TRICKROOM, :WILLOWISP, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        1.0
  s.weight        34.3
  s.color         :Black
  s.shape         :HeadArms
  s.category      "Luring"
  s.pokedex_entry "Being consumed in Chandelure's flame burns up the spirit, leaving the body behind."
  s.generation    5
end

GameData::Species.define :PHANTUMP do |s|
  s.name          "Phantump"
  s.types         :GHOST, :GRASS
  s.base_stats    hp: 43, attack: 70, defense: 48, speed: 38, sp_atk: 50, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      62
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :NATURALCURE, :FRISK
  s.hidden_abilities :HARVEST
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :TACKLE
    m.at 4, :BRANCHPOKE
    m.at 8, :LEECHSEED
    m.at 12, :CONFUSERAY
    m.at 16, :WILLOWISP
    m.at 20, :HEX
    m.at 24, :GROWTH
    m.at 28, :HORNLEECH
    m.at 32, :CURSE
    m.at 36, :PHANTOMFORCE
    m.at 40, :INGRAIN
    m.at 44, :WOODHAMMER
    m.at 48, :DESTINYBOND
    m.at 52, :FORESTSCURSE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :DREAMEATER, :ENDURE, :ENERGYBALL, :FACADE, :FOULPLAY, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :HEX, :HIDDENPOWER, :IMPRISON, :MAGICALLEAF, :MAGICCOAT, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAINSPLIT, :PHANTOMFORCE, :POISONJAB, :POLTERGEIST, :PROTECT, :PSYCHIC, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THIEF, :TOXIC, :TRICK, :TRICKROOM, :VENOMDRENCH, :WILLOWISP, :WORRYSEED, :TERABLAST
  s.egg_moves     :DISABLE, :GRUDGE, :SUCKERPUNCH
  s.egg_groups    :Grass, :Amorphous
  s.hatch_steps   5120
  s.height        0.4
  s.weight        7.0
  s.color         :Brown
  s.shape         :HeadArms
  s.category      "Stump"
  s.pokedex_entry "These Pokémon are stumps possessed by the spirits of children who died in the forest. Their cries sound like eerie screams."
  s.generation    6
  s.evolves_into  :TREVENANT, :Trade
end

GameData::Species.define :TREVENANT do |s|
  s.name          "Trevenant"
  s.types         :GHOST, :GRASS
  s.base_stats    hp: 85, attack: 110, defense: 76, speed: 56, sp_atk: 65, sp_def: 82
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      166
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :NATURALCURE, :FRISK
  s.hidden_abilities :HARVEST
  s.moves do |m|
    m.at 0, :SHADOWCLAW
    m.at 1, :ASTONISH
    m.at 1, :TACKLE
    m.at 1, :BRANCHPOKE
    m.at 1, :LEECHSEED
    m.at 12, :CONFUSERAY
    m.at 16, :WILLOWISP
    m.at 20, :HEX
    m.at 24, :GROWTH
    m.at 28, :HORNLEECH
    m.at 32, :CURSE
    m.at 36, :PHANTOMFORCE
    m.at 40, :INGRAIN
    m.at 44, :WOODHAMMER
    m.at 48, :DESTINYBOND
    m.at 52, :FORESTSCURSE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BLOCK, :BRUTALSWING, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FOCUSBLAST, :FOULPLAY, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :HEX, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IMPRISON, :LEAFSTORM, :MAGICALLEAF, :MAGICCOAT, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAINSPLIT, :PHANTOMFORCE, :POISONJAB, :POLTERGEIST, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THIEF, :TOXIC, :TRICK, :TRICKROOM, :VENOMDRENCH, :WILLOWISP, :WORRYSEED, :XSCISSOR, :TERABLAST
  s.egg_groups    :Grass, :Amorphous
  s.hatch_steps   5120
  s.height        1.5
  s.weight        71.0
  s.color         :Brown
  s.shape         :Multiped
  s.category      "Elder Tree"
  s.pokedex_entry "Through its roots, it exerts control over other trees. A deadly curse falls upon anyone cutting down trees in forests where Trevenant dwell."
  s.generation    6
end

GameData::Species.define :PUMPKABOO do |s|
  s.name          "Pumpkaboo"
  s.types         :GHOST, :GRASS
  s.base_stats    hp: 44, attack: 66, defense: 70, speed: 56, sp_atk: 44, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      67
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :PICKUP, :FRISK
  s.moves do |m|
    m.at 1, :TRICKORTREAT
    m.at 1, :ASTONISH
    m.at 4, :SHADOWSNEAK
    m.at 8, :CONFUSERAY
    m.at 12, :TRICKORTREAT
    m.at 12, :RAZORLEAF
    m.at 16, :LEECHSEED
    m.at 20, :BULLETSEED
    m.at 24, :TRICKORTREAT
    m.at 24, :SCARYFACE
    m.at 28, :WORRYSEED
    m.at 32, :SEEDBOMB
    m.at 36, :TRICKORTREAT
    m.at 36, :SHADOWBALL
    m.at 40, :TRICK
    m.at 44, :PAINSPLIT
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BULLETSEED, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FLASH, :FOULPLAY, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GYROBALL, :HEX, :HIDDENPOWER, :IMPRISON, :INCINERATE, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :NATUREPOWER, :PAINSPLIT, :POLTERGEIST, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROLEPLAY, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TELEKINESIS, :THIEF, :TOXIC, :TRICK, :TRICKROOM, :WILLOWISP, :WORRYSEED, :TERABLAST
  s.egg_moves     :CURSE, :DESTINYBOND, :DISABLE
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.3
  s.weight        3.5
  s.color         :Brown
  s.shape         :Head
  s.category      "Pumpkin"
  s.pokedex_entry "When taking spirits to the afterlife, small Pumpkaboo prefer the spirits of children to those of adults."
  s.generation    6
  s.evolves_into  :GOURGEIST, :Trade
  s.flags         :InheritFormFromMother
end

GameData::Species.define :GOURGEIST do |s|
  s.name          "Gourgeist"
  s.types         :GHOST, :GRASS
  s.base_stats    hp: 55, attack: 85, defense: 122, speed: 99, sp_atk: 58, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    60
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :PICKUP, :FRISK
  s.moves do |m|
    m.at 1, :EXPLOSION
    m.at 1, :MOONBLAST
    m.at 1, :TRICKORTREAT
    m.at 1, :ASTONISH
    m.at 1, :SHADOWSNEAK
    m.at 1, :CONFUSERAY
    m.at 12, :TRICKORTREAT
    m.at 12, :RAZORLEAF
    m.at 16, :LEECHSEED
    m.at 20, :BULLETSEED
    m.at 24, :TRICKORTREAT
    m.at 24, :SCARYFACE
    m.at 28, :WORRYSEED
    m.at 32, :SEEDBOMB
    m.at 36, :TRICKORTREAT
    m.at 36, :SHADOWBALL
    m.at 40, :TRICK
    m.at 44, :PAINSPLIT
    m.at 48, :PHANTOMFORCE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BRUTALSWING, :BULLETSEED, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FLASH, :FOCUSBLAST, :FOULPLAY, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GYROBALL, :HEX, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :INCINERATE, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MYSTICALFIRE, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :PAINSPLIT, :PHANTOMFORCE, :POLTERGEIST, :POWERWHIP, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROLEPLAY, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TELEKINESIS, :THIEF, :TOXIC, :TRICK, :TRICKROOM, :WILLOWISP, :WORRYSEED, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.7
  s.weight        9.5
  s.color         :Brown
  s.shape         :HeadBase
  s.category      "Pumpkin"
  s.pokedex_entry "Small Gourgeist pretend to be children to fool adults. Anyone who falls for the act gets carried away to the hereafter."
  s.generation    6
  s.flags         :InheritFormFromMother
end

GameData::Species.define :SANDYGAST do |s|
  s.name          "Sandygast"
  s.types         :GHOST, :GROUND
  s.base_stats    hp: 55, attack: 55, defense: 80, speed: 15, sp_atk: 70, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      64
  s.catch_rate    140
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :WATERCOMPACTION
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :HARDEN
    m.at 5, :ASTONISH
    m.at 10, :SANDTOMB
    m.at 15, :MEGADRAIN
    m.at 20, :SANDATTACK
    m.at 25, :BULLDOZE
    m.at 30, :HYPNOSIS
    m.at 35, :GIGADRAIN
    m.at 40, :IRONDEFENSE
    m.at 45, :SHADOWBALL
    m.at 50, :EARTHPOWER
    m.at 55, :SHOREUP
    m.at 60, :SANDSTORM
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :ATTRACT, :BLOCK, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FRUSTRATION, :GIGADRAIN, :GRAVITY, :HIDDENPOWER, :INFESTATION, :IRONDEFENSE, :MIMIC, :MUDSHOT, :NATURALGIFT, :PAINSPLIT, :POLTERGEIST, :PROTECT, :PSYCHIC, :RECYCLE, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SPITE, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :TOXIC, :TRICK, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :CURSE, :DESTINYBOND, :SPITUP, :STOCKPILE, :SWALLOW
  s.egg_groups    :Amorphous
  s.hatch_steps   3840
  s.height        0.5
  s.weight        70.0
  s.color         :Brown
  s.shape         :Serpentine
  s.category      "Sand Heap"
  s.pokedex_entry "It likes the shovel on its head, so Sandygast will get serious and fight any children who come to take it back."
  s.generation    7
  s.evolves_into  :PALOSSAND, :Level, 42
  s.wild_item_uncommon :SPELLTAG
end

GameData::Species.define :PALOSSAND do |s|
  s.name          "Palossand"
  s.types         :GHOST, :GROUND
  s.base_stats    hp: 85, attack: 75, defense: 110, speed: 35, sp_atk: 100, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    60
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :WATERCOMPACTION
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :HARDEN
    m.at 1, :ASTONISH
    m.at 1, :SANDTOMB
    m.at 15, :MEGADRAIN
    m.at 20, :SANDATTACK
    m.at 25, :BULLDOZE
    m.at 30, :HYPNOSIS
    m.at 35, :GIGADRAIN
    m.at 40, :IRONDEFENSE
    m.at 47, :SHADOWBALL
    m.at 54, :EARTHPOWER
    m.at 61, :SHOREUP
    m.at 68, :SANDSTORM
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :ATTRACT, :BLOCK, :BRINE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :EMBARGO, :ENDURE, :ENERGYBALL, :FACADE, :FLING, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRAVITY, :HIDDENPOWER, :INFESTATION, :IRONDEFENSE, :MIMIC, :MUDSHOT, :NATURALGIFT, :PAINSPLIT, :POLTERGEIST, :PROTECT, :PSYCHIC, :QUASH, :RECYCLE, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SPITE, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :TERRAINPULSE, :TOXIC, :TRICK, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   3840
  s.height        1.3
  s.weight        250.0
  s.color         :Brown
  s.shape         :Serpentine
  s.category      "Sand Castle"
  s.pokedex_entry "Buried beneath the castle are masses of dried-up bones from those whose vitality it has drained."
  s.generation    7
  s.wild_item_uncommon :SPELLTAG
end

GameData::Species.define :MIMIKYU do |s|
  s.name          "Mimikyu"
  s.types         :GHOST, :FAIRY
  s.base_stats    hp: 55, attack: 90, defense: 80, speed: 96, sp_atk: 50, sp_def: 105
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      167
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :DISGUISE
  s.moves do |m|
    m.at 1, :WOODHAMMER
    m.at 1, :SPLASH
    m.at 1, :ASTONISH
    m.at 1, :SCRATCH
    m.at 1, :COPYCAT
    m.at 6, :SHADOWSNEAK
    m.at 12, :DOUBLETEAM
    m.at 18, :BABYDOLLEYES
    m.at 24, :MIMIC
    m.at 30, :HONECLAWS
    m.at 36, :SLASH
    m.at 42, :SHADOWCLAW
    m.at 48, :CHARM
    m.at 54, :PLAYROUGH
    m.at 60, :PAINSPLIT
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BEATUP, :BULKUP, :BURNINGJEALOUSY, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :EMBARGO, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HEX, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :LASTRESORT, :LEECHLIFE, :LIGHTSCREEN, :MAGICROOM, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PHANTOMFORCE, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TAUNT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TRICK, :TRICKROOM, :WILLOWISP, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_moves     :CURSE, :DESTINYBOND, :GRUDGE
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.2
  s.weight        0.7
  s.color         :Yellow
  s.shape         :Serpentine
  s.category      "Disguise"
  s.pokedex_entry "A lonely Pokémon, it conceals its terrifying appearance beneath an old rag so it can get closer to people and other Pokémon."
  s.generation    7
  s.wild_item_uncommon :CHESTOBERRY
end

GameData::Species.define :DHELMISE do |s|
  s.name          "Dhelmise"
  s.types         :GHOST, :GRASS
  s.base_stats    hp: 70, attack: 131, defense: 100, speed: 40, sp_atk: 86, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      181
  s.catch_rate    25
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :STEELWORKER
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :RAPIDSPIN
    m.at 4, :ASTONISH
    m.at 8, :WRAP
    m.at 12, :MEGADRAIN
    m.at 16, :GROWTH
    m.at 20, :GYROBALL
    m.at 24, :SWITCHEROO
    m.at 28, :GIGADRAIN
    m.at 32, :WHIRLPOOL
    m.at 36, :HEAVYSLAM
    m.at 40, :SLAM
    m.at 44, :SHADOWBALL
    m.at 48, :METALSOUND
    m.at 52, :ANCHORSHOT
    m.at 56, :ENERGYBALL
    m.at 60, :PHANTOMFORCE
    m.at 64, :POWERWHIP
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :ASSURANCE, :BLOCK, :BODYPRESS, :BRICKBREAK, :BRINE, :BRUTALSWING, :BULLDOZE, :CONFIDE, :DOUBLETEAM, :EARTHQUAKE, :EMBARGO, :ENDURE, :ENERGYBALL, :FACADE, :FLASHCANNON, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GYROBALL, :HEAVYSLAM, :HELPINGHAND, :HEX, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :KNOCKOFF, :LIQUIDATION, :MIMIC, :MUDDYWATER, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PHANTOMFORCE, :POLTERGEIST, :POWERWHIP, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROLEPLAY, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SLUDGEWAVE, :SNORE, :SOLARBEAM, :SOLARBLADE, :SPITE, :STEELROLLER, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TELEKINESIS, :THIEF, :TOXIC, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   6400
  s.height        3.9
  s.weight        210.0
  s.color         :Green
  s.shape         :HeadBase
  s.category      "Sea Creeper"
  s.pokedex_entry "The soul of seaweed adrift in the waves became reborn as this Pokémon. It maintains itself with new infusions of seabed detritus and seaweed."
  s.generation    7
end

GameData::Species.define :SINISTEA do |s|
  s.name          "Sinistea"
  s.types         :GHOST
  s.base_stats    hp: 40, attack: 45, defense: 45, speed: 50, sp_atk: 74, sp_def: 54
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      62
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :WEAKARMOR
  s.hidden_abilities :CURSEDBODY
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :WITHDRAW
    m.at 6, :AROMATICMIST
    m.at 12, :MEGADRAIN
    m.at 18, :PROTECT
    m.at 24, :SUCKERPUNCH
    m.at 30, :AROMATHERAPY
    m.at 36, :GIGADRAIN
    m.at 42, :NASTYPLOT
    m.at 48, :SHADOWBALL
    m.at 54, :MEMENTO
    m.at 60, :SHELLSMASH
  end
  s.tutor_moves   :ALLYSWITCH, :BATONPASS, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :ENDURE, :FACADE, :FOULPLAY, :FRUSTRATION, :GIGADRAIN, :HEX, :HIDDENPOWER, :IMPRISON, :METRONOME, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PHANTOMFORCE, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYSHOCK, :REST, :RETURN, :ROUND, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TOXIC, :TRICK, :WILLOWISP, :WONDERROOM, :TERABLAST
  s.egg_groups    :Mineral, :Amorphous
  s.hatch_steps   5120
  s.height        0.1
  s.weight        0.2
  s.color         :Purple
  s.shape         :Head
  s.category      "Black Tea"
  s.pokedex_entry "The teacup in which this Pokémon makes its home is a famous piece of antique tableware. Many forgeries are in circulation."
  s.generation    8
  s.evolves_into  :POLTEAGEIST, :Item, CRACKEDPOT
end

GameData::Species.define :POLTEAGEIST do |s|
  s.name          "Polteageist"
  s.types         :GHOST
  s.base_stats    hp: 60, attack: 65, defense: 65, speed: 70, sp_atk: 134, sp_def: 114
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      178
  s.catch_rate    60
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :WEAKARMOR
  s.hidden_abilities :CURSEDBODY
  s.moves do |m|
    m.at 0, :TEATIME
    m.at 1, :STRENGTHSAP
    m.at 1, :ASTONISH
    m.at 1, :WITHDRAW
    m.at 1, :AROMATICMIST
    m.at 1, :MEGADRAIN
    m.at 18, :PROTECT
    m.at 24, :SUCKERPUNCH
    m.at 30, :AROMATHERAPY
    m.at 36, :GIGADRAIN
    m.at 42, :NASTYPLOT
    m.at 48, :SHADOWBALL
    m.at 54, :MEMENTO
    m.at 60, :SHELLSMASH
    m.at 66, :CURSE
  end
  s.tutor_moves   :ALLYSWITCH, :BATONPASS, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :ENDURE, :FACADE, :FOULPLAY, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HEX, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :LIGHTSCREEN, :METRONOME, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PHANTOMFORCE, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TOXIC, :TRICK, :WILLOWISP, :WONDERROOM, :TERABLAST
  s.egg_groups    :Mineral, :Amorphous
  s.hatch_steps   5120
  s.height        0.2
  s.weight        0.4
  s.color         :Purple
  s.shape         :Head
  s.category      "Black Tea"
  s.pokedex_entry "This species lives in antique teapots. Most pots are forgeries, but on rare occasions, an authentic work is found."
  s.generation    8
end

GameData::Species.define :CURSOLA do |s|
  s.name          "Cursola"
  s.types         :GHOST
  s.base_stats    hp: 60, attack: 95, defense: 50, speed: 30, sp_atk: 145, sp_def: 130
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      179
  s.catch_rate    30
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :WEAKARMOR
  s.hidden_abilities :PERISHBODY
  s.moves do |m|
    m.at 1, :PERISHSONG
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :ASTONISH
    m.at 1, :DISABLE
    m.at 15, :SPITE
    m.at 20, :ANCIENTPOWER
    m.at 25, :HEX
    m.at 30, :CURSE
    m.at 35, :STRENGTHSAP
    m.at 40, :POWERGEM
    m.at 45, :NIGHTSHADE
    m.at 50, :GRUDGE
    m.at 55, :MIRRORCOAT
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRINE, :BULLDOZE, :BURNINGJEALOUSY, :CALMMIND, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HAIL, :HEX, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :LEECHLIFE, :LIGHTSCREEN, :LIQUIDATION, :METEORBEAM, :MIMIC, :NATURALGIFT, :PINMISSILE, :POLTERGEIST, :POWERGEM, :PROTECT, :PSYCHIC, :RAINDANCE, :REFLECT, :REST, :RETURN, :REVENGE, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALD, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :THROATCHOP, :WHIRLPOOL, :WILLOWISP, :TERABLAST
  s.egg_moves     :CONFUSERAY, :DESTINYBOND, :HAZE, :HEADSMASH, :NATUREPOWER, :WATERPULSE
  s.egg_groups    :Water1, :Water3
  s.hatch_steps   5120
  s.height        1.0
  s.weight        0.4
  s.color         :White
  s.shape         :HeadArms
  s.category      "Coral"
  s.pokedex_entry "Its shell is overflowing with its heightened otherworldly energy. The ectoplasm serves as protection for this Pokémon's core spirit."
  s.generation    8
  s.flags         :DefaultForm_1, :InheritFormWithEverStone
end

GameData::Species.define :SPECTRIER do |s|
  s.name          "Spectrier"
  s.types         :GHOST
  s.base_stats    hp: 100, attack: 65, defense: 60, speed: 130, sp_atk: 145, sp_def: 80
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           sp_attack: 3
  s.abilities     :GRIMNEIGH
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 6, :DOUBLEKICK
    m.at 12, :HEX
    m.at 18, :STOMP
    m.at 24, :CONFUSERAY
    m.at 30, :HAZE
    m.at 36, :SHADOWBALL
    m.at 42, :TAKEDOWN
    m.at 48, :AGILITY
    m.at 54, :THRASH
    m.at 60, :DISABLE
    m.at 66, :DOUBLEEDGE
    m.at 72, :NASTYPLOT
  end
  s.tutor_moves   :AGILITY, :ASSURANCE, :BODYSLAM, :BULLDOZE, :CALMMIND, :CONFIDE, :CRUNCH, :DARKPULSE, :DOUBLETEAM, :ENDURE, :FACADE, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HEX, :HIDDENPOWER, :HYPERBEAM, :LASHOUT, :MIMIC, :MUDSHOT, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PHANTOMFORCE, :PROTECT, :PSYCHOCUT, :REST, :RETURN, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNARL, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :TOXIC, :UPROAR, :WILLOWISP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        2.0
  s.weight        44.5
  s.color         :Black
  s.shape         :Quadruped
  s.category      "Swift Horse"
  s.pokedex_entry "As it dashes through the night, Spectrier absorbs the life-force of sleeping creatures. It craves silence and solitude."
  s.generation    8
  s.flags         :Legendary
end

