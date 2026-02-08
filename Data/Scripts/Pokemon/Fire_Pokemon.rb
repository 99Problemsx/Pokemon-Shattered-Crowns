#===============================================================================
# Shattered Crowns - Fire Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :CHARMANDER do |s|
  s.name          "Charmander"
  s.types         :FIRE
  s.base_stats    hp: 39, attack: 52, defense: 43, speed: 65, sp_atk: 60, sp_def: 50
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :BLAZE
  s.hidden_abilities :SOLARPOWER
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 4, :EMBER
    m.at 8, :SMOKESCREEN
    m.at 12, :DRAGONBREATH
    m.at 17, :FIREFANG
    m.at 20, :SLASH
    m.at 24, :FLAMETHROWER
    m.at 28, :SCARYFACE
    m.at 32, :FIRESPIN
    m.at 36, :INFERNO
    m.at 40, :FLAREBLITZ
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BEATUP, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DYNAMICPUNCH, :ECHOEDVOICE, :ENDURE, :FACADE, :FALSESWIPE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :IRONTAIL, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :THUNDERPUNCH, :WEATHERBALL, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_moves     :AIRCUTTER, :ANCIENTPOWER, :BEATUP, :BELLYDRUM, :BITE, :COUNTER, :CRUNCH, :DRAGONDANCE, :DRAGONRUSH, :DRAGONTAIL, :FLAREBLITZ, :METALCLAW, :OUTRAGE, :WINGATTACK
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   5120
  s.height        0.6
  s.weight        8.5
  s.color         :Red
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Lizard"
  s.pokedex_entry "The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is happy, and blazes when it is enraged."
  s.generation    1
  s.evolves_into  :CHARMELEON, :Level, 16
end

GameData::Species.define :CHARMELEON do |s|
  s.name          "Charmeleon"
  s.types         :FIRE
  s.base_stats    hp: 58, attack: 64, defense: 58, speed: 80, sp_atk: 80, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1, speed: 1
  s.abilities     :BLAZE
  s.hidden_abilities :SOLARPOWER
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :EMBER
    m.at 1, :SMOKESCREEN
    m.at 12, :DRAGONBREATH
    m.at 19, :FIREFANG
    m.at 24, :SLASH
    m.at 30, :FLAMETHROWER
    m.at 37, :SCARYFACE
    m.at 42, :FIRESPIN
    m.at 48, :INFERNO
    m.at 54, :FLAREBLITZ
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BEATUP, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DYNAMICPUNCH, :ECHOEDVOICE, :ENDURE, :FACADE, :FALSESWIPE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :IRONTAIL, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :THUNDERPUNCH, :WEATHERBALL, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   5120
  s.height        1.1
  s.weight        19.0
  s.color         :Red
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Flame"
  s.pokedex_entry "Without pity, its sharp claws destroy foes. If it encounters a strong enemy, it becomes agitated, and the flame on its tail flares with a bluish white color."
  s.generation    1
  s.evolves_into  :CHARIZARD, :Level, 36
end

GameData::Species.define :CHARIZARD do |s|
  s.name          "Charizard"
  s.types         :FIRE, :FLYING
  s.base_stats    hp: 78, attack: 84, defense: 78, speed: 100, sp_atk: 109, sp_def: 85
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      267
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :BLAZE
  s.hidden_abilities :SOLARPOWER
  s.moves do |m|
    m.at 0, :AIRSLASH
    m.at 1, :DRAGONCLAW
    m.at 1, :HEATWAVE
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :EMBER
    m.at 1, :SMOKESCREEN
    m.at 12, :DRAGONBREATH
    m.at 19, :FIREFANG
    m.at 24, :SLASH
    m.at 30, :FLAMETHROWER
    m.at 39, :SCARYFACE
    m.at 46, :FIRESPIN
    m.at 54, :INFERNO
    m.at 62, :FLAREBLITZ
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :AIRSLASH, :ATTRACT, :BEATUP, :BLASTBURN, :BLAZEKICK, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :DYNAMICPUNCH, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FALSESWIPE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FLY, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HEATCRASH, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HURRICANE, :HYPERBEAM, :INCINERATE, :IRONTAIL, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :MYSTICALFIRE, :NATURALGIFT, :OMINOUSWIND, :OUTRAGE, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SCALESHOT, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SKYDROP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :THUNDERPUNCH, :TWISTER, :WEATHERBALL, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   5120
  s.height        1.7
  s.weight        90.5
  s.color         :Red
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Flame"
  s.pokedex_entry "A Charizard flies about in search of strong opponents. It breathes intense flames that can melt any material. However, it will never torch a weaker foe."
  s.generation    1
end

GameData::Species.define :VULPIX do |s|
  s.name          "Vulpix"
  s.types         :FIRE
  s.base_stats    hp: 38, attack: 41, defense: 40, speed: 65, sp_atk: 50, sp_def: 65
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Medium
  s.base_exp      60
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :FLASHFIRE
  s.hidden_abilities :DROUGHT
  s.moves do |m|
    m.at 1, :EMBER
    m.at 1, :TAILWHIP
    m.at 4, :DISABLE
    m.at 8, :QUICKATTACK
    m.at 12, :SPITE
    m.at 16, :INCINERATE
    m.at 20, :CONFUSERAY
    m.at 24, :WILLOWISP
    m.at 28, :EXTRASENSORY
    m.at 32, :FLAMETHROWER
    m.at 36, :IMPRISON
    m.at 40, :FIRESPIN
    m.at 44, :SAFEGUARD
    m.at 48, :INFERNO
    m.at 52, :GRUDGE
    m.at 56, :FIREBLAST
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BODYSLAM, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :COVET, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FOULPLAY, :FRUSTRATION, :HEADBUTT, :HEATWAVE, :HEX, :HIDDENPOWER, :IMPRISON, :INCINERATE, :IRONTAIL, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OMINOUSWIND, :OVERHEAT, :PAINSPLIT, :PAYBACK, :POWERSWAP, :PROTECT, :PSYCHUP, :REST, :RETURN, :ROAR, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILSLAP, :WEATHERBALL, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BABYDOLLEYES, :DISABLE, :EXTRASENSORY, :FLAIL, :FLAMECHARGE, :FLAREBLITZ, :HEATWAVE, :HEX, :HOWL, :HYPNOSIS, :MEMENTO, :POWERSWAP, :ROAR, :SPITE
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        9.9
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Fox"
  s.pokedex_entry "It can freely control fire, making fiery orbs fly like will-o'-the-wisps. Just before evolution, its six tails grow hot as if on fire."
  s.generation    1
  s.evolves_into  :NINETALES, :Item, FIRESTONE
  s.wild_item_uncommon :CHARCOAL
end

GameData::Species.define :NINETALES do |s|
  s.name          "Ninetales"
  s.types         :FIRE
  s.base_stats    hp: 73, attack: 76, defense: 75, speed: 100, sp_atk: 81, sp_def: 100
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Medium
  s.base_exp      177
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_defense: 1, speed: 1
  s.abilities     :FLASHFIRE
  s.hidden_abilities :DROUGHT
  s.moves do |m|
    m.at 1, :NASTYPLOT
    m.at 1, :SPITE
    m.at 1, :INCINERATE
    m.at 1, :CONFUSERAY
    m.at 1, :WILLOWISP
    m.at 1, :EXTRASENSORY
    m.at 1, :FLAMETHROWER
    m.at 1, :IMPRISON
    m.at 1, :FIRESPIN
    m.at 1, :SAFEGUARD
    m.at 1, :INFERNO
    m.at 1, :GRUDGE
    m.at 1, :FIREBLAST
    m.at 1, :EMBER
    m.at 1, :TAILWHIP
    m.at 1, :DISABLE
    m.at 1, :QUICKATTACK
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BODYSLAM, :BURNINGJEALOUSY, :CALMMIND, :CAPTIVATE, :CONFIDE, :COVET, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEATWAVE, :HEX, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :INCINERATE, :IRONTAIL, :LASERFOCUS, :MIMIC, :MYSTICALFIRE, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :OVERHEAT, :PAINSPLIT, :PAYBACK, :POWERSWAP, :PROTECT, :PSYCHUP, :PSYSHOCK, :REST, :RETURN, :ROAR, :ROLEPLAY, :ROUND, :SAFEGUARD, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILSLAP, :WEATHERBALL, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.1
  s.weight        19.9
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Fox"
  s.pokedex_entry "It has long been said that each of the nine tails embody an enchanted power. A long-lived Ninetales will have fur that shines like gold."
  s.generation    1
  s.wild_item_uncommon :CHARCOAL
end

GameData::Species.define :GROWLITHE do |s|
  s.name          "Growlithe"
  s.types         :FIRE
  s.base_stats    hp: 55, attack: 70, defense: 45, speed: 60, sp_atk: 70, sp_def: 50
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Slow
  s.base_exp      70
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :INTIMIDATE, :FLASHFIRE
  s.hidden_abilities :JUSTIFIED
  s.moves do |m|
    m.at 1, :EMBER
    m.at 1, :LEER
    m.at 4, :HOWL
    m.at 8, :BITE
    m.at 12, :FLAMEWHEEL
    m.at 16, :HELPINGHAND
    m.at 20, :AGILITY
    m.at 24, :FIREFANG
    m.at 28, :RETALIATE
    m.at 32, :CRUNCH
    m.at 36, :TAKEDOWN
    m.at 40, :FLAMETHROWER
    m.at 44, :ROAR
    m.at 48, :PLAYROUGH
    m.at 52, :REVERSAL
    m.at 56, :FLAREBLITZ
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :COVET, :CRUNCH, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FRUSTRATION, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :INCINERATE, :IRONTAIL, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROAR, :ROCKSMASH, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THIEF, :WILDCHARGE, :WILLOWISP, :TERABLAST
  s.egg_moves     :BODYSLAM, :BURNUP, :CLOSECOMBAT, :COVET, :CRUNCH, :DOUBLEEDGE, :DOUBLEKICK, :FIRESPIN, :FLAREBLITZ, :HEATWAVE, :HOWL, :MORNINGSUN, :THRASH
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.7
  s.weight        19.0
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Puppy"
  s.pokedex_entry "Its superb sense of smell ensures that this Pokémon won't forget any scent, no matter what. It uses its sense of smell to detect the emotions of others."
  s.generation    1
  s.evolves_into  :ARCANINE, :Item, FIRESTONE
end

GameData::Species.define :ARCANINE do |s|
  s.name          "Arcanine"
  s.types         :FIRE
  s.base_stats    hp: 90, attack: 110, defense: 80, speed: 95, sp_atk: 100, sp_def: 80
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Slow
  s.base_exp      194
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :INTIMIDATE, :FLASHFIRE
  s.hidden_abilities :JUSTIFIED
  s.moves do |m|
    m.at 0, :EXTREMESPEED
    m.at 1, :BURNUP
    m.at 1, :FLAMEWHEEL
    m.at 1, :HELPINGHAND
    m.at 1, :AGILITY
    m.at 1, :FIREFANG
    m.at 1, :RETALIATE
    m.at 1, :CRUNCH
    m.at 1, :TAKEDOWN
    m.at 1, :FLAMETHROWER
    m.at 1, :ROAR
    m.at 1, :PLAYROUGH
    m.at 1, :REVERSAL
    m.at 1, :FLAREBLITZ
    m.at 1, :EMBER
    m.at 1, :LEER
    m.at 1, :HOWL
    m.at 1, :BITE
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ATTRACT, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :COVET, :CRUNCH, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :INCINERATE, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROAR, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SAFEGUARD, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THIEF, :THUNDERFANG, :WILDCHARGE, :WILLOWISP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.9
  s.weight        155.0
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Legendary"
  s.pokedex_entry "This fleet-footed Pokémon is said to run over 6,200 miles in a single day and night. The fire that blazes wildly within its body is its source of power."
  s.generation    1
end

