#===============================================================================
#  [SC] EBDX Battle UI — Message Window Skin Override
#  Replaces PE's standard battle message bar (overlay_message.png) with
#  the EBDX dark/light skin (skin1.png / skin2.png) using 9-slice stretching.
#  Also shows the skin bar during command/fight selection (EBDX behavior).
#===============================================================================

class Battle::Scene
  # EBDX message text colors
  EBDX_MSG_DARK_BASE    = Color.new(255, 255, 255)   # White text on dark skin
  EBDX_MSG_DARK_SHADOW  = Color.new(32, 32, 32)
  EBDX_MSG_LIGHT_BASE   = Color.new(51, 51, 51)      # Dark text on light skin
  EBDX_MSG_LIGHT_SHADOW = Color.new(212, 212, 212)

  #-----------------------------------------------------------------------------
  #  Hook into pbInitSprites to replace the message box after PE creates it
  #-----------------------------------------------------------------------------
  alias ebdx_msgwin_pbInitSprites pbInitSprites unless method_defined?(:ebdx_msgwin_pbInitSprites)
  def pbInitSprites
    ebdx_msgwin_pbInitSprites
    ebdx_replace_message_box
  end

  #-----------------------------------------------------------------------------
  #  Replace PE's overlay_message with EBDX 9-slice skin
  #-----------------------------------------------------------------------------
  def ebdx_replace_message_box
    path = EBDXBattleUI::GRAPHICS_PATH
    return unless pbResolveBitmap(path + "skin1") && pbResolveBitmap(path + "skin2")
    @ebdx_msgbox_active = true
    vw = @viewport.width
    vh = @viewport.height
    # Scale from EBDX 512x384 base (factor ~1.25x)
    box_w = vw - 35           # EBDX uses viewport.width - 28
    box_h = 103               # EBDX uses 82
    # 9-slice stretch the skin graphics to the required size
    bmp1 = ebdx_smart_window(Rect.new(8, 8, 8, 8), box_w, box_h, path + "skin1")
    bmp2 = ebdx_smart_window(Rect.new(8, 8, 8, 8), box_w, box_h, path + "skin2")
    # Build double-height bitmap: top half = dark skin, bottom half = light skin
    new_bmp = Bitmap.new(box_w, box_h * 2)
    new_bmp.blt(0, 0, bmp1, bmp1.rect)
    new_bmp.blt(0, box_h, bmp2, bmp2.rect)
    bmp1.dispose
    bmp2.dispose
    # Replace existing PE messageBox sprite content
    box = @sprites["messageBox"]
    old_bmp = box.bitmap
    box.bitmap = new_bmp
    old_bmp&.dispose
    box.x = (vw - box_w) / 2
    box.y = vh - box_h - 10
    box.z = 195
    box.src_rect.set(0, 0, box_w, box_h)   # Show dark skin by default
    box.visible = false
    @ebdx_msgbox_h = box_h
    # Hide PE's white command bar background permanently
    @sprites["cmdBar_bg"].visible = false if @sprites["cmdBar_bg"]
    # Adjust message window: transparent background, EBDX text colors
    mw = @sprites["messageWindow"]
    mw.baseColor   = EBDX_MSG_DARK_BASE
    mw.shadowColor = EBDX_MSG_DARK_SHADOW
    mw.opacity = 0
    mw.x      = 30
    mw.width  = vw - 60
    mw.height = box_h + 8
    mw.y      = vh - mw.height - 6
    # Replace pause cursor with EBDX heart animation
    pause_path = path + "pause"
    if pbResolveBitmap(pause_path) && mw.respond_to?(:battlePause)
      mw.battlePause
    elsif pbResolveBitmap(pause_path)
      ebdx_setup_pause_sprite(mw, pause_path)
    end
  end

  #-----------------------------------------------------------------------------
  #  Set up EBDX pause cursor if battlePause is not available
  #-----------------------------------------------------------------------------
  def ebdx_setup_pause_sprite(mw, pause_path)
    return unless mw.instance_variable_get(:@pausesprite)
    old_pause = mw.instance_variable_get(:@pausesprite)
    old_pause.dispose if old_pause && !old_pause.disposed?
    new_pause = AnimatedSprite.create(pause_path, 4, 2)
    new_pause.z = 100000
    new_pause.visible = false
    new_pause.oy = 2
    mw.instance_variable_set(:@pausesprite, new_pause)
  end

  #-----------------------------------------------------------------------------
  #  Override pbShowWindow: show dark bar for COMMAND_BOX and FIGHT_BOX too
  #  (PE standard only shows messageBox for MESSAGE_BOX)
  #-----------------------------------------------------------------------------
  alias ebdx_msgwin_pbShowWindow pbShowWindow unless method_defined?(:ebdx_msgwin_pbShowWindow)
  def pbShowWindow(windowType)
    ebdx_msgwin_pbShowWindow(windowType)
    return unless @ebdx_msgbox_active
    # EBDX skin bar only for messages; hide during command/fight selection
    @sprites["messageBox"].visible = (windowType == MESSAGE_BOX)
    # Hide PE's cmdBar_bg (white command bar background) — EBDX has its own
    @sprites["cmdBar_bg"].visible = false if @sprites["cmdBar_bg"]
  end

  #-----------------------------------------------------------------------------
  #  9-slice window stretching (replaces Bitmap.smartWindow from old Luka's)
  #  slice = Rect defining the border widths (x=left, y=top, width=right, height=bottom)
  #-----------------------------------------------------------------------------
  def ebdx_smart_window(slice, out_w, out_h, path)
    window = pbBitmap(path)
    output = Bitmap.new(out_w, out_h)
    x1 = [0, slice.x, slice.x + slice.width]
    y1 = [0, slice.y, slice.y + slice.height]
    w1 = [slice.x, slice.width, window.width - slice.x - slice.width]
    h1 = [slice.y, slice.height, window.height - slice.y - slice.height]
    x2 = [0, x1[1], out_w - w1[2]]
    y2 = [0, y1[1], out_h - h1[2]]
    w2 = [x1[1], out_w - x1[1] - w1[2], w1[2]]
    h2 = [y1[1], out_h - y1[1] - h1[2], h1[2]]
    9.times do |i|
      sx, sy = i % 3, i / 3
      output.stretch_blt(
        Rect.new(x2[sx], y2[sy], w2[sx], h2[sy]),
        window,
        Rect.new(x1[sx], y1[sy], w1[sx], h1[sy])
      )
    end
    return output
  end
end
