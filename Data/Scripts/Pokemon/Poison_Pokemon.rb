#===============================================================================
# Shattered Crowns - Poison Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :EKANS do |s|
  s.name          "Ekans"
  s.types         :POISON
  s.base_stats    hp: 35, attack: 60, defense: 44, speed: 55, sp_atk: 40, sp_def: 54
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      58
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :INTIMIDATE, :SHEDSKIN
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 1, :WRAP
    m.at 1, :LEER
    m.at 4, :POISONSTING
    m.at 9, :BITE
    m.at 12, :GLARE
    m.at 17, :SCREECH
    m.at 20, :ACID
    m.at 25, :STOCKPILE
    m.at 25, :SWALLOW
    m.at 25, :SPITUP
    m.at 28, :ACIDSPRAY
    m.at 33, :SLUDGEBOMB
    m.at 36, :GASTROACID
    m.at 38, :BELCH
    m.at 41, :HAZE
    m.at 44, :COIL
    m.at 49, :GUNKSHOT
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BIND, :BODYSLAM, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :INFESTATION, :IRONTAIL, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THIEF, :TORMENT, :VENOSHOCK, :TERABLAST
  s.egg_moves     :BEATUP, :DISABLE, :POISONFANG, :POISONTAIL, :SCARYFACE, :SLAM, :SPITE, :SUCKERPUNCH, :SWITCHEROO
  s.egg_groups    :Field, :Dragon
  s.hatch_steps   5120
  s.height        2.0
  s.weight        6.9
  s.color         :Purple
  s.shape         :Serpentine
  s.habitat       :Grassland
  s.category      "Snake"
  s.pokedex_entry "An Ekans curls itself up in a spiral while it rests. This position allows it to quickly respond to an enemy from any direction with a threat from its upraised head."
  s.generation    1
  s.evolves_into  :ARBOK, :Level, 22
end

GameData::Species.define :ARBOK do |s|
  s.name          "Arbok"
  s.types         :POISON
  s.base_stats    hp: 60, attack: 95, defense: 69, speed: 80, sp_atk: 65, sp_def: 79
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      157
  s.catch_rate    90
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :INTIMIDATE, :SHEDSKIN
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 0, :CRUNCH
    m.at 1, :ICEFANG
    m.at 1, :THUNDERFANG
    m.at 1, :FIREFANG
    m.at 1, :WRAP
    m.at 1, :LEER
    m.at 1, :POISONSTING
    m.at 1, :BITE
    m.at 4, :POISONSTING
    m.at 9, :BITE
    m.at 12, :GLARE
    m.at 17, :SCREECH
    m.at 20, :ACID
    m.at 27, :STOCKPILE
    m.at 27, :SWALLOW
    m.at 27, :SPITUP
    m.at 32, :ACIDSPRAY
    m.at 39, :SLUDGEBOMB
    m.at 44, :GASTROACID
    m.at 48, :BELCH
    m.at 51, :HAZE
    m.at 56, :COIL
    m.at 63, :GUNKSHOT
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BIND, :BODYSLAM, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONTAIL, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :IRONTAIL, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SPITE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THIEF, :THROATCHOP, :TORMENT, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Field, :Dragon
  s.hatch_steps   5120
  s.height        3.5
  s.weight        65.0
  s.color         :Purple
  s.shape         :Serpentine
  s.habitat       :Grassland
  s.category      "Cobra"
  s.pokedex_entry "This Pokémon has a terrifically strong constricting power. It can even flatten steel oil drums. Once it wraps its body around its foe, escaping is impossible."
  s.generation    1
end

GameData::Species.define :NIDORANfE do |s|
  s.name          "Nidoran♀"
  s.types         :POISON
  s.base_stats    hp: 55, attack: 47, defense: 52, speed: 41, sp_atk: 40, sp_def: 40
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Parabolic
  s.base_exp      55
  s.catch_rate    235
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :POISONPOINT, :RIVALRY
  s.hidden_abilities :HUSTLE
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :POISONSTING
    m.at 5, :SCRATCH
    m.at 10, :TAILWHIP
    m.at 15, :FURYSWIPES
    m.at 20, :TOXICSPIKES
    m.at 25, :DOUBLEKICK
    m.at 30, :BITE
    m.at 35, :HELPINGHAND
    m.at 40, :TOXIC
    m.at 45, :FLATTER
    m.at 50, :CRUNCH
    m.at 55, :EARTHPOWER
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BEATUP, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ECHOEDVOICE, :ENDURE, :FACADE, :FOCUSENERGY, :FRUSTRATION, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :IRONTAIL, :MIMIC, :MUDSLAP, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :THIEF, :THUNDER, :THUNDERBOLT, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :WATERPULSE, :TERABLAST
  s.egg_moves     :BEATUP, :CHARM, :COUNTER, :DISABLE, :FOCUSENERGY, :POISONFANG, :POISONTAIL, :SKULLBASH, :SUPERSONIC, :TAKEDOWN, :VENOMDRENCH
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        7.0
  s.color         :Blue
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Poison Pin"
  s.pokedex_entry "Its highly toxic barbs are thought to have developed as protection for this small-bodied Pokémon. When enraged, it releases a horrible toxin from its horn."
  s.generation    1
  s.evolves_into  :NIDORINA, :Level, 16
end

GameData::Species.define :NIDORINA do |s|
  s.name          "Nidorina"
  s.types         :POISON
  s.base_stats    hp: 70, attack: 62, defense: 67, speed: 56, sp_atk: 55, sp_def: 55
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Parabolic
  s.base_exp      128
  s.catch_rate    120
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :POISONPOINT, :RIVALRY
  s.hidden_abilities :HUSTLE
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :POISONSTING
    m.at 1, :SCRATCH
    m.at 1, :TAILWHIP
    m.at 15, :FURYSWIPES
    m.at 22, :TOXICSPIKES
    m.at 29, :DOUBLEKICK
    m.at 36, :BITE
    m.at 43, :HELPINGHAND
    m.at 50, :TOXIC
    m.at 57, :FLATTER
    m.at 64, :CRUNCH
    m.at 71, :EARTHPOWER
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BEATUP, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :ECHOEDVOICE, :ENDURE, :FACADE, :FOCUSENERGY, :FRUSTRATION, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :IRONTAIL, :MIMIC, :MUDSLAP, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :THIEF, :THUNDER, :THUNDERBOLT, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :WATERPULSE, :TERABLAST
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        0.8
  s.weight        20.0
  s.color         :Blue
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Poison Pin"
  s.pokedex_entry "When it is with its friends or family, its barbs are tucked away to prevent injury. It appears to become nervous if separated from the others."
  s.generation    1
  s.evolves_into  :NIDOQUEEN, :Item, MOONSTONE
end

GameData::Species.define :NIDOQUEEN do |s|
  s.name          "Nidoqueen"
  s.types         :POISON, :GROUND
  s.base_stats    hp: 90, attack: 92, defense: 87, speed: 76, sp_atk: 75, sp_def: 85
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Parabolic
  s.base_exp      253
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 3
  s.abilities     :POISONPOINT, :RIVALRY
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 0, :SUPERPOWER
    m.at 1, :SLUDGEWAVE
    m.at 1, :FURYSWIPES
    m.at 1, :TOXICSPIKES
    m.at 1, :DOUBLEKICK
    m.at 1, :BITE
    m.at 1, :HELPINGHAND
    m.at 1, :TOXIC
    m.at 1, :FLATTER
    m.at 1, :CRUNCH
    m.at 1, :EARTHPOWER
    m.at 1, :GROWL
    m.at 1, :POISONSTING
    m.at 1, :SCRATCH
    m.at 1, :TAILWHIP
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ATTRACT, :AVALANCHE, :BEATUP, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CHARM, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :DRAGONTAIL, :DRILLRUN, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HELPINGHAND, :HEX, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONTAIL, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PAYDAY, :POISONJAB, :POWERUPPUNCH, :PROTECT, :QUASH, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SUPERPOWER, :SURF, :SWAGGER, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :TORMENT, :TOXIC, :TOXICSPIKES, :UPROAR, :VENOMDRENCH, :VENOSHOCK, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        1.3
  s.weight        60.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Drill"
  s.pokedex_entry "It is adept at sending foes flying with harsh tackles using its tough, scaly body. This Pokémon is at its strongest when it is defending its young."
  s.generation    1
