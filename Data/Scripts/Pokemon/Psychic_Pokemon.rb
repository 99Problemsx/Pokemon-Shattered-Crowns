#===============================================================================
# Shattered Crowns - Psychic Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :ABRA do |s|
  s.name          "Abra"
  s.types         :PSYCHIC
  s.base_stats    hp: 25, attack: 20, defense: 15, speed: 90, sp_atk: 105, sp_def: 55
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    200
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :SYNCHRONIZE, :INNERFOCUS
  s.hidden_abilities :MAGICGUARD
  s.moves do |m|
    m.at 1, :TELEPORT
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :EMBARGO, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :HEADBUTT, :HIDDENPOWER, :ICEPUNCH, :IRONTAIL, :KNOCKOFF, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :NATURALGIFT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SPEEDSWAP, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRIATTACK, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ALLYSWITCH, :CONFUSION, :ENCORE, :FIREPUNCH, :GUARDSPLIT, :GUARDSWAP, :ICEPUNCH, :KNOCKOFF, :MAGICCOAT, :POWERTRICK, :PSYCHOSHIFT, :THUNDERPUNCH
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        0.9
  s.weight        19.5
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :Urban
  s.category      "Psi"
  s.pokedex_entry "A Pokémon that sleeps 18 hours a day. Observation revealed that it uses Teleport to change its location once every hour."
  s.generation    1
  s.evolves_into  :KADABRA, :Level, 16
  s.wild_item_uncommon :TWISTEDSPOON
end

GameData::Species.define :KADABRA do |s|
  s.name          "Kadabra"
  s.types         :PSYCHIC
  s.base_stats    hp: 40, attack: 35, defense: 30, speed: 105, sp_atk: 120, sp_def: 70
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Parabolic
  s.base_exp      140
  s.catch_rate    100
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :SYNCHRONIZE, :INNERFOCUS
  s.hidden_abilities :MAGICGUARD
  s.moves do |m|
    m.at 0, :CONFUSION
    m.at 1, :KINESIS
    m.at 1, :DISABLE
    m.at 1, :TELEPORT
    m.at 5, :PSYBEAM
    m.at 10, :REFLECT
    m.at 15, :ALLYSWITCH
    m.at 20, :PSYCHOCUT
    m.at 25, :RECOVER
    m.at 30, :PSYSHOCK
    m.at 35, :PSYCHIC
    m.at 40, :ROLEPLAY
    m.at 45, :FUTURESIGHT
    m.at 50, :CALMMIND
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :EMBARGO, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :HEADBUTT, :HIDDENPOWER, :ICEPUNCH, :IRONTAIL, :KNOCKOFF, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :NATURALGIFT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SPEEDSWAP, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRIATTACK, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.3
  s.weight        56.5
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :Urban
  s.category      "Psi"
  s.pokedex_entry "It is rumored that a boy with psychic abilities suddenly transformed into Kadabra while he was assisting research into extrasensory powers."
  s.generation    1
  s.evolves_into  :ALAKAZAM, :Trade
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :TWISTEDSPOON
end

GameData::Species.define :ALAKAZAM do |s|
  s.name          "Alakazam"
  s.types         :PSYCHIC
  s.base_stats    hp: 55, attack: 50, defense: 45, speed: 120, sp_atk: 135, sp_def: 95
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Parabolic
  s.base_exp      250
  s.catch_rate    50
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :SYNCHRONIZE, :INNERFOCUS
  s.hidden_abilities :MAGICGUARD
  s.moves do |m|
    m.at 1, :CONFUSION
    m.at 1, :KINESIS
    m.at 1, :DISABLE
    m.at 1, :TELEPORT
    m.at 5, :PSYBEAM
    m.at 10, :REFLECT
    m.at 15, :ALLYSWITCH
    m.at 20, :PSYCHOCUT
    m.at 25, :RECOVER
    m.at 30, :PSYSHOCK
    m.at 35, :PSYCHIC
    m.at 40, :ROLEPLAY
    m.at 45, :FUTURESIGHT
    m.at 50, :CALMMIND
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :EMBARGO, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :IMPRISON, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :NASTYPLOT, :NATURALGIFT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SPEEDSWAP, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRIATTACK, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.5
  s.weight        48.0
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Psi"
  s.pokedex_entry "While it has strong psychic abilities and high intelligence, an Alakazam's muscles are very weak. It uses psychic power to move its body."
  s.generation    1
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :TWISTEDSPOON
end

GameData::Species.define :DROWZEE do |s|
  s.name          "Drowzee"
  s.types         :PSYCHIC
  s.base_stats    hp: 60, attack: 48, defense: 45, speed: 42, sp_atk: 43, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      66
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :INSOMNIA, :FOREWARN
  s.hidden_abilities :INNERFOCUS
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :HYPNOSIS
    m.at 5, :DISABLE
    m.at 9, :CONFUSION
    m.at 13, :HEADBUTT
    m.at 17, :POISONGAS
    m.at 21, :HYPNOSIS
    m.at 25, :PSYBEAM
    m.at 29, :MINDREADER
    m.at 33, :PSYCHUP
    m.at 37, :HYPNOSIS
    m.at 41, :ZENHEADBUTT
    m.at 45, :SWAGGER
    m.at 49, :PSYCHIC
    m.at 53, :NASTYPLOT
    m.at 57, :PSYSHOCK
    m.at 61, :FUTURESIGHT
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :ICEPUNCH, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :NASTYPLOT, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :FIREPUNCH, :FLATTER, :GUARDSWAP, :ICEPUNCH, :POWERSPLIT, :PSYCHOCUT, :ROLEPLAY, :THUNDERPUNCH
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.0
  s.weight        32.4
  s.color         :Yellow
  s.shape         :Bipedal
  s.habitat       :Grassland
  s.category      "Hypnosis"
  s.pokedex_entry "If your nose becomes itchy while you are sleeping, it's a sure sign that a Drowzee is standing above your pillow and trying to eat your dream through your nostrils."
  s.generation    1
  s.evolves_into  :HYPNO, :Level, 26
end

GameData::Species.define :HYPNO do |s|
  s.name          "Hypno"
  s.types         :PSYCHIC
  s.base_stats    hp: 85, attack: 73, defense: 70, speed: 67, sp_atk: 73, sp_def: 115
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      169
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :INSOMNIA, :FOREWARN
  s.hidden_abilities :INNERFOCUS
  s.moves do |m|
    m.at 1, :FUTURESIGHT
    m.at 1, :NASTYPLOT
    m.at 1, :SWITCHEROO
    m.at 1, :POUND
    m.at 1, :HYPNOSIS
    m.at 1, :DISABLE
    m.at 1, :CONFUSION
    m.at 5, :DISABLE
    m.at 9, :CONFUSION
    m.at 13, :HEADBUTT
    m.at 17, :POISONGAS
    m.at 21, :HYPNOSIS
    m.at 25, :PSYBEAM
    m.at 29, :MINDREADER
    m.at 33, :PSYCHUP
    m.at 37, :HYPNOSIS
    m.at 41, :ZENHEADBUTT
    m.at 45, :SWAGGER
    m.at 49, :PSYCHIC
    m.at 53, :NASTYPLOT
    m.at 57, :PSYSHOCK
    m.at 61, :FUTURESIGHT
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :NASTYPLOT, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.6
  s.weight        75.6
  s.color         :Yellow
  s.shape         :Bipedal
  s.habitat       :Grassland
  s.category      "Hypnosis"
  s.pokedex_entry "The arcing movement and glitter of the pendulum in a Hypno's hand lull the foe into deep hypnosis. While searching for prey, it polishes the pendulum."
  s.generation    1
  s.flags         :HasGenderedSprites
end

GameData::Species.define :MRMIME do |s|
  s.name          "Mr. Mime"
  s.types         :PSYCHIC, :FAIRY
  s.base_stats    hp: 40, attack: 45, defense: 65, speed: 90, sp_atk: 100, sp_def: 120
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      161
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :SOUNDPROOF, :FILTER
  s.hidden_abilities :TECHNICIAN
  s.moves do |m|
    m.at 1, :QUICKGUARD
    m.at 1, :WIDEGUARD
    m.at 1, :POWERSWAP
    m.at 1, :GUARDSWAP
    m.at 1, :POUND
    m.at 1, :COPYCAT
    m.at 1, :BATONPASS
    m.at 1, :ENCORE
    m.at 12, :CONFUSION
    m.at 16, :ROLEPLAY
    m.at 20, :PROTECT
    m.at 24, :RECYCLE
    m.at 28, :PSYBEAM
    m.at 32, :MIMIC
    m.at 36, :LIGHTSCREEN
    m.at 36, :REFLECT
    m.at 36, :SAFEGUARD
    m.at 40, :SUCKERPUNCH
    m.at 44, :DAZZLINGGLEAM
    m.at 48, :PSYCHIC
    m.at 52, :TEETERDANCE
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :ATTRACT, :BATONPASS, :BODYSLAM, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COUNTER, :COVET, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GUARDSWAP, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :ICYWIND, :INFESTATION, :IRONDEFENSE, :LIGHTSCREEN, :MAGICALLEAF, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MISTYTERRAIN, :MUDSLAP, :MYSTICALFIRE, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POWERSWAP, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :UPROAR, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :CHARM, :CONFUSERAY, :FAKEOUT, :FUTURESIGHT, :HEALINGWISH, :HYPNOSIS, :ICYWIND, :MAGICROOM, :MIMIC, :POWERSPLIT, :TEETERDANCE, :TICKLE, :TRICK
  s.egg_groups    :Humanlike
  s.hatch_steps   6400
  s.height        1.3
  s.weight        54.5
  s.color         :Pink
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Barrier"
  s.pokedex_entry "A Mr. Mime is a master of pantomime. It can convince others that something unseeable actually exists. Once believed, the imaginary object does become real."
  s.generation    1
  s.evolves_into  :MRRIME, :None
end

GameData::Species.define :MEWTWO do |s|
  s.name          "Mewtwo"
  s.types         :PSYCHIC
  s.base_stats    hp: 106, attack: 110, defense: 90, speed: 130, sp_atk: 154, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    3
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :PRESSURE
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 1, :LIFEDEW
    m.at 1, :LASERFOCUS
    m.at 1, :DISABLE
    m.at 1, :CONFUSION
    m.at 1, :SWIFT
    m.at 8, :ANCIENTPOWER
    m.at 16, :PSYCHOCUT
    m.at 24, :SAFEGUARD
    m.at 32, :AMNESIA
    m.at 40, :AURASPHERE
    m.at 48, :PSYCHIC
    m.at 56, :POWERSWAP
    m.at 56, :GUARDSWAP
    m.at 64, :MIST
    m.at 72, :PSYSTRIKE
    m.at 80, :RECOVER
    m.at 88, :FUTURESIGHT
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ALLYSWITCH, :AMNESIA, :AQUATAIL, :AURASPHERE, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COUNTER, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :EARTHQUAKE, :ELECTROBALL, :EMBARGO, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :HAIL, :HEADBUTT, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYDAY, :POISONJAB, :POWERSWAP, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :SPEEDSWAP, :STONEEDGE, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRIATTACK, :TRICK, :TRICKROOM, :WATERPULSE, :WILLOWISP, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        2.0
  s.weight        122.0
  s.color         :Purple
  s.shape         :BipedalTail
  s.habitat       :Rare
  s.category      "Genetic"
  s.pokedex_entry "A Pokémon that was created by genetic manipulation. However, even though the scientific power of humans made its body, they failed to give it a warm heart."
  s.generation    1
  s.flags         :Legendary
end