GameData::Species.define :PONYTA do |s|
  s.name          "Ponyta"
  s.types         :FIRE
  s.base_stats    hp: 50, attack: 85, defense: 55, speed: 90, sp_atk: 65, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      82
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :RUNAWAY, :FLASHFIRE
  s.hidden_abilities :FLAMEBODY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 5, :TAILWHIP
    m.at 10, :EMBER
    m.at 15, :FLAMECHARGE
    m.at 20, :AGILITY
    m.at 25, :FLAMEWHEEL
    m.at 30, :STOMP
    m.at 35, :FIRESPIN
    m.at 41, :TAKEDOWN
    m.at 45, :INFERNO
    m.at 50, :FIREBLAST
    m.at 55, :FLAREBLITZ
  end
  s.tutor_moves   :AGILITY, :ALLYSWITCH, :ATTRACT, :BODYSLAM, :BOUNCE, :CAPTIVATE, :CHARM, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FRUSTRATION, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HIGHHORSEPOWER, :INCINERATE, :IRONTAIL, :LOWKICK, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OVERHEAT, :PLAYROUGH, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :SOLARBLADE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :WILDCHARGE, :WILLOWISP, :TERABLAST
  s.egg_moves     :ALLYSWITCH, :CHARM, :DOUBLEEDGE, :DOUBLEKICK, :FLAMEWHEEL, :HIGHHORSEPOWER, :HORNDRILL, :HYPNOSIS, :LOWKICK, :MORNINGSUN, :THRASH
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        30.0
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Fire Horse"
  s.pokedex_entry "A Ponyta is very weak at birth. It can barely stand up. Its legs become stronger as it stumbles and falls while trying to keep up with its parent."
  s.generation    1
  s.evolves_into  :RAPIDASH, :Level, 40
end

GameData::Species.define :RAPIDASH do |s|
  s.name          "Rapidash"
  s.types         :FIRE
  s.base_stats    hp: 65, attack: 100, defense: 70, speed: 105, sp_atk: 80, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    60
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :RUNAWAY, :FLASHFIRE
  s.hidden_abilities :FLAMEBODY
  s.moves do |m|
    m.at 0, :SMARTSTRIKE
    m.at 1, :MEGAHORN
    m.at 1, :POISONJAB
    m.at 1, :TACKLE
    m.at 1, :QUICKATTACK
    m.at 1, :GROWL
    m.at 1, :TAILWHIP
    m.at 1, :EMBER
    m.at 15, :FLAMECHARGE
    m.at 20, :AGILITY
    m.at 25, :FLAMEWHEEL
    m.at 30, :STOMP
    m.at 35, :FIRESPIN
    m.at 43, :TAKEDOWN
    m.at 49, :INFERNO
    m.at 56, :FIREBLAST
    m.at 63, :FLAREBLITZ
  end
  s.tutor_moves   :AGILITY, :ALLYSWITCH, :ATTRACT, :BATONPASS, :BODYSLAM, :BOUNCE, :CAPTIVATE, :CHARM, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :INCINERATE, :IRONTAIL, :LOWKICK, :MEGAHORN, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OVERHEAT, :PAYDAY, :PLAYROUGH, :POISONJAB, :PROTECT, :REST, :RETURN, :ROUND, :SCORCHINGSANDS, :SECRETPOWER, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SOLARBEAM, :SOLARBLADE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :THROATCHOP, :WILDCHARGE, :WILLOWISP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.7
  s.weight        95.0
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Fire Horse"
  s.pokedex_entry "It usually canters casually in the fields and plains. But once a Rapidash turns serious, its fiery manes flare and blaze as it gallops its way up to 150 mph."
  s.generation    1
end

GameData::Species.define :MAGMAR do |s|
  s.name          "Magmar"
  s.types         :FIRE
  s.base_stats    hp: 65, attack: 95, defense: 57, speed: 93, sp_atk: 100, sp_def: 85
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :FLAMEBODY
  s.hidden_abilities :VITALSPIRIT
  s.moves do |m|
    m.at 1, :SMOG
    m.at 1, :LEER
    m.at 1, :EMBER
    m.at 1, :SMOKESCREEN
    m.at 12, :CLEARSMOG
    m.at 16, :FLAMEWHEEL
    m.at 20, :CONFUSERAY
    m.at 24, :SCARYFACE
    m.at 28, :FIREPUNCH
    m.at 34, :LAVAPLUME
    m.at 40, :LOWKICK
    m.at 46, :FLAMETHROWER
    m.at 52, :SUNNYDAY
    m.at 58, :FIREBLAST
    m.at 64, :HYPERBEAM
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONTAIL, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OVERHEAT, :POWERSWAP, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SCARYFACE, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THIEF, :THUNDERPUNCH, :UPROAR, :WILLOWISP, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   6400
  s.height        1.3
  s.weight        44.5
  s.color         :Red
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Spitfire"
  s.pokedex_entry "In battle, it blows out intense flames from all over its body to intimidate its foe. These fiery bursts create heat waves that ignite grass and trees."
  s.generation    1
  s.evolves_into  :MAGMORTAR, :TradeItem, MAGMARIZER
  s.wild_item_uncommon :MAGMARIZER
end

GameData::Species.define :FLAREON do |s|
  s.name          "Flareon"
  s.types         :FIRE
  s.base_stats    hp: 65, attack: 130, defense: 60, speed: 65, sp_atk: 95, sp_def: 110
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      184
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :FLASHFIRE
  s.hidden_abilities :GUTS
  s.moves do |m|
    m.at 0, :EMBER
    m.at 1, :COVET
    m.at 1, :SWIFT
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
    m.at 20, :SMOG
    m.at 25, :BITE
    m.at 30, :FIREFANG
    m.at 35, :FIRESPIN
    m.at 40, :LAVAPLUME
    m.at 45, :SCARYFACE
    m.at 50, :FLAREBLITZ
    m.at 55, :LASTRESORT
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :BODYSLAM, :BURNINGJEALOUSY, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FAKETEARS, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEALBELL, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :INCINERATE, :IRONTAIL, :LASERFOCUS, :LASTRESORT, :MIMIC, :MUDSLAP, :MYSTICALFIRE, :NATURALGIFT, :OVERHEAT, :PAYDAY, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNORE, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :WEATHERBALL, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   8960
  s.height        0.9
  s.weight        25.0
  s.color         :Red
  s.shape         :Quadruped
  s.habitat       :Urban
  s.category      "Flame"
  s.pokedex_entry "Flareon's fluffy fur releases heat into the air so that its body does not get excessively hot. Its body temperature can rise to a maximum of 1,650 degrees F."
  s.generation    1
end

GameData::Species.define :MOLTRES do |s|
  s.name          "Moltres"
  s.types         :FIRE, :FLYING
  s.base_stats    hp: 90, attack: 100, defense: 90, speed: 90, sp_atk: 125, sp_def: 85
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           sp_attack: 3
  s.abilities     :PRESSURE
  s.hidden_abilities :FLAMEBODY
  s.moves do |m|
    m.at 1, :GUST
    m.at 1, :LEER
    m.at 5, :EMBER
    m.at 10, :SAFEGUARD
    m.at 15, :WINGATTACK
    m.at 20, :AGILITY
    m.at 25, :ANCIENTPOWER
    m.at 30, :INCINERATE
    m.at 35, :AIRSLASH
    m.at 40, :ROOST
    m.at 45, :HEATWAVE
    m.at 50, :SUNNYDAY
    m.at 55, :HURRICANE
    m.at 60, :ENDURE
    m.at 65, :BURNUP
    m.at 70, :SKYATTACK
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :ANCIENTPOWER, :BRAVEBIRD, :BURNINGJEALOUSY, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLY, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :INCINERATE, :LASERFOCUS, :MIMIC, :MUDSLAP, :MYSTICALFIRE, :NATURALGIFT, :OMINOUSWIND, :OVERHEAT, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROOST, :ROUND, :SAFEGUARD, :SANDSTORM, :SCORCHINGSANDS, :SECRETPOWER, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TWISTER, :UTURN, :WEATHERBALL, :WILLOWISP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        2.0
  s.weight        60.0
  s.color         :Yellow
  s.shape         :Winged
  s.habitat       :Rare
  s.category      "Flame"
  s.pokedex_entry "Moltres is a legendary bird Pokémon that can control fire. If injured, it is said to dip its body in the molten magma of a volcano to burn and heal itself."
  s.generation    1
  s.flags         :Legendary
end

GameData::Species.define :CYNDAQUIL do |s|
  s.name          "Cyndaquil"
  s.types         :FIRE
  s.base_stats    hp: 39, attack: 52, defense: 43, speed: 65, sp_atk: 60, sp_def: 50
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :BLAZE
  s.hidden_abilities :FLASHFIRE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 6, :SMOKESCREEN
    m.at 10, :EMBER
    m.at 13, :QUICKATTACK
    m.at 19, :FLAMEWHEEL
    m.at 22, :DEFENSECURL
    m.at 28, :FLAMECHARGE
    m.at 31, :SWIFT
    m.at 37, :LAVAPLUME
    m.at 40, :FLAMETHROWER
    m.at 46, :INFERNO
    m.at 49, :ROLLOUT
    m.at 55, :DOUBLEEDGE
    m.at 58, :BURNUP
    m.at 64, :ERUPTION
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FLAMECHARGE, :FLAMETHROWER, :FRUSTRATION, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :INCINERATE, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OVERHEAT, :PROTECT, :REST, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :WILDCHARGE, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_moves     :COVET, :CRUSHCLAW, :DOUBLEEDGE, :DOUBLEKICK, :EXTRASENSORY, :FLAREBLITZ, :FURYSWIPES, :HOWL, :NATUREPOWER, :QUICKATTACK, :REVERSAL, :THRASH
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.5
  s.weight        7.9
  s.color         :Yellow
  s.shape         :Bipedal
  s.habitat       :Grassland
  s.category      "Fire Mouse"
  s.pokedex_entry "It flares flames from its back to protect itself. The fire burns vigorously if the Pokémon is angry. When it is tired, it sputters with incomplete combustion."
  s.generation    2
  s.evolves_into  :QUILAVA, :Level, 14
end

GameData::Species.define :QUILAVA do |s|
  s.name          "Quilava"
  s.types         :FIRE
  s.base_stats    hp: 58, attack: 64, defense: 58, speed: 80, sp_atk: 80, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1, speed: 1
  s.abilities     :BLAZE
  s.hidden_abilities :FLASHFIRE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :SMOKESCREEN
    m.at 6, :SMOKESCREEN
    m.at 10, :EMBER
    m.at 13, :QUICKATTACK
    m.at 20, :FLAMEWHEEL
    m.at 24, :DEFENSECURL
    m.at 31, :SWIFT
    m.at 35, :FLAMECHARGE
    m.at 42, :LAVAPLUME
    m.at 46, :FLAMETHROWER
    m.at 53, :INFERNO
    m.at 57, :ROLLOUT
    m.at 64, :DOUBLEEDGE
    m.at 68, :BURNUP
    m.at 75, :ERUPTION
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FLAMECHARGE, :FLAMETHROWER, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :INCINERATE, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OVERHEAT, :PROTECT, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROLLOUT, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :WILDCHARGE, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.9
  s.weight        19.0
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Volcano"
  s.pokedex_entry "It intimidates foes with intense gusts of flames and superheated air. Its quick nimbleness lets it dodge attacks even while scorching an enemy."
  s.generation    2
  s.evolves_into  :TYPHLOSION, :Level, 36
end

GameData::Species.define :TYPHLOSION do |s|
  s.name          "Typhlosion"
  s.types         :FIRE
  s.base_stats    hp: 78, attack: 84, defense: 78, speed: 100, sp_atk: 109, sp_def: 85
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      267
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :BLAZE
  s.hidden_abilities :FLASHFIRE
  s.moves do |m|
    m.at 1, :ERUPTION
    m.at 1, :DOUBLEEDGE
    m.at 1, :GYROBALL
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :SMOKESCREEN
    m.at 1, :EMBER
    m.at 6, :SMOKESCREEN
    m.at 10, :EMBER
    m.at 13, :QUICKATTACK
    m.at 20, :FLAMEWHEEL
    m.at 24, :DEFENSECURL
    m.at 31, :SWIFT
    m.at 35, :FLAMECHARGE
    m.at 43, :LAVAPLUME
    m.at 48, :FLAMETHROWER
    m.at 56, :INFERNO
    m.at 61, :ROLLOUT
    m.at 69, :DOUBLEEDGE
    m.at 74, :BURNUP
    m.at 82, :ERUPTION
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BLASTBURN, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIREPUNCH, :FLAMECHARGE, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GYROBALL, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :LASERFOCUS, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THROATCHOP, :THUNDERPUNCH, :WILDCHARGE, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.7
  s.weight        79.5
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Volcano"
  s.pokedex_entry "It can hide behind a shimmering heat haze that it creates using its intense flames. Typhlosion create blazing explosive blasts that burn everything to cinders."
  s.generation    2
