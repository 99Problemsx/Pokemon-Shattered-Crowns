#===============================================================================
# Shattered Crowns - Pokemon Form Definitions
#===============================================================================
# Auto-generated from PBS/pokemon_forms_Gen_9_Pack.txt
# Uses GameData::Species.define_form format
#===============================================================================

GameData::Species.define_form :GROWLITHE, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :FIRE, :ROCK
  f.base_stats    hp: 60, attack: 75, defense: 45, speed: 55, sp_atk: 65, sp_def: 50
  f.hidden_abilities :ROCKHEAD
  f.height        0.8
  f.weight        22.7
  f.pokedex_entry "They patrol their territory in pairs. I believe the igneous rock components in the fur of this species are the result of volcanic activity in its habitat."
  f.moves do |m|
    m.at 1, :EMBER
    m.at 1, :LEER
    m.at 4, :HOWL
    m.at 8, :BITE
    m.at 12, :FLAMEWHEEL
    m.at 16, :HELPINGHAND
    m.at 24, :FIREFANG
    m.at 28, :RETALIATE
    m.at 32, :CRUNCH
    m.at 36, :TAKEDOWN
    m.at 40, :FLAMETHROWER
    m.at 44, :ROAR
    m.at 48, :ROCKSLIDE
    m.at 52, :REVERSAL
    m.at 56, :FLAREBLITZ
  end
  f.tutor_moves   :AGILITY, :BODYSLAM, :CLOSECOMBAT, :CRUNCH, :DIG, :DOUBLEEDGE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :HEATWAVE, :HELPINGHAND, :OUTRAGE, :OVERHEAT, :POWERGEM, :PROTECT, :PSYCHICFANGS, :REST, :REVERSAL, :ROAR, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SCORCHINGSANDS, :SLEEPTALK, :SMACKDOWN, :SMARTSTRIKE, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TEMPERFLARE, :THUNDERFANG, :WILDCHARGE, :WILLOWISP, :TERABLAST
  f.egg_moves     :COVET, :DOUBLEEDGE, :DOUBLEKICK, :HEADSMASH, :MORNINGSUN, :THRASH
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :ARCANINE, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :FIRE, :ROCK
  f.base_stats    hp: 95, attack: 115, defense: 80, speed: 90, sp_atk: 95, sp_def: 80
  f.hidden_abilities :ROCKHEAD
  f.height        2.0
  f.weight        168.0
  f.pokedex_entry "Snaps at its foes with fangs cloaked in blazing flame. Despite its bulk, it deftly feints every which way, leading opponents on a deceptively merry chase as it all but dances around them."
  f.moves do |m|
    m.at 0, :EXTREMESPEED
    m.at 1, :FLAMEWHEEL
    m.at 1, :FIREFANG
    m.at 1, :FLAREBLITZ
    m.at 1, :HOWL
    m.at 1, :HELPINGHAND
    m.at 1, :CRUNCH
    m.at 1, :REVERSAL
    m.at 1, :RETALIATE
    m.at 1, :TAKEDOWN
    m.at 1, :AGILITY
    m.at 1, :ROCKTHROW
    m.at 1, :EMBER
    m.at 1, :ROAR
    m.at 1, :BITE
    m.at 1, :LEER
    m.at 1, :ROCKSLIDE
    m.at 5, :FLAMETHROWER
    m.at 64, :RAGINGFURY
  end
  f.tutor_moves   :AERIALACE, :AGILITY, :BODYSLAM, :BULLDOZE, :CLOSECOMBAT, :CRUNCH, :DIG, :DOUBLEEDGE, :DRAGONPULSE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :GIGAIMPACT, :HEATCRASH, :HEATWAVE, :HELPINGHAND, :HYPERBEAM, :HYPERVOICE, :IRONHEAD, :OUTRAGE, :OVERHEAT, :POWERGEM, :PROTECT, :PSYCHICFANGS, :REST, :REVERSAL, :ROAR, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SCORCHINGSANDS, :SLEEPTALK, :SMACKDOWN, :SMARTSTRIKE, :SNARL, :SOLARBEAM, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TEMPERFLARE, :THIEF, :THUNDERFANG, :WILDCHARGE, :WILLOWISP, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :VOLTORB, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :ELECTRIC, :GRASS
  f.weight        13.0
  f.pokedex_entry "An enigmatic Pokémon that happens to bear a resemblance to a Poké Ball. When excited, it discharges the electric current it has stored in its belly, then lets out a great, uproarious laugh."
  f.evolves_into  :ELECTRODE, :Item, LEAFSTONE
  f.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :CHARGE
    m.at 4, :THUNDERSHOCK
    m.at 6, :STUNSPORE
    m.at 9, :BULLETSEED
    m.at 11, :ROLLOUT
    m.at 13, :SCREECH
    m.at 16, :CHARGEBEAM
    m.at 20, :SWIFT
    m.at 22, :ELECTROBALL
    m.at 26, :SELFDESTRUCT
    m.at 29, :ENERGYBALL
    m.at 34, :DISCHARGE
    m.at 34, :SEEDBOMB
    m.at 41, :EXPLOSION
    m.at 46, :GYROBALL
    m.at 50, :GRASSYTERRAIN
  end
  f.tutor_moves   :AGILITY, :BULLETSEED, :CHARGE, :CHARGEBEAM, :DOUBLEEDGE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FOULPLAY, :GIGADRAIN, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :GYROBALL, :LEAFSTORM, :PROTECT, :RAINDANCE, :REFLECT, :REST, :SEEDBOMB, :SLEEPTALK, :SOLARBEAM, :SUBSTITUTE, :SWIFT, :TAKEDOWN, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  f.egg_moves     :LEECHSEED, :RECYCLE, :WORRYSEED
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :ELECTRODE, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :ELECTRIC, :GRASS
  f.weight        71.0
  f.pokedex_entry "The tissue on the surface of its body is curiously similar in composition to an Apricorn. When irritated, this Pokémon lets loose an electric current equal to 20 lightning bolts."
  f.moves do |m|
    m.at 0, :CHLOROBLAST
    m.at 1, :TACKLE
    m.at 1, :CHARGE
    m.at 4, :THUNDERSHOCK
    m.at 6, :STUNSPORE
    m.at 9, :BULLETSEED
    m.at 11, :ROLLOUT
    m.at 13, :SCREECH
    m.at 16, :CHARGEBEAM
    m.at 20, :SWIFT
    m.at 22, :ELECTROBALL
    m.at 26, :SELFDESTRUCT
    m.at 29, :ENERGYBALL
    m.at 34, :DISCHARGE
    m.at 34, :SEEDBOMB
    m.at 41, :EXPLOSION
    m.at 46, :GYROBALL
    m.at 50, :GRASSYTERRAIN
  end
  f.tutor_moves   :AGILITY, :BULLETSEED, :CHARGE, :CHARGEBEAM, :CURSE, :DOUBLEEDGE, :ELECTRICTERRAIN, :ELECTROBALL, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FOULPLAY, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :GYROBALL, :HYPERBEAM, :LEAFSTORM, :PROTECT, :RAINDANCE, :REFLECT, :REST, :SCARYFACE, :SEEDBOMB, :SLEEPTALK, :SOLARBEAM, :SUBSTITUTE, :SUPERCELLSLAM, :SWIFT, :TAKEDOWN, :TAUNT, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :VOLTSWITCH, :WILDCHARGE, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :TAUROS, 1 do |f|
  f.form_name     "Paldean (Combat Breed)"
  f.types         :FIGHTING
  f.base_stats    hp: 75, attack: 110, defense: 105, speed: 100, sp_atk: 30, sp_def: 70
  f.hidden_abilities :CUDCHEW
  f.weight        115.0
  f.pokedex_entry "This kind of Tauros, known as the Combat Breed, is distinguished by its thick, powerful muscles and its fierce disposition."
  f.moves do |m|
    m.at 1, :TAILWHIP
    m.at 1, :TACKLE
    m.at 5, :WORKUP
    m.at 10, :DOUBLEKICK
    m.at 15, :ASSURANCE
    m.at 20, :HEADBUTT
    m.at 25, :SCARYFACE
    m.at 30, :ZENHEADBUTT
    m.at 35, :RAGINGBULL
    m.at 40, :REST
    m.at 45, :SWAGGER
    m.at 50, :THRASH
    m.at 55, :DOUBLEEDGE
    m.at 60, :CLOSECOMBAT
  end
  f.tutor_moves   :BODYPRESS, :BODYSLAM, :BULKUP, :BULLDOZE, :CLOSECOMBAT, :CURSE, :DIG, :DOUBLEEDGE, :DRILLRUN, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :GIGAIMPACT, :HIGHHORSEPOWER, :HYPERBEAM, :IRONHEAD, :LASHOUT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SLEEPTALK, :SMARTSTRIKE, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SURF, :TAKEDOWN, :THIEF, :THROATCHOP, :TRAILBLAZE, :WILDCHARGE, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :TAUROS, 2 do |f|
  f.form_name     "Paldean (Blaze Breed)"
  f.types         :FIGHTING, :FIRE
  f.base_stats    hp: 75, attack: 110, defense: 105, speed: 100, sp_atk: 30, sp_def: 70
  f.hidden_abilities :CUDCHEW
  f.weight        85.0
  f.pokedex_entry "People call this kind of Tauros the Blaze Breed due to the hot air it snorts from its nostrils. Its three tails are intertwined."
  f.moves do |m|
    m.at 1, :TAILWHIP
    m.at 1, :TACKLE
    m.at 5, :WORKUP
    m.at 10, :DOUBLEKICK
    m.at 15, :FLAMECHARGE
    m.at 20, :HEADBUTT
    m.at 25, :SCARYFACE
    m.at 30, :ZENHEADBUTT
    m.at 35, :RAGINGBULL
    m.at 40, :REST
    m.at 45, :SWAGGER
    m.at 50, :THRASH
    m.at 55, :FLAREBLITZ
    m.at 60, :CLOSECOMBAT
  end
  f.tutor_moves   :BODYPRESS, :BODYSLAM, :BULKUP, :BULLDOZE, :CLOSECOMBAT, :CURSE, :DIG, :DOUBLEEDGE, :DRILLRUN, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :GIGAIMPACT, :HIGHHORSEPOWER, :HYPERBEAM, :IRONHEAD, :LASHOUT, :OUTRAGE, :OVERHEAT, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SLEEPTALK, :SMARTSTRIKE, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TEMPERFLARE, :THIEF, :TRAILBLAZE, :WILDCHARGE, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :TAUROS, 3 do |f|
  f.form_name     "Paldean (Aqua Breed)"
  f.types         :FIGHTING, :WATER
  f.base_stats    hp: 75, attack: 110, defense: 105, speed: 100, sp_atk: 30, sp_def: 70
  f.hidden_abilities :CUDCHEW
  f.weight        110.0
  f.pokedex_entry "It swims by jetting water from its horns. The most notable characteristic of the Aqua Breed is its high body fat, which allows it to float easily."
  f.moves do |m|
    m.at 1, :TAILWHIP
    m.at 1, :TACKLE
    m.at 5, :WORKUP
    m.at 10, :DOUBLEKICK
    m.at 15, :AQUAJET
    m.at 20, :HEADBUTT
    m.at 25, :SCARYFACE
    m.at 30, :ZENHEADBUTT
    m.at 35, :RAGINGBULL
    m.at 40, :REST
    m.at 45, :SWAGGER
    m.at 50, :THRASH
    m.at 55, :WAVECRASH
    m.at 60, :CLOSECOMBAT
  end
  f.tutor_moves   :BODYPRESS, :BODYSLAM, :BULKUP, :BULLDOZE, :CHILLINGWATER, :CLOSECOMBAT, :CURSE, :DIG, :DOUBLEEDGE, :DRILLRUN, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :GIGAIMPACT, :HIGHHORSEPOWER, :HYDROPUMP, :HYPERBEAM, :IRONHEAD, :LASHOUT, :LIQUIDATION, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SLEEPTALK, :SMARTSTRIKE, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SURF, :TAKEDOWN, :THIEF, :TRAILBLAZE, :WATERPULSE, :WHIRLPOOL, :WILDCHARGE, :ZENHEADBUTT, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :TYPHLOSION, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :FIRE, :GHOST
  f.base_stats    hp: 73, attack: 84, defense: 78, speed: 95, sp_atk: 119, sp_def: 85
  f.hidden_abilities :FRISK
  f.height        1.6
  f.weight        69.7
  f.pokedex_entry "Said to purify lost, forsaken souls with its flames and guide them to the afterlife. I believe its form has been influenced by the energy of the sacred mountain towering at Hisui's center."
  f.moves do |m|
    m.at 0, :INFERNALPARADE
    m.at 1, :GYROBALL
    m.at 1, :ERUPTION
    m.at 1, :SMOKESCREEN
    m.at 1, :TACKLE
    m.at 1, :EMBER
    m.at 1, :LEER
    m.at 1, :DOUBLEEDGE
    m.at 13, :QUICKATTACK
    m.at 20, :FLAMEWHEEL
    m.at 24, :DEFENSECURL
    m.at 31, :SWIFT
    m.at 35, :FLAMECHARGE
    m.at 43, :LAVAPLUME
    m.at 48, :FLAMETHROWER
    m.at 56, :INFERNO
    m.at 61, :ROLLOUT
    m.at 74, :OVERHEAT
  end
  f.tutor_moves   :AERIALACE, :BLASTBURN, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :BURNINGJEALOUSY, :CALMMIND, :CONFUSERAY, :CURSE, :DIG, :DOUBLEEDGE, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FIREPUNCH, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FOCUSBLAST, :FOCUSPUNCH, :GIGAIMPACT, :GYROBALL, :HEATWAVE, :HEX, :HYPERBEAM, :IRONHEAD, :LOWKICK, :NIGHTSHADE, :OVERHEAT, :PLAYROUGH, :POLTERGEIST, :PROTECT, :REST, :REVERSAL, :ROAR, :ROCKSLIDE, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SOLARBEAM, :SPITE, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TAKEDOWN, :TEMPERFLARE, :THUNDERPUNCH, :WILDCHARGE, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
