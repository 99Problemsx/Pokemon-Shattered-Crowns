#===============================================================================
# Shattered Crowns - Gen9 poison Type Pokemon Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Species.define format
#===============================================================================

GameData::Species.define :SHROODLE do |s|
  s.name          "Shroodle"
  s.types         :POISON, :NORMAL
  s.base_stats    hp: 40, attack: 65, defense: 35, speed: 75, sp_atk: 40, sp_def: 35
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      58
  s.catch_rate    190
  s.happiness     50
  s.evs           speed: 1
  s.abilities     :UNBURDEN, :PICKPOCKET
  s.hidden_abilities :PRANKSTER
  s.moves do |m|
    m.at 1, :LEER
    m.at 1, :SCRATCH
    m.at 5, :ACIDSPRAY
    m.at 8, :BITE
    m.at 8, :FURYSWIPES
    m.at 11, :SWITCHEROO
    m.at 14, :POISONFANG
    m.at 18, :FLATTER
    m.at 21, :SLASH
    m.at 25, :UTURN
    m.at 29, :POISONJAB
    m.at 33, :TAUNT
    m.at 36, :SUBSTITUTE
    m.at 40, :KNOCKOFF
    m.at 45, :GUNKSHOT
  end
  s.tutor_moves   :ACIDSPRAY, :ACROBATICS, :BATONPASS, :DIG, :DOUBLEEDGE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FOULPLAY, :GUNKSHOT, :HELPINGHAND, :KNOCKOFF, :METRONOME, :MUDSHOT, :MUDSLAP, :NASTYPLOT, :POISONJAB, :POUNCE, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :TOXIC, :TRAILBLAZE, :UTURN, :VENOSHOCK, :TERABLAST
  s.egg_moves     :COPYCAT, :CROSSPOISON, :PARTINGSHOT, :SUPERFANG, :SWAGGER, :TOXIC
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.2
  s.weight        0.7
  s.color         :Gray
  s.shape         :Quadruped
  s.habitat       :Forest
  s.category      "Toxic Mouse"
  s.pokedex_entry "Though usually a mellow Pokémon, it will sink its sharp, poison-soaked front teeth into any that anger it, causing paralysis in the object of its ire."
  s.generation    9
  s.evolves_into  :GRAFAIAI, :Level, 28
end

GameData::Species.define :GRAFAIAI do |s|
  s.name          "Grafaiai"
  s.types         :POISON, :NORMAL
  s.base_stats    hp: 63, attack: 95, defense: 65, speed: 110, sp_atk: 80, sp_def: 72
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Parabolic
  s.base_exp      170
  s.catch_rate    90
  s.happiness     50
  s.evs           speed: 2
  s.abilities     :UNBURDEN, :POISONTOUCH
  s.hidden_abilities :PRANKSTER
  s.moves do |m|
    m.at 0, :DOODLE
    m.at 1, :LEER
    m.at 1, :SCRATCH
    m.at 5, :ACIDSPRAY
    m.at 8, :FURYSWIPES
    m.at 11, :SWITCHEROO
    m.at 14, :POISONFANG
    m.at 18, :FLATTER
    m.at 21, :SLASH
    m.at 25, :UTURN
    m.at 33, :POISONJAB
    m.at 37, :TAUNT
    m.at 40, :SUBSTITUTE
    m.at 45, :KNOCKOFF
    m.at 51, :GUNKSHOT
  end
  s.tutor_moves   :ACIDSPRAY, :ACROBATICS, :BATONPASS, :DIG, :DOUBLEEDGE, :ENCORE, :ENDEAVOR, :ENDURE, :FACADE, :FLING, :FOULPLAY, :GIGAIMPACT, :GUNKSHOT, :HELPINGHAND, :KNOCKOFF, :LOWKICK, :LOWSWEEP, :METRONOME, :MUDSHOT, :MUDSLAP, :NASTYPLOT, :POISONJAB, :POISONTAIL, :POUNCE, :PROTECT, :PSYCHUP, :RAINDANCE, :REST, :SCARYFACE, :SHADOWCLAW, :SKITTERSMACK, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SUBSTITUTE, :SUNNYDAY, :SUPERFANG, :SWORDSDANCE, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :TOXIC, :TRAILBLAZE, :UTURN, :VENOSHOCK, :XSCISSOR, :TERABLAST
  s.egg_groups    :Field
  s.hatch_steps   5120
  s.height        0.7
  s.weight        27.2
  s.color         :Gray
  s.shape         :BipedalTail
  s.habitat       :Forest
  s.category      "Toxic Monkey"
  s.pokedex_entry "The color of the poisonous saliva depends on what the Pokémon eats. Grafaiai covers its fingers in its saliva and draws patterns on trees in forests."
  s.generation    9
