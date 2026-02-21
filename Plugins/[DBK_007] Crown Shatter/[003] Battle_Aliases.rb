#===============================================================================
# Crown Shatter — DBK Placeholder Aliases (Battle)
#===============================================================================
# Hooks into the Deluxe Battle Kit's placeholder alias chain so Crown Shatter
# appears as a battle mechanic option alongside Mega, Z-Move, Dynamax, Tera.
#===============================================================================

class Battle
  #=============================================================================
  # Initialize tracking
  #=============================================================================
  alias shatter_pbInitializeSpecialActions pbInitializeSpecialActions
  def pbInitializeSpecialActions(idxTrainer)
    shatter_pbInitializeSpecialActions(idxTrainer)
    return if !@crown_shatter
    side = cycleIndex(idxTrainer)  rescue idxTrainer
    @crown_shatter[side] ||= []
    @crown_shatter[side][idxTrainer] = -1 if @crown_shatter[side][idxTrainer].nil?
  end

  #=============================================================================
  # Can use ANY mechanic? (OR-chain)
  #=============================================================================
  alias shatter_pbCanUseAnyBattleMechanic? pbCanUseAnyBattleMechanic?
  def pbCanUseAnyBattleMechanic?(idxBattler)
    return true if pbCanShatter?(idxBattler)
    return shatter_pbCanUseAnyBattleMechanic?(idxBattler)
  end

  #=============================================================================
  # Can use THIS mechanic?
  #=============================================================================
  alias shatter_pbCanUseBattleMechanic? pbCanUseBattleMechanic?
  def pbCanUseBattleMechanic?(idxBattler, mechanic)
    return pbCanShatter?(idxBattler) if mechanic == :shatter
    return shatter_pbCanUseBattleMechanic?(idxBattler, mechanic)
  end

  #=============================================================================
  # Get eligible mechanic (returns :shatter or falls through)
  # Crown Shatter has LOWEST priority — other gimmicks take precedence.
  # If you have Tera/Dynamax/Z-Move/Mega available, those come first.
  #=============================================================================
  alias shatter_pbGetEligibleBattleMechanic pbGetEligibleBattleMechanic
  def pbGetEligibleBattleMechanic(idxBattler)
    other = shatter_pbGetEligibleBattleMechanic(idxBattler)
    return other if other
    return :shatter if pbCanShatter?(idxBattler)
    return nil
  end

  #=============================================================================
  # Unregister
  #=============================================================================
  alias shatter_pbUnregisterAllSpecialActions pbUnregisterAllSpecialActions
  def pbUnregisterAllSpecialActions(idxBattler)
    shatter_pbUnregisterAllSpecialActions(idxBattler)
    pbUnregisterShatter(idxBattler) if @crown_shatter
  end

  #=============================================================================
  # Toggle
  #=============================================================================
  alias shatter_pbToggleSpecialActions pbToggleSpecialActions
  def pbToggleSpecialActions(idxBattler, cmd)
    shatter_pbToggleSpecialActions(idxBattler, cmd)
    pbToggleRegisteredShatter(idxBattler) if cmd == :shatter
  end

  #=============================================================================
  # Is registered?
  #=============================================================================
  alias shatter_pbBattleMechanicIsRegistered? pbBattleMechanicIsRegistered?
  def pbBattleMechanicIsRegistered?(idxBattler, mechanic)
    if mechanic == :shatter
      return pbRegisteredShatter?(idxBattler) if @crown_shatter
      return false
    end
    return shatter_pbBattleMechanicIsRegistered?(idxBattler, mechanic)
  end

  #=============================================================================
  # Action commands — reset per round (not needed; Shatter is once per battle)
  #=============================================================================
  alias shatter_pbActionCommands pbActionCommands
  def pbActionCommands(side)
    shatter_pbActionCommands(side)
    # No per-round reset needed — Shatter used flag is permanent
  end

  #=============================================================================
  # Attack phase — execute Shatter BEFORE moves (phase 3)
  #=============================================================================
  alias shatter_pbAttackPhaseSpecialActions3 pbAttackPhaseSpecialActions3
  def pbAttackPhaseSpecialActions3
    shatter_pbAttackPhaseSpecialActions3
    pbPriority.each do |b|
      next unless @choices[b.index][0] == :UseMove && !b.fainted?
      owner = pbGetOwnerIndexFromBattlerIndex(b.index)
      next if !@crown_shatter || @crown_shatter[b.idxOwnSide][owner] != b.index
      pbCrownShatter(b.index)
    end
  end

  #=============================================================================
  # Pursuit special actions
  #=============================================================================
  alias shatter_pbPursuitSpecialActions pbPursuitSpecialActions
  def pbPursuitSpecialActions(battler, owner)
    shatter_pbPursuitSpecialActions(battler, owner)
    # Don't auto-trigger Shatter on Pursuit — player must choose deliberately
  end

  #=============================================================================
  # End of battle — reset
  #=============================================================================
  alias shatter_pbEndOfBattle pbEndOfBattle
  def pbEndOfBattle(result)
    # Clear Shatter field if still active
    if @field.effects[PBEffects::ShatterField] > 0
      @field.effects[PBEffects::ShatterField]     = 0
      @field.effects[PBEffects::ShatterFieldType] = nil
    end
    shatter_pbEndOfBattle(result)
  end
end
