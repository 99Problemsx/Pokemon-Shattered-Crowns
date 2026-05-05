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
  #   1 (Hard Cap)     - Pokemon cannot level up or gain EXP past the cap.
  #                      Excess EXP can be banked (see EXP_STORAGE_ENABLED)
  #                      and is awarded automatically when the cap rises.
  #   2 (Soft/EXP Cap) - Pokemon CAN cross the cap, but EXP gain past it
  #                      is heavily reduced (50% per level over by default,
  #                      or flat 1/10 if SOFT_CAP_SCALED is false).
  #   3 (Obedience)    - No EXP/level limit, but the Pokemon disobeys the
  #                      player when its level exceeds the cap.
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
  # Shared-EXP Respect for Level Cap
  #---------------------------------------------------------------------------
  # When true, Pokemon at or above the level cap won't receive any EXP from
  # Exp Share or Exp All — even in soft cap (mode 2) or obedience cap (mode 3),
  # where they would normally still gain reduced or full EXP via the share.
  # Direct participation is unaffected; only passive shared EXP is blocked.
  #
  # Hard cap (mode 1) already blocks all EXP for at-cap Pokemon regardless of
  # this setting.
  SHARED_EXP_RESPECTS_CAP = true

  #---------------------------------------------------------------------------
  # EXP Storage (Piggy Bank)
  #---------------------------------------------------------------------------
  # When true and the hard cap is active, EXP that would otherwise be lost
  # is banked per-Pokemon (keyed by personalID). The bank is automatically
  # awarded the moment the level cap is raised — whether by the badge auto
  # cap, a debug menu set, or a `$game_variables[LEVEL_CAP_VARIABLE] = N`
  # call in an event script.
  #
  # Storage is persisted in $PokemonGlobal.level_cap_stored_exp, so it
  # survives saving and loading. There is no Game Variable to configure
  # for this — the data lives in the metadata.
  EXP_STORAGE_ENABLED  = true
end