end

GameData::Species.define :CLODSIRE do |s|
  s.name          "Clodsire"
  s.types         :POISON, :GROUND
  s.base_stats    hp: 130, attack: 75, defense: 60, speed: 20, sp_atk: 45, sp_def: 100
  s.gender_ratio  :Female50Percent
  s.growth_rate   :Medium
  s.base_exp      151
  s.catch_rate    90
  s.happiness     50
  s.evs           hp: 2
  s.abilities     :POISONPOINT, :WATERABSORB
  s.hidden_abilities :UNAWARE
  s.moves do |m|
    m.at 0, :AMNESIA
    m.at 1, :POISONSTING
    m.at 1, :TAILWHIP
    m.at 4, :TOXICSPIKES
    m.at 8, :MUDSHOT
    m.at 12, :POISONTAIL
    m.at 16, :SLAM
    m.at 21, :YAWN
    m.at 24, :POISONJAB
    m.at 30, :SLUDGEWAVE
    m.at 36, :MEGAHORN
    m.at 40, :TOXIC
    m.at 48, :EARTHQUAKE
  end
  s.tutor_moves   :ACIDSPRAY, :AMNESIA, :BODYPRESS, :BODYSLAM, :BULLDOZE, :CHILLINGWATER, :CURSE, :DIG, :DOUBLEEDGE, :EARTHPOWER, :EARTHQUAKE, :ENDURE, :FACADE, :GIGAIMPACT, :GUNKSHOT, :HAZE, :HEAVYSLAM, :HELPINGHAND, :HIGHHORSEPOWER, :HYDROPUMP, :HYPERBEAM, :IRONHEAD, :LIQUIDATION, :LOWKICK, :MUDDYWATER, :MUDSHOT, :MUDSLAP, :POISONJAB, :POISONTAIL, :PROTECT, :RAINDANCE, :REST, :ROCKSLIDE, :ROCKTOMB, :SANDSTORM, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SPIKES, :STEALTHROCK, :STOMPINGTANTRUM, :STONEEDGE, :SUBSTITUTE, :SURF, :TAKEDOWN, :TOXIC, :TOXICSPIKES, :TRAILBLAZE, :VENOSHOCK, :WATERFALL, :WATERPULSE, :ZENHEADBUTT, :TERABLAST
  s.egg_groups    :Water1, :Field
  s.hatch_steps   5120
  s.height        1.8
  s.weight        223.0
  s.color         :Brown
  s.shape         :Quadruped
  s.habitat       :WatersEdge
  s.category      "Spiny Fish"
  s.pokedex_entry "When attacked, this Pokémon will retaliate by sticking thick spines out from its body. It’s a risky move that puts everything on the line."
  s.generation    9
  s.flags         :DefaultForm_1, :InheritFormWithEverStone
end

