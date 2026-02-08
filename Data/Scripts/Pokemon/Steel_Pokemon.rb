#===============================================================================
# Shattered Crowns - Steel Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :STEELIX do |s|
  s.name          "Steelix"
  s.types         :STEEL, :GROUND
  s.base_stats    hp: 75, attack: 85, defense: 200, speed: 30, sp_atk: 55, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      179
  s.catch_rate    25
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :ROCKHEAD, :STURDY
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :CRUNCH
    m.at 1, :THUNDERFANG
    m.at 1, :ICEFANG
    m.at 1, :FIREFANG
    m.at 1, :ROCKPOLISH
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :BIND
    m.at 1, :ROCKTHROW
    m.at 4, :SMACKDOWN
    m.at 8, :AUTOTOMIZE
    m.at 12, :DRAGONBREATH
    m.at 16, :CURSE
    m.at 20, :ROCKSLIDE
    m.at 24, :SCREECH
    m.at 28, :SANDTOMB
    m.at 32, :STEALTHROCK
    m.at 36, :SLAM
    m.at 40, :SANDSTORM
    m.at 44, :DIG
    m.at 48, :IRONTAIL
    m.at 52, :STONEEDGE
    m.at 56, :DOUBLEEDGE
    m.at 60, :MAGNETRISE
  end
  s.tutor_moves   :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :BIND, :BLOCK, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DRILLRUN, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FIREFANG, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEFANG, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :MAGNETRISE, :METEORBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PROTECT, :PSYCHICFANGS, :PSYCHUP, :REST, :RETURN, :ROAR, :ROCKBLAST, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAUNT, :THUNDERFANG, :TORMENT, :TWISTER, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   6400
  s.height        9.2
  s.weight        400.0
  s.color         :Gray
  s.shape         :Serpentine
  s.habitat       :Cave
  s.category      "Iron Snake"
  s.pokedex_entry "Steelix live even further underground than Onix. This Pokémon is known to dig toward the earth's core, reaching a depth of over six-tenths of a mile underground."
  s.generation    2
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :METALCOAT
end

GameData::Species.define :SKARMORY do |s|
  s.name          "Skarmory"
  s.types         :STEEL, :FLYING
  s.base_stats    hp: 65, attack: 80, defense: 140, speed: 70, sp_atk: 40, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      163
  s.catch_rate    25
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :KEENEYE, :STURDY
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :LEER
    m.at 4, :SANDATTACK
    m.at 8, :FURYATTACK
    m.at 12, :METALCLAW
    m.at 16, :AGILITY
    m.at 20, :WINGATTACK
    m.at 24, :SLASH
    m.at 28, :STEELWING
    m.at 32, :AUTOTOMIZE
    m.at 36, :DRILLPECK
    m.at 40, :METALSOUND
    m.at 44, :SPIKES
    m.at 48, :IRONDEFENSE
    m.at 52, :BRAVEBIRD
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :ASSURANCE, :ATTRACT, :BODYPRESS, :BRAVEBIRD, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FLASH, :FLASHCANNON, :FLY, :FRUSTRATION, :FURYCUTTER, :GUARDSWAP, :HIDDENPOWER, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PAYBACK, :PLUCK, :PROTECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SNORE, :SPIKES, :STEALTHROCK, :STEELBEAM, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :TAUNT, :THIEF, :TORMENT, :TWISTER, :XSCISSOR, :TERABLAST
  s.egg_moves     :AIRCUTTER, :ASSURANCE, :BRAVEBIRD, :CURSE, :DRILLPECK, :FEINT, :GUARDSWAP, :NIGHTSLASH, :ROOST, :SKYATTACK, :WHIRLWIND
  s.egg_groups    :Flying
  s.hatch_steps   6400
  s.height        1.7
  s.weight        50.5
  s.color         :Gray
  s.shape         :Winged
  s.habitat       :RoughTerrain
  s.category      "Armor Bird"
  s.pokedex_entry "A Pokémon that has a body and wings of steel. People in the past used feathers fallen from Skarmory to make swords and knives."
  s.generation    2
  s.wild_item_uncommon :METALCOAT
end

GameData::Species.define :MAWILE do |s|
  s.name          "Mawile"
  s.types         :STEEL, :FAIRY
  s.base_stats    hp: 50, attack: 85, defense: 85, speed: 50, sp_atk: 55, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      133
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1, defense: 1
  s.abilities     :HYPERCUTTER, :INTIMIDATE
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :GROWL
    m.at 4, :FAIRYWIND
    m.at 8, :BATONPASS
    m.at 12, :BITE
    m.at 16, :STOCKPILE
    m.at 16, :SWALLOW
    m.at 16, :SPITUP
    m.at 20, :SUCKERPUNCH
    m.at 24, :IRONDEFENSE
    m.at 28, :CRUNCH
    m.at 32, :SWEETSCENT
    m.at 36, :IRONHEAD
    m.at 40, :TAUNT
    m.at 44, :FAKETEARS
    m.at 48, :PLAYROUGH
  end
  s.tutor_moves   :ANCIENTPOWER, :ASSURANCE, :ATTRACT, :BATONPASS, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :CRUNCH, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DYNAMICPUNCH, :EMBARGO, :ENDURE, :FACADE, :FAKETEARS, :FALSESWIPE, :FIREBLAST, :FIREFANG, :FLAMETHROWER, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUARDSWAP, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MISTYTERRAIN, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SNATCH, :SNORE, :SOLARBEAM, :STEALTHROCK, :STEELBEAM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWORDSDANCE, :TAUNT, :THUNDERFANG, :THUNDERPUNCH, :TORMENT, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :FIREFANG, :GUARDSWAP, :ICEFANG, :METALBURST, :MISTYTERRAIN, :POISONFANG, :POWERUPPUNCH, :SEISMICTOSS, :SLAM, :SUCKERPUNCH, :THUNDERFANG, :TICKLE
  s.egg_groups    :Field, :Fairy
  s.hatch_steps   5120
  s.height        0.6
  s.weight        11.5
  s.color         :Black
  s.shape         :Bipedal
  s.habitat       :Cave
  s.category      "Deceiver"
  s.pokedex_entry "Its giant jaws are actually steel horns that transformed. It fools foes into complacency with its adorable gestures, then chomps them with its huge jaws."
  s.generation    3
  s.wild_item_uncommon :IRONBALL
end

