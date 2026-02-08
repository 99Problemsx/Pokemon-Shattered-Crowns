#===============================================================================
# Shattered Crowns - Fighting Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :MANKEY do |s|
  s.name          "Mankey"
  s.types         :FIGHTING
  s.base_stats    hp: 40, attack: 80, defense: 35, speed: 70, sp_atk: 35, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :VITALSPIRIT, :ANGERPOINT
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 1, :COVET
    m.at 1, :SCRATCH
    m.at 1, :LOWKICK
    m.at 1, :LEER
    m.at 1, :FOCUSENERGY
    m.at 5, :FURYSWIPES
    m.at 8, :MUDSLAP
    m.at 12, :SEISMICTOSS
    m.at 15, :RETALIATE
    m.at 19, :SWAGGER
    m.at 22, :CROSSCHOP
    m.at 26, :ASSURANCE
    m.at 29, :SKULLBASH
    m.at 33, :THRASH
    m.at 36, :CLOSECOMBAT
    m.at 40, :SCREECH
    m.at 43, :STOMPINGTANTRUM
    m.at 47, :OUTRAGE
    m.at 50, :FINALGAMBIT
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GUNKSHOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :ICEPUNCH, :IRONTAIL, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :SPITE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :UPROAR, :UTURN, :VACUUMWAVE, :WORKUP, :TERABLAST
  s.egg_moves     :BEATUP, :CLOSECOMBAT, :COUNTER, :ENCORE, :NIGHTSLASH, :REVENGE, :REVERSAL
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.5
  s.weight        28.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Pig Monkey"
  s.pokedex_entry "When it starts shaking and its nasal breathing turns rough, it's a sure sign of anger. However, since this happens instantly, there is no time to flee."
  s.generation    1
  s.evolves_into  :PRIMEAPE, :Level, 28
end

GameData::Species.define :PRIMEAPE do |s|
  s.name          "Primeape"
  s.types         :FIGHTING
  s.base_stats    hp: 65, attack: 105, defense: 60, speed: 95, sp_atk: 60, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      159
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :VITALSPIRIT, :ANGERPOINT
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 1, :FINALGAMBIT
    m.at 1, :FLING
    m.at 1, :COVET
    m.at 1, :SCRATCH
    m.at 1, :LOWKICK
    m.at 1, :LEER
    m.at 1, :FOCUSENERGY
    m.at 5, :FURYSWIPES
    m.at 8, :MUDSLAP
    m.at 12, :SEISMICTOSS
    m.at 15, :RETALIATE
    m.at 19, :SWAGGER
    m.at 22, :CROSSCHOP
    m.at 26, :ASSURANCE
    m.at 30, :SKULLBASH
    m.at 35, :THRASH
    m.at 39, :CLOSECOMBAT
    m.at 44, :SCREECH
    m.at 48, :STOMPINGTANTRUM
    m.at 53, :OUTRAGE
    m.at 57, :FINALGAMBIT
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GUNKSHOT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEPUNCH, :IRONTAIL, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :OUTRAGE, :OVERHEAT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEEDBOMB, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :SPITE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAUNT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :UPROAR, :UTURN, :VACUUMWAVE, :WORKUP, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        32.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Pig Monkey"
  s.pokedex_entry "When it becomes furious, its blood circulation becomes more robust, and its muscles are made stronger. But it also becomes much less intelligent."
  s.generation    1
end

GameData::Species.define :MACHOP do |s|
  s.name          "Machop"
  s.types         :FIGHTING
  s.base_stats    hp: 70, attack: 80, defense: 50, speed: 35, sp_atk: 35, sp_def: 35
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Parabolic
  s.base_exp      61
  s.catch_rate    180
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :GUTS, :NOGUARD
  s.hidden_abilities :STEADFAST
  s.moves do |m|
    m.at 1, :LOWKICK
    m.at 1, :LEER
    m.at 4, :FOCUSENERGY
    m.at 8, :REVENGE
    m.at 12, :LOWSWEEP
    m.at 16, :KNOCKOFF
    m.at 20, :SCARYFACE
    m.at 24, :VITALTHROW
    m.at 29, :STRENGTH
    m.at 32, :DUALCHOP
    m.at 36, :BULKUP
    m.at 40, :SEISMICTOSS
    m.at 44, :DYNAMICPUNCH
    m.at 48, :CROSSCHOP
    m.at 52, :DOUBLEEDGE
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :COUNTER, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :EARTHQUAKE, :ENCORE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :HEADBUTT, :HEAVYSLAM, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :INCINERATE, :KNOCKOFF, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCARYFACE, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THIEF, :THUNDERPUNCH, :VACUUMWAVE, :WORKUP, :TERABLAST
  s.egg_moves     :BULLETPUNCH, :CLOSECOMBAT, :COUNTER, :ENCORE, :FIREPUNCH, :HEAVYSLAM, :ICEPUNCH, :KNOCKOFF, :POWERTRICK, :QUICKGUARD, :SUBMISSION, :THUNDERPUNCH, :TICKLE
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        0.8
  s.weight        19.5
  s.color         :Gray
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Superpower"
  s.pokedex_entry "It continually undertakes strenuous training to master all forms of martial arts. Its strength lets it easily hoist a sumo wrestler onto its shoulders."
  s.generation    1
  s.evolves_into  :MACHOKE, :Level, 28
  s.wild_item_uncommon :FOCUSBAND
end

GameData::Species.define :MACHOKE do |s|
  s.name          "Machoke"
  s.types         :FIGHTING
  s.base_stats    hp: 80, attack: 100, defense: 70, speed: 45, sp_atk: 50, sp_def: 60
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    90
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :GUTS, :NOGUARD
  s.hidden_abilities :STEADFAST
  s.moves do |m|
    m.at 1, :LOWKICK
    m.at 1, :LEER
    m.at 1, :FOCUSENERGY
    m.at 1, :REVENGE
    m.at 12, :LOWSWEEP
    m.at 16, :KNOCKOFF
    m.at 20, :SCARYFACE
    m.at 24, :VITALTHROW
    m.at 31, :STRENGTH
    m.at 36, :DUALCHOP
    m.at 42, :BULKUP
    m.at 48, :SEISMICTOSS
    m.at 54, :DYNAMICPUNCH
    m.at 60, :CROSSCHOP
    m.at 66, :DOUBLEEDGE
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :COUNTER, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :EARTHQUAKE, :ENCORE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :HEADBUTT, :HEAVYSLAM, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :INCINERATE, :KNOCKOFF, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCARYFACE, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STOMPINGTANTRUM, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THIEF, :THUNDERPUNCH, :VACUUMWAVE, :WORKUP, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.5
  s.weight        70.5
  s.color         :Gray
  s.shape         :Bipedal
  s.habitat       :Mountain
  s.category      "Superpower"
  s.pokedex_entry "A belt is worn by a Machoke to keep its overwhelming power under control. Because it is so dangerous, no one has ever removed the belt."
  s.generation    1
  s.evolves_into  :MACHAMP, :Trade
  s.wild_item_uncommon :FOCUSBAND
end

