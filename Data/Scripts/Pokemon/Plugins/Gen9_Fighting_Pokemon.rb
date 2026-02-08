#===============================================================================
# Shattered Crowns - Gen9 fighting Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :SNEASLER do |s|
  s.name          "Sneasler"
  s.types         :FIGHTING, :POISON
  s.base_stats    hp: 80, attack: 130, defense: 60, speed: 120, sp_atk: 40, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      102
  s.catch_rate    20
  s.happiness     35
  s.evs           attack: 2
  s.abilities     :PRESSURE, :UNBURDEN
  s.hidden_abilities :POISONTOUCH
  s.moves do |m|
    m.at 0, :DIRECLAW
    m.at 1, :FLING
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :ROCKSMASH
    m.at 6, :TAUNT
    m.at 12, :QUICKATTACK
    m.at 18, :METALCLAW
    m.at 24, :POISONJAB
    m.at 30, :BRICKBREAK
    m.at 36, :HONECLAWS
    m.at 42, :SLASH
    m.at 48, :AGILITY
    m.at 54, :SCREECH
    m.at 60, :CLOSECOMBAT
  end
  s.tutor_moves   :ACIDSPRAY, :ACROBATICS, :AERIALACE, :AGILITY, :BRICKBREAK, :BULKUP, :CALMMIND, :CLOSECOMBAT, :COACHING, :DIG, :ENDURE, :FACADE, :FALSESWIPE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HYPERBEAM, :LASHOUT, :LOWKICK, :LOWSWEEP, :METALCLAW, :NASTYPLOT, :POISONJAB, :POISONTAIL, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :TOXIC, :TOXICSPIKES, :TRAILBLAZE, :UPPERHAND, :UTURN, :VACUUMWAVE, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5355
  s.height        1.3
  s.weight        43.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Free Climb"
  s.pokedex_entry "Because of Sneasler’s virulent poison and daunting physical prowess, no other species could hope to best it on frozen highlands. Preferring solitude, this species does not form packs."
  s.generation    8
  s.flags         :DefaultForm_1, :InheritFormWithEverStone
end

GameData::Species.define :ANNIHILAPE do |s|
  s.name          "Annihilape"
  s.types         :FIGHTING, :GHOST
  s.base_stats    hp: 110, attack: 115, defense: 80, speed: 90, sp_atk: 50, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      268
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :VITALSPIRIT, :INNERFOCUS
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 0, :SHADOWPUNCH
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :COUNTER
    m.at 1, :FOCUSENERGY
    m.at 1, :FLING
    m.at 5, :FURYSWIPES
    m.at 8, :LOWKICK
    m.at 12, :SEISMICTOSS
    m.at 17, :SWAGGER
    m.at 22, :CROSSCHOP
    m.at 26, :ASSURANCE
    m.at 30, :THRASH
    m.at 35, :RAGEFIST
    m.at 39, :CLOSECOMBAT
    m.at 44, :SCREECH
    m.at 48, :STOMPINGTANTRUM
    m.at 53, :OUTRAGE
    m.at 57, :FINALGAMBIT
  end
  s.tutor_moves   :ACROBATICS, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CLOSECOMBAT, :COACHING, :CURSE, :DIG, :DOUBLEEDGE, :DRAINPUNCH, :EARTHQUAKE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :GIGAIMPACT, :GUNKSHOT, :HELPINGHAND, :HYPERBEAM, :ICEPUNCH, :LASHOUT, :LOWKICK, :LOWSWEEP, :METRONOME, :NIGHTSHADE, :OUTRAGE, :OVERHEAT, :PHANTOMFORCE, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :SCARYFACE, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SMACKDOWN, :SPITE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :UPROAR, :UTURN, :VACUUMWAVE, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.2
  s.weight        56.0
  s.color         :Gray
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Rage Monkey"
  s.pokedex_entry "When its anger rose beyond a critical point, this Pokémon gained power that is unfettered by the limits of its physical body."
  s.generation    9
end