end

GameData::Species.define_form :WOOPER, 1 do |f|
  f.form_name     "Paldean"
  f.types         :POISON, :GROUND
  f.abilities     :POISONPOINT, :WATERABSORB
  f.weight        11.0
  f.pokedex_entry "After losing a territorial struggle, Wooper began living on land. The Pokémon changed over time, developing a poisonous film to protect its body."
  f.evolves_into  :CLODSIRE, :Level, 20
  f.moves do |m|
    m.at 1, :MUDSHOT
    m.at 1, :TAILWHIP
    m.at 4, :TACKLE
    m.at 8, :POISONTAIL
    m.at 12, :TOXICSPIKES
    m.at 16, :SLAM
    m.at 21, :YAWN
    m.at 24, :POISONJAB
    m.at 28, :SLUDGEWAVE
    m.at 32, :AMNESIA
    m.at 36, :TOXIC
    m.at 40, :EARTHQUAKE
  end
  f.tutor_moves   :ACIDSPRAY, :AMNESIA, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CHILLINGWATER, :CURSE, :DIG, :DOUBLEEDGE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :GUNKSHOT, :HAZE, :HELPINGHAND, :HYDROPUMP, :LIQUIDATION, :LOWKICK, :MUDSHOT, :MUDSLAP, :POISONJAB, :POISONTAIL, :PROTECT, :RAINDANCE, :REST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SPIKES, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SURF, :TAKEDOWN, :TOXIC, :TOXICSPIKES, :TRAILBLAZE, :VENOSHOCK, :WATERFALL, :WATERPULSE, :TERABLAST
  f.egg_moves     :ACIDSPRAY, :AFTERYOU, :ANCIENTPOWER, :COUNTER, :CURSE, :DOUBLEKICK, :HAZE, :MIST, :RECOVER, :SPITUP, :STOCKPILE, :SWALLOW
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :QWILFISH, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :DARK, :POISON
  f.pokedex_entry "Fishers detest this troublesome Pokémon because it sprays poison from its spines, getting it everywhere. A different form of Qwilfish lives in other regions."
  f.evolves_into  :OVERQWIL, :LevelUseMoveCount, BARBBARRAGE
  f.moves do |m|
    m.at 1, :POISONSTING
    m.at 1, :TACKLE
    m.at 4, :HARDEN
    m.at 8, :BITE
    m.at 12, :FELLSTINGER
    m.at 16, :MINIMIZE
    m.at 20, :SPIKES
    m.at 24, :BRINE
    m.at 28, :BARBBARRAGE
    m.at 32, :PINMISSILE
    m.at 36, :TOXICSPIKES
    m.at 40, :SPITUP
    m.at 40, :STOCKPILE
    m.at 44, :TOXIC
    m.at 48, :CRUNCH
    m.at 52, :ACUPRESSURE
    m.at 56, :DESTINYBOND
  end
  f.tutor_moves   :ACIDSPRAY, :AGILITY, :BLIZZARD, :CHILLINGWATER, :CRUNCH, :CURSE, :DARKPULSE, :DOUBLEEDGE, :ENDURE, :FACADE, :GIGAIMPACT, :GUNKSHOT, :GYROBALL, :HAZE, :HEX, :HYDROPUMP, :ICEBEAM, :ICYWIND, :LASHOUT, :LIQUIDATION, :MUDSHOT, :PAINSPLIT, :POISONJAB, :POISONTAIL, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :SCALESHOT, :SCARYFACE, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SPIKES, :SPITE, :SUBSTITUTE, :SURF, :SWIFT, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THROATCHOP, :TOXIC, :TOXICSPIKES, :VENOSHOCK, :WATERFALL, :WATERPULSE, :TERABLAST
  f.egg_moves     :ACIDSPRAY, :AQUAJET, :AQUATAIL, :ASTONISH, :BUBBLEBEAM, :FLAIL, :HAZE, :SELFDESTRUCT, :SUPERSONIC, :WATERPULSE
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :SNEASEL, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :FIGHTING, :POISON
  f.weight        27.0
  f.pokedex_entry "Its sturdy, curved claws are ideal for traversing precipitous cliffs. From the tips of these claws drips a venom that infiltrates the nerves of any prey caught in Sneasel's grasp."
  f.evolves_into  :SNEASLER, :DayHoldItem, RAZORCLAW
  f.moves do |m|
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
  f.tutor_moves   :ACIDSPRAY, :AERIALACE, :AGILITY, :BRICKBREAK, :BULKUP, :CALMMIND, :CLOSECOMBAT, :COACHING, :DIG, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :LASHOUT, :LOWKICK, :LOWSWEEP, :METALCLAW, :NASTYPLOT, :POISONJAB, :POISONTAIL, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SPITE, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :TOXIC, :TOXICSPIKES, :TRAILBLAZE, :VACUUMWAVE, :VENOSHOCK, :XSCISSOR, :TERABLAST
  f.egg_moves     :COUNTER, :DOUBLEHIT, :FAKEOUT, :FEINT, :NIGHTSLASH, :QUICKGUARD, :SWITCHEROO
  f.flags         :InheritFormWithEverStone, :HasGenderedSprites
