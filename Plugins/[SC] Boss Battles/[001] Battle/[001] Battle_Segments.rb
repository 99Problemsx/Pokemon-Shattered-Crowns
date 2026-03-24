#===============================================================================
# Boss Battles — Segmented HP & Shield Breaks (Core Mechanic)
#===============================================================================

#===============================================================================
# Extend DamageState to track boss overflow.
#===============================================================================
class Battle::DamageState
  attr_accessor :boss_overflow

  alias boss_reset reset
  def reset
    boss_reset
    @boss_overflow = 0
  end
end

#===============================================================================
# Damage capping at shield segment boundaries.
# Chains after DBK's dx_pbReduceDamage (at Damage Calc Refactor.rb:352).
#===============================================================================
class Battle::Move
  alias boss_pbReduceDamage pbReduceDamage
  def pbReduceDamage(user, target)
    boss_pbReduceDamage(user, target)
    return if !target.isBoss?
    return if target.bossShieldCurrent <= 0
    return if target.damageState.disguise || target.damageState.iceFace
    return if target.damageState.substitute
    damage = target.damageState.hpLost
    return if damage <= 0
    # Find the next segment boundary below current HP
    next_boundary = target.nextSegmentBoundary
    return if next_boundary <= 0
    return if target.hp <= next_boundary
    # Cap damage so HP stops at the next boundary
    max_damage = target.hp - next_boundary
    if damage > max_damage && max_damage >= 0
      overflow = damage - max_damage
      target.damageState.hpLost       = max_damage
      target.damageState.totalHPLost -= damage
      target.damageState.totalHPLost += max_damage
      target.damageState.boss_overflow = overflow
    end
  end
end

#===============================================================================
# Shield break mechanics on battler.
#===============================================================================
class Battle::Battler
  #-----------------------------------------------------------------------------
  # Called when a shield segment is broken.
  #-----------------------------------------------------------------------------
  def pbBossShieldBreak
    return if !isBoss?
    old_shields = bossShieldCurrent
    @effects[PBEffects::BossShieldCurrent] -= 1
    @effects[PBEffects::BossShieldsLost]   += 1
    shields_lost = bossShieldsLost
    PBDebug.log("[Boss Battle] #{pbThis} shield broken (#{old_shields} => #{bossShieldCurrent})")
    # Visual/sound feedback
    if @battle.scene.respond_to?(:pbDamageAnimation)
      @battle.scene.pbDamageAnimation(self, 0)
    end
    @battle.pbDisplay(_INTL("One of {1}'s shields shattered!", pbThis(true)))
    # Stat boosts on shield break (wild bosses only)
    if Settings::BOSS_SHIELD_BREAK_STAT_BOOST && self.wild?
      stats = [:ATTACK, :DEFENSE, :SPECIAL_ATTACK, :SPECIAL_DEFENSE, :SPEED]
      shields_lost.times do
        stat = stats.sample
        if pbCanRaiseStatStage?(stat, self, nil, true)
          pbRaiseStatStage(stat, 1, self)
        end
      end
    end
    # Refresh the databox to update shield display
    @battle.scene.pbRefreshOne(@index)
    # Fire midbattle trigger (include species & types for species-dependent scripts)
    @battle.pbDeluxeTriggers(@index, nil, "BossShieldBroken", self.species, *@pokemon.types)
  end

  #-----------------------------------------------------------------------------
  # Check if any shield segments were reached after taking damage.
  # Called from the midbattle handler on "TargetTookDamage_foe".
  #-----------------------------------------------------------------------------
  def pbCheckBossSegment
    return if !isBoss?
    return if bossShieldCurrent <= 0
    boundaries = bossSegmentBoundaries
    # Process shield breaks from top boundary down
    # Shield index: 0 = highest boundary, 1 = next, etc.
    # bossShieldCurrent starts at bossShieldMax and decrements
    # The current active boundary index is: bossShieldMax - bossShieldCurrent
    loop do
      break if bossShieldCurrent <= 0
      boundary_idx = bossShieldMax - bossShieldCurrent
      break if boundary_idx >= boundaries.length
      boundary_hp = boundaries[boundary_idx]
      break if @hp > boundary_hp
      pbBossShieldBreak
    end
  end
end
