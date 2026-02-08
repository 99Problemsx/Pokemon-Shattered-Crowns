#===============================================================================
# Shattered Crowns - Plugin - Gen_9_Pack Move Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Move.define format
#===============================================================================

GameData::Move.define :DIRECLAW do |m|
  m.name          "Dire Claw"
  m.type          :POISON
  m.category      :Physical
  m.power         80
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.function_code "PoisonParalyzeOrSleepTarget"
  m.effect_chance 50
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user may critically hit with its ruinous claws. May also leave the target poisoned, paralyzed, or asleep."
end

GameData::Move.define :SPRINGTIDESTORM do |m|
  m.name          "Springtide Storm"
  m.type          :FAIRY
  m.category      :Special
  m.power         100
  m.accuracy      80
  m.total_pp      5
  m.target        :AllNearFoes
  m.function_code "LowerTargetAttack1"
  m.effect_chance 30
  m.flags         :Wind, :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user wraps winds of fierce emotion around opponents. This may lower their Attack stats."
end

GameData::Move.define :RAGINGFURY do |m|
  m.name          "Raging Fury"
  m.type          :FIRE
  m.category      :Physical
  m.power         120
  m.accuracy      100
  m.total_pp      10
  m.target        :RandomNearFoe
  m.function_code "MultiTurnAttackConfuseUserAtEnd"
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user rampages around spewing flames for two to three turns. The user then becomes confused."
end

GameData::Move.define :WAVECRASH do |m|
  m.name          "Wave Crash"
  m.type          :WATER
  m.category      :Physical
  m.power         120
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "RecoilThirdOfDamageDealt"
  m.effect_chance 100
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user shrouds itself in water and slams into the target. This also damages the user."
end

GameData::Move.define :CHLOROBLAST do |m|
  m.name          "Chloroblast"
  m.type          :GRASS
  m.category      :Special
  m.power         150
  m.accuracy      95
  m.total_pp      5
  m.target        :NearOther
  m.function_code "RecoilHalfOfTotalHP"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user launches its amassed chlorophyll to inflict damage on the target. This also damages the user."
end

GameData::Move.define :MOUNTAINGALE do |m|
  m.name          "Mountain Gale"
  m.type          :ICE
  m.category      :Physical
  m.power         100
  m.accuracy      85
  m.total_pp      10
  m.target        :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user hurls giant chunks of ice at the target. This may also make the target flinch."
end

GameData::Move.define :HEADLONGRUSH do |m|
  m.name          "Headlong Rush"
  m.type          :GROUND
  m.category      :Physical
  m.power         120
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "LowerUserDefSpDef1"
  m.flags         :Contact, :Punching, :CanProtect, :CanMirrorMove
  m.description   "The user rams into the target in a full-body tackle. This lowers the user’s Defense and Sp. Def stats."
end

GameData::Move.define :BARBBARRAGE do |m|
  m.name          "Barb Barrage"
  m.type          :POISON
  m.category      :Physical
  m.power         60
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "DoublePowerIfTargetPoisonedPoisonTarget"
  m.effect_chance 50
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "Fires toxic barbs which may poison the target. Power is doubled if the target is poisoned."
end

GameData::Move.define :ESPERWING do |m|
  m.name          "Esper Wing"
  m.type          :PSYCHIC
  m.category      :Special
  m.power         80
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "RaiseUserSpeed1"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove, :HighCriticalHitRate
  m.description   "The user slashes with aura-enriched wings which boosts its Speed stat. Critical hits land more easily."
end

GameData::Move.define :BITTERMALICE do |m|
  m.name          "Bitter Malice"
  m.type          :GHOST
  m.category      :Special
  m.power         75
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "LowerTargetAttack1"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user attacks the target with spine-chilling resentment. This also lowers the target’s Attack stat."
end

GameData::Move.define :TRIPLEARROWS do |m|
  m.name          "Triple Arrows"
  m.type          :FIGHTING
  m.category      :Physical
  m.power         90
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "LowerTargetDefense1FlinchTarget"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove, :HighCriticalHitRate
  m.description   "The user fires arrows which may lower the target’s Defense or make it flinch. Critical hits land more easily."
end

