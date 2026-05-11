#===============================================================================
#  [SC] EBDX Battle UI — Animation Core
#  Provides move animation system, camera vector, and sprite compatibility
#  for porting EBDX-style animations to the SC + DBK environment.
#  Compatible with: Deluxe Battle Kit, Enhanced Battle UI, MUI, Tera/Dmax/ZPower
#===============================================================================

#===============================================================================
#  EBDXBattleRoom — Lightweight replacement for EBDX's BattleSceneRoom
#  Provides the SAME perspective-based battler positioning math as EBDX
#  without the full backdrop rendering system (we use PE's backdrop).
#
#  How it works:
#  1) Creates invisible positioning sprites for each battler/trainer slot
#     with .ex and .ey offsets read from the EBDX metrics.
#  2) Each frame, update() computes:
#     - bg.x = vector.x2,  bg.y = vector.y2
#     - bg.zoom = ROOM_SCALE * ((x2-x)/(sx-defaultX))^0.6
#  3) position() cascades the transform to all children:
#     - child.x = bg.x - (bg.ox - child.ex) * bg.zoom_x
#     - child.y = bg.y - (bg.oy - child.ey) * bg.zoom_y
#  4) battler(i)/trainer(i) return the positioned sprites.
#     animateScene reads these to place Pokémon sprites.
#===============================================================================
class EBDXBattleRoom
  ROOM_SCALE = 2.25

  # EBDX was designed for 512x384. Our game runs at 640x480.
  # All positional metrics are authored for 512x384 and scaled at runtime.
  EBDX_BASE_W = 512.0
  EBDX_BASE_H = 384.0

  # Dynamic resolution scale factor (computed once on first use)
  def self.res_scale_x
    @res_scale_x ||= Graphics.width  / EBDX_BASE_W
  end
  def self.res_scale_y
    @res_scale_y ||= Graphics.height / EBDX_BASE_H
  end

  # Default battler metrics from metrics.txt (authored for 512x384)
  # Arrays are [SINGLE, DOUBLE, TRIPLE] — index picked based on battle size
  DEFAULT_METRICS = {
    0 => { :X => [116, 92, 76],    :Y => [252, 240, 234], :Z => [21, 21, 21] },  # player 1
    1 => { :X => [234, 256, 264],   :Y => [152, 164, 156], :Z => [11, 15, 18] },  # enemy 1
    2 => { :X => [192, 152],        :Y => [262, 244],      :Z => [25, 25] },       # player 2
    3 => { :X => [198, 210],        :Y => [152, 154],      :Z => [11, 15] },       # enemy 2
  }

  attr_reader :sprites

  def initialize(scene)
    @scene   = scene
    @battle  = scene.battle
    @vector  = scene.ebdx_vector
    @scale   = ROOM_SCALE
    @sprites = {}
    # Resolution scale factors
    @rsx = EBDXBattleRoom.res_scale_x
    @rsy = EBDXBattleRoom.res_scale_y
    # Store the default MAIN vector for zoom ratio computation
    @defaultvector = EBDXAnimations.get_vector(:MAIN, @battle)
    # Compute default sx, sy (the spoof of MAIN at rest)
    @default_sx, @default_sy = @vector.spoof(@defaultvector)
    # Virtual "bg" sprite — we store its ox/oy like EBDX does
    # @default_sx/sy are already in screen coordinates (from scaled vector)
    @bg_ox = @default_sx / 1.5 - 16
    @bg_oy = @default_sy / 1.5 + 16
    @bg_x  = @vector.x2
    @bg_y  = @vector.y2
    @bg_zoom_x = @scale
    @bg_zoom_y = @scale
    # Create invisible positioning sprites for battler/trainer slots
    adjustMetrics
  end

  #---------------------------------------------------------------------------
  #  Create positioning sprites for each battler slot
  #  Mirrors EBDX's BattleSceneRoom.adjustMetrics exactly
  #---------------------------------------------------------------------------
  def adjustMetrics
    data = DEFAULT_METRICS
    # Create battler and trainer positioning sprites for slots -2..max
    for j in -2...data.keys.length
      @sprites["battler#{j}"] = PositionSprite.new
      @sprites["trainer_#{j}"] = PositionSprite.new
      i = j; i = 0 if j == -2; i = 1 if j == -1
      next unless data[i]
      for param in [:X, :Y, :Z]
        next unless data[i].key?(param)
        dat = data[i][param]
        max_size = @battle.pbSideSize(0) rescue 1
        n = [max_size - 1, (@battle.pbSideSize(j % 2) rescue 1) - 1].min - i / 2
        m = n
        if @battle.opponent
          opp_len = (@battle.opponent.length rescue 1)
          m = [max_size - 1, (@battle.pbSideSize(j % 2) rescue 1) - 1, opp_len - 1].min - i / 2
        end
        n = dat.length - 1 if n >= dat.length
        m = dat.length - 1 if m >= dat.length
        n = 0 if n < 0; m = 0 if m < 0
        if [:X, :Y].include?(param)
          k = "e#{param.to_s.downcase}"
          # Scale metrics from 512x384 base to actual resolution
          rs = (param == :X) ? @rsx : @rsy
          @sprites["battler#{j}"].send("#{k}=", dat[n] * rs)
          @sprites["trainer_#{j}"].send("#{k}=", dat[m] * rs)
        else
          @sprites["battler#{j}"].param = dat[n]
          @sprites["trainer_#{j}"].param = dat[m]
        end
      end
    end
  end

  #---------------------------------------------------------------------------
  #  Frame update — recompute bg position + zoom from current vector
  #---------------------------------------------------------------------------
  def update
    return unless @vector
    @bg_x = @vector.x2
    @bg_y = @vector.y2
    # Compute zoom using the same formula as EBDX:
    # zoom = scale * ((x2 - x) / (sx - defaultX))^0.6
    sx, sy = @vector.spoof(@defaultvector)
    dx_cur = (@vector.x2 - @vector.x).to_f
    dy_cur = (@vector.y2 - @vector.y).to_f
    dx_def = (sx - @defaultvector[0]).to_f
    dy_def = (sy - @defaultvector[1]).to_f
    # Prevent division by zero
    rx = dx_def.abs > 0.001 ? (dx_cur / dx_def) : 1.0
    ry = dy_def.abs > 0.001 ? (dy_cur / dy_def) : 1.0
    # EBDX uses **0.6 for the perspective effect
    @bg_zoom_x = @scale * (rx.abs ** 0.6) * (rx < 0 ? -1 : 1)
    @bg_zoom_y = @scale * (ry.abs ** 0.6) * (ry < 0 ? -1 : 1)
    # Position all children
    position
  end

  #---------------------------------------------------------------------------
  #  Position all child sprites using backdrop transform
  #  x = bg.x - (bg.ox - child.ex) * bg.zoom_x
  #  y = bg.y - (bg.oy - child.ey) * bg.zoom_y
  #---------------------------------------------------------------------------
  def position
    @sprites.each do |key, sprite|
      next unless sprite
      sprite.x = @bg_x - (@bg_ox - sprite.ex) * @bg_zoom_x
      sprite.y = @bg_y - (@bg_oy - sprite.ey) * @bg_zoom_y
    end
  end

  #---------------------------------------------------------------------------
  #  Accessors — match EBDX's BattleSceneRoom API
  #---------------------------------------------------------------------------
  def battler(i); @sprites["battler#{i}"]; end
  def trainer(i); @sprites["trainer_#{i}"]; end
  def scale_y;    @bg_zoom_y; end
  def delta;      Graphics.ebdx_frame_rate / 40.0; end

  #---------------------------------------------------------------------------
  #  Spoof — compute where a battler WOULD be at an arbitrary vector
  #  Used by sendout to find target positions without moving anything
  #---------------------------------------------------------------------------
  def spoof(vector, index = 1)
    target = self.battler(index)
    return 0, 0 unless target
    bx, by = @vector.spoof(vector)
    dx, dy = @vector.spoof(@defaultvector)
    rx = (dx - @defaultvector[0]).abs > 0.001 ? ((bx - vector[0]).to_f / (dx - @defaultvector[0]).to_f) : 1.0
    ry = (dy - @defaultvector[1]).abs > 0.001 ? ((by - vector[1]).to_f / (dy - @defaultvector[1]).to_f) : 1.0
    bzoom_x = @scale * (rx.abs ** 0.6) * (rx < 0 ? -1 : 1)
    bzoom_y = @scale * (ry.abs ** 0.6) * (ry < 0 ? -1 : 1)
    x = bx - (@bg_ox - target.ex) * bzoom_x
    y = by - (@bg_oy - target.ey) * bzoom_y
    return x, y
  end

  #---------------------------------------------------------------------------
  #  Backdrop sprite interface — delegates to PE's actual backdrop / viewport
  #---------------------------------------------------------------------------
  def defocus
    return if @defocused
    @defocused = true
    ["battle_bg", "battle_bg2"].each do |key|
      s = @scene.sprites[key]
      next unless s
      s.z -= 100
    end
    # Also lower weather sprites if present
    @weather_sprites.each { |_k, s| s.z -= 100 if s && !s.disposed? } if @weather_sprites
  end

  def focus
    return unless @defocused
    @defocused = false
    ["battle_bg", "battle_bg2"].each do |key|
      s = @scene.sprites[key]
      next unless s
      s.z += 100
    end
    @weather_sprites.each { |_k, s| s.z += 100 if s && !s.disposed? } if @weather_sprites
  end

  def color
    @scene.viewport.color rescue Color.new(0, 0, 0, 0)
  end

  def color=(val)
    @scene.viewport.color = val rescue nil
  end

  def visible
    s = @scene.sprites["battle_bg"]
    s ? s.visible : true
  end

  def visible=(val)
    ["battle_bg", "battle_bg2"].each do |key|
      s = @scene.sprites[key]
      s.visible = val if s
    end
    @weather_sprites.each { |_k, s| s.visible = val if s && !s.disposed? } if @weather_sprites
  end

  def disposed?; @disposed || false; end

  def dispose
    deleteAllWeather
    @disposed = true
  end

  #---------------------------------------------------------------------------
  #  Weather overlay system — draws particles over PE's backdrop
  #---------------------------------------------------------------------------
  def weather_sprites; @weather_sprites ||= {}; end

  def setWeather
    return unless @battle
    wth_map = [
      ["Snow",       [:Hail]],
      ["Rain",       [:Rain, :HeavyRain]],
      ["Sunny",      [:Sun, :HarshSun]],
      ["Sandstorm",  [:Sandstorm]],
      ["Fog",        [:Fog]],
      ["StrongWind", [:StrongWinds]]
    ]
    cur = @battle.pbWeather rescue nil
    wth_map.each do |name, conds|
      active = conds.any? { |c| cur == c }
      send("delete#{name}") unless active
      send("draw#{name}") if active
    end
  end

  def updateWeather
    vp = @scene.viewport rescue nil
    return unless vp
    dt = self.delta
    # Snow
    72.times do |j|
      s = weather_sprites["w_snow#{j}"]
      next unless s && !s.disposed?
      if s.opacity <= 0
        s.x = rand(Graphics.width + 100) - 50
        s.y = -rand(32) - 16
        s.opacity = 0
        s.angle = rand(360)
        s.speed = 1 + rand(3)
      end
      s.x -= (1 + Math.sin(s.angle * Math::PI / 180) * 2) * dt
      s.y += s.speed * dt
      s.opacity += (s.y < Graphics.height * 0.7 ? 5 : -5) * dt
      s.angle += 2 * dt
      s.visible = self.visible
    end
    # Rain
    harsh = (@battle.pbWeather == :HeavyRain rescue false)
    72.times do |j|
      s = weather_sprites["w_rain#{j}"]
      next unless s && !s.disposed?
      if s.opacity <= 0
        s.x = rand(Graphics.width + 200) - 100
        s.y = -rand(64) - 16
        s.opacity = 0
      end
      spd = (harsh ? 18 : 14) * dt
      s.x -= spd * 0.25
      s.y += spd
      s.opacity += (s.y < Graphics.height * 0.8 ? 12 : -12) * dt
      s.visible = self.visible
    end
    # Sunny
    3.times do |i|
      s = weather_sprites["w_sunny#{i}"]
      next unless s && !s.disposed?
      s.zoom_x += 0.002 * dt if s.zoom_x < 1.0
      s.zoom_y += 0.002 * dt if s.zoom_y < 1.0
      s.opacity += 1 * dt if s.opacity < 128
      s.visible = self.visible
    end
    # Sandstorm + Fog (ScrollingSprite auto-scrolls in update)
    (0..1).each do |j|
      ["w_sand", "w_fog"].each do |pfx|
        s = weather_sprites["#{pfx}#{j}"]
        next unless s && !s.disposed?
        s.update
        # Fog opacity pulsing
        if pfx == "w_fog"
          s.opacity += (s.opacity > 180 ? -1 : 1) * dt
        end
        s.visible = self.visible
      end
    end
  end

  # Snow — 72 flake sprites
  def drawSnow
    vp = @scene.viewport rescue nil
    return unless vp
    bmp = pbBitmap("Graphics/EBDX/Battlebacks/elements/snow") rescue nil
    return unless bmp
    72.times do |j|
      next if weather_sprites["w_snow#{j}"]
      s = Sprite.new(vp)
      s.bitmap = bmp
      s.ox = bmp.width / 2; s.oy = bmp.height / 2
      s.x = rand(Graphics.width); s.y = rand(Graphics.height)
      s.opacity = 0; s.z = 50
      weather_sprites["w_snow#{j}"] = s
    end
  end
  def deleteSnow
    72.times do |j|
      s = weather_sprites["w_snow#{j}"]
      next unless s
      s.dispose unless s.disposed?
      weather_sprites.delete("w_snow#{j}")
    end
  end

  # Rain — 72 angled streak sprites
  def drawRain
    vp = @scene.viewport rescue nil
    return unless vp
    harsh = (@battle.pbWeather == :HeavyRain rescue false)
    72.times do |j|
      next if weather_sprites["w_rain#{j}"]
      s = Sprite.new(vp)
      w = harsh ? 28 : 24
      s.bitmap = Bitmap.new(w, 3)
      s.bitmap.fill_rect(0, 0, w, 3, Color.new(200, 200, 255, 200))
      s.ox = 0; s.oy = 1; s.angle = 80
      s.x = rand(Graphics.width); s.y = rand(Graphics.height)
      s.opacity = 0; s.z = 50
      weather_sprites["w_rain#{j}"] = s
    end
  end
  def deleteRain
    72.times do |j|
      s = weather_sprites["w_rain#{j}"]
      next unless s
      s.dispose unless s.disposed?
      weather_sprites.delete("w_rain#{j}")
    end
  end

  # Sunny — 3 sun ray sprites
  def drawSunny
    @sunny = true
    daylightTint
    vp = @scene.viewport rescue nil
    return unless vp
    bmp = pbBitmap("Graphics/EBDX/Animations/Weather/ray001") rescue nil
    return unless bmp
    3.times do |i|
      next if weather_sprites["w_sunny#{i}"]
      s = Sprite.new(vp)
      s.bitmap = bmp; s.z = 50
      s.oy = bmp.height / 2
      s.angle = 290 + [-10, 32, 10][i]
      s.x = [-2, 20, 10][i]; s.y = [-4, -24, -2][i]
      s.zoom_x = 0; s.zoom_y = 0; s.opacity = 0
      weather_sprites["w_sunny#{i}"] = s
    end
  end
  def deleteSunny
    @sunny = false
    daylightTint
    3.times do |j|
      s = weather_sprites["w_sunny#{j}"]
      next unless s
      s.dispose unless s.disposed?
      weather_sprites.delete("w_sunny#{j}")
    end
  end

  # Sandstorm — 2 ScrollingSprite overlays
  def drawSandstorm
    vp = @scene.viewport rescue nil
    return unless vp
    2.times do |j|
      next if weather_sprites["w_sand#{j}"]
      s = ScrollingSprite.new(vp)
      s.z = 50; s.speed = 32
      s.direction = (j == 0 ? 1 : -1)
      s.setBitmap("Graphics/EBDX/Animations/Weather/sandstorm#{j}")
      weather_sprites["w_sand#{j}"] = s
    end
  end
  def deleteSandstorm
    2.times do |j|
      s = weather_sprites["w_sand#{j}"]
      next unless s
      s.dispose unless s.disposed?
      weather_sprites.delete("w_sand#{j}")
    end
  end

  # Fog — 2 ScrollingSprite layers
  def drawFog
    vp = @scene.viewport rescue nil
    return unless vp
    2.times do |j|
      next if weather_sprites["w_fog#{j}"]
      s = ScrollingSprite.new(vp)
      s.z = 50; s.speed = 2 - j; s.opacity = 180
      s.direction = (j == 0 ? 1 : -1)
      s.setBitmap("Graphics/EBDX/Animations/Weather/fog#{j}")
      weather_sprites["w_fog#{j}"] = s
    end
  end
  def deleteFog
    2.times do |j|
      s = weather_sprites["w_fog#{j}"]
      next unless s
      s.dispose unless s.disposed?
      weather_sprites.delete("w_fog#{j}")
    end
  end

  # Strong wind — flag only (affects tree/grass skew in full EBDX, no-op here)
  def drawStrongWind; @strongwind = true; end
  def deleteStrongWind; @strongwind = false; end

  # Bulk cleanup
  def deleteAllWeather
    deleteSnow; deleteRain; deleteSunny; deleteSandstorm; deleteFog; deleteStrongWind
  end

  #---------------------------------------------------------------------------
  #  Daylight tinting — applies time-of-day tone to PE's backdrop sprites
  #---------------------------------------------------------------------------
  def daylightTint
    tone = if PBDayNight.isNight? && !@sunny
             Tone.new(-120, -100, -60, 0)
           elsif (PBDayNight.isEvening? || PBDayNight.isMorning?) && !@sunny
             Tone.new(-16, -52, -56, 0)
           else
             Tone.new(0, 0, 0, 0)
           end
    ["battle_bg", "battle_bg2"].each do |key|
      s = @scene.sprites[key]
      s.tone = tone if s
    end
  rescue StandardError
    # PBDayNight may not exist in all setups
  end