GameData::Species.define :MEW do |s|
  s.name          "Mew"
  s.types         :PSYCHIC
  s.base_stats    hp: 100, attack: 100, defense: 100, speed: 100, sp_atk: 100, sp_def: 100
  s.gender_ratio  :Genderless
  s.growth_rate   :Parabolic
  s.base_exp      300
  s.catch_rate    45
  s.happiness     100
  s.evs           hp: 3
  s.abilities     :SYNCHRONIZE
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :REFLECTTYPE
    m.at 10, :AMNESIA
    m.at 20, :BATONPASS
    m.at 30, :ANCIENTPOWER
    m.at 40, :LIFEDEW
    m.at 50, :NASTYPLOT
    m.at 60, :METRONOME
    m.at 70, :IMPRISON
    m.at 80, :TRANSFORM
    m.at 90, :AURASPHERE
    m.at 100, :PSYCHIC
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AFTERYOU, :AGILITY, :AIRCUTTER, :AIRSLASH, :ALLYSWITCH, :AMNESIA, :ANCIENTPOWER, :AQUATAIL, :ASSURANCE, :ATTRACT, :AURASPHERE, :AURORAVEIL, :AVALANCHE, :BATONPASS, :BEATUP, :BIND, :BLAZEKICK, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BOUNCE, :BRAVEBIRD, :BREAKINGSWIPE, :BRICKBREAK, :BRINE, :BRUTALSWING, :BUGBITE, :BUGBUZZ, :BULKUP, :BULLDOZE, :BULLETSEED, :BURNINGJEALOUSY, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CLOSECOMBAT, :COACHING, :CONFIDE, :CORROSIVEGAS, :COSMICPOWER, :COUNTER, :COVET, :CROSSPOISON, :CRUNCH, :CUT, :DARKESTLARIAT, :DARKPULSE, :DAZZLINGGLEAM, :DEFENSECURL, :DEFOG, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :DRILLRUN, :DUALCHOP, :DUALWINGBEAT, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :EMBARGO, :ENCORE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :EXPLOSION, :FACADE, :FAKETEARS, :FALSESWIPE, :FIREBLAST, :FIREFANG, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLASH, :FLASHCANNON, :FLING, :FLIPTURN, :FLY, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FOULPLAY, :FROSTBREATH, :FRUSTRATION, :FURYCUTTER, :FUTURESIGHT, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :GRAVITY, :GUARDSWAP, :GUNKSHOT, :GYROBALL, :HAIL, :HEADBUTT, :HEALBELL, :HEATCRASH, :HEATWAVE, :HEAVYSLAM, :HELPINGHAND, :HEX, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEFANG, :ICEPUNCH, :ICICLESPEAR, :ICYWIND, :IMPRISON, :INCINERATE, :INFESTATION, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LASHOUT, :LASTRESORT, :LEAFBLADE, :LEAFSTORM, :LEECHLIFE, :LIGHTSCREEN, :LIQUIDATION, :LOWKICK, :LOWSWEEP, :MAGICALLEAF, :MAGICCOAT, :MAGICROOM, :MAGNETRISE, :MEGAHORN, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :METRONOME, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :MYSTICALFIRE, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :OMINOUSWIND, :OUTRAGE, :OVERHEAT, :PAINSPLIT, :PAYBACK, :PAYDAY, :PHANTOMFORCE, :PINMISSILE, :PLAYROUGH, :PLUCK, :POISONJAB, :POLLENPUFF, :POLTERGEIST, :POWERGEM, :POWERSWAP, :POWERUPPUNCH, :POWERWHIP, :PROTECT, :PSYCHIC, :PSYCHICFANGS, :PSYCHICTERRAIN, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :QUASH, :RAINDANCE, :RAZORSHELL, :RECYCLE, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :RISINGVOLTAGE, :ROAR, :ROCKBLAST, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROLLOUT, :ROOST, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SCALD, :SCALESHOT, :SCARYFACE, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SELFDESTRUCT, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SIGNALBEAM, :SILVERWIND, :SKILLSWAP, :SKITTERSMACK, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SMARTSTRIKE, :SNARL, :SNATCH, :SNORE, :SOFTBOILED, :SOLARBEAM, :SOLARBLADE, :SPEEDSWAP, :SPIKES, :SPITE, :STEALTHROCK, :STEELROLLER, :STEELWING, :STOMPINGTANTRUM, :STONEEDGE, :STOREDPOWER, :STRENGTH, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SUPERPOWER, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :TAILSLAP, :TAILWIND, :TAUNT, :TELEKINESIS, :TERRAINPULSE, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TOXIC, :TOXICSPIKES, :TRIATTACK, :TRICK, :TRICKROOM, :TRIPLEAXEL, :TWISTER, :UPROAR, :UTURN, :VACUUMWAVE, :VENOMDRENCH, :VENOSHOCK, :VOLTSWITCH, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :WILDCHARGE, :WILLOWISP, :WONDERROOM, :WORKUP, :WORRYSEED, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.4
  s.weight        4.0
  s.color         :Pink
  s.shape         :BipedalTail
  s.habitat       :Rare
  s.category      "New Species"
  s.pokedex_entry "A Mew is said to possess the genes of all Pokémon. It is capable of making itself invisible at will, so it entirely avoids notice even if it approaches people."
  s.generation    1
  s.flags         :Mythical
  s.wild_item_common   :LUMBERRY
  s.wild_item_uncommon :LUMBERRY
  s.wild_item_rare     :LUMBERRY
end

GameData::Species.define :NATU do |s|
  s.name          "Natu"
  s.types         :PSYCHIC, :FLYING
  s.base_stats    hp: 40, attack: 50, defense: 45, speed: 70, sp_atk: 70, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      64
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :SYNCHRONIZE, :EARLYBIRD
  s.hidden_abilities :MAGICBOUNCE
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :LEER
    m.at 5, :STOREDPOWER
    m.at 10, :TELEPORT
    m.at 15, :CONFUSERAY
    m.at 20, :NIGHTSHADE
    m.at 26, :PSYCHOSHIFT
    m.at 30, :POWERSWAP
    m.at 35, :GUARDSWAP
    m.at 35, :PSYCHIC
    m.at 40, :WISH
    m.at 45, :FUTURESIGHT
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :AIRSLASH, :ALLYSWITCH, :ATTRACT, :BATONPASS, :CALMMIND, :CAPTIVATE, :CONFIDE, :COSMICPOWER, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DUALWINGBEAT, :ENDURE, :EXPANDINGFORCE, :FACADE, :FLASH, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GRASSKNOT, :GUARDSWAP, :HEATWAVE, :HIDDENPOWER, :IMPRISON, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PLUCK, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SILVERWIND, :SKILLSWAP, :SKYATTACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THIEF, :THUNDERWAVE, :TRICK, :TRICKROOM, :TWISTER, :UTURN, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ALLYSWITCH, :DRILLPECK, :FEATHERDANCE, :HAZE, :QUICKATTACK, :ROOST, :SIMPLEBEAM, :SUCKERPUNCH, :ZENHEADBUTT
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        0.2
  s.weight        2.0
  s.color         :Green
  s.shape         :Winged
  s.habitat       :Forest
  s.category      "Tiny Bird"
  s.pokedex_entry "It runs up short trees that grow on the savanna to peck at new shoots. A Natu's eyes look as if they are always observing something."
  s.generation    2
  s.evolves_into  :XATU, :Level, 25
end

GameData::Species.define :XATU do |s|
  s.name          "Xatu"
  s.types         :PSYCHIC, :FLYING
  s.base_stats    hp: 65, attack: 75, defense: 70, speed: 95, sp_atk: 95, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      165
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_attack: 1, speed: 1
  s.abilities     :SYNCHRONIZE, :EARLYBIRD
  s.hidden_abilities :MAGICBOUNCE
  s.moves do |m|
    m.at 0, :AIRSLASH
    m.at 1, :TAILWIND
    m.at 1, :PECK
    m.at 1, :LEER
    m.at 1, :STOREDPOWER
    m.at 1, :TELEPORT
    m.at 15, :CONFUSERAY
    m.at 20, :NIGHTSHADE
    m.at 28, :PSYCHOSHIFT
    m.at 34, :POWERSWAP
    m.at 34, :GUARDSWAP
    m.at 41, :PSYCHIC
    m.at 48, :WISH
    m.at 55, :FUTURESIGHT
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :AIRSLASH, :ALLYSWITCH, :ATTRACT, :BATONPASS, :CALMMIND, :CAPTIVATE, :CONFIDE, :COSMICPOWER, :DAZZLINGGLEAM, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DUALWINGBEAT, :ENDURE, :EXPANDINGFORCE, :FACADE, :FLASH, :FLY, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GUARDSWAP, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PAINSPLIT, :PLUCK, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SILVERWIND, :SKILLSWAP, :SKYATTACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THIEF, :THUNDERWAVE, :TRICK, :TRICKROOM, :TWISTER, :UTURN, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        1.5
  s.weight        15.0
  s.color         :Green
  s.shape         :Winged
  s.habitat       :Forest
  s.category      "Mystic"
  s.pokedex_entry "It has the enigmatic power of foreseeing the future. Some people in different lands have long believed that Xatu are emissaries from another world."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :ESPEON do |s|
  s.name          "Espeon"
  s.types         :PSYCHIC
  s.base_stats    hp: 65, attack: 65, defense: 60, speed: 110, sp_atk: 130, sp_def: 95
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      184
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :SYNCHRONIZE
  s.hidden_abilities :MAGICBOUNCE
  s.moves do |m|
    m.at 0, :CONFUSION
    m.at 1, :COVET
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
    m.at 20, :SWIFT
    m.at 25, :PSYBEAM
    m.at 30, :MORNINGSUN
    m.at 35, :POWERSWAP
    m.at 40, :PSYCHIC
    m.at 45, :PSYCHUP
    m.at 50, :FUTURESIGHT
    m.at 55, :LASTRESORT
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BATONPASS, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CUT, :DAZZLINGGLEAM, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FLASH, :FOCUSENERGY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYDAY, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICFANGS, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROUND, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :TRICK, :TRICKROOM, :WEATHERBALL, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   8960
  s.height        0.9
  s.weight        26.5
  s.color         :Purple
  s.shape         :Quadruped
  s.habitat       :Urban
  s.category      "Sun"
  s.pokedex_entry "An Espeon is extremely loyal to any trainer it considers to be worthy. It is said to have developed precognitive powers to protect its trainer from harm."
  s.generation    2
end

GameData::Species.define :UNOWN do |s|
  s.name          "Unown"
  s.types         :PSYCHIC
  s.base_stats    hp: 48, attack: 72, defense: 48, speed: 48, sp_atk: 72, sp_def: 48
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      118
  s.catch_rate    225
  s.happiness     50
  s.evs           attack: 1, sp_attack: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :HIDDENPOWER
  end
  s.tutor_moves   :HIDDENPOWER
  s.egg_groups    :Undiscovered
  s.hatch_steps   10240
  s.height        0.5
  s.weight        5.0
  s.color         :Black
  s.shape         :Head
  s.habitat       :Rare
  s.category      "Symbol"
  s.pokedex_entry "This Pokémon is shaped like ancient text characters. Although research is ongoing, it is a mystery as to which came first, the ancient writings or the various Unown."
  s.generation    2
end

