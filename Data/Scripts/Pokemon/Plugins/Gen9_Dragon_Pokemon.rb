#===============================================================================
# Shattered Crowns - Gen9 dragon Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :CYCLIZAR do |s|
  s.name          "Cyclizar"
  s.types         :DRAGON, :NORMAL
  s.base_stats    hp: 70, attack: 95, defense: 65, speed: 121, sp_atk: 85, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      175
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :SHEDSKIN
  s.hidden_abilities :REGENERATOR
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :TACKLE
    m.at 7, :RAPIDSPIN
    m.at 11, :TAUNT
    m.at 14, :BREAKINGSWIPE
    m.at 18, :QUICKATTACK
    m.at 23, :BITE
    m.at 27, :UTURN
    m.at 31, :SHEDTAIL
    m.at 36, :DRAGONCLAW
    m.at 40, :SHIFTGEAR
    m.at 45, :DRAGONPULSE
    m.at 51, :DOUBLEEDGE
    m.at 57, :DRAGONRUSH
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :BODYSLAM, :BREAKINGSWIPE, :CRUNCH, :DOUBLEEDGE, :DRACOMETEOR, :DRAGONCHEER, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :ENDEAVOR, :ENDURE, :FACADE, :FIREFANG, :GIGAIMPACT, :HYPERBEAM, :HYPERVOICE, :ICESPINNER, :IRONHEAD, :KNOCKOFF, :MUDSHOT, :MUDSLAP, :OUTRAGE, :OVERHEAT, :PROTECT, :RAINDANCE, :REST, :SCALESHOT, :SLEEPTALK, :SUBSTITUTE, :SUNNYDAY, :SUPERCELLSLAM, :TAKEDOWN, :TAUNT, :TEMPERFLARE, :THIEF, :THUNDERBOLT, :THUNDERFANG, :TRAILBLAZE, :UPROAR, :UTURN, :WILDCHARGE, :TERABLAST
  s.egg_moves     :AQUATAIL, :IRONTAIL, :KNOCKOFF, :POWERWHIP
  s.egg_groups    :Field
  s.hatch_steps   7680
  s.height        1.6
  s.weight        63.0
  s.color         :Green
  s.shape         :BipedalTail
  s.habitat       :Grassland
  s.category      "Mount"
  s.pokedex_entry "Apparently Cyclizar has been allowing people to ride on its back since ancient times. Depictions of this have been found in 10,000-year-old murals."
  s.generation    9
end

GameData::Species.define :TATSUGIRI do |s|
  s.name          "Tatsugiri"
  s.types         :DRAGON, :WATER
  s.base_stats    hp: 68, attack: 50, defense: 60, speed: 82, sp_atk: 120, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      166
  s.catch_rate    100
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :COMMANDER
  s.hidden_abilities :STORMDRAIN
  s.moves do |m|
    m.at 1, :SPLASH
    m.at 1, :WATERGUN
    m.at 6, :HARDEN
    m.at 12, :HELPINGHAND
    m.at 17, :WATERPULSE
    m.at 23, :SOAK
    m.at 28, :TAUNT
    m.at 34, :MEMENTO
    m.at 39, :MUDDYWATER
    m.at 43, :NASTYPLOT
    m.at 47, :MIRRORCOAT
    m.at 52, :DRAGONPULSE
  end
  s.tutor_moves   :BATONPASS, :CHILLINGWATER, :DRACOMETEOR, :DRAGONCHEER, :DRAGONDANCE, :DRAGONPULSE, :ENDURE, :FACADE, :GIGAIMPACT, :HELPINGHAND, :HYDROPUMP, :HYPERBEAM, :ICYWIND, :LUNGE, :MUDDYWATER, :NASTYPLOT, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :SLEEPTALK, :SUBSTITUTE, :SURF, :TAKEDOWN, :TAUNT, :WATERPULSE, :WHIRLPOOL, :TERABLAST
  s.egg_moves     :BATONPASS, :COUNTER, :RAPIDSPIN
  s.egg_groups    :Water2
  s.hatch_steps   8960
  s.height        0.3
  s.weight        8.0
  s.color         :Pink
  s.shape         :Serpentine
  s.habitat       :Sea
  s.category      "Mimicry"
  s.pokedex_entry "This is a small dragon Pokémon. It lives inside the mouth of Dondozo to protect itself from enemies on the outside."
  s.generation    9
