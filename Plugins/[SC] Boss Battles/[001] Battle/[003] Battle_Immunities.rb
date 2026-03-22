#===============================================================================
# Boss Battles — Move Immunities & OHKO Override
#===============================================================================

#===============================================================================
# Pain Split — fails against bosses.
#===============================================================================
class Battle::Move::UserTargetAverageHP < Battle::Move
  alias boss_pbFailsAgainstTarget? pbFailsAgainstTarget?
  def pbFailsAgainstTarget?(user, target, show_message)
    if target.isBoss?
      if show_message
        @battle.pbDisplay(_INTL("{1} is completely immune to that move!", target.pbThis))
      end
      return true
    end
    return boss_pbFailsAgainstTarget?(user, target, show_message)
  end
end

#===============================================================================
# Endeavor — fails against bosses.
#===============================================================================
class Battle::Move::LowerTargetHPToUserHP < Battle::Move::FixedDamageMove
  alias boss_pbFailsAgainstTarget? pbFailsAgainstTarget?
  def pbFailsAgainstTarget?(user, target, show_message)
    if target.isBoss?
      if show_message
        @battle.pbDisplay(_INTL("{1} is completely immune to that move!", target.pbThis))
      end
      return true
    end
    return boss_pbFailsAgainstTarget?(user, target, show_message)
  end
end

#===============================================================================
# OHKO moves — deal 250 BP damage instead of instant KO against bosses.
# Our alias wraps around DBK's dx_pbFailsAgainstTarget? (which checks
# hasBossImmunity?(:OHKO)). Since [DBK_010] loads after [DBK_000], our alias
# runs first, intercepting boss targets before DBK's immunity check.
#===============================================================================
class Battle::Move::OHKO < Battle::Move::FixedDamageMove
  alias boss_pbFailsAgainstTarget? pbFailsAgainstTarget?
  def pbFailsAgainstTarget?(user, target, show_message)
    # For boss targets (that aren't raid bosses), allow the move through
    if target.isBoss? && !target.isRaidBoss?
      # Still check level requirement from base game
      if target.level > user.level
        @battle.pbDisplay(_INTL("{1} is unaffected!", target.pbThis)) if show_message
        return true
      end
      # Still check Sturdy
      if target.hasActiveAbility?(:STURDY) && !@battle.moldBreaker
        if show_message
          @battle.pbShowAbilitySplash(target)
          if Battle::Scene::USE_ABILITY_SPLASH
            @battle.pbDisplay(_INTL("But it failed to affect {1}!", target.pbThis(true)))
          else
            @battle.pbDisplay(_INTL("But it failed to affect {1} because of its {2}!",
                                    target.pbThis(true), target.abilityName))
          end
          @battle.pbHideAbilitySplash(target)
        end
        return true
      end
      return false
    end
    return boss_pbFailsAgainstTarget?(user, target, show_message)
  end

  alias boss_pbFixedDamage pbFixedDamage
  def pbFixedDamage(user, target)
    # For boss targets, calculate standard damage using 250 BP
    if target.isBoss? && !target.isRaidBoss?
      bp = Settings::BOSS_OHKO_REPLACEMENT_BP
      # Use physical or special stats based on move category
      if physicalMove?
        atk_stat = user.attack
        atk_stage = user.stages[:ATTACK]
        def_stat = target.defense
        def_stage = target.stages[:DEFENSE]
      else
        atk_stat = user.spatk
        atk_stage = user.stages[:SPECIAL_ATTACK]
        def_stat = target.spdef
        def_stage = target.stages[:SPECIAL_DEFENSE]
      end
      # Apply stat stage multipliers
      max_stage = Battle::Battler::STAT_STAGE_MAXIMUM
      mul = Battle::Battler::STAT_STAGE_MULTIPLIERS
      div = Battle::Battler::STAT_STAGE_DIVISORS
      atk_val = (atk_stat.to_f * mul[max_stage + atk_stage] / div[max_stage + atk_stage]).floor
      def_val = (def_stat.to_f * mul[max_stage + def_stage] / div[max_stage + def_stage]).floor
      atk_val = [atk_val, 1].max
      def_val = [def_val, 1].max
      # Standard damage formula
      damage = ((((2.0 * user.level / 5) + 2).floor * bp * atk_val / def_val).floor / 50).floor + 2
      # Apply STAB
      if user.pbHasType?(@type)
        damage = user.hasActiveAbility?(:ADAPTABILITY) ? (damage * 2) : (damage * 1.5).round
      end
      # Random variation (85-100%)
      random = 85 + @battle.pbRandom(16)
      damage = (damage * random / 100.0).floor
      return [damage, 1].max
    end
    return boss_pbFixedDamage(user, target)
  end

  alias boss_pbHitEffectivenessMessages pbHitEffectivenessMessages
  def pbHitEffectivenessMessages(user, target, numTargets = 1)
    if target.isBoss? && !target.isRaidBoss?
      # Don't display "It's a one-hit KO!" for boss targets
      return
    end
    boss_pbHitEffectivenessMessages(user, target, numTargets)
  end
end
