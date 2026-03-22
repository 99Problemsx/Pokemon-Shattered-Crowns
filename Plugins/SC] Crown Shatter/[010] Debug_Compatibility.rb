#===============================================================================
# Crown Shatter — Debug & Compatibility
#===============================================================================
# Debug menu entries for testing Shatter Fields, plus compatibility patches
# for edge cases with other plugins.
#===============================================================================

#===============================================================================
# Debug Menu — Shatter Field Controls
#===============================================================================
if defined?(Battle::DebugVariables)
  Battle::DebugVariables::FIELD_EFFECTS[PBEffects::ShatterField] = {
    name: "Shatter Field turns remaining", default: 0
  }
end

#===============================================================================
# Battle Debug Extension — Set Shatter Field from debug console
#===============================================================================
class Battle
  #=============================================================================
  # Debug: Force a Shatter Field
  #=============================================================================
  def debugSetShatterField(type, duration = nil)
    type = type.to_s.upcase.to_sym if type.is_a?(String)
    field_data = CrownShatter::SHATTER_FIELDS[type]
    return false unless field_data
    duration ||= Settings::SHATTER_FIELD_DURATION rescue 5
    @field.effects[PBEffects::ShatterField]     = duration
    @field.effects[PBEffects::ShatterFieldType] = type
    pbDisplay(_INTL("[DEBUG] {1} activated for {2} turns.", field_data[:name], duration))
    apply_shatter_immediate_effects(type, field_data, 0)
    return true
  end

  #=============================================================================
  # Debug: Clear Shatter Field
  #=============================================================================
  def debugClearShatterField
    if shatterFieldActive?
      type = shatterFieldType
      field_data = CrownShatter::SHATTER_FIELDS[type]
      @field.effects[PBEffects::ShatterField]     = 0
      @field.effects[PBEffects::ShatterFieldType] = nil
      end_msg = field_data ? field_data[:end_message] : "The Shatter Field faded."
      pbDisplay(_INTL("[DEBUG] {1}", end_msg))
    else
      pbDisplay("[DEBUG] No Shatter Field is active.")
    end
  end

  #=============================================================================
  # Debug: Reset Shatter availability for both sides
  #=============================================================================
  def debugResetShatter
    2.times do |side|
      @sides[side].effects[PBEffects::ShatterUsed] = false
      @crown_shatter[side].length.times do |i|
        @crown_shatter[side][i] = -1
      end
    end
    pbDisplay("[DEBUG] Crown Shatter reset for both sides.")
  end
end

#===============================================================================
# Compatibility: NilSafeEffects wrapper (if AAI Hotfixes.rb is loaded)
#===============================================================================
if defined?(AdvancedAI) && defined?(NilSafeEffects)
  # Ensure ShatterField and ShatterFieldType are covered by nil-safe access
  # NilSafeEffects returns 0 for numeric and false for boolean by default,
  # but ShatterFieldType is a Symbol — handle nil explicitly
end

#===============================================================================
# Compatibility: Deluxe Battle Kit databox
# Ensures the Shatter Field name is displayed if a custom databox shows
# active field effects.
#===============================================================================
if defined?(Battle::Scene::PokemonDataBox)
  class Battle::Scene::PokemonDataBox
    def shatter_field_label
      return nil unless @battler && @battler.battle.shatterFieldActive?
      CrownShatter.field_name(@battler.battle.shatterFieldType)
    end
  end
end

#===============================================================================
# Compatibility: Safari Battle stub
#===============================================================================
if defined?(SafariBattle)
  class SafariBattle
    def shatterFieldActive?; false; end
    def shatterFieldType; nil; end
  end
end

#===============================================================================
# FakeBattler stub (for preview screens etc.)
#===============================================================================
if defined?(Battle::FakeBattler)
  class Battle::FakeBattler
    def shattered?; false; end
  end
end

#===============================================================================
# Registration message
#===============================================================================
echoln "[Crown Shatter] Plugin v1.0.0 loaded successfully." if defined?(echoln)