end

#===============================================================================
#  PositionSprite — lightweight struct for battler positioning
#  Replaces real Sprite objects (no viewport/bitmap needed).
#===============================================================================
class PositionSprite
  attr_accessor :x, :y, :z, :ex, :ey, :param, :zoom_x, :zoom_y
  def initialize
    @x = 0; @y = 0; @z = 0
    @ex = 0; @ey = 0; @param = 1
    @zoom_x = 1.0; @zoom_y = 1.0
  end
end

#===============================================================================
#  EbdxWaiter — wall-clock time accumulator (from Elite Battle DX unofficial v21.1)
#  Ensures consistent 40fps animation timing regardless of frame processing overhead.
#  Uses System.uptime instead of frame counting to prevent timing drift.
#===============================================================================
class EbdxWaiter
  def initialize
    @each_duration = 0.025  # 1/40th second = 25ms per frame
    @timer_end = System.uptime
  end

  def wait(frames = 1, accept_input = true, intro_anim = true)
    @timer_end += frames * @each_duration
    until System.uptime >= @timer_end
      Graphics.update
      Input.update if accept_input
      pbUpdateSceneMap if intro_anim
    end
  end

  def graphics_update(frames = 1)
    @timer_end += frames * @each_duration
    until System.uptime >= @timer_end
      Graphics.update
    end
  end

  def is_too_stale?
    (System.uptime - @timer_end).abs > 2.0
  end