end

GameData::Species.define :SLUGMA do |s|
  s.name          "Slugma"
  s.types         :FIRE
  s.base_stats    hp: 40, attack: 40, defense: 40, speed: 20, sp_atk: 70, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      50
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :MAGMAARMOR, :FLAMEBODY
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 1, :YAWN
    m.at 1, :SMOG
    m.at 6, :EMBER
    m.at 8, :ROCKTHROW
    m.at 13, :HARDEN
    m.at 15, :INCINERATE
    m.at 20, :CLEARSMOG
    m.at 22, :ANCIENTPOWER
    m.at 29, :ROCKSLIDE
    m.at 34, :LAVAPLUME
    m.at 36, :AMNESIA
    m.at 41, :BODYSLAM
    m.at 43, :RECOVER
    m.at 48, :FLAMETHROWER
    m.at 50, :EARTHPOWER
  end
  s.tutor_moves   :AFTERYOU, :ANCIENTPOWER, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :INCINERATE, :INFESTATION, :IRONDEFENSE, :LIGHTSCREEN, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OVERHEAT, :PAINSPLIT, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :WILLOWISP, :TERABLAST
  s.egg_moves     :ACIDARMOR, :CURSE, :EARTHPOWER, :GUARDSWAP, :HEATWAVE, :INFERNO, :MEMENTO, :ROLLOUT, :SMOKESCREEN, :SPITUP, :STOCKPILE, :SWALLOW
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.7
  s.weight        35.0
  s.color         :Red
  s.shape         :Serpentine
  s.habitat       :Mountain
  s.category      "Lava"
  s.pokedex_entry "It is a species of Pokémon that lives in volcanic areas. If its body cools, its skin hardens and immobilizes it. To avoid that, it sleeps near magma."
  s.generation    2
  s.evolves_into  :MAGCARGO, :Level, 38
end

GameData::Species.define :MAGCARGO do |s|
  s.name          "Magcargo"
  s.types         :FIRE, :ROCK
  s.base_stats    hp: 60, attack: 50, defense: 120, speed: 30, sp_atk: 90, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      151
  s.catch_rate    75
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :MAGMAARMOR, :FLAMEBODY
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 0, :SHELLSMASH
    m.at 1, :EARTHPOWER
    m.at 1, :YAWN
    m.at 1, :SMOG
    m.at 1, :EMBER
    m.at 1, :ROCKTHROW
    m.at 6, :EMBER
    m.at 8, :ROCKTHROW
    m.at 13, :HARDEN
    m.at 15, :INCINERATE
    m.at 20, :CLEARSMOG
    m.at 22, :ANCIENTPOWER
    m.at 29, :ROCKSLIDE
    m.at 34, :LAVAPLUME
    m.at 36, :AMNESIA
    m.at 43, :BODYSLAM
    m.at 47, :RECOVER
    m.at 54, :FLAMETHROWER
    m.at 58, :EARTHPOWER
  end
  s.tutor_moves   :AFTERYOU, :ANCIENTPOWER, :ATTRACT, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :INFESTATION, :IRONDEFENSE, :LIGHTSCREEN, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OVERHEAT, :PAINSPLIT, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :WILLOWISP, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.8
  s.weight        55.0
  s.color         :Red
  s.shape         :Serpentine
  s.habitat       :Mountain
  s.category      "Lava"
  s.pokedex_entry "The shell on its back is made of hardened magma. Tens of thousands of years spent living in volcanic craters have turned Magcargo's bodies into magma."
  s.generation    2
end

GameData::Species.define :MAGBY do |s|
  s.name          "Magby"
  s.types         :FIRE
  s.base_stats    hp: 45, attack: 75, defense: 37, speed: 83, sp_atk: 70, sp_def: 55
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Medium
  s.base_exp      73
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :FLAMEBODY
  s.hidden_abilities :VITALSPIRIT
  s.moves do |m|
    m.at 1, :SMOG
    m.at 1, :LEER
    m.at 4, :EMBER
    m.at 8, :SMOKESCREEN
    m.at 12, :CLEARSMOG
    m.at 16, :FLAMEWHEEL
    m.at 20, :CONFUSERAY
    m.at 24, :SCARYFACE
    m.at 28, :FIREPUNCH
    m.at 32, :LAVAPLUME
    m.at 36, :LOWKICK
    m.at 40, :FLAMETHROWER
    m.at 44, :SUNNYDAY
    m.at 48, :FIREBLAST
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :INCINERATE, :IRONTAIL, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OVERHEAT, :POWERSWAP, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROCKSMASH, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THIEF, :THUNDERPUNCH, :UPROAR, :WILLOWISP, :TERABLAST
  s.egg_moves     :BELCH, :BELLYDRUM, :CROSSCHOP, :DYNAMICPUNCH, :FLAREBLITZ, :FOCUSENERGY, :FOCUSPUNCH, :MACHPUNCH, :MEGAPUNCH, :POWERSWAP, :SCREECH, :THUNDERPUNCH
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        0.7
  s.weight        21.4
  s.color         :Red
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Live Coal"
  s.pokedex_entry "If a Magby is spouting yellow flames from its mouth, it is in good health. When it is fatigued, black smoke will be mixed in with the flames."
  s.generation    2
  s.evolves_into  :MAGMAR, :Level, 30
  s.wild_item_uncommon :MAGMARIZER
end

GameData::Species.define :ENTEI do |s|
  s.name          "Entei"
  s.types         :FIRE
  s.base_stats    hp: 115, attack: 115, defense: 85, speed: 100, sp_atk: 90, sp_def: 75
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           hp: 1, attack: 2
  s.abilities     :PRESSURE
  s.hidden_abilities :INNERFOCUS
  s.moves do |m|
    m.at 1, :SACREDFIRE
    m.at 1, :EXTREMESPEED
    m.at 1, :EMBER
    m.at 1, :LEER
    m.at 1, :STOMP
    m.at 1, :SMOKESCREEN
    m.at 6, :FLAMEWHEEL
    m.at 12, :BITE
    m.at 18, :CALMMIND
    m.at 24, :ROAR
    m.at 30, :FIREFANG
    m.at 36, :SCARYFACE
    m.at 42, :CRUNCH
    m.at 48, :EXTRASENSORY
    m.at 54, :LAVAPLUME
    m.at 60, :SWAGGER
    m.at 66, :SUNNYDAY
    m.at 72, :FIREBLAST
    m.at 78, :ERUPTION
  end
  s.tutor_moves   :AGILITY, :BODYSLAM, :BULLDOZE, :CALMMIND, :CONFIDE, :CRUNCH, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLASH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :MIMIC, :MUDSLAP, :NATURALGIFT, :OVERHEAT, :PROTECT, :PSYCHUP, :QUASH, :RAINDANCE, :REFLECT, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SANDSTORM, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNARL, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :WEATHERBALL, :WILLOWISP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        2.1
  s.weight        198.0
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Volcano"
  s.pokedex_entry "Entei embodies the passion of magma. It is thought to have been born in the eruption of a volcano. It blasts fire that consumes all that it touches."
  s.generation    2
  s.flags         :Legendary
end

GameData::Species.define :HOOH do |s|
  s.name          "Ho-Oh"
  s.types         :FIRE, :FLYING
  s.base_stats    hp: 106, attack: 130, defense: 90, speed: 90, sp_atk: 110, sp_def: 154
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    3
  s.happiness     0
  s.evs           sp_defense: 3
  s.abilities     :PRESSURE
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :GUST
    m.at 1, :WHIRLWIND
    m.at 1, :WEATHERBALL
    m.at 1, :ANCIENTPOWER
    m.at 9, :LIFEDEW
    m.at 18, :SAFEGUARD
    m.at 27, :CALMMIND
    m.at 36, :EXTRASENSORY
    m.at 45, :RECOVER
    m.at 54, :SACREDFIRE
    m.at 63, :SUNNYDAY
    m.at 72, :FIREBLAST
    m.at 81, :FUTURESIGHT
    m.at 90, :SKYATTACK
    m.at 99, :BURNUP
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :AIRSLASH, :ANCIENTPOWER, :BRAVEBIRD, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DUALWINGBEAT, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLASH, :FLY, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GIGAIMPACT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IMPRISON, :INCINERATE, :IRONHEAD, :LASERFOCUS, :LIGHTSCREEN, :MIMIC, :MUDSLAP, :MYSTICALFIRE, :NATURALGIFT, :OMINOUSWIND, :OVERHEAT, :PLUCK, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROOST, :ROUND, :SAFEGUARD, :SANDSTORM, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TWISTER, :WEATHERBALL, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        3.8
  s.weight        199.0
  s.color         :Red
  s.shape         :Winged
  s.habitat       :Rare
  s.category      "Rainbow"
  s.pokedex_entry "Its feathers--which glow in seven colors depending on the angle at which light strikes them--are thought to bring joy. It is said to live at the foot of a rainbow."
  s.generation    2
  s.flags         :Legendary
  s.wild_item_common   :SACREDASH
  s.wild_item_uncommon :SACREDASH
  s.wild_item_rare     :SACREDASH
end

GameData::Species.define :TORCHIC do |s|
  s.name          "Torchic"
  s.types         :FIRE
  s.base_stats    hp: 45, attack: 60, defense: 40, speed: 45, sp_atk: 70, sp_def: 50
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :BLAZE
  s.hidden_abilities :SPEEDBOOST
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 3, :EMBER
    m.at 6, :QUICKATTACK
    m.at 9, :FLAMECHARGE
    m.at 12, :DETECT
    m.at 15, :SANDATTACK
    m.at 18, :AERIALACE
    m.at 21, :SLASH
    m.at 24, :BOUNCE
    m.at 27, :FOCUSENERGY
    m.at 30, :FLAMETHROWER
    m.at 33, :FEATHERDANCE
    m.at 36, :REVERSAL
    m.at 39, :FLAREBLITZ
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ASSURANCE, :ATTRACT, :BATONPASS, :BODYSLAM, :BOUNCE, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FOCUSENERGY, :FRUSTRATION, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :LASTRESORT, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OVERHEAT, :PROTECT, :REST, :RETURN, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_moves     :AGILITY, :BATONPASS, :COUNTER, :CRUSHCLAW, :CURSE, :FEATHERDANCE, :FEINT, :LASTRESORT, :LOWKICK, :NIGHTSLASH, :PECK, :REVERSAL
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        2.5
  s.color         :Red
  s.shape         :HeadLegs
  s.habitat       :Grassland
  s.category      "Chick"
  s.pokedex_entry "If attacked, it strikes back by spitting balls of fire it forms in its stomach. A Torchic dislikes darkness because it can't see its surroundings."
  s.generation    3
  s.evolves_into  :COMBUSKEN, :Level, 16
  s.flags         :HasGenderedSprites
end