GameData::Species.define :MACHAMP do |s|
  s.name          "Machamp"
  s.types         :FIGHTING
  s.base_stats    hp: 90, attack: 130, defense: 80, speed: 55, sp_atk: 65, sp_def: 85
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Parabolic
  s.base_exp      253
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :GUTS, :NOGUARD
  s.hidden_abilities :STEADFAST
  s.moves do |m|
    m.at 1, :WIDEGUARD
    m.at 1, :LOWKICK
    m.at 1, :LEER
    m.at 1, :FOCUSENERGY
    m.at 1, :REVENGE
    m.at 12, :LOWSWEEP
    m.at 16, :KNOCKOFF
    m.at 20, :SCARYFACE
    m.at 24, :VITALTHROW
    m.at 31, :STRENGTH
    m.at 36, :DUALCHOP
    m.at 42, :BULKUP
    m.at 48, :SEISMICTOSS
    m.at 54, :DYNAMICPUNCH
    m.at 60, :CROSSCHOP
    m.at 66, :DOUBLEEDGE
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :COUNTER, :CROSSPOISON, :DARKESTLARIAT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DUALCHOP, :DYNAMICPUNCH, :EARTHQUAKE, :ENCORE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HEAVYSLAM, :HELPINGHAND, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEPUNCH, :INCINERATE, :KNOCKOFF, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKBLAST, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCARYFACE, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THIEF, :THROATCHOP, :THUNDERPUNCH, :VACUUMWAVE, :WORKUP, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.6
  s.weight        130.0
  s.color         :Gray
  s.shape         :Bipedal
  s.habitat       :Mountain
  s.category      "Superpower"
  s.pokedex_entry "It is impossible to defend against punches and chops doled out by its four arms. Its fighting spirit flares up when it faces a tough opponent."
  s.generation    1
  s.wild_item_uncommon :FOCUSBAND
end

GameData::Species.define :HITMONLEE do |s|
  s.name          "Hitmonlee"
  s.types         :FIGHTING
  s.base_stats    hp: 50, attack: 120, defense: 53, speed: 87, sp_atk: 35, sp_def: 110
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Medium
  s.base_exp      159
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :LIMBER, :RECKLESS
  s.hidden_abilities :UNBURDEN
  s.moves do |m|
    m.at 0, :BRICKBREAK
    m.at 1, :FEINT
    m.at 1, :LOWSWEEP
    m.at 1, :TACKLE
    m.at 1, :HELPINGHAND
    m.at 1, :FAKEOUT
    m.at 1, :FOCUSENERGY
    m.at 4, :DOUBLEKICK
    m.at 8, :LOWKICK
    m.at 12, :ENDURE
    m.at 16, :REVENGE
    m.at 21, :WIDEGUARD
    m.at 24, :BLAZEKICK
    m.at 28, :MINDREADER
    m.at 32, :MEGAKICK
    m.at 36, :CLOSECOMBAT
    m.at 40, :REVERSAL
    m.at 44, :HIGHJUMPKICK
  end
  s.tutor_moves   :ATTRACT, :AURASPHERE, :BLAZEKICK, :BODYSLAM, :BOUNCE, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :COUNTER, :COVET, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :KNOCKOFF, :LASERFOCUS, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :THIEF, :THROATCHOP, :UPROAR, :VACUUMWAVE, :WORKUP, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   6400
  s.height        1.5
  s.weight        49.8
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Kicking"
  s.pokedex_entry "Its legs freely stretch and contract. Using these springlike limbs, it bowls over foes with devastating kicks. After battle, it rubs down its tired legs."
  s.generation    1
end

GameData::Species.define :HITMONCHAN do |s|
  s.name          "Hitmonchan"
  s.types         :FIGHTING
  s.base_stats    hp: 50, attack: 105, defense: 79, speed: 76, sp_atk: 35, sp_def: 110
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Medium
  s.base_exp      159
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :KEENEYE, :IRONFIST
  s.hidden_abilities :INNERFOCUS
  s.moves do |m|
    m.at 0, :DRAINPUNCH
    m.at 1, :FEINT
    m.at 1, :VACUUMWAVE
    m.at 1, :BULLETPUNCH
    m.at 1, :TACKLE
    m.at 1, :HELPINGHAND
    m.at 1, :FAKEOUT
    m.at 1, :FOCUSENERGY
    m.at 4, :MACHPUNCH
    m.at 8, :POWERUPPUNCH
    m.at 12, :DETECT
    m.at 16, :REVENGE
    m.at 21, :QUICKGUARD
    m.at 24, :THUNDERPUNCH
    m.at 24, :ICEPUNCH
    m.at 24, :FIREPUNCH
    m.at 28, :AGILITY
    m.at 32, :MEGAPUNCH
    m.at 36, :CLOSECOMBAT
    m.at 40, :COUNTER
    m.at 44, :FOCUSPUNCH
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :AURASPHERE, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :COUNTER, :COVET, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :LASERFOCUS, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THIEF, :THROATCHOP, :THUNDERPUNCH, :UPROAR, :VACUUMWAVE, :WORKUP, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   6400
  s.height        1.4
  s.weight        50.2
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Punching"
  s.pokedex_entry "A Hitmonchan is said to possess the spirit of a boxer who aimed to become the world champion. Having an indomitable spirit means that it will never give up."
  s.generation    1
end

GameData::Species.define :TYROGUE do |s|
  s.name          "Tyrogue"
  s.types         :FIGHTING
  s.base_stats    hp: 35, attack: 35, defense: 35, speed: 35, sp_atk: 35, sp_def: 35
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Medium
  s.base_exp      42
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :GUTS, :STEADFAST
  s.hidden_abilities :VITALSPIRIT
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HELPINGHAND
    m.at 1, :FAKEOUT
    m.at 1, :FOCUSENERGY
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :COVET, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FOCUSENERGY, :FRUSTRATION, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :LASERFOCUS, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THIEF, :UPROAR, :VACUUMWAVE, :WORKUP, :TERABLAST
  s.egg_moves     :BULLETPUNCH, :COUNTER, :FEINT, :HELPINGHAND, :HIGHJUMPKICK, :MACHPUNCH, :MINDREADER, :RAPIDSPIN, :VACUUMWAVE
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        0.7
  s.weight        21.0
  s.color         :Purple
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Scuffle"
  s.pokedex_entry "Tyrogue become stressed out if they do not get to train every day. When raising this Pokémon, the trainer must establish a regular training schedule."
  s.generation    2
  s.evolves_into  :HITMONLEE, :AttackGreater, 20
  s.evolves_into  :HITMONCHAN, :DefenseGreater, 20
  s.evolves_into  :HITMONTOP, :AtkDefEqual, 20
end

GameData::Species.define :HITMONTOP do |s|
  s.name          "Hitmontop"
  s.types         :FIGHTING
  s.base_stats    hp: 50, attack: 95, defense: 95, speed: 70, sp_atk: 35, sp_def: 110
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Medium
  s.base_exp      159
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :INTIMIDATE, :TECHNICIAN
  s.hidden_abilities :STEADFAST
  s.moves do |m|
    m.at 0, :TRIPLEKICK
    m.at 1, :FEINT
    m.at 1, :RAPIDSPIN
    m.at 1, :TACKLE
    m.at 1, :HELPINGHAND
    m.at 1, :FAKEOUT
    m.at 1, :FOCUSENERGY
    m.at 4, :QUICKATTACK
    m.at 8, :GYROBALL
    m.at 12, :DETECT
    m.at 16, :REVENGE
    m.at 21, :WIDEGUARD
    m.at 21, :QUICKGUARD
    m.at 24, :SUCKERPUNCH
    m.at 28, :AGILITY
    m.at 32, :DIG
    m.at 36, :CLOSECOMBAT
    m.at 40, :COUNTER
    m.at 44, :ENDEAVOR
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :COUNTER, :COVET, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FOCUSBLAST, :FOCUSENERGY, :FRUSTRATION, :GYROBALL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :LASERFOCUS, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :ROCKSLIDE, :ROCKSMASH, :ROLEPLAY, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SNORE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWIFT, :THIEF, :TRIPLEAXEL, :TWISTER, :UPROAR, :VACUUMWAVE, :WORKUP, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   6400
  s.height        1.4
  s.weight        48.0
  s.color         :Brown
  s.shape         :BipedalTail
  s.habitat       :Urban
  s.category      "Handstand"
  s.pokedex_entry "Its technique of kicking while spinning is a remarkable mix of both offense and defense. Hitmontop travel faster spinning than they do walking."
  s.generation    2
end

