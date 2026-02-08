#===============================================================================
# Shattered Crowns - Fairy Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :CLEFAIRY do |s|
  s.name          "Clefairy"
  s.types         :FAIRY
  s.base_stats    hp: 70, attack: 45, defense: 48, speed: 35, sp_atk: 60, sp_def: 65
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      113
  s.catch_rate    150
  s.happiness     140
  s.evs           hp: 2
  s.abilities     :CUTECHARM, :MAGICGUARD
  s.hidden_abilities :FRIENDGUARD
  s.moves do |m|
    m.at 1, :SING
    m.at 1, :SWEETKISS
    m.at 1, :DISARMINGVOICE
    m.at 1, :ENCORE
    m.at 1, :CHARM
    m.at 1, :SPLASH
    m.at 1, :POUND
    m.at 1, :COPYCAT
    m.at 1, :GROWL
    m.at 1, :DEFENSECURL
    m.at 4, :STOREDPOWER
    m.at 8, :MINIMIZE
    m.at 12, :AFTERYOU
    m.at 16, :LIFEDEW
    m.at 20, :METRONOME
    m.at 24, :MOONLIGHT
    m.at 28, :GRAVITY
    m.at 32, :METEORMASH
    m.at 36, :FOLLOWME
    m.at 40, :COSMICPOWER
    m.at 44, :MOONBLAST
    m.at 48, :HEALINGWISH
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :AMNESIA, :ATTRACT, :BATONPASS, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COSMICPOWER, :COUNTER, :COVET, :DAZZLINGGLEAM, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :DUALWINGBEAT, :DYNAMICPUNCH, :ECHOEDVOICE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :GRAVITY, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IMPRISON, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :LIGHTSCREEN, :MAGICALLEAF, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :METRONOME, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :MUDSLAP, :MYSTICALFIRE, :NATURALGIFT, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROLEPLAY, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNATCH, :SNORE, :SOFTBOILED, :SOLARBEAM, :STEALTHROCK, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRIATTACK, :TRICK, :UPROAR, :WATERPULSE, :WONDERROOM, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   2560
  s.height        0.6
  s.weight        7.5
  s.color         :Pink
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Fairy"
  s.pokedex_entry "On every night of a full moon, they come out to play. When dawn arrives, the tired Clefairy go to sleep nestled up against each other in deep and quiet mountains."
  s.generation    1
  s.evolves_into  :CLEFABLE, :Item, MOONSTONE
  s.wild_item_uncommon :MOONSTONE
end

GameData::Species.define :CLEFABLE do |s|
  s.name          "Clefable"
  s.types         :FAIRY
  s.base_stats    hp: 95, attack: 70, defense: 73, speed: 60, sp_atk: 95, sp_def: 90
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      242
  s.catch_rate    25
  s.happiness     140
  s.evs           hp: 3
  s.abilities     :CUTECHARM, :MAGICGUARD
  s.hidden_abilities :UNAWARE
  s.moves do |m|
    m.at 1, :SING
    m.at 1, :SWEETKISS
    m.at 1, :DISARMINGVOICE
    m.at 1, :ENCORE
    m.at 1, :CHARM
    m.at 1, :STOREDPOWER
    m.at 1, :MINIMIZE
    m.at 1, :AFTERYOU
    m.at 1, :LIFEDEW
    m.at 1, :METRONOME
    m.at 1, :MOONLIGHT
    m.at 1, :GRAVITY
    m.at 1, :METEORMASH
    m.at 1, :FOLLOWME
    m.at 1, :COSMICPOWER
    m.at 1, :MOONBLAST
    m.at 1, :HEALINGWISH
    m.at 1, :SPLASH
    m.at 1, :POUND
    m.at 1, :COPYCAT
    m.at 1, :GROWL
    m.at 1, :DEFENSECURL
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :AMNESIA, :ATTRACT, :BATONPASS, :BLIZZARD, :BODYSLAM, :BOUNCE, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COSMICPOWER, :COUNTER, :COVET, :DAZZLINGGLEAM, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :DUALWINGBEAT, :DYNAMICPUNCH, :ECHOEDVOICE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IMPRISON, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGICALLEAF, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :METRONOME, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :MUDSLAP, :MYSTICALFIRE, :NATURALGIFT, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROLEPLAY, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNATCH, :SNORE, :SOFTBOILED, :SOLARBEAM, :STEALTHROCK, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRIATTACK, :TRICK, :UPROAR, :WATERPULSE, :WONDERROOM, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   2560
  s.height        1.3
  s.weight        40.0
  s.color         :Pink
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Fairy"
  s.pokedex_entry "A Clefable uses its wings to skip lightly as if it were flying. Its bouncy step lets it even walk on water. On quiet, moonlit nights, it strolls on lakes."
  s.generation    1
  s.wild_item_uncommon :MOONSTONE
end