end

GameData::Species.define_form :DIALGA, 1 do |f|
  f.form_name     "Origin Forme"
  f.base_stats    hp: 100, attack: 100, defense: 120, speed: 90, sp_atk: 150, sp_def: 120
  f.height        7.0
  f.weight        848.7
  f.pokedex_entry "Radiant light caused Dialga to take on a form bearing a striking resemblance to the creator Pokémon. Dialga now wields such colossal strength that one must conclude this is its true form."
end

GameData::Species.define_form :PALKIA, 1 do |f|
  f.form_name     "Origin Forme"
  f.base_stats    hp: 90, attack: 100, defense: 100, speed: 120, sp_atk: 150, sp_def: 120
  f.height        6.3
  f.weight        659.0
  f.pokedex_entry "It soars across the sky in a form that greatly resembles the creator of all things. Perhaps this imitation of appearance is Palkia's strategy for gaining Arceus's powers."
end

GameData::Species.define_form :SAMUROTT, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :WATER, :DARK
  f.base_stats    hp: 90, attack: 108, defense: 80, speed: 85, sp_atk: 100, sp_def: 65
  f.hidden_abilities :SHARPNESS
  f.weight        58.2
  f.pokedex_entry "Hard of heart and deft of blade, this rare form of Samurott is a product of the Pokémon's evolution in the region of Hisui. Its turbulent blows crash into foes like ceaseless pounding waves."
  f.moves do |m|
    m.at 0, :CEASELESSEDGE
    m.at 1, :SLASH
    m.at 1, :SUCKERPUNCH
    m.at 1, :MEGAHORN
    m.at 1, :TAILWHIP
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 13, :FOCUSENERGY
    m.at 18, :RAZORSHELL
    m.at 21, :FURYCUTTER
    m.at 25, :WATERPULSE
    m.at 29, :AERIALACE
    m.at 34, :AQUAJET
    m.at 39, :ENCORE
    m.at 46, :AQUATAIL
    m.at 51, :RETALIATE
    m.at 58, :SWORDSDANCE
    m.at 63, :HYDROPUMP
  end
  f.tutor_moves   :AERIALACE, :AIRSLASH, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CHILLINGWATER, :DARKPULSE, :DIG, :DRILLRUN, :ENCORE, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FLIPTURN, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HYDROCANNON, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICYWIND, :KNOCKOFF, :LASHOUT, :LIQUIDATION, :PROTECT, :RAINDANCE, :REST, :SCARYFACE, :SLEEPTALK, :SMARTSTRIKE, :SNARL, :SNOWSCAPE, :SUBSTITUTE, :SURF, :SWIFT, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :UPPERHAND, :VACUUMWAVE, :WATERFALL, :WATERPLEDGE, :WATERPULSE, :WHIRLPOOL, :XSCISSOR, :TERABLAST
end

GameData::Species.define_form :LILLIGANT, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :GRASS, :FIGHTING
  f.base_stats    hp: 70, attack: 105, defense: 75, speed: 105, sp_atk: 50, sp_def: 75
  f.abilities     :CHLOROPHYLL, :HUSTLE
  f.height        1.2
  f.weight        19.2
  f.pokedex_entry "They suspect that its well-developed legs are the result of a life spent on mountains covered in deep snow. The scent it exudes from its flower crown heartens those in proximity."
  f.moves do |m|
    m.at 0, :VICTORYDANCE
    m.at 1, :TEETERDANCE
    m.at 1, :SOLARBLADE
    m.at 1, :PETALBLIZZARD
    m.at 1, :AFTERYOU
    m.at 1, :ENTRAINMENT
    m.at 1, :LEAFSTORM
    m.at 1, :DEFOG
    m.at 1, :ENERGYBALL
    m.at 1, :LEAFBLADE
    m.at 1, :MAGICALLEAF
    m.at 1, :MEGAKICK
    m.at 1, :SUNNYDAY
    m.at 1, :SYNTHESIS
    m.at 1, :GIGADRAIN
    m.at 1, :SLEEPPOWDER
    m.at 1, :STUNSPORE
    m.at 1, :GROWTH
    m.at 1, :LEECHSEED
    m.at 1, :MEGADRAIN
    m.at 1, :ABSORB
    m.at 1, :HELPINGHAND
    m.at 5, :AXEKICK
  end
  f.tutor_moves   :ACROBATICS, :AERIALACE, :AIRSLASH, :BRICKBREAK, :BULLETSEED, :CHARM, :CLOSECOMBAT, :COACHING, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSYGLIDE, :GRASSYTERRAIN, :HELPINGHAND, :HURRICANE, :HYPERBEAM, :ICESPINNER, :LEAFSTORM, :LOWKICK, :LOWSWEEP, :MAGICALLEAF, :METRONOME, :PETALBLIZZARD, :POISONJAB, :POLLENPUFF, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :SEEDBOMB, :SLEEPTALK, :SOLARBEAM, :SOLARBLADE, :SUBSTITUTE, :SUNNYDAY, :SWORDSDANCE, :TAKEDOWN, :TRAILBLAZE, :TRIPLEAXEL, :UPPERHAND, :VACUUMWAVE, :WEATHERBALL, :TERABLAST
end

GameData::Species.define_form :BASCULIN, 2 do |f|
  f.form_name     "White-Striped"
  f.abilities     :RATTLED, :ADAPTABILITY
  f.pokedex_entry "Though it differs from other Basculin in several respects, including demeanor—this one is gentle—people have categorized it as a regional form given the vast array of shared qualities."
  f.evolves_into  :BASCULEGION, :LevelRecoilDamage, 294
  f.moves do |m|
    m.at 1, :WATERGUN
    m.at 1, :TAILWHIP
    m.at 4, :TACKLE
    m.at 8, :FLAIL
    m.at 12, :AQUAJET
    m.at 16, :BITE
    m.at 20, :SCARYFACE
    m.at 24, :HEADBUTT
    m.at 28, :SOAK
    m.at 32, :CRUNCH
    m.at 36, :TAKEDOWN
    m.at 40, :UPROAR
    m.at 44, :WAVECRASH
    m.at 48, :THRASH
    m.at 52, :DOUBLEEDGE
    m.at 56, :HEADSMASH
  end
  f.tutor_moves   :AGILITY, :BLIZZARD, :CHILLINGWATER, :CRUNCH, :DOUBLEEDGE, :ENDEAVOR, :ENDURE, :FACADE, :FLIPTURN, :HYDROPUMP, :ICEBEAM, :ICEFANG, :ICYWIND, :LIQUIDATION, :MUDDYWATER, :MUDSHOT, :PROTECT, :PSYCHICFANGS, :RAINDANCE, :REST, :SCALESHOT, :SCARYFACE, :SLEEPTALK, :SNOWSCAPE, :SUBSTITUTE, :SURF, :SWIFT, :TAKEDOWN, :UPROAR, :WATERFALL, :WATERPULSE, :WHIRLPOOL, :ZENHEADBUTT, :TERABLAST
  f.egg_moves     :ENDEAVOR, :LASTRESPECTS
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :ZORUA, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :NORMAL, :GHOST
  f.base_stats    hp: 35, attack: 60, defense: 40, speed: 70, sp_atk: 85, sp_def: 40
  f.pokedex_entry "A once-departed soul, returned to life in Hisui. Derives power from resentment, which rises as energy atop its head and takes on the forms of foes. In this way, Zorua vents lingering malice."
  f.moves do |m|
    m.at 1, :LEER
    m.at 1, :SCRATCH
    m.at 4, :TORMENT
    m.at 8, :HONECLAWS
    m.at 12, :SHADOWSNEAK
    m.at 16, :CURSE
    m.at 20, :TAUNT
    m.at 24, :KNOCKOFF
    m.at 28, :SPITE
    m.at 32, :AGILITY
    m.at 36, :SHADOWBALL
    m.at 40, :BITTERMALICE
    m.at 44, :NASTYPLOT
    m.at 48, :FOULPLAY
  end
  f.tutor_moves   :AGILITY, :BURNINGJEALOUSY, :CALMMIND, :CONFUSERAY, :CURSE, :DARKPULSE, :DIG, :ENDURE, :FACADE, :FAKETEARS, :FLING, :FOCUSPUNCH, :FOULPLAY, :GIGAIMPACT, :HEX, :HYPERBEAM, :ICYWIND, :IMPRISON, :KNOCKOFF, :LASHOUT, :NASTYPLOT, :NIGHTSHADE, :PAINSPLIT, :PHANTOMFORCE, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :ROAR, :SHADOWBALL, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNOWSCAPE, :SPITE, :SUBSTITUTE, :SWIFT, :TAKEDOWN, :TAUNT, :THIEF, :TRICK, :UTURN, :WILLOWISP, :TERABLAST
  f.egg_moves     :COMEUPPANCE, :DETECT, :EXTRASENSORY, :MEMENTO
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :ZOROARK, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :NORMAL, :GHOST
  f.base_stats    hp: 55, attack: 100, defense: 60, speed: 110, sp_atk: 125, sp_def: 60
  f.weight        73.0
  f.pokedex_entry "With its disheveled white fur, it looks like an embodiment of death. Heedless of its own safety, Zoroark attacks its nemeses with a bitter energy so intense, it lacerates Zoroark's own body."
  f.moves do |m|
    m.at 0, :SHADOWCLAW
    m.at 1, :UTURN
    m.at 1, :HONECLAWS
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :TORMENT
    m.at 12, :SHADOWSNEAK
    m.at 16, :CURSE
    m.at 20, :TAUNT
    m.at 24, :KNOCKOFF
    m.at 28, :SPITE
    m.at 34, :AGILITY
    m.at 40, :SHADOWBALL
    m.at 46, :BITTERMALICE
    m.at 52, :NASTYPLOT
    m.at 58, :FOULPLAY
  end
  f.tutor_moves   :AERIALACE, :AGILITY, :BODYSLAM, :BRICKBREAK, :BURNINGJEALOUSY, :CALMMIND, :CONFUSERAY, :CRUNCH, :CURSE, :DARKPULSE, :DIG, :ENDURE, :FACADE, :FAKETEARS, :FLAMETHROWER, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FOULPLAY, :GIGAIMPACT, :GRASSKNOT, :HELPINGHAND, :HEX, :HYPERBEAM, :HYPERVOICE, :ICYWIND, :IMPRISON, :KNOCKOFF, :LASHOUT, :LOWKICK, :LOWSWEEP, :NASTYPLOT, :NIGHTSHADE, :PAINSPLIT, :PHANTOMFORCE, :POLTERGEIST, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :ROAR, :SCARYFACE, :SHADOWBALL, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNARL, :SNOWSCAPE, :SPITE, :SUBSTITUTE, :SWIFT, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :TRICK, :UTURN, :WILLOWISP, :TERABLAST
  f.flags         :InheritFormWithEverStone
