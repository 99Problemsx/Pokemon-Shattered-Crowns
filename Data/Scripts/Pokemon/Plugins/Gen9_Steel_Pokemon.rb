#===============================================================================
# Shattered Crowns - Gen9 steel Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :VAROOM do |s|
  s.name          "Varoom"
  s.types         :STEEL, :POISON
  s.base_stats    hp: 45, attack: 70, defense: 63, speed: 47, sp_atk: 30, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      60
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :OVERCOAT
  s.hidden_abilities :SLOWSTART
  s.moves do |m|
    m.at 1, :POISONGAS
    m.at 1, :LICK
    m.at 4, :SMOG
    m.at 7, :TAUNT
    m.at 10, :ASSURANCE
    m.at 13, :SLUDGE
    m.at 17, :GYROBALL
    m.at 21, :HEADBUTT
    m.at 25, :SCREECH
    m.at 28, :IRONHEAD
    m.at 32, :SWAGGER
    m.at 36, :POISONJAB
    m.at 41, :UPROAR
    m.at 46, :SPINOUT
    m.at 50, :GUNKSHOT
  end
  s.tutor_moves   :ACIDSPRAY, :BODYSLAM, :BULLDOZE, :CURSE, :DOUBLEEDGE, :ENDURE, :FACADE, :FLASHCANNON, :GUNKSHOT, :GYROBALL, :HAZE, :IRONDEFENSE, :IRONHEAD, :METALSOUND, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :SANDSTORM, :SCARYFACE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :STEELBEAM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TAUNT, :THIEF, :TOXIC, :TOXICSPIKES, :UPROAR, :VENOSHOCK, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :HAZE, :PARTINGSHOT, :SELFDESTRUCT, :TORMENT, :TOXIC
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.0
  s.weight        35.0
  s.color         :Gray
  s.shape         :Head
  s.habitat       :RoughTerrain
  s.category      "Single-Cyl"
  s.pokedex_entry "It is said that this Pokémon was born when an unknown poison Pokémon entered and inspirited an engine left at a scrap-processing factory."
  s.generation    9
  s.evolves_into  :REVAVROOM, :Level, 40
end

GameData::Species.define :REVAVROOM do |s|
  s.name          "Revavroom"
  s.types         :STEEL, :POISON
  s.base_stats    hp: 80, attack: 119, defense: 90, speed: 90, sp_atk: 54, sp_def: 67
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :OVERCOAT
  s.hidden_abilities :FILTER
  s.moves do |m|
    m.at 0, :SHIFTGEAR
    m.at 1, :LICK
    m.at 1, :POISONGAS
    m.at 1, :MAGNETRISE
    m.at 4, :SMOG
    m.at 7, :TAUNT
    m.at 10, :ASSURANCE
    m.at 13, :SLUDGE
    m.at 17, :GYROBALL
    m.at 21, :HEADBUTT
    m.at 25, :SCREECH
    m.at 28, :IRONHEAD
    m.at 32, :SWAGGER
    m.at 36, :POISONJAB
    m.at 46, :UPROAR
    m.at 52, :SPINOUT
    m.at 58, :GUNKSHOT
  end
  s.tutor_moves   :ACIDSPRAY, :BODYSLAM, :BULLDOZE, :CURSE, :DOUBLEEDGE, :ENDEAVOR, :ENDURE, :FACADE, :FLASHCANNON, :GIGAIMPACT, :GUNKSHOT, :GYROBALL, :HARDPRESS, :HAZE, :HEAVYSLAM, :HIGHHORSEPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :LASHOUT, :METALSOUND, :OVERHEAT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :SANDSTORM, :SCARYFACE, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :STEELBEAM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TAUNT, :TEMPERFLARE, :THIEF, :TOXIC, :TOXICSPIKES, :UPROAR, :VENOSHOCK, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   5120
  s.height        1.8
  s.weight        120.0
  s.color         :Gray
  s.shape         :Head
  s.habitat       :RoughTerrain
  s.category      "Multi-Cyl"
  s.pokedex_entry "It creates a gas out of poison and minerals from rocks. It then detonates the gas in its cylinders— now numbering eight—to generate energy."
  s.generation    9
  s.flags         :SOSForm_0
end

