#===============================================================================
# Shattered Crowns - Bug Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :CATERPIE do |s|
  s.name          "Caterpie"
  s.types         :BUG
  s.base_stats    hp: 45, attack: 30, defense: 35, speed: 45, sp_atk: 20, sp_def: 20
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      39
  s.catch_rate    255
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :SHIELDDUST
  s.hidden_abilities :RUNAWAY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :STRINGSHOT
    m.at 9, :BUGBITE
  end
  s.tutor_moves   :BUGBITE, :ELECTROWEB, :STRINGSHOT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.3
  s.weight        2.9
  s.color         :Green
  s.shape         :Insectoid
  s.habitat       :Forest
  s.category      "Worm"
  s.pokedex_entry "Its voracious appetite compels it to devour leaves bigger than itself without hesitation. It releases a terribly strong odor from its antennae."
  s.generation    1
  s.evolves_into  :METAPOD, :Level, 7
end

GameData::Species.define :METAPOD do |s|
  s.name          "Metapod"
  s.types         :BUG
  s.base_stats    hp: 50, attack: 20, defense: 55, speed: 30, sp_atk: 25, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      72
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SHEDSKIN
  s.moves do |m|
    m.at 0, :HARDEN
  end
  s.tutor_moves   :BUGBITE, :ELECTROWEB, :IRONDEFENSE, :STRINGSHOT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.7
  s.weight        9.9
  s.color         :Green
  s.shape         :Serpentine
  s.habitat       :Forest
  s.category      "Cocoon"
  s.pokedex_entry "Its shell is as hard as an iron slab. A Metapod does not move very much because it is preparing its soft innards for evolution inside the shell."
  s.generation    1
  s.evolves_into  :BUTTERFREE, :Level, 10
end

GameData::Species.define :BUTTERFREE do |s|
  s.name          "Butterfree"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 60, attack: 45, defense: 50, speed: 70, sp_atk: 90, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      198
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 2, sp_defense: 1
  s.abilities     :COMPOUNDEYES
  s.hidden_abilities :TINTEDLENS
  s.moves do |m|
    m.at 0, :GUST
    m.at 1, :HARDEN
    m.at 1, :TACKLE
    m.at 1, :STRINGSHOT
    m.at 1, :BUGBITE
    m.at 4, :SUPERSONIC
    m.at 8, :CONFUSION
    m.at 12, :POISONPOWDER
    m.at 12, :STUNSPORE
    m.at 12, :SLEEPPOWDER
    m.at 16, :PSYBEAM
    m.at 20, :WHIRLWIND
    m.at 24, :AIRSLASH
    m.at 28, :SAFEGUARD
    m.at 32, :BUGBUZZ
    m.at 36, :TAILWIND
    m.at 40, :RAGEPOWDER
    m.at 44, :QUIVERDANCE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :AIRSLASH, :ATTRACT, :BATONPASS, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :DUALWINGBEAT, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :INFESTATION, :IRONDEFENSE, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :POLLENPUFF, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SILVERWIND, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UTURN, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.1
  s.weight        32.0
  s.color         :White
  s.shape         :MultiWinged
  s.habitat       :Forest
  s.category      "Butterfly"
  s.pokedex_entry "It has a superior ability to search for delicious honey from flowers. It can seek, extract, and carry honey from flowers blooming over six miles away."
  s.generation    1
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :SILVERPOWDER
end

GameData::Species.define :WEEDLE do |s|
  s.name          "Weedle"
  s.types         :BUG, :POISON
  s.base_stats    hp: 40, attack: 35, defense: 30, speed: 50, sp_atk: 20, sp_def: 20
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      39
  s.catch_rate    255
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :SHIELDDUST
  s.hidden_abilities :RUNAWAY
  s.moves do |m|
    m.at 1, :POISONSTING
    m.at 1, :STRINGSHOT
    m.at 9, :BUGBITE
  end
  s.tutor_moves   :BUGBITE, :ELECTROWEB, :STRINGSHOT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.3
  s.weight        3.2
  s.color         :Brown
  s.shape         :Insectoid
  s.habitat       :Forest
  s.category      "Hairy Bug"
  s.pokedex_entry "A Weedle has an extremely acute sense of smell. It distinguishes its favorite kinds of leaves from those it dislikes by sniffing with its big red proboscis (nose)."
  s.generation    1
  s.evolves_into  :KAKUNA, :Level, 7
end

GameData::Species.define :KAKUNA do |s|
  s.name          "Kakuna"
  s.types         :BUG, :POISON
  s.base_stats    hp: 45, attack: 25, defense: 50, speed: 35, sp_atk: 25, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      72
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SHEDSKIN
  s.moves do |m|
    m.at 0, :HARDEN
  end
  s.tutor_moves   :BUGBITE, :ELECTROWEB, :IRONDEFENSE, :STRINGSHOT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.6
  s.weight        10.0
  s.color         :Yellow
  s.shape         :Serpentine
  s.habitat       :Forest
  s.category      "Cocoon"
  s.pokedex_entry "It remains virtually immobile while it clings to a tree. However, on the inside, it busily prepares for evolution. This is evident from how hot its shell becomes."
  s.generation    1
  s.evolves_into  :BEEDRILL, :Level, 10
end

GameData::Species.define :BEEDRILL do |s|
  s.name          "Beedrill"
  s.types         :BUG, :POISON
  s.base_stats    hp: 65, attack: 90, defense: 40, speed: 75, sp_atk: 45, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      198
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2, sp_defense: 1
  s.abilities     :SWARM
  s.hidden_abilities :SNIPER
  s.moves do |m|
    m.at 0, :FURYATTACK
    m.at 1, :HARDEN
    m.at 1, :POISONSTING
    m.at 1, :STRINGSHOT
    m.at 1, :BUGBITE
    m.at 11, :FURYCUTTER
    m.at 14, :LASERFOCUS
    m.at 17, :POISONSTING
    m.at 20, :FOCUSENERGY
    m.at 23, :VENOSHOCK
    m.at 26, :ASSURANCE
    m.at 29, :TOXICSPIKES
    m.at 32, :PINMISSILE
    m.at 35, :POISONJAB
    m.at 38, :AGILITY
    m.at 41, :ENDEAVOR
    m.at 44, :FELLSTINGER
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :ATTRACT, :BRICKBREAK, :BRUTALSWING, :BUGBITE, :CAPTIVATE, :CONFIDE, :CUT, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :ELECTROWEB, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :KNOCKOFF, :LASERFOCUS, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PAYBACK, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKSMASH, :ROOST, :ROUND, :SECRETPOWER, :SILVERWIND, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :THIEF, :THROATCHOP, :UTURN, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.0
  s.weight        29.5
  s.color         :Yellow
  s.shape         :MultiWinged
  s.habitat       :Forest
  s.category      "Poison Bee"
  s.pokedex_entry "A Beedrill is extremely territorial. For safety reasons, no one should ever approach its nest. If angered, they will attack in a swarm."
  s.generation    1
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :PARAS do |s|
  s.name          "Paras"
  s.types         :BUG, :GRASS
  s.base_stats    hp: 35, attack: 70, defense: 55, speed: 25, sp_atk: 45, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      57
  s.catch_rate    190
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :EFFECTSPORE, :DRYSKIN
  s.hidden_abilities :DAMP
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 6, :STUNSPORE
    m.at 6, :POISONPOWDER
    m.at 11, :ABSORB
    m.at 17, :FURYCUTTER
    m.at 22, :SPORE
    m.at 27, :SLASH
    m.at 33, :GROWTH
    m.at 38, :GIGADRAIN
    m.at 43, :AROMATHERAPY
    m.at 49, :RAGEPOWDER
    m.at 54, :XSCISSOR
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BUGBITE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GRASSKNOT, :HIDDENPOWER, :HONECLAWS, :KNOCKOFF, :LEECHLIFE, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REST, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THIEF, :VENOSHOCK, :WORRYSEED, :XSCISSOR, :TERABLAST
  s.egg_moves     :AGILITY, :BUGBITE, :COUNTER, :CROSSPOISON, :FELLSTINGER, :FLAIL, :GRASSYTERRAIN, :LEECHSEED, :METALCLAW, :PSYBEAM, :SCREECH, :SWEETSCENT, :WIDEGUARD
  s.egg_groups    :Bug, :Grass
  s.hatch_steps   5120
  s.height        0.3
  s.weight        5.4
  s.color         :Red
  s.shape         :Insectoid
  s.habitat       :Forest
  s.category      "Mushroom"
  s.pokedex_entry "A Paras has parasitic tochukaso mushrooms growing on its back. They grow by drawing nutrients from the host. They are valued as a medicine for long life."
  s.generation    1
  s.evolves_into  :PARASECT, :Level, 24
  s.wild_item_common   :TINYMUSHROOM
  s.wild_item_uncommon :BIGMUSHROOM
end

GameData::Species.define :PARASECT do |s|
  s.name          "Parasect"
  s.types         :BUG, :GRASS
  s.base_stats    hp: 60, attack: 95, defense: 80, speed: 30, sp_atk: 60, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      142
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2, defense: 1
  s.abilities     :EFFECTSPORE, :DRYSKIN
  s.hidden_abilities :DAMP
  s.moves do |m|
    m.at 1, :CROSSPOISON
    m.at 1, :SCRATCH
    m.at 1, :STUNSPORE
    m.at 1, :POISONPOWDER
    m.at 1, :ABSORB
    m.at 6, :STUNSPORE
    m.at 6, :POISONPOWDER
    m.at 11, :ABSORB
    m.at 17, :FURYCUTTER
    m.at 22, :SPORE
    m.at 29, :SLASH
    m.at 37, :GROWTH
    m.at 44, :GIGADRAIN
    m.at 51, :AROMATHERAPY
    m.at 59, :RAGEPOWDER
    m.at 66, :XSCISSOR
  end
  s.tutor_moves   :AERIALACE, :AFTERYOU, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BUGBITE, :BULLETSEED, :CAPTIVATE, :CONFIDE, :COUNTER, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :KNOCKOFF, :LEECHLIFE, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PROTECT, :REST, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SEEDBOMB, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THIEF, :THROATCHOP, :VENOSHOCK, :WORRYSEED, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug, :Grass
  s.hatch_steps   5120
  s.height        1.0
  s.weight        29.5
  s.color         :Red
  s.shape         :Insectoid
  s.habitat       :Forest
  s.category      "Mushroom"
  s.pokedex_entry "Parasect are known to infest the roots of large trees en masse and drain nutrients. When an infested tree dies, they move onto another tree all at once."
  s.generation    1
  s.wild_item_common   :TINYMUSHROOM
  s.wild_item_uncommon :BIGMUSHROOM
end

GameData::Species.define :VENONAT do |s|
  s.name          "Venonat"
  s.types         :BUG, :POISON
  s.base_stats    hp: 60, attack: 55, defense: 50, speed: 45, sp_atk: 40, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    190
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :COMPOUNDEYES, :TINTEDLENS
  s.hidden_abilities :RUNAWAY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :DISABLE
    m.at 1, :STRUGGLEBUG
    m.at 5, :SUPERSONIC
    m.at 11, :CONFUSION
    m.at 13, :POISONPOWDER
    m.at 17, :PSYBEAM
    m.at 23, :STUNSPORE
    m.at 25, :MEGADRAIN
    m.at 29, :SLEEPPOWDER
    m.at 35, :LEECHLIFE
    m.at 37, :ZENHEADBUTT
    m.at 41, :POISONFANG
    m.at 47, :PSYCHIC
  end
  s.tutor_moves   :ATTRACT, :BUGBITE, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :HIDDENPOWER, :INFESTATION, :LEECHLIFE, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROUND, :SECRETPOWER, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THIEF, :VENOSHOCK, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AGILITY, :BATONPASS, :BUGBITE, :MORNINGSUN, :RAGEPOWDER, :SCREECH, :TOXICSPIKES
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        1.0
  s.weight        30.0
  s.color         :Purple
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Insect"
  s.pokedex_entry "Its coat of thin, stiff hair that covers its entire body is said to have evolved for protection. Its large eyes never fail to spot even miniscule prey."
  s.generation    1
  s.evolves_into  :VENOMOTH, :Level, 31
end

GameData::Species.define :VENOMOTH do |s|
  s.name          "Venomoth"
  s.types         :BUG, :POISON
  s.base_stats    hp: 70, attack: 65, defense: 60, speed: 90, sp_atk: 90, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      158
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_attack: 1, speed: 1
  s.abilities     :SHIELDDUST, :TINTEDLENS
  s.hidden_abilities :WONDERSKIN
  s.moves do |m|
    m.at 0, :GUST
    m.at 1, :QUIVERDANCE
    m.at 1, :BUGBUZZ
    m.at 1, :WHIRLWIND
    m.at 1, :TACKLE
    m.at 1, :DISABLE
    m.at 1, :STRUGGLEBUG
    m.at 1, :SUPERSONIC
    m.at 5, :SUPERSONIC
    m.at 11, :CONFUSION
    m.at 13, :POISONPOWDER
    m.at 17, :PSYBEAM
    m.at 23, :STUNSPORE
    m.at 25, :MEGADRAIN
    m.at 29, :SLEEPPOWDER
    m.at 37, :LEECHLIFE
    m.at 41, :ZENHEADBUTT
    m.at 47, :POISONFANG
    m.at 55, :PSYCHIC
    m.at 59, :BUGBUZZ
    m.at 63, :QUIVERDANCE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :ATTRACT, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :LEECHLIFE, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SIGNALBEAM, :SILVERWIND, :SKILLSWAP, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UTURN, :VENOSHOCK, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        1.5
  s.weight        12.5
  s.color         :Purple
  s.shape         :MultiWinged
  s.habitat       :Forest
  s.category      "Poison Moth"
  s.pokedex_entry "Venomoth are nocturnal--they only are active at night. Their favorite prey are insects that gather around streetlights, attracted by the light in the darkness."
  s.generation    1
  s.wild_item_uncommon :SHEDSHELL
end

GameData::Species.define :SCYTHER do |s|
  s.name          "Scyther"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 70, attack: 110, defense: 80, speed: 105, sp_atk: 55, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      100
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :SWARM, :TECHNICIAN
  s.hidden_abilities :STEADFAST
  s.moves do |m|
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 4, :FURYCUTTER
    m.at 8, :FALSESWIPE
    m.at 12, :WINGATTACK
    m.at 16, :DOUBLETEAM
    m.at 20, :DOUBLEHIT
    m.at 24, :SLASH
    m.at 28, :FOCUSENERGY
    m.at 32, :AGILITY
    m.at 36, :AIRSLASH
    m.at 40, :XSCISSOR
    m.at 44, :LASERFOCUS
    m.at 48, :SWORDSDANCE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRSLASH, :ASSURANCE, :ATTRACT, :BATONPASS, :BRICKBREAK, :BRUTALSWING, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :COUNTER, :CROSSPOISON, :CUT, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FALSESWIPE, :FOCUSENERGY, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :PSYCHOCUT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROCKSMASH, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SILVERWIND, :SLEEPTALK, :SNORE, :STEELWING, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :THIEF, :UTURN, :XSCISSOR, :TERABLAST
  s.egg_moves     :BATONPASS, :COUNTER, :DEFOG, :FEINT, :NIGHTSLASH, :QUICKGUARD, :REVERSAL
  s.egg_groups    :Bug
  s.hatch_steps   6400
  s.height        1.5
  s.weight        56.0
  s.color         :Green
  s.shape         :MultiWinged
  s.habitat       :Grassland
  s.category      "Mantis"
  s.pokedex_entry "Its blindingly fast speed adds to the sharpness of its twin forearm scythes. The scythes can slice through thick logs in one wicked stroke."
  s.generation    1
  s.evolves_into  :SCIZOR, :TradeItem, METALCOAT
  s.flags         :HasGenderedSprites
end