end

GameData::Species.define_form :BRAVIARY, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :PSYCHIC, :FLYING
  f.base_stats    hp: 110, attack: 83, defense: 70, speed: 65, sp_atk: 112, sp_def: 70
  f.hidden_abilities :TINTEDLENS
  f.height        1.7
  f.weight        43.4
  f.pokedex_entry "Screaming a bloodcurdling battle cry, this huge and ferocious bird Pokémon goes out on the hunt. It blasts lakes with shock waves, then scoops up any prey that float to the water's surface."
  f.moves do |m|
    m.at 0, :ESPERWING
    m.at 1, :SUPERPOWER
    m.at 1, :LEER
    m.at 1, :WINGATTACK
    m.at 1, :HONECLAWS
    m.at 1, :SKYATTACK
    m.at 1, :PECK
    m.at 18, :TAILWIND
    m.at 24, :SCARYFACE
    m.at 30, :AERIALACE
    m.at 36, :SLASH
    m.at 42, :WHIRLWIND
    m.at 48, :CRUSHCLAW
    m.at 57, :AIRSLASH
    m.at 64, :DEFOG
    m.at 72, :THRASH
    m.at 80, :HURRICANE
  end
  f.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :BODYSLAM, :BRAVEBIRD, :BULKUP, :CALMMIND, :CLOSECOMBAT, :CONFUSERAY, :DAZZLINGGLEAM, :DOUBLEEDGE, :DUALWINGBEAT, :ENDURE, :EXPANDINGFORCE, :FACADE, :FEATHERDANCE, :FLY, :FUTURESIGHT, :GIGAIMPACT, :HEATWAVE, :HELPINGHAND, :HURRICANE, :HYPERBEAM, :HYPERVOICE, :ICYWIND, :METALCLAW, :NIGHTSHADE, :PROTECT, :PSYBEAM, :PSYCHIC, :PSYCHICNOISE, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REST, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :SCARYFACE, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SNARL, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TAILWIND, :TAKEDOWN, :UTURN, :VACUUMWAVE, :ZENHEADBUTT, :TERABLAST
end

GameData::Species.define_form :SLIGGOO, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :STEEL, :DRAGON
  f.base_stats    hp: 58, attack: 75, defense: 83, speed: 40, sp_atk: 83, sp_def: 113
  f.abilities     :SAPSIPPER, :SHELLARMOR
  f.height        0.7
  f.weight        68.5
  f.pokedex_entry "A creature given to melancholy. I suspect its metallic shell developed as a result of the mucus on its skin reacting with the iron in Hisui's water."
  f.moves do |m|
    m.at 0, :SHELTER
    m.at 1, :ACIDARMOR
    m.at 1, :DRAGONBREATH
    m.at 1, :TACKLE
    m.at 1, :WATERGUN
    m.at 1, :ABSORB
    m.at 15, :PROTECT
    m.at 20, :FLAIL
    m.at 25, :WATERPULSE
    m.at 30, :RAINDANCE
    m.at 35, :DRAGONPULSE
    m.at 43, :CURSE
    m.at 49, :IRONHEAD
    m.at 56, :MUDDYWATER
  end
  f.tutor_moves   :ACIDSPRAY, :BLIZZARD, :BODYSLAM, :CHARM, :CHILLINGWATER, :CURSE, :DRACOMETEOR, :DRAGONPULSE, :ENDURE, :FACADE, :FLASHCANNON, :GYROBALL, :HEAVYSLAM, :ICEBEAM, :ICESPINNER, :IRONHEAD, :MUDDYWATER, :MUDSHOT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :STEELBEAM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :THUNDER, :THUNDERBOLT, :WATERPULSE, :TERABLAST
end

GameData::Species.define_form :GOODRA, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :STEEL, :DRAGON
  f.base_stats    hp: 80, attack: 100, defense: 100, speed: 60, sp_atk: 110, sp_def: 150
  f.abilities     :SAPSIPPER, :SHELLARMOR
  f.height        1.7
  f.weight        334.1
  f.pokedex_entry "Able to freely control the hardness of its metallic shell. It loathes solitude and is extremely clingy—it will fume and run riot if those dearest to it ever leave its side."
  f.moves do |m|
    m.at 0, :IRONTAIL
    m.at 1, :SHELTER
    m.at 1, :ACIDSPRAY
    m.at 1, :FEINT
    m.at 1, :TEARFULLOOK
    m.at 1, :DRAGONBREATH
    m.at 1, :TACKLE
    m.at 1, :ABSORB
    m.at 1, :WATERGUN
    m.at 15, :PROTECT
    m.at 20, :FLAIL
    m.at 25, :WATERPULSE
    m.at 30, :RAINDANCE
    m.at 35, :DRAGONPULSE
    m.at 43, :CURSE
    m.at 49, :BODYSLAM
    m.at 49, :IRONHEAD
    m.at 58, :MUDDYWATER
    m.at 67, :HEAVYSLAM
  end
  f.tutor_moves   :ACIDSPRAY, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BULLDOZE, :CHARM, :CHILLINGWATER, :CURSE, :DRACOMETEOR, :DRAGONCHEER, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREPUNCH, :FLAMETHROWER, :FLASHCANNON, :GIGAIMPACT, :GYROBALL, :HEAVYSLAM, :HYDROPUMP, :HYPERBEAM, :ICEBEAM, :ICESPINNER, :IRONHEAD, :KNOCKOFF, :LASHOUT, :MUDDYWATER, :MUDSHOT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :STEELBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :SURF, :TAKEDOWN, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :WATERPULSE, :WEATHERBALL, :TERABLAST
end

GameData::Species.define_form :AVALUGG, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :ICE, :ROCK
  f.base_stats    hp: 95, attack: 127, defense: 184, speed: 38, sp_atk: 34, sp_def: 36
  f.abilities     :STRONGJAW, :ICEBODY
  f.height        1.4
  f.weight        262.4
  f.pokedex_entry "The armor of ice covering its lower jaw puts steel to shame and can shatter rocks with ease. This Pokémon barrels along steep mountain paths, cleaving through the deep snow."
  f.moves do |m|
    m.at 0, :ROCKSLIDE
    m.at 1, :POWDERSNOW
    m.at 1, :RAPIDSPIN
    m.at 1, :WIDEGUARD
    m.at 1, :HARDEN
    m.at 1, :TACKLE
    m.at 9, :CURSE
    m.at 12, :ICYWIND
    m.at 15, :PROTECT
    m.at 18, :AVALANCHE
    m.at 21, :BITE
    m.at 24, :ICEFANG
    m.at 27, :IRONDEFENSE
    m.at 30, :RECOVER
    m.at 33, :CRUNCH
    m.at 36, :TAKEDOWN
    m.at 41, :BLIZZARD
    m.at 46, :DOUBLEEDGE
    m.at 51, :STONEEDGE
    m.at 61, :MOUNTAINGALE
  end
  f.tutor_moves   :AVALANCHE, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CHILLINGWATER, :CRUNCH, :CURSE, :DIG, :DOUBLEEDGE, :EARTHQUAKE, :ENDURE, :FACADE, :GIGAIMPACT, :GYROBALL, :HARDPRESS, :HEAVYSLAM, :HIGHHORSEPOWER, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICESPINNER, :ICICLESPEAR, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :METEORBEAM, :PROTECT, :RAINDANCE, :REST, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SLEEPTALK, :SNOWSCAPE, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :TAKEDOWN, :TERABLAST
end

