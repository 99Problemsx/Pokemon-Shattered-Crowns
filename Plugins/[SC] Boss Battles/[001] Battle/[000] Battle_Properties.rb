#===============================================================================
# Boss Battles — Battle & Battler Properties
#===============================================================================

#===============================================================================
# Battle class extensions.
#===============================================================================
class Battle
  attr_accessor :bossRules

  alias boss_initialize initialize
  def initialize(*args)
    boss_initialize(*args)
    @bossRules = {}
  end

  def isBossBattle?
    allOtherSideBattlers.each { |b| return true if b.isBoss? }
    return false
  end
end

#===============================================================================
# Battler class extensions.
#===============================================================================
class Battle::Battler
  #-----------------------------------------------------------------------------
  # Initialize boss effects.
  #-----------------------------------------------------------------------------
  alias boss_pbInitEffects pbInitEffects
  def pbInitEffects(batonPass)
    boss_pbInitEffects(batonPass)
    @effects[PBEffects::BossShieldMax]      = 0
    @effects[PBEffects::BossShieldCurrent]  = 0
    @effects[PBEffects::BossShieldsLost]    = 0
    @effects[PBEffects::BossPassiveAbility] = nil
  end

  #-----------------------------------------------------------------------------
  # Returns true if this battler is a boss (foe side only).
  #-----------------------------------------------------------------------------
  def isBoss?
    return false if self.idxOwnSide == 0
    return @pokemon&.boss_pokemon == true
  end

  #-----------------------------------------------------------------------------
  # Convenience accessors for boss shield effects.
  #-----------------------------------------------------------------------------
  def bossShieldMax
    return @effects[PBEffects::BossShieldMax]
  end

  def bossShieldCurrent
    return @effects[PBEffects::BossShieldCurrent]
  end

  def bossShieldsLost
    return @effects[PBEffects::BossShieldsLost]
  end

  #-----------------------------------------------------------------------------
  # Returns an array of HP values at each segment boundary.
  # For N shields, the HP bar is divided into N+1 equal segments.
  # Boundaries (from top to bottom) are at:
  #   totalhp * N/(N+1), totalhp * (N-1)/(N+1), ..., totalhp * 1/(N+1)
  #-----------------------------------------------------------------------------
  def bossSegmentBoundaries
    return [] if bossShieldMax <= 0
    boundaries = []
    segments = bossShieldMax + 1
    (1..bossShieldMax).each do |i|
      boundary_hp = (@totalhp * (segments - i).to_f / segments).round
      boundaries.push(boundary_hp)
    end
    return boundaries
  end

  #-----------------------------------------------------------------------------
  # Returns the next segment boundary below current HP, or 0 if below all.
  #-----------------------------------------------------------------------------
  def nextSegmentBoundary
    boundaries = bossSegmentBoundaries
    boundaries.each do |b|
      return b if @hp > b
    end
    return 0
  end
end