GameData::Species.define :WOBBUFFET do |s|
  s.name          "Wobbuffet"
  s.types         :PSYCHIC
  s.base_stats    hp: 190, attack: 33, defense: 58, speed: 33, sp_atk: 33, sp_def: 58
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :SHADOWTAG
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 0, :COUNTER
    m.at 0, :MIRRORCOAT
    m.at 0, :SAFEGUARD
    m.at 0, :DESTINYBOND
    m.at 1, :SPLASH
    m.at 1, :CHARM
    m.at 1, :ENCORE
    m.at 1, :AMNESIA
  end
  s.tutor_moves   :AMNESIA, :CHARM, :ENCORE, :SAFEGUARD
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        1.3
  s.weight        28.5
  s.color         :Blue
  s.shape         :HeadBase
  s.habitat       :Cave
  s.category      "Patient"
  s.pokedex_entry "Usually docile, a Wobbuffet strikes back ferociously if its black tail is attacked. It makes its lair in caves where it waits for nightfall."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :LUGIA do |s|
  s.name          "Lugia"
  s.types         :PSYCHIC, :FLYING
  s.base_stats    hp: 106, attack: 90, defense: 130, speed: 110, sp_atk: 90, sp_def: 154
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    3
  s.happiness     0
  s.evs           sp_defense: 3
  s.abilities     :PRESSURE
  s.hidden_abilities :MULTISCALE
  s.moves do |m|
    m.at 1, :DRAGONRUSH
    m.at 1, :GUST
    m.at 1, :WHIRLWIND
    m.at 1, :WEATHERBALL
    m.at 1, :ANCIENTPOWER
    m.at 9, :MIST
    m.at 18, :SAFEGUARD
    m.at 27, :CALMMIND
    m.at 36, :EXTRASENSORY
    m.at 45, :RECOVER
    m.at 54, :AEROBLAST
    m.at 63, :RAINDANCE
    m.at 72, :HYDROPUMP
    m.at 81, :FUTURESIGHT
    m.at 90, :SKYATTACK
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :AIRSLASH, :ANCIENTPOWER, :AQUATAIL, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRINE, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :DEFOG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :DRAGONTAIL, :DREAMEATER, :DUALWINGBEAT, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FLASH, :FLY, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GIGAIMPACT, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IMPRISON, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROOST, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALESHOT, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SNORE, :STEELWING, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICK, :TWISTER, :WATERFALL, :WATERPULSE, :WEATHERBALL, :WHIRLPOOL, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        5.2
  s.weight        216.0
  s.color         :White
  s.shape         :Winged
  s.habitat       :Rare
  s.category      "Diving"
  s.pokedex_entry "Lugia is so powerful even a light fluttering of its wings can blow apart houses. As a result, it chooses to live out of sight deep under the sea."
  s.generation    2
  s.flags         :Legendary
end

GameData::Species.define :CELEBI do |s|
  s.name          "Celebi"
  s.types         :PSYCHIC, :GRASS
  s.base_stats    hp: 100, attack: 100, defense: 100, speed: 100, sp_atk: 100, sp_def: 100
  s.gender_ratio  :Genderless
  s.growth_rate   :Parabolic
  s.base_exp      300
  s.catch_rate    45
  s.happiness     100
  s.evs           hp: 3
  s.abilities     :NATURALCURE
  s.moves do |m|
    m.at 1, :CONFUSION
    m.at 1, :HEALBELL
    m.at 10, :MAGICALLEAF
    m.at 20, :BATONPASS
    m.at 30, :ANCIENTPOWER
    m.at 40, :LIFEDEW
    m.at 50, :LEECHSEED
    m.at 60, :RECOVER
    m.at 70, :FUTURESIGHT
    m.at 80, :HEALINGWISH
    m.at 90, :LEAFSTORM
    m.at 100, :PERISHSONG
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :ANCIENTPOWER, :AURASPHERE, :BATONPASS, :CALMMIND, :CHARGEBEAM, :CONFIDE, :CUT, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DUALWINGBEAT, :EARTHPOWER, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FLASH, :FLING, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :LASERFOCUS, :LASTRESORT, :LEAFBLADE, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MAGICCOAT, :MAGICROOM, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :NATUREPOWER, :POLLENPUFF, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHOCUT, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SILVERWIND, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :SOLARBLADE, :STEALTHROCK, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :TELEKINESIS, :THUNDERWAVE, :TRICK, :TRICKROOM, :UPROAR, :UTURN, :WATERPULSE, :WEATHERBALL, :WONDERROOM, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.6
  s.weight        5.0
  s.color         :Green
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Time Travel"
  s.pokedex_entry "This Pokémon came from the future by crossing over time. It is thought that so long as Celebi appears, a bright and shining future awaits us."
  s.generation    2
  s.flags         :Mythical
  s.wild_item_common   :LUMBERRY
  s.wild_item_uncommon :LUMBERRY
  s.wild_item_rare     :LUMBERRY
end

GameData::Species.define :RALTS do |s|
  s.name          "Ralts"
  s.types         :PSYCHIC, :FAIRY
  s.base_stats    hp: 28, attack: 25, defense: 25, speed: 40, sp_atk: 45, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      40
  s.catch_rate    235
  s.happiness     35
  s.evs           sp_attack: 1
  s.abilities     :SYNCHRONIZE, :TRACE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :DISARMINGVOICE
    m.at 3, :DOUBLETEAM
    m.at 6, :CONFUSION
    m.at 9, :HYPNOSIS
    m.at 12, :DRAININGKISS
    m.at 15, :TELEPORT
    m.at 18, :PSYBEAM
    m.at 21, :LIFEDEW
    m.at 24, :CHARM
    m.at 27, :CALMMIND
    m.at 30, :PSYCHIC
    m.at 33, :HEALPULSE
    m.at 36, :DREAMEATER
    m.at 39, :FUTURESIGHT
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :ECHOEDVOICE, :ENCORE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FRUSTRATION, :FUTURESIGHT, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEPUNCH, :ICYWIND, :IMPRISON, :LIGHTSCREEN, :MAGICALLEAF, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MISTYTERRAIN, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :WILLOWISP, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ALLYSWITCH, :CONFUSERAY, :DESTINYBOND, :DISABLE, :ENCORE, :GRUDGE, :KNOCKOFF, :MEANLOOK, :MEMENTO, :MISTYTERRAIN, :SHADOWSNEAK
  s.egg_groups    :Humanlike, :Amorphous
  s.hatch_steps   5120
  s.height        0.4
  s.weight        6.6
  s.color         :White
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Feeling"
  s.pokedex_entry "A Ralts has the power to sense the emotions of people and Pokémon with the horns on its head. It takes cover if it senses any hostility."
  s.generation    3
  s.evolves_into  :KIRLIA, :Level, 20
end

GameData::Species.define :KIRLIA do |s|
  s.name          "Kirlia"
  s.types         :PSYCHIC, :FAIRY
  s.base_stats    hp: 38, attack: 35, defense: 35, speed: 50, sp_atk: 65, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      97
  s.catch_rate    120
  s.happiness     35
  s.evs           sp_attack: 2
  s.abilities     :SYNCHRONIZE, :TRACE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :DISARMINGVOICE
    m.at 1, :DOUBLETEAM
    m.at 1, :CONFUSION
    m.at 9, :HYPNOSIS
    m.at 12, :DRAININGKISS
    m.at 15, :TELEPORT
    m.at 18, :PSYBEAM
    m.at 23, :LIFEDEW
    m.at 28, :CHARM
    m.at 33, :CALMMIND
    m.at 38, :PSYCHIC
    m.at 43, :HEALPULSE
    m.at 48, :DREAMEATER
    m.at 53, :FUTURESIGHT
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :ECHOEDVOICE, :ENCORE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FRUSTRATION, :FUTURESIGHT, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEPUNCH, :ICYWIND, :IMPRISON, :LIGHTSCREEN, :MAGICALLEAF, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MISTYTERRAIN, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :TRIPLEAXEL, :WILLOWISP, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike, :Amorphous
  s.hatch_steps   5120
  s.height        0.8
  s.weight        20.2
  s.color         :White
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Emotion"
  s.pokedex_entry "A Kirlia has the psychic power to create a rip in the dimensions and see into the future. It is said to dance with pleasure on sunny mornings."
  s.generation    3
  s.evolves_into  :GARDEVOIR, :Level, 30
  s.evolves_into  :GALLADE, :ItemMale, DAWNSTONE
end

GameData::Species.define :GARDEVOIR do |s|
  s.name          "Gardevoir"
  s.types         :PSYCHIC, :FAIRY
  s.base_stats    hp: 68, attack: 65, defense: 65, speed: 80, sp_atk: 125, sp_def: 115
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      259
  s.catch_rate    45
  s.happiness     35
  s.evs           sp_attack: 3
  s.abilities     :SYNCHRONIZE, :TRACE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 0, :DAZZLINGGLEAM
    m.at 1, :MOONBLAST
    m.at 1, :MISTYTERRAIN
    m.at 1, :HEALINGWISH
    m.at 1, :CHARM
    m.at 1, :GROWL
    m.at 1, :DISARMINGVOICE
    m.at 1, :DOUBLETEAM
    m.at 1, :CONFUSION
    m.at 9, :HYPNOSIS
    m.at 12, :DRAININGKISS
    m.at 15, :TELEPORT
    m.at 18, :PSYBEAM
    m.at 23, :LIFEDEW
    m.at 28, :WISH
    m.at 35, :CALMMIND
    m.at 42, :PSYCHIC
    m.at 49, :HEALPULSE
    m.at 56, :DREAMEATER
    m.at 63, :FUTURESIGHT
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :ECHOEDVOICE, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GUARDSWAP, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEPUNCH, :ICYWIND, :IMPRISON, :LASERFOCUS, :LIGHTSCREEN, :MAGICALLEAF, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :MUDSLAP, :MYSTICALFIRE, :NATURALGIFT, :PAINSPLIT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :TRIPLEAXEL, :WILLOWISP, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike, :Amorphous
  s.hatch_steps   5120
  s.height        1.6
  s.weight        48.4
  s.color         :White
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Embrace"
  s.pokedex_entry "It apparently does not feel the pull of gravity because it supports itself with psychic power. It will give its life to protect its trainer."
  s.generation    3
end

GameData::Species.define :SPOINK do |s|
  s.name          "Spoink"
  s.types         :PSYCHIC
  s.base_stats    hp: 60, attack: 25, defense: 35, speed: 60, sp_atk: 70, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      66
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :THICKFAT, :OWNTEMPO
  s.hidden_abilities :GLUTTONY
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 7, :CONFUSION
    m.at 10, :GROWL
    m.at 14, :PSYBEAM
    m.at 15, :PSYCHUP
    m.at 18, :CONFUSERAY
    m.at 21, :MAGICCOAT
    m.at 26, :ZENHEADBUTT
    m.at 29, :POWERGEM
    m.at 29, :REST
    m.at 33, :SNORE
    m.at 38, :PSYSHOCK
    m.at 40, :PAYBACK
    m.at 44, :PSYCHIC
    m.at 50, :BOUNCE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :BOUNCE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COVET, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GRASSKNOT, :HEADBUTT, :HEALBELL, :HIDDENPOWER, :ICYWIND, :IRONTAIL, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AMNESIA, :EXTRASENSORY, :FUTURESIGHT, :MIRRORCOAT, :SIMPLEBEAM, :TRICK, :WHIRLWIND, :ZENHEADBUTT
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.7
  s.weight        30.6
  s.color         :Black
  s.shape         :HeadArms
  s.habitat       :Mountain
  s.category      "Bounce"
  s.pokedex_entry "A Pokémon that manipulates psychic power at will. It doesn't stop bouncing even when it is asleep. It loves eating mushrooms that grow underground."
  s.generation    3
  s.evolves_into  :GRUMPIG, :Level, 32
end

GameData::Species.define :GRUMPIG do |s|
  s.name          "Grumpig"
  s.types         :PSYCHIC
  s.base_stats    hp: 80, attack: 45, defense: 65, speed: 80, sp_atk: 90, sp_def: 110
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      165
  s.catch_rate    60
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :THICKFAT, :OWNTEMPO
  s.hidden_abilities :GLUTTONY
  s.moves do |m|
    m.at 0, :TEETERDANCE
    m.at 1, :BELCH
    m.at 1, :SPLASH
    m.at 7, :CONFUSION
    m.at 10, :GROWL
    m.at 14, :PSYBEAM
    m.at 15, :PSYCHUP
    m.at 18, :CONFUSERAY
    m.at 21, :MAGICCOAT
    m.at 26, :ZENHEADBUTT
    m.at 29, :POWERGEM
    m.at 35, :REST
    m.at 35, :SNORE
    m.at 42, :PSYSHOCK
    m.at 46, :PAYBACK
    m.at 52, :PSYCHIC
    m.at 60, :BOUNCE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :BOUNCE, :BRICKBREAK, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :COVET, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HEALBELL, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :ICYWIND, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.9
  s.weight        71.5
  s.color         :Purple
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Manipulate"
  s.pokedex_entry "It stores power in the black pearls on its forehead. When it uses psychic power, it performs an odd dance step. Its style of dancing became hugely popular overseas."
  s.generation    3
