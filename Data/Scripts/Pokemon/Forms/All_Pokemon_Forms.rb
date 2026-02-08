#===============================================================================
# Shattered Crowns - Pokemon Form Definitions
#===============================================================================
# Auto-generated from PBS/pokemon_forms.txt
# Uses GameData::Species.define_form format
#===============================================================================

GameData::Species.define_form :VENUSAUR, 1 do |f|
  f.form_name     "Mega Venusaur"
  f.base_stats    hp: 80, attack: 100, defense: 123, speed: 80, sp_atk: 122, sp_def: 120
  f.abilities     :THICKFAT
  f.hidden_abilities :THICKFAT
  f.mega_stone    :VENUSAURITE
  f.height        2.4
  f.weight        155.5
  f.pokedex_entry "In order to support its flower, which has grown larger due to Mega Evolution, its back and legs have become stronger."
end

GameData::Species.define_form :CHARIZARD, 1 do |f|
  f.form_name     "Mega Charizard X"
  f.types         :FIRE, :DRAGON
  f.base_stats    hp: 78, attack: 130, defense: 111, speed: 100, sp_atk: 130, sp_def: 85
  f.abilities     :TOUGHCLAWS
  f.hidden_abilities :TOUGHCLAWS
  f.mega_stone    :CHARIZARDITEX
  f.weight        110.5
  f.pokedex_entry "The overwhelming power that fills its entire body causes it to turn black and create intense blue flames."
end

GameData::Species.define_form :CHARIZARD, 2 do |f|
  f.form_name     "Mega Charizard Y"
  f.base_stats    hp: 78, attack: 104, defense: 78, speed: 100, sp_atk: 159, sp_def: 115
  f.abilities     :DROUGHT
  f.hidden_abilities :DROUGHT
  f.mega_stone    :CHARIZARDITEY
  f.weight        100.5
  f.pokedex_entry "Its bond with its Trainer is the source of its power. It boasts speed and maneuverability greater than that of a jet fighter."
end

GameData::Species.define_form :BLASTOISE, 1 do |f|
  f.form_name     "Mega Blastoise"
  f.base_stats    hp: 79, attack: 103, defense: 120, speed: 78, sp_atk: 135, sp_def: 115
  f.abilities     :MEGALAUNCHER
  f.hidden_abilities :MEGALAUNCHER
  f.mega_stone    :BLASTOISINITE
  f.weight        101.1
  f.pokedex_entry "The cannon on its back is as powerful as a tank gun. Its tough legs and back enable it to withstand the recoil from firing the cannon."
end

GameData::Species.define_form :BEEDRILL, 1 do |f|
  f.form_name     "Mega Beedrill"
  f.base_stats    hp: 65, attack: 150, defense: 40, speed: 145, sp_atk: 15, sp_def: 80
  f.abilities     :ADAPTABILITY
  f.hidden_abilities :ADAPTABILITY
  f.mega_stone    :BEEDRILLITE
  f.height        1.4
  f.weight        40.5
  f.pokedex_entry "Its legs have become poison stingers. It stabs its prey repeatedly with the stingers on its limbs, dealing the final blow with the stinger on its rear."
end

GameData::Species.define_form :PIDGEOT, 1 do |f|
  f.form_name     "Mega Pidgeot"
  f.base_stats    hp: 83, attack: 80, defense: 80, speed: 121, sp_atk: 135, sp_def: 80
  f.abilities     :NOGUARD
  f.hidden_abilities :NOGUARD
  f.mega_stone    :PIDGEOTITE
  f.height        2.2
  f.weight        50.5
  f.pokedex_entry "With its muscular strength now greatly increased, it can fly continuously for two weeks without resting."
end

GameData::Species.define_form :RATTATA, 1 do |f|
  f.form_name     "Alolan"
  f.types         :DARK, :NORMAL
  f.abilities     :GLUTTONY, :HUSTLE
  f.hidden_abilities :THICKFAT
  f.weight        3.8
  f.pokedex_entry "With its incisors, it gnaws through doors and infiltrates people's homes. Then, with a twitch of its whiskers, it steals whatever food it finds."
  f.wild_item_uncommon :PECHABERRY
  f.evolves_into  :RATICATE, :LevelNight, 20
  f.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EMBARGO, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLUCK, :PROTECT, :QUASH, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNATCH, :SNORE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :TORMENT, :UPROAR, :UTURN, :ZENHEADBUTT, :TERABLAST
  f.egg_moves     :COUNTER, :FINALGAMBIT, :FURYSWIPES, :MEFIRST, :REVENGE, :REVERSAL, :SNATCH, :STOCKPILE, :SWALLOW, :SWITCHEROO, :UPROAR
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :RATICATE, 1 do |f|
  f.form_name     "Alolan"
  f.types         :DARK, :NORMAL
  f.base_stats    hp: 75, attack: 71, defense: 70, speed: 77, sp_atk: 40, sp_def: 80
  f.abilities     :GLUTTONY, :HUSTLE
  f.hidden_abilities :THICKFAT
  f.weight        25.5
  f.pokedex_entry "It forms a group of Rattata, which it assumes command of. Each group has its own territory, and disputes over food happen often."
  f.wild_item_uncommon :PECHABERRY
  f.tutor_moves   :ATTRACT, :BLIZZARD, :BODYSLAM, :BULKUP, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EMBARGO, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLUCK, :PROTECT, :QUASH, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSMASH, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNARL, :SNATCH, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :UPROAR, :UTURN, :VENOSHOCK, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :RAICHU, 1 do |f|
  f.form_name     "Alolan"
  f.types         :ELECTRIC, :PSYCHIC
  f.base_stats    hp: 60, attack: 85, defense: 50, speed: 110, sp_atk: 95, sp_def: 85
  f.abilities     :SURGESURFER
  f.hidden_abilities :SURGESURFER
  f.height        0.7
  f.weight        21.0
  f.pokedex_entry "It uses psychokinesis to control electricity. It hops aboard its own tail, using psychic power to lift the tail and move about while riding it."
  f.moves do |m|
    m.at 0, :PSYCHIC
    m.at 1, :SPEEDSWAP
    m.at 1, :THUNDERSHOCK
    m.at 1, :TAILWHIP
    m.at 1, :QUICKATTACK
    m.at 1, :THUNDERBOLT
  end
  f.tutor_moves   :AGILITY, :ALLYSWITCH, :ATTRACT, :BODYSLAM, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CHARM, :CHARGEBEAM, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DYNAMICPUNCH, :ECHOEDVOICE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENCORE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYDAY, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :REVERSAL, :RISINGVOLTAGE, :ROCKSMASH, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SPEEDSWAP, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
end

GameData::Species.define_form :SANDSHREW, 1 do |f|
  f.form_name     "Alolan"
  f.types         :ICE, :STEEL
  f.base_stats    hp: 50, attack: 75, defense: 90, speed: 40, sp_atk: 10, sp_def: 35
  f.abilities     :SNOWCLOAK
  f.hidden_abilities :SLUSHRUSH
  f.height        0.7
  f.weight        40.0
  f.pokedex_entry "The skin on its back is as hard as steel. Predators go after its soft belly, so it clings to the ground desperately."
  f.evolves_into  :SANDSLASH, :Item, ICESTONE
  f.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :DEFENSECURL
    m.at 3, :BIDE
    m.at 5, :POWDERSNOW
    m.at 7, :ICEBALL
    m.at 9, :RAPIDSPIN
    m.at 11, :FURYCUTTER
    m.at 14, :METALCLAW
    m.at 17, :SWIFT
    m.at 20, :FURYSWIPES
    m.at 23, :IRONDEFENSE
    m.at 26, :SLASH
    m.at 30, :IRONHEAD
    m.at 34, :GYROBALL
    m.at 38, :SWORDSDANCE
    m.at 42, :HAIL
    m.at 46, :BLIZZARD
  end
  f.tutor_moves   :AERIALACE, :AMNESIA, :AQUATAIL, :ATTRACT, :AURORAVEIL, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FLING, :FOCUSPUNCH, :FROSTBREATH, :FRUSTRATION, :FURYCUTTER, :GYROBALL, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :ICEPUNCH, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LEECHLIFE, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :SWORDSDANCE, :THIEF, :THROATCHOP, :TRIPLEAXEL, :WORKUP, :XSCISSOR, :TERABLAST
  f.egg_moves     :AMNESIA, :CHIPAWAY, :COUNTER, :CRUSHCLAW, :CURSE, :ENDURE, :FLAIL, :HONECLAWS, :ICICLECRASH, :ICICLESPEAR, :METALCLAW, :NIGHTSLASH
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :SANDSLASH, 1 do |f|
  f.form_name     "Alolan"
  f.types         :ICE, :STEEL
  f.base_stats    hp: 75, attack: 100, defense: 120, speed: 65, sp_atk: 25, sp_def: 65
  f.abilities     :SNOWCLOAK
  f.hidden_abilities :SLUSHRUSH
  f.height        1.2
  f.weight        55.0
  f.pokedex_entry "It runs across snow-covered plains at high speeds. It developed thick, sharp claws to plow through the snow."
  f.moves do |m|
    m.at 0, :ICICLESPEAR
    m.at 1, :METALBURST
    m.at 1, :ICICLECRASH
    m.at 1, :SLASH
    m.at 1, :DEFENSECURL
    m.at 1, :ICEBALL
    m.at 1, :METALCLAW
  end
  f.tutor_moves   :AERIALACE, :AGILITY, :AMNESIA, :AQUATAIL, :ATTRACT, :AURORAVEIL, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :DRILLRUN, :EARTHQUAKE, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FROSTBREATH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GYROBALL, :HAIL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEPUNCH, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LEECHLIFE, :MIMIC, :NATURALGIFT, :PINMISSILE, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SPIKES, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :SWORDSDANCE, :THIEF, :THROATCHOP, :TRIPLEAXEL, :WORKUP, :XSCISSOR, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :VULPIX, 1 do |f|
  f.form_name     "Alolan"
  f.types         :ICE
  f.abilities     :SNOWCLOAK
  f.hidden_abilities :SNOWWARNING
  f.pokedex_entry "In hot weather, this Pokémon makes ice shards with its six tails and sprays them around to cool itself off."
  f.wild_item_uncommon :SNOWBALL
  f.evolves_into  :NINETALES, :Item, ICESTONE
  f.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 4, :TAILWHIP
    m.at 7, :ROAR
    m.at 9, :BABYDOLLEYES
    m.at 10, :ICESHARD
    m.at 12, :CONFUSERAY
    m.at 15, :ICYWIND
    m.at 18, :PAYBACK
    m.at 20, :MIST
    m.at 23, :FEINTATTACK
    m.at 26, :HEX
    m.at 28, :AURORABEAM
    m.at 31, :EXTRASENSORY
    m.at 34, :SAFEGUARD
    m.at 36, :ICEBEAM
    m.at 39, :IMPRISON
    m.at 42, :BLIZZARD
    m.at 44, :GRUDGE
    m.at 47, :CAPTIVATE
    m.at 50, :SHEERCOLD
  end
  f.tutor_moves   :AGILITY, :AQUATAIL, :ATTRACT, :AURORAVEIL, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :ENCORE, :ENDURE, :FACADE, :FOULPLAY, :FROSTBREATH, :FRUSTRATION, :HAIL, :HEADBUTT, :HEALBELL, :HEX, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :IMPRISON, :IRONTAIL, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :POWERSWAP, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROAR, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SPITE, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAILSLAP, :WEATHERBALL, :ZENHEADBUTT, :TERABLAST
  f.egg_moves     :AGILITY, :CHARM, :DISABLE, :ENCORE, :EXTRASENSORY, :FLAIL, :FREEZEDRY, :HOWL, :HYPNOSIS, :MOONBLAST, :POWERSWAP, :SECRETPOWER, :SPITE, :TAILSLAP
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :NINETALES, 1 do |f|
  f.form_name     "Alolan"
  f.types         :ICE, :FAIRY
  f.base_stats    hp: 73, attack: 67, defense: 75, speed: 109, sp_atk: 81, sp_def: 100
  f.abilities     :SNOWCLOAK
  f.hidden_abilities :SNOWWARNING
  f.pokedex_entry "It lives on mountains perpetually covered in snow and is revered as a deity incarnate. It appears draped in a blizzard."
  f.wild_item_uncommon :SNOWBALL
  f.moves do |m|
    m.at 0, :DAZZLINGGLEAM
    m.at 1, :IMPRISON
    m.at 1, :NASTYPLOT
    m.at 1, :ICEBEAM
    m.at 1, :ICESHARD
    m.at 1, :CONFUSERAY
    m.at 1, :SAFEGUARD
  end
  f.tutor_moves   :AGILITY, :AQUATAIL, :ATTRACT, :AURORAVEIL, :AVALANCHE, :BLIZZARD, :BODYSLAM, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DARKPULSE, :DAZZLINGGLEAM, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :ENCORE, :ENDURE, :FACADE, :FAKETEARS, :FOULPLAY, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HEADBUTT, :HEALBELL, :HEX, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IMPRISON, :IRONTAIL, :LASERFOCUS, :MIMIC, :MISTYTERRAIN, :NASTYPLOT, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :POWERSWAP, :PROTECT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REST, :RETURN, :ROAR, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAILSLAP, :TRIPLEAXEL, :WEATHERBALL, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :DIGLETT, 1 do |f|
  f.form_name     "Alolan"
  f.types         :GROUND, :STEEL
  f.base_stats    hp: 10, attack: 55, defense: 30, speed: 90, sp_atk: 35, sp_def: 45
  f.abilities     :SANDVEIL, :TANGLINGHAIR
  f.weight        1.0
  f.pokedex_entry "Its head sports an altered form of whiskers made of metal. When in communication with its comrades, its whiskers wobble to and fro."
  f.moves do |m|
    m.at 1, :SANDATTACK
    m.at 1, :METALCLAW
    m.at 4, :GROWL
    m.at 7, :ASTONISH
    m.at 10, :MUDSLAP
    m.at 14, :MAGNITUDE
    m.at 18, :BULLDOZE
    m.at 22, :SUCKERPUNCH
    m.at 25, :MUDBOMB
    m.at 28, :EARTHPOWER
    m.at 31, :DIG
    m.at 35, :IRONHEAD
    m.at 39, :EARTHQUAKE
    m.at 43, :FISSURE
  end
  f.tutor_moves   :AERIALACE, :AGILITY, :ALLYSWITCH, :ASSURANCE, :ATTRACT, :BEATUP, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FLASHCANNON, :FRUSTRATION, :HIDDENPOWER, :HONECLAWS, :IRONDEFENSE, :IRONHEAD, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :REST, :RETURN, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :STEELBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :THIEF, :UPROAR, :WORKUP, :TERABLAST
  f.egg_moves     :ANCIENTPOWER, :BEATUP, :ENDURE, :FEINTATTACK, :FINALGAMBIT, :HEADBUTT, :MEMENTO, :METALSOUND, :PURSUIT, :REVERSAL, :THRASH
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :DUGTRIO, 1 do |f|
  f.form_name     "Alolan"
  f.types         :GROUND, :STEEL
  f.base_stats    hp: 35, attack: 100, defense: 60, speed: 110, sp_atk: 50, sp_def: 70
  f.abilities     :SANDVEIL, :TANGLINGHAIR
  f.weight        66.6
  f.pokedex_entry "Its shining gold hair provides it with protection. It's reputed that keeping any of its fallen hairs will bring bad luck."
  f.moves do |m|
    m.at 0, :SANDTOMB
    m.at 1, :ROTOTILLER
    m.at 1, :NIGHTSLASH
    m.at 1, :TRIATTACK
    m.at 1, :SANDATTACK
    m.at 1, :METALCLAW
    m.at 1, :GROWL
    m.at 4, :GROWL
    m.at 7, :ASTONISH
    m.at 10, :MUDSLAP
    m.at 14, :MAGNITUDE
    m.at 18, :BULLDOZE
    m.at 22, :SUCKERPUNCH
    m.at 25, :MUDBOMB
    m.at 30, :EARTHPOWER
    m.at 35, :DIG
    m.at 41, :IRONHEAD
    m.at 47, :EARTHQUAKE
    m.at 53, :FISSURE
  end
  f.tutor_moves   :AERIALACE, :AGILITY, :ALLYSWITCH, :ASSURANCE, :ATTRACT, :BEATUP, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :REST, :RETURN, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STEELBEAM, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :THIEF, :TRIATTACK, :UPROAR, :WORKUP, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :MEOWTH, 1 do |f|
  f.form_name     "Alolan"
  f.types         :DARK
  f.base_stats    hp: 40, attack: 35, defense: 35, speed: 90, sp_atk: 50, sp_def: 40
  f.hidden_abilities :RATTLED
  f.pokedex_entry "It's impulsive, selfish, and fickle. It's very popular with some Trainers who like giving it the attention it needs."
  f.evolves_into  :PERSIAN, :Happiness
  f.moves do |m|
    m.at 1, :FAKEOUT
    m.at 1, :GROWL
    m.at 4, :FEINT
    m.at 8, :SCRATCH
    m.at 12, :PAYDAY
    m.at 16, :BITE
    m.at 20, :TAUNT
    m.at 24, :ASSURANCE
    m.at 29, :FURYSWIPES
    m.at 32, :SCREECH
    m.at 36, :NIGHTSLASH
    m.at 40, :NASTYPLOT
    m.at 44, :PLAYROUGH
  end
  f.tutor_moves   :AERIALACE, :AMNESIA, :ASSURANCE, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CUT, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :EMBARGO, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERVOICE, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LASHOUT, :LASTRESORT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PAYDAY, :PLAYROUGH, :PROTECT, :PSYCHUP, :QUASH, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :TORMENT, :UPROAR, :UTURN, :WATERPULSE, :WORKUP, :TERABLAST
  f.egg_moves     :AMNESIA, :ASSIST, :CHARM, :COVET, :FLAIL, :FLATTER, :FOULPLAY, :HYPNOSIS, :PARTINGSHOT, :PUNISHMENT, :SNATCH, :SPITE
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :MEOWTH, 2 do |f|
  f.form_name     "Galarian"
  f.types         :STEEL
  f.base_stats    hp: 50, attack: 65, defense: 55, speed: 40, sp_atk: 40, sp_def: 40
  f.abilities     :PICKUP, :TOUGHCLAWS
  f.weight        7.5
  f.pokedex_entry "Living with a savage, seafaring people has toughened this Pokémon's body so much that parts of it have turned to iron."
  f.evolves_into  :PERRSERKER, :Level, 28
  f.moves do |m|
    m.at 1, :FAKEOUT
    m.at 1, :GROWL
    m.at 4, :HONECLAWS
    m.at 8, :SCRATCH
    m.at 12, :PAYDAY
    m.at 16, :METALCLAW
    m.at 20, :TAUNT
    m.at 24, :SWAGGER
    m.at 29, :FURYSWIPES
    m.at 32, :SCREECH
    m.at 36, :SLASH
    m.at 40, :METALSOUND
    m.at 44, :THRASH
  end
  f.tutor_moves   :AERIALACE, :AMNESIA, :ASSURANCE, :ATTRACT, :BODYSLAM, :CAPTIVATE, :CONFIDE, :COVET, :CRUNCH, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :FACADE, :FOULPLAY, :FRUSTRATION, :GUNKSHOT, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERVOICE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LASHOUT, :LASTRESORT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PAYDAY, :PLAYROUGH, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :STEELBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :TORMENT, :UPROAR, :UTURN, :WATERPULSE, :WORKUP, :TERABLAST
  f.egg_moves     :COVET, :CURSE, :DOUBLEEDGE, :FLAIL, :NIGHTSLASH, :SPITE
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :PERSIAN, 1 do |f|
  f.form_name     "Alolan"
  f.types         :DARK
  f.base_stats    hp: 65, attack: 60, defense: 60, speed: 115, sp_atk: 75, sp_def: 65
  f.abilities     :FURCOAT, :TECHNICIAN
  f.hidden_abilities :RATTLED
  f.height        1.1
  f.weight        33.0
  f.pokedex_entry "Its round face is a symbol of wealth. Persian that have bigger, plumper faces are considered more beautiful."
  f.moves do |m|
    m.at 0, :POWERGEM
    m.at 1, :QUASH
    m.at 1, :SWITCHEROO
    m.at 1, :FAKEOUT
    m.at 1, :GROWL
    m.at 1, :FEINT
    m.at 1, :SCRATCH
    m.at 12, :PAYDAY
    m.at 16, :BITE
    m.at 20, :TAUNT
    m.at 24, :ASSURANCE
    m.at 31, :FURYSWIPES
    m.at 36, :SCREECH
    m.at 42, :NIGHTSLASH
    m.at 48, :NASTYPLOT
    m.at 54, :PLAYROUGH
  end
  f.tutor_moves   :AERIALACE, :AMNESIA, :ASSURANCE, :ATTRACT, :BEATUP, :BODYSLAM, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :CUT, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :EMBARGO, :ENDURE, :FACADE, :FAKETEARS, :FLASH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICYWIND, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PAYDAY, :PLAYROUGH, :POWERGEM, :PROTECT, :PSYCHUP, :QUASH, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROUND, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNARL, :SNATCH, :SNORE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :TORMENT, :UPROAR, :UTURN, :WATERPULSE, :WORKUP, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :ALAKAZAM, 1 do |f|
  f.form_name     "Mega Alakazam"
  f.base_stats    hp: 55, attack: 50, defense: 65, speed: 150, sp_atk: 175, sp_def: 105
  f.abilities     :TRACE
  f.hidden_abilities :TRACE
  f.mega_stone    :ALAKAZITE
  f.height        1.2
  f.pokedex_entry "Having traded away its muscles, Alakazam's true power has been unleashed. With its psychic powers, it can foresee all things."