end

#===============================================================================
#  Graphics.ebdx_frame_rate — always returns 40 (EBDX canonical frame rate)
#===============================================================================
unless Graphics.respond_to?(:ebdx_frame_rate)
  def Graphics.ebdx_frame_rate
    40
  end
end

#===============================================================================
#  Camera Vector — adapted from Elite Battle DX (Luka S.J.)
#  6-parameter interpolation: (x, y, angle, scale, zoom1, zoom2)
#  Controls virtual camera position. Updated each frame via update().
#===============================================================================
class EBDXVector
  attr_reader   :x, :y, :angle, :scale, :x2, :y2
  attr_accessor :zoom1, :zoom2, :inc, :set, :battle

  def initialize(x = 0, y = 0, angle = 0, scale = 1, zoom1 = 1, zoom2 = 1)
    @battle = false
    @x = x.to_f; @y = y.to_f
    @angle = angle.to_f; @scale = scale.to_f
    @zoom1 = zoom1.to_f; @zoom2 = zoom2.to_f
    @inc = 0.2
    @set = [@x, @y, @angle, @scale, @zoom1, @zoom2]
    @locked = false; @force = false; @constant = 1
    self.calculate
  end

  def calculate
    a = @angle * (Math::PI / 180)
    @x2 = @x + Math.cos(a) * @scale
    @y2 = @y - Math.sin(a) * @scale
  end

  def spoof(*args)
    vals = args[0].is_a?(Array) ? args[0] : args
    x, y, angle, scale, _z1, _z2 = *vals
    a = (angle || 0) * (Math::PI / 180)
    return (x || 0) + Math.cos(a) * (scale || 1), (y || 0) - Math.sin(a) * (scale || 1)
  end

  def angle=(val); @angle = val; calculate; end
  def scale=(val); @scale = val; calculate; end
  def x=(val); @x = val; @set[0] = val; calculate; end
  def y=(val); @y = val; @set[1] = val; calculate; end
  def force; @force = true; end
  def locked?; @locked; end
  def lock; @locked = !@locked; end
  def get; [@x, @y, @angle, @scale, @zoom1, @zoom2]; end

  def reset
    @inc = 0.2
    self.set(EBDXAnimations.get_vector(:MAIN, @battle))
  end

  def set(*args)
    return if EBDXAnimations::DISABLE_SCENE_MOTION && !@force
    @force = false
    @set = args[0].is_a?(Array) ? args[0] : args
    @constant = rand(4) + 1
  end

  def setXY(x, y); @set[0] = x; @set[1] = y; end

  def update
    d = self.delta
    @x     += ((@set[0] - @x)     * @inc) / d
    @y     += ((@set[1] - @y)     * @inc) / d
    @angle += ((@set[2] - @angle) * @inc) / d
    @scale += ((@set[3] - @scale) * @inc) / d
    @zoom1 += ((@set[4] - @zoom1) * @inc) / d
    @zoom2 += ((@set[5] - @zoom2) * @inc) / d
    calculate
  end

  def finished?
    ((@set[0] - @x) * @inc).abs <= 0.00001 * @constant
  end

  # Match original EBDX (Math Functions.rb): camera interpolation runs at the
  # canonical 40fps EBDX rate, NOT PE's Graphics.frame_rate (60). The wait()
  # loop already paces frames via EbdxWaiter (25ms/frame), so dividing by
  # delta=1.5 here would make the camera interpolate ~50% slower than in the
  # original EBDX port (sluggish pans, late finished?, lingering idle motion).
  def delta; Graphics.ebdx_frame_rate / 40.0; end
end

