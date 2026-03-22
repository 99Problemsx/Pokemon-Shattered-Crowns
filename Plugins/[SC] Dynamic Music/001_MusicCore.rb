#===============================================================================
# [SC] Dynamic Music - Core Logic
#===============================================================================

module DynamicMusicEngine
  @current_override = nil
  @original_bgm     = nil

  #=============================================================================
  # Check and apply day/night music variant on map entry
  #=============================================================================

  def self.check_day_night_music(map_id)
    return unless DynamicMusic::DAY_NIGHT_ENABLED
    config = DynamicMusic::DAY_NIGHT_MAPS[map_id]
    return unless config

    is_night = self.night?
    bgm = is_night ? config[:night] : config[:day]
    return unless bgm
    transition_bgm(bgm)
  end

  def self.night?
    hour = pbGetTimeNow.hour
    if DynamicMusic::NIGHT_START_HOUR > DynamicMusic::NIGHT_END_HOUR
      hour >= DynamicMusic::NIGHT_START_HOUR || hour < DynamicMusic::NIGHT_END_HOUR
    else
      hour >= DynamicMusic::NIGHT_START_HOUR && hour < DynamicMusic::NIGHT_END_HOUR
    end
  end

  #=============================================================================
  # Weather-based music override
  #=============================================================================

  def self.check_weather_music
    return unless DynamicMusic::WEATHER_MUSIC_ENABLED
    weather = defined?(WeatherEventEngine) ? WeatherEventEngine.current_weather : :None
    bgm = DynamicMusic::WEATHER_BGM[weather]
    if bgm
      transition_bgm(bgm) unless @current_override == bgm
    elsif @current_override && DynamicMusic::WEATHER_BGM.values.include?(@current_override)
      restore_bgm
    end
  end

  #=============================================================================
  # Boss phase music — called each turn during battle
  #=============================================================================

  def self.check_boss_phase(battle)
    return unless battle
    foe_trainer = battle.opponent
    return unless foe_trainer && foe_trainer.is_a?(Array)
    trainer_type = foe_trainer[0].trainer_type rescue nil
    return unless trainer_type

    phases = DynamicMusic::BOSS_PHASES[trainer_type]
    return unless phases

    # Get foe's active Pokemon HP ratio
    foe_battler = battle.battlers.find { |b| b && b.opposes? && !b.fainted? }
    return unless foe_battler

    total_hp = 0
    current_hp = 0
    battle.battlers.each do |b|
      next unless b && b.opposes?
      total_hp += b.totalhp
      current_hp += b.hp
    end
    return if total_hp == 0
    ratio = current_hp.to_f / total_hp

    # Find matching phase (sorted low to high, take lowest matching)
    sorted = phases.sort_by { |p| p[:threshold] }
    selected = nil
    sorted.each do |phase|
      selected = phase if ratio <= phase[:threshold]
    end

    if selected && @current_override != selected[:bgm]
      transition_bgm(selected[:bgm])
    end
  end

  #=============================================================================
  # Low HP tension music — called during battle
  #=============================================================================

  def self.check_low_hp(battle)
    return unless DynamicMusic::LOW_HP_ENABLED && battle
    player_battler = battle.battlers.find { |b| b && !b.opposes? && !b.fainted? }
    return unless player_battler
    # Check if it's the last Pokemon AND low HP
    alive_count = battle.battlers.count { |b| b && !b.opposes? && !b.fainted? }
    return unless alive_count <= 1
    ratio = player_battler.hp.to_f / player_battler.totalhp
    if ratio <= DynamicMusic::LOW_HP_THRESHOLD
      bgm = DynamicMusic::LOW_HP_BGM
      transition_bgm(bgm) unless @current_override == bgm
    end
  end

  #=============================================================================
  # BGM transition helpers
  #=============================================================================

  def self.transition_bgm(bgm_name)
    @original_bgm ||= $game_system.playing_bgm.name rescue nil
    @current_override = bgm_name
    pbBGMFade(DynamicMusic::FADE_DURATION / 1000.0)
    pbWait(DynamicMusic::FADE_DURATION / 40) # Convert to frames (~40fps)
    pbBGMPlay(bgm_name, DynamicMusic::VOLUME_NORMAL)
  end

  def self.restore_bgm
    return unless @original_bgm
    pbBGMFade(DynamicMusic::FADE_DURATION / 1000.0)
    pbWait(DynamicMusic::FADE_DURATION / 40)
    pbBGMPlay(@original_bgm, DynamicMusic::VOLUME_NORMAL)
    @current_override = nil
    @original_bgm     = nil
  end

  def self.reset
    @current_override = nil
    @original_bgm     = nil
  end
end

#===============================================================================
# Map enter hook — day/night + weather music
#===============================================================================

EventHandlers.add(:on_enter_map, :sc_dynamic_music_map,
  proc { |_old_map_id|
    next unless DynamicMusic::ENABLED
    DynamicMusicEngine.reset
    DynamicMusicEngine.check_day_night_music($game_map.map_id) if $game_map
    DynamicMusicEngine.check_weather_music
  }
)

#===============================================================================
# Battle hooks — boss phases & low HP
#===============================================================================

EventHandlers.add(:on_battle_end_round, :sc_dynamic_music_battle,
  proc { |battle|
    next unless DynamicMusic::ENABLED
    DynamicMusicEngine.check_boss_phase(battle)
    DynamicMusicEngine.check_low_hp(battle)
  }
) if EventHandlers.respond_to?(:trigger) # Safe guard — hook only if available

#===============================================================================
# Post-battle cleanup
#===============================================================================

EventHandlers.add(:on_end_battle, :sc_dynamic_music_cleanup,
  proc { |_result, _can_lose|
    DynamicMusicEngine.restore_bgm if DynamicMusic::ENABLED
  }
)