end

GameData::Species.define :CHIMECHO do |s|
  s.name          "Chimecho"
  s.types         :PSYCHIC
  s.base_stats    hp: 75, attack: 50, defense: 80, speed: 65, sp_atk: 95, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      159
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1, sp_defense: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :HEALINGWISH
    m.at 1, :WRAP
    m.at 1, :GROWL
    m.at 1, :ASTONISH
    m.at 1, :CONFUSION
    m.at 1, :LASTRESORT
    m.at 1, :ENTRAINMENT
    m.at 4, :GROWL
    m.at 7, :ASTONISH
    m.at 10, :CONFUSION
    m.at 13, :YAWN
    m.at 16, :LIGHTSCREEN
    m.at 19, :TAKEDOWN
    m.at 22, :EXTRASENSORY
    m.at 27, :HEALBELL
    m.at 32, :UPROAR
    m.at 37, :SAFEGUARD
    m.at 42, :DOUBLEEDGE
    m.at 47, :HEALPULSE
    m.at 52, :PSYCHIC
    m.at 57, :HEALINGWISH
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BIND, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GRASSKNOT, :GRAVITY, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICYWIND, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :UPROAR, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :COSMICPOWER, :CURSE, :DISABLE, :FUTURESIGHT, :HYPNOSIS, :PERISHSONG, :RECOVER, :STOREDPOWER, :WISH
  s.egg_groups    :Amorphous
  s.hatch_steps   6400
  s.height        0.6
  s.weight        1.0
  s.color         :Blue
  s.shape         :HeadArms
  s.habitat       :Grassland
  s.category      "Wind Chime"
  s.pokedex_entry "They fly about very actively when the hot season arrives. They communicate among themselves using seven different and distinguishing cries."
  s.generation    3
  s.wild_item_uncommon :CLEANSETAG
end

GameData::Species.define :WYNAUT do |s|
  s.name          "Wynaut"
  s.types         :PSYCHIC
  s.base_stats    hp: 95, attack: 23, defense: 48, speed: 23, sp_atk: 23, sp_def: 48
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      52
  s.catch_rate    125
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :SHADOWTAG
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :COUNTER
    m.at 1, :MIRRORCOAT
    m.at 1, :SAFEGUARD
    m.at 1, :DESTINYBOND
    m.at 1, :SPLASH
    m.at 1, :CHARM
    m.at 1, :ENCORE
    m.at 1, :AMNESIA
  end
  s.tutor_moves   :AMNESIA, :CHARM, :ENCORE, :SAFEGUARD
  s.egg_groups    :Undiscovered
  s.hatch_steps   5120
  s.height        0.6
  s.weight        14.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :Cave
  s.category      "Bright"
  s.pokedex_entry "A Wynaut loves to eat sweet fruits. It cleverly picks fruits using its earlike arms. They gather in fruit gardens, drawn by the fragrance."
  s.generation    3
  s.evolves_into  :WOBBUFFET, :Level, 15
end

GameData::Species.define :DEOXYS do |s|
  s.name          "Deoxys"
  s.types         :PSYCHIC
  s.base_stats    hp: 50, attack: 150, defense: 50, speed: 150, sp_atk: 150, sp_def: 50
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     0
  s.evs           attack: 1, sp_attack: 1, speed: 1
  s.abilities     :PRESSURE
  s.moves do |m|
    m.at 1, :LEER
    m.at 1, :WRAP
    m.at 7, :NIGHTSHADE
    m.at 13, :TELEPORT
    m.at 19, :KNOCKOFF
    m.at 25, :TOXICSPIKES
    m.at 31, :PSYCHIC
    m.at 37, :SWITCHEROO
    m.at 43, :PSYCHOSHIFT
    m.at 49, :ZENHEADBUTT
    m.at 55, :COSMICPOWER
    m.at 61, :RECOVER
    m.at 67, :PSYCHOBOOST
    m.at 73, :HYPERBEAM
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :AVALANCHE, :BIND, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FIREPUNCH, :FLASH, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :WATERPULSE, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.7
  s.weight        60.8
  s.color         :Red
  s.shape         :Bipedal
  s.habitat       :Rare
  s.category      "DNA"
  s.pokedex_entry "A Pokémon that mutated from an extraterrestrial virus exposed to a laser beam. Its body is configured for superior agility and speed."
  s.generation    3
  s.flags         :Mythical
end

GameData::Species.define :CHINGLING do |s|
  s.name          "Chingling"
  s.types         :PSYCHIC
  s.base_stats    hp: 45, attack: 30, defense: 50, speed: 45, sp_atk: 65, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      57
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :WRAP
    m.at 4, :GROWL
    m.at 7, :ASTONISH
    m.at 10, :CONFUSION
    m.at 13, :YAWN
    m.at 16, :LASTRESORT
    m.at 19, :ENTRAINMENT
    m.at 32, :UPROAR
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BIND, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GRASSKNOT, :GRAVITY, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICYWIND, :KNOCKOFF, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :UPROAR, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :COSMICPOWER, :CURSE, :DISABLE, :FUTURESIGHT, :HYPNOSIS, :PERISHSONG, :RECOVER, :STOREDPOWER, :WISH
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        0.2
  s.weight        0.6
  s.color         :Yellow
  s.shape         :Bipedal
  s.category      "Bell"
  s.pokedex_entry "It emits cries by agitating an orb at the back of its throat. It moves with flouncing hops."
  s.generation    4
  s.evolves_into  :CHIMECHO, :HappinessNight
  s.wild_item_uncommon :CLEANSETAG
end

GameData::Species.define :MIMEJR do |s|
  s.name          "Mime Jr."
  s.types         :PSYCHIC, :FAIRY
  s.base_stats    hp: 20, attack: 25, defense: 45, speed: 60, sp_atk: 70, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      62
  s.catch_rate    145
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :SOUNDPROOF, :FILTER
  s.hidden_abilities :TECHNICIAN
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :COPYCAT
    m.at 4, :BATONPASS
    m.at 8, :ENCORE
    m.at 12, :CONFUSION
    m.at 16, :ROLEPLAY
    m.at 20, :PROTECT
    m.at 24, :RECYCLE
    m.at 28, :PSYBEAM
    m.at 32, :MIMIC
    m.at 36, :LIGHTSCREEN
    m.at 36, :REFLECT
    m.at 36, :SAFEGUARD
    m.at 40, :SUCKERPUNCH
    m.at 44, :DAZZLINGGLEAM
    m.at 48, :PSYCHIC
    m.at 52, :TEETERDANCE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BATONPASS, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :ENCORE, :ENDURE, :FACADE, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FUTURESIGHT, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :ICYWIND, :INFESTATION, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :MISTYTERRAIN, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :UPROAR, :WONDERROOM, :TERABLAST
  s.egg_moves     :CHARM, :CONFUSERAY, :FAKEOUT, :FUTURESIGHT, :HEALINGWISH, :HYPNOSIS, :ICYWIND, :MAGICROOM, :MIMIC, :POWERSPLIT, :TEETERDANCE, :TICKLE, :TRICK
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        0.6
  s.weight        13.0
  s.color         :Pink
  s.shape         :Bipedal
  s.category      "Mime"
  s.pokedex_entry "It habitually mimics foes. Once mimicked, the foe cannot take its eyes off this Pokémon."
  s.generation    4
  s.evolves_into  :MRMIME, :HasMove, MIMIC
end

GameData::Species.define :GALLADE do |s|
  s.name          "Gallade"
  s.types         :PSYCHIC, :FIGHTING
  s.base_stats    hp: 68, attack: 125, defense: 65, speed: 80, sp_atk: 65, sp_def: 115
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Slow
  s.base_exp      259
  s.catch_rate    45
  s.happiness     35
  s.evs           attack: 3
  s.abilities     :STEADFAST
  s.hidden_abilities :JUSTIFIED
  s.moves do |m|
    m.at 0, :SLASH
    m.at 1, :NIGHTSLASH
    m.at 1, :GROWL
    m.at 1, :DISARMINGVOICE
    m.at 1, :HYPNOSIS
    m.at 1, :DRAININGKISS
    m.at 1, :IMPRISON
    m.at 1, :PSYBEAM
    m.at 1, :LIFEDEW
    m.at 1, :CHARM
    m.at 1, :CALMMIND
    m.at 1, :PSYCHIC
    m.at 1, :DREAMEATER
    m.at 1, :FUTURESIGHT
    m.at 1, :LEER
    m.at 1, :FURYCUTTER
    m.at 1, :DOUBLETEAM
    m.at 1, :CONFUSION
    m.at 9, :HELPINGHAND
    m.at 12, :FEINT
    m.at 15, :TELEPORT
    m.at 18, :AERIALACE
    m.at 23, :FALSESWIPE
    m.at 28, :PROTECT
    m.at 35, :SWORDSDANCE
    m.at 42, :PSYCHOCUT
    m.at 49, :HEALPULSE
    m.at 56, :QUICKGUARD
    m.at 56, :WIDEGUARD
    m.at 63, :CLOSECOMBAT
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :ALLYSWITCH, :ATTRACT, :AURASPHERE, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CLOSECOMBAT, :COACHING, :CONFIDE, :CUT, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :DUALCHOP, :EARTHQUAKE, :ECHOEDVOICE, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FALSESWIPE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEPUNCH, :ICYWIND, :IMPRISON, :KNOCKOFF, :LASERFOCUS, :LEAFBLADE, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICALLEAF, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MISTYTERRAIN, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBLADE, :STONEEDGE, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :TELEKINESIS, :THIEF, :THROATCHOP, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :TRIPLEAXEL, :VACUUMWAVE, :WILLOWISP, :WONDERROOM, :WORKUP, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike, :Amorphous
  s.hatch_steps   5120
  s.height        1.6
  s.weight        52.0
  s.color         :White
  s.shape         :Bipedal
  s.category      "Blade"
  s.pokedex_entry "A master of courtesy and swordsmanship, it fights using extending swords on its elbows."
  s.generation    4
end

GameData::Species.define :UXIE do |s|
  s.name          "Uxie"
  s.types         :PSYCHIC
  s.base_stats    hp: 75, attack: 75, defense: 130, speed: 95, sp_atk: 75, sp_def: 130
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     140
  s.evs           defense: 2, sp_defense: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :CONFUSION
    m.at 1, :REST
    m.at 7, :SWIFT
    m.at 14, :ENDURE
    m.at 21, :PSYBEAM
    m.at 28, :IMPRISON
    m.at 35, :EXTRASENSORY
    m.at 42, :AMNESIA
    m.at 49, :PSYCHIC
    m.at 56, :YAWN
    m.at 63, :FUTURESIGHT
    m.at 70, :FLAIL
    m.at 77, :MEMENTO
  end
  s.tutor_moves   :ACROBATICS, :ALLYSWITCH, :AMNESIA, :BATONPASS, :CALMMIND, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :IMPRISON, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :UTURN, :WATERPULSE, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        0.3
  s.weight        0.3
  s.color         :Yellow
  s.shape         :BipedalTail
  s.category      "Knowledge"
  s.pokedex_entry "Known as \"The Being of Knowledge.\" It is said that it can wipe out the memory of those who see its eyes."
  s.generation    4
  s.flags         :Legendary
end