GameData::Species.define :ARON do |s|
  s.name          "Aron"
  s.types         :STEEL, :ROCK
  s.base_stats    hp: 50, attack: 70, defense: 100, speed: 30, sp_atk: 40, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      66
  s.catch_rate    180
  s.happiness     35
  s.evs           defense: 1
  s.abilities     :STURDY, :ROCKHEAD
  s.hidden_abilities :HEAVYMETAL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 4, :METALCLAW
    m.at 8, :ROCKTOMB
    m.at 12, :ROAR
    m.at 16, :HEADBUTT
    m.at 20, :PROTECT
    m.at 24, :ROCKSLIDE
    m.at 28, :IRONHEAD
    m.at 33, :METALSOUND
    m.at 36, :TAKEDOWN
    m.at 40, :AUTOTOMIZE
    m.at 44, :IRONTAIL
    m.at 48, :IRONDEFENSE
    m.at 52, :HEAVYSLAM
    m.at 56, :DOUBLEEDGE
    m.at 60, :METALBURST
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :ATTRACT, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HONECLAWS, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SPITE, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :UPROAR, :WATERPULSE, :TERABLAST
  s.egg_moves     :BODYSLAM, :CURSE, :DRAGONRUSH, :ENDEAVOR, :HEADSMASH, :IRONHEAD, :MUDSLAP, :REVERSAL, :SCREECH, :STOMP, :SUPERPOWER
  s.egg_groups    :Monster
  s.hatch_steps   8960
  s.height        0.4
  s.weight        60.0
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :Mountain
  s.category      "Iron Armor"
  s.pokedex_entry "A Pokémon that is clad in steel armor. A new suit of armor is made when it evolves. The old, discarded armor is salvaged as metal for making iron products."
  s.generation    3
  s.evolves_into  :LAIRON, :Level, 32
  s.wild_item_uncommon :HARDSTONE
end

GameData::Species.define :LAIRON do |s|
  s.name          "Lairon"
  s.types         :STEEL, :ROCK
  s.base_stats    hp: 60, attack: 90, defense: 140, speed: 40, sp_atk: 50, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      151
  s.catch_rate    90
  s.happiness     35
  s.evs           defense: 2
  s.abilities     :STURDY, :ROCKHEAD
  s.hidden_abilities :HEAVYMETAL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :METALCLAW
    m.at 1, :ROCKTOMB
    m.at 12, :ROAR
    m.at 16, :HEADBUTT
    m.at 20, :PROTECT
    m.at 24, :ROCKSLIDE
    m.at 28, :IRONHEAD
    m.at 35, :METALSOUND
    m.at 40, :TAKEDOWN
    m.at 46, :AUTOTOMIZE
    m.at 52, :IRONTAIL
    m.at 58, :IRONDEFENSE
    m.at 64, :HEAVYSLAM
    m.at 70, :DOUBLEEDGE
    m.at 76, :METALBURST
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :ATTRACT, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HONECLAWS, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SANDTOMB, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SPITE, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :UPROAR, :WATERPULSE, :TERABLAST
  s.egg_groups    :Monster
  s.hatch_steps   8960
  s.height        0.9
  s.weight        120.0
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :Mountain
  s.category      "Iron Armor"
  s.pokedex_entry "When two Lairon meet in the wild, they fight for territory by bashing into each other with their steel bodies. The sound of their collision carries for miles."
  s.generation    3
  s.evolves_into  :AGGRON, :Level, 42
  s.wild_item_uncommon :HARDSTONE
end

GameData::Species.define :AGGRON do |s|
  s.name          "Aggron"
  s.types         :STEEL, :ROCK
  s.base_stats    hp: 70, attack: 110, defense: 180, speed: 50, sp_atk: 60, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      265
  s.catch_rate    45
  s.happiness     35
  s.evs           defense: 3
  s.abilities     :STURDY, :ROCKHEAD
  s.hidden_abilities :HEAVYMETAL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HARDEN
    m.at 1, :METALCLAW
    m.at 1, :ROCKTOMB
    m.at 12, :ROAR
    m.at 16, :HEADBUTT
    m.at 20, :PROTECT
    m.at 24, :ROCKSLIDE
    m.at 28, :IRONHEAD
    m.at 35, :METALSOUND
    m.at 40, :TAKEDOWN
    m.at 48, :AUTOTOMIZE
    m.at 56, :IRONTAIL
    m.at 64, :IRONDEFENSE
    m.at 72, :HEAVYSLAM
    m.at 80, :DOUBLEEDGE
    m.at 88, :METALBURST
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LOWKICK, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKBLAST, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SMARTSTRIKE, :SNORE, :SOLARBEAM, :SPITE, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :TAUNT, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Monster
  s.hatch_steps   8960
  s.height        2.1
  s.weight        360.0
  s.color         :Gray
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Iron Armor"
  s.pokedex_entry "Its iron horns grow longer a little at a time. They are used to determine the Aggron's age. The gouges in its armor are worn with pride as mementos from battles."
  s.generation    3
  s.wild_item_uncommon :HARDSTONE
end

GameData::Species.define :BELDUM do |s|
  s.name          "Beldum"
  s.types         :STEEL, :PSYCHIC
  s.base_stats    hp: 40, attack: 55, defense: 80, speed: 30, sp_atk: 35, sp_def: 60
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      60
  s.catch_rate    3
  s.happiness     35
  s.evs           defense: 1
  s.abilities     :CLEARBODY
  s.hidden_abilities :LIGHTMETAL
  s.moves do |m|
    m.at 1, :TACKLE
  end
  s.tutor_moves   :HEADBUTT, :IRONDEFENSE, :IRONHEAD, :STEELBEAM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   10240
  s.height        0.6
  s.weight        95.2
  s.color         :Blue
  s.shape         :HeadBase
  s.habitat       :RoughTerrain
  s.category      "Iron Ball"
  s.pokedex_entry "When Beldum gather in a swarm, they move in perfect unison as if they were but one Pokémon. They communicate with each other using brain waves."
  s.generation    3
  s.evolves_into  :METANG, :Level, 20
  s.wild_item_uncommon :METALCOAT
end