GameData::Species.define :CLEFFA do |s|
  s.name          "Cleffa"
  s.types         :FAIRY
  s.base_stats    hp: 50, attack: 25, defense: 28, speed: 15, sp_atk: 45, sp_def: 55
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      44
  s.catch_rate    150
  s.happiness     140
  s.evs           sp_defense: 1
  s.abilities     :CUTECHARM, :MAGICGUARD
  s.hidden_abilities :FRIENDGUARD
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 1, :POUND
    m.at 1, :COPYCAT
    m.at 4, :SING
    m.at 8, :SWEETKISS
    m.at 12, :DISARMINGVOICE
    m.at 16, :ENCORE
    m.at 20, :CHARM
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :ECHOEDVOICE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FAKETEARS, :FIREBLAST, :FLAMETHROWER, :FLASH, :FLING, :FRUSTRATION, :GRASSKNOT, :GRAVITY, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICYWIND, :INCINERATE, :IRONTAIL, :LASTRESORT, :LIGHTSCREEN, :MAGICALLEAF, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MISTYTERRAIN, :MUDSLAP, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOFTBOILED, :SOLARBEAM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THUNDERWAVE, :TRICK, :UPROAR, :WATERPULSE, :WONDERROOM, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AMNESIA, :AROMATHERAPY, :BELLYDRUM, :COVET, :FAKETEARS, :HEALPULSE, :METRONOME, :MIMIC, :MISTYTERRAIN, :PRESENT, :SPLASH, :STOREDPOWER, :TICKLE, :WISH
  s.egg_groups    :Undiscovered
  s.hatch_steps   2560
  s.height        0.3
  s.weight        3.0
  s.color         :Pink
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Star Shape"
  s.pokedex_entry "On nights with many shooting stars, Cleffa can be seen dancing in a ring. They dance until daybreak, when they quench their thirst with the morning dew."
  s.generation    2
  s.evolves_into  :CLEFAIRY, :Happiness
  s.wild_item_uncommon :MOONSTONE
end

GameData::Species.define :TOGEPI do |s|
  s.name          "Togepi"
  s.types         :FAIRY
  s.base_stats    hp: 35, attack: 20, defense: 65, speed: 20, sp_atk: 40, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Fast
  s.base_exp      49
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :HUSTLE, :SERENEGRACE
  s.hidden_abilities :SUPERLUCK
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :POUND
    m.at 4, :SWEETKISS
    m.at 8, :LIFEDEW
    m.at 12, :CHARM
    m.at 16, :ANCIENTPOWER
    m.at 20, :YAWN
    m.at 24, :METRONOME
    m.at 28, :AFTERYOU
    m.at 32, :DOUBLEEDGE
    m.at 36, :SAFEGUARD
    m.at 40, :FOLLOWME
    m.at 44, :BATONPASS
    m.at 48, :LASTRESORT
    m.at 52, :WISH
  end
  s.tutor_moves   :AFTERYOU, :ANCIENTPOWER, :ATTRACT, :BATONPASS, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :COUNTER, :COVET, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :ECHOEDVOICE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FLING, :FRUSTRATION, :FUTURESIGHT, :GRASSKNOT, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :INCINERATE, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :MYSTICALFIRE, :NASTYPLOT, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKSMASH, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOFTBOILED, :SOLARBEAM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDERWAVE, :TRIATTACK, :TRICK, :UPROAR, :WATERPULSE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AERIALACE, :EXTRASENSORY, :FUTURESIGHT, :MORNINGSUN, :PECK, :PRESENT, :PSYCHOSHIFT, :STOREDPOWER
  s.egg_groups    :Undiscovered
  s.hatch_steps   2560
  s.height        0.3
  s.weight        1.5
  s.color         :White
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Spike Ball"
  s.pokedex_entry "As its energy, it uses the feelings of compassion and pleasure exuded by people and Pokémon. It stores up happy feelings in its shell, then shares them out."
  s.generation    2
  s.evolves_into  :TOGETIC, :Happiness
end

