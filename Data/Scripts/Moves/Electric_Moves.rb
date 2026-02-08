#===============================================================================
# Shattered Crowns - Electric Type Move Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Move.define format
#===============================================================================

GameData::Move.define :BOLTSTRIKE do |m|
  m.name          "Bolt Strike"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         130
  m.accuracy      85
  m.total_pp      5
  m.target        :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 20
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user charges at its foe, surrounding itself with lightning. It may also leave the target paralyzed."
end

GameData::Move.define :VOLTTACKLE do |m|
  m.name          "Volt Tackle"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         120
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.function_code "RecoilThirdOfDamageDealtParalyzeTarget"
  m.effect_chance 10
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user electrifies itself, then charges at the foe. It causes considerable damage to the user as well."
end

GameData::Move.define :ZAPCANNON do |m|
  m.name          "Zap Cannon"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         120
  m.accuracy      50
  m.total_pp      5
  m.target        :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove, :Bomb
  m.description   "The user fires an electric blast like a cannon to inflict damage and cause paralysis."
end

GameData::Move.define :AURAWHEEL do |m|
  m.name          "Aura Wheel"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         110
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "TypeDependsOnUserMorpekoFormRaiseUserSpeed1"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "Morpeko attacks and raises its Speed with energy stored in its cheeks. Type changes with the user's form."
end

GameData::Move.define :THUNDER do |m|
  m.name          "Thunder"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         110
  m.accuracy      70
  m.total_pp      10
  m.target        :NearOther
  m.function_code "ParalyzeTargetAlwaysHitsInRainHitsTargetInSky"
  m.effect_chance 30
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "A wicked thunderbolt is dropped on the foe to inflict damage. It may also leave the target paralyzed."
end

GameData::Move.define :FUSIONBOLT do |m|
  m.name          "Fusion Bolt"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         100
  m.accuracy      100
  m.total_pp      5
  m.target        :NearOther
  m.function_code "DoublePowerAfterFusionFlare"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user throws down a giant thunderbolt. It does more damage if influenced by an enormous flame."
end

GameData::Move.define :PLASMAFISTS do |m|
  m.name          "Plasma Fists"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         100
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.function_code "NormalMovesBecomeElectric"
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :Punching, :CannotMetronome
  m.description   "The user attacks with electrically charged fists. Normal-type moves become Electric-type."
end

GameData::Move.define :THUNDERBOLT do |m|
  m.name          "Thunderbolt"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         90
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 10
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "A strong electric blast is loosed at the target. It may also leave the target with paralysis."
end

GameData::Move.define :WILDCHARGE do |m|
  m.name          "Wild Charge"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         90
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.function_code "RecoilQuarterOfDamageDealt"
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user shrouds itself in electricity and smashes into its foe. It also damages the user a little."
end

GameData::Move.define :BOLTBEAK do |m|
  m.name          "Bolt Beak"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         85
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "DoublePowerIfTargetNotActed"
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "Stabs the target with an electrified beak. Power is doubled if the user attacks first."
end

GameData::Move.define :DISCHARGE do |m|
  m.name          "Discharge"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         80
  m.accuracy      100
  m.total_pp      15
  m.target        :AllNearOthers
  m.function_code "ParalyzeTarget"
  m.effect_chance 30
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "A flare of electricity is loosed to strike the area around the user. It may also cause paralysis."
end

GameData::Move.define :OVERDRIVE do |m|
  m.name          "Overdrive"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         80
  m.accuracy      100
  m.total_pp      10
  m.target        :AllNearFoes
  m.flags         :CanProtect, :CanMirrorMove, :Sound, :CannotMetronome
  m.description   "The user attacks all foes by twanging a guitar or bass guitar, causing a huge echo and strong vibration."
end

GameData::Move.define :THUNDERCAGE do |m|
  m.name          "Thunder Cage"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         80
  m.accuracy      90
  m.total_pp      15
  m.target        :NearOther
  m.function_code "BindTarget"
  m.flags         :CanProtect, :CanMirrorMove, :CannotMetronome
  m.description   "The user traps the target in a cage of sparking electricity for four to five turns."
