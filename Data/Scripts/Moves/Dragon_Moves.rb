#===============================================================================
# Shattered Crowns - Dragon Type Move Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Move.define format
#===============================================================================

GameData::Move.define :ETERNABEAM do |m|
  m.name          "Eternabeam"
  m.type          :DRAGON
  m.category      :Special
  m.power         160
  m.accuracy      90
  m.total_pp      5
  m.target        :NearOther
  m.function_code "AttackAndSkipNextTurn"
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "This is Eternatus's most powerful attack in its original form. The user can't move on the next turn."
end

GameData::Move.define :DRAGONENERGY do |m|
  m.name          "Dragon Energy"
  m.type          :DRAGON
  m.category      :Special
  m.power         150
  m.accuracy      100
  m.total_pp      5
  m.target        :AllNearFoes
  m.function_code "PowerHigherWithUserHP"
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "Converts life-force into power to attack. The lower the user's HP, the lower the move's power."
end

GameData::Move.define :ROAROFTIME do |m|
  m.name          "Roar of Time"
  m.type          :DRAGON
  m.category      :Special
  m.power         150
  m.accuracy      90
  m.total_pp      5
  m.target        :NearOther
  m.function_code "AttackAndSkipNextTurn"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user blasts the target with power that distorts even time. The user must rest on the next turn."
end

GameData::Move.define :DRACOMETEOR do |m|
  m.name          "Draco Meteor"
  m.type          :DRAGON
  m.category      :Special
  m.power         130
  m.accuracy      90
  m.total_pp      5
  m.target        :NearOther
  m.function_code "LowerUserSpAtk2"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "Comets are summoned down from the sky. The attack's recoil harshly reduces the user's Sp. Atk stat."
end

GameData::Move.define :OUTRAGE do |m|
  m.name          "Outrage"
  m.type          :DRAGON
  m.category      :Physical
  m.power         120
  m.accuracy      100
  m.total_pp      10
  m.target        :RandomNearFoe
  m.function_code "MultiTurnAttackConfuseUserAtEnd"
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user rampages and attacks for two to three turns. It then becomes confused, however."
end

GameData::Move.define :CLANGINGSCALES do |m|
  m.name          "Clanging Scales"
  m.type          :DRAGON
  m.category      :Special
  m.power         110
  m.accuracy      100
  m.total_pp      5
  m.target        :AllNearFoes
  m.function_code "LowerUserDefense1"
  m.flags         :CanProtect, :CanMirrorMove, :Sound
  m.description   "The user rubs its scales and makes a huge noise. Also lowers the user's Defense stat."
end

GameData::Move.define :COREENFORCER do |m|
  m.name          "Core Enforcer"
  m.type          :DRAGON
  m.category      :Special
  m.power         100
  m.accuracy      100
  m.total_pp      10
  m.target        :AllNearFoes
  m.function_code "NegateTargetAbilityIfTargetActed"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "If the target has already moved this turn, the effect of its Ability is negated."
end

GameData::Move.define :DRAGONRUSH do |m|
  m.name          "Dragon Rush"
  m.type          :DRAGON
  m.category      :Physical
  m.power         100
  m.accuracy      75
  m.total_pp      10
  m.target        :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 20
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :TramplesMinimize
  m.description   "The user tackles the foe while exhibiting overwhelming menace. It may also make the target flinch."
end

GameData::Move.define :DYNAMAXCANNON do |m|
  m.name          "Dynamax Cannon"
  m.type          :DRAGON
  m.category      :Special
  m.power         100
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "DoubleDamageOnDynamaxTargets"
  m.flags         :CanProtect, :CannotMetronome
  m.description   "The user unleashes a strong beam from its core."
end

GameData::Move.define :SPACIALREND do |m|
  m.name          "Spacial Rend"
  m.type          :DRAGON
  m.category      :Special
  m.power         100
  m.accuracy      95
  m.total_pp      5
  m.target        :NearOther
  m.flags         :CanProtect, :CanMirrorMove, :HighCriticalHitRate
  m.description   "The user tears the target along with the space around it. Critical hits land more easily."
end

GameData::Move.define :DRAGONHAMMER do |m|
  m.name          "Dragon Hammer"
  m.type          :DRAGON
  m.category      :Physical
  m.power         90
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user uses its body like a hammer to attack the target and inflict damage."
end