GameData::Species.define :MAKUHITA do |s|
  s.name          "Makuhita"
  s.types         :FIGHTING
  s.base_stats    hp: 72, attack: 60, defense: 30, speed: 25, sp_atk: 20, sp_def: 30
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Fluctuating
  s.base_exp      47
  s.catch_rate    180
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :THICKFAT, :GUTS
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :FOCUSENERGY
    m.at 4, :SANDATTACK
    m.at 7, :ARMTHRUST
    m.at 10, :FAKEOUT
    m.at 13, :FORCEPALM
    m.at 16, :WHIRLWIND
    m.at 19, :KNOCKOFF
    m.at 22, :VITALTHROW
    m.at 25, :BELLYDRUM
    m.at 28, :DETECT
    m.at 31, :SEISMICTOSS
    m.at 34, :FOCUSPUNCH
    m.at 37, :ENDURE
    m.at 40, :CLOSECOMBAT
    m.at 43, :REVERSAL
    m.at 46, :HEAVYSLAM
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :THUNDERPUNCH, :VACUUMWAVE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_moves     :BULLETPUNCH, :COUNTER, :CROSSCHOP, :DETECT, :DYNAMICPUNCH, :FEINT, :HELPINGHAND, :REVENGE, :WIDEGUARD
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.0
  s.weight        86.4
  s.color         :Yellow
  s.shape         :Bipedal
  s.habitat       :Mountain
  s.category      "Guts"
  s.pokedex_entry "It loves to toughen up its body above all else. If you hear quaking rumbles in a cave, it is the sound of Makuhita undertaking strenuous training."
  s.generation    3
  s.evolves_into  :HARIYAMA, :Level, 24
  s.wild_item_uncommon :BLACKBELT
end

GameData::Species.define :HARIYAMA do |s|
  s.name          "Hariyama"
  s.types         :FIGHTING
  s.base_stats    hp: 144, attack: 120, defense: 60, speed: 50, sp_atk: 40, sp_def: 60
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Fluctuating
  s.base_exp      166
  s.catch_rate    200
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :THICKFAT, :GUTS
  s.hidden_abilities :SHEERFORCE
  s.moves do |m|
    m.at 1, :BRINE
    m.at 1, :TACKLE
    m.at 1, :FOCUSENERGY
    m.at 1, :SANDATTACK
    m.at 1, :ARMTHRUST
    m.at 4, :SANDATTACK
    m.at 7, :ARMTHRUST
    m.at 10, :FAKEOUT
    m.at 13, :FORCEPALM
    m.at 16, :WHIRLWIND
    m.at 19, :KNOCKOFF
    m.at 22, :VITALTHROW
    m.at 26, :BELLYDRUM
    m.at 30, :DETECT
    m.at 34, :SEISMICTOSS
    m.at 38, :FOCUSPUNCH
    m.at 42, :ENDURE
    m.at 46, :CLOSECOMBAT
    m.at 50, :REVERSAL
    m.at 54, :HEAVYSLAM
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BRINE, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :IRONHEAD, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :THROATCHOP, :THUNDERPUNCH, :VACUUMWAVE, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        2.3
  s.weight        253.8
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Mountain
  s.category      "Arm Thrust"
  s.pokedex_entry "It has the habit of challenging others without hesitation to tests of strength. It's been known to stand on train tracks and stop trains using forearm thrusts."
  s.generation    3
  s.wild_item_uncommon :KINGSROCK
end

GameData::Species.define :MEDITITE do |s|
  s.name          "Meditite"
  s.types         :FIGHTING, :PSYCHIC
  s.base_stats    hp: 30, attack: 40, defense: 55, speed: 60, sp_atk: 40, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      56
  s.catch_rate    180
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :PUREPOWER
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :POUND
    m.at 4, :LOWKICK
    m.at 7, :CONFUSION
    m.at 9, :DETECT
    m.at 12, :ENDURE
    m.at 15, :FEINT
    m.at 17, :FORCEPALM
    m.at 20, :PSYBEAM
    m.at 23, :CALMMIND
    m.at 25, :MINDREADER
    m.at 28, :HIGHJUMPKICK
    m.at 31, :PSYCHUP
    m.at 33, :ACUPRESSURE
    m.at 36, :POWERTRICK
    m.at 39, :REVERSAL
    m.at 41, :RECOVER
    m.at 44, :COUNTER
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :GRAVITY, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDERPUNCH, :TRICK, :VACUUMWAVE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BATONPASS, :BULLETPUNCH, :DYNAMICPUNCH, :FAKEOUT, :FIREPUNCH, :GUARDSWAP, :ICEPUNCH, :POWERSWAP, :PSYCHOCUT, :QUICKGUARD, :THUNDERPUNCH
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        0.6
  s.weight        11.2
  s.color         :Blue
  s.shape         :Bipedal
  s.habitat       :Mountain
  s.category      "Meditate"
  s.pokedex_entry "It continually meditates for hours every day. As a result of rigorous and dedicated yoga training, it has tempered its spiritual power so much it can fly."
  s.generation    3
  s.evolves_into  :MEDICHAM, :Level, 37
  s.flags         :HasGenderedSprites
end

GameData::Species.define :MEDICHAM do |s|
  s.name          "Medicham"
  s.types         :FIGHTING, :PSYCHIC
  s.base_stats    hp: 60, attack: 60, defense: 75, speed: 80, sp_atk: 60, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      144
  s.catch_rate    90
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :PUREPOWER
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :ZENHEADBUTT
    m.at 1, :FIREPUNCH
    m.at 1, :THUNDERPUNCH
    m.at 1, :ICEPUNCH
    m.at 1, :POUND
    m.at 1, :CONFUSION
    m.at 1, :DETECT
    m.at 4, :LOWKICK
    m.at 7, :CONFUSION
    m.at 9, :DETECT
    m.at 12, :ENDURE
    m.at 15, :FEINT
    m.at 17, :FORCEPALM
    m.at 20, :PSYBEAM
    m.at 23, :CALMMIND
    m.at 25, :MINDREADER
    m.at 28, :HIGHJUMPKICK
    m.at 31, :PSYCHUP
    m.at 33, :ACUPRESSURE
    m.at 36, :POWERTRICK
    m.at 42, :REVERSAL
    m.at 47, :RECOVER
    m.at 53, :COUNTER
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :CALMMIND, :CAPTIVATE, :CONFIDE, :COUNTER, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DREAMEATER, :DYNAMICPUNCH, :ENDURE, :ENERGYBALL, :FACADE, :FIREPUNCH, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GRAVITY, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :LASERFOCUS, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICCOAT, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :PAINSPLIT, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :RECYCLE, :REFLECT, :REST, :RETALIATE, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDERPUNCH, :TRICK, :VACUUMWAVE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.3
  s.weight        31.5
  s.color         :Red
  s.shape         :Bipedal
  s.habitat       :Mountain
  s.category      "Meditate"
  s.pokedex_entry "Through crushingly harsh yoga training, it gained the power to foretell its foe's actions. It battles with elegant, dance- like movement."
  s.generation    3
  s.flags         :HasGenderedSprites
end

