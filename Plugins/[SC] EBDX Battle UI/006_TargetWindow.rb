#===============================================================================
#  [SC] EBDX Battle UI — Target Window (EBDX-style Target Selection)
#  Overrides TargetMenu visuals while preserving ALL DBK hook compatibility.
#  Works with: Deluxe Battle Kit (modes 5-8), and any other plugin that
#  uses the standard PE TargetMenu / pbChooseTarget interface.
#
#  Architecture:
#  - Standard PE/DBK TargetMenu is initialized normally
#  - EBDX sprites are created ON TOP, standard buttons are hidden via @visibility
#  - refreshButtons is overridden for EBDX visuals (Pokémon icon buttons)
#  - pbChooseTarget input loop is left untouched (DBK compatible)
#  - Show/hide uses slide-in animation
#===============================================================================

class Battle::Scene::TargetMenu < Battle::Scene::MenuBase
  EBDX_TGT_PATH = EBDXBattleUI::GRAPHICS_PATH
  attr_writer :ebdx_battle

  #-----------------------------------------------------------------------------
  #  Initialize — create EBDX sprites alongside standard ones
  #-----------------------------------------------------------------------------
  alias ebdx_tgt_init initialize
  def initialize(viewport, z, sideSizes)
    ebdx_tgt_init(viewport, z, sideSizes)
    @ebdx_tgt_available = false
    @ebdx_tgt_oldindex  = -1
    @ebdx_tgt_slide_dir = 0
    @ebdx_tgt_slide_frm = 0
    @ebdx_tgt_slide_max = 10
    @ebdx_tgt_sideSizes = sideSizes
    @ebdx_battle        = nil
    ebdx_tgt_setup_sprites(viewport)
  end

  #-----------------------------------------------------------------------------
  #  Create EBDX sprites (only if graphics exist)
  #-----------------------------------------------------------------------------
  def ebdx_tgt_setup_sprites(viewport)
    return unless pbResolveBitmap(EBDX_TGT_PATH + "btnEmpty")
    @ebdx_tgt_available = true
    @ebdx_tgt_vp = viewport
    # Load button bitmap
    @ebdxTgtBtnBmp = pbBitmap(EBDX_TGT_PATH + "btnEmpty")
    # Semi-transparent background bar
    bg_h = 64
    @ebdx_tgt_bg = Sprite.new(viewport)
    @ebdx_tgt_bg.bitmap = Bitmap.new(Graphics.width, bg_h)
    @ebdx_tgt_bg.bitmap.fill_rect(0, 0, Graphics.width, bg_h, Color.new(0, 0, 0, 150))
    @ebdx_tgt_bg.y = Graphics.height
    @ebdx_tgt_bg.z = self.z + 89
    @ebdx_tgt_bg_target = Graphics.height - bg_h
    addSprite("ebdx_tgt_bg", @ebdx_tgt_bg)
    # Animated selector
    sel_bmp = EBDXFight_Helpers.pbSelBitmap(
      EBDX_TGT_PATH + "cmdSel",
      Rect.new(0, 0, @ebdxTgtBtnBmp.width, @ebdxTgtBtnBmp.height)
    )
    @ebdxTgtSel = EBDXFight_SpriteSheet.new(viewport, 4)
    @ebdxTgtSel.setBitmap(sel_bmp)
    @ebdxTgtSel.speed = 4
    @ebdxTgtSel.ox = @ebdxTgtSel.src_rect.width / 2
    @ebdxTgtSel.oy = @ebdxTgtSel.src_rect.height / 2
    @ebdxTgtSel.z  = self.z + 99
    @ebdxTgtSel.visible = false
    addSprite("ebdx_tgt_sel", @ebdxTgtSel)
    # Target buttons (max index based on side sizes)
    maxIdx = (@ebdx_tgt_sideSizes[0] > @ebdx_tgt_sideSizes[1]) ?
             (@ebdx_tgt_sideSizes[0] - 1) * 2 : (@ebdx_tgt_sideSizes[1] * 2) - 1
    @ebdxTgtBtns = Array.new(maxIdx + 1) do |i|
      btn = Sprite.new(viewport)
      btn.z = self.z + 92
      btn.visible = false
      addSprite("ebdx_tgt_btn_#{i}", btn)
      next btn
    end
    @ebdx_tgt_texts = []
  end

  #-----------------------------------------------------------------------------
  #  Build target button bitmaps with Pokémon icons
  #-----------------------------------------------------------------------------
  def ebdx_tgt_generate_buttons
    return unless @ebdx_tgt_available
    bmp = @ebdxTgtBtnBmp
    bw = bmp.width
    bh = bmp.height
    maxSize = [@ebdx_tgt_sideSizes[0], @ebdx_tgt_sideSizes[1]].max
    rw = maxSize * (bw + 8)
    rh = 2 * (bh + 4)
    @ebdxTgtBtns.each_with_index do |btn, i|
      btn.bitmap&.dispose
      btn.bitmap = Bitmap.new(bw, bh)
      btn.bitmap.blt(0, 0, bmp, bmp.rect)
      # Apply Pokémon icon if valid target
      if !@ebdx_tgt_texts[i].nil? && @ebdx_battle && @ebdx_battle.battlers[i]&.displayPokemon
        pkmn = @ebdx_battle.battlers[i].displayPokemon
        begin
          icon = pbBitmap(GameData::Species.icon_filename_from_pokemon(pkmn))
          ix = (bw - icon.width / 2) / 2
          iy = (bh - icon.height) / 2 - 9
          if @ebdx_battle.battlers[i].hp > 0
            btn.bitmap.blt(ix, iy, icon, Rect.new(0, 0, icon.width / 2, [bh - 4 - iy, icon.height].min), 216)
          end
          # NOTE: icon is loaded via pbBitmap (RPG::Cache) — do NOT dispose it
        rescue
        end
        btn.opacity = 255
      else
        sideSize = @ebdx_tgt_sideSizes[i % 2]
        btn.opacity = (i / 2 >= sideSize) ? 0 : 128
      end
      # Position
      sideIdx = i % 2
      posInSide = (sideIdx == 0) ? i / 2 : (@ebdx_tgt_sideSizes[1] - 1 - (i - 1) / 2)
      x = (Graphics.width - rw) / 2 + posInSide * (bw + 8)
      dif = @ebdx_tgt_sideSizes[1 - sideIdx] - @ebdx_tgt_sideSizes[sideIdx]
      x += (dif * 0.5 * (bw + 8)).to_i if dif > 0
      y = (Graphics.height - rh - 4) + (1 - sideIdx) * (bh + 4)
      btn.ox = bw / 2
      btn.oy = bh / 2
      btn.x = x + bw / 2
      btn.y = y + bh / 2 + 120
      btn.visible = true
      @visibility["ebdx_tgt_btn_#{i}"] = true
    end
  end

  #-----------------------------------------------------------------------------
  #  Keep standard PE/DBK target sprites hidden
  #-----------------------------------------------------------------------------
  def ebdx_tgt_hide_std
    return unless @ebdx_tgt_available
    @buttons&.each_with_index { |_, i| @visibility["button_#{i}"] = false }
    @visibility["overlay"] = false if @sprites["overlay"]
  end

  #-----------------------------------------------------------------------------
  #  setDetails — intercept to build EBDX buttons
  #-----------------------------------------------------------------------------
  alias ebdx_tgt_setDetails setDetails
  def setDetails(texts, mode)
    ebdx_tgt_setDetails(texts, mode)
    return unless @ebdx_tgt_available
    @ebdx_tgt_texts = texts
    ebdx_tgt_generate_buttons
  end

  #-----------------------------------------------------------------------------
  #  refreshButtons — EBDX visuals
  #-----------------------------------------------------------------------------
  alias ebdx_tgt_refreshButtons refreshButtons
  def refreshButtons
    return ebdx_tgt_refreshButtons unless @ebdx_tgt_available
    ebdx_tgt_hide_std
    @ebdxTgtBtns.each_with_index do |btn, i|
      next unless btn&.bitmap
      sel = false
      if @ebdx_tgt_texts[i]
        sel ||= (@mode == 0 && i == @index)
        sel ||= (@mode == 1)
      end
      btn.z = self.z + (sel ? 94 : 92)
      btn.src_rect.y = -4 if sel && @ebdx_tgt_oldindex != @index
    end
    if @ebdxTgtSel && @ebdx_tgt_texts[@index]
      @ebdxTgtSel.visible = @visible && (@ebdx_tgt_slide_dir == 0)
      @ebdxTgtSel.x = @ebdxTgtBtns[@index].x
      @ebdxTgtSel.y = @ebdxTgtBtns[@index].y - 2
    elsif @ebdxTgtSel
      @ebdxTgtSel.visible = false
    end
    @ebdx_tgt_oldindex = @index
  end

  #-----------------------------------------------------------------------------
  #  visible= — trigger slide animation
  #-----------------------------------------------------------------------------
  alias ebdx_tgt_vis= visible=
  def visible=(value)
    was = @visible
    if value && @ebdx_tgt_available
      ebdx_tgt_hide_std
      ebdx_tgt_pre_slide if !was
    end
    self.ebdx_tgt_vis = value
    if value && !was && @ebdx_tgt_available
      @ebdx_tgt_slide_dir = 1
      @ebdx_tgt_slide_frm = 0
      pbSEPlay("EBDX/SE_Zoom4", 50) rescue nil
    end
  end

  #-----------------------------------------------------------------------------
  #  Slide animation helpers
  #-----------------------------------------------------------------------------
  def ebdx_tgt_pre_slide
    @ebdxTgtBtns.each do |btn|
      next unless btn&.bitmap
      btn.y += 120
    end
    @ebdx_tgt_bg.y = Graphics.height if @ebdx_tgt_bg
    @ebdxTgtSel.visible = false if @ebdxTgtSel
  end

  def ebdx_tgt_animate_slide
    @ebdx_tgt_slide_frm += 1
    t = [@ebdx_tgt_slide_frm.to_f / @ebdx_tgt_slide_max, 1.0].min
    p = 1.0 - (1.0 - t) ** 2
    bh = @ebdxTgtBtnBmp.height
    maxSize = [@ebdx_tgt_sideSizes[0], @ebdx_tgt_sideSizes[1]].max
    rh = 2 * (bh + 4)
    @ebdxTgtBtns.each_with_index do |btn, i|
      next unless btn&.bitmap
      sideIdx = i % 2
      base_y = (Graphics.height - rh - 4) + (1 - sideIdx) * (bh + 4) + bh / 2
      btn.y = (base_y + 120 - 120 * p).to_i
    end
    if @ebdx_tgt_bg
      @ebdx_tgt_bg.y = (Graphics.height - (Graphics.height - @ebdx_tgt_bg_target) * p).to_i
    end
    if @ebdx_tgt_slide_frm >= @ebdx_tgt_slide_max
      @ebdx_tgt_slide_dir = 0
      if @ebdxTgtSel && @ebdx_tgt_texts[@index]
        @ebdxTgtSel.visible = true
        @ebdxTgtSel.x = @ebdxTgtBtns[@index].x
        @ebdxTgtSel.y = @ebdxTgtBtns[@index].y - 2
      end
    end
  end

  #-----------------------------------------------------------------------------
  #  update — selector animation + button bounce + slide
  #-----------------------------------------------------------------------------
  alias ebdx_tgt_upd update
  def update
    ebdx_tgt_upd
    return unless @ebdx_tgt_available
    @ebdxTgtSel&.update
    @ebdxTgtBtns&.each do |btn|
      next unless btn&.bitmap
      btn.src_rect.y += 1 if btn.src_rect.y < 0
    end
    ebdx_tgt_animate_slide if @ebdx_tgt_slide_dir != 0
  end

  #-----------------------------------------------------------------------------
  #  dispose — clean up EBDX sprites (cache-loaded bitmaps are NOT disposed)
  #-----------------------------------------------------------------------------
  alias ebdx_tgt_disp dispose
  def dispose
    # NOTE: @ebdxTgtBtnBmp is loaded via pbBitmap (RPG::Cache)
    # and must NOT be disposed here.
    ebdx_tgt_disp
  end
end