end

GameData::Species.define_form :GEODUDE, 1 do |f|
  f.form_name     "Alolan"
  f.types         :ROCK, :ELECTRIC
  f.abilities     :MAGNETPULL, :STURDY
  f.hidden_abilities :GALVANIZE
  f.weight        20.3
  f.pokedex_entry "Geodude compete against each other with headbutts. The iron sand on their heads will stick to whichever one has stronger magnetism."
  f.wild_item_uncommon :CELLBATTERY
  f.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :DEFENSECURL
    m.at 4, :CHARGE
    m.at 6, :ROCKPOLISH
    m.at 10, :ROLLOUT
    m.at 12, :SPARK
    m.at 16, :ROCKTHROW
    m.at 18, :SMACKDOWN
    m.at 22, :THUNDERPUNCH
    m.at 24, :SELFDESTRUCT
    m.at 28, :STEALTHROCK
    m.at 30, :ROCKBLAST
    m.at 34, :DISCHARGE
    m.at 36, :EXPLOSION
    m.at 40, :DOUBLEEDGE
    m.at 42, :STONEEDGE
  end
  f.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ELECTROWEB, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :INCINERATE, :IRONDEFENSE, :MAGNETRISE, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :VOLTSWITCH, :TERABLAST
  f.egg_moves     :AUTOTOMIZE, :BLOCK, :COUNTER, :CURSE, :ENDURE, :FLAIL, :MAGNETRISE, :ROCKCLIMB, :SCREECH, :WIDEGUARD
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :GRAVELER, 1 do |f|
  f.form_name     "Alolan"
  f.types         :ROCK, :ELECTRIC
  f.abilities     :MAGNETPULL, :STURDY
  f.hidden_abilities :GALVANIZE
  f.weight        110.0
  f.pokedex_entry "They eat rocks and often get into a scrap over them. The shock of Graveler smashing together causes a flash of light and a booming noise."
  f.wild_item_uncommon :CELLBATTERY
  f.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :DEFENSECURL
    m.at 1, :CHARGE
    m.at 1, :ROCKPOLISH
    m.at 4, :CHARGE
    m.at 6, :ROCKPOLISH
    m.at 10, :ROLLOUT
    m.at 12, :SPARK
    m.at 16, :ROCKTHROW
    m.at 18, :SMACKDOWN
    m.at 22, :THUNDERPUNCH
    m.at 24, :SELFDESTRUCT
    m.at 30, :STEALTHROCK
    m.at 34, :ROCKBLAST
    m.at 40, :DISCHARGE
    m.at 44, :EXPLOSION
    m.at 50, :DOUBLEEDGE
    m.at 54, :STONEEDGE
  end
  f.tutor_moves   :ALLYSWITCH, :ANCIENTPOWER, :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ELECTROWEB, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :INCINERATE, :IRONDEFENSE, :MAGNETRISE, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :VOLTSWITCH, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :GOLEM, 1 do |f|
  f.form_name     "Alolan"
  f.types         :ROCK, :ELECTRIC
  f.abilities     :MAGNETPULL, :STURDY
  f.hidden_abilities :GALVANIZE
  f.height        1.7
  f.weight        316.0
  f.pokedex_entry "It fires rocks charged with electricity. Even if the rock isn't fired that accurately, just grazing an opponent will cause numbness and fainting."
  f.wild_item_common   :CELLBATTERY
  f.moves do |m|
    m.at 1, :HEAVYSLAM
    m.at 1, :TACKLE
    m.at 1, :DEFENSECURL
    m.at 1, :CHARGE
    m.at 1, :ROCKPOLISH
    m.at 4, :CHARGE
    m.at 6, :ROCKPOLISH
    m.at 10, :STEAMROLLER
    m.at 12, :SPARK
    m.at 16, :ROCKTHROW
    m.at 18, :SMACKDOWN
    m.at 22, :THUNDERPUNCH
    m.at 24, :SELFDESTRUCT
    m.at 30, :STEALTHROCK
    m.at 34, :ROCKBLAST
    m.at 40, :DISCHARGE
    m.at 44, :EXPLOSION
    m.at 50, :DOUBLEEDGE
    m.at 54, :STONEEDGE
    m.at 60, :HEAVYSLAM
  end
  f.tutor_moves   :ALLYSWITCH, :ANCIENTPOWER, :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ELECTROWEB, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :PONYTA, 1 do |f|
  f.form_name     "Galarian"
  f.types         :PSYCHIC
  f.abilities     :RUNAWAY, :PASTELVEIL
  f.hidden_abilities :ANTICIPATION
  f.height        0.8
  f.weight        24.0
  f.pokedex_entry "Its small horn hides a healing power. With a few rubs from this Pokémon's horn, any slight wound you have will be healed."
  f.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 5, :TAILWHIP
    m.at 10, :CONFUSION
    m.at 15, :FAIRYWIND
    m.at 20, :AGILITY
    m.at 25, :PSYBEAM
    m.at 30, :STOMP
    m.at 35, :HEALPULSE
    m.at 41, :TAKEDOWN
    m.at 45, :DAZZLINGGLEAM
    m.at 50, :PSYCHIC
    m.at 55, :HEALINGWISH
  end
  f.tutor_moves   :AGILITY, :ALLYSWITCH, :ATTRACT, :BODYSLAM, :BOUNCE, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :EXPANDINGFORCE, :FACADE, :FRUSTRATION, :FUTURESIGHT, :HIDDENPOWER, :HIGHHORSEPOWER, :IMPRISON, :IRONTAIL, :LOWKICK, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :WILDCHARGE, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :RAPIDASH, 1 do |f|
  f.form_name     "Galarian"
  f.types         :PSYCHIC, :FAIRY
  f.abilities     :RUNAWAY, :PASTELVEIL
  f.hidden_abilities :ANTICIPATION
  f.weight        80.0
  f.pokedex_entry "Little can stand up to its psycho cut. Unleashed from this Pokémon's horn, the move will punch a hole right through a thick metal sheet."
  f.moves do |m|
    m.at 0, :PSYCHOCUT
    m.at 1, :MEGAHORN
    m.at 1, :TACKLE
    m.at 1, :QUICKATTACK
    m.at 1, :GROWL
    m.at 1, :TAILWHIP
    m.at 1, :CONFUSION
    m.at 15, :FAIRYWIND
    m.at 20, :AGILITY
    m.at 25, :PSYBEAM
    m.at 30, :STOMP
    m.at 35, :HEALPULSE
    m.at 43, :TAKEDOWN
    m.at 49, :DAZZLINGGLEAM
    m.at 56, :PSYCHIC
    m.at 63, :HEALINGWISH
  end
  f.tutor_moves   :AGILITY, :ALLYSWITCH, :ATTRACT, :BATONPASS, :BODYSLAM, :BOUNCE, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :ENDURE, :EXPANDINGFORCE, :FACADE, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :IMPRISON, :IRONTAIL, :LOWKICK, :MAGICROOM, :MEGAHORN, :MIMIC, :MISTYTERRAIN, :MYSTICALFIRE, :NATURALGIFT, :PAYDAY, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHOCUT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :SWORDSDANCE, :THROATCHOP, :TRICKROOM, :WILDCHARGE, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :SLOWPOKE, 1 do |f|
  f.form_name     "Galarian"
  f.types         :PSYCHIC
  f.abilities     :GLUTTONY, :OWNTEMPO
  f.pokedex_entry "Although this Pokémon is normally zoned out, its expression abruptly sharpens on occasion. The cause for this seems to lie in Slowpoke's diet."
  f.evolves_into  :SLOWBRO, :Item, GALARICACUFF
  f.evolves_into  :SLOWKING, :Item, GALARICAWREATH
  f.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :CURSE
    m.at 3, :GROWL
    m.at 6, :ACID
    m.at 9, :YAWN
    m.at 12, :CONFUSION
    m.at 15, :DISABLE
    m.at 18, :WATERPULSE
    m.at 21, :HEADBUTT
    m.at 24, :ZENHEADBUTT
    m.at 27, :AMNESIA
    m.at 30, :SURF
    m.at 33, :SLACKOFF
    m.at 36, :PSYCHIC
    m.at 39, :PSYCHUP
    m.at 42, :RAINDANCE
    m.at 45, :HEALPULSE
  end
  f.tutor_moves   :AMNESIA, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRINE, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GRASSKNOT, :HAIL, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICYWIND, :IMPRISON, :IRONTAIL, :LIGHTSCREEN, :LIQUIDATION, :MIMIC, :MUDSHOT, :NATURALGIFT, :PAYDAY, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYSHOCK, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :WEATHERBALL, :WHIRLPOOL, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :SLOWBRO, 1 do |f|
  f.form_name     "Galarian"
  f.types         :POISON, :PSYCHIC
  f.base_stats    hp: 95, attack: 100, defense: 95, speed: 30, sp_atk: 100, sp_def: 70
  f.abilities     :QUICKDRAW, :OWNTEMPO
  f.weight        70.5
  f.pokedex_entry "If this Pokémon squeezes the tongue of the Shellder biting it, the Shellder will launch a toxic liquid from the tip of its shell."
  f.moves do |m|
    m.at 0, :SHELLSIDEARM
    m.at 1, :WITHDRAW
    m.at 1, :TACKLE
    m.at 1, :CURSE
    m.at 1, :GROWL
    m.at 1, :ACID
    m.at 9, :YAWN
    m.at 12, :CONFUSION
    m.at 15, :DISABLE
    m.at 18, :WATERPULSE
    m.at 21, :HEADBUTT
    m.at 24, :ZENHEADBUTT
    m.at 27, :AMNESIA
    m.at 30, :SURF
    m.at 33, :SLACKOFF
    m.at 36, :PSYCHIC
    m.at 39, :PSYCHUP
    m.at 42, :RAINDANCE
    m.at 45, :HEALPULSE
  end
  f.tutor_moves   :AMNESIA, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRINE, :BRUTALSWING, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :EARTHQUAKE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HAIL, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IMPRISON, :IRONDEFENSE, :IRONTAIL, :LIGHTSCREEN, :LIQUIDATION, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSHOT, :NASTYPLOT, :NATURALGIFT, :PAYDAY, :POISONJAB, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYSHOCK, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :VENOSHOCK, :WEATHERBALL, :WHIRLPOOL, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :SLOWBRO, 2 do |f|
  f.form_name     "Mega Slowbro"
  f.base_stats    hp: 95, attack: 75, defense: 180, speed: 30, sp_atk: 130, sp_def: 80
  f.abilities     :SHELLARMOR
  f.hidden_abilities :SHELLARMOR
  f.mega_stone    :SLOWBRONITE
  f.height        2.0
  f.weight        120.0
  f.pokedex_entry "Having been swallowed whole by Shellder, Slowbro now has an iron defense. It's pretty comfortable in there, too."
end

GameData::Species.define_form :FARFETCHD, 1 do |f|
  f.form_name     "Galarian"
  f.types         :FIGHTING
  f.base_stats    hp: 52, attack: 95, defense: 55, speed: 55, sp_atk: 58, sp_def: 62
  f.abilities     :STEADFAST
  f.hidden_abilities :SCRAPPY
  f.weight        42.0
  f.pokedex_entry "The stalks of leeks are thicker and longer in the Galar region. Farfetch'd that adapted to these stalks took on a unique form."
  f.wild_item_common   :LEEK
  f.evolves_into  :SIRFETCHD, :BattleDealCriticalHit, 3
  f.moves do |m|
    m.at 1, :PECK
    m.at 1, :SANDATTACK
    m.at 5, :LEER
    m.at 10, :FURYCUTTER
    m.at 15, :ROCKSMASH
    m.at 20, :BRUTALSWING
    m.at 25, :DETECT
    m.at 30, :KNOCKOFF
    m.at 35, :DEFOG
    m.at 40, :BRICKBREAK
    m.at 45, :SWORDSDANCE
    m.at 50, :SLAM
    m.at 55, :LEAFBLADE
    m.at 60, :FINALGAMBIT
    m.at 65, :BRAVEBIRD
  end
  f.tutor_moves   :ASSURANCE, :ATTRACT, :BODYSLAM, :BRAVEBIRD, :BRICKBREAK, :BRUTALSWING, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FOCUSENERGY, :FRUSTRATION, :HELPINGHAND, :HIDDENPOWER, :LEAFBLADE, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBLADE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :THROATCHOP, :WORKUP, :TERABLAST
  f.egg_moves     :COUNTER, :COVET, :CURSE, :DOUBLEEDGE, :FEINT, :FLAIL, :NIGHTSLASH, :QUICKATTACK, :QUICKGUARD, :SIMPLEBEAM, :SKYATTACK
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :GRIMER, 1 do |f|
  f.form_name     "Alolan"
  f.types         :POISON, :DARK
  f.abilities     :POISONTOUCH, :GLUTTONY
  f.hidden_abilities :POWEROFALCHEMY
  f.height        0.7
  f.weight        42.0
  f.pokedex_entry "A Grimer, which had been brought in to solve a problem with garbage, developed over time into this form."
  f.moves do |m|
    m.at 1, :POUND
    m.at 1, :POISONGAS
    m.at 4, :HARDEN
    m.at 7, :BITE
    m.at 12, :DISABLE
    m.at 15, :ACIDSPRAY
    m.at 18, :POISONFANG
    m.at 21, :MINIMIZE
    m.at 26, :FLING
    m.at 29, :KNOCKOFF
    m.at 32, :CRUNCH
    m.at 37, :SCREECH
    m.at 40, :GUNKSHOT
    m.at 43, :ACIDARMOR
    m.at 46, :BELCH
    m.at 48, :MEMENTO
  end
  f.tutor_moves   :ATTRACT, :BODYSLAM, :BRUTALSWING, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :DYNAMICPUNCH, :EMBARGO, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GUNKSHOT, :HIDDENPOWER, :ICEPUNCH, :INCINERATE, :INFESTATION, :KNOCKOFF, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :QUASH, :RAINDANCE, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNARL, :SNORE, :SPITE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :THUNDERPUNCH, :TORMENT, :VENOSHOCK, :TERABLAST
  f.egg_moves     :ASSURANCE, :CLEARSMOG, :CURSE, :IMPRISON, :MEANLOOK, :POWERUPPUNCH, :PURSUIT, :SCARYFACE, :SHADOWSNEAK, :SPITE, :SPITUP, :STOCKPILE, :SWALLOW
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :MUK, 1 do |f|
  f.form_name     "Alolan"
  f.types         :POISON, :DARK
  f.abilities     :POISONTOUCH, :GLUTTONY
  f.hidden_abilities :POWEROFALCHEMY
  f.height        1.0
  f.weight        52.0
  f.pokedex_entry "The garbage it eats causes continuous chemical changes in its body, which produce its exceedingly vivid coloration."
  f.moves do |m|
    m.at 0, :VENOMDRENCH
    m.at 1, :POUND
    m.at 1, :POISONGAS
    m.at 1, :HARDEN
    m.at 1, :BITE
    m.at 4, :HARDEN
    m.at 7, :BITE
    m.at 12, :DISABLE
    m.at 15, :ACIDSPRAY
    m.at 18, :POISONFANG
    m.at 21, :MINIMIZE
    m.at 26, :FLING
    m.at 29, :KNOCKOFF
    m.at 32, :CRUNCH
    m.at 37, :SCREECH
    m.at 40, :GUNKSHOT
    m.at 46, :ACIDARMOR
    m.at 52, :BELCH
    m.at 57, :MEMENTO
  end
  f.tutor_moves   :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DIG, :DOUBLETEAM, :DYNAMICPUNCH, :EMBARGO, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GUNKSHOT, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :INCINERATE, :INFESTATION, :KNOCKOFF, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :QUASH, :RAINDANCE, :RECYCLE, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNARL, :SNORE, :SPITE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :THUNDERPUNCH, :TORMENT, :VENOSHOCK, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :GENGAR, 1 do |f|
  f.form_name     "Mega Gengar"
  f.base_stats    hp: 60, attack: 65, defense: 80, speed: 130, sp_atk: 170, sp_def: 95
  f.abilities     :SHADOWTAG
  f.hidden_abilities :SHADOWTAG
  f.mega_stone    :GENGARITE
  f.height        1.4
  f.pokedex_entry "The energy of Mega Evolution awakened it. It sinks into another dimension, where it keeps a patient watch for its chance to attack."