GameData::Species.define :PINSIR do |s|
  s.name          "Pinsir"
  s.types         :BUG
  s.base_stats    hp: 65, attack: 125, defense: 100, speed: 85, sp_atk: 55, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      175
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :HYPERCUTTER, :MOLDBREAKER
  s.hidden_abilities :MOXIE
  s.moves do |m|
    m.at 1, :VISEGRIP
    m.at 1, :HARDEN
    m.at 4, :FOCUSENERGY
    m.at 8, :BIND
    m.at 12, :SEISMICTOSS
    m.at 16, :BUGBITE
    m.at 20, :STORMTHROW
    m.at 24, :DOUBLEHIT
    m.at 28, :VITALTHROW
    m.at 32, :XSCISSOR
    m.at 36, :STRENGTH
    m.at 40, :SWORDSDANCE
    m.at 44, :SUBMISSION
    m.at 48, :GUILLOTINE
    m.at 52, :SUPERPOWER
  end
  s.tutor_moves   :ATTRACT, :BIND, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BUGBITE, :BULKUP, :BULLDOZE, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSBLAST, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :IRONDEFENSE, :KNOCKOFF, :MIMIC, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVENGE, :REVERSAL, :ROCKCLIMB, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SLEEPTALK, :SMACKDOWN, :SNORE, :STEALTHROCK, :STONEEDGE, :STRENGTH, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :THIEF, :THROATCHOP, :XSCISSOR, :TERABLAST
  s.egg_moves     :BUGBITE, :CLOSECOMBAT, :FEINT, :FLAIL, :FURYATTACK, :QUICKATTACK, :SUPERPOWER, :THRASH
  s.egg_groups    :Bug
  s.hatch_steps   6400
  s.height        1.5
  s.weight        55.0
  s.color         :Brown
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Stag Beetle"
  s.pokedex_entry "Their pincers are strong enough to shatter thick logs. Because they dislike cold, Pinsir burrow and sleep under the ground on chilly nights."
  s.generation    1
end

GameData::Species.define :LEDYBA do |s|
  s.name          "Ledyba"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 40, attack: 20, defense: 30, speed: 55, sp_atk: 40, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      53
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :SWARM, :EARLYBIRD
  s.hidden_abilities :RATTLED
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 5, :SUPERSONIC
    m.at 8, :SWIFT
    m.at 12, :LIGHTSCREEN
    m.at 12, :REFLECT
    m.at 12, :SAFEGUARD
    m.at 15, :MACHPUNCH
    m.at 19, :ROOST
    m.at 22, :STRUGGLEBUG
    m.at 26, :BATONPASS
    m.at 29, :AGILITY
    m.at 33, :BUGBUZZ
    m.at 36, :AIRSLASH
    m.at 40, :DOUBLEEDGE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :ATTRACT, :BRICKBREAK, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :ENDURE, :FACADE, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GIGADRAIN, :HEADBUTT, :HIDDENPOWER, :ICEPUNCH, :INFESTATION, :KNOCKOFF, :LIGHTSCREEN, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :POWERUPPUNCH, :PROTECT, :REFLECT, :REST, :RETURN, :ROLLOUT, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :THIEF, :THUNDERPUNCH, :UPROAR, :UTURN, :TERABLAST
  s.egg_moves     :BUGBITE, :COUNTER, :ENCORE, :KNOCKOFF, :PSYBEAM, :SCREECH, :TAILWIND
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.0
  s.weight        10.8
  s.color         :Red
  s.shape         :Winged
  s.habitat       :Forest
  s.category      "Five Star"
  s.pokedex_entry "Ledyba communicate using a fluid that they secrete from where the legs join the body. They are said to convey feelings to others by altering the fluid's scent."
  s.generation    2
  s.evolves_into  :LEDIAN, :Level, 18
  s.flags         :HasGenderedSprites
end

GameData::Species.define :LEDIAN do |s|
  s.name          "Ledian"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 55, attack: 35, defense: 50, speed: 85, sp_atk: 55, sp_def: 110
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      137
  s.catch_rate    90
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :SWARM, :EARLYBIRD
  s.hidden_abilities :IRONFIST
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :SUPERSONIC
    m.at 1, :SWIFT
    m.at 5, :SUPERSONIC
    m.at 8, :SWIFT
    m.at 12, :LIGHTSCREEN
    m.at 12, :REFLECT
    m.at 12, :SAFEGUARD
    m.at 15, :MACHPUNCH
    m.at 20, :ROOST
    m.at 24, :STRUGGLEBUG
    m.at 29, :BATONPASS
    m.at 33, :AGILITY
    m.at 38, :BUGBUZZ
    m.at 42, :AIRSLASH
    m.at 47, :DOUBLEEDGE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :ATTRACT, :BRICKBREAK, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRAINPUNCH, :DYNAMICPUNCH, :ENDURE, :FACADE, :FLASH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :ICEPUNCH, :INFESTATION, :KNOCKOFF, :LIGHTSCREEN, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :POWERUPPUNCH, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKSMASH, :ROLLOUT, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :THIEF, :THUNDERPUNCH, :UPROAR, :UTURN, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.4
  s.weight        35.6
  s.color         :Red
  s.shape         :Winged
  s.habitat       :Forest
  s.category      "Five Star"
  s.pokedex_entry "It is said that in lands with clean air, where the stars fill the sky, there live many Ledian. For good reason, they use the light of the stars as energy."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :SPINARAK do |s|
  s.name          "Spinarak"
  s.types         :BUG, :POISON
  s.base_stats    hp: 40, attack: 60, defense: 40, speed: 30, sp_atk: 40, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      50
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :SWARM, :INSOMNIA
  s.hidden_abilities :SNIPER
  s.moves do |m|
    m.at 1, :POISONSTING
    m.at 1, :STRINGSHOT
    m.at 5, :ABSORB
    m.at 8, :INFESTATION
    m.at 12, :SCARYFACE
    m.at 15, :NIGHTSHADE
    m.at 19, :SHADOWSNEAK
    m.at 22, :FURYSWIPES
    m.at 26, :SUCKERPUNCH
    m.at 29, :LEECHLIFE
    m.at 33, :AGILITY
    m.at 36, :PINMISSILE
    m.at 40, :PSYCHIC
    m.at 43, :POISONJAB
    m.at 47, :CROSSPOISON
    m.at 50, :STICKYWEB
    m.at 54, :TOXICTHREAD
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BOUNCE, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ELECTROWEB, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GIGADRAIN, :HIDDENPOWER, :HONECLAWS, :INFESTATION, :LEECHLIFE, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROUND, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :THIEF, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_moves     :BATONPASS, :DISABLE, :LUNGE, :MEGAHORN, :NIGHTSLASH, :PSYBEAM, :RAGEPOWDER, :TOXICSPIKES
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.5
  s.weight        8.5
  s.color         :Green
  s.shape         :Insectoid
  s.habitat       :Forest
  s.category      "String Spit"
  s.pokedex_entry "The web it spins can be considered its second nervous system. It is said that a Spinarak determines its prey by the tiny vibrations it feels through the web."
  s.generation    2
  s.evolves_into  :ARIADOS, :Level, 22
end

GameData::Species.define :ARIADOS do |s|
  s.name          "Ariados"
  s.types         :BUG, :POISON
  s.base_stats    hp: 70, attack: 90, defense: 70, speed: 40, sp_atk: 60, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Fast
  s.base_exp      140
  s.catch_rate    90
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SWARM, :INSOMNIA
  s.hidden_abilities :SNIPER
  s.moves do |m|
    m.at 0, :SWORDSDANCE
    m.at 1, :FOCUSENERGY
    m.at 1, :VENOMDRENCH
    m.at 1, :FELLSTINGER
    m.at 1, :BUGBITE
    m.at 1, :POISONSTING
    m.at 1, :STRINGSHOT
    m.at 1, :ABSORB
    m.at 5, :ABSORB
    m.at 8, :INFESTATION
    m.at 12, :SCARYFACE
    m.at 15, :NIGHTSHADE
    m.at 19, :SHADOWSNEAK
    m.at 23, :FURYSWIPES
    m.at 28, :SUCKERPUNCH
    m.at 32, :LEECHLIFE
    m.at 37, :AGILITY
    m.at 41, :PINMISSILE
    m.at 46, :PSYCHIC
    m.at 50, :POISONJAB
    m.at 55, :CROSSPOISON
    m.at 58, :STICKYWEB
    m.at 63, :TOXICTHREAD
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BOUNCE, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ELECTROWEB, :ENDURE, :FACADE, :FLASH, :FOULPLAY, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :INFESTATION, :LEECHLIFE, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROUND, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SLUDGEBOMB, :SMARTSTRIKE, :SNORE, :SOLARBEAM, :STOMPINGTANTRUM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :THIEF, :THROATCHOP, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.1
  s.weight        33.5
  s.color         :Red
  s.shape         :Insectoid
  s.habitat       :Forest
  s.category      "Long Leg"
  s.pokedex_entry "Its feet are tipped with tiny hooked claws that enable it to scuttle on ceilings and vertical walls. It constricts its foe with thin and strong silk webbing."
  s.generation    2
end

GameData::Species.define :YANMA do |s|
  s.name          "Yanma"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 65, attack: 65, defense: 45, speed: 95, sp_atk: 75, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      78
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :SPEEDBOOST, :COMPOUNDEYES
  s.hidden_abilities :FRISK
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :GUST
    m.at 6, :QUICKATTACK
    m.at 11, :DOUBLETEAM
    m.at 14, :AERIALACE
    m.at 17, :DETECT
    m.at 22, :SUPERSONIC
    m.at 27, :UPROAR
    m.at 30, :STRINGSHOT
    m.at 33, :ANCIENTPOWER
    m.at 38, :HYPNOSIS
    m.at 43, :WINGATTACK
    m.at 46, :SCREECH
    m.at 49, :UTURN
    m.at 54, :AIRSLASH
    m.at 57, :BUGBUZZ
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ANCIENTPOWER, :ATTRACT, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :HEADBUTT, :HIDDENPOWER, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STRINGSHOT, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :THIEF, :UPROAR, :UTURN, :TERABLAST
  s.egg_moves     :DOUBLEEDGE, :FEINT, :LEECHLIFE, :REVERSAL, :WHIRLWIND
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        1.2
  s.weight        38.0
  s.color         :Red
  s.shape         :MultiWinged
  s.habitat       :Forest
  s.category      "Clear Wing"
  s.pokedex_entry "It can see 360 degrees without moving its eyes. It is a great flier capable of making sudden stops and turning midair to quickly chase down targeted prey."
  s.generation    2
  s.evolves_into  :YANMEGA, :HasMove, ANCIENTPOWER
  s.wild_item_uncommon :WIDELENS
end

GameData::Species.define :PINECO do |s|
  s.name          "Pineco"
  s.types         :BUG
  s.base_stats    hp: 50, attack: 65, defense: 90, speed: 15, sp_atk: 35, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      58
  s.catch_rate    190
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :STURDY
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :PROTECT
    m.at 6, :SELFDESTRUCT
    m.at 9, :BUGBITE
    m.at 12, :TAKEDOWN
    m.at 17, :RAPIDSPIN
    m.at 20, :AUTOTOMIZE
    m.at 23, :ROLLOUT
    m.at 28, :SPIKES
    m.at 31, :PAYBACK
    m.at 34, :EXPLOSION
    m.at 39, :IRONDEFENSE
    m.at 42, :GYROBALL
    m.at 45, :DOUBLEEDGE
  end
  s.tutor_moves   :ATTRACT, :BODYSLAM, :BUGBITE, :BUGBUZZ, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FRUSTRATION, :GIGADRAIN, :GRAVITY, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :IRONDEFENSE, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :VENOSHOCK, :TERABLAST
  s.egg_moves     :COUNTER, :DOUBLEEDGE, :FLAIL, :PINMISSILE, :POWERTRICK, :REVENGE, :SANDTOMB, :SWIFT, :TOXICSPIKES
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        0.6
  s.weight        7.2
  s.color         :Gray
  s.shape         :Head
  s.habitat       :Forest
  s.category      "Bagworm"
  s.pokedex_entry "A Pineco hangs from a tree branch and waits for prey. While eating, if it is disturbed by someone shaking its tree, it falls on the ground and explodes."
  s.generation    2
  s.evolves_into  :FORRETRESS, :Level, 31
end

GameData::Species.define :FORRETRESS do |s|
  s.name          "Forretress"
  s.types         :BUG, :STEEL
  s.base_stats    hp: 75, attack: 90, defense: 140, speed: 40, sp_atk: 60, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      163
  s.catch_rate    75
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :STURDY
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 0, :AUTOTOMIZE
    m.at 1, :HEAVYSLAM
    m.at 1, :ZAPCANNON
    m.at 1, :MAGNETRISE
    m.at 1, :TOXICSPIKES
    m.at 1, :TACKLE
    m.at 1, :PROTECT
    m.at 1, :SELFDESTRUCT
    m.at 1, :BUGBITE
    m.at 6, :SELFDESTRUCT
    m.at 9, :BUGBITE
    m.at 12, :TAKEDOWN
    m.at 17, :RAPIDSPIN
    m.at 20, :REFLECT
    m.at 23, :ROLLOUT
    m.at 28, :SPIKES
    m.at 32, :PAYBACK
    m.at 36, :EXPLOSION
    m.at 42, :IRONDEFENSE
    m.at 46, :GYROBALL
    m.at 50, :DOUBLEEDGE
    m.at 56, :MAGNETRISE
    m.at 60, :ZAPCANNON
    m.at 64, :HEAVYSLAM
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BLOCK, :BODYSLAM, :BUGBITE, :BUGBUZZ, :BULLDOZE, :CAPTIVATE, :CONFIDE, :COUNTER, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DRILLRUN, :EARTHQUAKE, :ENDURE, :EXPLOSION, :FACADE, :FLASHCANNON, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRAVITY, :GYROBALL, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :LASERFOCUS, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PROTECT, :REFLECT, :REST, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SANDSTORM, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRENGTH, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :VENOSHOCK, :VOLTSWITCH, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        1.2
  s.weight        125.8
  s.color         :Purple
  s.shape         :Head
  s.habitat       :Forest
  s.category      "Bagworm"
  s.pokedex_entry "It keeps itself inside its steel shell. The shell is opened when it is catching prey, but it is so quick that the shell's inside cannot be seen."
  s.generation    2
end

GameData::Species.define :SCIZOR do |s|
  s.name          "Scizor"
  s.types         :BUG, :STEEL
  s.base_stats    hp: 70, attack: 130, defense: 100, speed: 65, sp_atk: 55, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      175
  s.catch_rate    25
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SWARM, :TECHNICIAN
  s.hidden_abilities :LIGHTMETAL
  s.moves do |m|
    m.at 0, :BULLETPUNCH
    m.at 1, :WINGATTACK
    m.at 1, :AGILITY
    m.at 1, :AIRSLASH
    m.at 1, :QUICKATTACK
    m.at 1, :LEER
    m.at 1, :FURYCUTTER
    m.at 1, :FALSESWIPE
    m.at 12, :METALCLAW
    m.at 16, :DOUBLETEAM
    m.at 20, :DOUBLEHIT
    m.at 24, :SLASH
    m.at 28, :FOCUSENERGY
    m.at 32, :IRONDEFENSE
    m.at 36, :IRONHEAD
    m.at 40, :XSCISSOR
    m.at 44, :LASERFOCUS
    m.at 48, :SWORDSDANCE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRSLASH, :ASSURANCE, :ATTRACT, :BATONPASS, :BRICKBREAK, :BRUTALSWING, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :COUNTER, :CROSSPOISON, :CUT, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FALSESWIPE, :FLASHCANNON, :FLING, :FOCUSENERGY, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :IRONHEAD, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :PSYCHOCUT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROCKSMASH, :ROOST, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SILVERWIND, :SLEEPTALK, :SNORE, :STEELBEAM, :STEELWING, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :THIEF, :UTURN, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   6400
  s.height        1.8
  s.weight        118.0
  s.color         :Red
  s.shape         :MultiWinged
  s.habitat       :Grassland
  s.category      "Pincer"
  s.pokedex_entry "A Scizor has a body with the hardness of steel. It is not easily fazed by ordinary sorts of attacks. It flaps its wings to regulate its body temperature."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :SHUCKLE do |s|
  s.name          "Shuckle"
  s.types         :BUG, :ROCK
  s.base_stats    hp: 20, attack: 10, defense: 230, speed: 5, sp_atk: 10, sp_def: 230
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      177
  s.catch_rate    190
  s.happiness     50
  s.evs           defense: 1, sp_defense: 1
  s.abilities     :STURDY, :GLUTTONY
  s.hidden_abilities :CONTRARY
  s.moves do |m|
    m.at 1, :WITHDRAW
    m.at 1, :WRAP
    m.at 5, :ROLLOUT
    m.at 10, :STRUGGLEBUG
    m.at 15, :ROCKTHROW
    m.at 20, :SAFEGUARD
    m.at 25, :REST
    m.at 30, :BUGBITE
    m.at 35, :POWERSPLIT
    m.at 35, :GUARDSPLIT
    m.at 40, :ROCKSLIDE
    m.at 45, :GASTROACID
    m.at 50, :STICKYWEB
    m.at 55, :POWERTRICK
    m.at 60, :STONEEDGE
    m.at 65, :SHELLSMASH
  end
  s.tutor_moves   :AFTERYOU, :ANCIENTPOWER, :ATTRACT, :BIND, :BODYSLAM, :BUGBITE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :DEFENSECURL, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHPOWER, :EARTHQUAKE, :ENCORE, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GASTROACID, :GYROBALL, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :INFESTATION, :IRONDEFENSE, :KNOCKOFF, :METEORBEAM, :MIMIC, :MUDSHOT, :MUDSLAP, :NATURALGIFT, :PROTECT, :REST, :RETURN, :REVERSAL, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROLLOUT, :ROUND, :SAFEGUARD, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SMACKDOWN, :SNORE, :STEALTHROCK, :STEELROLLER, :STONEEDGE, :STRENGTH, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TOXIC, :VENOSHOCK, :TERABLAST
  s.egg_moves     :ACID, :ACUPRESSURE, :COVET, :DEFENSECURL, :FINALGAMBIT, :HELPINGHAND, :INFESTATION, :KNOCKOFF, :MUDSLAP, :ROCKBLAST, :SANDTOMB, :SWEETSCENT, :TOXIC
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        0.6
  s.weight        20.5
  s.color         :Yellow
  s.shape         :Insectoid
  s.habitat       :Mountain
  s.category      "Mold"
  s.pokedex_entry "A Shuckle hides under rocks, keeping its body concealed inside its shell while eating stored berries. The berries mix with its body fluids to become a juice."
  s.generation    2
  s.wild_item_common   :BERRYJUICE
  s.wild_item_uncommon :BERRYJUICE
  s.wild_item_rare     :BERRYJUICE
