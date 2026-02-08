#===============================================================================
# Shattered Crowns - Dark Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :UMBREON do |s|
  s.name          "Umbreon"
  s.types         :DARK
  s.base_stats    hp: 95, attack: 65, defense: 110, speed: 65, sp_atk: 60, sp_def: 130
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      184
  s.catch_rate    45
  s.happiness     35
  s.evs           sp_defense: 2
  s.abilities     :SYNCHRONIZE
  s.hidden_abilities :INNERFOCUS
  s.moves do |m|
    m.at 0, :SNARL
    m.at 1, :FOULPLAY
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
    m.at 20, :CONFUSERAY
    m.at 25, :ASSURANCE
    m.at 30, :MOONLIGHT
    m.at 35, :GUARDSWAP
    m.at 40, :DARKPULSE
    m.at 45, :SCREECH
    m.at 50, :MEANLOOK
    m.at 55, :LASTRESORT
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BATONPASS, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CRUNCH, :CUT, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :FACADE, :FAKETEARS, :FLASH, :FOCUSENERGY, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GUARDSWAP, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IRONTAIL, :LASERFOCUS, :LASHOUT, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :PAYDAY, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :WEATHERBALL, :WONDERROOM, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   8960
  s.height        1.0
  s.weight        27.0
  s.color         :Black
  s.shape         :Quadruped
  s.habitat       :Urban
  s.category      "Moonlight"
  s.pokedex_entry "Umbreon evolved from exposure to the moon's energy pulses. It lurks in darkness and waits for its foes to move. The rings on its body glow when it leaps to attack."
  s.generation    2
end

GameData::Species.define :MURKROW do |s|
  s.name          "Murkrow"
  s.types         :DARK, :FLYING
  s.base_stats    hp: 60, attack: 85, defense: 42, speed: 91, sp_atk: 85, sp_def: 42
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      81
  s.catch_rate    30
  s.happiness     35
  s.evs           speed: 1
  s.abilities     :INSOMNIA, :SUPERLUCK
  s.hidden_abilities :PRANKSTER
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :ASTONISH
    m.at 5, :GUST
    m.at 11, :HAZE
    m.at 15, :WINGATTACK
    m.at 21, :NIGHTSHADE
    m.at 25, :ASSURANCE
    m.at 31, :TAUNT
    m.at 35, :AIRCUTTER
    m.at 41, :MEANLOOK
    m.at 45, :FOULPLAY
    m.at 50, :TAILWIND
    m.at 55, :SUCKERPUNCH
    m.at 61, :TORMENT
    m.at 65, :QUASH
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CALMMIND, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :FACADE, :FLY, :FOULPLAY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :ICYWIND, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PAYBACK, :PLUCK, :PROTECT, :PSYCHIC, :PSYCHUP, :QUASH, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SHADOWBALL, :SKYATTACK, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :STEELWING, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :THUNDERWAVE, :TORMENT, :TWISTER, :UPROAR, :TERABLAST
  s.egg_moves     :ASSURANCE, :BRAVEBIRD, :CONFUSERAY, :DRILLPECK, :FEATHERDANCE, :FLATTER, :PERISHSONG, :PSYCHOSHIFT, :SCREECH, :SKYATTACK, :WHIRLWIND, :WINGATTACK
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        0.5
  s.weight        2.1
  s.color         :Black
  s.shape         :Winged
  s.habitat       :Forest
  s.category      "Darkness"
  s.pokedex_entry "Murkrow were feared as the alleged bearers of ill fortune. It shows strong interest in anything that sparkles. It will even try to steal rings from women."
  s.generation    2
  s.evolves_into  :HONCHKROW, :Item, DUSKSTONE
  s.flags         :HasGenderedSprites
end

GameData::Species.define :SNEASEL do |s|
  s.name          "Sneasel"
  s.types         :DARK, :ICE
  s.base_stats    hp: 55, attack: 95, defense: 55, speed: 115, sp_atk: 35, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      86
  s.catch_rate    60
  s.happiness     35
  s.evs           speed: 1
  s.abilities     :INNERFOCUS, :KEENEYE
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 6, :TAUNT
    m.at 12, :QUICKATTACK
    m.at 18, :METALCLAW
    m.at 24, :ICYWIND
    m.at 30, :FURYSWIPES
    m.at 36, :HONECLAWS
    m.at 42, :BEATUP
    m.at 48, :AGILITY
    m.at 54, :SCREECH
    m.at 60, :SLASH
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ATTRACT, :AVALANCHE, :BEATUP, :BLIZZARD, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DYNAMICPUNCH, :EMBARGO, :ENDURE, :FACADE, :FAKETEARS, :FALSESWIPE, :FLING, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHOCUT, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :TRIPLEAXEL, :WHIRLPOOL, :XSCISSOR, :TERABLAST
  s.egg_moves     :BITE, :COUNTER, :CRUSHCLAW, :DOUBLEHIT, :FAKEOUT, :FEINT, :ICEPUNCH, :ICESHARD, :ICICLECRASH, :SPITE, :THROATCHOP
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.9
  s.weight        28.0
  s.color         :Black
  s.shape         :BipedalTail
  s.habitat       :Forest
  s.category      "Sharp Claw"
  s.pokedex_entry "A Sneasel scales trees by punching its hooked claws into the bark. It seeks out unguarded nests and steals eggs for food while the parents are away."
  s.generation    2
  s.evolves_into  :WEAVILE, :NightHoldItem, RAZORCLAW
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :QUICKCLAW
end

GameData::Species.define :HOUNDOUR do |s|
  s.name          "Houndour"
  s.types         :DARK, :FIRE
  s.base_stats    hp: 45, attack: 60, defense: 30, speed: 65, sp_atk: 80, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      66
  s.catch_rate    120
  s.happiness     35
  s.evs           sp_attack: 1
  s.abilities     :EARLYBIRD, :FLASHFIRE
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 1, :LEER
    m.at 1, :EMBER
    m.at 4, :HOWL
    m.at 8, :SMOG
    m.at 13, :ROAR
    m.at 16, :BITE
    m.at 20, :TAUNT
    m.at 25, :BEATUP
    m.at 28, :FIREFANG
    m.at 32, :PAYBACK
    m.at 37, :FLAMECHARGE
    m.at 40, :FOULPLAY
    m.at 44, :FLAMETHROWER
    m.at 49, :CRUNCH
    m.at 52, :NASTYPLOT
    m.at 56, :INFERNO
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :COUNTER, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FOULPLAY, :FRUSTRATION, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HYPERVOICE, :INCINERATE, :IRONTAIL, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :OVERHEAT, :PAYBACK, :PROTECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROLEPLAY, :ROUND, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNATCH, :SNORE, :SOLARBEAM, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :TORMENT, :UPROAR, :WILLOWISP, :TERABLAST
  s.egg_moves     :BEATUP, :COUNTER, :DESTINYBOND, :FEINT, :FIREFANG, :FIRESPIN, :REVERSAL, :SPITE, :SUCKERPUNCH, :THUNDERFANG
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        10.8
  s.color         :Black
  s.shape         :Quadruped
  s.habitat       :RoughTerrain
  s.category      "Dark"
  s.pokedex_entry "Houndour communicate with each other using a variety of cries to corner their prey. This Pokémon's remarkable teamwork is simply unparalleled."
  s.generation    2
  s.evolves_into  :HOUNDOOM, :Level, 24
end