end

GameData::Species.define_form :EXEGGUTOR, 1 do |f|
  f.form_name     "Alolan"
  f.types         :GRASS, :DRAGON
  f.base_stats    hp: 95, attack: 105, defense: 85, speed: 45, sp_atk: 125, sp_def: 75
  f.abilities     :FRISK
  f.height        10.9
  f.weight        415.6
  f.pokedex_entry "As it grew taller and taller, it outgrew its reliance on psychic powers, while within it awakened the power of the sleeping dragon."
  f.moves do |m|
    m.at 0, :DRAGONHAMMER
    m.at 1, :SEEDBOMB
    m.at 1, :BARRAGE
    m.at 1, :HYPNOSIS
    m.at 1, :CONFUSION
    m.at 17, :PSYSHOCK
    m.at 27, :EGGBOMB
    m.at 37, :WOODHAMMER
    m.at 47, :LEAFSTORM
  end
  f.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BLOCK, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONPULSE, :DRAGONTAIL, :DREAMEATER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FLAMETHROWER, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :GRAVITY, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LEAFSTORM, :LIGHTSCREEN, :LOWKICK, :MAGICALLEAF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :OUTRAGE, :POWERSWAP, :POWERWHIP, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROLLOUT, :ROUND, :SECRETPOWER, :SEEDBOMB, :SELFDESTRUCT, :SKILLSWAP, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :TELEKINESIS, :TERRAINPULSE, :THIEF, :TRICKROOM, :TRICKROOM, :UPROAR, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
end

GameData::Species.define_form :CUBONE, 1 do |f|
  f.evolves_into  :MAROWAK, :LevelNight, 28
end

GameData::Species.define_form :MAROWAK, 1 do |f|
  f.form_name     "Alolan"
  f.types         :FIRE, :GHOST
  f.abilities     :CURSEDBODY, :LIGHTNINGROD
  f.hidden_abilities :ROCKHEAD
  f.weight        34.0
  f.pokedex_entry "Its custom is to mourn its lost companions. Mounds of dirt by the side of the road mark the graves of the Marowak."
  f.moves do |m|
    m.at 1, :GROWL
    m.at 1, :TAILWHIP
    m.at 1, :BONECLUB
    m.at 1, :FLAMEWHEEL
    m.at 3, :TAILWHIP
    m.at 7, :BONECLUB
    m.at 11, :FLAMEWHEEL
    m.at 13, :LEER
    m.at 17, :HEX
    m.at 21, :BONEMERANG
    m.at 23, :WILLOWISP
    m.at 27, :SHADOWBONE
    m.at 33, :THRASH
    m.at 37, :FLING
    m.at 43, :STOMPINGTANTRUM
    m.at 49, :ENDEAVOR
    m.at 53, :FLAREBLITZ
    m.at 59, :RETALIATE
    m.at 65, :BONERUSH
  end
  f.tutor_moves   :AERIALACE, :ALLYSWITCH, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :COUNTER, :DARKPULSE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FIREBLAST, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HEATWAVE, :HEX, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IMPRISON, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PAINSPLIT, :POLTERGEIST, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SLEEPTALK, :SMACKDOWN, :SNORE, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :UPROAR, :WILLOWISP, :TERABLAST
end

GameData::Species.define_form :WEEZING, 1 do |f|
  f.form_name     "Galarian"
  f.types         :POISON, :FAIRY
  f.hidden_abilities :MISTYSURGE
  f.height        3.0
  f.weight        16.0
  f.pokedex_entry "This Pokémon consumes particles that contaminate the air. Instead of leaving droppings, it expels clean air."
  f.wild_item_uncommon :MISTYSEED
  f.moves do |m|
    m.at 0, :DOUBLEHIT
    m.at 1, :STRANGESTEAM
    m.at 1, :DEFOG
    m.at 1, :HEATWAVE
    m.at 1, :SMOG
    m.at 1, :SMOKESCREEN
    m.at 1, :HAZE
    m.at 1, :POISONGAS
    m.at 1, :TACKLE
    m.at 1, :FAIRYWIND
    m.at 1, :AROMATICMIST
    m.at 12, :CLEARSMOG
    m.at 16, :ASSURANCE
    m.at 20, :SLUDGE
    m.at 24, :AROMATHERAPY
    m.at 28, :SELFDESTRUCT
    m.at 32, :SLUDGEBOMB
    m.at 38, :TOXIC
    m.at 44, :BELCH
    m.at 50, :EXPLOSION
    m.at 56, :MEMENTO
    m.at 62, :DESTINYBOND
    m.at 68, :MISTYTERRAIN
  end
  f.tutor_moves   :ASSURANCE, :ATTRACT, :BRUTALSWING, :CAPTIVATE, :CONFIDE, :CORROSIVEGAS, :DARKPULSE, :DAZZLINGGLEAM, :DOUBLETEAM, :ENDURE, :EXPLOSION, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :INCINERATE, :INFESTATION, :MIMIC, :MISTYEXPLOSION, :MISTYTERRAIN, :NATURALGIFT, :OVERHEAT, :PAINSPLIT, :PAYBACK, :PLAYROUGH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROLLOUT, :ROUND, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :TORMENT, :TOXIC, :TOXICSPIKES, :UPROAR, :VENOMDRENCH, :VENOSHOCK, :WILLOWISP, :WONDERROOM, :TERABLAST
end

GameData::Species.define_form :KANGASKHAN, 1 do |f|
  f.form_name     "Mega Kangaskhan"
  f.base_stats    hp: 105, attack: 125, defense: 100, speed: 100, sp_atk: 60, sp_def: 100
  f.abilities     :PARENTALBOND
  f.hidden_abilities :PARENTALBOND
  f.mega_stone    :KANGASKHANITE
  f.weight        100.0
  f.pokedex_entry "The explosive energy the child is bathed in causes temporary growth. The mother is beside herself with worry about it."
end

GameData::Species.define_form :MRMIME, 1 do |f|
  f.form_name     "Galarian"
  f.types         :ICE, :PSYCHIC
  f.base_stats    hp: 50, attack: 65, defense: 65, speed: 100, sp_atk: 90, sp_def: 90
  f.abilities     :VITALSPIRIT, :SCREENCLEANER
  f.hidden_abilities :ICEBODY
  f.height        1.4
  f.weight        56.8
  f.pokedex_entry "Its talent is tap-dancing. It can also manipulate temperatures to create a floor of ice, which this Pokémon can kick up to use as a barrier."
  f.evolves_into  :MRRIME, :Level, 42
  f.moves do |m|
    m.at 1, :COPYCAT
    m.at 1, :ENCORE
    m.at 1, :ROLEPLAY
    m.at 1, :PROTECT
    m.at 1, :RECYCLE
    m.at 1, :MIMIC
    m.at 1, :LIGHTSCREEN
    m.at 1, :REFLECT
    m.at 1, :SAFEGUARD
    m.at 1, :DAZZLINGGLEAM
    m.at 1, :MISTYTERRAIN
    m.at 1, :POUND
    m.at 1, :RAPIDSPIN
    m.at 1, :BATONPASS
    m.at 1, :ICESHARD
    m.at 12, :CONFUSION
    m.at 16, :ALLYSWITCH
    m.at 20, :ICYWIND
    m.at 24, :DOUBLEKICK
    m.at 28, :PSYBEAM
    m.at 32, :HYPNOSIS
    m.at 36, :MIRRORCOAT
    m.at 40, :SUCKERPUNCH
    m.at 44, :FREEZEDRY
    m.at 48, :PSYCHIC
    m.at 52, :TEETERDANCE
  end
  f.tutor_moves   :ALLYSWITCH, :ATTRACT, :AVALANCHE, :BATONPASS, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :CALMMIND, :CAPTIVATE, :CHARGEBEAM, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FUTURESIGHT, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUARDSWAP, :HAIL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICICLESPEAR, :ICYWIND, :INFESTATION, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MISTYTERRAIN, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROLEPLAY, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :TRIPLEAXEL, :UPROAR, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :PINSIR, 1 do |f|
  f.form_name     "Mega Pinsir"
  f.types         :BUG, :FLYING
  f.base_stats    hp: 65, attack: 155, defense: 120, speed: 105, sp_atk: 65, sp_def: 90
  f.abilities     :AERILATE
  f.hidden_abilities :AERILATE
  f.mega_stone    :PINSIRITE
  f.height        1.7
  f.weight        59.0
  f.pokedex_entry "It zips around at blistering speeds, looking for an opening to skewer its opponent on its giant pincers."
end

GameData::Species.define_form :GYARADOS, 1 do |f|
  f.form_name     "Mega Gyarados"
  f.types         :WATER, :DARK
  f.base_stats    hp: 95, attack: 155, defense: 109, speed: 81, sp_atk: 70, sp_def: 130
  f.abilities     :MOLDBREAKER
  f.hidden_abilities :MOLDBREAKER
  f.mega_stone    :GYARADOSITE
  f.weight        305.0
  f.pokedex_entry "It zooms out of the water at Mach speeds. Even large ships caught in its path are split cleanly in two!"
end

GameData::Species.define_form :AERODACTYL, 1 do |f|
  f.form_name     "Mega Aerodactyl"
  f.base_stats    hp: 80, attack: 135, defense: 85, speed: 150, sp_atk: 70, sp_def: 95
  f.abilities     :TOUGHCLAWS
  f.hidden_abilities :TOUGHCLAWS
  f.mega_stone    :AERODACTYLITE
  f.height        2.1
  f.weight        79.0
  f.pokedex_entry "When it Mega Evolves, it becomes more vicious than ever before. Some say that's because its excess of power is causing it pain."
end

GameData::Species.define_form :ARTICUNO, 1 do |f|
  f.form_name     "Galarian"
  f.types         :PSYCHIC, :FLYING
  f.base_stats    hp: 90, attack: 85, defense: 85, speed: 95, sp_atk: 125, sp_def: 100
  f.abilities     :COMPETITIVE
  f.hidden_abilities :COMPETITIVE
  f.weight        50.9
  f.pokedex_entry "Its feather-like blades are composed of psychic energy and can shear through thick iron sheets as if they were paper."
  f.moves do |m|
    m.at 1, :GUST
    m.at 1, :PSYCHOSHIFT
    m.at 5, :CONFUSION
    m.at 10, :REFLECT
    m.at 15, :HYPNOSIS
    m.at 20, :AGILITY
    m.at 25, :ANCIENTPOWER
    m.at 30, :TAILWIND
    m.at 35, :PSYCHOCUT
    m.at 40, :RECOVER
    m.at 45, :FREEZINGGLARE
    m.at 50, :DREAMEATER
    m.at 55, :HURRICANE
    m.at 60, :MINDREADER
    m.at 65, :FUTURESIGHT
    m.at 70, :TRICKROOM
  end
  f.tutor_moves   :AGILITY, :AIRSLASH, :ALLYSWITCH, :BRAVEBIRD, :CALMMIND, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :EXPANDINGFORCE, :FACADE, :FLY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GUARDSWAP, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :HYPERVOICE, :IMPRISON, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SHADOWBALL, :SKILLSWAP, :SNORE, :STEELWING, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :TRICKROOM, :UTURN, :TERABLAST
end

GameData::Species.define_form :ZAPDOS, 1 do |f|
  f.form_name     "Galarian"
  f.types         :FIGHTING, :FLYING
  f.base_stats    hp: 90, attack: 125, defense: 90, speed: 100, sp_atk: 85, sp_def: 90
  f.abilities     :DEFIANT
  f.hidden_abilities :DEFIANT
  f.weight        58.2
  f.pokedex_entry "When its feathers rub together, they produce a crackling sound like the zapping of electricity. That's why this Pokémon is called Zapdos."
  f.moves do |m|
    m.at 1, :PECK
    m.at 1, :FOCUSENERGY
    m.at 5, :ROCKSMASH
    m.at 10, :LIGHTSCREEN
    m.at 15, :PLUCK
    m.at 20, :AGILITY
    m.at 25, :ANCIENTPOWER
    m.at 30, :BRICKBREAK
    m.at 35, :DRILLPECK
    m.at 40, :QUICKGUARD
    m.at 45, :THUNDEROUSKICK
    m.at 50, :BULKUP
    m.at 55, :COUNTER
    m.at 60, :DETECT
    m.at 65, :CLOSECOMBAT
    m.at 70, :REVERSAL
  end
  f.tutor_moves   :ACROBATICS, :AGILITY, :ASSURANCE, :BLAZEKICK, :BOUNCE, :BRAVEBIRD, :BRICKBREAK, :BULKUP, :CLOSECOMBAT, :COACHING, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FLY, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEELWING, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWIFT, :TAUNT, :THROATCHOP, :UTURN, :TERABLAST
end

GameData::Species.define_form :MOLTRES, 1 do |f|
  f.form_name     "Galarian"
  f.types         :DARK, :FLYING
  f.base_stats    hp: 90, attack: 85, defense: 90, speed: 90, sp_atk: 100, sp_def: 125
  f.abilities     :BERSERK
  f.hidden_abilities :BERSERK
  f.weight        66.0
  f.pokedex_entry "This Pokémon's sinister, flame-like aura will consume the spirit of any creature it hits. Victims become burned-out shadows of themselves."
  f.moves do |m|
    m.at 1, :GUST
    m.at 1, :LEER
    m.at 5, :PAYBACK
    m.at 10, :SAFEGUARD
    m.at 15, :WINGATTACK
    m.at 20, :AGILITY
    m.at 25, :ANCIENTPOWER
    m.at 30, :SUCKERPUNCH
    m.at 35, :AIRSLASH
    m.at 40, :AFTERYOU
    m.at 45, :FIERYWRATH
    m.at 50, :NASTYPLOT
    m.at 55, :HURRICANE
    m.at 60, :ENDURE
    m.at 65, :MEMENTO
    m.at 70, :SKYATTACK
  end
  f.tutor_moves   :AGILITY, :AIRSLASH, :ASSURANCE, :BRAVEBIRD, :CONFIDE, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FLY, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HEX, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :HYPERVOICE, :IMPRISON, :LASHOUT, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNARL, :SNORE, :STEELWING, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :UTURN, :TERABLAST
end

GameData::Species.define_form :MEWTWO, 1 do |f|
  f.form_name     "Mega Mewtwo X"
  f.types         :PSYCHIC, :FIGHTING
  f.base_stats    hp: 106, attack: 190, defense: 100, speed: 130, sp_atk: 154, sp_def: 100
  f.abilities     :STEADFAST
  f.hidden_abilities :STEADFAST
  f.mega_stone    :MEWTWONITEX
  f.height        2.3
  f.weight        127.0
  f.pokedex_entry "Psychic power has augmented its muscles. It has a grip strength of one ton and can sprint a hundred meters in two seconds flat!"
end

GameData::Species.define_form :MEWTWO, 2 do |f|
  f.form_name     "Mega Mewtwo Y"
  f.base_stats    hp: 106, attack: 150, defense: 70, speed: 140, sp_atk: 194, sp_def: 120
  f.abilities     :INSOMNIA
  f.hidden_abilities :INSOMNIA
  f.mega_stone    :MEWTWONITEY
  f.height        1.5
  f.weight        33.0
  f.pokedex_entry "Despite its diminished size, its mental power has grown phenomenally. With a mere thought, it can smash a skyscraper to smithereens."
end

GameData::Species.define_form :PICHU, 2 do |f|
  f.form_name     "Spiky-Eared"
  f.evolves_into  :PIKACHU, :None
end

GameData::Species.define_form :AMPHAROS, 1 do |f|
  f.form_name     "Mega Ampharos"
  f.types         :ELECTRIC, :DRAGON
  f.base_stats    hp: 90, attack: 95, defense: 105, speed: 45, sp_atk: 165, sp_def: 110
  f.abilities     :MOLDBREAKER
  f.hidden_abilities :MOLDBREAKER
  f.mega_stone    :AMPHAROSITE
  f.pokedex_entry "Massive amounts of energy intensely stimulated Ampharos's cells, apparently awakening its long-sleeping dragon's blood."
end

GameData::Species.define_form :SLOWKING, 1 do |f|
  f.form_name     "Galarian"
  f.types         :POISON, :PSYCHIC
  f.base_stats    hp: 95, attack: 65, defense: 80, speed: 30, sp_atk: 110, sp_def: 110
  f.abilities     :CURIOUSMEDICINE, :OWNTEMPO
  f.height        1.8
  f.pokedex_entry "While chanting strange spells, this Pokémon combines its internal toxins with what it's eaten, creating strange potions."
  f.moves do |m|
    m.at 0, :EERIESPELL
    m.at 1, :POWERGEM
    m.at 1, :NASTYPLOT
    m.at 1, :SWAGGER
    m.at 1, :TACKLE
    m.at 1, :CURSE
    m.at 1, :GROWL
    m.at 1, :ACID
    m.at 9, :YAWN
    m.at 12, :CONFUSION
    m.at 15, :DISABLE
    m.at 18, :WATERPULSE
    m.at 21, :HEADBUTT
    m.at 24, :ZENHEADBUTT
    m.at 27, :AMNESIA
    m.at 30, :SURF
    m.at 33, :SLACKOFF
    m.at 36, :PSYCHIC
    m.at 39, :PSYCHUP
    m.at 42, :RAINDANCE
    m.at 45, :HEALPULSE
  end
  f.tutor_moves   :AMNESIA, :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRINE, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :EARTHQUAKE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :HAIL, :HEX, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IMPRISON, :IRONDEFENSE, :IRONTAIL, :LIGHTSCREEN, :LIQUIDATION, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSHOT, :NASTYPLOT, :NATURALGIFT, :PAYDAY, :POWERGEM, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYSHOCK, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCALD, :SECRETPOWER, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :VENOMDRENCH, :VENOSHOCK, :WEATHERBALL, :WHIRLPOOL, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :UNOWN, 1 do |f|
  f.form_name     "B"