end

GameData::Species.define :HERACROSS do |s|
  s.name          "Heracross"
  s.types         :BUG, :FIGHTING
  s.base_stats    hp: 80, attack: 125, defense: 75, speed: 85, sp_atk: 40, sp_def: 95
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      175
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SWARM, :GUTS
  s.hidden_abilities :MOXIE
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :LEER
    m.at 5, :FURYATTACK
    m.at 10, :ENDURE
    m.at 15, :AERIALACE
    m.at 20, :HORNATTACK
    m.at 25, :COUNTER
    m.at 30, :BRICKBREAK
    m.at 35, :PINMISSILE
    m.at 40, :THROATCHOP
    m.at 45, :THRASH
    m.at 50, :SWORDSDANCE
    m.at 55, :MEGAHORN
    m.at 60, :CLOSECOMBAT
  end
  s.tutor_moves   :AERIALACE, :ASSURANCE, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BRUTALSWING, :BUGBITE, :BULKUP, :BULLDOZE, :BULLETSEED, :CAPTIVATE, :CLOSECOMBAT, :COACHING, :CONFIDE, :COUNTER, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEADBUTT, :HELPINGHAND, :HIDDENPOWER, :HIGHHORSEPOWER, :HYPERBEAM, :IRONDEFENSE, :KNOCKOFF, :LOWKICK, :MEGAHORN, :MIMIC, :NATURALGIFT, :PINMISSILE, :PROTECT, :RAINDANCE, :REST, :RETALIATE, :RETURN, :REVENGE, :REVERSAL, :ROCKBLAST, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWCLAW, :SLEEPTALK, :SMACKDOWN, :SMARTSTRIKE, :SNORE, :SPIKES, :STONEEDGE, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :THIEF, :THROATCHOP, :VACUUMWAVE, :VENOSHOCK, :WORKUP, :TERABLAST
  s.egg_moves     :DOUBLEEDGE, :FEINT, :FLAIL, :HARDEN, :MEGAHORN, :NIGHTSLASH, :REVENGE, :ROCKBLAST, :SEISMICTOSS, :TAKEDOWN
  s.egg_groups    :Bug
  s.hatch_steps   6400
  s.height        1.5
  s.weight        54.0
  s.color         :Blue
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Single Horn"
  s.pokedex_entry "They gather in forests seeking the sweet sap of trees. It is completely clad in a steel-hard shell. It is proud of its horn, which it uses to fling foes."
  s.generation    2
  s.flags         :HasGenderedSprites
end

GameData::Species.define :WURMPLE do |s|
  s.name          "Wurmple"
  s.types         :BUG
  s.base_stats    hp: 45, attack: 45, defense: 35, speed: 20, sp_atk: 20, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      56
  s.catch_rate    255
  s.happiness     50
  s.evs           hp: 1
  s.abilities     :SHIELDDUST
  s.hidden_abilities :RUNAWAY
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :STRINGSHOT
    m.at 5, :POISONSTING
    m.at 15, :BUGBITE
  end
  s.tutor_moves   :BUGBITE, :ELECTROWEB, :SNORE, :STRINGSHOT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.3
  s.weight        3.6
  s.color         :Red
  s.shape         :Insectoid
  s.habitat       :Forest
  s.category      "Worm"
  s.pokedex_entry "It sticks to tree branches and eats leaves. The thread it spits from its mouth becomes gooey when it touches air and slows the movement of its foes."
  s.generation    3
  s.evolves_into  :SILCOON, :Silcoon, 7
  s.evolves_into  :CASCOON, :Cascoon, 7
  s.wild_item_common   :PECHABERRY
  s.wild_item_uncommon :BRIGHTPOWDER
end

GameData::Species.define :SILCOON do |s|
  s.name          "Silcoon"
  s.types         :BUG
  s.base_stats    hp: 50, attack: 35, defense: 55, speed: 15, sp_atk: 25, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      72
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SHEDSKIN
  s.moves do |m|
    m.at 0, :HARDEN
  end
  s.tutor_moves   :BUGBITE, :ELECTROWEB, :IRONDEFENSE, :STRINGSHOT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.6
  s.weight        10.0
  s.color         :White
  s.shape         :Head
  s.habitat       :Forest
  s.category      "Cocoon"
  s.pokedex_entry "It prepares for evolution using the energy it stored while it was a Wurmple. It keeps watch over the surroundings with its two eyes."
  s.generation    3
  s.evolves_into  :BEAUTIFLY, :Level, 10
end

GameData::Species.define :BEAUTIFLY do |s|
  s.name          "Beautifly"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 60, attack: 70, defense: 50, speed: 65, sp_atk: 100, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      198
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :SWARM
  s.hidden_abilities :RIVALRY
  s.moves do |m|
    m.at 0, :GUST
    m.at 1, :HARDEN
    m.at 1, :TACKLE
    m.at 1, :STRINGSHOT
    m.at 1, :POISONSTING
    m.at 1, :BUGBITE
    m.at 12, :ABSORB
    m.at 15, :STUNSPORE
    m.at 17, :MORNINGSUN
    m.at 20, :AIRCUTTER
    m.at 22, :MEGADRAIN
    m.at 25, :LEECHLIFE
    m.at 27, :ATTRACT
    m.at 30, :WHIRLWIND
    m.at 32, :GIGADRAIN
    m.at 35, :BUGBUZZ
    m.at 37, :PROTECT
    m.at 40, :QUIVERDANCE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :ATTRACT, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :LASERFOCUS, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UTURN, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.0
  s.weight        28.4
  s.color         :Yellow
  s.shape         :MultiWinged
  s.habitat       :Forest
  s.category      "Butterfly"
  s.pokedex_entry "Its colorfully patterned wings are its most prominent feature. It flies through flower-covered fields collecting pollen. It attacks ferociously when angered."
  s.generation    3
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :SHEDSHELL
end

GameData::Species.define :CASCOON do |s|
  s.name          "Cascoon"
  s.types         :BUG
  s.base_stats    hp: 50, attack: 35, defense: 55, speed: 15, sp_atk: 25, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      72
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SHEDSKIN
  s.moves do |m|
    m.at 0, :HARDEN
  end
  s.tutor_moves   :BUGBITE, :ELECTROWEB, :IRONDEFENSE, :STRINGSHOT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.7
  s.weight        11.5
  s.color         :Purple
  s.shape         :Head
  s.habitat       :Forest
  s.category      "Cocoon"
  s.pokedex_entry "To avoid detection by its enemies, it hides motionlessly beneath large leaves and in the gaps of branches. It also attaches dead leaves to its body for camouflage."
  s.generation    3
  s.evolves_into  :DUSTOX, :Level, 10
end

GameData::Species.define :DUSTOX do |s|
  s.name          "Dustox"
  s.types         :BUG, :POISON
  s.base_stats    hp: 60, attack: 50, defense: 70, speed: 65, sp_atk: 50, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      193
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 3
  s.abilities     :SHIELDDUST
  s.hidden_abilities :COMPOUNDEYES
  s.moves do |m|
    m.at 0, :GUST
    m.at 1, :HARDEN
    m.at 1, :TACKLE
    m.at 1, :STRINGSHOT
    m.at 1, :POISONSTING
    m.at 1, :BUGBITE
    m.at 12, :CONFUSION
    m.at 15, :POISONPOWDER
    m.at 17, :MOONLIGHT
    m.at 20, :VENOSHOCK
    m.at 22, :PSYBEAM
    m.at 25, :LEECHLIFE
    m.at 27, :LIGHTSCREEN
    m.at 30, :WHIRLWIND
    m.at 32, :TOXIC
    m.at 35, :BUGBUZZ
    m.at 37, :PROTECT
    m.at 40, :QUIVERDANCE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :ATTRACT, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :LASERFOCUS, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TOXIC, :TWISTER, :UTURN, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.2
  s.weight        31.6
  s.color         :Green
  s.shape         :MultiWinged
  s.habitat       :Forest
  s.category      "Poison Moth"
  s.pokedex_entry "It is a nocturnal Pokémon that flies from fields and mountains to the attraction of streetlights at night. It looses highly toxic powder from its wings."
  s.generation    3
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :SHEDSHELL
end

GameData::Species.define :SURSKIT do |s|
  s.name          "Surskit"
  s.types         :BUG, :WATER
  s.base_stats    hp: 40, attack: 30, defense: 32, speed: 65, sp_atk: 50, sp_def: 52
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      54
  s.catch_rate    200
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :SWIFTSWIM
  s.hidden_abilities :RAINDISH
  s.moves do |m|
    m.at 1, :WATERGUN
    m.at 6, :QUICKATTACK
    m.at 9, :SWEETSCENT
    m.at 14, :SOAK
    m.at 17, :BUBBLEBEAM
    m.at 22, :AGILITY
    m.at 25, :MIST
    m.at 25, :HAZE
    m.at 30, :AQUAJET
    m.at 35, :BATONPASS
    m.at 38, :STICKYWEB
  end
  s.tutor_moves   :ATTRACT, :BLIZZARD, :BUGBITE, :CAPTIVATE, :CONFIDE, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :HIDDENPOWER, :ICEBEAM, :ICYWIND, :INFESTATION, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :THIEF, :WATERPULSE, :TERABLAST
  s.egg_moves     :AQUAJET, :BUGBITE, :FELLSTINGER, :HYDROPUMP, :LUNGE, :MINDREADER, :MUDSHOT, :POWERSPLIT, :PSYBEAM
  s.egg_groups    :Water1, :Bug
  s.hatch_steps   3840
  s.height        0.5
  s.weight        1.7
  s.color         :Blue
  s.shape         :Insectoid
  s.habitat       :WatersEdge
  s.category      "Pond Skater"
  s.pokedex_entry "They gather on puddles after evening downpours, gliding across the surface of water as if sliding. It secretes honey with a sweet aroma from its head."
  s.generation    3
  s.evolves_into  :MASQUERAIN, :Level, 22
  s.wild_item_common   :HONEY
end

GameData::Species.define :MASQUERAIN do |s|
  s.name          "Masquerain"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 70, attack: 60, defense: 62, speed: 80, sp_atk: 100, sp_def: 82
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      159
  s.catch_rate    75
  s.happiness     50
  s.evs           sp_attack: 1, sp_defense: 1
  s.abilities     :INTIMIDATE
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 1, :QUIVERDANCE
    m.at 1, :WHIRLWIND
    m.at 1, :BUGBUZZ
    m.at 1, :BUBBLEBEAM
    m.at 1, :AGILITY
    m.at 1, :MIST
    m.at 1, :HAZE
    m.at 1, :AQUAJET
    m.at 1, :BATONPASS
    m.at 1, :STICKYWEB
    m.at 1, :WATERGUN
    m.at 1, :QUICKATTACK
    m.at 1, :SWEETSCENT
    m.at 6, :QUICKATTACK
    m.at 9, :SWEETSCENT
    m.at 14, :SOAK
    m.at 17, :GUST
    m.at 22, :SCARYFACE
    m.at 22, :AIRCUTTER
    m.at 26, :STUNSPORE
    m.at 32, :SUPERSONIC
    m.at 38, :AIRSLASH
    m.at 42, :BUGBUZZ
    m.at 48, :WHIRLWIND
    m.at 52, :QUIVERDANCE
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ATTRACT, :BLIZZARD, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :INFESTATION, :LIQUIDATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SCALD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UTURN, :WATERPULSE, :TERABLAST
  s.egg_groups    :Water1, :Bug
  s.hatch_steps   3840
  s.height        0.8
  s.weight        3.6
  s.color         :Blue
  s.shape         :MultiWinged
  s.habitat       :WatersEdge
  s.category      "Eyeball"
  s.pokedex_entry "It intimidates foes with the large eyelike patterns on its antennae. Because it can't fly if its wings get wet, it shelters from rain under large trees and eaves."
  s.generation    3
  s.wild_item_uncommon :SILVERPOWDER
end

GameData::Species.define :NINCADA do |s|
  s.name          "Nincada"
  s.types         :BUG, :GROUND
  s.base_stats    hp: 31, attack: 45, defense: 90, speed: 40, sp_atk: 30, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      53
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :COMPOUNDEYES
  s.hidden_abilities :RUNAWAY
  s.moves do |m|
    m.at 1, :SANDATTACK
    m.at 1, :SCRATCH
    m.at 5, :HARDEN
    m.at 10, :FALSESWIPE
    m.at 15, :MUDSLAP
    m.at 21, :ABSORB
    m.at 25, :METALCLAW
    m.at 30, :FURYSWIPES
    m.at 35, :MINDREADER
    m.at 40, :DIG
  end
  s.tutor_moves   :AERIALACE, :BUGBITE, :BUGBUZZ, :CONFIDE, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :ENDURE, :FACADE, :FALSESWIPE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :HIDDENPOWER, :HONECLAWS, :LEECHLIFE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PROTECT, :REST, :RETURN, :ROUND, :SANDSTORM, :SECRETPOWER, :SHADOWBALL, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :XSCISSOR, :TERABLAST
  s.egg_moves     :BUGBITE, :FINALGAMBIT, :FLAIL, :GUST, :NIGHTSLASH
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.5
  s.weight        5.5
  s.color         :Gray
  s.shape         :Insectoid
  s.habitat       :Forest
  s.category      "Trainee"
  s.pokedex_entry "It makes its nest at the roots of a mighty tree. Using its whiskerlike antennae, it probes its surroundings in the pitch-black darkness of soil."
  s.generation    3
  s.evolves_into  :NINJASK, :Ninjask, 20
  s.evolves_into  :SHEDINJA, :Shedinja, 20
  s.wild_item_uncommon :SOFTSAND
end

GameData::Species.define :NINJASK do |s|
  s.name          "Ninjask"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 61, attack: 90, defense: 45, speed: 160, sp_atk: 50, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Erratic
  s.base_exp      160
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :SPEEDBOOST
  s.hidden_abilities :INFILTRATOR
  s.moves do |m|
    m.at 0, :DOUBLETEAM
    m.at 0, :SCREECH
    m.at 0, :FURYCUTTER
    m.at 1, :BATONPASS
    m.at 1, :AERIALACE
    m.at 1, :MUDSLAP
    m.at 1, :METALCLAW
    m.at 1, :DIG
    m.at 1, :SANDATTACK
    m.at 1, :SCRATCH
    m.at 1, :HARDEN
    m.at 1, :FALSESWIPE
    m.at 15, :AGILITY
    m.at 23, :ABSORB
    m.at 29, :BUGBITE
    m.at 36, :FURYSWIPES
    m.at 43, :MINDREADER
    m.at 50, :SLASH
    m.at 57, :SWORDSDANCE
    m.at 64, :XSCISSOR
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :BATONPASS, :BUGBITE, :BUGBUZZ, :CONFIDE, :CUT, :DEFOG, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FALSESWIPE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :LASERFOCUS, :LEECHLIFE, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :REST, :RETURN, :ROOST, :ROUND, :SANDSTORM, :SCREECH, :SECRETPOWER, :SHADOWBALL, :SILVERWIND, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :THIEF, :UPROAR, :UTURN, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.8
  s.weight        12.0
  s.color         :Yellow
  s.shape         :MultiWinged
  s.habitat       :Forest
  s.category      "Ninja"
  s.pokedex_entry "Because it darts about vigorously at high speed, it is very difficult to see. Hearing its distinctive cries for too long induces a headache."
  s.generation    3
