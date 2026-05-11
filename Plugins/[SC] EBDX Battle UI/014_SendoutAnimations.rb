#===============================================================================
#  [SC] EBDX Battle UI — Sendout / Recall / Ball Burst Animations
#  Full port of EBDX's sendout system with ball burst, dust particles,
#  pokeball throw animation, and camera vector movement.
#  Ported from Elite Battle DX (Luka S.J.) for PE v21.1
#===============================================================================

#===============================================================================
#  Ball Burst particle animation — ported from EBDX
#  Creates ray, glow, and particle effects when a Pokéball opens.
#===============================================================================
class EBBallBurst
  def initialize(viewport, x = 0, y = 0, z = 50, factor = 1, balltype = :POKEBALL)
    balltype = :POKEBALL if pbResolveBitmap("Graphics/EBDX/Animations/Ballburst/#{balltype.to_s}_shine").nil?
    @balltype = balltype
    @viewport = viewport
    @factor = factor
    @fp = {}; @index = 0; @tone = 255.0
    @pzoom = []; @szoom = []; @poy = []; @rangl = []; @rad = []
    @catching = false; @recall = false
    # Ray particles
    for j in 0...8
      @fp["s#{j}"] = Sprite.new(@viewport)
      @fp["s#{j}"].bitmap = pbBitmap("Graphics/EBDX/Animations/Ballburst/#{balltype.to_s}_ray")
      @fp["s#{j}"].oy = @fp["s#{j}"].bitmap.height / 2
      @fp["s#{j}"].zoom_x = 0; @fp["s#{j}"].zoom_y = 0
      @fp["s#{j}"].tone = Tone.new(255, 255, 255)
      @fp["s#{j}"].x = x; @fp["s#{j}"].y = y; @fp["s#{j}"].z = z
      @fp["s#{j}"].angle = rand(360)
      @szoom.push([1.0, 1.25, 0.75, 0.5][rand(4)] * @factor)
    end
    # Inner glow
    @fp["cir"] = Sprite.new(@viewport)
    @fp["cir"].bitmap = pbBitmap("Graphics/EBDX/Animations/Ballburst/#{balltype.to_s}_shine")
    @fp["cir"].ox = @fp["cir"].bitmap.width / 2
    @fp["cir"].oy = @fp["cir"].bitmap.height / 2
    @fp["cir"].x = x; @fp["cir"].y = y
    @fp["cir"].zoom_x = 0; @fp["cir"].zoom_y = 0
    @fp["cir"].tone = Tone.new(255, 255, 255); @fp["cir"].z = z
    # Additional particles
    for k in 0...16
      str = ["particle", "eff"][rand(2)]
      @fp["p#{k}"] = Sprite.new(@viewport)
      @fp["p#{k}"].bitmap = pbBitmap("Graphics/EBDX/Animations/Ballburst/#{balltype.to_s}_#{str}")
      @fp["p#{k}"].ox = @fp["p#{k}"].bitmap.width / 2
      @fp["p#{k}"].oy = @fp["p#{k}"].bitmap.height / 2
      @pzoom.push([1.0, 0.3, 0.75, 0.5][rand(4)] * @factor)
      @fp["p#{k}"].zoom_x = 1 * @factor; @fp["p#{k}"].zoom_y = 1 * @factor
      @fp["p#{k}"].tone = Tone.new(255, 255, 255)
      @fp["p#{k}"].x = x; @fp["p#{k}"].y = y; @fp["p#{k}"].z = z
      @fp["p#{k}"].opacity = 0; @fp["p#{k}"].angle = rand(360)
      @rangl.push(rand(360)); @poy.push(rand(4) + 3); @rad.push(0)
    end
    @x = x; @y = y; @z = z
  end

  def update
    return self.reverse if @catching
    for j in 0...8
      next if @index < 4; next if j > (@index - 4) / 2
      @fp["s#{j}"].zoom_x += (@szoom[j] * 0.1)
      @fp["s#{j}"].zoom_y += (@szoom[j] * 0.1)
      @fp["s#{j}"].opacity -= 8 if @fp["s#{j}"].zoom_x >= 1
    end
    for k in 0...16
      next if @index < 4; next if k > (@index - 4)
      @fp["p#{k}"].opacity += 25.5 if @index < 22
      @fp["p#{k}"].zoom_x -= (@fp["p#{k}"].zoom_x - @pzoom[k]) * 0.1
      @fp["p#{k}"].zoom_y -= (@fp["p#{k}"].zoom_y - @pzoom[k]) * 0.1
      a = @rangl[k]; @rad[k] += @poy[k] * @factor; r = @rad[k]
      @fp["p#{k}"].x = @x + r * Math.cos(a * (Math::PI / 180))
      @fp["p#{k}"].y = @y - r * Math.sin(a * (Math::PI / 180))
      @fp["p#{k}"].angle += 4
    end
    if @index >= 22
      8.times { |j| @fp["s#{j}"].opacity -= 26 }
      16.times { |k| @fp["p#{k}"].opacity -= 26 }
      @fp["cir"].opacity -= 26
    end
    @tone -= 25.5 if @index >= 4 && @tone > 0
    8.times { |j| @fp["s#{j}"].tone = Tone.new(@tone, @tone, @tone) }
    16.times { |k| @fp["p#{k}"].tone = Tone.new(@tone, @tone, @tone) }
    @fp["cir"].tone = Tone.new(@tone, @tone, @tone)
    @fp["cir"].zoom_x += (@factor * 1.5 - @fp["cir"].zoom_x) * 0.06
    @fp["cir"].zoom_y += (@factor * 1.5 - @fp["cir"].zoom_y) * 0.06
    @fp["cir"].angle -= 4
    @index += 1
  end

  def reverse
    @tone -= 25.5 if @index >= 4 && @tone > 0
    for j in 0...8
      next if @index < 4; next if j > (@index - 4) / 2; next if @recall
      @fp["s#{j}"].zoom_x += (@szoom[j] * 0.1)
      @fp["s#{j}"].zoom_y += (@szoom[j] * 0.1)
      @fp["s#{j}"].opacity -= 8 if @fp["s#{j}"].zoom_x >= 1
    end
    8.times { |j| @fp["s#{j}"].opacity -= 26 } if @index >= 22
    8.times { |j| @fp["s#{j}"].tone = Tone.new(@tone, @tone, @tone) }
    for k in 0...16
      a = k * 22.5 + 11.5 + @index * 4
      r = 128 * @factor - @index * 8 * @factor
      @fp["p#{k}"].x = @x + r * Math.cos(a * (Math::PI / 180))
      @fp["p#{k}"].y = @y - r * Math.sin(a * (Math::PI / 180))
      @fp["p#{k}"].angle += 8
      @fp["p#{k}"].opacity += 32 if @index < 8
      @fp["p#{k}"].opacity -= 32 if @index >= 8
    end
    @fp["cir"].tone = Tone.new(@tone, @tone, @tone)
    @fp["cir"].zoom_x -= (@fp["cir"].zoom_x - 0.5 * @factor) * 0.06
    @fp["cir"].zoom_y -= (@fp["cir"].zoom_y - 0.5 * @factor) * 0.06
    @fp["cir"].opacity += 25.5 if @index < 16
    @fp["cir"].opacity -= 16 if @index >= 16
    @fp["cir"].angle -= 4
    @index += 1
  end

  def dispose; pbDisposeSpriteHash(@fp); end
  def catching; @catching = true; end
  def recall; @catching = true; @recall = true; end