GameData::Species.define :RIOLU do |s|
  s.name          "Riolu"
  s.types         :FIGHTING
  s.base_stats    hp: 40, attack: 70, defense: 40, speed: 60, sp_atk: 35, sp_def: 40
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      57
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :STEADFAST, :INNERFOCUS
  s.hidden_abilities :PRANKSTER
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 1, :ENDURE
    m.at 4, :FEINT
    m.at 8, :METALCLAW
    m.at 12, :COUNTER
    m.at 16, :WORKUP
    m.at 20, :ROCKSMASH
    m.at 24, :NASTYPLOT
    m.at 28, :SCREECH
    m.at 32, :QUICKGUARD
    m.at 36, :FORCEPALM
    m.at 40, :SWORDSDANCE
    m.at 44, :HELPINGHAND
    m.at 48, :COPYCAT
    m.at 52, :FINALGAMBIT
    m.at 56, :REVERSAL
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BLAZEKICK, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :COACHING, :CONFIDE, :CRUNCH, :DIG, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :IRONDEFENSE, :IRONTAIL, :LASERFOCUS, :LOWKICK, :LOWSWEEP, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :THUNDERPUNCH, :VACUUMWAVE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AGILITY, :BITE, :BLAZEKICK, :BULLETPUNCH, :CIRCLETHROW, :CROSSCHOP, :CRUNCH, :DETECT, :FOLLOWME, :HIGHJUMPKICK, :HOWL, :IRONDEFENSE, :LOWKICK, :METEORMASH, :MINDREADER, :VACUUMWAVE
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        0.7
  s.weight        20.2
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Emanation"
  s.pokedex_entry "The aura that emanates from its body intensifies to alert others if it is afraid or sad."
  s.generation    4
  s.evolves_into  :LUCARIO, :HappinessDay
end

GameData::Species.define :LUCARIO do |s|
  s.name          "Lucario"
  s.types         :FIGHTING, :STEEL
  s.base_stats    hp: 70, attack: 110, defense: 70, speed: 90, sp_atk: 115, sp_def: 70
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      184
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1, sp_attack: 1
  s.abilities     :STEADFAST, :INNERFOCUS
  s.hidden_abilities :JUSTIFIED
  s.moves do |m|
    m.at 0, :AURASPHERE
    m.at 1, :LIFEDEW
    m.at 1, :WORKUP
    m.at 1, :ROCKSMASH
    m.at 1, :NASTYPLOT
    m.at 1, :SCREECH
    m.at 1, :FORCEPALM
    m.at 1, :HELPINGHAND
    m.at 1, :COPYCAT
    m.at 1, :FINALGAMBIT
    m.at 1, :REVERSAL
    m.at 1, :QUICKATTACK
    m.at 1, :DETECT
    m.at 1, :FEINT
    m.at 1, :METALCLAW
    m.at 12, :COUNTER
    m.at 16, :LASERFOCUS
    m.at 20, :POWERUPPUNCH
    m.at 24, :CALMMIND
    m.at 28, :METALSOUND
    m.at 32, :QUICKGUARD
    m.at 36, :BONERUSH
    m.at 40, :SWORDSDANCE
    m.at 44, :HEALPULSE
    m.at 48, :METEORMASH
    m.at 52, :DRAGONPULSE
    m.at 56, :EXTREMESPEED
    m.at 60, :CLOSECOMBAT
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :AURASPHERE, :BLAZEKICK, :BRICKBREAK, :BULKUP, :BULLDOZE, :CALMMIND, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :CRUNCH, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAGONPULSE, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :ENDURE, :FACADE, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEPUNCH, :IRONDEFENSE, :IRONTAIL, :LASERFOCUS, :LOWKICK, :LOWSWEEP, :MAGNETRISE, :MEGAKICK, :MEGAPUNCH, :MIMIC, :MUDSLAP, :NASTYPLOT, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROAR, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SNORE, :STEELBEAM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TERRAINPULSE, :THUNDERPUNCH, :VACUUMWAVE, :WATERPULSE, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   6400
  s.height        1.2
  s.weight        54.0
  s.color         :Blue
  s.shape         :BipedalTail
  s.category      "Aura"
  s.pokedex_entry "It has the ability to sense the auras of all things. It understands human speech."
  s.generation    4
end

GameData::Species.define :TIMBURR do |s|
  s.name          "Timburr"
  s.types         :FIGHTING
  s.base_stats    hp: 75, attack: 80, defense: 55, speed: 35, sp_atk: 25, sp_def: 35
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Parabolic
  s.base_exp      61
  s.catch_rate    180
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :GUTS, :SHEERFORCE
  s.hidden_abilities :IRONFIST
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :LEER
    m.at 4, :LOWKICK
    m.at 8, :ROCKTHROW
    m.at 12, :FOCUSENERGY
    m.at 16, :BULKUP
    m.at 20, :ROCKSLIDE
    m.at 24, :SLAM
    m.at 28, :SCARYFACE
    m.at 32, :DYNAMICPUNCH
    m.at 36, :HAMMERARM
    m.at 40, :STONEEDGE
    m.at 44, :SUPERPOWER
    m.at 48, :FOCUSPUNCH
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BRICKBREAK, :BRUTALSWING, :BULKUP, :CAPTIVATE, :COACHING, :CONFIDE, :DIG, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THUNDERPUNCH, :TOXIC, :WORKUP, :TERABLAST
  s.egg_moves     :COUNTER, :DEFOG, :DETECT, :MACHPUNCH, :POWERUPPUNCH, :WIDEGUARD
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        0.6
  s.weight        12.5
  s.color         :Gray
  s.shape         :Bipedal
  s.category      "Muscular"
  s.pokedex_entry "These Pokémon appear at building sites and help out with construction. They always carry squared logs."
  s.generation    5
  s.evolves_into  :GURDURR, :Level, 25
end

GameData::Species.define :GURDURR do |s|
  s.name          "Gurdurr"
  s.types         :FIGHTING
  s.base_stats    hp: 85, attack: 105, defense: 85, speed: 40, sp_atk: 40, sp_def: 50
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Parabolic
  s.base_exp      142
  s.catch_rate    90
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :GUTS, :SHEERFORCE
  s.hidden_abilities :IRONFIST
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :LEER
    m.at 1, :LOWKICK
    m.at 1, :ROCKTHROW
    m.at 12, :FOCUSENERGY
    m.at 16, :BULKUP
    m.at 20, :ROCKSLIDE
    m.at 24, :SLAM
    m.at 30, :SCARYFACE
    m.at 36, :DYNAMICPUNCH
    m.at 42, :HAMMERARM
    m.at 48, :STONEEDGE
    m.at 54, :SUPERPOWER
    m.at 60, :FOCUSPUNCH
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BRICKBREAK, :BRUTALSWING, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DIG, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :HIGHHORSEPOWER, :ICEPUNCH, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THUNDERPUNCH, :TOXIC, :WORKUP, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.2
  s.weight        40.0
  s.color         :Gray
  s.shape         :Bipedal
  s.category      "Muscular"
  s.pokedex_entry "They strengthen their bodies by carrying steel beams. They show off their big muscles to their friends."
  s.generation    5
  s.evolves_into  :CONKELDURR, :Trade
end

GameData::Species.define :CONKELDURR do |s|
  s.name          "Conkeldurr"
  s.types         :FIGHTING
  s.base_stats    hp: 105, attack: 140, defense: 95, speed: 45, sp_atk: 55, sp_def: 65
  s.gender_ratio  :Female25Percent
  s.growth_rate   :Parabolic
  s.base_exp      253
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :GUTS, :SHEERFORCE
  s.hidden_abilities :IRONFIST
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :LEER
    m.at 1, :LOWKICK
    m.at 1, :ROCKTHROW
    m.at 12, :FOCUSENERGY
    m.at 16, :BULKUP
    m.at 20, :ROCKSLIDE
    m.at 24, :SLAM
    m.at 30, :SCARYFACE
    m.at 36, :DYNAMICPUNCH
    m.at 42, :HAMMERARM
    m.at 48, :STONEEDGE
    m.at 54, :SUPERPOWER
    m.at 60, :FOCUSPUNCH
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DIG, :DOUBLETEAM, :DRAINPUNCH, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :ICEPUNCH, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKBLAST, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THUNDERPUNCH, :TOXIC, :WORKUP, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.4
  s.weight        87.0
  s.color         :Brown
  s.shape         :Bipedal
  s.category      "Muscular"
  s.pokedex_entry "They use concrete pillars as walking canes. They know moves that enable them to swing the pillars freely in battle."
  s.generation    5
end