end

GameData::Species.define_form :UNOWN, 2 do |f|
  f.form_name     "C"
end

GameData::Species.define_form :UNOWN, 3 do |f|
  f.form_name     "D"
end

GameData::Species.define_form :UNOWN, 4 do |f|
  f.form_name     "E"
end

GameData::Species.define_form :UNOWN, 5 do |f|
  f.form_name     "F"
end

GameData::Species.define_form :UNOWN, 6 do |f|
  f.form_name     "G"
end

GameData::Species.define_form :UNOWN, 7 do |f|
  f.form_name     "H"
end

GameData::Species.define_form :UNOWN, 8 do |f|
  f.form_name     "I"
end

GameData::Species.define_form :UNOWN, 9 do |f|
  f.form_name     "J"
end

GameData::Species.define_form :UNOWN, 10 do |f|
  f.form_name     "K"
end

GameData::Species.define_form :UNOWN, 11 do |f|
  f.form_name     "L"
end

GameData::Species.define_form :UNOWN, 12 do |f|
  f.form_name     "M"
end

GameData::Species.define_form :UNOWN, 13 do |f|
  f.form_name     "N"
end

GameData::Species.define_form :UNOWN, 14 do |f|
  f.form_name     "O"
end

GameData::Species.define_form :UNOWN, 15 do |f|
  f.form_name     "P"
end

GameData::Species.define_form :UNOWN, 16 do |f|
  f.form_name     "Q"
end

GameData::Species.define_form :UNOWN, 17 do |f|
  f.form_name     "R"
end

GameData::Species.define_form :UNOWN, 18 do |f|
  f.form_name     "S"
end

GameData::Species.define_form :UNOWN, 19 do |f|
  f.form_name     "T"
end

GameData::Species.define_form :UNOWN, 20 do |f|
  f.form_name     "U"
end

GameData::Species.define_form :UNOWN, 21 do |f|
  f.form_name     "V"
end

GameData::Species.define_form :UNOWN, 22 do |f|
  f.form_name     "W"
end

GameData::Species.define_form :UNOWN, 23 do |f|
  f.form_name     "X"
end

GameData::Species.define_form :UNOWN, 24 do |f|
  f.form_name     "Y"
end

GameData::Species.define_form :UNOWN, 25 do |f|
  f.form_name     "Z"
end

GameData::Species.define_form :UNOWN, 26 do |f|
  f.form_name     "?"
end

GameData::Species.define_form :UNOWN, 27 do |f|
  f.form_name     "!"
end

GameData::Species.define_form :STEELIX, 1 do |f|
  f.form_name     "Mega Steelix"
  f.base_stats    hp: 75, attack: 125, defense: 230, speed: 30, sp_atk: 55, sp_def: 95
  f.abilities     :SANDFORCE
  f.hidden_abilities :SANDFORCE
  f.mega_stone    :STEELIXITE
  f.height        10.5
  f.weight        740.0
end

GameData::Species.define_form :SCIZOR, 1 do |f|
  f.form_name     "Mega Scizor"
  f.base_stats    hp: 70, attack: 150, defense: 140, speed: 65, sp_atk: 100, sp_def: 75
  f.abilities     :TECHNICIAN
  f.hidden_abilities :TECHNICIAN
  f.mega_stone    :SCIZORITE
  f.height        2.0
  f.weight        125.0
  f.pokedex_entry "It's better at beating things than grasping them. When it battles for a long time, the weight of its pincers becomes too much to bear."
end

GameData::Species.define_form :HERACROSS, 1 do |f|
  f.form_name     "Mega Heracross"
  f.base_stats    hp: 80, attack: 185, defense: 115, speed: 75, sp_atk: 40, sp_def: 105
  f.abilities     :SKILLLINK
  f.hidden_abilities :SKILLLINK
  f.mega_stone    :HERACRONITE
  f.height        1.7
  f.weight        62.5
  f.pokedex_entry "A tremendous influx of energy builds it up, but when Mega Evolution ends, Heracross is bothered by terrible soreness in its muscles."
end

GameData::Species.define_form :CORSOLA, 1 do |f|
  f.form_name     "Galarian"
  f.types         :GHOST
  f.base_stats    hp: 60, attack: 55, defense: 100, speed: 30, sp_atk: 65, sp_def: 100
  f.abilities     :WEAKARMOR
  f.hidden_abilities :CURSEDBODY
  f.weight        0.5
  f.pokedex_entry "Sudden climate change wiped out this ancient kind of Corsola. This Pokémon absorbs others' life-force through its branches."
  f.evolves_into  :CURSOLA, :Level, 38
  f.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 5, :ASTONISH
    m.at 10, :DISABLE
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
  f.tutor_moves   :AMNESIA, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRINE, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :GIGADRAIN, :HAIL, :HEX, :HIDDENPOWER, :HYDROPUMP, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :LIGHTSCREEN, :LIQUIDATION, :METEORBEAM, :MIMIC, :NATURALGIFT, :POWERGEM, :PROTECT, :PSYCHIC, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALD, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :THROATCHOP, :WHIRLPOOL, :WILLOWISP, :TERABLAST
  f.egg_moves     :CONFUSERAY, :DESTINYBOND, :HAZE, :HEADSMASH, :NATUREPOWER, :WATERPULSE
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :HOUNDOOM, 1 do |f|
  f.form_name     "Mega Houndoom"
  f.base_stats    hp: 75, attack: 90, defense: 90, speed: 115, sp_atk: 140, sp_def: 90
  f.abilities     :SOLARPOWER
  f.hidden_abilities :SOLARPOWER
  f.mega_stone    :HOUNDOOMINITE
  f.height        1.9
  f.weight        49.5
  f.pokedex_entry "Its red claws and the tips of its tail are melting from high internal temperatures that are painful to Houndoom itself."
end

GameData::Species.define_form :TYRANITAR, 1 do |f|
  f.form_name     "Mega Tyranitar"
  f.base_stats    hp: 100, attack: 164, defense: 150, speed: 71, sp_atk: 95, sp_def: 120
  f.hidden_abilities :SANDSTREAM
  f.mega_stone    :TYRANITARITE
  f.height        2.5
  f.weight        255.0
  f.pokedex_entry "Due to the colossal power poured into it, this Pokémon's back split right open. Its destructive instincts are the only thing keeping it moving."
end

GameData::Species.define_form :SCEPTILE, 1 do |f|
  f.form_name     "Mega Sceptile"
  f.types         :GRASS, :DRAGON
  f.base_stats    hp: 70, attack: 110, defense: 75, speed: 145, sp_atk: 145, sp_def: 85
  f.abilities     :LIGHTNINGROD
  f.hidden_abilities :LIGHTNINGROD
  f.mega_stone    :SCEPTILITE
  f.height        1.9
  f.weight        55.2
end

GameData::Species.define_form :BLAZIKEN, 1 do |f|
  f.form_name     "Mega Blaziken"
  f.base_stats    hp: 80, attack: 160, defense: 80, speed: 100, sp_atk: 130, sp_def: 80
  f.abilities     :SPEEDBOOST
  f.mega_stone    :BLAZIKENITE
end

GameData::Species.define_form :SWAMPERT, 1 do |f|
  f.form_name     "Mega Swampert"
  f.base_stats    hp: 100, attack: 150, defense: 110, speed: 70, sp_atk: 95, sp_def: 110
  f.abilities     :SWIFTSWIM
  f.hidden_abilities :SWIFTSWIM
  f.mega_stone    :SWAMPERTITE
  f.height        1.9
  f.weight        102.0
end

GameData::Species.define_form :ZIGZAGOON, 1 do |f|
  f.form_name     "Galarian"
  f.types         :DARK, :NORMAL
  f.pokedex_entry "Its restlessness has it constantly running around. If it sees another Pokémon, it will purposely run into them in order to start a fight."
  f.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 3, :SANDATTACK
    m.at 6, :LICK
    m.at 9, :SNARL
    m.at 12, :HEADBUTT
    m.at 15, :BABYDOLLEYES
    m.at 18, :PINMISSILE
    m.at 21, :REST
    m.at 24, :TAKEDOWN
    m.at 27, :SCARYFACE
    m.at 30, :COUNTER
    m.at 33, :TAUNT
    m.at 36, :DOUBLEEDGE
  end
  f.tutor_moves   :ASSURANCE, :ATTRACT, :BLIZZARD, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FAKETEARS, :FLING, :FRUSTRATION, :GRASSKNOT, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASHOUT, :MIMIC, :MUDSHOT, :NATURALGIFT, :PAYBACK, :PINMISSILE, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SLEEPTALK, :SNARL, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICK, :WHIRLPOOL, :WORKUP, :TERABLAST
  f.egg_moves     :KNOCKOFF, :PARTINGSHOT, :QUICKGUARD
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :LINOONE, 1 do |f|
  f.form_name     "Galarian"
  f.types         :DARK, :NORMAL
  f.pokedex_entry "It uses its long tongue to taunt opponents. Once the opposition is enraged, this Pokémon hurls itself at the opponent, tackling them forcefully."
  f.evolves_into  :OBSTAGOON, :LevelNight, 35
  f.moves do |m|
    m.at 0, :NIGHTSLASH
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
    m.at 33, :SCARYFACE
    m.at 38, :COUNTER
    m.at 43, :TAUNT
    m.at 48, :DOUBLEEDGE
  end
  f.tutor_moves   :ASSURANCE, :ATTRACT, :BLIZZARD, :BODYPRESS, :BODYSLAM, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FAKETEARS, :FLING, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :ICYWIND, :IRONTAIL, :LASHOUT, :MIMIC, :MUDSHOT, :NATURALGIFT, :PAYBACK, :PINMISSILE, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SNARL, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SURF, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICK, :WHIRLPOOL, :WORKUP, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :GARDEVOIR, 1 do |f|
  f.form_name     "Mega Gardevoir"
  f.base_stats    hp: 68, attack: 85, defense: 65, speed: 100, sp_atk: 165, sp_def: 135
  f.abilities     :PIXILATE
  f.hidden_abilities :PIXILATE
  f.mega_stone    :GARDEVOIRITE
end

GameData::Species.define_form :SABLEYE, 1 do |f|
  f.form_name     "Mega Sableye"
  f.base_stats    hp: 50, attack: 85, defense: 125, speed: 20, sp_atk: 85, sp_def: 115
  f.abilities     :MAGICBOUNCE
  f.hidden_abilities :MAGICBOUNCE
  f.mega_stone    :SABLENITE
  f.weight        161.0
  f.pokedex_entry "Supporting a giant heavy jewel, it can't change direction very nimbly and is vulnerable to attack from behind."
end

GameData::Species.define_form :MAWILE, 1 do |f|
  f.form_name     "Mega Mawile"
  f.base_stats    hp: 50, attack: 105, defense: 125, speed: 50, sp_atk: 55, sp_def: 95
  f.abilities     :HUGEPOWER
  f.hidden_abilities :HUGEPOWER
  f.mega_stone    :MAWILITE
  f.height        1.0
  f.weight        23.5
  f.pokedex_entry "Its two sets of jaws thrash about violently as if they each had a will of their own. One gnash from them can turn a boulder to dust."
end

GameData::Species.define_form :AGGRON, 1 do |f|
  f.form_name     "Mega Aggron"
  f.types         :STEEL
  f.base_stats    hp: 70, attack: 140, defense: 230, speed: 50, sp_atk: 60, sp_def: 80
  f.abilities     :FILTER
  f.hidden_abilities :FILTER
  f.mega_stone    :AGGRONITE
  f.height        2.2
  f.weight        395.0
end

GameData::Species.define_form :MEDICHAM, 1 do |f|
  f.form_name     "Mega Medicham"
  f.base_stats    hp: 60, attack: 100, defense: 85, speed: 100, sp_atk: 80, sp_def: 85
  f.hidden_abilities :PUREPOWER
  f.mega_stone    :MEDICHAMITE
end

GameData::Species.define_form :MANECTRIC, 1 do |f|
  f.form_name     "Mega Manectric"
  f.base_stats    hp: 70, attack: 75, defense: 80, speed: 135, sp_atk: 135, sp_def: 80
  f.abilities     :INTIMIDATE
  f.hidden_abilities :INTIMIDATE
  f.mega_stone    :MANECTITE
  f.height        1.8
  f.weight        44.0
  f.pokedex_entry "Too much electricity has built up in its body, irritating Manectric. Its explosive speed is equal to that of a lightning bolt."
end

GameData::Species.define_form :SHARPEDO, 1 do |f|
  f.form_name     "Mega Sharpedo"
  f.base_stats    hp: 70, attack: 140, defense: 70, speed: 105, sp_atk: 110, sp_def: 65
  f.abilities     :STRONGJAW
  f.hidden_abilities :STRONGJAW
  f.mega_stone    :SHARPEDONITE
  f.height        2.5
  f.weight        130.3
  f.pokedex_entry "The yellow patterns it bears are old scars. The energy from Mega Evolution runs through them, causing it sharp pain and suffering."
end

GameData::Species.define_form :CAMERUPT, 1 do |f|
  f.form_name     "Mega Camerupt"
  f.base_stats    hp: 70, attack: 120, defense: 100, speed: 20, sp_atk: 145, sp_def: 105
  f.abilities     :SHEERFORCE
  f.hidden_abilities :SHEERFORCE
  f.mega_stone    :CAMERUPTITE
  f.height        2.5
  f.weight        320.5
end

GameData::Species.define_form :ALTARIA, 1 do |f|
  f.form_name     "Mega Altaria"
  f.types         :DRAGON, :FAIRY
  f.base_stats    hp: 75, attack: 110, defense: 110, speed: 80, sp_atk: 110, sp_def: 105
  f.abilities     :PIXILATE
  f.hidden_abilities :PIXILATE
  f.mega_stone    :ALTARIANITE
  f.height        1.5
end

GameData::Species.define_form :CASTFORM, 1 do |f|
  f.form_name     "Sunny Form"
  f.types         :FIRE
  f.pokedex_entry "This is the form Castform takes on the brightest of days. Its skin is unexpectedly hot to the touch, so approach with care."
end

GameData::Species.define_form :CASTFORM, 2 do |f|
  f.form_name     "Rainy Form"
  f.types         :WATER
  f.pokedex_entry "This is the form Castform takes when soaked with rain. When its body is compressed, water will seep out as if from a sponge."
end

GameData::Species.define_form :CASTFORM, 3 do |f|
  f.form_name     "Snowy Form"
  f.types         :ICE
  f.pokedex_entry "This is the form Castform takes when covered in snow. Its body becomes an ice-like material, with a temperature near -5 degrees Celsius."
end

GameData::Species.define_form :BANETTE, 1 do |f|
  f.form_name     "Mega Banette"
  f.base_stats    hp: 64, attack: 165, defense: 75, speed: 75, sp_atk: 93, sp_def: 83
  f.abilities     :PRANKSTER
  f.hidden_abilities :PRANKSTER
  f.mega_stone    :BANETTITE
  f.height        1.2
  f.weight        13.0
  f.pokedex_entry "Extraordinary energy amplifies its cursing power to such an extent that it can't help but curse its own Trainer."
end

GameData::Species.define_form :ABSOL, 1 do |f|
  f.form_name     "Mega Absol"
  f.base_stats    hp: 65, attack: 150, defense: 60, speed: 115, sp_atk: 115, sp_def: 60
  f.abilities     :MAGICBOUNCE
  f.hidden_abilities :MAGICBOUNCE
  f.mega_stone    :ABSOLITE
  f.weight        49.0
  f.pokedex_entry "When this Pokémon whips the winglike fur on its back as though beating its wings, it sends an intimidating aura flying at its opponents."
end

GameData::Species.define_form :GLALIE, 1 do |f|
  f.form_name     "Mega Glalie"
  f.base_stats    hp: 80, attack: 120, defense: 80, speed: 100, sp_atk: 120, sp_def: 80
  f.abilities     :REFRIGERATE
  f.hidden_abilities :REFRIGERATE
  f.mega_stone    :GLALITITE
  f.height        2.1
  f.weight        350.2
  f.pokedex_entry "It envelops prey in its mouth, freezing them instantly. But its jaw is dislocated, so it's unable to eat them."
end

GameData::Species.define_form :SALAMENCE, 1 do |f|
  f.form_name     "Mega Salamence"
  f.base_stats    hp: 95, attack: 145, defense: 130, speed: 120, sp_atk: 120, sp_def: 90
  f.abilities     :AERILATE
  f.hidden_abilities :AERILATE
  f.mega_stone    :SALAMENCITE
  f.height        1.8
  f.weight        112.6
  f.pokedex_entry "It puts its forelegs inside its shell to streamline itself for flight. Salamence flies at high speeds over all kinds of topographical features."
end

GameData::Species.define_form :METAGROSS, 1 do |f|
  f.form_name     "Mega Metagross"
  f.base_stats    hp: 95, attack: 145, defense: 130, speed: 120, sp_atk: 120, sp_def: 90
  f.abilities     :TOUGHCLAWS
  f.hidden_abilities :TOUGHCLAWS
  f.mega_stone    :METAGROSSITE
  f.height        2.5
  f.weight        942.9
  f.pokedex_entry "Its intellect surpasses its previous level, resulting in battles so cruel, they'll make you want to cover your eyes."
end

GameData::Species.define_form :LATIAS, 1 do |f|
  f.form_name     "Mega Latias"
  f.base_stats    hp: 80, attack: 100, defense: 120, speed: 110, sp_atk: 140, sp_def: 150
  f.mega_stone    :LATIASITE
  f.height        1.8
  f.weight        52.0
end

GameData::Species.define_form :LATIOS, 1 do |f|
  f.form_name     "Mega Latios"
  f.base_stats    hp: 80, attack: 130, defense: 100, speed: 110, sp_atk: 160, sp_def: 120
  f.mega_stone    :LATIOSITE
  f.height        2.3
  f.weight        70.0