end

#===============================================================================
#  Dust Particle effect — ported from Elite Battle DX
#===============================================================================
class EBDustParticle
  def initialize(viewport, sprite, factor = 1)
    @viewport = viewport; @sprite = sprite
    @x = sprite.x; @y = sprite.y; @z = sprite.z
    @factor = sprite.zoom_x; @index = 0; @fp = {}
    width = (sprite.bitmap ? sprite.bitmap.width / 2 : 48) - 16
    @max = 16 + (width / 16)
    for j in 0...@max
      @fp["#{j}"] = Sprite.new(@viewport)
      bmp = pbBitmap("Graphics/EBDX/Animations/Moves/ebDustParticle") rescue nil
      next unless bmp
      @fp["#{j}"].bitmap = bmp
      @fp["#{j}"].ox = bmp.width / 2; @fp["#{j}"].oy = bmp.height / 2
      @fp["#{j}"].opacity = 0; @fp["#{j}"].angle = rand(360)
      @fp["#{j}"].x = @x - width * @factor + rand(width * 2 * @factor)
      @fp["#{j}"].y = @y - 16 * @factor + rand(32 * @factor)
      @fp["#{j}"].z = @z + (@fp["#{j}"].y < @y ? -1 : 1)
      zoom = [1, 0.8, 0.9, 0.7][rand(4)]
      @fp["#{j}"].zoom_x = zoom * @factor; @fp["#{j}"].zoom_y = zoom * @factor
    end
  end

  def update
    i = @index
    for j in 0...@max
      next unless @fp["#{j}"] && @fp["#{j}"].bitmap
      @fp["#{j}"].opacity += 25.5 if i < 10
      @fp["#{j}"].opacity -= 25.5 if i >= 14
      if @fp["#{j}"].x >= @x
        @fp["#{j}"].angle += 4; @fp["#{j}"].x += 2
      else
        @fp["#{j}"].angle -= 4; @fp["#{j}"].x -= 2
      end
    end
    @index += 1
  end

  def dispose; pbDisposeSpriteHash(@fp); end