GameData::Species.define :TOGETIC do |s|
  s.name          "Togetic"
  s.types         :FAIRY, :FLYING
  s.base_stats    hp: 55, attack: 40, defense: 85, speed: 40, sp_atk: 80, sp_def: 105
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Fast
  s.base_exp      142
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :HUSTLE, :SERENEGRACE
  s.hidden_abilities :SUPERLUCK
  s.moves do |m|
    m.at 0, :FAIRYWIND
    m.at 1, :GROWL
    m.at 1, :POUND
    m.at 1, :SWEETKISS
    m.at 1, :LIFEDEW
    m.at 12, :CHARM
    m.at 16, :ANCIENTPOWER
    m.at 20, :YAWN
    m.at 24, :METRONOME
    m.at 28, :AFTERYOU
    m.at 32, :DOUBLEEDGE
    m.at 36, :SAFEGUARD
    m.at 40, :FOLLOWME
    m.at 44, :BATONPASS
    m.at 48, :LASTRESORT
    m.at 52, :WISH
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :AIRCUTTER, :ANCIENTPOWER, :ATTRACT, :BATONPASS, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CHARM, :CONFIDE, :COUNTER, :COVET, :DAZZLINGGLEAM, :DEFENSECURL, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :DUALWINGBEAT, :ECHOEDVOICE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FLING, :FLY, :FOCUSPUNCH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HEALBELL, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IMPRISON, :INCINERATE, :LASTRESORT, :LIGHTSCREEN, :MAGICALLEAF, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :MYSTICALFIRE, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROLLOUT, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SOFTBOILED, :SOLARBEAM, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THUNDERWAVE, :TRIATTACK, :TRICK, :TWISTER, :UPROAR, :WATERPULSE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Flying, :Fairy
  s.hatch_steps   2560
  s.height        0.6
  s.weight        3.2
  s.color         :White
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Happiness"
  s.pokedex_entry "It is said to be a Pokémon that brings good fortune. When it spots someone who is pure of heart, a Togetic appears and shares its happiness with that person."
  s.generation    2
  s.evolves_into  :TOGEKISS, :Item, SHINYSTONE
end

GameData::Species.define :SNUBBULL do |s|
  s.name          "Snubbull"
  s.types         :FAIRY
  s.base_stats    hp: 60, attack: 80, defense: 50, speed: 30, sp_atk: 40, sp_def: 40
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      60
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :INTIMIDATE, :RUNAWAY
  s.hidden_abilities :RATTLED
  s.moves do |m|
    m.at 1, :ICEFANG
    m.at 1, :FIREFANG
    m.at 1, :THUNDERFANG
    m.at 1, :TACKLE
    m.at 1, :SCARYFACE
    m.at 1, :TAILWHIP
    m.at 1, :CHARM
    m.at 7, :BITE
    m.at 13, :LICK
    m.at 19, :HEADBUTT
    m.at 25, :ROAR
    m.at 31, :TAUNT
    m.at 37, :PLAYROUGH
    m.at 43, :PAYBACK
    m.at 49, :CRUNCH
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :DAZZLINGGLEAM, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSPUNCH, :FRUSTRATION, :HEADBUTT, :HEALBELL, :HIDDENPOWER, :HYPERVOICE, :ICEPUNCH, :INCINERATE, :LASTRESORT, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :OVERHEAT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :WATERPULSE, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_moves     :CLOSECOMBAT, :CRUNCH, :DOUBLEEDGE, :FAKETEARS, :FIREFANG, :HEALBELL, :ICEFANG, :METRONOME, :MIMIC, :PRESENT, :SNORE, :THUNDERFANG
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   5120
  s.height        0.6
  s.weight        7.8
  s.color         :Pink
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Fairy"
  s.pokedex_entry "By baring its fangs and making a scary face, it sends smaller Pokémon scurrying in terror. The Snubbull does seem a little sad at making its foes flee."
  s.generation    2
  s.evolves_into  :GRANBULL, :Level, 23
end

GameData::Species.define :GRANBULL do |s|
  s.name          "Granbull"
  s.types         :FAIRY
  s.base_stats    hp: 90, attack: 120, defense: 75, speed: 45, sp_atk: 60, sp_def: 60
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      158
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :INTIMIDATE, :QUICKFEET
  s.hidden_abilities :RATTLED
  s.moves do |m|
    m.at 1, :OUTRAGE
    m.at 1, :ICEFANG
    m.at 1, :FIREFANG
    m.at 1, :THUNDERFANG
    m.at 1, :TACKLE
    m.at 1, :SCARYFACE
    m.at 1, :TAILWHIP
    m.at 1, :CHARM
    m.at 7, :BITE
    m.at 13, :LICK
    m.at 19, :HEADBUTT
    m.at 27, :ROAR
    m.at 35, :TAUNT
    m.at 43, :PLAYROUGH
    m.at 51, :PAYBACK
    m.at 59, :CRUNCH
    m.at 67, :OUTRAGE
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :DAZZLINGGLEAM, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEALBELL, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEPUNCH, :INCINERATE, :IRONTAIL, :LASTRESORT, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :WATERPULSE, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   5120
  s.height        1.4
  s.weight        48.7
  s.color         :Purple
  s.shape         :BipedalTail
  s.habitat       :Urban
  s.category      "Fairy"
  s.pokedex_entry "It has a particularly well-developed lower jaw. The huge fangs are heavy, causing it to tilt its head. Unless it is startled, it will not try to bite."
  s.generation    2
end

