#===============================================================================
# Achievements System - Save Data
#   Global metadata extension for saving achievement progress
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :achievements

  #-----------------------------------------------------------------------------
  # Initializes achievements array from definitions if not already loaded
  #-----------------------------------------------------------------------------
  def load_achievements
    self.achievements ||= []
    ACHIEVEMENTS.each_with_index do |ach, i|
      next if self.achievements[i]
      # Use defined initial state or default to ACTIVE
      self.achievements[i] = ach.size > 2 ? ach[2] : AchievementSettings::ACTIVE
    end
  end
end

#===============================================================================
# Helper functions for achievement state management
#===============================================================================

# Returns the state of achievement at index, or -1 if invalid
def getAchievement(index)
  $PokemonGlobal.load_achievements
  return -1 if index < 0 || index >= $PokemonGlobal.achievements.size
  return $PokemonGlobal.achievements[index]
end

# Sets the state of achievement at index. Returns true if successful.
def setAchievement(index, status)
  $PokemonGlobal.load_achievements
  return false if index < 0 || index >= $PokemonGlobal.achievements.size
  $PokemonGlobal.achievements[index] = status
  return true
end

# Unlocks (completes) an achievement by index
def unlockAchievement(index)
  setAchievement(index, AchievementSettings::COMPLETED)
end

# Checks if an achievement is completed
def achievementCompleted?(index)
  getAchievement(index) == AchievementSettings::COMPLETED
end

# Checks if an achievement is visible (not hidden)
def achievementVisible?(index)
  getAchievement(index) != AchievementSettings::HIDDEN
end