GameData::Species.define :METANG do |s|
  s.name          "Metang"
  s.types         :STEEL, :PSYCHIC
  s.base_stats    hp: 60, attack: 75, defense: 100, speed: 50, sp_atk: 55, sp_def: 80
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      147
  s.catch_rate    3
  s.happiness     35
  s.evs           defense: 2
  s.abilities     :CLEARBODY
  s.hidden_abilities :LIGHTMETAL
  s.moves do |m|
    m.at 0, :CONFUSION
    m.at 0, :METALCLAW
    m.at 1, :BULLETPUNCH
    m.at 1, :TACKLE
    m.at 6, :ZENHEADBUTT
    m.at 12, :MAGNETRISE
    m.at 18, :FLASHCANNON
    m.at 26, :TAKEDOWN
    m.at 34, :PSYCHIC
    m.at 42, :SCARYFACE
    m.at 50, :METEORMASH
    m.at 58, :IRONDEFENSE
    m.at 66, :AGILITY
    m.at 74, :HYPERBEAM
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ALLYSWITCH, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CONFIDE, :COSMICPOWER, :CUT, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :EXPANDINGFORCE, :EXPLOSION, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :FURYCUTTER, :GRASSKNOT, :GRAVITY, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEPUNCH, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :LIGHTSCREEN, :MAGNETRISE, :METEORBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SIGNALBEAM, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDERPUNCH, :TRICK, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   10240
  s.height        1.2
  s.weight        202.5
  s.color         :Blue
  s.shape         :HeadArms
  s.habitat       :RoughTerrain
  s.category      "Iron Claw"
  s.pokedex_entry "The claws tipping its arms pack the destructive power to tear through thick iron sheets as if they were silk. It flies at over 60 miles per hour."
  s.generation    3
  s.evolves_into  :METAGROSS, :Level, 45
  s.wild_item_uncommon :METALCOAT
end

GameData::Species.define :METAGROSS do |s|
  s.name          "Metagross"
  s.types         :STEEL, :PSYCHIC
  s.base_stats    hp: 80, attack: 135, defense: 130, speed: 70, sp_atk: 95, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     35
  s.evs           defense: 3
  s.abilities     :CLEARBODY
  s.hidden_abilities :LIGHTMETAL
  s.moves do |m|
    m.at 0, :HAMMERARM
    m.at 1, :CONFUSION
    m.at 1, :METALCLAW
    m.at 1, :BULLETPUNCH
    m.at 1, :TACKLE
    m.at 6, :ZENHEADBUTT
    m.at 12, :MAGNETRISE
    m.at 18, :FLASHCANNON
    m.at 26, :TAKEDOWN
    m.at 34, :PSYCHIC
    m.at 42, :SCARYFACE
    m.at 52, :METEORMASH
    m.at 62, :IRONDEFENSE
    m.at 72, :AGILITY
    m.at 82, :HYPERBEAM
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ALLYSWITCH, :BLOCK, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CONFIDE, :COSMICPOWER, :CUT, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :EXPANDINGFORCE, :EXPLOSION, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEPUNCH, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :LASERFOCUS, :LIGHTSCREEN, :MAGNETRISE, :METEORBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHOCUT, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SIGNALBEAM, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDERPUNCH, :TRICK, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   10240
  s.height        1.6
  s.weight        550.0
  s.color         :Blue
  s.shape         :MultiBody
  s.habitat       :RoughTerrain
  s.category      "Iron Leg"
  s.pokedex_entry "Metagross has four brains that are joined by a complex neural network. As a result of integration, this Pokémon is smarter than a supercomputer."
  s.generation    3
  s.wild_item_uncommon :METALCOAT
end

GameData::Species.define :REGISTEEL do |s|
  s.name          "Registeel"
  s.types         :STEEL
  s.base_stats    hp: 80, attack: 75, defense: 150, speed: 50, sp_atk: 75, sp_def: 150
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           defense: 2, sp_defense: 1
  s.abilities     :CLEARBODY
  s.hidden_abilities :LIGHTMETAL
  s.moves do |m|
    m.at 1, :CHARGEBEAM
    m.at 1, :METALCLAW
    m.at 6, :BULLDOZE
    m.at 12, :ANCIENTPOWER
    m.at 18, :STOMP
    m.at 24, :IRONHEAD
    m.at 24, :FLASHCANNON
    m.at 30, :CURSE
    m.at 36, :IRONDEFENSE
    m.at 36, :AMNESIA
    m.at 42, :HAMMERARM
    m.at 48, :HEAVYSLAM
    m.at 54, :SUPERPOWER
    m.at 60, :LOCKON
    m.at 66, :ZAPCANNON
    m.at 72, :HYPERBEAM
    m.at 78, :EXPLOSION
  end
  s.tutor_moves   :AERIALACE, :AMNESIA, :ANCIENTPOWER, :BLOCK, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SEISMICTOSS, :SELFDESTRUCT, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        1.9
  s.weight        205.0
  s.color         :Gray
  s.shape         :Bipedal
  s.habitat       :Cave
  s.category      "Iron"
  s.pokedex_entry "Its body is harder than any other kind of metal. The body metal is composed of a mysterious substance. Not only is it hard, it shrinks and stretches flexibly."
  s.generation    3
  s.flags         :Legendary
end

GameData::Species.define :JIRACHI do |s|
  s.name          "Jirachi"
  s.types         :STEEL, :PSYCHIC
  s.base_stats    hp: 100, attack: 100, defense: 100, speed: 100, sp_atk: 100, sp_def: 100
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     100
  s.evs           hp: 3
  s.abilities     :SERENEGRACE
  s.moves do |m|
    m.at 1, :CONFUSION
    m.at 1, :WISH
    m.at 7, :SWIFT
    m.at 14, :HELPINGHAND
    m.at 21, :LIFEDEW
    m.at 28, :ZENHEADBUTT
    m.at 35, :GRAVITY
    m.at 42, :PSYCHIC
    m.at 49, :METEORMASH
    m.at 56, :HEALINGWISH
    m.at 63, :REST
    m.at 70, :FUTURESIGHT
    m.at 77, :DOUBLEEDGE
    m.at 84, :COSMICPOWER
    m.at 91, :LASTRESORT
    m.at 98, :DOOMDESIRE
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :AMNESIA, :ANCIENTPOWER, :AURASPHERE, :BATONPASS, :BODYSLAM, :CALMMIND, :CHARGEBEAM, :CHARM, :CONFIDE, :COSMICPOWER, :DAZZLINGGLEAM, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ENCORE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FIREPUNCH, :FLASH, :FLASHCANNON, :FLING, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :ICYWIND, :IMPRISON, :IRONDEFENSE, :IRONHEAD, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :PLAYROUGH, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :STEALTHROCK, :STEELBEAM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRICK, :TRICKROOM, :UPROAR, :UTURN, :WATERPULSE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.3
  s.weight        1.1
  s.color         :Yellow
  s.shape         :Bipedal
  s.habitat       :Mountain
  s.category      "Wish"
  s.pokedex_entry "Jirachi is said to make wishes come true. While it sleeps, a tough crystalline shell envelops the body to protect it from enemies."
  s.generation    3
  s.flags         :Mythical
  s.wild_item_common   :STARPIECE
  s.wild_item_uncommon :STARPIECE
  s.wild_item_rare     :STARPIECE
end

