#===============================================================================
# Crown Shatter — Move & Damage Modifiers
#===============================================================================
# Hooks into the damage calculation and move validity checks to apply
# Shatter Field effects during battle.
#===============================================================================

#===============================================================================
# Battle::Move — Damage Modifiers
#===============================================================================
class Battle::Move
  #=============================================================================
  # Type effectiveness overrides
  #=============================================================================
  alias shatter_pbCalcTypeModSingle pbCalcTypeModSingle
  def pbCalcTypeModSingle(moveType, defType, user, target)
    ret = shatter_pbCalcTypeModSingle(moveType, defType, user, target)
    # Ghost: Spirit Field — Normal/Fighting hit Ghost types (neutrally)
    if @battle.shatterFieldActive? && @battle.shatterFieldType == :GHOST
      field_data = CrownShatter::SHATTER_FIELDS[:GHOST]
      if field_data && field_data[:effects][:normal_hits_ghost]
        if (moveType == :NORMAL || moveType == :FIGHTING) && defType == :GHOST
          ret = Effectiveness::NORMAL_EFFECTIVE_MULTIPLIER
        end
      end
    end
    return ret
  end

  #=============================================================================
  # Base damage modifiers
  #=============================================================================
  alias shatter_pbBaseDamage pbBaseDamage
  def pbBaseDamage(baseDmg, user, target)
    baseDmg = shatter_pbBaseDamage(baseDmg, user, target)
    return baseDmg unless @battle.shatterFieldActive?
    shatter_type = @battle.shatterFieldType
    field_data = CrownShatter::SHATTER_FIELDS[shatter_type]
    return baseDmg unless field_data
    effects = field_data[:effects] || {}
    move_type = pbCalcType(user) rescue type
    #---------------------------------------------------------------------------
    # Primary type boost
    #---------------------------------------------------------------------------
    if move_type == shatter_type
      boost = Settings::SHATTER_TYPE_BOOST rescue 1.3
      baseDmg = (baseDmg * boost).round
    end
    #---------------------------------------------------------------------------
    # Weaken type (Fire: Ice halved)
    #---------------------------------------------------------------------------
    if effects[:weaken_type] && move_type == effects[:weaken_type]
      baseDmg = (baseDmg * 0.5).round
    end
    #---------------------------------------------------------------------------
    # Block type (Water: Ground fails, Fairy: Dragon fails)
    #---------------------------------------------------------------------------
    if effects[:block_type] && move_type == effects[:block_type]
      # Ground moves fail in Flooded Field except vs Flying
      if shatter_type == :WATER
        unless target.pbHasType?(:FLYING)
          baseDmg = 0
        end
      else
        baseDmg = 0
      end
    end
    #---------------------------------------------------------------------------
    # Fire boost in Grass field (burning thicket)
    #---------------------------------------------------------------------------
    if effects[:fire_boost] && move_type == :FIRE
      baseDmg = (baseDmg * effects[:fire_boost]).round
    end
    #---------------------------------------------------------------------------
    # Ground boost in Electric field (conductor)
    #---------------------------------------------------------------------------
    if effects[:ground_boost] && move_type == :GROUND
      baseDmg = (baseDmg * effects[:ground_boost]).round
    end
    return baseDmg
  end

  #=============================================================================
  # Accuracy modifiers
  #=============================================================================
  alias shatter_pbBaseAccuracy pbBaseAccuracy
  def pbBaseAccuracy(user, target)
    acc = shatter_pbBaseAccuracy(user, target)
    return acc unless @battle.shatterFieldActive?
    shatter_type = @battle.shatterFieldType
    field_data = CrownShatter::SHATTER_FIELDS[shatter_type]
    return acc unless field_data
    effects = field_data[:effects] || {}
    #---------------------------------------------------------------------------
    # Psychic: Warped Field — all moves -10% accuracy, status moves can't miss
    #---------------------------------------------------------------------------
    if effects[:accuracy_drop]
      if statusMove?
        acc = 0 if effects[:status_perfect]  # 0 = can't miss in Essentials
      else
        acc = (acc * (100 - effects[:accuracy_drop]) / 100.0).round if acc > 0
      end
    end
    return acc
  end

  #=============================================================================
  # Move failure checks
  #=============================================================================
  alias shatter_pbMoveFailed? pbMoveFailed?
  def pbMoveFailed?(user, targets)
    if @battle.shatterFieldActive?
      shatter_type = @battle.shatterFieldType
      effects = (CrownShatter::SHATTER_FIELDS[shatter_type] || {})[:effects] || {}
      #-------------------------------------------------------------------------
      # Fighting: Arena Field — priority moves disabled
      #-------------------------------------------------------------------------
      if effects[:block_priority] && self.priority > 0
        @battle.pbDisplay(_INTL("{1}'s priority move was blocked by the Arena Field!", user.pbThis))
        return true
      end
      #-------------------------------------------------------------------------
      # Flying: Gale Field — weight-based moves fail
      #-------------------------------------------------------------------------
      if effects[:block_weight_moves]
        weight_moves = [:HEAVYSLAM, :HEATCRASH, :LOWKICK, :GRASSKNOT]
        if weight_moves.include?(@id)
          @battle.pbDisplay(_INTL("{1}'s weight-based move failed in the Gale Field!", user.pbThis))
          return true
        end
      end
      #-------------------------------------------------------------------------
      # Steel: Iron Field — sound-based moves fail
      #-------------------------------------------------------------------------
      if effects[:block_sound_moves] && soundMove?
        @battle.pbDisplay(_INTL("{1}'s sound move was muffled by the Iron Field!", user.pbThis))
        return true
      end
      #-------------------------------------------------------------------------
      # Dragon: Primordial Field — multi-hit moves fail
      #-------------------------------------------------------------------------
      if effects[:block_multihit]
        if pbNumHits(user, []) > 1 rescue false
          @battle.pbDisplay(_INTL("{1}'s multi-hit move was disrupted by the Primordial Field!", user.pbThis))
          return true
        end
      end
    end
    return shatter_pbMoveFailed?(user, targets)
  end

  #=============================================================================
  # Additional hit count (Bug: Swarm Field — always max hits)
  #=============================================================================
  alias shatter_pbNumHits pbNumHits
  def pbNumHits(user, targets)
    hits = shatter_pbNumHits(user, targets)
    if @battle.shatterFieldActive? && @battle.shatterFieldType == :BUG
      effects = (CrownShatter::SHATTER_FIELDS[:BUG] || {})[:effects] || {}
      if effects[:max_multihit] && hits > 1
        # Multi-hit moves hit maximum (5 for most, or the move-specific max)
        hits = [hits, 5].max
      end
    end
    return hits
  end

  #=============================================================================
  # Critical hit rate (Dragon: Primordial Field — +1 crit stage)
  #=============================================================================
  alias shatter_pbCalcCriticalHitChance pbCalcCriticalHitChance
  def pbCalcCriticalHitChance(user, target, c)
    c = shatter_pbCalcCriticalHitChance(user, target, c)
    if @battle.shatterFieldActive? && @battle.shatterFieldType == :DRAGON
      effects = (CrownShatter::SHATTER_FIELDS[:DRAGON] || {})[:effects] || {}
      c += effects[:crit_boost] if effects[:crit_boost]
    end
    return c
  end

  #=============================================================================
  # Flinch chance (Ground: Quake Field — +10% flinch)
  #=============================================================================
  alias shatter_pbFlinchChance pbFlinchChance
  def pbFlinchChance(user, target, move)
    ret = shatter_pbFlinchChance(user, target, move)
    if @battle.shatterFieldActive? && @battle.shatterFieldType == :GROUND
      effects = (CrownShatter::SHATTER_FIELDS[:GROUND] || {})[:effects] || {}
      if effects[:flinch_chance]
        ret += effects[:flinch_chance]
      end
    end
    return ret
  end
