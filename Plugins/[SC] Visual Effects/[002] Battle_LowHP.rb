#===============================================================================
# [SC] Visual Effects — Battle-time Low-HP shader auto-trigger
#===============================================================================
# When the player's active battler drops to ≤ LOW_HP_THRESHOLD * totalhp,
# automatically apply the :low_hp shader to the battle viewport. Remove it
# when the same battler recovers above the threshold or faints / is switched.
#
# Tied to Battle::Scene#pbHPChanged via an unguarded-safe alias chain.
#===============================================================================

module SCVisualFX
  # Battler hp ÷ totalhp at or below which low_hp kicks in.
  LOW_HP_THRESHOLD = 0.25

  # Track which battler indices currently have low_hp active. Reset on battle
  # end so a fresh battle doesn't inherit stale state.
  @low_hp_active = {}

  def self.low_hp_active
    @low_hp_active ||= {}
  end

  def self.reset_low_hp!
    @low_hp_active = {}
  end

  # Apply / remove a shader on the active battle scene's viewport. Falls back
  # to a no-op if not in battle. Identical API to apply_shader, but it targets
  # the battle viewport instead of Spriteset_Map.viewport.
  def self.apply_battle_shader(effect, **properties)
    vp = battle_viewport
    return false unless vp
    if effect.is_a?(Symbol)
      vp.add_shader(effect, properties)
    else
      vp.add_shader(Shader.new(effect))
    end
    true
  end

  def self.remove_battle_shader(effect)
    vp = battle_viewport
    return unless vp
    vp.remove_shader(effect)
  end

  def self.battle_viewport
    return nil unless $game_temp&.in_battle
    scene = $scene
    return nil unless scene.respond_to?(:pbScene)
    bs = scene.pbScene
    return nil unless bs
    bs.instance_variable_get(:@viewport)
  end
end

#===============================================================================
# Hook into pbHPChanged
#===============================================================================
class Battle::Scene
  unless method_defined?(:sc_low_hp_pbHPChanged)
    alias sc_low_hp_pbHPChanged pbHPChanged

    def pbHPChanged(battler, oldHP, showAnim = false)
      sc_low_hp_pbHPChanged(battler, oldHP, showAnim)
      sc_check_low_hp(battler)
    end

    # Check & toggle the :low_hp shader for player-side battlers.
    def sc_check_low_hp(battler)
      return unless battler
      return unless @battle
      # Only react to the player's own battlers (idxOwnSide 0 = player team).
      return unless battler.pbOwnedByPlayer?
      idx        = battler.index
      threshold  = (battler.totalhp * SCVisualFX::LOW_HP_THRESHOLD).floor
      currently  = SCVisualFX.low_hp_active[idx] == true
      should_on  = !battler.fainted? && battler.hp > 0 && battler.hp <= threshold
      return if currently == should_on
      SCVisualFX.low_hp_active[idx] = should_on
      if should_on
        # Only one shader instance needed even with multiple battlers in red.
        SCVisualFX.apply_battle_shader(:low_hp) unless SCVisualFX.low_hp_active.values.count(true) > 1
      else
        # Last battler exiting low HP → remove.
        SCVisualFX.remove_battle_shader(:low_hp) unless SCVisualFX.low_hp_active.values.any? { |v| v }
      end
    end
  end
end

#===============================================================================
# Clean up on battle end so the next battle starts fresh.
#===============================================================================
EventHandlers.add(:on_end_battle, :sc_low_hp_reset,
  proc {
    SCVisualFX.reset_low_hp!
  }
)
