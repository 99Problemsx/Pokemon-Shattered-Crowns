#===============================================================================
# Shattered Crowns - Gen9 flying Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :BOMBIRDIER do |s|
  s.name          "Bombirdier"
  s.types         :FLYING, :DARK
  s.base_stats    hp: 70, attack: 103, defense: 85, speed: 82, sp_atk: 60, sp_def: 85
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      243
  s.catch_rate    25
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :BIGPECKS, :KEENEYE
  s.hidden_abilities :ROCKYPAYLOAD
  s.moves do |m|
    m.at 1, :MEMENTO
    m.at 1, :HONECLAWS
    m.at 1, :WINGATTACK
    m.at 1, :LEER
    m.at 1, :PECK
    m.at 7, :THIEF
    m.at 11, :ROCKTHROW
    m.at 16, :WHIRLWIND
    m.at 20, :PLUCK
    m.at 24, :TORMENT
    m.at 29, :ROCKTOMB
    m.at 36, :PAYBACK
    m.at 42, :DUALWINGBEAT
    m.at 47, :ROCKSLIDE
    m.at 53, :KNOCKOFF
    m.at 60, :PARTINGSHOT
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :AIRSLASH, :BRAVEBIRD, :CURSE, :DARKPULSE, :DRILLRUN, :DUALWINGBEAT, :ENDEAVOR, :ENDURE, :FACADE, :FEATHERDANCE, :FLY, :FOULPLAY, :GIGAIMPACT, :HEATWAVE, :HURRICANE, :HYPERBEAM, :HYPERVOICE, :ICYWIND, :KNOCKOFF, :LASHOUT, :NASTYPLOT, :POWERGEM, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SLEEPTALK, :SNARL, :STEALTHROCK, :STONEEDGE, :SUBSTITUTE, :SUNNYDAY, :TAILWIND, :TAKEDOWN, :TAUNT, :THIEF, :UTURN, :TERABLAST
  s.egg_moves     :FEATHERDANCE, :POWERTRIP, :ROOST, :SKYATTACK, :SUCKERPUNCH
  s.egg_groups    :Flying
  s.hatch_steps   8960
  s.height        1.5
  s.weight        42.9
  s.color         :White
  s.shape         :Winged
  s.habitat       :Mountain
  s.category      "Item Drop"
  s.pokedex_entry "It gathers things up in an apron made from shed feathers added to the Pokémon’s chest feathers, then drops those things from high places for fun."
  s.generation    9
end

GameData::Species.define :FLAMIGO do |s|
  s.name          "Flamigo"
  s.types         :FLYING, :FIGHTING
  s.base_stats    hp: 82, attack: 115, defense: 74, speed: 90, sp_atk: 75, sp_def: 64
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      175
  s.catch_rate    100
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SCRAPPY, :TANGLEDFEET
  s.hidden_abilities :COSTAR
  s.moves do |m|
    m.at 1, :COPYCAT
    m.at 1, :PECK
    m.at 5, :DOUBLEKICK
    m.at 9, :DETECT
    m.at 12, :WINGATTACK
    m.at 15, :FOCUSENERGY
    m.at 18, :LOWKICK
    m.at 21, :FEINT
    m.at 27, :PAYBACK
    m.at 31, :ROOST
    m.at 35, :AIRSLASH
    m.at 39, :MEGAKICK
    m.at 44, :WIDEGUARD
    m.at 48, :THROATCHOP
    m.at 54, :BRAVEBIRD
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :BRAVEBIRD, :BULKUP, :CHILLINGWATER, :CLOSECOMBAT, :DUALWINGBEAT, :ENDEAVOR, :ENDURE, :FACADE, :FEATHERDANCE, :FLING, :FLY, :GIGAIMPACT, :HURRICANE, :HYPERBEAM, :LIQUIDATION, :LOWKICK, :LOWSWEEP, :LUNGE, :POUNCE, :PROTECT, :PSYCHUP, :REST, :REVERSAL, :SLEEPTALK, :SUBSTITUTE, :SWORDSDANCE, :TAILWIND, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :UPPERHAND, :UTURN, :WATERPULSE, :TERABLAST
  s.egg_moves     :DOUBLETEAM, :QUICKGUARD, :SKYATTACK
  s.egg_groups    :Flying
  s.hatch_steps   5120
  s.height        1.6
  s.weight        37.0
  s.color         :Pink
  s.shape         :Winged
  s.habitat       :WatersEdge
  s.category      "Synchronize"
  s.pokedex_entry "This Pokémon apparently ties the base of its neck into a knot so that energy stored in its belly does not escape from its beak."
  s.generation    9
end