GameData::Species.define :COMBUSKEN do |s|
  s.name          "Combusken"
  s.types         :FIRE, :FIGHTING
  s.base_stats    hp: 60, attack: 85, defense: 60, speed: 55, sp_atk: 85, sp_def: 60
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1, sp_attack: 1
  s.abilities     :BLAZE
  s.hidden_abilities :SPEEDBOOST
  s.moves do |m|
    m.at 0, :DOUBLEKICK
    m.at 1, :FLAMETHROWER
    m.at 1, :FEATHERDANCE
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :EMBER
    m.at 1, :QUICKATTACK
    m.at 9, :FLAMECHARGE
    m.at 12, :DETECT
    m.at 15, :SANDATTACK
    m.at 20, :AERIALACE
    m.at 25, :SLASH
    m.at 30, :BOUNCE
    m.at 35, :FOCUSENERGY
    m.at 40, :BLAZEKICK
    m.at 45, :BULKUP
    m.at 50, :REVERSAL
    m.at 55, :FLAREBLITZ
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ASSURANCE, :ATTRACT, :BATONPASS, :BLAZEKICK, :BODYSLAM, :BOUNCE, :BRICKBREAK, :BULKUP, :CAPTIVATE, :COACHING, :CONFIDE, :COUNTER, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :LASTRESORT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OVERHEAT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :THUNDERPUNCH, :VACUUMWAVE, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.9
  s.weight        19.5
  s.color         :Red
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Young Fowl"
  s.pokedex_entry "It lashes out with 10 kicks per second. Its strong fighting instinct compels it to keep up its offensive until the opponent gives up."
  s.generation    3
  s.evolves_into  :BLAZIKEN, :Level, 36
  s.flags         :HasGenderedSprites
end

GameData::Species.define :BLAZIKEN do |s|
  s.name          "Blaziken"
  s.types         :FIRE, :FIGHTING
  s.base_stats    hp: 80, attack: 120, defense: 70, speed: 80, sp_atk: 110, sp_def: 70
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :BLAZE
  s.hidden_abilities :SPEEDBOOST
  s.moves do |m|
    m.at 1, :CLOSECOMBAT
    m.at 1, :DOUBLEKICK
    m.at 1, :FIREPUNCH
    m.at 1, :BRAVEBIRD
    m.at 1, :FLAMETHROWER
    m.at 1, :FEATHERDANCE
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :EMBER
    m.at 1, :QUICKATTACK
    m.at 9, :FLAMECHARGE
    m.at 12, :DETECT
    m.at 15, :SANDATTACK
    m.at 20, :AERIALACE
    m.at 25, :SLASH
    m.at 30, :BOUNCE
    m.at 35, :FOCUSENERGY
    m.at 42, :BLAZEKICK
    m.at 49, :BULKUP
    m.at 56, :REVERSAL
    m.at 63, :FLAREBLITZ
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ASSURANCE, :ATTRACT, :AURASPHERE, :BATONPASS, :BLASTBURN, :BLAZEKICK, :BODYSLAM, :BOUNCE, :BRAVEBIRD, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :COUNTER, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HEATCRASH, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :INCINERATE, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OVERHEAT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :REVENGE, :REVERSAL, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCORCHINGSANDS, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SOLARBEAM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :THUNDERPUNCH, :UTURN, :VACUUMWAVE, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.9
  s.weight        52.0
  s.color         :Red
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Blaze"
  s.pokedex_entry "It learns martial arts that use punches and kicks. Every several years, its old feathers burn off, and new, supple feathers grow back in their place."
  s.generation    3
  s.flags         :HasGenderedSprites
end

GameData::Species.define :NUMEL do |s|
  s.name          "Numel"
  s.types         :FIRE, :GROUND
  s.base_stats    hp: 60, attack: 60, defense: 40, speed: 35, sp_atk: 65, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :OBLIVIOUS, :SIMPLE
  s.hidden_abilities :OWNTEMPO
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :TACKLE
    m.at 5, :EMBER
    m.at 8, :FOCUSENERGY
    m.at 12, :BULLDOZE
    m.at 15, :FLAMEWHEEL
    m.at 19, :AMNESIA
    m.at 22, :LAVAPLUME
    m.at 26, :EARTHPOWER
    m.at 29, :CURSE
    m.at 31, :TAKEDOWN
    m.at 36, :YAWN
    m.at 40, :EARTHQUAKE
    m.at 43, :FLAMETHROWER
    m.at 47, :DOUBLEEDGE
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FRUSTRATION, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :INCINERATE, :IRONHEAD, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OVERHEAT, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :WILLOWISP, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :BODYSLAM, :DEFENSECURL, :GROWTH, :HEATWAVE, :HEAVYSLAM, :HOWL, :IRONHEAD, :ROLLOUT, :SCARYFACE, :SPITUP, :STOCKPILE, :STOMP, :SWALLOW, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.7
  s.weight        24.0
  s.color         :Yellow
  s.shape         :Quadruped
  s.habitat       :Mountain
  s.category      "Numb"
  s.pokedex_entry "A Numel stores boiling magma in the hump on its back. It is a hardy Pokémon that can transport a 220-pound load. It has served humans at work since long ago."
  s.generation    3
  s.evolves_into  :CAMERUPT, :Level, 33
  s.flags         :HasGenderedSprites
end

GameData::Species.define :CAMERUPT do |s|
  s.name          "Camerupt"
  s.types         :FIRE, :GROUND
  s.base_stats    hp: 70, attack: 100, defense: 70, speed: 40, sp_atk: 105, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      161
  s.catch_rate    150
  s.happiness     50
  s.evs           attack: 1, sp_attack: 1
  s.abilities     :MAGMAARMOR, :SOLIDROCK
  s.hidden_abilities :ANGERPOINT
  s.moves do |m|
    m.at 0, :ROCKSLIDE
    m.at 1, :FISSURE
    m.at 1, :ERUPTION
    m.at 1, :FLAMETHROWER
    m.at 1, :DOUBLEEDGE
    m.at 1, :GROWL
    m.at 1, :TACKLE
    m.at 1, :EMBER
    m.at 1, :FOCUSENERGY
    m.at 8, :EMBER
    m.at 8, :FOCUSENERGY
    m.at 12, :BULLDOZE
    m.at 15, :FLAMEWHEEL
    m.at 19, :AMNESIA
    m.at 22, :LAVAPLUME
    m.at 26, :EARTHPOWER
    m.at 29, :CURSE
    m.at 31, :TAKEDOWN
    m.at 39, :YAWN
    m.at 46, :EARTHQUAKE
    m.at 52, :ERUPTION
    m.at 59, :FISSURE
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONHEAD, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OVERHEAT, :PROTECT, :REST, :RETURN, :ROAR, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :WILLOWISP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.9
  s.weight        220.0
  s.color         :Red
  s.shape         :Quadruped
  s.habitat       :Mountain
  s.category      "Eruption"
  s.pokedex_entry "A Pokémon that lives in the crater of a volcano. Every 10 years, the volcanoes on its back erupt violently. Research is under way on the cause of eruption."
  s.generation    3
  s.flags         :HasGenderedSprites
end

GameData::Species.define :TORKOAL do |s|
  s.name          "Torkoal"
  s.types         :FIRE
  s.base_stats    hp: 70, attack: 85, defense: 140, speed: 20, sp_atk: 85, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      165
  s.catch_rate    90
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :WHITESMOKE, :DROUGHT
  s.hidden_abilities :SHELLARMOR
  s.moves do |m|
    m.at 1, :SMOG
    m.at 1, :EMBER
    m.at 4, :WITHDRAW
    m.at 8, :RAPIDSPIN
    m.at 12, :SMOKESCREEN
    m.at 16, :CLEARSMOG
    m.at 20, :FLAMEWHEEL
    m.at 24, :PROTECT
    m.at 28, :LAVAPLUME
    m.at 32, :BODYSLAM
    m.at 36, :IRONDEFENSE
    m.at 40, :FLAMETHROWER
    m.at 44, :CURSE
    m.at 48, :HEATWAVE
    m.at 52, :AMNESIA
    m.at 56, :INFERNO
    m.at 60, :SHELLSMASH
    m.at 64, :ERUPTION
  end
  s.tutor_moves   :AFTERYOU, :AMNESIA, :ATTRACT, :BODYPRESS, :BODYSLAM, :BULLDOZE, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEADBUTT, :HEATCRASH, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONDEFENSE, :IRONTAIL, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OVERHEAT, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SCORCHINGSANDS, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :WEATHERBALL, :WILLOWISP, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :CLEARSMOG, :ERUPTION, :FISSURE, :FLAIL, :SKULLBASH, :SUPERPOWER, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.5
  s.weight        80.4
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Mountain
  s.category      "Coal"
  s.pokedex_entry "It battles using energy it gets from burning coal. When loosing smoke from its nostrils, it lets off a sound that is similar to a locomotive's horn."
  s.generation    3
  s.wild_item_uncommon :CHARCOAL
end

GameData::Species.define :CHIMCHAR do |s|
  s.name          "Chimchar"
  s.types         :FIRE
  s.base_stats    hp: 44, attack: 58, defense: 44, speed: 61, sp_atk: 58, sp_def: 44
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :BLAZE
  s.hidden_abilities :IRONFIST
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 6, :EMBER
    m.at 9, :TAUNT
    m.at 12, :POWERUPPUNCH
    m.at 15, :FURYSWIPES
    m.at 17, :FLAMEWHEEL
    m.at 23, :NASTYPLOT
    m.at 25, :TORMENT
    m.at 31, :FACADE
    m.at 33, :FIRESPIN
    m.at 39, :ACROBATICS
    m.at 41, :SLACKOFF
    m.at 47, :FLAMETHROWER
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BRICKBREAK, :BULKUP, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIREPUNCH, :FLAMECHARGE, :FLAMETHROWER, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :GUNKSHOT, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :IRONTAIL, :LOWKICK, :LOWSWEEP, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROCKCLIMB, :ROCKSMASH, :ROLEPLAY, :ROLLOUT, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STEALTHROCK, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THUNDERPUNCH, :TORMENT, :UPROAR, :UTURN, :VACUUMWAVE, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_moves     :BLAZEKICK, :COUNTER, :DOUBLEKICK, :ENCORE, :FAKEOUT, :FIREPUNCH, :FOCUSENERGY, :HEATWAVE, :HELPINGHAND, :POWERUPPUNCH, :QUICKGUARD, :SUBMISSION, :THUNDERPUNCH
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   5120
  s.height        0.5
  s.weight        6.2
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Chimp"
  s.pokedex_entry "It agilely scales sheer cliffs to live atop craggy mountains. Its fire is put out when it sleeps."
  s.generation    4
  s.evolves_into  :MONFERNO, :Level, 14
end

GameData::Species.define :MONFERNO do |s|
  s.name          "Monferno"
  s.types         :FIRE, :FIGHTING
  s.base_stats    hp: 64, attack: 78, defense: 52, speed: 81, sp_atk: 78, sp_def: 52
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1, speed: 1
  s.abilities     :BLAZE
  s.hidden_abilities :IRONFIST
  s.moves do |m|
    m.at 0, :MACHPUNCH
    m.at 1, :NASTYPLOT
    m.at 1, :FACADE
    m.at 1, :FLAMETHROWER
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :EMBER
    m.at 7, :EMBER
    m.at 9, :TAUNT
    m.at 12, :POWERUPPUNCH
    m.at 16, :FURYSWIPES
    m.at 19, :FLAMEWHEEL
    m.at 26, :FEINT
    m.at 29, :TORMENT
    m.at 36, :CLOSECOMBAT
    m.at 39, :FIRESPIN
    m.at 46, :ACROBATICS
    m.at 49, :SLACKOFF
    m.at 56, :FLAREBLITZ
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BRICKBREAK, :BULKUP, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :DUALCHOP, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIREPUNCH, :FLAMECHARGE, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :GUNKSHOT, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :IRONTAIL, :LOWKICK, :LOWSWEEP, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :OVERHEAT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROLLOUT, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STEALTHROCK, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THUNDERPUNCH, :TORMENT, :UTURN, :VACUUMWAVE, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   5120
  s.height        0.9
  s.weight        22.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Playful"
  s.pokedex_entry "To intimidate attackers, it stretches the fire on its tail to make itself appear bigger."
  s.generation    4
  s.evolves_into  :INFERNAPE, :Level, 36
end