end

#===============================================================================
# Battle::Battler — Contact Paralysis (Electric: Charged Field)
#===============================================================================
class Battle::Battler
  alias shatter_pbEffectsOnMakingHit pbEffectsOnMakingHit
  def pbEffectsOnMakingHit(move, user, target)
    shatter_pbEffectsOnMakingHit(move, user, target)
    if @battle.shatterFieldActive? && @battle.shatterFieldType == :ELECTRIC
      effects = (CrownShatter::SHATTER_FIELDS[:ELECTRIC] || {})[:effects] || {}
      if effects[:contact_paralysis] && move.contactMove?
        if target.pbCanParalyze?(user, false) && rand(100) < effects[:contact_paralysis]
          target.pbParalyze(user, _INTL("{1} was paralysed by the Charged Field!", target.pbThis))
        end
      end
    end
  end

  #=============================================================================
  # Stat drop inversion (Fairy: Enchanted Field)
  #=============================================================================
  alias shatter_pbLowerStatStage pbLowerStatStage
  def pbLowerStatStage(stat, increment, user, showAnim = true, ignoreContrary = false)
    if @battle.shatterFieldActive? && @battle.shatterFieldType == :FAIRY
      effects = (CrownShatter::SHATTER_FIELDS[:FAIRY] || {})[:effects] || {}
      if effects[:invert_stat_drops] && !ignoreContrary
        @battle.pbDisplay(_INTL("The Enchanted Field reversed the stat drop!"))
        return pbRaiseStatStage(stat, increment, user, showAnim)
      end
    end
    return shatter_pbLowerStatStage(stat, increment, user, showAnim, ignoreContrary)
  end

  #=============================================================================
  # Ground immunity override (Ground: Quake Field — negate Levitate)
  # Flying: Gale Field — grant Levitate
  #=============================================================================
  alias shatter_airborne? airborne?
  def airborne?
    if @battle.shatterFieldActive?
      # Quake Field: negate Levitate/Flying for Ground immunity
      if @battle.shatterFieldType == :GROUND
        effects = (CrownShatter::SHATTER_FIELDS[:GROUND] || {})[:effects] || {}
        return false if effects[:negate_levitate]
      end
      # Gale Field: all mons are airborne
      if @battle.shatterFieldType == :FLYING
        effects = (CrownShatter::SHATTER_FIELDS[:FLYING] || {})[:effects] || {}
        return true if effects[:grant_levitate]
      end
    end
    return shatter_airborne?
  end