#===============================================================================
#  Module for EBDX-style animation storage and playback
#  Mirrors the EliteBattle API for maximum compatibility with ported animations.
#===============================================================================
module EBDXAnimations
  # ---- Configuration (1:1 from EBDX Config.rb) ----
  DISABLE_SCENE_MOTION = false
  CUSTOM_COMMON_ANIM   = true
  CUSTOM_MOVE_ANIM     = true
  BATTLE_MOTION_TIMER  = 90    # seconds before idle camera drift starts
  BACK_SPRITE_SCALE    = 2     # used to scale back sprites
  FRONT_SPRITE_SCALE   = 2     # used to scale front sprites
  TRAINER_SPRITE_SCALE = 1     # used to scale trainer front sprites
  ROOM_SCALE           = 2.25  # configures the room scale for vector motion
  SHOW_LINEUP_WILD     = false # show player lineup during wild battles

  # ---- Animation registries ----
  @@moveAnimations   = {}
  @@commonAnimations = {}
  @@physical = {}; @@special = {}; @@status = {}
  @@allOpp = {}; @@nonUsr = {}; @@multihit = {}

  # ---- Vector presets (from EBDX metrics.txt) ----
  # All vectors authored for 512x384 — scaled to actual resolution at runtime.
  # x, y, scale are positional and get scaled; angle, zoom1, zoom2 are unitless.
  def self.scale_vector(v)
    sx = EBDXBattleRoom.res_scale_x
    sy = EBDXBattleRoom.res_scale_y
    [(v[0] * sx).round, (v[1] * sy).round, v[2], (v[3] * sy).round, v[4], v[5]]
  end

  @@vectors_raw = {
    :SINGLE  => [102, 408, 32, 342, 1, 1],
    :DOUBLE  => [102, 408, 32, 342, 1, 1],
    :PLAYER  => [238, 332, 32, 292, 1, 1],
    :ENEMY   => [-272, 628, 28, 642, 1.5, 1],
    :DUAL    => [196, 306, 26, 242, 0.6, 1],
    :SENDOUT => [234, 306, 24, 206, 0.5, 1],
    :DYNAMAX => [202, 308, 18, 136, 0.5, 1],
    :CAMERA_MOTION => [
      [132, 408, 24, 302, 1, 1],
      [122, 294, 20, 322, 1, 1],
      [238, 304, 26, 322, 1, 1],
      [0, 384, 26, 322, 1, 1],
      [198, 298, 18, 282, 1, 1]
    ]
  }
  @@vectors = {}
  @@vectors_raw.each do |k, v|
    if v[0].is_a?(Array)
      @@vectors[k] = v.map { |sub| scale_vector(sub) }
    else
      @@vectors[k] = scale_vector(v)
    end
  end
  @@vectors[:MAIN] = @@vectors[:SINGLE].clone

  # ---- Type color table ----
  TYPE_COLORS = {
    :NORMAL   => [Color.new(168, 168, 120), Color.new(200, 200, 180)],
    :FIRE     => [Color.new(240, 128, 48),  Color.new(255, 180, 80)],
    :WATER    => [Color.new(104, 144, 240), Color.new(140, 180, 255)],
    :GRASS    => [Color.new(120, 200, 80),  Color.new(170, 230, 130)],
    :ELECTRIC => [Color.new(248, 208, 48),  Color.new(255, 240, 100)],
    :ICE      => [Color.new(152, 216, 216), Color.new(190, 240, 240)],
    :FIGHTING => [Color.new(192, 48, 40),   Color.new(230, 80, 70)],
    :POISON   => [Color.new(160, 64, 160),  Color.new(200, 100, 200)],
    :GROUND   => [Color.new(224, 192, 104), Color.new(240, 216, 150)],
    :FLYING   => [Color.new(168, 144, 240), Color.new(200, 180, 255)],
    :PSYCHIC  => [Color.new(248, 88, 136),  Color.new(255, 140, 180)],
    :BUG      => [Color.new(168, 184, 32),  Color.new(200, 210, 80)],
    :ROCK     => [Color.new(184, 160, 56),  Color.new(210, 190, 100)],
    :GHOST    => [Color.new(112, 88, 152),  Color.new(150, 120, 190)],
    :DRAGON   => [Color.new(112, 56, 248),  Color.new(160, 100, 255)],
    :DARK     => [Color.new(112, 88, 72),   Color.new(160, 130, 110)],
    :STEEL    => [Color.new(184, 184, 208), Color.new(210, 210, 230)],
    :FAIRY    => [Color.new(238, 153, 172), Color.new(255, 190, 210)]
  }

  def self.typeColor(type, idx = 0)
    type = type.to_sym if type.is_a?(String)
    c = TYPE_COLORS[type]
    return c ? c[[idx, c.length - 1].min] : Color.new(200, 200, 200)
  end

  #---------------------------------------------------------------------------
  #  Vector API
  #---------------------------------------------------------------------------
  def self.add_vector(key, *args)
    if key == :CAMERA_MOTION
      @@vectors[key] = args.map { |v| v = v.length < 6 ? v + [1] : v; scale_vector(v) }
      return
    end
    args.push(1) if args.flatten.length < 6 && !args[0].is_a?(Array)
    raw = args[0].is_a?(Array) ? args[0] : args
    @@vectors[key] = scale_vector(raw)
  end

  def self.get_vector(key, cond = nil)
    case key
    when :MAIN
      return @@vectors[:DOUBLE].clone if @@vectors[:DOUBLE] && cond.respond_to?(:doublebattle?) && cond.doublebattle?
      return @@vectors[:SINGLE].clone if @@vectors[:SINGLE]
    when :BATTLER
      return (cond ? @@vectors[:PLAYER] : @@vectors[:ENEMY]).clone rescue scale_vector([102, 408, 32, 342, 1, 1])
    end
    return @@vectors[key].clone if @@vectors.key?(key)
    scale_vector([102, 408, 32, 342, 1, 1])
  end

  def self.random_vector(battle, last)
    a = @@vectors[:CAMERA_MOTION]&.clone || []
    a.push(get_vector(:MAIN, battle))
    a.delete_at(last) if last && last < a.length
    a
  end

  #---------------------------------------------------------------------------
  #  Move Animation API
  #---------------------------------------------------------------------------
  def self.defineMoveAnimation(id, species = nil, &block)
    id = "#{species}=>#{id}" if species
    @@moveAnimations[id] = block
  end

  def self.copyMoveAnimation(key, *args)
    return unless @@moveAnimations.key?(key)
    args.each { |k| @@moveAnimations[k] = key unless k == key }
  end

  def self.hasMoveAnimation?(id)
    @@moveAnimations.key?(id)
  end

  def self.playMoveAnimation(id, scene, userindex, targetindex, hitnum = 0, multihit = false, species = nil, *args)
    # Species-specific
    skey = "#{species}=>#{id}"
    if species && @@moveAnimations.key?(skey)
      return withMoveParams(@@moveAnimations[skey], id, scene, userindex, targetindex, hitnum, multihit, *args)
    end
    return false unless @@moveAnimations.key?(id)
    anim = @@moveAnimations[id]
    anim = @@moveAnimations[anim] if anim.is_a?(Symbol) && @@moveAnimations.key?(anim)
    return false unless anim.is_a?(Proc)
    withMoveParams(anim, id, scene, userindex, targetindex, hitnum, multihit, *args)
  end

  def self.withMoveParams(anim, id, scene, userindex, targetindex, hitnum, multihit, *args)
    return false if anim.nil?
    # Track nesting depth — only hide/show databoxes and reset at outermost level
    # (SPARK internally calls CHARGE, etc.)
    @move_anim_depth ||= 0
    @move_anim_depth += 1
    is_outermost = (@move_anim_depth == 1)
    # Hide databoxes during move animations (cinematic feel) — outermost only
    scene.pbHideAllDataboxes if is_outermost && scene.respond_to?(:pbHideAllDataboxes)
    wrapper = CallbackWrapper.new
    system = {
      :scene           => scene,
      :battle          => scene.battle,
      :sprites         => scene.sprites,
      :userSprite      => scene.sprites["pokemon_#{userindex}"],
      :targetSprite    => scene.sprites["pokemon_#{targetindex}"],
      :userDatabox     => scene.sprites["dataBox_#{userindex}"],
      :targetDatabox   => scene.sprites["dataBox_#{targetindex}"],
      :multiHit        => multihit,
      :hitNum          => hitnum,
      :itself          => (userindex == targetindex),
      :userIsPlayer    => (userindex % 2 == 0),
      :targetIsPlayer  => (targetindex % 2 == 0),
      :vector          => scene.ebdx_vector,
      :battlers        => scene.battle.battlers,
      :opponent        => scene.battle.opponent,
      :userIndex       => userindex,
      :targetIndex     => targetindex,
      :viewport        => scene.viewport
    }
    wrapper.set(system)
    scene.afterAnim = false
    begin
      wrapper.execute(anim, *args)
    rescue => e
      echoln "EBDX Move Animation Error for #{id}: #{e.class}: #{e.message}"
      e.backtrace[0, 8].each { |l| echoln "  #{l}" }
      @move_anim_depth -= 1
      if is_outermost
        scene.ebdx_reset_sprites
        scene.pbShowAllDataboxes if scene.respond_to?(:pbShowAllDataboxes)
      end
      return false
    end
    @move_anim_depth -= 1
    if is_outermost
      scene.ebdx_reset_sprites
      scene.pbShowAllDataboxes if scene.respond_to?(:pbShowAllDataboxes)
    end
    scene.afterAnim = true
    true
  end

  #---------------------------------------------------------------------------
  #  Common Animation API
  #---------------------------------------------------------------------------
  def self.defineCommonAnimation(symbol, &block)
    @@commonAnimations[symbol] = block
  end

  def self.copyCommonAnimation(key, *args)
    return unless @@commonAnimations.key?(key)
    args.each { |k| @@commonAnimations[k] = key unless k == key }
  end

  def self.hasCommonAnimation?(id)
    @@commonAnimations.key?(id)
  end

  def self.playCommonAnimation(id, scene, userindex, targetindex = nil, hitnum = 0)
    targetindex = userindex if targetindex.nil?
    return false unless @@commonAnimations.key?(id)
    anim = @@commonAnimations[id]
    anim = @@commonAnimations[anim] if anim.is_a?(Symbol) && @@commonAnimations.key?(anim)
    return false unless anim.is_a?(Proc)
    withCommonParams(anim, id, scene, userindex, targetindex, hitnum)
  end

  def self.withCommonParams(anim, id, scene, userindex, targetindex, hitnum)
    return false if anim.nil?
    wrapper = CallbackWrapper.new
    system = {
      :scene           => scene,
      :battle          => scene.battle,
      :sprites         => scene.sprites,
      :userSprite      => scene.sprites["pokemon_#{userindex}"],
      :targetSprite    => scene.sprites["pokemon_#{targetindex}"],
      :userDatabox     => scene.sprites["dataBox_#{userindex}"],
      :targetDatabox   => scene.sprites["dataBox_#{targetindex}"],
      :hitNum          => hitnum,
      :itself          => (userindex == targetindex),
      :userIsPlayer    => (userindex % 2 == 0),
      :targetIsPlayer  => (targetindex % 2 == 0),
      :vector          => scene.ebdx_vector,
      :battlers        => scene.battle.battlers,
      :opponent        => scene.battle.opponent,
      :userIndex       => userindex,
      :targetIndex     => targetindex,
      :viewport        => scene.viewport
    }
    wrapper.set(system)
    begin
      wrapper.execute(anim)
    rescue => e
      echoln "EBDX Common Animation Error for #{id}: #{e.class}: #{e.message}"
      e.backtrace[0, 8].each { |l| echoln "  #{l}" }
      scene.ebdx_reset_sprites
      return false
    end
    scene.ebdx_reset_sprites
    true
  end

  #---------------------------------------------------------------------------
  #  Type-based generic animation mapping
  #---------------------------------------------------------------------------
  def self.registerPhysical(type, anim_id); @@physical[type] = anim_id; end
  def self.registerSpecial(type, anim_id);  @@special[type]  = anim_id; end
  def self.registerStatus(type, anim_id);   @@status[type]   = anim_id; end

  def self.registerTypeMapping(type, mapping)
    @@physical[type] = mapping[:physical] if mapping[:physical]
    @@special[type]  = mapping[:special]  if mapping[:special]
    @@status[type]   = mapping[:status]   if mapping[:status]
    @@multihit[type] = mapping[:multihit] if mapping[:multihit]
    @@allOpp[type]   = mapping[:allOpp]   if mapping[:allOpp]
    @@nonUsr[type]   = mapping[:nonUsr]   if mapping[:nonUsr]
  end

  def self.mapMoveGlobal(scene, type, userindex, targetindex, hitnum, multihit, multitarget, category)
    return false if type.nil?
    id = nil
    id = @@allOpp[type]   if id.nil? && multitarget == :AllFoes
    id = @@nonUsr[type]   if id.nil? && multitarget == :AllNearFoes
    id = @@multihit[type] if id.nil? && multihit
    id = [@@physical, @@special, @@status][category][type] if id.nil?
    return false if id.nil?
    return false if hitnum > 0
    playMoveAnimation(id, scene, userindex, targetindex, 0, multihit)
  end