GameData::Move.define :DRAGONPULSE do |m|
  m.name          "Dragon Pulse"
  m.type          :DRAGON
  m.category      :Special
  m.power         85
  m.accuracy      100
  m.total_pp      10
  m.target        :Other
  m.flags         :CanProtect, :CanMirrorMove, :Pulse
  m.description   "The target is attacked with a shock wave generated by the user's gaping mouth."
end

GameData::Move.define :DRAGONCLAW do |m|
  m.name          "Dragon Claw"
  m.type          :DRAGON
  m.category      :Physical
  m.power         80
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user slashes the target with huge, sharp claws."
end

GameData::Move.define :BREAKINGSWIPE do |m|
  m.name          "Breaking Swipe"
  m.type          :DRAGON
  m.category      :Physical
  m.power         60
  m.accuracy      100
  m.total_pp      15
  m.target        :AllNearFoes
  m.function_code "LowerTargetAttack1"
  m.effect_chance 100
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user swings its tough tail wildly and attacks all foes. This also lowers their Attack stats."
end

GameData::Move.define :DRAGONBREATH do |m|
  m.name          "Dragon Breath"
  m.type          :DRAGON
  m.category      :Special
  m.power         60
  m.accuracy      100
  m.total_pp      20
  m.target        :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 30
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user exhales a mighty gust that inflicts damage. It may also leave the target with paralysis."
end

GameData::Move.define :DRAGONTAIL do |m|
  m.name          "Dragon Tail"
  m.type          :DRAGON
  m.category      :Physical
  m.power         60
  m.accuracy      90
  m.total_pp      10
  m.target        :NearOther
  m.priority      -6
  m.function_code "SwitchOutTargetDamagingMove"
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user knocks away the target and drags out another Pokémon in its party. In the wild, the battle ends."
end

GameData::Move.define :DRAGONDARTS do |m|
  m.name          "Dragon Darts"
  m.type          :DRAGON
  m.category      :Physical
  m.power         50
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "HitTwoTimesTargetThenTargetAlly"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user attacks twice using Dreepy. If there are two targets, this move hits each one once."
end

GameData::Move.define :DUALCHOP do |m|
  m.name          "Dual Chop"
  m.type          :DRAGON
  m.category      :Physical
  m.power         40
  m.accuracy      90
  m.total_pp      15
  m.target        :NearOther
  m.function_code "HitTwoTimes"
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user attacks its target by hitting it with brutal strikes. The target is hit twice in a row."
end

GameData::Move.define :TWISTER do |m|
  m.name          "Twister"
  m.type          :DRAGON
  m.category      :Special
  m.power         40
  m.accuracy      100
  m.total_pp      20
  m.target        :AllNearFoes
  m.function_code "FlinchTargetDoublePowerIfTargetInSky"
  m.effect_chance 20
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user whips up a vicious tornado to tear at the opposing team. It may also make targets flinch."
end

GameData::Move.define :SCALESHOT do |m|
  m.name          "Scale Shot"
  m.type          :DRAGON
  m.category      :Physical
  m.power         25
  m.accuracy      90
  m.total_pp      20
  m.target        :NearOther
  m.function_code "HitTwoToFiveTimesRaiseUserSpd1LowerUserDef1"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "Attacks by shooting scales two to five times in a row. Boosts the user's Speed but lowers its Defense."
end

GameData::Move.define :DRAGONRAGE do |m|
  m.name          "Dragon Rage"
  m.type          :DRAGON
  m.category      :Special
  m.power         1
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "FixedDamage40"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "This attack hits the target with a shock wave of pure rage. This attack always inflicts 40 HP damage."
end

GameData::Move.define :CLANGOROUSSOUL do |m|
  m.name          "Clangorous Soul"
  m.type          :DRAGON
  m.category      :Status
  m.total_pp      5
  m.target        :User
  m.function_code "RaiseUserMainStats1LoseThirdOfTotalHP"
  m.flags         :Sound, :CannotMetronome, :Dance, :ZPower_HealUser
  m.description   "The user raises all its stats by using some of its HP."
end

GameData::Move.define :DRAGONDANCE do |m|
  m.name          "Dragon Dance"
  m.type          :DRAGON
  m.category      :Status
  m.total_pp      20
  m.target        :User
  m.function_code "RaiseUserAtkSpd1"
  m.flags         :Dance, :ZPower_ResetStats
  m.description   "The user vigorously performs a mystic, powerful dance that boosts its Attack and Speed stats."
end