end

GameData::Species.define :SHEDINJA do |s|
  s.name          "Shedinja"
  s.types         :BUG, :GHOST
  s.base_stats    hp: 1, attack: 90, defense: 45, speed: 40, sp_atk: 30, sp_def: 30
  s.gender_ratio  :Genderless
  s.growth_rate   :Erratic
  s.base_exp      83
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :WONDERGUARD
  s.moves do |m|
    m.at 1, :SHADOWCLAW
    m.at 1, :GRUDGE
    m.at 1, :MUDSLAP
    m.at 1, :METALCLAW
    m.at 1, :DIG
    m.at 1, :SCRATCH
    m.at 1, :SANDATTACK
    m.at 1, :HARDEN
    m.at 1, :FALSESWIPE
    m.at 15, :CONFUSERAY
    m.at 23, :ABSORB
    m.at 29, :SHADOWSNEAK
    m.at 36, :FURYSWIPES
    m.at 43, :MINDREADER
    m.at 50, :SHADOWBALL
    m.at 57, :SPITE
    m.at 64, :PHANTOMFORCE
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ALLYSWITCH, :BUGBITE, :BUGBUZZ, :CONFIDE, :CUT, :DIG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ENDURE, :FACADE, :FALSESWIPE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGADRAIN, :GIGAIMPACT, :HEX, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :LEECHLIFE, :MIMIC, :MUDSLAP, :NATURALGIFT, :PHANTOMFORCE, :POLTERGEIST, :PROTECT, :REST, :RETURN, :ROUND, :SANDSTORM, :SECRETPOWER, :SHADOWBALL, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPITE, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :TELEKINESIS, :THIEF, :TRICK, :WILLOWISP, :XSCISSOR, :TERABLAST
  s.egg_groups    :Mineral
  s.hatch_steps   3840
  s.height        0.8
  s.weight        1.2
  s.color         :Brown
  s.shape         :HeadBase
  s.habitat       :Forest
  s.category      "Shed"
  s.pokedex_entry "A peculiar Pokémon that floats in air even though its wings remain completely still. The inside of its body is hollow and utterly dark."
  s.generation    3
end

GameData::Species.define :VOLBEAT do |s|
  s.name          "Volbeat"
  s.types         :BUG
  s.base_stats    hp: 65, attack: 73, defense: 75, speed: 85, sp_atk: 47, sp_def: 85
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Erratic
  s.base_exp      151
  s.catch_rate    150
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :ILLUMINATE, :SWARM
  s.hidden_abilities :PRANKSTER
  s.moves do |m|
    m.at 1, :PLAYNICE
    m.at 1, :TACKLE
    m.at 5, :DOUBLETEAM
    m.at 8, :CONFUSERAY
    m.at 12, :QUICKATTACK
    m.at 15, :STRUGGLEBUG
    m.at 19, :MOONLIGHT
    m.at 22, :TAILGLOW
    m.at 26, :ENCORE
    m.at 29, :PROTECT
    m.at 33, :ZENHEADBUTT
    m.at 36, :HELPINGHAND
    m.at 40, :BUGBUZZ
    m.at 43, :PLAYROUGH
    m.at 47, :DOUBLEEDGE
    m.at 50, :INFESTATION
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :ENDURE, :FACADE, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GIGADRAIN, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :INFESTATION, :LIGHTSCREEN, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :TRICK, :UTURN, :WATERPULSE, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :BATONPASS, :ENCORE, :LUNGE, :SEISMICTOSS, :TRICK
  s.egg_groups    :Bug, :Humanlike
  s.hatch_steps   3840
  s.height        0.7
  s.weight        17.7
  s.color         :Gray
  s.shape         :BipedalTail
  s.habitat       :Forest
  s.category      "Firefly"
  s.pokedex_entry "With their taillights lit, Volbeat fly in a swarm, drawing geometric designs in the night sky. They move their nests if their pond water becomes dirty."
  s.generation    3
  s.wild_item_uncommon :BRIGHTPOWDER
end

GameData::Species.define :ILLUMISE do |s|
  s.name          "Illumise"
  s.types         :BUG
  s.base_stats    hp: 65, attack: 47, defense: 75, speed: 85, sp_atk: 73, sp_def: 85
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Fluctuating
  s.base_exp      151
  s.catch_rate    150
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :OBLIVIOUS, :TINTEDLENS
  s.hidden_abilities :PRANKSTER
  s.moves do |m|
    m.at 1, :PLAYNICE
    m.at 1, :TACKLE
    m.at 5, :SWEETSCENT
    m.at 9, :CHARM
    m.at 12, :QUICKATTACK
    m.at 15, :STRUGGLEBUG
    m.at 19, :MOONLIGHT
    m.at 22, :WISH
    m.at 26, :ENCORE
    m.at 29, :FLATTER
    m.at 33, :ZENHEADBUTT
    m.at 36, :HELPINGHAND
    m.at 40, :BUGBUZZ
    m.at 43, :PLAYROUGH
    m.at 47, :COVET
    m.at 50, :INFESTATION
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :ATTRACT, :BODYSLAM, :BRICKBREAK, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :COUNTER, :COVET, :DAZZLINGGLEAM, :DOUBLEEDGE, :DOUBLETEAM, :DYNAMICPUNCH, :ENDURE, :FACADE, :FLASH, :FLING, :FOCUSPUNCH, :FRUSTRATION, :GIGADRAIN, :HELPINGHAND, :HIDDENPOWER, :ICEPUNCH, :INFESTATION, :LIGHTSCREEN, :MEGAKICK, :MEGAPUNCH, :METRONOME, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :POWERUPPUNCH, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SEISMICTOSS, :SHADOWBALL, :SHOCKWAVE, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :THUNDER, :THUNDERBOLT, :THUNDERPUNCH, :THUNDERWAVE, :UTURN, :WATERPULSE, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :AROMATHERAPY, :BATONPASS, :CONFUSERAY, :ENCORE, :FAKETEARS, :GROWTH
  s.egg_groups    :Bug, :Humanlike
  s.hatch_steps   3840
  s.height        0.6
  s.weight        17.7
  s.color         :Purple
  s.shape         :Bipedal
  s.habitat       :Forest
  s.category      "Firefly"
  s.pokedex_entry "A nocturnal Pokémon that becomes active upon nightfall. It leads a Volbeat swarm to draw patterns in the night sky. Over 200 different patterns have been seen."
  s.generation    3
  s.wild_item_uncommon :BRIGHTPOWDER
end

GameData::Species.define :KRICKETOT do |s|
  s.name          "Kricketot"
  s.types         :BUG
  s.base_stats    hp: 37, attack: 25, defense: 41, speed: 25, sp_atk: 25, sp_def: 41
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      39
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :SHEDSKIN
  s.hidden_abilities :RUNAWAY
  s.moves do |m|
    m.at 1, :GROWL
    m.at 1, :POUND
    m.at 6, :STRUGGLEBUG
    m.at 16, :BUGBITE
  end
  s.tutor_moves   :BUGBITE, :ENDEAVOR, :MUDSLAP, :SNORE, :STRINGSHOT, :STRUGGLEBUG, :UPROAR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.3
  s.weight        2.2
  s.color         :Red
  s.shape         :Bipedal
  s.category      "Cricket"
  s.pokedex_entry "It shakes its head back to front, causing its antennae to hit each other and sound like a xylophone."
  s.generation    4
  s.evolves_into  :KRICKETUNE, :Level, 10
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :METRONOME
end

GameData::Species.define :KRICKETUNE do |s|
  s.name          "Kricketune"
  s.types         :BUG
  s.base_stats    hp: 77, attack: 85, defense: 51, speed: 65, sp_atk: 55, sp_def: 51
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      134
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SWARM
  s.hidden_abilities :TECHNICIAN
  s.moves do |m|
    m.at 0, :FURYCUTTER
    m.at 1, :GROWL
    m.at 1, :POUND
    m.at 1, :STRUGGLEBUG
    m.at 1, :BUGBITE
    m.at 14, :ABSORB
    m.at 18, :SING
    m.at 22, :FOCUSENERGY
    m.at 26, :SLASH
    m.at 30, :XSCISSOR
    m.at 34, :SCREECH
    m.at 36, :FELLSTINGER
    m.at 38, :TAUNT
    m.at 42, :NIGHTSLASH
    m.at 44, :STICKYWEB
    m.at 46, :BUGBUZZ
    m.at 50, :PERISHSONG
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BRICKBREAK, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLETEAM, :ECHOEDVOICE, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FLASH, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEALBELL, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :HYPERVOICE, :INFESTATION, :KNOCKOFF, :LASERFOCUS, :LEECHLIFE, :MIMIC, :MUDSLAP, :NATURALGIFT, :POWERUPPUNCH, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROCKSMASH, :ROUND, :SECRETPOWER, :SILVERWIND, :SLEEPTALK, :SNORE, :STRENGTH, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :TAUNT, :THROATCHOP, :UPROAR, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.0
  s.weight        25.5
  s.color         :Red
  s.shape         :MultiWinged
  s.category      "Cricket"
  s.pokedex_entry "It crosses its knifelike arms in front of its chest when it cries. It can compose melodies ad lib."
  s.generation    4
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :METRONOME
end

GameData::Species.define :BURMY do |s|
  s.name          "Burmy"
  s.types         :BUG
  s.base_stats    hp: 40, attack: 29, defense: 45, speed: 36, sp_atk: 29, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      45
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :SHEDSKIN
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 1, :PROTECT
    m.at 10, :TACKLE
    m.at 15, :BUGBITE
    m.at 20, :STRINGSHOT
  end
  s.tutor_moves   :BUGBITE, :ELECTROWEB, :HIDDENPOWER, :PROTECT, :SNORE, :STRINGSHOT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.2
  s.weight        3.4
  s.color         :Green
  s.shape         :HeadBase
  s.category      "Bagworm"
  s.pokedex_entry "To shelter itself from cold, wintry winds, it covers itself with a cloak made of twigs and leaves."
  s.generation    4
  s.evolves_into  :WORMADAM, :LevelFemale, 20
  s.evolves_into  :MOTHIM, :LevelMale, 20
  s.flags         :InheritFormFromMother
end

GameData::Species.define :WORMADAM do |s|
  s.name          "Wormadam"
  s.types         :BUG, :GRASS
  s.base_stats    hp: 60, attack: 59, defense: 85, speed: 36, sp_atk: 79, sp_def: 105
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Medium
  s.base_exp      148
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :ANTICIPATION
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 0, :QUIVERDANCE
    m.at 1, :SUCKERPUNCH
    m.at 1, :TACKLE
    m.at 1, :PROTECT
    m.at 1, :BUGBITE
    m.at 10, :PROTECT
    m.at 15, :BUGBITE
    m.at 20, :STRINGSHOT
    m.at 23, :CONFUSION
    m.at 26, :RAZORLEAF
    m.at 29, :GROWTH
    m.at 32, :PSYBEAM
    m.at 35, :INFESTATION
    m.at 38, :FLAIL
    m.at 41, :ATTRACT
    m.at 44, :PSYCHIC
    m.at 47, :LEAFSTORM
    m.at 50, :BUGBUZZ
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BUGBITE, :BUGBUZZ, :BULLETSEED, :CAPTIVATE, :CONFIDE, :DIG, :DOUBLETEAM, :DREAMEATER, :ELECTROWEB, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHADOWBALL, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUCKERPUNCH, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TELEKINESIS, :THIEF, :UPROAR, :VENOSHOCK, :WORRYSEED, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.5
  s.weight        6.5
  s.color         :Green
  s.shape         :HeadBase
  s.category      "Bagworm"
  s.pokedex_entry "When Burmy evolved, its cloak became a part of this Pokémon's body. The cloak is never shed."
  s.generation    4
  s.flags         :InheritFormFromMother
  s.wild_item_uncommon :SILVERPOWDER
end

GameData::Species.define :MOTHIM do |s|
  s.name          "Mothim"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 70, attack: 94, defense: 50, speed: 66, sp_atk: 94, sp_def: 50
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Medium
  s.base_exp      148
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1, sp_attack: 1
  s.abilities     :SWARM
  s.hidden_abilities :TINTEDLENS
  s.moves do |m|
    m.at 0, :QUIVERDANCE
    m.at 1, :TACKLE
    m.at 1, :PROTECT
    m.at 1, :BUGBITE
    m.at 10, :PROTECT
    m.at 15, :BUGBITE
    m.at 20, :STRINGSHOT
    m.at 23, :CONFUSION
    m.at 26, :GUST
    m.at 29, :POISONPOWDER
    m.at 32, :PSYBEAM
    m.at 35, :ROOST
    m.at 38, :STRUGGLEBUG
    m.at 41, :AIRSLASH
    m.at 44, :PSYCHIC
    m.at 47, :LUNGE
    m.at 50, :BUGBUZZ
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :ATTRACT, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :DREAMEATER, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SILVERWIND, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TWISTER, :UTURN, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.9
  s.weight        23.3
  s.color         :Yellow
  s.shape         :MultiWinged
  s.category      "Moth"
  s.pokedex_entry "It loves the honey of flowers and steals honey collected by Combee."
  s.generation    4
  s.flags         :DefaultForm_0
  s.wild_item_uncommon :SILVERPOWDER
end

GameData::Species.define :COMBEE do |s|
  s.name          "Combee"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 30, attack: 30, defense: 42, speed: 70, sp_atk: 30, sp_def: 42
  s.gender_ratio  :FemaleOneEighth
  s.growth_rate   :Parabolic
  s.base_exp      49
  s.catch_rate    120
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :HONEYGATHER
  s.hidden_abilities :HUSTLE
  s.moves do |m|
    m.at 1, :SWEETSCENT
    m.at 1, :GUST
    m.at 1, :STRUGGLEBUG
    m.at 1, :BUGBITE
  end
  s.tutor_moves   :AIRCUTTER, :BUGBITE, :BUGBUZZ, :DUALWINGBEAT, :ENDEAVOR, :MUDSLAP, :OMINOUSWIND, :SNORE, :STRINGSHOT, :TAILWIND, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.3
  s.weight        5.5
  s.color         :Yellow
  s.shape         :MultiBody
  s.category      "Tiny Bee"
  s.pokedex_entry "A Pokémon formed by three others. It busily carries sweet floral honey to Vespiquen."
  s.generation    4
  s.evolves_into  :VESPIQUEN, :LevelFemale, 21
  s.flags         :HasGenderedSprites
  s.wild_item_uncommon :HONEY
end

