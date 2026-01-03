#===============================================================================
# Flowing Water Event Animation
#===============================================================================
# Per-event animation that displays animated water flow (e.g., waterfall, stream).
#===============================================================================

class OverworldAnimation::FlowingWater < OverworldAnimation::EventAnimation
  PARTICLE_COUNT = 12
  
  def initialize(event, direction = :down, viewport = nil)
    super(event, viewport)
    @direction = direction # :down, :left, :right, :up
  end
  
  def start
    super
    @particles = []
    PARTICLE_COUNT.times do
      create_particle
    end
  end
  
  def update
    return unless @active
    super
    
    @particles.each do |particle|
      # Move in direction
      case @direction
      when :down
        particle[:sprite].y += particle[:speed]
        particle[:sprite].x += Math.sin(particle[:sway]) * 0.5
      when :up
        particle[:sprite].y -= particle[:speed]
        particle[:sprite].x += Math.sin(particle[:sway]) * 0.5
      when :left
        particle[:sprite].x -= particle[:speed]
        particle[:sprite].y += Math.sin(particle[:sway]) * 0.5
      when :right
        particle[:sprite].x += particle[:speed]
        particle[:sprite].y += Math.sin(particle[:sway]) * 0.5
      end
      
      particle[:sway] += 0.15
      particle[:sprite].opacity -= 3
      
      # Reset if faded or too far
      if particle[:sprite].opacity <= 0 || out_of_range?(particle)
        reset_particle(particle)
      end
    end
  end
  
  def dispose
    @particles.each { |p| p[:sprite].dispose if p[:sprite] && !p[:sprite].disposed? }
    @particles.clear
    super
  end
  
  private
  
  def create_particle
    sprite = Sprite.new(@viewport)
    position_particle(sprite)
    sprite.z = 150
    
    # Create water droplet graphic
    sprite.bitmap = Bitmap.new(3, 6)
    sprite.bitmap.fill_rect(0, 0, 3, 6, Color.new(100, 180, 255, 200))
    
    sprite.ox = 1
    sprite.oy = 3
    sprite.opacity = rand(120..220)
    
    @sprites << sprite
    @particles << {
      sprite: sprite,
      speed: rand(2.0..4.0),
      sway: rand(0.0..Math::PI * 2)
    }
  end
  
  def position_particle(sprite)
    case @direction
    when :down
      sprite.x = event_x + rand(-15..15)
      sprite.y = event_y - rand(0..20)
    when :up
      sprite.x = event_x + rand(-15..15)
      sprite.y = event_y + rand(0..20)
    when :left
      sprite.x = event_x + rand(0..20)
      sprite.y = event_y + rand(-15..15)
    when :right
      sprite.x = event_x - rand(0..20)
      sprite.y = event_y + rand(-15..15)
    end
  end
  
  def out_of_range?(particle)
    dist = 50
    case @direction
    when :down then particle[:sprite].y > event_y + dist
    when :up then particle[:sprite].y < event_y - dist
    when :left then particle[:sprite].x < event_x - dist
    when :right then particle[:sprite].x > event_x + dist
    end
  end
  
  def reset_particle(particle)
    position_particle(particle[:sprite])
    particle[:sprite].opacity = rand(120..220)
    particle[:speed] = rand(2.0..4.0)
  end
end
