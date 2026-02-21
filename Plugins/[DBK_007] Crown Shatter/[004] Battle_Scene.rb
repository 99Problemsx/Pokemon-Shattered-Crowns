#===============================================================================
# Crown Shatter — Battle Scene / Fight Menu Integration
#===============================================================================
# Hooks into the DBK fight menu alias chain to display the Shatter button
# and handle player input for toggling Shatter on/off.
#===============================================================================

#===============================================================================
# Battle::Scene — Gimmick Button Handling
#===============================================================================
class Battle::Scene
  #=============================================================================
  # Set special action modes for Shatter
  #=============================================================================
  alias shatter_pbSetSpecialActionModes pbSetSpecialActionModes
  def pbSetSpecialActionModes(idxBattler, specialAction, cw)
    shatter_pbSetSpecialActionModes(idxBattler, specialAction, cw)
    if specialAction == :shatter
      battler = @battle.battlers[idxBattler]
      cw.shatterType = battler.pokemon.types[0] || :NORMAL if cw.respond_to?(:shatterType=)
    end
  end

  #=============================================================================
  # Fight menu — Action key (toggle Shatter)
  #=============================================================================
  alias shatter_pbFightMenu_Action pbFightMenu_Action
  def pbFightMenu_Action(battler, specialAction, cw)
    if specialAction == :shatter
      cw.shatterToggle = !cw.shatterToggle if cw.respond_to?(:shatterToggle=)
      playToggleSE(cw.shatterToggle) if respond_to?(:playToggleSE)
      pbSEPlay("GUI sel decision") rescue nil
      return true  # needs full refresh
    end
    return shatter_pbFightMenu_Action(battler, specialAction, cw)
  end

  #=============================================================================
  # Fight menu — Confirm
  #=============================================================================
  alias shatter_pbFightMenu_Confirm pbFightMenu_Confirm
  def pbFightMenu_Confirm(battler, specialAction, cw)
    if specialAction == :shatter && cw.respond_to?(:shatterToggle) && cw.shatterToggle
      # Shatter is toggled on — will be registered when move is confirmed
    end
    return shatter_pbFightMenu_Confirm(battler, specialAction, cw)
  end

  #=============================================================================
  # Fight menu — Cancel
  #=============================================================================
  alias shatter_pbFightMenu_Cancel pbFightMenu_Cancel
  def pbFightMenu_Cancel(battler, specialAction, cw)
    if specialAction == :shatter && cw.respond_to?(:shatterToggle)
      cw.shatterToggle = false
    end
    return shatter_pbFightMenu_Cancel(battler, specialAction, cw)
  end

  #=============================================================================
  # Fight menu — End
  #=============================================================================
  alias shatter_pbFightMenu_End pbFightMenu_End
  def pbFightMenu_End(battler, specialAction, cw)
    if specialAction == :shatter && cw.respond_to?(:shatterToggle)
      cw.shatterToggle = false
    end
    return shatter_pbFightMenu_End(battler, specialAction, cw)
  end
end

#===============================================================================
# Battle::Scene::FightMenu — Button Display
#===============================================================================
class Battle::Scene::FightMenu < Battle::Scene::MenuBase
  attr_accessor :shatterType
  attr_accessor :shatterToggle

  #=============================================================================
  # Reset toggles
  #=============================================================================
  alias shatter_resetMenuToggles resetMenuToggles
  def resetMenuToggles
    shatter_resetMenuToggles
    @shatterToggle = false
  end

  #=============================================================================
  # Add Shatter button bitmap
  #=============================================================================
  alias shatter_addSpecialActionButtons addSpecialActionButtons
  def addSpecialActionButtons(path)
    shatter_addSpecialActionButtons(path)
    shatter_path = Settings::SHATTER_GRAPHICS_PATH rescue path
    if pbResolveBitmap(shatter_path + "cursor_shatter")
      @actionButtonBitmap[:shatter] = AnimatedBitmap.new(shatter_path + "cursor_shatter")
    else
      # Fallback: use the base path
      @actionButtonBitmap[:shatter] = AnimatedBitmap.new(path + "cursor_shatter") rescue nil
    end
  end

  #=============================================================================
  # Button settings for Shatter
  # Returns [frame_count, frame_index]
  # Uses 2 frames: 0 = inactive, 1 = active/toggled
  #=============================================================================
  alias shatter_getButtonSettings getButtonSettings
  def getButtonSettings
    if @chosenButton == :shatter
      return 2, (@shatterToggle ? 1 : 0)
    end
    return shatter_getButtonSettings
  end
end

#===============================================================================
# PokemonDataBox — Shatter Field Indicator
#===============================================================================
if defined?(Battle::Scene::PokemonDataBox)
  class Battle::Scene::PokemonDataBox
    alias shatter_draw_special_form_icon draw_special_form_icon
    def draw_special_form_icon(battler, _x, _y)
      shatter_draw_special_form_icon(battler, _x, _y)
      # Could draw a crown shard icon when Shatter field is active
      # Placeholder for future sprite work
    end
  end
end
