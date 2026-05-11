#===============================================================================
#  [SC] EBDX Battle UI — Party Lineup (EBDX-style Party Ball Indicators)
#  Replaces the standard PE party lineup animation with EBDX-style sliding
#  party bar with rotating ball indicators.
#
#  Architecture:
#  - Self-contained PartyLineupEBDX class manages its own sprites
#  - Battle::Scene#pbShowPartyLineup is overridden to use EBDX lineup
#  - Battle::Scene#pbSendOutBattlers is overridden to hide EBDX lineup
#  - Compatible with DBK — no conflict (DBK does not modify party lineup)
#===============================================================================

class PartyLineupEBDX
  attr_reader :loaded, :available
  attr_accessor :toggle

  NUM_BALLS = Battle::Scene::NUM_BALLS rescue 6

  #-----------------------------------------------------------------------------
  #  Constructor
  #-----------------------------------------------------------------------------
  def initialize(viewport, scene, battle, side)
    @viewport  = viewport
    @scene     = scene
    @battle    = battle
    @side      = side
    @num       = NUM_BALLS
    @toggle    = true
    @loaded    = false
    @disposed  = false
    @path      = EBDXBattleUI::GRAPHICS_PATH
    @available = pbResolveBitmap(@path + "partyBar") && pbResolveBitmap(@path + "partyBalls")
    return unless @available
    # Cache bitmaps (managed by RPG::Cache — do NOT dispose manually)
    @partyBar   = pbBitmap(@path + "partyBar")
    @partyBalls = pbBitmap(@path + "partyBalls")
    # Draw main lineup bar
    @bar = Sprite.new(@viewport)
    @bar.z = 120
    @bar.visible = false
    # Draw individual party indicators
    @balls = Array.new(@num) do
      s = Sprite.new(@viewport)
      s.z = 121
      s.visible = false
      next s
    end
  end

  #-----------------------------------------------------------------------------
  #  Refresh graphics and animation parameters
  #-----------------------------------------------------------------------------
  def refresh
    return unless @available
    # Reload cache bitmaps if disposed externally
    @partyBar   = pbBitmap(@path + "partyBar")   if @partyBar&.disposed?
    @partyBalls = pbBitmap(@path + "partyBalls") if @partyBalls&.disposed?
    @toggle = true
    # Get party details
    pty = party
    pty.reverse! if (@side % 2 == 1)
    # Assign graphic and position party line
    @bar.bitmap&.dispose
    @bar.bitmap = @partyBar.clone
    @bar.mirror = (@side % 2 == 0)
    @bar.ox = (@side % 2 == 0) ? @partyBar.width : 0
    @bar.opacity = 255
    @bar.zoom_x = 1
    @bar.visible = true
    # Position party balls
    ball_h = @partyBalls.height
    @balls.each_with_index do |ball, k|
      ball.bitmap&.dispose
      ball.bitmap = Bitmap.new(ball_h, ball_h)
      # Select the appropriate party ball graphic
      if pty[k].nil?
        pin = 3
      elsif pty[k].hp < 1 || pty[k].egg?
        pin = 2
      elsif has_status?(pty[k])
        pin = 1
      else
        pin = 0
      end
      ball.bitmap.blt(0, 0, @partyBalls, Rect.new(ball_h * pin, 0, ball_h, ball_h))
      ball.ox = ball.bitmap.width / 2
      ball.oy = ball.bitmap.height / 2
      ball.ex = ((@side % 2 == 0) ? 26 : 12) + 24 * k + ball.ox
      ball.ey = -12 + ball.oy
      ball.opacity = 255
      ball.angle = 0
      ball.visible = true
    end
    # Position full lineup graphics
    self.x = (@side % 2 == 0) ? (@viewport.rect.width + @partyBar.width + 10) : (-@partyBar.width - 10)
    self.y = (@side % 2 == 0) ? (@viewport.rect.height * 0.5) : (@viewport.rect.height * 0.3)
    @loaded = true
  end

  #-----------------------------------------------------------------------------
  #  Hide lineup (trigger fade-out animation)
  #-----------------------------------------------------------------------------
  def hide
    return unless @available && @loaded
    @toggle = false
  end

  #-----------------------------------------------------------------------------
  #  Immediately hide all sprites (no animation)
  #-----------------------------------------------------------------------------
  def hideImmediate
    return unless @available
    @bar.visible = false if @bar
    @balls&.each { |b| b.visible = false if b }
    @loaded = false
  end

  #-----------------------------------------------------------------------------
  #  Status check (replaces EliteBattle.ShowStatusIcon)
  #-----------------------------------------------------------------------------
  def has_status?(pkmn)
    return false if pkmn.nil?
    begin
      return GameData::Status.get(pkmn.status).icon_position > 0
    rescue StandardError
      return pkmn.status != :NONE rescue false
    end
  end

  #-----------------------------------------------------------------------------
  #  Position setters/getters
  #-----------------------------------------------------------------------------
  def x=(val)
    @bar.x = val
    @balls.each do |ball|
      ball.x = @bar.x + ball.ex - @bar.ox
    end
  end

  def y=(val)
    @bar.y = val
    @balls.each do |ball|
      ball.y = @bar.y + ball.ey
    end
  end

  def x; @bar.x; end
  def y; @bar.y; end

  #-----------------------------------------------------------------------------
  #  End X position for slide-in
  #-----------------------------------------------------------------------------
  def end_x
    (@side % 2 == 0) ? (@viewport.rect.width + 10) : -10
  end

  #-----------------------------------------------------------------------------
  #  Check if animation is still in progress
  #-----------------------------------------------------------------------------
  def animating?
    return false unless @loaded && @available
    if @toggle
      return (@side % 2 == 0) ? (self.x > end_x) : (self.x < end_x)
    else
      return @bar.opacity > 0
    end
  end

  #-----------------------------------------------------------------------------
  #  Delta for frame-rate independent animation
  #-----------------------------------------------------------------------------
  def delta
    Graphics.frame_rate / 40.0
  end

  #-----------------------------------------------------------------------------
  #  Main animation update
  #-----------------------------------------------------------------------------
  def update
    return unless @available && @loaded
    unless animating?
      if @toggle
        @balls.each { |ball| ball.angle = 0 }
      else
        hideImmediate
      end
      return
    end
    if @toggle
      # Animate appearing (slide in)
      self.x += ((@partyBar.width / 16.0) / delta) * ((@side % 2 == 0) ? -1 : 1)
      @balls.each do |ball|
        ball.angle -= ((360.0 / 16) * ((@side % 2 == 0) ? -1 : 1)) / delta
      end
    else
      # Animate removal (fade + zoom)
      @bar.zoom_x += (1.0 / 16) / delta
      @bar.opacity -= (24.0 / delta).to_i
      @balls.each_with_index do |ball, k|
        m = (@side % 2 == 0) ? -k : (@num - k)
        ball.angle -= ((360.0 / 16) * ((@side % 2 == 0) ? -1 : 1)) / delta
        ball.angle = 0 if ball.angle.abs >= 360
        ball.opacity -= (24.0 / delta).to_i
        ball.x += (((@partyBar.width / 16.0) * ((@side % 2 == 0) ? -1 : 1)) - m) / delta
      end
    end
  end

  #-----------------------------------------------------------------------------
  #  Get full party for the current side
  #-----------------------------------------------------------------------------
  def party
    p = @battle.pbParty(@side).clone
    (@num - p.length).times { p.push(nil) }
    p
  end

  #-----------------------------------------------------------------------------
  #  Dispose — only dispose sprites we created, NOT cache bitmaps
  #-----------------------------------------------------------------------------
  def disposed?; @disposed; end
  def dispose
    return if @disposed || !@available
    # NOTE: @partyBar and @partyBalls are loaded via pbBitmap (RPG::Cache)
    # and must NOT be disposed here — the cache manages their lifecycle.
    @bar.bitmap&.dispose
    @bar&.dispose
    @balls&.each do |b|
      b.bitmap&.dispose
      b&.dispose
    end
    @disposed = true
  end
end
