#===============================================================================
# Shattered Crowns - Ground Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :SANDSHREW do |s|
  s.name          "Sandshrew"
  s.types         :GROUND
  s.base_stats    hp: 50, attack: 75, defense: 85, speed: 40, sp_atk: 20, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      60
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :SANDVEIL
  s.hidden_abilities :SANDRUSH
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :DEFENSECURL
    m.at 3, :POISONSTING
    m.at 6, :SANDATTACK
    m.at 9, :ROLLOUT
    m.at 12, :FURYCUTTER
    m.at 15, :RAPIDSPIN
    m.at 18, :BULLDOZE
    m.at 21, :SWIFT
    m.at 24, :FURYSWIPES
    m.at 27, :AGILITY
    m.at 30, :SLASH
    m.at 33, :DIG
    m.at 36, :GYROBALL
    m.at 39, :SWORDSDANCE
    m.at 42, :SANDSTORM
    m.at 45, :EARTHQUAKE
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AMNESIA, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FLING, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :IRONTAIL, :KNOCKOFF, :LEECHLIFE, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STEALTHROCK, :STEELROLLER, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :SWORDSDANCE, :THIEF, :THROATCHOP, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_moves     :COUNTER, :CRUSHCLAW, :FLAIL, :HONECLAWS, :METALCLAW, :MUDSHOT, :MUDSLAP, :NIGHTSLASH, :RAPIDSPIN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.6
  s.weight        12.0
  s.color         :Yellow
  s.shape         :BipedalTail
  s.habitat       :RoughTerrain
  s.category      "Mouse"
  s.pokedex_entry "When it curls up in a ball, it can make any attack bounce off harmlessly. Its hide has turned tough and solid as a result of living in the desert."
  s.generation    1
  s.evolves_into  :SANDSLASH, :Level, 22
  s.wild_item_uncommon :GRIPCLAW
end

GameData::Species.define :SANDSLASH do |s|
  s.name          "Sandslash"
  s.types         :GROUND
  s.base_stats    hp: 75, attack: 100, defense: 110, speed: 65, sp_atk: 45, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      158
  s.catch_rate    90
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SANDVEIL
  s.hidden_abilities :SANDRUSH
  s.moves do |m|
    m.at 1, :CRUSHCLAW
    m.at 1, :AGILITY
    m.at 1, :SCRATCH
    m.at 1, :DEFENSECURL
    m.at 1, :POISONSTING
    m.at 1, :SANDATTACK
    m.at 9, :ROLLOUT
    m.at 12, :FURYCUTTER
    m.at 15, :RAPIDSPIN
    m.at 18, :BULLDOZE
    m.at 21, :SWIFT
    m.at 26, :FURYSWIPES
    m.at 31, :SANDTOMB
    m.at 36, :SLASH
    m.at 41, :DIG
    m.at 46, :GYROBALL
    m.at 51, :SWORDSDANCE
    m.at 56, :SANDSTORM
    m.at 61, :EARTHQUAKE
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :AMNESIA, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONTAIL, :KNOCKOFF, :LEECHLIFE, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PINMISSILE, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SNORE, :SPIKES, :STEALTHROCK, :STEELROLLER, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWAGGER, :SWIFT, :SWORDSDANCE, :THIEF, :THROATCHOP, :WORKUP, :XSCISSOR, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        29.5
  s.color         :Yellow
  s.shape         :BipedalTail
  s.habitat       :RoughTerrain
  s.category      "Mouse"
  s.pokedex_entry "It curls up in a ball to protect itself from enemy attacks. It also curls up to prevent heatstroke during the daytime when temperatures rise sharply."
  s.generation    1
  s.wild_item_uncommon :GRIPCLAW
end

GameData::Species.define :DIGLETT do |s|
  s.name          "Diglett"
  s.types         :GROUND
  s.base_stats    hp: 10, attack: 55, defense: 25, speed: 95, sp_atk: 35, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      53
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :SANDVEIL, :ARENATRAP
  s.hidden_abilities :SANDFORCE
  s.moves do |m|
    m.at 1, :SANDATTACK
    m.at 1, :SCRATCH
    m.at 4, :GROWL
    m.at 8, :ASTONISH
    m.at 12, :MUDSLAP
    m.at 16, :BULLDOZE
    m.at 20, :SUCKERPUNCH
    m.at 24, :SLASH
    m.at 28, :SANDSTORM
    m.at 32, :DIG
    m.at 36, :EARTHPOWER
    m.at 40, :EARTHQUAKE
    m.at 44, :FISSURE
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ALLYSWITCH, :ASSURANCE, :ATTRACT, :BEATUP, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :HONECLAWS, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :REST, :RETURN, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :THIEF, :UPROAR, :WORKUP, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :ASTONISH, :BEATUP, :FINALGAMBIT, :HEADBUTT, :HONECLAWS, :MEMENTO, :REVERSAL, :SCREECH, :UPROAR
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.2
  s.weight        0.8
  s.color         :Brown
  s.shape         :HeadBase
  s.habitat       :Cave
  s.category      "Mole"
  s.pokedex_entry "Diglett are raised in most farms. The reason is simple--wherever they burrow, the soil is left perfectly tilled for growing delicious crops."
  s.generation    1
  s.evolves_into  :DUGTRIO, :Level, 26
  s.wild_item_uncommon :SOFTSAND
end

GameData::Species.define :DUGTRIO do |s|
  s.name          "Dugtrio"
  s.types         :GROUND
  s.base_stats    hp: 35, attack: 100, defense: 50, speed: 120, sp_atk: 50, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      149
  s.catch_rate    50
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :SANDVEIL, :ARENATRAP
  s.hidden_abilities :SANDFORCE
  s.moves do |m|
    m.at 0, :SANDTOMB
    m.at 1, :NIGHTSLASH
    m.at 1, :TRIATTACK
    m.at 1, :SANDATTACK
    m.at 1, :SCRATCH
    m.at 1, :GROWL
    m.at 1, :ASTONISH
    m.at 12, :MUDSLAP
    m.at 16, :BULLDOZE
    m.at 20, :SUCKERPUNCH
    m.at 24, :SLASH
    m.at 30, :SANDSTORM
    m.at 36, :DIG
    m.at 42, :EARTHPOWER
    m.at 48, :EARTHQUAKE
    m.at 54, :FISSURE
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ALLYSWITCH, :ASSURANCE, :ATTRACT, :BEATUP, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :HYPERBEAM, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :REST, :RETURN, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :THIEF, :TRIATTACK, :UPROAR, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.7
  s.weight        33.3
  s.color         :Brown
  s.shape         :MultiBody
  s.habitat       :Cave
  s.category      "Mole"
  s.pokedex_entry "Because the triplets originally split from one body, they think exactly alike. They work cooperatively to burrow endlessly through the ground."
  s.generation    1
  s.wild_item_uncommon :SOFTSAND
end

GameData::Species.define :CUBONE do |s|
  s.name          "Cubone"
  s.types         :GROUND
  s.base_stats    hp: 50, attack: 50, defense: 95, speed: 35, sp_atk: 40, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      64
  s.catch_rate    190
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :ROCKHEAD, :LIGHTNINGROD
  s.hidden_abilities :BATTLEARMOR
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :GROWL
    m.at 4, :TAILWHIP
    m.at 8, :FALSESWIPE
    m.at 12, :HEADBUTT
    m.at 16, :RETALIATE
    m.at 20, :FLING
    m.at 24, :STOMPINGTANTRUM
    m.at 29, :BONERUSH
    m.at 32, :FOCUSENERGY
    m.at 36, :ENDEAVOR
    m.at 40, :BONEMERANG
    m.at 44, :THRASH
    m.at 48, :DOUBLEEDGE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :THIEF, :THUNDERPUNCH, :UPROAR, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :BELLYDRUM, :CURSE, :DETECT, :DOUBLEKICK, :IRONHEAD, :LEER, :PERISHSONG, :SCREECH, :SKULLBASH
  s.egg_groups    :Monster
  s.hatch_steps   5120
  s.height        0.4
  s.weight        6.5
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Lonely"
  s.pokedex_entry "It pines for the mother it will never see again. Seeing a likeness of its mother in the full moon, it cries. The stains on the skull it wears are from its tears."
  s.generation    1
  s.evolves_into  :MAROWAK, :Level, 28
  s.wild_item_uncommon :THICKCLUB
