#===============================================================================
#  [SC] EBDX Battle UI — Evolution Scene Override
#  Ports EBDX's evolution visual effects to PE v21.1
#  Credits: Luka S.J. (original EBDX), 99Problemsx (SC adaptation)
#===============================================================================
class PokemonEvolutionScene
  #---------------------------------------------------------------------------
  #  Main update — background lines + optional poke/bar updates
  #---------------------------------------------------------------------------
  def update(poke = true, bar = false)
    updateBackground
    @sprites["poke"].update if poke && @sprites["poke"]
    @sprites["poke2"].update if poke && @sprites["poke2"]
    if bar
      @sprites["bar1"].y -= 8 if @sprites["bar1"] && @sprites["bar1"].y > -@viewport.height * 0.5
      @sprites["bar2"].y += 8 if @sprites["bar2"] && @sprites["bar2"].y < @viewport.height * 1.5
    end
  end

  alias pbUpdate update unless method_defined?(:pbUpdate)

  #---------------------------------------------------------------------------
  #  Background scrolling line particles
  #---------------------------------------------------------------------------
  def updateBackground
    6.times do |j|
      s = @sprites["l#{j}"]
      next unless s
      s.y = @viewport.height if s.y <= 0
      t = (s.y.to_f / @viewport.height) * 255
      s.tone = Tone.new(t, t, t)
      z = ((s.y.to_f - @viewport.height / 2) / (@viewport.height / 2)) * 1.0
      s.angle = z < 0 ? 180 : 0
      s.zoom_y = z.abs
      s.y -= 2
    end
  end

  #---------------------------------------------------------------------------
  #  Sparkle particles expanding outward from Pokemon
  #---------------------------------------------------------------------------
  def updateParticles
    16.times do |j|
      s = @sprites["s#{j}"]
      next unless s
      s.visible = true
      if s.opacity == 0
        s.opacity = 255
        s.speed = 1
        s.x = @sprites["poke"].x
        s.y = @sprites["poke"].y
        x, y = randCircleCord(256)
        s.end_x = @sprites["poke"].x - 256 + x
        s.end_y = @sprites["poke"].y - 256 + y
      end
      s.x -= (s.x - s.end_x) * 0.01 * s.speed
      s.y -= (s.y - s.end_y) * 0.01 * s.speed
      s.opacity -= 4 * s.speed
    end
  end

  #---------------------------------------------------------------------------
  #  Light ray expansion
  #---------------------------------------------------------------------------
  def updateRays(i)
    8.times do |j|
      next if j > i / 8
      s = @sprites["r#{j}"]
      next unless s
      if s.opacity == 0
        s.opacity = 255
        s.zoom_x = 0
        s.zoom_y = 0
      end
      s.opacity -= 4
      s.zoom_x += 0.04
      s.zoom_y += 0.04
    end
  end

  #---------------------------------------------------------------------------
  #  Initialize the evolution screen
  #---------------------------------------------------------------------------
  def pbStartScreen(pokemon, newspecies)
    @path = "Graphics/EBDX/Pictures/Evolution/"
    @pokemon = pokemon
    @newspecies = newspecies
    @imgBg = "evobg"
    @sprites = {}
    @viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @viewport.z = 99999
    @viewport.color = Color.new(0, 0, 0, 0)
    # Instant fade to black
    16.times { @viewport.color.alpha += 16 }
    # Black bars (cinematic)
    @sprites["bar1"] = Sprite.new(@viewport)
    @sprites["bar1"].bitmap = Bitmap.new(@viewport.rect.width, @viewport.rect.height / 2)
    @sprites["bar1"].bitmap.fill_rect(0, 0, @viewport.rect.width, @viewport.rect.height / 2, Color.black)
    @sprites["bar1"].z = 99999
    @sprites["bar2"] = Sprite.new(@viewport)
    @sprites["bar2"].bitmap = Bitmap.new(@viewport.rect.width, @viewport.rect.height / 2)
    @sprites["bar2"].bitmap.fill_rect(0, 0, @viewport.rect.width, @viewport.rect.height / 2, Color.black)
    @sprites["bar2"].y = @viewport.rect.height / 2
    @sprites["bar2"].z = 99999
    # Message window
    @sprites["msgwindow"] = pbCreateMessageWindow(@viewport)
    @sprites["msgwindow"].visible = false
    @sprites["msgwindow"].z = 9999
    # Background
    @sprites["bg1"] = Sprite.new(@viewport)
    @sprites["bg1"].bitmap = pbBitmap(@path + @imgBg) rescue Bitmap.new(Graphics.width, Graphics.height)
    @sprites["bg2"] = Sprite.new(@viewport)
    @sprites["bg2"].bitmap = pbBitmap(@path + "overlay") rescue nil
    @sprites["bg2"].z = 5
    # Scrolling line particles
    6.times do |j|
      @sprites["l#{j}"] = Sprite.new(@viewport)
      @sprites["l#{j}"].bitmap = pbBitmap(@path + "line") rescue nil
      next unless @sprites["l#{j}"].bitmap
      @sprites["l#{j}"].y = (@viewport.rect.height / 6) * j
      @sprites["l#{j}"].ox = @sprites["l#{j}"].bitmap.width / 2
      @sprites["l#{j}"].x = @viewport.rect.width / 2
    end
    # Original Pokemon sprite
    @sprites["poke"] = PokemonSprite.new(@viewport)
    @sprites["poke"].setOffset(PictureOrigin::CENTER)
    @sprites["poke"].setPokemonBitmap(@pokemon)
    @sprites["poke"].x = @viewport.rect.width / 2
    @sprites["poke"].y = @viewport.rect.height / 2
    @sprites["poke"].z = 50
    # Evolved Pokemon sprite
    @sprites["poke2"] = PokemonSprite.new(@viewport)
    @sprites["poke2"].setOffset(PictureOrigin::CENTER)
    @sprites["poke2"].setPokemonBitmapSpecies(@pokemon, @newspecies)
    @sprites["poke2"].x = @viewport.rect.width / 2
    @sprites["poke2"].y = @viewport.rect.height / 2
    @sprites["poke2"].z = 50
    @sprites["poke2"].zoom_x = 0
    @sprites["poke2"].zoom_y = 0
    @sprites["poke2"].tone = Tone.new(255, 255, 255)
    # Shine sprites
    _setup_shine_sprites
    # Sparkle particles
    _setup_particles
    # Light rays
    _setup_rays
    @viewport.color.alpha = 0
  end

  #---------------------------------------------------------------------------
  #  Setup helpers (keeps pbStartScreen manageable)
  #---------------------------------------------------------------------------
  def _setup_shine_sprites
    # Shine 1 — initial glow
    @sprites["shine"] = Sprite.new(@viewport)
    @sprites["shine"].bitmap = pbBitmap(@path + "shine1") rescue nil
    if @sprites["shine"].bitmap
      @sprites["shine"].ox = @sprites["shine"].bitmap.width / 2
      @sprites["shine"].oy = @sprites["shine"].bitmap.height / 2
    end
    @sprites["shine"].x = @sprites["poke"].x
    @sprites["shine"].y = @sprites["poke"].y
    @sprites["shine"].zoom_x = 0; @sprites["shine"].zoom_y = 0
    @sprites["shine"].opacity = 0; @sprites["shine"].z = 60
    # Shine 2 — during animation
    @sprites["shine2"] = Sprite.new(@viewport)
    @sprites["shine2"].bitmap = pbBitmap(@path + "shine3") rescue nil
    if @sprites["shine2"].bitmap
      @sprites["shine2"].ox = @sprites["shine2"].bitmap.width / 2
      @sprites["shine2"].oy = @sprites["shine2"].bitmap.height / 2
    end
    @sprites["shine2"].x = @sprites["poke"].x
    @sprites["shine2"].y = @sprites["poke"].y
    @sprites["shine2"].zoom_x = 0; @sprites["shine2"].zoom_y = 0
    @sprites["shine2"].opacity = 0; @sprites["shine2"].z = 40
    # Shine 3 — end flash
    @sprites["shine3"] = Sprite.new(@viewport)
    @sprites["shine3"].bitmap = pbBitmap(@path + "shine4") rescue nil
    if @sprites["shine3"].bitmap
      @sprites["shine3"].ox = @sprites["shine3"].bitmap.width / 2
      @sprites["shine3"].oy = @sprites["shine3"].bitmap.height / 2
    end
    @sprites["shine3"].x = @sprites["poke"].x
    @sprites["shine3"].y = @sprites["poke"].y
    @sprites["shine3"].zoom_x = 0.5; @sprites["shine3"].zoom_y = 0.5
    @sprites["shine3"].opacity = 0; @sprites["shine3"].z = 60
  end

  def _setup_particles
    16.times do |j|
      @sprites["s#{j}"] = Sprite.new(@viewport)
      bmp = pbBitmap(@path + "shine2") rescue nil
      @sprites["s#{j}"].bitmap = bmp
      if bmp
        @sprites["s#{j}"].ox = bmp.width / 2
        @sprites["s#{j}"].oy = bmp.height / 2
      end
      @sprites["s#{j}"].x = @sprites["poke"].x
      @sprites["s#{j}"].y = @sprites["poke"].y
      @sprites["s#{j}"].z = 60
      s = rand(4) + 1
      x, y = randCircleCord(192)
      @sprites["s#{j}"].end_x = @sprites["s#{j}"].x - 192 + x
      @sprites["s#{j}"].end_y = @sprites["s#{j}"].y - 192 + y
      @sprites["s#{j}"].speed = s
      @sprites["s#{j}"].visible = false
    end
  end

  def _setup_rays
    rangle = []
    8.times { |i| rangle.push((360 / 8) * i + 15) }
    8.times do |j|
      @sprites["r#{j}"] = Sprite.new(@viewport)
      @sprites["r#{j}"].bitmap = pbBitmap(@path + "ray") rescue nil
      @sprites["r#{j}"].ox = 0
      @sprites["r#{j}"].oy = (@sprites["r#{j}"].bitmap.height / 2) rescue 0
      @sprites["r#{j}"].opacity = 0
      @sprites["r#{j}"].zoom_x = 0; @sprites["r#{j}"].zoom_y = 0
      @sprites["r#{j}"].x = @viewport.rect.width / 2
      @sprites["r#{j}"].y = @viewport.rect.height / 2
      a = rand(rangle.length)
      @sprites["r#{j}"].angle = rangle[a]
      @sprites["r#{j}"].z = 60
      rangle.delete_at(a)
    end
  end

  #---------------------------------------------------------------------------
  #  Close evolution screen
  #---------------------------------------------------------------------------
  def pbEndScreen(need_fade_out = true)
    $game_temp.message_window_showing = false if $game_temp
    @viewport.color = Color.new(0, 0, 0, 0)
    waiter = EbdxWaiter.new
    16.times do
      waiter.graphics_update
      update
      @viewport.color.alpha += 16
    end
    pbDisposeSpriteHash(@sprites)
    16.times { @viewport.color.alpha -= 16; waiter.graphics_update }
    @viewport.dispose
    # SC FIX (review C1): EBDX replaces PokemonEvolutionScene#pbEndScreen
    # entirely (no alias chain). Plugins like Companion Pokemon used to hook
    # pbEndScreen directly to refresh after evolution; their alias is now
    # silently wiped. We expose an event trigger here so plugins can subscribe
    # via EventHandlers regardless of load order.
    EventHandlers.trigger(:on_evolution_scene_end, @pokemon) rescue nil
  end

  #---------------------------------------------------------------------------
  #  Initial glow effect
  #---------------------------------------------------------------------------
  def glow
    t = 0
    pbSEPlay("Anim/Ice1")
    waiter = EbdxWaiter.new
    16.times do
      waiter.graphics_update
      update(false)
      @sprites["shine"].zoom_x += 0.08
      @sprites["shine"].zoom_y += 0.08
      @sprites["shine"].opacity += 16
      t += 16
      @sprites["poke"].tone = Tone.new(t, t, t)
      @sprites["bar1"].y += 3
      @sprites["bar2"].y -= 3
    end
    16.times do
      waiter.graphics_update
      update(false)
      @sprites["shine"].zoom_x -= 0.02
      @sprites["shine"].zoom_y -= 0.02
      @sprites["shine"].opacity -= 16
      t -= 16
      @sprites["poke"].tone = Tone.new(t, t, t)
      @sprites["bar1"].y += 3
      @sprites["bar2"].y -= 3
      updateParticles
    end
  end

  #---------------------------------------------------------------------------
  #  Flash at completion
  #---------------------------------------------------------------------------
  def flash(cancel)
    srt = cancel ? "poke" : "poke2"
    pbSEPlay("Flash3", 80) unless cancel
    bg_keys = ["bar1", "bar2", "bg1", "bg2"] + (0...6).map { |i| "l#{i}" }
    @sprites.each do |key, s|
      next if bg_keys.include?(key)
      s.visible = false rescue nil
    end
    @sprites[srt].visible = true
    @sprites[srt].zoom_x = 1
    @sprites[srt].zoom_y = 1
    @sprites[srt].tone = Tone.new(0, 0, 0)
    waiter = EbdxWaiter.new
    (cancel ? 32 : 64).times do
      waiter.graphics_update
      @viewport.color.alpha -= cancel ? 8 : 4
      update(true, true)
    end
    return if cancel
    # Post-evolution sparkle burst
    pbSEPlay("Anim/Saint6")
    64.times do |j|
      @sprites["p#{j}"] = Sprite.new(@viewport)
      n = [5, 2][rand(2)]
      bmp = pbBitmap(@path + "shine#{n}") rescue nil
      @sprites["p#{j}"].bitmap = bmp
      @sprites["p#{j}"].z = 10
      if bmp
        @sprites["p#{j}"].ox = bmp.width / 2
        @sprites["p#{j}"].oy = bmp.height / 2
      end
      @sprites["p#{j}"].x = rand(@viewport.rect.width + 1)
      @sprites["p#{j}"].y = @viewport.rect.height / 2 + rand(@viewport.rect.height / 2 - 64)
      z = [0.2, 0.4, 0.5, 0.6, 0.8, 1.0][rand(6)]
      @sprites["p#{j}"].zoom_x = z
      @sprites["p#{j}"].zoom_y = z
      @sprites["p#{j}"].opacity = 0
      @sprites["p#{j}"].speed = 2 + rand(5)
    end
    64.times do |i|
      waiter.graphics_update
      update
      64.times do |j|
        s = @sprites["p#{j}"]
        next unless s
        s.opacity += (i < 32 ? 2 : -2) * s.speed
        s.y -= 1 if i % s.speed == 0
        if s.opacity > 128
          s.zoom_x /= 1.5
          s.zoom_y /= 1.5
        end
      end
    end
  end

  #---------------------------------------------------------------------------
  #  Main evolution animation loop
  #---------------------------------------------------------------------------
  def pbEvolution(cancancel = true)
    pbBGMStop
    waiter = EbdxWaiter.new
    # Open bars
    16.times do
      waiter.graphics_update
      update
      @sprites["bar1"].y -= @sprites["bar1"].bitmap.height / 16
      @sprites["bar2"].y += @sprites["bar2"].bitmap.height / 16
    end
    # Play evolution start ME
    pbMEPlay("EBDX/Evolution Start") rescue pbMEPlay("Evolution start")
    @sprites["msgwindow"].visible = true
    pbMessageDisplay(@sprites["msgwindow"],
      _INTL("\\se[]What?\r\n{1} is evolving!\\^", @pokemon.name)) { update }
    pbMessageWaitForInput(@sprites["msgwindow"], 100, true) { update }
    @sprites["msgwindow"].visible = false
    # Pokemon cry
    GameData::Species.play_cry(@pokemon)
    cry_len = GameData::Species.cry_length(@pokemon.species, @pokemon.form).ceil
    cry_len.times { waiter.graphics_update; update }
    pbBGMPlay("EBDX/Evolution") rescue pbBGMPlay("Evolution")
    canceled = false
    # Glow effect
    glow
    k1 = 1; k2 = 1; s = 1
    @viewport.color = Color.new(255, 255, 255, 0)
    pbSEPlay("Heal4")
    # Main oscillation loop (256 frames)
    256.times do |i|
      k1 *= -1 if i % (32 / s) == 0
      k2 *= -1 if i % 16 == 0
      s *= 2 if i % 64 == 0 && i > 0 && s < 8
      waiter.graphics_update
      Input.update
      update(false)
      updateParticles
      updateRays(i)
      # Old pokemon shrinks, new one grows (oscillating)
      @sprites["poke"].zoom_x += 0.03125 * k1 * s
      @sprites["poke"].zoom_y += 0.03125 * k1 * s
      @sprites["poke"].tone.red += 16
      @sprites["poke"].tone.green += 16
      @sprites["poke"].tone.blue += 16
      @sprites["poke2"].zoom_x -= 0.03125 * k1 * s
      @sprites["poke2"].zoom_y -= 0.03125 * k1 * s
      # Shine2 grows
      if @sprites["shine2"].opacity < 255
        @sprites["shine2"].opacity += 16
        @sprites["shine2"].zoom_x += 0.08
        @sprites["shine2"].zoom_y += 0.08
      else
        @sprites["shine2"].zoom_x += 0.01 * k2
        @sprites["shine2"].zoom_y += 0.01 * k2
        @sprites["shine2"].tone.red += 0.5
        @sprites["shine2"].tone.green += 0.5
        @sprites["shine2"].tone.blue += 0.5
      end
      # Shine3 at end
      if i >= 240
        @sprites["shine3"].opacity += 16
        @sprites["shine3"].zoom_x += 0.1
        @sprites["shine3"].zoom_y += 0.1
      end
      @viewport.color.alpha += 32 if i >= 248
      # Cancel check
      if Input.trigger?(Input::BACK) && cancancel
        pbBGMStop
        canceled = true
        break
      end
    end
    @viewport.color = Color.white
    flash(canceled)
    if canceled
      @sprites["msgwindow"].visible = true
      pbMessageDisplay(@sprites["msgwindow"],
        _INTL("Huh?\r\n{1} stopped evolving!", @pokemon.name)) { update }
    else
      createEvolved
    end
  end

  #---------------------------------------------------------------------------
  #  Create the evolved Pokemon
  #---------------------------------------------------------------------------
  def createEvolved
    frames = GameData::Species.cry_length(@newspecies, @pokemon.form).ceil
    pbBGMStop
    GameData::Species.play_cry_from_species(@newspecies)
    waiter = EbdxWaiter.new
    frames.times { waiter.graphics_update; update }
    pbMEPlay("EBDX/Capture Success") rescue pbMEPlay("Evolution success")
    pbBGMPlay("EBDX/Victory Against Wild") rescue nil
    newspeciesname = GameData::Species.get(@newspecies).name
    oldspeciesname = GameData::Species.get(@pokemon.species).name
    @sprites["msgwindow"].visible = true
    pbMessageDisplay(@sprites["msgwindow"],
      _INTL("\\se[]Congratulations! Your {1} evolved into {2}!\\wt[80]",
            @pokemon.name, newspeciesname)) { update }
    @sprites["msgwindow"].text = ""
    # Post-evolution item/duplication check
    pbEvolutionMethodAfterEvolution
    # Modify Pokemon
    @pokemon.species = @newspecies
    @pokemon.name    = newspeciesname if @pokemon.name == oldspeciesname
    @pokemon.form    = 0 if @pokemon.isSpecies?(:MOTHIM)
    @pokemon.calc_stats
    # Pokedex
    $player.pokedex.register(@pokemon.species, @pokemon.gender, @pokemon.form)
    $player.pokedex.set_owned(@pokemon.species)
    # Learn moves
    movelist = @pokemon.getMoveList
    movelist.each do |i|
      next if i[0] != 0 && i[0] != @pokemon.level
      pbLearnMove(@pokemon, i[1], true) { update }
    end
  end
end