GameData::Species.define :TOGEKISS do |s|
  s.name          "Togekiss"
  s.types         :FAIRY, :FLYING
  s.base_stats    hp: 85, attack: 50, defense: 95, speed: 80, sp_atk: 120, sp_def: 115
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Fast
  s.base_exp      273
  s.catch_rate    30
  s.happiness     50
  s.evs           sp_attack: 2, sp_defense: 1
  s.abilities     :HUSTLE, :SERENEGRACE
  s.hidden_abilities :SUPERLUCK
  s.moves do |m|
    m.at 0, :AIRSLASH
    m.at 1, :FAIRYWIND
    m.at 1, :SKYATTACK
    m.at 1, :AURASPHERE
    m.at 1, :EXTREMESPEED
    m.at 1, :TRIATTACK
    m.at 1, :CHARM
    m.at 1, :ANCIENTPOWER
    m.at 1, :YAWN
    m.at 1, :METRONOME
    m.at 1, :AFTERYOU
    m.at 1, :DOUBLEEDGE
    m.at 1, :SAFEGUARD
    m.at 1, :FOLLOWME
    m.at 1, :BATONPASS
    m.at 1, :LASTRESORT
    m.at 1, :WISH
    m.at 1, :GROWL
    m.at 1, :POUND
    m.at 1, :SWEETKISS
    m.at 1, :LIFEDEW
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :AIRCUTTER, :AIRSLASH, :ALLYSWITCH, :AMNESIA, :ANCIENTPOWER, :ATTRACT, :AURASPHERE, :BATONPASS, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CHARM, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DAZZLINGGLEAM, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :DUALWINGBEAT, :ECHOEDVOICE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FLING, :FLY, :FOCUSPUNCH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HEALBELL, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IMPRISON, :INCINERATE, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGICALLEAF, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :MYSTICALFIRE, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PLAYROUGH, :PLUCK, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROLLOUT, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SILVERWIND, :SKYATTACK, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SOFTBOILED, :SOLARBEAM, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THUNDERWAVE, :TRIATTACK, :TRICK, :TWISTER, :UPROAR, :WATERPULSE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Flying, :Fairy
  s.hatch_steps   2560
  s.height        1.5
  s.weight        38.0
  s.color         :White
  s.shape         :Winged
  s.category      "Jubilee"
  s.pokedex_entry "It will never appear where there is strife. Its sightings have become rare recently."
  s.generation    4
end

GameData::Species.define :FLABEBE do |s|
  s.name          "Flabébé"
  s.types         :FAIRY
  s.base_stats    hp: 44, attack: 38, defense: 39, speed: 42, sp_atk: 61, sp_def: 79
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    225
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :FLOWERVEIL
  s.hidden_abilities :SYMBIOSIS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :VINEWHIP
    m.at 6, :FAIRYWIND
    m.at 10, :LUCKYCHANT
    m.at 15, :RAZORLEAF
    m.at 20, :WISH
    m.at 22, :MAGICALLEAF
    m.at 24, :GRASSYTERRAIN
    m.at 28, :PETALBLIZZARD
    m.at 33, :AROMATHERAPY
    m.at 37, :MISTYTERRAIN
    m.at 41, :MOONBLAST
    m.at 45, :PETALDANCE
    m.at 48, :SOLARBEAM
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :MAGICCOAT, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TOXIC, :WORRYSEED, :TERABLAST
  s.egg_moves     :CAMOUFLAGE, :CAPTIVATE, :COPYCAT, :TEARFULLOOK
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.1
  s.weight        0.1
  s.color         :White
  s.shape         :HeadArms
  s.category      "Single Bloom"
  s.pokedex_entry "When it finds a flower it likes, it dwells on that flower its whole life long. It floats in the wind's embrace with an untroubled heart."
  s.generation    6
  s.evolves_into  :FLOETTE, :Level, 19
  s.flags         :InheritFormFromMother
end

GameData::Species.define :FLOETTE do |s|
  s.name          "Floette"
  s.types         :FAIRY
  s.base_stats    hp: 54, attack: 45, defense: 47, speed: 52, sp_atk: 75, sp_def: 98
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      130
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :FLOWERVEIL
  s.hidden_abilities :SYMBIOSIS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :VINEWHIP
    m.at 1, :FAIRYWIND
    m.at 6, :FAIRYWIND
    m.at 10, :LUCKYCHANT
    m.at 15, :RAZORLEAF
    m.at 20, :WISH
    m.at 25, :MAGICALLEAF
    m.at 27, :GRASSYTERRAIN
    m.at 33, :PETALBLIZZARD
    m.at 38, :AROMATHERAPY
    m.at 43, :MISTYTERRAIN
    m.at 46, :MOONBLAST
    m.at 51, :PETALDANCE
    m.at 58, :SOLARBEAM
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :MAGICCOAT, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TOXIC, :WORRYSEED, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.2
  s.weight        0.9
  s.color         :White
  s.shape         :HeadArms
  s.category      "Single Bloom"
  s.pokedex_entry "It flutters around fields of flowers and cares for flowers that are starting to wilt. It draws out the power of flowers to battle."
  s.generation    6
  s.evolves_into  :FLORGES, :Item, SHINYSTONE
  s.flags         :InheritFormFromMother
