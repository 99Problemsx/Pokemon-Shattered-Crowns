#===============================================================================
# Electric Spark Animation
#===============================================================================
# Per-event animation for sparking wires or electric hazards.
#===============================================================================

class OverworldAnimation::ElectricSpark < OverworldAnimation::EventAnimation
  SPARK_COUNT = 8
  
  def initialize(event, options = {})
    super(event)
    @color = options[:color] || Color.new(255, 255, 100)
    @intensity = options[:intensity] || 1.0
    @interval = options[:interval] || 30  # Frames between bursts
  end
  
  def start
    super
    @sparks = []
    @timer = 0
    @bursting = false
  end
  
  def update
    return unless @active
    
    @timer += 1
    
    # Start burst at intervals
    if @timer >= @interval && !@bursting
      start_burst
      @timer = 0
    end
    
    # Update existing sparks
    @sparks.each do |spark|
      # Expand outward
      spark[:sprite].x += spark[:dx]
      spark[:sprite].y += spark[:dy]
      
      # Fade quickly
      spark[:sprite].opacity -= 15
      
      # Flash effect
      if rand(100) < 30
        spark[:sprite].visible = !spark[:sprite].visible
      end
    end
    
    # Remove dead sparks
    @sparks.reject! do |spark|
      if spark[:sprite].opacity <= 0
        spark[:sprite].dispose
        @sprites.delete(spark[:sprite])
        true
      else
        false
      end
    end
    
    @bursting = @sparks.any?
  end
  
  def dispose
    @sparks.each { |s| s[:sprite].dispose if s[:sprite] && !s[:sprite].disposed? }
    @sparks.clear
    super
  end
  
  private
  
  def start_burst
    # Play spark sound
    pbSEPlay("Electric Spark", 60, 100 + rand(-10..10)) rescue nil
    
    SPARK_COUNT.times do
      create_spark
    end
    @bursting = true
  end
  
  def create_spark
    sprite = Sprite.new(@viewport)
    sprite.x = event_x + rand(-5..5)
    sprite.y = event_y + rand(-10..5)
    sprite.z = 250
    
    # Create spark line
    length = rand(3..8)
    sprite.bitmap = Bitmap.new(2, length)
    sprite.bitmap.fill_rect(0, 0, 2, length, @color)
    
    sprite.ox = 1
    sprite.oy = length / 2
    sprite.opacity = 255
    sprite.angle = rand(0..360)
    
    # Random direction
    angle_rad = (sprite.angle * Math::PI) / 180
    speed = rand(2.0..5.0) * @intensity
    
    @sprites << sprite
    @sparks << {
      sprite: sprite,
      dx: Math.cos(angle_rad) * speed,
      dy: Math.sin(angle_rad) * speed
    }
  end
end
