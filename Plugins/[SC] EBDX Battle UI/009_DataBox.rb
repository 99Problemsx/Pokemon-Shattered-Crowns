
#===============================================================================
#  [SC] EBDX Battle UI — DataBox (EBDX-style Data Boxes)
#  Overrides PokemonDataBox visuals while preserving PE + DBK compatibility.
#  Works with: Deluxe Battle Kit (DataboxStyle system), and PE v21.1.
#
#  Architecture:
#  - PE/DBK PokemonDataBox initializes normally (all aliases preserved)
#  - EBDX sprites are created ON TOP, standard PE visuals are hidden
#  - refresh / refresh_hp / refresh_exp overridden for EBDX rendering
#  - x= / y= / z= / visible= propagate to EBDX sprites
#  - PE's HP/EXP animation system (lerp + System.uptime) drives EBDX bars
#  - When EBDX graphics are unavailable, falls through to PE/DBK visuals
#===============================================================================

class Battle::Scene::PokemonDataBox < Sprite
  EBDX_DB_PATH = EBDXBattleUI::GRAPHICS_PATH

  #-----------------------------------------------------------------------------
  #  Initialize — create EBDX sprites after PE/DBK init
  #-----------------------------------------------------------------------------
  alias ebdx_db_init initialize
  def initialize(battler, sideSize, viewport = nil)
    @ebdx_db_available = false
    @ebdx_db_loaded    = false
    ebdx_db_init(battler, sideSize, viewport)
    ebdx_db_create_sprites(viewport, sideSize)
  end

  #-----------------------------------------------------------------------------
  #  Create all EBDX sprite elements (only if required graphics exist)
  #-----------------------------------------------------------------------------
  def ebdx_db_create_sprites(viewport, sideSize)
    return unless pbResolveBitmap(EBDX_DB_PATH + "dataBox")
    return unless pbResolveBitmap(EBDX_DB_PATH + "containers")
    return unless pbResolveBitmap(EBDX_DB_PATH + "barColors")
    @ebdx_db_available = true
    player = (@battler.index % 2 == 0)
    @ebdx_db_player   = player
    @ebdx_db_double   = (sideSize > 1)
    @ebdx_db_showexp  = player && !@ebdx_db_double
    @ebdx_db_showhp   = player && !@ebdx_db_double
    @ebdx_hpBarWidth  = 168
    @ebdx_expBarWidth = 100
    base_z = self.z

    # Cached bitmaps (via pbBitmap / RPG::Cache)
    @ebdx_barColors = pbBitmap(EBDX_DB_PATH + "barColors")
    base_bmp = pbBitmap(EBDX_DB_PATH + "dataBox")
    cont_bmp = pbBitmap(EBDX_DB_PATH + "containers")

    # Base databox sprite (mirrored for player side)
    @ebdx_base = Sprite.new(viewport)
    @ebdx_base.bitmap = base_bmp
    @ebdx_base.mirror = player
    @ebdx_base.z = base_z + 1
    @sprites["ebdx_base"] = @ebdx_base

    # Container (HP / EXP bar background region)
    @ebdx_container = Sprite.new(viewport)
    @ebdx_container.bitmap = cont_bmp
    @ebdx_container.src_rect.height = @ebdx_db_showexp ? 26 : 14
    @ebdx_container.z = base_z + 2
    @sprites["ebdx_container"] = @ebdx_container

    # HP bar (1×6 pixel, scaled via zoom_x)
    @ebdx_hpSprite = Sprite.new(viewport)
    @ebdx_hpSprite.bitmap = Bitmap.new(1, 6)
    @ebdx_hpSprite.z = base_z + 3
    @sprites["ebdx_hp"] = @ebdx_hpSprite

    # EXP bar (1×4 pixel, scaled via zoom_x)
    @ebdx_expSprite = Sprite.new(viewport)
    @ebdx_expSprite.bitmap = Bitmap.new(1, 4)
    @ebdx_expSprite.bitmap.blt(0, 0, @ebdx_barColors, Rect.new(0, 6, 2, 4))
    @ebdx_expSprite.z = base_z + 3
    @sprites["ebdx_exp"] = @ebdx_expSprite

    # Status icon
    @ebdx_statusSprite = Sprite.new(viewport)
    st_path = EBDX_DB_PATH + "status"
    if pbResolveBitmap(st_path)
      @ebdx_statusSprite.bitmap = pbBitmap(st_path)
      @ebdx_statusSprite.src_rect.height = @ebdx_statusSprite.bitmap.height / 5
      @ebdx_statusSprite.src_rect.width  = 0
    end
    @ebdx_statusSprite.z = base_z + 2
    @sprites["ebdx_status"] = @ebdx_statusSprite

    # Mega / Primal icon
    @ebdx_megaSprite = Sprite.new(viewport)
    @ebdx_megaSprite.mirror = player
    @ebdx_megaSprite.z = base_z + 2
    @sprites["ebdx_mega"] = @ebdx_megaSprite
    @ebdx_megaBmp = pbResolveBitmap(EBDX_DB_PATH + "symMega") ?
                    pbBitmap(EBDX_DB_PATH + "symMega") : nil

    # Name / gender / level text
    tw = cont_bmp.width + 32
    th = base_bmp.height
    @ebdx_textName = Sprite.new(viewport)
    @ebdx_textName.bitmap = Bitmap.new(tw, th)
    pbSetSmallFont(@ebdx_textName.bitmap)
    @ebdx_textName.z = base_z + 10
    @sprites["ebdx_textName"] = @ebdx_textName

    # HP numbers text
    @ebdx_textHP = Sprite.new(viewport)
    @ebdx_textHP.bitmap = Bitmap.new(cont_bmp.width, th + 8)
    pbSetSmallFont(@ebdx_textHP.bitmap)
    @ebdx_textHP.z = base_z + 10
    @sprites["ebdx_textHP"] = @ebdx_textHP

    # Caught / owned icon
    @ebdx_caught = Sprite.new(viewport)
    own_path = EBDX_DB_PATH + "battleBoxOwned"
    if !player && @battler.owned? && pbResolveBitmap(own_path)
      @ebdx_caught.bitmap = pbBitmap(own_path)
    end
    @ebdx_caught.z = base_z + 3
    @sprites["ebdx_caught"] = @ebdx_caught

    # Relative offsets (EBDX defaults)
    @ebdx_off = {
      cont:    [player ? 20 : 24, 6],
      status:  [player ? -26 : 202, 16],
      mega:    [player ? -10 : 206, -18],
      name:    [player ? 6 : 10, -24],
      hp_text: [player ? 22 : 20, 9],
      hp_bar:  [4, 2],
      exp_bar: [4, 16],
      caught:  [-18, -2],
    }

    # Override PE/DBK default positions with EBDX positions
    base_w = base_bmp.width
    @spriteX = player ? Graphics.width - base_w : 0
    @spriteY = player ? Graphics.height - 130 : 52
    if @ebdx_db_double
      if player
        @spriteX += (@battler.index / 2) * 8
        @spriteY -= 50 * ((2 - @battler.index) / 2) - 64 + (48 * (sideSize - 1))
      else
        @spriteY += 50 * (@battler.index / 2) - 16
      end
    end

    # Activate and draw initial visuals
    @ebdx_db_loaded = true
    # Remove PE standard sub-sprites from @sprites hash so PE's visible=/opacity=
    # iterators can never re-show them. Keep refs for disposal.
    @_pe_hpBar     = @sprites.delete("hpBar")
    @_pe_expBar    = @sprites.delete("expBar")
    @_pe_hpNumbers = @sprites.delete("hpNumbers")
    ebdx_db_hide_standard
    refresh
  end

  #-----------------------------------------------------------------------------
  #  Hide PE's standard visual elements
  #-----------------------------------------------------------------------------
  def ebdx_db_hide_standard
    return unless @ebdx_db_available
    # Clear the PE/DBK base bitmap (databox background graphic)
    self.bitmap&.clear
    # Force-hide PE standard sub-sprites (belt-and-suspenders with hash removal)
    @hpBar.visible     = false if @hpBar && !@hpBar.disposed?
    @expBar.visible    = false if @expBar && !@expBar.disposed?
    @hpNumbers.visible = false if @hpNumbers && !@hpNumbers.disposed?
  end

  #-----------------------------------------------------------------------------
  #  Override draw_background — prevent PE/DBK from re-drawing the standard
  #  databox bitmap when EBDX is active
  #-----------------------------------------------------------------------------
  alias ebdx_db_draw_background draw_background
  def draw_background
    return if @ebdx_db_available
    ebdx_db_draw_background
  end

  #-----------------------------------------------------------------------------
  #  x= — position EBDX sprites relative to base
  #-----------------------------------------------------------------------------
  alias :ebdx_db_x= :x=
  def x=(value)
    self.ebdx_db_x = value
    return unless @ebdx_db_available && @ebdx_db_loaded
    @ebdx_base.x         = value
    cx = value + @ebdx_off[:cont][0]
    @ebdx_container.x    = cx
    @ebdx_hpSprite.x     = cx + @ebdx_off[:hp_bar][0]
    @ebdx_expSprite.x    = cx + @ebdx_off[:exp_bar][0]
    @ebdx_caught.x       = cx + @ebdx_off[:caught][0]
    @ebdx_statusSprite.x = value + @ebdx_off[:status][0]
    @ebdx_megaSprite.x   = value + @ebdx_off[:mega][0]
    @ebdx_textName.x     = value + @ebdx_off[:name][0]
    @ebdx_textHP.x       = value + @ebdx_off[:hp_text][0]
  end

  #-----------------------------------------------------------------------------
  #  y= — position EBDX sprites relative to base
  #-----------------------------------------------------------------------------
  alias :ebdx_db_y= :y=
  def y=(value)
    self.ebdx_db_y = value
    return unless @ebdx_db_available && @ebdx_db_loaded
    @ebdx_base.y         = value
    cy = value + @ebdx_off[:cont][1]
    @ebdx_container.y    = cy
    @ebdx_hpSprite.y     = cy + @ebdx_off[:hp_bar][1]
    @ebdx_expSprite.y    = cy + @ebdx_off[:exp_bar][1]
    @ebdx_caught.y       = cy + @ebdx_off[:caught][1]
    @ebdx_statusSprite.y = value + @ebdx_off[:status][1]
    @ebdx_megaSprite.y   = value + @ebdx_off[:mega][1]
    @ebdx_textName.y     = value + @ebdx_off[:name][1]
    @ebdx_textHP.y       = value + @ebdx_off[:hp_text][1]
  end

  #-----------------------------------------------------------------------------
  #  z= — z-order EBDX sprites
  #-----------------------------------------------------------------------------
  alias :ebdx_db_z= :z=
  def z=(value)
    self.ebdx_db_z = value
    return unless @ebdx_db_available && @ebdx_db_loaded
    @ebdx_base.z         = value + 1
    @ebdx_container.z    = value + 2
    @ebdx_hpSprite.z     = value + 3
    @ebdx_expSprite.z    = value + 3
    @ebdx_statusSprite.z = value + 2
    @ebdx_megaSprite.z   = value + 2
    @ebdx_textName.z     = value + 10
    @ebdx_textHP.z       = value + 10
    @ebdx_caught.z       = value + 3
  end

  #-----------------------------------------------------------------------------
  #  visible= — re-hide standard PE sprites when becoming visible
  #-----------------------------------------------------------------------------
  alias :ebdx_db_vis= :visible=
  def visible=(value)
    self.ebdx_db_vis = value
    # PE's visible= directly sets @expBar.visible — re-suppress after call
    if @ebdx_db_available
      @hpBar.visible     = false if @hpBar && !@hpBar.disposed?
      @expBar.visible    = false if @expBar && !@expBar.disposed?
      @hpNumbers.visible = false if @hpNumbers && !@hpNumbers.disposed?
    end
  end

  #-----------------------------------------------------------------------------
  #  refresh — EBDX name, icons, bars
  #-----------------------------------------------------------------------------
  alias ebdx_db_refresh refresh
  def refresh
    return ebdx_db_refresh unless @ebdx_db_available && @ebdx_db_loaded
    ebdx_db_hide_standard
    return if !@battler.pokemon
    ebdx_db_draw_name
    ebdx_db_draw_mega
    refresh_hp
    refresh_exp
  end

  #-----------------------------------------------------------------------------
  #  Draw name, gender, level with outline text (EBDX style)
  #-----------------------------------------------------------------------------
  def ebdx_db_draw_name
    bmp = @ebdx_textName.bitmap
    bmp.clear
    pkmn = @battler.displayPokemon
    return if pkmn.nil?
    # Calculate width offset for centering if text exceeds HP bar width
    gstr = ""
    gstr = _INTL("♂") if pkmn.gender == 0
    gstr = _INTL("♀") if pkmn.gender == 1
    full = "#{@battler.name}#{gstr}Lv.#{@battler.level}"
    w = bmp.text_size(full).width
    o = (w > @ebdx_hpBarWidth + 4) ? ((w - (@ebdx_hpBarWidth + 4)) / 2.0).ceil : 0
    # Name
    name = (@battler.name || "") + " "
    color = pkmn.shiny? ? Color.new(222, 197, 95) : Color.white
    begin; color = Color.new(105, 73, 136) if pkmn.shadowPokemon?; rescue; end
    pbDrawOutlineText(bmp, 18 - o, 7, bmp.width - 40, bmp.height, name,
                      color, Color.new(0, 0, 0), 0)
    # Gender
    if gstr != ""
      gx = bmp.text_size(name).width + 18
      gc = (pkmn.gender == 0) ? Color.new(53, 107, 208) : Color.new(180, 37, 77)
      pbDrawOutlineText(bmp, gx - o - 2, 7, bmp.width - 40, bmp.height, gstr,
                        gc, Color.new(0, 0, 0), 0)
    end
    # Level (right-aligned)
    lstr = "Lv.#{@battler.level}"
    pbDrawOutlineText(bmp, 18 + o + 20, 7, bmp.width - 42, bmp.height, lstr,
                      Color.white, Color.new(0, 0, 0), 2)
  end

  #-----------------------------------------------------------------------------
  #  Draw mega / primal icon
  #-----------------------------------------------------------------------------
  def ebdx_db_draw_mega
    return unless @ebdx_megaSprite
    if @battler.mega? && @ebdx_megaBmp
      @ebdx_megaSprite.bitmap = @ebdx_megaBmp
    elsif @battler.primal?
      f = nil
      f = "Graphics/UI/Battle/icon_primal_Kyogre" if @battler.isSpecies?(:KYOGRE)
      f = "Graphics/UI/Battle/icon_primal_Groudon" if @battler.isSpecies?(:GROUDON)
      @ebdx_megaSprite.bitmap = f ? pbBitmap(f) : nil
    else
      @ebdx_megaSprite.bitmap = nil
    end
  end

  #-----------------------------------------------------------------------------
  #  refresh_hp — EBDX barColors + zoom_x HP bar
  #-----------------------------------------------------------------------------
  alias ebdx_db_refresh_hp refresh_hp
  def refresh_hp
    return ebdx_db_refresh_hp unless @ebdx_db_available && @ebdx_db_loaded
    return if !@battler.pokemon
    # Color zone: green(0) / yellow(1) / red(2)
    zone = 0
    zone = 1 if self.hp <= @battler.totalhp * 0.5
    zone = 2 if self.hp <= @battler.totalhp * 0.25
    @ebdx_hpSprite.bitmap.blt(0, 0, @ebdx_barColors, Rect.new(zone * 2, 0, 2, 6))
    hpfrac = (@battler.totalhp == 0) ? 0 :
             (self.hp * @ebdx_hpBarWidth / @battler.totalhp.to_f)
    @ebdx_hpSprite.zoom_x = hpfrac
    # HP text
    @ebdx_textHP.bitmap.clear
    if @ebdx_db_showhp
      str = "#{self.hp.to_i}/#{@battler.totalhp}"
      pbDrawTextPositions(@ebdx_textHP.bitmap,
        [[str, @ebdx_textHP.bitmap.width, 0, :right, Color.white, Color.new(0, 0, 0)]])
    end
  end

  #-----------------------------------------------------------------------------
  #  refresh_exp — EBDX zoom_x EXP bar
  #-----------------------------------------------------------------------------
  alias ebdx_db_refresh_exp refresh_exp
  def refresh_exp
    return ebdx_db_refresh_exp unless @ebdx_db_available && @ebdx_db_loaded
    @ebdx_expSprite.zoom_x = @ebdx_db_showexp ? exp_fraction * @ebdx_expBarWidth : 0
  end

  #-----------------------------------------------------------------------------
  #  update — hide standard + status icon + tint fade
  #-----------------------------------------------------------------------------
  alias ebdx_db_update update
  def update
    ebdx_db_update
    return unless @ebdx_db_available && @ebdx_db_loaded
    ebdx_db_hide_standard
    ebdx_db_update_status
    @ebdx_base.color.alpha -= 16 if @ebdx_base.color.alpha > 0
  end

  #-----------------------------------------------------------------------------
  #  Update status icon display
  #-----------------------------------------------------------------------------
  def ebdx_db_update_status
    return unless @ebdx_statusSprite&.bitmap
    if @battler.status == :NONE
      s = 0
    elsif @battler.status == :POISON && @battler.statusCount > 0
      s = GameData::Status.count - 1
    else
      s = GameData::Status.get(@battler.status).icon_position
    end
    @ebdx_statusSprite.src_rect.y     = @ebdx_statusSprite.src_rect.height * [s - 1, 0].max
    @ebdx_statusSprite.src_rect.width = (s > 0) ? @ebdx_statusSprite.bitmap.width : 0
  end

  #-----------------------------------------------------------------------------
  #  dispose — clean up manually-created bitmaps
  #-----------------------------------------------------------------------------
  alias ebdx_db_dispose dispose
  def dispose
    if @ebdx_db_available
      @ebdx_hpSprite&.bitmap&.dispose
      @ebdx_expSprite&.bitmap&.dispose
      @ebdx_textName&.bitmap&.dispose
      @ebdx_textHP&.bitmap&.dispose
      # Dispose the PE standard sprites we removed from the hash
      @_pe_hpBar&.dispose
      @_pe_expBar&.dispose
      @_pe_hpNumbers&.dispose
    end
    ebdx_db_dispose
  end
end
