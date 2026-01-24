#===============================================================================
# Achievements System - Modular Pause Menu Integration
#===============================================================================

#-------------------------------------------------------------------------------
# Add Achievements entry to the Modular Pause Menu
#-------------------------------------------------------------------------------
ModularMenu.add_entry(:ACHIEVEMENTS, _INTL("Achievements"), "menuAchievements") do |menu|
  pbFadeOutIn(99999) {
    Achievement_Scene.new
    menu.refresh
  }
end

# Optional: Add a condition if you want achievements to only show after a certain point
# ModularMenu.add_condition(:ACHIEVEMENTS) { next true }
