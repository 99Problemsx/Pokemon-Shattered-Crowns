#===============================================================================
#  [SC] Visual Effects — Post-processing effects for viewports & sprites
#===============================================================================
#  mkxp-z 2.4.2 does NOT expose a Ruby-level Shader class.
#  The internal engine shaders are accessed through:
#    - Viewport#tone  (Tone.new(r, g, b, gray))
#    - Viewport#color (Color.new(r, g, b, a))
#    - Sprite#pattern= / pattern_blend_type= / pattern_opacity= / invert=
#
#  This plugin provides a clean high-level API for visual effects that can
#  be called from events via Script commands.
#
#  === EVENT SCRIPT COMMANDS ===
#
#    pbApplyEffect(:sepia)              # apply sepia tone to the map
#    pbApplyEffect(:grayscale)          # full desaturation
#    pbApplyEffect(:night)              # cold blue night
#    pbApplyEffect(:sunset)             # warm orange sunset
#    pbApplyEffect(:horror)             # desaturated red horror
#    pbApplyEffect(:underwater)         # deep blue-green underwater
#    pbApplyEffect(:dream)              # soft pastel dreamlike
#    pbApplyEffect(:toxic)              # sickly green poison
#    pbApplyEffect(:frozen)             # icy blue frozen
#    pbApplyEffect(:rage)               # intense red rage
#    pbRemoveEffect                     # remove all effects (restore normal)
#
#    pbApplyEffect(:sepia, duration: 40)          # fade in over 40 frames
#    pbRemoveEffect(duration: 40)                 # fade out over 40 frames
#
#    pbApplyEffect(:custom, tone: [30, -10, -40, 80])  # custom tone [r,g,b,gray]
#    pbApplyEffect(:custom, color: [0, 0, 0, 80])      # custom color overlay
#
#  === ADVANCED: SPRITE INVERT / PATTERN (mkxp-z 2.4.2 extensions) ===
#
#    pbInvertPlayer(true)               # invert player sprite colors
#    pbInvertPlayer(false)              # restore player sprite colors
#
#===============================================================================
module SCVisualFX
  #-----------------------------------------------------------------------------
  #  Effect presets: [red, green, blue, gray] for Viewport#tone
  #  red/green/blue: -255..255, gray: 0..255
  #-----------------------------------------------------------------------------
  EFFECTS = {
    sepia:      { tone: [25, 10, -30, 120] },
    grayscale:  { tone: [0, 0, 0, 255] },
    night:      { tone: [-60, -60, 0, 40] },
    sunset:     { tone: [40, 10, -30, 20] },
    horror:     { tone: [20, -30, -30, 100] },
    underwater: { tone: [-40, 10, 30, 30] },
    dream:      { tone: [20, 10, 30, 40] },
    toxic:      { tone: [-20, 30, -30, 50] },
    frozen:     { tone: [-20, -10, 40, 30] },
    rage:       { tone: [50, -30, -30, 20] },
  }
  #-----------------------------------------------------------------------------
  #  Get the map viewport (@@viewport1 from Spriteset_Map)
  #-----------------------------------------------------------------------------
  def self.map_viewport
    Spriteset_Map.viewport
  end
  #-----------------------------------------------------------------------------
  #  Apply a visual effect to the map viewport
  #  effect_name: Symbol from EFFECTS, or :custom
  #  duration:    frames to fade in (0 = instant)
  #  tone:        [r, g, b, gray] for :custom
  #  color:       [r, g, b, a] for color overlay
  #-----------------------------------------------------------------------------
  def self.apply(effect_name, duration: 0, tone: nil, color: nil)
    vp = map_viewport
    return unless vp
    # Resolve target tone
    if effect_name == :custom
      target_tone = tone ? Tone.new(*tone) : Tone.new(0, 0, 0, 0)
      target_color = color ? Color.new(*color) : nil
    else
      preset = EFFECTS[effect_name]
      return unless preset
      t = preset[:tone]
      target_tone = Tone.new(t[0], t[1], t[2], t[3])
      c = preset[:color]
      target_color = c ? Color.new(c[0], c[1], c[2], c[3]) : nil
    end
    # Store for persistence across map transfers
    $game_screen.instance_variable_set(:@sc_vfx_tone, [
      target_tone.red, target_tone.green, target_tone.blue, target_tone.gray
    ])
    if target_color
      $game_screen.instance_variable_set(:@sc_vfx_color, [
        target_color.red, target_color.green, target_color.blue, target_color.alpha
      ])
    else
      $game_screen.instance_variable_set(:@sc_vfx_color, nil)
    end
    # Apply
    if duration <= 0
      vp.tone = target_tone
      vp.color = target_color if target_color
    else
      start_tone = vp.tone.clone
      start_color = vp.color.clone
      duration.times do |i|
        t = (i + 1).to_f / duration
        vp.tone.red   = lerp(start_tone.red,   target_tone.red,   t)
        vp.tone.green = lerp(start_tone.green, target_tone.green, t)
        vp.tone.blue  = lerp(start_tone.blue,  target_tone.blue,  t)
        vp.tone.gray  = lerp(start_tone.gray,  target_tone.gray,  t)
        if target_color
          vp.color.red   = lerp(start_color.red,   target_color.red,   t)
          vp.color.green = lerp(start_color.green, target_color.green, t)
          vp.color.blue  = lerp(start_color.blue,  target_color.blue,  t)
          vp.color.alpha = lerp(start_color.alpha, target_color.alpha, t)
        end
        Graphics.update
      end
    end
  end
  #-----------------------------------------------------------------------------
  #  Remove all effects (restore normal viewport)
  #-----------------------------------------------------------------------------
  def self.remove(duration: 0)
    vp = map_viewport
    return unless vp
    $game_screen.instance_variable_set(:@sc_vfx_tone, nil)
    $game_screen.instance_variable_set(:@sc_vfx_color, nil)
    target_tone = Tone.new(0, 0, 0, 0)
    target_color = Color.new(0, 0, 0, 0)
    if duration <= 0
      vp.tone = target_tone
      vp.color = target_color
    else
      start_tone = vp.tone.clone
      start_color = vp.color.clone
      duration.times do |i|
        t = (i + 1).to_f / duration
        vp.tone.red   = lerp(start_tone.red,   0, t)
        vp.tone.green = lerp(start_tone.green, 0, t)
        vp.tone.blue  = lerp(start_tone.blue,  0, t)
        vp.tone.gray  = lerp(start_tone.gray,  0, t)
        vp.color.red   = lerp(start_color.red,   0, t)
        vp.color.green = lerp(start_color.green, 0, t)
        vp.color.blue  = lerp(start_color.blue,  0, t)
        vp.color.alpha = lerp(start_color.alpha, 0, t)
        Graphics.update
      end
    end
  end
  #-----------------------------------------------------------------------------
  #  Re-apply stored effect (after map transfer)
  #-----------------------------------------------------------------------------
  def self.restore
    vp = map_viewport
    return unless vp
    stored = $game_screen.instance_variable_get(:@sc_vfx_tone)
    return unless stored
    vp.tone = Tone.new(stored[0], stored[1], stored[2], stored[3])
    stored_color = $game_screen.instance_variable_get(:@sc_vfx_color)
    vp.color = Color.new(stored_color[0], stored_color[1], stored_color[2], stored_color[3]) if stored_color
  end
  #-----------------------------------------------------------------------------
  #  Linear interpolation
  #-----------------------------------------------------------------------------
  def self.lerp(a, b, t)
    a + (b - a) * t
  end
end

#===============================================================================
#  Global event script commands
#===============================================================================
def pbApplyEffect(effect_name, duration: 0, tone: nil, color: nil)
  SCVisualFX.apply(effect_name, duration: duration, tone: tone, color: color)
end

def pbRemoveEffect(duration: 0)
  SCVisualFX.remove(duration: duration)
end

def pbInvertPlayer(enabled)
  return unless $scene.is_a?(Scene_Map)
  sprite = $game_player.sprite
  return unless sprite.respond_to?(:invert=)
  sprite.invert = enabled
end

#===============================================================================
#  Restore effect after map transfer
#===============================================================================
EventHandlers.add(:on_enter_map, :sc_vfx_restore,
  proc { |_old_map_id|
    SCVisualFX.restore
  }
)
