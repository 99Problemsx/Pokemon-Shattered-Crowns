#===============================================================================
# Shattered Crowns - Gen9 fire Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :FUECOCO do |s|
  s.name          "Fuecoco"
  s.types         :FIRE
  s.base_stats    hp: 67, attack: 45, defense: 59, speed: 36, sp_atk: 63, sp_def: 40
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :BLAZE
  s.hidden_abilities :UNAWARE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :EMBER
    m.at 7, :ROUND
    m.at 12, :BITE
    m.at 15, :INCINERATE
    m.at 17, :YAWN
    m.at 21, :SNARL
    m.at 25, :ROAR
    m.at 28, :FLAMETHROWER
    m.at 32, :HYPERVOICE
    m.at 36, :FIREBLAST
  end
  s.tutor_moves   :BODYSLAM, :CRUNCH, :CURSE, :DIG, :DISARMINGVOICE, :ENCORE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :HEATWAVE, :HELPINGHAND, :HYPERVOICE, :MUDSLAP, :OUTRAGE, :OVERHEAT, :PROTECT, :REST, :ROAR, :SEEDBOMB, :SLEEPTALK, :SNARL, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TEMPERFLARE, :THUNDERFANG, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BELCH, :CURSE, :ENCORE, :SLACKOFF
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.4
  s.weight        9.8
  s.color         :Red
  s.shape         :BipedalTail
  s.habitat       :RoughTerrain
  s.category      "Fire Croc"
  s.pokedex_entry "It lies on warm rocks and uses the heat absorbed by its square-shaped scales to create fire energy."
  s.generation    9
  s.evolves_into  :CROCALOR, :Level, 16
end

GameData::Species.define :CROCALOR do |s|
  s.name          "Crocalor"
  s.types         :FIRE
  s.base_stats    hp: 81, attack: 55, defense: 78, speed: 49, sp_atk: 90, sp_def: 58
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      144
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :BLAZE
  s.hidden_abilities :UNAWARE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :EMBER
    m.at 7, :LICK
    m.at 10, :ROUND
    m.at 12, :BITE
    m.at 15, :YAWN
    m.at 17, :INCINERATE
    m.at 24, :SNARL
    m.at 28, :ROAR
    m.at 32, :FLAMETHROWER
    m.at 38, :HYPERVOICE
    m.at 42, :WILLOWISP
    m.at 47, :FIREBLAST
  end
  s.tutor_moves   :BODYSLAM, :CRUNCH, :CURSE, :DIG, :DISARMINGVOICE, :ENCORE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :HEATWAVE, :HELPINGHAND, :HYPERVOICE, :MUDSLAP, :OUTRAGE, :OVERHEAT, :PROTECT, :REST, :ROAR, :SEEDBOMB, :SLEEPTALK, :SNARL, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TEMPERFLARE, :THUNDERFANG, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.0
  s.weight        30.7
  s.color         :Red
  s.shape         :BipedalTail
  s.habitat       :RoughTerrain
  s.category      "Fire Croc"
  s.pokedex_entry "The combination of Crocalor’s fire energy and overflowing vitality has caused an egg-shaped fireball to appear on the Pokémon’s head."
  s.generation    9
  s.evolves_into  :SKELEDIRGE, :Level, 36
end

