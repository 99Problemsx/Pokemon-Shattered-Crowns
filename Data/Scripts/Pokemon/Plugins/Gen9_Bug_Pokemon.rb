#===============================================================================
# Shattered Crowns - Gen9 bug Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :KLEAVOR do |s|
  s.name          "Kleavor"
  s.types         :BUG, :ROCK
  s.base_stats    hp: 70, attack: 135, defense: 95, speed: 85, sp_atk: 45, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    45
  s.happiness     70
  s.evs           attack: 3
  s.abilities     :SWARM, :SHEERFORCE
  s.hidden_abilities :SHARPNESS
  s.moves do |m|
    m.at 0, :STONEAXE
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 4, :FURYCUTTER
    m.at 8, :FALSESWIPE
    m.at 12, :SMACKDOWN
    m.at 16, :DOUBLETEAM
    m.at 20, :DOUBLEHIT
    m.at 24, :SLASH
    m.at 28, :FOCUSENERGY
    m.at 32, :AGILITY
    m.at 36, :ROCKSLIDE
    m.at 40, :XSCISSOR
    m.at 44, :SWORDSDANCE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :BATONPASS, :BRICKBREAK, :BUGBITE, :BUGBUZZ, :CLOSECOMBAT, :DOUBLEEDGE, :DUALWINGBEAT, :ENDURE, :FACADE, :FALSESWIPE, :GIGAIMPACT, :HELPINGHAND, :HYPERBEAM, :LIGHTSCREEN, :LUNGE, :POUNCE, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :ROCKBLAST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SCARYFACE, :SKITTERSMACK, :SLEEPTALK, :SMACKDOWN, :STEALTHROCK, :STONEEDGE, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWIFT, :SWORDSDANCE, :TAILWIND, :TAKEDOWN, :THIEF, :TRAILBLAZE, :UTURN, :VACUUMWAVE, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   6630
  s.height        1.8
  s.weight        89.0
  s.color         :Brown
  s.shape         :MultiWinged
  s.habitat       :Grassland
  s.category      "Axe"
  s.pokedex_entry "A violent creature that fells towering trees with its crude axes and shields itself with hard stone. If one should chance upon this Pokémon in the wilds, one's only recourse is to flee."
  s.generation    8
end

GameData::Species.define :TAROUNTULA do |s|
  s.name          "Tarountula"
  s.types         :BUG
  s.base_stats    hp: 35, attack: 41, defense: 45, speed: 20, sp_atk: 29, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      42
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :INSOMNIA
  s.hidden_abilities :STAKEOUT
  s.moves do |m|
    m.at 1, :STRINGSHOT
    m.at 1, :TACKLE
    m.at 5, :STRUGGLEBUG
    m.at 8, :ASSURANCE
    m.at 11, :FEINT
    m.at 14, :BUGBITE
    m.at 18, :BLOCK
    m.at 22, :COUNTER
    m.at 25, :HEADBUTT
    m.at 29, :STICKYWEB
    m.at 33, :GASTROACID
    m.at 36, :CIRCLETHROW
    m.at 40, :THROATCHOP
    m.at 44, :SKITTERSMACK
  end
  s.tutor_moves   :BODYSLAM, :BUGBITE, :BUGBUZZ, :BULLETSEED, :ENDURE, :FACADE, :FALSESWIPE, :GIGADRAIN, :GRASSKNOT, :KNOCKOFF, :LEECHLIFE, :LUNGE, :POISONJAB, :POUNCE, :PROTECT, :RAINDANCE, :REST, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SPIKES, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :THIEF, :THROATCHOP, :TOXICSPIKES, :TRAILBLAZE, :XSCISSOR, :TERABLAST
  s.egg_moves     :FIRSTIMPRESSION, :LUNGE, :MEMENTO, :SUCKERPUNCH
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.3
  s.weight        4.0
  s.color         :White
  s.shape         :Insectoid
  s.habitat       :Forest
  s.category      "String Ball"
  s.pokedex_entry "The ball of threads wrapped around its body is elastic enough to deflect the scythes of Scyther, this Pokémon’s natural enemy."
  s.generation    9
  s.evolves_into  :SPIDOPS, :Level, 15