end

GameData::Species.define :NIDORANmA do |s|
  s.name          "Nidoran♂"
  s.types         :POISON
  s.base_stats    hp: 46, attack: 57, defense: 40, speed: 50, sp_atk: 40, sp_def: 40
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Parabolic
  s.base_exp      55
  s.catch_rate    235
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :POISONPOINT, :RIVALRY
  s.hidden_abilities :HUSTLE
  s.moves do |m|
    m.at 1, :LEER
    m.at 1, :POISONSTING
    m.at 5, :PECK
    m.at 10, :FOCUSENERGY
    m.at 15, :FURYATTACK
    m.at 20, :TOXICSPIKES
    m.at 25, :DOUBLEKICK
    m.at 30, :HORNATTACK
    m.at 35, :HELPINGHAND
    m.at 40, :TOXIC
    m.at 45, :FLATTER
    m.at 50, :POISONJAB
    m.at 55, :EARTHPOWER
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BEATUP, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :EARTHPOWER, :ECHOEDVOICE, :ENDURE, :FACADE, :FOCUSENERGY, :FRUSTRATION, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :IRONTAIL, :MIMIC, :MUDSLAP, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SMARTSTRIKE, :SNORE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :THIEF, :THUNDER, :THUNDERBOLT, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :WATERPULSE, :TERABLAST
  s.egg_moves     :AMNESIA, :BEATUP, :CONFUSION, :COUNTER, :DISABLE, :HEADSMASH, :HORNDRILL, :POISONTAIL, :SUCKERPUNCH, :SUPERSONIC, :TAKEDOWN, :THRASH, :VENOMDRENCH
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        0.5
  s.weight        9.0
  s.color         :Purple
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Poison Pin"
  s.pokedex_entry "The male Nidoran has developed muscles that freely move its ears in any direction. Even the slightest sound does not escape this Pokémon's notice."
  s.generation    1
  s.evolves_into  :NIDORINO, :Level, 16
end

GameData::Species.define :NIDORINO do |s|
  s.name          "Nidorino"
  s.types         :POISON
  s.base_stats    hp: 61, attack: 72, defense: 57, speed: 65, sp_atk: 55, sp_def: 55
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Parabolic
  s.base_exp      128
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :POISONPOINT, :RIVALRY
  s.hidden_abilities :HUSTLE
  s.moves do |m|
    m.at 1, :LEER
    m.at 1, :POISONSTING
    m.at 1, :PECK
    m.at 1, :FOCUSENERGY
    m.at 15, :FURYATTACK
    m.at 22, :TOXICSPIKES
    m.at 29, :DOUBLEKICK
    m.at 36, :HORNATTACK
    m.at 43, :HELPINGHAND
    m.at 50, :TOXIC
    m.at 57, :FLATTER
    m.at 64, :POISONJAB
    m.at 71, :EARTHPOWER
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BEATUP, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :EARTHPOWER, :ECHOEDVOICE, :ENDURE, :FACADE, :FOCUSENERGY, :FRUSTRATION, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :ICEBEAM, :IRONTAIL, :MIMIC, :MUDSLAP, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SMARTSTRIKE, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :THIEF, :THUNDER, :THUNDERBOLT, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :WATERPULSE, :TERABLAST
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        0.9
  s.weight        19.5
  s.color         :Purple
  s.shape         :Quadruped
  s.habitat       :Grassland
  s.category      "Poison Pin"
  s.pokedex_entry "Its horn is harder than a diamond. If it senses a hostile presence, all the barbs on its back bristle up at once, and it challenges the foe with all its might."
  s.generation    1
  s.evolves_into  :NIDOKING, :Item, MOONSTONE
end

GameData::Species.define :NIDOKING do |s|
  s.name          "Nidoking"
  s.types         :POISON, :GROUND
  s.base_stats    hp: 81, attack: 102, defense: 77, speed: 85, sp_atk: 85, sp_def: 75
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Parabolic
  s.base_exp      253
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :POISONPOINT, :RIVALRY
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 0, :MEGAHORN
    m.at 1, :SLUDGEWAVE
    m.at 1, :FURYATTACK
    m.at 1, :TOXICSPIKES
    m.at 1, :DOUBLEKICK
    m.at 1, :HORNATTACK
    m.at 1, :HELPINGHAND
    m.at 1, :TOXIC
    m.at 1, :FLATTER
    m.at 1, :POISONJAB
    m.at 1, :EARTHPOWER
    m.at 1, :LEER
    m.at 1, :POISONSTING
    m.at 1, :PECK
    m.at 1, :FOCUSENERGY
  end
  s.tutor_moves   :AMNESIA, :AQUATAIL, :ATTRACT, :AVALANCHE, :BEATUP, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :DRAGONTAIL, :DRILLRUN, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HELPINGHAND, :HEX, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONTAIL, :MEGAHORN, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PAYDAY, :POISONJAB, :POWERUPPUNCH, :PROTECT, :QUASH, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SMARTSTRIKE, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SUPERPOWER, :SURF, :SWAGGER, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :TORMENT, :TOXIC, :TOXICSPIKES, :UPROAR, :VENOMDRENCH, :VENOSHOCK, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        1.4
  s.weight        62.0
  s.color         :Purple
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Drill"
  s.pokedex_entry "A Nidoking's thick tail packs enormously destructive power capable of toppling a metal transmission tower. Once it goes on a rampage, there is no stopping it."
  s.generation    1
end

GameData::Species.define :ZUBAT do |s|
  s.name          "Zubat"
  s.types         :POISON, :FLYING
  s.base_stats    hp: 40, attack: 45, defense: 35, speed: 55, sp_atk: 30, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      49
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :INNERFOCUS
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :SUPERSONIC
    m.at 5, :ASTONISH
    m.at 10, :MEANLOOK
    m.at 15, :POISONFANG
    m.at 20, :QUICKGUARD
    m.at 25, :AIRCUTTER
    m.at 30, :BITE
    m.at 35, :HAZE
    m.at 40, :VENOSHOCK
    m.at 45, :CONFUSERAY
    m.at 50, :AIRSLASH
    m.at 55, :LEECHLIFE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :ASSURANCE, :ATTRACT, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :CRUNCH, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :GIGADRAIN, :HEATWAVE, :HIDDENPOWER, :LEECHLIFE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PAYBACK, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SNATCH, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :TORMENT, :TWISTER, :UPROAR, :UTURN, :VENOMDRENCH, :VENOSHOCK, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BRAVEBIRD, :CURSE, :DEFOG, :GUST, :HYPNOSIS, :QUICKATTACK, :VENOMDRENCH, :WHIRLWIND, :WINGATTACK, :ZENHEADBUTT
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        0.8
  s.weight        7.5
  s.color         :Purple
  s.shape         :Winged
  s.habitat       :Cave
  s.category      "Bat"
  s.pokedex_entry "While living in pitch-black caverns, their eyes gradually grew shut and deprived them of vision. They use ultrasonic waves to detect obstacles."
  s.generation    1
  s.evolves_into  :GOLBAT, :Level, 22
  s.flags         :HasGenderedSprites
end

