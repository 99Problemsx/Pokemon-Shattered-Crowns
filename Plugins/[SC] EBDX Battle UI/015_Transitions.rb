#===============================================================================
#  EBDX-style trainer battle intro transitions for PE v21
#  Ported from EliteBattle_BasicTrainerAnimations (anim1, anim2, anim3)
#  Uses EbdxWaiter for consistent wall-clock 40fps timing.
#  Registered via SpecialBattleIntroAnimations at priority 70
#===============================================================================
module EBDXTransitions
  #---------------------------------------------------------------------------
  #  frame rate delta (always 1.0 when using EbdxWaiter at 40fps)
  #---------------------------------------------------------------------------
  def self.delta
    Graphics.frame_rate / 40.0
  end
  #---------------------------------------------------------------------------
  #  anim1 — ball spin + screen split horizontally
  #---------------------------------------------------------------------------
  def self.anim1(viewport)
    vw = viewport.rect.width
    vh = viewport.rect.height
    waiter = EbdxWaiter.new
    # load ball sprite
    ball = Sprite.new(viewport)
    ball.bitmap = pbBitmap("Graphics/EBDX/Transitions/Common/ball")
    ball.center!(true)
    ball.zoom_x = 0
    ball.zoom_y = 0
    # spin ball into place
    16.delta_add.times do
      ball.angle += 22.5 / delta
      ball.zoom_x += 0.0625 / delta
      ball.zoom_y += 0.0625 / delta
      waiter.wait
    end
    ball.angle = 0
    ball.zoom_x = 1
    ball.zoom_y = 1
    # take screenshot + brief pause
    bmp = Graphics.snap_to_bitmap
    8.times { waiter.wait }
    # dispose ball sprite
    ball.dispose
    # black background
    black = Sprite.new(viewport)
    black.bitmap = Bitmap.new(vw, vh)
    black.bitmap.fill_rect(0, 0, vw, vh, Color.black)
    # split screenshot into two halves
    field1 = Sprite.new(viewport)
    field1.bitmap = Bitmap.new(vw, vh)
    field1.bitmap.blt(0, 0, bmp, viewport.rect)
    field1.src_rect.height = vh / 2
    field2 = Sprite.new(viewport)
    field2.bitmap = field1.bitmap.clone
    field2.y = vh / 2
    field2.src_rect.height = vh / 2
    field2.src_rect.y = vh / 2
    # move halves off screen
    16.delta_add.times do
      field1.x -= (vw / 16) / delta
      field2.x += (vw / 16) / delta
      waiter.wait
    end
    field1.x = -vw
    field2.x = vw
    viewport.color = Color.black
    # dispose unused sprites
    black.dispose
    field1.dispose
    field2.dispose
    bmp.dispose
  end
  #---------------------------------------------------------------------------
  #  anim2 — two balls cross + screen split diagonally
  #---------------------------------------------------------------------------
  def self.anim2(viewport)
    vw = viewport.rect.width
    vh = viewport.rect.height
    waiter = EbdxWaiter.new
    # take screenshot and draw black background
    bmp = Graphics.snap_to_bitmap
    black = Sprite.new(viewport)
    black.bitmap = Bitmap.new(vw, vh)
    black.bitmap.fill_rect(0, 0, vw, vh, Color.black)
    # split screenshot into two halves
    field1 = Sprite.new(viewport)
    field1.bitmap = Bitmap.new(vw, vh)
    field1.bitmap.blt(0, 0, bmp, viewport.rect)
    field1.src_rect.height = vh / 2
    field2 = Sprite.new(viewport)
    field2.bitmap = field1.bitmap.clone
    field2.y = vh / 2
    field2.src_rect.height = vh / 2
    field2.src_rect.y = vh / 2
    # draw ball sprites for transition
    ball1 = Sprite.new(viewport)
    ball1.bitmap = pbBitmap("Graphics/EBDX/Transitions/Common/ball")
    ball1.center!
    ball1.x = vw + ball1.ox
    ball1.y = vh / 4
    ball1.zoom_x = 0.5
    ball1.zoom_y = 0.5
    ball2 = Sprite.new(viewport)
    ball2.bitmap = pbBitmap("Graphics/EBDX/Transitions/Common/ball")
    ball2.center!
    ball2.y = (vh / 4) * 3
    ball2.x = -ball2.ox
    ball2.zoom_x = 0.5
    ball2.zoom_y = 0.5
    # move ball sprites on screen
    16.delta_add.times do
      ball1.x -= (vw / 8) / delta
      ball2.x += (vw / 8) / delta
      waiter.wait
    end
    # move screenshots off
    32.delta_add.times do
      field1.x -= (vw / 16) / delta
      field1.y -= (vh / 32) / delta
      field2.x += (vw / 16) / delta
      field2.y += (vh / 32) / delta
      waiter.wait
    end
    viewport.color = Color.black
    # dispose unused sprites
    black.dispose
    ball1.dispose
    ball2.dispose
    field1.dispose
    field2.dispose
    bmp.dispose
  end
  #---------------------------------------------------------------------------
  #  anim3 — rolling balls across horizontal stripes
  #---------------------------------------------------------------------------
  def self.anim3(viewport)
    vw = viewport.rect.width
    vh = viewport.rect.height
    stripe_h = vh / 6
    waiter = EbdxWaiter.new
    # hash to store all sprites
    balls = {}
    rects = {}
    # create scaled ball bitmap
    ball_bmp = Bitmap.new(stripe_h, stripe_h)
    src = pbBitmap("Graphics/EBDX/Transitions/Common/ball")
    ball_bmp.stretch_blt(Rect.new(0, 0, stripe_h, stripe_h), src, Rect.new(0, 0, src.width, src.height))
    # create necessary sprites
    for i in 0...6
      # black rectangles
      rects["#{i}"] = Sprite.new(viewport)
      rects["#{i}"].bitmap = Bitmap.new(2, stripe_h)
      rects["#{i}"].bitmap.fill_rect(0, 0, 2, stripe_h, Color.black)
      rects["#{i}"].x = (i % 2 == 0) ? -32 : vw + 32
      rects["#{i}"].ox = (i % 2 == 0) ? 0 : 2
      rects["#{i}"].y = stripe_h * i
      rects["#{i}"].zoom_x = 0
      # ball sprites
      balls["#{i}"] = Sprite.new(viewport)
      balls["#{i}"].bitmap = ball_bmp
      balls["#{i}"].center!
      balls["#{i}"].x = rects["#{i}"].x
      balls["#{i}"].y = rects["#{i}"].y + stripe_h / 2
    end
    # move sprites across screen
    for j in 0...28.delta_add
      for i in 0...6
        balls["#{i}"].x += ((i % 2 == 0) ? 24 : -24) / delta
        balls["#{i}"].angle -= ((i % 2 == 0) ? 32 : -32) / delta
        rects["#{i}"].zoom_x += 12 / delta
      end
      waiter.wait
    end
    viewport.color = Color.black
    # dispose unused sprites
    pbDisposeSpriteHash(balls)
    pbDisposeSpriteHash(rects)
    ball_bmp.dispose
  end

  #---------------------------------------------------------------------------
  #  Wild: outdoor — snaking grid pattern fading to black
  #---------------------------------------------------------------------------
  def self.wild_outdoor(viewport)
    vw = viewport.rect.width
    vh = viewport.rect.height
    hz = 8; vz = 6
    width = vw / hz; height = vh / vz
    waiter = EbdxWaiter.new
    sps = {}
    for j in 0...(hz * vz)
      sps[j] = Sprite.new(viewport)
      sps[j].ox = width / 2
      pat = j < (hz * vz) / 2 ? (j / hz) % 2 == 0 : (j / hz) % 2 == 1
      x = pat ? (width / 2 + width * (j % hz)) : (vw - width / 2 - width * (j % hz))
      y = height * (j / hz)
      sps[j].x = x; sps[j].y = y
      sps[j].create_rect(width, height, Color.black)
      sps[j].zoom_x = 0
    end
    for i in 0...40.delta_add
      for j in 0...(hz * vz)
        k = j < (hz * vz) / 2 ? j : (hz * vz) - j
        next if k > i * 0.75
        sps[j].zoom_x += 0.15 / delta if sps[j].zoom_x < 1
      end
      waiter.wait
    end
    viewport.color = Color.new(0, 0, 0, 255)
    pbDisposeSpriteHash(sps)
  end

  #---------------------------------------------------------------------------
  #  Wild: indoor — alternating horizontal stripes fill
  #---------------------------------------------------------------------------
  def self.wild_indoor(viewport)
    vw = viewport.rect.width
    vh = viewport.rect.height
    waiter = EbdxWaiter.new
    screen = Sprite.new(viewport)
    screen.bitmap = Bitmap.new(vw, vh)
    black = Color.black
    stripe_h = vh / 16
    for i in 1..16.delta_add
      for j in 0...16
        x = (j % 2 == 0) ? 0 : vw - i * (vw / 16).delta_sub
        screen.bitmap.fill_rect(x, j * stripe_h, i * (vw / 16), stripe_h, black)
      end
      waiter.wait
    end
    viewport.color = Color.new(0, 0, 0, 255)
    10.times { waiter.wait }
    screen.dispose
  end

  #---------------------------------------------------------------------------
  #  Wild: cave — expanding tiles in diagonal sequence
  #---------------------------------------------------------------------------
  def self.wild_cave(viewport)
    vw = viewport.rect.width
    vh = viewport.rect.height
    width = vw / 4; height = vh / 4
    waiter = EbdxWaiter.new
    screen = Sprite.new(viewport)
    screen.bitmap = Bitmap.new(vw, vh)
    sprites = {}
    for i in 0...16
      sprites[i] = Sprite.new(viewport)
      sprites[i].bitmap = Bitmap.new(width, height)
      sprites[i].bitmap.fill_rect(0, 0, width, height, Color.black)
      sprites[i].ox = width / 2
      sprites[i].oy = height / 2
      sprites[i].x = width / 2 + width * (i % 4)
      sprites[i].y = vh - height / 2 - height * (i / 4)
      sprites[i].zoom_x = 0
      sprites[i].zoom_y = 0
    end
    seq = [[0], [4, 1], [8, 5, 2], [12, 9, 6, 3], [13, 10, 7], [14, 11], [15]]
    for i in 0...seq.length
      5.delta_add.times do
        for j in 0...seq[i].length
          n = seq[i][j]
          sprites[n].zoom_x += 0.2 / delta
          sprites[n].zoom_y += 0.2 / delta
        end
        waiter.wait
      end
      for j in 0...seq[i].length
        n = seq[i][j]
        sprites[n].zoom_x = 1
        sprites[n].zoom_y = 1
      end
    end
    viewport.color = Color.new(0, 0, 0, 255)
    waiter.wait
    pbDisposeSpriteHash(sprites)
    screen.dispose
  end

  #---------------------------------------------------------------------------
  #  Wild: water — sine wave distortion fading to black
  #---------------------------------------------------------------------------
  def self.wild_water(viewport)
    vw = viewport.rect.width
    vh = viewport.rect.height
    bmp = Graphics.snap_to_bitmap
    split = 12
    n = vh / split
    waiter = EbdxWaiter.new
    sprites = {}
    black = Sprite.new(viewport)
    black.bitmap = Bitmap.new(vw, vh)
    black.bitmap.fill_rect(0, 0, vw, vh, Color.black)
    for i in 0...n
      sprites[i] = Sprite.new(viewport)
      sprites[i].bitmap = Bitmap.new(vw, vh)
      sprites[i].bitmap.blt(0, 0, bmp, viewport.rect)
      sprites[i].ox = sprites[i].bitmap.width / 2
      sprites[i].x = vw / 2
      sprites[i].y = i * split
      sprites[i].src_rect.set(0, i * split, sprites[i].bitmap.width, split)
      sprites[i].color = Color.new(0, 0, 0, 0)
    end
    for f in 0...64.delta_add
      for i in 0...n
        o = Math.sin(f - i * 0.5) / delta
        sprites[i].x = vw / 2 + 16 * o if f >= i * delta
        sprites[i].color.alpha += 25.5 / delta if sprites[i].color.alpha < 255 && f >= (64 - (48 - i))
      end
      waiter.wait
    end
    viewport.color = Color.new(0, 0, 0, 255)
    pbDisposeSpriteHash(sprites)
    black.dispose
    bmp.dispose
  end

  #---------------------------------------------------------------------------
  #  Wild: overlevel — gradient wipe pattern
  #---------------------------------------------------------------------------
  def self.wild_overlevel(viewport)
    vw = viewport.rect.width
    vh = viewport.rect.height
    height = vh / 4; width = vw / 10
    waiter = EbdxWaiter.new
    backdrop = Sprite.new(viewport)
    backdrop.snap_screen
    sprite = Sprite.new(viewport)
    sprite.bitmap = Bitmap.new(vw, vh)
    for j in 0...4
      y = [0, 2, 1, 3]
      for i in 1..10.delta_add
        sprite.bitmap.fill_rect(0, height * y[j], width * i / delta, height, Color.white)
        backdrop.tone.all += 3 / delta
        waiter.wait
      end
    end
    viewport.color = Color.new(0, 0, 0, 0)
    10.delta_add.times do
      viewport.color.alpha += 25.5 / delta
      waiter.wait
    end
    viewport.color.alpha = 255
    backdrop.dispose
    sprite.dispose
  end

  #---------------------------------------------------------------------------
  #  Regi species list and index lookup
  #---------------------------------------------------------------------------
  REGI_SPECIES = [:REGIROCK, :REGISTEEL, :REGICE, :REGIGIGAS]

  def self.is_regi?(species)
    REGI_SPECIES.include?(species)
  end

  def self.regi_index(species)
    REGI_SPECIES.index(species) || 0
  end

  #---------------------------------------------------------------------------
  #  Wild: Regi animation — dot pattern fade-in
  #---------------------------------------------------------------------------
  def self.wild_regi(viewport, species)
    waiter = EbdxWaiter.new
    fp = {}
    index = regi_index(species)
    vw = viewport.rect.width
    vh = viewport.rect.height
    viewport.color = Color.new(0, 0, 0, 0)
    # Blurred screenshot background
    fp["back"] = Sprite.new(viewport)
    fp["back"].snap_screen
    fp["back"].blur_sprite
    c = index < 3 ? 0 : 255
    fp["back"].color = Color.new(c, c, c, 128 * (index < 3 ? 1 : 2))
    fp["back"].z = 99999
    fp["back"].opacity = 0
    # Positioning matrix for Regi dots
    x = [
      [vw*0.5,vw*0.25,vw*0.75,vw*0.25,vw*0.75,vw*0.25,vw*0.75],
      [vw*0.5,vw*0.3,vw*0.7,vw*0.15,vw*0.85,vw*0.3,vw*0.7],
      [vw*0.5,vw*0.325,vw*0.675,vw*0.5,vw*0.5,vw*0.15,vw*0.85],
      [vw*0.5,vw*0.5,vw*0.5,vw*0.5,vw*0.35,vw*0.65,vw*0.5]
    ]
    y = [
      [vh*0.5,vh*0.5,vh*0.5,vh*0.25,vh*0.75,vh*0.75,vh*0.25],
      [vh*0.5,vh*0.25,vh*0.75,vh*0.5,vh*0.5,vh*0.75,vh*0.25],
      [vh*0.5,vh*0.5,vh*0.5,vh*0.25,vh*0.75,vh*0.5,vh*0.5],
      [vh*0.9,vh*0.74,vh*0.58,vh*0.4,vh*0.25,vh*0.25,vh*0.1]
    ]
    # Draw regi dots
    for j in 0...14
      fp[j] = Sprite.new(viewport)
      bmp = pbBitmap("Graphics/EBDX/Transitions/Species/regi") rescue nil
      next unless bmp
      fp[j].bitmap = bmp
      fp[j].src_rect.set(96 * (j / 7), 100 * index, 96, 100)
      fp[j].ox = fp[j].src_rect.width / 2
      fp[j].oy = fp[j].src_rect.height / 2
      fp[j].x = x[index][j % 7]
      fp[j].y = y[index][j % 7]
      fp[j].opacity = 0
      fp[j].z = 99999
    end
    # Fade to black
    8.delta_add.times do
      fp["back"].opacity += 32 / delta
      waiter.wait
    end
    fp["back"].opacity = 255
    k = -2
    # Fade in regi dots
    for i in 0...72.delta_add
      if index < 3
        k += 2 if i.delta_add % 8 == 0
      else
        k += (k == 3 ? 2 : 1) if i.delta_add % 4 == 0
      end
      k = 6 if k > 6
      for j in 0..k
        next unless fp[j]
        fp[j].opacity += 32 / delta
        fp[j + 7].opacity += 26 / delta if fp[j + 7] && fp[j].opacity >= 255
        fp[j].visible = fp[j + 7] ? fp[j + 7].opacity < 255 : true
      end
      fp["back"].color.alpha += [1, 2 / delta].max if fp["back"].color.alpha < 255
      waiter.wait
    end
    # Fade viewport to black
    8.delta_add.times do
      viewport.color.alpha += 32 / delta
      waiter.wait
    end
    viewport.color.alpha = 255
    pbDisposeSpriteHash(fp)
  end

  #---------------------------------------------------------------------------
  #  Wild: Minor Legendary — blur zoom with viewport color transition
  #---------------------------------------------------------------------------
  def self.wild_minor_legendary(viewport, special = false)
    waiter = EbdxWaiter.new
    bmp = Graphics.snap_to_bitmap
    max = 50
    amax = 4
    frames = {}
    zoom = 1
    viewport.color = special ? Color.new(64, 64, 64, 0) : Color.new(255, 255, 155, 0)
    # Animate initial viewport color
    20.delta_add.times do
      viewport.color.alpha += [1, 2 / delta].max
      waiter.wait
    end
    viewport.color.alpha = 40
    # Animate screen blur pattern
    angle = 0
    for i in 0...(max + 20).delta_add
      if !(i % 2 == 0)
        zoom += ((i > max * 0.75 * delta) ? 0.3 : -0.01) / delta
        angle = (i % 3 == 0) ? rand(amax * 2) - amax : angle
        frames[i] = Sprite.new(viewport)
        frames[i].bitmap = Bitmap.new(viewport.rect.width, viewport.rect.height)
        frames[i].bitmap.blt(0, 0, bmp, viewport.rect)
        frames[i].center!(true)
        frames[i].angle = angle
        frames[i].zoom_x = zoom
        frames[i].zoom_y = zoom
        frames[i].tone = Tone.new(i / 4, i / 4, i / 4)
        frames[i].opacity = 30
      end
      if i >= max
        viewport.color.alpha += 12 / delta
        if special
          viewport.color.red   -= (64 / 20.0) / delta
          viewport.color.green -= (64 / 20.0) / delta
          viewport.color.blue  -= (64 / 20.0) / delta
        else
          viewport.color.blue += 5 / delta if viewport.color.blue < 255
        end
      end
      waiter.wait
    end
    # Ensure viewport goes to black
    last_key = frames.keys.last
    frames[last_key].tone = Tone.new(255, 255, 255) if last_key && frames[last_key]
    10.times { waiter.wait }
    10.delta_add.times do
      next if special
      viewport.color.red   -= 25.5 / delta
      viewport.color.green -= 25.5 / delta
      viewport.color.blue  -= 25.5 / delta
      waiter.wait
    end
    viewport.color = Color.new(0, 0, 0, 255)
    pbDisposeSpriteHash(frames)
    bmp.dispose
  end

  #---------------------------------------------------------------------------
  #  Wild: BW Legendary — rotating zoom streaks with sphere
  #---------------------------------------------------------------------------
  def self.wild_bw_legendary(viewport)
    waiter = EbdxWaiter.new
    streak_bmp = pbBitmap("Graphics/EBDX/Transitions/Common/zoomStreak") rescue nil
    return wild_minor_legendary(viewport) unless streak_bmp
    n = 10
    vw = viewport.rect.width
    vh = viewport.rect.height
    sprites = {}
    # Black backdrop
    sprites["bg"] = Sprite.new(viewport)
    sprites["bg"].full_rect(Color.new(0, 0, 0, 128))
    sprites["bg"].opacity = 0
    # Zoom sphere
    sprites["sp"] = Sprite.new(viewport)
    sp_bmp = pbBitmap("Graphics/EBDX/Transitions/Common/zoomSphere") rescue nil
    if sp_bmp
      sprites["sp"].bitmap = sp_bmp
      sprites["sp"].center!(true)
      sprites["sp"].zoom_x = 0
      sprites["sp"].zoom_y = 0
      sprites["sp"].opacity = 0
    end
    # Zoom streak sprites
    for i in 0...n
      sprites["s#{i}"] = Sprite.new(viewport)
      sprites["s#{i}"].bitmap = streak_bmp
      sprites["s#{i}"].oy = 48
      sprites["s#{i}"].ox = sprites["s#{i}"].bitmap.width + vw / 2
      sprites["s#{i}"].x = vw / 2
      sprites["s#{i}"].y = vh / 2
      sprites["s#{i}"].angle = i * (360 / n)
    end
    # Animate
    for j in 0...48.delta_add
      for i in 0...n
        if j < 8.delta_add
          sprites["s#{i}"].ox -= (vw / 16) / delta
        elsif j < 16.delta_add
          sprites["s#{i}"].src_rect.width -= (sprites["s#{i}"].bitmap.width / 8) / delta
          sprites["s#{i}"].src_rect.x += (sprites["s#{i}"].bitmap.width / 8) / delta
          sprites["s#{i}"].ox -= (sprites["s#{i}"].bitmap.width / 8) / delta
          sprites["s#{i}"].zoom_y -= 0.125 / delta
          sprites["s#{i}"].tone = Tone.new(
            sprites["s#{i}"].tone.red + 32 / delta,
            sprites["s#{i}"].tone.green + 32 / delta,
            sprites["s#{i}"].tone.blue + 32 / delta
          )
        end
        sprites["s#{i}"].angle -= 4 / delta if j < 16.delta_add
      end
      if j >= 8.delta_add
        val = (j < 32) ? 4 : -32
        viewport.tone = Tone.new(
          viewport.tone.red + val / delta,
          viewport.tone.green + val / delta,
          viewport.tone.blue + val / delta
        )
      end
      if j >= 16.delta_add && j < 32.delta_add && sprites["sp"].bitmap
        sprites["sp"].zoom_x += 0.2 / delta
        sprites["sp"].zoom_y += 0.2 / delta
        sprites["sp"].opacity += 32 / delta
      end
      sprites["bg"].opacity += 16 / delta
      waiter.wait
    end
    viewport.tone = Tone.new(0, 0, 0)
    viewport.color = Color.new(0, 0, 0, 255)
    pbDisposeSpriteHash(sprites)
  end

  #---------------------------------------------------------------------------
  #  Wild: BW Legendary 2 — horizontal bar + shine + flash
  #---------------------------------------------------------------------------
  def self.wild_bw_legendary2(viewport)
    waiter = EbdxWaiter.new
    vw = viewport.rect.width
    vh = viewport.rect.height
    sprites = {}
    # Black backdrop
    sprites["bg"] = Sprite.new(viewport)
    sprites["bg"].full_rect(Color.new(0, 0, 0, 128))
    sprites["bg"].opacity = 0
    # Horizontal bar
    bar_bmp = pbBitmap("Graphics/EBDX/Transitions/Common/hStreak") rescue nil
    sprites["bar"] = Sprite.new(viewport)
    if bar_bmp
      sprites["bar"].bitmap = bar_bmp
      sprites["bar"].oy = sprites["bar"].bitmap.height / 2
      sprites["bar"].y = vh / 2
      sprites["bar"].x = -vw
    end
    # Shine sprites
    shine2_bmp = pbBitmap("Graphics/EBDX/Transitions/Common/shine2") rescue nil
    shine_bmp  = pbBitmap("Graphics/EBDX/Transitions/Common/shine")  rescue nil
    sprites["s1"] = Sprite.new(viewport)
    if shine2_bmp
      sprites["s1"].bitmap = shine2_bmp
      sprites["s1"].center!(true)
      sprites["s1"].zoom_x = 0
      sprites["s1"].zoom_y = 0
    end
    sprites["s2"] = Sprite.new(viewport)
    if shine_bmp
      sprites["s2"].bitmap = shine_bmp
      sprites["s2"].center!(true)
      sprites["s2"].zoom_x = 0
      sprites["s2"].zoom_y = 0
      sprites["s2"].opacity = 0
    end
    # Animate bar in
    4.delta_add.times do
      sprites["bg"].opacity += 64 / delta
      sprites["bar"].x += (vw / 4) / delta if sprites["bar"].bitmap
      waiter.wait
    end
    sprites["bar"].x = 0 if sprites["bar"].bitmap
    # Animate bar out
    8.delta_add.times do
      if sprites["bar"].bitmap
        sprites["bar"].zoom_y -= 0.125 / delta
        sprites["bar"].opacity -= 8 / delta
      end
      waiter.wait
    end
    # Animate spark
    for i in 0...8.delta_add
      if sprites["s1"].bitmap
        sprites["s1"].zoom_x += (i < 4.delta_add ? 0.25 : -0.25) / delta
        sprites["s1"].zoom_y += (i < 4.delta_add ? 0.25 : -0.25) / delta
        sprites["s1"].angle += 8 / delta
      end
      waiter.wait
    end
    # Animate full shine
    viewport.color = Color.new(255, 255, 255, 0)
    for i in 0...16.delta_add
      if sprites["s2"].bitmap
        sprites["s2"].zoom_x += 0.25 / delta
        sprites["s2"].zoom_y += 0.25 / delta
        sprites["s2"].opacity += 32 / delta
      end
      viewport.color.alpha += 32 / delta if i >= 8.delta_add
      Graphics.update
    end
    viewport.color = Color.new(255, 255, 255, 255)
    16.delta_add.times { Graphics.update }
    pbDisposeSpriteHash(sprites)
    # Fade to black
    16.delta_add.times do
      viewport.color.red   -= 8 / delta
      viewport.color.green -= 8 / delta
      viewport.color.blue  -= 8 / delta
      Graphics.update
    end
    viewport.color = Color.new(0, 0, 0, 255)
  end

  #---------------------------------------------------------------------------
  #  Wild: rainbow intro — rainbow ring zoom effect (pre-battle)
  #---------------------------------------------------------------------------
  def self.wild_rainbow_intro(viewport)
    waiter = EbdxWaiter.new
    sprites = {}
    vw = viewport.rect.width
    vh = viewport.rect.height
    bmp = Graphics.snap_to_bitmap
    # Non-blurred overlay
    sprites["bg1"] = Sprite.new(viewport)
    sprites["bg1"].bitmap = Bitmap.new(vw, vh)
    sprites["bg1"].bitmap.blt(0, 0, bmp, viewport.rect)
    sprites["bg1"].center!(true)
    # Blurred overlay
    sprites["bg2"] = Sprite.new(viewport)
    sprites["bg2"].bitmap = sprites["bg1"].bitmap.clone
    sprites["bg2"].blur_sprite(3)
    sprites["bg2"].center!(true)
    sprites["bg2"].opacity = 0
    # Rainbow rings
    glow_bmp = pbBitmap("Graphics/EBDX/Transitions/Common/glow") rescue nil
    for i in 1..2
      z = [0.35, 0.1]
      sprites["glow#{i}"] = Sprite.new(viewport)
      if glow_bmp
        sprites["glow#{i}"].bitmap = glow_bmp
        sprites["glow#{i}"].ox = sprites["glow#{i}"].bitmap.width / 2
        sprites["glow#{i}"].oy = sprites["glow#{i}"].bitmap.height / 2
      end
      sprites["glow#{i}"].x = vw / 2
      sprites["glow#{i}"].y = vh / 2
      sprites["glow#{i}"].zoom_x = z[i - 1]
      sprites["glow#{i}"].zoom_y = z[i - 1]
      sprites["glow#{i}"].opacity = 0
    end
    # Main animation
    for i in 0...32.delta_add
      sprites["bg1"].zoom_x += 0.02 / delta
      sprites["bg1"].zoom_y += 0.02 / delta
      sprites["bg2"].zoom_x += 0.02 / delta
      sprites["bg2"].zoom_y += 0.02 / delta
      sprites["bg2"].opacity += 12 / delta
      if i >= 16.delta_add
        sprites["bg2"].tone = Tone.new(
          sprites["bg2"].tone.red + 16 / delta,
          sprites["bg2"].tone.green + 16 / delta,
          sprites["bg2"].tone.blue + 16 / delta
        )
      end
      if i >= 28.delta_add && sprites["glow1"].bitmap
        sprites["glow1"].opacity += 64 / delta
        sprites["glow1"].zoom_x += 0.02 / delta
        sprites["glow1"].zoom_y += 0.02 / delta
      end
      Graphics.update
    end
    viewport.color = Color.new(255, 255, 255, 0)
    # Second part
    for i in 0...48.delta_add
      if sprites["glow1"].bitmap
        sprites["glow1"].zoom_x += 0.02 / delta
        sprites["glow1"].zoom_y += 0.02 / delta
      end
      if i >= 8.delta_add && sprites["glow2"].bitmap
        sprites["glow2"].opacity += 64 / delta
        sprites["glow2"].zoom_x += 0.02 / delta
        sprites["glow2"].zoom_y += 0.02 / delta
      end
      if i >= 32.delta_add
        viewport.color.alpha += 16 / delta
      end
      Graphics.update
    end
    viewport.color = Color.new(255, 255, 255, 255)
    pbDisposeSpriteHash(sprites)
    bmp.dispose
  end

  #---------------------------------------------------------------------------
  #  Trainer: evil team logo animation
  #---------------------------------------------------------------------------
  def self.evil_team(viewport, trainertype)
    waiter = EbdxWaiter.new
    vw = viewport.rect.width
    vh = viewport.rect.height
    sprites = {}
    # Resolve trainer-specific graphics with fallback
    tid = GameData::TrainerType.get(trainertype).id rescue trainertype
    bitmaps = [
      "Graphics/EBDX/Transitions/EvilTeam/background",
      "Graphics/EBDX/Transitions/EvilTeam/swirl",
      "Graphics/EBDX/Transitions/EvilTeam/ray0",
      "Graphics/EBDX/Transitions/EvilTeam/ray1",
      "Graphics/EBDX/Transitions/EvilTeam/logo0",
      "Graphics/EBDX/Transitions/EvilTeam/logo1",
      "Graphics/EBDX/Transitions/EvilTeam/ring0",
      "Graphics/EBDX/Transitions/EvilTeam/ring1"
    ]
    # Try trainer-variant paths
    bitmaps = bitmaps.map do |path|
      variant = path.sub("EvilTeam/", "EvilTeam/#{tid}_")
      pbResolveBitmap(variant) ? variant : path
    end
    viewport.color = Color.new(0, 0, 0, 0)
    # Fade to black
    8.delta_add.times do
      viewport.color.alpha += 32 / delta
      waiter.wait
    end
    viewport.color.alpha = 255
    # Background
    sprites["bg"] = Sprite.new(viewport)
    sprites["bg"].bitmap = pbBitmap(bitmaps[0]) rescue nil
    sprites["bg"].color = Color.black if sprites["bg"].bitmap
    # Swirl
    sprites["bg2"] = Sprite.new(viewport)
    swirl_bmp = pbBitmap(bitmaps[1]) rescue nil
    if swirl_bmp
      sprites["bg2"].bitmap = swirl_bmp
      sprites["bg2"].ox = sprites["bg2"].bitmap.width / 2
      sprites["bg2"].oy = sprites["bg2"].bitmap.height / 2
      sprites["bg2"].x = vw / 2
      sprites["bg2"].y = vh / 2
    end
    sprites["bg2"].visible = false
    # Ray particles
    speed = []
    for j in 0...16
      sprites["e1_#{j}"] = Sprite.new(viewport)
      bmp = pbBitmap(bitmaps[2]) rescue nil
      if bmp
        w = bmp.width / (1 + rand(3))
        sprites["e1_#{j}"].bitmap = Bitmap.new(w, bmp.height)
        sprites["e1_#{j}"].bitmap.stretch_blt(Rect.new(0, 0, w, bmp.height), bmp, bmp.rect)
        sprites["e1_#{j}"].oy = sprites["e1_#{j}"].bitmap.height / 2
      end
      sprites["e1_#{j}"].angle = rand(360)
      sprites["e1_#{j}"].opacity = 0
      sprites["e1_#{j}"].x = vw / 2
      sprites["e1_#{j}"].y = vh / 2
      speed.push(4 + rand(5))
    end
    # Logo
    sprites["logo"] = Sprite.new(viewport)
    logo0 = pbBitmap(bitmaps[4]) rescue nil
    logo1 = pbBitmap(bitmaps[5]) rescue nil
    if logo1
      sprites["logo"].bitmap = logo1
      sprites["logo"].ox = sprites["logo"].bitmap.width / 2
      sprites["logo"].oy = sprites["logo"].bitmap.height / 2
      sprites["logo"].x = vw / 2
      sprites["logo"].y = vh / 2
      sprites["logo"].zoom_x = 2
      sprites["logo"].zoom_y = 2
      sprites["logo"].z = 50
    end
    # Ring
    sprites["ring"] = Sprite.new(viewport)
    ring_bmp = pbBitmap(bitmaps[6]) rescue nil
    if ring_bmp
      sprites["ring"].bitmap = ring_bmp
      sprites["ring"].ox = sprites["ring"].bitmap.width / 2
      sprites["ring"].oy = sprites["ring"].bitmap.height / 2
      sprites["ring"].x = vw / 2
      sprites["ring"].y = vh / 2
      sprites["ring"].zoom_x = 0
      sprites["ring"].zoom_y = 0
      sprites["ring"].z = 100
    end
    # Secondary particles
    for j in 0...32
      sprites["e2_#{j}"] = Sprite.new(viewport)
      bmp2 = pbBitmap(bitmaps[3]) rescue nil
      if bmp2
        sprites["e2_#{j}"].bitmap = bmp2
        sprites["e2_#{j}"].oy = sprites["e2_#{j}"].bitmap.height / 2
      end
      sprites["e2_#{j}"].angle = rand(360)
      sprites["e2_#{j}"].opacity = 0
      sprites["e2_#{j}"].x = vw / 2
      sprites["e2_#{j}"].y = vh / 2
      sprites["e2_#{j}"].z = 100
    end
    # Ring2
    sprites["ring2"] = Sprite.new(viewport)
    ring2_bmp = pbBitmap(bitmaps[7]) rescue nil
    if ring2_bmp
      sprites["ring2"].bitmap = ring2_bmp
      sprites["ring2"].ox = sprites["ring2"].bitmap.width / 2
      sprites["ring2"].oy = sprites["ring2"].bitmap.height / 2
      sprites["ring2"].x = vw / 2
      sprites["ring2"].y = vh / 2
    end
    sprites["ring2"].visible = false
    sprites["ring2"].zoom_x = 0
    sprites["ring2"].zoom_y = 0
    sprites["ring2"].z = 100
    # Phase 1: logo zoom in with rays
    for i in 0...32.delta_add
      viewport.color.alpha -= 8 / delta if viewport.color.alpha > 0
      if sprites["logo"].bitmap
        sprites["logo"].zoom_x -= (1 / 32.0) / delta
        sprites["logo"].zoom_y -= (1 / 32.0) / delta
      end
      for j in 0...16
        next if j > i / 4.delta_add
        next unless sprites["e1_#{j}"].bitmap
        if sprites["e1_#{j}"].opacity <= 0
          speed[j] = 4 + rand(5)
          sprites["e1_#{j}"].ox = 0
          sprites["e1_#{j}"].angle = rand(360)
        end
        sprites["e1_#{j}"].opacity += speed[j] / delta
        sprites["e1_#{j}"].ox -= [1, speed[j] / delta].max
      end
      waiter.wait
    end
    # Phase 2: reveal everything
    if sprites["logo"].bitmap && logo0
      sprites["logo"].color = Color.white
      sprites["logo"].bitmap = logo0
    end
    sprites["ring2"].visible = true
    sprites["bg2"].visible = true
    viewport.color = Color.new(255, 255, 255, 255)
    # Phase 3: background animation with particles
    for i in 0...144.delta_add
      if i >= 128.delta_add
        viewport.color.alpha += 16 / delta
      else
        viewport.color.alpha -= 16 / delta if viewport.color.alpha > 0
      end
      if sprites["logo"].bitmap
        sprites["logo"].color.alpha -= 16 / delta if sprites["logo"].color.alpha > 0
      end
      sprites["bg"].color.alpha -= 8 / delta if sprites["bg"].bitmap && sprites["bg"].color.alpha > 0
      for j in 0...16
        next unless sprites["e1_#{j}"].bitmap
        if sprites["e1_#{j}"].opacity <= 0
          speed[j] = 4 + rand(5)
          sprites["e1_#{j}"].ox = 0
          sprites["e1_#{j}"].angle = rand(360)
        end
        sprites["e1_#{j}"].opacity += speed[j] / delta
        sprites["e1_#{j}"].ox -= [1, speed[j] / delta].max
      end
      for j in 0...32
        next if j > (i * 2).delta_add
        next unless sprites["e2_#{j}"].bitmap
        sprites["e2_#{j}"].ox -= 16 / delta
        sprites["e2_#{j}"].opacity += 16 / delta
      end
      if sprites["ring"].bitmap
        sprites["ring"].zoom_x += 0.1 / delta
        sprites["ring"].zoom_y += 0.1 / delta
        sprites["ring"].opacity -= 8 / delta
      end
      if sprites["ring2"].bitmap
        sprites["ring2"].zoom_x += 0.2 / delta if sprites["ring2"].zoom_x < 3
        sprites["ring2"].zoom_y += 0.2 / delta if sprites["ring2"].zoom_y < 3
        sprites["ring2"].opacity -= 16 / delta
      end
      sprites["bg2"].angle += 2 / delta if sprites["bg2"].bitmap
      waiter.wait
    end
    pbDisposeSpriteHash(sprites)
    # Fade viewport to black
    8.delta_add.times do
      viewport.color.red   -= (255 / 8.0) / delta
      viewport.color.green -= (255 / 8.0) / delta
      viewport.color.blue  -= (255 / 8.0) / delta
      waiter.wait
    end
    viewport.color = Color.new(0, 0, 0, 255)
  end

  #---------------------------------------------------------------------------
  #  Classic VS Sequence — blurred backdrop, scrolling bar, VS text, trainer
  #---------------------------------------------------------------------------
  def self.classic_vs(viewport, trainer)
    waiter = EbdxWaiter.new
    vw = viewport.rect.width
    vh = viewport.rect.height
    sprites = {}
    trainertype = GameData::TrainerType.get(trainer.trainer_type)
    # Load trainer bitmap
    file = sprintf("Graphics/EBDX/Transitions/%s", trainertype.id)
    file = sprintf("Graphics/EBDX/Transitions/classic%03d", trainertype.id_number) if !pbResolveBitmap(file)
    return false unless pbResolveBitmap(file)
    bmp = pbBitmap(file)
    # Backdrop (blurred screenshot)
    sprites["backdrop"] = Sprite.new(viewport)
    sprites["backdrop"].snap_screen
    sprites["backdrop"].blur_sprite
    sprites["backdrop"].center!(true)
    sprites["backdrop"].color = Color.new(0, 0, 0, 64)
    sprites["backdrop"].opacity = 0
    # Overlay
    sprites["overlay"] = Sprite.new(viewport)
    sprites["overlay"].full_rect(Color.black)
    sprites["overlay"].bitmap.fill_rect(0, 92, vw, 128, Color.new(0, 0, 0, 0))
    sprites["overlay"].z = 999
    sprites["overlay"].visible = false
    # VS text
    vs_bmp = pbBitmap("Graphics/EBDX/Transitions/Common/vs") rescue nil
    sprites["vs"] = Sprite.new(viewport)
    if vs_bmp
      sprites["vs"].bitmap = vs_bmp
      sprites["vs"].center!
      sprites["vs"].x = 92
      sprites["vs"].y = 156
      sprites["vs"].zoom_x = 2
      sprites["vs"].zoom_y = 2
      sprites["vs"].opacity = 0
      sprites["vs"].z = 999
      sprites["vs"].toggle = 1
    end
    # Scrolling background
    sprites["bg"] = ScrollingSprite.new(viewport)
    str = sprintf("classicBar%s", trainertype.id)
    str = "classicBar" if !pbResolveBitmap("Graphics/EBDX/Transitions/Common/#{str}")
    sprites["bg"].setBitmap("Graphics/EBDX/Transitions/Common/#{str}")
    sprites["bg"].y = 92
    sprites["bg"].visible = false
    sprites["bg"].z = 90
    # Streak
    sprites["streak"] = ScrollingSprite.new(viewport)
    sprites["streak"].setBitmap("Graphics/EBDX/Transitions/Common/lightC")
    sprites["streak"].direction = -1
    sprites["streak"].speed = 24
    sprites["streak"].y = 92
    sprites["streak"].x = vw
    sprites["streak"].z = 91
    # Shine
    shine_bmp = pbBitmap("Graphics/EBDX/Transitions/Common/shine") rescue nil
    sprites["shine"] = Sprite.new(viewport)
    if shine_bmp
      sprites["shine"].bitmap = shine_bmp
      sprites["shine"].center!
      sprites["shine"].y = 156
      sprites["shine"].x = 92
      sprites["shine"].z = 90
      sprites["shine"].opacity = 0
      sprites["shine"].toggle = 1
    end
    # Trainer accent (colored)
    sprites["trainer_a"] = Sprite.new(viewport)
    sprites["trainer_a"].bitmap = bmp
    sprites["trainer_a"].color = Color.new(65, 190, 226, 204)
    sprites["trainer_a"].visible = false
    sprites["trainer_a"].ox = bmp.width
    sprites["trainer_a"].x = vw - 18
    sprites["trainer_a"].y = 92
    sprites["trainer_a"].z = 90
    # Trainer sprite
    sprites["trainer"] = Sprite.new(viewport)
    sprites["trainer"].bitmap = bmp
    sprites["trainer"].ox = bmp.width
    sprites["trainer"].color = Color.black
    sprites["trainer"].x = (vw - 40) + vw + vw % 16
    sprites["trainer"].y = 92
    sprites["trainer"].z = 95
    # Start animation: slide trainer in
    for i in 0...16.delta_add
      sprites["backdrop"].opacity += 32 / delta if sprites["backdrop"].opacity < 255
      sprites["streak"].x -= (vw / 8) / delta if sprites["streak"].x > 0
      sprites["streak"].x = 0 if sprites["streak"].x < 0
      sprites["trainer"].x -= (vw / 16) / delta
      waiter.wait
    end
    sprites["backdrop"].opacity = 255
    sprites["trainer"].x = (vw - 40) + vw % 16
    4.times { waiter.wait }
    # VS text zoom in
    8.delta_add.times do
      if sprites["vs"].bitmap
        sprites["vs"].zoom_x -= (1.0 / 8) / delta
        sprites["vs"].zoom_y -= (1.0 / 8) / delta
        sprites["vs"].opacity += 32 / delta
      end
      waiter.wait
    end
    if sprites["vs"].bitmap
      sprites["vs"].zoom_x = 1
      sprites["vs"].zoom_y = 1
      sprites["vs"].opacity = 255
    end
    # Show everything
    viewport.color = Color.new(255, 255, 255, 255)
    sprites["trainer"].color.alpha = 0
    sprites.each_value { |s| s.visible = true if s.respond_to?(:visible=) }
    # Hold animation
    80.delta_add.times do
      viewport.color.alpha -= 8 if viewport.color.alpha > 0
      sprites["bg"].update
      sprites["streak"].update
      if sprites["shine"].bitmap
        sprites["shine"].opacity += 16 / delta if sprites["shine"].opacity < 255
        sprites["shine"].angle += 8 / delta
        sprites["shine"].zoom_x -= 0.04 * sprites["shine"].toggle / delta
        sprites["shine"].zoom_y -= 0.04 * sprites["shine"].toggle / delta
        sprites["shine"].toggle *= -1 if sprites["shine"].zoom_x <= 0.8 || sprites["shine"].zoom_x >= 1.2
      end
      if sprites["vs"].bitmap
        sprites["vs"].x += sprites["vs"].toggle
        sprites["vs"].y += sprites["vs"].toggle
        sprites["vs"].toggle *= -1 if (sprites["vs"].x - 92).abs >= 2
      end
      waiter.wait
    end
    # Finish — fade to black
    viewport.color = Color.new(0, 0, 0, 0)
    16.delta_add.times do
      viewport.color.alpha += 32 / delta
      waiter.wait
    end
    viewport.color = Color.new(0, 0, 0, 255)
    pbDisposeSpriteHash(sprites)
  end