GameData::Species.define :MESPRIT do |s|
  s.name          "Mesprit"
  s.types         :PSYCHIC
  s.base_stats    hp: 80, attack: 105, defense: 105, speed: 80, sp_atk: 105, sp_def: 105
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     140
  s.evs           attack: 1, sp_attack: 1, sp_defense: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :CONFUSION
    m.at 1, :REST
    m.at 7, :SWIFT
    m.at 14, :PROTECT
    m.at 21, :PSYBEAM
    m.at 28, :IMPRISON
    m.at 35, :EXTRASENSORY
    m.at 42, :CHARM
    m.at 49, :PSYCHIC
    m.at 56, :FLATTER
    m.at 63, :FUTURESIGHT
    m.at 70, :COPYCAT
    m.at 77, :HEALINGWISH
  end
  s.tutor_moves   :ACROBATICS, :ALLYSWITCH, :BATONPASS, :BLIZZARD, :CALMMIND, :CHARGEBEAM, :CHARM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :IMPRISON, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :UTURN, :WATERPULSE, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        0.3
  s.weight        0.3
  s.color         :Pink
  s.shape         :BipedalTail
  s.category      "Emotion"
  s.pokedex_entry "Known as \"The Being of Emotion.\" It taught humans the nobility of sorrow, pain, and joy."
  s.generation    4
  s.flags         :Legendary
end

GameData::Species.define :AZELF do |s|
  s.name          "Azelf"
  s.types         :PSYCHIC
  s.base_stats    hp: 75, attack: 125, defense: 70, speed: 115, sp_atk: 125, sp_def: 70
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     140
  s.evs           attack: 2, sp_attack: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :CONFUSION
    m.at 1, :REST
    m.at 7, :SWIFT
    m.at 14, :DETECT
    m.at 21, :PSYBEAM
    m.at 28, :IMPRISON
    m.at 35, :EXTRASENSORY
    m.at 42, :NASTYPLOT
    m.at 49, :PSYCHIC
    m.at 56, :UPROAR
    m.at 63, :FUTURESIGHT
    m.at 70, :LASTRESORT
    m.at 77, :EXPLOSION
  end
  s.tutor_moves   :ACROBATICS, :ALLYSWITCH, :ASSURANCE, :BATONPASS, :CALMMIND, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLING, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :IMPRISON, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :METRONOME, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRIATTACK, :TRICK, :TRICKROOM, :UPROAR, :UTURN, :WATERPULSE, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        0.3
  s.weight        0.3
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Willpower"
  s.pokedex_entry "Known as \"The Being of Willpower.\" It sleeps at the bottom of a lake to keep the world in balance."
  s.generation    4
  s.flags         :Legendary
end

GameData::Species.define :CRESSELIA do |s|
  s.name          "Cresselia"
  s.types         :PSYCHIC
  s.base_stats    hp: 120, attack: 70, defense: 120, speed: 85, sp_atk: 75, sp_def: 130
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     100
  s.evs           sp_defense: 3
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :CONFUSION
    m.at 1, :DOUBLETEAM
    m.at 6, :MIST
    m.at 12, :AURORABEAM
    m.at 18, :PSYBEAM
    m.at 24, :PSYCHOSHIFT
    m.at 30, :SLASH
    m.at 36, :PSYCHOCUT
    m.at 42, :MOONLIGHT
    m.at 48, :SAFEGUARD
    m.at 54, :PSYCHIC
    m.at 60, :MOONBLAST
    m.at 66, :FUTURESIGHT
    m.at 72, :LUNARDANCE
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DOUBLETEAM, :DREAMEATER, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FLASH, :FRUSTRATION, :FURYCUTTER, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDERWAVE, :TRICK, :TRICKROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.5
  s.weight        85.6
  s.color         :Yellow
  s.shape         :Serpentine
  s.category      "Lunar"
  s.pokedex_entry "Shiny particles are released from its wings like a veil. It is said to represent the crescent moon."
  s.generation    4
  s.flags         :Legendary
end

GameData::Species.define :VICTINI do |s|
  s.name          "Victini"
  s.types         :PSYCHIC, :FIRE
  s.base_stats    hp: 100, attack: 100, defense: 100, speed: 100, sp_atk: 100, sp_def: 100
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     100
  s.evs           hp: 3
  s.abilities     :VICTORYSTAR
  s.moves do |m|
    m.at 1, :VCREATE
    m.at 1, :QUICKATTACK
    m.at 1, :FLAMECHARGE
    m.at 1, :CONFUSION
    m.at 1, :FOCUSENERGY
    m.at 7, :WORKUP
    m.at 14, :INCINERATE
    m.at 21, :STOREDPOWER
    m.at 28, :HEADBUTT
    m.at 35, :ENDURE
    m.at 42, :ZENHEADBUTT
    m.at 49, :INFERNO
    m.at 56, :REVERSAL
    m.at 63, :SEARINGSHOT
    m.at 70, :DOUBLEEDGE
    m.at 77, :FLAREBLITZ
    m.at 84, :OVERHEAT
    m.at 91, :FINALGAMBIT
  end
  s.tutor_moves   :BATONPASS, :BLAZEKICK, :BOUNCE, :BRICKBREAK, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :EMBARGO, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FIREBLAST, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLASH, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GUARDSWAP, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OVERHEAT, :POWERSWAP, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :REST, :RETURN, :REVERSAL, :ROCKSMASH, :ROLEPLAY, :ROUND, :SAFEGUARD, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPEEDSWAP, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :TRICK, :TRICKROOM, :UPROAR, :UTURN, :WILDCHARGE, :WILLOWISP, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.4
  s.weight        4.0
  s.color         :Yellow
  s.shape         :Bipedal
  s.category      "Victory"
  s.pokedex_entry "This Pokémon brings victory. It is said that Trainers with Victini always win, regardless of the type of encounter."
  s.generation    5
  s.flags         :Mythical
end

GameData::Species.define :MUNNA do |s|
  s.name          "Munna"
  s.types         :PSYCHIC
  s.base_stats    hp: 76, attack: 25, defense: 45, speed: 24, sp_atk: 67, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      58
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :FOREWARN, :SYNCHRONIZE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :STOREDPOWER
    m.at 1, :DEFENSECURL
    m.at 4, :HYPNOSIS
    m.at 8, :PSYBEAM
    m.at 12, :IMPRISON
    m.at 16, :MOONLIGHT
    m.at 20, :MAGICCOAT
    m.at 24, :ZENHEADBUTT
    m.at 28, :CALMMIND
    m.at 32, :YAWN
    m.at 36, :PSYCHIC
    m.at 40, :MOONBLAST
    m.at 44, :DREAMEATER
    m.at 48, :FUTURESIGHT
    m.at 52, :WONDERROOM
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :AMNESIA, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DREAMEATER, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FLASH, :FRUSTRATION, :FUTURESIGHT, :GRAVITY, :GUARDSWAP, :GYROBALL, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :IMPRISON, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NATURALGIFT, :PAINSPLIT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDERWAVE, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :WONDERROOM, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :CURSE, :HEALINGWISH
  s.egg_groups    :Field
  s.hatch_steps   2560
  s.height        0.6
  s.weight        23.3
  s.color         :Pink
  s.shape         :Quadruped
  s.category      "Dream Eater"
  s.pokedex_entry "It eats the dreams of people and Pokémon. When it eats a pleasant dreams, it expels pink-colored mist."
  s.generation    5
  s.evolves_into  :MUSHARNA, :Item, MOONSTONE
end

GameData::Species.define :MUSHARNA do |s|
  s.name          "Musharna"
  s.types         :PSYCHIC
  s.base_stats    hp: 116, attack: 55, defense: 85, speed: 29, sp_atk: 107, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      170
  s.catch_rate    75
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :FOREWARN, :SYNCHRONIZE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :PSYCHICTERRAIN
    m.at 1, :IMPRISON
    m.at 1, :MOONLIGHT
    m.at 1, :MAGICCOAT
    m.at 1, :ZENHEADBUTT
    m.at 1, :CALMMIND
    m.at 1, :YAWN
    m.at 1, :PSYCHIC
    m.at 1, :MOONBLAST
    m.at 1, :DREAMEATER
    m.at 1, :FUTURESIGHT
    m.at 1, :WONDERROOM
    m.at 1, :STOREDPOWER
    m.at 1, :DEFENSECURL
    m.at 1, :HYPNOSIS
    m.at 1, :PSYBEAM
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :AMNESIA, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DREAMEATER, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FLASH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRAVITY, :GUARDSWAP, :GYROBALL, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MISTYEXPLOSION, :NATURALGIFT, :PAINSPLIT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDERWAVE, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :WONDERROOM, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   2560
  s.height        1.1
  s.weight        60.5
  s.color         :Pink
  s.shape         :Bipedal
  s.category      "Drowsing"
  s.pokedex_entry "With the mist from its forehead, it can create shapes of things from dreams it has eaten."
  s.generation    5
end

GameData::Species.define :WOOBAT do |s|
  s.name          "Woobat"
  s.types         :PSYCHIC, :FLYING
  s.base_stats    hp: 65, attack: 45, defense: 43, speed: 72, sp_atk: 55, sp_def: 43
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      65
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :UNAWARE, :KLUTZ
  s.hidden_abilities :SIMPLE
  s.moves do |m|
    m.at 1, :GUST
    m.at 1, :ATTRACT
    m.at 5, :CONFUSION
    m.at 10, :ENDEAVOR
    m.at 15, :AIRCUTTER
    m.at 20, :IMPRISON
    m.at 25, :ASSURANCE
    m.at 30, :AMNESIA
    m.at 35, :AIRSLASH
    m.at 40, :PSYCHIC
    m.at 45, :CALMMIND
    m.at 50, :FUTURESIGHT
    m.at 55, :SIMPLEBEAM
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AFTERYOU, :AIRSLASH, :ALLYSWITCH, :AMNESIA, :ASSURANCE, :ATTRACT, :BATONPASS, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :DEFOG, :DOUBLETEAM, :DREAMEATER, :DUALWINGBEAT, :EMBARGO, :ENDEAVOR, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FLASH, :FLY, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GYROBALL, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :IMPRISON, :KNOCKOFF, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PLUCK, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SPEEDSWAP, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SUPERFANG, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERWAVE, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :UPROAR, :UTURN, :VENOMDRENCH, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :FLATTER, :KNOCKOFF, :PSYCHOSHIFT, :ROOST, :SUPERSONIC
  s.egg_groups    :Field, :Flying
  s.hatch_steps   3840
  s.height        0.4
  s.weight        2.1
  s.color         :Blue
  s.shape         :Winged
  s.category      "Bat"
  s.pokedex_entry "Suction from its nostrils enables it to stick to cave walls during sleep. It leaves a heart-shaped mark behind."
  s.generation    5
  s.evolves_into  :SWOOBAT, :Happiness
end

GameData::Species.define :SWOOBAT do |s|
  s.name          "Swoobat"
  s.types         :PSYCHIC, :FLYING
  s.base_stats    hp: 67, attack: 57, defense: 55, speed: 114, sp_atk: 77, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      149
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :UNAWARE, :KLUTZ
  s.hidden_abilities :SIMPLE
  s.moves do |m|
    m.at 1, :GUST
    m.at 1, :ATTRACT
    m.at 1, :CONFUSION
    m.at 1, :ENDEAVOR
    m.at 15, :AIRCUTTER
    m.at 20, :IMPRISON
    m.at 25, :ASSURANCE
    m.at 30, :AMNESIA
    m.at 35, :AIRSLASH
    m.at 40, :PSYCHIC
    m.at 45, :CALMMIND
    m.at 50, :FUTURESIGHT
    m.at 55, :SIMPLEBEAM
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AFTERYOU, :AIRSLASH, :ALLYSWITCH, :AMNESIA, :ASSURANCE, :ATTRACT, :BATONPASS, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :DEFOG, :DOUBLETEAM, :DREAMEATER, :DUALWINGBEAT, :EMBARGO, :ENDEAVOR, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FLASH, :FLY, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GIGAIMPACT, :GYROBALL, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PLUCK, :PROTECT, :PSYCHIC, :PSYCHICFANGS, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SKYATTACK, :SLEEPTALK, :SNORE, :SPEEDSWAP, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SUPERFANG, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERWAVE, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :UPROAR, :UTURN, :VENOMDRENCH, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field, :Flying
  s.hatch_steps   3840
  s.height        0.9
  s.weight        10.5
  s.color         :Blue
  s.shape         :Winged
  s.category      "Courting"
  s.pokedex_entry "Anyone who comes into contact with the ultrasonic waves emitted by a courting male experiences a positive mood shift."
  s.generation    5