GameData::Move.define :BLEAKWINDSTORM do |m|
  m.name          "Bleakwind Storm"
  m.type          :FLYING
  m.category      :Special
  m.power         100
  m.accuracy      80
  m.total_pp      10
  m.target        :AllNearFoes
  m.function_code "LowerTargetSpeed1AlwaysHitsInRain"
  m.effect_chance 30
  m.flags         :CanProtect, :CanMirrorMove, :Wind
  m.description   "The user attacks with cold winds that cause opposing Pokémon to tremble. This may lower their Speed stats."
end

GameData::Move.define :WILDBOLTSTORM do |m|
  m.name          "Wildbolt Storm"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         100
  m.accuracy      80
  m.total_pp      10
  m.target        :AllNearFoes
  m.function_code "ParalyzeTargetAlwaysHitsInRain"
  m.effect_chance 20
  m.flags         :CanProtect, :CanMirrorMove, :Wind
  m.description   "The user attacks opposing Pokémon with a thunderous tempest. This may also leave them paralyzed."
end

GameData::Move.define :SANDSEARSTORM do |m|
  m.name          "Sandsear Storm"
  m.type          :GROUND
  m.category      :Special
  m.power         100
  m.accuracy      80
  m.total_pp      10
  m.target        :AllNearFoes
  m.function_code "BurnTargetAlwaysHitsInRain"
  m.effect_chance 20
  m.flags         :CanProtect, :CanMirrorMove, :Wind
  m.description   "The user wraps fierce winds and hot sand around opponents. This may leave them with a burn."
end

GameData::Move.define :LUNARBLESSING do |m|
  m.name          "Lunar Blessing"
  m.type          :PSYCHIC
  m.category      :Status
  m.total_pp      5
  m.target        :UserAndAllies
  m.function_code "HealUserAndAlliesQuarterOfTotalHPCureStatus"
  m.flags         :ZPower_ResetStats
  m.description   "The user is blessed by the moon, restoring HP and curing status conditions of itself and allies."
end

GameData::Move.define :PSYSHIELDBASH do |m|
  m.name          "Psyshield Bash"
  m.type          :PSYCHIC
  m.category      :Physical
  m.power         70
  m.accuracy      90
  m.total_pp      10
  m.target        :NearOther
  m.function_code "RaiseUserDefense1"
  m.effect_chance 100
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "Cloaking itself in psychic energy, the user slams into the target. This raises the user’s Defense."
end

GameData::Move.define :POWERSHIFT do |m|
  m.name          "Power Shift"
  m.type          :NORMAL
  m.category      :Status
  m.total_pp      10
  m.target        :User
  m.function_code "UserSwapBaseAtkDef"
  m.flags         :CannotMetronome
  m.description   "The user swaps its Attack and Defense stats."
end

GameData::Move.define :STONEAXE do |m|
  m.name          "Stone Axe"
  m.type          :ROCK
  m.category      :Physical
  m.power         65
  m.accuracy      90
  m.total_pp      15
  m.target        :NearOther
  m.function_code "SplintersTargetGen8AddStealthRocksGen9"
  m.effect_chance 100
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :Slicing
  m.description   "The user swings at the opponent with its stone axes. May leave floating rocks around the target."
end

GameData::Move.define :MYSTICALPOWER do |m|
  m.name          "Mystical Power"
  m.type          :PSYCHIC
  m.category      :Special
  m.power         70
  m.accuracy      90
  m.total_pp      10
  m.target        :NearOther
  m.function_code "RaiseUserSpAtk1"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user attacks by emitting a mysterious power. This also boosts the user’s Sp. Atk stat."
end

GameData::Move.define :VICTORYDANCE do |m|
  m.name          "Victory Dance"
  m.type          :FIGHTING
  m.category      :Status
  m.total_pp      10
  m.target        :User
  m.function_code "RaiseUserAtkDefSpd1"
  m.flags         :Dance, :ZPower_ResetStats
  m.description   "The user performs an intense dance to usher in victory, raising its Attack, Defense, and Speed."
end

GameData::Move.define :SHELTER do |m|
  m.name          "Shelter"
  m.type          :STEEL
  m.category      :Status
  m.total_pp      10
  m.target        :User
  m.function_code "RaiseUserDefense2"
  m.flags         :ZPower_ResetStats
  m.description   "The user makes its skin as hard as an iron shield, sharply boosting its Defense stat."
end