end

GameData::Species.define :FLORGES do |s|
  s.name          "Florges"
  s.types         :FAIRY
  s.base_stats    hp: 78, attack: 65, defense: 68, speed: 75, sp_atk: 112, sp_def: 154
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      276
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 3
  s.abilities     :FLOWERVEIL
  s.hidden_abilities :SYMBIOSIS
  s.moves do |m|
    m.at 1, :DISARMINGVOICE
    m.at 1, :LUCKYCHANT
    m.at 1, :WISH
    m.at 1, :MAGICALLEAF
    m.at 1, :FLOWERSHIELD
    m.at 1, :GRASSKNOT
    m.at 1, :GRASSYTERRAIN
    m.at 1, :PETALBLIZZARD
    m.at 1, :MISTYTERRAIN
    m.at 1, :MOONBLAST
    m.at 1, :PETALDANCE
    m.at 1, :AROMATHERAPY
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DEFOG, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TOXIC, :WORRYSEED, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        1.1
  s.weight        10.0
  s.color         :White
  s.shape         :HeadArms
  s.category      "Garden"
  s.pokedex_entry "It claims exquisite flower gardens as its territory, and it obtains power from basking in the energy emitted by flowering plants."
  s.generation    6
  s.flags         :InheritFormFromMother
end

GameData::Species.define :SPRITZEE do |s|
  s.name          "Spritzee"
  s.types         :FAIRY
  s.base_stats    hp: 78, attack: 52, defense: 60, speed: 23, sp_atk: 63, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      68
  s.catch_rate    200
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :HEALER
  s.hidden_abilities :AROMAVEIL
  s.moves do |m|
    m.at 1, :FAIRYWIND
    m.at 1, :SWEETSCENT
    m.at 3, :SWEETKISS
    m.at 6, :ECHOEDVOICE
    m.at 9, :DISARMINGVOICE
    m.at 12, :AROMATHERAPY
    m.at 15, :DRAININGKISS
    m.at 18, :ATTRACT
    m.at 21, :FLAIL
    m.at 24, :MISTYTERRAIN
    m.at 27, :PSYCHIC
    m.at 30, :CHARM
    m.at 33, :CALMMIND
    m.at 36, :MOONBLAST
    m.at 39, :SKILLSWAP
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :ECHOEDVOICE, :ENCORE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FLASH, :FLASHCANNON, :FRUSTRATION, :GYROBALL, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :NASTYPLOT, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SKILLSWAP, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THUNDERBOLT, :TORMENT, :TOXIC, :TRICKROOM, :TERABLAST
  s.egg_moves     :AFTERYOU, :DISABLE, :WISH
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.2
  s.weight        0.5
  s.color         :Pink
  s.shape         :HeadArms
  s.category      "Perfume"
  s.pokedex_entry "It emits a scent that enraptures those who smell it. This fragrance changes depending on what it has eaten."
  s.generation    6
  s.evolves_into  :AROMATISSE, :TradeItem, SACHET
end

GameData::Species.define :AROMATISSE do |s|
  s.name          "Aromatisse"
  s.types         :FAIRY
  s.base_stats    hp: 101, attack: 72, defense: 72, speed: 29, sp_atk: 99, sp_def: 89
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      162
  s.catch_rate    140
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :HEALER
  s.hidden_abilities :AROMAVEIL
  s.moves do |m|
    m.at 1, :AROMATICMIST
    m.at 1, :HEALPULSE
    m.at 1, :FAIRYWIND
    m.at 1, :SWEETSCENT
    m.at 1, :SWEETKISS
    m.at 1, :ECHOEDVOICE
    m.at 9, :DISARMINGVOICE
    m.at 12, :AROMATHERAPY
    m.at 15, :DRAININGKISS
    m.at 18, :ATTRACT
    m.at 21, :FLAIL
    m.at 24, :MISTYTERRAIN
    m.at 27, :PSYCHIC
    m.at 30, :CHARM
    m.at 33, :CALMMIND
    m.at 36, :MOONBLAST
    m.at 39, :SKILLSWAP
    m.at 42, :PSYCHUP
  end
  s.tutor_moves   :AFTERYOU, :ALLYSWITCH, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :ECHOEDVOICE, :ENCORE, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FLASH, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :LIGHTSCREEN, :MAGICCOAT, :METRONOME, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :NASTYPLOT, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SKILLSWAP, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :TORMENT, :TOXIC, :TRICKROOM, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.8
  s.weight        15.5
  s.color         :Pink
  s.shape         :Bipedal
  s.category      "Fragrance"
  s.pokedex_entry "It devises various scents, pleasant and unpleasant, and emits scents that its enemies dislike in order to gain an edge in battle."
  s.generation    6
