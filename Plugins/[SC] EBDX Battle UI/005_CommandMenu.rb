#===============================================================================
#  [SC] EBDX Battle UI — Command Menu (EBDX-style Command Selection)
#  Overrides CommandMenu visuals while preserving ALL DBK hook compatibility.
#  Works with: Deluxe Battle Kit (Cheer/Launch modes 5-8), MUI, and any
#  other plugin that uses the standard PE CommandMenu interface.
#
#  Architecture:
#  - Standard PE/DBK CommandMenu is initialized normally
#  - EBDX sprites are created ON TOP, standard buttons are hidden via @visibility
#  - refreshButtons is overridden for EBDX visuals
#  - pbCommandMenuEx input loop is left untouched (DBK compatible)
#  - Show/hide uses slide-in animation
#===============================================================================

class Battle::Scene::CommandMenu < Battle::Scene::MenuBase
  EBDX_CMD_PATH = EBDXBattleUI::GRAPHICS_PATH

  #-----------------------------------------------------------------------------
  #  Initialize — create EBDX sprites alongside standard ones
  #-----------------------------------------------------------------------------
  alias ebdx_cmd_init initialize unless method_defined?(:ebdx_cmd_init)
  def initialize(viewport, z)
    ebdx_cmd_init(viewport, z)
    @ebdx_cmd_available = false
    @ebdx_cmd_oldindex  = -1
    @ebdx_cmd_slide_dir = 0
    @ebdx_cmd_slide_frm = 0
    @ebdx_cmd_slide_max = 8
    @ebdx_cmd_indexes   = []
    @ebdx_cmd_labels    = []
    ebdx_cmd_setup_sprites(viewport)
  end

  #-----------------------------------------------------------------------------
  #  Create EBDX sprites (only if graphics exist)
  #-----------------------------------------------------------------------------
  def ebdx_cmd_setup_sprites(viewport)
    return unless USE_GRAPHICS
    return unless pbResolveBitmap(EBDX_CMD_PATH + "btnCmd")
    return unless pbResolveBitmap(EBDX_CMD_PATH + "btnEmpty")
    @ebdx_cmd_available = true
    @ebdx_cmd_vp = viewport
    # Load bitmaps
    @ebdxCmdBtnBmp = pbBitmap(EBDX_CMD_PATH + "btnCmd")
    @ebdxCmdEmpBmp = pbBitmap(EBDX_CMD_PATH + "btnEmpty")
    # Semi-transparent background bar
    bg_h = 40
    @ebdx_cmd_bg = Sprite.new(viewport)
    @ebdx_cmd_bg.bitmap = Bitmap.new(Graphics.width, bg_h)
    @ebdx_cmd_bg.bitmap.fill_rect(0, 0, Graphics.width, bg_h, Color.new(0, 0, 0, 150))
    @ebdx_cmd_bg.y = Graphics.height
    @ebdx_cmd_bg.z = self.z + 90
    @ebdx_cmd_bg_target = Graphics.height - bg_h
    addSprite("ebdx_cmd_bg", @ebdx_cmd_bg)
    # Animated selector
    sel_bmp = EBDXFight_Helpers.pbSelBitmap(
      EBDX_CMD_PATH + "cmdSel",
      Rect.new(0, 0, @ebdxCmdEmpBmp.width, @ebdxCmdEmpBmp.height)
    )
    @ebdxCmdSel = EBDXFight_SpriteSheet.new(viewport, 4)
    @ebdxCmdSel.setBitmap(sel_bmp)
    @ebdxCmdSel.speed = 4
    @ebdxCmdSel.ox = @ebdxCmdSel.src_rect.width / 2
    @ebdxCmdSel.oy = @ebdxCmdSel.src_rect.height / 2
    @ebdxCmdSel.z  = self.z + 99
    @ebdxCmdSel.visible = false
    addSprite("ebdx_cmd_sel", @ebdxCmdSel)
    # Command buttons (up to 5 — Fight, Bag, Pokémon, Run + debug)
    @ebdxCmdBtns = []
    5.times do |i|
      btn = Sprite.new(viewport)
      btn.z = self.z + 92
      btn.visible = false
      addSprite("ebdx_cmd_btn_#{i}", btn)
      @ebdxCmdBtns << btn
    end
  end

  #-----------------------------------------------------------------------------
  #  Build command button bitmaps for the current command set
  #-----------------------------------------------------------------------------
  def ebdx_cmd_generate_buttons(texts)
    return unless @ebdx_cmd_available
    # Reload cache bitmaps if they were disposed externally
    if @ebdxCmdEmpBmp&.disposed?
      @ebdxCmdEmpBmp = pbBitmap(EBDX_CMD_PATH + "btnEmpty")
    end
    if @ebdxCmdBtnBmp&.disposed?
      @ebdxCmdBtnBmp = pbBitmap(EBDX_CMD_PATH + "btnCmd")
    end
    # texts = ["What will X do?", "Fight", "Bag", "Pokémon", "Run/Cancel/Call/Cheer"]
    # Build command labels (skip index 0 which is the prompt text)
    @ebdx_cmd_labels = []
    @ebdx_cmd_indexes = []
    (1...[texts.length, 6].min).each do |i|
      next if texts[i].nil? || texts[i] == ""
      @ebdx_cmd_labels << texts[i]
      @ebdx_cmd_indexes << (i - 1)
    end
    count = @ebdx_cmd_labels.length
    return if count == 0
    bw = @ebdxCmdEmpBmp.width
    bh = @ebdxCmdEmpBmp.height
    ch = @ebdxCmdBtnBmp.height / 5
    cw = @ebdxCmdBtnBmp.width / 2
    @ebdxCmdBtns.each_with_index do |btn, i|
      if i >= count
        btn.bitmap&.dispose
        btn.bitmap = nil
        @visibility["ebdx_cmd_btn_#{i}"] = false
        next
      end
      # Composite: [unselected half | selected half]
      btn.bitmap&.dispose
      btn.bitmap = Bitmap.new(bw * 2, bh)
      pbSetSmallFont(btn.bitmap)
      2.times do |j|
        ox = j * bw
        btn.bitmap.blt(ox, 0, @ebdxCmdEmpBmp, @ebdxCmdEmpBmp.rect)
        # Draw command icon on the selected half (j==1)
        if j > 0
          icon_idx = [i, ch > 0 ? (@ebdxCmdBtnBmp.height / ch - 1) : 0].min
          btn.bitmap.blt(ox + 2, 0, @ebdxCmdBtnBmp, Rect.new(0, ch * icon_idx, cw, ch))
        end
        # Draw text
        shadow = Color.new(0, 0, 0, 80)
        label = @ebdx_cmd_labels[i] || ""
        pbDrawOutlineText(btn.bitmap, ox, 11, bw, bh, label, Color.white, Color.new(51, 51, 51), 1)
      end
      btn.src_rect.set(0, 0, bw, bh)
      btn.ox = bw / 2
      btn.oy = bh / 2
      # Position evenly across the screen
      btn.x = (Graphics.width / (count + 1)) * (i + 1)
      btn.y = @visible ? (Graphics.height - 36) : (Graphics.height - 36 + 80)
      btn.visible = true
      @visibility["ebdx_cmd_btn_#{i}"] = true
    end
  end

  #-----------------------------------------------------------------------------
  #  Keep standard PE/DBK button sprites hidden
  #-----------------------------------------------------------------------------
  def ebdx_cmd_hide_std
    return unless @ebdx_cmd_available
    @buttons&.each_with_index { |_, i| @visibility["button_#{i}"] = false }
    %w[background cmdWindow].each { |k| @visibility[k] = false if @sprites[k] }
    @visibility["msgBox"] = false if @sprites["msgBox"]
  end

  #-----------------------------------------------------------------------------
  #  setTexts — intercept to build EBDX buttons
  #-----------------------------------------------------------------------------
  alias ebdx_cmd_setTexts setTexts unless method_defined?(:ebdx_cmd_setTexts)
  def setTexts(value)
    ebdx_cmd_setTexts(value)
    return unless @ebdx_cmd_available
    ebdx_cmd_generate_buttons(value)
  end

  #-----------------------------------------------------------------------------
  #  refreshButtons — EBDX visuals
  #-----------------------------------------------------------------------------
  alias ebdx_cmd_refreshButtons refreshButtons unless method_defined?(:ebdx_cmd_refreshButtons)
  def refreshButtons
    return ebdx_cmd_refreshButtons unless @ebdx_cmd_available
    ebdx_cmd_hide_std
    count = @ebdx_cmd_labels.length
    @ebdxCmdBtns.each_with_index do |btn, i|
      next unless btn&.bitmap && i < count
      bw = @ebdxCmdEmpBmp.width
      sel = (i == @index)
      btn.src_rect.x = sel ? bw : 0
      btn.z = self.z + (sel ? 94 : 92)
      btn.src_rect.y = -4 if sel && @ebdx_cmd_oldindex != @index
    end
    if @ebdxCmdSel && @index < count
      @ebdxCmdSel.visible = @visible && (@ebdx_cmd_slide_dir == 0)
      @ebdxCmdSel.x = @ebdxCmdBtns[@index].x
      @ebdxCmdSel.y = @ebdxCmdBtns[@index].y - 2
    elsif @ebdxCmdSel
      @ebdxCmdSel.visible = false
    end
    @ebdx_cmd_oldindex = @index
  end

  #-----------------------------------------------------------------------------
  #  visible= — trigger slide animation
  #-----------------------------------------------------------------------------
  alias ebdx_cmd_vis= visible=
  def visible=(value)
    was = @visible
    if value && @ebdx_cmd_available
      ebdx_cmd_hide_std
      ebdx_cmd_pre_slide if !was
    end
    self.ebdx_cmd_vis = value
    if value && !was && @ebdx_cmd_available
      @ebdx_cmd_slide_dir = 1
      @ebdx_cmd_slide_frm = 0
      pbSEPlay("EBDX/SE_Zoom4", 50) rescue nil
    end
  end

  #-----------------------------------------------------------------------------
  #  Slide animation helpers
  #-----------------------------------------------------------------------------
  def ebdx_cmd_pre_slide
    count = @ebdx_cmd_labels.length
    @ebdxCmdBtns.each_with_index do |btn, i|
      next unless btn&.bitmap && i < count
      btn.y = Graphics.height - 36 + 80
    end
    @ebdx_cmd_bg.y = Graphics.height if @ebdx_cmd_bg
    @ebdxCmdSel.visible = false if @ebdxCmdSel
  end

  def ebdx_cmd_animate_slide
    @ebdx_cmd_slide_frm += 1
    t = [@ebdx_cmd_slide_frm.to_f / @ebdx_cmd_slide_max, 1.0].min
    p = 1.0 - (1.0 - t) ** 2
    target_y = Graphics.height - 36
    count = @ebdx_cmd_labels.length
    @ebdxCmdBtns.each_with_index do |btn, i|
      next unless btn&.bitmap && i < count
      btn.y = (target_y + 80 - 80 * p).to_i
    end
    if @ebdx_cmd_bg
      @ebdx_cmd_bg.y = (Graphics.height - (Graphics.height - @ebdx_cmd_bg_target) * p).to_i
    end
    if @ebdx_cmd_slide_frm >= @ebdx_cmd_slide_max
      @ebdx_cmd_slide_dir = 0
      if @ebdxCmdSel && @index < count
        @ebdxCmdSel.visible = true
        @ebdxCmdSel.x = @ebdxCmdBtns[@index].x
        @ebdxCmdSel.y = @ebdxCmdBtns[@index].y - 2
      end
    end
  end

  #-----------------------------------------------------------------------------
  #  update — selector animation + button bounce + slide
  #-----------------------------------------------------------------------------
  alias ebdx_cmd_upd update unless method_defined?(:ebdx_cmd_upd)
  def update
    ebdx_cmd_upd
    return unless @ebdx_cmd_available
    @ebdxCmdSel&.update
    @ebdxCmdBtns&.each do |btn|
      next unless btn&.bitmap
      btn.src_rect.y += 1 if btn.src_rect.y < 0
    end
    ebdx_cmd_animate_slide if @ebdx_cmd_slide_dir != 0
  end

  #-----------------------------------------------------------------------------
  #  dispose — clean up EBDX sprites (cache-loaded bitmaps are NOT disposed)
  #-----------------------------------------------------------------------------
  alias ebdx_cmd_disp dispose unless method_defined?(:ebdx_cmd_disp)
  def dispose
    # NOTE: @ebdxCmdBtnBmp and @ebdxCmdEmpBmp are loaded via pbBitmap (RPG::Cache)
    # and must NOT be disposed here — the cache manages their lifecycle.
    ebdx_cmd_disp
  end
end