GameData::Species.define :GOLBAT do |s|
  s.name          "Golbat"
  s.types         :POISON, :FLYING
  s.base_stats    hp: 75, attack: 80, defense: 70, speed: 90, sp_atk: 65, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      159
  s.catch_rate    90
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :INNERFOCUS
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :SCREECH
    m.at 1, :ABSORB
    m.at 1, :SUPERSONIC
    m.at 1, :ASTONISH
    m.at 1, :MEANLOOK
    m.at 15, :POISONFANG
    m.at 20, :QUICKGUARD
    m.at 27, :AIRCUTTER
    m.at 34, :BITE
    m.at 41, :HAZE
    m.at 48, :VENOSHOCK
    m.at 55, :CONFUSERAY
    m.at 62, :AIRSLASH
    m.at 69, :LEECHLIFE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :ASSURANCE, :ATTRACT, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :CRUNCH, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :LEECHLIFE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PAYBACK, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SNATCH, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :TORMENT, :TWISTER, :UPROAR, :UTURN, :VENOMDRENCH, :VENOSHOCK, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        1.6
  s.weight        55.0
  s.color         :Purple
  s.shape         :Winged
  s.habitat       :Cave
  s.category      "Bat"
  s.pokedex_entry "Its fangs easily puncture even thick animal hide. It loves to feast on the blood of people and Pokémon. It flits about in darkness and strikes from behind."
  s.generation    1
  s.evolves_into  :CROBAT, :Happiness
  s.flags         :HasGenderedSprites
end

GameData::Species.define :GRIMER do |s|
  s.name          "Grimer"
  s.types         :POISON
  s.base_stats    hp: 80, attack: 80, defense: 50, speed: 25, sp_atk: 40, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      65
  s.catch_rate    190
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :STENCH, :STICKYHOLD
  s.hidden_abilities :POISONTOUCH
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :POISONGAS
    m.at 4, :HARDEN
    m.at 7, :MUDSLAP
    m.at 12, :DISABLE
    m.at 15, :SLUDGE
    m.at 18, :SMOG
    m.at 21, :MINIMIZE
    m.at 26, :FLING
    m.at 29, :SLUDGEBOMB
    m.at 32, :SLUDGEWAVE
    m.at 37, :SCREECH
    m.at 40, :GUNKSHOT
    m.at 43, :ACIDARMOR
    m.at 46, :BELCH
    m.at 48, :MEMENTO
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :DYNAMICPUNCH, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FRUSTRATION, :GIGADRAIN, :GUNKSHOT, :HIDDENPOWER, :ICEPUNCH, :INCINERATE, :INFESTATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :TORMENT, :VENOSHOCK, :TERABLAST
  s.egg_moves     :ACIDSPRAY, :CURSE, :HAZE, :IMPRISON, :LICK, :MEANLOOK, :POWERUPPUNCH, :SCARYFACE, :SHADOWPUNCH, :SHADOWSNEAK, :SPITUP, :STOCKPILE, :SWALLOW
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.9
  s.weight        30.0
  s.color         :Purple
  s.shape         :HeadArms
  s.habitat       :Urban
  s.category      "Sludge"
  s.pokedex_entry "Born from polluted sludge in the sea, Grimer's favorite food is anything filthy. They feed on wastewater pumped out from factories."
  s.generation    1
  s.evolves_into  :MUK, :Level, 38
  s.wild_item_uncommon :BLACKSLUDGE
end

GameData::Species.define :MUK do |s|
  s.name          "Muk"
  s.types         :POISON
  s.base_stats    hp: 105, attack: 105, defense: 75, speed: 50, sp_atk: 65, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    75
  s.happiness     50
  s.evs           hp: 1, attack: 1
  s.abilities     :STENCH, :STICKYHOLD
  s.hidden_abilities :POISONTOUCH
  s.moves do |m|
    m.at 0, :VENOMDRENCH
    m.at 1, :POUND
    m.at 1, :POISONGAS
    m.at 1, :HARDEN
    m.at 1, :MUDSLAP
    m.at 4, :HARDEN
    m.at 7, :MUDSLAP
    m.at 12, :DISABLE
    m.at 15, :SLUDGE
    m.at 18, :SMOG
    m.at 21, :MINIMIZE
    m.at 26, :FLING
    m.at 29, :SLUDGEBOMB
    m.at 32, :SLUDGEWAVE
    m.at 37, :SCREECH
    m.at 40, :GUNKSHOT
    m.at 46, :ACIDARMOR
    m.at 52, :BELCH
    m.at 57, :MEMENTO
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DIG, :DOUBLETEAM, :DYNAMICPUNCH, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GUNKSHOT, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :INCINERATE, :INFESTATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :TORMENT, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        1.2
  s.weight        30.0
  s.color         :Purple
  s.shape         :HeadArms
  s.habitat       :Urban
  s.category      "Sludge"
  s.pokedex_entry "It prefers warm and humid habitats. In the summertime, the toxic substances in its body intensify, making Muk reek like putrid kitchen garbage."
  s.generation    1
  s.wild_item_common   :BLACKSLUDGE
end

GameData::Species.define :KOFFING do |s|
  s.name          "Koffing"
  s.types         :POISON
  s.base_stats    hp: 40, attack: 65, defense: 95, speed: 35, sp_atk: 60, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      68
  s.catch_rate    190
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :LEVITATE, :NEUTRALIZINGGAS
  s.hidden_abilities :STENCH
  s.moves do |m|
    m.at 1, :POISONGAS
    m.at 1, :TACKLE
    m.at 4, :SMOG
    m.at 8, :SMOKESCREEN
    m.at 12, :CLEARSMOG
    m.at 16, :ASSURANCE
    m.at 20, :SLUDGE
    m.at 24, :HAZE
    m.at 28, :SELFDESTRUCT
    m.at 32, :SLUDGEBOMB
    m.at 36, :TOXIC
    m.at 40, :BELCH
    m.at 44, :EXPLOSION
    m.at 48, :MEMENTO
    m.at 52, :DESTINYBOND
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :CAPTIVATE, :CONFIDE, :CORROSIVEGAS, :DARKPULSE, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FRUSTRATION, :GYROBALL, :HIDDENPOWER, :INCINERATE, :INFESTATION, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLLOUT, :ROUND, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :TORMENT, :TOXIC, :TOXICSPIKES, :UPROAR, :VENOMDRENCH, :VENOSHOCK, :WILLOWISP, :TERABLAST
  s.egg_moves     :CURSE, :DESTINYBOND, :GRUDGE, :PAINSPLIT, :PSYBEAM, :SCREECH, :SPITE, :SPITUP, :STOCKPILE, :SWALLOW, :TOXICSPIKES, :VENOMDRENCH
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.6
  s.weight        1.0
  s.color         :Purple
  s.shape         :Head
  s.habitat       :Urban
  s.category      "Poison Gas"
  s.pokedex_entry "Getting up close to a Koffing will give you a chance to observe, through its thin skin, the toxic gases swirling inside. It blows up at the slightest stimulation."
  s.generation    1
  s.evolves_into  :WEEZING, :Level, 35
  s.wild_item_uncommon :SMOKEBALL
end

GameData::Species.define :WEEZING do |s|
  s.name          "Weezing"
  s.types         :POISON
  s.base_stats    hp: 65, attack: 90, defense: 120, speed: 60, sp_atk: 85, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      172
  s.catch_rate    60
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :LEVITATE, :NEUTRALIZINGGAS
  s.hidden_abilities :STENCH
  s.moves do |m|
    m.at 0, :DOUBLEHIT
    m.at 1, :HEATWAVE
    m.at 1, :POISONGAS
    m.at 1, :TACKLE
    m.at 1, :SMOG
    m.at 1, :SMOKESCREEN
    m.at 12, :CLEARSMOG
    m.at 16, :ASSURANCE
    m.at 20, :SLUDGE
    m.at 24, :HAZE
    m.at 28, :SELFDESTRUCT
    m.at 32, :SLUDGEBOMB
    m.at 38, :TOXIC
    m.at 44, :BELCH
    m.at 50, :EXPLOSION
    m.at 56, :MEMENTO
    m.at 62, :DESTINYBOND
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :CAPTIVATE, :CONFIDE, :CORROSIVEGAS, :DARKPULSE, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :INFESTATION, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLLOUT, :ROUND, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :TORMENT, :TOXIC, :TOXICSPIKES, :UPROAR, :VENOMDRENCH, :VENOSHOCK, :WILLOWISP, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        1.2
  s.weight        9.5
  s.color         :Purple
  s.shape         :MultiBody
  s.habitat       :Urban
  s.category      "Poison Gas"
  s.pokedex_entry "By diluting its toxic gases with a special process, the highest grade of perfume can be made. To Weezing, gases emanating from garbage are the ultimate feast."
  s.generation    1
  s.wild_item_uncommon :SMOKEBALL