GameData::Species.define :OKIDOGI do |s|
  s.name          "Okidogi"
  s.types         :POISON, :FIGHTING
  s.base_stats    hp: 88, attack: 128, defense: 115, speed: 80, sp_atk: 58, sp_def: 86
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Slow
  s.base_exp      278
  s.catch_rate    3
  s.happiness     0
  s.evs           attack: 3
  s.abilities     :TOXICCHAIN
  s.hidden_abilities :GUARDDOG
  s.moves do |m|
    m.at 1, :BITE
    m.at 1, :LOWKICK
    m.at 1, :BULKUP
    m.at 8, :HOWL
    m.at 16, :POISONFANG
    m.at 24, :FORCEPALM
    m.at 32, :COUNTER
    m.at 40, :POISONJAB
    m.at 48, :BRUTALSWING
    m.at 56, :CRUNCH
    m.at 64, :SUPERPOWER
    m.at 72, :GIGAIMPACT
  end
  s.tutor_moves   :BODYPRESS, :BODYSLAM, :BRICKBREAK, :BULKUP, :CLOSECOMBAT, :CRUNCH, :CURSE, :DIG, :DOUBLEEDGE, :DRAINPUNCH, :ENDURE, :FACADE, :FIREFANG, :FIREPUNCH, :FLING, :FOCUSBLAST, :FOCUSPUNCH, :GIGAIMPACT, :GUNKSHOT, :HARDPRESS, :HIGHHORSEPOWER, :HYPERBEAM, :ICEFANG, :ICEPUNCH, :IRONHEAD, :KNOCKOFF, :LASHOUT, :LOWKICK, :LOWSWEEP, :METALCLAW, :OUTRAGE, :POISONJAB, :POISONTAIL, :PROTECT, :PSYCHICFANGS, :REST, :REVERSAL, :ROAR, :ROCKTOMB, :SCARYFACE, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SNARL, :SPITE, :STOMPINGTANTRUM, :SUBSTITUTE, :TAKEDOWN, :TAUNT, :THIEF, :THROATCHOP, :THUNDERFANG, :THUNDERPUNCH, :TOXIC, :UPPERHAND, :UPROAR, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.8
  s.weight        92.0
  s.color         :Black
  s.shape         :BipedalTail
  s.habitat       :Rare
  s.category      "Retainer"
  s.pokedex_entry "After all its muscles were stimulated by the toxic chain around its neck, Okidogi transformed and gained a powerful physique."
  s.generation    9
  s.flags         :Legendary
end

GameData::Species.define :MUNKIDORI do |s|
  s.name          "Munkidori"
  s.types         :POISON, :PSYCHIC
  s.base_stats    hp: 88, attack: 75, defense: 66, speed: 106, sp_atk: 130, sp_def: 90
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Slow
  s.base_exp      278
  s.catch_rate    3
  s.happiness     0
  s.evs           sp_attack: 3
  s.abilities     :TOXICCHAIN
  s.hidden_abilities :FRISK
  s.moves do |m|
    m.at 1, :SCRATCH
    m.at 1, :CONFUSION
    m.at 1, :FAKEOUT
    m.at 8, :FLATTER
    m.at 16, :HELPINGHAND
    m.at 24, :PSYBEAM
    m.at 32, :CLEARSMOG
    m.at 40, :PSYCHIC
    m.at 48, :SLUDGEWAVE
    m.at 56, :NASTYPLOT
    m.at 64, :FUTURESIGHT
    m.at 72, :PARTINGSHOT
  end
  s.tutor_moves   :ACIDSPRAY, :BATONPASS, :CALMMIND, :CONFUSERAY, :ENDURE, :FACADE, :FLING, :FOCUSBLAST, :FUTURESIGHT, :GIGAIMPACT, :GRASSKNOT, :GUNKSHOT, :HELPINGHAND, :HEX, :HYPERBEAM, :IMPRISON, :LASHOUT, :LIGHTSCREEN, :METRONOME, :MUDSLAP, :NASTYPLOT, :NIGHTSHADE, :POISONJAB, :POLTERGEIST, :PROTECT, :PSYBEAM, :PSYCHIC, :PSYCHICNOISE, :PSYCHICTERRAIN, :PSYCHUP, :PSYSHOCK, :REST, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SPITE, :STOREDPOWER, :SUBSTITUTE, :SWIFT, :TAUNT, :THIEF, :TOXIC, :TRAILBLAZE, :TRICK, :UPROAR, :UTURN, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.0
  s.weight        12.2
  s.color         :Black
  s.shape         :Bipedal
  s.habitat       :Rare
  s.category      "Retainer"
  s.pokedex_entry "The chain is made from toxins that enhance capabilities. It stimulated Munkidori's brain and caused the Pokémon's psychic powers to bloom."
  s.generation    9
  s.flags         :Legendary
end

