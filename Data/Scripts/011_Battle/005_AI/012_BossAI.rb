#===============================================================================
# BOSS BATTLE AI - Enhanced AI for Story Bosses
# Shattered Crowns Custom Extension
#===============================================================================
# This module provides enhanced AI behavior for boss battles, making them
# more challenging and dramatic than regular trainer battles.
#===============================================================================

module BossAI
  #=============================================================================
  # Boss Trainer Types - These trainers use enhanced AI
  #=============================================================================
  BOSS_TRAINER_TYPES = [
    :CULT_LEADER,
    :GUARDIAN_ECHO,
    :SHADOW_SELF,
    :CHAMPION
  ]
  
  #=============================================================================
  # Boss Battle Phases - AI behavior changes based on remaining Pokémon
  #=============================================================================
  PHASE_THRESHOLDS = {
    aggressive: 0.66,  # Above 66% team remaining
    tactical: 0.33,    # Between 33-66% team remaining
    desperate: 0.0     # Below 33% team remaining
  }
  
  #=============================================================================
  # Check if current battle is a boss battle
  #=============================================================================
  def self.is_boss_battle?(battle)
    return false if battle.wildBattle?
    battle.opponent.each do |trainer|
      return true if BOSS_TRAINER_TYPES.include?(trainer.trainer_type)
    end
    return false
  end
  
  #=============================================================================
  # Get current battle phase for boss
  #=============================================================================
  def self.get_battle_phase(battle, trainer_index)
    return :aggressive unless is_boss_battle?(battle)
    
    # Calculate remaining team percentage
    party = battle.pbParty(1)
    total = party.length
    remaining = party.count { |p| p && !p.fainted? }
    percentage = remaining.to_f / total
    
    if percentage > PHASE_THRESHOLDS[:aggressive]
      return :aggressive
    elsif percentage > PHASE_THRESHOLDS[:desperate]
      return :tactical
    else
      return :desperate
    end
  end
  
  #=============================================================================
  # Phase-based move score modifiers
  #=============================================================================
  def self.phase_move_modifier(move, phase, user, target)
    modifier = 1.0
    
    case phase
    when :aggressive
      # Prefer high-damage moves
      modifier *= 1.3 if move.power >= 100
      modifier *= 1.2 if move.statusMove? == false
      modifier *= 0.8 if move.function_code == "HealUserHalfOfTotalHP"
      
    when :tactical
      # Balanced approach - value setup moves
      modifier *= 1.4 if ["RaiseUserAttack1", "RaiseUserDefense1", 
                          "RaiseUserSpAtk1", "RaiseUserSpDef1",
                          "RaiseUserSpeed1"].include?(move.function_code)
      modifier *= 1.3 if move.statusMove? && move.function_code.include?("Lower")
      modifier *= 1.2 if move.function_code == "HealUserHalfOfTotalHP"
      
    when :desperate
      # All-out offense, OHKO attempts, healing priority
      modifier *= 1.5 if move.power >= 120
      modifier *= 2.0 if move.function_code == "HealUserHalfOfTotalHP" && user.hp < user.totalhp / 3
      modifier *= 1.4 if move.function_code.include?("OHKO")
      modifier *= 1.3 if move.priority > 0
      modifier *= 0.5 if move.statusMove? && !move.function_code.include?("Heal")
    end
    
    return modifier
  end
  
  #=============================================================================
  # Boss-specific dialogue triggers
  #=============================================================================
  PHASE_DIALOGUE = {
    CULT_LEADER: {
      tactical: "Cedric: You're stronger than I anticipated... but the Crown's power is infinite!",
      desperate: "Cedric: Impossible! I won't be defeated by children! ETERNATUS, MAXIMUM POWER!"
    },
    GUARDIAN_ECHO: {
      tactical: "Guardian: Your spirit is strong... show me more!",
      desperate: "Guardian: This is the final test! Hold nothing back!"
    },
    SHADOW_SELF: {
      tactical: "Shadow: You can't escape your past forever...",
      desperate: "Shadow: If I fall... you must live. LIVE!"
    }
  }
  
  def self.get_phase_dialogue(trainer_type, phase)
    return nil unless PHASE_DIALOGUE.key?(trainer_type)
    return PHASE_DIALOGUE[trainer_type][phase]
  end
end