end

GameData::Species.define :CROBAT do |s|
  s.name          "Crobat"
  s.types         :POISON, :FLYING
  s.base_stats    hp: 85, attack: 90, defense: 80, speed: 130, sp_atk: 70, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      268
  s.catch_rate    90
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :INNERFOCUS
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 0, :CROSSPOISON
    m.at 1, :TAILWIND
    m.at 1, :TOXIC
    m.at 1, :SCREECH
    m.at 1, :ABSORB
    m.at 1, :SUPERSONIC
    m.at 1, :ASTONISH
    m.at 1, :MEANLOOK
    m.at 15, :POISONFANG
    m.at 20, :QUICKGUARD
    m.at 27, :AIRCUTTER
    m.at 34, :BITE
    m.at 41, :HAZE
    m.at 48, :VENOSHOCK
    m.at 55, :CONFUSERAY
    m.at 62, :AIRSLASH
    m.at 69, :LEECHLIFE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :ASSURANCE, :ATTRACT, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :CROSSPOISON, :CRUNCH, :DARKPULSE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FLY, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HEATWAVE, :HEX, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :LEECHLIFE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OMINOUSWIND, :PAYBACK, :PLUCK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SKYATTACK, :SLEEPTALK, :SLUDGEBOMB, :SNATCH, :SNORE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :TAILWIND, :TAUNT, :THIEF, :TORMENT, :TOXIC, :TWISTER, :UPROAR, :UTURN, :VENOMDRENCH, :VENOSHOCK, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   3840
  s.height        1.8
  s.weight        75.0
  s.color         :Purple
  s.shape         :MultiWinged
  s.habitat       :Cave
  s.category      "Bat"
  s.pokedex_entry "Over the course of evolution, its hind legs turned into wings. By alternately resting its front and rear wings, it can fly all day without having to stop."
  s.generation    2
end

GameData::Species.define :GULPIN do |s|
  s.name          "Gulpin"
  s.types         :POISON
  s.base_stats    hp: 70, attack: 43, defense: 53, speed: 40, sp_atk: 43, sp_def: 53
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fluctuating
  s.base_exp      60
  s.catch_rate    225
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :LIQUIDOOZE, :STICKYHOLD
  s.hidden_abilities :GLUTTONY
  s.moves do |m|
    m.at 1, :POUND
    m.at 5, :YAWN
    m.at 8, :POISONGAS
    m.at 10, :SLUDGE
    m.at 12, :AMNESIA
    m.at 17, :ACIDSPRAY
    m.at 20, :ENCORE
    m.at 25, :TOXIC
    m.at 28, :STOCKPILE
    m.at 28, :SPITUP
    m.at 28, :SWALLOW
    m.at 33, :SLUDGEBOMB
    m.at 36, :GASTROACID
    m.at 41, :BELCH
    m.at 44, :PAINSPLIT
    m.at 49, :GUNKSHOT
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :EXPLOSION, :FACADE, :FIREPUNCH, :FRUSTRATION, :GASTROACID, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :ICEPUNCH, :INFESTATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THUNDERPUNCH, :TOXIC, :VENOSHOCK, :WATERPULSE, :TERABLAST
  s.egg_moves     :ACIDARMOR, :CURSE, :DESTINYBOND, :GUNKSHOT, :MUDSLAP, :PAINSPLIT, :SMOG, :VENOMDRENCH
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        0.4
  s.weight        10.3
  s.color         :Green
  s.shape         :HeadArms
  s.habitat       :Grassland
  s.category      "Stomach"
  s.pokedex_entry "This Pokémon's stomach fluid can even digest scrap iron. In one gulp, it can swallow something that is as large as itself."
  s.generation    3
  s.evolves_into  :SWALOT, :Level, 26
  s.flags         :HasGenderedSprites
  s.wild_item_common   :ORANBERRY
  s.wild_item_uncommon :SITRUSBERRY
end

GameData::Species.define :SWALOT do |s|
  s.name          "Swalot"
  s.types         :POISON
  s.base_stats    hp: 100, attack: 73, defense: 83, speed: 55, sp_atk: 73, sp_def: 83
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fluctuating
  s.base_exp      163
  s.catch_rate    75
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :LIQUIDOOZE, :STICKYHOLD
  s.hidden_abilities :GLUTTONY
  s.moves do |m|
    m.at 0, :BODYSLAM
    m.at 1, :VENOMDRENCH
    m.at 1, :GUNKSHOT
    m.at 1, :POUND
    m.at 1, :YAWN
    m.at 1, :POISONGAS
    m.at 1, :SLUDGE
    m.at 5, :YAWN
    m.at 8, :POISONGAS
    m.at 10, :SLUDGE
    m.at 12, :AMNESIA
    m.at 17, :ACIDSPRAY
    m.at 20, :ENCORE
    m.at 25, :TOXIC
    m.at 30, :STOCKPILE
    m.at 30, :SPITUP
    m.at 30, :SWALLOW
    m.at 37, :SLUDGEBOMB
    m.at 42, :GASTROACID
    m.at 49, :BELCH
    m.at 54, :PAINSPLIT
    m.at 61, :GUNKSHOT
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BODYSLAM, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREPUNCH, :FRUSTRATION, :GASTROACID, :GIGAIMPACT, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :INFESTATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SOLARBEAM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THUNDERPUNCH, :TOXIC, :VENOSHOCK, :WATERPULSE, :TERABLAST
  s.egg_groups    :Amorphous
  s.hatch_steps   5120
  s.height        1.7
  s.weight        80.0
  s.color         :Purple
  s.shape         :HeadArms
  s.habitat       :Grassland
  s.category      "Poison Bag"
  s.pokedex_entry "Its powerful stomach acid is capable of digesting almost anything. The one thing in the whole world a Swalot can't digest is its own stomach."
  s.generation    3
  s.flags         :HasGenderedSprites
  s.wild_item_common   :ORANBERRY
  s.wild_item_uncommon :SITRUSBERRY
end

GameData::Species.define :SEVIPER do |s|
  s.name          "Seviper"
  s.types         :POISON
  s.base_stats    hp: 73, attack: 100, defense: 60, speed: 65, sp_atk: 100, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fluctuating
  s.base_exp      160
  s.catch_rate    90
  s.happiness     50
  s.evs           attack: 1, sp_attack: 1
  s.abilities     :SHEDSKIN
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 1, :WRAP
    m.at 1, :SWAGGER
    m.at 4, :BITE
    m.at 6, :LICK
    m.at 9, :POISONTAIL
    m.at 11, :FEINT
    m.at 14, :SCREECH
    m.at 16, :VENOSHOCK
    m.at 19, :GLARE
    m.at 21, :POISONFANG
    m.at 24, :VENOMDRENCH
    m.at 26, :NIGHTSLASH
    m.at 29, :GASTROACID
    m.at 31, :POISONJAB
    m.at 34, :HAZE
    m.at 36, :SWORDSDANCE
    m.at 39, :CRUNCH
    m.at 41, :BELCH
    m.at 44, :COIL
    m.at 46, :SLUDGEBOMB
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BIND, :BODYSLAM, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONTAIL, :EARTHQUAKE, :ENDURE, :FACADE, :FLAMETHROWER, :FRUSTRATION, :FURYCUTTER, :GASTROACID, :GIGADRAIN, :HEADBUTT, :HIDDENPOWER, :INFESTATION, :IRONTAIL, :KNOCKOFF, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_moves     :ASSURANCE, :BODYSLAM, :FINALGAMBIT, :NIGHTSLASH, :SCARYFACE, :SPITUP, :STOCKPILE, :SWALLOW, :SWITCHEROO
  s.egg_groups    :Field, :Dragon
  s.hatch_steps   5120
  s.height        2.7
  s.weight        52.5
  s.color         :Black
  s.shape         :Serpentine
  s.habitat       :Grassland
  s.category      "Fang Snake"
  s.pokedex_entry "Seviper and Zangoose are eternal rivals. It counters a Zangoose's dazzling agility with its swordlike tail, which also oozes a horrible poison."
  s.generation    3
  s.wild_item_uncommon :SHEDSHELL
