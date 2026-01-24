#===============================================================================
# Level Cap & Challenge Mode Display in Modular Pause Menu
#   Shows the current level cap and one-capture status at the bottom left
#   Requires: Level Caps EX plugin (optional), Challenge Modes plugin (optional)
#===============================================================================

module ChallengeInfoSettings
  # Colors for different states
  COLOR_LEVEL_CAP = Color.new(120, 200, 255)      # Light blue for level cap
  COLOR_CAN_CATCH = Color.new(100, 255, 100)      # Green - can still catch
  COLOR_ENCOUNTERED = Color.new(255, 180, 80)    # Orange - already encountered
  COLOR_SHADOW = Color.new(40, 40, 40, 180)       # Dark shadow
  
  # Text formatting
  USE_ICONS = true  # Set false to disable icon characters
end

class PokemonPauseMenu_Scene
  alias __challenge_display_pbStartScene pbStartScene unless method_defined?(:__challenge_display_pbStartScene)
  
  def pbStartScene
    __challenge_display_pbStartScene
    draw_challenge_info
  end
  
  def draw_challenge_info
    @sprites["challengeOverlay"] ||= BitmapSprite.new(@viewport.rect.width, @viewport.rect.height, @viewport)
    @sprites["challengeOverlay"].z = 999
    @sprites["challengeOverlay"].bitmap.clear
    pbSetSystemFont(@sprites["challengeOverlay"].bitmap)
    
    entries = []  # Each entry: [text, color]
    
    # Level Cap display
    if defined?(LevelCapsEX) && LevelCapsEX.respond_to?(:level_cap)
      cap = LevelCapsEX.level_cap
      if cap && cap > 0
        icon = ChallengeInfoSettings::USE_ICONS ? "▲ " : ""
        entries.push([
          _INTL("{1}Lv. Cap: {2}", icon, cap),
          ChallengeInfoSettings::COLOR_LEVEL_CAP
        ])
      end
    end
    
    # One Capture per Route display
    if defined?(ChallengeModes) && ChallengeModes.respond_to?(:on?)
      if ChallengeModes.on?(:ONE_CAPTURE) && map_has_encounters?
        if ChallengeModes.had_first_encounter?
          icon = ChallengeInfoSettings::USE_ICONS ? "✗ " : ""
          entries.push([
            _INTL("{1}Encounter used", icon),
            ChallengeInfoSettings::COLOR_ENCOUNTERED
          ])
        else
          icon = ChallengeInfoSettings::USE_ICONS ? "★ " : ""
          entries.push([
            _INTL("{1}Catch available!", icon),
            ChallengeInfoSettings::COLOR_CAN_CATCH
          ])
        end
      end
    end
    
    return if entries.empty?
    
    # Draw entries at bottom left with individual colors
    base_y = Graphics.height - 20 - (entries.length * 28)
    
    entries.each_with_index do |entry, i|
      text, color = entry
      y = base_y + (i * 28)
      
      # Draw text with shadow
      pbDrawTextPositions(@sprites["challengeOverlay"].bitmap, [
        [text, 18, y + 2, 0, ChallengeInfoSettings::COLOR_SHADOW, nil],  # Shadow
        [text, 16, y, 0, color, ChallengeInfoSettings::COLOR_SHADOW]      # Main text
      ])
    end
    
    @opacities["challengeOverlay"] = 255 if @opacities
  end
  
  def map_has_encounters?
    return false if !$game_map || !$PokemonEncounters
    # Check if map has ANY encounters defined (not just at current position)
    enc_data = GameData::Encounter.get($game_map.map_id, $PokemonGlobal.encounter_version)
    return enc_data && enc_data.types.length > 0
  rescue
    return false
  end
  
  alias __challenge_display_refresh refresh unless method_defined?(:__challenge_display_refresh)
  
  def refresh
    __challenge_display_refresh
    if @sprites["challengeOverlay"]
      @sprites["challengeOverlay"].bitmap.clear
      draw_challenge_info
    end
  end
end