GameData::Species.define :HOUNDOOM do |s|
  s.name          "Houndoom"
  s.types         :DARK, :FIRE
  s.base_stats    hp: 75, attack: 90, defense: 50, speed: 95, sp_atk: 110, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      175
  s.catch_rate    45
  s.happiness     35
  s.evs           sp_attack: 2
  s.abilities     :EARLYBIRD, :FLASHFIRE
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 1, :INFERNO
    m.at 1, :NASTYPLOT
    m.at 1, :THUNDERFANG
    m.at 1, :LEER
    m.at 1, :EMBER
    m.at 4, :HOWL
    m.at 8, :SMOG
    m.at 13, :ROAR
    m.at 16, :BITE
    m.at 20, :TAUNT
    m.at 26, :BEATUP
    m.at 30, :FIREFANG
    m.at 35, :PAYBACK
    m.at 41, :FLAMECHARGE
    m.at 45, :FOULPLAY
    m.at 50, :FLAMETHROWER
    m.at 56, :CRUNCH
    m.at 60, :NASTYPLOT
    m.at 65, :INFERNO
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :COUNTER, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :INCINERATE, :IRONTAIL, :LASERFOCUS, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :OVERHEAT, :PAYBACK, :PROTECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROLEPLAY, :ROUND, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNATCH, :SNORE, :SOLARBEAM, :SPITE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :UPROAR, :WILLOWISP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.4
  s.weight        35.0
  s.color         :Black
  s.shape         :Quadruped
  s.habitat       :RoughTerrain
  s.category      "Dark"
  s.pokedex_entry "In a Houndoom pack, the one with its horns raked sharply back serves a leadership role. They choose their leader by fighting among themselves."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :POOCHYENA do |s|
  s.name          "Poochyena"
  s.types         :DARK
  s.base_stats    hp: 35, attack: 55, defense: 35, speed: 35, sp_atk: 30, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      56
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :RUNAWAY, :QUICKFEET
  s.hidden_abilities :RATTLED
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 4, :HOWL
    m.at 7, :SANDATTACK
    m.at 10, :BITE
    m.at 13, :MUDSLAP
    m.at 16, :ROAR
    m.at 19, :SWAGGER
    m.at 22, :ASSURANCE
    m.at 25, :SCARYFACE
    m.at 28, :HEADBUTT
    m.at 31, :TAUNT
    m.at 34, :CRUNCH
    m.at 37, :YAWN
    m.at 40, :TAKEDOWN
    m.at 43, :SUCKERPUNCH
    m.at 46, :PLAYROUGH
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EMBARGO, :ENDURE, :FACADE, :FOULPLAY, :FRUSTRATION, :HEADBUTT, :HIDDENPOWER, :HYPERVOICE, :INCINERATE, :IRONTAIL, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :TAUNT, :THIEF, :TORMENT, :UPROAR, :TERABLAST
  s.egg_moves     :ASTONISH, :COVET, :FIREFANG, :ICEFANG, :LEER, :PLAYROUGH, :POISONFANG, :SUCKERPUNCH, :THUNDERFANG, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.5
  s.weight        13.6
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Bite"
  s.pokedex_entry "It savagely threatens foes with bared fangs. It chases after fleeing targets tenaciously. It turns tail and runs, however, if the foe strikes back."
  s.generation    3
  s.evolves_into  :MIGHTYENA, :Level, 18
end

GameData::Species.define :MIGHTYENA do |s|
  s.name          "Mightyena"
  s.types         :DARK
  s.base_stats    hp: 70, attack: 90, defense: 70, speed: 70, sp_atk: 60, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      147
  s.catch_rate    127
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :INTIMIDATE, :QUICKFEET
  s.hidden_abilities :MOXIE
  s.moves do |m|
    m.at 0, :SNARL
    m.at 1, :FIREFANG
    m.at 1, :THUNDERFANG
    m.at 1, :ICEFANG
    m.at 1, :CRUNCH
    m.at 1, :THIEF
    m.at 1, :TACKLE
    m.at 1, :HOWL
    m.at 1, :SANDATTACK
    m.at 1, :BITE
    m.at 4, :HOWL
    m.at 7, :SANDATTACK
    m.at 10, :BITE
    m.at 13, :MUDSLAP
    m.at 16, :ROAR
    m.at 20, :SWAGGER
    m.at 24, :ASSURANCE
    m.at 28, :SCARYFACE
    m.at 32, :HEADBUTT
    m.at 36, :TAUNT
    m.at 40, :CRUNCH
    m.at 44, :YAWN
    m.at 48, :TAKEDOWN
    m.at 52, :SUCKERPUNCH
    m.at 56, :PLAYROUGH
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EMBARGO, :ENDURE, :FACADE, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :INCINERATE, :IRONTAIL, :LASERFOCUS, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :UPROAR, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        1.0
  s.weight        37.0
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Bite"
  s.pokedex_entry "In the wild, Mightyena live in a pack. They never defy their leader's orders. They defeat foes with perfectly coordinated teamwork."
  s.generation    3
end

GameData::Species.define :SABLEYE do |s|
  s.name          "Sableye"
  s.types         :DARK, :GHOST
  s.base_stats    hp: 50, attack: 75, defense: 75, speed: 50, sp_atk: 65, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      133
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 1, defense: 1
  s.abilities     :KEENEYE, :STALL
  s.hidden_abilities :PRANKSTER
  s.moves do |m|
    m.at 1, :LEER
    m.at 1, :SCRATCH
    m.at 3, :ASTONISH
    m.at 6, :CONFUSERAY
    m.at 9, :SHADOWSNEAK
    m.at 12, :FAKEOUT
    m.at 15, :DISABLE
    m.at 18, :DETECT
    m.at 21, :NIGHTSHADE
    m.at 24, :FURYSWIPES
    m.at 27, :KNOCKOFF
    m.at 30, :QUASH
    m.at 33, :SHADOWCLAW
    m.at 36, :MEANLOOK
    m.at 39, :POWERGEM
    m.at 42, :ZENHEADBUTT
    m.at 45, :SHADOWBALL
    m.at 48, :FOULPLAY
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :ATTRACT, :BODYSLAM, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DAZZLINGGLEAM, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :EMBARGO, :ENCORE, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GRAVITY, :GYROBALL, :HEADBUTT, :HELPINGHAND, :HEX, :HIDDENPOWER, :HONECLAWS, :ICEPUNCH, :ICYWIND, :IMPRISON, :INCINERATE, :KNOCKOFF, :LASHOUT, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PAYBACK, :POISONJAB, :POLTERGEIST, :POWERGEM, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :QUASH, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERPUNCH, :TORMENT, :TRICK, :WATERPULSE, :WILLOWISP, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :FEINT, :FLATTER, :IMPRISON, :MEANLOOK, :METALBURST, :MOONLIGHT, :RECOVER, :SUCKERPUNCH, :TORMENT, :TRICK
  s.egg_groups    :Humanlike
  s.hatch_steps   6400
  s.height        0.5
  s.weight        11.0
  s.color         :Purple
  s.shape         :Bipedal
  s.habitat       :Cave
  s.category      "Darkness"
  s.pokedex_entry "It digs branching holes in caves using its sharp claws in search of food--raw gems. A Sableye lurks in darkness and is seen only rarely."
  s.generation    3
  s.wild_item_uncommon :WIDELENS
end

GameData::Species.define :ABSOL do |s|
  s.name          "Absol"
  s.types         :DARK
  s.base_stats    hp: 65, attack: 130, defense: 60, speed: 75, sp_atk: 75, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      163
  s.catch_rate    30
  s.happiness     35
  s.evs           attack: 2
  s.abilities     :PRESSURE, :SUPERLUCK
  s.hidden_abilities :JUSTIFIED
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 5, :DOUBLETEAM
    m.at 10, :KNOCKOFF
    m.at 15, :DETECT
    m.at 20, :TAUNT
    m.at 25, :SLASH
    m.at 30, :NIGHTSLASH
    m.at 35, :FOCUSENERGY
    m.at 40, :SUCKERPUNCH
    m.at 45, :SWORDSDANCE
    m.at 50, :FUTURESIGHT
    m.at 55, :PERISHSONG
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :ASSURANCE, :ATTRACT, :BATONPASS, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRUTALSWING, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CLOSECOMBAT, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :FACADE, :FALSESWIPE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FOCUSENERGY, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :FUTURESIGHT, :GIGAIMPACT, :HAIL, :HEADBUTT, :HEX, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :MAGICCOAT, :MEGAHORN, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :PLAYROUGH, :PROTECT, :PSYCHOCUT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SANDSTORM, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :WATERPULSE, :WILLOWISP, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ASSURANCE, :BATONPASS, :BITE, :CURSE, :DOUBLEEDGE, :FEINT, :HEX, :MAGICCOAT, :MEANLOOK, :MEGAHORN, :PERISHSONG, :PLAYROUGH, :SUCKERPUNCH, :ZENHEADBUTT
  s.egg_groups    :Field
  s.hatch_steps   6400
  s.height        1.2
  s.weight        47.0
  s.color         :White
  s.shape         :Quadruped
  s.habitat       :Mountain
  s.category      "Disaster"
  s.pokedex_entry "It sharply senses even subtle changes in the sky and the land to predict natural disasters. It is a long-lived Pokémon that has a life-span of 100 years."
  s.generation    3