end

#===============================================================================
#  Sprite compatibility patches for PE's BattlerSprite
#  Adds EBDX-expected methods without modifying existing behavior.
#===============================================================================
class Battle::Scene::BattlerSprite < RPG::Sprite
  unless method_defined?(:getCenter)
    def getCenter(adjusted = false)
      cx = self.x
      cy = self.y - (self.bitmap ? (self.bitmap.height * self.zoom_y) / 2 : 0)
      return cx, cy
    end
  end

  unless method_defined?(:getAnchor)
    def getAnchor(adjusted = false)
      return self.x, self.y
    end
  end

  unless method_defined?(:still)
    def still; end
  end

  unless method_defined?(:ebdx_loaded)
    def loaded
      !self.bitmap.nil? && !self.bitmap.disposed?
    end
  end

  unless method_defined?(:ebdx_height)
    def ebdx_height
      return 0 unless self.bitmap
      self.bitmap.height * self.zoom_y
    end
  end

  unless method_defined?(:height)
    def height
      return 0 unless self.bitmap
      self.bitmap.height * self.zoom_y
    end
  end

  # State accessors (no-op defaults, don't conflict with DBK/PE)
  attr_writer :ebdx_fainted, :ebdx_hidden, :ebdx_showshadow
  def ebdx_fainted;    @ebdx_fainted    || false; end
  def ebdx_hidden;     @ebdx_hidden     || false; end
  def ebdx_showshadow; @ebdx_showshadow || true;  end

  # Aliases so EBDX code can call .fainted / .showshadow directly
  alias fainted  ebdx_fainted  unless method_defined?(:fainted)
  alias fainted= ebdx_fainted= unless method_defined?(:fainted=)
  alias showshadow  ebdx_showshadow  unless method_defined?(:showshadow)
  alias showshadow= ebdx_showshadow= unless method_defined?(:showshadow=)

  # Charged state (used in common animations and camera)
  attr_writer :charged unless method_defined?(:charged=)
  def charged; @charged || false; end unless method_defined?(:charged)
  def chargedUpdate; end unless method_defined?(:chargedUpdate)

  # Selected state (used in UI scene updates)
  attr_writer :selected unless method_defined?(:selected=)
  def selected; @selected || false; end unless method_defined?(:selected)

  # Return self as the inner sprite (EBDX DynamicPokemonSprite wraps a Sprite)
  def sprite; self; end unless method_defined?(:sprite)

  # Clear: hide and reset (simplified from EBDX's full clear)
  def clear
    self.visible = false
    self.opacity = 255
    self.tone = Tone.new(0, 0, 0, 0)
    self.color = Color.new(0, 0, 0, 0)
    self.zoom_x = 1
    self.zoom_y = 1
  end unless method_defined?(:clear)

  unless method_defined?(:isSub)
    def isSub; false; end
  end

  unless method_defined?(:resetParticles)
    def resetParticles; end
  end
end

