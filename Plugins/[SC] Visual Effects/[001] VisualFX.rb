#===============================================================================
#  [SC] Visual Effects — GLSL post-processing via luka-sj/mkxp-z-ext
#===============================================================================
#  Requires: luka-sj/mkxp-z-ext build (Shader class)
#  GLSL shaders live in the Shaders/ folder.
#
#  Based on Luka's Scripting Utilities (Shader.rb + Shaderable.rb)
#
#  === EVENT SCRIPT COMMANDS ===
#
#    pbApplyShader(:sepia)                         # apply preset shader
#    pbApplyShader(:underwater, time: 1.5)         # with uniforms
#    pbApplyShader('Shaders/custom.glsl')          # by path
#    pbRemoveShader(:sepia)                        # remove specific shader
#    pbRemoveShader                                # remove all shaders
#    pbInvertPlayer(true)                          # invert player sprite
#    pbInvertPlayer(false)                         # restore player sprite
#
#  === ADVANCED (SCRIPT) ===
#
#    vp = Spriteset_Map.viewport
#    vp.add_shader(:night)                         # stack multiple shaders
#    vp.add_shader(:sepia, time: 0.5)              # with uniforms
#    vp.get_shader(:night)                         # retrieve by key
#    vp.remove_shader(:night)                      # remove by key
#    vp.dispose_shaders                            # remove all
#
#===============================================================================

#---------------------------------------
# Shader class extensions
#---------------------------------------
class Shader
  class ShaderError < StandardError; end

  alias initialize_core initialize
  alias dispose_core dispose

  attr_reader :key

  def initialize(key, properties = {})
    if key.is_a?(Symbol)
      @key        = key
      @properties = properties
      @disposed   = false
      validate
      initialize_core(path)
      set_properties
    else
      @key       = nil
      @disposed  = false
      initialize_core(key)
    end
  end

  def dispose
    return if disposed?
    dispose_core
    @disposed = true
  end

  def disposed?
    @disposed
  end

  private

  attr_reader :properties

  def path
    @path ||= "Shaders/#{key}.glsl"
  end

  def validate
    return if FileTest.exist?(path)
    raise ShaderError, "Shader file not found: `#{path}`"
  end

  def set_properties
    return unless properties
    properties.each do |name, value|
      values = Array(value)
      case values.count
      when 1
        if values.first.is_a?(Bitmap)
          set_bitmap(name.to_s, values.first)
        elsif values.first.is_a?(String)
          set_bitmap(name.to_s, Bitmap.new(values.first))
        else
          set_float(name.to_s, values.first.to_f)
        end
      when 2 then set_vec2(name.to_s, *values)
      when 3 then set_vec3(name.to_s, *values)
      when 4 then set_vec4(name.to_s, *values)
      end
    end
  end
end

#---------------------------------------
# Shaderable concern for Sprite/Viewport
#---------------------------------------
module Shaderable
  def add_shader(key, properties = {})
    shader = key.is_a?(Shader) ? key : Shader.new(key, properties)
    self.shaders = shaders + [shader]
  end

  def remove_shader(key)
    self.shaders = shaders.reject.with_index do |shader, i|
      (key.is_a?(Integer) && i.eql?(key)) ||
        (key.is_a?(Symbol) && shader.key.eql?(key)) ||
        (key.is_a?(Shader) && shader.eql?(key))
    end
  end

  def get_shader(key)
    return shaders[key] if key.is_a?(Integer)
    shaders.find { |shader| shader.key.eql?(key) }
  end

  def dispose_shaders
    shaders.each(&:dispose)
    self.shaders = []
  end
end

class Sprite
  include Shaderable
end

class Viewport
  include Shaderable
end

#---------------------------------------
# SCVisualFX module
#---------------------------------------
module SCVisualFX
  PRESETS = [
    :sepia, :grayscale, :night, :sunset, :horror,
    :underwater, :dream, :toxic, :frozen, :rage,
    :fireflies, :cave, :volcano, :forest, :rain,
    :storm, :haunted, :fog, :distortion, :bloom,
    :windrain, :water, :lava
  ]

  def self.apply_shader(effect, **properties)
    vp = Spriteset_Map.viewport
    return false unless vp
    if effect.is_a?(Symbol)
      vp.add_shader(effect, properties)
    else
      shader = Shader.new(effect)
      vp.add_shader(shader)
    end
    disable_sun
    true
  end

  def self.remove_shader(key = nil)
    vp = Spriteset_Map.viewport
    return unless vp
    if key
      vp.remove_shader(key)
    else
      vp.dispose_shaders
    end
    # Re-enable sun only when no shaders remain
    restore_sun if vp.shaders.empty?
  end

  def self.disable_sun
    $sun_switch = false
    if defined?(SunSettings) && SunSettings.sun_sprite &&
       !SunSettings.sun_sprite.disposed?
      SunSettings.sun_sprite.dispose
      SunSettings.sun_sprite = nil
    end
  end

  def self.restore_sun
    $sun_switch = true
  end

  def self.get_shader(key)
    vp = Spriteset_Map.viewport
    return unless vp
    vp.get_shader(key)
  end

  def self.update_shaders
    vp = Spriteset_Map.viewport
    return unless vp
    t = Graphics.frame_count / 60.0
    vp.shaders.each do |shader|
      next if shader.disposed?
      shader.set_float('time', t) rescue nil
    end
  end
end

#---------------------------------------
# Event script commands
#---------------------------------------
def pbApplyShader(effect, **properties)
  SCVisualFX.apply_shader(effect, **properties)
end

def pbRemoveShader(key = nil)
  SCVisualFX.remove_shader(key)
end

def pbInvertPlayer(enabled)
  return unless $scene.is_a?(Scene_Map)
  sprite = $game_player.sprite
  return unless sprite.respond_to?(:invert=)
  sprite.invert = enabled
end

#---------------------------------------
# Frame update hook for animated shaders
#---------------------------------------
class Spriteset_Map
  alias update_sc_visualfx update
  def update
    update_sc_visualfx
    SCVisualFX.update_shaders
  end
end