GameData::Species.define :VESPIQUEN do |s|
  s.name          "Vespiquen"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 70, attack: 80, defense: 102, speed: 40, sp_atk: 80, sp_def: 102
  s.gender_ratio  :AlwaysFemale
  s.growth_rate   :Parabolic
  s.base_exp      166
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 1, sp_defense: 1
  s.abilities     :PRESSURE
  s.hidden_abilities :UNNERVE
  s.moves do |m|
    m.at 0, :SLASH
    m.at 1, :STRUGGLEBUG
    m.at 1, :BUGBITE
    m.at 1, :SWEETSCENT
    m.at 1, :GUST
    m.at 1, :POISONSTING
    m.at 1, :CONFUSERAY
    m.at 4, :FURYCUTTER
    m.at 8, :AROMATICMIST
    m.at 12, :FELLSTINGER
    m.at 16, :FURYSWIPES
    m.at 20, :SWAGGER
    m.at 24, :AROMATHERAPY
    m.at 28, :AIRSLASH
    m.at 32, :POWERGEM
    m.at 36, :TOXIC
    m.at 40, :ATTACKORDER
    m.at 40, :DEFENDORDER
    m.at 44, :DESTINYBOND
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AIRCUTTER, :AIRSLASH, :ASSURANCE, :ATTRACT, :BEATUP, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :CROSSPOISON, :CUT, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ENDEAVOR, :ENDURE, :FACADE, :FLASH, :FLING, :FRUSTRATION, :FURYCUTTER, :GIGAIMPACT, :HEX, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :INFESTATION, :LASERFOCUS, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PINMISSILE, :POWERGEM, :PROTECT, :QUASH, :RAINDANCE, :REST, :RETURN, :REVENGE, :REVERSAL, :ROOST, :ROUND, :SCREECH, :SECRETPOWER, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :THIEF, :TOXIC, :TOXICSPIKES, :UPROAR, :UTURN, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.2
  s.weight        38.5
  s.color         :Yellow
  s.shape         :MultiWinged
  s.category      "Beehive"
  s.pokedex_entry "Its abdomen is a honeycomb for grubs. It raises its grubs on honey collected by Combee."
  s.generation    4
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :YANMEGA do |s|
  s.name          "Yanmega"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 86, attack: 76, defense: 86, speed: 95, sp_atk: 116, sp_def: 56
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      180
  s.catch_rate    30
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SPEEDBOOST, :TINTEDLENS
  s.hidden_abilities :FRISK
  s.moves do |m|
    m.at 1, :BUGBUZZ
    m.at 1, :AIRSLASH
    m.at 1, :NIGHTSLASH
    m.at 1, :BUGBITE
    m.at 1, :HYPNOSIS
    m.at 1, :WINGATTACK
    m.at 1, :TACKLE
    m.at 1, :GUST
    m.at 1, :QUICKATTACK
    m.at 1, :DOUBLETEAM
    m.at 6, :QUICKATTACK
    m.at 11, :DOUBLETEAM
    m.at 14, :AERIALACE
    m.at 17, :DETECT
    m.at 22, :SUPERSONIC
    m.at 27, :UPROAR
    m.at 30, :STRINGSHOT
    m.at 33, :ANCIENTPOWER
    m.at 38, :FEINT
    m.at 43, :SLASH
    m.at 46, :SCREECH
    m.at 49, :UTURN
    m.at 54, :AIRSLASH
    m.at 57, :BUGBUZZ
  end
  s.tutor_moves   :AERIALACE, :AIRCUTTER, :ANCIENTPOWER, :ATTRACT, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLEEDGE, :DOUBLETEAM, :DREAMEATER, :ENDURE, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HEADBUTT, :HIDDENPOWER, :HYPERBEAM, :LASERFOCUS, :LEECHLIFE, :MIMIC, :MUDSLAP, :NATURALGIFT, :OMINOUSWIND, :PROTECT, :PSYCHIC, :PSYCHUP, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SHADOWBALL, :SIGNALBEAM, :SILVERWIND, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STRINGSHOT, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAILWIND, :THIEF, :UPROAR, :UTURN, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        1.9
  s.weight        51.5
  s.color         :Green
  s.shape         :MultiWinged
  s.category      "Ogre Darner"
  s.pokedex_entry "By churning its wings, it creates shock waves that inflict critical internal injuries to foes."
  s.generation    4
  s.wild_item_uncommon :WIDELENS
end

GameData::Species.define :SEWADDLE do |s|
  s.name          "Sewaddle"
  s.types         :BUG, :GRASS
  s.base_stats    hp: 45, attack: 53, defense: 70, speed: 42, sp_atk: 40, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      62
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :SWARM, :CHLOROPHYLL
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :STRINGSHOT
    m.at 8, :BUGBITE
    m.at 15, :RAZORLEAF
    m.at 22, :STRUGGLEBUG
    m.at 29, :ENDURE
    m.at 31, :STICKYWEB
    m.at 36, :BUGBUZZ
    m.at 43, :FLAIL
  end
  s.tutor_moves   :ATTRACT, :BUGBITE, :CALMMIND, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLETEAM, :DREAMEATER, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :HIDDENPOWER, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PROTECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TOXIC, :WORRYSEED, :TERABLAST
  s.egg_moves     :AGILITY, :AIRSLASH, :BATONPASS, :CAMOUFLAGE, :GRASSYTERRAIN, :MEFIRST, :MINDREADER, :RAZORWIND, :SCREECH, :SILVERWIND
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.3
  s.weight        2.5
  s.color         :Yellow
  s.shape         :Insectoid
  s.category      "Sewing"
  s.pokedex_entry "This Pokémon makes clothes for itself. It chews up leaves and sews them with sticky thread extruded from its mouth."
  s.generation    5
  s.evolves_into  :SWADLOON, :Level, 20
  s.wild_item_uncommon :MENTALHERB
end

GameData::Species.define :SWADLOON do |s|
  s.name          "Swadloon"
  s.types         :BUG, :GRASS
  s.base_stats    hp: 55, attack: 63, defense: 90, speed: 42, sp_atk: 50, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      133
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :LEAFGUARD, :CHLOROPHYLL
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 0, :PROTECT
    m.at 1, :GRASSWHISTLE
    m.at 1, :TACKLE
    m.at 1, :STRINGSHOT
    m.at 1, :BUGBITE
    m.at 1, :RAZORLEAF
  end
  s.tutor_moves   :ATTRACT, :BUGBITE, :CALMMIND, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLETEAM, :DREAMEATER, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GRASSKNOT, :HIDDENPOWER, :IRONDEFENSE, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :PROTECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SYNTHESIS, :TOXIC, :WORRYSEED, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.5
  s.weight        7.3
  s.color         :Green
  s.shape         :HeadArms
  s.category      "Leaf-Wrapped"
  s.pokedex_entry "It protects itself from the cold by wrapping up in leaves. It stays on the move, eating leaves in forests."
  s.generation    5
  s.evolves_into  :LEAVANNY, :Happiness
  s.wild_item_uncommon :MENTALHERB
end

GameData::Species.define :LEAVANNY do |s|
  s.name          "Leavanny"
  s.types         :BUG, :GRASS
  s.base_stats    hp: 75, attack: 103, defense: 80, speed: 92, sp_atk: 70, sp_def: 80
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      250
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 3
  s.abilities     :SWARM, :CHLOROPHYLL
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 0, :SLASH
    m.at 1, :FALSESWIPE
    m.at 1, :TACKLE
    m.at 1, :STRINGSHOT
    m.at 1, :BUGBITE
    m.at 1, :RAZORLEAF
    m.at 8, :BUGBITE
    m.at 15, :RAZORLEAF
    m.at 22, :STRUGGLEBUG
    m.at 29, :FELLSTINGER
    m.at 32, :HELPINGHAND
    m.at 36, :LEAFBLADE
    m.at 39, :XSCISSOR
    m.at 43, :ENTRAINMENT
    m.at 46, :SWORDSDANCE
    m.at 50, :LEAFSTORM
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BUGBITE, :CALMMIND, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLETEAM, :DREAMEATER, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRASSKNOT, :HEALBELL, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONDEFENSE, :KNOCKOFF, :LASERFOCUS, :LIGHTSCREEN, :MAGICCOAT, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PAYBACK, :POISONJAB, :PROTECT, :REFLECT, :REST, :RETALIATE, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SEEDBOMB, :SHADOWCLAW, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELWING, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWORDSDANCE, :SYNTHESIS, :THROATCHOP, :TOXIC, :WORRYSEED, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.2
  s.weight        20.5
  s.color         :Yellow
  s.shape         :Bipedal
  s.category      "Nurturing"
  s.pokedex_entry "It keeps its eggs warm with heat from fermenting leaves. It also uses leaves to make warm wrappings for Sewaddle."
  s.generation    5
  s.wild_item_uncommon :MENTALHERB
end

GameData::Species.define :VENIPEDE do |s|
  s.name          "Venipede"
  s.types         :BUG, :POISON
  s.base_stats    hp: 30, attack: 45, defense: 59, speed: 57, sp_atk: 30, sp_def: 39
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      52
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :POISONPOINT, :SWARM
  s.hidden_abilities :SPEEDBOOST
  s.moves do |m|
    m.at 1, :POISONSTING
    m.at 1, :DEFENSECURL
    m.at 4, :ROLLOUT
    m.at 8, :PROTECT
    m.at 12, :POISONTAIL
    m.at 16, :SCREECH
    m.at 20, :BUGBITE
    m.at 24, :VENOSHOCK
    m.at 28, :TAKEDOWN
    m.at 32, :AGILITY
    m.at 36, :TOXIC
    m.at 40, :VENOMDRENCH
    m.at 44, :DOUBLEEDGE
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BUGBITE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :GYROBALL, :HEX, :HIDDENPOWER, :INFESTATION, :IRONDEFENSE, :MIMIC, :NATURALGIFT, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKSMASH, :ROUND, :SCREECH, :SECRETPOWER, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SPIKES, :STEELROLLER, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :TERABLAST
  s.egg_moves     :BITE, :FURYCUTTER
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.4
  s.weight        5.3
  s.color         :Red
  s.shape         :Insectoid
  s.category      "Centipede"
  s.pokedex_entry "It discovers what is going on around it by using the feelers on its head and tail. It is brutally aggresive."
  s.generation    5
  s.evolves_into  :WHIRLIPEDE, :Level, 22
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :WHIRLIPEDE do |s|
  s.name          "Whirlipede"
  s.types         :BUG, :POISON
  s.base_stats    hp: 40, attack: 55, defense: 99, speed: 47, sp_atk: 40, sp_def: 79
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      126
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :POISONPOINT, :SWARM
  s.hidden_abilities :SPEEDBOOST
  s.moves do |m|
    m.at 0, :IRONDEFENSE
    m.at 1, :POISONSTING
    m.at 1, :DEFENSECURL
    m.at 1, :ROLLOUT
    m.at 1, :PROTECT
    m.at 12, :POISONTAIL
    m.at 16, :SCREECH
    m.at 20, :BUGBITE
    m.at 26, :VENOSHOCK
    m.at 32, :TAKEDOWN
    m.at 38, :AGILITY
    m.at 44, :TOXIC
    m.at 50, :VENOMDRENCH
    m.at 56, :DOUBLEEDGE
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BUGBITE, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :GYROBALL, :HEX, :HIDDENPOWER, :INFESTATION, :IRONDEFENSE, :MIMIC, :NATURALGIFT, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKSMASH, :ROUND, :SCREECH, :SECRETPOWER, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SOLARBEAM, :SPIKES, :STEELROLLER, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.2
  s.weight        58.5
  s.color         :Gray
  s.shape         :Head
  s.category      "Curlipede"
  s.pokedex_entry "It is usually motionless, but when attacked, it rotates at high speed and then crashes into its opponent."
  s.generation    5
  s.evolves_into  :SCOLIPEDE, :Level, 30
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :SCOLIPEDE do |s|
  s.name          "Scolipede"
  s.types         :BUG, :POISON
  s.base_stats    hp: 60, attack: 100, defense: 89, speed: 112, sp_atk: 55, sp_def: 69
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      243
  s.catch_rate    45
  s.happiness     50
  s.evs           speed: 3
  s.abilities     :POISONPOINT, :SWARM
  s.hidden_abilities :SPEEDBOOST
  s.moves do |m|
    m.at 1, :IRONDEFENSE
    m.at 1, :BATONPASS
    m.at 1, :POISONSTING
    m.at 1, :DEFENSECURL
    m.at 1, :ROLLOUT
    m.at 1, :PROTECT
    m.at 12, :POISONTAIL
    m.at 16, :SCREECH
    m.at 20, :BUGBITE
    m.at 26, :VENOSHOCK
    m.at 34, :TAKEDOWN
    m.at 42, :AGILITY
    m.at 50, :TOXIC
    m.at 58, :VENOMDRENCH
    m.at 66, :DOUBLEEDGE
    m.at 74, :MEGAHORN
  end
  s.tutor_moves   :AGILITY, :AQUATAIL, :ASSURANCE, :ATTRACT, :BATONPASS, :BUGBITE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CROSSPOISON, :CUT, :DIG, :DOUBLETEAM, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HEX, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :IRONDEFENSE, :IRONTAIL, :MEGAHORN, :MIMIC, :NATURALGIFT, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SCREECH, :SECRETPOWER, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SMARTSTRIKE, :SNATCH, :SNORE, :SOLARBEAM, :SPIKES, :STEELROLLER, :STOMPINGTANTRUM, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SUPERPOWER, :SWAGGER, :SWORDSDANCE, :THROATCHOP, :TOXIC, :TOXICSPIKES, :VENOMDRENCH, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        2.5
  s.weight        200.5
  s.color         :Red
  s.shape         :Insectoid
  s.category      "Megapede"
  s.pokedex_entry "Highly aggressive, it uses the claws near its neck to dig into its opponents and poison them."
  s.generation    5
  s.wild_item_uncommon :POISONBARB
end

GameData::Species.define :DWEBBLE do |s|
  s.name          "Dwebble"
  s.types         :BUG, :ROCK
  s.base_stats    hp: 50, attack: 65, defense: 85, speed: 55, sp_atk: 35, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      65
  s.catch_rate    190
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :STURDY, :SHELLARMOR
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 1, :FURYCUTTER
    m.at 1, :SANDATTACK
    m.at 4, :WITHDRAW
    m.at 8, :SMACKDOWN
    m.at 12, :BUGBITE
    m.at 16, :FLAIL
    m.at 20, :SLASH
    m.at 24, :ROCKSLIDE
    m.at 28, :STEALTHROCK
    m.at 32, :ROCKBLAST
    m.at 36, :XSCISSOR
    m.at 40, :ROCKPOLISH
    m.at 44, :SHELLSMASH
    m.at 48, :ROCKWRECKER
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BLOCK, :BUGBITE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :HONECLAWS, :IRONDEFENSE, :KNOCKOFF, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :SPIKES, :STEALTHROCK, :STONEEDGE, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_moves     :BLOCK, :COUNTER, :CURSE, :KNOCKOFF, :NIGHTSLASH, :WIDEGUARD
  s.egg_groups    :Bug, :Mineral
  s.hatch_steps   5120
  s.height        0.3
  s.weight        14.5
  s.color         :Red
  s.shape         :Insectoid
  s.category      "Rock Inn"
  s.pokedex_entry "It makes a hole in a suitable rock. If that rock breaks, the Pokémon remains agitated until it locates a replacement."
  s.generation    5
  s.evolves_into  :CRUSTLE, :Level, 34
  s.wild_item_uncommon :HARDSTONE
end

GameData::Species.define :CRUSTLE do |s|
  s.name          "Crustle"
  s.types         :BUG, :ROCK
  s.base_stats    hp: 70, attack: 105, defense: 125, speed: 45, sp_atk: 65, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      170
  s.catch_rate    75
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :STURDY, :SHELLARMOR
  s.hidden_abilities :WEAKARMOR
  s.moves do |m|
    m.at 1, :FURYCUTTER
    m.at 1, :SANDATTACK
    m.at 1, :WITHDRAW
    m.at 1, :SMACKDOWN
    m.at 12, :BUGBITE
    m.at 16, :FLAIL
    m.at 20, :SLASH
    m.at 24, :ROCKSLIDE
    m.at 28, :STEALTHROCK
    m.at 32, :ROCKBLAST
    m.at 38, :XSCISSOR
    m.at 44, :ROCKPOLISH
    m.at 50, :SHELLSMASH
    m.at 56, :ROCKWRECKER
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BLOCK, :BODYPRESS, :BUGBITE, :BULLDOZE, :CAPTIVATE, :CONFIDE, :CUT, :DIG, :DOUBLETEAM, :EARTHQUAKE, :ENDURE, :FACADE, :FRUSTRATION, :GIGAIMPACT, :HEAVYSLAM, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :IRONDEFENSE, :KNOCKOFF, :METEORBEAM, :MIMIC, :NATURALGIFT, :NATUREPOWER, :POISONJAB, :PROTECT, :REST, :RETURN, :ROCKBLAST, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SANDTOMB, :SECRETPOWER, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SMACKDOWN, :SNORE, :SOLARBEAM, :SOLARBLADE, :SPIKES, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug, :Mineral
  s.hatch_steps   5120
  s.height        1.4
  s.weight        200.0
  s.color         :Red
  s.shape         :Insectoid
  s.category      "Stone Home"
  s.pokedex_entry "It possesses legs of enormous strength, enabling it to carry heavy slabs for many days, even when crossing arid land."
  s.generation    5
  s.wild_item_uncommon :HARDSTONE
