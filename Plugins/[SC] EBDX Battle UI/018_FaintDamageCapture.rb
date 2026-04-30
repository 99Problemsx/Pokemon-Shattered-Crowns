#===============================================================================
#  [SC] EBDX Battle UI — Faint, Damage/Hit, and Capture Animations
#  Ported from Elite Battle DX (Luka S.J.) for PE v21.1
#  Replaces PE's default faint slide-down, damage flash, and ball throw
#  with EBDX's cinematic versions using src_rect shrink, tone cycling,
#  ball burst capture, etc.
#===============================================================================

class Battle::Scene
  #=============================================================================
  #  FAINT ANIMATION — EBDX-style
  #  Shrinks pokemon sprite via src_rect, fades opacity, slides databox out.
  #  Plays cry + "Pkmn faint" SE.
  #=============================================================================
  alias ebdx_faint_anim_pbFaintBattler pbFaintBattler
  def pbFaintBattler(battler)
    return if !battler
    @briefMessage = false
    poke = @sprites["pokemon_#{battler.index}"]
    return ebdx_faint_anim_pbFaintBattler(battler) unless poke && !poke.disposed? && poke.bitmap
    databox = @sprites["dataBox_#{battler.index}"]
    waiter = EbdxWaiter.new

    # Reset camera vector
    @ebdx_vector&.reset

    # Play faint cry then wait for it
    cry_file = GameData::Species.cry_filename_from_pokemon(battler.displayPokemon) rescue nil
    if cry_file
      dur = getPlayTime(cry_file) rescue 0
      pbSEPlay(cry_file)
      frames = [(dur * 40).ceil, 10].max
      frames.delta_add.times { waiter.wait }
    end

    # Play faint SE
    ebdxPlaySE("Pkmn faint", 80, 100)

    # Store original values
    orig_y = poke.y

    # Faint animation: slide down + opacity fade (16 frames at 40fps)
    16.delta_add.times do
      poke.still if poke.respond_to?(:still)
      poke.y       += (4.0 / self.delta).round
      poke.opacity -= (16.0 / self.delta).round
      if databox
        databox.opacity -= (32.0 / self.delta).round
      end
      waiter.wait
    end

    # Ensure fully hidden
    poke.visible = false
    poke.opacity = 0
    poke.ebdx_fainted = true if poke.respond_to?(:ebdx_fainted=)

    # Hide shadow if present
    shadow = @sprites["shadow_#{battler.index}"]
    shadow.visible = false if shadow

    # Hide databox
    if databox
      databox.visible = false
      databox.opacity = 0
    end

    # Clear message window and handle low HP BGM
    clearMessageWindow if respond_to?(:clearMessageWindow)
    setBGMLowHP(false) if respond_to?(:setBGMLowHP)
  end

  #=============================================================================
  #  Helper: delta value for frame-rate independence
  #=============================================================================
  def delta
    Graphics.frame_rate / 40.0
  end

  #=============================================================================
  #  DAMAGE STATE ANIMATION — per-battler tone flash
  #  Flashes the sprite dark→bright→invisible→visible in 8 frames
  #  and optionally shakes the databox.
  #=============================================================================
  def ebDamageStateAnim(battler)
    return unless battler
    poke = @sprites["pokemon_#{battler.index}"]
    return unless poke && !poke.disposed?
    databox = @sprites["dataBox_#{battler.index}"]
    waiter  = EbdxWaiter.new

    poke.still if poke.respond_to?(:still)
    db_x = databox ? databox.x : 0

    8.delta_add.times do |i|
      frame = (i / self.delta).floor
      case frame
      when 0
        # Darken
        poke.tone = Tone.new(-255, -255, -255)
      when 1
        # Brighten
        poke.tone = Tone.new(255, 255, 255)
      when 2
        # Hide
        poke.tone = Tone.new(0, 0, 0)
        poke.visible = false
      when 3
        # Show
        poke.visible = true
      when 4
        # Darken again
        poke.tone = Tone.new(-255, -255, -255)
      when 5
        # Brighten
        poke.tone = Tone.new(255, 255, 255)
      when 6
        # Hide
        poke.tone = Tone.new(0, 0, 0)
        poke.visible = false
      else
        # Restore
        poke.visible = true
        poke.tone = Tone.new(0, 0, 0)
      end

      # Shake databox
      if databox
        shake = (i % 2 == 0) ? 3 : -3
        databox.x = db_x + shake
      end

      waiter.wait
    end

    # Ensure reset
    poke.visible = true
    poke.tone = Tone.new(0, 0, 0)
    databox.x = db_x if databox
  end

  #=============================================================================
  #  HIT AND HP LOSS ANIMATION — EBDX multi-target version
  #  Replaces PE's pbHitAndHPLossAnimation with EBDX's cinematic damage flash,
  #  effectiveness-based SE, and HP bar animation.
  #=============================================================================
  alias ebdx_damage_anim_pbHitAndHPLossAnimation pbHitAndHPLossAnimation
  def pbHitAndHPLossAnimation(targets)
    return ebdx_damage_anim_pbHitAndHPLossAnimation(targets) unless targets && !targets.empty?
    waiter = EbdxWaiter.new

    # targets is an array of [battler, hp_loss, anim_type] tuples in PE v21.1
    # Determine overall effectiveness for SE selection
    effectiveness = :neutral
    targets.each do |t|
      battler = t[0]
      next unless battler && battler.damageState
      tm = battler.damageState.typeMod
      if Effectiveness.super_effective?(tm)
        effectiveness = :super
        break
      elsif Effectiveness.not_very_effective?(tm)
        effectiveness = :notvery
      end
    end

    # 4-frame wait before damage
    4.delta_add.times { waiter.wait }

    # Play damage SE based on effectiveness
    case effectiveness
    when :super
      ebdxPlaySE("EBDX/Super Effective", 80, 100)
    when :notvery
      ebdxPlaySE("EBDX/Not Very Effective", 80, 100)
    else
      ebdxPlaySE("EBDX/Normal Damage", 80, 100)
    end

    # Number of flash loops based on effectiveness
    loops = (effectiveness == :super) ? 3 : 2

    # Animate each target
    targets.each do |t|
      battler = t[0]
      next unless battler && battler.damageState && battler.damageState.hpLost > 0
      # Run damage state animation (tone flash + databox shake)
      loops.times do
        ebDamageStateAnim(battler)
      end
    end

    # Animate HP bars
    targets.each do |t|
      battler = t[0]
      hp_lost = t[1] || 0
      next unless battler && hp_lost > 0
      databox = @sprites["dataBox_#{battler.index}"]
      next unless databox
      if databox.respond_to?(:animateHP)
        old_hp = battler.hp + hp_lost
        databox.animateHP(old_hp, battler.hp)
      else
        databox.refresh if databox.respond_to?(:refresh)
      end
    end

    # Low HP BGM handling
    setBGMLowHP(false) if respond_to?(:setBGMLowHP)
    any_low_hp = false
    @battle.battlers.each do |b|
      next unless b && b.index.even? && !b.fainted?
      if b.hp <= b.totalhp / 4
        any_low_hp = true
        break
      end
    end
    setBGMLowHP(true) if any_low_hp && respond_to?(:setBGMLowHP)
  end

  #=============================================================================
  #  CAPTURE SEQUENCE — EBDX-style Pokéball throw with ball burst
  #  Full throw arc, ball spin, capture ball burst, pokémon shrink,
  #  ball drop + bounce, shake, break-out/catch with star particles.
  #=============================================================================
  alias ebdx_capture_anim_pbThrow pbThrow
  def pbThrow(ball, shakes, critical, targetBattler = nil, showPlayer = false)
    # Get target battler
    target = targetBattler
    unless target
      @battle.battlers.each do |b|
        next unless b && b.index.odd? && !b.fainted?
        target = b
        break
      end
    end
    return ebdx_capture_anim_pbThrow(ball, shakes, critical, targetBattler, showPlayer) unless target

    waiter = EbdxWaiter.new
    ball_type = ball || :POKEBALL
    battler_index = target.index
    spritePoke = @sprites["pokemon_#{battler_index}"]

    return ebdx_capture_anim_pbThrow(ball, shakes, critical, targetBattler, showPlayer) unless spritePoke && !spritePoke.disposed?

    # Get pokemon screen coordinates from room positioning
    sx = spritePoke.x
    sy = spritePoke.y

    # ---- Create ball sprite (41x40 frame animation) ----
    pokeball = Sprite.new(spritePoke.viewport || @viewport)
    ball_bmp_path = "Graphics/EBDX/Pictures/Pokeballs/#{ball_type}"
    ball_bmp_path = "Graphics/EBDX/Pictures/Pokeballs/POKEBALL" unless pbResolveBitmap(ball_bmp_path)
    pokeball.bitmap = pbBitmap(ball_bmp_path)
    pokeball.src_rect.set(0, 0, 41, 40)
    pokeball.ox = 20
    pokeball.oy = 20
    pokeball.z  = spritePoke.z + 1

    # ---- Create ball shadow ----
    ballshadow = Sprite.new(spritePoke.viewport || @viewport)
    ballshadow.bitmap = Bitmap.new(34, 34)
    ballshadow.bitmap.bmp_circle(Color.new(0, 0, 0, 100))
    ballshadow.ox = 17
    ballshadow.oy = 17
    ballshadow.z  = spritePoke.z - 1
    ballshadow.zoom_x = 0.5
    ballshadow.zoom_y = 0.25
    ballshadow.opacity = 0

    # ---- Calculate throw arc (quadratic Bézier) ----
    # Start: bottom-left of screen; Control: upper arc; End: above target
    start_x = sx - 260
    start_y = sy + 40
    ctrl_x  = sx - 60
    ctrl_y  = sy - 120
    end_x   = sx
    end_y   = sy - 80
    curve = calculateCurve(start_x, start_y, ctrl_x, ctrl_y, end_x, end_y, 24)

    pokeball.x = start_x
    pokeball.y = start_y

    # ---- Play throw SE ----
    ebdxPlaySE("EBDX/Throw", 80, 100)

    # ---- Animate throw arc (24 frames) ----
    24.delta_add.times do |i|
      idx = [(i / self.delta).floor, curve.length - 1].min
      pokeball.x = curve[idx][0].to_i
      pokeball.y = curve[idx][1].to_i
      # Spin the ball (cycle src_rect frames)
      frame_idx = (i / 3.delta_add) % 8
      pokeball.src_rect.x = frame_idx * 41
      # Ball shadow follows
      ballshadow.x = pokeball.x
      ballshadow.y = sy + 20
      ballshadow.opacity = [255, (i * 255 / 24.delta_add)].min
      waiter.wait
    end

    # ---- Critical capture flash ----
    if critical
      ebdxPlaySE("EBDX/Throw Critical", 80, 100)
      8.delta_add.times do |i|
        pokeball.tone = (i % 2 == 0) ? Tone.new(255, 255, 255) : Tone.new(0, 0, 0)
        waiter.wait
      end
      pokeball.tone = Tone.new(0, 0, 0)
    end

    # ---- Hide databoxes ----
    pbHideAllDataboxes

    # ---- Ball burst (capture mode) ----
    ballburst = EBBallBurst.new(
      spritePoke.viewport || @viewport,
      pokeball.x, pokeball.y, pokeball.z + 1,
      1.0, ball_type
    )
    ballburst.catching

    # ---- Pokemon shrink into ball (20 frames) ----
    orig_zoom = spritePoke.zoom_x
    20.delta_add.times do
      spritePoke.zoom_x -= (0.075 / self.delta)
      spritePoke.zoom_y -= (0.075 / self.delta)
      spritePoke.tone.red   += (25.5 / self.delta)
      spritePoke.tone.green += (25.5 / self.delta)
      spritePoke.tone.blue  += (25.5 / self.delta)
      spritePoke.y -= (8.0 / self.delta).round
      ballburst.update
      waiter.wait
    end

    # Hide pokemon
    spritePoke.visible = false
    ballburst.dispose

    # Hide shadow
    shadow = @sprites["shadow_#{battler_index}"]
    shadow.visible = false if shadow

    # Reset ball frame
    pokeball.src_rect.set(0, 0, 41, 40)

    # ---- Ball drop (20 frames) ----
    ebdxPlaySE("EBDX/Drop", 80, 100)
    drop_start_y = pokeball.y
    20.delta_add.times do |i|
      pokeball.y += (7.0 / self.delta).round
      ballshadow.x = pokeball.x
      ballshadow.y = sy + 20
      ballshadow.zoom_x = 0.5 + (i * 0.02 / self.delta)
      ballshadow.zoom_y = 0.25 + (i * 0.01 / self.delta)
      ballshadow.opacity = 200
      waiter.wait
    end

    # ---- Bounce (14 frames: 7 up + 7 down) ----
    14.delta_add.times do |i|
      half = 7.delta_add
      if i < half
        pokeball.y -= (6.0 / self.delta).round
      else
        pokeball.y += (6.0 / self.delta).round
      end
      waiter.wait
    end

    # ---- Shake sequence ----
    ebdxPlaySE("EBDX/Drop", 60, 90)
    caught = shakes >= 4

    for shake_num in 0...[shakes, 3].min
      # Wait before shake
      20.delta_add.times { waiter.wait }

      # Tilt left
      10.delta_add.times do |i|
        pokeball.src_rect.x = 41
        pokeball.x -= (1.0 / self.delta).round
        waiter.wait
      end

      # Tilt right
      10.delta_add.times do |i|
        pokeball.src_rect.x = 82
        pokeball.x += (2.0 / self.delta).round
        waiter.wait
      end

      # Return to center
      10.delta_add.times do |i|
        pokeball.src_rect.x = 0
        pokeball.x -= (1.0 / self.delta).round
        waiter.wait
      end

      ebdxPlaySE("EBDX/Drop", 60, 90) if shake_num < [shakes, 3].min - 1
    end

    # ---- Wait after shakes ----
    20.delta_add.times { waiter.wait }

    if caught
      # ==== CAPTURE SUCCESS ====
      @caughtBattler = battler_index

      # Star particles
      fp = {}
      star_path = "Graphics/EBDX/Animations/Moves/ebStar"
      star_path = nil unless pbResolveBitmap(star_path)
      if star_path
        for j in 0...10
          fp["s#{j}"] = Sprite.new(spritePoke.viewport || @viewport)
          fp["s#{j}"].bitmap = pbBitmap(star_path)
          fp["s#{j}"].ox = fp["s#{j}"].bitmap.width / 2
          fp["s#{j}"].oy = fp["s#{j}"].bitmap.height / 2
          fp["s#{j}"].x = pokeball.x
          fp["s#{j}"].y = pokeball.y
          fp["s#{j}"].z = pokeball.z + 1
          fp["s#{j}"].visible = false
          fp["s#{j}"].zoom_x = 0.5
          fp["s#{j}"].zoom_y = 0.5
          angle = (j * 36.0) * Math::PI / 180.0
          fp["s#{j}"].end_x = pokeball.x + (50 * Math.cos(angle)).to_i
          fp["s#{j}"].end_y = pokeball.y + (50 * Math.sin(angle)).to_i
        end
      end

      # Darken ball
      ebdxPlaySE("EBDX/Capture", 80, 100)
      16.delta_add.times do |i|
        pokeball.tone.red   -= (8.0 / self.delta)
        pokeball.tone.green -= (8.0 / self.delta)
        pokeball.tone.blue  -= (8.0 / self.delta)

        # Animate star particles outward
        if star_path
          for j in 0...10
            fp["s#{j}"].visible = true if i > j
            next unless fp["s#{j}"].visible
            fp["s#{j}"].x += ((fp["s#{j}"].end_x - fp["s#{j}"].x) * 0.2).round
            fp["s#{j}"].y += ((fp["s#{j}"].end_y - fp["s#{j}"].y) * 0.2).round
            fp["s#{j}"].opacity -= (16.0 / self.delta).round
            fp["s#{j}"].zoom_x -= (0.03 / self.delta)
            fp["s#{j}"].zoom_y -= (0.03 / self.delta)
          end
        end

        # Fade databoxes
        @battle.battlers.each_with_index do |b, idx|
          next unless b
          db = @sprites["dataBox_#{idx}"]
          next unless db
          db.opacity -= (16.0 / self.delta).round
        end

        waiter.wait
      end

      # Dispose star particles
      if star_path
        fp.each_value { |s| s.dispose if s.respond_to?(:dispose) && !s.disposed? }
      end

    else
      # ==== BREAK OUT ====
      ebdxPlaySE("EBDX/Breakout", 80, 100)

      # Ball burst on break-out (reverse mode)
      breakburst = EBBallBurst.new(
        spritePoke.viewport || @viewport,
        pokeball.x, pokeball.y, pokeball.z + 1,
        1.0, ball_type
      )

      # Restore pokemon
      spritePoke.visible = true
      spritePoke.zoom_x = 0
      spritePoke.zoom_y = 0
      spritePoke.tone = Tone.new(255, 255, 255)

      20.delta_add.times do |i|
        spritePoke.zoom_x += (orig_zoom / (20.delta_add)) if spritePoke.zoom_x < orig_zoom
        spritePoke.zoom_y += (orig_zoom / (20.delta_add)) if spritePoke.zoom_y < orig_zoom
        spritePoke.tone.red   -= (25.5 / self.delta) if spritePoke.tone.red > 0
        spritePoke.tone.green -= (25.5 / self.delta) if spritePoke.tone.green > 0
        spritePoke.tone.blue  -= (25.5 / self.delta) if spritePoke.tone.blue > 0
        spritePoke.y += (8.0 / self.delta).round if i < 10.delta_add
        breakburst.update
        waiter.wait
      end

      spritePoke.zoom_x = orig_zoom
      spritePoke.zoom_y = orig_zoom
      spritePoke.tone = Tone.new(0, 0, 0)
      breakburst.dispose

      # Restore shadow
      shadow.visible = true if shadow

      # Restore databoxes and vector
      pbShowAllDataboxes
      @ebdx_vector&.reset
    end

    # ---- Cleanup ----
    pokeball.dispose
    ballshadow.dispose
  end

  #=============================================================================
  #  THROW SUCCESS — ME playback and cleanup after successful capture
  #=============================================================================
  alias ebdx_capture_anim_pbThrowSuccess pbThrowSuccess
  def pbThrowSuccess
    # Play capture ME
    me_file = "EBDX/Capture Success"
    begin
      pbMEPlay(me_file)
    rescue
      # Fallback to PE's default capture ME
      ebdx_capture_anim_pbThrowSuccess
      return
    end

    waiter = EbdxWaiter.new

    # Wait for ME to finish
    dur = getPlayTime("Audio/ME/#{me_file}") rescue 0
    if dur > 0
      frames = (dur * 40).ceil
      frames.delta_add.times { waiter.wait }
    else
      80.delta_add.times { waiter.wait }
    end

    # Reset vector
    @ebdx_vector&.reset
  end

  #=============================================================================
  #  Override pbThrowAndDeflect — empty (EBDX replaces it with pbThrow)
  #=============================================================================
  alias ebdx_capture_anim_pbThrowAndDeflect pbThrowAndDeflect
  def pbThrowAndDeflect(ball, targetBattler)
    # Handled by pbThrow with shakes=0
    pbThrow(ball, 0, false, targetBattler)
  end

  #=============================================================================
  #  Override pbHideCaptureBall — empty (ball disposal is handled in pbThrow)
  #=============================================================================
  alias ebdx_capture_anim_pbHideCaptureBall pbHideCaptureBall
  def pbHideCaptureBall
    # No-op — EBDX handles ball lifecycle in pbThrow
  end
end