end

GameData::Species.define_form :KYOGRE, 1 do |f|
  f.form_name     "Primal Kyogre"
  f.base_stats    hp: 100, attack: 150, defense: 90, speed: 90, sp_atk: 180, sp_def: 160
  f.abilities     :PRIMORDIALSEA
  f.height        9.8
  f.weight        430.0
  f.flags         :Legendary, :CannotDynamax
end

GameData::Species.define_form :GROUDON, 1 do |f|
  f.form_name     "Primal Groudon"
  f.types         :GROUND, :FIRE
  f.base_stats    hp: 100, attack: 180, defense: 160, speed: 90, sp_atk: 150, sp_def: 90
  f.abilities     :DESOLATELAND
  f.height        5.0
  f.weight        999.7
  f.flags         :Legendary, :CannotDynamax
end

GameData::Species.define_form :RAYQUAZA, 1 do |f|
  f.form_name     "Mega Rayquaza"
  f.base_stats    hp: 105, attack: 180, defense: 100, speed: 115, sp_atk: 180, sp_def: 100
  f.abilities     :DELTASTREAM
  f.hidden_abilities :DELTASTREAM
  f.mega_move     :DRAGONASCENT
  f.height        10.8
  f.weight        392.0
end

GameData::Species.define_form :DEOXYS, 1 do |f|
  f.form_name     "Attack Forme"
  f.base_stats    hp: 50, attack: 180, defense: 20, speed: 150, sp_atk: 180, sp_def: 20
  f.moves do |m|
    m.at 1, :LEER
    m.at 1, :WRAP
    m.at 7, :NIGHTSHADE
    m.at 13, :TELEPORT
    m.at 19, :TAUNT
    m.at 25, :TOXICSPIKES
    m.at 31, :PSYCHIC
    m.at 37, :SUPERPOWER
    m.at 43, :PSYCHOSHIFT
    m.at 49, :ZENHEADBUTT
    m.at 55, :COSMICPOWER
    m.at 61, :ZAPCANNON
    m.at 67, :PSYCHOBOOST
    m.at 73, :HYPERBEAM
  end
  f.tutor_moves   :AERIALACE, :ALLYSWITCH, :AVALANCHE, :BIND, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :LASERFOCUS, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :TELEKINESIS, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :WATERPULSE, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
end

GameData::Species.define_form :DEOXYS, 2 do |f|
  f.form_name     "Defense Forme"
  f.base_stats    hp: 50, attack: 70, defense: 160, speed: 90, sp_atk: 70, sp_def: 160
  f.moves do |m|
    m.at 1, :LEER
    m.at 1, :WRAP
    m.at 7, :NIGHTSHADE
    m.at 13, :TELEPORT
    m.at 19, :KNOCKOFF
    m.at 25, :SPIKES
    m.at 31, :PSYCHIC
    m.at 37, :SWITCHEROO
    m.at 43, :PSYCHOSHIFT
    m.at 49, :ZENHEADBUTT
    m.at 55, :IRONDEFENSE
    m.at 55, :AMNESIA
    m.at 61, :RECOVER
    m.at 67, :PSYCHOBOOST
    m.at 73, :COUNTER
    m.at 73, :MIRRORCOAT
  end
  f.tutor_moves   :AERIALACE, :ALLYSWITCH, :AVALANCHE, :BIND, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :IRONDEFENSE, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SECRETPOWER, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :TELEKINESIS, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :WATERPULSE, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
end

GameData::Species.define_form :DEOXYS, 3 do |f|
  f.form_name     "Speed Forme"
  f.base_stats    hp: 50, attack: 95, defense: 90, speed: 180, sp_atk: 95, sp_def: 90
  f.moves do |m|
    m.at 1, :LEER
    m.at 1, :WRAP
    m.at 7, :NIGHTSHADE
    m.at 13, :DOUBLETEAM
    m.at 19, :KNOCKOFF
    m.at 25, :TOXICSPIKES
    m.at 31, :PSYCHIC
    m.at 37, :SWIFT
    m.at 43, :PSYCHOSHIFT
    m.at 49, :ZENHEADBUTT
    m.at 55, :AGILITY
    m.at 61, :RECOVER
    m.at 67, :PSYCHOBOOST
    m.at 73, :EXTREMESPEED
  end
  f.tutor_moves   :AERIALACE, :ALLYSWITCH, :AVALANCHE, :BIND, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FIREPUNCH, :FLASH, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNATCH, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TELEKINESIS, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TORMENT, :TRICK, :TRICKROOM, :WATERPULSE, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
end

GameData::Species.define_form :BURMY, 1 do |f|
  f.form_name     "Sandy Cloak"
end

GameData::Species.define_form :BURMY, 2 do |f|
  f.form_name     "Trash Cloak"
end

GameData::Species.define_form :WORMADAM, 1 do |f|
  f.form_name     "Sandy Cloak"
  f.types         :BUG, :GROUND
  f.base_stats    hp: 60, attack: 79, defense: 105, speed: 36, sp_atk: 59, sp_def: 85
  f.moves do |m|
    m.at 0, :QUIVERDANCE
    m.at 1, :SUCKERPUNCH
    m.at 1, :TACKLE
    m.at 1, :PROTECT
    m.at 1, :BUGBITE
    m.at 10, :PROTECT
    m.at 15, :BUGBITE
    m.at 20, :STRINGSHOT
    m.at 23, :CONFUSION
    m.at 26, :ROCKBLAST
    m.at 29, :HARDEN
    m.at 32, :PSYBEAM
    m.at 35, :INFESTATION
    m.at 38, :FLAIL
    m.at 41, :ATTRACT
    m.at 44, :PSYCHIC
    m.at 47, :FISSURE
    m.at 50, :BUGBUZZ
  end
  f.tutor_moves   :ALLYSWITCH, :ATTRACT, :BUGBITE, :BUGBUZZ, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :EARTHPOWER, :EARTHQUAKE, :ELECTROWEB, :ENDEAVOR, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEALTHROCK, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THIEF, :UPROAR, :VENOSHOCK, :TERABLAST
end

GameData::Species.define_form :WORMADAM, 2 do |f|
  f.form_name     "Trash Cloak"
  f.types         :BUG, :STEEL
  f.base_stats    hp: 60, attack: 69, defense: 95, speed: 36, sp_atk: 69, sp_def: 95
  f.moves do |m|
    m.at 0, :QUIVERDANCE
    m.at 1, :METALBURST
    m.at 1, :SUCKERPUNCH
    m.at 1, :TACKLE
    m.at 1, :PROTECT
    m.at 1, :BUGBITE
    m.at 10, :PROTECT
    m.at 15, :BUGBITE
    m.at 20, :STRINGSHOT
    m.at 23, :CONFUSION
    m.at 26, :METALBURST
    m.at 29, :METALSOUND
    m.at 32, :PSYBEAM
    m.at 35, :INFESTATION
    m.at 38, :FLAIL
    m.at 41, :ATTRACT
    m.at 44, :PSYCHIC
    m.at 47, :IRONHEAD
    m.at 50, :BUGBUZZ
  end
  f.tutor_moves   :ALLYSWITCH, :ATTRACT, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ELECTROWEB, :ENDEAVOR, :ENDURE, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GUNKSHOT, :GYROBALL, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :IRONDEFENSE, :IRONHEAD, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEALTHROCK, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THIEF, :UPROAR, :VENOSHOCK, :TERABLAST
end

GameData::Species.define_form :CHERRIM, 1 do |f|
  f.form_name     "Sunshine Form"
  f.pokedex_entry "After absorbing plenty of sunlight, Cherrim takes this form. It's full of energy while it's like this, and its liveliness will go on until sundown."
end

GameData::Species.define_form :SHELLOS, 1 do |f|
  f.form_name     "East Sea"
  f.pokedex_entry "Its appearance changes depending on the environment. One theory suggests that living in cold seas causes Shellos to take on this form."
end

GameData::Species.define_form :GASTRODON, 1 do |f|
  f.form_name     "East Sea"
  f.pokedex_entry "Its body is covered in a sticky slime. It's very susceptible to dehydration, so it can't spend too much time on land."
end

GameData::Species.define_form :LOPUNNY, 1 do |f|
  f.form_name     "Mega Lopunny"
  f.types         :NORMAL, :FIGHTING
  f.base_stats    hp: 65, attack: 136, defense: 94, speed: 135, sp_atk: 54, sp_def: 96
  f.abilities     :SCRAPPY
  f.hidden_abilities :SCRAPPY
  f.mega_stone    :LOPUNNITE
  f.height        1.3
  f.weight        28.3
  f.pokedex_entry "It swings its ears like whips and strikes its enemies with them. It has an intensely combative disposition."
end

GameData::Species.define_form :GARCHOMP, 1 do |f|
  f.form_name     "Mega Garchomp"
  f.base_stats    hp: 108, attack: 170, defense: 115, speed: 92, sp_atk: 120, sp_def: 95
  f.abilities     :SANDFORCE
  f.hidden_abilities :SANDFORCE
  f.mega_stone    :GARCHOMPITE
  f.pokedex_entry "Its vaunted wings become scythes, sending it mad with rage. It swings its scythes wildly and slices the ground to pieces."
end

GameData::Species.define_form :LUCARIO, 1 do |f|
  f.form_name     "Mega Lucario"
  f.base_stats    hp: 70, attack: 145, defense: 88, speed: 112, sp_atk: 140, sp_def: 70
  f.abilities     :ADAPTABILITY
  f.hidden_abilities :ADAPTABILITY
  f.mega_stone    :LUCARIONITE
  f.height        1.3
  f.weight        57.5
  f.pokedex_entry "It readies itself to face its enemies by focusing its mental energies. Its fighting style can be summed up in a single word: heartless."
end

GameData::Species.define_form :ABOMASNOW, 1 do |f|
  f.form_name     "Mega Abomasnow"
  f.base_stats    hp: 90, attack: 132, defense: 105, speed: 30, sp_atk: 132, sp_def: 105
  f.hidden_abilities :SNOWWARNING
  f.mega_stone    :ABOMASITE
  f.height        2.7
  f.weight        185.0
end

GameData::Species.define_form :GALLADE, 1 do |f|
  f.form_name     "Mega Gallade"
  f.base_stats    hp: 68, attack: 165, defense: 95, speed: 110, sp_atk: 65, sp_def: 115
  f.abilities     :INNERFOCUS
  f.hidden_abilities :INNERFOCUS
  f.mega_stone    :GALLADITE
  f.weight        56.4
end

GameData::Species.define_form :ROTOM, 1 do |f|
  f.form_name     "Heat Rotom"
  f.types         :ELECTRIC, :FIRE
  f.base_stats    hp: 50, attack: 65, defense: 107, speed: 86, sp_atk: 105, sp_def: 107
  f.pokedex_entry "This Rotom has possessed a convection microwave oven that uses a special motor. It also has a flair for manipulating flames."
end

GameData::Species.define_form :ROTOM, 2 do |f|
  f.form_name     "Wash Rotom"
  f.types         :ELECTRIC, :WATER
  f.base_stats    hp: 50, attack: 65, defense: 107, speed: 86, sp_atk: 105, sp_def: 107
  f.pokedex_entry "This form of Rotom enjoys coming up with water-based pranks. Be careful with it if you don't want your room flooded."
end

GameData::Species.define_form :ROTOM, 3 do |f|
  f.form_name     "Frost Rotom"
  f.types         :ELECTRIC, :ICE
  f.base_stats    hp: 50, attack: 65, defense: 107, speed: 86, sp_atk: 105, sp_def: 107
  f.pokedex_entry "Rotom assumes this form when it takes over a refrigerator powered by a special motor. It battles by spewing cold air."
end

GameData::Species.define_form :ROTOM, 4 do |f|
  f.form_name     "Fan Rotom"
  f.types         :ELECTRIC, :FLYING
  f.base_stats    hp: 50, attack: 65, defense: 107, speed: 86, sp_atk: 105, sp_def: 107
  f.pokedex_entry "In this form, Rotom applies its new power over wind to its love of pranks. It will happily blow away any important documents it can find."
end

GameData::Species.define_form :ROTOM, 5 do |f|
  f.form_name     "Mow Rotom"
  f.types         :ELECTRIC, :GRASS
  f.base_stats    hp: 50, attack: 65, defense: 107, speed: 86, sp_atk: 105, sp_def: 107
  f.pokedex_entry "This is Rotom after it's seized control of a lawn mower that has a special motor. As it mows down grass, it scatters the clippings everywhere."
end

GameData::Species.define_form :GIRATINA, 1 do |f|
  f.form_name     "Origin Forme"
  f.base_stats    hp: 150, attack: 120, defense: 100, speed: 90, sp_atk: 120, sp_def: 100
  f.abilities     :LEVITATE
  f.hidden_abilities :LEVITATE
  f.height        6.9
  f.weight        650.0
  f.tutor_moves   :AERIALACE, :AIRCUTTER, :ANCIENTPOWER, :AQUATAIL, :AURASPHERE, :BODYSLAM, :BREAKINGSWIPE, :BRUTALSWING, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :CUT, :DARKPULSE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :DREAMEATER, :DUALWINGBEAT, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :ENERGYBALL, :FACADE, :FLY, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GRAVITY, :HEADBUTT, :HEX, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICYWIND, :IRONHEAD, :IRONTAIL, :MAGICCOAT, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :OUTRAGE, :PAYBACK, :PHANTOMFORCE, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKSMASH, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SILVERWIND, :SLEEPTALK, :SNORE, :SPITE, :STEELWING, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TWISTER, :WILLOWISP, :TERABLAST
end

GameData::Species.define_form :SHAYMIN, 1 do |f|
  f.form_name     "Sky Forme"
  f.types         :GRASS, :FLYING
  f.base_stats    hp: 100, attack: 103, defense: 75, speed: 127, sp_atk: 120, sp_def: 75
  f.abilities     :SERENEGRACE
  f.height        0.4
  f.weight        5.2
  f.moves do |m|
    m.at 1, :GROWTH
    m.at 10, :MAGICALLEAF
    m.at 19, :LEECHSEED
    m.at 28, :QUICKATTACK
    m.at 37, :SWEETSCENT
    m.at 46, :HEALINGWISH
    m.at 55, :WORRYSEED
    m.at 64, :AIRSLASH
    m.at 73, :ENERGYBALL
    m.at 82, :SWEETKISS
    m.at 91, :LEAFSTORM
    m.at 100, :SEEDFLARE
  end
  f.tutor_moves   :AIRCUTTER, :BULLETSEED, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :LASERFOCUS, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :OMINOUSWIND, :PROTECT, :PSYCHIC, :PSYCHUP, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :SYNTHESIS, :TAILWIND, :WORRYSEED, :ZENHEADBUTT, :TERABLAST
end

GameData::Species.define_form :ARCEUS, 1 do |f|
  f.form_name     "Fighting Type"
  f.types         :FIGHTING
end

GameData::Species.define_form :ARCEUS, 2 do |f|
  f.form_name     "Flying Type"
  f.types         :FLYING
end

GameData::Species.define_form :ARCEUS, 3 do |f|
  f.form_name     "Poison Type"
  f.types         :POISON
end

GameData::Species.define_form :ARCEUS, 4 do |f|
  f.form_name     "Ground Type"
  f.types         :GROUND
end

GameData::Species.define_form :ARCEUS, 5 do |f|
  f.form_name     "Rock Type"
  f.types         :ROCK
end

GameData::Species.define_form :ARCEUS, 6 do |f|
  f.form_name     "Bug Type"
  f.types         :BUG
end

GameData::Species.define_form :ARCEUS, 7 do |f|
  f.form_name     "Ghost Type"
  f.types         :GHOST
end

GameData::Species.define_form :ARCEUS, 8 do |f|
  f.form_name     "Steel Type"
  f.types         :STEEL
end

GameData::Species.define_form :ARCEUS, 9 do |f|
  f.form_name     "Unknown Type"
  f.types         :QMARKS
end

GameData::Species.define_form :ARCEUS, 10 do |f|
  f.form_name     "Fire Type"
  f.types         :FIRE
end

GameData::Species.define_form :ARCEUS, 11 do |f|
  f.form_name     "Water Type"
  f.types         :WATER
end

GameData::Species.define_form :ARCEUS, 12 do |f|
  f.form_name     "Grass Type"
  f.types         :GRASS
end

GameData::Species.define_form :ARCEUS, 13 do |f|
  f.form_name     "Electric Type"
  f.types         :ELECTRIC
end

GameData::Species.define_form :ARCEUS, 14 do |f|
  f.form_name     "Psychic Type"
  f.types         :PSYCHIC
end

GameData::Species.define_form :ARCEUS, 15 do |f|
  f.form_name     "Ice Type"
  f.types         :ICE
end

GameData::Species.define_form :ARCEUS, 16 do |f|
  f.form_name     "Dragon Type"
  f.types         :DRAGON
end

GameData::Species.define_form :ARCEUS, 17 do |f|
  f.form_name     "Dark Type"
  f.types         :DARK
end

GameData::Species.define_form :ARCEUS, 18 do |f|
  f.form_name     "Fairy Type"
  f.types         :FAIRY
end

GameData::Species.define_form :AUDINO, 1 do |f|
  f.form_name     "Mega Audino"
  f.types         :NORMAL, :FAIRY
  f.base_stats    hp: 103, attack: 60, defense: 126, speed: 50, sp_atk: 80, sp_def: 126
  f.abilities     :HEALER
  f.hidden_abilities :HEALER
  f.mega_stone    :AUDINITE
  f.height        1.5
  f.weight        32.0
end

GameData::Species.define_form :BASCULIN, 1 do |f|
  f.form_name     "Blue-Striped"
  f.abilities     :ROCKHEAD, :ADAPTABILITY
  f.pokedex_entry "Even Basculin, which devours everything it can with its huge jaws, is nothing more than food to organisms stronger than itself."
  f.wild_item_uncommon :DEEPSEASCALE
end