GameData::Species.define :THROH do |s|
  s.name          "Throh"
  s.types         :FIGHTING
  s.base_stats    hp: 120, attack: 100, defense: 85, speed: 45, sp_atk: 30, sp_def: 85
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Medium
  s.base_exp      163
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :GUTS, :INNERFOCUS
  s.hidden_abilities :MOLDBREAKER
  s.moves do |m|
    m.at 1, :BIND
    m.at 1, :LEER
    m.at 5, :FOCUSENERGY
    m.at 10, :CIRCLETHROW
    m.at 15, :WIDEGUARD
    m.at 20, :REVENGE
    m.at 25, :BULKUP
    m.at 30, :STORMTHROW
    m.at 35, :VITALTHROW
    m.at 40, :SEISMICTOSS
    m.at 45, :ENDURE
    m.at 50, :REVERSAL
    m.at 55, :SUPERPOWER
  end
  s.tutor_moves   :ATTRACT, :BIND, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :COACHING, :CONFIDE, :DIG, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :KNOCKOFF, :LASERFOCUS, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THUNDERPUNCH, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.3
  s.weight        55.5
  s.color         :Red
  s.shape         :Bipedal
  s.category      "Judo"
  s.pokedex_entry "When they encounter foes bigger than themselves, they try to throw them. They always travel in packs of five."
  s.generation    5
  s.wild_item_uncommon :BLACKBELT
end

GameData::Species.define :SAWK do |s|
  s.name          "Sawk"
  s.types         :FIGHTING
  s.base_stats    hp: 75, attack: 125, defense: 75, speed: 85, sp_atk: 30, sp_def: 75
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Medium
  s.base_exp      163
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :STURDY, :INNERFOCUS
  s.hidden_abilities :MOLDBREAKER
  s.moves do |m|
    m.at 1, :ROCKSMASH
    m.at 1, :LEER
    m.at 5, :FOCUSENERGY
    m.at 10, :DOUBLEKICK
    m.at 15, :QUICKGUARD
    m.at 20, :LOWSWEEP
    m.at 25, :BULKUP
    m.at 30, :RETALIATE
    m.at 35, :BRICKBREAK
    m.at 40, :COUNTER
    m.at 45, :ENDURE
    m.at 50, :REVERSAL
    m.at 55, :CLOSECOMBAT
  end
  s.tutor_moves   :ATTRACT, :BLOCK, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DIG, :DOUBLETEAM, :DUALCHOP, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :KNOCKOFF, :LASERFOCUS, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THROATCHOP, :THUNDERPUNCH, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   5120
  s.height        1.4
  s.weight        51.0
  s.color         :Blue
  s.shape         :Bipedal
  s.category      "Karate"
  s.pokedex_entry "Tying their belts gets them pumped and makes their punches more destructive. Disturbing their training angers them."
  s.generation    5
  s.wild_item_uncommon :BLACKBELT
end

GameData::Species.define :MIENFOO do |s|
  s.name          "Mienfoo"
  s.types         :FIGHTING
  s.base_stats    hp: 45, attack: 85, defense: 50, speed: 65, sp_atk: 55, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      70
  s.catch_rate    180
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :INNERFOCUS, :REGENERATOR
  s.hidden_abilities :RECKLESS
  s.moves do |m|
    m.at 1, :POUND
    m.at 1, :DETECT
    m.at 5, :FAKEOUT
    m.at 10, :REVERSAL
    m.at 15, :FURYSWIPES
    m.at 20, :QUICKGUARD
    m.at 25, :FORCEPALM
    m.at 30, :UTURN
    m.at 35, :DRAINPUNCH
    m.at 40, :HONECLAWS
    m.at 45, :AURASPHERE
    m.at 51, :BOUNCE
    m.at 55, :CALMMIND
    m.at 60, :HIGHJUMPKICK
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ALLYSWITCH, :ATTRACT, :AURASPHERE, :BATONPASS, :BOUNCE, :BRICKBREAK, :BULKUP, :CALMMIND, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DIG, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :TOXIC, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :FEINT, :FOCUSPUNCH, :KNOCKOFF, :VITALTHROW
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   6400
  s.height        0.9
  s.weight        20.0
  s.color         :Yellow
  s.shape         :BipedalTail
  s.category      "Martial Arts"
  s.pokedex_entry "They have mastered elegant combos. As they concentrate, their battle moves become swifter and more precise."
  s.generation    5
  s.evolves_into  :MIENSHAO, :Level, 50
end

GameData::Species.define :MIENSHAO do |s|
  s.name          "Mienshao"
  s.types         :FIGHTING
  s.base_stats    hp: 65, attack: 125, defense: 60, speed: 105, sp_atk: 95, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      179
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :INNERFOCUS, :REGENERATOR
  s.hidden_abilities :RECKLESS
  s.moves do |m|
    m.at 1, :QUICKGUARD
    m.at 1, :POUND
    m.at 1, :DETECT
    m.at 1, :FAKEOUT
    m.at 1, :REVERSAL
    m.at 15, :FURYSWIPES
    m.at 20, :WIDEGUARD
    m.at 25, :FORCEPALM
    m.at 30, :UTURN
    m.at 35, :DRAINPUNCH
    m.at 40, :HONECLAWS
    m.at 45, :AURASPHERE
    m.at 53, :BOUNCE
    m.at 59, :CALMMIND
    m.at 66, :HIGHJUMPKICK
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ALLYSWITCH, :ASSURANCE, :ATTRACT, :AURASPHERE, :BATONPASS, :BLAZEKICK, :BOUNCE, :BRICKBREAK, :BRUTALSWING, :BULKUP, :CALMMIND, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DIG, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :KNOCKOFF, :LASERFOCUS, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :RAINDANCE, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :TOXIC, :UTURN, :WORKUP, :TERABLAST
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   6400
  s.height        1.4
  s.weight        35.5
  s.color         :Purple
  s.shape         :BipedalTail
  s.category      "Martial Arts"
  s.pokedex_entry "They use the long fur on their arms as a whip to strike their opponents."
  s.generation    5
end

GameData::Species.define :PANCHAM do |s|
  s.name          "Pancham"
  s.types         :FIGHTING
  s.base_stats    hp: 67, attack: 82, defense: 62, speed: 43, sp_atk: 46, sp_def: 48
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      70
  s.catch_rate    220
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :IRONFIST, :MOLDBREAKER
  s.hidden_abilities :SCRAPPY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 4, :ARMTHRUST
    m.at 8, :TAUNT
    m.at 12, :CIRCLETHROW
    m.at 16, :LOWSWEEP
    m.at 20, :WORKUP
    m.at 24, :SLASH
    m.at 28, :VITALTHROW
    m.at 33, :CRUNCH
    m.at 36, :BODYSLAM
    m.at 40, :PARTINGSHOT
    m.at 44, :ENTRAINMENT
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :COACHING, :CONFIDE, :COVET, :CRUNCH, :CUT, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FIREPUNCH, :FLING, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GRASSKNOT, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :HYPERVOICE, :ICEPUNCH, :IRONHEAD, :KNOCKOFF, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SNATCH, :SNORE, :SPITE, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :TAUNT, :THUNDERPUNCH, :TORMENT, :TOXIC, :UPROAR, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :POWERTRIP, :QUASH, :QUICKGUARD, :SEISMICTOSS, :STORMTHROW
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   6400
  s.height        0.6
  s.weight        8.0
  s.color         :White
  s.shape         :BipedalTail
  s.category      "Playful"
  s.pokedex_entry "It does its best to be taken seriously by its enemies, but its glare is not sufficiently intimidating. Chewing on a leaf is its trademark."
  s.generation    6
  s.evolves_into  :PANGORO, :LevelDarkInParty, 32
  s.wild_item_uncommon :MENTALHERB
end

