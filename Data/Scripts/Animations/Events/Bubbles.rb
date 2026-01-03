#===============================================================================
# Bubbles Event Animation
#===============================================================================
# Per-event animation that displays rising bubbles from an event (e.g., fountain).
#===============================================================================

class OverworldAnimation::Bubbles < OverworldAnimation::EventAnimation
  BUBBLE_COUNT = 8
  
  def start
    super
    @bubbles = []
    BUBBLE_COUNT.times do
      create_bubble
    end
  end
  
  def update
    return unless @active
    super # Updates position to follow event
    
    @bubbles.each do |bubble|
      # Rise upward
      bubble[:sprite].y -= bubble[:speed]
      
      # Gentle sway
      bubble[:sway] += 0.1
      bubble[:sprite].x = event_x + bubble[:offset_x] + Math.sin(bubble[:sway]) * 3
      
      # Fade as rising
      bubble[:sprite].opacity -= 2
      
      # Grow slightly as rising
      bubble[:sprite].zoom_x += 0.002
      bubble[:sprite].zoom_y += 0.002
      
      # Reset if faded or too high
      if bubble[:sprite].opacity <= 0 || 
         bubble[:sprite].y < event_y - 60
        reset_bubble(bubble)
      end
    end
  end
  
  def dispose
    @bubbles.each { |b| b[:sprite].dispose if b[:sprite] && !b[:sprite].disposed? }
    @bubbles.clear
    super
  end
  
  private
  
  def create_bubble
    sprite = Sprite.new(@viewport)
    sprite.x = event_x + rand(-10..10)
    sprite.y = event_y + rand(-5..5)
    sprite.z = 200
    
    # Create a simple bubble graphic
    size = rand(4..8)
    sprite.bitmap = Bitmap.new(size, size)
    sprite.bitmap.fill_rect(0, 0, size, size, Color.new(200, 230, 255, 180))
    
    sprite.ox = size / 2
    sprite.oy = size / 2
    sprite.opacity = rand(100..200)
    sprite.zoom_x = 0.5
    sprite.zoom_y = 0.5
    
    @sprites << sprite
    @bubbles << {
      sprite: sprite,
      speed: rand(0.5..1.5),
      offset_x: rand(-10..10),
      sway: rand(0.0..Math::PI * 2)
    }
  end
  
  def reset_bubble(bubble)
    bubble[:sprite].x = event_x + rand(-10..10)
    bubble[:sprite].y = event_y + rand(-5..5)
    bubble[:sprite].opacity = rand(100..200)
    bubble[:sprite].zoom_x = 0.5
    bubble[:sprite].zoom_y = 0.5
    bubble[:offset_x] = rand(-10..10)
    bubble[:speed] = rand(0.5..1.5)
  end
end