GameData::Species.define :BRONZOR do |s|
  s.name          "Bronzor"
  s.types         :STEEL, :PSYCHIC
  s.base_stats    hp: 57, attack: 24, defense: 86, speed: 23, sp_atk: 24, sp_def: 86
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      60
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :LEVITATE, :HEATPROOF
  s.hidden_abilities :HEAVYMETAL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :CONFUSION
    m.at 4, :CONFUSERAY
    m.at 8, :PAYBACK
    m.at 12, :IMPRISON
    m.at 16, :GYROBALL
    m.at 20, :HYPNOSIS
    m.at 24, :SAFEGUARD
    m.at 28, :EXTRASENSORY
    m.at 32, :HEAVYSLAM
    m.at 36, :IRONDEFENSE
    m.at 40, :METALSOUND
    m.at 44, :FUTURESIGHT
  end
  s.tutor_moves   :ALLYSWITCH, :ANCIENTPOWER, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :DOUBLETEAM, :DREAMEATER, :EARTHQUAKE, :ENDURE, :EXPANDINGFORCE, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :FUTURESIGHT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :GYROBALL, :HEAVYSLAM, :HEX, :HIDDENPOWER, :IMPRISON, :IRONDEFENSE, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :PAYBACK, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPEEDSWAP, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :TRICK, :TRICKROOM, :WONDERROOM, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.5
  s.weight        60.5
  s.color         :Green
  s.shape         :Head
  s.category      "Bronze"
  s.pokedex_entry "Implements shaped like it were discovered in ancient tombs. It is unknown if they are related."
  s.generation    4
  s.evolves_into  :BRONZONG, :Level, 33
  s.wild_item_uncommon :METALCOAT
end

GameData::Species.define :BRONZONG do |s|
  s.name          "Bronzong"
  s.types         :STEEL, :PSYCHIC
  s.base_stats    hp: 67, attack: 89, defense: 116, speed: 33, sp_atk: 79, sp_def: 116
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    90
  s.happiness     50
  s.evs           defense: 1, sp_defense: 1
  s.abilities     :LEVITATE, :HEATPROOF
  s.hidden_abilities :HEAVYMETAL
  s.moves do |m|
    m.at 0, :BLOCK
    m.at 1, :SUNNYDAY
    m.at 1, :WEATHERBALL
    m.at 1, :TACKLE
    m.at 1, :CONFUSION
    m.at 1, :CONFUSERAY
    m.at 1, :PAYBACK
    m.at 12, :IMPRISON
    m.at 16, :GYROBALL
    m.at 20, :HYPNOSIS
    m.at 24, :SAFEGUARD
    m.at 28, :EXTRASENSORY
    m.at 32, :HEAVYSLAM
    m.at 38, :IRONDEFENSE
    m.at 44, :METALSOUND
    m.at 50, :FUTURESIGHT
    m.at 56, :RAINDANCE
  end
  s.tutor_moves   :ALLYSWITCH, :ANCIENTPOWER, :BLOCK, :BODYPRESS, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :DOUBLETEAM, :DREAMEATER, :EARTHQUAKE, :ENDURE, :EXPANDINGFORCE, :EXPLOSION, :FACADE, :FLASH, :FLASHCANNON, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :GYROBALL, :HEAVYSLAM, :HEX, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :IRONDEFENSE, :IRONHEAD, :LIGHTSCREEN, :METEORBEAM, :MIMIC, :NATURALGIFT, :PAYBACK, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPEEDSWAP, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :TRICK, :TRICKROOM, :WEATHERBALL, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.3
  s.weight        187.0
  s.color         :Green
  s.shape         :HeadArms
  s.category      "Bronze Bell"
  s.pokedex_entry "One caused a news sensation when it was dug up at a construction site after a 2,000-year sleep."
  s.generation    4
  s.wild_item_uncommon :METALCOAT
end

GameData::Species.define :DIALGA do |s|
  s.name          "Dialga"
  s.types         :STEEL, :DRAGON
  s.base_stats    hp: 100, attack: 120, defense: 120, speed: 90, sp_atk: 150, sp_def: 100
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      340
  s.catch_rate    3
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :PRESSURE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :SCARYFACE
    m.at 1, :METALCLAW
    m.at 8, :DRAGONBREATH
    m.at 16, :ANCIENTPOWER
    m.at 24, :SLASH
    m.at 32, :FLASHCANNON
    m.at 40, :ROAROFTIME
    m.at 48, :DRAGONCLAW
    m.at 56, :AURASPHERE
    m.at 64, :POWERGEM
    m.at 72, :METALBURST
    m.at 80, :EARTHPOWER
    m.at 88, :IRONTAIL
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :AURASPHERE, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BULKUP, :BULLDOZE, :CONFIDE, :CUT, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FIREBLAST, :FLAMETHROWER, :FLASH, :FLASHCANNON, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GRAVITY, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICEBEAM, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :MAGNETRISE, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :POWERGEM, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SCALESHOT, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :STEALTHROCK, :STEELBEAM, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TRICKROOM, :TWISTER, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        5.4
  s.weight        683.0
  s.color         :White
  s.shape         :Quadruped
  s.category      "Temporal"
  s.pokedex_entry "It has the power to control time. It appears in Sinnoh-region myths as an ancient deity."
  s.generation    4
  s.flags         :Legendary
end

GameData::Species.define :KLINK do |s|
  s.name          "Klink"
  s.types         :STEEL
  s.base_stats    hp: 40, attack: 55, defense: 70, speed: 30, sp_atk: 45, sp_def: 60
  s.gender_ratio  :Genderless
  s.growth_rate   :Parabolic
  s.base_exp      60
  s.catch_rate    130
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :PLUS, :MINUS
  s.hidden_abilities :CLEARBODY
  s.moves do |m|
    m.at 1, :THUNDERSHOCK
    m.at 1, :VISEGRIP
    m.at 4, :BIND
    m.at 8, :CHARGE
    m.at 12, :CHARGEBEAM
    m.at 16, :METALSOUND
    m.at 20, :AUTOTOMIZE
    m.at 24, :DISCHARGE
    m.at 28, :SCREECH
    m.at 32, :GEARGRIND
    m.at 36, :LOCKON
    m.at 40, :SHIFTGEAR
    m.at 44, :ZAPCANNON
    m.at 48, :HYPERBEAM
  end
  s.tutor_moves   :ASSURANCE, :BIND, :CHARGEBEAM, :CONFIDE, :DOUBLETEAM, :ENDURE, :FACADE, :FLASHCANNON, :FRUSTRATION, :GRAVITY, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :POWERGEM, :PROTECT, :RECYCLE, :REST, :RETURN, :RISINGVOLTAGE, :ROCKPOLISH, :ROCKSMASH, :ROUND, :SANDSTORM, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEELBEAM, :STEELROLLER, :SUBSTITUTE, :SWAGGER, :TELEKINESIS, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.3
  s.weight        21.0
  s.color         :Gray
  s.shape         :MultiBody
  s.category      "Gear"
  s.pokedex_entry "Interlocking two bodies and spinning around generates the energy they need to live."
  s.generation    5
  s.evolves_into  :KLANG, :Level, 38