GameData::Move.define :INFERNALPARADE do |m|
  m.name          "Infernal Parade"
  m.type          :GHOST
  m.category      :Special
  m.power         60
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.function_code "DoublePowerIfTargetStatusProblemBurnTarget"
  m.effect_chance 30
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "Hurls fireballs which may cause burns. Power is doubled if the target has a status condition."
end

GameData::Move.define :CEASELESSEDGE do |m|
  m.name          "Ceaseless Edge"
  m.type          :DARK
  m.category      :Physical
  m.power         65
  m.accuracy      90
  m.total_pp      15
  m.target        :NearOther
  m.function_code "SplintersTargetGen8AddSpikesGen9"
  m.effect_chance 100
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :Slicing
  m.description   "The user slashes the opponent with its shell blade. May leave spikes around the target."
end

GameData::Move.define :TAKEHEART do |m|
  m.name          "Take Heart"
  m.type          :PSYCHIC
  m.category      :Status
  m.total_pp      10
  m.target        :User
  m.function_code "RaiseUserSpAtkSpDef1CureStatus"
  m.flags         :ZPower_ResetStats
  m.description   "The user lifts its spirits, curing its own status conditions and boosting its Sp. Atk and Sp. Def stats."
end

GameData::Move.define :AQUACUTTER do |m|
  m.name          "Aqua Cutter"
  m.type          :WATER
  m.category      :Physical
  m.power         70
  m.accuracy      100
  m.total_pp      20
  m.target        :NearOther
  m.flags         :CanProtect, :CanMirrorMove, :Slicing, :HighCriticalHitRate
  m.description   "The user expels pressurized water to cut at the target like a blade. Critical hits land more easily."
end

GameData::Move.define :AQUASTEP do |m|
  m.name          "Aqua Step"
  m.type          :WATER
  m.category      :Physical
  m.power         80
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "RaiseUserSpeed1"
  m.effect_chance 100
  m.flags         :Dance, :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user attacks the target using light and fluid dance steps. This also boosts the user’s Speed stat."
end

GameData::Move.define :ARMORCANNON do |m|
  m.name          "Armor Cannon"
  m.type          :FIRE
  m.category      :Special
  m.power         120
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "LowerUserDefSpDef1"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user shoots its own armor out as blazing projectiles. This lowers the user’s Defense and Sp. Def."
end

GameData::Move.define :AXEKICK do |m|
  m.name          "Axe Kick"
  m.type          :FIGHTING
  m.category      :Physical
  m.power         120
  m.accuracy      90
  m.total_pp      10
  m.target        :NearOther
  m.function_code "CrashDamageIfFailsConfuseTarget"
  m.effect_chance 30
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "Performs a downward kick which may confuse the target. The user takes damage if it misses."
end

GameData::Move.define :BITTERBLADE do |m|
  m.name          "Bitter Blade"
  m.type          :FIRE
  m.category      :Physical
  m.power         90
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "HealUserByHalfOfDamageDone"
  m.flags         :Contact, :CanProtect, :Slicing, :CanMirrorMove
  m.description   "A spiteful slashing attack. The user’s HP is restored by up to half the damage taken by the target."
end

GameData::Move.define :BLAZINGTORQUE do |m|
  m.name          "Blazing Torque"
  m.type          :FIRE
  m.category      :Physical
  m.power         80
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "StarmobileBurnTarget"
  m.effect_chance 30
  m.flags         :CanProtect, :CannotMetronome
  m.description   "This move is only used by a Starmobile. It may leave the target with a burn."
end

GameData::Move.define :CHILLINGWATER do |m|
  m.name          "Chilling Water"
  m.type          :WATER
  m.category      :Special
  m.power         50
  m.accuracy      100
  m.total_pp      20
  m.target        :NearOther
  m.function_code "LowerTargetAttack1"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user showers the target with frigid water. This also lowers the target's Attack stat."
end

GameData::Move.define :CHILLYRECEPTION do |m|
  m.name          "Chilly Reception"
  m.type          :ICE
  m.category      :Status
  m.total_pp      10
  m.target        :BothSides
  m.function_code "SwitchOutUserStartHailWeather"
  m.flags         :CannotMetronome, :ZPower_HealSwitch
  m.description   "The user tells a chillingly bad joke and switches out. This summons a snowstorm lasting five turns."
end

GameData::Move.define :COLLISIONCOURSE do |m|
  m.name          "Collision Course"
  m.type          :FIGHTING
  m.category      :Physical
  m.power         100
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "IncreasePowerSuperEffective"
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "A massive prehistoric explosion. This move’s power is boosted more than usual if it’s a supereffective hit."
end