end

GameData::Species.define :SIGILYPH do |s|
  s.name          "Sigilyph"
  s.types         :PSYCHIC, :FLYING
  s.base_stats    hp: 72, attack: 58, defense: 80, speed: 97, sp_atk: 103, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      172
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :WONDERSKIN, :MAGICGUARD
  s.hidden_abilities :TINTEDLENS
  s.moves do |m|
    m.at 1, :GUST
    m.at 1, :CONFUSION
    m.at 5, :GRAVITY
    m.at 10, :HYPNOSIS
    m.at 15, :AIRCUTTER
    m.at 20, :PSYBEAM
    m.at 25, :WHIRLWIND
    m.at 30, :COSMICPOWER
    m.at 35, :AIRSLASH
    m.at 40, :PSYCHIC
    m.at 45, :TAILWIND
    m.at 50, :LIGHTSCREEN
    m.at 50, :REFLECT
    m.at 55, :SKYATTACK
    m.at 60, :SKILLSWAP
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COSMICPOWER, :DARKPULSE, :DAZZLINGGLEAM, :DEFOG, :DOUBLETEAM, :DREAMEATER, :DUALWINGBEAT, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FLASH, :FLASHCANNON, :FLY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRAVITY, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IMPRISON, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :PLUCK, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SKYATTACK, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :SPEEDSWAP, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THIEF, :THUNDERWAVE, :TOXIC, :TRICK, :TRICKROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :PSYCHOSHIFT, :ROOST
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        1.4
  s.weight        14.0
  s.color         :Black
  s.shape         :Winged
  s.category      "Avianoid"
  s.pokedex_entry "The guardians of an ancient city, they use their psychic power to attack enemies that invade their territory."
  s.generation    5
end

GameData::Species.define :GOTHITA do |s|
  s.name          "Gothita"
  s.types         :PSYCHIC
  s.base_stats    hp: 45, attack: 30, defense: 50, speed: 45, sp_atk: 55, sp_def: 65
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Parabolic
  s.base_exp      58
  s.catch_rate    200
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :FRISK, :COMPETITIVE
  s.hidden_abilities :SHADOWTAG
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :CONFUSION
    m.at 4, :PLAYNICE
    m.at 8, :TICKLE
    m.at 12, :PSYBEAM
    m.at 16, :CHARM
    m.at 20, :PSYSHOCK
    m.at 24, :HYPNOSIS
    m.at 28, :FAKETEARS
    m.at 33, :PSYCHUP
    m.at 36, :PSYCHIC
    m.at 40, :FLATTER
    m.at 44, :FUTURESIGHT
    m.at 48, :MAGICROOM
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FLASH, :FLING, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :UPROAR, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :FAKEOUT, :HEALPULSE, :MEANLOOK, :MIRRORCOAT, :TORMENT
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        0.4
  s.weight        5.8
  s.color         :Purple
  s.shape         :Bipedal
  s.category      "Fixation"
  s.pokedex_entry "They intently observe both Trainers and Pokémon. Apparently, they are looking at something that only Gothita can see."
  s.generation    5
  s.evolves_into  :GOTHORITA, :Level, 32
end

GameData::Species.define :GOTHORITA do |s|
  s.name          "Gothorita"
  s.types         :PSYCHIC
  s.base_stats    hp: 60, attack: 45, defense: 70, speed: 55, sp_atk: 75, sp_def: 85
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Parabolic
  s.base_exp      137
  s.catch_rate    100
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :FRISK, :COMPETITIVE
  s.hidden_abilities :SHADOWTAG
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :CONFUSION
    m.at 1, :PLAYNICE
    m.at 1, :TICKLE
    m.at 12, :PSYBEAM
    m.at 16, :CHARM
    m.at 20, :PSYSHOCK
    m.at 24, :HYPNOSIS
    m.at 28, :FAKETEARS
    m.at 35, :PSYCHUP
    m.at 40, :PSYCHIC
    m.at 46, :FLATTER
    m.at 52, :FUTURESIGHT
    m.at 58, :MAGICROOM
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FLASH, :FLING, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :UPROAR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        0.7
  s.weight        18.0
  s.color         :Purple
  s.shape         :Bipedal
  s.category      "Manipulate"
  s.pokedex_entry "Starlight is the source of their power. At night, they mark star positions by using psychic power to float stones."
  s.generation    5
  s.evolves_into  :GOTHITELLE, :Level, 41
end

GameData::Species.define :GOTHITELLE do |s|
  s.name          "Gothitelle"
  s.types         :PSYCHIC
  s.base_stats    hp: 70, attack: 55, defense: 95, speed: 65, sp_atk: 95, sp_def: 110
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Parabolic
  s.base_exp      245
  s.catch_rate    50
  s.happiness     50
  s.evs           sp_defense: 3
  s.abilities     :FRISK, :COMPETITIVE
  s.hidden_abilities :SHADOWTAG
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :CONFUSION
    m.at 1, :PLAYNICE
    m.at 1, :TICKLE
    m.at 12, :PSYBEAM
    m.at 16, :CHARM
    m.at 20, :PSYSHOCK
    m.at 24, :HYPNOSIS
    m.at 28, :FAKETEARS
    m.at 35, :PSYCHUP
    m.at 40, :PSYCHIC
    m.at 48, :FLATTER
    m.at 56, :FUTURESIGHT
    m.at 64, :MAGICROOM
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COSMICPOWER, :COVET, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FLASH, :FLING, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :LASERFOCUS, :LIGHTSCREEN, :LOWSWEEP, :MAGICCOAT, :MAGICROOM, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :UPROAR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.5
  s.weight        44.0
  s.color         :Purple
  s.shape         :Bipedal
  s.category      "Astral Body"
  s.pokedex_entry "They can predict the future from the placement and movement of the stars. They can see Trainers' life spans."
  s.generation    5
end

GameData::Species.define :SOLOSIS do |s|
  s.name          "Solosis"
  s.types         :PSYCHIC
  s.base_stats    hp: 45, attack: 30, defense: 40, speed: 20, sp_atk: 105, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      58
  s.catch_rate    200
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :OVERCOAT, :MAGICGUARD
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :PROTECT
    m.at 1, :CONFUSION
    m.at 4, :RECOVER
    m.at 8, :ENDEAVOR
    m.at 12, :PSYBEAM
    m.at 16, :CHARM
    m.at 20, :PSYSHOCK
    m.at 24, :LIGHTSCREEN
    m.at 24, :REFLECT
    m.at 28, :ALLYSWITCH
    m.at 33, :PAINSPLIT
    m.at 36, :PSYCHIC
    m.at 40, :SKILLSWAP
    m.at 44, :FUTURESIGHT
    m.at 48, :WONDERROOM
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENCORE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :EXPLOSION, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :FUTURESIGHT, :GRAVITY, :GUARDSWAP, :GYROBALL, :HELPINGHAND, :HIDDENPOWER, :IMPRISON, :INFESTATION, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NATURALGIFT, :PAINSPLIT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STEELROLLER, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERWAVE, :TOXIC, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ACIDARMOR, :ASTONISH, :CONFUSERAY
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.3
  s.weight        1.0
  s.color         :Green
  s.shape         :Head
  s.category      "Cell"
  s.pokedex_entry "Because their bodies are enveloped in a special liquid, they can survive in any environment."
  s.generation    5
  s.evolves_into  :DUOSION, :Level, 32
end

GameData::Species.define :DUOSION do |s|
  s.name          "Duosion"
  s.types         :PSYCHIC
  s.base_stats    hp: 65, attack: 40, defense: 50, speed: 30, sp_atk: 125, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      130
  s.catch_rate    100
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :OVERCOAT, :MAGICGUARD
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :PROTECT
    m.at 1, :CONFUSION
    m.at 1, :RECOVER
    m.at 1, :ENDEAVOR
    m.at 12, :PSYBEAM
    m.at 16, :CHARM
    m.at 20, :PSYSHOCK
    m.at 24, :LIGHTSCREEN
    m.at 24, :REFLECT
    m.at 28, :ALLYSWITCH
    m.at 35, :PAINSPLIT
    m.at 40, :PSYCHIC
    m.at 46, :SKILLSWAP
    m.at 52, :FUTURESIGHT
    m.at 58, :WONDERROOM
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :DOUBLETEAM, :DREAMEATER, :EMBARGO, :ENCORE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :EXPLOSION, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :FUTURESIGHT, :GRAVITY, :GUARDSWAP, :GYROBALL, :HELPINGHAND, :HIDDENPOWER, :IMPRISON, :INFESTATION, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NATURALGIFT, :PAINSPLIT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STEELROLLER, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERWAVE, :TOXIC, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.6
  s.weight        8.0
  s.color         :Green
  s.shape         :Head
  s.category      "Mitosis"
  s.pokedex_entry "When their brains, now divided in two, are thinking the same thoughts, these Pokémon exhibit their maximum power."
  s.generation    5
  s.evolves_into  :REUNICLUS, :Level, 41
end

GameData::Species.define :REUNICLUS do |s|
  s.name          "Reuniclus"
  s.types         :PSYCHIC
  s.base_stats    hp: 110, attack: 65, defense: 75, speed: 30, sp_atk: 125, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      245
  s.catch_rate    50
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :OVERCOAT, :MAGICGUARD
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 0, :HAMMERARM
    m.at 1, :PROTECT
    m.at 1, :CONFUSION
    m.at 1, :RECOVER
    m.at 1, :ENDEAVOR
    m.at 12, :PSYBEAM
    m.at 16, :CHARM
    m.at 20, :PSYSHOCK
    m.at 24, :LIGHTSCREEN
    m.at 24, :REFLECT
    m.at 28, :ALLYSWITCH
    m.at 35, :PAINSPLIT
    m.at 40, :PSYCHIC
    m.at 48, :SKILLSWAP
    m.at 56, :FUTURESIGHT
    m.at 64, :WONDERROOM
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :EMBARGO, :ENCORE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :EXPLOSION, :FACADE, :FIREPUNCH, :FLASH, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :GYROBALL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :IMPRISON, :INFESTATION, :IRONDEFENSE, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAINSPLIT, :POWERSWAP, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STEELROLLER, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        1.0
  s.weight        20.1
  s.color         :Green
  s.shape         :HeadArms
  s.category      "Multiplying"
  s.pokedex_entry "These remarkably intelligent Pokémon fight by controlling arms that can grip with rock-crushing power."
  s.generation    5
end

GameData::Species.define :ELGYEM do |s|
  s.name          "Elgyem"
  s.types         :PSYCHIC
  s.base_stats    hp: 55, attack: 55, defense: 55, speed: 30, sp_atk: 85, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      67
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :TELEPATHY, :SYNCHRONIZE
  s.hidden_abilities :ANALYTIC
  s.moves do |m|
    m.at 1, :CONFUSION
    m.at 1, :GROWL
    m.at 6, :IMPRISON
    m.at 12, :TELEPORT
    m.at 18, :PSYBEAM
    m.at 24, :POWERSPLIT
    m.at 24, :GUARDSPLIT
    m.at 30, :HEADBUTT
    m.at 36, :ZENHEADBUTT
    m.at 43, :RECOVER
    m.at 48, :CALMMIND
    m.at 54, :WONDERROOM
    m.at 60, :PSYCHIC
  end
  s.tutor_moves   :AFTERYOU, :AGILITY, :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COSMICPOWER, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :EMBARGO, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FLASH, :FRUSTRATION, :GRAVITY, :GUARDSWAP, :HIDDENPOWER, :IMPRISON, :LIGHTSCREEN, :MAGICCOAT, :METEORBEAM, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAINSPLIT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TELEKINESIS, :THIEF, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TRICK, :TRICKROOM, :UPROAR, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ASTONISH, :DESTINYBOND, :DISABLE, :PSYCHUP
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        0.5
  s.weight        9.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Cerebral"
  s.pokedex_entry "This Pokémon had never been seen until it appeared from far in the desert 50 years ago."
  s.generation    5
  s.evolves_into  :BEHEEYEM, :Level, 42