end

GameData::Species.define :HONCHKROW do |s|
  s.name          "Honchkrow"
  s.types         :DARK, :FLYING
  s.base_stats    hp: 100, attack: 125, defense: 52, speed: 71, sp_atk: 105, sp_def: 52
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      177
  s.catch_rate    30
  s.happiness     35
  s.evs           attack: 2
  s.abilities     :INSOMNIA, :SUPERLUCK
  s.hidden_abilities :MOXIE
  s.moves do |m|
    m.at 1, :NIGHTSLASH
    m.at 1, :SUCKERPUNCH
    m.at 1, :ASTONISH
    m.at 1, :HAZE
    m.at 1, :WINGATTACK
    m.at 1, :GUST
    m.at 1, :NIGHTSHADE
    m.at 1, :ASSURANCE
    m.at 1, :TAUNT
    m.at 1, :AIRCUTTER
    m.at 1, :MEANLOOK
    m.at 1, :TAILWIND
    m.at 1, :TORMENT
    m.at 1, :PECK
    m.at 25, :SWAGGER
    m.at 35, :NASTYPLOT
    m.at 45, :FOULPLAY
    m.at 55, :NIGHTSLASH
    m.at 65, :QUASH
    m.at 75, :DARKPULSE
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :CALMMIND, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :FACADE, :FLY, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :ICYWIND, :INCINERATE, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PAYBACK, :PLUCK, :PROTECT, :PSYCHIC, :PSYCHUP, :QUASH, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SHADOWBALL, :SKYATTACK, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :STEELWING, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :THUNDERWAVE, :TORMENT, :TWISTER, :UPROAR, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        0.9
  s.weight        27.3
  s.color         :Black
  s.shape         :Winged
  s.category      "Big Boss"
  s.pokedex_entry "Becoming active at night, it is known to swarm with numerous Murkrow in tow."
  s.generation    4
end

GameData::Species.define :WEAVILE do |s|
  s.name          "Weavile"
  s.types         :DARK, :ICE
  s.base_stats    hp: 70, attack: 120, defense: 65, speed: 125, sp_atk: 45, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      179
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 1, speed: 1
  s.abilities     :PRESSURE
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 1, :REVENGE
    m.at 1, :ASSURANCE
    m.at 1, :QUICKATTACK
    m.at 1, :BEATUP
    m.at 1, :AGILITY
    m.at 1, :SLASH
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :TAUNT
    m.at 1, :ICESHARD
    m.at 18, :METALCLAW
    m.at 24, :ICYWIND
    m.at 30, :FURYSWIPES
    m.at 36, :HONECLAWS
    m.at 42, :FLING
    m.at 48, :NASTYPLOT
    m.at 54, :SCREECH
    m.at 60, :NIGHTSLASH
    m.at 66, :DARKPULSE
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ASSURANCE, :ATTRACT, :AVALANCHE, :BEATUP, :BLIZZARD, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DYNAMICPUNCH, :EMBARGO, :ENDURE, :FACADE, :FAKETEARS, :FALSESWIPE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICICLESPEAR, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHOCUT, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :ROCKSMASH, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :TRIPLEAXEL, :WHIRLPOOL, :XSCISSOR, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.1
  s.weight        34.0
  s.color         :Black
  s.shape         :BipedalTail
  s.category      "Sharp Claw"
  s.pokedex_entry "They live in cold regions, forming groups of four or five that hunt prey with impressive coordination."
  s.generation    4
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :QUICKCLAW
end

GameData::Species.define :DARKRAI do |s|
  s.name          "Darkrai"
  s.types         :DARK
  s.base_stats    hp: 70, attack: 90, defense: 90, speed: 125, sp_atk: 135, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     0
  s.evs           sp_attack: 2, speed: 1
  s.abilities     :BADDREAMS
  s.moves do |m|
    m.at 1, :CONFUSERAY
    m.at 1, :DISABLE
    m.at 11, :QUICKATTACK
    m.at 20, :HYPNOSIS
    m.at 29, :SUCKERPUNCH
    m.at 38, :FOULPLAY
    m.at 47, :DOUBLETEAM
    m.at 57, :HAZE
    m.at 66, :DARKVOID
    m.at 75, :NASTYPLOT
    m.at 84, :DREAMEATER
    m.at 93, :DARKPULSE
  end
  s.tutor_moves   :AERIALACE, :BLIZZARD, :BRICKBREAK, :CALMMIND, :CHARGEBEAM, :CONFIDE, :CUT, :DARKPULSE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :EMBARGO, :ENDURE, :FACADE, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INCINERATE, :KNOCKOFF, :LASTRESORT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNATCH, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TRICK, :WILLOWISP, :WONDERROOM, :XSCISSOR, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.5
  s.weight        50.5
  s.color         :Black
  s.shape         :Bipedal
  s.category      "Pitch-Black"
  s.pokedex_entry "It can lull people to sleep and make them dream. It is active during nights of the new moon."
  s.generation    4
  s.flags         :Mythical
end

GameData::Species.define :PURRLOIN do |s|
  s.name          "Purrloin"
  s.types         :DARK
  s.base_stats    hp: 41, attack: 50, defense: 37, speed: 66, sp_atk: 50, sp_def: 37
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      56
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :LIMBER, :UNBURDEN
  s.hidden_abilities :PRANKSTER
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 4, :SANDATTACK
    m.at 5, :FAKEOUT
    m.at 12, :FURYSWIPES
    m.at 16, :TORMENT
    m.at 21, :ASSURANCE
    m.at 24, :HONECLAWS
    m.at 28, :SUCKERPUNCH
    m.at 32, :NASTYPLOT
    m.at 36, :NIGHTSLASH
    m.at 40, :PLAYROUGH
  end
  s.tutor_moves   :AERIALACE, :ASSURANCE, :ATTRACT, :BATONPASS, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CUT, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :EMBARGO, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :FOULPLAY, :FRUSTRATION, :GRASSKNOT, :GUNKSHOT, :HIDDENPOWER, :HONECLAWS, :HYPERVOICE, :IRONTAIL, :KNOCKOFF, :LASHOUT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PAYDAY, :PLAYROUGH, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROLEPLAY, :ROUND, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THUNDERWAVE, :TORMENT, :TOXIC, :TRICK, :UTURN, :TERABLAST
  s.egg_moves     :COPYCAT, :COVET, :DOUBLETEAM, :QUICKATTACK, :SLASH, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        10.1
  s.color         :Purple
  s.shape         :Quadruped
  s.category      "Devious"
  s.pokedex_entry "Its cute act is a ruse. When victims let down their guard, they find their items taken. It attacks with sharp claws."
  s.generation    5
  s.evolves_into  :LIEPARD, :Level, 20
end

GameData::Species.define :LIEPARD do |s|
  s.name          "Liepard"
  s.types         :DARK
  s.base_stats    hp: 64, attack: 88, defense: 50, speed: 106, sp_atk: 88, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      156
  s.catch_rate    90
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :LIMBER, :UNBURDEN
  s.hidden_abilities :PRANKSTER
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :SANDATTACK
    m.at 1, :FAKEOUT
    m.at 12, :FURYSWIPES
    m.at 16, :TORMENT
    m.at 23, :ASSURANCE
    m.at 28, :HONECLAWS
    m.at 34, :SUCKERPUNCH
    m.at 40, :NASTYPLOT
    m.at 46, :NIGHTSLASH
    m.at 52, :PLAYROUGH
  end
  s.tutor_moves   :AERIALACE, :ASSURANCE, :ATTRACT, :BATONPASS, :BURNINGJEALOUSY, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CUT, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :EMBARGO, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LASHOUT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PAYDAY, :PLAYROUGH, :PROTECT, :PSYCHOCUT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROLEPLAY, :ROUND, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THROATCHOP, :THUNDERWAVE, :TORMENT, :TOXIC, :TRICK, :UTURN, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.1
  s.weight        37.5
  s.color         :Purple
  s.shape         :Quadruped
  s.category      "Cruel"
  s.pokedex_entry "Stealthily, it sneaks up on its target, striking from behind before its victim has a chance to react."
  s.generation    5
