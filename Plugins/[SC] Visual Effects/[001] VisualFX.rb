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
#  === WATER SHADER (tilemap-based, cross-map) ===
#
#    pbApplyWater                                   # reads terrain tags automatically
#    pbApplyWater(speed: 0.8)                       # custom wave speed
#    pbApplyWater(strength: 1.5, pixelSize: 2.0)   # custom params
#    pbRemoveWater                                  # remove water shader
#
#  Water mask covers all connected maps loaded by PokemonMapFactory.
#  Waves work seamlessly across map borders (e.g. water routes).
#  The mask auto-regenerates when the player enters a new map.
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

  WATER_TAGS = [:DeepWater, :StillWater, :Water, :Waterfall, :WaterfallCrest]

  @water_mask    = nil
  @water_active  = false
  @water_opts    = {}
  @mask_origin_x = 0   # combined mask origin in tiles (relative to current map)
  @mask_origin_y = 0
  @mask_width    = 0   # combined mask size in tiles
  @mask_height   = 0

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

  #---------------------------------------------------------------------------
  # Apply water shader. Reads terrain tags from all connected maps to build a
  # combined mask bitmap. Waves work seamlessly across map borders.
  #
  #   pbApplyWater                              # default settings
  #   pbApplyWater(speed: 0.8, strength: 1.5)  # custom wave params
  #   pbRemoveWater                             # remove
  #---------------------------------------------------------------------------
  def self.apply_water(**opts)
    vp = Spriteset_Map.viewport
    return false unless vp

    @water_opts   = opts
    @water_active = true

    @water_mask&.dispose
    mask = generate_water_mask
    @water_mask = mask

    dx = $game_map.display_x / Game_Map::X_SUBPIXELS.to_f
    dy = $game_map.display_y / Game_Map::Y_SUBPIXELS.to_f

    props = {
      waterMask:    mask,
      resolution:   [Graphics.width.to_f, Graphics.height.to_f],
      mapSize:      [@mask_width.to_f, @mask_height.to_f],
      scrollOffset: [dx, dy],
      maskOffset:   [@mask_origin_x * 32.0, @mask_origin_y * 32.0],
      waveSpeed:    opts.fetch(:speed,     1.0),
      waveStrength: opts.fetch(:strength,  1.0),
      pixelSize:    opts.fetch(:pixelSize, 2.0)
    }

    vp.remove_shader(:water) if vp.get_shader(:water)
    vp.add_shader(:water, props)
    disable_sun
    true
  end

  def self.remove_water
    @water_active = false
    @water_opts   = {}
    @water_mask&.dispose
    @water_mask = nil
    vp = Spriteset_Map.viewport
    return unless vp
    vp.remove_shader(:water)
    restore_sun if vp.shaders.empty?
  end

  #---------------------------------------------------------------------------
  # Build a 1-pixel-per-tile mask from terrain tags across all connected maps.
  # Uses $map_factory to find neighbouring maps and their tile offsets.
  #---------------------------------------------------------------------------
  def self.generate_water_mask
    maps_data = collect_connected_maps
    min_x = maps_data.map { |d| d[:ox] }.min
    min_y = maps_data.map { |d| d[:oy] }.min
    max_x = maps_data.map { |d| d[:ox] + d[:map].width }.max
    max_y = maps_data.map { |d| d[:oy] + d[:map].height }.max
    total_w = max_x - min_x
    total_h = max_y - min_y
    @mask_origin_x = min_x
    @mask_origin_y = min_y
    @mask_width    = total_w
    @mask_height   = total_h
    mask  = Bitmap.new(total_w, total_h)
    white = Color.new(255, 255, 255, 255)
    maps_data.each do |data|
      map = data[:map]
      ox  = data[:ox] - min_x
      oy  = data[:oy] - min_y
      (0...map.height).each do |y|
        (0...map.width).each do |x|
          tag = map.terrain_tag(x, y)
          mask.set_pixel(ox + x, oy + y, white) if WATER_TAGS.include?(tag.id)
        end
      end
    end
    mask
  end

  #---------------------------------------------------------------------------
  # Gather all loaded maps with their tile offsets relative to the current map.
  #---------------------------------------------------------------------------
  def self.collect_connected_maps
    maps_data = []
    if defined?($map_factory) && $map_factory
      $map_factory.maps.each do |map|
        next unless map
        rel = $map_factory.getRelativePos(
          $game_map.map_id, 0, 0, map.map_id, 0, 0
        )
        maps_data << { map: map, ox: rel[0], oy: rel[1] }
      end
    end
    if maps_data.empty?
      maps_data << { map: $game_map, ox: 0, oy: 0 }
    end
    maps_data
  end

  #---------------------------------------------------------------------------
  # Re-apply water after a map transition (regenerates the mask).
  #---------------------------------------------------------------------------
  def self.refresh_water
    return unless @water_active
    apply_water(**@water_opts)
  end

  def self.water_active?
    @water_active
  end

  def self.remove_shader(key = nil)
    vp = Spriteset_Map.viewport
    return unless vp
    if key
      if key == :water
        @water_active = false
        @water_opts   = {}
        @water_mask&.dispose
        @water_mask = nil
      end
      vp.remove_shader(key)
    else
      @water_active = false
      @water_opts   = {}
      @water_mask&.dispose
      @water_mask = nil
      vp.dispose_shaders
    end
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

  #---------------------------------------------------------------------------
  # Per-frame update: time + water scroll offset
  #---------------------------------------------------------------------------
  def self.update_shaders
    vp = Spriteset_Map.viewport
    return unless vp
    t = Graphics.frame_count / 60.0
    vp.shaders.each do |shader|
      next if shader.disposed?
      shader.set_float('time', t) rescue nil
    end
    # Update water camera scroll
    water = vp.get_shader(:water)
    if water && !water.disposed?
      dx = $game_map.display_x / Game_Map::X_SUBPIXELS.to_f
      dy = $game_map.display_y / Game_Map::Y_SUBPIXELS.to_f
      water.set_vec2('scrollOffset', dx, dy) rescue nil
    end
  end
end

#---------------------------------------
# Auto-regenerate water mask on map change
#---------------------------------------
EventHandlers.add(:on_enter_map, :sc_water_refresh,
  proc { |_old_map_id|
    SCVisualFX.refresh_water if SCVisualFX.water_active?
  }
)

#---------------------------------------
# Event script commands
#---------------------------------------
def pbApplyShader(effect, **properties)
  SCVisualFX.apply_shader(effect, **properties)
end

def pbRemoveShader(key = nil)
  SCVisualFX.remove_shader(key)
end

def pbApplyWater(**opts)
  SCVisualFX.apply_water(**opts)
end

def pbRemoveWater
  SCVisualFX.remove_water
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
