#===============================================================================
#  [SC] EBDX Battle UI — Stat Boost Overlay
#  Ported from EBDX Stat Boost Overlay (Phantombass, Peti) for SC + DBK
#  Displays stat stage change icons next to each DataBox during battle.
#  Uses changes_*.png spritesheets (48×26 per frame, 2 cols × 6 rows)
#===============================================================================

class Battle::Scene::PokemonDataBox < Sprite
  STAT_OVERLAY_ICON_W  = 48
  STAT_OVERLAY_ICON_H  = 26
  STAT_OVERLAY_AMOUNT  = 7
  STAT_OVERLAY_KEYS    = [
    :ATTACK, :DEFENSE, :SPECIAL_ATTACK, :SPECIAL_DEFENSE,
    :SPEED, :ACCURACY, :EVASION
  ]

  #-----------------------------------------------------------------------------
  #  Hook into sprite creation — add stat overlay sprites after DataBox setup
  #-----------------------------------------------------------------------------
  alias ebdx_stat_overlay_create ebdx_db_create_sprites
  def ebdx_db_create_sprites(viewport, sideSize)
    ebdx_stat_overlay_create(viewport, sideSize)
    return unless @ebdx_db_available
    ebdx_create_stat_boost_sprites(viewport, sideSize)
  end

  def ebdx_create_stat_boost_sprites(viewport, sideSize)
    player = @ebdx_db_player
    single = (sideSize <= 1)

    # Positioning config (matches original EBDX Stat Boost Overlay)
    sXp = 172;  sYp = single ? -46 : -36
    sXe = 4;    sYe = single ?  22 :  14
    sXoffset = 46;  sYoffset = 22
    statswidth = 4
    doubles_single_line = true

    @ebdx_boost_sprites = []
    @ebdx_boost_offsets = []

    STAT_OVERLAY_AMOUNT.times do |i|
      bX = player ? sXp : sXe
      bY = player ? sYp : sYe
      offX = player ? sXoffset : -sXoffset
      offY = player ? sYoffset : -sYoffset
      stack = single || !doubles_single_line
      xPow = stack ? (i % statswidth) : i
      yPow = stack ? (i / statswidth) : 0

      ox = bX - offX * xPow
      oy = bY - offY * yPow

      spr = Sprite.new(viewport)
      spr.bitmap = nil
      spr.z = self.z + 1
      spr.visible = false
      @sprites["ebdx_boost_#{i}"] = spr
      @ebdx_boost_sprites << spr
      @ebdx_boost_offsets << [ox, oy]
    end
  end

  #-----------------------------------------------------------------------------
  #  Extend x= — position boost sprites relative to base
  #-----------------------------------------------------------------------------
  alias :ebdx_stat_boost_x= :x=
  def x=(value)
    self.ebdx_stat_boost_x = value
    return unless @ebdx_boost_sprites
    @ebdx_boost_sprites.each_with_index do |spr, i|
      spr.x = @ebdx_base.x + @ebdx_boost_offsets[i][0]
    end
  end

  #-----------------------------------------------------------------------------
  #  Extend y= — position boost sprites relative to base
  #-----------------------------------------------------------------------------
  alias :ebdx_stat_boost_y= :y=
  def y=(value)
    self.ebdx_stat_boost_y = value
    return unless @ebdx_boost_sprites
    @ebdx_boost_sprites.each_with_index do |spr, i|
      spr.y = @ebdx_base.y + @ebdx_boost_offsets[i][1]
    end
  end

  #-----------------------------------------------------------------------------
  #  Extend z= — keep boost sprites above base
  #-----------------------------------------------------------------------------
  alias :ebdx_stat_boost_z= :z=
  def z=(value)
    self.ebdx_stat_boost_z = value
    return unless @ebdx_boost_sprites
    @ebdx_boost_sprites.each { |spr| spr.z = value + 1 }
  end

  #-----------------------------------------------------------------------------
  #  Extend update — refresh stat boost sprites each frame
  #-----------------------------------------------------------------------------
  alias ebdx_stat_boost_update update
  def update
    ebdx_stat_boost_update
    return unless @ebdx_boost_sprites && @ebdx_db_available && @ebdx_db_loaded
    return unless @battler&.pokemon
    ebdx_update_stat_boosts
  end

  def ebdx_update_stat_boosts
    # Collect stats that have non-zero stages
    boosted = []
    STAT_OVERLAY_KEYS.each do |stat|
      boosted << stat if @battler.stages[stat] != 0
    end

    # Assign sprites
    STAT_OVERLAY_AMOUNT.times do |i|
      spr = @ebdx_boost_sprites[i]
      db_visible = @ebdx_base&.visible rescue false
      if i < boosted.length && db_visible
        stat = boosted[i]
        bmp_path = EBDX_DB_PATH + "changes_#{GameData::Stat.get(stat).name_brief}"
        if pbResolveBitmap(bmp_path)
          spr.bitmap = pbBitmap(bmp_path)
          stage = @battler.stages[stat]
          sx = STAT_OVERLAY_ICON_W * (stage > 0 ? 0 : 1)
          sy = STAT_OVERLAY_ICON_H * (stage.abs - 1)
          spr.src_rect.set(sx, sy, STAT_OVERLAY_ICON_W, STAT_OVERLAY_ICON_H)
          spr.visible = true
        else
          spr.bitmap = nil
          spr.visible = false
        end
      else
        spr.bitmap = nil
        spr.visible = false
      end
    end
  end

  #-----------------------------------------------------------------------------
  #  Extend dispose — clean up boost sprites
  #-----------------------------------------------------------------------------
  alias ebdx_stat_boost_dispose dispose
  def dispose
    @ebdx_boost_sprites&.each { |spr| spr&.dispose }
    ebdx_stat_boost_dispose
  end
end