#===============================================================================
#  Scene integration — minimal EBDX animation infrastructure
#  Provides EBDXVector, EBDXBattleRoom, wait, setVector, moveEntireScene,
#  and EBDX move/common animation dispatch. No camera overrides.
#===============================================================================
class Battle::Scene
  attr_reader   :ebdx_vector, :battle, :viewport
  attr_accessor :afterAnim, :inMoveAnim
  attr_accessor :animationCount
  attr_reader   :sprites unless method_defined?(:sprites)

  unless method_defined?(:viewport)
    def viewport; @viewport; end
  end

  #=============================================================================
  #  Initialize EBDX animation objects alongside scene
  #=============================================================================
  alias ebdx_anim_core_pbInitSprites pbInitSprites unless method_defined?(:ebdx_anim_core_pbInitSprites)
  def pbInitSprites
    ebdx_anim_core_pbInitSprites
    # Vector — used by move animations for camera during anims only
    main = EBDXAnimations.get_vector(:MAIN, @battle)
    @ebdx_vector = EBDXVector.new(*main)
    @ebdx_vector.battle = @battle
    @inMoveAnim     = false
    @afterAnim      = false
    @animationCount = 1
    @waiter         = nil
    @orgPos         = nil
    @dataBoxesHidden = false
    # BattleRoom — provides battler/trainer positioning for move animations
    @ebdx_room = EBDXBattleRoom.new(self)
    @sprites["battlebg"] = @ebdx_room
    # Add defocus/focus stubs to PE's background sprites
    ["battle_bg", "battle_bg2"].each do |key|
      s = @sprites[key]
      next unless s
      unless s.respond_to?(:defocus)
        s.define_singleton_method(:defocus) {}
        s.define_singleton_method(:focus) {}
      end
    end
  end

  #=============================================================================
  #  animateScene — lightweight version for move animation frames only
  #  Called by wait() during move animations.
  #
  #  When align=true (EBDX move animations), Pokémon sprites are repositioned
  #  per-frame onto the camera-driven EBDXBattleRoom slots, mirroring the
  #  original EBDX Scene Camera.rb#animateScene alignment block. Without this,
  #  camera pans during move animations leave the Pokémon sprites frozen at
  #  DBK's static positions (camera moves, battlers don't follow).
  #
  #  When align=false (default), DBK retains full ownership of sprite positions.
  #=============================================================================
  def animateScene(align = false, smanim = false, &block)
    block.call if block
    @ebdx_vector.update if @ebdx_vector
    @ebdx_room.update if @ebdx_room
    return unless align && @ebdx_room && @ebdx_vector && @battle
    # Mirror EBDX original alignment block (Scene Camera.rb lines 87-105)
    @battle.battlers.each_with_index do |b, i|
      next unless b
      poke = @sprites["pokemon_#{i}"]
      next unless poke && !poke.disposed?
      slot = @ebdx_room.battler(i)
      next unless slot
      side_zoom = (i % 2 == 0) ? 2 : 1
      dynamax = (poke.respond_to?(:dynamax) && poke.dynamax)
      dmax_factor = (i % 2 == 0) ? (4.0 / EBDXAnimations::BACK_SPRITE_SCALE) : 4.0
      zoomer = (@ebdx_vector.zoom1 ** 0.75) * side_zoom * (dynamax ? dmax_factor : 1)
      poke.x = slot.x - (dynamax ? ((i % 2 == 0) ? 64 : -32) : 0)
      poke.y = slot.y + (dynamax ? 38 : 0)
      poke.zoom_x = zoomer
      poke.zoom_y = zoomer
    end
    # Trainer sprites follow camera too
    if @battle.opponent
      @battle.opponent.length.times do |t|
        ts = @sprites["trainer_#{t}"]
        next unless ts && !ts.disposed?
        slot = @ebdx_room.trainer(t * 2 + 1)
        next unless slot
        ts.x = slot.x
        ts.y = slot.y
        z = @ebdx_vector.zoom1 ** 0.75
        ts.zoom_x = z
        ts.zoom_y = z
      end
    end
  end

  #=============================================================================
  #  Scene wait — used by move animations (EBDX compatible)
  #=============================================================================
  def wait(frames = 1, align = false, &block)
    @waiter = EbdxWaiter.new if !@waiter || @waiter.is_too_stale?
    frames.to_i.times do
      animateScene(align, &block)
      @waiter.wait(1, true, false)
    end
  end

  #=============================================================================
  #  Move entire scene (shake/translate effects during move anims)
  #=============================================================================
  def moveEntireScene(x = 0, y = 0, lock = true, bypass = false, except = nil)
    return if !bypass && EBDXAnimations::DISABLE_SCENE_MOTION
    for i in 0...4
      next if !i.nil? && i == except
      @sprites["pokemon_#{i}"].x += x if @sprites["pokemon_#{i}"]
      @sprites["pokemon_#{i}"].y += y if @sprites["pokemon_#{i}"]
    end
    @ebdx_vector.x += x if @ebdx_vector
    @ebdx_vector.y += y if @ebdx_vector
    return if !lock; return if @orgPos.nil?
    @orgPos[0] += x; @orgPos[1] += y
  end

  #=============================================================================
  #  Set vector with drift compensation (used by move animations)
  #=============================================================================
  def setVector(*args)
    return if EBDXAnimations::DISABLE_SCENE_MOTION
    if args[0].is_a?(Array)
      return if args[0].length < 5
      x, y, angle, scale, zoom = args[0]
    else
      return if args.length < 5
      x, y, angle, scale, zoom = args
    end
    vector = EBDXAnimations.get_vector(:MAIN, @battle)
    if @orgPos
      x     += @orgPos[0] - vector[0]
      y     += @orgPos[1] - vector[1]
      angle += @orgPos[2] - vector[2]
      scale += @orgPos[3] - vector[3]
      zoom  += @orgPos[4] - vector[4]
    end
    @ebdx_vector.set(x, y, angle, scale, zoom, 1) if @ebdx_vector
  end

  #=============================================================================
  #  Reset camera vector
  #=============================================================================
  def ebdx_reset_sprites
    @ebdx_vector&.reset
  end

  def ebdx_set_org_pos
    return if @orgPos
    return unless @ebdx_vector
    @orgPos = [@ebdx_vector.x, @ebdx_vector.y, @ebdx_vector.angle,
               @ebdx_vector.scale, @ebdx_vector.zoom1]
  end

  def pbResetParams
    @ebdx_vector.reset if @ebdx_vector
    @orgPos = nil
    @ebdx_vector.inc = 0.2 if @ebdx_vector
    @ebdx_vector.lock if @ebdx_vector
  end

  #=============================================================================
  #  Revert move transformations (cleanup after animations)
  #=============================================================================
  def revertMoveTransformations(index)
    poke = @sprites["pokemon_#{index}"]
    return unless poke
    if poke.respond_to?(:hidden) && poke.hidden
      poke.visible = true
      poke.hidden = false if poke.respond_to?(:hidden=)
    end
    if poke.respond_to?(:ebdx_hidden) && poke.ebdx_hidden
      poke.ebdx_hidden = false
      poke.visible = true
    end
  end

  #=============================================================================
  #  Toggle data box visibility (used by move animations)
  #=============================================================================
  def pbHideAllDataboxes(side = nil)
    return if @dataBoxesHidden
    @battle.battlers.each_with_index do |b, i|
      next if !b || (!side.nil? && i % 2 != side)
      @sprites["dataBox_#{i}"].visible = false if @sprites["dataBox_#{i}"]
    end
    @dataBoxesHidden = true
  end
  def pbShowAllDataboxes(side = nil)
    @battle.battlers.each_with_index do |b, i|
      next if !b || (!side.nil? && i % 2 != side)
      @sprites["dataBox_#{i}"].visible = true if @sprites["dataBox_#{i}"]
    end
    @dataBoxesHidden = false
  end

  #=============================================================================
  #  Get real vector for battler
  #=============================================================================
  def getRealVector(targetindex, player)
    EBDXAnimations.get_vector(:BATTLER, player)
  end

  #=============================================================================
  #  EBDX move animation dispatch
  #=============================================================================
  alias ebdx_anim_dispatch_pbAnimation pbAnimation unless method_defined?(:ebdx_anim_dispatch_pbAnimation)
  def pbAnimation(moveid, user, targets, hitnum = 0)
    return if !moveid
    species = (@battle.battlers[user.index].species rescue nil)
    movedata = GameData::Move.get(moveid)
    move = Battle::Move.from_pokemon_move(@battle, Pokemon::Move.new(moveid))
    numhits = user.respond_to?(:thisMoveHits) ? user.thisMoveHits : nil
    @animationCount ||= 1
    multihit = !numhits.nil? ? (numhits > @animationCount) : false
    @animationCount += 1
    if numhits.nil?
      @animationCount = 1
    elsif @animationCount > numhits
      @animationCount = 1
    end
    multitarget = false
    multitarget = move.target if [:AllFoes, :AllNearFoes].include?(move.target)
    target = (targets && targets.is_a?(Array)) ? targets[0] : targets
    target = user if !target
    # Substitute animation
    if @sprites["pokemon_#{user.index}"] && @battle.showAnims
      subbed = (@sprites["pokemon_#{user.index}"].isSub rescue false)
      self.setSubstitute(user.index, false) if subbed
    end
    handled = false
    if @battle.showAnims
      @sprites["battlebg"].defocus
      # 1) SC EBDX move animation
      handled = EBDXAnimations.playMoveAnimation(moveid, self, user.index, target.index, hitnum, multihit, species) if !handled
      # 2) compiled EBDX animations
      if !handled && defined?(EliteBattle) && EliteBattle.respond_to?(:playMoveAnimation)
        handled = EliteBattle.playMoveAnimation(moveid, self, user.index, target.index, hitnum, multihit, species) rescue false
      end
      # 3) Legacy animation editor
      if EBDXAnimations::CUSTOM_MOVE_ANIM && !handled
        animid = pbFindMoveAnimation(moveid, user.index, hitnum) rescue nil
        if animid
          anim = animid[0]
          animations = pbLoadBattleAnimations rescue nil
          if animations && animations[anim]
            if animid[1]
              pbAnimationCore(animations[anim], target, user, true)
            else
              pbAnimationCore(animations[anim], user, target, false)
            end
            handled = true
          end
        end
      end
      # 4) Type-based global animation
      if !handled
        handled = EBDXAnimations.mapMoveGlobal(self, move.type, user.index, target.index, hitnum, multihit, multitarget, movedata.category)
      end
      # 5) Fallback to Tackle
      if !handled
        EBDXAnimations.playMoveAnimation(:TACKLE, self, user.index, target.index, 0, multihit)
      end
      @sprites["battlebg"].focus
    end
    # Transform form change
    if (move.function_code == "TransformUserIntoTarget" rescue false) && user && target
      pbChangePokemon(user, target.pokemon) rescue nil
    end
    clearMessageWindow
    self.afterAnim = true
  end

  #=============================================================================
  #  EBDX common animation dispatch
  #=============================================================================
  alias ebdx_anim_dispatch_pbCommonAnimation pbCommonAnimation unless method_defined?(:ebdx_anim_dispatch_pbCommonAnimation)
  def pbCommonAnimation(animname, user = nil, targets = nil)
    return false if ["Rain", "HeavyRain", "Hail", "Sandstorm", "Sun", "HarshSun",
                     "StrongWinds", "ShadowSky", "HealthDown"].include?(animname)
    return false if animname.nil? || user.nil?
    symbol = animname.upcase.to_sym rescue nil
    return ebdx_anim_dispatch_pbCommonAnimation(animname, user, targets) unless symbol
    target = targets.is_a?(Array) ? targets[0] : targets
    tidx = target.nil? ? user.index : (target.respond_to?(:index) ? target.index : user.index)
    if EBDXAnimations.hasCommonAnimation?(symbol)
      return true if EBDXAnimations.playCommonAnimation(symbol, self, user.index, tidx)
    end
    if defined?(EliteBattle) && EliteBattle.respond_to?(:hasCommonAnimation?) &&
       EliteBattle.hasCommonAnimation?(symbol)
      return true if EliteBattle.playCommonAnimation(symbol, self, user.index, tidx)
    end
    ebdx_anim_dispatch_pbCommonAnimation(animname, user, targets)
  end

  #=============================================================================
  #  Helper methods used by move animations
  #=============================================================================
  unless method_defined?(:clearMessageWindow)
    def clearMessageWindow(force = false)
      mw = @sprites["messageWindow"]
      mw.text = "" if mw && (force || (mw.text rescue "") != "")
    end
  end

  unless method_defined?(:applySpriteProperties)
    def applySpriteProperties(src, dst)
      return unless src && dst
      dst.x       = src.x
      dst.y       = src.y
      dst.z       = src.z
      dst.zoom_x  = src.zoom_x
      dst.zoom_y  = src.zoom_y
      dst.opacity = src.opacity
      dst.angle   = src.angle
      dst.mirror  = src.mirror rescue nil
      dst.ox      = src.ox
      dst.oy      = src.oy
      dst.color   = src.color.clone   rescue nil
      dst.tone    = src.tone.clone    rescue nil
      dst.visible = src.visible
    end
  end

  unless method_defined?(:playerBattler?)
    def playerBattler?(battler)
      battler.index % 2 == 0
    end
  end

  unless method_defined?(:setBGMLowHP)
    def setBGMLowHP(val = false); end
  end

  unless method_defined?(:setSubstitute)
    def setSubstitute(index, on = true); end
  end