end

GameData::Species.define :KARRABLAST do |s|
  s.name          "Karrablast"
  s.types         :BUG
  s.base_stats    hp: 50, attack: 75, defense: 45, speed: 60, sp_atk: 40, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      63
  s.catch_rate    200
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :SWARM, :SHEDSKIN
  s.hidden_abilities :NOGUARD
  s.moves do |m|
    m.at 1, :PECK
    m.at 1, :LEER
    m.at 4, :FURYCUTTER
    m.at 8, :ENDURE
    m.at 12, :FALSESWIPE
    m.at 16, :ACIDSPRAY
    m.at 20, :HEADBUTT
    m.at 24, :FLAIL
    m.at 28, :SCARYFACE
    m.at 32, :XSCISSOR
    m.at 36, :SWORDSDANCE
    m.at 40, :TAKEDOWN
    m.at 44, :BUGBUZZ
    m.at 48, :DOUBLEEDGE
  end
  s.tutor_moves   :AERIALACE, :ATTRACT, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :CUT, :DOUBLETEAM, :DRILLRUN, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FRUSTRATION, :GIGADRAIN, :HIDDENPOWER, :INFESTATION, :IRONDEFENSE, :KNOCKOFF, :MEGAHORN, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :STRUGGLEBUG, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_moves     :BUGBITE, :COUNTER, :KNOCKOFF, :NIGHTSLASH, :SLASH
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.5
  s.weight        5.9
  s.color         :Blue
  s.shape         :Bipedal
  s.category      "Clamping"
  s.pokedex_entry "When they feel threatened, they spit an acidic liquid to drive attackers away. This Pokémon targets Shelmet."
  s.generation    5
  s.evolves_into  :ESCAVALIER, :TradeSpecies, SHELMET
end

GameData::Species.define :ESCAVALIER do |s|
  s.name          "Escavalier"
  s.types         :BUG, :STEEL
  s.base_stats    hp: 70, attack: 135, defense: 105, speed: 20, sp_atk: 60, sp_def: 105
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    75
  s.happiness     50
  s.evs           attack: 2
  s.abilities     :SWARM, :SHELLARMOR
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 1, :FELLSTINGER
    m.at 1, :ENDURE
    m.at 1, :FLAIL
    m.at 1, :SCARYFACE
    m.at 1, :TAKEDOWN
    m.at 1, :DOUBLEEDGE
    m.at 1, :PECK
    m.at 1, :LEER
    m.at 1, :FURYCUTTER
    m.at 1, :QUICKGUARD
    m.at 12, :FALSESWIPE
    m.at 16, :ACIDSPRAY
    m.at 20, :HEADBUTT
    m.at 24, :REVERSAL
    m.at 28, :IRONDEFENSE
    m.at 32, :XSCISSOR
    m.at 36, :SWORDSDANCE
    m.at 40, :IRONHEAD
    m.at 44, :BUGBUZZ
    m.at 48, :GIGAIMPACT
    m.at 52, :METALBURST
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ATTRACT, :BRUTALSWING, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :CUT, :DOUBLETEAM, :DRILLRUN, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FALSESWIPE, :FOCUSBLAST, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :IRONDEFENSE, :IRONHEAD, :KNOCKOFF, :LASERFOCUS, :MEGAHORN, :MIMIC, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :REVENGE, :REVERSAL, :ROCKSMASH, :ROUND, :SCARYFACE, :SCREECH, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SMARTSTRIKE, :SNORE, :STEELBEAM, :STRUGGLEBUG, :SUBSTITUTE, :SWAGGER, :SWORDSDANCE, :TAUNT, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.0
  s.weight        33.0
  s.color         :Gray
  s.shape         :HeadArms
  s.category      "Cavalry"
  s.pokedex_entry "These Pokémon evolve by wearing the shell covering of a Shelmet. The steel armor protects their whole body."
  s.generation    5
end

GameData::Species.define :JOLTIK do |s|
  s.name          "Joltik"
  s.types         :BUG, :ELECTRIC
  s.base_stats    hp: 50, attack: 47, defense: 50, speed: 65, sp_atk: 57, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      64
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :COMPOUNDEYES, :UNNERVE
  s.hidden_abilities :SWARM
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :FURYCUTTER
    m.at 4, :ELECTROWEB
    m.at 8, :BUGBITE
    m.at 12, :STRINGSHOT
    m.at 16, :THUNDERWAVE
    m.at 20, :ELECTROBALL
    m.at 24, :AGILITY
    m.at 28, :SUCKERPUNCH
    m.at 32, :SLASH
    m.at 37, :DISCHARGE
    m.at 40, :SCREECH
    m.at 44, :GASTROACID
    m.at 48, :BUGBUZZ
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BOUNCE, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CROSSPOISON, :CUT, :DOUBLETEAM, :ELECTROBALL, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :HIDDENPOWER, :INFESTATION, :LEECHLIFE, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PINMISSILE, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SPEEDSWAP, :STRUGGLEBUG, :SUBSTITUTE, :SWAGGER, :SWIFT, :THIEF, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WILDCHARGE, :XSCISSOR, :TERABLAST
  s.egg_moves     :DOUBLETEAM, :INFESTATION, :LUNGE, :POISONSTING, :STRUGGLEBUG
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        0.1
  s.weight        0.6
  s.color         :Yellow
  s.shape         :Insectoid
  s.category      "Attaching"
  s.pokedex_entry "They attach themselves to large-bodied Pokémon and absorb static electricity, which they store in an electric pouch."
  s.generation    5
  s.evolves_into  :GALVANTULA, :Level, 36
end

GameData::Species.define :GALVANTULA do |s|
  s.name          "Galvantula"
  s.types         :BUG, :ELECTRIC
  s.base_stats    hp: 70, attack: 77, defense: 60, speed: 108, sp_atk: 97, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      165
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :COMPOUNDEYES, :UNNERVE
  s.hidden_abilities :SWARM
  s.moves do |m|
    m.at 0, :STICKYWEB
    m.at 1, :ABSORB
    m.at 1, :FURYCUTTER
    m.at 1, :ELECTROWEB
    m.at 1, :BUGBITE
    m.at 12, :STRINGSHOT
    m.at 16, :THUNDERWAVE
    m.at 20, :ELECTROBALL
    m.at 24, :AGILITY
    m.at 28, :SUCKERPUNCH
    m.at 32, :SLASH
    m.at 39, :DISCHARGE
    m.at 44, :SCREECH
    m.at 50, :GASTROACID
    m.at 56, :BUGBUZZ
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BOUNCE, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CROSSPOISON, :CUT, :DOUBLETEAM, :ELECTROBALL, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :LEECHLIFE, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PINMISSILE, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SPEEDSWAP, :STRUGGLEBUG, :SUBSTITUTE, :SWAGGER, :SWIFT, :THIEF, :THROATCHOP, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WILDCHARGE, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        0.8
  s.weight        14.3
  s.color         :Yellow
  s.shape         :Insectoid
  s.category      "EleSpider"
  s.pokedex_entry "They employ an electrically charged web to trap their prey. While it is immobilized by shock, they leisurely consume it."
  s.generation    5
end

GameData::Species.define :SHELMET do |s|
  s.name          "Shelmet"
  s.types         :BUG
  s.base_stats    hp: 50, attack: 40, defense: 85, speed: 25, sp_atk: 40, sp_def: 65
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    200
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :HYDRATION, :SHELLARMOR
  s.hidden_abilities :OVERCOAT
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :PROTECT
    m.at 4, :ACID
    m.at 8, :CURSE
    m.at 12, :MEGADRAIN
    m.at 16, :STRUGGLEBUG
    m.at 20, :YAWN
    m.at 24, :ACIDARMOR
    m.at 28, :GIGADRAIN
    m.at 32, :GUARDSWAP
    m.at 36, :BODYSLAM
    m.at 40, :RECOVER
    m.at 44, :BUGBUZZ
    m.at 48, :FINALGAMBIT
  end
  s.tutor_moves   :ATTRACT, :BATONPASS, :BODYSLAM, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GUARDSWAP, :HIDDENPOWER, :INFESTATION, :LEECHLIFE, :MIMIC, :MUDSHOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SECRETPOWER, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SPIKES, :STRUGGLEBUG, :SUBSTITUTE, :SWAGGER, :TOXIC, :TOXICSPIKES, :VENOSHOCK, :TERABLAST
  s.egg_moves     :DOUBLEEDGE, :FEINT, :GUARDSPLIT, :MINDREADER
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.4
  s.weight        7.7
  s.color         :Red
  s.shape         :Head
  s.category      "Snail"
  s.pokedex_entry "It evolves when bathed in an electric-like energy along with Karrablast. The reason is still unknown."
  s.generation    5
  s.evolves_into  :ACCELGOR, :TradeSpecies, KARRABLAST
end

GameData::Species.define :ACCELGOR do |s|
  s.name          "Accelgor"
  s.types         :BUG
  s.base_stats    hp: 80, attack: 70, defense: 40, speed: 145, sp_atk: 100, sp_def: 60
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      173
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :HYDRATION, :STICKYHOLD
  s.hidden_abilities :UNBURDEN
  s.moves do |m|
    m.at 1, :WATERSHURIKEN
    m.at 1, :ACID
    m.at 1, :CURSE
    m.at 1, :YAWN
    m.at 1, :ACIDARMOR
    m.at 1, :GUARDSWAP
    m.at 1, :BODYSLAM
    m.at 1, :ABSORB
    m.at 1, :DOUBLETEAM
    m.at 1, :ACIDSPRAY
    m.at 1, :QUICKATTACK
    m.at 12, :MEGADRAIN
    m.at 16, :STRUGGLEBUG
    m.at 20, :SWIFT
    m.at 24, :AGILITY
    m.at 28, :GIGADRAIN
    m.at 32, :POWERSWAP
    m.at 36, :UTURN
    m.at 40, :RECOVER
    m.at 44, :BUGBUZZ
    m.at 48, :FINALGAMBIT
    m.at 52, :TOXIC
  end
  s.tutor_moves   :AGILITY, :ATTRACT, :BATONPASS, :BODYSLAM, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :DRAINPUNCH, :ENCORE, :ENDURE, :ENERGYBALL, :FACADE, :FOCUSBLAST, :FRUSTRATION, :GASTROACID, :GIGADRAIN, :GIGAIMPACT, :GUARDSWAP, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :KNOCKOFF, :LASERFOCUS, :LEECHLIFE, :MIMIC, :MUDSHOT, :NATURALGIFT, :POWERSWAP, :PROTECT, :RAINDANCE, :REST, :RETURN, :REVERSAL, :ROUND, :SANDSTORM, :SECRETPOWER, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SNORE, :SPIKES, :STRUGGLEBUG, :SUBSTITUTE, :SWAGGER, :SWIFT, :TOXIC, :TOXICSPIKES, :UTURN, :VENOMDRENCH, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.8
  s.weight        25.3
  s.color         :Red
  s.shape         :HeadArms
  s.category      "Shell Out"
  s.pokedex_entry "Having removed its heavy shell, it becomes very light and can fight with ninja-like movements."
  s.generation    5
end

GameData::Species.define :DURANT do |s|
  s.name          "Durant"
  s.types         :BUG, :STEEL
  s.base_stats    hp: 58, attack: 109, defense: 112, speed: 109, sp_atk: 48, sp_def: 48
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      169
  s.catch_rate    90
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SWARM, :HUSTLE
  s.hidden_abilities :TRUANT
  s.moves do |m|
    m.at 1, :FURYCUTTER
    m.at 1, :SANDATTACK
    m.at 4, :VISEGRIP
    m.at 8, :METALCLAW
    m.at 12, :BEATUP
    m.at 16, :BUGBITE
    m.at 20, :BITE
    m.at 24, :AGILITY
    m.at 28, :DIG
    m.at 32, :XSCISSOR
    m.at 36, :CRUNCH
    m.at 40, :METALSOUND
    m.at 44, :IRONHEAD
    m.at 48, :ENTRAINMENT
    m.at 52, :IRONDEFENSE
    m.at 56, :GUILLOTINE
  end
  s.tutor_moves   :AERIALACE, :AGILITY, :ATTRACT, :BATONPASS, :BEATUP, :BUGBITE, :CAPTIVATE, :CONFIDE, :CRUNCH, :CUT, :DIG, :DOUBLETEAM, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASHCANNON, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HONECLAWS, :IRONDEFENSE, :IRONHEAD, :MIMIC, :NATURALGIFT, :PROTECT, :REST, :RETALIATE, :RETURN, :ROCKPOLISH, :ROCKSLIDE, :ROCKSMASH, :ROCKTOMB, :ROUND, :SANDSTORM, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SNORE, :STEELBEAM, :STOMPINGTANTRUM, :STONEEDGE, :STRENGTH, :STRUGGLEBUG, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :THUNDERFANG, :THUNDERWAVE, :TOXIC, :XSCISSOR, :TERABLAST
  s.egg_moves     :FIRSTIMPRESSION, :FLAIL, :INFESTATION, :METALBURST, :STRUGGLEBUG
  s.egg_groups    :Bug
  s.hatch_steps   5120
  s.height        0.3
  s.weight        33.0
  s.color         :Gray
  s.shape         :Insectoid
  s.category      "Iron Ant"
  s.pokedex_entry "Durant dig nests in mountains. They build their complicated, interconnected tunnels in mazes."
  s.generation    5
end

GameData::Species.define :LARVESTA do |s|
  s.name          "Larvesta"
  s.types         :BUG, :FIRE
  s.base_stats    hp: 55, attack: 85, defense: 55, speed: 60, sp_atk: 50, sp_def: 55
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      72
  s.catch_rate    45
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :FLAMEBODY
  s.hidden_abilities :SWARM
  s.moves do |m|
    m.at 1, :EMBER
    m.at 1, :STRINGSHOT
    m.at 6, :FLAMECHARGE
    m.at 12, :STRUGGLEBUG
    m.at 18, :FLAMEWHEEL
    m.at 24, :BUGBITE
    m.at 30, :SCREECH
    m.at 36, :LEECHLIFE
    m.at 42, :BUGBUZZ
    m.at 48, :TAKEDOWN
    m.at 54, :AMNESIA
    m.at 60, :DOUBLEEDGE
    m.at 66, :FLAREBLITZ
  end
  s.tutor_moves   :ACROBATICS, :AMNESIA, :ATTRACT, :BUGBITE, :BUGBUZZ, :CALMMIND, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDURE, :FACADE, :FIREBLAST, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FRUSTRATION, :GIGADRAIN, :HEATWAVE, :HIDDENPOWER, :INCINERATE, :LEECHLIFE, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :NATURALGIFT, :OVERHEAT, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TOXIC, :UTURN, :WILDCHARGE, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_moves     :ABSORB, :HARDEN, :THRASH
  s.egg_groups    :Bug
  s.hatch_steps   10240
  s.height        1.1
  s.weight        28.8
  s.color         :White
  s.shape         :Insectoid
  s.category      "Torch"
  s.pokedex_entry "The base of volcanoes is where they make their homes. They shoot fire from their five horns to repel attacking enemies."
  s.generation    5
  s.evolves_into  :VOLCARONA, :Level, 59
end