GameData::Species.define :IRONHANDS do |s|
  s.name          "Iron Hands"
  s.types         :FIGHTING, :ELECTRIC
  s.base_stats    hp: 154, attack: 140, defense: 108, speed: 50, sp_atk: 50, sp_def: 68
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    50
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :QUARKDRIVE
  s.moves do |m|
    m.at -1, :ELECTRICTERRAIN
    m.at 1, :TACKLE
    m.at 1, :FOCUSENERGY
    m.at 1, :ARMTHRUST
    m.at 1, :SANDATTACK
    m.at 7, :FAKEOUT
    m.at 14, :WHIRLWIND
    m.at 21, :THUNDERPUNCH
    m.at 28, :SLAM
    m.at 35, :FORCEPALM
    m.at 42, :SEISMICTOSS
    m.at 49, :CHARGE
    m.at 56, :WILDCHARGE
    m.at 63, :CLOSECOMBAT
    m.at 70, :DETECT
    m.at 77, :HEAVYSLAM
    m.at 84, :BELLYDRUM
    m.at 91, :FOCUSPUNCH
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CHARGE, :CLOSECOMBAT, :DOUBLEEDGE, :DRAINPUNCH, :EARTHQUAKE, :ELECTRICTERRAIN, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :GIGAIMPACT, :HARDPRESS, :HEAVYSLAM, :HYPERBEAM, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :LOWKICK, :LOWSWEEP, :METRONOME, :PLAYROUGH, :PROTECT, :REST, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :SCARYFACE, :SLEEPTALK, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERCELLSLAM, :SWORDSDANCE, :TAKEDOWN, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        1.8
  s.weight        380.7
  s.color         :Gray
  s.shape         :Bipedal
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "It is very similar to a cyborg covered exclusively by a paranormal magazine. The cyborg was said to be the modified form of a certain athlete."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

GameData::Species.define :KORAIDON do |s|
  s.name          "Koraidon"
  s.types         :FIGHTING, :DRAGON
  s.base_stats    hp: 100, attack: 135, defense: 115, speed: 135, sp_atk: 85, sp_def: 100
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      335
  s.catch_rate    3
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :ORICHALCUMPULSE
  s.moves do |m|
    m.at 1, :BREAKINGSWIPE
    m.at 1, :SUNNYDAY
    m.at 7, :ROCKSMASH
    m.at 14, :ANCIENTPOWER
    m.at 21, :DRAINPUNCH
    m.at 28, :BRICKBREAK
    m.at 35, :AGILITY
    m.at 42, :DRAGONCLAW
    m.at 49, :FLAMETHROWER
    m.at 56, :COLLISIONCOURSE
    m.at 63, :SCREECH
    m.at 70, :COUNTER
    m.at 77, :OUTRAGE
    m.at 84, :CLOSECOMBAT
    m.at 91, :FLAREBLITZ
    m.at 98, :GIGAIMPACT
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BULKUP, :BULLDOZE, :CLOSECOMBAT, :CRUNCH, :DIG, :DOUBLEEDGE, :DRACOMETEOR, :DRAGONCHEER, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :DRAINPUNCH, :DUALWINGBEAT, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FOCUSBLAST, :FOCUSPUNCH, :GIGAIMPACT, :HEATCRASH, :HEATWAVE, :HEAVYSLAM, :HELPINGHAND, :HYPERBEAM, :ICEFANG, :IRONHEAD, :LOWKICK, :LOWSWEEP, :METEORBEAM, :MUDSHOT, :MUDSLAP, :OUTRAGE, :OVERHEAT, :PROTECT, :REST, :REVERSAL, :ROAR, :SCALESHOT, :SCARYFACE, :SHADOWCLAW, :SLEEPTALK, :SNARL, :SOLARBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :TEMPERFLARE, :THUNDERFANG, :UPROAR, :UTURN, :WILDCHARGE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        2.5
  s.weight        303.0
  s.color         :Red
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "This seems to be the Winged King mentioned in an old expedition journal. It was said to have split the land with its bare fists."
  s.generation    9
  s.flags         :Paradox, :Legendary
end