end

GameData::Species.define :STUNKY do |s|
  s.name          "Stunky"
  s.types         :POISON, :DARK
  s.base_stats    hp: 63, attack: 63, defense: 47, speed: 74, sp_atk: 41, sp_def: 41
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      66
  s.catch_rate    225
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :STENCH, :AFTERMATH
  s.hidden_abilities :KEENEYE
  s.moves do |m|
    m.at 1, :POISONGAS
    m.at 1, :SCRATCH
    m.at 3, :FEINT
    m.at 6, :SMOKESCREEN
    m.at 9, :ACIDSPRAY
    m.at 12, :FURYSWIPES
    m.at 15, :FOCUSENERGY
    m.at 18, :BITE
    m.at 21, :VENOSHOCK
    m.at 24, :SCREECH
    m.at 27, :TOXIC
    m.at 30, :SUCKERPUNCH
    m.at 33, :MEMENTO
    m.at 36, :NIGHTSLASH
    m.at 39, :BELCH
    m.at 42, :VENOMDRENCH
    m.at 45, :EXPLOSION
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :CAPTIVATE, :CONFIDE, :CORROSIVEGAS, :CRUNCH, :CUT, :DARKPULSE, :DEFOG, :DIG, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FLAMETHROWER, :FOCUSENERGY, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HEX, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :IRONTAIL, :LASHOUT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNATCH, :SNORE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILSLAP, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :TOXIC, :VENOMDRENCH, :VENOSHOCK, :TERABLAST
  s.egg_moves     :ASTONISH, :CRUNCH, :DOUBLEEDGE, :FOULPLAY, :HAZE, :LEER, :PLAYROUGH, :SCARYFACE, :SLASH, :SMOG
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        19.2
  s.color         :Purple
  s.shape         :Quadruped
  s.category      "Skunk"
  s.pokedex_entry "It protects itself by spraying a noxious fluid from its rear. The stench lingers for 24 hours."
  s.generation    4
  s.evolves_into  :SKUNTANK, :Level, 34
end

GameData::Species.define :SKUNTANK do |s|
  s.name          "Skuntank"
  s.types         :POISON, :DARK
  s.base_stats    hp: 103, attack: 93, defense: 67, speed: 84, sp_atk: 71, sp_def: 61
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    60
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :STENCH, :AFTERMATH
  s.hidden_abilities :KEENEYE
  s.moves do |m|
    m.at 0, :FLAMETHROWER
    m.at 1, :POISONGAS
    m.at 1, :SCRATCH
    m.at 1, :FEINT
    m.at 1, :SMOKESCREEN
    m.at 9, :ACIDSPRAY
    m.at 12, :FURYSWIPES
    m.at 15, :FOCUSENERGY
    m.at 18, :BITE
    m.at 21, :VENOSHOCK
    m.at 24, :SCREECH
    m.at 27, :TOXIC
    m.at 30, :SUCKERPUNCH
    m.at 33, :MEMENTO
    m.at 38, :NIGHTSLASH
    m.at 43, :BELCH
    m.at 48, :VENOMDRENCH
    m.at 53, :EXPLOSION
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :CORROSIVEGAS, :CRUNCH, :CUT, :DARKPULSE, :DEFOG, :DIG, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMETHROWER, :FOCUSENERGY, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HEX, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :INCINERATE, :IRONTAIL, :LASHOUT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PLAYROUGH, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNATCH, :SNORE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILSLAP, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :TOXIC, :VENOMDRENCH, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        38.0
  s.color         :Purple
  s.shape         :Quadruped
  s.category      "Skunk"
  s.pokedex_entry "It sprays a vile-smelling fluid from the tip of its tail to attack. Its range is over 160 feet."
  s.generation    4
end

GameData::Species.define :SKORUPI do |s|
  s.name          "Skorupi"
  s.types         :POISON, :BUG
  s.base_stats    hp: 40, attack: 50, defense: 90, speed: 65, sp_atk: 30, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      66
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :BATTLEARMOR, :SNIPER
  s.hidden_abilities :KEENEYE
  s.moves do |m|
    m.at 1, :POISONSTING
    m.at 1, :LEER
    m.at 3, :HONECLAWS
    m.at 6, :FELLSTINGER
    m.at 9, :POISONFANG
    m.at 12, :BITE
    m.at 15, :TOXICSPIKES
    m.at 18, :BUGBITE
    m.at 21, :VENOSHOCK
    m.at 24, :KNOCKOFF
    m.at 27, :SCARYFACE
    m.at 30, :PINMISSILE
    m.at 33, :TOXIC
    m.at 36, :NIGHTSLASH
    m.at 39, :CROSSPOISON
    m.at 42, :XSCISSOR
    m.at 45, :ACUPRESSURE
    m.at 48, :CRUNCH
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AQUATAIL, :ASSURANCE, :ATTRACT, :BRICKBREAK, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :CROSSPOISON, :CRUNCH, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FLASH, :FLING, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :INFESTATION, :IRONTAIL, :KNOCKOFF, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :TAUNT, :THIEF, :TORMENT, :TOXIC, :TOXICSPIKES, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_moves     :AGILITY, :CONFUSERAY, :NIGHTSLASH, :POISONTAIL, :SANDATTACK, :SCREECH, :SLASH, :WHIRLWIND
  s.egg_groups    :Bug, :Water3
  s.hatch_steps   5120
  s.height        0.8
  s.weight        12.0
  s.color         :Purple
  s.shape         :Insectoid
  s.category      "Scorpion"
  s.pokedex_entry "It grips prey with its tail claws and injects poison. It tenaciously hangs on until the poison takes."
  s.generation    4
  s.evolves_into  :DRAPION, :Level, 40
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :DRAPION do |s|
  s.name          "Drapion"
  s.types         :POISON, :DARK
  s.base_stats    hp: 70, attack: 90, defense: 110, speed: 95, sp_atk: 60, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      175
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :BATTLEARMOR, :SNIPER
  s.hidden_abilities :KEENEYE
  s.moves do |m|
    m.at 1, :THUNDERFANG
    m.at 1, :ICEFANG
    m.at 1, :FIREFANG
    m.at 1, :POISONSTING
    m.at 1, :LEER
    m.at 1, :HONECLAWS
    m.at 1, :FELLSTINGER
    m.at 9, :POISONFANG
    m.at 12, :BITE
    m.at 15, :TOXICSPIKES
    m.at 18, :BUGBITE
    m.at 21, :VENOSHOCK
    m.at 24, :KNOCKOFF
    m.at 27, :SCARYFACE
    m.at 30, :PINMISSILE
    m.at 33, :TOXIC
    m.at 36, :NIGHTSLASH
    m.at 39, :CROSSPOISON
    m.at 44, :XSCISSOR
    m.at 49, :ACUPRESSURE
    m.at 54, :CRUNCH
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AQUATAIL, :ASSURANCE, :ATTRACT, :BRICKBREAK, :BRUTALSWING, :BUGBITE, :BUGBUZZ, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CROSSPOISON, :CRUNCH, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FALSESWIPE, :FIREFANG, :FLASH, :FLING, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEFANG, :INFESTATION, :IRONDEFENSE, :IRONTAIL, :KNOCKOFF, :LASHOUT, :LEECHLIFE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDTOMB, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :THUNDERFANG, :TORMENT, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug, :Water3
  s.hatch_steps   5120
  s.height        1.3
  s.weight        61.5
  s.color         :Purple
  s.shape         :Insectoid
  s.category      "Ogre Scorpion"
  s.pokedex_entry "It has the power in its clawed arms to make scrap of a car. The tips of its claws release poison."
  s.generation    4
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :CROAGUNK do |s|
  s.name          "Croagunk"
  s.types         :POISON, :FIGHTING
  s.base_stats    hp: 48, attack: 61, defense: 40, speed: 50, sp_atk: 61, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      60
  s.catch_rate    140
  s.happiness     100
  s.evs           attack: 1
  s.abilities     :ANTICIPATION, :DRYSKIN
  s.hidden_abilities :POISONTOUCH
  s.moves do |m|
    m.at 1, :POISONSTING
    m.at 1, :MUDSLAP
    m.at 4, :ASTONISH
    m.at 8, :TAUNT
    m.at 12, :FLATTER
    m.at 16, :REVENGE
    m.at 20, :VENOSHOCK
    m.at 24, :SUCKERPUNCH
    m.at 28, :SWAGGER
    m.at 32, :POISONJAB
    m.at 36, :TOXIC
    m.at 40, :NASTYPLOT
    m.at 44, :SLUDGEBOMB
    m.at 48, :BELCH
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BATONPASS, :BOUNCE, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :COACHING, :CONFIDE, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :EMBARGO, :ENCORE, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GUNKSHOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :ICYWIND, :KNOCKOFF, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SPITE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :TAUNT, :THIEF, :THUNDERPUNCH, :TORMENT, :TOXIC, :VACUUMWAVE, :VENOMDRENCH, :VENOSHOCK, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_moves     :ACUPRESSURE, :BULLETPUNCH, :COUNTER, :CROSSCHOP, :DYNAMICPUNCH, :FAKEOUT, :FEINT, :HEADBUTT, :QUICKGUARD, :VACUUMWAVE
  s.egg_groups    :Humanlike
  s.hatch_steps   2560
  s.height        0.7
  s.weight        23.0
  s.color         :Blue
  s.shape         :Bipedal
  s.category      "Toxic Mouth"
  s.pokedex_entry "Its cheeks hold poison sacs. It tries to catch foes off guard to jab them with toxic fingers."
  s.generation    4
  s.evolves_into  :TOXICROAK, :Level, 37
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :BLACKSLUDGE
end

