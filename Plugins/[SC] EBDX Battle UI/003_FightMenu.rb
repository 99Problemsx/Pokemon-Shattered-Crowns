#===============================================================================
#  [SC] EBDX Battle UI — Fight Menu (EBDX-style Move Selection)
#  Overrides FightMenu visuals while preserving ALL DBK hook compatibility.
#  Works with: Enhanced Battle UI, Z-Power, Dynamax, Terastallization,
#              Crown Shatter, and any other plugin that uses DBK hooks.
#
#  Architecture:
#  - Standard PE/DBK FightMenu is initialized normally (all DBK sprites exist)
#  - EBDX sprites are created ON TOP, standard buttons are hidden via @visibility
#  - refreshSelection / refreshButtonNames / refreshMoveData are overridden
#    for EBDX visuals; all other methods (refreshSpecialActionButton,
#    refreshShiftButton, resetMenuToggles, addSpecialActionButtons, etc.)
#    remain untouched so the full DBK alias chain keeps working.
#===============================================================================

class Battle::Scene::FightMenu < Battle::Scene::MenuBase
  EBDX_UI_PATH = EBDXBattleUI::GRAPHICS_PATH

  #-----------------------------------------------------------------------------
  #  Initialize — create EBDX sprites alongside standard DBK ones
  #-----------------------------------------------------------------------------
  alias ebdx_fight_init initialize
  def initialize(viewport, z)
    ebdx_fight_init(viewport, z)
    @ebdx_vp         = viewport
    @ebdx_available  = false
    @ebdx_oldindex   = -1
    @ebdx_move_sig   = nil
    @ebdx_nummoves   = 0
    @ebdx_slide_dir  = 0
    @ebdx_slide_frm  = 0
    @ebdx_slide_max  = 8
    ebdx_setup_sprites
  end

  #-----------------------------------------------------------------------------
  #  Create EBDX sprites (only if graphics exist)
  #-----------------------------------------------------------------------------
  def ebdx_setup_sprites
    return unless USE_GRAPHICS
    return unless pbResolveBitmap(EBDX_UI_PATH + "moveSelButtons")
    @ebdx_available = true
    # Load bitmaps
    @ebdxBtnBmp = pbBitmap(EBDX_UI_PATH + "moveSelButtons")
    @ebdxCatBmp = pbBitmap(EBDX_UI_PATH + "category")
    @ebdxTypBmp = pbBitmap(EBDX_UI_PATH + "types")
    ebdx_detect_dims
    # Semi-transparent background bar
    bg_h = @ebdx_btn_h * 2 + 24
    @ebdx_bg = Sprite.new(@ebdx_vp)
    @ebdx_bg.bitmap = Bitmap.new(Graphics.width, bg_h)
    @ebdx_bg.bitmap.fill_rect(0, 0, Graphics.width, bg_h, Color.new(0, 0, 0, 150))
    @ebdx_bg.y = Graphics.height
    @ebdx_bg.z = self.z + 90
    @ebdx_bg_target = Graphics.height - bg_h
    addSprite("ebdx_bg", @ebdx_bg)
    # Animated selector
    sel_bmp = EBDXFight_Helpers.pbSelBitmap(
      EBDX_UI_PATH + "cmdSel",
      Rect.new(0, 0, @ebdx_btn_w, @ebdx_btn_h)
    )
    @ebdxSel = EBDXFight_SpriteSheet.new(@ebdx_vp, 4)
    @ebdxSel.setBitmap(sel_bmp)
    @ebdxSel.speed = 4
    @ebdxSel.ox = @ebdxSel.src_rect.width / 2
    @ebdxSel.oy = @ebdxSel.src_rect.height / 2
    @ebdxSel.z  = self.z + 99
    @ebdxSel.visible = false
    addSprite("ebdx_sel", @ebdxSel)
    # Move buttons (4 max)
    @ebdxBtns = Array.new(Pokemon::MAX_MOVES) do |i|
      btn = Sprite.new(@ebdx_vp)
      btn.z = self.z + 92
      btn.visible = false
      addSprite("ebdx_btn_#{i}", btn)
      next btn
    end
    ebdx_calc_layout
  end

  #-----------------------------------------------------------------------------
  #  Auto-detect button dimensions from bitmap size
  #-----------------------------------------------------------------------------
  def ebdx_detect_dims
    # Column count (3 for odd-width bitmaps, 2 for even)
    if @ebdxBtnBmp.width % 2 != 0 && @ebdxBtnBmp.width % 3 == 0
      @ebdx_cols = 3
    else
      @ebdx_cols = 2
    end
    @ebdx_btn_w = @ebdxBtnBmp.width / @ebdx_cols
    # Type count
    max_tp = 0
    GameData::Type.each { |t| max_tp = [max_tp, t.icon_position].max }
    @ebdx_ntypes = max_tp + 1
    # Row height
    if @ebdxBtnBmp.height % @ebdx_ntypes == 0
      @ebdx_btn_h = @ebdxBtnBmp.height / @ebdx_ntypes
    else
      @ebdx_btn_h = [65, 74, 80, 92].find { |h| @ebdxBtnBmp.height % h == 0 } || 65
    end
    # Icon dimensions
    @ebdx_tw = @ebdxTypBmp.width
    @ebdx_th = (@ebdxTypBmp.height / @ebdx_ntypes.to_f).floor
    @ebdx_cw = @ebdxCatBmp.width
    @ebdx_ch = @ebdxCatBmp.height / 3
  end

  #-----------------------------------------------------------------------------
  #  Button layout (2×2 grid, centered at bottom)
  #-----------------------------------------------------------------------------
  def ebdx_calc_layout
    cx = Graphics.width / 2
    gap = 4
    by = Graphics.height - @ebdx_btn_h * 2 - gap - 12
    @ebdx_fx = []; @ebdx_fy = []
    4.times do |i|
      c = i % 2; r = i / 2
      @ebdx_fx[i] = cx + (c == 0 ? -@ebdx_btn_w / 2 - gap / 2 : @ebdx_btn_w / 2 + gap / 2)
      @ebdx_fy[i] = by + r * (@ebdx_btn_h + gap) + @ebdx_btn_h / 2
    end
  end

  def ebdx_btn_y(i)
    y = @ebdx_fy[i]
    y += @ebdx_btn_h / 3 if @ebdx_nummoves < 3
    return y
  end

  #-----------------------------------------------------------------------------
  #  Generate type-colored button bitmaps for current moves
  #-----------------------------------------------------------------------------
  def ebdx_generate_buttons
    return unless @ebdx_available && @battler
    moves = @battler.moves
    @ebdx_nummoves = 0
    @ebdxBtns.each_with_index do |btn, i|
      unless moves[i]&.id
        btn.bitmap&.dispose
        btn.bitmap = nil
        @visibility["ebdx_btn_#{i}"] = false
        next
      end
      @ebdx_nummoves += 1
      begin
        md  = GameData::Move.get(moves[i].id)
        tp  = GameData::Type.get(moves[i].display_type(@battler)).icon_position
        cat = md.physical? ? 0 : (md.special? ? 1 : 2)
      rescue
        tp = 0; cat = 2
      end
      # Composite bitmap: [selected half | unselected half]
      btn.bitmap&.dispose
      btn.bitmap = Bitmap.new(@ebdx_btn_w * 2, @ebdx_btn_h)
      sy = tp * @ebdx_btn_h
      btn.bitmap.blt(0, 0, @ebdxBtnBmp,
        Rect.new(0, sy, @ebdx_btn_w, @ebdx_btn_h))
      btn.bitmap.blt(@ebdx_btn_w, 0, @ebdxBtnBmp,
        Rect.new(@ebdx_btn_w, sy, @ebdx_btn_w, @ebdx_btn_h))
      # Type + category icons on both halves
      iy = @ebdx_btn_h - @ebdx_ch - 2
      2.times do |c|
        ox = c * @ebdx_btn_w
        btn.bitmap.blt(ox + 3, iy,
          @ebdxTypBmp, Rect.new(0, tp * @ebdx_th, @ebdx_tw, @ebdx_th))
        btn.bitmap.blt(ox + @ebdx_tw + 5, iy,
          @ebdxCatBmp, Rect.new(0, cat * @ebdx_ch, @ebdx_cw, @ebdx_ch))
      end
      # Text
      shadow = Color.new(0, 0, 0, 80)
      ny = [(@ebdx_btn_h - @ebdx_ch) / 2 - 12, 2].max
      mname = begin; moves[i].short_name; rescue; moves[i].name; end
      pptxt = moves[i].total_pp > 0 ? "#{moves[i].pp}/#{moves[i].total_pp}" : "---"
      pbSetSmallFont(btn.bitmap)
      2.times do |c|
        ox = c * @ebdx_btn_w
        pbDrawTextPositions(btn.bitmap,
          [[mname, ox + @ebdx_btn_w / 2, ny, :center, Color.white, shadow]])
        pbDrawTextPositions(btn.bitmap,
          [[pptxt, ox + @ebdx_btn_w - 4, iy + 2, :right, Color.white, shadow]])
      end
      # Sprite properties
      btn.src_rect.set(@ebdx_btn_w, 0, @ebdx_btn_w, @ebdx_btn_h)
      btn.ox = @ebdx_btn_w / 2
      btn.oy = @ebdx_btn_h / 2
      btn.x  = @ebdx_fx[i]
      btn.y  = ebdx_btn_y(i)
      @visibility["ebdx_btn_#{i}"] = true
    end
  end

  #-----------------------------------------------------------------------------
  #  Keep standard PE/DBK button sprites hidden
  #-----------------------------------------------------------------------------
  def ebdx_hide_std
    return unless @ebdx_available
    @buttons&.each_with_index { |_, i| @visibility["button_#{i}"] = false }
    %w[background overlay infoOverlay typeIcon].each { |k| @visibility[k] = false }
  end

  #-----------------------------------------------------------------------------
  #  refreshSelection — EBDX visuals
  #-----------------------------------------------------------------------------
  alias ebdx_fight_rsel refreshSelection
  def refreshSelection
    return ebdx_fight_rsel unless @ebdx_available
    ebdx_hide_std
    moves = @battler ? @battler.moves : []
    @ebdxBtns.each_with_index do |btn, i|
      next unless btn&.bitmap
      sel = (i == @index)
      btn.src_rect.x = sel ? 0 : @ebdx_btn_w
      btn.z = self.z + (sel ? 94 : 92)
      btn.src_rect.y = -4 if sel && @ebdx_oldindex != @index
    end
    if @ebdxSel && @index < @ebdx_nummoves
      @ebdxSel.visible = @visible && (@ebdx_slide_dir == 0)
      @ebdxSel.x = @ebdx_fx[@index]
      @ebdxSel.y = ebdx_btn_y(@index)
    elsif @ebdxSel
      @ebdxSel.visible = false
    end
    @ebdx_oldindex = @index
    refreshMoveData(moves[@index])
  end

  #-----------------------------------------------------------------------------
  #  refreshButtonNames — regenerate only when moves change
  #-----------------------------------------------------------------------------
  alias ebdx_fight_rbn refreshButtonNames
  def refreshButtonNames
    return ebdx_fight_rbn unless @ebdx_available
    return unless @battler
    @overlay&.bitmap&.clear
    new_sig = @battler.moves.map { |m|
      m ? [m.id, m.pp, (m.display_type(@battler) rescue nil)] : nil
    }
    return if @ebdx_move_sig == new_sig
    @ebdx_move_sig = new_sig
    ebdx_generate_buttons
  end

  #-----------------------------------------------------------------------------
  #  refreshMoveData — EBDX shows PP on buttons, no separate display
  #-----------------------------------------------------------------------------
  alias ebdx_fight_rmd refreshMoveData
  def refreshMoveData(move)
    return ebdx_fight_rmd(move) unless @ebdx_available
    @infoOverlay&.bitmap&.clear
    @visibility["typeIcon"] = false
  end

  #-----------------------------------------------------------------------------
  #  refreshSpecialActionButton — reposition for EBDX layout
  #-----------------------------------------------------------------------------
  alias ebdx_fight_rsab refreshSpecialActionButton
  def refreshSpecialActionButton
    ebdx_fight_rsab
    return unless @ebdx_available && @actionButton
    return unless @visibility["actionButton"]
    top_y = ebdx_btn_y(0) - @ebdx_btn_h / 2
    @actionButton.x = 30
    @actionButton.y = top_y - @actionButton.src_rect.height - 4
    @actionButton.z = self.z + 95
  end

  #-----------------------------------------------------------------------------
  #  refreshShiftButton — reposition for EBDX layout
  #-----------------------------------------------------------------------------
  alias ebdx_fight_rsb refreshShiftButton
  def refreshShiftButton
    ebdx_fight_rsb
    return unless @ebdx_available && @shiftButton
    return unless @visibility["shiftButton"]
    top_y = ebdx_btn_y(0) - @ebdx_btn_h / 2
    @shiftButton.x = Graphics.width - @shiftButton.src_rect.width - 4
    @shiftButton.y = top_y - @shiftButton.src_rect.height - 4
    @shiftButton.z = self.z + 95
  end

  #-----------------------------------------------------------------------------
  #  visible= — trigger slide-in animation
  #-----------------------------------------------------------------------------
  alias ebdx_fight_vis= visible=
  def visible=(value)
    was = @visible
    if value && @ebdx_available
      ebdx_hide_std
      ebdx_pre_slide if !was
    end
    self.ebdx_fight_vis = value
    if value && !was && @ebdx_available
      @ebdx_slide_dir = 1
      @ebdx_slide_frm = 0
      pbSEPlay("EBDX/SE_Zoom4", 50) rescue nil
    end
  end

  #-----------------------------------------------------------------------------
  #  Slide animation helpers
  #-----------------------------------------------------------------------------
  def ebdx_pre_slide
    @ebdxBtns&.each_with_index do |btn, i|
      next unless btn&.bitmap
      btn.x = @ebdx_fx[i] + ((i % 2 == 0) ? -Graphics.width : Graphics.width)
    end
    @ebdx_bg.y = Graphics.height if @ebdx_bg
    @ebdxSel.visible = false if @ebdxSel
  end

  def ebdx_animate_slide
    @ebdx_slide_frm += 1
    t = [@ebdx_slide_frm.to_f / @ebdx_slide_max, 1.0].min
    p = 1.0 - (1.0 - t) ** 2
    @ebdxBtns.each_with_index do |btn, i|
      next unless btn&.bitmap
      d = (i % 2 == 0) ? -1 : 1
      btn.x = @ebdx_fx[i] + (d * Graphics.width * (1.0 - p)).to_i
      btn.y = ebdx_btn_y(i)
    end
    if @ebdx_bg
      @ebdx_bg.y = (Graphics.height - (Graphics.height - @ebdx_bg_target) * p).to_i
    end
    if @ebdx_slide_frm >= @ebdx_slide_max
      @ebdx_slide_dir = 0
      if @ebdxSel && @index < @ebdx_nummoves
        @ebdxSel.visible = true
        @ebdxSel.x = @ebdx_fx[@index]
        @ebdxSel.y = ebdx_btn_y(@index)
      end
    end
  end

  #-----------------------------------------------------------------------------
  #  update — selector animation + button bounce + slide
  #-----------------------------------------------------------------------------
  alias ebdx_fight_upd update
  def update
    ebdx_fight_upd
    return unless @ebdx_available
    @ebdxSel&.update
    @ebdxBtns&.each do |btn|
      next unless btn&.bitmap
      btn.src_rect.y += 1 if btn.src_rect.y < 0
    end
    ebdx_animate_slide if @ebdx_slide_dir != 0
  end

  #-----------------------------------------------------------------------------
  #  dispose — clean up EBDX sprites (cache-loaded bitmaps are NOT disposed)
  #-----------------------------------------------------------------------------
  alias ebdx_fight_disp dispose
  def dispose
    # NOTE: @ebdxBtnBmp, @ebdxCatBmp, @ebdxTypBmp are loaded via pbBitmap
    # (RPG::Cache) and must NOT be disposed here.
    ebdx_fight_disp
  end
end