GameData::Species.define_form :DECIDUEYE, 1 do |f|
  f.form_name     "Hisuian"
  f.types         :GRASS, :FIGHTING
  f.base_stats    hp: 88, attack: 112, defense: 80, speed: 60, sp_atk: 95, sp_def: 95
  f.hidden_abilities :SCRAPPY
  f.weight        37.0
  f.pokedex_entry "The air stored inside the rachises of Decidueye's feathers insulates the Pokémon against Hisui's extreme cold. This is firm proof that evolution can be influenced by environment."
  f.moves do |m|
    m.at 0, :TRIPLEARROWS
    m.at 1, :LEAFSTORM
    m.at 1, :LEAFAGE
    m.at 1, :TACKLE
    m.at 1, :GROWL
    m.at 1, :UTURN
    m.at 9, :PECK
    m.at 12, :SHADOWSNEAK
    m.at 15, :RAZORLEAF
    m.at 20, :SYNTHESIS
    m.at 25, :PLUCK
    m.at 30, :BULKUP
    m.at 37, :SUCKERPUNCH
    m.at 44, :LEAFBLADE
    m.at 51, :FEATHERDANCE
    m.at 58, :BRAVEBIRD
  end
  f.tutor_moves   :AERIALACE, :AIRCUTTER, :AIRSLASH, :AURASPHERE, :BATONPASS, :BRAVEBIRD, :BRICKBREAK, :BULKUP, :BULLETSEED, :CLOSECOMBAT, :COACHING, :CONFUSERAY, :DUALWINGBEAT, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FEATHERDANCE, :FOCUSBLAST, :FOCUSPUNCH, :FRENZYPLANT, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :GRASSPLEDGE, :GRASSYGLIDE, :GRASSYTERRAIN, :HAZE, :HELPINGHAND, :HYPERBEAM, :KNOCKOFF, :LEAFSTORM, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :MAGICALLEAF, :NASTYPLOT, :NIGHTSHADE, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :ROCKTOMB, :SCARYFACE, :SEEDBOMB, :SHADOWCLAW, :SLEEPTALK, :SMACKDOWN, :SOLARBEAM, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :SWORDSDANCE, :TAILWIND, :TAKEDOWN, :TAUNT, :TRAILBLAZE, :UPPERHAND, :UTURN, :TERABLAST
end

GameData::Species.define_form :URSALUNA, 1 do |f|
  f.form_name     "Bloodmoon Ursaluna"
  f.base_stats    hp: 113, attack: 70, defense: 120, speed: 52, sp_atk: 135, sp_def: 65
  f.abilities     :MINDSEYE
  f.height        2.7
  f.weight        333.0
  f.moves do |m|
    m.at -1, :MOONLIGHT
    m.at 1, :HEADLONGRUSH
    m.at 1, :SCRATCH
    m.at 1, :LEER
    m.at 1, :LICK
    m.at 8, :FURYSWIPES
    m.at 13, :PAYBACK
    m.at 17, :HARDEN
    m.at 22, :SLASH
    m.at 25, :PLAYNICE
    m.at 35, :SCARYFACE
    m.at 41, :SNORE
    m.at 41, :REST
    m.at 48, :EARTHPOWER
    m.at 56, :MOONBLAST
    m.at 64, :HAMMERARM
    m.at 70, :BLOODMOON
  end
  f.tutor_moves   :AVALANCHE, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CALMMIND, :CRUNCH, :DIG, :DOUBLEEDGE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :GIGAIMPACT, :GUNKSHOT, :HARDPRESS, :HEAVYSLAM, :HELPINGHAND, :HIGHHORSEPOWER, :HYPERBEAM, :HYPERVOICE, :ICEPUNCH, :LOWKICK, :METALCLAW, :MUDSHOT, :PROTECT, :RAINDANCE, :REST, :ROAR, :ROCKSLIDE, :ROCKTOMB, :SCARYFACE, :SEEDBOMB, :SHADOWCLAW, :SLEEPTALK, :SMACKDOWN, :SNARL, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THIEF, :THUNDERPUNCH, :TRAILBLAZE, :UPROAR, :VACUUMWAVE, :TERABLAST
end

GameData::Species.define_form :BASCULEGION, 1 do |f|
  f.form_name     "Female"
  f.base_stats    hp: 120, attack: 92, defense: 65, speed: 78, sp_atk: 100, sp_def: 75
  f.flags         :DefaultForm_2, :InheritFormWithEverStone
end

GameData::Species.define_form :ENAMORUS, 1 do |f|
  f.form_name     "Therian Form"
  f.base_stats    hp: 74, attack: 115, defense: 110, speed: 46, sp_atk: 135, sp_def: 100
  f.abilities     :OVERCOAT
  f.pokedex_entry "A different guise from its feminine humanoid form. From the clouds, it descends upon those who treat any form of life with disrespect and metes out wrathful, ruthless punishment."
end

GameData::Species.define_form :OINKOLOGNE, 1 do |f|
  f.form_name     "Female"
  f.base_stats    hp: 115, attack: 90, defense: 70, speed: 65, sp_atk: 59, sp_def: 90
  f.abilities     :AROMAVEIL, :GLUTTONY
  f.pokedex_entry "This is a meticulous Pokémon that likes to keep things tidy. It shrouds itself in a floral aroma that soothes the Pokémon around it."
  f.moves do |m|
    m.at 1, :TAILWHIP
    m.at 1, :TACKLE
    m.at 3, :DISARMINGVOICE
    m.at 6, :ECHOEDVOICE
    m.at 9, :MUDSHOT
    m.at 12, :COVET
    m.at 15, :DIG
    m.at 17, :HEADBUTT
    m.at 23, :YAWN
    m.at 28, :TAKEDOWN
    m.at 30, :WORKUP
    m.at 34, :UPROAR
    m.at 39, :DOUBLEEDGE
    m.at 45, :EARTHPOWER
    m.at 51, :BELCH
  end
end

GameData::Species.define_form :DUDUNSPARCE, 1 do |f|
  f.form_name     "Three-Segment Form"
  f.height        4.5
  f.weight        47.4
end

GameData::Species.define_form :PALAFIN, 1 do |f|
  f.form_name     "Hero Form"
  f.base_stats    hp: 100, attack: 160, defense: 97, speed: 100, sp_atk: 106, sp_def: 87
  f.height        1.8
  f.weight        97.4
end

GameData::Species.define_form :MAUSHOLD, 1 do |f|
  f.form_name     "Family of Three"
  f.weight        2.3
end

GameData::Species.define_form :REVAVROOM, 1 do |f|
  f.types         :FIRE
  f.abilities     :SPEEDBOOST
end

GameData::Species.define_form :REVAVROOM, 2 do |f|
  f.types         :FAIRY
  f.abilities     :MISTYSURGE
end

GameData::Species.define_form :REVAVROOM, 3 do |f|
  f.types         :FIGHTING
  f.abilities     :STAMINA
end

GameData::Species.define_form :REVAVROOM, 4 do |f|
  f.types         :POISON
  f.abilities     :TOXICDEBRIS
end

GameData::Species.define_form :REVAVROOM, 5 do |f|
  f.types         :DARK
  f.abilities     :INTIMIDATE
end

GameData::Species.define_form :TATSUGIRI, 1 do |f|
  f.form_name     "Droopy Form"
  f.pokedex_entry "This species’ differing colors and patterns are apparently the result of Tatsugiri changing itself to suit the preferences of the prey it lures in."
end

GameData::Species.define_form :TATSUGIRI, 2 do |f|
  f.form_name     "Stretchy Form"
  f.pokedex_entry "Bird Pokémon are its main prey. This Pokémon knows it’s weak, so it hunts with a partner."
end

GameData::Species.define_form :SQUAWKABILLY, 1 do |f|
  f.form_name     "Blue Plumage"
  f.pokedex_entry "Blue-feathered Squawkabilly view their green- feathered counterparts as rivals, since the latter make up the largest, most powerful groups."
end

GameData::Species.define_form :SQUAWKABILLY, 2 do |f|
  f.form_name     "Yellow Plumage"
  f.hidden_abilities :SHEERFORCE
  f.pokedex_entry "The yellow Squawkabilly are especially fierce. They've even been known to drive other bird Pokémon out of town."
end

GameData::Species.define_form :SQUAWKABILLY, 3 do |f|
  f.form_name     "White Plumage"
  f.hidden_abilities :SHEERFORCE
  f.pokedex_entry "Though these Squawkabilly are the fewest in number, they have no trouble living in towns since they blend in with the white buildings."
end

GameData::Species.define_form :GIMMIGHOUL, 1 do |f|
  f.form_name     "Roaming Form"
  f.abilities     :RUNAWAY
  f.height        0.1
  f.weight        0.1
  f.pokedex_entry "This Pokémon was born from passion that seeped into a coin. It wanders, apparently seeking to return to the treasure chest it once inhabited."
  f.evolves_into  :GHOLDENGO, :None
end

GameData::Species.define_form :POLTCHAGEIST, 1 do |f|
  f.form_name     "Artisan Form"
  f.pokedex_entry "It sprinkles some of its powdery body onto food and drains the life-force from those who so much as lick it."
  f.evolves_into  :SINISTCHA, :Item, MASTERPIECETEACUP
end

GameData::Species.define_form :SINISTCHA, 1 do |f|
  f.form_name     "Masterpiece Form"
  f.pokedex_entry "It lives inside a superb teacup that was crafted by a potter of great renown. Collectors positively adore this Pokémon."
end

GameData::Species.define_form :OGERPON, 1 do |f|
  f.form_name     "Wellspring Mask"
  f.types         :GRASS, :WATER
  f.abilities     :WATERABSORB
  f.pokedex_entry "This form excels in both attack and defense. It ceaselessly unleashes moves like a spring gushes water."
  f.flags         :Legendary, :TeraType_WATER
end

GameData::Species.define_form :OGERPON, 2 do |f|
  f.form_name     "Hearthflame Mask"
  f.types         :GRASS, :FIRE
  f.abilities     :MOLDBREAKER
  f.pokedex_entry "This form is the most aggressive, bombarding enemies with the intensity of flames blazing within a hearth."
  f.flags         :Legendary, :TeraType_FIRE
end

