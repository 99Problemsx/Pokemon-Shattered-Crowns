#===============================================================================
# Boss Aura - Battle Helper Module
# Provides easy-to-use methods for setting up boss battles with aura effects
#===============================================================================

module BossAura
  # Global variable to store boss battle data
  @@boss_data = nil
  
  #-----------------------------------------------------------------------------
  # Setup a boss battle with stat boosts
  # Usage: BossAura.setup_boss_battle(:ATTACK => 2, :DEFENSE => 1, :SPEED => 1)
  #-----------------------------------------------------------------------------
  def self.setup_boss_battle(stat_boosts = {})
    @@boss_data = {
      stat_boosts: stat_boosts,
      enabled: true
    }
  end
  
  #-----------------------------------------------------------------------------
  # Setup a boss battle with custom multiplier for all stats
  # Usage: BossAura.setup_boss_battle_multiplier(1.5)
  #-----------------------------------------------------------------------------
  def self.setup_boss_battle_multiplier(multiplier = 1.5)
    @@boss_data = {
      stat_boosts: {
        :ATTACK => 1,
        :DEFENSE => 1,
        :SPECIAL_ATTACK => 1,
        :SPECIAL_DEFENSE => 1,
        :SPEED => 1
      },
      multiplier: multiplier,
      enabled: true
    }
  end
  
  #-----------------------------------------------------------------------------
  # Get the current boss data
  #-----------------------------------------------------------------------------
  def self.get_boss_data
    return @@boss_data
  end
  
  #-----------------------------------------------------------------------------
  # Clear boss data (called after battle)
  #-----------------------------------------------------------------------------
  def self.clear_boss_data
    @@boss_data = nil
  end
  
  #-----------------------------------------------------------------------------
  # Check if boss battle is active
  #-----------------------------------------------------------------------------
  def self.active?
    return @@boss_data && @@boss_data[:enabled]
  end
end

#===============================================================================
# Convenience method for event scripts
#===============================================================================

# Setup a boss battle with stat boosts
# Example: pbSetupBossBattle(:ATTACK => 2, :DEFENSE => 1)
def pbSetupBossBattle(stat_boosts = {})
  BossAura.setup_boss_battle(stat_boosts)
end

# Setup a boss battle with a multiplier
# Example: pbSetupBossBattleMultiplier(1.5)
def pbSetupBossBattleMultiplier(multiplier = 1.5)
  BossAura.setup_boss_battle_multiplier(multiplier)
end

#===============================================================================
# Example boss battle presets
#===============================================================================

# Standard boss (moderate boost)
def pbStandardBossBattle
  BossAura.setup_boss_battle(
    :ATTACK => 1,
    :DEFENSE => 1,
    :SPECIAL_ATTACK => 1,
    :SPECIAL_DEFENSE => 1,
    :SPEED => 1
  )
end

# Strong boss (significant boost)
def pbStrongBossBattle
  BossAura.setup_boss_battle(
    :ATTACK => 2,
    :DEFENSE => 2,
    :SPECIAL_ATTACK => 2,
    :SPECIAL_DEFENSE => 2,
    :SPEED => 1
  )
end

# Legendary boss (major boost)
def pbLegendaryBossBattle
  BossAura.setup_boss_battle(
    :ATTACK => 2,
    :DEFENSE => 2,
    :SPECIAL_ATTACK => 2,
    :SPECIAL_DEFENSE => 2,
    :SPEED => 2
  )
end

# Physical boss (attack/defense focused)
def pbPhysicalBossBattle
  BossAura.setup_boss_battle(
    :ATTACK => 2,
    :DEFENSE => 2,
    :SPEED => 1
  )
end

# Special boss (special attack/defense focused)
def pbSpecialBossBattle
  BossAura.setup_boss_battle(
    :SPECIAL_ATTACK => 2,
    :SPECIAL_DEFENSE => 2,
    :SPEED => 1
  )
end

# Tank boss (defensive focused)
def pbTankBossBattle
  BossAura.setup_boss_battle(
    :DEFENSE => 3,
    :SPECIAL_DEFENSE => 3
  )
end

# Speed boss (speed focused)
def pbSpeedBossBattle
  BossAura.setup_boss_battle(
    :ATTACK => 1,
    :SPECIAL_ATTACK => 1,
    :SPEED => 3
  )
end