GameData::Species.define :ORTHWORM do |s|
  s.name          "Orthworm"
  s.types         :STEEL
  s.base_stats    hp: 70, attack: 85, defense: 145, speed: 65, sp_atk: 60, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      240
  s.catch_rate    25
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :EARTHEATER
  s.hidden_abilities :SANDVEIL
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :WRAP
    m.at 1, :HARDEN
    m.at 7, :MUDSLAP
    m.at 12, :SMACKDOWN
    m.at 16, :BULLDOZE
    m.at 21, :IRONHEAD
    m.at 26, :TAKEDOWN
    m.at 30, :DIG
    m.at 34, :SANDSTORM
    m.at 38, :IRONDEFENSE
    m.at 43, :IRONTAIL
    m.at 47, :EARTHQUAKE
    m.at 52, :SHEDTAIL
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BULLDOZE, :CURSE, :DIG, :DOUBLEEDGE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :FLASHCANNON, :GIGAIMPACT, :HEAVYSLAM, :HELPINGHAND, :HIGHHORSEPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :METALSOUND, :MUDSHOT, :MUDSLAP, :PROTECT, :REST, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SANDTOMB, :SLEEPTALK, :SMACKDOWN, :SPIKES, :STEALTHROCK, :STEELBEAM, :STOMPINGTANTRUM, :SUBSTITUTE, :TAKEDOWN, :TERABLAST
  s.egg_moves     :COIL, :CURSE, :METALBURST
  s.egg_groups    :Field
  s.hatch_steps   8960
  s.height        2.5
  s.weight        310.0
  s.color         :Pink
  s.shape         :Serpentine
  s.habitat       :RoughTerrain
  s.category      "Earthworm"
  s.pokedex_entry "When attacked, this Pokémon will wield the tendrils on its body like fists and pelt the opponent with a storm of punches."
  s.generation    9
end

GameData::Species.define :GHOLDENGO do |s|
  s.name          "Gholdengo"
  s.types         :STEEL, :GHOST
  s.base_stats    hp: 87, attack: 60, defense: 95, speed: 84, sp_atk: 133, sp_def: 91
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      275
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :GOODASGOLD
  s.moves do |m|
    m.at 1, :ASTONISH
    m.at 1, :TACKLE
    m.at 7, :NIGHTSHADE
    m.at 14, :CONFUSERAY
    m.at 21, :SUBSTITUTE
    m.at 28, :METALSOUND
    m.at 35, :SHADOWBALL
    m.at 42, :RECOVER
    m.at 49, :POWERGEM
    m.at 56, :MAKEITRAIN
    m.at 63, :NASTYPLOT
    m.at 70, :MEMENTO
  end
  s.tutor_moves   :CHARGEBEAM, :CONFUSERAY, :DAZZLINGGLEAM, :ELECTROBALL, :ENDURE, :FLASHCANNON, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :GIGAIMPACT, :HEAVYSLAM, :HEX, :HYPERBEAM, :IRONHEAD, :LIGHTSCREEN, :LOWKICK, :LOWSWEEP, :METALSOUND, :NASTYPLOT, :NIGHTSHADE, :POLTERGEIST, :POWERGEM, :PROTECT, :PSYCHIC, :PSYSHOCK, :REFLECT, :REST, :SANDSTORM, :SHADOWBALL, :SLEEPTALK, :STEELBEAM, :SUBSTITUTE, :TAKEDOWN, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRICK, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   12800
  s.height        1.2
  s.weight        30.0
  s.color         :Yellow
  s.shape         :Bipedal
  s.habitat       :Urban
  s.category      "Coin Entity"
  s.pokedex_entry "Its body seems to be made up of 1,000 coins. This Pokémon gets along well with others and is quick to make friends with anybody."
  s.generation    9
end

