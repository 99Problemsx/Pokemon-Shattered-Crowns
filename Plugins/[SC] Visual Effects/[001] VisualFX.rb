#===============================================================================
#  [SC] Visual Effects — GLSL post-processing via luka-sj/mkxp-z-ext
#===============================================================================
#  Requires: luka-sj/mkxp-z-ext build (Shader class)
#  GLSL shaders live in the Shaders/ folder.
#
#  === EVENT SCRIPT COMMANDS ===
#
#    pbApplyShader(:sepia)                    # apply preset shader
#    pbApplyShader('Shaders/custom.glsl')     # apply shader by path
#    pbRemoveShader                           # remove active shader
#    pbSetShaderFloat('time', 1.5)            # set float uniform
#    pbSetShaderVec4('tint', 1, 0, 0, 1)     # set vec4 uniform
#    pbInvertPlayer(true)                     # invert player sprite
#    pbInvertPlayer(false)                    # restore player sprite
#
#===============================================================================
module SCVisualFX
  SHADERS = {
    sepia:      'Shaders/sepia.glsl',
    grayscale:  'Shaders/grayscale.glsl',
    night:      'Shaders/night.glsl',
    sunset:     'Shaders/sunset.glsl',
    horror:     'Shaders/horror.glsl',
    underwater: 'Shaders/underwater.glsl',
    dream:      'Shaders/dream.glsl',
    toxic:      'Shaders/toxic.glsl',
    frozen:     'Shaders/frozen.glsl',
    rage:       'Shaders/rage.glsl'
  }

  @active_shader = nil

  def self.apply_shader(effect)
    path = effect.is_a?(Symbol) ? SHADERS[effect] : effect
    return false unless path
    vp = Spriteset_Map.viewport
    return false unless vp
    @active_shader&.dispose if @active_shader.respond_to?(:dispose)
    @active_shader = Shader.new(path)
    vp.shader = @active_shader
    true
  end

  def self.remove_shader
    vp = Spriteset_Map.viewport
    return unless vp
    vp.shader = nil
    @active_shader&.dispose if @active_shader.respond_to?(:dispose)
    @active_shader = nil
  end

  def self.set_float(name, value)
    @active_shader&.set_float(name, value)
  end

  def self.set_int(name, value)
    @active_shader&.set_int(name, value)
  end

  def self.set_vec2(name, x, y)
    @active_shader&.set_vec2(name, x, y)
  end

  def self.set_vec4(name, x, y, z, w)
    @active_shader&.set_vec4(name, x, y, z, w)
  end

  def self.active_shader
    @active_shader
  end
end

def pbApplyShader(effect)
  SCVisualFX.apply_shader(effect)
end

def pbRemoveShader
  SCVisualFX.remove_shader
end

def pbSetShaderFloat(name, value)
  SCVisualFX.set_float(name, value)
end

def pbSetShaderVec4(name, x, y, z, w)
  SCVisualFX.set_vec4(name, x, y, z, w)
end

def pbInvertPlayer(enabled)
  return unless $scene.is_a?(Scene_Map)
  sprite = $game_player.sprite
  return unless sprite.respond_to?(:invert=)
  sprite.invert = enabled
end
