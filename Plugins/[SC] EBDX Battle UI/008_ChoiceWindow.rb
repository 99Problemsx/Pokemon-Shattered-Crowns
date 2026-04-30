#===============================================================================
#  [SC] EBDX Battle UI — Choice Window (EBDX-style In-Battle Choice Prompt)
#  Standalone class that replaces Window_CommandPokemon in pbShowCommands.
#  Vertical stacked buttons with text, animated selector, opacity fade-in/out.
#===============================================================================

class ChoiceWindowEBDX
  attr_accessor :index
  EBDX_CHOICE_PATH = EBDXBattleUI::GRAPHICS_PATH

  #-----------------------------------------------------------------------------
  #  Initialize the choice button sprites
  #-----------------------------------------------------------------------------
  def initialize(viewport, commands, scene)
    @commands  = commands
    @scene     = scene
    @index     = 0
    @viewport  = viewport
    @sprites   = {}
    @disposed  = false
    baseColor  = Color.new(255, 255, 255)
    shadowColor = Color.new(0, 0, 0, 192)
    # Button / selector image names (defaults)
    btnImg = "btnEmpty"
    selImg = "cmdSel"
    # Generate selector sprite
    bmp = pbBitmap(EBDX_CHOICE_PATH + btnImg)
    sel_bmp = EBDXFight_Helpers.pbSelBitmap(
      EBDX_CHOICE_PATH + selImg,
      Rect.new(0, 0, bmp.width, bmp.height)
    )
    @sprites["sel"] = EBDXFight_SpriteSheet.new(viewport, 4)
    @sprites["sel"].setBitmap(sel_bmp)
    @sprites["sel"].speed = 4
    @sprites["sel"].ox = @sprites["sel"].src_rect.width / 2
    @sprites["sel"].oy = @sprites["sel"].src_rect.height / 2
    @sprites["sel"].z = 99999
    @sprites["sel"].visible = false
    # Fill sprites with text
    for i in 0...@commands.length
      k = @commands.length - 1 - i
      @sprites["choice#{i}"] = Sprite.new(viewport)
      @sprites["choice#{i}"].x = Graphics.width - bmp.width - 14 + bmp.width / 2
      @sprites["choice#{i}"].y = Graphics.height - 136 - k * (bmp.height + 4) + bmp.height / 2
      @sprites["choice#{i}"].z = 99998
      @sprites["choice#{i}"].bitmap = Bitmap.new(bmp.width, bmp.height)
      @sprites["choice#{i}"].ox = bmp.width / 2
      @sprites["choice#{i}"].oy = bmp.height / 2
      @sprites["choice#{i}"].opacity = 0
      choice = @sprites["choice#{i}"].bitmap
      pbSetSystemFont(choice)
      choice.blt(0, 0, bmp, bmp.rect)
      pbDrawOutlineText(choice, 0, 8, bmp.width, bmp.height, @commands[i], baseColor, shadowColor, 1)
    end
    # NOTE: bmp is loaded via pbBitmap (RPG::Cache) — do NOT dispose it
  end

  #-----------------------------------------------------------------------------
  #  Dispose with fade-out
  #-----------------------------------------------------------------------------
  def dispose(scene = nil)
    return if @disposed
    2.times do
      @sprites["sel"].opacity -= 128 if @sprites["sel"]
      for i in 0...@commands.length
        @sprites["choice#{i}"].opacity -= 128 if @sprites["choice#{i}"]
      end
      if scene
        scene.pbGraphicsUpdate rescue Graphics.update
      else
        Graphics.update
      end
    end
    pbDisposeSpriteHash(@sprites)
    @disposed = true
  end

  def disposed?
    @disposed
  end

  #-----------------------------------------------------------------------------
  #  Update choice selection (input + animation)
  #-----------------------------------------------------------------------------
  def update
    @sprites["sel"].visible = true
    @sprites["sel"].x = @sprites["choice#{@index}"].x
    @sprites["sel"].y = @sprites["choice#{@index}"].y - 2
    @sprites["sel"].update
    if Input.trigger?(Input::UP)
      pbSEPlay("EBDX/SE_Select1") rescue pbPlayCursorSE
      @index -= 1
      @index = @commands.length - 1 if @index < 0
      @sprites["choice#{@index}"].src_rect.y -= 6
    elsif Input.trigger?(Input::DOWN)
      pbSEPlay("EBDX/SE_Select1") rescue pbPlayCursorSE
      @index += 1
      @index = 0 if @index >= @commands.length
      @sprites["choice#{@index}"].src_rect.y -= 6
    end
    for i in 0...@commands.length
      @sprites["choice#{i}"].opacity += 128 if @sprites["choice#{i}"].opacity < 255
      @sprites["choice#{i}"].src_rect.y += 1 if @sprites["choice#{i}"].src_rect.y < 0
    end
  end

  # Compatibility stub for PE/DBK
  def shiftMode=(val); end
end