GameData::Species.define :ARCHALUDON do |s|
  s.name          "Archaludon"
  s.types         :STEEL, :DRAGON
  s.base_stats    hp: 90, attack: 105, defense: 130, speed: 85, sp_atk: 125, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      300
  s.catch_rate    10
  s.happiness     50
  s.evs           defense: 3
  s.abilities     :STAMINA, :STURDY
  s.hidden_abilities :STALWART
  s.moves do |m|
    m.at 0, :ELECTROSHOT
    m.at 1, :LEER
    m.at 1, :METALCLAW
    m.at 6, :ROCKSMASH
    m.at 12, :HONECLAWS
    m.at 18, :METALSOUND
    m.at 24, :BREAKINGSWIPE
    m.at 30, :DRAGONTAIL
    m.at 36, :IRONDEFENSE
    m.at 42, :FOCUSENERGY
    m.at 48, :DRAGONCLAW
    m.at 54, :FLASHCANNON
    m.at 60, :METALBURST
    m.at 66, :HYPERBEAM
  end
  s.tutor_moves   :AURASPHERE, :BODYPRESS, :BODYSLAM, :BREAKINGSWIPE, :BRICKBREAK, :DARKPULSE, :DOUBLEEDGE, :DRACOMETEOR, :DRAGONCHEER, :DRAGONCLAW, :DRAGONPULSE, :DRAGONTAIL, :EARTHQUAKE, :ENDURE, :FACADE, :FLASHCANNON, :FOULPLAY, :GIGAIMPACT, :GYROBALL, :HARDPRESS, :HEAVYSLAM, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :LIGHTSCREEN, :METALCLAW, :METALSOUND, :METEORBEAM, :OUTRAGE, :PROTECT, :REFLECT, :REST, :ROAR, :ROCKSLIDE, :ROCKTOMB, :SCARYFACE, :SLEEPTALK, :SMACKDOWN, :SNARL, :SOLARBEAM, :STEALTHROCK, :STEELBEAM, :STONEEDGE, :SUBSTITUTE, :SWORDSDANCE, :TAKEDOWN, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TERABLAST
  s.egg_groups    :Mineral, :Dragon
  s.hatch_steps   3840
  s.height        2.0
  s.weight        60.0
  s.color         :White
  s.shape         :BipedalTail
  s.habitat       :Mountain
  s.category      "Alloy"
  s.pokedex_entry "It digs holes on mountains, searching for food. It’s so durable that being caught in a cave-in won’t faze it."
  s.generation    9
end

GameData::Species.define :IRONCROWN do |s|
  s.name          "Iron Crown"
  s.types         :STEEL, :PSYCHIC
  s.base_stats    hp: 90, attack: 72, defense: 100, speed: 98, sp_atk: 122, sp_def: 108
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      295
  s.catch_rate    10
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :QUARKDRIVE
  s.moves do |m|
    m.at 1, :LEER
    m.at 1, :ELECTRICTERRAIN
    m.at 1, :CONFUSION
    m.at 1, :METALCLAW
    m.at 7, :SMARTSTRIKE
    m.at 14, :SLASH
    m.at 21, :IRONDEFENSE
    m.at 28, :PSYSHOCK
    m.at 35, :PSYCHOCUT
    m.at 42, :FLASHCANNON
    m.at 49, :SACREDSWORD
    m.at 56, :TACHYONCUTTER
    m.at 63, :FUTURESIGHT
    m.at 70, :VOLTSWITCH
    m.at 77, :QUICKGUARD
    m.at 84, :METALBURST
    m.at 91, :HYPERBEAM
  end
  s.tutor_moves   :AGILITY, :AIRSLASH, :BODYSLAM, :BRICKBREAK, :BULLDOZE, :CALMMIND, :DOUBLEEDGE, :ELECTRICTERRAIN, :ENDURE, :EXPANDINGFORCE, :FACADE, :FLASHCANNON, :FOCUSBLAST, :FUTURESIGHT, :GIGAIMPACT, :GRAVITY, :HEAVYSLAM, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :METALCLAW, :METALSOUND, :PROTECT, :PSYCHIC, :PSYCHICNOISE, :PSYSHOCK, :REST, :SCARYFACE, :SLEEPTALK, :SMARTSTRIKE, :SOLARBLADE, :STEELBEAM, :STOREDPOWER, :SUBSTITUTE, :SUPERCELLSLAM, :SWORDSDANCE, :TAKEDOWN, :VOLTSWITCH, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   6400
  s.height        1.6
  s.weight        156.0
  s.color         :Blue
  s.shape         :Quadruped
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "There was supposedly an incident in which it launched shining blades to cut everything around it to pieces. Little else is known about it."
  s.generation    9
  s.flags         :Paradox
end