end

GameData::Species.define :SCRAGGY do |s|
  s.name          "Scraggy"
  s.types         :DARK, :FIGHTING
  s.base_stats    hp: 50, attack: 75, defense: 70, speed: 48, sp_atk: 35, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      70
  s.catch_rate    180
  s.happiness     35
  s.evs           attack: 1
  s.abilities     :SHEDSKIN, :MOXIE
  s.hidden_abilities :INTIMIDATE
  s.moves do |m|
    m.at 1, :LOWKICK
    m.at 1, :LEER
    m.at 4, :PAYBACK
    m.at 8, :HEADBUTT
    m.at 12, :SANDATTACK
    m.at 16, :FACADE
    m.at 20, :PROTECT
    m.at 24, :BEATUP
    m.at 28, :SCARYFACE
    m.at 32, :BRICKBREAK
    m.at 36, :SWAGGER
    m.at 40, :CRUNCH
    m.at 44, :HIGHJUMPKICK
    m.at 48, :FOCUSPUNCH
    m.at 52, :HEADSMASH
  end
  s.tutor_moves   :AMNESIA, :ASSURANCE, :ATTRACT, :BEATUP, :BRICKBREAK, :BULKUP, :CAPTIVATE, :COACHING, :CONFIDE, :CRUNCH, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DRAINPUNCH, :DUALCHOP, :ENDURE, :FACADE, :FAKETEARS, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GRASSKNOT, :HIDDENPOWER, :ICEPUNCH, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SMACKDOWN, :SNARL, :SNATCH, :SNORE, :SPITE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :TAUNT, :THIEF, :THUNDERPUNCH, :TORMENT, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ACIDSPRAY, :COUNTER, :DETECT, :FAKEOUT, :POWERUPPUNCH, :QUICKGUARD
  s.egg_groups    :Field, :Dragon
  s.hatch_steps   3840
  s.height        0.6
  s.weight        11.8
  s.color         :Yellow
  s.shape         :BipedalTail
  s.category      "Shedding"
  s.pokedex_entry "It immediately headbutts anyone that makes eye contact with it. Its skull is massively thick."
  s.generation    5
  s.evolves_into  :SCRAFTY, :Level, 39
  s.wild_item_uncommon :SHEDSHELL
end

GameData::Species.define :SCRAFTY do |s|
  s.name          "Scrafty"
  s.types         :DARK, :FIGHTING
  s.base_stats    hp: 65, attack: 90, defense: 115, speed: 58, sp_atk: 45, sp_def: 115
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      171
  s.catch_rate    90
  s.happiness     50
  s.evs           defense: 1, sp_defense: 1
  s.abilities     :SHEDSKIN, :MOXIE
  s.hidden_abilities :INTIMIDATE
  s.moves do |m|
    m.at 1, :LOWKICK
    m.at 1, :LEER
    m.at 1, :PAYBACK
    m.at 1, :HEADBUTT
    m.at 12, :SANDATTACK
    m.at 16, :FACADE
    m.at 20, :PROTECT
    m.at 24, :BEATUP
    m.at 28, :SCARYFACE
    m.at 32, :BRICKBREAK
    m.at 36, :SWAGGER
    m.at 42, :CRUNCH
    m.at 48, :HIGHJUMPKICK
    m.at 54, :FOCUSPUNCH
    m.at 60, :HEADSMASH
  end
  s.tutor_moves   :AMNESIA, :ASSURANCE, :ATTRACT, :BEATUP, :BRICKBREAK, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :CRUNCH, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DRAINPUNCH, :DUALCHOP, :ENDURE, :FACADE, :FAKETEARS, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SMACKDOWN, :SNARL, :SNATCH, :SNORE, :SPITE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :TAUNT, :THIEF, :THROATCHOP, :THUNDERPUNCH, :TORMENT, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field, :Dragon
  s.hatch_steps   3840
  s.height        1.1
  s.weight        30.0
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Hoodlum"
  s.pokedex_entry "It can smash concrete blocks with its kicking attacks. The one with the biggest crest is the group leader."
  s.generation    5
  s.wild_item_uncommon :SHEDSHELL
end

GameData::Species.define :ZORUA do |s|
  s.name          "Zorua"
  s.types         :DARK
  s.base_stats    hp: 40, attack: 65, defense: 40, speed: 65, sp_atk: 80, sp_def: 40
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      66
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :ILLUSION
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 4, :TORMENT
    m.at 8, :HONECLAWS
    m.at 12, :FURYSWIPES
    m.at 16, :SCARYFACE
    m.at 20, :TAUNT
    m.at 24, :KNOCKOFF
    m.at 28, :FAKETEARS
    m.at 32, :AGILITY
    m.at 36, :IMPRISON
    m.at 40, :NIGHTDAZE
    m.at 44, :NASTYPLOT
    m.at 48, :FOULPLAY
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ASSURANCE, :ATTRACT, :BOUNCE, :BURNINGJEALOUSY, :CALMMIND, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :EMBARGO, :ENDURE, :FACADE, :FAKETEARS, :FLING, :FOULPLAY, :FRUSTRATION, :GRASSKNOT, :HEX, :HIDDENPOWER, :HONECLAWS, :HYPERVOICE, :IMPRISON, :INCINERATE, :KNOCKOFF, :LASHOUT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROAR, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWBALL, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :TORMENT, :TOXIC, :TRICK, :UPROAR, :UTURN, :TERABLAST
  s.egg_moves     :COPYCAT, :COUNTER, :DETECT, :EXTRASENSORY, :MEMENTO, :SUCKERPUNCH
  s.egg_groups    :Field
  s.hatch_steps   6400
  s.height        0.7
  s.weight        12.5
  s.color         :Gray
  s.shape         :Quadruped
  s.category      "Tricky Fox"
  s.pokedex_entry "To protect themselves from danger, they hide their true identities by transforming into people and Pokémon."
  s.generation    5
  s.evolves_into  :ZOROARK, :Level, 30
end

GameData::Species.define :ZOROARK do |s|
  s.name          "Zoroark"
  s.types         :DARK
  s.base_stats    hp: 60, attack: 105, defense: 60, speed: 105, sp_atk: 120, sp_def: 60
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      179
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :ILLUSION
  s.moves do |m|
    m.at 0, :NIGHTSLASH
    m.at 1, :UTURN
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :TORMENT
    m.at 1, :HONECLAWS
    m.at 12, :FURYSWIPES
    m.at 16, :SCARYFACE
    m.at 20, :TAUNT
    m.at 24, :KNOCKOFF
    m.at 28, :FAKETEARS
    m.at 34, :AGILITY
    m.at 40, :IMPRISON
    m.at 46, :NIGHTDAZE
    m.at 52, :NASTYPLOT
    m.at 58, :FOULPLAY
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ASSURANCE, :ATTRACT, :BOUNCE, :BURNINGJEALOUSY, :CALMMIND, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :EMBARGO, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HEX, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :IMPRISON, :INCINERATE, :KNOCKOFF, :LASERFOCUS, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROAR, :ROCKSMASH, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :TOXIC, :TRICK, :UPROAR, :UTURN, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.6
  s.weight        81.1
  s.color         :Gray
  s.shape         :BipedalTail
  s.category      "Illusion Fox"
  s.pokedex_entry "Each has the ability to fool a large group of people simultaneously. They protect their lair with illusory scenery."
  s.generation    5
end

