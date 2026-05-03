#===============================================================================
# [SC] Companion Pokemon - Follower Visuals
# Status-condition tone overlay (with pulse) and water-surface reflection.
#
# Hooks Sprite_Character to add per-frame visual effects to the follower
# without disturbing other map sprites:
#
#   * Pulsing RGB tone tint based on the follower's status condition
#     (BURN orange, POISON purple, PARALYSIS yellow, FROZEN cyan,
#     SLEEP desaturate). Mirrors what Following Pokemon EX did.
#
#   * Water reflection — reuses Essentials' built-in Sprite_Reflection
#     (which already handles bridges, animation, and time tinting).
#     Vanilla Essentials only spawns a reflection for $game_player and
#     events whose name contains "reflection"; we extend it to cover
#     Game_FollowingPkmn so the follower mirrors over water like the
#     player does.
#===============================================================================

module CompanionFollower
  # Maps status -> [r, g, b] tone offset.
  # Values come from CompanionFollower config so users can tweak them.
  STATUS_TONE_RGB = {
    :BURN      => CompanionFollower::TONE_BURN,
    :POISON    => CompanionFollower::TONE_POISON,
    :PARALYSIS => CompanionFollower::TONE_PARALYSIS,
    :FROZEN    => CompanionFollower::TONE_FROZEN,
    :SLEEP     => CompanionFollower::TONE_SLEEP
  }
end

#===============================================================================
# Sprite_Character — initialize: also create reflection for the follower
#===============================================================================
class Sprite_Character < RPG::Sprite
  alias __sc_follower__init initialize unless method_defined?(:__sc_follower__init)
  def initialize(viewport, character = nil)
    __sc_follower__init(viewport, character)
    if character.is_a?(Game_FollowingPkmn) && !@reflection
      @reflection = Sprite_Reflection.new(self, viewport)
    end
  end

  #-----------------------------------------------------------------------------
  # update: apply pulsing status tone after the base update has refreshed
  # the sprite's bitmap and frame. Reflection automatically inherits tone
  # via Sprite_Reflection#update which copies @parent_sprite.tone.
  #-----------------------------------------------------------------------------
  alias __sc_follower__update_visuals update unless method_defined?(:__sc_follower__update_visuals)
  def update
    __sc_follower__update_visuals
    return unless @character.is_a?(Game_FollowingPkmn)
    return unless CompanionFollower::APPLY_STATUS_TONES
    if !CompanionFollower.active?
      sc_clear_follower_tone
      return
    end
    sc_apply_follower_status_tone
  end

  def sc_apply_follower_status_tone
    pkmn = CompanionFollower.get_pokemon
    if !pkmn || !pkmn.respond_to?(:status) || pkmn.status == :NONE
      sc_clear_follower_tone
      return
    end

    rgb = CompanionFollower::STATUS_TONE_RGB[pkmn.status]
    return sc_clear_follower_tone unless rgb

    # Pulse strength oscillates between 0.55 and 0.85 over ~2 sec.
    t = Graphics.frame_count / (Graphics.frame_rate.to_f * 0.32)
    pulse = 0.7 + 0.15 * Math.sin(t)

    case pkmn.status
    when :SLEEP
      # Desaturate + slight darkening (sleep)
      gray = (160 * pulse).to_i
      self.tone = Tone.new(-25, -25, -25, gray)
    when :FROZEN
      # Cool blue tint + light gray
      r, g, b = rgb
      self.tone = Tone.new((r * 0.35 * pulse).to_i,
                           (g * 0.45 * pulse).to_i,
                           (b * 0.65 * pulse).to_i,
                           (40 * pulse).to_i)
    else
      # BURN / POISON / PARALYSIS: pulse the configured RGB at moderate intensity
      r, g, b = rgb
      self.tone = Tone.new((r * 0.55 * pulse).to_i,
                           (g * 0.55 * pulse).to_i,
                           (b * 0.55 * pulse).to_i, 0)
    end
    @sc_follower_tone_active = true
  end

  def sc_clear_follower_tone
    return unless @sc_follower_tone_active
    self.tone = Tone.new(0, 0, 0, 0)
    @sc_follower_tone_active = false
  end
end
