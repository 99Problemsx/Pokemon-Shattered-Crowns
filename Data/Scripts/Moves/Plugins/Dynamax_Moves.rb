#===============================================================================
# Shattered Crowns - Plugin - dynamax Move Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Move.define format
#===============================================================================

GameData::Move.define :MAXGUARD do |m|
  m.name          "Max Guard"
  m.type          :NORMAL
  m.category      :Status
  m.total_pp      1
  m.target        :User
  m.priority      4
  m.function_code "ProtectUserEvenFromDynamaxMoves"
  m.flags         :DynamaxMove, :CannotMetronome
  m.description   "The user protects itself from all attacks, including Max Moves. May fail if used in succession."
end

GameData::Move.define :MAXKNUCKLE do |m|
  m.name          "Max Knuckle"
  m.type          :FIGHTING
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "RaiseUserSideAtk1"
  m.flags         :DynamaxMove_FIGHTING, :CannotMetronome
  m.description   "A Fighting-type attack Dynamax Pokémon use. This raises ally Pokémon's Attack stats."
end

GameData::Move.define :MAXSTEELSPIKE do |m|
  m.name          "Max Steelspike"
  m.type          :STEEL
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "RaiseUserSideDef1"
  m.flags         :DynamaxMove_STEEL, :CannotMetronome
  m.description   "A Steel-type attack Dynamax Pokémon use. This raises ally Pokémon's Defense stats."
end

GameData::Move.define :MAXOOZE do |m|
  m.name          "Max Ooze"
  m.type          :POISON
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "RaiseUserSideSpAtk1"
  m.flags         :DynamaxMove_POISON, :CannotMetronome
  m.description   "A Poison-type attack Dynamax Pokémon use. This raises ally Pokémon's Sp. Atk stats."
end

GameData::Move.define :MAXQUAKE do |m|
  m.name          "Max Quake"
  m.type          :GROUND
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "RaiseUserSideSpDef1"
  m.flags         :DynamaxMove_GROUND, :CannotMetronome
  m.description   "A Ground-type attack Dynamax Pokémon use. This raises ally Pokémon's Sp. Def stats."
end

GameData::Move.define :MAXAIRSTREAM do |m|
  m.name          "Max Airstream"
  m.type          :FLYING
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "RaiseUserSideSpeed1"
  m.flags         :DynamaxMove_FLYING, :CannotMetronome
  m.description   "A Flying-type attack Dynamax Pokémon use. This raises ally Pokémon's Speed stats."
end

GameData::Move.define :MAXWYRMWIND do |m|
  m.name          "Max Wyrmwind"
  m.type          :DRAGON
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "LowerTargetSideAtk1"
  m.flags         :DynamaxMove_DRAGON, :CannotMetronome
  m.description   "A Dragon-type attack Dynamax Pokémon use. This lowers the target's Attack stat."
end

GameData::Move.define :MAXPHANTASM do |m|
  m.name          "Max Phantasm"
  m.type          :GHOST
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "LowerTargetSideDef1"
  m.flags         :DynamaxMove_GHOST, :CannotMetronome
  m.description   "A Ghost-type attack Dynamax Pokémon use. This lowers the target's Defense stat."
end

GameData::Move.define :MAXFLUTTERBY do |m|
  m.name          "Max Flutterby"
  m.type          :BUG
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "LowerTargetSideSpAtk1"
  m.flags         :DynamaxMove_BUG, :CannotMetronome
  m.description   "A Bug-type attack Dynamax Pokémon use. This lowers the target's Sp. Atk stat."
end

GameData::Move.define :MAXDARKNESS do |m|
  m.name          "Max Darkness"
  m.type          :DARK
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "LowerTargetSideSpDef1"
  m.flags         :DynamaxMove_DARK, :CannotMetronome
  m.description   "A Dark-type attack Dynamax Pokémon use. This lowers the target's Sp. Def stat."
end

GameData::Move.define :MAXSTRIKE do |m|
  m.name          "Max Strike"
  m.type          :NORMAL
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "LowerTargetSideSpeed1"
  m.flags         :DynamaxMove_NORMAL, :CannotMetronome
  m.description   "A Normal-type attack Dynamax Pokémon use. This lowers the target's Speed stat."
end

GameData::Move.define :MAXFLARE do |m|
  m.name          "Max Flare"
  m.type          :FIRE
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetStartSunWeather"
  m.flags         :DynamaxMove_FIRE, :CannotMetronome
  m.description   "A Fire-type attack Dynamax Pokémon use. Intensifies the sun's rays for five turns."
end

GameData::Move.define :MAXGEYSER do |m|
  m.name          "Max Geyser"
  m.type          :WATER
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetStartRainWeather"
  m.flags         :DynamaxMove_WATER, :CannotMetronome
  m.description   "A Water-type attack Dynamax Pokémon use. Summons a heavy rain that falls for five turns."
end

GameData::Move.define :MAXROCKFALL do |m|
  m.name          "Max Rockfall"
  m.type          :ROCK
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetStartSandstormWeather"
  m.flags         :DynamaxMove_ROCK, :CannotMetronome
  m.description   "A Rock-type attack Dynamax Pokémon use. Summons a sandstorm lasting five turns."
