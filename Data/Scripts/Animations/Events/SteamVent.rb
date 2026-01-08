#===============================================================================
# Steam Vents Animation
#===============================================================================
# Per-event animation for rising steam clouds.
#===============================================================================

class OverworldAnimation::SteamVent < OverworldAnimation::EventAnimation
  PARTICLE_COUNT = 10
  
  def initialize(event, options = {})
    super(event)
    @color = options[:color] || Color.new(255, 255, 255, 150)
    @intensity = options[:intensity] || 1.0
    @interval = options[:interval] || 45  # Frames between bursts
    @continuous = options[:continuous] || false
  end
  
  def start
    super
    @particles = []
    @timer = 0
    
    if @continuous
      PARTICLE_COUNT.times { create_particle }
    end
  end
  
  def update
    return unless @active
    
    unless @continuous
      @timer += 1
      if @timer >= @interval
        start_burst
        @timer = 0
      end
    end
    
    @particles.each do |particle|
      # Rise upward
      particle[:sprite].y -= particle[:speed]
      
      # Drift sideways
      particle[:sprite].x += Math.sin(particle[:sway]) * 0.5
      particle[:sway] += 0.05
      
      # Expand
      particle[:sprite].zoom_x *= 1.02
      particle[:sprite].zoom_y *= 1.02
      
      # Fade
      particle[:sprite].opacity -= 2
      
      # Reset
      if particle[:sprite].opacity <= 0 || particle[:sprite].y < event_y - 80
        if @continuous
          reset_particle(particle)
        else
          particle[:sprite].dispose
          @sprites.delete(particle[:sprite])
        end
      end
    end
    
    @particles.reject! { |p| p[:sprite].disposed? } unless @continuous
  end
  
  def dispose
    @particles.each { |p| p[:sprite].dispose if p[:sprite] && !p[:sprite].disposed? }
    @particles.clear
    super
  end
  
  private
  
  def start_burst
    # Play steam sound
    pbSEPlay("Steam", 50, 100) rescue nil
    
    (PARTICLE_COUNT * @intensity).to_i.times { create_particle }
  end
  
  def create_particle
    sprite = Sprite.new(@viewport)
    sprite.z = 180
    
    reset_particle_visual(sprite)
    
    @sprites << sprite
    @particles << {
      sprite: sprite,
      speed: rand(0.5..1.5) * @intensity,
      sway: rand(0.0..Math::PI * 2)
    }
  end
  
  def reset_particle(particle)
    reset_particle_visual(particle[:sprite])
    particle[:speed] = rand(0.5..1.5) * @intensity
  end
  
  def reset_particle_visual(sprite)
    sprite.x = event_x + rand(-8..8)
    sprite.y = event_y + rand(-5..5)
    
    # Create cloud/puff
    size = rand(10..16)
    sprite.bitmap&.dispose
    sprite.bitmap = Bitmap.new(size, size)
    sprite.bitmap.fill_rect(2, 0, size - 4, size, @color)
    sprite.bitmap.fill_rect(0, 2, size, size - 4, @color)
    
    sprite.ox = size / 2
    sprite.oy = size / 2
    sprite.opacity = rand(100..180)
    sprite.zoom_x = 0.5
    sprite.zoom_y = 0.5
  end
end

# Alias
OverworldAnimation::Steam = OverworldAnimation::SteamVent