GameData::Species.define :INFERNAPE do |s|
  s.name          "Infernape"
  s.types         :FIRE, :FIGHTING
  s.base_stats    hp: 76, attack: 104, defense: 71, speed: 108, sp_atk: 104, sp_def: 71
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      267
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1, sp_attack: 1, speed: 1
  s.abilities     :BLAZE
  s.hidden_abilities :IRONFIST
  s.moves do |m|
    m.at 0, :CLOSECOMBAT
    m.at 1, :MACHPUNCH
    m.at 1, :FLAREBLITZ
    m.at 1, :NASTYPLOT
    m.at 1, :FACADE
    m.at 1, :FLAMETHROWER
    m.at 1, :TORMENT
    m.at 1, :SLACKOFF
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :EMBER
    m.at 1, :TAUNT
    m.at 7, :EMBER
    m.at 9, :TAUNT
    m.at 12, :POWERUPPUNCH
    m.at 16, :FURYSWIPES
    m.at 19, :FLAMEWHEEL
    m.at 26, :FEINT
    m.at 29, :UTURN
    m.at 42, :FIRESPIN
    m.at 52, :ACROBATICS
    m.at 58, :CALMMIND
    m.at 68, :FLAREBLITZ
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BLASTBURN, :BRICKBREAK, :BULKUP, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :DUALCHOP, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIREPUNCH, :FLAMECHARGE, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :INCINERATE, :IRONTAIL, :LASERFOCUS, :LOWKICK, :LOWSWEEP, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :OVERHEAT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROLLOUT, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THUNDERPUNCH, :TORMENT, :UTURN, :VACUUMWAVE, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   5120
  s.height        1.2
  s.weight        55.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Flame"
  s.pokedex_entry "It uses a special kind of martial arts involving all its limbs. Its fire never goes out."
  s.generation    4
end

GameData::Species.define :MAGMORTAR do |s|
  s.name          "Magmortar"
  s.types         :FIRE
  s.base_stats    hp: 75, attack: 95, defense: 67, speed: 83, sp_atk: 125, sp_def: 95
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Medium
  s.base_exp      270
  s.catch_rate    30
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :FLAMEBODY
  s.hidden_abilities :VITALSPIRIT
  s.moves do |m|
    m.at 1, :SMOG
    m.at 1, :LEER
    m.at 1, :EMBER
    m.at 1, :SMOKESCREEN
    m.at 12, :CLEARSMOG
    m.at 16, :FLAMEWHEEL
    m.at 20, :CONFUSERAY
    m.at 24, :SCARYFACE
    m.at 28, :FIREPUNCH
    m.at 34, :LAVAPLUME
    m.at 40, :LOWKICK
    m.at 46, :FLAMETHROWER
    m.at 52, :SUNNYDAY
    m.at 58, :FIREBLAST
    m.at 64, :HYPERBEAM
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONTAIL, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :MYSTICALFIRE, :NATURALGIFT, :OVERHEAT, :POWERSWAP, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :THUNDERBOLT, :THUNDERPUNCH, :TORMENT, :UPROAR, :WEATHERBALL, :WILLOWISP, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   6400
  s.height        1.6
  s.weight        68.0
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Blast"
  s.pokedex_entry "It blasts fireballs of over 3,600 degrees F from the ends of its arms. It lives in volcanic craters."
  s.generation    4
  s.wild_item_uncommon :MAGMARIZER
end

GameData::Species.define :HEATRAN do |s|
  s.name          "Heatran"
  s.types         :FIRE, :STEEL
  s.base_stats    hp: 91, attack: 90, defense: 106, speed: 77, sp_atk: 130, sp_def: 106
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     100
  s.evs           sp_attack: 3
  s.abilities     :FLASHFIRE
  s.hidden_abilities :FLAMEBODY
  s.moves do |m|
    m.at 1, :FIRESPIN
    m.at 1, :LEER
    m.at 6, :METALCLAW
    m.at 12, :ANCIENTPOWER
    m.at 18, :FIREFANG
    m.at 24, :SCARYFACE
    m.at 30, :IRONHEAD
    m.at 36, :CRUNCH
    m.at 42, :LAVAPLUME
    m.at 48, :METALSOUND
    m.at 54, :EARTHPOWER
    m.at 60, :HEATWAVE
    m.at 66, :STONEEDGE
    m.at 72, :MAGMASTORM
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BODYPRESS, :BODYSLAM, :BUGBITE, :BULLDOZE, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :CRUNCH, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAGONPULSE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEATCRASH, :HEATWAVE, :HEAVYSLAM, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OVERHEAT, :PAYBACK, :PROTECT, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TORMENT, :UPROAR, :WILLOWISP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   2560
  s.height        1.7
  s.weight        430.0
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Lava Dome"
  s.pokedex_entry "It dwells in volcanic caves. It digs in with its cross-shaped feet to crawl on ceilings and walls."
  s.generation    4
  s.flags         :Legendary
end

GameData::Species.define :TEPIG do |s|
  s.name          "Tepig"
  s.types         :FIRE
  s.base_stats    hp: 65, attack: 63, defense: 45, speed: 45, sp_atk: 45, sp_def: 45
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :BLAZE
  s.hidden_abilities :THICKFAT
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 3, :TAILWHIP
    m.at 7, :EMBER
    m.at 9, :ODORSLEUTH
    m.at 13, :DEFENSECURL
    m.at 15, :FLAMECHARGE
    m.at 19, :SMOG
    m.at 21, :ROLLOUT
    m.at 25, :TAKEDOWN
    m.at 27, :HEATCRASH
    m.at 31, :ASSURANCE
    m.at 33, :FLAMETHROWER
    m.at 37, :HEADSMASH
    m.at 39, :ROAR
    m.at 43, :FLAREBLITZ
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CONFIDE, :COVET, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FLAMECHARGE, :FLAMETHROWER, :FRUSTRATION, :GRASSKNOT, :GYROBALL, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :INCINERATE, :IRONTAIL, :MIMIC, :NATURALGIFT, :OVERHEAT, :PROTECT, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :TOXIC, :WILDCHARGE, :WILLOWISP, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BODYSLAM, :BURNUP, :COVET, :CURSE, :ENDEAVOR, :HEAVYSLAM, :MAGNITUDE, :SLEEPTALK, :SUCKERPUNCH, :SUPERPOWER, :THRASH, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.5
  s.weight        9.9
  s.color         :Red
  s.shape         :Quadruped
  s.category      "Fire Pig"
  s.pokedex_entry "It blows fire through its nose. When it catches a cold, the fire becomes pitch-black smoke instead."
  s.generation    5
  s.evolves_into  :PIGNITE, :Level, 17
end

GameData::Species.define :PIGNITE do |s|
  s.name          "Pignite"
  s.types         :FIRE, :FIGHTING
  s.base_stats    hp: 90, attack: 93, defense: 55, speed: 55, sp_atk: 70, sp_def: 55
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      146
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :BLAZE
  s.hidden_abilities :THICKFAT
  s.moves do |m|
    m.at 0, :ARMTHRUST
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :EMBER
    m.at 1, :ODORSLEUTH
    m.at 3, :TAILWHIP
    m.at 7, :EMBER
    m.at 9, :ODORSLEUTH
    m.at 13, :DEFENSECURL
    m.at 15, :FLAMECHARGE
    m.at 20, :SMOG
    m.at 23, :ROLLOUT
    m.at 28, :TAKEDOWN
    m.at 31, :HEATCRASH
    m.at 36, :ASSURANCE
    m.at 39, :FLAMETHROWER
    m.at 44, :HEADSMASH
    m.at 47, :ROAR
    m.at 52, :FLAREBLITZ
  end
  s.tutor_moves   :ATTRACT, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COVET, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIREPUNCH, :FLAMECHARGE, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :GYROBALL, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :INCINERATE, :IRONTAIL, :LOWKICK, :LOWSWEEP, :MIMIC, :NATURALGIFT, :OVERHEAT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THUNDERPUNCH, :TOXIC, :WILDCHARGE, :WILLOWISP, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        55.5
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Fire Pig"
  s.pokedex_entry "Whatever it eats becomes fuel for the flame in its stomach. When it is angered, the intensity of the flame increases."
  s.generation    5
  s.evolves_into  :EMBOAR, :Level, 36
end

GameData::Species.define :EMBOAR do |s|
  s.name          "Emboar"
  s.types         :FIRE, :FIGHTING
  s.base_stats    hp: 110, attack: 123, defense: 65, speed: 65, sp_atk: 100, sp_def: 65
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      264
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :BLAZE
  s.hidden_abilities :RECKLESS
  s.moves do |m|
    m.at 1, :ARMTHRUST
    m.at 1, :HAMMERARM
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :EMBER
    m.at 1, :ODORSLEUTH
    m.at 3, :TAILWHIP
    m.at 7, :EMBER
    m.at 9, :ODORSLEUTH
    m.at 13, :DEFENSECURL
    m.at 15, :FLAMECHARGE
    m.at 20, :SMOG
    m.at 23, :ROLLOUT
    m.at 28, :TAKEDOWN
    m.at 31, :HEATCRASH
    m.at 38, :ASSURANCE
    m.at 43, :FLAMETHROWER
    m.at 50, :HEADSMASH
    m.at 55, :ROAR
    m.at 62, :FLAREBLITZ
  end
  s.tutor_moves   :ATTRACT, :BLASTBURN, :BLOCK, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COVET, :DOUBLETEAM, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIREPUNCH, :FLAMECHARGE, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GYROBALL, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONHEAD, :IRONTAIL, :LOWKICK, :LOWSWEEP, :MIMIC, :NATURALGIFT, :OVERHEAT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THUNDERPUNCH, :TOXIC, :WILDCHARGE, :WILLOWISP, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.6
  s.weight        150.0
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Mega Fire Pig"
  s.pokedex_entry "It can throw a fire punch by setting its fists on fire with its fiery chin. It cares deeply about its friends."
  s.generation    5
end

GameData::Species.define :PANSEAR do |s|
  s.name          "Pansear"
  s.types         :FIRE
  s.base_stats    hp: 50, attack: 53, defense: 48, speed: 64, sp_atk: 53, sp_def: 48
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      63
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :GLUTTONY
  s.hidden_abilities :BLAZE
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :PLAYNICE
    m.at 4, :LEER
    m.at 7, :LICK
    m.at 10, :INCINERATE
    m.at 13, :FURYSWIPES
    m.at 16, :YAWN
    m.at 19, :BITE
    m.at 22, :FLAMEBURST
    m.at 25, :AMNESIA
    m.at 28, :FLING
    m.at 31, :ACROBATICS
    m.at 34, :FIREBLAST
    m.at 37, :RECYCLE
    m.at 40, :NATURALGIFT
    m.at 43, :CRUNCH
  end
  s.tutor_moves   :ACROBATICS, :ATTRACT, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIREPUNCH, :FLAMECHARGE, :FLAMETHROWER, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GASTROACID, :GRASSKNOT, :GUNKSHOT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :MIMIC, :NATURALGIFT, :OVERHEAT, :PAYBACK, :PROTECT, :RECYCLE, :REST, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :TORMENT, :TOXIC, :UPROAR, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_moves     :ASTONISH, :BELCH, :COVET, :DISARMINGVOICE, :FIREPUNCH, :FIRESPIN, :FLAREBLITZ, :HEATWAVE, :LOWKICK, :NASTYPLOT, :ROLEPLAY, :SLEEPTALK, :TICKLE
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        11.0
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "High Temp"
  s.pokedex_entry "This Pokémon lives in caves in volcanoes. The fire within the tuft on its head can reach 600º F."
  s.generation    5
  s.evolves_into  :SIMISEAR, :Item, FIRESTONE
end

GameData::Species.define :SIMISEAR do |s|
  s.name          "Simisear"
  s.types         :FIRE
  s.base_stats    hp: 75, attack: 98, defense: 63, speed: 101, sp_atk: 98, sp_def: 63
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      174
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :GLUTTONY
  s.hidden_abilities :BLAZE
  s.moves do |m|
    m.at 1, :LEER
    m.at 1, :LICK
    m.at 1, :FURYSWIPES
    m.at 1, :FLAMEBURST
  end
  s.tutor_moves   :ACROBATICS, :ATTRACT, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DIG, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIREPUNCH, :FLAMECHARGE, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GASTROACID, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :MIMIC, :NATURALGIFT, :OVERHEAT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RECYCLE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :TOXIC, :UPROAR, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        28.0
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Ember"
  s.pokedex_entry "A flame burns inside its body. It scatters embers from its head and tail to sear its opponents."
  s.generation    5
end