GameData::Species.define_form :OGERPON, 3 do |f|
  f.form_name     "Cornerstone Mask"
  f.types         :GRASS, :ROCK
  f.abilities     :STURDY
  f.pokedex_entry "This form has excellent defenses, absorbing impacts solidly like the cornerstones that support houses."
  f.flags         :Legendary, :TeraType_ROCK
end

GameData::Species.define_form :OGERPON, 4 do |f|
  f.flags         :Legendary, :TeraType_GRASS
end

GameData::Species.define_form :OGERPON, 5 do |f|
  f.form_name     "Wellspring Mask"
  f.types         :GRASS, :WATER
  f.abilities     :WATERABSORB
  f.flags         :Legendary, :TeraType_WATER
end

GameData::Species.define_form :OGERPON, 6 do |f|
  f.form_name     "Hearthflame Mask"
  f.types         :GRASS, :FIRE
  f.abilities     :MOLDBREAKER
  f.flags         :Legendary, :TeraType_FIRE
end

GameData::Species.define_form :OGERPON, 7 do |f|
  f.form_name     "Cornerstone Mask"
  f.types         :GRASS, :ROCK
  f.abilities     :STURDY
  f.flags         :Legendary, :TeraType_ROCK
end

GameData::Species.define_form :OGERPON, 8 do |f|
  f.form_name     "Terastal Teal Mask"
  f.abilities     :EMBODYASPECT
  f.flags         :Legendary, :CannotDynamax, :TeraType_GRASS
end

GameData::Species.define_form :OGERPON, 9 do |f|
  f.form_name     "Terastal Wellspring Mask"
  f.types         :GRASS, :WATER
  f.abilities     :EMBODYASPECT_1
  f.flags         :Legendary, :TeraType_WATER, :CannotDynamax
end

GameData::Species.define_form :OGERPON, 10 do |f|
  f.form_name     "Terastal Hearthflame Mask"
  f.types         :GRASS, :FIRE
  f.abilities     :EMBODYASPECT_2
  f.flags         :Legendary, :TeraType_FIRE, :CannotDynamax
end

GameData::Species.define_form :OGERPON, 11 do |f|
  f.form_name     "Terastal Cornerstone Mask"
  f.types         :GRASS, :ROCK
  f.abilities     :EMBODYASPECT_3
  f.flags         :Legendary, :TeraType_ROCK, :CannotDynamax
end

GameData::Species.define_form :TERAPAGOS, 1 do |f|
  f.form_name     "Terastal Form"
  f.base_stats    hp: 95, attack: 95, defense: 110, speed: 85, sp_atk: 105, sp_def: 110
  f.abilities     :TERASHELL
  f.height        0.3
  f.weight        16.0
  f.pokedex_entry "The shell is made of crystallized Terastal energy. When struck by a move, this shell absorbs the move’s energy and transfers it to Terapagos."
  f.flags         :Legendary, :TeraType_STELLAR
end

GameData::Species.define_form :TERAPAGOS, 2 do |f|
  f.form_name     "Stellar Form"
  f.base_stats    hp: 160, attack: 105, defense: 110, speed: 85, sp_atk: 130, sp_def: 110
  f.abilities     :TERAFORMZERO
  f.height        1.7
  f.weight        77.0
  f.pokedex_entry "In this form, Terapagos resembles the world as the ancients saw it, and its Terastal energy is abnormally amplified."
  f.flags         :Legendary, :TeraType_STELLAR, :CannotDynamax
end

GameData::Species.define_form :CLEFABLE, 1 do |f|
  f.form_name     "Mega Clefable"
  f.types         :FAIRY, :FLYING
  f.base_stats    hp: 95, attack: 80, defense: 93, speed: 135, sp_atk: 110, sp_def: 70
  f.mega_stone    :CLEFABLITE
  f.height        1.7
  f.weight        42.3
  f.pokedex_entry "It flies by using the power of moonlight to control gravity within a radius of over 32 feet around it."
end

GameData::Species.define_form :VICTREEBEL, 1 do |f|
  f.form_name     "Mega Victreebel"
  f.base_stats    hp: 80, attack: 125, defense: 85, speed: 135, sp_atk: 95, sp_def: 70
  f.mega_stone    :VICTREEBELITE
  f.height        4.5
  f.weight        125.5
  f.pokedex_entry "The volume of this Pokémon's acid has increased and filling its mouth. If it's not careful, it will overflow and spill out."
end

GameData::Species.define_form :STARMIE, 1 do |f|
  f.form_name     "Mega Starmie"
  f.base_stats    hp: 60, attack: 140, defense: 105, speed: 130, sp_atk: 105, sp_def: 120
  f.mega_stone    :STARMINITE
  f.height        2.3
  f.pokedex_entry "Its movements have become more humanlike. Whether it's simply trying to communicate or wants to supplant humanity is unclear."
end

GameData::Species.define_form :DRAGONITE, 1 do |f|
  f.form_name     "Mega Dragonite"
  f.base_stats    hp: 91, attack: 124, defense: 115, speed: 145, sp_atk: 125, sp_def: 100
  f.mega_stone    :DRAGONINITE
  f.height        1.7
  f.weight        42.3
  f.pokedex_entry "Mega Evolution has excessively powered up this Pokémon's feelings of kindness. It finishes off its opponents with mercy in its heart."
end

GameData::Species.define_form :MEGANIUM, 1 do |f|
  f.form_name     "Mega Meganium"
  f.types         :GRASS, :FAIRY
  f.base_stats    hp: 80, attack: 92, defense: 115, speed: 143, sp_atk: 115, sp_def: 80
  f.mega_stone    :MEGANIUMITE
  f.height        2.4
  f.weight        201.0
  f.pokedex_entry "This Pokémon can fire a tremendously powerful Solar Beam from its four flowers. Another name for this is Mega Sol Cannon."
end

GameData::Species.define_form :FERALIGATR, 1 do |f|
  f.form_name     "Mega Feraligatr"
  f.types         :WATER, :DRAGON
  f.base_stats    hp: 85, attack: 160, defense: 125, speed: 89, sp_atk: 93, sp_def: 78
  f.mega_stone    :FERALIGITE
  f.weight        108.8
  f.pokedex_entry "With its arms and hoodlike fin, this Pokémon forms a gigantic set of jaws with a bite 10 times as powerful as Mega Feraligatr's actual jaws."
end

GameData::Species.define_form :SKARMORY, 1 do |f|
  f.form_name     "Mega Skarmory"
  f.base_stats    hp: 65, attack: 140, defense: 110, speed: 40, sp_atk: 100, sp_def: 110
  f.mega_stone    :SKARMORITE
  f.weight        40.4
  f.pokedex_entry "It flies faster than the speed of sound. After whipping up shock waves to send enemies flying, it finishes them off with its talons."
end

GameData::Species.define_form :FROSLASS, 1 do |f|
  f.form_name     "Mega Froslass"
  f.base_stats    hp: 70, attack: 80, defense: 70, speed: 140, sp_atk: 100, sp_def: 120
  f.mega_stone    :CLEFABLITE
  f.height        2.6
  f.weight        29.6
  f.pokedex_entry "This Pokémon can use eerie cold air imbued with ghost energy to freeze even insubstantial things, such as flames or the wind."
end

GameData::Species.define_form :EMBOAR, 1 do |f|
  f.form_name     "Mega Emboar"
  f.base_stats    hp: 110, attack: 148, defense: 75, speed: 110, sp_atk: 110, sp_def: 75
  f.mega_stone    :EMBOARITE
  f.height        1.8
  f.weight        180.3
  f.pokedex_entry "Brandishing a blazing flame shaped like a serpentine spear, it rushes in to rescue its imperiled allies."
end

GameData::Species.define_form :EXCADRILL, 1 do |f|
  f.form_name     "Mega Excadrill"
  f.base_stats    hp: 110, attack: 165, defense: 100, speed: 65, sp_atk: 65, sp_def: 103
  f.mega_stone    :EXCADRITE
  f.height        0.9
  f.weight        60.0
  f.pokedex_entry "If this Pokémon brings its arms and head together to form a streamlined shape and spins at high speeds, it can destroy anything."
end

GameData::Species.define_form :SCOLIPEDE, 1 do |f|
  f.form_name     "Mega Scolipede"
  f.base_stats    hp: 60, attack: 140, defense: 149, speed: 75, sp_atk: 99, sp_def: 62
  f.mega_stone    :SCOLIPITE
  f.height        3.2
  f.weight        230.5
  f.pokedex_entry "Its deadly venom gives off a faint glow. The venom affects Scolipede's mind, honing its viciousness."
end

GameData::Species.define_form :SCRAFTY, 1 do |f|
  f.form_name     "Mega Scrafty"
  f.base_stats    hp: 65, attack: 130, defense: 135, speed: 55, sp_atk: 135, sp_def: 68
  f.mega_stone    :SCRAFTINITE
  f.weight        31.0
  f.pokedex_entry "Mega Evolution has caused Scrafty's shed skin to turn white, growing tough and supple. Of course, this Pokémon is still as feisty as ever."
end

GameData::Species.define_form :EELEKTROSS, 1 do |f|
  f.form_name     "Mega Eelektross"
  f.base_stats    hp: 85, attack: 145, defense: 80, speed: 135, sp_atk: 90, sp_def: 80
  f.mega_stone    :EELEKTROSSITE
  f.height        3.0
  f.weight        180.0
  f.pokedex_entry "It now generates 10 times the electricity it did before Mega Evolving. It discharges this electricity from its false Eelektrik, which are made of mucus."
end