end

GameData::Species.define :KLANG do |s|
  s.name          "Klang"
  s.types         :STEEL
  s.base_stats    hp: 60, attack: 80, defense: 95, speed: 50, sp_atk: 70, sp_def: 85
  s.gender_ratio  :Genderless
  s.growth_rate   :Parabolic
  s.base_exp      154
  s.catch_rate    60
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :PLUS, :MINUS
  s.hidden_abilities :CLEARBODY
  s.moves do |m|
    m.at 1, :THUNDERSHOCK
    m.at 1, :VISEGRIP
    m.at 1, :BIND
    m.at 1, :CHARGE
    m.at 12, :CHARGEBEAM
    m.at 16, :METALSOUND
    m.at 20, :AUTOTOMIZE
    m.at 24, :DISCHARGE
    m.at 28, :SCREECH
    m.at 32, :GEARGRIND
    m.at 36, :LOCKON
    m.at 42, :SHIFTGEAR
    m.at 48, :ZAPCANNON
    m.at 54, :HYPERBEAM
  end
  s.tutor_moves   :ALLYSWITCH, :ASSURANCE, :BIND, :CHARGEBEAM, :CONFIDE, :DOUBLETEAM, :ENDURE, :FACADE, :FLASHCANNON, :FRUSTRATION, :GRAVITY, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :POWERGEM, :PROTECT, :RECYCLE, :REST, :RETURN, :RISINGVOLTAGE, :ROCKPOLISH, :ROCKSMASH, :ROUND, :SANDSTORM, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEELBEAM, :STEELROLLER, :SUBSTITUTE, :SWAGGER, :TELEKINESIS, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.6
  s.weight        51.0
  s.color         :Gray
  s.shape         :MultiBody
  s.category      "Gear"
  s.pokedex_entry "Spinning minigears are rotated at high speed and repeatedly fired away. It is dangerous if the gears don't return."
  s.generation    5
  s.evolves_into  :KLINKLANG, :Level, 49
end

GameData::Species.define :KLINKLANG do |s|
  s.name          "Klinklang"
  s.types         :STEEL
  s.base_stats    hp: 60, attack: 100, defense: 115, speed: 90, sp_atk: 70, sp_def: 85
  s.gender_ratio  :Genderless
  s.growth_rate   :Parabolic
  s.base_exp      260
  s.catch_rate    30
  s.happiness     50
  s.evs           defense: 3
  s.abilities     :PLUS, :MINUS
  s.hidden_abilities :CLEARBODY
  s.moves do |m|
    m.at 1, :GEARUP
    m.at 1, :MAGNETICFLUX
    m.at 1, :THUNDERSHOCK
    m.at 1, :VISEGRIP
    m.at 1, :BIND
    m.at 1, :CHARGE
    m.at 12, :CHARGEBEAM
    m.at 16, :METALSOUND
    m.at 20, :AUTOTOMIZE
    m.at 24, :DISCHARGE
    m.at 28, :SCREECH
    m.at 32, :GEARGRIND
    m.at 36, :LOCKON
    m.at 42, :SHIFTGEAR
    m.at 48, :ZAPCANNON
    m.at 56, :HYPERBEAM
    m.at 64, :ELECTRICTERRAIN
  end
  s.tutor_moves   :ALLYSWITCH, :ASSURANCE, :BIND, :CHARGEBEAM, :CONFIDE, :DOUBLETEAM, :ELECTRICTERRAIN, :ENDURE, :FACADE, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :GRAVITY, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :POWERGEM, :PROTECT, :RECYCLE, :REST, :RETURN, :RISINGVOLTAGE, :ROCKPOLISH, :ROCKSMASH, :ROUND, :SANDSTORM, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEELBEAM, :STEELROLLER, :SUBSTITUTE, :SWAGGER, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TRICKROOM, :UPROAR, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.6
  s.weight        81.0
  s.color         :Gray
  s.shape         :MultiBody
  s.category      "Gear"
  s.pokedex_entry "The gear with the red core is rotated at high speed for a rapid energy charge."
  s.generation    5
end

GameData::Species.define :COBALION do |s|
  s.name          "Cobalion"
  s.types         :STEEL, :FIGHTING
  s.base_stats    hp: 91, attack: 90, defense: 129, speed: 108, sp_atk: 90, sp_def: 72
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      290
  s.catch_rate    3
  s.happiness     35
  s.evs           defense: 3
  s.abilities     :JUSTIFIED
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 1, :HELPINGHAND
    m.at 1, :WORKUP
    m.at 7, :METALCLAW
    m.at 14, :QUICKGUARD
    m.at 21, :DOUBLEKICK
    m.at 28, :RETALIATE
    m.at 35, :METALBURST
    m.at 42, :TAKEDOWN
    m.at 49, :SACREDSWORD
    m.at 56, :SWORDSDANCE
    m.at 63, :IRONHEAD
    m.at 70, :CLOSECOMBAT
  end
  s.tutor_moves   :AERIALACE, :AIRSLASH, :BLOCK, :BOUNCE, :BRICKBREAK, :CALMMIND, :CLOSECOMBAT, :COACHING, :CONFIDE, :CUT, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FLASHCANNON, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :LASERFOCUS, :MAGNETRISE, :MEGAHORN, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :PSYCHUP, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROAR, :ROCKPOLISH, :ROCKSMASH, :ROUND, :SAFEGUARD, :SANDSTORM, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :STEALTHROCK, :STEELBEAM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WORKUP, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   20480
  s.height        2.1
  s.weight        250.0
  s.color         :Blue
  s.shape         :Quadruped
  s.category      "Iron Will"
  s.pokedex_entry "It has a body and heart of steel. Its glare is sufficient to make even an unruly Pokémon obey it."
  s.generation    5
  s.flags         :Legendary
end