GameData::Species.define :TOXICROAK do |s|
  s.name          "Toxicroak"
  s.types         :POISON, :FIGHTING
  s.base_stats    hp: 83, attack: 106, defense: 65, speed: 85, sp_atk: 86, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      172
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :ANTICIPATION, :DRYSKIN
  s.hidden_abilities :POISONTOUCH
  s.moves do |m|
    m.at 1, :POISONSTING
    m.at 1, :MUDSLAP
    m.at 1, :ASTONISH
    m.at 1, :TAUNT
    m.at 12, :FLATTER
    m.at 16, :REVENGE
    m.at 20, :VENOSHOCK
    m.at 24, :SUCKERPUNCH
    m.at 28, :SWAGGER
    m.at 32, :POISONJAB
    m.at 36, :TOXIC
    m.at 42, :NASTYPLOT
    m.at 48, :SLUDGEBOMB
    m.at 54, :BELCH
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BATONPASS, :BOUNCE, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :COACHING, :CONFIDE, :CORROSIVEGAS, :CROSSPOISON, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :EMBARGO, :ENCORE, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GUNKSHOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :ICYWIND, :KNOCKOFF, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SPITE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :THUNDERPUNCH, :TORMENT, :TOXIC, :VACUUMWAVE, :VENOMDRENCH, :VENOSHOCK, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.3
  s.weight        44.4
  s.color         :Blue
  s.shape         :Bipedal
  s.category      "Toxic Mouth"
  s.pokedex_entry "Its knuckle claws secrete a toxin so vile that even a scratch could prove fatal."
  s.generation    4
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :BLACKSLUDGE
end

GameData::Species.define :TRUBBISH do |s|
  s.name          "Trubbish"
  s.types         :POISON
  s.base_stats    hp: 50, attack: 50, defense: 62, speed: 65, sp_atk: 40, sp_def: 62
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      66
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :STENCH, :STICKYHOLD
  s.hidden_abilities :AFTERMATH
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :POISONGAS
    m.at 3, :RECYCLE
    m.at 6, :ACIDSPRAY
    m.at 9, :AMNESIA
    m.at 12, :CLEARSMOG
    m.at 15, :TOXICSPIKES
    m.at 18, :SLUDGE
    m.at 21, :STOCKPILE
    m.at 21, :SWALLOW
    m.at 24, :TAKEDOWN
    m.at 27, :SLUDGEBOMB
    m.at 30, :TOXIC
    m.at 33, :BELCH
    m.at 37, :PAINSPLIT
    m.at 39, :GUNKSHOT
    m.at 42, :EXPLOSION
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :CAPTIVATE, :CONFIDE, :CORROSIVEGAS, :DARKPULSE, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :EXPLOSION, :FACADE, :FRUSTRATION, :GIGADRAIN, :GUNKSHOT, :HIDDENPOWER, :INFESTATION, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PROTECT, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROCKBLAST, :ROUND, :SECRETPOWER, :SEEDBOMB, :SELFDESTRUCT, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SPIKES, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THIEF, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :TERABLAST
  s.egg_moves     :AUTOTOMIZE, :CURSE, :HAZE, :ROLLOUT, :SANDATTACK
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.6
  s.weight        31.0
  s.color         :Green
  s.shape         :Bipedal
  s.category      "Trash Bag"
  s.pokedex_entry "The combination of garbage bags and industrial waste caused the chemical reaction that crated this Pokémon."
  s.generation    5
  s.evolves_into  :GARBODOR, :Level, 36
  s.wild_item_uncommon :SILKSCARF
end

GameData::Species.define :GARBODOR do |s|
  s.name          "Garbodor"
  s.types         :POISON
  s.base_stats    hp: 80, attack: 95, defense: 82, speed: 75, sp_atk: 60, sp_def: 82
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      166
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :STENCH, :WEAKARMOR
  s.hidden_abilities :AFTERMATH
  s.moves do |m|
    m.at 1, :TAKEDOWN
    m.at 1, :METALCLAW
    m.at 1, :POUND
    m.at 1, :POISONGAS
    m.at 1, :RECYCLE
    m.at 1, :ACIDSPRAY
    m.at 9, :AMNESIA
    m.at 12, :CLEARSMOG
    m.at 15, :TOXICSPIKES
    m.at 18, :SLUDGE
    m.at 21, :STOCKPILE
    m.at 21, :SWALLOW
    m.at 24, :BODYSLAM
    m.at 27, :SLUDGEBOMB
    m.at 30, :TOXIC
    m.at 33, :BELCH
    m.at 39, :PAINSPLIT
    m.at 43, :GUNKSHOT
    m.at 48, :EXPLOSION
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BODYPRESS, :BODYSLAM, :CAPTIVATE, :CONFIDE, :CORROSIVEGAS, :CROSSPOISON, :DARKPULSE, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :EXPLOSION, :FACADE, :FLING, :FOCUSBLAST, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GUNKSHOT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PROTECT, :PSYCHIC, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROUND, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SELFDESTRUCT, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNORE, :SOLARBEAM, :SPIKES, :SPITE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THIEF, :THUNDERBOLT, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.9
  s.weight        107.3
  s.color         :Green
  s.shape         :Bipedal
  s.category      "Trash Heap"
  s.pokedex_entry "They absorb garbage and make it part of their bodies. They shoot a poisonous liquid from their right-hand fingertips."
  s.generation    5
  s.wild_item_common   :SILKSCARF
  s.wild_item_uncommon :BLACKSLUDGE
end