end

GameData::Species.define :SWIRLIX do |s|
  s.name          "Swirlix"
  s.types         :FAIRY
  s.base_stats    hp: 62, attack: 48, defense: 66, speed: 49, sp_atk: 59, sp_def: 57
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      68
  s.catch_rate    200
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :SWEETVEIL
  s.hidden_abilities :UNBURDEN
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :SWEETSCENT
    m.at 3, :PLAYNICE
    m.at 6, :FAIRYWIND
    m.at 9, :AROMATHERAPY
    m.at 12, :DRAININGKISS
    m.at 15, :FAKETEARS
    m.at 18, :ROUND
    m.at 21, :STRINGSHOT
    m.at 24, :COTTONSPORE
    m.at 27, :ENERGYBALL
    m.at 30, :WISH
    m.at 33, :PLAYROUGH
    m.at 36, :COTTONGUARD
    m.at 39, :ENDEAVOR
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FLAMETHROWER, :FLASH, :FRUSTRATION, :GASTROACID, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MISTYEXPLOSION, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :THIEF, :THUNDERBOLT, :TOXIC, :TERABLAST
  s.egg_moves     :AFTERYOU, :COPYCAT, :STICKYWEB, :YAWN
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.4
  s.weight        3.5
  s.color         :White
  s.shape         :HeadLegs
  s.category      "Cotton Candy"
  s.pokedex_entry "To entangle its opponents in battle, it extrudes white threads as sweet and sticky as cotton candy."
  s.generation    6
  s.evolves_into  :SLURPUFF, :TradeItem, WHIPPEDDREAM
end

GameData::Species.define :SLURPUFF do |s|
  s.name          "Slurpuff"
  s.types         :FAIRY
  s.base_stats    hp: 82, attack: 80, defense: 86, speed: 72, sp_atk: 85, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    140
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SWEETVEIL
  s.hidden_abilities :UNBURDEN
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :SWEETSCENT
    m.at 1, :PLAYNICE
    m.at 1, :FAIRYWIND
    m.at 9, :AROMATHERAPY
    m.at 12, :DRAININGKISS
    m.at 15, :FAKETEARS
    m.at 18, :ROUND
    m.at 21, :STRINGSHOT
    m.at 24, :COTTONSPORE
    m.at 27, :ENERGYBALL
    m.at 30, :WISH
    m.at 33, :PLAYROUGH
    m.at 36, :COTTONGUARD
    m.at 39, :ENDEAVOR
    m.at 42, :STICKYWEB
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :DREAMEATER, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FLAMETHROWER, :FLASH, :FRUSTRATION, :GASTROACID, :GIGAIMPACT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :LIGHTSCREEN, :MAGICCOAT, :METRONOME, :MIMIC, :MISTYEXPLOSION, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :THIEF, :THUNDER, :THUNDERBOLT, :TOXIC, :TERABLAST
  s.egg_groups    :Fairy
  s.hatch_steps   5120
  s.height        0.8
  s.weight        5.0
  s.color         :White
  s.shape         :Bipedal
  s.category      "Meringue"
  s.pokedex_entry "It can distinguish the faintest of scents. It puts its sensitive sense of smell to use by helping pastry chefs in their work."
  s.generation    6
end

GameData::Species.define :SYLVEON do |s|
  s.name          "Sylveon"
  s.types         :FAIRY
  s.base_stats    hp: 95, attack: 65, defense: 65, speed: 60, sp_atk: 110, sp_def: 130
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      184
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :CUTECHARM
  s.hidden_abilities :PIXILATE
  s.moves do |m|
    m.at 0, :DISARMINGVOICE
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
    m.at 25, :LIGHTSCREEN
    m.at 30, :DRAININGKISS
    m.at 35, :MISTYTERRAIN
    m.at 40, :SKILLSWAP
    m.at 45, :PSYCHUP
    m.at 50, :MOONBLAST
    m.at 55, :LASTRESORT
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CUT, :DAZZLINGGLEAM, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :ECHOEDVOICE, :ENDURE, :FACADE, :FAKETEARS, :FLASH, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :LIGHTSCREEN, :MAGICALLEAF, :MAGICCOAT, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :MUDSLAP, :MYSTICALFIRE, :NATURALGIFT, :PAYDAY, :PLAYROUGH, :PROTECT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :TOXIC, :WEATHERBALL, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   8960
  s.height        1.0
  s.weight        23.5
  s.color         :Pink
  s.shape         :Quadruped
  s.category      "Intertwining"
  s.pokedex_entry "Its ribbonlike feelers give off an aura that weakens hostility in its prey, causing them to let down their guard. Then it attacks."
  s.generation    6
end