end

GameData::Species.define :MAROWAK do |s|
  s.name          "Marowak"
  s.types         :GROUND
  s.base_stats    hp: 60, attack: 80, defense: 110, speed: 45, sp_atk: 50, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      149
  s.catch_rate    75
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :ROCKHEAD, :LIGHTNINGROD
  s.hidden_abilities :BATTLEARMOR
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :GROWL
    m.at 1, :TAILWHIP
    m.at 1, :FALSESWIPE
    m.at 12, :HEADBUTT
    m.at 16, :RETALIATE
    m.at 20, :FLING
    m.at 24, :STOMPINGTANTRUM
    m.at 31, :BONERUSH
    m.at 36, :FOCUSENERGY
    m.at 42, :ENDEAVOR
    m.at 48, :BONEMERANG
    m.at 54, :THRASH
    m.at 60, :DOUBLEEDGE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LOWKICK, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :POWERUPPUNCH, :PROTECT, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :THIEF, :THROATCHOP, :THUNDERPUNCH, :UPROAR, :TERABLAST
  s.egg_groups    :Monster
  s.hatch_steps   5120
  s.height        1.0
  s.weight        45.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Bone Keeper"
  s.pokedex_entry "A Marowak is the evolved form of a Cubone that has grown tough by overcoming the grief of losing its mother. Its tempered and hardened spirit is not easily broken."
  s.generation    1
  s.wild_item_uncommon :THICKCLUB
end

GameData::Species.define :RHYHORN do |s|
  s.name          "Rhyhorn"
  s.types         :GROUND, :ROCK
  s.base_stats    hp: 80, attack: 85, defense: 95, speed: 25, sp_atk: 30, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      69
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :LIGHTNINGROD, :ROCKHEAD
  s.hidden_abilities :RECKLESS
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 5, :SMACKDOWN
    m.at 10, :BULLDOZE
    m.at 15, :HORNATTACK
    m.at 20, :SCARYFACE
    m.at 25, :STOMP
    m.at 30, :ROCKBLAST
    m.at 35, :DRILLRUN
    m.at 40, :TAKEDOWN
    m.at 45, :EARTHQUAKE
    m.at 50, :STONEEDGE
    m.at 55, :MEGAHORN
    m.at 60, :HORNDRILL
  end
  s.tutor_moves   :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :BLIZZARD, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :DRILLRUN, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FLAMETHROWER, :FRUSTRATION, :HEADBUTT, :HIDDENPOWER, :HIGHHORSEPOWER, :ICEBEAM, :ICEFANG, :ICYWIND, :INCINERATE, :IRONTAIL, :MEGAHORN, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKBLAST, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SMARTSTRIKE, :SNORE, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :UPROAR, :TERABLAST
  s.egg_moves     :COUNTER, :CRUNCH, :CRUSHCLAW, :CURSE, :DRAGONRUSH, :FIREFANG, :GUARDSPLIT, :ICEFANG, :METALBURST, :REVERSAL, :ROCKPOLISH, :SKULLBASH, :THUNDERFANG
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        115.0
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :RoughTerrain
  s.category      "Spikes"
  s.pokedex_entry "Once it starts running, it doesn't stop. Its tiny brain makes it so stupid that it can't remember why it started running in the first place."
  s.generation    1
  s.evolves_into  :RHYDON, :Level, 42
  s.flags         :HasGenderedSprites
end

GameData::Species.define :RHYDON do |s|
  s.name          "Rhydon"
  s.types         :GROUND, :ROCK
  s.base_stats    hp: 105, attack: 130, defense: 120, speed: 40, sp_atk: 45, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      170
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :LIGHTNINGROD, :ROCKHEAD
  s.hidden_abilities :RECKLESS
  s.moves do |m|
    m.at 0, :HAMMERARM
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :SMACKDOWN
    m.at 1, :BULLDOZE
    m.at 15, :HORNATTACK
    m.at 20, :SCARYFACE
    m.at 25, :STOMP
    m.at 30, :ROCKBLAST
    m.at 35, :DRILLRUN
    m.at 40, :TAKEDOWN
    m.at 47, :EARTHQUAKE
    m.at 54, :STONEEDGE
    m.at 61, :MEGAHORN
    m.at 68, :HORNDRILL
  end
  s.tutor_moves   :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :DRAGONTAIL, :DRILLRUN, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HEATCRASH, :HEAVYSLAM, :HELPINGHAND, :HIDDENPOWER, :HIGHHORSEPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONDEFENSE, :IRONTAIL, :MEGAHORN, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PAYDAY, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKBLAST, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SMARTSTRIKE, :SNORE, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERPUNCH, :UPROAR, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        1.9
  s.weight        120.0
  s.color         :Gray
  s.shape         :BipedalTail
  s.habitat       :RoughTerrain
  s.category      "Drill"
  s.pokedex_entry "Its horn, which rotates like a drill, destroys tall buildings with one strike. It stands on its hind legs, and its brain is well developed."
  s.generation    1
  s.evolves_into  :RHYPERIOR, :TradeItem, PROTECTOR
  s.flags         :HasGenderedSprites
end

GameData::Species.define :GLIGAR do |s|
  s.name          "Gligar"
  s.types         :GROUND, :FLYING
  s.base_stats    hp: 65, attack: 75, defense: 105, speed: 85, sp_atk: 35, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      86
  s.catch_rate    60
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :HYPERCUTTER, :SANDVEIL
  s.hidden_abilities :IMMUNITY
  s.moves do |m|
    m.at 1, :POISONSTING
    m.at 4, :SANDATTACK
    m.at 7, :HARDEN
    m.at 10, :KNOCKOFF
    m.at 13, :QUICKATTACK
    m.at 16, :FURYCUTTER
    m.at 19, :MUDSLAP
    m.at 22, :ACROBATICS
    m.at 27, :SLASH
    m.at 30, :UTURN
    m.at 35, :SCREECH
    m.at 40, :XSCISSOR
    m.at 45, :EARTHQUAKE
    m.at 50, :SWORDSDANCE
    m.at 55, :GUILLOTINE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AQUATAIL, :ATTRACT, :BRICKBREAK, :BUGBITE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DEFOG, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :IRONTAIL, :KNOCKOFF, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SANDSTORM, :SECRETPOWER, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :STEALTHROCK, :STEELWING, :STONEEDGE, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :UTURN, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_moves     :AGILITY, :BATONPASS, :COUNTER, :CROSSPOISON, :DOUBLEEDGE, :FEINT, :METALCLAW, :NIGHTSLASH, :POISONTAIL, :POWERTRICK, :SANDTOMB, :WINGATTACK
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        1.1
  s.weight        64.8
  s.color         :Purple
  s.shape         :Winged
  s.habitat       :Mountain
  s.category      "Fly Scorpion"
  s.pokedex_entry "It glides without making a single sound. It grasps the face of its foe using its hind and large front claws, then stabs with its poison barb."
  s.generation    2
  s.evolves_into  :GLISCOR, :NightHoldItem, RAZORFANG
  s.flags         :HasGenderedSprites
end

