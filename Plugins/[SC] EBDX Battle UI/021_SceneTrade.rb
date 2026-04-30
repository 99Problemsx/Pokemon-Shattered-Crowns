#===============================================================================
#  [SC] EBDX Battle UI — Trade Scene Override
#  Ports EBDX/Rua's trading visual effects to PE v21.1
#  Credits: Rua (original), Luka S.J. (EBDX graphics), 99Problemsx (SC)
#===============================================================================
class PokemonTrade_Scene
  #---------------------------------------------------------------------------
  #  Main update — sprite hash + scrolling line particles
  #---------------------------------------------------------------------------
  def pbUpdate
    pbUpdateSpriteHash(@sprites)
    6.times do |j|
      s = @sprites["l#{j}"]
      next unless s
      t = (s.y.to_f / @viewport.rect.height) * 255
      s.tone = Tone.new(t, t, t)
      z = ((s.y.to_f - @viewport.rect.height / 2) / (@viewport.rect.height / 2)) * 1.0
      s.angle = z < 0 ? 180 : 0
      s.zoom_y = z.abs
      s.y -= 2
      s.y = @viewport.rect.height if s.y < -s.bitmap.height
    end
  end

  def pbRunPictures(pictures, sprites)
    loop do
      pictures.each { |pic| pic.update }
      sprites.each_with_index do |sprite, i|
        if sprite.is_a?(IconSprite)
          setPictureIconSprite(sprite, pictures[i])
        else
          setPictureSprite(sprite, pictures[i])
        end
      end
      Graphics.update
      Input.update
      pbUpdate
      running = false
      pictures.each { |pic| running = true if pic.running? }
      break unless running
    end
  end

  #---------------------------------------------------------------------------
  #  Initialize trade screen
  #---------------------------------------------------------------------------
  def pbStartScreen(pokemon, pokemon2, trader1, trader2)
    @sprites = {}
    @viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @viewport.z = 99999
    @pokemon  = pokemon
    @pokemon2 = pokemon2
    @trader1  = trader1
    @trader2  = trader2
    @path = "Graphics/EBDX/Trade/"
    # Background
    @sprites["background"] = Sprite.new(@viewport)
    @sprites["background"].bitmap = pbBitmap(@path + "tradebg") rescue Bitmap.new(Graphics.width, Graphics.height)
    # Scrolling line particles
    6.times do |j|
      @sprites["l#{j}"] = Sprite.new(@viewport)
      @sprites["l#{j}"].bitmap = pbBitmap(@path + "line") rescue nil
      next unless @sprites["l#{j}"].bitmap
      @sprites["l#{j}"].y = (@viewport.rect.height / 6) * j
      @sprites["l#{j}"].ox = @sprites["l#{j}"].bitmap.width / 2
      @sprites["l#{j}"].x = @viewport.rect.width / 2
      @sprites["l#{j}"].z = 1
    end
    # Pokemon sprites
    @sprites["rsprite1"] = PokemonSprite.new(@viewport)
    @sprites["rsprite1"].setPokemonBitmap(@pokemon, false)
    @sprites["rsprite1"].setOffset(PictureOrigin::BOTTOM)
    @sprites["rsprite1"].x = Graphics.width / 2
    @sprites["rsprite1"].y = @viewport.rect.height / 2 + 20
    @sprites["rsprite1"].z = 10
    @pokemon.species_data.apply_metrics_to_sprite(@sprites["rsprite1"], 1)
    @sprites["rsprite2"] = PokemonSprite.new(@viewport)
    @sprites["rsprite2"].setPokemonBitmap(@pokemon2, false)
    @sprites["rsprite2"].setOffset(PictureOrigin::BOTTOM)
    @sprites["rsprite2"].x = Graphics.width / 2
    @sprites["rsprite2"].y = @viewport.rect.height / 2 + 20
    @sprites["rsprite2"].z = 10
    @pokemon2.species_data.apply_metrics_to_sprite(@sprites["rsprite2"], 1)
    @sprites["rsprite2"].visible = false
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
    # Shine effect
    @sprites["shine"] = Sprite.new(@viewport)
    @sprites["shine"].bitmap = pbBitmap(@path + "shine1") rescue nil
    if @sprites["shine"].bitmap
      @sprites["shine"].ox = @sprites["shine"].bitmap.width / 2
      @sprites["shine"].oy = @sprites["shine"].bitmap.height / 2
    end
    @sprites["shine"].x = Graphics.width / 2
    @sprites["shine"].y = Graphics.height / 2
    @sprites["shine"].zoom_x = 0; @sprites["shine"].zoom_y = 0
    @sprites["shine"].opacity = 0; @sprites["shine"].z = 60
    # Animate bars opening
    40.times do
      Graphics.update
      pbUpdate
      @sprites["bar1"].y -= @sprites["bar1"].bitmap.height / 32
      @sprites["bar2"].y += @sprites["bar2"].bitmap.height / 32
    end
    16.times do
      Graphics.update
      pbUpdate
      @sprites["bar1"].opacity -= 16
      @sprites["bar2"].opacity -= 16
    end
    @sprites["msgwindow"] = pbCreateMessageWindow(@viewport)
  end

  #---------------------------------------------------------------------------
  #  Post-trade shine effect (64 sparkle particles)
  #---------------------------------------------------------------------------
  def pbShineEffect
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
      Graphics.update
      pbUpdate
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
    64.times do |j|
      @sprites["p#{j}"].dispose if @sprites["p#{j}"]
    end
  end

  #---------------------------------------------------------------------------
  #  Scene 1: Recall Pokemon into ball, ball exits top
  #---------------------------------------------------------------------------
  def pbScene1
    spriteBall = IconSprite.new(0, 0, @viewport)
    spriteBall.z = 15
    pictureBall = PictureEx.new(0)
    picturePoke = PictureEx.new(0)
    ballimage = sprintf("Graphics/Battle animations/ball_%s", @pokemon.poke_ball)
    ballopenimage = sprintf("Graphics/Battle animations/ball_%s_open", @pokemon.poke_ball)
    # Ball start
    pictureBall.setXY(0, Graphics.width / 2, 48)
    pictureBall.setName(0, ballimage)
    pictureBall.setSrcSize(0, 32, 64)
    pictureBall.setOrigin(0, PictureOrigin::CENTER)
    pictureBall.setVisible(0, true)
    # Pokemon start
    picturePoke.setXY(0, @sprites["rsprite1"].x, @sprites["rsprite1"].y)
    picturePoke.setOrigin(0, PictureOrigin::BOTTOM)
    picturePoke.setVisible(0, true)
    # Color change → recall
    picturePoke.moveColor(2, 5, Color.new(31 * 8, 22 * 8, 30 * 8, 255))
    delay = picturePoke.totalDuration
    picturePoke.setSE(delay, "Battle recall")
    pictureBall.setName(delay, ballopenimage)
    pictureBall.setSrcSize(delay, 32, 64)
    picturePoke.moveZoom(delay, 8, 0)
    picturePoke.moveXY(delay, 8, Graphics.width / 2, 48)
    picturePoke.setSE(delay + 5, "Battle jump to ball")
    picturePoke.setVisible(delay + 8, false)
    delay = picturePoke.totalDuration + 1
    pictureBall.setName(delay, ballimage)
    pictureBall.setSrcSize(delay, 32, 64)
    # Ball exits top
    delay = picturePoke.totalDuration + 10
    pictureBall.moveXY(delay, 6, Graphics.width / 2, -32)
    pbRunPictures([picturePoke, pictureBall], [@sprites["rsprite1"], spriteBall])
    spriteBall.dispose
  end

  #---------------------------------------------------------------------------
  #  Scene 2: Ball drops, Pokemon appears, shine effect
  #---------------------------------------------------------------------------
  def pbScene2
    spriteBall = IconSprite.new(0, 0, @viewport)
    spriteBall.z = 15
    pictureBall = PictureEx.new(0)
    picturePoke = PictureEx.new(0)
    ballimage = sprintf("Graphics/Battle animations/ball_%s", @pokemon2.poke_ball)
    ballopenimage = sprintf("Graphics/Battle animations/ball_%s_open", @pokemon2.poke_ball)
    # Ball from top
    pictureBall.setXY(0, Graphics.width / 2, -32)
    pictureBall.setName(0, ballimage)
    pictureBall.setSrcSize(0, 32, 64)
    pictureBall.setOrigin(0, PictureOrigin::CENTER)
    pictureBall.setVisible(0, true)
    # Pokemon hidden
    picturePoke.setOrigin(0, PictureOrigin::BOTTOM)
    picturePoke.setZoom(0, 0)
    picturePoke.setColor(0, Color.new(31 * 8, 22 * 8, 30 * 8, 255))
    picturePoke.setVisible(0, false)
    # Ball bounce sequence
    y = Graphics.height - 96 - 16 - 16
    delay = picturePoke.totalDuration + 2
    4.times do |i|
      t = [4, 4, 3, 2][i]
      d = [1, 2, 4, 8][i]
      delay -= t if i == 0
      if i > 0
        pictureBall.setZoomXY(delay, 100 + 5 * (5 - i), 100 - 5 * (5 - i))
        pictureBall.moveZoom(delay, 2, 100)
        pictureBall.moveXY(delay, t, Graphics.width / 2, y - (100 / d))
      end
      pictureBall.moveXY(delay + t, t, Graphics.width / 2, y)
      pictureBall.setSE(delay + (2 * t), "Battle ball drop")
      delay = pictureBall.totalDuration
    end
    picturePoke.setXY(delay, Graphics.width / 2, y)
    # Open ball
    delay = pictureBall.totalDuration + 15
    pictureBall.setSE(delay, "Battle recall")
    pictureBall.setName(delay, ballopenimage)
    pictureBall.setSrcSize(delay, 32, 64)
    pictureBall.setVisible(delay + 5, false)
    # Pokemon appears
    picturePoke.setVisible(delay, true)
    picturePoke.moveZoom(delay, 8, 100)
    picturePoke.moveXY(delay, 8, Graphics.width / 2, @sprites["rsprite2"].y)
    delay = picturePoke.totalDuration
    picturePoke.moveColor(delay, 5, Color.new(240, 176, 240, 0))
    cry = GameData::Species.cry_filename_from_pokemon(@pokemon2)
    picturePoke.setSE(delay, cry) if cry
    pbRunPictures([picturePoke, pictureBall], [@sprites["rsprite2"], spriteBall])
    pbShineEffect
    spriteBall.dispose
  end

  #---------------------------------------------------------------------------
  #  End screen (checks for trade evolution)
  #---------------------------------------------------------------------------
  def pbEndScreen(need_fade_out = true)
    pbDisposeMessageWindow(@sprites["msgwindow"]) if @sprites["msgwindow"]
    pbFadeOutAndHide(@sprites) if need_fade_out
    pbDisposeSpriteHash(@sprites)
    @viewport.dispose
    newspecies = @pokemon2.check_evolution_on_trade(@pokemon)
    if newspecies
      evo = PokemonEvolutionScene.new
      evo.pbStartScreen(@pokemon2, newspecies)
      evo.pbEvolution(false)
      evo.pbEndScreen
    end
  end

  #---------------------------------------------------------------------------
  #  Main trade sequence
  #---------------------------------------------------------------------------
  def pbTrade
    was_owned = $player.owned?(@pokemon2.species)
    $player.pokedex.register(@pokemon2)
    $player.pokedex.set_owned(@pokemon2.species)
    pbBGMStop
    @pokemon.play_cry
    speciesname1 = GameData::Species.get(@pokemon.species).name
    speciesname2 = GameData::Species.get(@pokemon2.species).name
    pbMessageDisplay(@sprites["msgwindow"],
      _ISPRINTF("{1:s}\r\nID: {2:05d}   OT: {3:s}\\wtnp[0]",
                @pokemon.name, @pokemon.owner.public_id, @pokemon.owner.name)) { pbUpdate }
    pbMessageWaitForInput(@sprites["msgwindow"], 50, true) { pbUpdate }
    pbPlayDecisionSE
    pbBGMPlay("Evolution")
    pbScene1
    pbMessageDisplay(@sprites["msgwindow"],
      _INTL("For {1}'s {2},\r\n{3} sends {4}.\1",
            @trader1, speciesname1, @trader2, speciesname2)) { pbUpdate }
    pbMessageDisplay(@sprites["msgwindow"],
      _INTL("{1} bids farewell to {2}.", @trader2, speciesname2)) { pbUpdate }
    pbScene2
    pbBGMStop
    pbMEPlay("Battle capture success")
    pbMessageDisplay(@sprites["msgwindow"],
      _ISPRINTF("{1:s}\r\nID: {2:05d}   OT: {3:s}\1",
                @pokemon2.name, @pokemon2.owner.public_id, @pokemon2.owner.name)) { pbUpdate }
    pbMessageDisplay(@sprites["msgwindow"],
      _INTL("Take good care of {1}.", speciesname2)) { pbUpdate }
    # Show Pokedex entry if new species
    if Settings::SHOW_NEW_SPECIES_POKEDEX_ENTRY_MORE_OFTEN && !was_owned &&
       $player.has_pokedex && $player.pokedex.species_in_unlocked_dex?(@pokemon2.species)
      pbMessageDisplay(@sprites["msgwindow"],
        _INTL("{1}'s data was added to the Pokédex.", speciesname2)) { pbUpdate }
      $player.pokedex.register_last_seen(@pokemon2)
      pbFadeOutIn do
        scene = PokemonPokedexInfo_Scene.new
        screen = PokemonPokedexInfoScreen.new(scene)
        screen.pbDexEntry(@pokemon2.species)
        pbEndScreen(false)
      end
    end
  end
end