GameData::Species.define :DARUMAKA do |s|
  s.name          "Darumaka"
  s.types         :FIRE
  s.base_stats    hp: 70, attack: 90, defense: 45, speed: 50, sp_atk: 15, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      63
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :HUSTLE
  s.hidden_abilities :INNERFOCUS
  s.moves do |m|
    m.at 1, :EMBER
    m.at 1, :TACKLE
    m.at 4, :TAUNT
    m.at 8, :BITE
    m.at 12, :INCINERATE
    m.at 16, :WORKUP
    m.at 20, :FIREFANG
    m.at 24, :HEADBUTT
    m.at 28, :FIREPUNCH
    m.at 32, :UPROAR
    m.at 36, :BELLYDRUM
    m.at 40, :FLAREBLITZ
    m.at 44, :THRASH
    m.at 48, :SUPERPOWER
  end
  s.tutor_moves   :ATTRACT, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :GYROBALL, :HEATWAVE, :HIDDENPOWER, :INCINERATE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :TOXIC, :UPROAR, :UTURN, :WILLOWISP, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :EXTRASENSORY, :FLAMEWHEEL, :FOCUSPUNCH, :HAMMERARM, :TAKEDOWN, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        37.5
  s.color         :Red
  s.shape         :Bipedal
  s.category      "Zen Charm"
  s.pokedex_entry "Darumaka's droppings are hot, so people used to put them in their clothes to keep themselves warm."
  s.generation    5
  s.evolves_into  :DARMANITAN, :Level, 35
end

GameData::Species.define :DARMANITAN do |s|
  s.name          "Darmanitan"
  s.types         :FIRE
  s.base_stats    hp: 105, attack: 140, defense: 55, speed: 95, sp_atk: 30, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      168
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SHEERFORCE
  s.hidden_abilities :ZENMODE
  s.moves do |m|
    m.at 0, :HAMMERARM
    m.at 1, :EMBER
    m.at 1, :TACKLE
    m.at 1, :TAUNT
    m.at 1, :BITE
    m.at 12, :INCINERATE
    m.at 16, :WORKUP
    m.at 20, :FIREFANG
    m.at 24, :HEADBUTT
    m.at 28, :FIREPUNCH
    m.at 32, :UPROAR
    m.at 38, :BELLYDRUM
    m.at 44, :FLAREBLITZ
    m.at 50, :THRASH
    m.at 56, :SUPERPOWER
  end
  s.tutor_moves   :ATTRACT, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :EARTHQUAKE, :ENCORE, :ENDEAVOR, :ENDURE, :EXPANDINGFORCE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GUARDSWAP, :GYROBALL, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :LASERFOCUS, :LASHOUT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OVERHEAT, :PAYBACK, :POWERSWAP, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNATCH, :SNORE, :SOLARBEAM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :TORMENT, :TOXIC, :TRICK, :UPROAR, :UTURN, :WILLOWISP, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.3
  s.weight        92.9
  s.color         :Red
  s.shape         :Quadruped
  s.category      "Blazing"
  s.pokedex_entry "When weakened in battle, it transforms into a stone statue. Then it sharpens its mind and fights on mentally."
  s.generation    5
end

GameData::Species.define :HEATMOR do |s|
  s.name          "Heatmor"
  s.types         :FIRE
  s.base_stats    hp: 85, attack: 97, defense: 66, speed: 65, sp_atk: 105, sp_def: 66
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      169
  s.catch_rate    90
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :GLUTTONY, :FLASHFIRE
  s.hidden_abilities :WHITESMOKE
  s.moves do |m|
    m.at 1, :LICK
    m.at 1, :TACKLE
    m.at 5, :FURYSWIPES
    m.at 10, :INCINERATE
    m.at 15, :BUGBITE
    m.at 20, :STOCKPILE
    m.at 20, :SWALLOW
    m.at 20, :SPITUP
    m.at 25, :SLASH
    m.at 30, :BIND
    m.at 35, :FIRELASH
    m.at 40, :HONECLAWS
    m.at 45, :AMNESIA
    m.at 50, :FIRESPIN
    m.at 55, :INFERNO
    m.at 60, :FLAREBLITZ
  end
  s.tutor_moves   :AERIALACE, :AMNESIA, :ATTRACT, :BIND, :BODYSLAM, :BRUTALSWING, :BUGBITE, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FIRESPIN, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :KNOCKOFF, :LOWKICK, :MIMIC, :NATURALGIFT, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :THROATCHOP, :THUNDERPUNCH, :TOXIC, :WILLOWISP, :TERABLAST
  s.egg_moves     :BELCH, :CURSE, :NIGHTSLASH, :SUCKERPUNCH, :TICKLE
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.4
  s.weight        58.0
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Anteater"
  s.pokedex_entry "Using their very hot, flame-covered tongues, they burn through Durant's steel bodies and consume their insides."
  s.generation    5
end

GameData::Species.define :FENNEKIN do |s|
  s.name          "Fennekin"
  s.types         :FIRE
  s.base_stats    hp: 40, attack: 45, defense: 40, speed: 60, sp_atk: 62, sp_def: 60
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      61
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :BLAZE
  s.hidden_abilities :MAGICIAN
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :TAILWHIP
    m.at 5, :EMBER
    m.at 11, :HOWL
    m.at 14, :FLAMECHARGE
    m.at 17, :PSYBEAM
    m.at 20, :FIRESPIN
    m.at 25, :LUCKYCHANT
    m.at 27, :LIGHTSCREEN
    m.at 31, :PSYSHOCK
    m.at 35, :FLAMETHROWER
    m.at 38, :WILLOWISP
    m.at 41, :PSYCHIC
    m.at 43, :SUNNYDAY
    m.at 46, :MAGICROOM
    m.at 48, :FIREBLAST
  end
  s.tutor_moves   :ATTRACT, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :EMBARGO, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FLAMECHARGE, :FLAMETHROWER, :FOULPLAY, :FRUSTRATION, :GRASSKNOT, :HEATWAVE, :HIDDENPOWER, :INCINERATE, :IRONTAIL, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THIEF, :TOXIC, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_moves     :HEATWAVE, :HYPNOSIS, :MAGICCOAT, :PSYCHICTERRAIN, :WISH
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        9.4
  s.color         :Red
  s.shape         :Quadruped
  s.category      "Fox"
  s.pokedex_entry "As it walks, it munches on a twig in place of a snack. It intimidates opponents by puffing hot air out of its ears."
  s.generation    6
  s.evolves_into  :BRAIXEN, :Level, 16
end

GameData::Species.define :BRAIXEN do |s|
  s.name          "Braixen"
  s.types         :FIRE
  s.base_stats    hp: 59, attack: 59, defense: 58, speed: 73, sp_atk: 90, sp_def: 70
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      143
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :BLAZE
  s.hidden_abilities :MAGICIAN
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :TAILWHIP
    m.at 1, :EMBER
    m.at 5, :EMBER
    m.at 11, :HOWL
    m.at 14, :FLAMECHARGE
    m.at 18, :PSYBEAM
    m.at 22, :FIRESPIN
    m.at 28, :LUCKYCHANT
    m.at 31, :LIGHTSCREEN
    m.at 36, :PSYSHOCK
    m.at 41, :FLAMETHROWER
    m.at 45, :WILLOWISP
    m.at 49, :PSYCHIC
    m.at 52, :SUNNYDAY
    m.at 56, :MAGICROOM
    m.at 59, :FIREBLAST
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :EMBARGO, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIREPUNCH, :FLAMECHARGE, :FLAMETHROWER, :FOULPLAY, :FRUSTRATION, :GRASSKNOT, :HEATWAVE, :HIDDENPOWER, :INCINERATE, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :LOWKICK, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHOCKWAVE, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THIEF, :THUNDERPUNCH, :TOXIC, :TRICK, :WILLOWISP, :WONDERROOM, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        14.5
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Fox"
  s.pokedex_entry "When the twig is plucked from its tail, friction sets the twig alight. The flame is used to send signals to its allies."
  s.generation    6
  s.evolves_into  :DELPHOX, :Level, 36
end

GameData::Species.define :DELPHOX do |s|
  s.name          "Delphox"
  s.types         :FIRE, :PSYCHIC
  s.base_stats    hp: 75, attack: 69, defense: 72, speed: 104, sp_atk: 114, sp_def: 100
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      267
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :BLAZE
  s.hidden_abilities :MAGICIAN
  s.moves do |m|
    m.at 0, :MYSTICALFIRE
    m.at 1, :FUTURESIGHT
    m.at 1, :ROLEPLAY
    m.at 1, :SWITCHEROO
    m.at 1, :SHADOWBALL
    m.at 1, :SCRATCH
    m.at 1, :TAILWHIP
    m.at 1, :EMBER
    m.at 1, :HOWL
    m.at 5, :EMBER
    m.at 11, :HOWL
    m.at 14, :FLAMECHARGE
    m.at 18, :PSYBEAM
    m.at 22, :FIRESPIN
    m.at 28, :LUCKYCHANT
    m.at 31, :LIGHTSCREEN
    m.at 38, :PSYSHOCK
    m.at 45, :FLAMETHROWER
    m.at 51, :WILLOWISP
    m.at 57, :PSYCHIC
    m.at 62, :SUNNYDAY
    m.at 68, :MAGICROOM
    m.at 74, :FIREBLAST
    m.at 80, :FUTURESIGHT
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BLASTBURN, :CALMMIND, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DAZZLINGGLEAM, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :EMBARGO, :ENDURE, :FACADE, :FIREBLAST, :FIREPLEDGE, :FIREPUNCH, :FLAMECHARGE, :FLAMETHROWER, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONTAIL, :LASERFOCUS, :LIGHTSCREEN, :LOWKICK, :MAGICCOAT, :MAGICROOM, :MIMIC, :NATURALGIFT, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THIEF, :THUNDERPUNCH, :TOXIC, :TRICK, :TRICKROOM, :WILLOWISP, :WONDERROOM, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.5
  s.weight        39.0
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Fox"
  s.pokedex_entry "It gazes into the flame at the tip of its branch to achieve a focused state, which allows it to see into the future."
  s.generation    6
end

GameData::Species.define :FLETCHINDER do |s|
  s.name          "Fletchinder"
  s.types         :FIRE, :FLYING
  s.base_stats    hp: 62, attack: 73, defense: 55, speed: 84, sp_atk: 56, sp_def: 52
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      134
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :FLAMEBODY
  s.hidden_abilities :GALEWINGS
  s.moves do |m|
    m.at 0, :FLAMECHARGE
    m.at 1, :FEINT
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 1, :QUICKATTACK
    m.at 1, :EMBER
    m.at 15, :FLAIL
    m.at 22, :ACROBATICS
    m.at 29, :AGILITY
    m.at 36, :AERIALACE
    m.at 43, :TAILWIND
    m.at 50, :STEELWING
    m.at 57, :ROOST
    m.at 64, :FLY
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ATTRACT, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :INCINERATE, :MIMIC, :NATURALGIFT, :OVERHEAT, :PROTECT, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNATCH, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :TAUNT, :THIEF, :TOXIC, :UTURN, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.7
  s.weight        16.0
  s.color         :Red
  s.shape         :Winged
  s.category      "Ember"
  s.pokedex_entry "From its beak, it expels embers that set the tall grass on fire. Then it pounces on the bewildered prey that pop out of the grass."
  s.generation    6
  s.evolves_into  :TALONFLAME, :Level, 35
end

GameData::Species.define :TALONFLAME do |s|
  s.name          "Talonflame"
  s.types         :FIRE, :FLYING
  s.base_stats    hp: 78, attack: 81, defense: 71, speed: 126, sp_atk: 74, sp_def: 69
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      175
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :FLAMEBODY
  s.hidden_abilities :GALEWINGS
  s.moves do |m|
    m.at 1, :FLAMECHARGE
    m.at 1, :FLAREBLITZ
    m.at 1, :FEINT
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 1, :QUICKATTACK
    m.at 1, :EMBER
    m.at 15, :FLAIL
    m.at 22, :ACROBATICS
    m.at 29, :AGILITY
    m.at 38, :AERIALACE
    m.at 47, :TAILWIND
    m.at 56, :STEELWING
    m.at 65, :ROOST
    m.at 74, :FLY
    m.at 83, :BRAVEBIRD
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ATTRACT, :BRAVEBIRD, :BULKUP, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLY, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HURRICANE, :HYPERBEAM, :INCINERATE, :MIMIC, :NATURALGIFT, :OVERHEAT, :PROTECT, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :TAUNT, :THIEF, :TOXIC, :UTURN, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        1.2
  s.weight        24.5
  s.color         :Red
  s.shape         :Winged
  s.category      "Scorching"
  s.pokedex_entry "In the fever of an exciting battle, it showers embers from the gaps between its feathers and takes to the air."
  s.generation    6