end

GameData::Move.define :ZINGZAP do |m|
  m.name          "Zing Zap"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         80
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "FlinchTarget"
  m.effect_chance 30
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "A strong electric blast crashes down on the target. This may also make the target flinch."
end

GameData::Move.define :THUNDERPUNCH do |m|
  m.name          "Thunder Punch"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         75
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 10
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :Punching
  m.description   "The target is punched with an electrified fist. It may also leave the target with paralysis."
end

GameData::Move.define :RISINGVOLTAGE do |m|
  m.name          "Rising Voltage"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         70
  m.accuracy      100
  m.total_pp      20
  m.target        :NearOther
  m.function_code "DoublePowerInElectricTerrain"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user attacks with electric voltage rising from the ground. Power is doubled on Electric Terrain."
end

GameData::Move.define :VOLTSWITCH do |m|
  m.name          "Volt Switch"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         70
  m.accuracy      100
  m.total_pp      20
  m.target        :NearOther
  m.function_code "SwitchOutUserDamagingMove"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "After making its attack, the user rushes back to switch places with a party Pokémon in waiting."
end

GameData::Move.define :PARABOLICCHARGE do |m|
  m.name          "Parabolic Charge"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         65
  m.accuracy      100
  m.total_pp      20
  m.target        :AllNearOthers
  m.function_code "HealUserByHalfOfDamageDone"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user attacks everything around it. The user's HP is restored by half the damage dealt."
end

GameData::Move.define :SPARK do |m|
  m.name          "Spark"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         65
  m.accuracy      100
  m.total_pp      20
  m.target        :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 30
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user throws an electrically charged tackle at the target. It may also leave the target with paralysis."
end

GameData::Move.define :THUNDERFANG do |m|
  m.name          "Thunder Fang"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         65
  m.accuracy      95
  m.total_pp      15
  m.target        :NearOther
  m.function_code "ParalyzeFlinchTarget"
  m.effect_chance 101
  m.flags         :Contact, :CanProtect, :CanMirrorMove, :Biting
  m.description   "The user bites with electrified fangs. It may also make the target flinch or leave it with paralysis."
end

GameData::Move.define :SHOCKWAVE do |m|
  m.name          "Shock Wave"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         60
  m.total_pp      20
  m.target        :NearOther
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user strikes the target with a quick jolt of electricity. This attack cannot be evaded."
end

GameData::Move.define :ELECTROWEB do |m|
  m.name          "Electroweb"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         55
  m.accuracy      95
  m.total_pp      15
  m.target        :AllNearFoes
  m.function_code "LowerTargetSpeed1"
  m.effect_chance 100
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user captures and attacks foes by using an electric net, which lowers their Speed stat."
end

GameData::Move.define :CHARGEBEAM do |m|
  m.name          "Charge Beam"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         50
  m.accuracy      90
  m.total_pp      10
  m.target        :NearOther
  m.function_code "RaiseUserSpAtk1"
  m.effect_chance 70
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "The user fires a concentrated bundle of electricity. It may also raise the user's Sp. Atk stat."
end

GameData::Move.define :THUNDERSHOCK do |m|
  m.name          "Thunder Shock"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         40
  m.accuracy      100
  m.total_pp      30
  m.target        :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 10
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "A jolt of electricity is hurled at the foe to inflict damage. It may also leave the target with paralysis."
end

GameData::Move.define :NUZZLE do |m|
  m.name          "Nuzzle"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         20
  m.accuracy      100
  m.total_pp      20
  m.target        :NearOther
  m.function_code "ParalyzeTarget"
  m.effect_chance 100
  m.flags         :Contact, :CanProtect, :CanMirrorMove
  m.description   "The user nuzzles its electrified cheeks against the target. This also leaves the target with paralysis."
end

