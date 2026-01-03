#===============================================================================
# Shattered Crowns Script System - Configuration
#===============================================================================
module SCScripts
  # Path to map data scripts (relative to game root)
  MAP_SCRIPTS_PATH = "Data/Scripts/Maps"
  
  # Path to animation scripts (relative to game root)
  ANIMATION_SCRIPTS_PATH = "Data/Scripts/Animations"
  
  # Enable debug messages
  DEBUG = true
  
  # Log script loading
  def self.log(message)
    echoln "[SC Scripts] #{message}" if DEBUG
  end
end