GameData::Species.define_form :DARUMAKA, 2 do |f|
  f.form_name     "Galarian"
  f.types         :ICE
  f.height        0.7
  f.weight        40.0
  f.pokedex_entry "The colder they get, the more energetic they are. They freeze their breath to make snowballs, using them as ammo for playful snowball fights."
  f.evolves_into  :DARMANITAN, :Item, ICESTONE
  f.moves do |m|
    m.at 1, :POWDERSNOW
    m.at 1, :TACKLE
    m.at 4, :TAUNT
    m.at 8, :BITE
    m.at 12, :AVALANCHE
    m.at 16, :WORKUP
    m.at 20, :ICEFANG
    m.at 24, :HEADBUTT
    m.at 28, :ICEPUNCH
    m.at 32, :UPROAR
    m.at 36, :BELLYDRUM
    m.at 40, :BLIZZARD
    m.at 44, :THRASH
    m.at 48, :SUPERPOWER
  end
  f.tutor_moves   :ATTRACT, :AVALANCHE, :BLIZZARD, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENCORE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPUNCH, :FIRESPIN, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSENERGY, :FRUSTRATION, :GRASSKNOT, :GYROBALL, :HEATWAVE, :HIDDENPOWER, :ICEBEAM, :ICEFANG, :ICEPUNCH, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OVERHEAT, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :TOXIC, :UPROAR, :UTURN, :WILLOWISP, :WORKUP, :ZENHEADBUTT, :TERABLAST
  f.egg_moves     :FLAMEWHEEL, :FOCUSPUNCH, :FREEZEDRY, :HAMMERARM, :INCINERATE, :POWERUPPUNCH, :TAKEDOWN, :YAWN
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :DARMANITAN, 1 do |f|
  f.form_name     "Zen Mode"
  f.types         :FIRE, :PSYCHIC
  f.base_stats    hp: 105, attack: 30, defense: 105, speed: 55, sp_atk: 140, sp_def: 105
  f.pokedex_entry "When wounded, it stops moving. It goes as still as stone to meditate, sharpening its mind and spirit."
end

GameData::Species.define_form :DARMANITAN, 2 do |f|
  f.form_name     "Galarian Standard Mode"
  f.types         :ICE
  f.abilities     :GORILLATACTICS
  f.height        1.7
  f.weight        120.0
  f.pokedex_entry "On days when blizzards blow through, it comes down to where people live. It stashes food in the snowball on its head, taking it home for later."
  f.moves do |m|
    m.at 0, :ICICLECRASH
    m.at 1, :POWDERSNOW
    m.at 1, :TACKLE
    m.at 1, :TAUNT
    m.at 1, :BITE
    m.at 12, :AVALANCHE
    m.at 16, :WORKUP
    m.at 20, :ICEFANG
    m.at 24, :HEADBUTT
    m.at 28, :ICEPUNCH
    m.at 32, :UPROAR
    m.at 38, :BELLYDRUM
    m.at 44, :BLIZZARD
    m.at 50, :THRASH
    m.at 56, :SUPERPOWER
  end
  f.tutor_moves   :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ENCORE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPUNCH, :FIRESPIN, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GYROBALL, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :LASHOUT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OVERHEAT, :PAYBACK, :PROTECT, :PSYCHIC, :REST, :RETURN, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :TOXIC, :UPROAR, :UTURN, :WILLOWISP, :WORKUP, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :DARMANITAN, 3 do |f|
  f.form_name     "Galarian Zen Mode"
  f.types         :ICE, :FIRE
  f.base_stats    hp: 105, attack: 160, defense: 55, speed: 135, sp_atk: 30, sp_def: 55
  f.abilities     :GORILLATACTICS
  f.height        1.7
  f.weight        120.0
  f.pokedex_entry "Anger has reignited its atrophied flame sac. This Pokémon spews fire everywhere as it rampages indiscriminately."
  f.moves do |m|
    m.at 0, :ICICLECRASH
    m.at 1, :POWDERSNOW
    m.at 1, :TACKLE
    m.at 1, :TAUNT
    m.at 1, :BITE
    m.at 12, :AVALANCHE
    m.at 16, :WORKUP
    m.at 20, :ICEFANG
    m.at 24, :HEADBUTT
    m.at 28, :ICEPUNCH
    m.at 32, :UPROAR
    m.at 38, :BELLYDRUM
    m.at 44, :BLIZZARD
    m.at 50, :THRASH
    m.at 56, :SUPERPOWER
  end
  f.tutor_moves   :ATTRACT, :AVALANCHE, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :BURNINGJEALOUSY, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ENCORE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPUNCH, :FIRESPIN, :FLAMETHROWER, :FLAREBLITZ, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GYROBALL, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :LASHOUT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OVERHEAT, :PAYBACK, :PROTECT, :PSYCHIC, :REST, :RETURN, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :TOXIC, :UPROAR, :UTURN, :WILLOWISP, :WORKUP, :ZENHEADBUTT, :TERABLAST
end

GameData::Species.define_form :YAMASK, 1 do |f|
  f.form_name     "Galarian"
  f.types         :GROUND, :GHOST
  f.base_stats    hp: 38, attack: 55, defense: 85, speed: 30, sp_atk: 30, sp_def: 65
  f.abilities     :WANDERINGSPIRIT
  f.pokedex_entry "A clay slab with cursed engravings took possession of a Yamask. The slab is said to be absorbing the Yamask's dark power."
  f.evolves_into  :RUNERIGUS, :EventAfterDamageTaken, 2
  f.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :PROTECT
    m.at 4, :HAZE
    m.at 8, :NIGHTSHADE
    m.at 12, :DISABLE
    m.at 16, :BRUTALSWING
    m.at 20, :CRAFTYSHIELD
    m.at 24, :HEX
    m.at 28, :MEANLOOK
    m.at 32, :SLAM
    m.at 36, :CURSE
    m.at 40, :SHADOWBALL
    m.at 44, :EARTHQUAKE
    m.at 48, :POWERSPLIT
    m.at 48, :GUARDSPLIT
    m.at 52, :DESTINYBOND
  end
  f.tutor_moves   :ALLYSWITCH, :ATTRACT, :BRUTALSWING, :CALMMIND, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FRUSTRATION, :HEX, :HIDDENPOWER, :IMPRISON, :IRONDEFENSE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POLTERGEIST, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :THIEF, :TOXIC, :TOXICSPIKES, :TRICK, :TRICKROOM, :WILLOWISP, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :DEERLING, 1 do |f|
  f.form_name     "Summer Form"
end

GameData::Species.define_form :DEERLING, 2 do |f|
  f.form_name     "Autumn Form"
end

GameData::Species.define_form :DEERLING, 3 do |f|
  f.form_name     "Winter Form"
end

GameData::Species.define_form :SAWSBUCK, 1 do |f|
  f.form_name     "Summer Form"
end

GameData::Species.define_form :SAWSBUCK, 2 do |f|
  f.form_name     "Autumn Form"
end

GameData::Species.define_form :SAWSBUCK, 3 do |f|
  f.form_name     "Winter Form"
end

GameData::Species.define_form :STUNFISK, 1 do |f|
  f.form_name     "Galarian"
  f.types         :GROUND, :STEEL
  f.base_stats    hp: 109, attack: 81, defense: 99, speed: 32, sp_atk: 66, sp_def: 84
  f.abilities     :MIMICRY
  f.hidden_abilities :MIMICRY
  f.weight        20.5
  f.pokedex_entry "Its conspicuous lips lure prey in as it lies in wait in the mud. When prey gets close, Stunfisk clamps its jagged steel fins down on them."
  f.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 1, :METALCLAW
    m.at 5, :ENDURE
    m.at 10, :MUDSHOT
    m.at 15, :REVENGE
    m.at 20, :METALSOUND
    m.at 25, :SUCKERPUNCH
    m.at 30, :IRONDEFENSE
    m.at 35, :BOUNCE
    m.at 40, :MUDDYWATER
    m.at 45, :SNAPTRAP
    m.at 50, :FLAIL
    m.at 55, :FISSURE
  end
  f.tutor_moves   :ATTRACT, :BOUNCE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FLASHCANNON, :FOULPLAY, :FRUSTRATION, :HIDDENPOWER, :ICEFANG, :IRONDEFENSE, :LASHOUT, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVENGE, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SCALD, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STEALTHROCK, :STEELBEAM, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SURF, :SWAGGER, :TERRAINPULSE, :THUNDERWAVE, :TOXIC, :UPROAR, :TERABLAST
  f.egg_moves     :ASTONISH, :BIND, :COUNTER, :CURSE, :PAINSPLIT, :REFLECTTYPE, :SPITE, :YAWN
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :TORNADUS, 1 do |f|
  f.form_name     "Therian Forme"
  f.base_stats    hp: 79, attack: 100, defense: 80, speed: 121, sp_atk: 110, sp_def: 90
  f.abilities     :REGENERATOR
  f.hidden_abilities :REGENERATOR
  f.height        1.4
end

GameData::Species.define_form :THUNDURUS, 1 do |f|
  f.form_name     "Therian Forme"
  f.base_stats    hp: 79, attack: 105, defense: 70, speed: 101, sp_atk: 145, sp_def: 80
  f.abilities     :VOLTABSORB
  f.hidden_abilities :VOLTABSORB
  f.height        3.0
end

GameData::Species.define_form :LANDORUS, 1 do |f|
  f.form_name     "Therian Forme"
  f.base_stats    hp: 89, attack: 145, defense: 90, speed: 91, sp_atk: 105, sp_def: 80
  f.abilities     :INTIMIDATE
  f.hidden_abilities :INTIMIDATE
  f.height        1.3
end

GameData::Species.define_form :KYUREM, 1 do |f|
  f.form_name     "White Kyurem"
  f.base_stats    hp: 125, attack: 120, defense: 90, speed: 95, sp_atk: 170, sp_def: 100
  f.abilities     :TURBOBLAZE
  f.height        3.6
  f.pokedex_entry "It has foreseen that a world of truth will arrive for people and Pokémon. It strives to protect that future."
  f.moves do |m|
    m.at 1, :ICYWIND
    m.at 1, :DRAGONRAGE
    m.at 8, :IMPRISON
    m.at 15, :ANCIENTPOWER
    m.at 22, :ICEBEAM
    m.at 29, :DRAGONBREATH
    m.at 36, :SLASH
    m.at 43, :FUSIONFLARE
    m.at 50, :ICEBURN
    m.at 57, :DRAGONPULSE
    m.at 64, :NOBLEROAR
    m.at 71, :ENDEAVOR
    m.at 78, :BLIZZARD
    m.at 85, :OUTRAGE
    m.at 92, :HYPERVOICE
  end
end

GameData::Species.define_form :KYUREM, 2 do |f|
  f.form_name     "Black Kyurem"
  f.base_stats    hp: 125, attack: 170, defense: 100, speed: 95, sp_atk: 120, sp_def: 90
  f.abilities     :TERAVOLT
  f.height        3.3
  f.pokedex_entry "It's said that this Pokémon battles in order to protect the ideal world that will exist in the future for people and Pokémon."
  f.moves do |m|
    m.at 1, :ICYWIND
    m.at 1, :DRAGONRAGE
    m.at 8, :IMPRISON
    m.at 15, :ANCIENTPOWER
    m.at 22, :ICEBEAM
    m.at 29, :DRAGONBREATH
    m.at 36, :SLASH
    m.at 43, :FUSIONBOLT
    m.at 50, :FREEZESHOCK
    m.at 57, :DRAGONPULSE
    m.at 64, :NOBLEROAR
    m.at 71, :ENDEAVOR
    m.at 78, :BLIZZARD
    m.at 85, :OUTRAGE
    m.at 92, :HYPERVOICE
  end
end

GameData::Species.define_form :KYUREM, 3 do |f|
  f.base_stats    hp: 125, attack: 120, defense: 90, speed: 95, sp_atk: 170, sp_def: 100
  f.abilities     :TURBOBLAZE
  f.height        3.6
  f.moves do |m|
    m.at 1, :ICYWIND
    m.at 1, :DRAGONRAGE
    m.at 8, :IMPRISON
    m.at 15, :ANCIENTPOWER
    m.at 22, :ICEBEAM
    m.at 29, :DRAGONBREATH
    m.at 36, :SLASH
    m.at 43, :FUSIONFLARE
    m.at 50, :ICEBURN
    m.at 57, :DRAGONPULSE
    m.at 64, :NOBLEROAR
    m.at 71, :ENDEAVOR
    m.at 78, :BLIZZARD
    m.at 85, :OUTRAGE
    m.at 92, :HYPERVOICE
  end
end

GameData::Species.define_form :KYUREM, 4 do |f|
  f.base_stats    hp: 125, attack: 170, defense: 100, speed: 95, sp_atk: 120, sp_def: 90
  f.abilities     :TERAVOLT
  f.height        3.3
  f.moves do |m|
    m.at 1, :ICYWIND
    m.at 1, :DRAGONRAGE
    m.at 8, :IMPRISON
    m.at 15, :ANCIENTPOWER
    m.at 22, :ICEBEAM
    m.at 29, :DRAGONBREATH
    m.at 36, :SLASH
    m.at 43, :FUSIONBOLT
    m.at 50, :FREEZESHOCK
    m.at 57, :DRAGONPULSE
    m.at 64, :NOBLEROAR
    m.at 71, :ENDEAVOR
    m.at 78, :BLIZZARD
    m.at 85, :OUTRAGE
    m.at 92, :HYPERVOICE
  end
end

GameData::Species.define_form :KELDEO, 1 do |f|
  f.form_name     "Resolute Form"
  f.pokedex_entry "The power that lay hidden in its body now covers its horn, turning it into a sword that can slice through anything."
end

GameData::Species.define_form :MELOETTA, 1 do |f|
  f.form_name     "Pirouette Forme"
  f.types         :NORMAL, :FIGHTING
  f.base_stats    hp: 100, attack: 128, defense: 90, speed: 128, sp_atk: 77, sp_def: 77
end

GameData::Species.define_form :GENESECT, 1 do |f|
  f.form_name     "Shock Drive"
end

GameData::Species.define_form :GENESECT, 2 do |f|
  f.form_name     "Burn Drive"
end

GameData::Species.define_form :GENESECT, 3 do |f|
  f.form_name     "Chill Drive"
end

GameData::Species.define_form :GENESECT, 4 do |f|
  f.form_name     "Douse Drive"
end

GameData::Species.define_form :GRENINJA, 1 do |f|
  f.abilities     :BATTLEBOND
  f.hidden_abilities :BATTLEBOND
end

GameData::Species.define_form :GRENINJA, 2 do |f|
  f.form_name     "Ash-Greninja"
  f.base_stats    hp: 72, attack: 145, defense: 67, speed: 132, sp_atk: 153, sp_def: 71
  f.abilities     :BATTLEBOND
  f.hidden_abilities :BATTLEBOND
end

GameData::Species.define_form :VIVILLON, 1 do |f|
  f.form_name     "Continental Pattern"
end

GameData::Species.define_form :VIVILLON, 2 do |f|
  f.form_name     "Elegant Pattern"
end

GameData::Species.define_form :VIVILLON, 3 do |f|
  f.form_name     "Garden Pattern"
end

GameData::Species.define_form :VIVILLON, 4 do |f|
  f.form_name     "High Plains Pattern"
end

GameData::Species.define_form :VIVILLON, 5 do |f|
  f.form_name     "Icy Snow Pattern"
end

GameData::Species.define_form :VIVILLON, 6 do |f|
  f.form_name     "Jungle Pattern"
end

GameData::Species.define_form :VIVILLON, 7 do |f|
  f.form_name     "Marine Pattern"
end

GameData::Species.define_form :VIVILLON, 8 do |f|
  f.form_name     "Meadow Pattern"
end

GameData::Species.define_form :VIVILLON, 9 do |f|
  f.form_name     "Modern Pattern"
end

GameData::Species.define_form :VIVILLON, 10 do |f|
  f.form_name     "Monsoon Pattern"
end

GameData::Species.define_form :VIVILLON, 11 do |f|
  f.form_name     "Ocean Pattern"
end

GameData::Species.define_form :VIVILLON, 12 do |f|
  f.form_name     "Polar Pattern"
end

GameData::Species.define_form :VIVILLON, 13 do |f|
  f.form_name     "River Pattern"
end

GameData::Species.define_form :VIVILLON, 14 do |f|
  f.form_name     "Sandstorm Pattern"
end

GameData::Species.define_form :VIVILLON, 15 do |f|
  f.form_name     "Savanna Pattern"
end

GameData::Species.define_form :VIVILLON, 16 do |f|
  f.form_name     "Sun Pattern"
end

GameData::Species.define_form :VIVILLON, 17 do |f|
  f.form_name     "Tundra Pattern"
end

GameData::Species.define_form :VIVILLON, 18 do |f|
  f.form_name     "Fancy Pattern"
end

GameData::Species.define_form :VIVILLON, 19 do |f|
  f.form_name     "Poké Ball Pattern"
end

GameData::Species.define_form :FLABEBE, 1 do |f|
  f.form_name     "Yellow Flower"
end

GameData::Species.define_form :FLABEBE, 2 do |f|
  f.form_name     "Orange Flower"
end

GameData::Species.define_form :FLABEBE, 3 do |f|
  f.form_name     "Blue Flower"
end

GameData::Species.define_form :FLABEBE, 4 do |f|
  f.form_name     "White Flower"
end

GameData::Species.define_form :FLOETTE, 1 do |f|
  f.form_name     "Yellow Flower"
end

GameData::Species.define_form :FLOETTE, 2 do |f|
  f.form_name     "Orange Flower"
end

GameData::Species.define_form :FLOETTE, 3 do |f|
  f.form_name     "Blue Flower"
end

GameData::Species.define_form :FLOETTE, 4 do |f|
  f.form_name     "White Flower"
end

GameData::Species.define_form :FLOETTE, 5 do |f|
  f.form_name     "Eternal Flower"
  f.base_stats    hp: 74, attack: 65, defense: 67, speed: 92, sp_atk: 125, sp_def: 128
  f.pokedex_entry "The flower it's holding can no longer be found blooming anywhere. It's also thought to contain terrifying power."
  f.evolves_into  :FLORGES, :None
  f.moves do |m|
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
    m.at 50, :LIGHTOFRUIN
    m.at 51, :PETALDANCE
    m.at 58, :SOLARBEAM
  end
end

GameData::Species.define_form :FLORGES, 1 do |f|
  f.form_name     "Yellow Flower"
end

GameData::Species.define_form :FLORGES, 2 do |f|
  f.form_name     "Orange Flower"
end

GameData::Species.define_form :FLORGES, 3 do |f|
  f.form_name     "Blue Flower"
end

GameData::Species.define_form :FLORGES, 4 do |f|
  f.form_name     "White Flower"
end