GameData::Move.define :COMBATTORQUE do |m|
  m.name          "Combat Torque"
  m.type          :FIGHTING
  m.category      :Physical
  m.power         100
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "StarmobileParalyzeTarget"
  m.effect_chance 30
  m.flags         :CanProtect, :CannotMetronome
  m.description   "This move is only used by a Starmobile. It may paralyze the target."
end

GameData::Move.define :COMEUPPANCE do |m|
  m.name          "Comeuppance"
  m.type          :DARK
  m.category      :Physical
  m.power         1
  m.accuracy      100
  m.total_pp      10
  m.target        :None
  m.function_code "CounterDamagePlusHalf"
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user retaliates with much greater force against the opponent that last inflicted damage on it."
end

GameData::Move.define :DOODLE do |m|
  m.name          "Doodle"
  m.type          :NORMAL
  m.category      :Status
  m.accuracy      100
  m.total_pp      10
  m.target        :NearFoe
  m.function_code "SetUserAlliesAbilityToTargetAbility"
  m.flags         :CannotMetronome, :ZPower_SPEED_1
  m.description   "The user captures a quick sketch, changing the Abilities of the user and its allies to the target's."
end

GameData::Move.define :DOUBLESHOCK do |m|
  m.name          "Double Shock"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         120
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "UserLosesElectricType"
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user attacks by discharging all of its electricity. The user will no longer be Electric type."
end

GameData::Move.define :ELECTRODRIFT do |m|
  m.name          "Electro Drift"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         100
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "IncreasePowerSuperEffective"
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "A futuristic electric strike. This move’s power is boosted more than usual if it’s a supereffective hit."
end

GameData::Move.define :FILLETAWAY do |m|
  m.name          "Fillet Away"
  m.type          :NORMAL
  m.category      :Status
  m.total_pp      10
  m.target        :User
  m.function_code "RaiseUserAtkSpAtkSpeed2LoseHalfOfTotalHP"
  m.flags         :CannotMetronome, :ZPower_HealUser
  m.description   "The user sharply boosts its Attack, Sp. Atk, and Speed stats by using its own HP."
end

GameData::Move.define :FLOWERTRICK do |m|
  m.name          "Flower Trick"
  m.type          :GRASS
  m.category      :Physical
  m.power         70
  m.total_pp      10
  m.target        :NearOther
  m.function_code "AlwaysCriticalHit"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user throws a rigged bouquet of flowers at the target, which always hits and lands a critical hit."
end

GameData::Move.define :GIGATONHAMMER do |m|
  m.name          "Gigaton Hammer"
  m.type          :STEEL
  m.category      :Physical
  m.power         160
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "CantSelectConsecutiveTurns"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user attacks with its huge hammer. This move can’t be used twice in a row."
end

GameData::Move.define :GLAIVERUSH do |m|
  m.name          "Glaive Rush"
  m.type          :DRAGON
  m.category      :Physical
  m.power         120
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "UserVulnerableUntilNextAction"
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user becomes highly vulnerable to attacks until its next turn after using this move."
end

GameData::Move.define :HYPERDRILL do |m|
  m.name          "Hyper Drill"
  m.type          :NORMAL
  m.category      :Physical
  m.power         100
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.flags         :Contact, :CanMirrorMove, :CannotMetronome
  m.description   "The user spins the pointed part of its body at high speed to pierce the target, ignoring protections."
end

GameData::Move.define :ICESPINNER do |m|
  m.name          "Ice Spinner"
  m.type          :ICE
  m.category      :Physical
  m.power         80
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.function_code "RemoveTerrainIceSpinner"
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user spins into the target with feet covered in thin ice. This also destroys the terrain."
end

GameData::Move.define :JETPUNCH do |m|
  m.name          "Jet Punch"
  m.type          :WATER
  m.category      :Physical
  m.power         60
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.priority      1
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :CannotMetronome, :Punching
  m.description   "The user summons a torrent around its fist and punches at blinding speed. Always goes first."
end

GameData::Move.define :KOWTOWCLEAVE do |m|
  m.name          "Kowtow Cleave"
  m.type          :DARK
  m.category      :Physical
  m.power         85
  m.total_pp      10
  m.target        :NearOther
  m.flags         :Slicing, :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user kowtows to make the target lower its guard, then slashes. This attack never misses."