GameData::Species.define :PAWNIARD do |s|
  s.name          "Pawniard"
  s.types         :DARK, :STEEL
  s.base_stats    hp: 45, attack: 85, defense: 70, speed: 60, sp_atk: 40, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      68
  s.catch_rate    120
  s.happiness     35
  s.evs           attack: 1
  s.abilities     :DEFIANT, :INNERFOCUS
  s.hidden_abilities :PRESSURE
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 5, :FURYCUTTER
    m.at 10, :METALCLAW
    m.at 15, :TORMENT
    m.at 20, :SCARYFACE
    m.at 25, :ASSURANCE
    m.at 30, :METALSOUND
    m.at 35, :SLASH
    m.at 40, :NIGHTSLASH
    m.at 45, :IRONDEFENSE
    m.at 50, :LASERFOCUS
    m.at 55, :IRONHEAD
    m.at 60, :SWORDSDANCE
    m.at 65, :GUILLOTINE
  end
  s.tutor_moves   :AERIALACE, :ASSURANCE, :ATTRACT, :BEATUP, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :DUALCHOP, :EMBARGO, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOULPLAY, :FRUSTRATION, :GRASSKNOT, :HIDDENPOWER, :HONECLAWS, :IRONDEFENSE, :IRONHEAD, :KNOCKOFF, :LASHOUT, :LOWKICK, :LOWSWEEP, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHOCUT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROCKPOLISH, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SANDSTORM, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :STEALTHROCK, :STEELBEAM, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TAUNT, :THIEF, :THUNDERWAVE, :TORMENT, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_moves     :HEADBUTT, :MEANLOOK, :QUICKGUARD, :SUCKERPUNCH
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        0.5
  s.weight        10.2
  s.color         :Red
  s.shape         :Bipedal
  s.category      "Sharp Blade"
  s.pokedex_entry "They fight at Bisharp's command. They cling to their prey and inflict damage by sinking their blades into it."
  s.generation    5
  s.evolves_into  :BISHARP, :Level, 52
end

GameData::Species.define :BISHARP do |s|
  s.name          "Bisharp"
  s.types         :DARK, :STEEL
  s.base_stats    hp: 65, attack: 125, defense: 100, speed: 70, sp_atk: 60, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      172
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 2
  s.abilities     :DEFIANT, :INNERFOCUS
  s.hidden_abilities :PRESSURE
  s.moves do |m|
    m.at 1, :METALBURST
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :FURYCUTTER
    m.at 1, :METALCLAW
    m.at 15, :TORMENT
    m.at 20, :SCARYFACE
    m.at 25, :ASSURANCE
    m.at 30, :METALSOUND
    m.at 35, :SLASH
    m.at 40, :NIGHTSLASH
    m.at 45, :IRONDEFENSE
    m.at 50, :LASERFOCUS
    m.at 57, :IRONHEAD
    m.at 64, :SWORDSDANCE
    m.at 71, :GUILLOTINE
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :ASSURANCE, :ATTRACT, :BEATUP, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :DUALCHOP, :EMBARGO, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSBLAST, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :KNOCKOFF, :LASERFOCUS, :LASHOUT, :LOWKICK, :LOWSWEEP, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHOCUT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROCKPOLISH, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SANDSTORM, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :STEALTHROCK, :STEELBEAM, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :THUNDERWAVE, :TORMENT, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.6
  s.weight        70.0
  s.color         :Red
  s.shape         :Bipedal
  s.category      "Sword Blade"
  s.pokedex_entry "Bisharp pursues prey in the company of a large group of Pawniard. Then Bisharp finishes off the prey."
  s.generation    5
end

GameData::Species.define :VULLABY do |s|
  s.name          "Vullaby"
  s.types         :DARK, :FLYING
  s.base_stats    hp: 70, attack: 55, defense: 75, speed: 60, sp_atk: 45, sp_def: 65
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Slow
  s.base_exp      74
  s.catch_rate    190
  s.happiness     35
  s.evs           defense: 1
  s.abilities     :BIGPECKS, :OVERCOAT
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 1, :GUST
    m.at 1, :LEER
    m.at 6, :FLATTER
    m.at 12, :PLUCK
    m.at 18, :TAILWIND
    m.at 24, :KNOCKOFF
    m.at 30, :IRONDEFENSE
    m.at 36, :WHIRLWIND
    m.at 42, :AIRSLASH
    m.at 48, :DARKPULSE
    m.at 54, :NASTYPLOT
    m.at 60, :DEFOG
    m.at 66, :ATTRACT
    m.at 72, :BRAVEBIRD
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :ASSURANCE, :ATTRACT, :BLOCK, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :EMBARGO, :ENDURE, :FACADE, :FAKETEARS, :FLY, :FOULPLAY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :INCINERATE, :IRONDEFENSE, :KNOCKOFF, :LASHOUT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PLUCK, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :TORMENT, :TOXIC, :UTURN, :TERABLAST
  s.egg_moves     :MEANLOOK, :ROOST, :TOXIC
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        0.5
  s.weight        9.0
  s.color         :Brown
  s.shape         :Winged
  s.category      "Diapered"
  s.pokedex_entry "They tend to guard their posteriors with suitable bones they have found. They pursue weak Pokémon."
  s.generation    5
  s.evolves_into  :MANDIBUZZ, :Level, 54
end

GameData::Species.define :MANDIBUZZ do |s|
  s.name          "Mandibuzz"
  s.types         :DARK, :FLYING
  s.base_stats    hp: 110, attack: 65, defense: 105, speed: 80, sp_atk: 55, sp_def: 95
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Slow
  s.base_exp      179
  s.catch_rate    60
  s.happiness     35
  s.evs           sp_attack: 2
  s.abilities     :BIGPECKS, :OVERCOAT
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 0, :BONERUSH
    m.at 1, :SKYATTACK
    m.at 1, :TOXIC
    m.at 1, :GUST
    m.at 1, :LEER
    m.at 1, :FLATTER
    m.at 1, :PLUCK
    m.at 18, :TAILWIND
    m.at 24, :KNOCKOFF
    m.at 30, :IRONDEFENSE
    m.at 36, :WHIRLWIND
    m.at 42, :AIRSLASH
    m.at 48, :DARKPULSE
    m.at 57, :NASTYPLOT
    m.at 64, :DEFOG
    m.at 72, :ATTRACT
    m.at 80, :BRAVEBIRD
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :ASSURANCE, :ATTRACT, :BLOCK, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :EMBARGO, :ENDURE, :FACADE, :FAKETEARS, :FLY, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONDEFENSE, :KNOCKOFF, :LASHOUT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PLUCK, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWBALL, :SKYATTACK, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :TORMENT, :TOXIC, :UTURN, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        1.2
  s.weight        39.5
  s.color         :Brown
  s.shape         :Winged
  s.category      "Bone Vulture"
  s.pokedex_entry "Watching from the sky, they swoop to strike weakened Pokémon on the ground. They decorate themselves with bones."
  s.generation    5
end

GameData::Species.define :DEINO do |s|
  s.name          "Deino"
  s.types         :DARK, :DRAGON
  s.base_stats    hp: 52, attack: 65, defense: 50, speed: 38, sp_atk: 45, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      60
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 1
  s.abilities     :HUSTLE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :FOCUSENERGY
    m.at 4, :DRAGONBREATH
    m.at 8, :BITE
    m.at 12, :ROAR
    m.at 16, :ASSURANCE
    m.at 20, :HEADBUTT
    m.at 24, :WORKUP
    m.at 28, :SLAM
    m.at 32, :CRUNCH
    m.at 36, :SCARYFACE
    m.at 40, :DRAGONPULSE
    m.at 44, :BODYSLAM
    m.at 48, :HYPERVOICE
    m.at 52, :DRAGONRUSH
    m.at 56, :NASTYPLOT
    m.at 60, :OUTRAGE
  end
  s.tutor_moves   :AQUATAIL, :ASSURANCE, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :CRUNCH, :DARKPULSE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONPULSE, :DRAGONTAIL, :EARTHPOWER, :ENDURE, :FACADE, :FIREFANG, :FOCUSENERGY, :FRUSTRATION, :HIDDENPOWER, :HYPERVOICE, :ICEFANG, :INCINERATE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OUTRAGE, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :THUNDERFANG, :THUNDERWAVE, :TORMENT, :TOXIC, :UPROAR, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ASTONISH, :BELCH, :DOUBLEHIT, :HEADSMASH
  s.egg_groups    :Dragon
  s.hatch_steps   10240
  s.height        0.8
  s.weight        17.3
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Irate"
  s.pokedex_entry "They cannot see, so they tackle and bite to learn about their surroundings. Their bodies are covered in wounds."
  s.generation    5
  s.evolves_into  :ZWEILOUS, :Level, 50