GameData::Species.define_form :FURFROU, 1 do |f|
  f.form_name     "Heart Trim"
end

GameData::Species.define_form :FURFROU, 2 do |f|
  f.form_name     "Star Trim"
end

GameData::Species.define_form :FURFROU, 3 do |f|
  f.form_name     "Diamond Trim"
end

GameData::Species.define_form :FURFROU, 4 do |f|
  f.form_name     "Debutante Trim"
end

GameData::Species.define_form :FURFROU, 5 do |f|
  f.form_name     "Matron Trim"
end

GameData::Species.define_form :FURFROU, 6 do |f|
  f.form_name     "Dandy Trim"
end

GameData::Species.define_form :FURFROU, 7 do |f|
  f.form_name     "La Reine Trim"
end

GameData::Species.define_form :FURFROU, 8 do |f|
  f.form_name     "Kabuki Trim"
end

GameData::Species.define_form :FURFROU, 9 do |f|
  f.form_name     "Pharaoh Trim"
end

GameData::Species.define_form :MEOWSTIC, 1 do |f|
  f.form_name     "Female"
  f.hidden_abilities :COMPETITIVE
  f.pokedex_entry "Females are a bit more selfish and aggressive than males. If they don't get what they want, they will torment you with their psychic abilities."
  f.moves do |m|
    m.at 1, :STOREDPOWER
    m.at 1, :MEFIRST
    m.at 1, :MAGICALLEAF
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :COVET
    m.at 1, :CONFUSION
    m.at 5, :COVET
    m.at 9, :CONFUSION
    m.at 13, :LIGHTSCREEN
    m.at 17, :PSYBEAM
    m.at 19, :FAKEOUT
    m.at 22, :DISARMINGVOICE
    m.at 25, :PSYSHOCK
    m.at 28, :CHARGEBEAM
    m.at 31, :SHADOWBALL
    m.at 35, :EXTRASENSORY
    m.at 40, :PSYCHIC
    m.at 43, :ROLEPLAY
    m.at 45, :SIGNALBEAM
    m.at 48, :SUCKERPUNCH
    m.at 50, :FUTURESIGHT
    m.at 53, :STOREDPOWER
  end
end

GameData::Species.define_form :AEGISLASH, 1 do |f|
  f.form_name     "Blade Forme"
  f.base_stats    hp: 60, attack: 140, defense: 50, speed: 60, sp_atk: 140, sp_def: 50
  f.pokedex_entry "Once upon a time, a king with an Aegislash reigned over the land. His Pokémon eventually drained him of life, and his kingdom fell with him."
end

GameData::Species.define_form :PUMPKABOO, 1 do |f|
  f.form_name     "Average Size"
  f.base_stats    hp: 49, attack: 66, defense: 70, speed: 51, sp_atk: 44, sp_def: 55
  f.hidden_abilities :INSOMNIA
  f.height        0.4
  f.weight        5.0
  f.pokedex_entry "Spirits that wander this world are placed into Pumpkaboo's body. They're then moved on to the afterlife."
end

GameData::Species.define_form :PUMPKABOO, 2 do |f|
  f.form_name     "Large Size"
  f.base_stats    hp: 54, attack: 66, defense: 70, speed: 46, sp_atk: 44, sp_def: 55
  f.height        0.5
  f.weight        7.5
  f.pokedex_entry "When taking spirits to the afterlife, large Pumpkaboo prefer the spirits of adults to those of children."
end

GameData::Species.define_form :PUMPKABOO, 3 do |f|
  f.form_name     "Super Size"
  f.base_stats    hp: 59, attack: 66, defense: 70, speed: 41, sp_atk: 44, sp_def: 55
  f.hidden_abilities :INSOMNIA
  f.height        0.8
  f.weight        15.0
  f.pokedex_entry "Massive Pumpkaboo are said to be the product of areas where a great number of lost souls lingered."
  f.wild_item_common   :MIRACLESEED
  f.wild_item_uncommon :MIRACLESEED
  f.wild_item_rare     :MIRACLESEED
end

GameData::Species.define_form :GOURGEIST, 1 do |f|
  f.form_name     "Average Size"
  f.base_stats    hp: 65, attack: 90, defense: 122, speed: 84, sp_atk: 58, sp_def: 75
  f.hidden_abilities :INSOMNIA
  f.height        0.9
  f.weight        12.5
  f.pokedex_entry "Eerie cries emanate from its body in the dead of night. The sounds are said to be the wails of spirits who are suffering in the afterlife."
end

GameData::Species.define_form :GOURGEIST, 2 do |f|
  f.form_name     "Large Size"
  f.base_stats    hp: 75, attack: 95, defense: 122, speed: 69, sp_atk: 58, sp_def: 75
  f.height        1.1
  f.weight        14.0
  f.pokedex_entry "Large Gourgeist put on the guise of adults, taking the hands of children to lead them to the afterlife."
end

GameData::Species.define_form :GOURGEIST, 3 do |f|
  f.form_name     "Super Size"
  f.base_stats    hp: 85, attack: 100, defense: 122, speed: 54, sp_atk: 58, sp_def: 75
  f.hidden_abilities :INSOMNIA
  f.height        1.7
  f.weight        39.0
  f.pokedex_entry "Supersized Gourgeist aren't picky. They will forcefully drag anyone off to the afterlife."
  f.wild_item_common   :MIRACLESEED
  f.wild_item_uncommon :MIRACLESEED
  f.wild_item_rare     :MIRACLESEED
end

GameData::Species.define_form :XERNEAS, 1 do |f|
  f.form_name     "Active Mode"
end

GameData::Species.define_form :ZYGARDE, 1 do |f|
  f.form_name     "10% Forme"
  f.base_stats    hp: 54, attack: 100, defense: 71, speed: 115, sp_atk: 61, sp_def: 85
  f.height        1.2
  f.weight        33.5
  f.pokedex_entry "This is Zygarde when about 10% of its pieces have been assembled. It leaps at its opponent's chest and sinks its sharp fangs into them."
end

GameData::Species.define_form :ZYGARDE, 2 do |f|
  f.form_name     "Complete Forme"
  f.base_stats    hp: 216, attack: 100, defense: 121, speed: 85, sp_atk: 91, sp_def: 95
  f.abilities     :POWERCONSTRUCT
  f.hidden_abilities :POWERCONSTRUCT
  f.height        4.5
  f.weight        610.0
  f.pokedex_entry "This is Zygarde's perfected form. From the orifice on its chest, it radiates high-powered energy that eliminates everything."
end

GameData::Species.define_form :ZYGARDE, 3 do |f|
  f.base_stats    hp: 216, attack: 100, defense: 121, speed: 85, sp_atk: 91, sp_def: 95
  f.abilities     :POWERCONSTRUCT
  f.hidden_abilities :POWERCONSTRUCT
  f.height        4.5
  f.weight        610.0
end

GameData::Species.define_form :DIANCIE, 1 do |f|
  f.form_name     "Mega Diancie"
  f.base_stats    hp: 50, attack: 160, defense: 110, speed: 110, sp_atk: 160, sp_def: 110
  f.abilities     :MAGICBOUNCE
  f.hidden_abilities :MAGICBOUNCE
  f.mega_stone    :DIANCITE
  f.height        1.1
  f.weight        27.8
end

GameData::Species.define_form :HOOPA, 1 do |f|
  f.form_name     "Hoopa Unbound"
  f.types         :PSYCHIC, :DARK
  f.base_stats    hp: 80, attack: 160, defense: 60, speed: 80, sp_atk: 170, sp_def: 130
  f.height        6.5
  f.weight        490.0
  f.moves do |m|
    m.at 1, :HYPERSPACEFURY
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
    m.at 46, :KNOCKOFF
    m.at 50, :WONDERROOM
    m.at 50, :TRICKROOM
    m.at 55, :DARKPULSE
    m.at 75, :PSYCHIC
    m.at 85, :HYPERSPACEFURY
  end
end

GameData::Species.define_form :ORICORIO, 1 do |f|
  f.form_name     "Pom-Pom Style"
  f.types         :ELECTRIC, :FLYING
  f.pokedex_entry "It creates an electric charge by rubbing its feathers together. It dances over to its enemies and delivers shocking electrical punches."
end

GameData::Species.define_form :ORICORIO, 2 do |f|
  f.form_name     "Pa'u Style"
  f.types         :PSYCHIC, :FLYING
  f.pokedex_entry "This Oricorio relaxes by swaying gently. This increases its psychic energy, which it then fires at its enemies."
end

GameData::Species.define_form :ORICORIO, 3 do |f|
  f.form_name     "Sensu Style"
  f.types         :GHOST, :FLYING
  f.pokedex_entry "It summons the dead with its dreamy dancing. From their malice, it draws power with which to curse its enemies."
end

GameData::Species.define_form :ROCKRUFF, 2 do |f|
  f.abilities     :OWNTEMPO
  f.hidden_abilities :OWNTEMPO
  f.evolves_into  :LYCANROC, :LevelEvening, 25
  f.flags         :InheritFormFromMother
end

GameData::Species.define_form :LYCANROC, 1 do |f|
  f.form_name     "Midnight Form"
  f.base_stats    hp: 85, attack: 115, defense: 75, speed: 82, sp_atk: 55, sp_def: 75
  f.abilities     :KEENEYE, :VITALSPIRIT
  f.hidden_abilities :NOGUARD
  f.height        1.1
  f.pokedex_entry "It goads its enemies into attacking, withstands the hits, and in return, delivers a headbutt, crushing their bones with its rocky mane."
  f.moves do |m|
    m.at 0, :COUNTER
    m.at 1, :REVERSAL
    m.at 1, :TAUNT
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :SANDATTACK
    m.at 1, :BITE
    m.at 4, :SANDATTACK
    m.at 7, :BITE
    m.at 12, :HOWL
    m.at 15, :ROCKTHROW
    m.at 18, :ODORSLEUTH
    m.at 23, :ROCKTOMB
    m.at 26, :ROAR
    m.at 29, :STEALTHROCK
    m.at 34, :ROCKSLIDE
    m.at 37, :SCARYFACE
    m.at 40, :CRUNCH
    m.at 45, :ROCKCLIMB
    m.at 48, :STONEEDGE
  end
  f.tutor_moves   :ATTRACT, :BRICKBREAK, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :COVET, :CRUNCH, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :EARTHPOWER, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREFANG, :FIREPUNCH, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERVOICE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LASERFOCUS, :LASHOUT, :LASTRESORT, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :REST, :RETURN, :REVENGE, :REVERSAL, :ROAR, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TAUNT, :THROATCHOP, :THUNDERFANG, :THUNDERPUNCH, :TOXIC, :UPROAR, :ZENHEADBUTT, :TERABLAST
end

GameData::Species.define_form :LYCANROC, 2 do |f|
  f.form_name     "Dusk Form"
  f.base_stats    hp: 75, attack: 117, defense: 65, speed: 110, sp_atk: 55, sp_def: 65
  f.abilities     :TOUGHCLAWS
  f.hidden_abilities :TOUGHCLAWS
  f.pokedex_entry "Bathed in the setting sun of evening, Lycanroc has undergone a special kind of evolution. An intense fighting spirit underlies its calmness."
  f.moves do |m|
    m.at 0, :THRASH
    m.at 1, :ACCELEROCK
    m.at 1, :COUNTER
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :SANDATTACK
    m.at 1, :BITE
    m.at 4, :SANDATTACK
    m.at 7, :BITE
    m.at 12, :HOWL
    m.at 15, :ROCKTHROW
    m.at 18, :ODORSLEUTH
    m.at 23, :ROCKTOMB
    m.at 26, :ROAR
    m.at 29, :STEALTHROCK
    m.at 34, :ROCKSLIDE
    m.at 37, :SCARYFACE
    m.at 40, :CRUNCH
    m.at 45, :ROCKCLIMB
    m.at 48, :STONEEDGE
  end
  f.tutor_moves   :ATTRACT, :BRICKBREAK, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :COVET, :CRUNCH, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :EARTHPOWER, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FIREFANG, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERVOICE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LASTRESORT, :MIMIC, :NATURALGIFT, :OUTRAGE, :PLAYROUGH, :PROTECT, :PSYCHICFANGS, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TAILSLAP, :TAUNT, :THUNDERFANG, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormFromMother
end

GameData::Species.define_form :WISHIWASHI, 1 do |f|
  f.form_name     "School Form"
  f.base_stats    hp: 45, attack: 140, defense: 130, speed: 30, sp_atk: 140, sp_def: 135
  f.height        8.2
  f.weight        78.6
  f.pokedex_entry "Weak Wishiwashi school together to concentrate their power. Their united force makes them the demon of the sea, feared near and far."
end

GameData::Species.define_form :SILVALLY, 1 do |f|
  f.form_name     "Type: Fighting"
  f.types         :FIGHTING
end

GameData::Species.define_form :SILVALLY, 2 do |f|
  f.form_name     "Type: Flying"
  f.types         :FLYING
end

GameData::Species.define_form :SILVALLY, 3 do |f|
  f.form_name     "Type: Poison"
  f.types         :POISON
end

GameData::Species.define_form :SILVALLY, 4 do |f|
  f.form_name     "Type: Ground"
  f.types         :GROUND
end

GameData::Species.define_form :SILVALLY, 5 do |f|
  f.form_name     "Type: Rock"
  f.types         :ROCK
end

GameData::Species.define_form :SILVALLY, 6 do |f|
  f.form_name     "Type: Bug"
  f.types         :BUG
end

GameData::Species.define_form :SILVALLY, 7 do |f|
  f.form_name     "Type: Ghost"
  f.types         :GHOST
end

GameData::Species.define_form :SILVALLY, 8 do |f|
  f.form_name     "Type: Steel"
  f.types         :STEEL
end

GameData::Species.define_form :SILVALLY, 9 do |f|
  f.form_name     "Type: Unknown"
  f.types         :QMARKS
end

GameData::Species.define_form :SILVALLY, 10 do |f|
  f.form_name     "Type: Fire"
  f.types         :FIRE
end

GameData::Species.define_form :SILVALLY, 11 do |f|
  f.form_name     "Type: Water"
  f.types         :WATER
end

GameData::Species.define_form :SILVALLY, 12 do |f|
  f.form_name     "Type: Grass"
  f.types         :GRASS
end

GameData::Species.define_form :SILVALLY, 13 do |f|
  f.form_name     "Type: Electric"
  f.types         :ELECTRIC
end

GameData::Species.define_form :SILVALLY, 14 do |f|
  f.form_name     "Type: Psychic"
  f.types         :PSYCHIC
end

GameData::Species.define_form :SILVALLY, 15 do |f|
  f.form_name     "Type: Ice"
  f.types         :ICE
end

GameData::Species.define_form :SILVALLY, 16 do |f|
  f.form_name     "Type: Dragon"
  f.types         :DRAGON
end

GameData::Species.define_form :SILVALLY, 17 do |f|
  f.form_name     "Type: Dark"
  f.types         :DARK
end

GameData::Species.define_form :SILVALLY, 18 do |f|
  f.form_name     "Type: Fairy"
  f.types         :FAIRY
end

GameData::Species.define_form :MINIOR, 7 do |f|
  f.form_name     "Red Core"
  f.base_stats    hp: 60, attack: 100, defense: 60, speed: 120, sp_atk: 100, sp_def: 60
  f.weight        0.3
  f.pokedex_entry "If its core stays exposed, it will soon die off. It's possible that it may survive if it's put into a Poké Ball quickly enough."
  f.flags         :InheritFormFromMother
end

GameData::Species.define_form :MINIOR, 8 do |f|
  f.form_name     "Orange Core"
  f.base_stats    hp: 60, attack: 100, defense: 60, speed: 120, sp_atk: 100, sp_def: 60
  f.weight        0.3
  f.pokedex_entry "If its core stays exposed, it will soon die off. It's possible that it may survive if it's put into a Poké Ball quickly enough."
  f.flags         :InheritFormFromMother
end

GameData::Species.define_form :MINIOR, 9 do |f|
  f.form_name     "Yellow Core"
  f.base_stats    hp: 60, attack: 100, defense: 60, speed: 120, sp_atk: 100, sp_def: 60
  f.weight        0.3
  f.pokedex_entry "If its core stays exposed, it will soon die off. It's possible that it may survive if it's put into a Poké Ball quickly enough."
  f.flags         :InheritFormFromMother
end

GameData::Species.define_form :MINIOR, 10 do |f|
  f.form_name     "Green Core"
  f.base_stats    hp: 60, attack: 100, defense: 60, speed: 120, sp_atk: 100, sp_def: 60
  f.weight        0.3
  f.pokedex_entry "If its core stays exposed, it will soon die off. It's possible that it may survive if it's put into a Poké Ball quickly enough."
  f.flags         :InheritFormFromMother
end

GameData::Species.define_form :MINIOR, 11 do |f|
  f.form_name     "Blue Core"
  f.base_stats    hp: 60, attack: 100, defense: 60, speed: 120, sp_atk: 100, sp_def: 60
  f.weight        0.3
  f.pokedex_entry "If its core stays exposed, it will soon die off. It's possible that it may survive if it's put into a Poké Ball quickly enough."
  f.flags         :InheritFormFromMother
end

GameData::Species.define_form :MINIOR, 12 do |f|
  f.form_name     "Indigo Core"
  f.base_stats    hp: 60, attack: 100, defense: 60, speed: 120, sp_atk: 100, sp_def: 60
  f.weight        0.3
  f.pokedex_entry "If its core stays exposed, it will soon die off. It's possible that it may survive if it's put into a Poké Ball quickly enough."
  f.flags         :InheritFormFromMother
end

GameData::Species.define_form :MINIOR, 13 do |f|
  f.form_name     "Violet Core"
  f.base_stats    hp: 60, attack: 100, defense: 60, speed: 120, sp_atk: 100, sp_def: 60
  f.weight        0.3
  f.pokedex_entry "If its core stays exposed, it will soon die off. It's possible that it may survive if it's put into a Poké Ball quickly enough."
  f.flags         :InheritFormFromMother
end

GameData::Species.define_form :MIMIKYU, 1 do |f|
  f.form_name     "Busted Form"
  f.pokedex_entry "Sad that its true identity may be exposed, Mimikyu will mercilessly seek revenge on any opponent that breaks its neck."
end

