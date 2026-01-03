#===============================================================================
# Crystal Glow Animation
#===============================================================================
# Per-event animation for pulsing crystal/gem shine.
#===============================================================================

class OverworldAnimation::CrystalGlow < OverworldAnimation::EventAnimation
  def initialize(event, options = {})
    super(event)
    @color = options[:color] || Color.new(150, 200, 255)
    @pulse_speed = options[:pulse_speed] || 0.03
    @size = options[:size] || 1.0
    @with_light = options[:light] != false
    @sparkle = options[:sparkle] != false
  end
  
  def start
    super
    @phase = 0
    @sparkles = []
    
    create_glow
    
    if @with_light && SCScripts::Lighting.available?
      SCScripts::Lighting.add_event_light(@event,
        color: @color,
        radius: 60 * @size,
        pulse: true
      )
    end
  end
  
  def update
    return unless @active
    
    # Pulse the main glow
    @phase += @pulse_speed
    pulse = (Math.sin(@phase) + 1) / 2  # 0 to 1
    
    @glow_sprite.opacity = (80 + pulse * 100).to_i
    @glow_sprite.zoom_x = (0.8 + pulse * 0.4) * @size
    @glow_sprite.zoom_y = (0.8 + pulse * 0.4) * @size
    
    # Update position
    @glow_sprite.x = event_x
    @glow_sprite.y = event_y - 8
    
    # Sparkle effect
    if @sparkle && rand(100) < 5
      create_sparkle
    end
    
    update_sparkles
  end
  
  def stop
    if @with_light && SCScripts::Lighting.available?
      SCScripts::Lighting.remove_event_light(@event)
    end
    super
  end
  
  def dispose
    @glow_sprite&.dispose
    @sparkles.each { |s| s[:sprite].dispose if s[:sprite] && !s[:sprite].disposed? }
    @sparkles.clear
    super
  end
  
  private
  
  def create_glow
    @glow_sprite = Sprite.new(@viewport)
    @glow_sprite.z = 100
    
    # Create radial glow
    size = (40 * @size).to_i
    @glow_sprite.bitmap = Bitmap.new(size, size)
    
    # Simple gradient approximation
    center = size / 2
    (size / 2).times do |i|
      radius = (size / 2) - i
      alpha = ((@color.alpha || 255) * (i.to_f / (size / 2))).to_i
      ring_color = Color.new(@color.red, @color.green, @color.blue, alpha)
      
      # Draw ring
      @glow_sprite.bitmap.fill_rect(center - radius, center - i, radius * 2, 1, ring_color)
      @glow_sprite.bitmap.fill_rect(center - radius, center + i, radius * 2, 1, ring_color)
    end
    
    @glow_sprite.ox = size / 2
    @glow_sprite.oy = size / 2
    @glow_sprite.x = event_x
    @glow_sprite.y = event_y - 8
    
    @sprites << @glow_sprite
  end
  
  def create_sparkle
    sprite = Sprite.new(@viewport)
    sprite.x = event_x + rand(-15..15)
    sprite.y = event_y + rand(-20..5)
    sprite.z = 250
    
    # Tiny sparkle
    sprite.bitmap = Bitmap.new(4, 4)
    sprite.bitmap.fill_rect(1, 0, 2, 4, Color.new(255, 255, 255))
    sprite.bitmap.fill_rect(0, 1, 4, 2, Color.new(255, 255, 255))
    
    sprite.ox = 2
    sprite.oy = 2
    sprite.opacity = 255
    
    @sprites << sprite
    @sparkles << {
      sprite: sprite,
      life: 20
    }
  end
  
  def update_sparkles
    @sparkles.each do |sparkle|
      sparkle[:sprite].opacity -= 12
      sparkle[:sprite].zoom_x *= 0.95
      sparkle[:sprite].zoom_y *= 0.95
      sparkle[:life] -= 1
    end
    
    @sparkles.reject! do |sparkle|
      if sparkle[:life] <= 0 || sparkle[:sprite].opacity <= 0
        sparkle[:sprite].dispose
        @sprites.delete(sparkle[:sprite])
        true
      else
        false
      end
    end
  end
end

# Aliases
OverworldAnimation::GemGlow = OverworldAnimation::CrystalGlow
OverworldAnimation::MagicGlow = OverworldAnimation::CrystalGlow