GameData::Species.define_form :CHANDELURE, 1 do |f|
  f.form_name     "Mega Chandelure"
  f.base_stats    hp: 60, attack: 75, defense: 110, speed: 175, sp_atk: 110, sp_def: 90
  f.mega_stone    :CHANDELURITE
  f.height        2.5
  f.weight        69.6
  f.pokedex_entry "One of its eyes is a window linking our world with the afterlife. This Pokémon draws in hatred and converts it into power."
end

GameData::Species.define_form :CHESNAUGHT, 1 do |f|
  f.form_name     "Mega Chesnaught"
  f.base_stats    hp: 88, attack: 137, defense: 172, speed: 74, sp_atk: 115, sp_def: 44
  f.mega_stone    :CHESNAUGHTITE
  f.pokedex_entry "It has fortified armor and a will to defend at all costs. Both are absurdly strong."
end

GameData::Species.define_form :DELPHOX, 1 do |f|
  f.form_name     "Mega Delphox"
  f.base_stats    hp: 75, attack: 69, defense: 72, speed: 159, sp_atk: 125, sp_def: 134
  f.mega_stone    :DELPHOXITE
  f.pokedex_entry "It wields flaming branches to dazzle its opponents before incinerating them with a huge fireball."
end

GameData::Species.define_form :GRENINJA, 3 do |f|
  f.form_name     "Mega Greninja"
  f.base_stats    hp: 72, attack: 125, defense: 77, speed: 133, sp_atk: 81, sp_def: 142
  f.mega_stone    :GRENINJITE
  f.pokedex_entry "This Pokémon spins a giant shuriken at high speed to make it float, then clings to it upside down to catch opponents unawares."
end

GameData::Species.define_form :PYROAR, 1 do |f|
  f.form_name     "Mega PYROAR"
  f.base_stats    hp: 86, attack: 88, defense: 92, speed: 129, sp_atk: 86, sp_def: 126
  f.mega_stone    :PYROARITE
  f.weight        93.3
  f.pokedex_entry "This Pokémon spews flames hotter than 18,000 degrees Fahrenheit. It swings around its grand, blazing mane as it protects its allies."
end

GameData::Species.define_form :FLOETTE, 6 do |f|
  f.form_name     "Mega Floette"
  f.base_stats    hp: 74, attack: 85, defense: 87, speed: 155, sp_atk: 148, sp_def: 102
  f.mega_stone    :FLOETTITE
  f.unmega_form   5
  f.weight        100.8
  f.pokedex_entry "The Eternal Flower has absorbed all the energy from Mega Evolution. The flower now attacks enemies on its own."
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
  f.tutor_moves   :BATONPASS, :CALMMIND, :CHARM, :CHILLINGWATER, :COPYCAT, :DAZZLINGGLEAM, :DISARMINGVOICE, :DRAININGKISS, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :GIGADRAIN, :GRASSKNOT, :HELPINGHAND, :LIGHTSCREEN, :METRONOME, :POLLENPUFF, :PROTECT, :PSYCHIC, :RAINDANCE, :REST, :SEEDBOMB, :SKILLSWAP, :SLEEPTALK, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TEARFULLOOK, :TRAILBLAZE, :TRICK, :TERABLAST
end

GameData::Species.define_form :MALAMAR, 1 do |f|
  f.form_name     "Mega Malamar"
  f.base_stats    hp: 86, attack: 102, defense: 88, speed: 98, sp_atk: 120, sp_def: 88
  f.mega_stone    :MALAMARITE
  f.height        2.9
  f.weight        69.8
  f.pokedex_entry "It uses its colorful lights to overwrite the personalities and memories of others—and to control them."
end

GameData::Species.define_form :BARBARACLE, 1 do |f|
  f.form_name     "Mega Barbaracle"
  f.types         :ROCK, :FIGHTING
  f.base_stats    hp: 72, attack: 140, defense: 130, speed: 64, sp_atk: 106, sp_def: 88
  f.mega_stone    :BARBARACITE
  f.height        2.2
  f.weight        100.0
  f.pokedex_entry "It uses its many arms to toy with its opponents. This keeps the head extremely busy."
end

GameData::Species.define_form :DRAGALGE, 1 do |f|
  f.form_name     "Mega Dragalge"
  f.base_stats    hp: 65, attack: 85, defense: 105, speed: 132, sp_atk: 163, sp_def: 44
  f.mega_stone    :DRAGALGITE
  f.height        2.1
  f.weight        100.3
  f.pokedex_entry "It spits a liquid that causes the regenerative power of cells to run wild. The liquid is deadly poison to everything other than itself."
end

GameData::Species.define_form :HAWLUCHA, 1 do |f|
  f.form_name     "Mega Hawlucha"
  f.base_stats    hp: 78, attack: 137, defense: 100, speed: 74, sp_atk: 93, sp_def: 118
  f.mega_stone    :HAWLUCHANITE
  f.height        1.0
  f.weight        25.0
  f.pokedex_entry "Mega Evolution has pumped up all its muscles. Hawlucha flexes to show off its strength."
end

GameData::Species.define_form :ZYGARDE, 4 do |f|
  f.form_name     "Mega Zygarde"
  f.base_stats    hp: 216, attack: 70, defense: 91, speed: 216, sp_atk: 85, sp_def: 100
  f.abilities     :POWERCONSTRUCT
  f.hidden_abilities :POWERCONSTRUCT
  f.mega_stone    :ZYGARDITE
  f.unmega_form   2
  f.height        7.7
  f.weight        610.0
  f.pokedex_entry "In response to people's emotions during an unprecedented crisis, Zygarde Mega Evolves and calms the situation with its unmatched power."
  f.moves do |m|
    m.at 1, :DRAGONBREATH
    m.at 1, :BULLDOZE
    m.at 1, :BIND
    m.at 1, :BITE
    m.at 8, :HAZE
    m.at 16, :DIG
    m.at 24, :SAFEGUARD
    m.at 32, :CRUNCH
    m.at 40, :DRAGONPULSE
    m.at 56, :GLARE
    m.at 64, :SANDSTORM
    m.at 72, :COIL
    m.at 80, :EARTHQUAKE
    m.at 88, :OUTRAGE
  end
end

GameData::Species.define_form :ZYGARDE, 5 do |f|
  f.form_name     "Mega Zygarde"
  f.base_stats    hp: 216, attack: 70, defense: 91, speed: 216, sp_atk: 85, sp_def: 100
  f.abilities     :POWERCONSTRUCT
  f.hidden_abilities :POWERCONSTRUCT
  f.mega_stone    :ZYGARDITE
  f.unmega_form   3
  f.height        7.7
  f.weight        610.0
  f.moves do |m|
    m.at 1, :DRAGONBREATH
    m.at 1, :BULLDOZE
    m.at 1, :BIND
    m.at 1, :BITE
    m.at 8, :HAZE
    m.at 16, :DIG
    m.at 24, :SAFEGUARD
    m.at 32, :CRUNCH
    m.at 40, :DRAGONPULSE
    m.at 56, :GLARE
    m.at 64, :SANDSTORM
    m.at 72, :COIL
    m.at 80, :EARTHQUAKE
    m.at 88, :OUTRAGE
  end
end

GameData::Species.define_form :DRAMPA, 1 do |f|
  f.form_name     "Mega Drampa"
  f.base_stats    hp: 78, attack: 85, defense: 110, speed: 160, sp_atk: 116, sp_def: 36
  f.mega_stone    :DRAMPANITE
  f.weight        240.5
  f.pokedex_entry "Drampa's cells have been invigorated, allowing it to regain its youth. It manipulates the atmosphere to summon storms."
end

GameData::Species.define_form :FALINKS, 1 do |f|
  f.form_name     "Mega Falinks"
  f.base_stats    hp: 65, attack: 135, defense: 135, speed: 70, sp_atk: 65, sp_def: 100
  f.mega_stone    :FALINKSITE
  f.height        1.6
  f.weight        99.0
  f.pokedex_entry "Mega Falinks has taken on the ultimate battle formation, which can be achieved only if the troopers and brass have the strongest of bonds."
end

GameData::Species.define_form :RAICHU, 2 do |f|
  f.form_name     "Mega Raichu X"
  f.base_stats    hp: 60, attack: 135, defense: 95, speed: 110, sp_atk: 90, sp_def: 95
  f.mega_stone    :RAICHUNITEX
  f.height        1.2
  f.weight        38.0
  f.pokedex_entry "It resembles an X as it flies through the air with 50 million volts of electricity sparking from its ears and forked tail."
end

GameData::Species.define_form :RAICHU, 3 do |f|
  f.form_name     "Mega Raichu Y"
  f.base_stats    hp: 60, attack: 135, defense: 95, speed: 110, sp_atk: 90, sp_def: 95
  f.mega_stone    :RAICHUNITEY
  f.height        1.0
  f.weight        26.0
  f.pokedex_entry "It fires bolts of electricity from the tip of its tail and from the spiky tufts of fur growing out of its temples. This electricity forms the letter Y."
end

GameData::Species.define_form :CHIMECHO, 1 do |f|
  f.form_name     "Mega Chimecho"
  f.types         :PSYCHIC, :STEEL
  f.base_stats    hp: 75, attack: 50, defense: 110, speed: 65, sp_atk: 135, sp_def: 120
  f.mega_stone    :CHIMECHITE
  f.height        1.2
  f.weight        8.0
  f.pokedex_entry "It vibrates its entire body to attack in all directions using sound waves. Any who hear the vibrations get so confused, they forget who they are."
end