end

GameData::Species.define :SPIDOPS do |s|
  s.name          "Spidops"
  s.types         :BUG
  s.base_stats    hp: 60, attack: 79, defense: 92, speed: 35, sp_atk: 52, sp_def: 86
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      141
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :INSOMNIA
  s.hidden_abilities :STAKEOUT
  s.moves do |m|
    m.at 0, :SILKTRAP
    m.at 1, :STRINGSHOT
    m.at 1, :TACKLE
    m.at 5, :STRUGGLEBUG
    m.at 8, :ASSURANCE
    m.at 11, :FEINT
    m.at 14, :BUGBITE
    m.at 19, :BLOCK
    m.at 24, :COUNTER
    m.at 28, :HEADBUTT
    m.at 33, :STICKYWEB
    m.at 37, :GASTROACID
    m.at 41, :CIRCLETHROW
    m.at 45, :THROATCHOP
    m.at 49, :SKITTERSMACK
  end
  s.tutor_moves   :AERIALACE, :BODYSLAM, :BRICKBREAK, :BUGBITE, :BUGBUZZ, :BULLETSEED, :ELECTROWEB, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :KNOCKOFF, :LEECHLIFE, :LOWKICK, :LUNGE, :PAINSPLIT, :POISONJAB, :POUNCE, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :ROCKTOMB, :SCARYFACE, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SPIKES, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :TOXICSPIKES, :TRAILBLAZE, :UPPERHAND, :UTURN, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.0
  s.weight        16.5
  s.color         :Green
  s.shape         :Insectoid
  s.habitat       :Forest
  s.category      "Trap"
  s.pokedex_entry "It clings to branches and ceilings using its threads and moves without a sound. It takes out its prey before the prey even notices it."
  s.generation    9
end

GameData::Species.define :NYMBLE do |s|
  s.name          "Nymble"
  s.types         :BUG
  s.base_stats    hp: 33, attack: 46, defense: 40, speed: 45, sp_atk: 21, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      42
  s.catch_rate    190
  s.happiness     20
  s.evs           attack: 1
  s.abilities     :SWARM
  s.hidden_abilities :TINTEDLENS
  s.moves do |m|
    m.at 1, :LEER
    m.at 1, :TACKLE
    m.at 4, :STRUGGLEBUG
    m.at 6, :ASTONISH
    m.at 9, :ASSURANCE
    m.at 11, :DOUBLEKICK
    m.at 14, :SCREECH
    m.at 18, :ENDURE
    m.at 22, :BUGBITE
    m.at 26, :FEINT
    m.at 30, :AGILITY
    m.at 38, :SUCKERPUNCH
    m.at 41, :FIRSTIMPRESSION
  end
  s.tutor_moves   :AGILITY, :BUGBITE, :BUGBUZZ, :ENDURE, :FACADE, :LEECHLIFE, :POUNCE, :PROTECT, :RAINDANCE, :REST, :SKITTERSMACK, :SLEEPTALK, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :THIEF, :TRAILBLAZE, :UTURN, :XSCISSOR, :TERABLAST
  s.egg_moves     :COUNTER, :SKITTERSMACK
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        0.2
  s.weight        1.0
  s.color         :Gray
  s.shape         :Insectoid
  s.habitat       :Grassland
  s.category      "Grasshopper"
  s.pokedex_entry "It has its third set of legs folded up. When it’s in a tough spot, this Pokémon jumps over 30 feet using the strength of its legs."
  s.generation    9
  s.evolves_into  :LOKIX, :Level, 24
end