GameData::Species.define :PANGORO do |s|
  s.name          "Pangoro"
  s.types         :FIGHTING, :DARK
  s.base_stats    hp: 95, attack: 124, defense: 78, speed: 58, sp_atk: 69, sp_def: 71
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    65
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :IRONFIST, :MOLDBREAKER
  s.hidden_abilities :SCRAPPY
  s.moves do |m|
    m.at 0, :NIGHTSLASH
    m.at 1, :BULLETPUNCH
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :ARMTHRUST
    m.at 1, :TAUNT
    m.at 12, :CIRCLETHROW
    m.at 16, :LOWSWEEP
    m.at 20, :WORKUP
    m.at 24, :SLASH
    m.at 28, :VITALTHROW
    m.at 35, :CRUNCH
    m.at 40, :BODYSLAM
    m.at 46, :PARTINGSHOT
    m.at 52, :ENTRAINMENT
    m.at 58, :HAMMERARM
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BEATUP, :BLOCK, :BODYSLAM, :BRICKBREAK, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :COVET, :CRUNCH, :CUT, :DARKESTLARIAT, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAGONCLAW, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :ECHOEDVOICE, :EMBARGO, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :ICEPUNCH, :INFESTATION, :IRONHEAD, :KNOCKOFF, :LASERFOCUS, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :QUASH, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROAR, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNATCH, :SNORE, :SPITE, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SURF, :SWAGGER, :SWORDSDANCE, :TAUNT, :THIEF, :THROATCHOP, :THUNDERPUNCH, :TORMENT, :TOXIC, :UPROAR, :WORKUP, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field, :Humanlike
  s.hatch_steps   6400
  s.height        2.1
  s.weight        136.0
  s.color         :White
  s.shape         :Bipedal
  s.category      "Daunting"
  s.pokedex_entry "It charges ahead and bashes its opponents like a berserker, uncaring about any hits it might take. Its arms are mighty enough to snap a telephone pole."
  s.generation    6
  s.wild_item_uncommon :MENTALHERB
end

GameData::Species.define :HAWLUCHA do |s|
  s.name          "Hawlucha"
  s.types         :FIGHTING, :FLYING
  s.base_stats    hp: 78, attack: 92, defense: 75, speed: 118, sp_atk: 74, sp_def: 63
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    100
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :LIMBER, :UNBURDEN
  s.hidden_abilities :MOLDBREAKER
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :HONECLAWS
    m.at 4, :WINGATTACK
    m.at 8, :DETECT
    m.at 12, :AERIALACE
    m.at 16, :ENCORE
    m.at 20, :FEATHERDANCE
    m.at 24, :SUBMISSION
    m.at 28, :BOUNCE
    m.at 32, :TAUNT
    m.at 36, :ROOST
    m.at 40, :SWORDSDANCE
    m.at 44, :FLYINGPRESS
    m.at 48, :HIGHJUMPKICK
    m.at 52, :ENDEAVOR
    m.at 56, :SKYATTACK
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :ALLYSWITCH, :ASSURANCE, :ATTRACT, :BATONPASS, :BODYPRESS, :BOUNCE, :BRAVEBIRD, :BRICKBREAK, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :CUT, :DEFOG, :DIG, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :DUALWINGBEAT, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FIREPUNCH, :FLING, :FLY, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :IRONHEAD, :LASERFOCUS, :LASTRESORT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROOST, :ROUND, :SECRETPOWER, :SKYATTACK, :SKYDROP, :SLEEPTALK, :SNORE, :STEELWING, :STONEEDGE, :STRENGTH, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :TAUNT, :THROATCHOP, :THUNDERPUNCH, :TORMENT, :TOXIC, :UTURN, :WORKUP, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :CROSSCHOP, :DEFOG, :ENTRAINMENT, :FEINT, :MEANLOOK, :QUICKGUARD
  s.egg_groups    :Flying, :Humanlike
  s.hatch_steps   5120
  s.height        0.8
  s.weight        21.5
  s.color         :Green
  s.shape         :Bipedal
  s.category      "Wrestling"
  s.pokedex_entry "With its wings, it controls its position in the air. It likes to attack from above, a maneuver that is difficult to defend against."
  s.generation    6
  s.wild_item_uncommon :KINGSROCK
end

GameData::Species.define :CRABRAWLER do |s|
  s.name          "Crabrawler"
  s.types         :FIGHTING
  s.base_stats    hp: 47, attack: 82, defense: 57, speed: 63, sp_atk: 42, sp_def: 47
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      68
  s.catch_rate    225
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :HYPERCUTTER, :IRONFIST
  s.hidden_abilities :ANGERPOINT
  s.moves do |m|
    m.at 1, :BUBBLE
    m.at 5, :ROCKSMASH
    m.at 9, :LEER
    m.at 13, :PURSUIT
    m.at 17, :BUBBLEBEAM
    m.at 22, :POWERUPPUNCH
    m.at 25, :DIZZYPUNCH
    m.at 29, :PAYBACK
    m.at 33, :REVERSAL
    m.at 37, :CRABHAMMER
    m.at 42, :IRONDEFENSE
    m.at 45, :DYNAMICPUNCH
    m.at 49, :CLOSECOMBAT
  end
  s.tutor_moves   :ATTRACT, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FROSTBREATH, :FRUSTRATION, :HIDDENPOWER, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THIEF, :THUNDERPUNCH, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AMNESIA, :ENDEAVOR, :SUPERPOWER, :WIDEGUARD
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        0.6
  s.weight        7.0
  s.color         :Purple
  s.shape         :Insectoid
  s.category      "Boxing"
  s.pokedex_entry "It punches so much, its pincers often come off from overuse, but they grow back quickly. What little meat they contain is rich and delicious."
  s.generation    7
  s.evolves_into  :CRABOMINABLE, :LocationFlag, IceRock
  s.wild_item_uncommon :ASPEARBERRY
end

GameData::Species.define :CRABOMINABLE do |s|
  s.name          "Crabominable"
  s.types         :FIGHTING, :ICE
  s.base_stats    hp: 97, attack: 132, defense: 77, speed: 43, sp_atk: 62, sp_def: 67
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      167
  s.catch_rate    60
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :HYPERCUTTER, :IRONFIST
  s.hidden_abilities :ANGERPOINT
  s.moves do |m|
    m.at 0, :ICEPUNCH
    m.at 1, :BUBBLE
    m.at 1, :ROCKSMASH
    m.at 1, :LEER
    m.at 1, :PURSUIT
    m.at 5, :ROCKSMASH
    m.at 9, :LEER
    m.at 13, :PURSUIT
    m.at 17, :BUBBLEBEAM
    m.at 22, :POWERUPPUNCH
    m.at 25, :DIZZYPUNCH
    m.at 29, :AVALANCHE
    m.at 33, :REVERSAL
    m.at 37, :ICEHAMMER
    m.at 42, :IRONDEFENSE
    m.at 45, :DYNAMICPUNCH
    m.at 49, :CLOSECOMBAT
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BLOCK, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :ICEBEAM, :ICEPUNCH, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCALD, :SECRETPOWER, :SLEEPTALK, :SNORE, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :THIEF, :THUNDERPUNCH, :TOXIC, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Water3
  s.hatch_steps   5120
  s.height        1.7
  s.weight        180.0
  s.color         :White
  s.shape         :Insectoid
  s.category      "Woolly Crab"
  s.pokedex_entry "It aimed for the top but got lost and ended up on a snowy mountain. Being forced to endure the cold, this Pokémon evolved and grew fur."
  s.generation    7
  s.wild_item_uncommon :CHERIBERRY
end