GameData::Species.define :FEZANDIPITI do |s|
  s.name          "Fezandipiti"
  s.types         :POISON, :FAIRY
  s.base_stats    hp: 88, attack: 91, defense: 82, speed: 99, sp_atk: 70, sp_def: 125
  s.gender_ratio  :AlwaysMale
  s.growth_rate   :Slow
  s.base_exp      278
  s.catch_rate    3
  s.happiness     0
  s.evs           sp_defense: 3
  s.abilities     :TOXICCHAIN
  s.hidden_abilities :TECHNICIAN
  s.moves do |m|
    m.at 1, :DOUBLEKICK
    m.at 1, :PECK
    m.at 1, :POISONGAS
    m.at 8, :DISARMINGVOICE
    m.at 16, :QUICKATTACK
    m.at 24, :ATTRACT
    m.at 32, :WINGATTACK
    m.at 40, :CROSSPOISON
    m.at 48, :TAILSLAP
    m.at 56, :FLATTER
    m.at 56, :BEATUP
    m.at 64, :ROOST
    m.at 72, :MOONBLAST
  end
  s.tutor_moves   :ACIDSPRAY, :ACROBATICS, :AERIALACE, :AGILITY, :AIRCUTTER, :AIRSLASH, :ALLURINGVOICE, :BRAVEBIRD, :CALMMIND, :CHARM, :DARKPULSE, :DAZZLINGGLEAM, :DISARMINGVOICE, :DUALWINGBEAT, :ENDURE, :FACADE, :FLY, :GIGAIMPACT, :GUNKSHOT, :HEATWAVE, :HEX, :HURRICANE, :HYPERBEAM, :ICYWIND, :LASHOUT, :LIGHTSCREEN, :NASTYPLOT, :PLAYROUGH, :POISONJAB, :POISONTAIL, :PROTECT, :PSYCHUP, :REST, :SHADOWBALL, :SHADOWCLAW, :SLEEPTALK, :SLUDGEBOMB, :SPITE, :SUBSTITUTE, :SWIFT, :SWORDSDANCE, :TAILWIND, :TAKEDOWN, :TAUNT, :THIEF, :TOXIC, :UPROAR, :UTURN, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   30720
  s.height        1.4
  s.weight        30.1
  s.color         :Black
  s.shape         :Winged
  s.habitat       :Rare
  s.category      "Retainer"
  s.pokedex_entry "Fezandipiti owes its beautiful looks and lovely voice to the toxic stimulants emanating from the chain wrapped around its body."
  s.generation    9
  s.flags         :Legendary
end

GameData::Species.define :PECHARUNT do |s|
  s.name          "Pecharunt"
  s.types         :POISON, :GHOST
  s.base_stats    hp: 88, attack: 88, defense: 160, speed: 88, sp_atk: 88, sp_def: 88
  s.gender_ratio  :Genderless
  s.growth_rate   :Slow
  s.base_exp      300
  s.catch_rate    3
  s.happiness     0
  s.evs           defense: 3
  s.abilities     :POISONPUPPETEER
  s.moves do |m|
    m.at -1, :DEFENSECURL
    m.at -1, :ROLLOUT
    m.at -1, :MEANLOOK
    m.at 1, :SMOG
    m.at 1, :POISONGAS
    m.at 1, :MEMENTO
    m.at 1, :ASTONISH
    m.at 8, :WITHDRAW
    m.at 16, :DESTINYBOND
    m.at 24, :FAKETEARS
    m.at 32, :PARTINGSHOT
    m.at 40, :SHADOWBALL
    m.at 48, :MALIGNANTCHAIN
    m.at 56, :TOXIC
    m.at 64, :NASTYPLOT
    m.at 72, :RECOVER
  end
  s.tutor_moves   :ACIDSPRAY, :CURSE, :ENDURE, :FAKETEARS, :FOULPLAY, :GUNKSHOT, :HEX, :IMPRISON, :NASTYPLOT, :NIGHTSHADE, :PHANTOMFORCE, :POLTERGEIST, :PROTECT, :REST, :SHADOWBALL, :SLEEPTALK, :SLUDGEBOMB, :SLUDGEWAVE, :SPITE, :SUBSTITUTE, :TOXIC, :VENOSHOCK, :TERABLAST
  s.egg_groups    :Undiscovered
  s.hatch_steps   2560
  s.height        0.3
  s.weight        0.3
  s.color         :Purple
  s.shape         :HeadArms
  s.habitat       :Rare
  s.category      "Subjugation"
  s.pokedex_entry "It feeds others toxic mochi that draw out desires and capabilities. Those who eat the mochi fall under Pecharunt's control, chained to its will."
  s.generation    9
  s.flags         :Mythical
end