GameData::Species.define :VOLCARONA do |s|
  s.name          "Volcarona"
  s.types         :BUG, :FIRE
  s.base_stats    hp: 85, attack: 60, defense: 65, speed: 100, sp_atk: 135, sp_def: 105
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Slow
  s.base_exp      275
  s.catch_rate    15
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :FLAMEBODY
  s.hidden_abilities :SWARM
  s.moves do |m|
    m.at 0, :QUIVERDANCE
    m.at 1, :FIERYDANCE
    m.at 1, :WHIRLWIND
    m.at 1, :EMBER
    m.at 1, :FLAMECHARGE
    m.at 1, :TAKEDOWN
    m.at 1, :DOUBLEEDGE
    m.at 1, :FLAREBLITZ
    m.at 1, :FIRESPIN
    m.at 1, :STRINGSHOT
    m.at 1, :GUST
    m.at 1, :STRUGGLEBUG
    m.at 18, :FLAMEWHEEL
    m.at 24, :BUGBITE
    m.at 30, :SCREECH
    m.at 36, :LEECHLIFE
    m.at 42, :BUGBUZZ
    m.at 48, :HEATWAVE
    m.at 54, :AMNESIA
    m.at 62, :HURRICANE
    m.at 70, :FIREBLAST
    m.at 78, :RAGEPOWDER
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AMNESIA, :ATTRACT, :BUGBITE, :BUGBUZZ, :CALMMIND, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :DUALWINGBEAT, :ENDURE, :FACADE, :FIREBLAST, :FIRESPIN, :FLAMECHARGE, :FLAMETHROWER, :FLAREBLITZ, :FLY, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HEATWAVE, :HIDDENPOWER, :HURRICANE, :HYPERBEAM, :INCINERATE, :LEECHLIFE, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MYSTICALFIRE, :NATURALGIFT, :OVERHEAT, :POISONJAB, :PROTECT, :PSYCHIC, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SCREECH, :SECRETPOWER, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAILWIND, :TOXIC, :UTURN, :WILDCHARGE, :WILLOWISP, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   10240
  s.height        1.6
  s.weight        46.0
  s.color         :White
  s.shape         :MultiWinged
  s.category      "Sun"
  s.pokedex_entry "A sea of fire engulfs the surroundings of their battles, since they use their six wings to scatter their ember scales."
  s.generation    5
  s.wild_item_common   :SILVERPOWDER
  s.wild_item_uncommon :SILVERPOWDER
  s.wild_item_rare     :SILVERPOWDER
end

GameData::Species.define :GENESECT do |s|
  s.name          "Genesect"
  s.types         :BUG, :STEEL
  s.base_stats    hp: 71, attack: 120, defense: 95, speed: 99, sp_atk: 120, sp_def: 95
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     0
  s.evs           attack: 1, sp_attack: 1, speed: 1
  s.abilities     :DOWNLOAD
  s.moves do |m|
    m.at 1, :FURYCUTTER
    m.at 1, :QUICKATTACK
    m.at 7, :SCREECH
    m.at 14, :METALCLAW
    m.at 21, :FELLSTINGER
    m.at 28, :FLAMECHARGE
    m.at 35, :METALSOUND
    m.at 42, :XSCISSOR
    m.at 49, :MAGNETRISE
    m.at 56, :BUGBUZZ
    m.at 63, :SIMPLEBEAM
    m.at 70, :ZAPCANNON
    m.at 77, :LOCKON
    m.at 84, :TECHNOBLAST
    m.at 91, :SELFDESTRUCT
  end
  s.tutor_moves   :AERIALACE, :ALLYSWITCH, :ASSURANCE, :BLAZEKICK, :BLIZZARD, :BUGBITE, :BUGBUZZ, :CHARGEBEAM, :CONFIDE, :DARKPULSE, :DOUBLETEAM, :ELECTROWEB, :ENDURE, :ENERGYBALL, :EXPLOSION, :FACADE, :FLAMECHARGE, :FLAMETHROWER, :FLASH, :FLASHCANNON, :FLY, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :GRAVITY, :GUNKSHOT, :HIDDENPOWER, :HONECLAWS, :HYPERBEAM, :ICEBEAM, :INFESTATION, :IRONDEFENSE, :IRONHEAD, :LASTRESORT, :LEECHLIFE, :LIGHTSCREEN, :MAGICCOAT, :MAGNETRISE, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHIC, :RECYCLE, :REFLECT, :REST, :RETURN, :ROCKPOLISH, :ROUND, :SCREECH, :SECRETPOWER, :SELFDESTRUCT, :SHADOWCLAW, :SHOCKWAVE, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :STEELBEAM, :STRUGGLEBUG, :SUBSTITUTE, :SWAGGER, :SWIFT, :TELEKINESIS, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :TRIATTACK, :UTURN, :XSCISSOR, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.5
  s.weight        82.5
  s.color         :Purple
  s.shape         :Bipedal
  s.category      "Paleozoic"
  s.pokedex_entry "This ancient bug Pokémon was altered by Team Plasma. They upgraded the cannon on its back."
  s.generation    5
  s.flags         :Mythical
end

GameData::Species.define :SCATTERBUG do |s|
  s.name          "Scatterbug"
  s.types         :BUG
  s.base_stats    hp: 38, attack: 35, defense: 40, speed: 35, sp_atk: 27, sp_def: 25
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      40
  s.catch_rate    255
  s.happiness     50
  s.evs           defense: 1
  s.abilities     :SHIELDDUST, :COMPOUNDEYES
  s.hidden_abilities :FRIENDGUARD
  s.moves do |m|
    m.at 1, :TACKLE
    m.at 1, :STRINGSHOT
    m.at 6, :STUNSPORE
    m.at 15, :BUGBITE
  end
  s.tutor_moves   :BUGBITE, :TERABLAST
  s.egg_moves     :POISONPOWDER, :RAGEPOWDER, :STUNSPORE
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.3
  s.weight        2.5
  s.color         :Black
  s.shape         :Insectoid
  s.category      "Scatterdust"
  s.pokedex_entry "When under attack from bird Pokémon, it spews a poisonous black powder that causes paralysis on contact."
  s.generation    6
  s.evolves_into  :SPEWPA, :Level, 9
end

GameData::Species.define :SPEWPA do |s|
  s.name          "Spewpa"
  s.types         :BUG
  s.base_stats    hp: 45, attack: 22, defense: 60, speed: 29, sp_atk: 27, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      75
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :SHEDSKIN
  s.hidden_abilities :FRIENDGUARD
  s.moves do |m|
    m.at 0, :PROTECT
    m.at 1, :HARDEN
  end
  s.tutor_moves   :BUGBITE, :ELECTROWEB, :IRONDEFENSE, :PROTECT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.3
  s.weight        8.4
  s.color         :Black
  s.shape         :HeadBase
  s.category      "Scatterdust"
  s.pokedex_entry "It lives hidden within thicket shadows. When predators attack, it quickly bristles the fur covering its body in an effort to threaten them."
  s.generation    6
  s.evolves_into  :VIVILLON, :Level, 12
end

GameData::Species.define :VIVILLON do |s|
  s.name          "Vivillon"
  s.types         :BUG, :FLYING
  s.base_stats    hp: 80, attack: 52, defense: 50, speed: 89, sp_atk: 90, sp_def: 50
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      206
  s.catch_rate    45
  s.happiness     50
  s.evs           hp: 1, sp_attack: 1, speed: 1
  s.abilities     :SHIELDDUST, :COMPOUNDEYES
  s.hidden_abilities :FRIENDGUARD
  s.moves do |m|
    m.at 0, :GUST
    m.at 1, :POWDER
    m.at 1, :SLEEPPOWDER
    m.at 1, :POISONPOWDER
    m.at 1, :STUNSPORE
    m.at 1, :STRUGGLEBUG
    m.at 12, :LIGHTSCREEN
    m.at 17, :PSYBEAM
    m.at 21, :SUPERSONIC
    m.at 25, :DRAININGKISS
    m.at 31, :AROMATHERAPY
    m.at 35, :BUGBUZZ
    m.at 41, :SAFEGUARD
    m.at 45, :QUIVERDANCE
    m.at 50, :HURRICANE
    m.at 55, :POWDER
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :ATTRACT, :BUGBITE, :CALMMIND, :CAPTIVATE, :CONFIDE, :DEFOG, :DOUBLETEAM, :DREAMEATER, :ELECTROWEB, :ENDEAVOR, :ENDURE, :ENERGYBALL, :FACADE, :FLASH, :FRUSTRATION, :GIGADRAIN, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :INFESTATION, :LASERFOCUS, :LIGHTSCREEN, :MIMIC, :NATURALGIFT, :PROTECT, :PSYCHIC, :PSYCHUP, :RAINDANCE, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SIGNALBEAM, :SLEEPTALK, :SNORE, :SOLARBEAM, :STRUGGLEBUG, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :TAILWIND, :THIEF, :TOXIC, :UTURN, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.2
  s.weight        17.0
  s.color         :White
  s.shape         :MultiWinged
  s.category      "Scale"
  s.pokedex_entry "Vivillon with many different patterns are found all over the world. These patterns are affected by the climate of their habitat."
  s.generation    6
end

GameData::Species.define :GRUBBIN do |s|
  s.name          "Grubbin"
  s.types         :BUG
  s.base_stats    hp: 47, attack: 62, defense: 45, speed: 46, sp_atk: 55, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      60
  s.catch_rate    255
  s.happiness     50
  s.evs           attack: 1
  s.abilities     :SWARM
  s.moves do |m|
    m.at 1, :VISEGRIP
    m.at 1, :MUDSLAP
    m.at 5, :STRINGSHOT
    m.at 10, :BUGBITE
    m.at 15, :BITE
    m.at 21, :SPARK
    m.at 25, :STICKYWEB
    m.at 30, :XSCISSOR
    m.at 35, :CRUNCH
    m.at 40, :DIG
  end
  s.tutor_moves   :ACROBATICS, :ATTRACT, :BUGBITE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CRUNCH, :DIG, :DOUBLETEAM, :ELECTROWEB, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MUDSHOT, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WILDCHARGE, :XSCISSOR, :TERABLAST
  s.egg_moves     :DISCHARGE, :HARDEN
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.4
  s.weight        4.4
  s.color         :Gray
  s.shape         :Insectoid
  s.category      "Larva"
  s.pokedex_entry "It spits a sticky thread to stop opponents in their tracks, and then it grabs them in its sharp, sturdy mandibles to take them down."
  s.generation    7
  s.evolves_into  :CHARJABUG, :Level, 20
end

GameData::Species.define :CHARJABUG do |s|
  s.name          "Charjabug"
  s.types         :BUG, :ELECTRIC
  s.base_stats    hp: 57, attack: 82, defense: 95, speed: 36, sp_atk: 55, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      140
  s.catch_rate    120
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :BATTERY
  s.moves do |m|
    m.at 0, :CHARGE
    m.at 1, :VISEGRIP
    m.at 1, :MUDSLAP
    m.at 1, :STRINGSHOT
    m.at 1, :BUGBITE
    m.at 15, :BITE
    m.at 23, :SPARK
    m.at 29, :STICKYWEB
    m.at 36, :XSCISSOR
    m.at 43, :CRUNCH
    m.at 50, :DIG
    m.at 57, :IRONDEFENSE
    m.at 64, :DISCHARGE
  end
  s.tutor_moves   :ACROBATICS, :ATTRACT, :BUGBITE, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CRUNCH, :DIG, :DOUBLETEAM, :EERIEIMPULSE, :ELECTROBALL, :ELECTROWEB, :ENDURE, :FACADE, :FRUSTRATION, :HIDDENPOWER, :IRONDEFENSE, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MUDSHOT, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROUND, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SUBSTITUTE, :SWAGGER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WILDCHARGE, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.5
  s.weight        10.5
  s.color         :Green
  s.shape         :Serpentine
  s.category      "Battery"
  s.pokedex_entry "It buries itself in fallen leaves and barely moves, munching away on humus. If you accidentally step on one, you'll get a shock!"
  s.generation    7
  s.evolves_into  :VIKAVOLT, :Item, THUNDERSTONE
  s.evolves_into  :VIKAVOLT, :LocationFlag, Magnetic
  s.wild_item_uncommon :CELLBATTERY
end

GameData::Species.define :VIKAVOLT do |s|
  s.name          "Vikavolt"
  s.types         :BUG, :ELECTRIC
  s.base_stats    hp: 77, attack: 70, defense: 90, speed: 43, sp_atk: 145, sp_def: 75
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      250
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_attack: 3
  s.abilities     :LEVITATE
  s.moves do |m|
    m.at 0, :THUNDERBOLT
    m.at 1, :CHARGE
    m.at 1, :XSCISSOR
    m.at 1, :CRUNCH
    m.at 1, :DIG
    m.at 1, :IRONDEFENSE
    m.at 1, :DISCHARGE
    m.at 1, :VISEGRIP
    m.at 1, :MUDSLAP
    m.at 1, :STRINGSHOT
    m.at 1, :BUGBITE
    m.at 15, :BITE
    m.at 23, :SPARK
    m.at 29, :STICKYWEB
    m.at 36, :BUGBUZZ
    m.at 43, :GUILLOTINE
    m.at 50, :FLY
    m.at 57, :AGILITY
    m.at 64, :ZAPCANNON
  end
  s.tutor_moves   :ACROBATICS, :AGILITY, :AIRSLASH, :ATTRACT, :BUGBITE, :BUGBUZZ, :CAPTIVATE, :CHARGEBEAM, :CONFIDE, :CRUNCH, :DIG, :DOUBLETEAM, :DUALWINGBEAT, :EERIEIMPULSE, :ELECTROBALL, :ELECTROWEB, :ENDURE, :ENERGYBALL, :FACADE, :FLASHCANNON, :FLY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :IRONDEFENSE, :LASERFOCUS, :LIGHTSCREEN, :MAGNETRISE, :MIMIC, :MUDSHOT, :NATURALGIFT, :POISONJAB, :PROTECT, :RAINDANCE, :REST, :RETURN, :RISINGVOLTAGE, :ROOST, :ROUND, :SCREECH, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SKITTERSMACK, :SKYDROP, :SLEEPTALK, :SNORE, :SOLARBEAM, :SUBSTITUTE, :SWAGGER, :THUNDER, :THUNDERBOLT, :THUNDERWAVE, :TOXIC, :VOLTSWITCH, :WILDCHARGE, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        1.5
  s.weight        45.0
  s.color         :Blue
  s.shape         :Insectoid
  s.category      "Stag Beetle"
  s.pokedex_entry "It zips around, on sharp lookout for an opening. It concentrates electrical energy within its large jaws and uses it to zap its enemies."
  s.generation    7
end

GameData::Species.define :CUTIEFLY do |s|
  s.name          "Cutiefly"
  s.types         :BUG, :FAIRY
  s.base_stats    hp: 40, attack: 45, defense: 40, speed: 84, sp_atk: 55, sp_def: 40
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      61
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :HONEYGATHER, :SHIELDDUST
  s.hidden_abilities :SWEETVEIL
  s.moves do |m|
    m.at 1, :ABSORB
    m.at 1, :FAIRYWIND
    m.at 6, :STUNSPORE
    m.at 12, :SWEETSCENT
    m.at 18, :DRAININGKISS
    m.at 24, :STRUGGLEBUG
    m.at 30, :AROMATHERAPY
    m.at 36, :SWITCHEROO
    m.at 42, :DAZZLINGGLEAM
    m.at 48, :BUGBUZZ
    m.at 54, :QUIVERDANCE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AFTERYOU, :ALLYSWITCH, :ATTRACT, :BATONPASS, :BUGBITE, :BUGBUZZ, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DEFOG, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :DUALWINGBEAT, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FRUSTRATION, :HELPINGHAND, :HIDDENPOWER, :IMPRISON, :INFESTATION, :LASTRESORT, :LEECHLIFE, :LIGHTSCREEN, :MAGICROOM, :MIMIC, :NATURALGIFT, :PLAYROUGH, :PROTECT, :PSYCHIC, :PSYCHUP, :REFLECT, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SPEEDSWAP, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THIEF, :TOXIC, :TRICK, :UTURN, :WONDERROOM, :TERABLAST
  s.egg_moves     :AROMATICMIST, :MOONBLAST, :STICKYWEB
  s.egg_groups    :Bug, :Fairy
  s.hatch_steps   5120
  s.height        0.1
  s.weight        0.2
  s.color         :Yellow
  s.shape         :Insectoid
  s.category      "Bee Fly"
  s.pokedex_entry "It feeds on the nectar and pollen of flowers. Because it's able to sense auras, it can identify which flowers are about to bloom."
  s.generation    7
  s.evolves_into  :RIBOMBEE, :Level, 25
  s.wild_item_uncommon :HONEY
end