GameData::Species.define :PASSIMIAN do |s|
  s.name          "Passimian"
  s.types         :FIGHTING
  s.base_stats    hp: 100, attack: 120, defense: 90, speed: 80, sp_atk: 40, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      172
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :RECEIVER
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 5, :ROCKSMASH
    m.at 10, :FOCUSENERGY
    m.at 15, :BEATUP
    m.at 20, :SCARYFACE
    m.at 25, :TAKEDOWN
    m.at 30, :FLING
    m.at 35, :BULKUP
    m.at 40, :THRASH
    m.at 45, :DOUBLEEDGE
    m.at 50, :CLOSECOMBAT
    m.at 55, :REVERSAL
    m.at 60, :GIGAIMPACT
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ASSURANCE, :ATTRACT, :BEATUP, :BLOCK, :BRICKBREAK, :BRUTALSWING, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DOUBLETEAM, :DRAINPUNCH, :EARTHQUAKE, :ELECTROWEB, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :GYROBALL, :HIDDENPOWER, :HYPERBEAM, :IRONHEAD, :IRONTAIL, :KNOCKOFF, :LASERFOCUS, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SHOCKWAVE, :SLEEPTALK, :SMACKDOWN, :SNATCH, :SNORE, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :TAUNT, :THIEF, :TOXIC, :UPROAR, :UTURN, :WORKUP, :TERABLAST
  s.egg_moves     :COUNTER, :FEINT, :KNOCKOFF, :QUICKATTACK, :QUICKGUARD, :SEISMICTOSS, :VITALTHROW
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        2.0
  s.weight        82.8
  s.color         :White
  s.shape         :BipedalTail
  s.category      "Teamwork"
  s.pokedex_entry "Berries are its weapons as well as the staple of its diet. The one that can throw a berry the farthest is the boss of the troop."
  s.generation    7
end

GameData::Species.define :MARSHADOW do |s|
  s.name          "Marshadow"
  s.types         :FIGHTING, :GHOST
  s.base_stats    hp: 90, attack: 125, defense: 80, speed: 125, sp_atk: 90, sp_def: 90
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     0
  s.evs           attack: 2, speed: 1
  s.abilities     :TECHNICIAN
  s.moves do |m|
    m.at 1, :THUNDERPUNCH
    m.at 1, :FIREPUNCH
    m.at 1, :ICEPUNCH
    m.at 1, :COPYCAT
    m.at 1, :SHADOWSNEAK
    m.at 1, :FEINT
    m.at 1, :COUNTER
    m.at 9, :ROLEPLAY
    m.at 18, :SHADOWPUNCH
    m.at 27, :FORCEPALM
    m.at 36, :ASSURANCE
    m.at 45, :SUCKERPUNCH
    m.at 54, :DRAINPUNCH
    m.at 63, :PSYCHUP
    m.at 72, :SPECTRALTHIEF
    m.at 81, :LASERFOCUS
    m.at 90, :ENDEAVOR
    m.at 99, :CLOSECOMBAT
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :ASSURANCE, :AURASPHERE, :BLAZEKICK, :BOUNCE, :BRICKBREAK, :BULKUP, :CALMMIND, :CLOSECOMBAT, :COACHING, :CONFIDE, :DOUBLETEAM, :DRAINPUNCH, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :GRASSKNOT, :HEX, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :IRONHEAD, :KNOCKOFF, :LASERFOCUS, :LASTRESORT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :PHANTOMFORCE, :POISONJAB, :POLTERGEIST, :PROTECT, :PSYCHUP, :REST, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :ROLEPLAY, :ROUND, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SMACKDOWN, :SNATCH, :SNORE, :STONEEDGE, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWIFT, :THIEF, :THROATCHOP, :THUNDERPUNCH, :TOXIC, :WILLOWISP, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.7
  s.weight        22.2
  s.color         :Gray
  s.shape         :Bipedal
  s.category      "Gloomdweller"
  s.pokedex_entry "Able to conceal itself in shadows, it never appears before humans, so its very existence was the stuff of myth."
  s.generation    7
  s.flags         :Mythical
end

GameData::Species.define :CLOBBOPUS do |s|
  s.name          "Clobbopus"
  s.types         :FIGHTING
  s.base_stats    hp: 50, attack: 68, defense: 60, speed: 32, sp_atk: 50, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    180
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :LIMBER
  s.hidden_abilities :TECHNICIAN
  s.moves do |m|
    m.at 1, :ROCKSMASH
    m.at 1, :LEER
    m.at 5, :FEINT
    m.at 10, :BIND
    m.at 15, :DETECT
    m.at 20, :BRICKBREAK
    m.at 25, :BULKUP
    m.at 30, :SUBMISSION
    m.at 35, :TAUNT
    m.at 40, :REVERSAL
    m.at 45, :SUPERPOWER
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BRINE, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DIVE, :DOUBLETEAM, :ENDURE, :FACADE, :FOCUSBLAST, :FRUSTRATION, :HIDDENPOWER, :ICEPUNCH, :LIQUIDATION, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TAUNT, :TOXIC, :WATERFALL, :WORKUP, :TERABLAST
  s.egg_moves     :CIRCLETHROW, :PAINSPLIT, :POWERUPPUNCH, :SEISMICTOSS, :SOAK, :SUCKERPUNCH
  s.egg_groups    :Water1, :Humanlike
  s.hatch_steps   6400
  s.height        0.6
  s.weight        4.0
  s.color         :Brown
  s.shape         :Multiped
  s.category      "Tantrum"
  s.pokedex_entry "It's very curious, but its means of investigating things is to try to punch them with its tentacles. The search for food is what brings it onto land."
  s.generation    8
  s.evolves_into  :GRAPPLOCT, :HasMove, TAUNT
end

GameData::Species.define :GRAPPLOCT do |s|
  s.name          "Grapploct"
  s.types         :FIGHTING
  s.base_stats    hp: 80, attack: 118, defense: 90, speed: 42, sp_atk: 70, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      168
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :LIMBER
  s.hidden_abilities :TECHNICIAN
  s.moves do |m|
    m.at 0, :OCTOLOCK
    m.at 1, :OCTAZOOKA
    m.at 1, :ROCKSMASH
    m.at 1, :LEER
    m.at 1, :FEINT
    m.at 1, :BIND
    m.at 15, :DETECT
    m.at 20, :BRICKBREAK
    m.at 25, :BULKUP
    m.at 30, :SUBMISSION
    m.at 35, :TAUNT
    m.at 40, :REVERSAL
    m.at 45, :SUPERPOWER
    m.at 50, :TOPSYTURVY
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BRICKBREAK, :BRINE, :BRUTALSWING, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DIG, :DIVE, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :FACADE, :FOCUSBLAST, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYDROPUMP, :HYPERBEAM, :ICEPUNCH, :LIQUIDATION, :MEGAPUNCH, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PAYBACK, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROUND, :SCARYFACE, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SNORE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUPERPOWER, :SURF, :SWAGGER, :TAUNT, :TOXIC, :WATERFALL, :WHIRLPOOL, :WORKUP, :TERABLAST
  s.egg_groups    :Water1, :Humanlike
  s.hatch_steps   6400
  s.height        1.6
  s.weight        39.0
  s.color         :Blue
  s.shape         :Multiped
  s.category      "Jujitsu"
  s.pokedex_entry "A body made up of nothing but muscle makes the grappling moves this Pokémon performs with its tentacles tremendously powerful."
  s.generation    8
end

