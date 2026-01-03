#===============================================================================
# Fireplace/Torch Animation
#===============================================================================
# Creates flickering fire effect with optional lighting integration.
#===============================================================================

class OverworldAnimation::Fireplace < OverworldAnimation::EventAnimation
  FLAME_COUNT = 6
  
  def initialize(event, options = {})
    super(event)
    @color = options[:color] || Color.new(255, 150, 50)
    @intensity = options[:intensity] || 1.0
    @size = options[:size] || 1.0
    @with_light = options[:light] != false
  end
  
  def start
    super
    @flames = []
    FLAME_COUNT.times { create_flame }
    
    # Add dynamic light if available
    if @with_light && SCScripts::Lighting.available?
      SCScripts::Lighting.add_event_light(@event, 
        color: @color, 
        radius: 80 * @intensity,
        flicker: true
      )
    end
  end
  
  def update
    return unless @active
    
    @flames.each do |flame|
      # Flicker upward
      flame[:sprite].y -= flame[:speed]
      flame[:sprite].x += Math.sin(flame[:sway]) * 1.5
      flame[:sway] += 0.2
      
      # Fade and shrink
      flame[:sprite].opacity -= 5
      flame[:sprite].zoom_x *= 0.98
      flame[:sprite].zoom_y *= 0.98
      
      # Color shift (orange to yellow)
      flame[:life] += 1
      
      # Reset
      if flame[:sprite].opacity <= 0
        reset_flame(flame)
      end
    end
  end
  
  def stop
    if @with_light && SCScripts::Lighting.available?
      SCScripts::Lighting.remove_event_light(@event)
    end
    super
  end
  
  def dispose
    @flames.each { |f| f[:sprite].dispose if f[:sprite] && !f[:sprite].disposed? }
    @flames.clear
    super
  end
  
  private
  
  def create_flame
    sprite = Sprite.new(@viewport)
    sprite.z = 200
    
    # Create flame particle
    size = (8 * @size).to_i
    sprite.bitmap = Bitmap.new(size, size * 2)
    sprite.bitmap.fill_rect(0, 0, size, size * 2, @color)
    
    sprite.ox = size / 2
    sprite.oy = size
    
    reset_flame_position(sprite)
    
    @sprites << sprite
    @flames << {
      sprite: sprite,
      speed: rand(0.5..1.5),
      sway: rand(0.0..Math::PI * 2),
      life: 0
    }
  end
  
  def reset_flame(flame)
    reset_flame_position(flame[:sprite])
    flame[:sprite].opacity = rand(180..255)
    flame[:sprite].zoom_x = rand(0.8..1.2) * @size
    flame[:sprite].zoom_y = rand(1.0..1.5) * @size
    flame[:speed] = rand(0.5..1.5)
    flame[:life] = 0
  end
  
  def reset_flame_position(sprite)
    sprite.x = event_x + rand(-6..6)
    sprite.y = event_y + rand(-4..4)
    sprite.opacity = rand(180..255)
    sprite.zoom_x = rand(0.8..1.2) * @size
    sprite.zoom_y = rand(1.0..1.5) * @size
  end
end

# Alias for torch
OverworldAnimation::Torch = OverworldAnimation::Fireplace
