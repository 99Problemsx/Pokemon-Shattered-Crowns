#===============================================================================
# Blowing Leaves Effect
#===============================================================================
# A map-wide effect that displays animated leaves blowing across the screen.
#===============================================================================

class OverworldAnimation::BlowingLeaves < OverworldAnimation::Effect
  LEAF_COUNT = 15
  LEAF_GRAPHIC = "Pictures/Effects/leaf"
  
  def start
    super
    @leaves = []
    LEAF_COUNT.times do
      create_leaf
    end
  end
  
  def update
    return unless @active
    
    @leaves.each do |leaf|
      # Move leaf
      leaf[:sprite].x += leaf[:speed_x]
      leaf[:sprite].y += leaf[:speed_y]
      leaf[:sprite].opacity -= 1 if leaf[:sprite].y > Graphics.height - 50
      
      # Add gentle sway
      leaf[:sway] += 0.05
      leaf[:sprite].x += Math.sin(leaf[:sway]) * 0.5
      
      # Rotate leaf
      leaf[:sprite].angle += leaf[:rotation]
      
      # Reset if off screen
      if leaf[:sprite].x > Graphics.width + 50 || 
         leaf[:sprite].y > Graphics.height + 50 ||
         leaf[:sprite].opacity <= 0
        reset_leaf(leaf)
      end
    end
  end
  
  def dispose
    @leaves.each { |l| l[:sprite].dispose if l[:sprite] && !l[:sprite].disposed? }
    @leaves.clear
    super
  end
  
  private
  
  def create_leaf
    sprite = create_sprite(
      rand(-50..Graphics.width),
      rand(-50..0),
      100
    )
    
    begin
      sprite.bitmap = load_graphic(LEAF_GRAPHIC)
    rescue
      # Create a simple colored square if graphic not found
      sprite.bitmap = Bitmap.new(8, 8)
      sprite.bitmap.fill_rect(0, 0, 8, 8, Color.new(80, 160, 60))
    end
    
    sprite.ox = sprite.bitmap.width / 2
    sprite.oy = sprite.bitmap.height / 2
    sprite.opacity = rand(150..255)
    
    @leaves << {
      sprite: sprite,
      speed_x: rand(1.0..3.0),
      speed_y: rand(0.5..2.0),
      sway: rand(0.0..Math::PI * 2),
      rotation: rand(-2..2)
    }
  end
  
  def reset_leaf(leaf)
    leaf[:sprite].x = rand(-50..0)
    leaf[:sprite].y = rand(-50..Graphics.height / 2)
    leaf[:sprite].opacity = rand(150..255)
    leaf[:speed_x] = rand(1.0..3.0)
    leaf[:speed_y] = rand(0.5..2.0)
  end
end