end

GameData::Species.define :ZWEILOUS do |s|
  s.name          "Zweilous"
  s.types         :DARK, :DRAGON
  s.base_stats    hp: 72, attack: 85, defense: 70, speed: 58, sp_atk: 65, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      147
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 2
  s.abilities     :HUSTLE
  s.moves do |m|
    m.at 1, :DOUBLEHIT
    m.at 1, :TACKLE
    m.at 1, :FOCUSENERGY
    m.at 1, :DRAGONBREATH
    m.at 1, :BITE
    m.at 12, :ROAR
    m.at 16, :ASSURANCE
    m.at 20, :HEADBUTT
    m.at 24, :WORKUP
    m.at 28, :SLAM
    m.at 32, :CRUNCH
    m.at 36, :SCARYFACE
    m.at 40, :DRAGONPULSE
    m.at 44, :BODYSLAM
    m.at 48, :HYPERVOICE
    m.at 54, :DRAGONRUSH
    m.at 60, :NASTYPLOT
    m.at 66, :OUTRAGE
  end
  s.tutor_moves   :AQUATAIL, :ASSURANCE, :ATTRACT, :BEATUP, :BODYSLAM, :CAPTIVATE, :CONFIDE, :CRUNCH, :DARKPULSE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONPULSE, :DRAGONTAIL, :EARTHPOWER, :ENDURE, :FACADE, :FIREFANG, :FOCUSENERGY, :FRUSTRATION, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEFANG, :INCINERATE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OUTRAGE, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :THUNDERFANG, :THUNDERWAVE, :TORMENT, :TOXIC, :UPROAR, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Dragon
  s.hatch_steps   10240
  s.height        1.4
  s.weight        50.0
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Hostile"
  s.pokedex_entry "Since their two heads do not get along and compete with each other for food, they always eat too much."
  s.generation    5
  s.evolves_into  :HYDREIGON, :Level, 64
end

GameData::Species.define :HYDREIGON do |s|
  s.name          "Hydreigon"
  s.types         :DARK, :DRAGON
  s.base_stats    hp: 92, attack: 105, defense: 90, speed: 98, sp_atk: 125, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    45
  s.happiness     35
  s.evs           sp_attack: 3
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :TRIATTACK
    m.at 1, :DOUBLEHIT
    m.at 1, :TACKLE
    m.at 1, :FOCUSENERGY
    m.at 1, :DRAGONBREATH
    m.at 1, :BITE
    m.at 12, :ROAR
    m.at 16, :ASSURANCE
    m.at 20, :HEADBUTT
    m.at 24, :WORKUP
    m.at 28, :SLAM
    m.at 32, :CRUNCH
    m.at 36, :SCARYFACE
    m.at 40, :DRAGONPULSE
    m.at 44, :BODYSLAM
    m.at 48, :HYPERVOICE
    m.at 54, :DRAGONRUSH
    m.at 60, :NASTYPLOT
    m.at 68, :OUTRAGE
    m.at 76, :HYPERBEAM
  end
  s.tutor_moves   :ACROBATICS, :AQUATAIL, :ASSURANCE, :ATTRACT, :BEATUP, :BODYSLAM, :BREAKINGSWIPE, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CRUNCH, :DARKPULSE, :DEFOG, :DOUBLETEAM, :DRACOMETEOR, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMETHROWER, :FLASHCANNON, :FLY, :FOCUSBLAST, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEFANG, :INCINERATE, :IRONTAIL, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PROTECT, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SCALESHOT, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNARL, :SNORE, :SPITE, :STEELWING, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :TAILWIND, :TAUNT, :THIEF, :THROATCHOP, :THUNDERFANG, :THUNDERWAVE, :TORMENT, :TOXIC, :TRIATTACK, :UPROAR, :UTURN, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Dragon
  s.hatch_steps   10240
  s.height        1.8
  s.weight        160.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Brutal"
  s.pokedex_entry "The heads on their arms do not have brains. They use all three heads to consume and destroy everything."
  s.generation    5
end

GameData::Species.define :INKAY do |s|
  s.name          "Inkay"
  s.types         :DARK, :PSYCHIC
  s.base_stats    hp: 53, attack: 54, defense: 53, speed: 45, sp_atk: 37, sp_def: 46
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      58
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :CONTRARY, :SUCTIONCUPS
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :TACKLE
    m.at 3, :HYPNOSIS
    m.at 6, :WRAP
    m.at 9, :PAYBACK
    m.at 12, :PLUCK
    m.at 15, :PSYBEAM
    m.at 18, :SWAGGER
    m.at 21, :SLASH
    m.at 24, :NIGHTSLASH
    m.at 27, :PSYCHOCUT
    m.at 31, :SWITCHEROO
    m.at 33, :FOULPLAY
    m.at 36, :TOPSYTURVY
    m.at 39, :SUPERPOWER
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :ATTRACT, :BATONPASS, :BIND, :CALMMIND, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DOUBLETEAM, :EMBARGO, :ENDURE, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FLAMETHROWER, :FLASH, :FLING, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GUARDSWAP, :HIDDENPOWER, :KNOCKOFF, :LASHOUT, :LIGHTSCREEN, :LIQUIDATION, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROLEPLAY, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERBOLT, :TORMENT, :TOXIC, :TRICKROOM, :TERABLAST
  s.egg_moves     :ACUPRESSURE, :DESTINYBOND, :DISABLE
  s.egg_groups    :Water1, :Water2
  s.hatch_steps   5120
  s.height        0.4
  s.weight        3.5
  s.color         :Blue
  s.shape         :Multiped
  s.category      "Revolving"
  s.pokedex_entry "It flashes the light-emitting spots on its body, which drains its opponent's will to fight. It takes the opportunity to scuttle away and hide."
  s.generation    6
  s.evolves_into  :MALAMAR, :Level, 30
end

GameData::Species.define :MALAMAR do |s|
  s.name          "Malamar"
  s.types         :DARK, :PSYCHIC
  s.base_stats    hp: 86, attack: 92, defense: 88, speed: 73, sp_atk: 68, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      169
  s.catch_rate    80
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :CONTRARY, :SUCTIONCUPS
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :REVERSAL
    m.at 1, :PECK
    m.at 1, :TACKLE
    m.at 1, :HYPNOSIS
    m.at 1, :WRAP
    m.at 9, :PAYBACK
    m.at 12, :PLUCK
    m.at 15, :PSYBEAM
    m.at 18, :SWAGGER
    m.at 21, :SLASH
    m.at 24, :NIGHTSLASH
    m.at 27, :PSYCHOCUT
    m.at 33, :SWITCHEROO
    m.at 37, :FOULPLAY
    m.at 42, :TOPSYTURVY
    m.at 47, :SUPERPOWER
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :ATTRACT, :BATONPASS, :BIND, :BLOCK, :BRUTALSWING, :CALMMIND, :CAPTIVATE, :CONFIDE, :CUT, :DARKPULSE, :DOUBLETEAM, :EMBARGO, :ENDURE, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FLAMETHROWER, :FLASH, :FLING, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GUARDSWAP, :HIDDENPOWER, :HYPERBEAM, :KNOCKOFF, :LASHOUT, :LIGHTSCREEN, :LIQUIDATION, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROCKSLIDE, :ROLEPLAY, :ROUND, :SCARYFACE, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THROATCHOP, :THUNDERBOLT, :TORMENT, :TOXIC, :TRICKROOM, :TERABLAST
  s.egg_groups    :Water1, :Water2
  s.hatch_steps   5120
  s.height        1.5
  s.weight        47.0
  s.color         :Blue
  s.shape         :HeadBase
  s.category      "Overturning"
  s.pokedex_entry "It lures prey close with hypnotic motions, then wraps its tentacles around it before finishing it off with digestive fluids."
  s.generation    6
