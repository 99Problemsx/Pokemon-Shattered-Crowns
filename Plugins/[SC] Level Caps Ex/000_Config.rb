module LevelCapsEX
  #=============================================================================
  # [SC] Level Caps Ex - Configuration
  # Shattered Crowns fork of Level Caps EX v2.3.2
  #=============================================================================

  # Set this to the Game Variable which controls the value of the
  # level cap
  LEVEL_CAP_VARIABLE      = 198

  # Set this to the Game Variable which controls the mode of the
  # level cap. The 3 modes are:
  #   1 (Hard Cap) - The Pokemon cannot level up/gain experience 
  #   past the level cap.
  #   2 (EXP Cap) - The Pokemon will gain reduced EXP when it
  #   crosses the level cap.
  #   3 (Obedience Cap)  - The Pokemon will disobey the player
  #   when it crosses the level cap.
  LEVEL_CAP_MODE_VARIABLE = 199

  # Set this to the default mode of the Level Cap
  DEFAULT_LEVEL_CAP_MODE  = 1

  # Set this to the Game Switch which, when ON, disables level cap for enemy trainers
  LEVEL_CAP_BYPASS_SWITCH = 200

  # Set this to true if any changes to the Level Cap/Level Cap mode
  # should be printed to the console (only in debug builds).
  LOG_LEVEL_CAP_CHANGES   = true

  #---------------------------------------------------------------------------
  # Badge-Based Auto Level Cap
  #---------------------------------------------------------------------------
  # When BADGE_AUTO_CAP is true, the level cap automatically updates
  # whenever the player earns a new badge. The BADGE_LEVEL_CAPS hash
  # maps badge count → new level cap. Set to false to disable.
  BADGE_AUTO_CAP = true

  BADGE_LEVEL_CAPS = {
    0 => 15,   # Start of game
    1 => 20,   # After Badge 1
    2 => 25,   # After Badge 2
    3 => 30,   # After Badge 3
    4 => 35,   # After Badge 4
    5 => 45,   # After Badge 5
    6 => 55,   # After Badge 6
    7 => 65,   # After Badge 7
    8 => 75,   # After Badge 8 (Champion run)
    9 => 100   # Post-game (set via event or 9th "badge" flag)
  }

  #---------------------------------------------------------------------------
  # Soft Cap Scaling
  #---------------------------------------------------------------------------
  # When true, the soft cap (mode 2) uses a smooth EXP reduction curve
  # instead of the flat 1/10 reduction:
  #   1 level over cap = 50%, 2 over = 25%, 5 over = ~3%, 10+ over = 1%
  # When false, uses the original flat 1/10 reduction.
  SOFT_CAP_SCALED = true

  #---------------------------------------------------------------------------
  # EXP Storage (Piggy Bank)
  #---------------------------------------------------------------------------
  # When true and hard cap is active, blocked EXP is stored per-Pokemon.
  # When the level cap increases, stored EXP is automatically awarded.
  # Requires Game Variable EXP_STORAGE_VARIABLE to hold stored data.
  EXP_STORAGE_ENABLED  = true
end