GameData::Species.define :PHANPY do |s|
  s.name          "Phanpy"
  s.types         :GROUND
  s.base_stats    hp: 90, attack: 60, defense: 60, speed: 40, sp_atk: 40, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      66
  s.catch_rate    120
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :PICKUP
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :DEFENSECURL
    m.at 6, :FLAIL
    m.at 10, :ROLLOUT
    m.at 15, :BULLDOZE
    m.at 19, :ENDURE
    m.at 24, :SLAM
    m.at 28, :TAKEDOWN
    m.at 33, :CHARM
    m.at 37, :LASTRESORT
    m.at 42, :DOUBLEEDGE
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :GUNKSHOT, :HEADBUTT, :HIDDENPOWER, :HYPERVOICE, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :STEALTHROCK, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TERABLAST
  s.egg_moves     :ANCIENTPOWER, :BODYSLAM, :COUNTER, :ENDEAVOR, :FISSURE, :FOCUSENERGY, :HEADSMASH, :HEAVYSLAM, :HIGHHORSEPOWER, :ICESHARD, :MUDSLAP, :PLAYROUGH, :SNORE
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.5
  s.weight        33.5
  s.color         :Blue
  s.shape         :Quadruped
  s.habitat       :RoughTerrain
  s.category      "Long Nose"
  s.pokedex_entry "Phanpy's big ears serve as broad fans. When it becomes hot, it flaps the ears busily to cool down. Even the young are very strong."
  s.generation    2
  s.evolves_into  :DONPHAN, :Level, 25
end

GameData::Species.define :DONPHAN do |s|
  s.name          "Donphan"
  s.types         :GROUND
  s.base_stats    hp: 90, attack: 120, defense: 120, speed: 50, sp_atk: 60, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 1, defense: 1
  s.abilities     :STURDY
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 0, :FURYATTACK
    m.at 1, :FIREFANG
    m.at 1, :THUNDERFANG
    m.at 1, :TACKLE
    m.at 1, :FLAIL
    m.at 1, :ENDURE
    m.at 1, :TAKEDOWN
    m.at 1, :CHARM
    m.at 1, :LASTRESORT
    m.at 1, :DOUBLEEDGE
    m.at 1, :HORNATTACK
    m.at 1, :BULLDOZE
    m.at 1, :GROWL
    m.at 1, :DEFENSECURL
    m.at 6, :RAPIDSPIN
    m.at 10, :ROLLOUT
    m.at 15, :ASSURANCE
    m.at 19, :KNOCKOFF
    m.at 24, :SLAM
    m.at 30, :ROCKTOMB
    m.at 37, :SCARYFACE
    m.at 43, :EARTHQUAKE
    m.at 50, :GIGAIMPACT
  end
  s.tutor_moves   :ANCIENTPOWER, :ATTRACT, :BLOCK, :BODYSLAM, :BOUNCE, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :IRONDEFENSE, :IRONTAIL, :KNOCKOFF, :LASTRESORT, :MIMIC, :MUDSLAP, :NATURALGIFT, :POISONJAB, :PROTECT, :REST, :RETURN, :ROAR, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.1
  s.weight        120.0
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :RoughTerrain
  s.category      "Armor"
  s.pokedex_entry "A Donphan is so strong it can easily haul a dump truck. Its hide has toughened to a rock-hard state. An ordinary sort of attack won't even leave a scratch."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :TRAPINCH do |s|
  s.name          "Trapinch"
  s.types         :GROUND
  s.base_stats    hp: 45, attack: 100, defense: 45, speed: 10, sp_atk: 45, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      58
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :HYPERCUTTER, :ARENATRAP
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :SANDATTACK
    m.at 1, :ASTONISH
    m.at 4, :LASERFOCUS
    m.at 8, :BITE
    m.at 12, :MUDSLAP
    m.at 16, :SANDTOMB
    m.at 20, :BULLDOZE
    m.at 24, :DIG
    m.at 28, :CRUNCH
    m.at 32, :SANDSTORM
    m.at 36, :EARTHPOWER
    m.at 40, :EARTHQUAKE
    m.at 44, :SUPERPOWER
    m.at 48, :FISSURE
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BUGBITE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FOCUSENERGY, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TERABLAST
  s.egg_moves     :BUGBITE, :EARTHPOWER, :FEINT, :FIRSTIMPRESSION, :FLAIL, :FOCUSENERGY, :FURYCUTTER, :GUST, :MUDSHOT, :QUICKATTACK
  s.egg_groups    :Bug, :Dragon
  s.hatch_steps   5120
  s.height        0.7
  s.weight        15.0
  s.color         :Brown
  s.shape         :Insectoid
  s.habitat       :RoughTerrain
  s.category      "Ant Pit"
  s.pokedex_entry "Its big jaws crunch through boulders. Because its head is so big, it has a hard time getting back upright if it tips over onto its back."
  s.generation    3
  s.evolves_into  :VIBRAVA, :Level, 35
  s.wild_item_uncommon :SOFTSAND
end

GameData::Species.define :VIBRAVA do |s|
  s.name          "Vibrava"
  s.types         :GROUND, :DRAGON
  s.base_stats    hp: 50, attack: 70, defense: 50, speed: 70, sp_atk: 50, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      119
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 1, speed: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 0, :DRAGONBREATH
    m.at 1, :LASERFOCUS
    m.at 1, :BULLDOZE
    m.at 1, :DIG
    m.at 1, :CRUNCH
    m.at 1, :SUPERPOWER
    m.at 1, :FISSURE
    m.at 1, :SANDATTACK
    m.at 1, :ASTONISH
    m.at 1, :SUPERSONIC
    m.at 1, :BITE
    m.at 12, :MUDSLAP
    m.at 16, :SANDTOMB
    m.at 20, :DRAGONTAIL
    m.at 24, :SCREECH
    m.at 28, :BUGBUZZ
    m.at 32, :SANDSTORM
    m.at 38, :EARTHPOWER
    m.at 44, :EARTHQUAKE
    m.at 50, :UPROAR
    m.at 56, :DRAGONRUSH
    m.at 62, :BOOMBURST
  end
  s.tutor_moves   :AIRCUTTER, :AIRSLASH, :ATTRACT, :BODYSLAM, :BUGBITE, :BUGBUZZ, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DEFOG, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONPULSE, :DUALWINGBEAT, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FLY, :FOCUSENERGY, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HYPERBEAM, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :OUTRAGE, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :TAILWIND, :THROATCHOP, :TWISTER, :UPROAR, :UTURN, :TERABLAST
  s.egg_groups    :Bug, :Dragon
  s.hatch_steps   5120
  s.height        1.1
  s.weight        15.3
  s.color         :Green
  s.shape         :MultiWinged
  s.habitat       :RoughTerrain
  s.category      "Vibration"
  s.pokedex_entry "It looses ultrasonic waves by rubbing its wings together. Since a Vibrava's wings are still in the process of growing, it can only fly short distances."
  s.generation    3
  s.evolves_into  :FLYGON, :Level, 45
end