end

GameData::Species.define :YVELTAL do |s|
  s.name          "Yveltal"
  s.types         :DARK, :FLYING
  s.base_stats    hp: 126, attack: 131, defense: 95, speed: 99, sp_atk: 131, sp_def: 98
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    45
  s.happiness     0
  s.evs           hp: 3
  s.abilities     :DARKAURA
  s.moves do |m|
    m.at 1, :GUST
    m.at 1, :DOUBLETEAM
    m.at 5, :TAUNT
    m.at 10, :SNARL
    m.at 15, :DISABLE
    m.at 20, :SUCKERPUNCH
    m.at 25, :TAILWIND
    m.at 30, :ROOST
    m.at 35, :AIRSLASH
    m.at 40, :DARKPULSE
    m.at 45, :PSYCHIC
    m.at 50, :OBLIVIONWING
    m.at 55, :PHANTOMFORCE
    m.at 60, :FOULPLAY
    m.at 65, :DRAGONRUSH
    m.at 70, :HURRICANE
    m.at 75, :FOCUSBLAST
    m.at 80, :SKYATTACK
    m.at 85, :HYPERBEAM
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRSLASH, :BLOCK, :BODYSLAM, :CONFIDE, :CUT, :DARKPULSE, :DEFOG, :DOUBLETEAM, :DRAGONCLAW, :DREAMEATER, :DUALWINGBEAT, :EMBARGO, :ENDURE, :FACADE, :FLY, :FOCUSBLAST, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HURRICANE, :HYPERBEAM, :HYPERVOICE, :KNOCKOFF, :LASERFOCUS, :LASHOUT, :MIMIC, :NATURALGIFT, :PAYBACK, :PHANTOMFORCE, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROOST, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SNARL, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :TORMENT, :TOXIC, :UTURN, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        5.8
  s.weight        203.0
  s.color         :Red
  s.shape         :Winged
  s.category      "Destruction"
  s.pokedex_entry "When its life comes to an end, it absorbs the life energy of every living thing and turns into a cocoon once more."
  s.generation    6
  s.flags         :Legendary
end

GameData::Species.define :GUZZLORD do |s|
  s.name          "Guzzlord"
  s.types         :DARK, :DRAGON
  s.base_stats    hp: 223, attack: 101, defense: 53, speed: 43, sp_atk: 97, sp_def: 53
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    45
  s.happiness     0
  s.evs           hp: 3
  s.abilities     :BEASTBOOST
  s.moves do |m|
    m.at 1, :BITE
    m.at 1, :DRAGONTAIL
    m.at 5, :SWALLOW
    m.at 5, :STOCKPILE
    m.at 10, :KNOCKOFF
    m.at 15, :STOMP
    m.at 20, :STOMPINGTANTRUM
    m.at 25, :WIDEGUARD
    m.at 30, :CRUNCH
    m.at 35, :BODYSLAM
    m.at 40, :GASTROACID
    m.at 45, :HAMMERARM
    m.at 50, :HEAVYSLAM
    m.at 55, :DRAGONRUSH
    m.at 60, :BELCH
    m.at 65, :THRASH
    m.at 70, :GIGAIMPACT
  end
  s.tutor_moves   :AMNESIA, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CORROSIVEGAS, :CRUNCH, :DARKPULSE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLING, :FRUSTRATION, :GASTROACID, :GIGAIMPACT, :GYROBALL, :HEATCRASH, :HEATWAVE, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LASHOUT, :LASTRESORT, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNARL, :SNORE, :STEELROLLER, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :THIEF, :TOXIC, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        5.5
  s.weight        888.0
  s.color         :Black
  s.shape         :BipedalTail
  s.category      "Junkivore"
  s.pokedex_entry "A dangerous Ultra Beast, it appears to be eating constantly, but for some reason its droppings have never been found."
  s.generation    7
  s.flags         :UltraBeast
end

GameData::Species.define :NICKIT do |s|
  s.name          "Nickit"
  s.types         :DARK
  s.base_stats    hp: 40, attack: 28, defense: 28, speed: 50, sp_atk: 47, sp_def: 52
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      49
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :RUNAWAY, :UNBURDEN
  s.hidden_abilities :STAKEOUT
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 1, :TAILWHIP
    m.at 4, :BEATUP
    m.at 8, :HONECLAWS
    m.at 12, :SNARL
    m.at 16, :ASSURANCE
    m.at 20, :NASTYPLOT
    m.at 24, :SUCKERPUNCH
    m.at 28, :NIGHTSLASH
    m.at 32, :TAILSLAP
    m.at 36, :FOULPLAY
  end
  s.tutor_moves   :AGILITY, :ASSURANCE, :ATTRACT, :BATONPASS, :BEATUP, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :ENDURE, :FACADE, :FAKETEARS, :FOULPLAY, :FRUSTRATION, :HIDDENPOWER, :LASHOUT, :MIMIC, :MUDSHOT, :NASTYPLOT, :NATURALGIFT, :PLAYROUGH, :PROTECT, :REST, :RETURN, :ROUND, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAILSLAP, :TAUNT, :THIEF, :TOXIC, :TERABLAST
  s.egg_moves     :HOWL, :KNOCKOFF, :QUICKGUARD, :TORMENT
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.6
  s.weight        8.9
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Fox"
  s.pokedex_entry "Aided by the soft pads on its feet, it silently raids the food stores of other Pokémon. It survives off its ill-gotten gains."
  s.generation    8
  s.evolves_into  :THIEVUL, :Level, 18
end

GameData::Species.define :THIEVUL do |s|
  s.name          "Thievul"
  s.types         :DARK
  s.base_stats    hp: 70, attack: 58, defense: 58, speed: 90, sp_atk: 87, sp_def: 92
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      159
  s.catch_rate    127
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :RUNAWAY, :UNBURDEN
  s.hidden_abilities :STAKEOUT
  s.moves do |m|
    m.at 0, :THIEF
    m.at 1, :QUICKATTACK
    m.at 1, :TAILWHIP
    m.at 1, :BEATUP
    m.at 1, :HONECLAWS
    m.at 12, :SNARL
    m.at 16, :ASSURANCE
    m.at 22, :NASTYPLOT
    m.at 28, :SUCKERPUNCH
    m.at 34, :NIGHTSLASH
    m.at 40, :TAILSLAP
    m.at 46, :FOULPLAY
    m.at 52, :PARTINGSHOT
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :ASSURANCE, :ATTRACT, :BATONPASS, :BEATUP, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :CRUNCH, :DARKPULSE, :DIG, :DOUBLETEAM, :ENDURE, :FACADE, :FAKETEARS, :FIREFANG, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HYPERBEAM, :ICEFANG, :LASHOUT, :MIMIC, :MUDSHOT, :NASTYPLOT, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SNARL, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAILSLAP, :TAUNT, :THIEF, :THUNDERFANG, :TOXIC, :UTURN, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        1.2
  s.weight        19.9
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Fox"
  s.pokedex_entry "It secretly marks potential targets with a scent. By following the scent, it stalks its targets and steals from them when they least expect it."
  s.generation    8
end

