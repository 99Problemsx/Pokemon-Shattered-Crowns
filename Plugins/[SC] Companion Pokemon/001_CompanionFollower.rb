#===============================================================================
# [SC] Companion Pokemon - Follower Abstraction Layer
# Provides a unified API for interacting with the follower Pokemon.
# Fully standalone — uses overworld Pokemon sprites from
# Graphics/Characters/Followers/ and Essentials' native follower system.
#===============================================================================

module CompanionFollower
  # Animation IDs — raw RPG Maker database animation IDs.
  # Played on the follower event via Essentials' native animation system.
  ANIM_EMOTE_HEART   = 9
  ANIM_EMOTE_HAPPY   = 10
  ANIM_EMOTE_MUSIC   = 12
  ANIM_EMOTE_ELIPSES = 13
  ANIM_EMOTE_ANGRY   = 15
  ANIM_EMOTE_POISON  = 17
  ANIM_COME_OUT      = 30
  ANIM_COME_IN       = 29

  #=============================================================================
  # Core accessors
  #=============================================================================

  # Is a follower Pokemon currently active/visible on the map?
  def self.active?
    pkmn = get_pokemon
    return false unless pkmn
    return false unless $game_map && $game_player
    true
  end

  # Get the Pokemon object that is following the player.
  # Returns the first non-egg, non-fainted party member.
  def self.get_pokemon
    return nil unless $player && $player.party
    $player.party.find { |p| p && !p.egg? && !p.fainted? }
  end

  # Get the follower's Game_Event on the current map.
  def self.get_event
    get_follower_event
  end

  #=============================================================================
  # Animations — play emote/balloon on the follower sprite
  #=============================================================================

  def self.animation(anim_id)
    return unless anim_id
    event = get_follower_event
    event.animation_id = anim_id if event
  end

  #=============================================================================
  # Move routes — execute a move route on the follower
  #=============================================================================

  def self.move_route(commands)
    return unless commands && !commands.empty?
    event = get_follower_event
    pbMoveRoute(event, commands) if event
  end

  #=============================================================================
  # Toggle visibility (no-op in standalone — managed by Essentials)
  #=============================================================================

  def self.toggle
    # Standalone: no toggle support without a follower plugin
  end

  def self.toggle_on
    # Standalone: no toggle support without a follower plugin
  end

  def self.toggle_off
    # Standalone: no toggle support without a follower plugin
  end

  #=============================================================================
  # Face the player after an action
  #=============================================================================

  def self.turn_to_player
    event = get_follower_event
    pbTurnTowardEvent(event, $game_player) if event rescue nil
  end

  #=============================================================================
  # Status tone overlay — apply a colored tint to the follower sprite
  #=============================================================================

  def self.apply_status_tone(pkmn)
    return unless CompanionPokemon::APPLY_STATUS_TONES
    event = get_follower_event
    return unless event

    status = pkmn.status
    tone_data = CompanionPokemon::STATUS_TONES[status]
    if tone_data && status != :NONE
      r, g, b = tone_data
      if r != 0 || g != 0 || b != 0
        event.character_hue = ((r + g + b) / 3.0).to_i rescue 0
      end
    else
      event.character_hue = 0 rescue nil
    end
  end

  #=============================================================================
  # Internal: find a follower event via Essentials' native follower system
  #=============================================================================

  private

  def self.get_follower_event
    return nil unless $game_temp && $game_temp.respond_to?(:followers)
    factory = $game_temp.followers
    return nil unless factory
    # Try to get first follower event
    follower = factory.respond_to?(:get_follower_by_index) ?
      factory.get_follower_by_index(0) : nil
    return follower if follower
    # Fallback: iterate
    if factory.respond_to?(:each_follower)
      factory.each_follower { |evt, _data| return evt }
    end
    nil
  end
end