GameData::Species.define :FLYGON do |s|
  s.name          "Flygon"
  s.types         :GROUND, :DRAGON
  s.base_stats    hp: 80, attack: 100, defense: 80, speed: 100, sp_atk: 80, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      260
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1, speed: 2
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 0, :DRAGONCLAW
    m.at 1, :OUTRAGE
    m.at 1, :DRAGONBREATH
    m.at 1, :DRAGONDANCE
    m.at 1, :FEINT
    m.at 1, :LASERFOCUS
    m.at 1, :BULLDOZE
    m.at 1, :DIG
    m.at 1, :CRUNCH
    m.at 1, :SUPERPOWER
    m.at 1, :FISSURE
    m.at 1, :SANDATTACK
    m.at 1, :ASTONISH
    m.at 1, :SUPERSONIC
    m.at 1, :BITE
    m.at 12, :MUDSLAP
    m.at 16, :SANDTOMB
    m.at 20, :DRAGONTAIL
    m.at 24, :SCREECH
    m.at 28, :BUGBUZZ
    m.at 32, :SANDSTORM
    m.at 38, :EARTHPOWER
    m.at 44, :EARTHQUAKE
    m.at 52, :UPROAR
    m.at 60, :DRAGONRUSH
    m.at 68, :BOOMBURST
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :AIRSLASH, :ATTRACT, :BODYSLAM, :BREAKINGSWIPE, :BRUTALSWING, :BUGBITE, :BUGBUZZ, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DEFOG, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRACOMETEOR, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :DUALWINGBEAT, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FIRESPIN, :FLAMETHROWER, :FLY, :FOCUSENERGY, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :HEADBUTT, :HEATWAVE, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :INCINERATE, :IRONTAIL, :LASERFOCUS, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :OUTRAGE, :POWERUPPUNCH, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SANDSTORM, :SANDTOMB, :SCALESHOT, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STONEEDGE, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :TAILWIND, :THROATCHOP, :THUNDERPUNCH, :TWISTER, :UPROAR, :UTURN, :TERABLAST
  s.egg_groups    :Bug, :Dragon
  s.hatch_steps   5120
  s.height        2.0
  s.weight        82.0
  s.color         :Green
  s.shape         :Winged
  s.habitat       :RoughTerrain
  s.category      "Mystic"
  s.pokedex_entry "The flapping of its wings sounds like singing. To prevent detection by enemies, it hides itself by flapping up a cloud of desert sand."
  s.generation    3
end

GameData::Species.define :BALTOY do |s|
  s.name          "Baltoy"
  s.types         :GROUND, :PSYCHIC
  s.base_stats    hp: 40, attack: 40, defense: 55, speed: 55, sp_atk: 40, sp_def: 70
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      60
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 1, :HARDEN
    m.at 1, :MUDSLAP
    m.at 3, :RAPIDSPIN
    m.at 6, :CONFUSION
    m.at 9, :ROCKTOMB
    m.at 12, :POWERTRICK
    m.at 15, :PSYBEAM
    m.at 18, :ANCIENTPOWER
    m.at 21, :IMPRISON
    m.at 24, :COSMICPOWER
    m.at 27, :EXTRASENSORY
    m.at 30, :EARTHPOWER
    m.at 33, :SELFDESTRUCT
    m.at 36, :GUARDSPLIT
    m.at 36, :POWERSPLIT
    m.at 39, :SANDSTORM
    m.at 42, :EXPLOSION
  end
  s.tutor_moves   :ALLYSWITCH, :ANCIENTPOWER, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COSMICPOWER, :DAZZLINGGLEAM, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DRILLRUN, :EARTHPOWER, :EARTHQUAKE, :EERIEIMPULSE, :ENDURE, :EXPANDINGFORCE, :EXPLOSION, :FACADE, :FLASH, :FRUSTRATION, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :GYROBALL, :HEADBUTT, :HEX, :HIDDENPOWER, :ICEBEAM, :IMPRISON, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :STEALTHROCK, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        0.5
  s.weight        21.5
  s.color         :Brown
  s.shape         :HeadArms
  s.habitat       :RoughTerrain
  s.category      "Clay Doll"
  s.pokedex_entry "A Baltoy moves by spinning on its single foot. It has been depicted in murals adorning the walls of a once-bustling city in an ancient age."
  s.generation    3
  s.evolves_into  :CLAYDOL, :Level, 36
  s.wild_item_uncommon :LIGHTCLAY
end

GameData::Species.define :CLAYDOL do |s|
  s.name          "Claydol"
  s.types         :GROUND, :PSYCHIC
  s.base_stats    hp: 60, attack: 70, defense: 105, speed: 75, sp_atk: 70, sp_def: 120
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    90
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 0, :HYPERBEAM
    m.at 1, :TELEPORT
    m.at 1, :HARDEN
    m.at 1, :MUDSLAP
    m.at 1, :RAPIDSPIN
    m.at 1, :CONFUSION
    m.at 9, :ROCKTOMB
    m.at 12, :POWERTRICK
    m.at 15, :PSYBEAM
    m.at 18, :ANCIENTPOWER
    m.at 21, :IMPRISON
    m.at 24, :COSMICPOWER
    m.at 27, :EXTRASENSORY
    m.at 30, :EARTHPOWER
    m.at 33, :SELFDESTRUCT
    m.at 38, :GUARDSPLIT
    m.at 38, :POWERSPLIT
    m.at 43, :SANDSTORM
    m.at 48, :EXPLOSION
  end
  s.tutor_moves   :ALLYSWITCH, :ANCIENTPOWER, :BODYPRESS, :BULLDOZE, :CALMMIND, :CHARGEBEAM, :CONFIDE, :COSMICPOWER, :DAZZLINGGLEAM, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :DRILLRUN, :EARTHPOWER, :EARTHQUAKE, :EERIEIMPULSE, :ENDURE, :EXPANDINGFORCE, :EXPLOSION, :FACADE, :FLASH, :FRUSTRATION, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GUARDSWAP, :GYROBALL, :HEADBUTT, :HEX, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :IMPRISON, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :STEALTHROCK, :STONEEDGE, :STOREDPOWER, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.5
  s.weight        108.0
  s.color         :Black
  s.shape         :HeadArms
  s.habitat       :RoughTerrain
  s.category      "Clay Doll"
  s.pokedex_entry "A Claydol sleeps while hovering in midair. Its arms are separate from its body. They are kept floating by the Pokémon's manipulation of psychic power."
  s.generation    3
  s.wild_item_uncommon :LIGHTCLAY
end

GameData::Species.define :GROUDON do |s|
  s.name          "Groudon"
  s.types         :GROUND
  s.base_stats    hp: 100, attack: 150, defense: 140, speed: 90, sp_atk: 100, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      335
  s.catch_rate    3
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :DROUGHT
  s.moves do |m|
    m.at 1, :MUDSHOT
    m.at 1, :ANCIENTPOWER
    m.at 1, :LAVAPLUME
    m.at 1, :SCARYFACE
    m.at 9, :EARTHPOWER
    m.at 18, :BULKUP
    m.at 27, :EARTHQUAKE
    m.at 36, :HAMMERARM
    m.at 45, :FISSURE
    m.at 54, :REST
    m.at 63, :PRECIPICEBLADES
    m.at 72, :FIREBLAST
    m.at 81, :SOLARBEAM
    m.at 90, :ERUPTION
  end
  s.tutor_moves   :AERIALACE, :ANCIENTPOWER, :BLOCK, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CONFIDE, :COUNTER, :CUT, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HEATCRASH, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :HYPERBEAM, :INCINERATE, :IRONHEAD, :IRONTAIL, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :OVERHEAT, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :REST, :RETURN, :ROAR, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UPROAR, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        3.5
  s.weight        950.0
  s.color         :Red
  s.shape         :BipedalTail
  s.habitat       :RoughTerrain
  s.category      "Continent"
  s.pokedex_entry "Groudon has appeared in mythology as the creator of the land. It sleeps in magma underground and is said to make volcanoes erupt on awakening."
  s.generation    3
  s.flags         :Legendary
end