GameData::Species.define :SKELEDIRGE do |s|
  s.name          "Skeledirge"
  s.types         :FIRE, :GHOST
  s.base_stats    hp: 104, attack: 75, defense: 100, speed: 66, sp_atk: 110, sp_def: 75
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      265
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :BLAZE
  s.hidden_abilities :UNAWARE
  s.moves do |m|
    m.at -1, :SING
    m.at -1, :YAWN
    m.at 0, :TORCHSONG
    m.at 1, :EMBER
    m.at 1, :LEER
    m.at 1, :TACKLE
    m.at 7, :LICK
    m.at 10, :ROUND
    m.at 12, :SCARYFACE
    m.at 15, :BITE
    m.at 17, :INCINERATE
    m.at 24, :SNARL
    m.at 28, :ROAR
    m.at 32, :FLAMETHROWER
    m.at 38, :SHADOWBALL
    m.at 42, :HYPERVOICE
    m.at 47, :WILLOWISP
    m.at 47, :HEX
    m.at 58, :FIREBLAST
    m.at 64, :OVERHEAT
  end
  s.tutor_moves   :ALLURINGVOICE, :BLASTBURN, :BODYSLAM, :CRUNCH, :CURSE, :DIG, :DISARMINGVOICE, :EARTHPOWER, :EARTHQUAKE, :ENCORE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIREPLEDGE, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :GIGAIMPACT, :HEATCRASH, :HEATWAVE, :HELPINGHAND, :HEX, :HYPERBEAM, :HYPERVOICE, :IMPRISON, :MUDSLAP, :NIGHTSHADE, :OUTRAGE, :OVERHEAT, :POLTERGEIST, :PROTECT, :REST, :ROAR, :SCARYFACE, :SCORCHINGSANDS, :SEEDBOMB, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SNARL, :SOLARBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TEMPERFLARE, :THUNDERFANG, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        1.6
  s.weight        326.5
  s.color         :Red
  s.shape         :BipedalTail
  s.habitat       :RoughTerrain
  s.category      "Singer"
  s.pokedex_entry "The fiery bird changes shape when Skeledirge sings. Rumor has it that the bird was born when the fireball on Skeledirge’s head gained a soul."
  s.generation    9
end

GameData::Species.define :CHARCADET do |s|
  s.name          "Charcadet"
  s.types         :FIRE
  s.base_stats    hp: 40, attack: 50, defense: 40, speed: 35, sp_atk: 50, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      51
  s.catch_rate    90
  s.happiness     50
  s.evs           sp_attack: 1
  s.abilities     :FLASHFIRE
  s.hidden_abilities :FLAMEBODY
  s.moves do |m|
    m.at 1, :LEER
    m.at 1, :EMBER
    m.at 1, :ASTONISH
    m.at 8, :CLEARSMOG
    m.at 12, :FIRESPIN
    m.at 16, :WILLOWISP
    m.at 20, :NIGHTSHADE
    m.at 24, :FLAMECHARGE
    m.at 28, :INCINERATE
    m.at 32, :LAVAPLUME
  end
  s.tutor_moves   :CONFUSERAY, :ENDURE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :HEATWAVE, :HELPINGHAND, :NIGHTSHADE, :OVERHEAT, :PROTECT, :REST, :SLEEPTALK, :SPITE, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :WILLOWISP, :TERABLAST
  s.egg_moves     :DESTINYBOND, :DISABLE, :SPITE
  s.egg_groups    :Humanlike
  s.hatch_steps   8960
  s.height        0.6
  s.weight        10.5
  s.color         :Red
  s.shape         :Bipedal
  s.habitat       :RoughTerrain
  s.category      "Fire Child"
  s.pokedex_entry "Burnt charcoal came to life and became a Pokémon. Possessing a fiery fighting spirit, Charcadet will battle even tough opponents."
  s.generation    9
  s.evolves_into  :ARMAROUGE, :Item, AUSPICIOUSARMOR
  s.evolves_into  :CERULEDGE, :Item, MALICIOUSARMOR
end

