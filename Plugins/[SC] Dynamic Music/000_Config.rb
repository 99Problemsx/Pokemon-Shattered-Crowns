#===============================================================================
# [SC] Dynamic Music - Configuration
# Version: 1.0.0
# Context-sensitive music transitions: HP-based, boss phases, day/night, weather.
#===============================================================================

module DynamicMusic
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # LOW HP MUSIC
  # When player's last Pokemon is below threshold, switch to tense BGM
  #=============================================================================

  LOW_HP_ENABLED = true
  LOW_HP_THRESHOLD = 0.25    # 25% of max HP
  LOW_HP_BGM = "Battle Critical"  # BGM filename (no extension)

  #=============================================================================
  # BOSS PHASE MUSIC
  # Switch BGM when boss reaches HP thresholds during battle
  # Format: { trainer_type => [{ threshold:, bgm: }] }
  # Thresholds checked high->low, first match wins
  #=============================================================================

  BOSS_PHASES = {
    # :CHAMPION => [
    #   { :threshold => 0.50, :bgm => "Battle Champion Phase2" },
    #   { :threshold => 0.25, :bgm => "Battle Champion Final" },
    # ],
    # :NIDHOGGR => [
    #   { :threshold => 0.75, :bgm => "Nidhoggr Phase2" },
    #   { :threshold => 0.50, :bgm => "Nidhoggr Phase3" },
    #   { :threshold => 0.25, :bgm => "Nidhoggr Final" },
    # ],
  }

  #=============================================================================
  # DAY/NIGHT VARIANTS
  # Maps can have different BGM for day vs night
  # Format: { map_id => { :day => "BGM_Day", :night => "BGM_Night" } }
  #=============================================================================

  DAY_NIGHT_ENABLED = true

  DAY_NIGHT_MAPS = {
    # 5 => { :day => "Asgheim Day", :night => "Asgheim Night" },
  }

  # Hour boundaries (24h format)
  NIGHT_START_HOUR = 20
  NIGHT_END_HOUR   = 6

  #=============================================================================
  # WEATHER MUSIC
  # Override map BGM during specific weather conditions
  #=============================================================================

  WEATHER_MUSIC_ENABLED = true

  WEATHER_BGM = {
    # :Storm => "Stormy Ambience",
    # :Snow  => "Snowy Night",
  }

  #=============================================================================
  # TRANSITION
  #=============================================================================

  FADE_DURATION = 800  # Milliseconds for crossfade
  VOLUME_NORMAL = 80
  VOLUME_LOW    = 60
end