GameData::Species.define :HIPPOPOTAS do |s|
  s.name          "Hippopotas"
  s.types         :GROUND
  s.base_stats    hp: 68, attack: 72, defense: 78, speed: 32, sp_atk: 38, sp_def: 42
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      66
  s.catch_rate    140
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :SANDSTREAM
  s.hidden_abilities :SANDFORCE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :SANDATTACK
    m.at 4, :BITE
    m.at 8, :YAWN
    m.at 12, :SANDTOMB
    m.at 16, :DIG
    m.at 20, :CRUNCH
    m.at 24, :SANDSTORM
    m.at 28, :TAKEDOWN
    m.at 32, :ROAR
    m.at 36, :REST
    m.at 40, :EARTHQUAKE
    m.at 44, :DOUBLEEDGE
    m.at 48, :FISSURE
    m.at 52, :SLACKOFF
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DIG, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :HEADBUTT, :HIDDENPOWER, :HIGHHORSEPOWER, :IRONTAIL, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :REST, :RETURN, :REVENGE, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :WATERPULSE, :WEATHERBALL, :TERABLAST
  s.egg_moves     :BODYSLAM, :CURSE, :REVENGE, :SANDTOMB, :SLACKOFF, :SPITUP, :STOCKPILE, :SWALLOW, :WHIRLWIND
  s.egg_groups    :Field
  s.hatch_steps   7680
  s.height        0.8
  s.weight        49.5
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Hippo"
  s.pokedex_entry "It lives in arid places. Instead of perspiration, it expels grainy sand from its body."
  s.generation    4
  s.evolves_into  :HIPPOWDON, :Level, 34
  s.flags         :HasGenderedSprites
end

GameData::Species.define :HIPPOWDON do |s|
  s.name          "Hippowdon"
  s.types         :GROUND
  s.base_stats    hp: 108, attack: 112, defense: 118, speed: 47, sp_atk: 68, sp_def: 72
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      184
  s.catch_rate    60
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SANDSTREAM
  s.hidden_abilities :SANDFORCE
  s.moves do |m|
    m.at 1, :ICEFANG
    m.at 1, :FIREFANG
    m.at 1, :THUNDERFANG
    m.at 1, :TACKLE
    m.at 1, :SANDATTACK
    m.at 1, :BITE
    m.at 1, :YAWN
    m.at 12, :SANDTOMB
    m.at 16, :DIG
    m.at 20, :CRUNCH
    m.at 24, :SANDSTORM
    m.at 28, :TAKEDOWN
    m.at 32, :ROAR
    m.at 38, :REST
    m.at 44, :EARTHQUAKE
    m.at 50, :DOUBLEEDGE
    m.at 56, :FISSURE
    m.at 62, :SLACKOFF
  end
  s.tutor_moves   :AMNESIA, :ATTRACT, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :DIG, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREFANG, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEFANG, :IRONHEAD, :IRONTAIL, :MIMIC, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :REST, :RETURN, :REVENGE, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THUNDERFANG, :WATERPULSE, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   7680
  s.height        2.0
  s.weight        300.0
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Heavyweight"
  s.pokedex_entry "It blasts internally stored sand from ports on its body to create a towering twister for attack."
  s.generation    4
  s.flags         :HasGenderedSprites
end

GameData::Species.define :RHYPERIOR do |s|
  s.name          "Rhyperior"
  s.types         :GROUND, :ROCK
  s.base_stats    hp: 115, attack: 140, defense: 130, speed: 40, sp_atk: 55, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      268
  s.catch_rate    30
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :LIGHTNINGROD, :SOLIDROCK
  s.hidden_abilities :RECKLESS
  s.moves do |m|
    m.at 1, :HAMMERARM
    m.at 1, :TACKLE
    m.at 1, :TAILWHIP
    m.at 1, :SMACKDOWN
    m.at 1, :BULLDOZE
    m.at 15, :HORNATTACK
    m.at 20, :SCARYFACE
    m.at 25, :STOMP
    m.at 30, :ROCKBLAST
    m.at 35, :DRILLRUN
    m.at 40, :TAKEDOWN
    m.at 47, :EARTHQUAKE
    m.at 54, :STONEEDGE
    m.at 61, :MEGAHORN
    m.at 68, :HORNDRILL
    m.at 75, :ROCKWRECKER
  end
  s.tutor_moves   :ANCIENTPOWER, :AQUATAIL, :ATTRACT, :AVALANCHE, :BLIZZARD, :BLOCK, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CRUNCH, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :DRAGONTAIL, :DRILLRUN, :DYNAMICPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPUNCH, :FLAMETHROWER, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HEATCRASH, :HEAVYSLAM, :HELPINGHAND, :HIDDENPOWER, :HIGHHORSEPOWER, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICEPUNCH, :ICYWIND, :INCINERATE, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :MEGAHORN, :MEGAKICK, :MEGAPUNCH, :METEORBEAM, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PAYDAY, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROAR, :ROCKBLAST, :ROCKCLIMB, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SMARTSTRIKE, :SNORE, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERFANG, :THUNDERPUNCH, :UPROAR, :WHIRLPOOL, :TERABLAST
  s.egg_groups    :Monster, :Field
  s.hatch_steps   5120
  s.height        2.4
  s.weight        282.8
  s.color         :Gray
  s.shape         :BipedalTail
  s.category      "Drill"
  s.pokedex_entry "It puts rocks in holes in its palms and uses its muscles to shoot them. Geodude are shot at rare times."
  s.generation    4
  s.flags         :HasGenderedSprites
end

GameData::Species.define :GLISCOR do |s|
  s.name          "Gliscor"
  s.types         :GROUND, :FLYING
  s.base_stats    hp: 75, attack: 95, defense: 125, speed: 95, sp_atk: 45, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      179
  s.catch_rate    30
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :HYPERCUTTER, :SANDVEIL
  s.hidden_abilities :POISONHEAL
  s.moves do |m|
    m.at 1, :GUILLOTINE
    m.at 1, :THUNDERFANG
    m.at 1, :ICEFANG
    m.at 1, :FIREFANG
    m.at 1, :POISONJAB
    m.at 1, :SANDATTACK
    m.at 1, :HARDEN
    m.at 1, :KNOCKOFF
    m.at 1, :POISONSTING
    m.at 1, :NIGHTSLASH
    m.at 1, :SLASH
    m.at 4, :SANDATTACK
    m.at 7, :HARDEN
    m.at 10, :KNOCKOFF
    m.at 13, :QUICKATTACK
    m.at 16, :FURYCUTTER
    m.at 19, :MUDSLAP
    m.at 22, :ACROBATICS
    m.at 27, :NIGHTSLASH
    m.at 30, :UTURN
    m.at 35, :SCREECH
    m.at 40, :XSCISSOR
    m.at 45, :EARTHQUAKE
    m.at 50, :SWORDSDANCE
    m.at 55, :GUILLOTINE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AQUATAIL, :ATTRACT, :BRICKBREAK, :BRUTALSWING, :BUGBITE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DARKPULSE, :DEFOG, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONTAIL, :KNOCKOFF, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SANDSTORM, :SECRETPOWER, :SKYATTACK, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :STEALTHROCK, :STEELWING, :STONEEDGE, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :TAUNT, :THIEF, :THROATCHOP, :TORMENT, :UTURN, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        2.0
  s.weight        42.5
  s.color         :Purple
  s.shape         :Winged
  s.category      "Fang Scorpion"
  s.pokedex_entry "It observes prey while hanging inverted from branches. When the chance presents itself, it swoops!"
  s.generation    4
end