end

GameData::Species.define :BEHEEYEM do |s|
  s.name          "Beheeyem"
  s.types         :PSYCHIC
  s.base_stats    hp: 75, attack: 75, defense: 75, speed: 40, sp_atk: 125, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      170
  s.catch_rate    90
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :TELEPATHY, :SYNCHRONIZE
  s.hidden_abilities :ANALYTIC
  s.moves do |m|
    m.at 1, :PSYCHICTERRAIN
    m.at 1, :CONFUSION
    m.at 1, :GROWL
    m.at 1, :IMPRISON
    m.at 1, :TELEPORT
    m.at 18, :PSYBEAM
    m.at 24, :POWERSPLIT
    m.at 24, :GUARDSPLIT
    m.at 30, :HEADBUTT
    m.at 36, :ZENHEADBUTT
    m.at 45, :RECOVER
    m.at 52, :CALMMIND
    m.at 60, :WONDERROOM
    m.at 68, :PSYCHIC
  end
  s.tutor_moves   :AFTERYOU, :AGILITY, :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COSMICPOWER, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :EMBARGO, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRAVITY, :GUARDSWAP, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :LIGHTSCREEN, :MAGICCOAT, :METEORBEAM, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAINSPLIT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TELEKINESIS, :THIEF, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TRIATTACK, :TRICK, :TRICKROOM, :UPROAR, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.0
  s.weight        34.5
  s.color         :Brown
  s.shape         :Bipedal
  s.category      "Cerebral"
  s.pokedex_entry "It uses psychic power to control an opponent's brain and tamper with its memories."
  s.generation    5
end

GameData::Species.define :ESPURR do |s|
  s.name          "Espurr"
  s.types         :PSYCHIC
  s.base_stats    hp: 62, attack: 48, defense: 54, speed: 68, sp_atk: 63, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      71
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :KEENEYE, :INFILTRATOR
  s.hidden_abilities :OWNTEMPO
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 3, :FAKEOUT
    m.at 6, :DISARMINGVOICE
    m.at 9, :CONFUSION
    m.at 18, :COVET
    m.at 21, :PSYBEAM
    m.at 30, :LIGHTSCREEN
    m.at 30, :REFLECT
    m.at 33, :PSYSHOCK
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COVET, :CUT, :DARKPULSE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FLASH, :FRUSTRATION, :GRAVITY, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PAYDAY, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :WONDERROOM, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :TICKLE, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.3
  s.weight        3.5
  s.color         :Gray
  s.shape         :BipedalTail
  s.category      "Restraint"
  s.pokedex_entry "The organ that emits its intense psychic power is sheltered by its ears to keep power from leaking out."
  s.generation    6
  s.evolves_into  :MEOWSTIC, :Level, 25
end

GameData::Species.define :MEOWSTIC do |s|
  s.name          "Meowstic"
  s.types         :PSYCHIC
  s.base_stats    hp: 74, attack: 48, defense: 76, speed: 104, sp_atk: 83, sp_def: 81
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      163
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :KEENEYE, :INFILTRATOR
  s.hidden_abilities :PRANKSTER
  s.moves do |m|
    m.at 1, :MEANLOOK
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :FAKEOUT
    m.at 1, :DISARMINGVOICE
    m.at 9, :CONFUSION
    m.at 12, :HELPINGHAND
    m.at 15, :CHARM
    m.at 18, :COVET
    m.at 21, :PSYBEAM
    m.at 24, :SUCKERPUNCH
    m.at 29, :ROLEPLAY
    m.at 34, :LIGHTSCREEN
    m.at 34, :REFLECT
    m.at 39, :PSYSHOCK
    m.at 44, :IMPRISON
    m.at 49, :QUICKGUARD
    m.at 54, :PSYCHIC
    m.at 59, :MISTYTERRAIN
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FAKETEARS, :FLASH, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :IRONTAIL, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :MISTYTERRAIN, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PAYDAY, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILSLAP, :TELEKINESIS, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :WONDERROOM, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        8.5
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Constraint"
  s.pokedex_entry "Revealing the eyelike patterns on the insides of its ears will unleash its psychic powers. It normally keeps the patterns hidden, however."
  s.generation    6
end

GameData::Species.define :HOOPA do |s|
  s.name          "Hoopa"
  s.types         :PSYCHIC, :GHOST
  s.base_stats    hp: 80, attack: 110, defense: 60, speed: 70, sp_atk: 150, sp_def: 130
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :MAGICIAN
  s.moves do |m|
    m.at 1, :HYPERSPACEHOLE
    m.at 1, :TRICK
    m.at 1, :DESTINYBOND
    m.at 1, :ALLYSWITCH
    m.at 1, :CONFUSION
    m.at 6, :ASTONISH
    m.at 10, :MAGICCOAT
    m.at 15, :LIGHTSCREEN
    m.at 19, :PSYBEAM
    m.at 25, :SKILLSWAP
    m.at 29, :POWERSPLIT
    m.at 29, :GUARDSPLIT
    m.at 35, :PHANTOMFORCE
    m.at 46, :ZENHEADBUTT
    m.at 50, :WONDERROOM
    m.at 50, :TRICKROOM
    m.at 55, :SHADOWBALL
    m.at 68, :NASTYPLOT
    m.at 75, :PSYCHIC
    m.at 85, :HYPERSPACEHOLE
  end
  s.tutor_moves   :ALLYSWITCH, :BLOCK, :BRICKBREAK, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COVET, :DARKPULSE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DUALCHOP, :EMBARGO, :ENDURE, :ENERGYBALL, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GUNKSHOT, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :QUASH, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THROATCHOP, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TOXIC, :TRICK, :TRICKROOM, :UPROAR, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.5
  s.weight        9.0
  s.color         :Purple
  s.shape         :HeadArms
  s.category      "Mischief"
  s.pokedex_entry "This troublemaker sends anything and everything to faraway places using its loop, which can warp space."
  s.generation    6
  s.flags         :Mythical
end

GameData::Species.define :TAPULELE do |s|
  s.name          "Tapu Lele"
  s.types         :PSYCHIC, :FAIRY
  s.base_stats    hp: 70, attack: 85, defense: 75, speed: 95, sp_atk: 130, sp_def: 115
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    3
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :PSYCHICSURGE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :CONFUSION
    m.at 5, :WITHDRAW
    m.at 10, :AROMATHERAPY
    m.at 15, :DRAININGKISS
    m.at 20, :PSYBEAM
    m.at 25, :FLATTER
    m.at 30, :AROMATICMIST
    m.at 35, :SWEETSCENT
    m.at 40, :EXTRASENSORY
    m.at 45, :PSYSHOCK
    m.at 50, :MEANLOOK
    m.at 55, :NATURESMADNESS
    m.at 60, :MOONBLAST
    m.at 65, :TICKLE
    m.at 70, :SKILLSWAP
    m.at 75, :PSYCHICTERRAIN
  end
  s.tutor_moves   :ALLYSWITCH, :CALMMIND, :CHARGEBEAM, :CHARM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FLING, :FOCUSBLAST, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PLAYROUGH, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :SNORE, :SPEEDSWAP, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :TORMENT, :TOXIC, :WONDERROOM, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   3840
  s.height        1.2
  s.weight        18.6
  s.color         :Pink
  s.shape         :HeadArms
  s.category      "Land Spirit"
  s.pokedex_entry "As it flutters about, it scatters its strangely glowing scales. Touching them is said to restore good health on the spot."
  s.generation    7
  s.flags         :Legendary
end

GameData::Species.define :COSMOG do |s|
  s.name          "Cosmog"
  s.types         :PSYCHIC
  s.base_stats    hp: 43, attack: 29, defense: 31, speed: 37, sp_atk: 29, sp_def: 31
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      40
  s.catch_rate    45
  s.happiness     0
  s.evs           hp: 1
  s.abilities     :UNAWARE
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 1, :TELEPORT
  end
  s.tutor_moves   :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.2
  s.weight        0.1
  s.color         :Blue
  s.shape         :Head
  s.category      "Nebula"
  s.pokedex_entry "Whether or not it's a Pokémon from this world is a mystery. When it's in a jam, it warps away to a safe place to hide."
  s.generation    7
  s.evolves_into  :COSMOEM, :Level, 43
  s.flags         :Legendary
end

GameData::Species.define :COSMOEM do |s|
  s.name          "Cosmoem"
  s.types         :PSYCHIC
  s.base_stats    hp: 43, attack: 29, defense: 131, speed: 37, sp_atk: 29, sp_def: 131
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      140
  s.catch_rate    45
  s.happiness     0
  s.evs           defense: 1, sp_defense: 1
  s.abilities     :STURDY
  s.moves do |m|
    m.at 0, :COSMICPOWER
    m.at 1, :TELEPORT
  end
  s.tutor_moves   :COSMICPOWER, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.1
  s.weight        999.9
  s.color         :Blue
  s.shape         :Head
  s.category      "Protostar"
  s.pokedex_entry "Motionless as if dead, its body is faintly warm to the touch. In the distant past, it was called the cocoon of the stars."
  s.generation    7
  s.evolves_into  :SOLGALEO, :LevelDay, 53
  s.evolves_into  :LUNALA, :LevelNight, 53
  s.flags         :Legendary
end

GameData::Species.define :SOLGALEO do |s|
  s.name          "Solgaleo"
  s.types         :PSYCHIC, :STEEL
  s.base_stats    hp: 137, attack: 137, defense: 107, speed: 97, sp_atk: 113, sp_def: 89
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    45
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :FULLMETALBODY
  s.moves do |m|
    m.at 0, :SUNSTEELSTRIKE
    m.at 1, :COSMICPOWER
    m.at 1, :TELEPORT
    m.at 1, :METALCLAW
    m.at 1, :NOBLEROAR
    m.at 7, :IRONHEAD
    m.at 14, :METALSOUND
    m.at 21, :ZENHEADBUTT
    m.at 28, :FLASHCANNON
    m.at 35, :MORNINGSUN
    m.at 42, :CRUNCH
    m.at 49, :METALBURST
    m.at 56, :WILDCHARGE
    m.at 63, :SOLARBEAM
    m.at 70, :FLAREBLITZ
    m.at 77, :WIDEGUARD
    m.at 84, :GIGAIMPACT
  end
  s.tutor_moves   :AGILITY, :BULLDOZE, :CALMMIND, :CLOSECOMBAT, :CONFIDE, :COSMICPOWER, :CRUNCH, :DOUBLETEAM, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :EXPANDINGFORCE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLASHCANNON, :FOCUSBLAST, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GYROBALL, :HEATCRASH, :HEAVYSLAM, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :LIGHTSCREEN, :METEORBEAM, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OUTRAGE, :PROTECT, :PSYCHIC, :PSYCHICFANGS, :PSYCHUP, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SNARL, :SNORE, :SOLARBEAM, :STEELBEAM, :STEELROLLER, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TRICKROOM, :WILDCHARGE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        3.4
  s.weight        230.0
  s.color         :White
  s.shape         :Quadruped
  s.category      "Sunne"
  s.pokedex_entry "It is said to live in another world. The intense light it radiates from the surface of its body can make the darkest of nights light up like midday."
  s.generation    7
  s.flags         :Legendary
end