end

GameData::Move.define :LASTRESPECTS do |m|
  m.name          "Last Respects"
  m.type          :GHOST
  m.category      :Physical
  m.power         50
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "IncreasePowerEachFaintedAlly"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user attacks to avenge its allies. The move’s power increases for each defeated ally."
end

GameData::Move.define :LUMINACRASH do |m|
  m.name          "Lumina Crash"
  m.type          :PSYCHIC
  m.category      :Special
  m.power         80
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "LowerTargetSpDef2"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user attacks by unleashing a peculiar, mind-bending light that harshly lowers the target’s Sp. Def."
end

GameData::Move.define :MAGICALTORQUE do |m|
  m.name          "Magical Torque"
  m.type          :FAIRY
  m.category      :Physical
  m.power         100
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "StarmobileConfuseTarget"
  m.effect_chance 30
  m.flags         :CanProtect, :CannotMetronome
  m.description   "This move is only used by a Starmobile. It may confuse the target."
end

GameData::Move.define :MAKEITRAIN do |m|
  m.name          "Make It Rain"
  m.type          :STEEL
  m.category      :Special
  m.power         120
  m.accuracy      100
  m.total_pp      5
  m.target        :AllNearFoes
  m.function_code "AddMoneyGainedFromBattleLowerUserSpAtk1"
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user throws out a huge mass of coins, lowering its Sp. Atk stat. Money is earned after the battle."
end

GameData::Move.define :MORTALSPIN do |m|
  m.name          "Mortal Spin"
  m.type          :POISON
  m.category      :Physical
  m.power         30
  m.accuracy      100
  m.total_pp      15
  m.target        :AllNearFoes
  m.function_code "RemoveUserBindingAndEntryHazardsPoisonTarget"
  m.effect_chance 100
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "Performs a spin that eliminates certain traps and hazards. This also poisons opposing Pokémon."
end

GameData::Move.define :NOXIOUSTORQUE do |m|
  m.name          "Noxious Torque"
  m.type          :POISON
  m.category      :Physical
  m.power         100
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "StarmobilePoisonTarget"
  m.effect_chance 30
  m.flags         :CanProtect, :CannotMetronome
  m.description   "This move is only used by a Starmobile. It may poison the target."
end

GameData::Move.define :ORDERUP do |m|
  m.name          "Order Up"
  m.type          :DRAGON
  m.category      :Physical
  m.power         80
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "RaiseUserStat1Commander"
  m.effect_chance 100
  m.flags         :CanProtect, :CannotMetronome
  m.description   "If used when the user has a Tatsugiri in its mouth, a boost occurs based on its form."
end

GameData::Move.define :POPULATIONBOMB do |m|
  m.name          "Population Bomb"
  m.type          :NORMAL
  m.category      :Physical
  m.power         20
  m.accuracy      90
  m.total_pp      10
  m.target        :NearOther
  m.function_code "HitTenTimes"
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :CannotMetronome, :Slicing
  m.description   "The user’s fellows gather in droves to perform a combo attack that hits one to ten times in a row."
end

GameData::Move.define :POUNCE do |m|
  m.name          "Pounce"
  m.type          :BUG
  m.category      :Physical
  m.power         50
  m.accuracy      100
  m.total_pp      20
  m.target        :NearOther
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 100
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user attacks by pouncing on the target. This also lowers the target’s Speed stat."
end

GameData::Move.define :RAGEFIST do |m|
  m.name          "Rage Fist"
  m.type          :GHOST
  m.category      :Physical
  m.power         50
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "IncreasePowerEachTimeHit"
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :CannotMetronome, :Punching
  m.description   "The user converts its rage into energy to attack. The move’s power increases every time the user is hit."
end

GameData::Move.define :RAGINGBULL do |m|
  m.name          "Raging Bull"
  m.type          :NORMAL
  m.category      :Physical
  m.power         90
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "TypeIsUserSecondTypeRemoveScreens"
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user charges and destroys enemy barriers. This move’s type depends on the user’s form."
end

GameData::Move.define :REVIVALBLESSING do |m|
  m.name          "Revival Blessing"
  m.type          :NORMAL
  m.category      :Status
  m.total_pp      1
  m.target        :User
  m.function_code "RevivePokemonHalfHP"
  m.flags         :CannotMetronome, :ZPower_HealUser
  m.description   "The user revives a party Pokémon that has fainted and restores half their max HP."