GameData::Species.define :DRILBUR do |s|
  s.name          "Drilbur"
  s.types         :GROUND
  s.base_stats    hp: 60, attack: 85, defense: 40, speed: 68, sp_atk: 30, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      66
  s.catch_rate    120
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :SANDRUSH, :SANDFORCE
  s.hidden_abilities :MOLDBREAKER
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :RAPIDSPIN
    m.at 4, :SCRATCH
    m.at 8, :HONECLAWS
    m.at 12, :FURYSWIPES
    m.at 16, :METALCLAW
    m.at 20, :SANDSTORM
    m.at 24, :CRUSHCLAW
    m.at 28, :ROCKSLIDE
    m.at 32, :DIG
    m.at 36, :SWORDSDANCE
    m.at 40, :DRILLRUN
    m.at 44, :EARTHQUAKE
    m.at 48, :FISSURE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BRICKBREAK, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :DRILLRUN, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FLING, :FRUSTRATION, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :IRONDEFENSE, :MIMIC, :MUDSHOT, :NATURALGIFT, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :STEALTHROCK, :STRENGTH, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_moves     :METALSOUND, :SLASH, :SUBMISSION
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.3
  s.weight        8.5
  s.color         :Gray
  s.shape         :BipedalTail
  s.category      "Mole"
  s.pokedex_entry "It makes its way swiftly through the soil by putting both claws together and rotating at high speed."
  s.generation    5
  s.evolves_into  :EXCADRILL, :Level, 31
end

GameData::Species.define :EXCADRILL do |s|
  s.name          "Excadrill"
  s.types         :GROUND, :STEEL
  s.base_stats    hp: 110, attack: 135, defense: 60, speed: 88, sp_atk: 50, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      178
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SANDRUSH, :SANDFORCE
  s.hidden_abilities :MOLDBREAKER
  s.moves do |m|
    m.at 0, :HORNDRILL
    m.at 1, :MUDSLAP
    m.at 1, :RAPIDSPIN
    m.at 1, :SCRATCH
    m.at 1, :HONECLAWS
    m.at 12, :FURYSWIPES
    m.at 16, :METALCLAW
    m.at 20, :SANDSTORM
    m.at 24, :CRUSHCLAW
    m.at 28, :ROCKSLIDE
    m.at 34, :DIG
    m.at 40, :SWORDSDANCE
    m.at 46, :DRILLRUN
    m.at 52, :EARTHQUAKE
    m.at 58, :FISSURE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :DRILLRUN, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :MAGNETRISE, :MIMIC, :MUDSHOT, :NATURALGIFT, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SMARTSTRIKE, :SNORE, :STEALTHROCK, :STEELBEAM, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.7
  s.weight        40.4
  s.color         :Gray
  s.shape         :Bipedal
  s.category      "Subterrene"
  s.pokedex_entry "More than 300 feet below the surface, they build mazelike nests. Their activity can be destructive to subway tunnels."
  s.generation    5
end

GameData::Species.define :SANDILE do |s|
  s.name          "Sandile"
  s.types         :GROUND, :DARK
  s.base_stats    hp: 50, attack: 72, defense: 35, speed: 65, sp_atk: 35, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      58
  s.catch_rate    180
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :INTIMIDATE, :MOXIE
  s.hidden_abilities :ANGERPOINT
  s.moves do |m|
    m.at 1, :POWERTRIP
    m.at 1, :LEER
    m.at 3, :SANDATTACK
    m.at 6, :HONECLAWS
    m.at 9, :SANDTOMB
    m.at 12, :SCARYFACE
    m.at 15, :BITE
    m.at 18, :TORMENT
    m.at 21, :DIG
    m.at 24, :SWAGGER
    m.at 27, :CRUNCH
    m.at 30, :SANDSTORM
    m.at 33, :FOULPLAY
    m.at 36, :EARTHQUAKE
    m.at 39, :THRASH
  end
  s.tutor_moves   :AQUATAIL, :ASSURANCE, :ATTRACT, :BEATUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :EMBARGO, :ENDURE, :FACADE, :FIREFANG, :FOCUSENERGY, :FOULPLAY, :FRUSTRATION, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :IRONTAIL, :LASHOUT, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNATCH, :SNORE, :SPITE, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :TAUNT, :THIEF, :THUNDERFANG, :TORMENT, :TOXIC, :UPROAR, :TERABLAST
  s.egg_moves     :AQUATAIL, :COUNTER, :DOUBLEEDGE, :SPITE
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.7
  s.weight        15.2
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Desert Croc"
  s.pokedex_entry "It moves along below the sand's surface, except for its nose and eyes. A dark membrane shields its eyes from the sun."
  s.generation    5
  s.evolves_into  :KROKOROK, :Level, 29
  s.wild_item_uncommon :BLACKGLASSES
end

GameData::Species.define :KROKOROK do |s|
  s.name          "Krokorok"
  s.types         :GROUND, :DARK
  s.base_stats    hp: 60, attack: 82, defense: 45, speed: 74, sp_atk: 45, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      123
  s.catch_rate    90
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :INTIMIDATE, :MOXIE
  s.hidden_abilities :ANGERPOINT
  s.moves do |m|
    m.at 1, :POWERTRIP
    m.at 1, :LEER
    m.at 1, :SANDATTACK
    m.at 1, :HONECLAWS
    m.at 9, :SANDTOMB
    m.at 12, :SCARYFACE
    m.at 15, :BITE
    m.at 18, :TORMENT
    m.at 21, :DIG
    m.at 24, :SWAGGER
    m.at 27, :CRUNCH
    m.at 32, :SANDSTORM
    m.at 35, :FOULPLAY
    m.at 42, :EARTHQUAKE
    m.at 47, :THRASH
  end
  s.tutor_moves   :AQUATAIL, :ASSURANCE, :ATTRACT, :BEATUP, :BRICKBREAK, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :EMBARGO, :ENDURE, :FACADE, :FIREFANG, :FLING, :FOCUSENERGY, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GRASSKNOT, :HIDDENPOWER, :HONECLAWS, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNATCH, :SNORE, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SWAGGER, :TAUNT, :THIEF, :THUNDERFANG, :TORMENT, :TOXIC, :UPROAR, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        33.4
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Desert Croc"
  s.pokedex_entry "The special membrane covering its eyes can sense the heat of objects, so it can see its surroundings, even in darkness."
  s.generation    5
  s.evolves_into  :KROOKODILE, :Level, 40
  s.wild_item_uncommon :BLACKGLASSES
end

GameData::Species.define :KROOKODILE do |s|
  s.name          "Krookodile"
  s.types         :GROUND, :DARK
  s.base_stats    hp: 95, attack: 117, defense: 80, speed: 92, sp_atk: 65, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      260
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :INTIMIDATE, :MOXIE
  s.hidden_abilities :ANGERPOINT
  s.moves do |m|
    m.at 1, :POWERTRIP
    m.at 1, :LEER
    m.at 1, :SANDATTACK
    m.at 1, :HONECLAWS
    m.at 9, :SANDTOMB
    m.at 12, :SCARYFACE
    m.at 15, :BITE
    m.at 18, :TORMENT
    m.at 21, :DIG
    m.at 24, :SWAGGER
    m.at 27, :CRUNCH
    m.at 32, :SANDSTORM
    m.at 35, :FOULPLAY
    m.at 44, :EARTHQUAKE
    m.at 51, :THRASH
    m.at 58, :OUTRAGE
  end
  s.tutor_moves   :AERIALACE, :AQUATAIL, :ASSURANCE, :ATTRACT, :BEATUP, :BLOCK, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CRUNCH, :CUT, :DARKESTLARIAT, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :EARTHPOWER, :EARTHQUAKE, :EMBARGO, :ENDURE, :FACADE, :FIREFANG, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HIGHHORSEPOWER, :HONECLAWS, :HYPERBEAM, :INCINERATE, :IRONTAIL, :KNOCKOFF, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POWERUPPUNCH, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCALESHOT, :SCARYFACE, :SCORCHINGSANDS, :SECRETPOWER, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SMACKDOWN, :SNARL, :SNATCH, :SNORE, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :THROATCHOP, :THUNDERFANG, :TORMENT, :TOXIC, :UPROAR, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.5
  s.weight        96.3
  s.color         :Red
  s.shape         :BipedalTail
  s.category      "Intimidation"
  s.pokedex_entry "It can expand the focus of its eyes, enabling it to see objects in the far distance as if it were using binoculars."
  s.generation    5
  s.wild_item_common   :BLACKGLASSES