GameData::Species.define_form :NECROZMA, 1 do |f|
  f.form_name     "Dusk Mane"
  f.types         :PSYCHIC, :STEEL
  f.base_stats    hp: 97, attack: 157, defense: 127, speed: 77, sp_atk: 113, sp_def: 109
  f.height        3.8
  f.weight        460.0
  f.pokedex_entry "This is Necrozma's form while it's absorbing the power of Solgaleo, making it extremely ferocious and impossible to control."
end

GameData::Species.define_form :NECROZMA, 2 do |f|
  f.form_name     "Dawn Wings"
  f.types         :PSYCHIC, :GHOST
  f.base_stats    hp: 97, attack: 113, defense: 109, speed: 77, sp_atk: 157, sp_def: 127
  f.height        4.2
  f.weight        350.0
  f.pokedex_entry "Lunala no longer has a will of its own. Now under the control of Necrozma, it continuously expels all of its energy."
end

GameData::Species.define_form :NECROZMA, 3 do |f|
  f.form_name     "Ultra Necrozma"
  f.types         :PSYCHIC, :DRAGON
  f.base_stats    hp: 97, attack: 167, defense: 97, speed: 129, sp_atk: 167, sp_def: 97
  f.abilities     :NEUROFORCE
  f.height        7.5
  f.pokedex_entry "The light pouring out from all over its body affects living things and nature, impacting them in various ways."
  f.flags         :Legendary, :CannotDynamax
end

GameData::Species.define_form :NECROZMA, 4 do |f|
  f.types         :PSYCHIC, :DRAGON
  f.base_stats    hp: 97, attack: 167, defense: 97, speed: 129, sp_atk: 167, sp_def: 97
  f.abilities     :NEUROFORCE
  f.height        7.5
  f.flags         :Legendary, :CannotDynamax
end

GameData::Species.define_form :MAGEARNA, 1 do |f|
  f.form_name     "Original Color"
  f.pokedex_entry "This gorgeous Magearna looks as it did at the time of its invention. Its luxurious decoration pleased the king's daughter."
end

GameData::Species.define_form :CRAMORANT, 1 do |f|
  f.form_name     "Gulping Form"
  f.pokedex_entry "Cramorant's gluttony led it to try to swallow an Arrokuda whole, which in turn led to Cramorant getting an Arrokuda stuck in its throat."
end

GameData::Species.define_form :CRAMORANT, 2 do |f|
  f.form_name     "Gorging Form"
  f.pokedex_entry "This Cramorant has accidentally gotten a Pikachu lodged in its gullet. Cramorant is choking a little, but it isn't really bothered."
end

GameData::Species.define_form :TOXTRICITY, 1 do |f|
  f.form_name     "Low Key Form"
  f.abilities     :PUNKROCK, :MINUS
  f.pokedex_entry "Capable of generating 15,000 volts of electricity, this Pokémon looks down on all that would challenge it."
  f.moves do |m|
    m.at 0, :SPARK
    m.at 1, :EERIEIMPULSE
    m.at 1, :BELCH
    m.at 1, :TEARFULLOOK
    m.at 1, :NUZZLE
    m.at 1, :GROWL
    m.at 1, :FLAIL
    m.at 1, :ACID
    m.at 1, :THUNDERSHOCK
    m.at 1, :ACIDSPRAY
    m.at 1, :LEER
    m.at 1, :NOBLEROAR
    m.at 4, :CHARGE
    m.at 8, :SHOCKWAVE
    m.at 12, :SCARYFACE
    m.at 16, :TAUNT
    m.at 20, :VENOMDRENCH
    m.at 24, :SCREECH
    m.at 28, :SWAGGER
    m.at 32, :TOXIC
    m.at 36, :DISCHARGE
    m.at 40, :POISONJAB
    m.at 44, :OVERDRIVE
    m.at 48, :BOOMBURST
    m.at 52, :MAGNETICFLUX
  end
  f.tutor_moves   :ATTRACT, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :EERIEIMPULSE, :ELECTROBALL, :ENCORE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HEX, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNARL, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :UPROAR, :VENOMDRENCH, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
end

GameData::Species.define_form :SINISTEA, 1 do |f|
  f.form_name     "Antique Form"
  f.pokedex_entry "The swirl pattern in this Pokémon's body is its weakness. If it gets stirred, the swirl loses its shape, and Sinistea gets dizzy."
  f.evolves_into  :POLTEAGEIST, :Item, CHIPPEDPOT
end

GameData::Species.define_form :POLTEAGEIST, 1 do |f|
  f.form_name     "Antique Form"
  f.pokedex_entry "Trainers Polteageist trusts will be allowed to experience its distinctive flavor and aroma firsthand by sampling just a tiny bit of its tea."
end

GameData::Species.define_form :ALCREMIE, 7 do |f|
  f.form_name     "Ruby Cream"
  f.pokedex_entry "The cells that compose its cream fluctuated suddenly during evolution, giving the cream a sweet and tart flavor."
end

GameData::Species.define_form :ALCREMIE, 8 do |f|
end

GameData::Species.define_form :ALCREMIE, 9 do |f|
end

GameData::Species.define_form :ALCREMIE, 10 do |f|
end

GameData::Species.define_form :ALCREMIE, 11 do |f|
end

GameData::Species.define_form :ALCREMIE, 12 do |f|
end

GameData::Species.define_form :ALCREMIE, 13 do |f|
end

GameData::Species.define_form :ALCREMIE, 14 do |f|
  f.form_name     "Matcha Cream"
  f.pokedex_entry "The cells that compose its cream fluctuated suddenly during evolution, giving the cream an aromatic flavor."
end

GameData::Species.define_form :ALCREMIE, 15 do |f|
end

GameData::Species.define_form :ALCREMIE, 16 do |f|
end

GameData::Species.define_form :ALCREMIE, 17 do |f|
end

GameData::Species.define_form :ALCREMIE, 18 do |f|
end

GameData::Species.define_form :ALCREMIE, 19 do |f|
end

GameData::Species.define_form :ALCREMIE, 20 do |f|
end

GameData::Species.define_form :ALCREMIE, 21 do |f|
  f.form_name     "Mint Cream"
  f.pokedex_entry "The cells that compose its cream fluctuated suddenly during evolution, giving the cream a refreshing flavor."
end

GameData::Species.define_form :ALCREMIE, 22 do |f|
end

GameData::Species.define_form :ALCREMIE, 23 do |f|
end

GameData::Species.define_form :ALCREMIE, 24 do |f|
end

GameData::Species.define_form :ALCREMIE, 25 do |f|
end

GameData::Species.define_form :ALCREMIE, 26 do |f|
end

GameData::Species.define_form :ALCREMIE, 27 do |f|
end

GameData::Species.define_form :ALCREMIE, 28 do |f|
  f.form_name     "Lemon Cream"
  f.pokedex_entry "The cells that compose its cream fluctuated suddenly during evolution, giving the cream a sour flavor."
end

GameData::Species.define_form :ALCREMIE, 29 do |f|
end

GameData::Species.define_form :ALCREMIE, 30 do |f|
end

GameData::Species.define_form :ALCREMIE, 31 do |f|
end

GameData::Species.define_form :ALCREMIE, 32 do |f|
end

GameData::Species.define_form :ALCREMIE, 33 do |f|
end

GameData::Species.define_form :ALCREMIE, 34 do |f|
end

GameData::Species.define_form :ALCREMIE, 35 do |f|
  f.form_name     "Salted Cream"
  f.pokedex_entry "The cells that compose its cream fluctuated suddenly during evolution, giving the cream a salty flavor."
end

GameData::Species.define_form :ALCREMIE, 36 do |f|
end

GameData::Species.define_form :ALCREMIE, 37 do |f|
end

GameData::Species.define_form :ALCREMIE, 38 do |f|
end

GameData::Species.define_form :ALCREMIE, 39 do |f|
end

GameData::Species.define_form :ALCREMIE, 40 do |f|
end

GameData::Species.define_form :ALCREMIE, 41 do |f|
end

GameData::Species.define_form :ALCREMIE, 42 do |f|
  f.form_name     "Ruby Swirl"
  f.pokedex_entry "The cells that compose its cream fluctuated suddenly during evolution, giving the cream a mixed flavor."
end

GameData::Species.define_form :ALCREMIE, 43 do |f|
end

GameData::Species.define_form :ALCREMIE, 44 do |f|
end

GameData::Species.define_form :ALCREMIE, 45 do |f|
end

GameData::Species.define_form :ALCREMIE, 46 do |f|
end

GameData::Species.define_form :ALCREMIE, 47 do |f|
end

GameData::Species.define_form :ALCREMIE, 48 do |f|
end

GameData::Species.define_form :ALCREMIE, 49 do |f|
  f.form_name     "Caramel Swirl"
  f.pokedex_entry "The cells that compose its cream fluctuated suddenly during evolution, giving the cream a bitter flavor."
end

GameData::Species.define_form :ALCREMIE, 50 do |f|
end

GameData::Species.define_form :ALCREMIE, 51 do |f|
end

GameData::Species.define_form :ALCREMIE, 52 do |f|
end

GameData::Species.define_form :ALCREMIE, 53 do |f|
end

GameData::Species.define_form :ALCREMIE, 54 do |f|
end

GameData::Species.define_form :ALCREMIE, 55 do |f|
end

GameData::Species.define_form :ALCREMIE, 56 do |f|
  f.form_name     "Rainbow Swirl"
  f.pokedex_entry "The cells that compose its cream fluctuated suddenly during evolution, giving the cream a complex flavor."
end

GameData::Species.define_form :ALCREMIE, 57 do |f|
end

GameData::Species.define_form :ALCREMIE, 58 do |f|
end

GameData::Species.define_form :ALCREMIE, 59 do |f|
end

GameData::Species.define_form :ALCREMIE, 60 do |f|
end

GameData::Species.define_form :ALCREMIE, 61 do |f|
end

GameData::Species.define_form :ALCREMIE, 62 do |f|
end

GameData::Species.define_form :EISCUE, 1 do |f|
  f.form_name     "Noice Face"
  f.base_stats    hp: 75, attack: 80, defense: 70, speed: 130, sp_atk: 65, sp_def: 50
  f.pokedex_entry "The ice covering this Pokémon's face has shattered, revealing a slightly worried expression that many people are enamored with."
end

GameData::Species.define_form :INDEEDEE, 1 do |f|
  f.form_name     "Female"
  f.base_stats    hp: 70, attack: 55, defense: 65, speed: 85, sp_atk: 95, sp_def: 105
  f.abilities     :OWNTEMPO, :SYNCHRONIZE
  f.pokedex_entry "They diligently serve people and Pokémon so they can gather feelings of gratitude. The females are particularly good at babysitting."
  f.moves do |m|
    m.at 1, :STOREDPOWER
    m.at 1, :PLAYNICE
    m.at 5, :BATONPASS
    m.at 10, :DISARMINGVOICE
    m.at 15, :PSYBEAM
    m.at 20, :HELPINGHAND
    m.at 25, :FOLLOWME
    m.at 30, :AROMATHERAPY
    m.at 35, :PSYCHIC
    m.at 40, :CALMMIND
    m.at 45, :GUARDSPLIT
    m.at 50, :PSYCHICTERRAIN
    m.at 55, :HEALINGWISH
  end
  f.tutor_moves   :ALLYSWITCH, :ATTRACT, :BATONPASS, :CALMMIND, :CAPTIVATE, :CONFIDE, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DRAINPUNCH, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FRUSTRATION, :FUTURESIGHT, :GUARDSWAP, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :IMPRISON, :LIGHTSCREEN, :MAGICALLEAF, :METRONOME, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :PAYDAY, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SLEEPTALK, :SNORE, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :SWIFT, :TERRAINPULSE, :TOXIC, :TRICK, :ZENHEADBUTT, :TERABLAST
  f.egg_moves     :FAKEOUT, :HEALPULSE, :PSYCHUP, :PSYCHOSHIFT
end

GameData::Species.define_form :MORPEKO, 1 do |f|
  f.form_name     "Hangry Mode"
  f.pokedex_entry "Hunger hormones affect its temperament. Until its hunger is appeased, it gets up to all manner of evil deeds."
end

GameData::Species.define_form :ZACIAN, 1 do |f|
  f.form_name     "Crowned Sword"
  f.types         :FAIRY, :STEEL
  f.base_stats    hp: 92, attack: 170, defense: 115, speed: 148, sp_atk: 80, sp_def: 115
  f.weight        355.0
  f.pokedex_entry "Able to cut down anything with a single strike, it became known as the Fairy King's Sword, and it inspired awe in friend and foe alike."
end

GameData::Species.define_form :ZAMAZENTA, 1 do |f|
  f.form_name     "Crowned Shield"
  f.types         :FIGHTING, :STEEL
  f.base_stats    hp: 92, attack: 130, defense: 145, speed: 128, sp_atk: 80, sp_def: 145
  f.weight        785.0
  f.pokedex_entry "Its ability to deflect any attack led to it being known as the Fighting Master's Shield. It was feared and respected by all."
end

GameData::Species.define_form :URSHIFU, 1 do |f|
  f.form_name     "Rapid Strike Style"
  f.types         :FIGHTING, :WATER
  f.pokedex_entry "It's believed that this Pokémon modeled its fighting style on the flow of a river—sometimes rapid, sometimes calm."
  f.moves do |m|
    m.at 0, :SURGINGSTRIKES
    m.at 1, :AQUAJET
    m.at 1, :ROCKSMASH
    m.at 1, :LEER
    m.at 1, :ENDURE
    m.at 1, :FOCUSENERGY
    m.at 12, :AERIALACE
    m.at 16, :SCARYFACE
    m.at 20, :HEADBUTT
    m.at 24, :BRICKBREAK
    m.at 28, :DETECT
    m.at 32, :BULKUP
    m.at 36, :IRONHEAD
    m.at 40, :DYNAMICPUNCH
    m.at 44, :COUNTER
    m.at 48, :CLOSECOMBAT
    m.at 52, :FOCUSPUNCH
  end
  f.tutor_moves   :ACROBATICS, :ATTRACT, :AURASPHERE, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRINE, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DIG, :DIVE, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :FACADE, :FALSESWIPE, :FIREPUNCH, :FOCUSBLAST, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :LIQUIDATION, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCALD, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :STONEEDGE, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWIFT, :TAUNT, :THUNDERPUNCH, :TOXIC, :UTURN, :WATERFALL, :WHIRLPOOL, :WORKUP, :ZENHEADBUTT, :TERABLAST
end

GameData::Species.define_form :CALYREX, 1 do |f|
  f.form_name     "Ice Rider"
  f.types         :PSYCHIC, :ICE
  f.base_stats    hp: 100, attack: 165, defense: 150, speed: 50, sp_atk: 85, sp_def: 130
  f.abilities     :ASONECHILLINGNEIGH
  f.height        2.4
  f.weight        809.1
  f.pokedex_entry "According to lore, this Pokémon showed no mercy to those who got in its way, yet it would heal its opponents' wounds after battle."
  f.moves do |m|
    m.at 1, :GLACIALLANCE
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :DOUBLEKICK
    m.at 1, :AVALANCHE
    m.at 1, :STOMP
    m.at 1, :TORMENT
    m.at 1, :MIST
    m.at 1, :ICICLECRASH
    m.at 1, :TAKEDOWN
    m.at 1, :IRONDEFENSE
    m.at 1, :THRASH
    m.at 1, :TAUNT
    m.at 1, :DOUBLEEDGE
    m.at 1, :SWORDSDANCE
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
  f.tutor_moves   :AGILITY, :ALLYSWITCH, :ASSURANCE, :AVALANCHE, :BATONPASS, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BULLDOZE, :BULLETSEED, :CALMMIND, :CLOSECOMBAT, :CONFIDE, :CRUNCH, :DRAININGKISS, :DOUBLEEDGE, :DOUBLETEAM, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYTERRAIN, :GUARDSWAP, :HAIL, :HEAVYSLAM, :HELPINGHAND, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEBEAM, :ICICLESPEAR, :ICYWIND, :IMPRISON, :IRONDEFENSE, :LASHOUT, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MAGICROOM, :MEGAHORN, :METRONOME, :MIMIC, :MUDSHOT, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PAYDAY, :POLLENPUFF, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SEEDBOMB, :SKILLSWAP, :SLEEPTALK, :SMARTSTRIKE, :SNARL, :SNORE, :SOLARBEAM, :SOLARBLADE, :SPEEDSWAP, :STOMPINGTANTRUM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THROATCHOP, :TOXIC, :TRIATTACK, :TRICK, :TRICKROOM, :UPROAR, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
end

GameData::Species.define_form :CALYREX, 2 do |f|
  f.form_name     "Shadow Rider"
  f.types         :PSYCHIC, :GHOST
  f.base_stats    hp: 100, attack: 85, defense: 80, speed: 150, sp_atk: 165, sp_def: 100
  f.abilities     :ASONEGRIMNEIGH
  f.height        2.4
  f.weight        53.6
  f.pokedex_entry "Legend says that by using its power to see all events from past to future, this Pokémon saved the creatures of a forest from a meteorite strike."
  f.moves do |m|
    m.at 1, :ASTRALBARRAGE
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :DOUBLEKICK
    m.at 1, :HEX
    m.at 1, :STOMP
    m.at 1, :CONFUSERAY
    m.at 1, :HAZE
    m.at 1, :SHADOWBALL
    m.at 1, :TAKEDOWN
    m.at 1, :AGILITY
    m.at 1, :THRASH
    m.at 1, :DISABLE
    m.at 1, :DOUBLEEDGE
    m.at 1, :NASTYPLOT
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
  f.tutor_moves   :AGILITY, :ALLYSWITCH, :ASSURANCE, :BATONPASS, :BODYSLAM, :BULLDOZE, :BULLETSEED, :CALMMIND, :CONFIDE, :CRUNCH, :DARKPULSE, :DRAININGKISS, :DOUBLEEDGE, :DOUBLETEAM, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FOULPLAY, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYTERRAIN, :GUARDSWAP, :HELPINGHAND, :HEX, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :LASHOUT, :LEAFSTORM, :LIGHTSCREEN, :MAGICALLEAF, :MAGICROOM, :METRONOME, :MIMIC, :MUDSHOT, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PAYDAY, :PHANTOMFORCE, :POLLENPUFF, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHOCUT, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :SNARL, :SNORE, :SOLARBEAM, :SOLARBLADE, :SPEEDSWAP, :STOMPINGTANTRUM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :TOXIC, :TRIATTACK, :TRICK, :TRICKROOM, :UPROAR, :WILLOWISP, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
end

