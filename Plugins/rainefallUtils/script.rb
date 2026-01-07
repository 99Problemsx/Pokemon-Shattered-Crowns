# Graphics functions
class Bitmap
  # INEFFICIENT, NOT RECOMMENDED FOR REALTIME USE
  def blur_rf(power, opacity = 128)
    power.times do |i|
      blur_fast(i, opacity / (i+1))
    end
  end
  
  # SLIGHTLY LESS INEFICCIENT
  def blur_fast(power, opacity = 128)
    blt(power * 2, 0, self, self.rect, opacity )
    blt(-power * 2, 0, self, self.rect, opacity)
    blt(0, power * 2, self, self.rect, opacity)
    blt(0, -power * 2, self, self.rect, opacity)
  end
end

class Sprite
  # Add end_x and end_y attributes for animation/tween support
  attr_accessor :end_x, :end_y

  def create_outline_sprite(width = 2)
    return if !self.bitmap
    s = Sprite.new(self.viewport)
    s.x = self.x - width
    s.y = self.y - width
    s.z = self.z
    self.z += 1
    s.ox = self.ox
    s.oy = self.oy
    s.tone.set(255,255,255)
    s.bitmap = Bitmap.new(self.bitmap.width + width * 2, self.bitmap.height + width * 2)
    3.times do |y|
      3.times do |x|
        next if y == 1 && y == x
        s.bitmap.blt(x * width, y * width, self.bitmap, self.bitmap.rect)
      end
    end
    return s
  end

  # Compatibility blur helper - attempts multiple available blur implementations
  def blur_sprite(power = 1, opacity = 128)
    return unless self.bitmap

    if self.bitmap.respond_to?(:blur_rf)
      # Use rainefallUtils' blur_rf if available
      self.bitmap.blur_rf(power, opacity)
    elsif self.bitmap.respond_to?(:blur_fast)
      # Use blur_fast if available
      self.bitmap.blur_fast(power, opacity)
    elsif respond_to?(:blur)
      # Sprite-level blur exists (e.g., LUTS::Sprites::Base#blur)
      begin
        # If blur accepts an argument, pass it; otherwise call it multiple times
        if method(:blur).arity == 0
          power.times { blur }
        else
          blur(power)
        end
      rescue
        power.times { blur }
      end
    elsif self.bitmap.respond_to?(:blur)
      # Bitmap-level blur
      power.times { self.bitmap.blur }
    else
      # Fallback: approximate blur using offset blits
      power.times do |i|
        offset = (i + 1) * 2
        self.bitmap.blt(offset, 0, self.bitmap, self.bitmap.rect, opacity)
        self.bitmap.blt(-offset, 0, self.bitmap, self.bitmap.rect, opacity)
        self.bitmap.blt(0, offset, self.bitmap, self.bitmap.rect, opacity)
        self.bitmap.blt(0, -offset, self.bitmap, self.bitmap.rect, opacity)
      end
    end
  end
end

# Compatibility helper for pbBitmap (Essentials helper)
# Provides a fallback implementation if pbBitmap isn't defined by other scripts
unless self.respond_to?(:pbBitmap)
  def pbBitmap(path)
    # Try SpriteHash first (safer than LUTS which may not be defined)
    begin
      if defined?(SpriteHash) && SpriteHash.respond_to?(:bitmap)
        return SpriteHash.bitmap(path)
      end
    rescue
      # Continue to fallback
    end

    # Fallback: attempt to create a Bitmap from the path directly
    begin
      return Bitmap.new(path)
    rescue
      return nil
    end
  end
end

# Provide a safe accessor for @spritesetGlobal on any object so plugin code
# that calls $scene.spritesetGlobal won't raise NoMethodError on scenes that
# don't define it (e.g., debug or intro scenes).
unless Object.instance_methods.include?(:spritesetGlobal)
  class Object
    def spritesetGlobal
      instance_variable_defined?(:@spritesetGlobal) ? instance_variable_get(:@spritesetGlobal) : nil
    end
  end
end