end

GameData::Species.define :FRIGIBAX do |s|
  s.name          "Frigibax"
  s.types         :DRAGON, :ICE
  s.base_stats    hp: 65, attack: 75, defense: 45, speed: 55, sp_atk: 35, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      64
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :THERMALEXCHANGE
  s.hidden_abilities :ICEBODY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :DRAGONTAIL
    m.at 6, :ICYWIND
    m.at 12, :DRAGONBREATH
    m.at 18, :FOCUSENERGY
    m.at 24, :BITE
    m.at 29, :ICEFANG
    m.at 32, :DRAGONCLAW
    m.at 36, :TAKEDOWN
    m.at 40, :ICEBEAM
    m.at 44, :CRUNCH
    m.at 48, :ICICLECRASH
  end
  s.tutor_moves   :AVALANCHE, :BLIZZARD, :BODYSLAM, :CRUNCH, :DIG, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :ENDURE, :FACADE, :HELPINGHAND, :ICEBEAM, :ICEFANG, :ICICLESPEAR, :ICYWIND, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :SLEEPTALK, :SNOWSCAPE, :SUBSTITUTE, :SWORDSDANCE, :TAKEDOWN, :TERABLAST
  s.egg_moves     :AQUATAIL, :DRAGONRUSH, :FREEZEDRY, :ICICLESPEAR
  s.egg_groups    :Dragon, :Mineral
  s.hatch_steps   10240
  s.height        0.5
  s.weight        17.0
  s.color         :Gray
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Ice Fin"
  s.pokedex_entry "Frigibax absorbs heat through its dorsal fin and converts the heat into ice energy. The higher the temperature, the more energy Frigibax stores."
  s.generation    9
  s.evolves_into  :ARCTIBAX, :Level, 35
end

GameData::Species.define :ARCTIBAX do |s|
  s.name          "Arctibax"
  s.types         :DRAGON, :ICE
  s.base_stats    hp: 90, attack: 95, defense: 66, speed: 62, sp_atk: 45, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      182
  s.catch_rate    25
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :THERMALEXCHANGE
  s.hidden_abilities :ICEBODY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :DRAGONTAIL
    m.at 6, :ICYWIND
    m.at 12, :DRAGONBREATH
    m.at 18, :FOCUSENERGY
    m.at 24, :BITE
    m.at 29, :ICEFANG
    m.at 40, :TAKEDOWN
    m.at 45, :ICEBEAM
    m.at 50, :CRUNCH
    m.at 55, :ICICLECRASH
  end
  s.tutor_moves   :AERIALACE, :AVALANCHE, :BLIZZARD, :BODYSLAM, :BRICKBREAK, :CRUNCH, :DIG, :DRACOMETEOR, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :ENDURE, :FACADE, :HELPINGHAND, :ICEBEAM, :ICEFANG, :ICICLESPEAR, :ICYWIND, :IRONHEAD, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :SCARYFACE, :SLEEPTALK, :SNOWSCAPE, :SUBSTITUTE, :SWORDSDANCE, :TAKEDOWN, :TERABLAST
  s.egg_groups    :Dragon, :Mineral
  s.hatch_steps   10240
  s.height        0.8
  s.weight        30.0
  s.color         :Gray
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Ice Fin"
  s.pokedex_entry "Arctibax freezes the air around it, protecting its face with an ice mask and turning its dorsal fin into a blade of ice."
  s.generation    9
  s.evolves_into  :BAXCALIBUR, :Level, 54
end