GameData::Species.define :IMPIDIMP do |s|
  s.name          "Impidimp"
  s.types         :DARK, :FAIRY
  s.base_stats    hp: 45, attack: 45, defense: 30, speed: 50, sp_atk: 55, sp_def: 40
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Medium
  s.base_exp      53
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :PRANKSTER, :FRISK
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 1, :FAKEOUT
    m.at 1, :CONFIDE
    m.at 4, :BITE
    m.at 8, :FLATTER
    m.at 12, :FAKETEARS
    m.at 16, :ASSURANCE
    m.at 20, :SWAGGER
    m.at 24, :SUCKERPUNCH
    m.at 28, :TORMENT
    m.at 33, :DARKPULSE
    m.at 36, :NASTYPLOT
    m.at 40, :PLAYROUGH
    m.at 44, :FOULPLAY
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :ENDURE, :FACADE, :FAKETEARS, :FOULPLAY, :FRUSTRATION, :HIDDENPOWER, :LASHOUT, :LEECHLIFE, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PLAYROUGH, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :TAUNT, :THIEF, :THUNDERWAVE, :TOXIC, :TRICK, :UPROAR, :TERABLAST
  s.egg_groups    :Fairy, :Humanlike
  s.hatch_steps   5120
  s.height        0.4
  s.weight        5.5
  s.color         :Pink
  s.shape         :Bipedal
  s.category      "Wily"
  s.pokedex_entry "Through its nose, it sucks in the emanations produced by people and Pokémon when they feel annoyed. It thrives off this negative energy."
  s.generation    8
  s.evolves_into  :MORGREM, :Level, 32
end

GameData::Species.define :MORGREM do |s|
  s.name          "Morgrem"
  s.types         :DARK, :FAIRY
  s.base_stats    hp: 65, attack: 60, defense: 45, speed: 70, sp_atk: 75, sp_def: 55
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Medium
  s.base_exp      130
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :PRANKSTER, :FRISK
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 0, :FALSESURRENDER
    m.at 1, :FAKEOUT
    m.at 1, :CONFIDE
    m.at 1, :BITE
    m.at 1, :FLATTER
    m.at 12, :FAKETEARS
    m.at 16, :ASSURANCE
    m.at 20, :SWAGGER
    m.at 24, :SUCKERPUNCH
    m.at 28, :TORMENT
    m.at 35, :DARKPULSE
    m.at 40, :NASTYPLOT
    m.at 46, :PLAYROUGH
    m.at 52, :FOULPLAY
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :ENDURE, :FACADE, :FAKETEARS, :FOULPLAY, :FRUSTRATION, :HIDDENPOWER, :LASHOUT, :LEECHLIFE, :LIGHTSCREEN, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PLAYROUGH, :PROTECT, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :TAUNT, :THIEF, :THROATCHOP, :THUNDERWAVE, :TOXIC, :TRICK, :UPROAR, :TERABLAST
  s.egg_groups    :Fairy, :Humanlike
  s.hatch_steps   5120
  s.height        0.8
  s.weight        12.5
  s.color         :Pink
  s.shape         :Bipedal
  s.category      "Devious"
  s.pokedex_entry "With sly cunning, it tries to lure people into the woods. Some believe it to have the power to make crops grow."
  s.generation    8
  s.evolves_into  :GRIMMSNARL, :Level, 42
end

GameData::Species.define :GRIMMSNARL do |s|
  s.name          "Grimmsnarl"
  s.types         :DARK, :FAIRY
  s.base_stats    hp: 95, attack: 120, defense: 65, speed: 60, sp_atk: 95, sp_def: 75
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Medium
  s.base_exp      255
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :PRANKSTER, :FRISK
  s.hidden_abilities :PICKPOCKET
  s.moves do |m|
    m.at 0, :SPIRITBREAK
    m.at 1, :FALSESURRENDER
    m.at 1, :BULKUP
    m.at 1, :POWERUPPUNCH
    m.at 1, :FAKEOUT
    m.at 1, :CONFIDE
    m.at 1, :BITE
    m.at 1, :FLATTER
    m.at 12, :FAKETEARS
    m.at 16, :ASSURANCE
    m.at 20, :SWAGGER
    m.at 24, :SUCKERPUNCH
    m.at 28, :TORMENT
    m.at 35, :DARKPULSE
    m.at 40, :NASTYPLOT
    m.at 48, :PLAYROUGH
    m.at 56, :FOULPLAY
    m.at 64, :HAMMERARM
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULKUP, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :CRUNCH, :DARKESTLARIAT, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :ENDURE, :FACADE, :FAKETEARS, :FIREPUNCH, :FOCUSBLAST, :FOCUSENERGY, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :LASHOUT, :LEECHLIFE, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PLAYROUGH, :POWERSWAP, :POWERWHIP, :PROTECT, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :THROATCHOP, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :TRICK, :UPROAR, :WONDERROOM, :TERABLAST
  s.egg_groups    :Fairy, :Humanlike
  s.hatch_steps   5120
  s.height        1.5
  s.weight        61.0
  s.color         :Purple
  s.shape         :Bipedal
  s.category      "Bulk Up"
  s.pokedex_entry "Its hairs work like muscle fibers. When its hairs unfurl, they latch on to opponents, ensnaring them as tentacles would."
  s.generation    8
end

GameData::Species.define :OBSTAGOON do |s|
  s.name          "Obstagoon"
  s.types         :DARK, :NORMAL
  s.base_stats    hp: 93, attack: 90, defense: 101, speed: 95, sp_atk: 60, sp_def: 81
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      260
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 3
  s.abilities     :RECKLESS, :GUTS
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 0, :OBSTRUCT
    m.at 1, :CROSSCHOP
    m.at 1, :SUBMISSION
    m.at 1, :NIGHTSLASH
    m.at 1, :SWITCHEROO
    m.at 1, :PINMISSILE
    m.at 1, :BABYDOLLEYES
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :SANDATTACK
    m.at 1, :LICK
    m.at 9, :SNARL
    m.at 12, :HEADBUTT
    m.at 15, :HONECLAWS
    m.at 18, :FURYSWIPES
    m.at 23, :REST
    m.at 28, :TAKEDOWN
    m.at 35, :SCARYFACE
    m.at 42, :COUNTER
    m.at 49, :TAUNT
    m.at 56, :DOUBLEEDGE
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CROSSPOISON, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FAKETEARS, :FIREPUNCH, :FLING, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONDEFENSE, :IRONTAIL, :LASHOUT, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSHOT, :NATURALGIFT, :PAYBACK, :PINMISSILE, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SNARL, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRICK, :WHIRLPOOL, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_moves     :KNOCKOFF, :PARTINGSHOT, :QUICKGUARD
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        1.6
  s.weight        46.0
  s.color         :Gray
  s.shape         :BipedalTail
  s.category      "Blocking"
  s.pokedex_entry "It evolved after experiencing numerous fights. While crossing its arms, it lets out a shout that would make any opponent flinch."
  s.generation    8
  s.flags         :DefaultForm_1, :InheritFormWithEverStone
end

GameData::Species.define :ZARUDE do |s|
  s.name          "Zarude"
  s.types         :DARK, :GRASS
  s.base_stats    hp: 105, attack: 120, defense: 105, speed: 105, sp_atk: 70, sp_def: 95
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :LEAFGUARD
  s.moves do |m|
    m.at 1, :BIND
    m.at 1, :SCRATCH
    m.at 6, :LEER
    m.at 12, :VINEWHIP
    m.at 18, :GROWTH
    m.at 24, :FURYSWIPES
    m.at 30, :SCARYFACE
    m.at 36, :GRASSKNOT
    m.at 42, :BITE
    m.at 48, :UTURN
    m.at 54, :SWAGGER
    m.at 60, :ENERGYBALL
    m.at 66, :SYNTHESIS
    m.at 72, :HAMMERARM
    m.at 78, :THRASH
    m.at 84, :POWERWHIP
    m.at 90, :JUNGLEHEALING
  end
  s.tutor_moves   :ACROBATICS, :ASSURANCE, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLETSEED, :CLOSECOMBAT, :CONFIDE, :CRUNCH, :DARKESTLARIAT, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAINPUNCH, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FLING, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IRONTAIL, :LASHOUT, :LOWKICK, :MAGICALLEAF, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSHOT, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POWERWHIP, :PROTECT, :REST, :RETURN, :REVENGE, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNARL, :SNORE, :SOLARBEAM, :SOLARBLADE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THROATCHOP, :TOXIC, :UTURN, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.8
  s.weight        70.0
  s.color         :Black
  s.shape         :BipedalTail
  s.category      "Rogue Monkey"
  s.pokedex_entry "Once the vines on Zarude's body tear off, they become nutrients in the soil. This helps the plants of the forest grow."
  s.generation    8
  s.flags         :Mythical
end