GameData::Species.define :HONEDGE do |s|
  s.name          "Honedge"
  s.types         :STEEL, :GHOST
  s.base_stats    hp: 45, attack: 80, defense: 100, speed: 28, sp_atk: 35, sp_def: 37
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      65
  s.catch_rate    180
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :NOGUARD
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :FURYCUTTER
    m.at 4, :SHADOWSNEAK
    m.at 8, :AUTOTOMIZE
    m.at 12, :AERIALACE
    m.at 16, :METALSOUND
    m.at 20, :SLASH
    m.at 24, :NIGHTSLASH
    m.at 28, :RETALIATE
    m.at 32, :IRONDEFENSE
    m.at 36, :IRONHEAD
    m.at 40, :POWERTRICK
    m.at 44, :SWORDSDANCE
    m.at 48, :SACREDSWORD
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ATTRACT, :BRICKBREAK, :BRUTALSWING, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CUT, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FLASHCANNON, :FRUSTRATION, :GYROBALL, :HIDDENPOWER, :IRONDEFENSE, :IRONHEAD, :LASERFOCUS, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHOCUT, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBLADE, :SPITE, :STEELBEAM, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TOXIC, :TERABLAST
  s.egg_moves     :BLOCK, :DESTINYBOND, :WIDEGUARD
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.8
  s.weight        2.0
  s.color         :Brown
  s.shape         :HeadBase
  s.category      "Sword"
  s.pokedex_entry "Apparently this Pokémon is born when a departed spirit inhabits a sword. It attaches itself to people and drinks their life force."
  s.generation    6
  s.evolves_into  :DOUBLADE, :Level, 35
end

GameData::Species.define :DOUBLADE do |s|
  s.name          "Doublade"
  s.types         :STEEL, :GHOST
  s.base_stats    hp: 59, attack: 110, defense: 150, speed: 35, sp_atk: 45, sp_def: 49
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      157
  s.catch_rate    90
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :NOGUARD
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :FURYCUTTER
    m.at 1, :SHADOWSNEAK
    m.at 1, :AUTOTOMIZE
    m.at 12, :AERIALACE
    m.at 16, :METALSOUND
    m.at 20, :SLASH
    m.at 24, :NIGHTSLASH
    m.at 28, :RETALIATE
    m.at 32, :IRONDEFENSE
    m.at 38, :IRONHEAD
    m.at 44, :POWERTRICK
    m.at 50, :SWORDSDANCE
    m.at 56, :SACREDSWORD
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ATTRACT, :BRICKBREAK, :BRUTALSWING, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CUT, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FLASHCANNON, :FRUSTRATION, :GYROBALL, :HIDDENPOWER, :IRONDEFENSE, :IRONHEAD, :LASERFOCUS, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHOCUT, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBLADE, :SPITE, :STEELBEAM, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TOXIC, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.8
  s.weight        4.5
  s.color         :Brown
  s.shape         :MultiBody
  s.category      "Sword"
  s.pokedex_entry "The complex attack patterns of its two swords are unstoppable, even for an opponent greatly accomplished at swordplay."
  s.generation    6
  s.evolves_into  :AEGISLASH, :Item, DUSKSTONE
end

GameData::Species.define :AEGISLASH do |s|
  s.name          "Aegislash"
  s.types         :STEEL, :GHOST
  s.base_stats    hp: 60, attack: 50, defense: 140, speed: 60, sp_atk: 50, sp_def: 140
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      250
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2, sp_defense: 1
  s.abilities     :STANCECHANGE
  s.moves do |m|
    m.at 0, :KINGSSHIELD
    m.at 1, :HEADSMASH
    m.at 1, :AERIALACE
    m.at 1, :METALSOUND
    m.at 1, :SLASH
    m.at 1, :NIGHTSLASH
    m.at 1, :RETALIATE
    m.at 1, :IRONDEFENSE
    m.at 1, :IRONHEAD
    m.at 1, :POWERTRICK
    m.at 1, :SWORDSDANCE
    m.at 1, :SACREDSWORD
    m.at 1, :TACKLE
    m.at 1, :FURYCUTTER
    m.at 1, :SHADOWSNEAK
    m.at 1, :AUTOTOMIZE
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :AIRSLASH, :ATTRACT, :BLOCK, :BRICKBREAK, :BRUTALSWING, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CUT, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :LASERFOCUS, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHOCUT, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNORE, :SOLARBLADE, :SPITE, :STEELBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :TOXIC, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.7
  s.weight        53.0
  s.color         :Brown
  s.shape         :HeadBase
  s.category      "Royal Sword"
  s.pokedex_entry "In this defensive stance, Aegislash uses its steel body and a force field of spectral power to reduce the damage of any attack."
  s.generation    6
end

GameData::Species.define :KLEFKI do |s|
  s.name          "Klefki"
  s.types         :STEEL, :FAIRY
  s.base_stats    hp: 57, attack: 80, defense: 91, speed: 75, sp_atk: 80, sp_def: 87
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      165
  s.catch_rate    75
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :PRANKSTER
  s.hidden_abilities :MAGICIAN
  s.moves do |m|
    m.at 1, :FAIRYLOCK
    m.at 1, :ASTONISH
    m.at 4, :TACKLE
    m.at 8, :FAIRYWIND
    m.at 12, :TORMENT
    m.at 16, :CRAFTYSHIELD
    m.at 20, :METALSOUND
    m.at 24, :DRAININGKISS
    m.at 28, :RECYCLE
    m.at 32, :IMPRISON
    m.at 36, :FLASHCANNON
    m.at 40, :PLAYROUGH
    m.at 44, :MAGICROOM
    m.at 48, :FOULPLAY
    m.at 52, :LASTRESORT
  end
  s.tutor_moves   :ATTRACT, :CALMMIND, :CAPTIVATE, :CONFIDE, :COVET, :CUT, :DAZZLINGGLEAM, :DEFOG, :DOUBLETEAM, :DRAININGKISS, :ENDURE, :FACADE, :FLASHCANNON, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :IRONDEFENSE, :LASTRESORT, :LIGHTSCREEN, :MAGICCOAT, :MAGICROOM, :MAGNETRISE, :MIMIC, :MISTYTERRAIN, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SLEEPTALK, :SNORE, :SPIKES, :STEELBEAM, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :THIEF, :THUNDERWAVE, :TORMENT, :TOXIC, :TERABLAST
  s.egg_moves     :MAGNETRISE, :SWITCHEROO
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.2
  s.weight        3.0
  s.color         :Gray
  s.shape         :Head
  s.category      "Key Ring"
  s.pokedex_entry "It never lets go of a key that it likes, so people give it the keys to vaults and safes as a way to prevent crime."
  s.generation    6
end