GameData::Species.define :ARMAROUGE do |s|
  s.name          "Armarouge"
  s.types         :FIRE, :PSYCHIC
  s.base_stats    hp: 85, attack: 60, defense: 100, speed: 75, sp_atk: 125, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      263
  s.catch_rate    25
  s.happiness     20
  s.evs           sp_attack: 2
  s.abilities     :FLASHFIRE
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 0, :PSYSHOCK
    m.at 1, :LEER
    m.at 1, :EMBER
    m.at 1, :ASTONISH
    m.at 1, :WIDEGUARD
    m.at 1, :MYSTICALFIRE
    m.at 8, :CLEARSMOG
    m.at 12, :FIRESPIN
    m.at 16, :WILLOWISP
    m.at 20, :NIGHTSHADE
    m.at 24, :FLAMECHARGE
    m.at 28, :INCINERATE
    m.at 32, :LAVAPLUME
    m.at 37, :CALMMIND
    m.at 42, :ALLYSWITCH
    m.at 48, :FLAMETHROWER
    m.at 56, :EXPANDINGFORCE
    m.at 62, :ARMORCANNON
  end
  s.tutor_moves   :ACIDSPRAY, :AURASPHERE, :CALMMIND, :CONFUSERAY, :DARKPULSE, :DRAGONPULSE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLASHCANNON, :FLING, :FOCUSBLAST, :HEATWAVE, :HELPINGHAND, :IRONDEFENSE, :LIGHTSCREEN, :METEORBEAM, :NIGHTSHADE, :OVERHEAT, :PROTECT, :PSYBEAM, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :REFLECT, :REST, :SCORCHINGSANDS, :SHADOWBALL, :SLEEPTALK, :SOLARBEAM, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TAUNT, :TRICK, :TRICKROOM, :WEATHERBALL, :WILLOWISP, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   8960
  s.height        1.5
  s.weight        85.0
  s.color         :Red
  s.shape         :Bipedal
  s.habitat       :RoughTerrain
  s.category      "Fire Warrior"
  s.pokedex_entry "Armarouge evolved through the use of a set of armor that belonged to a distinguished warrior. This Pokémon is incredibly loyal."
  s.generation    9
end

GameData::Species.define :CERULEDGE do |s|
  s.name          "Ceruledge"
  s.types         :FIRE, :GHOST
  s.base_stats    hp: 75, attack: 125, defense: 80, speed: 85, sp_atk: 60, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      263
  s.catch_rate    25
  s.happiness     20
  s.evs           attack: 2
  s.abilities     :FLASHFIRE
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at -1, :NIGHTSLASH
    m.at -1, :SOLARBLADE
    m.at -1, :QUICKGUARD
    m.at -1, :SHADOWSNEAK
    m.at 0, :SHADOWCLAW
    m.at 1, :EMBER
    m.at 1, :LEER
    m.at 1, :ASTONISH
    m.at 8, :CLEARSMOG
    m.at 12, :FIRESPIN
    m.at 16, :WILLOWISP
    m.at 20, :NIGHTSHADE
    m.at 24, :FLAMECHARGE
    m.at 28, :INCINERATE
    m.at 32, :LAVAPLUME
    m.at 37, :SWORDSDANCE
    m.at 42, :ALLYSWITCH
    m.at 48, :BITTERBLADE
    m.at 56, :PSYCHOCUT
    m.at 62, :FLAREBLITZ
  end
  s.tutor_moves   :BRICKBREAK, :BULKUP, :CLOSECOMBAT, :CONFUSERAY, :CURSE, :DRAGONCLAW, :ENDURE, :FACADE, :FALSESWIPE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLING, :HEATWAVE, :HELPINGHAND, :HEX, :IRONDEFENSE, :IRONHEAD, :LIGHTSCREEN, :NIGHTSHADE, :OVERHEAT, :PHANTOMFORCE, :POISONJAB, :POLTERGEIST, :PROTECT, :PSYCHUP, :REFLECT, :REST, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SOLARBLADE, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THROATCHOP, :VACUUMWAVE, :WILLOWISP, :XSCISSOR, :TERABLAST
  s.egg_groups    :Humanlike
  s.hatch_steps   8960
  s.height        1.6
  s.weight        62.0
  s.color         :Blue
  s.shape         :Bipedal
  s.habitat       :RoughTerrain
  s.category      "Fire Blades"
  s.pokedex_entry "The fiery blades on its arms burn fiercely with the lingering resentment of a sword wielder who fell before accomplishing their goal."
  s.generation    9
end