end

#===============================================================================
#  Helper: resolve trainer-variant graphics paths
#===============================================================================
def checkForTrainerVariant(bitmaps, trainertype)
  tid = trainertype.id rescue trainertype
  bitmaps.map do |path|
    variant = path.gsub(/([^\/]+)$/, "#{tid}_\\1")
    pbResolveBitmap(variant) ? variant : path
  end
end

#===============================================================================
#  Register EBDX trainer battle intro transition with PE v21
#===============================================================================
SpecialBattleIntroAnimations.register("ebdx_trainer_intro", 70,
  proc { |battle_type, foe, location|
    # Trigger for single and double trainer battles (types 1 and 3)
    # but NOT when a VS-style graphic exists (let those take priority)
    next false unless [1, 3].include?(battle_type)
    next false if foe && foe.length == 1 &&
      (pbResolveBitmap("Graphics/Transitions/hgss_vs_#{foe[0].trainer_type}") ||
       pbResolveBitmap("Graphics/Transitions/vsE4_#{foe[0].trainer_type}"))
    next true
  },
  proc { |viewport, battle_type, foe, location|
    # Initial screen flashing (like EBDX's Entry Animations Main)
    waiter = EbdxWaiter.new
    viewport.color = Color.white
    2.times do
      viewport.color.alpha = 0
      for i in 0...16.delta_add
        viewport.color.alpha += (32 * (i < 8.delta_add ? 1 : -1)).delta_sub(false)
        waiter.wait
      end
    end
    viewport.color.alpha = 0

    handled = false
    if foe && foe.length == 1
      tid = foe[0].trainer_type
      # Check for Classic VS sequence (trainer-specific transition graphic)
      vs_file = sprintf("Graphics/EBDX/Transitions/%s", GameData::TrainerType.get(tid).id)
      if !handled && pbResolveBitmap(vs_file)
        handled = EBDXTransitions.classic_vs(viewport, foe[0])
      end
      # Check for evil team animation (EvilTeam graphics exist)
      if !handled && pbResolveBitmap("Graphics/EBDX/Transitions/EvilTeam/logo0")
        evil_bg = "Graphics/EBDX/Transitions/EvilTeam/#{GameData::TrainerType.get(tid).id}_background"
        if pbResolveBitmap(evil_bg) || pbResolveBitmap("Graphics/EBDX/Transitions/EvilTeam/background")
          # Only trigger for trainers that have trainer-specific evil team graphics
          if pbResolveBitmap(evil_bg)
            EBDXTransitions.evil_team(viewport, tid)
            handled = true
          end
        end
      end
    end

    unless handled
      # Pick a random basic style
      style = [:anim1, :anim2, :anim3].sample
      EBDXTransitions.send(style, viewport)
    end
  }
)

