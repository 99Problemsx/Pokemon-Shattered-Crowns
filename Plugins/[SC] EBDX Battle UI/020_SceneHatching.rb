#===============================================================================
#  [SC] EBDX Battle UI — Egg Hatching Scene Override
#  Ports EBDX's hatching visual effects to PE v21.1
#  Credits: Luka S.J. (original EBDX), 99Problemsx (SC adaptation)
#===============================================================================
class PokemonEggHatch_Scene
  #---------------------------------------------------------------------------
  #  Main update — background lines + egg sprite
  #---------------------------------------------------------------------------
  def update
    updateBackground
    @sprites["poke"].update if @sprites["poke"]
    # Blit crack overlay onto egg sprite (only while egg not fully cracked)
    _update_cracks if @crack_bmp && @frame < 5
  end

  #---------------------------------------------------------------------------
  #  Background scrolling line particles (same effect as evolution)
  #---------------------------------------------------------------------------
  def updateBackground
    6.times do |j|
      s = @sprites["l#{j}"]
      next unless s
      s.y = @viewport.rect.height if s.y <= 0
      t = (s.y.to_f / @viewport.rect.height) * 255
      s.tone = Tone.new(t, t, t)
      z = ((s.y.to_f - @viewport.rect.height / 2) / (@viewport.rect.height / 2)) * 1.0
      s.angle = z < 0 ? 180 : 0
      s.zoom_y = z.abs
      s.y -= 2
    end
  end

  #---------------------------------------------------------------------------
  #  Advance crack frame
  #---------------------------------------------------------------------------
  def advance
    @frame += 1
    # Advance crack animation by 2 frames
    if @crack_bmp && @crack_total_frames > 0
      @crack_frame = [@crack_frame + 2, @crack_total_frames - 1].min
    end
  end

  #---------------------------------------------------------------------------
  #  Initialize the hatching scene
  #---------------------------------------------------------------------------
  def pbStartScene(pokemon)
    @path = "Graphics/EBDX/Pictures/Hatching/"
    @frame = 0
    @crack_frame = 0
    @sprites = {}
    @pokemon = pokemon
    @nicknamed = false
    @viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @viewport.z = 99999
    @viewport.color = Color.new(0, 0, 0, 0)
    # Fade to black
    16.times do
      Graphics.update
      @viewport.color.alpha += 16
    end
    # Black bars
    @sprites["bar1"] = Sprite.new(@viewport)
    @sprites["bar1"].bitmap = Bitmap.new(@viewport.rect.width, @viewport.rect.height / 2)
    @sprites["bar1"].bitmap.fill_rect(0, 0, @viewport.rect.width, @viewport.rect.height / 2, Color.black)
    @sprites["bar1"].z = 99999
    @sprites["bar2"] = Sprite.new(@viewport)
    @sprites["bar2"].bitmap = Bitmap.new(@viewport.rect.width, @viewport.rect.height / 2)
    @sprites["bar2"].bitmap.fill_rect(0, 0, @viewport.rect.width, @viewport.rect.height / 2, Color.black)
    @sprites["bar2"].y = @viewport.rect.height / 2
    @sprites["bar2"].z = 99999
    # Background
    @sprites["bg1"] = Sprite.new(@viewport)
    @sprites["bg1"].bitmap = pbBitmap(@path + "hatchbg") rescue Bitmap.new(Graphics.width, Graphics.height)
    @sprites["bg2"] = Sprite.new(@viewport)
    @sprites["bg2"].bitmap = pbBitmap(@path + "overlay") rescue nil
    @sprites["bg2"].z = 5
    # Message window
    @sprites["msgwindow"] = pbCreateMessageWindow(@viewport)
    @sprites["msgwindow"].visible = false
    @sprites["msgwindow"].z = 9999
    # Scrolling line particles
    6.times do |j|
      @sprites["l#{j}"] = Sprite.new(@viewport)
      @sprites["l#{j}"].bitmap = pbBitmap(@path + "line") rescue nil
      next unless @sprites["l#{j}"].bitmap
      @sprites["l#{j}"].y = (@viewport.rect.height / 6) * j
      @sprites["l#{j}"].ox = @sprites["l#{j}"].bitmap.width / 2
      @sprites["l#{j}"].x = @viewport.rect.width / 2
    end
    # Egg sprite
    @pokemon.steps_to_hatch = 1  # Ensure egg bitmap is loaded
    @sprites["poke"] = PokemonSprite.new(@viewport)
    @sprites["poke"].setOffset(PictureOrigin::BOTTOM)
    @sprites["poke"].setPokemonBitmap(@pokemon)
    @sprites["poke"].x = @viewport.rect.width / 2
    @sprites["poke"].y = @viewport.rect.height / 2 + (@sprites["poke"].bitmap ? @sprites["poke"].bitmap.height * 0.5 : 48)
    @sprites["poke"].z = 50
    # Crack overlay bitmap
    _load_cracks
    @pokemon.steps_to_hatch = 0
    @viewport.color.alpha = 0
    # White flash rect
    @sprites["rect"] = Sprite.new(@viewport)
    @sprites["rect"].bitmap = Bitmap.new(@viewport.rect.width, @viewport.rect.height)
    @sprites["rect"].bitmap.fill_rect(0, 0, @viewport.rect.width, @viewport.rect.height, Color.white)
    @sprites["rect"].opacity = 0
    @sprites["rect"].z = 100
  end

  #---------------------------------------------------------------------------
  #  Load egg crack spritesheet
  #---------------------------------------------------------------------------
  def _load_cracks
    # Try species-specific cracks first, then generic fallback
    species_sym = @pokemon.species.to_s rescue "000"
    candidates = [
      "Graphics/EBDX/Battlers/Eggs/#{species_sym}cracks",
      "Graphics/Pokemon/Eggs/#{species_sym}_cracks",
      "Graphics/EBDX/Battlers/Eggs/000cracks",
      "Graphics/Pokemon/Eggs/000_cracks"
    ]
    @crack_bmp = nil
    candidates.each do |path|
      if pbResolveBitmap(path)
        @crack_bmp = pbBitmap(path) rescue nil
        break if @crack_bmp
      end
    end
    # Calculate frame dimensions (spritesheet is horizontal strip)
    if @crack_bmp
      # Assume frame height = full height, frame width = height (square frames)
      @crack_frame_w = @crack_bmp.height
      @crack_total_frames = [@crack_bmp.width / @crack_frame_w, 1].max
    else
      @crack_total_frames = 0
    end
    @crack_frame = 0
  end

  #---------------------------------------------------------------------------
  #  Blit current crack frame onto egg sprite
  #---------------------------------------------------------------------------
  def _update_cracks
    return unless @crack_bmp && @sprites["poke"] && @sprites["poke"].bitmap
    poke_bmp = @sprites["poke"].bitmap
    frame_x = @crack_frame * @crack_frame_w
    cx = (poke_bmp.width - @crack_frame_w) / 2
    cy = (poke_bmp.height - @crack_bmp.height) / 2
    poke_bmp.blt(cx, cy, @crack_bmp,
                 Rect.new(frame_x, 0, @crack_frame_w, @crack_bmp.height))
  end

  #---------------------------------------------------------------------------
  #  Main hatching animation sequence
  #---------------------------------------------------------------------------
  def pbMain
    pbBGMStop
    pbMEPlay("EBDX/Evolution Start") rescue pbMEPlay("Evolution start")
    waiter = EbdxWaiter.new
    # Open bars
    16.times do
      waiter.graphics_update
      update
      @sprites["bar1"].y -= @sprites["bar1"].bitmap.height / 16
      @sprites["bar2"].y += @sprites["bar2"].bitmap.height / 16
    end
    pbBGMPlay("EBDX/Evolution") rescue pbBGMPlay("Evolution")
    _wait(32)
    # --- Egg bounce (2x) ---
    2.times do
      3.times do
        @sprites["poke"].zoom_y += 0.04
        _wait
      end
      6.times do |i|
        @sprites["poke"].y -= 6 * (i < 3 ? 1 : -1)
        _wait
      end
      6.times do |i|
        @sprites["poke"].zoom_y -= 0.04 * (i < 3 ? 2 : -1)
        @sprites["poke"].y -= 2 if i >= 3
        _wait
      end
      3.times do
        @sprites["poke"].y += 2
        _wait
      end
      advance
      pbSEPlay("EBDX/Anim/ice2", 80) rescue pbSEPlay("Anim/Ice2", 80)
      _wait(24)
    end
    # --- Egg shake (3 rounds, increasing intensity) ---
    m = 16; n = 2; k = -1
    3.times do |j|
      if j < 2
        advance
        pbSEPlay("EBDX/Anim/ice2", 80) rescue pbSEPlay("Anim/Ice2", 80)
      end
      m.times do |i|
        k *= -1 if i % n == 0
        @sprites["poke"].x += k * 4
        @sprites["rect"].opacity += 64 if j == 2 && i >= (m - 5)
        _wait
      end
      k = j < 1 ? 1.5 : 2
      n = 3
      m = 42
      _wait(24) if j < 1
    end
    # --- Egg burst ---
    advance
    pbSEPlay("Battle recall")
    # Reload egg bitmap (fresh copy without cracks)
    @sprites["poke"].setPokemonBitmap(@pokemon)
    @sprites["poke"].setOffset(PictureOrigin::BOTTOM)
    @sprites["poke"].x = @viewport.rect.width / 2
    @sprites["poke"].y = @viewport.rect.height / 2 + (@sprites["poke"].bitmap ? @sprites["poke"].bitmap.height * 0.5 : 48)
    # Ring burst
    @sprites["ring"] = Sprite.new(@viewport)
    @sprites["ring"].z = 200
    @sprites["ring"].bitmap = pbBitmap(@path + "shine7") rescue nil
    if @sprites["ring"].bitmap
      @sprites["ring"].ox = @sprites["ring"].bitmap.width / 2
      @sprites["ring"].oy = @sprites["ring"].bitmap.height / 2
    end
    @sprites["ring"].color = Color.new(32, 92, 42)
    @sprites["ring"].opacity = 0
    @sprites["ring"].x = @viewport.rect.width / 2
    @sprites["ring"].y = @viewport.rect.height / 2
    # Burst particles
    16.times do |j|
      @sprites["s#{j}"] = Sprite.new(@viewport)
      @sprites["s#{j}"].z = 200
      bmp = pbBitmap(@path + "shine6") rescue nil
      @sprites["s#{j}"].bitmap = bmp
      if bmp
        @sprites["s#{j}"].ox = bmp.width / 2
        @sprites["s#{j}"].oy = bmp.height / 2
      end
      @sprites["s#{j}"].color = Color.new(232, 92, 42)
      @sprites["s#{j}"].x = @viewport.rect.width / 2
      @sprites["s#{j}"].y = @viewport.rect.height / 2
      @sprites["s#{j}"].opacity = 0
      r = 96 + rand(64)
      x, y = randCircleCord(r)
      @sprites["s#{j}"].end_x = @sprites["s#{j}"].x - r + x
      @sprites["s#{j}"].end_y = @sprites["s#{j}"].y - r + y - 32
      z = 1 - rand(20) * 0.01
      @sprites["s#{j}"].zoom_x = z
      @sprites["s#{j}"].zoom_y = z
    end
    # Animate burst
    16.times do
      16.times do |j|
        s = @sprites["s#{j}"]
        s.x -= (s.x - s.end_x) * 0.05
        s.y -= (s.y - s.end_y) * 0.05
        s.color.alpha -= 16
        s.opacity += 32
      end
      @sprites["ring"].color.alpha -= 16
      @sprites["ring"].opacity += 32
      @sprites["ring"].zoom_x += 0.5
      @sprites["ring"].zoom_y += 0.5
      _wait
    end
    48.times do |i|
      16.times do |j|
        s = @sprites["s#{j}"]
        s.x -= (s.x - s.end_x) * 0.05
        s.y -= (s.y - s.end_y) * 0.05
        s.end_y += 2
        s.zoom_x -= 0.01
        s.zoom_y -= 0.01
        s.opacity -= 16 if i >= 32
      end
      @sprites["ring"].zoom_x += 0.5
      @sprites["ring"].zoom_y += 0.5
      @sprites["ring"].opacity -= 32
      _wait
    end
    16.times do
      @sprites["rect"].opacity -= 16
      _wait
    end
    _wait(32)
    # --- Finish: show hatched Pokemon ---
    frames = GameData::Species.cry_length(@pokemon.species, @pokemon.form).ceil
    pbBGMStop
    GameData::Species.play_cry(@pokemon)
    frames.times { waiter.graphics_update; update }
    pbMEPlay("EBDX/Capture Success") rescue pbMEPlay("Evolution success")
    pbBGMPlay("EBDX/Victory Against Wild") rescue nil
    @sprites["msgwindow"].visible = true
    cmd = [_INTL("Yes"), _INTL("No")]
    pbMessageDisplay(@sprites["msgwindow"],
      _INTL("\\se[]{1} hatched from the Egg!\\wt[80]", @pokemon.name)) { update }
    pbMessageDisplay(@sprites["msgwindow"],
      _INTL("Would you like to nickname the newly hatched {1}?", @pokemon.name)) { update }
    if pbShowCommands(@sprites["msgwindow"], cmd, 1, 0) { update } == 0
      nickname = pbEnterPokemonName(
        _INTL("{1}'s nickname?", @pokemon.name), 0, 10, "", @pokemon, true)
      @pokemon.name = nickname if nickname != ""
      @nicknamed = true
    end
    @sprites["msgwindow"].text = ""
    @sprites["msgwindow"].visible = false
  end

  #---------------------------------------------------------------------------
  #  Frame wait helper
  #---------------------------------------------------------------------------
  def _wait(frames = 1)
    waiter = EbdxWaiter.new
    frames.times do
      waiter.graphics_update
      update
    end
  end

  #---------------------------------------------------------------------------
  #  Close scene
  #---------------------------------------------------------------------------
  def pbEndScene
    $game_temp.message_window_showing = false if $game_temp
    16.times do
      @viewport.color.alpha += 16
      _wait
    end
    pbDisposeSpriteHash(@sprites)
    16.times do
      Graphics.update
      @viewport.color.alpha -= 16
    end
    @viewport.dispose
  end
end