end

GameData::Move.define :MAXHAILSTORM do |m|
  m.name          "Max Hailstorm"
  m.type          :ICE
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetStartHailWeather"
  m.flags         :DynamaxMove_ICE, :CannotMetronome
  m.description   "An Ice-type attack Dynamax Pokémon use. Summons a hailstorm lasting five turns."
end

GameData::Move.define :MAXOVERGROWTH do |m|
  m.name          "Max Overgrowth"
  m.type          :GRASS
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetStartGrassyTerrain"
  m.flags         :DynamaxMove_GRASS, :CannotMetronome
  m.description   "A Grass-type attack Dynamax Pokémon use. Sets Grassy Terrain for five turns."
end

GameData::Move.define :MAXLIGHTNING do |m|
  m.name          "Max Lightning"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetStartElectricTerrain"
  m.flags         :DynamaxMove_ELECTRIC, :CannotMetronome
  m.description   "An Electric-type attack Dynamax Pokémon use. Sets Electric Terrain for five turns."
end

GameData::Move.define :MAXSTARFALL do |m|
  m.name          "Max Starfall"
  m.type          :FAIRY
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetStartMistyTerrain"
  m.flags         :DynamaxMove_FAIRY, :CannotMetronome
  m.description   "A Fairy-type attack Dynamax Pokémon use. Sets Misty Terrain for five turns."
end

GameData::Move.define :MAXMINDSTORM do |m|
  m.name          "Max Mindstorm"
  m.type          :PSYCHIC
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetStartPsychicTerrain"
  m.flags         :DynamaxMove_PSYCHIC, :CannotMetronome
  m.description   "A Psychic-type attack Dynamax Pokémon use. Sets Psychic Terrain for five turns."
end

GameData::Move.define :GMAXVINELASH do |m|
  m.name          "G-Max Vine Lash"
  m.type          :GRASS
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "StartVineLashOnFoeSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Venusaur. Deals additional damage to opponents for four turns."
end

GameData::Move.define :GMAXWILDFIRE do |m|
  m.name          "G-Max Wildfire"
  m.type          :FIRE
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "StartWildfireOnFoeSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Charizard. Deals additional damage to opponents for four turns."
end

GameData::Move.define :GMAXCANNONADE do |m|
  m.name          "G-Max Cannonade"
  m.type          :WATER
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "StartCannonadeOnFoeSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Blastoise. Deals additional damage to opponents for four turns."
end

GameData::Move.define :GMAXVOLCALITH do |m|
  m.name          "G-Max Volcalith"
  m.type          :ROCK
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "StartVolcalithOnFoeSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Coalossal. Deals additional damage to opponents for four turns."
end

GameData::Move.define :GMAXDRUMSOLO do |m|
  m.name          "G-Max Drum Solo"
  m.type          :GRASS
  m.category      :Physical
  m.power         160
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "IgnoreTargetAbility"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Rillaboom. Ignores opponent's Abilities that would reduce damage."
end

GameData::Move.define :GMAXFIREBALL do |m|
  m.name          "G-Max Fireball"
  m.type          :FIRE
  m.category      :Physical
  m.power         160
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "IgnoreTargetAbility"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Cinderace. Ignores opponent's Abilities that would reduce damage."
end

GameData::Move.define :GMAXHYDROSNIPE do |m|
  m.name          "G-Max Hydrosnipe"
  m.type          :WATER
  m.category      :Physical
  m.power         160
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "IgnoreTargetAbility"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Inteleon. Ignores opponent's Abilities that would reduce damage."
end

GameData::Move.define :GMAXVOLTCRASH do |m|
  m.name          "G-Max Volt Crash"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "ParalyzeTargetSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Pikachu. May paralyze all opposing Pokémon."
end

GameData::Move.define :GMAXMALODOR do |m|
  m.name          "G-Max Malodor"
  m.type          :POISON
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "PoisonTargetSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Garbodor. May poison all opposing Pokémon."
end

GameData::Move.define :GMAXSTUNSHOCK do |m|
  m.name          "G-Max Stun Shock"
  m.type          :ELECTRIC
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "PoisonOrParalyzeTargetSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Toxtricity. May poison or paralyze all opposing Pokémon."
end

GameData::Move.define :GMAXBEFUDDLE do |m|
  m.name          "G-Max Befuddle"
  m.type          :BUG
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "PoisonParalyzeOrSleepTargetSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Butterfree. Opposing Pokémon may fall asleep, or become poisoned or paralyzed."
end

GameData::Move.define :GMAXSMITE do |m|
  m.name          "G-Max Smite"
  m.type          :FAIRY
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "ConfuseTargetSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Hatterene. May confuse all opposing Pokémon."
end

GameData::Move.define :GMAXCUDDLE do |m|
  m.name          "G-Max Cuddle"
  m.type          :NORMAL
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "InfatuateTargetSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Eevee. May infatuate all opposing Pokémon."
end