GameData::Species.define :SKRELP do |s|
  s.name          "Skrelp"
  s.types         :POISON, :WATER
  s.base_stats    hp: 50, attack: 60, defense: 60, speed: 30, sp_atk: 60, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      64
  s.catch_rate    225
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :POISONPOINT, :POISONTOUCH
  s.hidden_abilities :ADAPTABILITY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :SMOKESCREEN
    m.at 5, :ACID
    m.at 10, :WATERGUN
    m.at 15, :TAILWHIP
    m.at 20, :DOUBLETEAM
    m.at 25, :POISONTAIL
    m.at 30, :WATERPULSE
    m.at 35, :TOXIC
    m.at 40, :DRAGONPULSE
    m.at 45, :AQUATAIL
    m.at 50, :SLUDGEBOMB
    m.at 55, :HYDROPUMP
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BOUNCE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLETEAM, :DRAGONPULSE, :ENDURE, :FACADE, :FLIPTURN, :FRUSTRATION, :GUNKSHOT, :HAIL, :HIDDENPOWER, :HYDROPUMP, :ICYWIND, :IRONTAIL, :MIMIC, :NATURALGIFT, :OUTRAGE, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCALESHOT, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :THUNDERBOLT, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :WATERFALL, :WATERPULSE, :TERABLAST
  s.egg_moves     :ACIDARMOR, :DRAGONTAIL, :HAZE, :TWISTER
  s.egg_groups    :Water1, :Dragon
  s.hatch_steps   5120
  s.height        0.5
  s.weight        7.3
  s.color         :Brown
  s.shape         :HeadBase
  s.category      "Mock Kelp"
  s.pokedex_entry "Camouflaged as rotten kelp, they spray liquid poison on prey that approaches unawares and then finish it off."
  s.generation    6
  s.evolves_into  :DRAGALGE, :Level, 48
end

GameData::Species.define :DRAGALGE do |s|
  s.name          "Dragalge"
  s.types         :POISON, :DRAGON
  s.base_stats    hp: 65, attack: 75, defense: 90, speed: 44, sp_atk: 97, sp_def: 123
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    55
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :POISONPOINT, :POISONTOUCH
  s.hidden_abilities :ADAPTABILITY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :SMOKESCREEN
    m.at 1, :ACID
    m.at 1, :WATERGUN
    m.at 15, :TAILWHIP
    m.at 20, :DOUBLETEAM
    m.at 25, :POISONTAIL
    m.at 30, :WATERPULSE
    m.at 35, :TOXIC
    m.at 40, :DRAGONPULSE
    m.at 45, :AQUATAIL
    m.at 52, :SLUDGEBOMB
    m.at 59, :HYDROPUMP
    m.at 66, :OUTRAGE
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BOUNCE, :CAPTIVATE, :CONFIDE, :DIVE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONPULSE, :DRAGONTAIL, :ENDURE, :FACADE, :FLIPTURN, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HAIL, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICYWIND, :IRONTAIL, :MIMIC, :NATURALGIFT, :OUTRAGE, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCALESHOT, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SUBSTITUTE, :SURF, :SWAGGER, :THUNDER, :THUNDERBOLT, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :WATERFALL, :WATERPULSE, :TERABLAST
  s.egg_groups    :Water1, :Dragon
  s.hatch_steps   5120
  s.height        1.8
  s.weight        81.5
  s.color         :Brown
  s.shape         :HeadBase
  s.category      "Mock Kelp"
  s.pokedex_entry "Their poison is strong enough to eat through the hull of a tanker, and they spit it indiscriminately at anything that enters their territory."
  s.generation    6
end

GameData::Species.define :MAREANIE do |s|
  s.name          "Mareanie"
  s.types         :POISON, :WATER
  s.base_stats    hp: 50, attack: 53, defense: 62, speed: 45, sp_atk: 43, sp_def: 52
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    190
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :MERCILESS, :LIMBER
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :POISONSTING
    m.at 1, :PECK
    m.at 5, :WIDEGUARD
    m.at 10, :BITE
    m.at 15, :VENOSHOCK
    m.at 20, :RECOVER
    m.at 25, :PINMISSILE
    m.at 30, :TOXICSPIKES
    m.at 35, :LIQUIDATION
    m.at 40, :VENOMDRENCH
    m.at 45, :POISONJAB
    m.at 50, :TOXIC
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BLIZZARD, :BRINE, :CAPTIVATE, :CONFIDE, :COVET, :DOUBLETEAM, :ENDURE, :FACADE, :FROSTBREATH, :FRUSTRATION, :GASTROACID, :GUNKSHOT, :HAIL, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :INFESTATION, :IRONDEFENSE, :KNOCKOFF, :LIQUIDATION, :MAGICCOAT, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :WATERPULSE, :TERABLAST
  s.egg_moves     :HAZE, :INFESTATION, :SPITUP, :STOCKPILE, :SWALLOW
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        0.4
  s.weight        8.0
  s.color         :Blue
  s.shape         :HeadBase
  s.category      "Brutal Star"
  s.pokedex_entry "It plunges the poison spike on its head into its prey. When the prey has weakened, Mareanie deals the finishing blow with its 10 tentacles."
  s.generation    7
  s.evolves_into  :TOXAPEX, :Level, 38
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :TOXAPEX do |s|
  s.name          "Toxapex"
  s.types         :POISON, :WATER
  s.base_stats    hp: 50, attack: 63, defense: 152, speed: 35, sp_atk: 53, sp_def: 142
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    75
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :MERCILESS, :LIMBER
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 0, :BANEFULBUNKER
    m.at 1, :POISONSTING
    m.at 1, :PECK
    m.at 1, :WIDEGUARD
    m.at 1, :BITE
    m.at 15, :VENOSHOCK
    m.at 20, :RECOVER
    m.at 25, :PINMISSILE
    m.at 30, :TOXICSPIKES
    m.at 35, :LIQUIDATION
    m.at 42, :VENOMDRENCH
    m.at 49, :POISONJAB
    m.at 56, :TOXIC
  end
  s.tutor_moves   :AFTERYOU, :ATTRACT, :BLIZZARD, :BLOCK, :BRINE, :CAPTIVATE, :CONFIDE, :COVET, :CROSSPOISON, :DOUBLETEAM, :ENDURE, :FACADE, :FROSTBREATH, :FRUSTRATION, :GASTROACID, :GUNKSHOT, :HAIL, :HEX, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :INFESTATION, :IRONDEFENSE, :KNOCKOFF, :LIGHTSCREEN, :LIQUIDATION, :MAGICCOAT, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SURF, :SWAGGER, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :WATERPULSE, :TERABLAST
  s.egg_groups    :Water1
  s.hatch_steps   5120
  s.height        0.7
  s.weight        14.5
  s.color         :Blue
  s.shape         :Multiped
  s.category      "Brutal Star"
  s.pokedex_entry "Those attacked by Toxapex's poison will suffer intense pain for three days and three nights. Post-recovery, there will be some aftereffects."
  s.generation    7
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :SALANDIT do |s|
  s.name          "Salandit"
  s.types         :POISON, :FIRE
  s.base_stats    hp: 48, attack: 44, defense: 40, speed: 77, sp_atk: 71, sp_def: 40
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Medium
  s.base_exp      64
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :CORROSION
  s.hidden_abilities :OBLIVIOUS
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :POISONGAS
    m.at 5, :SMOG
    m.at 10, :EMBER
    m.at 15, :POISONFANG
    m.at 20, :SWEETSCENT
    m.at 25, :NASTYPLOT
    m.at 30, :INCINERATE
    m.at 35, :VENOSHOCK
    m.at 40, :DRAGONPULSE
    m.at 45, :VENOMDRENCH
    m.at 50, :FLAMETHROWER
    m.at 55, :TOXIC
    m.at 60, :ENDEAVOR
  end
  s.tutor_moves   :ATTRACT, :BEATUP, :CAPTIVATE, :CONFIDE, :COVET, :DOUBLETEAM, :DRAGONCLAW, :DRAGONPULSE, :ENDURE, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FLING, :FOULPLAY, :FRUSTRATION, :GUNKSHOT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :KNOCKOFF, :LEECHLIFE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OVERHEAT, :PAYBACK, :POISONJAB, :PROTECT, :REST, :RETURN, :ROUND, :SCALESHOT, :SECRETPOWER, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THUNDERWAVE, :TORMENT, :TOXIC, :VENOMDRENCH, :VENOSHOCK, :WILLOWISP, :TERABLAST
  s.egg_moves     :BELCH, :FAKEOUT, :MUDSLAP, :SANDATTACK
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   5120
  s.height        0.6
  s.weight        4.8
  s.color         :Black
  s.shape         :Quadruped
  s.category      "Toxic Lizard"
  s.pokedex_entry "It burns its bodily fluids to create a poisonous gas. When its enemies become disoriented from inhaling the gas, it attacks them."
  s.generation    7
  s.evolves_into  :SALAZZLE, :LevelFemale, 33
  s.wild_item_uncommon :SMOKEBALL