end

GameData::Species.define :STUNFISK do |s|
  s.name          "Stunfisk"
  s.types         :GROUND, :ELECTRIC
  s.base_stats    hp: 109, attack: 66, defense: 84, speed: 32, sp_atk: 81, sp_def: 99
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      165
  s.catch_rate    75
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :STATIC, :LIMBER
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 1, :THUNDERSHOCK
    m.at 5, :ENDURE
    m.at 10, :MUDSHOT
    m.at 15, :REVENGE
    m.at 20, :CHARGE
    m.at 25, :SUCKERPUNCH
    m.at 30, :ELECTRICTERRAIN
    m.at 35, :BOUNCE
    m.at 40, :MUDDYWATER
    m.at 45, :DISCHARGE
    m.at 50, :FLAIL
    m.at 55, :FISSURE
  end
  s.tutor_moves   :AQUATAIL, :ATTRACT, :BOUNCE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :EERIEIMPULSE, :ELECTRICTERRAIN, :ELECTROWEB, :ENDEAVOR, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :HIDDENPOWER, :INFESTATION, :LASHOUT, :MAGNETRISE, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVENGE, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SCALD, :SECRETPOWER, :SHOCKWAVE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNORE, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SURF, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :UPROAR, :WATERPULSE, :TERABLAST
  s.egg_moves     :ASTONISH, :CURSE, :PAINSPLIT, :REFLECTTYPE, :SPARK, :SPITE, :YAWN
  s.egg_groups    :Water1, :Amorphous
  s.hatch_steps   5120
  s.height        0.7
  s.weight        11.0
  s.color         :Brown
  s.shape         :Finned
  s.category      "Trap"
  s.pokedex_entry "It conceals itself in the mud of the seashore. Then it waits. When prey touch it, it delivers a jolt of energy."
  s.generation    5
  s.wild_item_uncommon :SOFTSAND
end

GameData::Species.define :GOLETT do |s|
  s.name          "Golett"
  s.types         :GROUND, :GHOST
  s.base_stats    hp: 59, attack: 74, defense: 50, speed: 35, sp_atk: 35, sp_def: 50
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :IRONFIST, :KLUTZ
  s.hidden_abilities :NOGUARD
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :ASTONISH
    m.at 4, :DEFENSECURL
    m.at 8, :POUND
    m.at 12, :SHADOWPUNCH
    m.at 16, :CURSE
    m.at 20, :NIGHTSHADE
    m.at 24, :STOMPINGTANTRUM
    m.at 28, :IRONDEFENSE
    m.at 32, :MEGAPUNCH
    m.at 36, :SHADOWBALL
    m.at 40, :HEAVYSLAM
    m.at 44, :PHANTOMFORCE
    m.at 48, :HAMMERARM
    m.at 52, :EARTHQUAKE
    m.at 56, :DYNAMICPUNCH
  end
  s.tutor_moves   :ALLYSWITCH, :BLOCK, :BRICKBREAK, :BULLDOZE, :CONFIDE, :DIG, :DOUBLETEAM, :DRAINPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :GRAVITY, :GYROBALL, :HEAVYSLAM, :HELPINGHAND, :HIDDENPOWER, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IMPRISON, :IRONDEFENSE, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PHANTOMFORCE, :POLTERGEIST, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SCORCHINGSANDS, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TELEKINESIS, :THIEF, :THUNDERPUNCH, :TOXIC, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   6400
  s.height        1.0
  s.weight        92.0
  s.color         :Green
  s.shape         :Bipedal
  s.category      "Automaton"
  s.pokedex_entry "These Pokémon are thought to have been created by the science of an ancient and mysterious civilization."
  s.generation    5
  s.evolves_into  :GOLURK, :Level, 43
  s.wild_item_uncommon :LIGHTCLAY
end

GameData::Species.define :GOLURK do |s|
  s.name          "Golurk"
  s.types         :GROUND, :GHOST
  s.base_stats    hp: 89, attack: 124, defense: 80, speed: 55, sp_atk: 55, sp_def: 80
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      169
  s.catch_rate    90
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :IRONFIST, :KLUTZ
  s.hidden_abilities :NOGUARD
  s.moves do |m|
    m.at 1, :HIGHHORSEPOWER
    m.at 1, :FOCUSPUNCH
    m.at 1, :MUDSLAP
    m.at 1, :ASTONISH
    m.at 1, :DEFENSECURL
    m.at 1, :POUND
    m.at 12, :SHADOWPUNCH
    m.at 16, :CURSE
    m.at 20, :NIGHTSHADE
    m.at 24, :STOMPINGTANTRUM
    m.at 28, :IRONDEFENSE
    m.at 32, :MEGAPUNCH
    m.at 36, :SHADOWBALL
    m.at 40, :HEAVYSLAM
    m.at 46, :PHANTOMFORCE
    m.at 52, :HAMMERARM
    m.at 58, :EARTHQUAKE
    m.at 64, :DYNAMICPUNCH
  end
  s.tutor_moves   :ALLYSWITCH, :BLOCK, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CHARGEBEAM, :CLOSECOMBAT, :CONFIDE, :DARKESTLARIAT, :DIG, :DOUBLETEAM, :DRAINPUNCH, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLASHCANNON, :FLING, :FLY, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :GYROBALL, :HEATCRASH, :HEAVYSLAM, :HELPINGHAND, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IMPRISON, :IRONDEFENSE, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PHANTOMFORCE, :POLTERGEIST, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SAFEGUARD, :SCORCHINGSANDS, :SECRETPOWER, :SELFDESTRUCT, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TELEKINESIS, :THIEF, :THUNDERBOLT, :THUNDERPUNCH, :TOXIC, :TRICK, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   6400
  s.height        2.8
  s.weight        330.0
  s.color         :Green
  s.shape         :Bipedal
  s.category      "Automaton"
  s.pokedex_entry "It is said that Golurk were ordered to protect people and Pokémon by the ancient people who made them."
  s.generation    5
  s.wild_item_uncommon :LIGHTCLAY
end

GameData::Species.define :LANDORUS do |s|
  s.name          "Landorus"
  s.types         :GROUND, :FLYING
  s.base_stats    hp: 89, attack: 125, defense: 90, speed: 101, sp_atk: 115, sp_def: 80
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     90
  s.evs           sp_attack: 3
  s.abilities     :SANDFORCE
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :SANDTOMB
    m.at 1, :ROCKTHROW
    m.at 5, :LEER
    m.at 10, :BLOCK
    m.at 15, :BULLDOZE
    m.at 20, :ROCKTOMB
    m.at 25, :SWORDSDANCE
    m.at 30, :IMPRISON
    m.at 35, :ROCKSLIDE
    m.at 40, :EARTHPOWER
    m.at 45, :EXTRASENSORY
    m.at 50, :STONEEDGE
    m.at 55, :HAMMERARM
    m.at 60, :SANDSTORM
    m.at 65, :EARTHQUAKE
    m.at 70, :OUTRAGE
    m.at 75, :FISSURE
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DEFOG, :DIG, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FLING, :FLY, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :IRONTAIL, :KNOCKOFF, :MIMIC, :MUDSHOT, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SECRETPOWER, :SELFDESTRUCT, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :TOXIC, :UTURN, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.5
  s.weight        68.0
  s.color         :Brown
  s.shape         :HeadArms
  s.category      "Abundance"
  s.pokedex_entry "The energy that comes pouring from its tail increases the nutrition in the soil, making crops grow to great size."
  s.generation    5
  s.flags         :Legendary
end

