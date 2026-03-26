#===============================================================================
#  [SC] Visual Effects — Post-processing effects for viewports & sprites
#===============================================================================
#  Uses $game_screen.start_tone_change which is the PE-native way to change
#  viewport tone. Spriteset_Map#update applies $game_screen.tone every frame,
#  so setting viewport.tone directly gets overwritten immediately.
#
#  === EVENT SCRIPT COMMANDS ===
#
#    pbApplyEffect(:sepia)                             # apply sepia tone
#    pbApplyEffect(:grayscale)                         # full desaturation
#    pbApplyEffect(:night)                             # cold blue night
#    pbApplyEffect(:sunset)                            # warm orange sunset
#    pbApplyEffect(:horror)                            # desaturated red horror
#    pbApplyEffect(:underwater)                        # deep blue-green underwater
#    pbApplyEffect(:dream)                             # soft pastel dreamlike
#    pbApplyEffect(:toxic)                             # sickly green poison
#    pbApplyEffect(:frozen)                            # icy blue frozen
#    pbApplyEffect(:rage)                              # intense red rage
#    pbApplyEffect(:sepia, duration: 20)               # fade in (duration in 1/20s)
#    pbApplyEffect(:custom, tone: [30, -10, -40, 80])  # custom tone [r,g,b,gray]
#    pbRemoveEffect                                    # remove all effects
#    pbRemoveEffect(duration: 20)                      # fade out (duration in 1/20s)
#    pbInvertPlayer(true)                              # invert player sprite
#    pbInvertPlayer(false)                             # restore player sprite
#
#===============================================================================
module SCVisualFX
  EFFECTS = {
    sepia:      [25, 10, -30, 120],
    grayscale:  [0, 0, 0, 255],
    night:      [-60, -60, 0, 40],
    sunset:     [40, 10, -30, 20],
    horror:     [20, -30, -30, 100],
    underwater: [-40, 10, 30, 30],
    dream:      [20, 10, 30, 40],
    toxic:      [-20, 30, -30, 50],
    frozen:     [-20, -10, 40, 30],
    rage:       [50, -30, -30, 20],
  }

  def self.apply(effect_name, duration: 0, tone: nil)
    if effect_name == :custom
      t = tone || [0, 0, 0, 0]
    else
      t = EFFECTS[effect_name]
      return unless t
    end
    target = Tone.new(t[0], t[1], t[2], t[3])
    $game_screen.start_tone_change(target, duration)
  end

  def self.remove(duration: 0)
    $game_screen.start_tone_change(Tone.new(0, 0, 0, 0), duration)
  end
end

def pbApplyEffect(effect_name, duration: 0, tone: nil)
  SCVisualFX.apply(effect_name, duration: duration, tone: tone)
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