end

GameData::Move.define :RUINATION do |m|
  m.name          "Ruination"
  m.type          :DARK
  m.category      :Special
  m.power         1
  m.accuracy      90
  m.total_pp      10
  m.target        :NearOther
  m.function_code "FixedDamageHalfTargetHP"
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user summons a ruinous disaster. This cuts the target’s HP in half."
end

GameData::Move.define :SALTCURE do |m|
  m.name          "Salt Cure"
  m.type          :ROCK
  m.category      :Physical
  m.power         40
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.function_code "StartSaltCureTarget"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user salt cures the target, inflicting damage every turn. Steel and Water types take more damage."
end

GameData::Move.define :SHEDTAIL do |m|
  m.name          "Shed Tail"
  m.type          :NORMAL
  m.category      :Status
  m.total_pp      10
  m.target        :User
  m.function_code "UserMakeSubstituteSwitchOut"
  m.flags         :CannotMetronome, :ZPower_HealSwitch
  m.description   "The user creates a substitute and switches places with a party Pokémon in waiting."
end

GameData::Move.define :SILKTRAP do |m|
  m.name          "Silk Trap"
  m.type          :BUG
  m.category      :Status
  m.total_pp      10
  m.target        :User
  m.priority      4
  m.function_code "ProtectUserFromDamagingMovesSilkTrap"
  m.flags         :CannotMetronome, :ZPower_SPEED_1
  m.description   "User spins a silken trap to protect itself. Lowers the Speed of any that make direct contact."
end

GameData::Move.define :SNOWSCAPE do |m|
  m.name          "Snowscape"
  m.type          :ICE
  m.category      :Status
  m.total_pp      10
  m.target        :BothSides
  m.function_code "StartHailWeather"
  m.flags         :CannotMetronome, :ZPower_SPECIAL_DEFENSE_1
  m.description   "Summons a five-turn snowstorm that boosts the Defense of Ice-type Pokémon."
end

GameData::Move.define :SPICYEXTRACT do |m|
  m.name          "Spicy Extract"
  m.type          :GRASS
  m.category      :Status
  m.total_pp      15
  m.target        :NearOther
  m.function_code "RaiseTargetAtkLowerTargetDef2"
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome, :ZPower_ATTACK_2
  m.description   "Emits a spicy extract which raises the target’s Attack and lowers Defense by two stages each."
end

GameData::Move.define :SPINOUT do |m|
  m.name          "Spin Out"
  m.type          :STEEL
  m.category      :Physical
  m.power         100
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "LowerUserSpeed2"
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user inflicts damage on the target with a furious spin. This harshly lowers the user’s Speed."
end

GameData::Move.define :TIDYUP do |m|
  m.name          "Tidy Up"
  m.type          :NORMAL
  m.category      :Status
  m.total_pp      10
  m.target        :User
  m.function_code "RaiseUserAtkSpd1RemoveHazardsSubstitutes"
  m.effect_chance 100
  m.flags         :CannotMetronome, :ZPower_ResetStats
  m.description   "Clears hazards and substitutes from the field. This also boosts the user’s Attack and Speed."
end

GameData::Move.define :TORCHSONG do |m|
  m.name          "Torch Song"
  m.type          :FIRE
  m.category      :Special
  m.power         80
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "RaiseUserSpAtk1"
  m.effect_chance 100
  m.flags         :Sound, :CanProtect, :CanMirrorMove
  m.description   "The user blows out raging flames as if singing a song. This also boosts the user’s Sp. Atk stat."
end

GameData::Move.define :TRAILBLAZE do |m|
  m.name          "Trailblaze"
  m.type          :GRASS
  m.category      :Physical
  m.power         50
  m.accuracy      100
  m.total_pp      20
  m.target        :NearOther
  m.function_code "RaiseUserSpeed1"
  m.effect_chance 100
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user attacks suddenly as if leaping out from tall grass. This boosts the user's Speed stat."
end

GameData::Move.define :TRIPLEDIVE do |m|
  m.name          "Triple Dive"
  m.type          :WATER
  m.category      :Physical
  m.power         30
  m.accuracy      95
  m.total_pp      10
  m.target        :NearOther
  m.function_code "HitThreeTimes"
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user performs a perfectly timed triple dive, hitting the target three times in a row."
end

