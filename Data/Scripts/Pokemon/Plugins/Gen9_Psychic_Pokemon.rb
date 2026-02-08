#===============================================================================
# Shattered Crowns - Gen9 psychic Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :FLITTLE do |s|
  s.name          "Flittle"
  s.types         :PSYCHIC
  s.base_stats    hp: 30, attack: 35, defense: 30, speed: 75, sp_atk: 55, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      51
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :ANTICIPATION, :FRISK
  s.hidden_abilities :SPEEDBOOST
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :GROWL
    m.at 5, :CONFUSION
    m.at 8, :BABYDOLLEYES
    m.at 11, :DISARMINGVOICE
    m.at 15, :QUICKATTACK
    m.at 19, :PSYBEAM
    m.at 24, :PLUCK
    m.at 29, :AGILITY
    m.at 34, :UPROAR
  end
  s.tutor_moves   :AGILITY, :BATONPASS, :CALMMIND, :CONFUSERAY, :DISARMINGVOICE, :ENDURE, :FACADE, :FOULPLAY, :HELPINGHAND, :LIGHTSCREEN, :MUDSLAP, :POUNCE, :PROTECT, :PSYBEAM, :PSYCHIC, :PSYCHICTERRAIN, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :SANDSTORM, :SEEDBOMB, :SKILLSWAP, :SLEEPTALK, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TAKEDOWN, :THIEF, :TRICK, :TRICKROOM, :UPROAR, :UTURN, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ALLYSWITCH, :HYPNOSIS, :ROOST
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        0.2
  s.weight        1.5
  s.color         :Yellow
  s.shape         :HeadLegs
  s.habitat       :Grassland
  s.category      "Frill"
  s.pokedex_entry "Flittle’s toes levitate about half an inch above the ground because of the psychic power emitted from the frills on the Pokémon’s belly."
  s.generation    9
  s.evolves_into  :ESPATHRA, :Level, 35
end

GameData::Species.define :ESPATHRA do |s|
  s.name          "Espathra"
  s.types         :PSYCHIC
  s.base_stats    hp: 95, attack: 60, defense: 60, speed: 105, sp_atk: 101, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      168
  s.catch_rate    60
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :OPPORTUNIST, :FRISK
  s.hidden_abilities :SPEEDBOOST
  s.moves do |m|
    m.at 0, :LUMINACRASH
    m.at 1, :FEATHERDANCE
    m.at 1, :GROWL
    m.at 1, :PECK
    m.at 1, :DRILLPECK
    m.at 5, :CONFUSION
    m.at 8, :BABYDOLLEYES
    m.at 11, :DISARMINGVOICE
    m.at 15, :QUICKATTACK
    m.at 19, :PSYBEAM
    m.at 24, :PLUCK
    m.at 29, :AGILITY
    m.at 34, :UPROAR
    m.at 43, :DAZZLINGGLEAM
    m.at 49, :PSYCHIC
    m.at 54, :LASTRESORT
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :BATONPASS, :BODYSLAM, :BRAVEBIRD, :CALMMIND, :CONFUSERAY, :DAZZLINGGLEAM, :DISARMINGVOICE, :DOUBLEEDGE, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FEATHERDANCE, :FLASHCANNON, :FOULPLAY, :GIGAIMPACT, :HELPINGHAND, :HEX, :HYPERBEAM, :HYPERVOICE, :LIGHTSCREEN, :LOWKICK, :MUDSLAP, :NIGHTSHADE, :POUNCE, :PROTECT, :PSYBEAM, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :SANDSTORM, :SEEDBOMB, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :STOREDPOWER, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :TAKEDOWN, :THIEF, :TRICK, :TRICKROOM, :UPROAR, :UTURN, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        1.9
  s.weight        90.0
  s.color         :Yellow
  s.shape         :HeadLegs
  s.habitat       :Grassland
  s.category      "Ostrich"
  s.pokedex_entry "It immobilizes opponents by bathing them in psychic power from its large eyes. Despite its appearance, it has a vicious temperament."
  s.generation    9
end