GameData::Species.define :CELESTEELA do |s|
  s.name          "Celesteela"
  s.types         :STEEL, :FLYING
  s.base_stats    hp: 97, attack: 101, defense: 103, speed: 61, sp_atk: 107, sp_def: 101
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    45
  s.happiness     0
  s.evs           attack: 1, defense: 1, sp_attack: 1
  s.abilities     :BEASTBOOST
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :TACKLE
    m.at 5, :HARDEN
    m.at 10, :WIDEGUARD
    m.at 15, :MEGADRAIN
    m.at 20, :SMACKDOWN
    m.at 25, :INGRAIN
    m.at 30, :AUTOTOMIZE
    m.at 35, :GIGADRAIN
    m.at 40, :FLASHCANNON
    m.at 45, :METALSOUND
    m.at 50, :IRONDEFENSE
    m.at 55, :LEECHSEED
    m.at 60, :HEAVYSLAM
    m.at 65, :DOUBLEEDGE
    m.at 70, :SKULLBASH
  end
  s.tutor_moves   :ACROBATICS, :AIRSLASH, :BLOCK, :BODYSLAM, :BRUTALSWING, :BULLDOZE, :CONFIDE, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FLASHCANNON, :FLY, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GYROBALL, :HEAVYSLAM, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :MAGNETRISE, :MEGAHORN, :METEORBEAM, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROUND, :SECRETPOWER, :SEEDBOMB, :SELFDESTRUCT, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SMARTSTRIKE, :SNORE, :SOLARBEAM, :STEELBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TOXIC, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        9.2
  s.weight        999.9
  s.color         :Green
  s.shape         :Bipedal
  s.category      "Launch"
  s.pokedex_entry "One kind of Ultra Beast. Witnesses have seen it burn down a forest by expelling gas from its two arms."
  s.generation    7
  s.flags         :UltraBeast
end

GameData::Species.define :MAGEARNA do |s|
  s.name          "Magearna"
  s.types         :STEEL, :FAIRY
  s.base_stats    hp: 80, attack: 95, defense: 115, speed: 65, sp_atk: 130, sp_def: 115
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :SOULHEART
  s.moves do |m|
    m.at 1, :GYROBALL
    m.at 1, :HELPINGHAND
    m.at 6, :DEFENSECURL
    m.at 12, :ROLLOUT
    m.at 18, :IRONDEFENSE
    m.at 24, :GEARUP
    m.at 30, :PSYBEAM
    m.at 36, :AURORABEAM
    m.at 42, :MINDREADER
    m.at 48, :SHIFTGEAR
    m.at 54, :CRAFTYSHIELD
    m.at 60, :IRONHEAD
    m.at 66, :AURASPHERE
    m.at 72, :FLASHCANNON
    m.at 78, :PAINSPLIT
    m.at 84, :ZAPCANNON
    m.at 90, :FLEURCANNON
  end
  s.tutor_moves   :AFTERYOU, :AGILITY, :AURASPHERE, :BATONPASS, :BRICKBREAK, :CALMMIND, :CHARGEBEAM, :CONFIDE, :DAZZLINGGLEAM, :DOUBLETEAM, :DRAININGKISS, :ECHOEDVOICE, :EERIEIMPULSE, :ELECTROBALL, :ELECTROWEB, :EMBARGO, :ENCORE, :ENDURE, :ENERGYBALL, :EXPLOSION, :FALSESWIPE, :FLASHCANNON, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUARDSWAP, :GYROBALL, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :IMPRISON, :IRONDEFENSE, :IRONHEAD, :LASTRESORT, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MISTYEXPLOSION, :NATURALGIFT, :PAINSPLIT, :POWERSWAP, :PROTECT, :REFLECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SNORE, :SOLARBEAM, :SPEEDSWAP, :STEELBEAM, :STEELROLLER, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :THUNDERBOLT, :THUNDERWAVE, :TRIATTACK, :TRICK, :TRICKROOM, :VOLTSWITCH, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.0
  s.weight        80.5
  s.color         :Gray
  s.shape         :Bipedal
  s.category      "Artificial"
  s.pokedex_entry "This artificial Pokémon, constructed more than 500 years ago, can understand human speech but cannot itself speak."
  s.generation    7
  s.flags         :Mythical
end

GameData::Species.define :MELTAN do |s|
  s.name          "Meltan"
  s.types         :STEEL
  s.base_stats    hp: 46, attack: 65, defense: 65, speed: 34, sp_atk: 55, sp_def: 35
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      150
  s.catch_rate    3
  s.happiness     0
  s.evs           attack: 1
  s.abilities     :MAGNETPULL
  s.moves do |m|
    m.at 1, :THUNDERSHOCK
    m.at 1, :HARDEN
    m.at 8, :TAILWHIP
    m.at 16, :HEADBUTT
    m.at 24, :THUNDERWAVE
    m.at 32, :ACIDARMOR
    m.at 40, :FLASHCANNON
  end
  s.tutor_moves   :CONFIDE, :DOUBLETEAM, :ENDURE, :FACADE, :FLASHCANNON, :FRUSTRATION, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :IRONDEFENSE, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEELBEAM, :SUBSTITUTE, :SWAGGER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.2
  s.weight        8.0
  s.color         :Gray
  s.shape         :Head
  s.category      "Hex Nut"
  s.pokedex_entry "It melts particles of iron and other metals found in the subsoil, so it can absorb them into its body of molten steel."
  s.generation    7
  s.evolves_into  :MELMETAL, :Level, 45
  s.flags         :Mythical
end

GameData::Species.define :MELMETAL do |s|
  s.name          "Melmetal"
  s.types         :STEEL
  s.base_stats    hp: 135, attack: 143, defense: 143, speed: 34, sp_atk: 80, sp_def: 65
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :IRONFIST
  s.moves do |m|
    m.at 0, :THUNDERPUNCH
    m.at 1, :THUNDERSHOCK
    m.at 1, :HARDEN
    m.at 1, :TAILWHIP
    m.at 1, :HEADBUTT
    m.at 24, :THUNDERWAVE
    m.at 32, :ACIDARMOR
    m.at 40, :FLASHCANNON
    m.at 48, :MEGAPUNCH
    m.at 56, :PROTECT
    m.at 64, :DISCHARGE
    m.at 72, :DYNAMICPUNCH
    m.at 80, :SUPERPOWER
    m.at 88, :DOUBLEIRONBASH
    m.at 96, :HYPERBEAM
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :CONFIDE, :DARKESTLARIAT, :DOUBLETEAM, :EARTHQUAKE, :ELECTRICTERRAIN, :ENDURE, :FACADE, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELBEAM, :STEELROLLER, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TOXIC, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        2.5
  s.weight        800.0
  s.color         :Gray
  s.shape         :Bipedal
  s.category      "Hex Nut"
  s.pokedex_entry "Revered long ago for its capacity to create iron from nothing, for some reason it has come back to life after 3,000 years."
  s.generation    7
  s.flags         :Mythical
end