GameData::Species.define :LOKIX do |s|
  s.name          "Lokix"
  s.types         :BUG, :DARK
  s.base_stats    hp: 71, attack: 102, defense: 78, speed: 92, sp_atk: 52, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      158
  s.catch_rate    30
  s.happiness     0
  s.evs           attack: 2
  s.abilities     :SWARM
  s.hidden_abilities :TINTEDLENS
  s.moves do |m|
    m.at 0, :LUNGE
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 1, :LOWKICK
    m.at 1, :DETECT
    m.at 4, :STRUGGLEBUG
    m.at 6, :ASTONISH
    m.at 9, :ASSURANCE
    m.at 11, :DOUBLEKICK
    m.at 14, :SCREECH
    m.at 18, :ENDURE
    m.at 22, :BUGBITE
    m.at 28, :FEINT
    m.at 32, :AGILITY
    m.at 36, :THROATCHOP
    m.at 40, :SUCKERPUNCH
    m.at 44, :FIRSTIMPRESSION
    m.at 48, :BOUNCE
    m.at 53, :AXEKICK
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :BRICKBREAK, :BUGBITE, :BUGBUZZ, :DARKPULSE, :DOUBLEEDGE, :ENDURE, :FACADE, :FLING, :GIGAIMPACT, :KNOCKOFF, :LASHOUT, :LEECHLIFE, :LOWKICK, :LOWSWEEP, :LUNGE, :POUNCE, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :SCARYFACE, :SKITTERSMACK, :SLEEPTALK, :SPITE, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :TRAILBLAZE, :UTURN, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        1.0
  s.weight        17.5
  s.color         :Gray
  s.shape         :Insectoid
  s.habitat       :Grassland
  s.category      "Grasshopper"
  s.pokedex_entry "When it decides to fight all out, it stands on its previously folded legs to enter Showdown Mode. It neutralizes its enemies in short order."
  s.generation    9
end

GameData::Species.define :RELLOR do |s|
  s.name          "Rellor"
  s.types         :BUG
  s.base_stats    hp: 41, attack: 50, defense: 60, speed: 30, sp_atk: 31, sp_def: 58
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      54
  s.catch_rate    190
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :COMPOUNDEYES
  s.hidden_abilities :SHEDSKIN
  s.moves do |m|
    m.at 1, :DEFENSECURL
    m.at 1, :TACKLE
    m.at 4, :SANDATTACK
    m.at 7, :STRUGGLEBUG
    m.at 11, :ROLLOUT
    m.at 15, :MUDSHOT
    m.at 20, :BUGBITE
    m.at 24, :TAKEDOWN
    m.at 29, :DIG
    m.at 35, :LUNGE
  end
  s.tutor_moves   :BUGBITE, :BUGBUZZ, :DIG, :ENDURE, :FACADE, :FLING, :GUNKSHOT, :IRONDEFENSE, :LEECHLIFE, :LUNGE, :MUDSHOT, :MUDSLAP, :POUNCE, :PROTECT, :REST, :ROCKTOMB, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :STRUGGLEBUG, :SUBSTITUTE, :TAKEDOWN, :THIEF, :WEATHERBALL, :XSCISSOR, :TERABLAST
  s.egg_moves     :COSMICPOWER, :MEMENTO, :RECOVER, :WEATHERBALL
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        0.2
  s.weight        1.0
  s.color         :Brown
  s.shape         :Insectoid
  s.habitat       :RoughTerrain
  s.category      "Rolling"
  s.pokedex_entry "This Pokémon creates a mud ball by mixing sand and dirt with psychic energy. It treasures its mud ball more than its own life."
  s.generation    9
  s.evolves_into  :RABSCA, :LevelWalk, 1000
end