GameData::Species.define :SIRFETCHD do |s|
  s.name          "Sirfetch'd"
  s.types         :FIGHTING
  s.base_stats    hp: 62, attack: 135, defense: 95, speed: 65, sp_atk: 68, sp_def: 82
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      177
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :STEADFAST
  s.hidden_abilities :SCRAPPY
  s.moves do |m|
    m.at 0, :IRONDEFENSE
    m.at 1, :FIRSTIMPRESSION
    m.at 1, :PECK
    m.at 1, :SANDATTACK
    m.at 1, :LEER
    m.at 1, :FURYCUTTER
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
    m.at 70, :METEORASSAULT
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BODYSLAM, :BRAVEBIRD, :BRICKBREAK, :BRUTALSWING, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FOCUSENERGY, :FRUSTRATION, :GRASSYGLIDE, :HELPINGHAND, :HIDDENPOWER, :IRONDEFENSE, :LEAFBLADE, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :ROUND, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBLADE, :STEELWING, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :THROATCHOP, :WORKUP, :TERABLAST
  s.egg_moves     :COUNTER, :COVET, :CURSE, :DOUBLEEDGE, :FEINT, :FLAIL, :NIGHTSLASH, :QUICKATTACK, :QUICKGUARD, :SIMPLEBEAM, :SKYATTACK
  s.egg_groups    :Flying, :Field
  s.hatch_steps   5120
  s.height        0.8
  s.weight        117.0
  s.color         :White
  s.shape         :Winged
  s.category      "Wild Duck"
  s.pokedex_entry "After deflecting attacks with its hard leaf shield, it strikes back with its sharp leek stalk. The leek stalk is both weapon and food."
  s.generation    8
  s.flags         :DefaultForm_1, :InheritFormWithEverStone
  s.wild_item_uncommon :LEEK
end

GameData::Species.define :FALINKS do |s|
  s.name          "Falinks"
  s.types         :FIGHTING
  s.base_stats    hp: 65, attack: 100, defense: 100, speed: 75, sp_atk: 70, sp_def: 60
  s.gender_ratio  :Genderless
  s.growth_rate   :Medium
  s.base_exp      165
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2, sp_defense: 1
  s.abilities     :BATTLEARMOR
  s.hidden_abilities :DEFIANT
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :PROTECT
    m.at 5, :ROCKSMASH
    m.at 10, :FOCUSENERGY
    m.at 15, :HEADBUTT
    m.at 20, :BULKUP
    m.at 25, :ENDURE
    m.at 30, :REVERSAL
    m.at 35, :FIRSTIMPRESSION
    m.at 40, :NORETREAT
    m.at 45, :IRONDEFENSE
    m.at 50, :CLOSECOMBAT
    m.at 55, :MEGAHORN
    m.at 60, :COUNTER
  end
  s.tutor_moves   :AGILITY, :ASSURANCE, :BEATUP, :BRICKBREAK, :BULKUP, :CLOSECOMBAT, :COACHING, :CONFIDE, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FOCUSBLAST, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :MEGAHORN, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCREECH, :SECRETPOWER, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :THROATCHOP, :TOXIC, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Fairy, :Mineral
  s.hatch_steps   6400
  s.height        3.0
  s.weight        62.0
  s.color         :Yellow
  s.shape         :MultiBody
  s.category      "Formation"
  s.pokedex_entry "The six of them work together as one Pokémon. Teamwork is also their battle strategy, and they constantly change their formation as they fight."
  s.generation    8
end

GameData::Species.define :ZAMAZENTA do |s|
  s.name          "Zamazenta"
  s.types         :FIGHTING
  s.base_stats    hp: 92, attack: 130, defense: 115, speed: 138, sp_atk: 80, sp_def: 115
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      335
  s.catch_rate    10
  s.happiness     0
  s.evs           speed: 3
  s.abilities     :DAUNTLESSSHIELD
  s.moves do |m|
    m.at 1, :METALBURST
    m.at 1, :WIDEGUARD
    m.at 1, :METALCLAW
    m.at 1, :HOWL
    m.at 1, :QUICKATTACK
    m.at 1, :BITE
    m.at 11, :SLASH
    m.at 22, :IRONDEFENSE
    m.at 33, :IRONHEAD
    m.at 44, :LASERFOCUS
    m.at 55, :CRUNCH
    m.at 66, :MOONBLAST
    m.at 77, :CLOSECOMBAT
    m.at 88, :GIGAIMPACT
  end
  s.tutor_moves   :AGILITY, :CLOSECOMBAT, :COACHING, :CONFIDE, :CRUNCH, :DAZZLINGGLEAM, :DIG, :DOUBLETEAM, :ENDURE, :FACADE, :FIREFANG, :FLASHCANNON, :FOCUSBLAST, :FOCUSENERGY, :FRUSTRATION, :GIGAIMPACT, :GUARDSWAP, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :HYPERVOICE, :ICEFANG, :IMPRISON, :IRONDEFENSE, :IRONHEAD, :IRONTAIL, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :PAYBACK, :PLAYROUGH, :POWERSWAP, :PROTECT, :PSYCHICFANGS, :REFLECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROUND, :SAFEGUARD, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :SOLARBEAM, :STEELBEAM, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAILSLAP, :THUNDERFANG, :TOXIC, :WILDCHARGE, :WORKUP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        2.9
  s.weight        210.0
  s.color         :Red
  s.shape         :Quadruped
  s.category      "Warrior"
  s.pokedex_entry "This Pokémon slept for aeons while in the form of a statue. It was asleep for so long, people forgot that it ever existed."
  s.generation    8
  s.flags         :Legendary, :CannotDynamax
  s.wild_item_common   :RUSTEDSHIELD
  s.wild_item_uncommon :RUSTEDSHIELD
  s.wild_item_rare     :RUSTEDSHIELD
end

GameData::Species.define :KUBFU do |s|
  s.name          "Kubfu"
  s.types         :FIGHTING
  s.base_stats    hp: 60, attack: 90, defense: 60, speed: 72, sp_atk: 53, sp_def: 50
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Slow
  s.base_exp      77
  s.catch_rate    3
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :INNERFOCUS
  s.moves do |m|
    m.at 1, :ROCKSMASH
    m.at 1, :LEER
    m.at 4, :ENDURE
    m.at 8, :FOCUSENERGY
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
  s.tutor_moves   :ACROBATICS, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DIG, :DOUBLETEAM, :ENDURE, :FACADE, :FIREPUNCH, :FOCUSENERGY, :FRUSTRATION, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :IRONHEAD, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :THUNDERPUNCH, :TOXIC, :UTURN, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        0.6
  s.weight        12.0
  s.color         :Gray
  s.shape         :BipedalTail
  s.category      "Wushu"
  s.pokedex_entry "Kubfu trains hard to perfect its moves. The moves it masters will determine which form it takes when it evolves."
  s.generation    8
  s.evolves_into  :URSHIFU, :Event, 1
  s.flags         :Legendary
end

GameData::Species.define :URSHIFU do |s|
  s.name          "Urshifu"
  s.types         :FIGHTING, :DARK
  s.base_stats    hp: 100, attack: 130, defense: 100, speed: 97, sp_atk: 63, sp_def: 60
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Slow
  s.base_exp      275
  s.catch_rate    3
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :UNSEENFIST
  s.moves do |m|
    m.at 0, :WICKEDBLOW
    m.at 1, :SUCKERPUNCH
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
  s.tutor_moves   :ACROBATICS, :ASSURANCE, :ATTRACT, :AURASPHERE, :BEATUP, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :CRUNCH, :DARKESTLARIAT, :DARKPULSE, :DIG, :DOUBLETEAM, :DRAINPUNCH, :ENDURE, :FACADE, :FALSESWIPE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :IRONDEFENSE, :IRONHEAD, :LASHOUT, :LOWKICK, :LOWSWEEP, :MEGAKICK, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :PAYBACK, :POISONJAB, :PROTECT, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCARYFACE, :SECRETPOWER, :SLEEPTALK, :SNARL, :SNORE, :STONEEDGE, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :SWIFT, :TAUNT, :THROATCHOP, :THUNDERPUNCH, :TOXIC, :UTURN, :WORKUP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.9
  s.weight        105.0
  s.color         :Gray
  s.shape         :Bipedal
  s.category      "Wushu"
  s.pokedex_entry "Inhabiting the mountains of a distant region, this Pokémon races across sheer cliffs, training its legs and refining its moves."
  s.generation    8
  s.flags         :Legendary
end