end

GameData::Species.define :LITLEO do |s|
  s.name          "Litleo"
  s.types         :FIRE, :NORMAL
  s.base_stats    hp: 62, attack: 50, defense: 58, speed: 72, sp_atk: 73, sp_def: 54
  s.gender_ratio  :FemaleSevenEighths
  s.growth_rate   :Parabolic
  s.base_exp      74
  s.catch_rate    220
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :RIVALRY, :UNNERVE
  s.hidden_abilities :MOXIE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 5, :EMBER
    m.at 8, :WORKUP
    m.at 11, :HEADBUTT
    m.at 15, :NOBLEROAR
    m.at 20, :TAKEDOWN
    m.at 23, :FIREFANG
    m.at 28, :ENDEAVOR
    m.at 33, :ECHOEDVOICE
    m.at 36, :FLAMETHROWER
    m.at 39, :CRUNCH
    m.at 43, :HYPERVOICE
    m.at 46, :INCINERATE
    m.at 50, :OVERHEAT
  end
  s.tutor_moves   :ATTRACT, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DIG, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FRUSTRATION, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :INCINERATE, :IRONTAIL, :MIMIC, :NATURALGIFT, :OVERHEAT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :TOXIC, :WILDCHARGE, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_moves     :ENTRAINMENT, :FIRESPIN, :FLAREBLITZ, :SNATCH, :YAWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        13.5
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Lion Cub"
  s.pokedex_entry "They set off on their own from their pride and live by themselves to become stronger. These hot-blooded Pokémon are quick to fight."
  s.generation    6
  s.evolves_into  :PYROAR, :Level, 35
end

GameData::Species.define :PYROAR do |s|
  s.name          "Pyroar"
  s.types         :FIRE, :NORMAL
  s.base_stats    hp: 86, attack: 68, defense: 72, speed: 106, sp_atk: 109, sp_def: 66
  s.gender_ratio  :FemaleSevenEighths
  s.growth_rate   :Parabolic
  s.base_exp      177
  s.catch_rate    65
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :RIVALRY, :UNNERVE
  s.hidden_abilities :MOXIE
  s.moves do |m|
    m.at 1, :HYPERBEAM
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :EMBER
    m.at 1, :WORKUP
    m.at 5, :EMBER
    m.at 8, :WORKUP
    m.at 11, :HEADBUTT
    m.at 15, :NOBLEROAR
    m.at 20, :TAKEDOWN
    m.at 23, :FIREFANG
    m.at 28, :ENDEAVOR
    m.at 33, :ECHOEDVOICE
    m.at 38, :FLAMETHROWER
    m.at 42, :CRUNCH
    m.at 48, :HYPERVOICE
    m.at 51, :INCINERATE
    m.at 57, :OVERHEAT
  end
  s.tutor_moves   :ATTRACT, :BOUNCE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DIG, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FRUSTRATION, :GIGAIMPACT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :INCINERATE, :IRONTAIL, :MIMIC, :NATURALGIFT, :OVERHEAT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :TOXIC, :WILDCHARGE, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.5
  s.weight        81.5
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Royal"
  s.pokedex_entry "With fiery breath of more than 6,000 degrees Celsius, they viciously threaten any challenger. The females protect the pride's cubs."
  s.generation    6
  s.flags         :HasGenderedSprites
end

GameData::Species.define :VOLCANION do |s|
  s.name          "Volcanion"
  s.types         :FIRE, :WATER
  s.base_stats    hp: 80, attack: 110, defense: 120, speed: 70, sp_atk: 130, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     100
  s.evs           sp_attack: 3
  s.abilities     :WATERABSORB
  s.moves do |m|
    m.at 1, :FIRESPIN
    m.at 1, :WATERGUN
    m.at 6, :LEER
    m.at 12, :WEATHERBALL
    m.at 18, :FLAMECHARGE
    m.at 24, :WATERPULSE
    m.at 30, :SCARYFACE
    m.at 36, :INCINERATE
    m.at 42, :STOMP
    m.at 48, :SCALD
    m.at 54, :TAKEDOWN
    m.at 60, :MIST
    m.at 60, :HAZE
    m.at 66, :HYDROPUMP
    m.at 72, :STEAMERUPTION
    m.at 78, :FLAREBLITZ
    m.at 84, :OVERHEAT
    m.at 90, :EXPLOSION
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CONFIDE, :CUT, :DEFOG, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEATCRASH, :HEATWAVE, :HEAVYSLAM, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :INCINERATE, :LIQUIDATION, :MIMIC, :MISTYTERRAIN, :MUDSHOT, :NATURALGIFT, :OVERHEAT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROUND, :SANDSTORM, :SCALD, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THUNDERFANG, :TOXIC, :WATERPULSE, :WEATHERBALL, :WILLOWISP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.7
  s.weight        195.0
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Steam"
  s.pokedex_entry "It lets out billows of steam and disappears into the dense fog. It's said to live in mountains where humans do not tread."
  s.generation    6
  s.flags         :Mythical
end

GameData::Species.define :LITTEN do |s|
  s.name          "Litten"
  s.types         :FIRE
  s.base_stats    hp: 45, attack: 65, defense: 40, speed: 70, sp_atk: 60, sp_def: 40
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      64
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :BLAZE
  s.hidden_abilities :INTIMIDATE
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 3, :EMBER
    m.at 6, :LICK
    m.at 9, :ROAR
    m.at 12, :FURYSWIPES
    m.at 15, :BITE
    m.at 18, :DOUBLEKICK
    m.at 21, :FIREFANG
    m.at 24, :SCARYFACE
    m.at 27, :SWAGGER
    m.at 30, :FLAMETHROWER
    m.at 33, :THRASH
    m.at 36, :FLAREBLITZ
  end
  s.tutor_moves   :ACROBATICS, :ATTRACT, :BODYSLAM, :BULKUP, :CAPTIVATE, :CONFIDE, :COVET, :CRUNCH, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :LEECHLIFE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :PAYDAY, :PROTECT, :REST, :RETURN, :REVENGE, :ROAR, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :TAUNT, :TORMENT, :TOXIC, :UTURN, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_moves     :FAKEOUT, :PARTINGSHOT, :POWERTRIP
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.4
  s.weight        4.3
  s.color         :Red
  s.shape         :Quadruped
  s.category      "Fire Cat"
  s.pokedex_entry "Its coat regrows twice a year. When the time comes, Litten sets its own body on fire and burns away the old fur."
  s.generation    7
  s.evolves_into  :TORRACAT, :Level, 17
end

GameData::Species.define :TORRACAT do |s|
  s.name          "Torracat"
  s.types         :FIRE
  s.base_stats    hp: 65, attack: 85, defense: 50, speed: 90, sp_atk: 80, sp_def: 50
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      147
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :BLAZE
  s.hidden_abilities :INTIMIDATE
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :EMBER
    m.at 1, :LICK
    m.at 9, :ROAR
    m.at 12, :FURYSWIPES
    m.at 15, :BITE
    m.at 20, :DOUBLEKICK
    m.at 25, :FIREFANG
    m.at 30, :SCARYFACE
    m.at 35, :SWAGGER
    m.at 40, :FLAMETHROWER
    m.at 45, :THRASH
    m.at 50, :FLAREBLITZ
  end
  s.tutor_moves   :ACROBATICS, :ATTRACT, :BODYSLAM, :BULKUP, :CAPTIVATE, :CONFIDE, :COVET, :CRUNCH, :DOUBLETEAM, :DUALCHOP, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :LEECHLIFE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :PAYDAY, :PROTECT, :REST, :RETURN, :REVENGE, :ROAR, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :TAUNT, :TORMENT, :TOXIC, :UTURN, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        0.7
  s.weight        25.0
  s.color         :Red
  s.shape         :Quadruped
  s.category      "Fire Cat"
  s.pokedex_entry "It can act spoiled if it grows close to its Trainer. A powerful Pokémon, its sharp claws can leave its Trainer's whole body covered in scratches."
  s.generation    7
  s.evolves_into  :INCINEROAR, :Level, 34
end

GameData::Species.define :INCINEROAR do |s|
  s.name          "Incineroar"
  s.types         :FIRE, :DARK
  s.base_stats    hp: 95, attack: 115, defense: 90, speed: 60, sp_atk: 80, sp_def: 90
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :BLAZE
  s.hidden_abilities :INTIMIDATE
  s.moves do |m|
    m.at 0, :DARKESTLARIAT
    m.at 1, :CROSSCHOP
    m.at 1, :THROATCHOP
    m.at 1, :BULKUP
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :EMBER
    m.at 1, :LICK
    m.at 9, :ROAR
    m.at 12, :FURYSWIPES
    m.at 15, :BITE
    m.at 20, :DOUBLEKICK
    m.at 25, :FIREFANG
    m.at 30, :SCARYFACE
    m.at 32, :SWAGGER
    m.at 44, :FLAMETHROWER
    m.at 51, :THRASH
    m.at 58, :FLAREBLITZ
  end
  s.tutor_moves   :ACROBATICS, :ASSURANCE, :ATTRACT, :BIND, :BLASTBURN, :BLAZEKICK, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :BURNINGJEALOUSY, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :COVET, :CRUNCH, :DARKESTLARIAT, :DARKPULSE, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :EMBARGO, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HEATCRASH, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :IRONHEAD, :KNOCKOFF, :LASHOUT, :LEECHLIFE, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :PAYDAY, :PROTECT, :QUASH, :REST, :RETURN, :REVENGE, :REVERSAL, :ROAR, :ROUND, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :TAUNT, :THROATCHOP, :THUNDERPUNCH, :TORMENT, :TOXIC, :UTURN, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   3840
  s.height        1.8
  s.weight        83.0
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Heel"
  s.pokedex_entry "Although it's rough mannered and egotistical, it finds beating down unworthy opponents boring. It gets motivated for stronger opponents."
  s.generation    7
end

GameData::Species.define :ORICORIO do |s|
  s.name          "Oricorio"
  s.types         :FIRE, :FLYING
  s.base_stats    hp: 75, attack: 70, defense: 70, speed: 93, sp_atk: 98, sp_def: 70
  s.gender_ratio  :Female75Percent
  s.growth_rate   :Medium
  s.base_exp      167
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :DANCER
  s.moves do |m|
    m.at 1, :POUND
    m.at 4, :GROWL
    m.at 6, :PECK
    m.at 10, :HELPINGHAND
    m.at 13, :AIRCUTTER
    m.at 16, :BATONPASS
    m.at 20, :FEATHERDANCE
    m.at 23, :DOUBLESLAP
    m.at 26, :TEETERDANCE
    m.at 30, :ROOST
    m.at 33, :CAPTIVATE
    m.at 36, :AIRSLASH
    m.at 40, :REVELATIONDANCE
    m.at 43, :MIRRORMOVE
    m.at 46, :AGILITY
    m.at 50, :HURRICANE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :CALMMIND, :CAPTIVATE, :CONFIDE, :COVET, :DEFOG, :DOUBLETEAM, :EMBARGO, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :HELPINGHAND, :HIDDENPOWER, :ICYWIND, :MIMIC, :NATURALGIFT, :PROTECT, :QUASH, :REST, :RETURN, :ROLEPLAY, :ROOST, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SNORE, :STEELWING, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TAILWIND, :TAUNT, :TOXIC, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :CAPTIVATE, :PLUCK, :SAFEGUARD, :TAILWIND
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        0.6
  s.weight        3.4
  s.color         :Red
  s.shape         :Winged
  s.category      "Dancing"
  s.pokedex_entry "It beats its wings together to create fire. As it moves in the steps of its beautiful dance, it bathes opponents in intense flames."
  s.generation    7
  s.flags         :InheritFormFromMother
  s.wild_item_uncommon :HONEY
