#===============================================================================
# Boss Battles — Passive Ability System
# Allows boss Pokemon to have a second ability active alongside their primary.
#===============================================================================

#===============================================================================
# Battler extensions for passive ability.
#===============================================================================
class Battle::Battler
  #-----------------------------------------------------------------------------
  # Returns the passive ability ID, or nil if none.
  #-----------------------------------------------------------------------------
  def passiveAbility
    return nil if !isBoss?
    pa = @effects[PBEffects::BossPassiveAbility]
    return pa if pa && GameData::Ability.exists?(pa)
    return nil
  end

  #-----------------------------------------------------------------------------
  # Check if the battler has a specific passive ability.
  #-----------------------------------------------------------------------------
  def hasPassiveAbility?(check_ability)
    pa = passiveAbility
    return false if !pa
    if check_ability.is_a?(Array)
      return check_ability.include?(pa)
    end
    return pa == check_ability
  end

  #-----------------------------------------------------------------------------
  # Override hasActiveAbility? to also check passive ability.
  # This is the broadest single hook — catches most ability checks in the codebase.
  #-----------------------------------------------------------------------------
  alias boss_hasActiveAbility? hasActiveAbility?
  def hasActiveAbility?(check_ability, ignore_fainted = false)
    return true if boss_hasActiveAbility?(check_ability, ignore_fainted)
    return false if !isBoss?
    return false if @effects[PBEffects::GastroAcid]
    return false if !ignore_fainted && fainted?
    return hasPassiveAbility?(check_ability)
  end
end

#===============================================================================
# Damage calc integration — trigger passive ability effects.
# The normal damage calc only triggers effects for user.ability / target.ability.
# We explicitly fire triggers for the passive ability as well.
#===============================================================================
class Battle::Move
  alias boss_pbCalcDamageMults_Abilities pbCalcDamageMults_Abilities
  def pbCalcDamageMults_Abilities(user, target, numTargets, type, baseDmg, multipliers)
    boss_pbCalcDamageMults_Abilities(user, target, numTargets, type, baseDmg, multipliers)
    # Trigger passive ability effects for the user (if boss attacker)
    if user.isBoss? && user.passiveAbility && user.abilityActive?
      pa = user.passiveAbility
      if pa != user.ability_id
        Battle::AbilityEffects.triggerDamageCalcFromUser(
          pa, user, target, self, multipliers, baseDmg, type
        )
      end
    end
    # Trigger passive ability effects for the target (if boss defender)
    if target.isBoss? && target.passiveAbility
      pa = target.passiveAbility
      if pa != target.ability_id
        if !@battle.moldBreaker && target.abilityActive?
          Battle::AbilityEffects.triggerDamageCalcFromTarget(
            pa, user, target, self, multipliers, baseDmg, type
          )
        end
        if target.abilityActive?
          Battle::AbilityEffects.triggerDamageCalcFromTargetNonIgnorable(
            pa, user, target, self, multipliers, baseDmg, type
          )
        end
      end
    end
  end
end

# NOTE: Passive ability switch-in trigger is handled in Boss_MidbattleHandler.rb
# at "RoundStartCommand_1_foe" since the passive ability PBEffect is not set
# until that point. The hasActiveAbility? override above catches ongoing checks.