GameData::Species.define_form :ABSOL, 2 do |f|
  f.form_name     "Mega Absol Z"
  f.types         :DARK, :GHOST
  f.base_stats    hp: 65, attack: 154, defense: 60, speed: 151, sp_atk: 75, sp_def: 60
  f.mega_stone    :ABSOLITEZ
  f.height        1.0
  f.weight        26.0
  f.pokedex_entry "Using fur that it has made into sharp, clawlike shapes, it cuts down foes with a single blow. This is an act of kindness to keep them from suffering."
end

GameData::Species.define_form :STARAPTOR, 1 do |f|
  f.form_name     "Mega Staraptor"
  f.types         :FIGHTING, :FLYING
  f.base_stats    hp: 85, attack: 140, defense: 100, speed: 110, sp_atk: 60, sp_def: 90
  f.mega_stone    :STARAPTITE
  f.height        1.9
  f.weight        50.0
  f.pokedex_entry "Mega Staraptor is a top-class flier. It can easily soar through the sky while gripping a Steelix that weighs more than 880 lbs."
end

GameData::Species.define_form :GARCHOMP, 2 do |f|
  f.form_name     "Mega Garchomp Z"
  f.types         :DRAGON
  f.base_stats    hp: 108, attack: 130, defense: 85, speed: 151, sp_atk: 141, sp_def: 85
  f.mega_stone    :GARCHOMPITEZ
  f.weight        99.0
  f.pokedex_entry "Garchomp has gained a new Mega-Evolved form. It flies around foes at Mach speed and cuts them to shreds with its sinister wing claws."
end

GameData::Species.define_form :LUCARIO, 2 do |f|
  f.form_name     "Mega Lucario Z"
  f.base_stats    hp: 70, attack: 100, defense: 70, speed: 151, sp_atk: 164, sp_def: 70
  f.mega_stone    :LUCARIONITEZ
  f.height        1.3
  f.weight        49.4
  f.pokedex_entry "By completely cloaking itself in its aura, Mega Lucario Z can parry all manner of attacks, battling as if it were gracefully dancing."
end

GameData::Species.define_form :HEATRAN, 1 do |f|
  f.form_name     "Mega Heatran"
  f.base_stats    hp: 91, attack: 120, defense: 106, speed: 67, sp_atk: 175, sp_def: 141
  f.mega_stone    :HEATRANITE
  f.height        2.8
  f.weight        570.0
  f.pokedex_entry "It's said that if it goes all out, it can heat its body up to temperatures over 1.8 million degrees Fahrenheit. This heat keeps enemies at bay."
end

GameData::Species.define_form :DARKRAI, 1 do |f|
  f.form_name     "Mega Darkrai"
  f.base_stats    hp: 70, attack: 120, defense: 130, speed: 85, sp_atk: 165, sp_def: 130
  f.mega_stone    :DARKRANITE
  f.height        3.0
  f.weight        240.0
  f.pokedex_entry "Its dark power blocks out the sun, plunging the surrounding area into darkness. There is no escaping its evil eye."
end

GameData::Species.define_form :GOLURK, 1 do |f|
  f.form_name     "Mega Golurk"
  f.base_stats    hp: 89, attack: 159, defense: 105, speed: 55, sp_atk: 70, sp_def: 105
  f.mega_stone    :GOLURKITE
  f.height        4.0
  f.pokedex_entry "The energy within Golurk has been stimulated by Mega Evolution. The Pokémon could explode at any moment."
end

GameData::Species.define_form :MEOWSTIC, 2 do |f|
  f.form_name     "Mega Meowstic"
  f.base_stats    hp: 74, attack: 48, defense: 76, speed: 124, sp_atk: 143, sp_def: 101
  f.mega_stone    :MEOWSTICITE
  f.height        0.8
  f.weight        10.1
  f.pokedex_entry "Mega Meowstic can use its psychic power to compress or expand anything. It overwhelms foes by contorting space itself."
end

GameData::Species.define_form :MEOWSTIC, 3 do |f|
  f.form_name     "Mega Meowstic"
  f.base_stats    hp: 74, attack: 48, defense: 76, speed: 124, sp_atk: 143, sp_def: 101
  f.mega_stone    :MEOWSTICITE
  f.unmega_form   1
  f.height        0.8
  f.weight        10.1
  f.pokedex_entry "Mega Meowstic can use its psychic power to compress or expand anything. It overwhelms foes by contorting space itself."
end

GameData::Species.define_form :CRABOMINABLE, 1 do |f|
  f.form_name     "Mega Crabominable"
  f.base_stats    hp: 97, attack: 157, defense: 122, speed: 33, sp_atk: 62, sp_def: 107
  f.mega_stone    :CRABOMINITE
  f.height        2.6
  f.weight        252.8
  f.pokedex_entry "It can pulverize reinforced concrete with a light swing of one of its fists, each of which is covered in a thick layer of ice."
end

GameData::Species.define_form :GOLISOPOD, 1 do |f|
  f.form_name     "Mega Golisopod"
  f.types         :BUG, :STEEL
  f.base_stats    hp: 75, attack: 150, defense: 175, speed: 40, sp_atk: 70, sp_def: 120
  f.mega_stone    :GOLISOPITE
  f.height        2.3
  f.weight        148.0
  f.pokedex_entry "It uses four of its arms to fiercely assail its foes. Once they've been pushed to the brink of defeat, it finishes them off with the arms it kept hidden."
end

GameData::Species.define_form :MAGEARNA, 2 do |f|
  f.form_name     "Mega Magearna (Original Color)"
  f.base_stats    hp: 80, attack: 125, defense: 115, speed: 95, sp_atk: 170, sp_def: 115
  f.mega_stone    :MAGEARNITE
  f.height        1.3
  f.weight        248.1
  f.pokedex_entry "This is Magearna once a previously hidden mode activates. The emotions Magearna had begun to feel now hide away as it fells foe after foe."
end

GameData::Species.define_form :MAGEARNA, 3 do |f|
  f.form_name     "Mega Magearna"
  f.base_stats    hp: 80, attack: 125, defense: 115, speed: 95, sp_atk: 170, sp_def: 115
  f.mega_stone    :MAGEARNITE
  f.unmega_form   1
  f.height        1.3
  f.weight        248.1
  f.pokedex_entry "A mechanism to remove Magerna's limitations has lain secretly with Magerna for 500 years. This mechanism is triggered by a Mega Stone."
end

GameData::Species.define_form :ZERAORA, 1 do |f|
  f.form_name     "Mega Zeraora"
  f.base_stats    hp: 88, attack: 157, defense: 75, speed: 153, sp_atk: 147, sp_def: 80
  f.mega_stone    :ZERAORITE
  f.pokedex_entry "It stores up 10 lightning strikes' worth of electricity. When it stops limiting itself, it's in the strongest class of electric Pokémon."
end

GameData::Species.define_form :SCOVILLAIN, 1 do |f|
  f.form_name     "Mega Scovillain"
  f.base_stats    hp: 65, attack: 138, defense: 85, speed: 75, sp_atk: 138, sp_def: 85
  f.mega_stone    :SCOVILLAINITE
  f.height        1.2
  f.weight        22.0
  f.pokedex_entry "Mega Evolution has dialed up this Pokémon's spiciness. It swings its \"necktie\" around to wallop its foes."
end

GameData::Species.define_form :GLIMMORA, 1 do |f|
  f.form_name     "Mega Glimmora"
  f.base_stats    hp: 83, attack: 90, defense: 105, speed: 101, sp_atk: 150, sp_def: 96
  f.mega_stone    :GLIMMORANITE
  f.height        2.8
  f.weight        77.0
  f.pokedex_entry "Glimmora's petals-now larger and separated from its main body-rotate around it to provide defense while scattering poisonous fragments."
end

GameData::Species.define_form :TATSUGIRI, 3 do |f|
  f.form_name     "Mega Tatsugiri (Curly Form)"
  f.base_stats    hp: 68, attack: 65, defense: 90, speed: 92, sp_atk: 135, sp_def: 125
  f.mega_stone    :TATSUGIRINITE
  f.height        0.6
  f.weight        24.0
  f.pokedex_entry "Tatsugiri's brain has been invigorated by Mega Evolution, making it even wilier. It can create and command copies of itself."
end

GameData::Species.define_form :TATSUGIRI, 4 do |f|
  f.form_name     "Mega Tatsugiri (Droopy Form)"
  f.base_stats    hp: 68, attack: 65, defense: 90, speed: 92, sp_atk: 135, sp_def: 125
  f.mega_stone    :TATSUGIRINITE
  f.unmega_form   1
  f.height        0.6
  f.weight        24.0
  f.pokedex_entry "It solidifies the energy of Mega Evolution, building up an overflowing pile to launch as projectiles. These projectiles explode on contact."
end

GameData::Species.define_form :TATSUGIRI, 5 do |f|
  f.form_name     "Mega Tatsugiri (Stretchy Form)"
  f.base_stats    hp: 68, attack: 65, defense: 90, speed: 92, sp_atk: 135, sp_def: 125
  f.mega_stone    :TATSUGIRINITE
  f.unmega_form   2
  f.height        0.6
  f.weight        24.0
  f.pokedex_entry "Using the energy of Mega Evolution, it creates a dish to ride upon, allowing it to move with total freedom-even through the air."
end

GameData::Species.define_form :BAXCALIBUR, 1 do |f|
  f.form_name     "Mega Baxcalibur"
  f.base_stats    hp: 115, attack: 175, defense: 117, speed: 87, sp_atk: 105, sp_def: 101
  f.mega_stone    :BAXCALIBRITE
  f.weight        315.0
  f.pokedex_entry "Baxcalibur's dorsal blade has grown even more massive thanks to Mega Evolution. This Pokémon fires beams from the hilt at its solar plexus."
end

