#===============================================================================
# Fireflies Effect
#===============================================================================
# Map-wide effect displaying glowing fireflies that appear at night.
#===============================================================================

class OverworldAnimation::Fireflies < OverworldAnimation::Effect
  FIREFLY_COUNT = 20
  
  def initialize(viewport = nil, options = {})
    super(viewport)
    @count = options[:count] || FIREFLY_COUNT
    @color = options[:color] || Color.new(200, 255, 150)
    @glow_color = options[:glow_color] || Color.new(150, 255, 100, 100)
    @night_only = options[:night_only] != false
  end
  
  def start
    super
    @fireflies = []
    @count.times { create_firefly }
  end
  
  def update
    return unless @active
    
    # Check if should be visible (night only by default)
    if @night_only && !is_night?
      @fireflies.each { |f| f[:sprite].visible = false }
      return
    end
    
    @fireflies.each do |firefly|
      firefly[:sprite].visible = true
      
      # Random movement
      firefly[:angle] += rand(-0.1..0.1)
      firefly[:sprite].x += Math.cos(firefly[:angle]) * firefly[:speed]
      firefly[:sprite].y += Math.sin(firefly[:angle]) * firefly[:speed]
      
      # Glow pulsing
      firefly[:glow_phase] += 0.05
      glow = (Math.sin(firefly[:glow_phase]) + 1) / 2
      firefly[:sprite].opacity = (100 + glow * 155).to_i
      
      # Wrap around screen
      if firefly[:sprite].x < -20
        firefly[:sprite].x = Graphics.width + 10
      elsif firefly[:sprite].x > Graphics.width + 20
        firefly[:sprite].x = -10
      end
      
      if firefly[:sprite].y < -20
        firefly[:sprite].y = Graphics.height + 10
      elsif firefly[:sprite].y > Graphics.height + 20
        firefly[:sprite].y = -10
      end
      
      # Occasionally change direction
      if rand(100) < 2
        firefly[:angle] = rand(0.0..Math::PI * 2)
      end
    end
  end
  
  def dispose
    @fireflies.each { |f| f[:sprite].dispose if f[:sprite] && !f[:sprite].disposed? }
    @fireflies.clear
    super
  end
  
  private
  
  def is_night?
    return true unless defined?(PBDayNight)
    hour = PBDayNight.getTimeNow.hour rescue Time.now.hour
    hour >= 20 || hour < 6
  end
  
  def create_firefly
    sprite = Sprite.new(@viewport)
    sprite.x = rand(0..Graphics.width)
    sprite.y = rand(0..Graphics.height)
    sprite.z = 150
    
    # Create glowing dot
    size = rand(3..5)
    sprite.bitmap = Bitmap.new(size * 2, size * 2)
    
    # Glow effect (larger, semi-transparent)
    sprite.bitmap.fill_rect(0, 0, size * 2, size * 2, @glow_color)
    # Core (smaller, brighter)
    sprite.bitmap.fill_rect(size/2, size/2, size, size, @color)
    
    sprite.ox = size
    sprite.oy = size
    sprite.opacity = rand(100..255)
    
    @sprites << sprite
    @fireflies << {
      sprite: sprite,
      speed: rand(0.3..0.8),
      angle: rand(0.0..Math::PI * 2),
      glow_phase: rand(0.0..Math::PI * 2)
    }
  end
end