GameData::Species.define :IRONMOTH do |s|
  s.name          "Iron Moth"
  s.types         :FIRE, :POISON
  s.base_stats    hp: 80, attack: 70, defense: 60, speed: 110, sp_atk: 140, sp_def: 110
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    30
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :QUARKDRIVE
  s.moves do |m|
    m.at -1, :ELECTRICTERRAIN
    m.at 1, :WHIRLWIND
    m.at 1, :EMBER
    m.at 1, :ACIDSPRAY
    m.at 1, :GUST
    m.at 7, :STRUGGLEBUG
    m.at 14, :FIRESPIN
    m.at 21, :TAKEDOWN
    m.at 28, :LUNGE
    m.at 35, :SCREECH
    m.at 42, :DISCHARGE
    m.at 49, :SLUDGEWAVE
    m.at 56, :FIERYDANCE
    m.at 63, :METALSOUND
    m.at 70, :MORNINGSUN
    m.at 77, :HURRICANE
    m.at 84, :BUGBUZZ
    m.at 91, :OVERHEAT
  end
  s.tutor_moves   :ACIDSPRAY, :ACROBATICS, :AGILITY, :AIRSLASH, :BUGBUZZ, :CHARGEBEAM, :CONFUSERAY, :DAZZLINGGLEAM, :ELECTRICTERRAIN, :ENDURE, :ENERGYBALL, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLASHCANNON, :GIGAIMPACT, :HEATWAVE, :HELPINGHAND, :HURRICANE, :HYPERBEAM, :LIGHTSCREEN, :LUNGE, :METALSOUND, :METEORBEAM, :OVERHEAT, :POUNCE, :PROTECT, :PSYCHIC, :REST, :SLEEPTALK, :SLUDGEWAVE, :SOLARBEAM, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TAKEDOWN, :TOXIC, :TOXICSPIKES, :UTURN, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        1.2
  s.weight        36.0
  s.color         :Yellow
  s.shape         :MultiWinged
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "This Pokémon resembles an unknown object described in a paranormal magazine as a UFO sent to observe humanity."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

GameData::Species.define :GOUGINGFIRE do |s|
  s.name          "Gouging Fire"
  s.types         :FIRE, :DRAGON
  s.base_stats    hp: 105, attack: 115, defense: 121, speed: 91, sp_atk: 65, sp_def: 93
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      295
  s.catch_rate    10
  s.happiness     0
  s.evs           defense: 3
  s.abilities     :PROTOSYNTHESIS
  s.moves do |m|
    m.at -1, :DOUBLEKICK
    m.at -1, :ANCIENTPOWER
    m.at -1, :NOBLEROAR
    m.at 1, :STOMP
    m.at 1, :LEER
    m.at 1, :INCINERATE
    m.at 1, :SUNNYDAY
    m.at 7, :FIREFANG
    m.at 14, :HOWL
    m.at 21, :BITE
    m.at 28, :DRAGONCLAW
    m.at 35, :CRUSHCLAW
    m.at 42, :MORNINGSUN
    m.at 49, :BURNINGBULWARK
    m.at 56, :DRAGONRUSH
    m.at 63, :FIREBLAST
    m.at 70, :LAVAPLUME
    m.at 77, :OUTRAGE
    m.at 84, :FLAREBLITZ
    m.at 91, :RAGINGFURY
  end
  s.tutor_moves   :BODYSLAM, :BREAKINGSWIPE, :BULLDOZE, :CRUNCH, :DOUBLEEDGE, :DRACOMETEOR, :DRAGONCHEER, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :GIGAIMPACT, :HEATCRASH, :HEATWAVE, :HYPERBEAM, :IRONHEAD, :OUTRAGE, :OVERHEAT, :PROTECT, :PSYCHICFANGS, :REST, :REVERSAL, :ROAR, :SCALESHOT, :SCARYFACE, :SCORCHINGSANDS, :SLEEPTALK, :SMARTSTRIKE, :SNARL, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TEMPERFLARE, :THUNDERFANG, :WEATHERBALL, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        3.5
  s.weight        590.0
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "There are scant few reports of this creature being sighted. One short video shows it rampaging and spouting pillars of flame."
  s.generation    9
  s.flags         :Paradox
end