GameData::Species.define :XERNEAS do |s|
  s.name          "Xerneas"
  s.types         :FAIRY
  s.base_stats    hp: 126, attack: 131, defense: 95, speed: 99, sp_atk: 131, sp_def: 98
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    45
  s.happiness     0
  s.evs           hp: 3
  s.abilities     :FAIRYAURA
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GRAVITY
    m.at 5, :LIGHTSCREEN
    m.at 10, :AURORABEAM
    m.at 15, :NATUREPOWER
    m.at 20, :NIGHTSLASH
    m.at 25, :AROMATHERAPY
    m.at 30, :PSYCHUP
    m.at 35, :HORNLEECH
    m.at 40, :MISTYTERRAIN
    m.at 45, :INGRAIN
    m.at 50, :TAKEDOWN
    m.at 55, :GEOMANCY
    m.at 60, :MOONBLAST
    m.at 65, :HEALPULSE
    m.at 70, :MEGAHORN
    m.at 75, :CLOSECOMBAT
    m.at 80, :OUTRAGE
    m.at 85, :GIGAIMPACT
  end
  s.tutor_moves   :BLOCK, :BODYSLAM, :CALMMIND, :CLOSECOMBAT, :CONFIDE, :CUT, :DAZZLINGGLEAM, :DEFOG, :DOUBLETEAM, :DRAININGKISS, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FLASH, :FLASHCANNON, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HAIL, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :LASERFOCUS, :LIGHTSCREEN, :MEGAHORN, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :NATURALGIFT, :NATUREPOWER, :OUTRAGE, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROUND, :SECRETPOWER, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TERRAINPULSE, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        3.0
  s.weight        215.0
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Life"
  s.pokedex_entry "Legends say it can share eternal life. It slept for a thousand years in the form of a tree before its revival."
  s.generation    6
  s.flags         :Legendary
end

GameData::Species.define :COMFEY do |s|
  s.name          "Comfey"
  s.types         :FAIRY
  s.base_stats    hp: 51, attack: 52, defense: 90, speed: 100, sp_atk: 82, sp_def: 110
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Fast
  s.base_exp      170
  s.catch_rate    60
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :FLOWERVEIL, :TRIAGE
  s.hidden_abilities :NATURALCURE
  s.moves do |m|
    m.at 1, :WRAP
    m.at 1, :GROWTH
    m.at 3, :VINEWHIP
    m.at 6, :HELPINGHAND
    m.at 9, :DRAININGKISS
    m.at 12, :FLOWERSHIELD
    m.at 15, :MAGICALLEAF
    m.at 18, :SYNTHESIS
    m.at 21, :LEECHSEED
    m.at 24, :GRASSKNOT
    m.at 27, :SWEETKISS
    m.at 30, :FLORALHEALING
    m.at 33, :PETALBLIZZARD
    m.at 36, :AROMATHERAPY
    m.at 39, :PLAYROUGH
    m.at 42, :SWEETSCENT
    m.at 45, :PETALDANCE
    m.at 48, :GRASSYTERRAIN
  end
  s.tutor_moves   :ACROBATICS, :AFTERYOU, :ALLYSWITCH, :AMNESIA, :ATTRACT, :BIND, :BULLETSEED, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DEFOG, :DOUBLETEAM, :DRAININGKISS, :ECHOEDVOICE, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FLING, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :LIGHTSCREEN, :MAGICALLEAF, :MAGICCOAT, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAINSPLIT, :PLAYROUGH, :POLLENPUFF, :PROTECT, :PSYCHUP, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TAILWIND, :TAUNT, :TELEKINESIS, :THIEF, :TOXIC, :TRICK, :TRICKROOM, :UTURN, :WORRYSEED, :TERABLAST
  s.egg_moves     :AFTERYOU, :LEAFTORNADO, :WORRYSEED
  s.egg_groups    :Grass
  s.hatch_steps   5120
  s.height        0.1
  s.weight        0.3
  s.color         :Green
  s.shape         :Head
  s.category      "Posy Picker"
  s.pokedex_entry "Baths prepared with the flowers from its vine have a relaxing effect, so this Pokémon is a hit with many people."
  s.generation    7
  s.wild_item_uncommon :MISTYSEED
end