end

#===============================================================================
# Battle — Switching Block (Fighting: Arena Field)
#===============================================================================
class Battle
  alias shatter_pbCanSwitch? pbCanSwitch?
  def pbCanSwitch?(idxBattler, idxParty = -1, showMessages = false)
    if shatterFieldActive? && shatterFieldType == :FIGHTING
      effects = (CrownShatter::SHATTER_FIELDS[:FIGHTING] || {})[:effects] || {}
      if effects[:block_switching]
        pbDisplay(_INTL("The Arena Field prevents switching!")) if showMessages
        return false
      end
    end
    return shatter_pbCanSwitch?(idxBattler, idxParty, showMessages)
  end
end

#===============================================================================
# Battle — Entry Hazard Modifier (Bug: Swarm Field — double hazard damage)
#===============================================================================
class Battle
  alias shatter_pbEntryHazards pbEntryHazards
  def pbEntryHazards(battler)
    # Before processing, check for double hazards
    if shatterFieldActive? && shatterFieldType == :BUG
      effects = (CrownShatter::SHATTER_FIELDS[:BUG] || {})[:effects] || {}
      if effects[:double_hazards]
        # Temporarily double Spikes/Stealth Rock damage by running hazards twice
        shatter_pbEntryHazards(battler)
        shatter_pbEntryHazards(battler)
        return
      end
    end
    shatter_pbEntryHazards(battler)
  end

  #=============================================================================
  # Poison on entry (Poison: Toxic Field)
  #=============================================================================
  alias shatter_pbOnBattlerEnteringBattle pbOnBattlerEnteringBattle
  def pbOnBattlerEnteringBattle(idxBattler, sendOUT = false)
    shatter_pbOnBattlerEnteringBattle(idxBattler, sendOUT)
    if shatterFieldActive? && shatterFieldType == :POISON
      effects = (CrownShatter::SHATTER_FIELDS[:POISON] || {})[:effects] || {}
      if effects[:poison_on_entry]
        battler = @battlers[idxBattler]
        if battler && !battler.fainted? && battler.affectedByTerrain?
          if battler.pbCanPoison?(nil, false)
            battler.pbPoison(nil, _INTL("{1} was poisoned by the Toxic Field!", battler.pbThis))
          end
        end
      end
    end
  end

  #=============================================================================
  # Normal Shatter — Typeless moves modifier
  # (Applied in pbCalcType of Battle::Move)
  #=============================================================================
end

class Battle::Move
  alias shatter_pbCalcType pbCalcType
  def pbCalcType(user)
    ret = shatter_pbCalcType(user)
    if @battle.shatterFieldActive? && @battle.shatterFieldType == :NORMAL
      effects = (CrownShatter::SHATTER_FIELDS[:NORMAL] || {})[:effects] || {}
      if effects[:typeless_moves]
        return nil  # Typeless — no STAB, no effectiveness
      end
    end
    return ret
  end
end

#===============================================================================
# Speed halving (Water: Flooded Field)
#===============================================================================
class Battle::Battler
  alias shatter_pbSpeed pbSpeed
  def pbSpeed
    speed = shatter_pbSpeed
    if @battle.shatterFieldActive? && @battle.shatterFieldType == :WATER
      effects = (CrownShatter::SHATTER_FIELDS[:WATER] || {})[:effects] || {}
      if effects[:speed_halve]
        immune_types = effects[:speed_halve][:immune_types] || []
        unless pbTypes(true).any? { |t| immune_types.include?(t) }
          speed = (speed / 2.0).round
        end
      end
    end
    return speed
  end
end