#===============================================================================
#  Register EBDX wild battle intro transition with PE v21
#===============================================================================
SpecialBattleIntroAnimations.register("ebdx_wild_intro", 70,
  proc { |battle_type, foe, location|
    # Trigger for wild battles (types 0 and 2)
    next [0, 2].include?(battle_type)
  },
  proc { |viewport, battle_type, foe, location|
    # Initial screen flashing
    waiter = EbdxWaiter.new
    viewport.color = Color.white
    2.times do
      viewport.color.alpha = 0
      for i in 0...16.delta_add
        viewport.color.alpha += (32 * (i < 8.delta_add ? 1 : -1)).delta_sub(false)
        waiter.wait
      end
    end
    viewport.color.alpha = 0

    # Determine species for special transition checks
    species = nil
    if foe && foe[0].is_a?(Pokemon)
      species = foe[0].species
    end

    # Check for special species-based transitions first
    handled = false

    # Regi check
    if !handled && species && EBDXTransitions.is_regi?(species)
      EBDXTransitions.wild_regi(viewport, species)
      handled = true
    end

    # Minor legendary check (species with special transition graphics)
    if !handled && species
      str = sprintf("Graphics/EBDX/Transitions/%s", species)
      if pbResolveBitmap(str) || pbResolveBitmap(sprintf("Graphics/EBDX/Transitions/%s_0", species))
        # Has a species-specific transition graphic — use minor legendary
        EBDXTransitions.wild_minor_legendary(viewport)
        handled = true
      end
    end

    # BW Legendary check (zoom streak graphics available + legendary species)
    if !handled && species
      if pbResolveBitmap("Graphics/EBDX/Transitions/Common/zoomStreak")
        # Check if species is flagged as legendary/mythical
        sp_data = GameData::Species.get(species) rescue nil
        if sp_data
          is_legend = (sp_data.respond_to?(:flags) && sp_data.flags.is_a?(Array) &&
                       (sp_data.flags.include?("Legendary") || sp_data.flags.include?("Mythical"))) rescue false
          if is_legend
            if rand(2) == 0
              EBDXTransitions.wild_bw_legendary(viewport)
            else
              EBDXTransitions.wild_bw_legendary2(viewport)
            end
            handled = true
          end
        end
      end
    end

    # Standard transitions based on environment
    unless handled
      wild_overlevel = false
      if foe && foe[0].is_a?(Pokemon) && $player && $player.party[0]
        wild_overlevel = foe[0].level > $player.party[0].level
      end
      if wild_overlevel
        EBDXTransitions.wild_overlevel(viewport)
      elsif location == 3   # water/fishing
        EBDXTransitions.wild_water(viewport)
      elsif location == 2   # cave
        EBDXTransitions.wild_cave(viewport)
      elsif location == 1   # indoor
        EBDXTransitions.wild_indoor(viewport)
      else                  # outdoor (default)
        EBDXTransitions.wild_outdoor(viewport)
      end
    end
  }
)