GameData::Move.define :ELECTROBALL do |m|
  m.name          "Electro Ball"
  m.type          :ELECTRIC
  m.category      :Special
  m.power         1
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "PowerHigherWithUserFasterThanTarget"
  m.flags         :CanProtect, :CanMirrorMove, :Bomb
  m.description   "The user hurls an electric orb at the foe. It does more damage the faster the user is."
end

GameData::Move.define :CHARGE do |m|
  m.name          "Charge"
  m.type          :ELECTRIC
  m.category      :Status
  m.total_pp      20
  m.target        :User
  m.function_code "RaiseUserSpDef1PowerUpElectricMove"
  m.flags         :ZPower_SPECIAL_DEFENSE_1
  m.description   "The user boosts the power of the Electric move it uses next. It also raises the user's Sp. Def stat."
end

GameData::Move.define :EERIEIMPULSE do |m|
  m.name          "Eerie Impulse"
  m.type          :ELECTRIC
  m.category      :Status
  m.accuracy      100
  m.total_pp      15
  m.target        :NearOther
  m.function_code "LowerTargetSpAtk2"
  m.flags         :CanProtect, :CanMirrorMove, :ZPower_SPECIAL_DEFENSE_1
  m.description   "The user's body generates an eerie impulse. Harshly lowers the target's Sp. Atk stat."
end

GameData::Move.define :ELECTRICTERRAIN do |m|
  m.name          "Electric Terrain"
  m.type          :ELECTRIC
  m.category      :Status
  m.total_pp      10
  m.target        :BothSides
  m.function_code "StartElectricTerrain"
  m.flags         :ZPower_SPEED_1
  m.description   "The user electrifies the ground for five turns. Pokémon on the ground no longer fall asleep."
end

GameData::Move.define :ELECTRIFY do |m|
  m.name          "Electrify"
  m.type          :ELECTRIC
  m.category      :Status
  m.total_pp      20
  m.target        :NearOther
  m.function_code "TargetMovesBecomeElectric"
  m.flags         :CanProtect, :CanMirrorMove, :ZPower_SPECIAL_ATTACK_1
  m.description   "If the target uses a move after being electrified, that move becomes Electric-type."
end

GameData::Move.define :IONDELUGE do |m|
  m.name          "Ion Deluge"
  m.type          :ELECTRIC
  m.category      :Status
  m.total_pp      25
  m.target        :BothSides
  m.priority      1
  m.function_code "NormalMovesBecomeElectric"
  m.flags         :ZPower_SPECIAL_ATTACK_1
  m.description   "The user disperses electrically charged particles. Normal-type moves become Electric-type."
end

GameData::Move.define :MAGNETRISE do |m|
  m.name          "Magnet Rise"
  m.type          :ELECTRIC
  m.category      :Status
  m.total_pp      10
  m.target        :User
  m.function_code "StartUserAirborne"
  m.flags         :ZPower_EVASION_1
  m.description   "The user levitates using electrically generated magnetism for five turns."
end

GameData::Move.define :MAGNETICFLUX do |m|
  m.name          "Magnetic Flux"
  m.type          :ELECTRIC
  m.category      :Status
  m.total_pp      20
  m.target        :UserAndAllies
  m.function_code "RaisePlusMinusUserAndAlliesDefSpDef1"
  m.flags         :ZPower_SPECIAL_DEFENSE_1
  m.description   "Manipulates magnetic fields to raise the Defense and Sp. Def stats of allies with Plus or Minus Abilities."
end

GameData::Move.define :THUNDERWAVE do |m|
  m.name          "Thunder Wave"
  m.type          :ELECTRIC
  m.category      :Status
  m.accuracy      90
  m.total_pp      20
  m.target        :NearOther
  m.function_code "ParalyzeTargetIfNotTypeImmune"
  m.flags         :CanProtect, :CanMirrorMove, :ZPower_SPECIAL_DEFENSE_1
  m.description   "A weak electric charge is launched at the target. It causes paralysis if it hits."
end