GameData::Species.define :RIBOMBEE do |s|
  s.name          "Ribombee"
  s.types         :BUG, :FAIRY
  s.base_stats    hp: 60, attack: 55, defense: 60, speed: 124, sp_atk: 95, sp_def: 70
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      162
  s.catch_rate    75
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :HONEYGATHER, :SHIELDDUST
  s.hidden_abilities :SWEETVEIL
  s.moves do |m|
    m.at 0, :POLLENPUFF
    m.at 1, :COVET
    m.at 1, :ABSORB
    m.at 1, :FAIRYWIND
    m.at 1, :STUNSPORE
    m.at 1, :SWEETSCENT
    m.at 18, :DRAININGKISS
    m.at 24, :STRUGGLEBUG
    m.at 32, :AROMATHERAPY
    m.at 40, :SWITCHEROO
    m.at 48, :DAZZLINGGLEAM
    m.at 56, :BUGBUZZ
    m.at 64, :QUIVERDANCE
  end
  s.tutor_moves   :ACROBATICS, :AERIALACE, :AFTERYOU, :ALLYSWITCH, :ATTRACT, :BATONPASS, :BUGBITE, :BUGBUZZ, :CALMMIND, :CAPTIVATE, :CHARM, :CONFIDE, :COVET, :DAZZLINGGLEAM, :DEFOG, :DOUBLETEAM, :DRAININGKISS, :DREAMEATER, :DUALWINGBEAT, :ENDURE, :ENERGYBALL, :FACADE, :FAKETEARS, :FRUSTRATION, :GIGAIMPACT, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :INFESTATION, :LASTRESORT, :LEECHLIFE, :LIGHTSCREEN, :MAGICALLEAF, :MAGICROOM, :MIMIC, :NATURALGIFT, :NATUREPOWER, :PLAYROUGH, :POLLENPUFF, :PROTECT, :PSYCHIC, :PSYCHUP, :REFLECT, :REST, :RETURN, :ROOST, :ROUND, :SAFEGUARD, :SECRETPOWER, :SIGNALBEAM, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :SPEEDSWAP, :SUBSTITUTE, :SUNNYDAY, :SWAGGER, :SWIFT, :TAILWIND, :TELEKINESIS, :THIEF, :TOXIC, :TRICK, :UTURN, :WONDERROOM, :TERABLAST
  s.egg_groups    :Bug, :Fairy
  s.hatch_steps   5120
  s.height        0.2
  s.weight        0.5
  s.color         :Yellow
  s.shape         :MultiWinged
  s.category      "Bee Fly"
  s.pokedex_entry "Rain makes pollen damp, so Ribombee hates rain. When it sees ominous clouds, it finds a hollow in a tree, where it waits stock-still."
  s.generation    7
  s.wild_item_uncommon :HONEY
end

GameData::Species.define :WIMPOD do |s|
  s.name          "Wimpod"
  s.types         :BUG, :WATER
  s.base_stats    hp: 25, attack: 35, defense: 40, speed: 80, sp_atk: 20, sp_def: 30
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      46
  s.catch_rate    90
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :WIMPOUT
  s.moves do |m|
    m.at 1, :STRUGGLEBUG
    m.at 1, :SANDATTACK
    m.at 1, :DEFENSECURL
  end
  s.tutor_moves   :ASSURANCE, :ATTRACT, :BUGBUZZ, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDURE, :FACADE, :FRUSTRATION, :HAIL, :HIDDENPOWER, :LEECHLIFE, :MIMIC, :MUDSHOT, :NATURALGIFT, :PROTECT, :RAINDANCE, :REST, :RETURN, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SKITTERSMACK, :SLEEPTALK, :SNORE, :SPIKES, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :TAUNT, :TOXIC, :WATERFALL, :TERABLAST
  s.egg_moves     :AQUAJET, :HARDEN, :METALCLAW, :ROLLOUT, :WIDEGUARD
  s.egg_groups    :Bug, :Water3
  s.hatch_steps   5120
  s.height        0.5
  s.weight        12.0
  s.color         :Gray
  s.shape         :Multiped
  s.category      "Turn Tail"
  s.pokedex_entry "This Pokémon is a coward. As it desperately dashes off, the flailing of its many legs leaves a sparkling clean path in its wake."
  s.generation    7
  s.evolves_into  :GOLISOPOD, :Level, 30
end

GameData::Species.define :GOLISOPOD do |s|
  s.name          "Golisopod"
  s.types         :BUG, :WATER
  s.base_stats    hp: 75, attack: 125, defense: 140, speed: 40, sp_atk: 60, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      186
  s.catch_rate    45
  s.happiness     50
  s.evs           defense: 2
  s.abilities     :EMERGENCYEXIT
  s.moves do |m|
    m.at 0, :FIRSTIMPRESSION
    m.at 1, :STRUGGLEBUG
    m.at 1, :SANDATTACK
    m.at 1, :DEFENSECURL
    m.at 1, :SPITE
    m.at 4, :ROCKSMASH
    m.at 8, :FURYCUTTER
    m.at 12, :MUDSHOT
    m.at 16, :BUGBITE
    m.at 20, :IRONDEFENSE
    m.at 24, :SUCKERPUNCH
    m.at 28, :SLASH
    m.at 32, :RAZORSHELL
    m.at 36, :PINMISSILE
    m.at 40, :SWORDSDANCE
    m.at 44, :LIQUIDATION
  end
  s.tutor_moves   :AERIALACE, :ASSURANCE, :ATTRACT, :BLIZZARD, :BRICKBREAK, :BUGBITE, :BUGBUZZ, :BULKUP, :CAPTIVATE, :CLOSECOMBAT, :CONFIDE, :DARKPULSE, :DIVE, :DOUBLETEAM, :DRILLRUN, :DUALCHOP, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSBLAST, :FROSTBREATH, :FRUSTRATION, :GIGAIMPACT, :HAIL, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :IRONDEFENSE, :IRONHEAD, :KNOCKOFF, :LASERFOCUS, :LEECHLIFE, :LIQUIDATION, :MIMIC, :MUDDYWATER, :MUDSHOT, :NATURALGIFT, :PAINSPLIT, :PAYBACK, :PINMISSILE, :POISONJAB, :PROTECT, :PSYCHUP, :RAINDANCE, :RAZORSHELL, :REST, :RETURN, :ROCKSLIDE, :ROCKTOMB, :ROUND, :SCALD, :SCREECH, :SECRETPOWER, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNARL, :SNORE, :SPIKES, :SPITE, :SUBSTITUTE, :SURF, :SWAGGER, :SWIFT, :SWORDSDANCE, :TAUNT, :THROATCHOP, :TOXIC, :VENOSHOCK, :WATERFALL, :WATERPULSE, :XSCISSOR, :TERABLAST
  s.egg_groups    :Bug, :Water3
  s.hatch_steps   5120
  s.height        2.0
  s.weight        108.0
  s.color         :Gray
  s.shape         :Bipedal
  s.category      "Hard Scale"
  s.pokedex_entry "It battles skillfully with its six arms, but spends most of its time peacefully meditating in caves deep beneath the sea."
  s.generation    7
end

GameData::Species.define :BUZZWOLE do |s|
  s.name          "Buzzwole"
  s.types         :BUG, :FIGHTING
  s.base_stats    hp: 107, attack: 139, defense: 139, speed: 79, sp_atk: 53, sp_def: 53
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    45
  s.happiness     0
  s.evs           attack: 1, defense: 2
  s.abilities     :BEASTBOOST
  s.moves do |m|
    m.at 1, :POWERUPPUNCH
    m.at 1, :HARDEN
    m.at 5, :TAUNT
    m.at 10, :FELLSTINGER
    m.at 15, :VITALTHROW
    m.at 20, :BULKUP
    m.at 25, :ENDURE
    m.at 30, :REVERSAL
    m.at 35, :MEGAPUNCH
    m.at 40, :LUNGE
    m.at 45, :FOCUSENERGY
    m.at 50, :DYNAMICPUNCH
    m.at 55, :COUNTER
    m.at 60, :HAMMERARM
    m.at 65, :SUPERPOWER
    m.at 70, :FOCUSPUNCH
  end
  s.tutor_moves   :BODYSLAM, :BOUNCE, :BRICKBREAK, :BUGBITE, :BULKUP, :BULLDOZE, :CLOSECOMBAT, :COACHING, :CONFIDE, :DARKESTLARIAT, :DOUBLETEAM, :DRAINPUNCH, :DUALCHOP, :DUALWINGBEAT, :EARTHQUAKE, :ENDEAVOR, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSENERGY, :FOCUSPUNCH, :FRUSTRATION, :GIGAIMPACT, :GYROBALL, :HIDDENPOWER, :HIGHHORSEPOWER, :ICEPUNCH, :IRONHEAD, :LEECHLIFE, :LOWSWEEP, :MEGAPUNCH, :MIMIC, :NATURALGIFT, :OUTRAGE, :PAYBACK, :POISONJAB, :PROTECT, :REST, :RETURN, :REVENGE, :REVERSAL, :ROCKSLIDE, :ROCKTOMB, :ROOST, :ROUND, :SECRETPOWER, :SLEEPTALK, :SMACKDOWN, :SNORE, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SUPERPOWER, :SWAGGER, :TAUNT, :THUNDERPUNCH, :TOXIC, :WORKUP, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        2.4
  s.weight        333.6
  s.color         :Red
  s.shape         :Multiped
  s.category      "Swollen"
  s.pokedex_entry "This Ultra Beast appeared from another world. It shows off its body, but whether that display is a boast or a threat remains unclear."
  s.generation    7
  s.flags         :UltraBeast
end

GameData::Species.define :PHEROMOSA do |s|
  s.name          "Pheromosa"
  s.types         :BUG, :FIGHTING
  s.base_stats    hp: 71, attack: 137, defense: 37, speed: 151, sp_atk: 137, sp_def: 37
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      285
  s.catch_rate    45
  s.happiness     0
  s.evs           speed: 3
  s.abilities     :BEASTBOOST
  s.moves do |m|
    m.at 1, :FEINT
    m.at 1, :RAPIDSPIN
    m.at 5, :LEER
    m.at 10, :QUICKGUARD
    m.at 15, :BUGBITE
    m.at 20, :LOWKICK
    m.at 25, :DOUBLEKICK
    m.at 30, :TRIPLEKICK
    m.at 35, :STOMP
    m.at 40, :AGILITY
    m.at 45, :LUNGE
    m.at 50, :BOUNCE
    m.at 55, :SPEEDSWAP
    m.at 60, :BUGBUZZ
    m.at 65, :QUIVERDANCE
    m.at 70, :HIGHJUMPKICK
  end
  s.tutor_moves   :AGILITY, :ASSURANCE, :BLIZZARD, :BLOCK, :BOUNCE, :BRICKBREAK, :BUGBITE, :BUGBUZZ, :CLOSECOMBAT, :COACHING, :CONFIDE, :DOUBLETEAM, :DRILLRUN, :ECHOEDVOICE, :ELECTROWEB, :ENDURE, :FACADE, :FALSESWIPE, :FLING, :FOCUSBLAST, :FOULPLAY, :FRUSTRATION, :GIGAIMPACT, :HIDDENPOWER, :HYPERBEAM, :ICEBEAM, :ICYWIND, :LASERFOCUS, :LOWKICK, :LOWSWEEP, :MIMIC, :NATURALGIFT, :OUTRAGE, :POISONJAB, :PROTECT, :REST, :RETURN, :ROOST, :ROUND, :SECRETPOWER, :SHOCKWAVE, :SIGNALBEAM, :SKITTERSMACK, :SLEEPTALK, :SNATCH, :SNORE, :SPEEDSWAP, :SUBSTITUTE, :SWAGGER, :SWIFT, :TAUNT, :THROATCHOP, :TORMENT, :TOXIC, :TRIPLEAXEL, :UTURN, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.8
  s.weight        25.0
  s.color         :White
  s.shape         :Bipedal
  s.category      "Lissome"
  s.pokedex_entry "One of the Ultra Beasts. It refuses to touch anything, perhaps because it senses some uncleanness in this world."
  s.generation    7
  s.flags         :UltraBeast
end

GameData::Species.define :BLIPBUG do |s|
  s.name          "Blipbug"
  s.types         :BUG
  s.base_stats    hp: 25, attack: 20, defense: 20, speed: 45, sp_atk: 25, sp_def: 45
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      36
  s.catch_rate    255
  s.happiness     50
  s.evs           sp_defense: 1
  s.abilities     :SWARM, :COMPOUNDEYES
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :STRUGGLEBUG
  end
  s.tutor_moves   :TERABLAST
  s.egg_moves     :INFESTATION, :RECOVER, :STICKYWEB, :SUPERSONIC
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.4
  s.weight        8.0
  s.color         :Blue
  s.shape         :Insectoid
  s.category      "Larva"
  s.pokedex_entry "Often found in gardens, this Pokémon has hairs on its body that it uses to assess its surroundings."
  s.generation    8
  s.evolves_into  :DOTTLER, :Level, 10
end

GameData::Species.define :DOTTLER do |s|
  s.name          "Dottler"
  s.types         :BUG, :PSYCHIC
  s.base_stats    hp: 50, attack: 35, defense: 80, speed: 30, sp_atk: 50, sp_def: 90
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      117
  s.catch_rate    120
  s.happiness     50
  s.evs           sp_defense: 2
  s.abilities     :SWARM, :COMPOUNDEYES
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 0, :REFLECT
    m.at 0, :LIGHTSCREEN
    m.at 0, :CONFUSION
    m.at 1, :STRUGGLEBUG
  end
  s.tutor_moves   :ALLYSWITCH, :ATTRACT, :BODYPRESS, :BUGBUZZ, :CALMMIND, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FRUSTRATION, :FUTURESIGHT, :GUARDSWAP, :HELPINGHAND, :HIDDENPOWER, :IMPRISON, :IRONDEFENSE, :LEECHLIFE, :LIGHTSCREEN, :MAGICROOM, :MIMIC, :NATURALGIFT, :PAYBACK, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TOXIC, :TRICK, :TRICKROOM, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.4
  s.weight        19.5
  s.color         :Yellow
  s.shape         :Insectoid
  s.category      "Radome"
  s.pokedex_entry "It barely moves, but it's still alive. Hiding in its shell without food or water seems to have awakened its psychic powers."
  s.generation    8
  s.evolves_into  :ORBEETLE, :Level, 30
  s.wild_item_uncommon :PSYCHICSEED
end

GameData::Species.define :ORBEETLE do |s|
  s.name          "Orbeetle"
  s.types         :BUG, :PSYCHIC
  s.base_stats    hp: 60, attack: 45, defense: 110, speed: 90, sp_atk: 80, sp_def: 120
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      253
  s.catch_rate    45
  s.happiness     50
  s.evs           sp_defense: 3
  s.abilities     :SWARM, :FRISK
  s.hidden_abilities :TELEPATHY
  s.moves do |m|
    m.at 1, :REFLECT
    m.at 1, :LIGHTSCREEN
    m.at 1, :CONFUSION
    m.at 1, :STRUGGLEBUG
    m.at 4, :CONFUSERAY
    m.at 8, :MAGICCOAT
    m.at 12, :AGILITY
    m.at 16, :PSYBEAM
    m.at 20, :HYPNOSIS
    m.at 24, :ALLYSWITCH
    m.at 28, :BUGBUZZ
    m.at 32, :MIRRORCOAT
    m.at 36, :PSYCHIC
    m.at 40, :AFTERYOU
    m.at 44, :CALMMIND
    m.at 48, :PSYCHICTERRAIN
  end
  s.tutor_moves   :AGILITY, :ALLYSWITCH, :ATTRACT, :BATONPASS, :BODYPRESS, :BUGBUZZ, :CALMMIND, :CAPTIVATE, :CONFIDE, :DOUBLETEAM, :ENDURE, :ENERGYBALL, :EXPANDINGFORCE, :FACADE, :FRUSTRATION, :FUTURESIGHT, :GIGADRAIN, :GIGAIMPACT, :GUARDSWAP, :HELPINGHAND, :HIDDENPOWER, :HYPERBEAM, :IMPRISON, :IRONDEFENSE, :LEECHLIFE, :LIGHTSCREEN, :MAGICROOM, :MIMIC, :NATURALGIFT, :PAYBACK, :POWERSWAP, :PROTECT, :PSYCHIC, :PSYCHICTERRAIN, :PSYCHOCUT, :PSYSHOCK, :REFLECT, :REST, :RETURN, :ROUND, :SAFEGUARD, :SECRETPOWER, :SHADOWBALL, :SKILLSWAP, :SLEEPTALK, :SNORE, :SOLARBEAM, :STOREDPOWER, :SUBSTITUTE, :SWAGGER, :TOXIC, :TRICK, :TRICKROOM, :UTURN, :WONDERROOM, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Bug
  s.hatch_steps   3840
  s.height        0.4
  s.weight        40.8
  s.color         :Red
  s.shape         :Winged
  s.category      "Seven Spot"
  s.pokedex_entry "It's famous for its high level of intelligence, and the large size of its brain is proof that it also possesses immense psychic power."
  s.generation    8
  s.wild_item_uncommon :PSYCHICSEED
end