GameData::Species.define :RABSCA do |s|
  s.name          "Rabsca"
  s.types         :BUG, :PSYCHIC
  s.base_stats    hp: 75, attack: 50, defense: 85, speed: 45, sp_atk: 115, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      165
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2
  s.abilities     :SYNCHRONIZE
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at -1, :SAFEGUARD
    m.at -1, :PSYCHUP
    m.at 0, :REVIVALBLESSING
    m.at 1, :TACKLE
    m.at 1, :CONFUSION
    m.at 1, :DEFENSECURL
    m.at 4, :SANDATTACK
    m.at 7, :STRUGGLEBUG
    m.at 11, :ROLLOUT
    m.at 15, :PSYBEAM
    m.at 20, :BUGBITE
    m.at 24, :TAKEDOWN
    m.at 29, :EXTRASENSORY
    m.at 35, :LUNGE
    m.at 40, :POWERSWAP
    m.at 40, :SPEEDSWAP
    m.at 40, :GUARDSWAP
    m.at 45, :BUGBUZZ
    m.at 50, :PSYCHIC
  end
  s.tutor_moves   :BUGBITE, :BUGBUZZ, :CALMMIND, :CONFUSERAY, :DAZZLINGGLEAM, :DIG, :EARTHPOWER, :ELECTROBALL, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FLING, :FUTURESIGHT, :GIGAIMPACT, :GRAVITY, :GUNKSHOT, :HYPERBEAM, :IMPRISON, :IRONDEFENSE, :LEECHLIFE, :LIGHTSCREEN, :LUNGE, :MUDSHOT, :MUDSLAP, :POLTERGEIST, :POUNCE, :POWERGEM, :PROTECT, :PSYBEAM, :PSYCHIC, :PSYCHICNOISE, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :RAINDANCE, :REFLECT, :REST, :ROCKTOMB, :SANDSTORM, :SHADOWBALL, :SKILLSWAP, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :STOREDPOWER, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :THIEF, :TRICK, :TRICKROOM, :WEATHERBALL, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        0.3
  s.weight        3.5
  s.color         :Green
  s.shape         :Insectoid
  s.habitat       :RoughTerrain
  s.category      "Rolling"
  s.pokedex_entry "The body that supports the ball barely moves. Therefore, it is thought that the true body of this Pokémon is actually inside the ball."
  s.generation    9
end

GameData::Species.define :SLITHERWING do |s|
  s.name          "Slither Wing"
  s.types         :BUG, :FIGHTING
  s.base_stats    hp: 85, attack: 135, defense: 79, speed: 81, sp_atk: 85, sp_def: 105
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    30
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :PROTOSYNTHESIS
  s.moves do |m|
    m.at -1, :SUNNYDAY
    m.at 1, :GUST
    m.at 1, :EMBER
    m.at 1, :BUGBITE
    m.at 7, :STUNSPORE
    m.at 7, :POISONPOWDER
    m.at 14, :FLAMECHARGE
    m.at 21, :STOMP
    m.at 28, :LOWSWEEP
    m.at 35, :MORNINGSUN
    m.at 42, :LUNGE
    m.at 49, :SUPERPOWER
    m.at 56, :BULKUP
    m.at 63, :DUALWINGBEAT
    m.at 70, :FIRSTIMPRESSION
    m.at 77, :WHIRLWIND
    m.at 84, :LEECHLIFE
    m.at 91, :THRASH
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BUGBITE, :BUGBUZZ, :BULKUP, :CLOSECOMBAT, :CURSE, :DOUBLEEDGE, :DUALWINGBEAT, :EARTHQUAKE, :ENDURE, :FACADE, :FLAMECHARGE, :FLAREBLITZ, :GIGADRAIN, :GIGAIMPACT, :HEATCRASH, :HEATWAVE, :HEAVYSLAM, :HIGHHORSEPOWER, :HURRICANE, :HYPERBEAM, :LEECHLIFE, :LOWKICK, :LOWSWEEP, :LUNGE, :PROTECT, :RAINDANCE, :REST, :REVERSAL, :SANDSTORM, :SKITTERSMACK, :SLEEPTALK, :STOMPINGTANTRUM, :SUBSTITUTE, :SUNNYDAY, :TAKEDOWN, :TEMPERFLARE, :TRAILBLAZE, :UTURN, :WILDCHARGE, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   12800
  s.height        3.2
  s.weight        92.0
  s.color         :Red
  s.shape         :MultiWinged
  s.habitat       :Rare
  s.category      "Paradox"
  s.pokedex_entry "This mysterious Pokémon has some similarities to a creature that an old book introduced as Slither Wing."
  s.generation    9
  s.flags         :Paradox
  s.wild_item_uncommon :BOOSTERENERGY
end