# Lightweight ScrollingSprite fallback for plugins that expect it
# (Provides setBitmap / set_bitmap, speed attribute, and update tiling)
unless defined?(ScrollingSprite)
  class ScrollingSprite < Sprite
    attr_accessor :speed

    def initialize(viewport = nil)
      super(viewport)
      @speed = 0
      @offset = 0
      @src_bitmap = nil
    end

    # Accept either setBitmap or set_bitmap
    def setBitmap(path)
      set_bitmap(path)
    end
    def set_bitmap(path)
      # Try pbBitmap helper first
      bmp = nil
      begin
        bmp = pbBitmap(path) if respond_to?(:pbBitmap)
      rescue
        bmp = nil
      end

      # Try SpriteHash if pbBitmap didn't work
      if bmp.nil?
        begin
          if defined?(SpriteHash) && SpriteHash.respond_to?(:bitmap)
            bmp = SpriteHash.bitmap(path)
          end
        rescue
          bmp = nil
        end
      end

      # Fallback: create Bitmap directly
      bmp = Bitmap.new(path) rescue nil if bmp.nil?

      return unless bmp && viewport

      @src_bitmap = bmp.is_a?(Bitmap) ? bmp : (bmp.bitmap rescue bmp)
      # create or resize working bitmap to viewport size
      self.bitmap = Bitmap.new(viewport.rect.width, viewport.rect.height)
      update if @src_bitmap
    end

    def update
      super if defined?(super)
      return unless self.bitmap && @src_bitmap
      @offset = (@offset + @speed) % @src_bitmap.width if @src_bitmap.width > 0
      w = self.bitmap.width
      h = self.bitmap.height
      self.bitmap.clear
      x = -@offset
      while x < w
        self.bitmap.blt(x, 0, @src_bitmap, Rect.new(0, 0, @src_bitmap.width, [@src_bitmap.height, h].min))
        x += @src_bitmap.width
      end
    end

    def dispose
      self.bitmap.dispose if self.bitmap && !self.bitmap.disposed?
      @src_bitmap = nil
      super if defined?(super)
    end
  end
end

# Maths functions

module Math
  def self.lerp(a, b, t)
    return (1 - t) * a + t * b
  end
end

# Map scroll locking
if RfSettings::ENABLE_MAP_LOCKING
  class Game_Temp
    attr_accessor :map_locked
  end

  class Game_Player
    # Center player on-screen
    def update_screen_position(last_real_x, last_real_y)
      return if self.map.scrolling? || !(@moved_last_frame || @moved_this_frame) || $game_temp.map_locked
      self.map.display_x = @real_x - SCREEN_CENTER_X
      self.map.display_y = @real_y - SCREEN_CENTER_Y
    end
  end
end

# add characters to spriteset_map
class Spriteset_Map
  def add_character(event)
    @character_sprites.push(Sprite_Character.new(@@viewport1, event))
    return @character_sprites[-1]
  end

  def delete_character(event)
    @character_sprites.each_with_index do |e, i|
      if e.character.id == event.id
        e.dispose
        @character_sprites.delete(e)
      end
    end
  end
end

module Rf
  def self.wait_for_move_route
    loop do
        Graphics.update
        $scene.miniupdate
  
        move_route_forcing = false
  
        move_route_forcing = true if $game_player.move_route_forcing
        $game_map.events.each_value do |event|
            move_route_forcing = true if event.move_route_forcing
        end
        $game_temp.followers.each_follower do |event, follower|
            move_route_forcing = true if event.move_route_forcing
        end
  
        break if !move_route_forcing
    end
  end
  
  def self.create_event(map_id = -1)
    # get the current map/specified map if applicable
    map = $game_map
    map = $map_factory.getMapNoAdd(map_id) if map_id > 0
    # get a valid number to use as an event ID
    new_id = map.events.length + 1
    new_id -= 1 while map.events.key?(new_id)
    # create new event
    ev = RPG::Event.new(0,0)
    ev.id = new_id
    yield ev
    # add event & event character sprite to map
    map.events[ev.id] = Game_Event.new(map.map_id, ev, map) # logical event
    begin  
      $scene.spriteset(map_id)&.add_character(map.events[ev.id]) # event sprite
    rescue
      Console.echo_li "Attempted to create event before map spriteset initialised..."
    end
    return {
        :event => map.events[ev.id],
        :map_id => map.map_id
    }
  end
    
  def self.delete_event(ev)
      $scene.spriteset(ev[:map_id]).delete_character(ev[:event])
      $map_factory.getMapNoAdd(ev[:map_id]).events.delete(ev[:event].id)
  end
end