#===============================================================================
# Extend Battle::AI to use Boss AI when applicable
#===============================================================================
class Battle::AI
  alias_method :original_get_move_scores, :pbGetMoveScores if method_defined?(:pbGetMoveScores)
  
  def pbGetMoveScores
    scores = original_get_move_scores if respond_to?(:original_get_move_scores)
    scores ||= []
    
    # Apply boss AI modifiers if applicable
    if BossAI.is_boss_battle?(@battle)
      phase = BossAI.get_battle_phase(@battle, @trainer.side)
      
      scores.each_with_index do |score_data, i|
        next unless score_data
        move = @user.battler.moves[i]
        next unless move
        
        modifier = BossAI.phase_move_modifier(move, phase, @user.battler, @target&.battler)
        score_data[0] = (score_data[0] * modifier).to_i if score_data[0]
      end
    end
    
    return scores
  end
end

#===============================================================================
# Boss Battle Event Hooks - For dramatic moments
#===============================================================================
module BossBattleEvents
  #=============================================================================
  # Called when a boss reaches low HP for the first time
  #=============================================================================
  def self.on_boss_low_hp(battle, battler)
    return unless BossAI.is_boss_battle?(battle)
    return if battler.hp > battler.totalhp / 4
    return if $game_variables && $game_variables[99] == battler.index # Already triggered
    
    # Mark as triggered
    $game_variables[99] = battler.index if $game_variables
    
    # Boss-specific low HP events
    case battler.pokemon.species
    when :ETERNATUS
      battle.pbDisplay("Eternatus roars with primal fury!")
      battle.pbDisplay("Dark energy surges from its core!")
      # Stat boost at low HP
      battler.pbRaiseStatStage(:ATTACK, 2, battler)
      battler.pbRaiseStatStage(:SPECIAL_ATTACK, 2, battler)
    when :ZAMAZENTA
      battle.pbDisplay("Zamazenta's shield glows with ancient power!")
      battler.pbRaiseStatStage(:DEFENSE, 3, battler)
      battler.pbRaiseStatStage(:SPECIAL_DEFENSE, 3, battler)
    when :MEWTWO # Subject Zero
      battle.pbDisplay("Subject Zero's form destabilizes!")
      battle.pbDisplay("But... it fights on!")
      # Heal slightly to prolong the drama
      battler.pbRecoverHP(battler.totalhp / 8, false)
    end
  end
  
  #=============================================================================
  # Called at the start of each boss's turn
  #=============================================================================
  def self.on_boss_turn_start(battle, battler)
    return unless BossAI.is_boss_battle?(battle)
    
    phase = BossAI.get_battle_phase(battle, battler.index % 2)
    
    # Check for phase change dialogue
    last_phase_var = 100 + battler.index
    last_phase = $game_variables[last_phase_var] if $game_variables
    
    if last_phase != phase
      $game_variables[last_phase_var] = phase if $game_variables
      
      # Get trainer type
      trainer = battle.pbGetOwnerFromBattlerIndex(battler.index)
      if trainer
        dialogue = BossAI.get_phase_dialogue(trainer.trainer_type, phase)
        battle.pbDisplay(dialogue) if dialogue
      end
    end
  end
end

#===============================================================================
# Special Boss Abilities (passive effects)
#===============================================================================
module BossAbilities
  #=============================================================================
  # Cedric's Crown Resonance - Heals Eternatus when another ally faints
  #=============================================================================
  def self.crown_resonance(battle, fainted_battler, eternatus)
    return unless eternatus && !eternatus.fainted?
    return unless fainted_battler.index % 2 == eternatus.index % 2 # Same side
    
    heal_amount = eternatus.totalhp / 4
    eternatus.pbRecoverHP(heal_amount, false)
    battle.pbDisplay("The fallen Pokémon's energy flows into Eternatus!")
  end
  
  #=============================================================================
  # Subject Zero's Adaptability - Changes type based on opponent
  #=============================================================================
  def self.subject_zero_adapt(battle, subject_zero, target)
    return unless subject_zero && !subject_zero.fainted?
    return unless target && !target.fainted?
    
    # Get target's primary type
    target_type = target.types[0]
    
    # Find a type that's super effective
    effective_type = nil
    GameData::Type.each do |type|
      next if type.pseudo_type
      effectiveness = Effectiveness.calculate(type.id, target_type, target.types[1])
      if Effectiveness.super_effective?(effectiveness)
        effective_type = type.id
        break
      end
    end
    
    if effective_type && subject_zero.types[0] != effective_type
      subject_zero.types[0] = effective_type
      battle.pbDisplay("Subject Zero's form shifts! It became a #{effective_type.to_s} type!")
    end
  end
end