GameData::Move.define :GMAXGOLDRUSH do |m|
  m.name          "G-Max Gold Rush"
  m.type          :NORMAL
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "ConfuseTargetSideAddMoney"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Meowth. May confuse all opposing Pokémon. Also earns extra money."
end

GameData::Move.define :GMAXSTONESURGE do |m|
  m.name          "G-Max Stonesurge"
  m.type          :WATER
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetAddStealthRocksToFoeSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Drednaw. Scatters sharp rocks around the opposing side of the field."
end

GameData::Move.define :GMAXSTEELSURGE do |m|
  m.name          "G-Max Steelsurge"
  m.type          :STEEL
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetAddSteelsurgeToFoeSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Copperajah. Scatters sharp spikes around the opposing side of the field."
end

GameData::Move.define :GMAXCENTIFERNO do |m|
  m.name          "G-Max Centiferno"
  m.type          :FIRE
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "BindTargetSideUserCanSwitch"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Centiskorch. Traps all opposing Pokémon in flames for four to five turns."
end

GameData::Move.define :GMAXSANDBLAST do |m|
  m.name          "G-Max Sandblast"
  m.type          :GROUND
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "BindTargetSideUserCanSwitch"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Sandaconda. Traps all opposing Pokémon in sand for four to five turns."
end

GameData::Move.define :GMAXFOAMBURST do |m|
  m.name          "G-Max Foam Burst"
  m.type          :WATER
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "LowerTargetSideSpeed2"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Kingler. Harshly lowers the Speed of all opposing Pokémon."
end

GameData::Move.define :GMAXWINDRAGE do |m|
  m.name          "G-Max Wind Rage"
  m.type          :FLYING
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "RemoveSideEffectsAndTerrain"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Corviknight. Removes effects like Reflect and Light Screen from the field."
end

GameData::Move.define :GMAXGRAVITAS do |m|
  m.name          "G-Max Gravitas"
  m.type          :PSYCHIC
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetStartGravity"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Orbeetle. Intensifies gravity for five turns."
end

GameData::Move.define :GMAXFINALE do |m|
  m.name          "G-Max Finale"
  m.type          :FAIRY
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "HealUserSideOneSixthOfTotalHP"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Alcremie. Heals the HP of all ally Pokémon."
end

GameData::Move.define :GMAXSWEETNESS do |m|
  m.name          "G-Max Sweetness"
  m.type          :GRASS
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "CureStatusConditionsUsersSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Appletun. Heals the status conditions of all ally Pokémon."
end

GameData::Move.define :GMAXTARTNESS do |m|
  m.name          "G-Max Tartness"
  m.type          :GRASS
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "LowerTargetSideEva1"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Flapple. Reduces the evasiveness of all opposing Pokémon."
end

GameData::Move.define :GMAXREPLENISH do |m|
  m.name          "G-Max Replenish"
  m.type          :NORMAL
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "RestoreUserSideConsumedBerries"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Snorlax. May restore consumed Berries of all ally Pokémon."
end

GameData::Move.define :GMAXDEPLETION do |m|
  m.name          "G-Max Depletion"
  m.type          :DRAGON
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "LowerPPOfTargetSideLastMoveBy2"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Duraludon. Reduces the PP of the last move used by the target."
end

GameData::Move.define :GMAXRESONANCE do |m|
  m.name          "G-Max Resonance"
  m.type          :ICE
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetStartWeakenDamageAgainstUserSide"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Lapras. Reduces the damage the party receives for five turns."
end

GameData::Move.define :GMAXCHISTRIKE do |m|
  m.name          "G-Max Chi Strike"
  m.type          :FIGHTING
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "UserSideCriticalBoost1"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Machamp. Boosts the chance of critical hits for all ally Pokémon."
end

GameData::Move.define :GMAXTERROR do |m|
  m.name          "G-Max Terror"
  m.type          :GHOST
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "TrapTargetSideInBattle"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Gengar. Prevents all opposing Pokémon from escaping."
end

GameData::Move.define :GMAXSNOOZE do |m|
  m.name          "G-Max Snooze"
  m.type          :DARK
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DamageTargetSleepTargetNextTurn"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Grimmsnarl. May lull the target into falling asleep on its following turn."
end

GameData::Move.define :GMAXMELTDOWN do |m|
  m.name          "G-Max Meltdown"
  m.type          :STEEL
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "DisableTargetSideUsingSameMoveConsecutively"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Melmetal. Prevents opponents from using the same move twice in a row."
end

GameData::Move.define :GMAXONEBLOW do |m|
  m.name          "G-Max One Blow"
  m.type          :DARK
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "IgnoreProtections"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Urshifu. This single-strike move can ignore Max Guard."
end

GameData::Move.define :GMAXRAPIDFLOW do |m|
  m.name          "G-Max Rapid Flow"
  m.type          :WATER
  m.category      :Physical
  m.power         1
  m.total_pp      1
  m.target        :NearFoe
  m.function_code "IgnoreProtections"
  m.flags         :GmaxMove, :CannotMetronome
  m.description   "A G-Max Move used by G-Max Urshifu. This rapid-strike move can ignore Max Guard."
end