end

GameData::Species.define :TURTONATOR do |s|
  s.name          "Turtonator"
  s.types         :FIRE, :DRAGON
  s.base_stats    hp: 60, attack: 78, defense: 135, speed: 36, sp_atk: 91, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      170
  s.catch_rate    70
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SHELLARMOR
  s.moves do |m|
    m.at 1, :SMOG
    m.at 1, :TACKLE
    m.at 4, :EMBER
    m.at 8, :PROTECT
    m.at 12, :ENDURE
    m.at 16, :FLAIL
    m.at 20, :INCINERATE
    m.at 24, :IRONDEFENSE
    m.at 28, :DRAGONPULSE
    m.at 32, :BODYSLAM
    m.at 36, :FLAMETHROWER
    m.at 40, :SHELLTRAP
    m.at 44, :SHELLSMASH
    m.at 48, :OVERHEAT
    m.at 52, :EXPLOSION
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BODYPRESS, :BODYSLAM, :BRUTALSWING, :BULKUP, :BULLDOZE, :BURNINGJEALOUSY, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLASHCANNON, :FLING, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HEATCRASH, :HEATWAVE, :HEAVYSLAM, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LASHOUT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :PAYBACK, :PROTECT, :REST, :RETURN, :REVENGE, :ROAR, :ROCKTOMB, :ROUND, :SCALESHOT, :SCORCHINGSANDS, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TOXIC, :UPROAR, :VENOSHOCK, :WILLOWISP, :WORKUP, :TERABLAST
  s.egg_moves     :CURSE, :HEADSMASH, :RAPIDSPIN, :WIDEGUARD
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   5120
  s.height        2.0
  s.weight        212.0
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Blast Turtle"
  s.pokedex_entry "It lives in volcanoes and eats sulfur and other minerals. Materials from the food it eats form the basis of its explosive shell."
  s.generation    7
  s.wild_item_uncommon :CHARCOAL
end

GameData::Species.define :BLACEPHALON do |s|
  s.name          "Blacephalon"
  s.types         :FIRE, :GHOST
  s.base_stats    hp: 53, attack: 127, defense: 53, speed: 107, sp_atk: 151, sp_def: 79
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    30
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :BEASTBOOST
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :FIRESPIN
    m.at 5, :LIGHTSCREEN
    m.at 10, :EMBER
    m.at 15, :NIGHTSHADE
    m.at 20, :CONFUSERAY
    m.at 25, :MAGICCOAT
    m.at 30, :INCINERATE
    m.at 35, :HYPNOSIS
    m.at 40, :MYSTICALFIRE
    m.at 45, :SHADOWBALL
    m.at 50, :CALMMIND
    m.at 55, :WILLOWISP
    m.at 60, :TRICK
    m.at 65, :FIREBLAST
    m.at 70, :MINDBLOWN
  end
  s.tutor_moves   :AFTERYOU, :CALMMIND, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :ENCORE, :ENDURE, :EXPANDINGFORCE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLING, :FOULPLAY, :FRUSTRATION, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :KNOCKOFF, :LASTRESORT, :LIGHTSCREEN, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OVERHEAT, :PAINSPLIT, :PAYBACK, :PROTECT, :PSYCHIC, :PSYSHOCK, :QUASH, :RECYCLE, :REST, :RETURN, :ROCKBLAST, :ROUND, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :TORMENT, :TOXIC, :TRICK, :UPROAR, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.8
  s.weight        13.0
  s.color         :White
  s.shape         :Bipedal
  s.category      "Fireworks"
  s.pokedex_entry "It slithers toward people. Then, without warning, it triggers the explosion of its own head. It's apparently one kind of Ultra Beast."
  s.generation    7
  s.flags         :UltraBeast
end

GameData::Species.define :SCORBUNNY do |s|
  s.name          "Scorbunny"
  s.types         :FIRE
  s.base_stats    hp: 50, attack: 71, defense: 40, speed: 69, sp_atk: 40, sp_def: 40
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :BLAZE
  s.hidden_abilities :LIBERO
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 6, :EMBER
    m.at 8, :QUICKATTACK
    m.at 12, :DOUBLEKICK
    m.at 17, :FLAMECHARGE
    m.at 20, :AGILITY
    m.at 24, :HEADBUTT
    m.at 28, :COUNTER
    m.at 32, :BOUNCE
    m.at 36, :DOUBLEEDGE
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :ALLYSWITCH, :ASSURANCE, :ATTRACT, :BATONPASS, :BLAZEKICK, :BOUNCE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ELECTROBALL, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FLAMETHROWER, :FOCUSENERGY, :FRUSTRATION, :GUNKSHOT, :HEATWAVE, :HIDDENPOWER, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MIMIC, :MUDSHOT, :NATURALGIFT, :OVERHEAT, :PROTECT, :REST, :RETURN, :REVERSAL, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TOXIC, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :HIGHJUMPKICK, :SANDATTACK, :SUCKERPUNCH, :SUPERFANG
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   5120
  s.height        0.3
  s.weight        4.5
  s.color         :White
  s.shape         :BipedalTail
  s.category      "Rabbit"
  s.pokedex_entry "A warm-up of running around gets fire energy coursing through this Pokémon's body. Once that happens, it's ready to fight at full power."
  s.generation    8
  s.evolves_into  :RABOOT, :Level, 16
end

GameData::Species.define :RABOOT do |s|
  s.name          "Raboot"
  s.types         :FIRE
  s.base_stats    hp: 65, attack: 86, defense: 60, speed: 94, sp_atk: 55, sp_def: 60
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      147
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :BLAZE
  s.hidden_abilities :LIBERO
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :EMBER
    m.at 1, :QUICKATTACK
    m.at 12, :DOUBLEKICK
    m.at 19, :FLAMECHARGE
    m.at 24, :AGILITY
    m.at 30, :HEADBUTT
    m.at 36, :COUNTER
    m.at 42, :BOUNCE
    m.at 48, :DOUBLEEDGE
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :ALLYSWITCH, :ASSURANCE, :ATTRACT, :BATONPASS, :BLAZEKICK, :BOUNCE, :BULKUP, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ELECTROBALL, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FLAMETHROWER, :FLAREBLITZ, :FOCUSENERGY, :FRUSTRATION, :GUNKSHOT, :HEATWAVE, :HIDDENPOWER, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MIMIC, :MUDSHOT, :NATURALGIFT, :OVERHEAT, :PROTECT, :REST, :RETURN, :REVERSAL, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TOXIC, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   5120
  s.height        0.6
  s.weight        9.0
  s.color         :Gray
  s.shape         :BipedalTail
  s.category      "Rabbit"
  s.pokedex_entry "It kicks berries right off the branches of trees and then juggles them with its feet, practicing its footwork."
  s.generation    8
  s.evolves_into  :CINDERACE, :Level, 35
end

GameData::Species.define :CINDERACE do |s|
  s.name          "Cinderace"
  s.types         :FIRE
  s.base_stats    hp: 80, attack: 116, defense: 75, speed: 119, sp_atk: 65, sp_def: 75
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :BLAZE
  s.hidden_abilities :LIBERO
  s.moves do |m|
    m.at 0, :PYROBALL
    m.at 1, :FEINT
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :EMBER
    m.at 1, :QUICKATTACK
    m.at 12, :DOUBLEKICK
    m.at 19, :FLAMECHARGE
    m.at 24, :AGILITY
    m.at 30, :HEADBUTT
    m.at 38, :COUNTER
    m.at 46, :BOUNCE
    m.at 54, :DOUBLEEDGE
    m.at 62, :COURTCHANGE
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :ALLYSWITCH, :ASSURANCE, :ATTRACT, :BATONPASS, :BLASTBURN, :BLAZEKICK, :BOUNCE, :BULKUP, :CAPTIVATE, :COACHING, :CONFIDE, :DOUBLETEAM, :ELECTROBALL, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FIREPUNCH, :FIRESPIN, :FLAMETHROWER, :FLAREBLITZ, :FOCUSBLAST, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IRONHEAD, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MIMIC, :MUDSHOT, :NATURALGIFT, :OVERHEAT, :PROTECT, :REST, :RETURN, :REVENGE, :REVERSAL, :ROUND, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNARL, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TOXIC, :UTURN, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   5120
  s.height        1.4
  s.weight        33.0
  s.color         :White
  s.shape         :BipedalTail
  s.category      "Striker"
  s.pokedex_entry "It juggles a pebble with its feet, turning it into a burning soccer ball. Its shots strike opponents hard and leave them scorched."
  s.generation    8
end

GameData::Species.define :SIZZLIPEDE do |s|
  s.name          "Sizzlipede"
  s.types         :FIRE, :BUG
  s.base_stats    hp: 50, attack: 65, defense: 45, speed: 45, sp_atk: 50, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :FLASHFIRE, :WHITESMOKE
  s.hidden_abilities :FLAMEBODY
  s.moves do |m|
    m.at 1, :EMBER
    m.at 1, :SMOKESCREEN
    m.at 5, :WRAP
    m.at 10, :BITE
    m.at 15, :FLAMEWHEEL
    m.at 20, :BUGBITE
    m.at 25, :COIL
    m.at 30, :SLAM
    m.at 35, :FIRESPIN
    m.at 40, :CRUNCH
    m.at 45, :FIRELASH
    m.at 50, :LUNGE
    m.at 55, :BURNUP
  end
  s.tutor_moves   :ATTRACT, :BRUTALSWING, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :CRUNCH, :DOUBLETEAM, :ENDURE, :FACADE, :FIRESPIN, :FRUSTRATION, :HEATCRASH, :HEATWAVE, :HIDDENPOWER, :LEECHLIFE, :MIMIC, :NATURALGIFT, :POWERWHIP, :PROTECT, :REST, :RETURN, :ROUND, :SCALD, :SCORCHINGSANDS, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TOXIC, :VENOSHOCK, :TERABLAST
  s.egg_moves     :DEFENSECURL, :KNOCKOFF, :ROLLOUT, :STRUGGLEBUG
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        0.7
  s.weight        1.0
  s.color         :Red
  s.shape         :Multiped
  s.category      "Radiator"
  s.pokedex_entry "It stores flammable gas in its body and uses it to generate heat. The yellow sections on its belly get particularly hot."
  s.generation    8
  s.evolves_into  :CENTISKORCH, :Level, 28
end

GameData::Species.define :CENTISKORCH do |s|
  s.name          "Centiskorch"
  s.types         :FIRE, :BUG
  s.base_stats    hp: 100, attack: 115, defense: 65, speed: 65, sp_atk: 90, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      184
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :FLASHFIRE, :WHITESMOKE
  s.hidden_abilities :FLAMEBODY
  s.moves do |m|
    m.at 1, :INFERNO
    m.at 1, :EMBER
    m.at 1, :SMOKESCREEN
    m.at 1, :WRAP
    m.at 1, :BITE
    m.at 15, :FLAMEWHEEL
    m.at 20, :BUGBITE
    m.at 25, :COIL
    m.at 32, :SLAM
    m.at 39, :FIRESPIN
    m.at 46, :CRUNCH
    m.at 53, :FIRELASH
    m.at 60, :LUNGE
    m.at 67, :BURNUP
  end
  s.tutor_moves   :ATTRACT, :BRUTALSWING, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :CRUNCH, :DOUBLETEAM, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMETHROWER, :FLAREBLITZ, :FRUSTRATION, :GIGAIMPACT, :HEATCRASH, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :LEECHLIFE, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OVERHEAT, :POWERWHIP, :PROTECT, :REST, :RETURN, :ROUND, :SCALD, :SCORCHINGSANDS, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THUNDERFANG, :TOXIC, :VENOSHOCK, :WILLOWISP, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        3.0
  s.weight        120.0
  s.color         :Red
  s.shape         :Multiped
  s.category      "Radiator"
  s.pokedex_entry "While its burning body is already dangerous on its own, this excessively hostile Pokémon also has large and very sharp fangs."
  s.generation    8
end