GameData::Species.define :MILCERY do |s|
  s.name          "Milcery"
  s.types         :FAIRY
  s.base_stats    hp: 45, attack: 40, defense: 40, speed: 34, sp_atk: 50, sp_def: 61
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      54
  s.catch_rate    200
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :SWEETVEIL
  s.hidden_abilities :AROMAVEIL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :AROMATICMIST
    m.at 5, :SWEETKISS
    m.at 10, :SWEETSCENT
    m.at 15, :DRAININGKISS
    m.at 20, :AROMATHERAPY
    m.at 25, :ATTRACT
    m.at 30, :ACIDARMOR
    m.at 35, :DAZZLINGGLEAM
    m.at 40, :RECOVER
    m.at 45, :MISTYTERRAIN
    m.at 50, :ENTRAINMENT
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CHARM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :HELPINGHAND, :HIDDENPOWER, :MIMIC, :MISTYTERRAIN, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TOXIC, :TERABLAST
  s.egg_moves     :BABYDOLLEYES, :LASTRESORT
  s.egg_groups    :Fairy, :Amorphous
  s.hatch_steps   5120
  s.height        0.2
  s.weight        0.3
  s.color         :White
  s.shape         :Head
  s.category      "Cream"
  s.pokedex_entry "This Pokémon was born from sweet-smelling particles in the air. Its body is made of cream."
  s.generation    8
  s.evolves_into  :ALCREMIE, :HoldItem, STRAWBERRYSWEET
  s.evolves_into  :ALCREMIE, :HoldItem, BERRYSWEET
  s.evolves_into  :ALCREMIE, :HoldItem, LOVESWEET
  s.evolves_into  :ALCREMIE, :HoldItem, STARSWEET
  s.evolves_into  :ALCREMIE, :HoldItem, CLOVERSWEET
  s.evolves_into  :ALCREMIE, :HoldItem, FLOWERSWEET
  s.evolves_into  :ALCREMIE, :HoldItem, RIBBONSWEET
end

GameData::Species.define :ALCREMIE do |s|
  s.name          "Alcremie"
  s.types         :FAIRY
  s.base_stats    hp: 65, attack: 60, defense: 75, speed: 64, sp_atk: 110, sp_def: 121
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    100
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :SWEETVEIL
  s.hidden_abilities :AROMAVEIL
  s.moves do |m|
    m.at 0, :DECORATE
    m.at 1, :TACKLE
    m.at 1, :AROMATICMIST
    m.at 1, :SWEETKISS
    m.at 1, :SWEETSCENT
    m.at 15, :DRAININGKISS
    m.at 20, :AROMATHERAPY
    m.at 25, :ATTRACT
    m.at 30, :ACIDARMOR
    m.at 35, :DAZZLINGGLEAM
    m.at 40, :RECOVER
    m.at 45, :MISTYTERRAIN
    m.at 50, :ENTRAINMENT
  end
  s.tutor_moves   :ATTRACT, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FLING, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :LIGHTSCREEN, :MAGICALLEAF, :MAGICROOM, :METRONOME, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :MYSTICALFIRE, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYSHOCK, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TOXIC, :TRIATTACK, :WONDERROOM, :TERABLAST
  s.egg_groups    :Fairy, :Amorphous
  s.hatch_steps   5120
  s.height        0.3
  s.weight        0.5
  s.color         :White
  s.shape         :HeadBase
  s.category      "Cream"
  s.pokedex_entry "When Alcremie is content, the cream it secretes from its hands becomes sweeter and richer."
  s.generation    8
  s.flags         :AllFormsShareGmax
end

GameData::Species.define :ZACIAN do |s|
  s.name          "Zacian"
  s.types         :FAIRY
  s.base_stats    hp: 92, attack: 130, defense: 115, speed: 138, sp_atk: 80, sp_def: 115
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      335
  s.catch_rate    10
  s.happiness     0
  s.evs           speed: 3
  s.abilities     :INTREPIDSWORD
  s.moves do |m|
    m.at 1, :SACREDSWORD
    m.at 1, :QUICKGUARD
    m.at 1, :METALCLAW
    m.at 1, :HOWL
    m.at 1, :QUICKATTACK
    m.at 1, :BITE
    m.at 11, :SLASH
    m.at 22, :SWORDSDANCE
    m.at 33, :IRONHEAD
    m.at 44, :LASERFOCUS
    m.at 55, :CRUNCH
    m.at 66, :MOONBLAST
    m.at 77, :CLOSECOMBAT
    m.at 88, :GIGAIMPACT
  end
  s.tutor_moves   :AGILITY, :AIRSLASH, :ASSURANCE, :BRICKBREAK, :BRUTALSWING, :CLOSECOMBAT, :CONFIDE, :CRUNCH, :DIG, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FIREFANG, :FOCUSBLAST, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEFANG, :IMPRISON, :IRONHEAD, :IRONTAIL, :MIMIC, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :PSYCHOCUT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :SOLARBLADE, :STEELBEAM, :SUBSTITUTE, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILSLAP, :THUNDERFANG, :TOXIC, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        2.8
  s.weight        110.0
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Warrior"
  s.pokedex_entry "Known as a legendary hero, this Pokémon absorbs metal particles, transforming them into a weapon it uses to battle."
  s.generation    8
  s.flags         :Legendary, :CannotDynamax
  s.wild_item_common   :RUSTEDSWORD
  s.wild_item_uncommon :RUSTEDSWORD
  s.wild_item_rare     :RUSTEDSWORD
end

