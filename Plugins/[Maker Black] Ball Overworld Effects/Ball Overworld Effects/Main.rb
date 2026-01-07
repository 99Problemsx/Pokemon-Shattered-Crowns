 class Spriteset_Map
   def addFollowerComeInOutAnimation(x, y, tinting = false, height = 3, bmp="", out=true)
    sprite = FollowerComeInOutAnimation.new(self.map, x, y, bmp, out, @@viewport1, tinting, height)
    addUserSprite(sprite)
    return sprite
  end
end 

class FollowerComeInOutAnimation
  # This is a cropped version of each frame from the standard come-in/come-out animation.
  FRAME_W  = 192
  FRAME_H  = 192
  # This is the frame rate of the animation; modify it as desired to increase or decrease the speed.
  FRAME_TIME = 0.06
  # This is the selected frame in the animation, where the script will move. It's the same as the standard script animation, but via script. You can easily customize it with this now.
  OUT_FRAMES = [nil, 0,0,0,0, 1,1, 2,2, 3,3]
  IN_FRAMES  = [nil,5,6,6,7,7,7,8,8,8,nil]

  def initialize(map, x, y, bmp, out, viewport = nil, tinting=false, height=3)
    @viewport = Viewport.new(0,0,Graphics.width,Graphics.height)
    @viewport.z = viewport.z + 9999
    @sprite = Sprite.new(@viewport)
    @sprite.bitmap = pbBitmap("Graphics/Animations/#{bmp}")

    @frame_list = out ? OUT_FRAMES : IN_FRAMES
    @total_frames = @frame_list.length
    @cur_frame = 0
    @frame_acc = 0
    @sprite.ox = (FRAME_W / 2) - (Game_Map::TILE_WIDTH / 2)
    @sprite.oy = (FRAME_H / 2) - (Game_Map::TILE_WIDTH / 2)
    @x, @y = x, y
    @height = height
    @map = map
  
    @last_time = System.uptime
    @sprite.opacity = 0
    @sprite.visible = true
    
    pbDayNightTint(@sprite) if tinting
    
    sfx = out ? "Battle jump to ball.ogg" : "Battle recall.ogg"
    pbSEPlay(sfx)

    setCoords
    update_src_rect
    @timer = 0
  end

  def setCoords
    @sprite.x = (((@x * Game_Map::REAL_RES_X) - @map.display_x) / Game_Map::X_SUBPIXELS).ceil
    @sprite.y = (((@y * Game_Map::REAL_RES_Y) - @map.display_y) / Game_Map::Y_SUBPIXELS).ceil
    @sprite.z = case @height
                when 0 then 1
                when 1 then @sprite.y + (Game_Map::TILE_HEIGHT * 3/2) + 1
                when 2 then @sprite.y + (Game_Map::TILE_HEIGHT * 3) + 1
                else 2000
                end
  end

  def update_src_rect
    idx = @frame_list[@cur_frame]
    return @sprite.src_rect.set(0,0,0,0) if idx.nil?

    col = idx % 5
    row = idx / 5

    @sprite.src_rect.set(col * FRAME_W, row * FRAME_H, FRAME_W, FRAME_H)
  end

  def dispose
    @sprite.dispose if !@sprite.disposed?
  end

  def disposed?
    @sprite.disposed?
  end

  def update
    return if disposed?
    now = System.uptime
    dt = now - @last_time
    @last_time = now
    @timer     += dt
    @frame_acc += dt
    setCoords
    while @frame_acc >= FRAME_TIME && @cur_frame < @total_frames - 1
      @frame_acc -= FRAME_TIME
      @cur_frame += 1
      update_src_rect
    end
    fade_duration = 0.15
    total_time = @total_frames * FRAME_TIME
    if @timer <= fade_duration
      @sprite.opacity = (255 * (@timer / fade_duration)).to_i
    elsif @timer >= (total_time - fade_duration)
      t = total_time - @timer
      @sprite.opacity = (255 * (t / fade_duration)).to_i
    else
      @sprite.opacity = 255
    end
    dispose if @cur_frame >= @total_frames - 1
  end
end
 
module FollowingPkmn 
  def self.refresh(anim = false)
    return if !FollowingPkmn.can_check?
    event = FollowingPkmn.get_event
    #------------------------------------------------------
    # Zoom Animation - 1.0 if anim = false
    #------------------------------------------------------
    sprites = $scene&.spritesetGlobal&.follower_sprites
    if sprites
      sprites.instance_variable_set(:@zoom_effect, nil)
      if !anim
        target = FollowingPkmn.get_event
        spr = sprites.instance_variable_get(:@sprites)&.find { |s| s.character == target }
        if spr
          spr.zoom_x = spr.zoom_y = 1.0
          spr.color = Color.new(0, 0, 0, 0)
        end
      end
    end
    FollowingPkmn.remove_sprite
    event&.calculate_bush_depth
    first_pkmn = FollowingPkmn.get_pokemon
    return if !first_pkmn
    FollowingPkmn.refresh_internal
    ret = FollowingPkmn.active?
    event = FollowingPkmn.get_event
    if anim
      if pbResolveBitmap("Graphics/Animations/Follower_ComeInOut_#{first_pkmn.poke_ball}")
        bmp = "Follower_ComeInOut_#{first_pkmn.poke_ball}"
      else 
        bmp = "Follower_ComeInOut"
      end 
      if event 
        $scene.spriteset.addFollowerComeInOutAnimation(event.x, event.y, true, 3, bmp, ret)
        sprites = $scene.spritesetGlobal.follower_sprites
        sprites.play_zoom_effect(ret)
      end
    end
    FollowingPkmn.change_sprite(first_pkmn) if ret
    FollowingPkmn.move_route([(ret ? PBMoveRoute::STEP_ANIME_ON : PBMoveRoute::STEP_ANIME_OFF)]) if FollowingPkmn::ALWAYS_ANIMATE
    event&.calculate_bush_depth
    $PokemonGlobal.time_taken = 0 if !ret
    return ret
  end
end 

class FollowerSprites
  def play_zoom_effect(out, total_time = 0.45)
    target = FollowingPkmn.get_event
    spr = @sprites.find { |s| s.character == target }
    return unless spr
    @zoom_effect = {
      sprite: spr,
      out: out,
      start: System.uptime,
      total: total_time
    }
    if out
      spr.zoom_x = spr.zoom_y = 0.1
      spr.visible = true
      spr.color = Color.new(255, 255, 255, 255)
    else
      spr.zoom_x = spr.zoom_y = 1.0
      spr.visible = true
      spr.color = Color.new(0, 0, 0, 0)
    end
  end

  alias __followingpkmn__update_zoom update unless method_defined?(:__followingpkmn__update_zoom)
  def update(*args)
    __followingpkmn__update_zoom(*args)
    return unless @zoom_effect
    data = @zoom_effect
    elapsed = System.uptime - data[:start] 
    progress = (elapsed / data[:total]).clamp(0.0, 1.0)
    if data[:out]
      scale = 0.1 + (0.9 * progress)
      alpha = 255 - (255 * (progress**2))
    else
      scale = 1.0 - (0.9 * progress)
      alpha = (255 * (progress**0.5))
    end
    spr = data[:sprite]
    spr.zoom_x = spr.zoom_y = scale
    spr.color = Color.new(255, 255, 255, alpha)
    if progress >= 1.0
      if data[:out]
        spr.zoom_x = spr.zoom_y = 1.0
        spr.color = Color.new(0, 0, 0, 0)
      else
        FollowingPkmn.remove_sprite
      end
      @zoom_effect = nil
    end
  end
end