end

#===============================================================================
#  Bitmap helpers for procedural animation effects
#===============================================================================
class ::Bitmap
  #  Always override bmp_circle — the compiled EBDX version in LUTS_Compat
  #  uses fill_rect with height 0 which can fail in some mkxp-z builds.
  #  This pixel-based implementation is safe and supports the full EBDX
  #  signature (r, tx, ty, hollow) for compatibility with all callers.
  def bmp_circle(color = Color.new(255, 255, 255), r = nil, tx = nil, ty = nil, hollow = false)
    r  = r  || [self.width, self.height].min / 2
    tx = tx || self.width  / 2
    ty = ty || self.height / 2
    rf = r.to_f
    return if rf <= 0
    (0...self.height).each do |y|
      (0...self.width).each do |x|
        dist = Math.sqrt((x - tx) ** 2 + (y - ty) ** 2)
        if hollow
          if dist >= rf - 1.0 && dist <= rf
            self.set_pixel(x, y, color)
          end
        elsif dist <= rf
          a = [(1.0 - (dist / rf)) * 255, color.alpha].min.to_i
          self.set_pixel(x, y, Color.new(color.red, color.green, color.blue, a))
        end
      end
    end
  end
  def draw_circle(*args); self.bmp_circle(*args); end
end

#===============================================================================
#  Delta frame-rate helpers (from Luka's Scripting Utilities / EBDX)
#  Allows code like  16.delta_add.times  and  val / self.delta
#===============================================================================
class ::Numeric
  unless method_defined?(:delta_add)
    # delta_add: multiply by delta  (more frames at higher FPS)
    def delta_add(round = true)
      d = Graphics.frame_rate / 40.0
      round ? (self * d).to_i : (self * d)
    end
  end

  unless method_defined?(:delta_sub)
    # delta_sub: divide by delta  (smaller steps at higher FPS)
    def delta_sub(round = true)
      d = Graphics.frame_rate / 40.0
      round ? (self / d).floor : (self / d)
    end
  end
end