GameData::Species.define :PERRSERKER do |s|
  s.name          "Perrserker"
  s.types         :STEEL
  s.base_stats    hp: 70, attack: 110, defense: 100, speed: 50, sp_atk: 50, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      154
  s.catch_rate    90
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :BATTLEARMOR, :TOUGHCLAWS
  s.hidden_abilities :STEELYSPIRIT
  s.moves do |m|
    m.at 0, :IRONHEAD
    m.at 1, :METALBURST
    m.at 1, :IRONDEFENSE
    m.at 1, :FAKEOUT
    m.at 1, :GROWL
    m.at 1, :HONECLAWS
    m.at 1, :SCRATCH
    m.at 12, :PAYDAY
    m.at 16, :METALCLAW
    m.at 20, :TAUNT
    m.at 24, :SWAGGER
    m.at 31, :FURYSWIPES
    m.at 36, :SCREECH
    m.at 42, :SLASH
    m.at 48, :METALSOUND
    m.at 54, :THRASH
  end
  s.tutor_moves   :AERIALACE, :AMNESIA, :ASSURANCE, :ATTRACT, :BATONPASS, :BODYSLAM, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :COVET, :CRUNCH, :DARKPULSE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ECHOEDVOICE, :ENDURE, :FACADE, :FLING, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :GYROBALL, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LASHOUT, :LASTRESORT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PAYDAY, :PLAYROUGH, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROUND, :SCREECH, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SNATCH, :SNORE, :SPITE, :STEELBEAM, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :TORMENT, :UPROAR, :UTURN, :WATERPULSE, :WORKUP, :TERABLAST
  s.egg_moves     :COVET, :CURSE, :DOUBLEEDGE, :FLAIL, :NIGHTSLASH, :SPITE
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.8
  s.weight        28.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.category      "Viking"
  s.pokedex_entry "What appears to be an iron helmet is actually hardened hair. This Pokémon lives for the thrill of battle."
  s.generation    8
  s.flags         :DefaultForm_2, :InheritFormWithEverStone
end

GameData::Species.define :CUFANT do |s|
  s.name          "Cufant"
  s.types         :STEEL
  s.base_stats    hp: 72, attack: 80, defense: 49, speed: 40, sp_atk: 40, sp_def: 49
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      66
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :SHEERFORCE
  s.hidden_abilities :HEAVYMETAL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 5, :ROLLOUT
    m.at 10, :ROCKSMASH
    m.at 15, :BULLDOZE
    m.at 20, :STOMP
    m.at 25, :IRONDEFENSE
    m.at 30, :DIG
    m.at 35, :STRENGTH
    m.at 40, :IRONHEAD
    m.at 45, :PLAYROUGH
    m.at 50, :HIGHHORSEPOWER
    m.at 55, :SUPERPOWER
  end
  s.tutor_moves   :ATTRACT, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :EARTHPOWER, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :HIDDENPOWER, :HIGHHORSEPOWER, :IRONDEFENSE, :IRONHEAD, :MEGAKICK, :MIMIC, :MUDSHOT, :NATURALGIFT, :PLAYROUGH, :POWERWHIP, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BELCH, :CURSE, :DEFENSECURL, :DOUBLEEDGE, :FISSURE, :SLAM, :SWAGGER, :WHIRLWIND
  s.egg_groups    :Field, :Mineral
  s.hatch_steps   6400
  s.height        1.2
  s.weight        100.0
  s.color         :Yellow
  s.shape         :Quadruped
  s.category      "Copperderm"
  s.pokedex_entry "It digs up the ground with its trunk. It's also very strong, being able to carry loads of over five tons without any problem at all."
  s.generation    8
  s.evolves_into  :COPPERAJAH, :Level, 34
  s.wild_item_uncommon :LAGGINGTAIL
end

GameData::Species.define :COPPERAJAH do |s|
  s.name          "Copperajah"
  s.types         :STEEL
  s.base_stats    hp: 122, attack: 130, defense: 69, speed: 30, sp_atk: 80, sp_def: 69
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    90
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SHEERFORCE
  s.hidden_abilities :HEAVYMETAL
  s.moves do |m|
    m.at 0, :HEAVYSLAM
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :ROLLOUT
    m.at 1, :ROCKSMASH
    m.at 15, :BULLDOZE
    m.at 20, :STOMP
    m.at 25, :IRONDEFENSE
    m.at 30, :DIG
    m.at 37, :STRENGTH
    m.at 44, :IRONHEAD
    m.at 51, :PLAYROUGH
    m.at 58, :HIGHHORSEPOWER
    m.at 65, :SUPERPOWER
  end
  s.tutor_moves   :ATTRACT, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FLASHCANNON, :FLING, :FRUSTRATION, :GIGAIMPACT, :HEATCRASH, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :MEGAKICK, :MIMIC, :MUDSHOT, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PLAYROUGH, :POWERWHIP, :PROTECT, :REST, :RETURN, :REVENGE, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TAUNT, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field, :Mineral
  s.hatch_steps   6400
  s.height        3.0
  s.weight        650.0
  s.color         :Green
  s.shape         :Quadruped
  s.category      "Copperderm"
  s.pokedex_entry "These Pokémon live in herds. Their trunks have incredible grip strength, strong enough to crush giant rocks into powder."
  s.generation    8
  s.wild_item_uncommon :LAGGINGTAIL
end

GameData::Species.define :DURALUDON do |s|
  s.name          "Duraludon"
  s.types         :STEEL, :DRAGON
  s.base_stats    hp: 70, attack: 95, defense: 115, speed: 85, sp_atk: 120, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      187
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :LIGHTMETAL, :HEAVYMETAL
  s.hidden_abilities :STALWART
  s.moves do |m|
    m.at 1, :METALCLAW
    m.at 1, :LEER
    m.at 6, :ROCKSMASH
    m.at 12, :HONECLAWS
    m.at 18, :METALSOUND
    m.at 24, :BREAKINGSWIPE
    m.at 30, :DRAGONTAIL
    m.at 36, :IRONDEFENSE
    m.at 42, :LASERFOCUS
    m.at 48, :DRAGONCLAW
    m.at 54, :FLASHCANNON
    m.at 60, :METALBURST
    m.at 66, :HYPERBEAM
  end
  s.tutor_moves   :ATTRACT, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :ENDURE, :FACADE, :FLASHCANNON, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEAVYSLAM, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :OUTRAGE, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :SOLARBEAM, :STEALTHROCK, :STEELBEAM, :STEELROLLER, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TERABLAST
  s.egg_moves     :MIRRORCOAT, :NIGHTSLASH, :SLASH
  s.egg_groups    :Mineral, :Dragon
  s.hatch_steps   7680
  s.height        1.8
  s.weight        40.0
  s.color         :White
  s.shape         :BipedalTail
  s.category      "Alloy"
  s.pokedex_entry "Its body resembles polished metal, and it's both lightweight and strong. The only drawback is that it rusts easily."
  s.generation    8
end