GameData::Species.define :MUDBRAY do |s|
  s.name          "Mudbray"
  s.types         :GROUND
  s.base_stats    hp: 70, attack: 100, defense: 70, speed: 45, sp_atk: 45, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      77
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :OWNTEMPO, :STAMINA
  s.hidden_abilities :INNERFOCUS
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :ROCKSMASH
    m.at 4, :IRONDEFENSE
    m.at 8, :DOUBLEKICK
    m.at 12, :BULLDOZE
    m.at 16, :STOMP
    m.at 20, :STRENGTH
    m.at 24, :COUNTER
    m.at 28, :HIGHHORSEPOWER
    m.at 32, :HEAVYSLAM
    m.at 36, :EARTHQUAKE
    m.at 40, :MEGAKICK
    m.at 44, :SUPERPOWER
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :IRONDEFENSE, :IRONHEAD, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETURN, :ROAR, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TOXIC, :TERABLAST
  s.egg_moves     :DOUBLEEDGE, :FISSURE, :ROAR, :SMACKDOWN
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        110.0
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Donkey"
  s.pokedex_entry "It loves playing in the mud. If it isn't showered with mud on a daily basis, it gets stressed out and stops listening to its Trainer."
  s.generation    7
  s.evolves_into  :MUDSDALE, :Level, 30
  s.wild_item_uncommon :LIGHTCLAY
end

GameData::Species.define :MUDSDALE do |s|
  s.name          "Mudsdale"
  s.types         :GROUND
  s.base_stats    hp: 100, attack: 125, defense: 100, speed: 35, sp_atk: 55, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :OWNTEMPO, :STAMINA
  s.hidden_abilities :INNERFOCUS
  s.moves do |m|
    m.at 1, :MUDSLAP
    m.at 1, :ROCKSMASH
    m.at 1, :IRONDEFENSE
    m.at 1, :DOUBLEKICK
    m.at 12, :BULLDOZE
    m.at 16, :STOMP
    m.at 20, :STRENGTH
    m.at 24, :COUNTER
    m.at 28, :HIGHHORSEPOWER
    m.at 34, :HEAVYSLAM
    m.at 40, :EARTHQUAKE
    m.at 46, :MEGAKICK
    m.at 52, :SUPERPOWER
  end
  s.tutor_moves   :ATTRACT, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HEAVYSLAM, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MIMIC, :MUDSHOT, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETURN, :REVENGE, :ROAR, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :STEALTHROCK, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TOXIC, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        2.5
  s.weight        920.0
  s.color         :Brown
  s.shape         :Quadruped
  s.category      "Draft Horse"
  s.pokedex_entry "It remains calm and unmoving no matter the situation. It mixes dirt with the saliva in its mouth to make a special kind of mud."
  s.generation    7
  s.wild_item_uncommon :LIGHTCLAY
end

GameData::Species.define :SILICOBRA do |s|
  s.name          "Silicobra"
  s.types         :GROUND
  s.base_stats    hp: 52, attack: 57, defense: 75, speed: 46, sp_atk: 35, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      63
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :SANDSPIT, :SHEDSKIN
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :WRAP
    m.at 1, :SANDATTACK
    m.at 5, :MINIMIZE
    m.at 10, :BRUTALSWING
    m.at 15, :BULLDOZE
    m.at 20, :HEADBUTT
    m.at 25, :GLARE
    m.at 30, :DIG
    m.at 35, :SANDSTORM
    m.at 40, :SLAM
    m.at 45, :COIL
    m.at 50, :SANDTOMB
  end
  s.tutor_moves   :ATTRACT, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :DRILLRUN, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :MIMIC, :MUDSHOT, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROUND, :SANDSTORM, :SANDTOMB, :SCALESHOT, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :TOXIC, :TERABLAST
  s.egg_moves     :BELCH, :DRAGONRUSH, :LASTRESORT, :MUDSLAP, :POISONTAIL
  s.egg_groups    :Field, :Dragon
  s.hatch_steps   5120
  s.height        2.2
  s.weight        7.6
  s.color         :Green
  s.shape         :Serpentine
  s.category      "Sand Snake"
  s.pokedex_entry "It spews sand from its nostrils. While the enemy is blinded, it burrows into the ground to hide."
  s.generation    8
  s.evolves_into  :SANDACONDA, :Level, 36
end

GameData::Species.define :SANDACONDA do |s|
  s.name          "Sandaconda"
  s.types         :GROUND
  s.base_stats    hp: 72, attack: 107, defense: 125, speed: 71, sp_atk: 65, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      179
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SANDSPIT, :SHEDSKIN
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :SKULLBASH
    m.at 1, :WRAP
    m.at 1, :SANDATTACK
    m.at 1, :MINIMIZE
    m.at 1, :BRUTALSWING
    m.at 15, :BULLDOZE
    m.at 20, :HEADBUTT
    m.at 25, :GLARE
    m.at 30, :DIG
    m.at 35, :SANDSTORM
    m.at 42, :SLAM
    m.at 49, :COIL
    m.at 51, :SANDTOMB
  end
  s.tutor_moves   :ATTRACT, :BODYPRESS, :BRUTALSWING, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :DRILLRUN, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREFANG, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HIGHHORSEPOWER, :HURRICANE, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :MIMIC, :MUDSHOT, :NATURALGIFT, :OUTRAGE, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SCALESHOT, :SCORCHINGSANDS, :SCREECH, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SNORE, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :TOXIC, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field, :Dragon
  s.hatch_steps   5120
  s.height        3.8
  s.weight        65.5
  s.color         :Green
  s.shape         :Serpentine
  s.category      "Sand Snake"
  s.pokedex_entry "Its unique style of coiling allows it to blast sand out of its sand sac more efficiently."
  s.generation    8
end

GameData::Species.define :RUNERIGUS do |s|
  s.name          "Runerigus"
  s.types         :GROUND, :GHOST
  s.base_stats    hp: 58, attack: 95, defense: 145, speed: 30, sp_atk: 50, sp_def: 105
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      169
  s.catch_rate    90
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :WANDERINGSPIRIT
  s.moves do |m|
    m.at 0, :SHADOWCLAW
    m.at 1, :SCARYFACE
    m.at 1, :ASTONISH
    m.at 1, :PROTECT
    m.at 1, :HAZE
    m.at 1, :NIGHTSHADE
    m.at 12, :DISABLE
    m.at 16, :BRUTALSWING
    m.at 20, :CRAFTYSHIELD
    m.at 24, :HEX
    m.at 28, :MEANLOOK
    m.at 32, :SLAM
    m.at 38, :CURSE
    m.at 44, :SHADOWBALL
    m.at 50, :EARTHQUAKE
    m.at 56, :POWERSPLIT
    m.at 56, :GUARDSPLIT
    m.at 62, :DESTINYBOND
  end
  s.tutor_moves   :ALLYSWITCH, :AMNESIA, :ATTRACT, :BODYPRESS, :BRUTALSWING, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DARKPULSE, :DOUBLEEDGE, :DOUBLETEAM, :DRAGONPULSE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUARDSWAP, :HEX, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :IRONDEFENSE, :MIMIC, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :PHANTOMFORCE, :POLTERGEIST, :POWERSWAP, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETURN, :REVENGE, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SCARYFACE, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SKILLSWAP, :SLEEPTALK, :SNORE, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SWAGGER, :TAUNT, :THIEF, :TOXIC, :TOXICSPIKES, :TRICK, :TRICKROOM, :WILLOWISP, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :MEMENTO
  s.egg_groups    :Mineral, :Amorphous
  s.hatch_steps   6400
  s.height        1.6
  s.weight        66.6
  s.color         :Gray
  s.shape         :HeadBase
  s.category      "Grudge"
  s.pokedex_entry "A powerful curse was woven into an ancient painting. After absorbing the spirit of a Yamask, the painting began to move."
  s.generation    8
  s.flags         :DefaultForm_1, :InheritFormWithEverStone
end

