#===============================================================================
# Boss Battles — Custom Boss Databox
#===============================================================================

#===============================================================================
# Register the :Boss databox style.
# Based on :Long style (vertical animation, max_side_size: 1) but uses
# boss-specific graphics from the Deluxe Databoxes/Boss/ folder.
#===============================================================================
GameData::DataboxStyle.register({
  :id            => :Boss,
  :name          => _INTL("Boss"),
  :sprite_x      => [262, 14],
  :sprite_y      => [114, 14],
  :hp_offset     => [[0, 0], [138, 36]],
  :name_pos      => [[0, 0], [68, 16, :center]],
  :text_offsets  => [[0, 0, 0, 0], [0, 90, 110, 134]],
  :owned_icon    => [10, 27],
  :shiny_icon    => [[0, 0], [10, 25]],
  :status_icon   => [[0, 0], [4, 4]],
  :special_icon  => [[0, 0], [478, 16]],
  :type_pos      => [[-40, 10], [10, 4]],
  :type2_pos     => [[-40, 30], [50, 35]],
  :vertical_anim => true,
  :max_side_size => 1
})

#===============================================================================
# Databox drawing for boss battles.
#===============================================================================
class Battle::Scene::PokemonDataBox
  #-----------------------------------------------------------------------------
  # Alias draw_plugin_elements to add boss shield tick marks and count.
  # Chains after raid_draw_plugin_elements (from Raid Battles plugin).
  #-----------------------------------------------------------------------------
  alias boss_draw_plugin_elements draw_plugin_elements
  def draw_plugin_elements
    boss_draw_plugin_elements
    return if !@battler.isBoss?
    draw_boss_shield_ticks
    draw_boss_shield_count
    draw_boss_passive_ability
  end

  #-----------------------------------------------------------------------------
  # Draw shield segment tick marks directly on the HP bar sprite bitmap.
  # Must draw on @hpBar.bitmap (not self.bitmap) because @hpBar is a separate
  # sprite rendered above the databox — anything on self.bitmap is behind it.
  #-----------------------------------------------------------------------------
  def draw_boss_shield_ticks
    shields_max = @battler.bossShieldMax
    return if shields_max <= 0
    return if !@hpBar || !@hpBar.bitmap
    shields_current = @battler.bossShieldCurrent
    # Save a clean copy once so we can restore before each redraw
    @bossCleanHpBar ||= @hpBar.bitmap.clone
    # Restore clean HP bar pixels first (prevents tick accumulation on refresh)
    @hpBar.bitmap.clear
    @hpBar.bitmap.blt(0, 0, @bossCleanHpBar, @bossCleanHpBar.rect)
    hp_w = @bossCleanHpBar.width
    hp_h = @bossCleanHpBar.height  # full height spans all 3 HP color states
    (1...shields_max + 1).each do |i|
      tick_x = (hp_w * i / (shields_max + 1)).round
      color = (i - 1 < shields_current) ? Color.new(255, 255, 255, 220) : Color.new(100, 100, 100, 120)
      @hpBar.bitmap.fill_rect(tick_x, 0, 2, hp_h, color)
    end
  end

  #-----------------------------------------------------------------------------
  # Draw shield count top-right on the databox, same row as the name.
  # Format: "Shield: X"  — right-aligned so it adapts to any databox width.
  #-----------------------------------------------------------------------------
  def draw_boss_shield_count
    shields_current = @battler.bossShieldCurrent
    shields_max     = @battler.bossShieldMax
    return if shields_max <= 0
    name_y = @displayPos&.[](:name)&.[](1) || 16
    color  = (shields_current > 0) ? Color.new(255, 255, 255, 230) : Color.new(220, 80, 80, 230)
    shadow = Color.new(32, 32, 32)
    pbSetSmallFont(self.bitmap)
    pbDrawTextPositions(self.bitmap,
      [["Shield: #{shields_current}", self.bitmap.width - 70, name_y, 2, color, shadow]])
  end

  #-----------------------------------------------------------------------------
  # Draw passive ability name below the databox.
  #-----------------------------------------------------------------------------
  def draw_boss_passive_ability
    pa = @battler.passiveAbility
    return if !pa
    ability_name = GameData::Ability.get(pa).name rescue return
    hp_x = @hpOffsetXY ? @hpOffsetXY[0] : 0
    hp_y = @hpOffsetXY ? @hpOffsetXY[1] : 0
    textpos = []
    pa_x = hp_x
    pa_y = hp_y + 12
    textpos.push([_INTL("P.A: {1}", ability_name), pa_x, pa_y, :left,
      Color.new(200, 200, 255), Color.new(80, 80, 120), :outline])
    pbDrawTextPositions(self.bitmap, textpos)
  end

  #-----------------------------------------------------------------------------
  # Override draw_style_text for Boss foe: level positioned dynamically beside
  # the name based on measured text width, adapting to long/short names.
  #-----------------------------------------------------------------------------
  alias boss_draw_style_text draw_style_text
  def draw_style_text
    if @style&.id == :Boss && @battler.index.odd?
      _draw_boss_foe_text
    else
      boss_draw_style_text
    end
  end

  # Suppress the Lv graphic drawn at fixed text_offsets[2] for Boss foe, since
  # _draw_boss_foe_text will place it dynamically instead.
  alias boss_draw_style_icons draw_style_icons
  def draw_style_icons
    if @style&.id == :Boss && @battler.index.odd?
      offsets = @displayPos&.[](:text_offsets)
      if offsets
        saved = offsets[2]
        offsets[2] = 9999  # push Lv graphic off-screen; _draw_boss_foe_text places it dynamically
        boss_draw_style_icons
        offsets[2] = saved
      else
        boss_draw_style_icons
      end
    else
      boss_draw_style_icons
    end
  end

  def _draw_boss_foe_text
    namePos = @displayPos[:name]
    textpos  = []
    imagepos = []
    # Resolve display name (mirrors draw_style_text logic)
    display_name = @battler.name
    if @battler.wild? && @title
      display_name = _INTL(@title, @battler.name)
    elsif defined?(@battler.pokemon.memento)
      display_name = @battler.name_title(false)
    end
    textpos.push([display_name, namePos[0], namePos[1], namePos[2], *@nameColors])
    # Measure rendered name width to find where it ends on screen
    name_px = self.bitmap.text_size(display_name).width
    right_edge = case namePos[2]
                 when :center then namePos[0] + (name_px / 2.0).ceil
                 when :right  then namePos[0]
                 else              namePos[0] + name_px
                 end
    cursor_x = right_edge + 4
    # "Lv" graphic then level number
    imagepos.push([@path + "/overlay_lv", cursor_x, namePos[1] + 2])
    cursor_x += 14  # overlay_lv is 14px wide
    level_str = @battler.level.to_s
    textpos.push([level_str, cursor_x, namePos[1], :left, STYLE_BASE_COLOR, STYLE_SHADOW_COLOR])
    cursor_x += self.bitmap.text_size(level_str).width + 4
    # Gender icon after level — 44x22px total, each icon 22x22px
    # male = left half (src_x=0), female = right half (src_x=22)
    gender_path = "Graphics/Plugins/Enhanced Battle UI/info_gender"
    case @battler.gender
    when 0  # Male
      imagepos.push([gender_path, cursor_x, namePos[1] - 5, 0, 0, 22, 22])
    when 1  # Female
      imagepos.push([gender_path, cursor_x, namePos[1] - 5, 22, 0, 22, 22])
    end
    pbDrawTextPositions(self.bitmap, textpos)
    pbDrawImagePositions(self.bitmap, imagepos)
  end
end