end

#===============================================================================
#  Helper methods
#===============================================================================
def playBattlerCry(battler)
  pokemon = battler.displayPokemon rescue battler.pokemon rescue battler
  cry = GameData::Species.cry_filename_from_pokemon(pokemon)
  pbSEPlay(cry) if cry
end unless defined?(playBattlerCry)

def shinyBattler?(battler)
  return battler.shiny? || (battler.super_shiny? rescue false)
end unless defined?(shinyBattler?)

def playerBattler?(battler)
  return battler.index % 2 == 0
end unless defined?(playerBattler?)

#===============================================================================
#  Full sendout animation overrides
#===============================================================================
class Battle::Scene
  #-----------------------------------------------------------------------------
  #  Override pbSendOutBattlers — full EBDX-style sendout
  #-----------------------------------------------------------------------------
  alias ebdx_sendout_anim_pbSendOutBattlers pbSendOutBattlers unless method_defined?(:ebdx_sendout_anim_pbSendOutBattlers)
  def pbSendOutBattlers(sendOuts, startBattle = false)
    return if sendOuts.empty?
    # Hide lineups
    [@ebdxPlayerLineup, @ebdxOpponentLineup].each do |lineup|
      next unless lineup && !lineup.disposed? && lineup.respond_to?(:loaded) && lineup.loaded
      lineup.hide if lineup.respond_to?(:hide)
    end
    hiding = true
    while hiding
      hiding = false
      [@ebdxPlayerLineup, @ebdxOpponentLineup].each do |lineup|
        next unless lineup && !lineup.disposed? && lineup.respond_to?(:animating?) && lineup.animating?
        lineup.update; hiding = true
      end
      Graphics.update if hiding
    end
    # Full EBDX sendout depending on side
    if @battle.opposes?(sendOuts[0][0])
      ebdx_trainerBattlerSendOut(sendOuts, startBattle)
    else
      ebdx_playerBattlerSendOut(sendOuts, startBattle)
    end
  end

  #-----------------------------------------------------------------------------
  #  Player sendout — ported from EBDX's playerBattlerSendOut
  #-----------------------------------------------------------------------------
  def ebdx_playerBattlerSendOut(sendOuts, startBattle = false)
    ballframe = 0
    orgcord = []; curve = []; burst = {}; dust = {}
    # Prepare graphical assets
    sendOuts.each_with_index do |b, m|
      battler = @battle.battlers[b[0]]; i = battler.index
      pkmn = battler.effects[PBEffects::Illusion] || b[1]
      pbChangePokemon(i, pkmn)
      pbRefresh
      @sprites["dataBox_#{i}"].render if @sprites["dataBox_#{i}"]&.respond_to?(:render)
      # Pokeball sprite
      bstr = "Graphics/EBDX/Pictures/Pokeballs/#{pkmn.poke_ball}"
      ballbmp = pbResolveBitmap(bstr) ? pbBitmap(bstr) : pbBitmap("Graphics/EBDX/Pictures/Pokeballs/POKEBALL")
      @sprites["pokeball#{i}"] = Sprite.new(@viewport)
      @sprites["pokeball#{i}"].bitmap = ballbmp
      @sprites["pokeball#{i}"].src_rect.set(0, ballframe * 40, 41, 40)
      @sprites["pokeball#{i}"].ox = 20; @sprites["pokeball#{i}"].oy = 20
      @sprites["pokeball#{i}"].zoom_x = 0.75; @sprites["pokeball#{i}"].zoom_y = 0.75
      @sprites["pokeball#{i}"].z = 19; @sprites["pokeball#{i}"].opacity = 0
      # Battler setup
      orgcord.push(@sprites["pokemon_#{i}"].oy)
      @sprites["pokemon_#{i}"].tone = Tone.new(255, 255, 255)
      @sprites["pokemon_#{i}"].opacity = 255
      @sprites["pokemon_#{i}"].visible = false
    end
    # Camera: zoom to SENDOUT vector for battle start
    v = startBattle ? EBDXAnimations.get_vector(:SENDOUT) : EBDXAnimations.get_vector(:MAIN, @battle)
    @ebdx_vector.set(v) if @ebdx_vector
    pidx = 1  # PE uses 1-indexed player sprite keys
    (startBattle ? 44 : 20).times do
      sendOuts.each_with_index do |b, m|
        next unless startBattle
        @sprites["player_#{pidx + m}"].opacity += 25.5 if @sprites["player_#{pidx + m}"]
      end
      self.wait(1, true)
    end
    # Player throw animation (trainer backsprite frames)
    for j in 0...7
      next unless startBattle
      sendOuts.each_with_index do |b, m|
        next unless @sprites["player_#{pidx + m}"]
        @sprites["player_#{pidx + m}"].src_rect.x += (@sprites["player_#{pidx + m}"].bitmap.width / 5) if j == 0
        @sprites["player_#{pidx + m}"].x -= 2 if j > 0
      end
      self.wait(1, false)
    end
    self.wait(6, true) if startBattle
    for j in 0...6
      next unless startBattle
      sendOuts.each_with_index do |b, m|
        next unless @sprites["player_#{pidx + m}"]
        @sprites["player_#{pidx + m}"].src_rect.x += (@sprites["player_#{pidx + m}"].bitmap.width / 5) if j % 2 == 0
        @sprites["player_#{pidx + m}"].x += 3 if j < 4
      end
      self.wait(1, false)
    end
    # Throw SE
    pbSEPlay("EBDX/Throw") rescue pbSEPlay("Battle throw")
    addzoom = ((@ebdx_vector&.zoom1 || 1.0) ** 0.75) * 2
    # Calculate ball curve
    posX = (startBattle && !EBDXAnimations::DISABLE_SCENE_MOTION) ? [80, 30] : [100, 40]
    posY = (startBattle && !EBDXAnimations::DISABLE_SCENE_MOTION) ? [40, 160, 120] : [70, 170, 120]
    z1 = startBattle ? addzoom : 1
    z2 = startBattle ? addzoom : 2
    z3 = startBattle ? 1 : 2
    room = @sprites["battlebg"]
    sendOuts.each_with_index do |b, m|
      battler = @battle.battlers[b[0]]; i = battler.index
      bpos = room ? room.battler(i) : nil
      tgt_y = bpos ? bpos.y : @sprites["pokemon_#{i}"].y
      y3 = 120 + (orgcord[m] - @sprites["pokemon_#{i}"].oy) * z3
      curve.push(
        calculateCurve(
          @sprites["pokemon_#{i}"].x - posX[0], tgt_y - posY[0] * z1 - (orgcord[m] - @sprites["pokemon_#{i}"].oy) * z2,
          @sprites["pokemon_#{i}"].x - posX[1], tgt_y - posY[1] * z1 - (orgcord[m] - @sprites["pokemon_#{i}"].oy) * z2,
          @sprites["pokemon_#{i}"].x,            tgt_y - y3, 28
        )
      )
      @sprites["pokeball#{i}"].zoom_x *= addzoom
      @sprites["pokeball#{i}"].zoom_y *= addzoom
    end
    # Pokeball throwing arc animation
    for j in 0...48
      ballframe += 1; ballframe = 0 if ballframe > 7
      sendOuts.each_with_index do |b, m|
        battler = @battle.battlers[b[0]]; i = battler.index
        @sprites["pokeball#{i}"].src_rect.set(0, ballframe * 40, 41, 40)
        @sprites["pokeball#{i}"].x = curve[m][j][0] if j < 28
        @sprites["pokeball#{i}"].y = curve[m][j][1] if j < 28
        @sprites["pokeball#{i}"].opacity += 42
      end
      self.wait(1, false)
    end
    # Pokemon appears from ball
    sendOuts.each_with_index do |b, m|
      battler = @battle.battlers[b[0]]; i = battler.index
      pkmn = battler.effects[PBEffects::Illusion] || b[1]
      playBattlerCry(battler)
      @sprites["pokemon_#{i}"].visible = true
      @sprites["pokemon_#{i}"].y -= 120 + (orgcord[m] - @sprites["pokemon_#{i}"].oy) * z3
      @sprites["pokemon_#{i}"].zoom_x = 0; @sprites["pokemon_#{i}"].zoom_y = 0
      ebdx_databox_appear(i)
      burst["#{i}"] = EBBallBurst.new(@viewport, @sprites["pokeball#{i}"].x, @sprites["pokeball#{i}"].y, 29, (startBattle ? 1 : 2), pkmn.poke_ball)
    end
    # Release animation (zoom up from ball)
    pbSEPlay("Battle recall")
    clearMessageWindow(true) rescue nil
    zStep = calculateCurve(0, 0, 1, 20, 2, 10, 20)
    for j in 0...20
      sendOuts.each_with_index do |b, m|
        battler = @battle.battlers[b[0]]; i = battler.index
        @sprites["player_#{pidx + m}"].opacity -= 25.5 if @sprites["player_#{pidx + m}"] && startBattle
        burst["#{i}"].update
        next if j < 4
        @sprites["pokeball#{i}"].opacity -= 51
        if startBattle
          @sprites["pokemon_#{i}"].zoom_x = (zStep[j][1] * addzoom * 0.1)
          @sprites["pokemon_#{i}"].zoom_y = (zStep[j][1] * addzoom * 0.1)
        else
          zoom1 = @ebdx_vector&.zoom1 || 1.0
          @sprites["pokemon_#{i}"].zoom_x = (zStep[j][1] * zoom1 * 0.2)
          @sprites["pokemon_#{i}"].zoom_y = (zStep[j][1] * zoom1 * 0.2)
        end
        ebdx_databox_show(i)
      end
      self.wait(1, false)
    end
    # Ball burst fade out
    for j in 0...22
      sendOuts.each_with_index do |b, m|
        battler = @battle.battlers[b[0]]; i = battler.index
        burst["#{i}"].update
        burst["#{i}"].dispose if j == 21
        next if j < 8
        @sprites["pokemon_#{i}"].tone.red   -= 51 if @sprites["pokemon_#{i}"].tone.red > 0
        @sprites["pokemon_#{i}"].tone.green -= 51 if @sprites["pokemon_#{i}"].tone.green > 0
        @sprites["pokemon_#{i}"].tone.blue  -= 51 if @sprites["pokemon_#{i}"].tone.blue > 0
      end
      self.wait(1, false)
    end
    burst = nil
    # Drop onto ground
    if startBattle
      sendOuts.each_with_index do |b, m|
        battler = @battle.battlers[b[0]]; i = battler.index
        @sprites["pokemon_#{i}"].y += (orgcord[m] - @sprites["pokemon_#{i}"].oy) * z3
        @sprites["pokemon_#{i}"].oy = orgcord[m]
      end
    end
    ebdx_sendoutDropPkmn(sendOuts, orgcord, z3, 12)
    heavy = ebdx_sendoutScreenShake(sendOuts, startBattle, dust)
    ebdx_sendoutDustAnim(sendOuts, heavy, dust)
    ebdx_sendoutShinyPkmn(sendOuts)
    @ebdx_vector&.reset
    @firstsendout = false if defined?(@firstsendout)
  end

  #-----------------------------------------------------------------------------
  #  Trainer (opponent) sendout — ported from EBDX's trainerBattlerSendOut
  #-----------------------------------------------------------------------------
  def ebdx_trainerBattlerSendOut(sendOuts, startBattle = false)
    ballframe = 0
    orgcord = []; curve = []; burst = {}; dust = {}
    sendOuts.each_with_index do |b, m|
      battler = @battle.battlers[b[0]]; i = battler.index
      pkmn = battler.effects[PBEffects::Illusion] || b[1]
      pbChangePokemon(i, pkmn)
      pbRefresh
      @sprites["dataBox_#{i}"].render if @sprites["dataBox_#{i}"]&.respond_to?(:render)
      # Pokeball sprite
      bstr = "Graphics/EBDX/Pictures/Pokeballs/#{pkmn.poke_ball}"
      ballbmp = pbResolveBitmap(bstr) ? pbBitmap(bstr) : pbBitmap("Graphics/EBDX/Pictures/Pokeballs/POKEBALL")
      @sprites["pokeball#{i}"] = Sprite.new(@viewport)
      @sprites["pokeball#{i}"].bitmap = ballbmp
      @sprites["pokeball#{i}"].src_rect.set(0, ballframe * 40, 41, 40)
      @sprites["pokeball#{i}"].ox = 20; @sprites["pokeball#{i}"].oy = 20
      @sprites["pokeball#{i}"].zoom_x = 0.75; @sprites["pokeball#{i}"].zoom_y = 0.75
      @sprites["pokeball#{i}"].z = 19; @sprites["pokeball#{i}"].opacity = 0
      # Battler setup
      orgcord.push(@sprites["pokemon_#{i}"].oy)
      @sprites["pokemon_#{i}"].tone = Tone.new(255, 255, 255)
      @sprites["pokemon_#{i}"].opacity = 255
      @sprites["pokemon_#{i}"].visible = false
      # Vertical arc for opponent throw
      room = @sprites["battlebg"]
      bpos = room ? room.battler(i) : nil
      tgt_y = bpos ? bpos.y : @sprites["pokemon_#{i}"].y
      curve.push(
        calculateCurve(
          @sprites["pokemon_#{i}"].x, tgt_y - 50 - (orgcord[m] - @sprites["pokemon_#{i}"].oy),
          @sprites["pokemon_#{i}"].x, tgt_y - 100 - (orgcord[m] - @sprites["pokemon_#{i}"].oy),
          @sprites["pokemon_#{i}"].x, tgt_y - 50 - (orgcord[m] - @sprites["pokemon_#{i}"].oy), 30
        )
      )
    end
    # Trainer fade + pokeball throw
    pbSEPlay("EBDX/Throw") rescue pbSEPlay("Battle throw")
    for j in 0...30
      ballframe += 1; ballframe = 0 if ballframe > 7
      sendOuts.each_with_index do |b, m|
        battler = @battle.battlers[b[0]]; i = battler.index
        # Fade out opponent trainer (PE uses 1-indexed trainer_ keys)
        tidx = m + 1
        if startBattle && @sprites["trainer_#{tidx}"]
          @sprites["trainer_#{tidx}"].x += 3
          @sprites["trainer_#{tidx}"].y -= 2
          @sprites["trainer_#{tidx}"].zoom_x -= 0.02
          @sprites["trainer_#{tidx}"].zoom_y -= 0.02
          @sprites["trainer_#{tidx}"].opacity -= 12.8
        end
        @sprites["pokeball#{i}"].src_rect.set(0, ballframe * 40, 41, 40)
        @sprites["pokeball#{i}"].x = curve[m][j][0]
        @sprites["pokeball#{i}"].y = curve[m][j][1]
        @sprites["pokeball#{i}"].opacity += 51
      end
      self.wait
    end
    # Pokemon appears from ball
    sendOuts.each_with_index do |b, m|
      battler = @battle.battlers[b[0]]; i = battler.index
      pkmn = battler.effects[PBEffects::Illusion] || b[1]
      @sprites["pokemon_#{i}"].visible = true
      @sprites["pokemon_#{i}"].y -= 50 + (orgcord[m] - @sprites["pokemon_#{i}"].oy)
      @sprites["pokemon_#{i}"].zoom_x = 0; @sprites["pokemon_#{i}"].zoom_y = 0
      ebdx_databox_appear(i)
      playBattlerCry(battler)
      burst["#{i}"] = EBBallBurst.new(@viewport, @sprites["pokeball#{i}"].x, @sprites["pokeball#{i}"].y, 19, 1, pkmn.poke_ball)
    end
    # Release animation
    pbSEPlay("Battle recall")
    clearMessageWindow rescue nil
    zStep = calculateCurve(0, 0, 1, 20, 2, 10, 20)
    for j in 0...20
      sendOuts.each_with_index do |b, m|
        battler = @battle.battlers[b[0]]; i = battler.index
        burst["#{i}"].update
        next if j < 4
        @sprites["pokeball#{i}"].opacity -= 51
        zoom1 = @ebdx_vector&.zoom1 || 1.0
        @sprites["pokemon_#{i}"].zoom_x = zStep[j][1] * zoom1 * 0.1
        @sprites["pokemon_#{i}"].zoom_y = zStep[j][1] * zoom1 * 0.1
        ebdx_databox_show(i)
      end
      self.wait
    end
    for j in 0...22
      sendOuts.each_with_index do |b, m|
        battler = @battle.battlers[b[0]]; i = battler.index
        burst["#{i}"].update
        burst["#{i}"].dispose if j == 21
        next if j < 8
        @sprites["pokemon_#{i}"].tone.red   -= 51 if @sprites["pokemon_#{i}"].tone.red > 0
        @sprites["pokemon_#{i}"].tone.green -= 51 if @sprites["pokemon_#{i}"].tone.green > 0
        @sprites["pokemon_#{i}"].tone.blue  -= 51 if @sprites["pokemon_#{i}"].tone.blue > 0
      end
      self.wait
    end
    burst = nil
    ebdx_sendoutDropPkmn(sendOuts, orgcord, 1, 5)
    heavy = ebdx_sendoutScreenShake(sendOuts, startBattle, dust)
    ebdx_sendoutDustAnim(sendOuts, heavy, dust)
    ebdx_sendoutShinyPkmn(sendOuts)
    @sendingOut = false if defined?(@sendingOut)
  end

  #-----------------------------------------------------------------------------
  #  Drop battlers onto the field
  #-----------------------------------------------------------------------------
  def ebdx_sendoutDropPkmn(sendOuts, orgcord, z3, drop)
    for j in 0...12
      sendOuts.each_with_index do |b, m|
        battler = @battle.battlers[b[0]]; i = battler.index
        if j == 11
          # final frame — shadow would show here in EBDX
        elsif j > 0
          @sprites["pokemon_#{i}"].y += drop
        else
          @sprites["pokemon_#{i}"].y += (orgcord[m] - @sprites["pokemon_#{i}"].oy) * z3
          @sprites["pokemon_#{i}"].oy = orgcord[m]
        end
      end
      self.wait(1, false) if j > 0 && j < 11
    end
  end

  #-----------------------------------------------------------------------------
  #  Screen shake on drop
  #-----------------------------------------------------------------------------
  def ebdx_sendoutScreenShake(sendOuts, startBattle, dust)
    shake = false; heavy = false
    sendOuts.each_with_index do |b, m|
      battler = @battle.battlers[b[0]]; i = battler.index
      poke = @sprites["pokemon_#{i}"]
      next unless poke && poke.visible
      dust["#{i}"] = EBDustParticle.new(@viewport, poke, (startBattle ? 1 : 2))
      @sprites["pokeball#{i}"]&.dispose
      shake = true
      weight = (battler.pbWeight * 0.1 rescue 0)
      heavy = true if weight >= 291
    end
    return false unless shake
    pbSEPlay(heavy ? "EBDX/Drop Heavy" : "EBDX/Drop") rescue nil
    mult = heavy ? 2 : 1
    for j in 0...8
      y = (j / 4 < 1) ? 2 : -2
      moveEntireScene(0, y * mult) if respond_to?(:moveEntireScene)
      dust.each_value { |d| d.update }
      self.wait(1, false)
    end
    return heavy
  end

  #-----------------------------------------------------------------------------
  #  Dust animation after drop
  #-----------------------------------------------------------------------------
  def ebdx_sendoutDustAnim(sendOuts, heavy, dust)
    for j in 0..24
      next unless heavy
      sendOuts.each_with_index do |b, m|
        battler = @battle.battlers[b[0]]; i = battler.index
        weight = (battler.pbWeight * 0.1 rescue 0)
        dust["#{i}"]&.update if weight >= 291
        dust["#{i}"]&.dispose if j == 24
      end
      self.wait(1, false) if j < 24
    end
    dust.each_value { |d| d.dispose rescue nil } unless heavy
  end

  #-----------------------------------------------------------------------------
  #  Shiny animation upon entry
  #-----------------------------------------------------------------------------
  def ebdx_sendoutShinyPkmn(sendOuts)
    sendOuts.each do |b|
      battler = @battle.battlers[b[0]]
      next unless battler && @battle.showAnims && shinyBattler?(battler)
      if Settings::SUPER_SHINY && (battler.super_shiny? rescue false)
        pbCommonAnimation("SuperShiny", battler)
      else
        pbCommonAnimation("Shiny", battler)
      end
    end
  end

  #-----------------------------------------------------------------------------
  #  Databox helpers
  #-----------------------------------------------------------------------------
  def ebdx_databox_appear(i)
    db = @sprites["dataBox_#{i}"]
    db.appear if db&.respond_to?(:appear)
  end

  def ebdx_databox_show(i)
    db = @sprites["dataBox_#{i}"]
    db.show if db&.respond_to?(:show)
  end

  #-----------------------------------------------------------------------------
  #  Override pbRecall — EBDX-style with ball burst
  #-----------------------------------------------------------------------------
  alias ebdx_recall_anim_pbRecall pbRecall unless method_defined?(:ebdx_recall_anim_pbRecall)
  def pbRecall(idxBattler)
    return if @battle.battlers[idxBattler].fainted?
    poke = @sprites["pokemon_#{idxBattler}"]
    return unless poke && !poke.disposed?
    balltype = (@battle.battlers[idxBattler].pokemon.poke_ball rescue :POKEBALL)
    setBGMLowHP(false) if respond_to?(:setBGMLowHP)
    pbSEPlay("Battle recall")
    zoom = poke.zoom_x / 20.0
    @sprites["dataBox_#{idxBattler}"].visible = false if @sprites["dataBox_#{idxBattler}"]
    ballburst = EBBallBurst.new(poke.viewport || @viewport, poke.x, poke.y, 29, poke.zoom_x, balltype)
    ballburst.recall
    for i in 0...32
      if i < 20
        poke.tone.red   += 25.5
        poke.tone.green += 25.5
        poke.tone.blue  += 25.5
        if @sprites["dataBox_#{idxBattler}"]
          if playerBattler?(@battle.battlers[idxBattler])
            @sprites["dataBox_#{idxBattler}"].x += 26
          else
            @sprites["dataBox_#{idxBattler}"].x -= 26
          end
          @sprites["dataBox_#{idxBattler}"].opacity -= 25.5
        end
        poke.zoom_x -= zoom
        poke.zoom_y -= zoom
      end
      ballburst.update
      self.wait
    end
    ballburst.dispose
    poke.visible = false
    @ebdx_vector&.reset
  end
end