GameData::Species.define :BAXCALIBUR do |s|
  s.name          "Baxcalibur"
  s.types         :DRAGON, :ICE
  s.base_stats    hp: 115, attack: 145, defense: 92, speed: 87, sp_atk: 75, sp_def: 86
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    10
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :THERMALEXCHANGE
  s.hidden_abilities :ICEBODY
  s.moves do |m|
    m.at 0, :GLAIVERUSH
    m.at 1, :DRAGONTAIL
    m.at 1, :BREAKINGSWIPE
    m.at 1, :SNOWSCAPE
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :ICESHARD
    m.at 6, :ICYWIND
    m.at 12, :DRAGONBREATH
    m.at 18, :FOCUSENERGY
    m.at 24, :BITE
    m.at 29, :ICEFANG
    m.at 35, :DRAGONCLAW
    m.at 42, :TAKEDOWN
    m.at 48, :ICEBEAM
    m.at 55, :CRUNCH
    m.at 62, :ICICLECRASH
  end
  s.tutor_moves   :AERIALACE, :AVALANCHE, :BLIZZARD, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :BULLDOZE, :CRUNCH, :DIG, :DOUBLEEDGE, :DRACOMETEOR, :DRAGONCHEER, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :EARTHQUAKE, :ENDURE, :FACADE, :FALSESWIPE, :GIGAIMPACT, :HELPINGHAND, :HIGHHORSEPOWER, :HYPERBEAM, :ICEBEAM, :ICEFANG, :ICICLESPEAR, :ICYWIND, :IRONHEAD, :OUTRAGE, :PROTECT, :RAINDANCE, :REST, :SCALESHOT, :SCARYFACE, :SLEEPTALK, :SNOWSCAPE, :STOMPINGTANTRUM, :SUBSTITUTE, :SWORDSDANCE, :TAKEDOWN, :THUNDERFANG, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Dragon, :Mineral
  s.hatch_steps   10240
  s.height        2.1
  s.weight        210.0
  s.color         :Gray
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Ice Dragon"
  s.pokedex_entry "This Pokémon blasts cryogenic air out from its mouth. This air can instantly freeze even liquid-hot lava."
  s.generation    9
end

GameData::Species.define :ROARINGMOON do |s|
  s.name          "Roaring Moon"
  s.types         :DRAGON, :DARK
  s.base_stats    hp: 105, attack: 139, defense: 71, speed: 119, sp_atk: 55, sp_def: 101
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      295
  s.catch_rate    10
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :PROTOSYNTHESIS
  s.moves do |m|
    m.at -1, :BREAKINGSWIPE
    m.at -1, :SCALESHOT
    m.at -1, :SUNNYDAY
    m.at -1, :JAWLOCK
    m.at 1, :DRAGONBREATH
    m.at 1, :FOCUSENERGY
    m.at 1, :BITE
    m.at 1, :LEER
    m.at 7, :INCINERATE
    m.at 14, :HEADBUTT
    m.at 21, :SCARYFACE
    m.at 28, :DRAGONCLAW
    m.at 35, :ZENHEADBUTT
    m.at 42, :FLAMETHROWER
    m.at 49, :NIGHTSLASH
    m.at 56, :DRAGONDANCE
    m.at 63, :DRAGONRUSH
    m.at 70, :FLY
    m.at 77, :THROATCHOP
    m.at 84, :ROOST
    m.at 91, :DOUBLEEDGE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRSLASH, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :CRUNCH, :DARKPULSE, :DIG, :DOUBLEEDGE, :DRACOMETEOR, :DRAGONCHEER, :DRAGONCLAW, :DRAGONDANCE, :DRAGONPULSE, :DRAGONTAIL, :EARTHQUAKE, :ENDURE, :FACADE, :FIREBLAST, :FIREFANG, :FIRESPIN, :FLAMETHROWER, :FLY, :GIGAIMPACT, :HEATWAVE, :HURRICANE, :HYDROPUMP, :HYPERBEAM, :HYPERVOICE, :IRONHEAD, :KNOCKOFF, :LASHOUT, :METALCLAW, :OUTRAGE, :PROTECT, :REST, :ROAR, :ROCKSLIDE, :SCALESHOT, :SCARYFACE, :SHADOWCLAW, :SLEEPTALK, :SNARL, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :TAILWIND, :TAKEDOWN, :TAUNT, :THROATCHOP, :THUNDERFANG, :UTURN, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        2.0
  s.weight        380.0
  s.color         :Blue
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "It is possible that this is the creature listed as Roaring Moon in an expedition journal that still holds many mysteries."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