GameData::Species.define :LUNALA do |s|
  s.name          "Lunala"
  s.types         :PSYCHIC, :GHOST
  s.base_stats    hp: 137, attack: 113, defense: 89, speed: 97, sp_atk: 137, sp_def: 107
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    45
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :SHADOWSHIELD
  s.moves do |m|
    m.at 0, :MOONGEISTBEAM
    m.at 1, :COSMICPOWER
    m.at 1, :TELEPORT
    m.at 1, :CONFUSION
    m.at 1, :HYPNOSIS
    m.at 7, :NIGHTSHADE
    m.at 14, :CONFUSERAY
    m.at 21, :AIRSLASH
    m.at 28, :SHADOWBALL
    m.at 35, :MOONLIGHT
    m.at 42, :NIGHTDAZE
    m.at 49, :MAGICCOAT
    m.at 56, :MOONBLAST
    m.at 63, :PHANTOMFORCE
    m.at 70, :DREAMEATER
    m.at 77, :WIDEGUARD
    m.at 84, :HYPERBEAM
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRSLASH, :BLIZZARD, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COSMICPOWER, :DAZZLINGGLEAM, :DEFOG, :DOUBLETEAM, :DREAMEATER, :DUALWINGBEAT, :ENDURE, :EXPANDINGFORCE, :FACADE, :FLY, :FOCUSBLAST, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :HEATWAVE, :HELPINGHAND, :HEX, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :METEORBEAM, :MIMIC, :NATURALGIFT, :PHANTOMFORCE, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROAR, :ROOST, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SIGNALBEAM, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TRICK, :TRICKROOM, :WILLOWISP, :WONDERROOM, :WORKUP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        4.0
  s.weight        120.0
  s.color         :Purple
  s.shape         :Winged
  s.category      "Moone"
  s.pokedex_entry "Said to live in another world, this Pokémon devours light, drawing the moonless dark veil of night over the brightness of day."
  s.generation    7
  s.flags         :Legendary
end

GameData::Species.define :NECROZMA do |s|
  s.name          "Necrozma"
  s.types         :PSYCHIC
  s.base_stats    hp: 97, attack: 107, defense: 101, speed: 79, sp_atk: 127, sp_def: 89
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    255
  s.happiness     0
  s.evs           attack: 1, sp_attack: 2
  s.abilities     :PRISMARMOR
  s.moves do |m|
    m.at 1, :MOONLIGHT
    m.at 1, :MORNINGSUN
    m.at 1, :CHARGEBEAM
    m.at 1, :GRAVITY
    m.at 1, :METALCLAW
    m.at 1, :CONFUSION
    m.at 8, :STEALTHROCK
    m.at 16, :SLASH
    m.at 24, :NIGHTSLASH
    m.at 32, :PSYCHOCUT
    m.at 40, :STOREDPOWER
    m.at 48, :ROCKBLAST
    m.at 56, :IRONDEFENSE
    m.at 64, :POWERGEM
    m.at 72, :PHOTONGEYSER
    m.at 80, :AUTOTOMIZE
    m.at 88, :PRISMATICLASER
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COSMICPOWER, :DARKPULSE, :DOUBLETEAM, :DRAGONDANCE, :DRAGONPULSE, :EARTHPOWER, :EARTHQUAKE, :EMBARGO, :ENDURE, :EXPANDINGFORCE, :FACADE, :FLASHCANNON, :FLING, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRAVITY, :GYROBALL, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IMPRISON, :IRONDEFENSE, :IRONHEAD, :KNOCKOFF, :LIGHTSCREEN, :MAGNETRISE, :METEORBEAM, :MIMIC, :NATURALGIFT, :OUTRAGE, :POWERGEM, :PROTECT, :PSYCHIC, :PSYCHICFANGS, :PSYCHOCUT, :PSYSHOCK, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SOLARBEAM, :STEALTHROCK, :STONEEDGE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TELEKINESIS, :THIEF, :THUNDERWAVE, :TOXIC, :TRICKROOM, :XSCISSOR, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        2.4
  s.weight        230.0
  s.color         :Black
  s.shape         :HeadArms
  s.category      "Prism"
  s.pokedex_entry "Light is apparently the source of its energy. It has an extraordinarily vicious disposition and is constantly firing off laser beams."
  s.generation    7
  s.flags         :Legendary
end

GameData::Species.define :HATENNA do |s|
  s.name          "Hatenna"
  s.types         :PSYCHIC
  s.base_stats    hp: 42, attack: 30, defense: 45, speed: 39, sp_atk: 56, sp_def: 53
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Slow
  s.base_exp      53
  s.catch_rate    235
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :HEALER, :ANTICIPATION
  s.hidden_abilities :MAGICBOUNCE
  s.moves do |m|
    m.at 1, :CONFUSION
    m.at 1, :PLAYNICE
    m.at 5, :LIFEDEW
    m.at 10, :DISARMINGVOICE
    m.at 15, :AROMATHERAPY
    m.at 20, :PSYBEAM
    m.at 25, :HEALPULSE
    m.at 30, :DAZZLINGGLEAM
    m.at 35, :CALMMIND
    m.at 40, :PSYCHIC
    m.at 45, :HEALINGWISH
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :ENDURE, :EXPANDINGFORCE, :FACADE, :FRUSTRATION, :GIGADRAIN, :HELPINGHAND, :HIDDENPOWER, :IMPRISON, :LIGHTSCREEN, :MAGICALLEAF, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYSHOCK, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :THUNDERWAVE, :TOXIC, :TERABLAST
  s.egg_moves     :AFTERYOU, :AROMATICMIST, :NUZZLE, :QUASH
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.4
  s.weight        3.4
  s.color         :Pink
  s.shape         :HeadLegs
  s.category      "Calm"
  s.pokedex_entry "Via the protrusion on its head, it senses other creatures' emotions. If you don't have a calm disposition, it will never warm up to you."
  s.generation    8
  s.evolves_into  :HATTREM, :Level, 32
end

GameData::Species.define :HATTREM do |s|
  s.name          "Hattrem"
  s.types         :PSYCHIC
  s.base_stats    hp: 57, attack: 40, defense: 65, speed: 49, sp_atk: 86, sp_def: 73
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Slow
  s.base_exp      130
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :HEALER, :ANTICIPATION
  s.hidden_abilities :MAGICBOUNCE
  s.moves do |m|
    m.at 0, :BRUTALSWING
    m.at 1, :CONFUSION
    m.at 1, :PLAYNICE
    m.at 1, :LIFEDEW
    m.at 1, :DISARMINGVOICE
    m.at 15, :AROMATHERAPY
    m.at 20, :PSYBEAM
    m.at 25, :HEALPULSE
    m.at 30, :DAZZLINGGLEAM
    m.at 37, :CALMMIND
    m.at 44, :PSYCHIC
    m.at 51, :HEALINGWISH
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :BRUTALSWING, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :ENDURE, :EXPANDINGFORCE, :FACADE, :FRUSTRATION, :GIGADRAIN, :HELPINGHAND, :HIDDENPOWER, :IMPRISON, :LIGHTSCREEN, :MAGICALLEAF, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYSHOCK, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :THUNDERWAVE, :TOXIC, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.6
  s.weight        4.8
  s.color         :Pink
  s.shape         :Bipedal
  s.category      "Serene"
  s.pokedex_entry "Using the braids on its head, it pummels foes to get them to quiet down. One blow from those braids would knock out a professional boxer."
  s.generation    8
  s.evolves_into  :HATTERENE, :Level, 42
end

GameData::Species.define :HATTERENE do |s|
  s.name          "Hatterene"
  s.types         :PSYCHIC, :FAIRY
  s.base_stats    hp: 57, attack: 90, defense: 95, speed: 29, sp_atk: 136, sp_def: 103
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Slow
  s.base_exp      255
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :HEALER, :ANTICIPATION
  s.hidden_abilities :MAGICBOUNCE
  s.moves do |m|
    m.at 0, :PSYCHOCUT
    m.at 1, :BRUTALSWING
    m.at 1, :CONFUSION
    m.at 1, :PLAYNICE
    m.at 1, :LIFEDEW
    m.at 1, :DISARMINGVOICE
    m.at 15, :AROMATHERAPY
    m.at 20, :PSYBEAM
    m.at 25, :HEALPULSE
    m.at 30, :DAZZLINGGLEAM
    m.at 37, :CALMMIND
    m.at 46, :PSYCHIC
    m.at 55, :HEALINGWISH
    m.at 64, :MAGICPOWDER
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :BRUTALSWING, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :ENDURE, :EXPANDINGFORCE, :FACADE, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GIGAIMPACT, :GUARDSWAP, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :LIGHTSCREEN, :MAGICALLEAF, :MAGICROOM, :MIMIC, :MISTYEXPLOSION, :MYSTICALFIRE, :NATURALGIFT, :PLAYROUGH, :POWERSWAP, :POWERWHIP, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYSHOCK, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :THUNDERWAVE, :TOXIC, :TRICKROOM, :WONDERROOM, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        2.1
  s.weight        5.1
  s.color         :Pink
  s.shape         :HeadBase
  s.category      "Silent"
  s.pokedex_entry "It emits psychic power strong enough to cause headaches as a deterrent to the approach of others."
  s.generation    8
end

GameData::Species.define :INDEEDEE do |s|
  s.name          "Indeedee"
  s.types         :PSYCHIC, :NORMAL
  s.base_stats    hp: 60, attack: 65, defense: 55, speed: 95, sp_atk: 105, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      166
  s.catch_rate    30
  s.happiness     140
  s.evs           sp_attack: 2
  s.abilities     :INNERFOCUS, :SYNCHRONIZE
  s.hidden_abilities :PSYCHICSURGE
  s.moves do |m|
    m.at 1, :STOREDPOWER
    m.at 1, :PLAYNICE
    m.at 5, :ENCORE
    m.at 10, :DISARMINGVOICE
    m.at 15, :PSYBEAM
    m.at 20, :HELPINGHAND
    m.at 25, :AFTERYOU
    m.at 30, :AROMATHERAPY
    m.at 35, :PSYCHIC
    m.at 40, :CALMMIND
    m.at 45, :POWERSPLIT
    m.at 50, :PSYCHICTERRAIN
    m.at 55, :LASTRESORT
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FRUSTRATION, :FUTURESIGHT, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :IMPRISON, :MAGICALLEAF, :MAGICROOM, :METRONOME, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :PAYDAY, :PLAYROUGH, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYSHOCK, :REST, :RETURN, :ROUND, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :TERRAINPULSE, :TOXIC, :TRIATTACK, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :EXTRASENSORY, :FAKEOUT, :PSYCHUP
  s.egg_groups    :Fairy
  s.hatch_steps   10240
  s.height        0.9
  s.weight        28.0
  s.color         :Purple
  s.shape         :BipedalTail
  s.category      "Emotion"
  s.pokedex_entry "It uses the horns on its head to sense the emotions of others. Males will act as valets for those they serve, looking after their every need."
  s.generation    8
  s.flags         :HasGenderedSprites
end

GameData::Species.define :CALYREX do |s|
  s.name          "Calyrex"
  s.types         :PSYCHIC, :GRASS
  s.base_stats    hp: 100, attack: 80, defense: 80, speed: 80, sp_atk: 80, sp_def: 80
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      250
  s.catch_rate    3
  s.happiness     100
  s.evs           hp: 3
  s.abilities     :UNNERVE
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :MEGADRAIN
    m.at 1, :CONFUSION
    m.at 1, :GROWTH
    m.at 8, :LIFEDEW
    m.at 16, :GIGADRAIN
    m.at 24, :PSYSHOCK
    m.at 32, :HELPINGHAND
    m.at 40, :AROMATHERAPY
    m.at 48, :ENERGYBALL
    m.at 56, :PSYCHIC
    m.at 64, :LEECHSEED
    m.at 72, :HEALPULSE
    m.at 80, :SOLARBEAM
    m.at 88, :FUTURESIGHT
  end
  s.tutor_moves   :AGILITY, :ALLYSWITCH, :BATONPASS, :BULLETSEED, :CALMMIND, :CONFIDE, :DOUBLETEAM, :DRAININGKISS, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYTERRAIN, :GUARDSWAP, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MAGICROOM, :METRONOME, :MIMIC, :NATURALGIFT, :PAYDAY, :POLLENPUFF, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :SOLARBLADE, :SPEEDSWAP, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TOXIC, :TRIATTACK, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.1
  s.weight        7.7
  s.color         :Green
  s.shape         :Bipedal
  s.category      "King"
  s.pokedex_entry "Calyrex is a merciful Pokémon, capable of providing healing and blessings. It reigned over the Galar region in times of yore."
  s.generation    8
  s.flags         :Legendary
end