end

GameData::Species.define :SALAZZLE do |s|
  s.name          "Salazzle"
  s.types         :POISON, :FIRE
  s.base_stats    hp: 68, attack: 64, defense: 60, speed: 117, sp_atk: 111, sp_def: 60
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      168
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :CORROSION
  s.hidden_abilities :OBLIVIOUS
  s.moves do |m|
    m.at 0, :FIRELASH
    m.at 1, :KNOCKOFF
    m.at 1, :ENCORE
    m.at 1, :TORMENT
    m.at 1, :SWAGGER
    m.at 1, :DISABLE
    m.at 1, :SCRATCH
    m.at 1, :ENDEAVOR
    m.at 1, :POUND
    m.at 1, :POISONGAS
    m.at 1, :SMOG
    m.at 1, :EMBER
    m.at 15, :POISONFANG
    m.at 20, :SWEETSCENT
    m.at 25, :NASTYPLOT
    m.at 30, :INCINERATE
    m.at 37, :VENOSHOCK
    m.at 44, :DRAGONPULSE
    m.at 51, :VENOMDRENCH
    m.at 58, :FLAMETHROWER
    m.at 65, :TOXIC
  end
  s.tutor_moves   :ACROBATICS, :ATTRACT, :BEATUP, :BREAKINGSWIPE, :CAPTIVATE, :CONFIDE, :CORROSIVEGAS, :COVET, :CROSSPOISON, :DOUBLETEAM, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOULPLAY, :FRUSTRATION, :GUNKSHOT, :HEATWAVE, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LEECHLIFE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OVERHEAT, :PAYBACK, :POISONJAB, :PROTECT, :REST, :RETURN, :ROUND, :SCALESHOT, :SECRETPOWER, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THUNDERWAVE, :TORMENT, :TOXIC, :VENOMDRENCH, :VENOSHOCK, :WILLOWISP, :TERABLAST
  s.egg_groups    :Monster, :Dragon
  s.hatch_steps   5120
  s.height        1.2
  s.weight        22.2
  s.color         :Black
  s.shape         :Quadruped
  s.category      "Toxic Lizard"
  s.pokedex_entry "Filled with pheromones, its poisonous gas can be diluted to use in the production of luscious perfumes."
  s.generation    7
  s.wild_item_uncommon :SMOKEBALL
end

GameData::Species.define :POIPOLE do |s|
  s.name          "Poipole"
  s.types         :POISON
  s.base_stats    hp: 67, attack: 73, defense: 67, speed: 73, sp_atk: 73, sp_def: 67
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      210
  s.catch_rate    45
  s.happiness     0
  s.evs           speed: 1
  s.abilities     :BEASTBOOST
  s.moves do |m|
    m.at 1, :DRAGONPULSE
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 1, :HELPINGHAND
    m.at 1, :ACID
    m.at 7, :FURYATTACK
    m.at 14, :FELLSTINGER
    m.at 21, :CHARM
    m.at 28, :VENOSHOCK
    m.at 35, :VENOMDRENCH
    m.at 42, :NASTYPLOT
    m.at 49, :POISONJAB
    m.at 56, :GASTROACID
    m.at 63, :TOXIC
  end
  s.tutor_moves   :CHARM, :CONFIDE, :COVET, :DRAGONPULSE, :ECHOEDVOICE, :ENDURE, :FACADE, :FRUSTRATION, :GASTROACID, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :IRONTAIL, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PINMISSILE, :POISONJAB, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNATCH, :SNORE, :SUBSTITUTE, :TOXIC, :TOXICSPIKES, :UPROAR, :VENOMDRENCH, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.6
  s.weight        1.8
  s.color         :Purple
  s.shape         :BipedalTail
  s.category      "Poison Pin"
  s.pokedex_entry "An Ultra Beast that lives in a different world, it cackles wildly as it sprays its opponents with poison from the needles on its head."
  s.generation    7
  s.evolves_into  :NAGANADEL, :HasMove, DRAGONPULSE
  s.flags         :UltraBeast
end

GameData::Species.define :NAGANADEL do |s|
  s.name          "Naganadel"
  s.types         :POISON, :DRAGON
  s.base_stats    hp: 73, attack: 73, defense: 73, speed: 121, sp_atk: 127, sp_def: 73
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      270
  s.catch_rate    45
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :BEASTBOOST
  s.moves do |m|
    m.at 0, :AIRCUTTER
    m.at 1, :AIRSLASH
    m.at 1, :DRAGONPULSE
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 1, :HELPINGHAND
    m.at 1, :ACID
    m.at 7, :FURYATTACK
    m.at 14, :FELLSTINGER
    m.at 21, :CHARM
    m.at 28, :VENOSHOCK
    m.at 35, :VENOMDRENCH
    m.at 42, :NASTYPLOT
    m.at 49, :POISONJAB
    m.at 56, :GASTROACID
    m.at 63, :TOXIC
    m.at 70, :DRAGONRUSH
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRSLASH, :ALLYSWITCH, :ASSURANCE, :BREAKINGSWIPE, :CHARM, :CONFIDE, :CROSSPOISON, :DARKPULSE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLY, :FRUSTRATION, :GASTROACID, :GIGAIMPACT, :GUNKSHOT, :HEATWAVE, :HELPINGHAND, :HEX, :HIDDENPOWER, :HYPERBEAM, :IRONTAIL, :LASERFOCUS, :LEECHLIFE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :OUTRAGE, :PINMISSILE, :POISONJAB, :PROTECT, :REST, :RETURN, :ROUND, :SCALESHOT, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SIGNALBEAM, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMARTSTRIKE, :SNARL, :SNATCH, :SNORE, :SPIKES, :SUBSTITUTE, :SWIFT, :TAILWIND, :THIEF, :THROATCHOP, :THUNDERBOLT, :TOXIC, :TOXICSPIKES, :UPROAR, :UTURN, :VENOMDRENCH, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        3.6
  s.weight        150.0
  s.color         :Purple
  s.shape         :Winged
  s.category      "Poison Pin"
  s.pokedex_entry "One kind of Ultra Beast, it fires a glowing, venomous liquid from its needles. This liquid is also immensely adhesive."
  s.generation    7
  s.flags         :UltraBeast
end

GameData::Species.define :ETERNATUS do |s|
  s.name          "Eternatus"
  s.types         :POISON, :DRAGON
  s.base_stats    hp: 140, attack: 85, defense: 95, speed: 130, sp_atk: 145, sp_def: 95
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      345
  s.catch_rate    255
  s.happiness     0
  s.evs           hp: 3
  s.abilities     :PRESSURE
  s.moves do |m|
    m.at 1, :POISONTAIL
    m.at 1, :CONFUSERAY
    m.at 1, :DRAGONTAIL
    m.at 1, :AGILITY
    m.at 8, :TOXIC
    m.at 16, :VENOSHOCK
    m.at 24, :DRAGONDANCE
    m.at 32, :CROSSPOISON
    m.at 40, :DRAGONPULSE
    m.at 48, :FLAMETHROWER
    m.at 56, :DYNAMAXCANNON
    m.at 64, :COSMICPOWER
    m.at 72, :RECOVER
    m.at 80, :HYPERBEAM
    m.at 88, :ETERNABEAM
  end
  s.tutor_moves   :AGILITY, :ASSURANCE, :BRUTALSWING, :CONFIDE, :COSMICPOWER, :CROSSPOISON, :DOUBLETEAM, :DRACOMETEOR, :DRAGONDANCE, :DRAGONPULSE, :ENDURE, :FACADE, :FLAMETHROWER, :FLASHCANNON, :FLY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :LIGHTSCREEN, :METEORBEAM, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SWAGGER, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        20.0
  s.weight        950.0
  s.color         :Purple
  s.shape         :Winged
  s.category      "Gigantic"
  s.pokedex_entry "The core on its chest absorbs energy emanating from the lands of the Galar region. This energy is what allows Eternatus to stay active."
  s.generation    8
  s.flags         :Legendary
end