GameData::Move.define :TWINBEAM do |m|
  m.name          "Twin Beam"
  m.type          :PSYCHIC
  m.category      :Special
  m.power         40
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "HitTwoTimes"
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user shoots mystical beams from its eyes to inflict damage. The target is hit twice in a row."
end

GameData::Move.define :WICKEDTORQUE do |m|
  m.name          "Wicked Torque"
  m.type          :DARK
  m.category      :Physical
  m.power         80
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "StarmobileSleepTarget"
  m.effect_chance 10
  m.flags         :CanProtect, :CannotMetronome
  m.description   "This move is only used by a Starmobile. It may put the target to sleep."
end

GameData::Move.define :HYDROSTEAM do |m|
  m.name          "Hydro Steam"
  m.type          :WATER
  m.category      :Special
  m.power         80
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.function_code "IncreasePowerInSunWeather"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user blasts the target with boiling-hot water whose power is boosted in harsh sunlight."
end

GameData::Move.define :PSYBLADE do |m|
  m.name          "Psyblade"
  m.type          :PSYCHIC
  m.category      :Physical
  m.power         80
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.function_code "IncreasePowerInElectricTerrain"
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :Slicing
  m.description   "The user rends the target with an ethereal blade whose power is boosted on Electric Terrain."
end

GameData::Move.define :BLOODMOON do |m|
  m.name          "Blood Moon"
  m.type          :NORMAL
  m.category      :Special
  m.power         140
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "CantSelectConsecutiveTurns"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user unleashes the full brunt of its spirit from a blood moon. This move can't be used twice in a row."
end

GameData::Move.define :MATCHAGOTCHA do |m|
  m.name          "Matcha Gotcha"
  m.type          :GRASS
  m.category      :Special
  m.power         80
  m.accuracy      90
  m.total_pp      15
  m.target        :AllNearFoes
  m.function_code "HealUserByHalfOfDamageDoneBurnTarget"
  m.effect_chance 20
  m.flags         :CanProtect, :CanMirrorMove, :ThawsUser
  m.description   "Blasts opponents with hot tea. Heals the user by half the damage dealt and may also burn targets."
end

GameData::Move.define :SYRUPBOMB do |m|
  m.name          "Syrup Bomb"
  m.type          :GRASS
  m.category      :Special
  m.power         60
  m.accuracy      85
  m.total_pp      10
  m.target        :NearOther
  m.function_code "LowerTargetSpeedOverTime"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove, :Bomb
  m.description   "An explosion of sticky candy syrup, which drop the target's Speed stat each turn for three turns."
end

GameData::Move.define :IVYCUDGEL do |m|
  m.name          "Ivy Cudgel"
  m.type          :GRASS
  m.category      :Physical
  m.power         100
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "TypeIsUserSecondType"
  m.flags         :CanProtect, :CanMirrorMove, :HighCriticalHitRate
  m.description   "An ivy-wrapped cudgel strike with a high critical-hit ratio. Type changes based on the user's Mask."
end

GameData::Move.define :ELECTROSHOT do |m|
  m.name          "Electro Shot"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         130
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "TwoTurnAttackOneTurnInRainRaiseUserSpAtk1"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "A two-turn attack. The user boosts its Sp. Atk and then fires a high-voltage shot."
end

GameData::Move.define :TERASTARSTORM do |m|
  m.name          "Tera Starstorm"
  m.type          :NORMAL
  m.category      :Special
  m.power         120
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "TerapagosCategoryDependsOnHigherDamage"
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "When used by Terapagos in its Stellar Form, this move damages all opposing Pokémon."
end

GameData::Move.define :FICKLEBEAM do |m|
  m.name          "Fickle Beam"
  m.type          :DRAGON
  m.category      :Special
  m.power         80
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "RandomlyDealsDoubleDamage"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "Sometimes all of the user's heads shoot beams in unison, doubling this move's power."
end

GameData::Move.define :BURNINGBULWARK do |m|
  m.name          "Burning Bulwark"
  m.type          :FIRE
  m.category      :Status
  m.total_pp      10
  m.target        :User
  m.priority      4
  m.function_code "ProtectUserBurningBulwark"
  m.flags         :ZPower_DEFENSE_1
  m.description   "Protects the user from attacks. Also burns any attacker that makes contact with the user."
