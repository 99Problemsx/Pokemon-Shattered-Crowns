#===============================================================================
# Achievements System - Configuration
#   Ported from Spanish v16 script by Polectron, Caeles, and Bezier
#   Updated for Pokémon Essentials v21.1 with horizontal scrolling UI
#===============================================================================

module AchievementSettings
  #-----------------------------------------------------------------------------
  # GRAPHICS SETTINGS
  #-----------------------------------------------------------------------------
  # Path to achievement graphics folder (relative to Graphics/Pictures/)
  GRAPHICS_FOLDER = "Achievements"
  
  # Background image filename (set to nil to use default)
  BACKGROUND = "fondo"
  
  # Image for hidden/locked achievements
  HIDDEN_IMAGE = "hidden"
  
  # Frame images
  FRAME_NORMAL    = "frame"         # Frame for incomplete achievements
  FRAME_COMPLETE  = "frame_gold"    # Frame for completed achievements
  FRAME_HIDDEN    = "frame_hidden"  # Frame for hidden achievements
  
  # Selection indicator
  SELECTOR_IMAGE  = "selector"
  
  #-----------------------------------------------------------------------------
  # UI LAYOUT SETTINGS (Horizontal Scrolling)
  #-----------------------------------------------------------------------------
  ICON_WIDTH  = 74                  # Width of achievement icon
  ICON_HEIGHT = 74                  # Height of achievement icon
  ICON_SPACING = 16                 # Space between icons horizontally
  
  ICONS_VISIBLE = 4                 # Number of icons visible at once
  ICON_Y = 180                      # Y position for icons (centered vertically)
  
  SELECTOR_OFFSET_Y = 8             # Offset below icon for selection indicator

  #-----------------------------------------------------------------------------
  # TEXT SETTINGS
  #-----------------------------------------------------------------------------
  HIDDEN_NAME = "????"                          # Name shown for hidden achievements
  HIDDEN_DESC = "Achievement not yet available." # Description for hidden achievements
  
  # Text colors
  TEXT_BASE   = Color.new(248, 248, 248)        # Base text color
  TEXT_SHADOW = Color.new(72, 72, 72)           # Shadow color
  TEXT_COMPLETE = Color.new(100, 250, 75)       # Color for completed achievement name
  
  # Description box position
  DESC_BOX_X = 20
  DESC_BOX_Y = 275
  DESC_BOX_WIDTH = 468
  DESC_BOX_HEIGHT = 62

  #-----------------------------------------------------------------------------
  # ACHIEVEMENT STATES
  #-----------------------------------------------------------------------------
  HIDDEN    = 1   # Achievement is hidden/locked
  ACTIVE    = 2   # Achievement is visible but not completed
  COMPLETED = 3   # Achievement has been completed
end

#===============================================================================
# ACHIEVEMENTS DEFINITIONS
#===============================================================================
# Format: [name, description, initial_state (optional)]
# If initial_state is omitted, defaults to ACTIVE
#
# Example:
#   ["First Steps", "Take your first steps on your adventure."],
#   ["Champion", "Become the Pokémon League Champion.", AchievementSettings::HIDDEN],
#===============================================================================

ACHIEVEMENTS = [
  ["First Steps", "Begin your Pokémon adventure."],
  ["Bug Catcher", "Catch your first Bug-type Pokémon."],
  ["Rock Solid", "Defeat the first Gym Leader."],
  ["Collection Started", "Register 10 Pokémon in your Pokédex."],
  ["Explorer", "Visit 5 different towns or cities.", AchievementSettings::HIDDEN],
  ["Shiny Hunter", "Encounter a Shiny Pokémon.", AchievementSettings::HIDDEN],
  ["Master Trainer", "Raise a Pokémon to Level 100.", AchievementSettings::HIDDEN],
  ["Champion", "Become the Pokémon League Champion.", AchievementSettings::HIDDEN],
]