class ::Sprite
  unless method_defined?(:center!)
    # center!(snap) — set ox/oy to bitmap center; if snap is true, also
    # move x/y to viewport center (EBDX behaviour)
    def center!(snap = false)
      return unless self.bitmap
      self.ox = self.bitmap.width / 2
      self.oy = self.bitmap.height / 2
      if snap && self.viewport
        self.x = self.viewport.rect.width / 2
        self.y = self.viewport.rect.height / 2
      end
    end
  end

  unless method_defined?(:zoom=)
    def zoom=(val)
      self.zoom_x = val
      self.zoom_y = val
    end
  end

  unless method_defined?(:snap_screen)
    def snap_screen
      bmp = Graphics.snap_to_bitmap
      w = self.viewport ? self.viewport.rect.width  : Graphics.width
      h = self.viewport ? self.viewport.rect.height : Graphics.height
      x = self.viewport ? self.viewport.rect.x : 0
      y = self.viewport ? self.viewport.rect.y : 0
      self.bitmap = Bitmap.new(w, h)
      self.bitmap.blt(0, 0, bmp, Rect.new(x, y, w, h))
      bmp.dispose
    end
  end

  unless method_defined?(:create_rect)
    def create_rect(width, height, color)
      self.bitmap = Bitmap.new(width, height)
      self.bitmap.fill_rect(0, 0, width, height, color)
    end
  end

  unless method_defined?(:full_rect)
    def full_rect(color)
      if !self.bitmap
        w = self.viewport ? self.viewport.rect.width  : Graphics.width
        h = self.viewport ? self.viewport.rect.height : Graphics.height
        self.bitmap = Bitmap.new(w, h)
      end
      self.bitmap.fill_rect(0, 0, self.bitmap.width, self.bitmap.height, color)
    end
  end

  unless method_defined?(:blur_sprite)
    def blur_sprite(blur_val = 2, opacity = 35)
      bitmap = self.bitmap
      self.bitmap = Bitmap.new(bitmap.width, bitmap.height)
      self.bitmap.blt(0, 0, bitmap, Rect.new(0, 0, bitmap.width, bitmap.height))
      x = 0; y = 0
      for i in 1...(8 * blur_val)
        dir = i % 8
        x += (1 + (i / 8)) * ([0, 6, 7].include?(dir) ? -1 : 1) * ([1, 5].include?(dir) ? 0 : 1)
        y += (1 + (i / 8)) * ([1, 4, 5, 6].include?(dir) ? -1 : 1) * ([3, 7].include?(dir) ? 0 : 1)
        self.bitmap.blt(x - blur_val, y + (blur_val * 2), bitmap, Rect.new(0, 0, bitmap.width, bitmap.height), opacity)
      end
    end
  end

  # EBDX animation helpers — particle destination coordinates
  attr_accessor :end_x, :end_y, :toggle, :anim, :id, :param
  attr_writer   :speed unless method_defined?(:speed=)
  def speed; @speed || 1; end

  # delta helper on sprite instance (convenience for transition code)
  def delta; Graphics.frame_rate / 40.0; end

  # Shortcut accessors for bitmap dimensions
  unless method_defined?(:width)
    def width; self.bitmap ? self.bitmap.width : 0; end
  end

  # blank_screen — creates a viewport-sized blank bitmap
  unless method_defined?(:blank_screen)
    def blank_screen
      w = self.viewport ? self.viewport.rect.width  : Graphics.width
      h = self.viewport ? self.viewport.rect.height : Graphics.height
      self.bitmap = Bitmap.new(w, h)
    end
  end

  # memorize_bitmap / restore_bitmap — LUTS-style bitmap stacking
  unless method_defined?(:memorize_bitmap)
    def memorize_bitmap
      @_memorized_bitmap = self.bitmap.clone if self.bitmap
    end
  end

  unless method_defined?(:restore_bitmap)
    def restore_bitmap
      self.bitmap = @_memorized_bitmap if @_memorized_bitmap
      @_memorized_bitmap = nil
    end
  end

  # glow — creates a glow effect around the sprite bitmap
  # Compatible with EBDX's 3-arg signature: glow(color, blur_power, keep)
  unless method_defined?(:glow)
    def glow(color, blur_power = 2, keep = true)
      return unless self.bitmap
      orig = self.bitmap.clone
      # Create blurred version
      blurred = Bitmap.new(self.bitmap.width, self.bitmap.height)
      blurred.blt(0, 0, self.bitmap, self.bitmap.rect)
      # Apply blur via directional blit
      blur_power.times do
        bx = 0; by = 0
        for i in 1..16
          dir = i % 8
          bx += ([0, 6, 7].include?(dir) ? -1 : 1) * ([1, 5].include?(dir) ? 0 : 1)
          by += ([1, 4, 5, 6].include?(dir) ? -1 : 1) * ([3, 7].include?(dir) ? 0 : 1)
          blurred.blt(bx, by, orig, orig.rect, 30)
        end
      end
      # Stretch-blit slightly larger for glow
      self.bitmap.clear
      gw = (blurred.width * 1.02).to_i
      gh = (blurred.height * 1.04).to_i
      gx = -(0.01 * blurred.width).to_i
      gy = -(0.02 * blurred.height).to_i
      self.bitmap.stretch_blt(Rect.new(gx, gy, gw, gh), blurred, blurred.rect)
      # Overlay original on top if keeping
      self.bitmap.blt(0, 0, orig, orig.rect) if keep
      self.color = color
      orig.dispose
      blurred.dispose
    end
  end
end

#===============================================================================
#  Math helpers (from EBDX)
#===============================================================================
unless defined?(calculateCurve)
  def calculateCurve(x1, y1, x2, y2, x3, y3, frames = 10)
    output = []
    step = 1.0 / frames
    t = 0.0
    frames.times do
      mt = 1.0 - t
      px = mt * mt * x1 + 2 * mt * t * x2 + t * t * x3
      py = mt * mt * y1 + 2 * mt * t * y2 + t * t * y3
      output.push([px, py])
      t += step
    end
    output
  end
end

unless defined?(randCircleCord)
  def randCircleCord(radius)
    angle = rand * 2 * Math::PI
    r = radius * Math.sqrt(rand)
    [r * Math.cos(angle) + radius, r * Math.sin(angle) + radius]
  end
end

#===============================================================================
#  Scrolling sprite helper (used by some EBDX animations)
#===============================================================================
unless defined?(ScrollingSprite)
  class ScrollingSprite < Sprite
    attr_accessor :speed, :direction

    def initialize(viewport = nil)
      super(viewport)
      @speed = 1
      @direction = 1
      @scroll_x = 0
    end

    def setBitmap(path, centered = false)
      bmp = pbBitmap(path) rescue nil
      return unless bmp
      # Create a double-wide bitmap for seamless scrolling
      self.bitmap = Bitmap.new(bmp.width * 2, bmp.height)
      self.bitmap.blt(0, 0, bmp, bmp.rect)
      self.bitmap.blt(bmp.width, 0, bmp, bmp.rect)
      self.src_rect.width = bmp.width
      self.src_rect.height = bmp.height
      if centered
        self.ox = bmp.width / 2
        self.oy = bmp.height / 2
      end
    end

    def update
      return unless self.bitmap
      @scroll_x += @speed * (@direction || 1)
      half_w = self.bitmap.width / 2
      @scroll_x %= half_w if half_w > 0
      self.src_rect.x = @scroll_x
    end
  end
end

#===============================================================================
#  Helper: play battler cry
#===============================================================================
unless defined?(playBattlerCry)
  def playBattlerCry(battler)
    return unless battler
    pkmn = battler.displayPokemon rescue battler.pokemon rescue nil
    return unless pkmn
    GameData::Species.play_cry_from_pokemon(pkmn) rescue nil
  end
end

#===============================================================================
#  EBDX Graphics path constant
#===============================================================================
EBDX_ANIM_PATH = "Graphics/EBDX/Animations/Moves/"

#===============================================================================
#  Safe SE player — tries EBDX SE paths with fallback
#===============================================================================
def ebdxPlaySE(name, vol = 80, pitch = 100)
  pbSEPlay(name, vol, pitch)
rescue StandardError
  # If the exact name fails, try without "EBDX/" prefix or with standard Anim/ prefix
  begin
    alt = name.sub("EBDX/Anim/", "Anim/")
    pbSEPlay(alt, vol, pitch) if alt != name
  rescue StandardError
  end
end

#===============================================================================
#  Battle::Scene — setSubstitute helper (used by SUBSTITUTE animation)
#===============================================================================
class Battle::Scene
  unless method_defined?(:setSubstitute)
    def setSubstitute(index, on = true)
      # No-op stub — DBK handles substitutes its own way
    end
  end
end

#===============================================================================
#  Redirect compiled EBDX's EliteBattle animation context through SC system
#  The compiled EBDX (PluginScripts.rxdata) may still call EliteBattle.withMoveParams
#  and EliteBattle.withCommonParams with an incompatible context (scene.vector instead
#  of scene.ebdx_vector, missing battlers accessor, etc.).  By redirecting these
#  calls through EBDXAnimations' compatible implementations, all EBDX-registered
#  animations (CHARGE, SPARK, etc.) run with the correct SC/DBK environment.
#===============================================================================
if defined?(EliteBattle)
  module EliteBattle
    class << self
      alias _sc_original_withMoveParams withMoveParams if method_defined?(:withMoveParams)
      def withMoveParams(anim, id, scene, userindex, targetindex, hitnum, multihit, *args)
        EBDXAnimations.withMoveParams(anim, id, scene, userindex, targetindex, hitnum, multihit, *args)
      end

      alias _sc_original_withCommonParams withCommonParams if method_defined?(:withCommonParams)
      def withCommonParams(anim, id, scene, userindex, targetindex, hitnum, *args)
        EBDXAnimations.withCommonParams(anim, id, scene, userindex, targetindex, hitnum)
      end
    end
  end
end