end

GameData::Move.define :THUNDERCLAP do |m|
  m.name          "Thunderclap"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         70
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.priority      1
  m.function_code "FailsIfTargetActed"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "This move enables the user to attack first. It fails if the target is not readying an attack, however."
end

GameData::Move.define :MIGHTYCLEAVE do |m|
  m.name          "Mighty Cleave"
  m.type          :ROCK
  m.category      :Physical
  m.power         95
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.flags         :Contact, :CanMirrorMove, :Slicing
  m.description   "The user cleaves the target. This move hits even if the target protects itself."
end

GameData::Move.define :TACHYONCUTTER do |m|
  m.name          "Tachyon Cutter"
  m.type          :STEEL
  m.category      :Special
  m.power         50
  m.total_pp      10
  m.target        :NearOther
  m.function_code "HitTwoTimes"
  m.flags         :CanProtect, :CanMirrorMove, :Slicing
  m.description   "The user attacks by launching particle blades at the target twice in a row. This attack never misses."
end

GameData::Move.define :HARDPRESS do |m|
  m.name          "Hard Press"
  m.type          :STEEL
  m.category      :Physical
  m.power         1
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "PowerHigherWithTargetHP100PowerRange"
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The target is crushed with great force. The attack is more powerful the more HP the target has left."
end

GameData::Move.define :DRAGONCHEER do |m|
  m.name          "Dragon Cheer"
  m.type          :DRAGON
  m.category      :Status
  m.total_pp      15
  m.target        :AllAllies
  m.function_code "RaiseAlliesCriticalHitRate1DragonTypes2"
  m.flags         :ZPower_CriticalHit
  m.description   "The user raises its allies’ critical hit ratio with a draconic cry. This rouses Dragon types more."
end

GameData::Move.define :ALLURINGVOICE do |m|
  m.name          "Alluring Voice"
  m.type          :FAIRY
  m.category      :Special
  m.power         80
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "ConfuseTargetIfTargetStatsRaisedThisTurn"
  m.effect_chance 100
  m.flags         :Sound, :CanProtect, :CanMirrorMove
  m.description   "Attacks using an angelic voice. This confuses the target if its stats have been raised this turn."
end

GameData::Move.define :TEMPERFLARE do |m|
  m.name          "Temper Flare"
  m.type          :FIRE
  m.category      :Physical
  m.power         75
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "DoublePowerIfUserLastMoveFailed"
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user attacks driven by frustration. Power increases if the user's previous move failed."
end

GameData::Move.define :SUPERCELLSLAM do |m|
  m.name          "Supercell Slam"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         100
  m.accuracy      95
  m.total_pp      15
  m.target        :NearOther
  m.function_code "CrashDamageIfFails"
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user drops onto the target with its electrified body. If it misses, the user is hurt instead."
end

GameData::Move.define :PSYCHICNOISE do |m|
  m.name          "Psychic Noise"
  m.type          :PSYCHIC
  m.category      :Special
  m.power         75
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "DisableTargetHealingMoves2Turns"
  m.effect_chance 100
  m.flags         :Sound, :CanProtect, :CanMirrorMove
  m.description   "Attacks the target with unpleasant sound waves. Prevents the target from healing for two turns."
end

GameData::Move.define :UPPERHAND do |m|
  m.name          "Upper Hand"
  m.type          :FIGHTING
  m.category      :Physical
  m.power         65
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.priority      3
  m.function_code "FlinchTargetFailsIfTargetNotUsingPriorityMove"
  m.effect_chance 100
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "An attack that hits first and makes the target flinch. Fails if the target isn't using a high priority move."
end

GameData::Move.define :MALIGNANTCHAIN do |m|
  m.name          "Malignant Chain"
  m.type          :POISON
  m.category      :Special
  m.power         100
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "BadPoisonTarget"
  m.effect_chance 50
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "Wraps the target in a toxic, corrosive chain. This may also leave the target badly poisoned."
end

GameData::Move.define :NIHILLIGHT do |m|
  m.name          "Nihil Light"
  m.type          :DRAGON
  m.category      :Special
  m.power         200
  m.accuracy      100
  m.total_pp      10
  m.target        :AllNearFoes
  m.function_code "IgnoreTargetDefSpDefEvaStatStagesHitFairyType"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "A powerful light that defies nature, striking Fairy types and ignoring target stat changes."
end

