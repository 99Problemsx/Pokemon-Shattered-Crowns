#===============================================================================
# Falling Petals Effect
#===============================================================================
# Map-wide effect displaying cherry blossom petals falling.
#===============================================================================

class OverworldAnimation::FallingPetals < OverworldAnimation::Effect
  PETAL_COUNT = 25
  
  def initialize(viewport = nil, options = {})
    super(viewport)
    @count = options[:count] || PETAL_COUNT
    @color = options[:color] || Color.new(255, 180, 200)
    @speed = options[:speed] || 1.0
  end
  
  def start
    super
    @petals = []
    @count.times { create_petal }
  end
  
  def update
    return unless @active
    
    @petals.each do |petal|
      # Fall downward with drift
      petal[:sprite].y += petal[:fall_speed] * @speed
      petal[:sprite].x += Math.sin(petal[:sway]) * petal[:sway_amount]
      petal[:sway] += petal[:sway_speed]
      
      # Rotate
      petal[:sprite].angle += petal[:rotation]
      
      # Fade near bottom
      if petal[:sprite].y > Graphics.height - 50
        petal[:sprite].opacity -= 5
      end
      
      # Reset if off screen
      if petal[:sprite].y > Graphics.height + 20 || petal[:sprite].opacity <= 0
        reset_petal(petal)
      end
    end
  end
  
  def dispose
    @petals.each { |p| p[:sprite].dispose if p[:sprite] && !p[:sprite].disposed? }
    @petals.clear
    super
  end
  
  private
  
  def create_petal
    sprite = Sprite.new(@viewport)
    sprite.z = 120
    
    # Create petal shape
    size = rand(4..8)
    sprite.bitmap = Bitmap.new(size, size)
    
    # Oval-ish petal
    sprite.bitmap.fill_rect(1, 0, size - 2, size, @color)
    sprite.bitmap.fill_rect(0, 1, size, size - 2, @color)
    
    sprite.ox = size / 2
    sprite.oy = size / 2
    
    reset_petal_position(sprite)
    
    @sprites << sprite
    @petals << {
      sprite: sprite,
      fall_speed: rand(0.5..1.5),
      sway: rand(0.0..Math::PI * 2),
      sway_speed: rand(0.02..0.06),
      sway_amount: rand(0.5..1.5),
      rotation: rand(-2.0..2.0)
    }
  end
  
  def reset_petal(petal)
    reset_petal_position(petal[:sprite])
    petal[:fall_speed] = rand(0.5..1.5)
    petal[:sway_amount] = rand(0.5..1.5)
  end
  
  def reset_petal_position(sprite)
    sprite.x = rand(-20..Graphics.width + 20)
    sprite.y = rand(-50..-10)
    sprite.opacity = rand(150..255)
    sprite.angle = rand(0..360)
  end
end

# Aliases
OverworldAnimation::CherryBlossoms = OverworldAnimation::FallingPetals
OverworldAnimation::Sakura = OverworldAnimation::FallingPetals
