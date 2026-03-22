#===============================================================================
# [SC] Pokemon Affection - Battle Bonuses
# Endure, Crit Boost, Status Cure, EXP Boost
#===============================================================================

#===============================================================================
# Affection Endure — survive fatal hit at 1 HP
#===============================================================================

EventHandlers.add(:on_damage_taken, :sc_affection_endure,
  proc { |battle, battler, damage|
    next unless PokemonAffection::ENABLED
    next unless battler.index.even?  # Player's side
    pkmn = battler.pokemon
    next unless pkmn
    level = pkmn.affection_level
    chance = PokemonAffection::ENDURE_CHANCE[level] || 0
    next if chance == 0
    # Only trigger if this hit would KO
    next unless battler.hp > 0 && battler.hp <= damage
    if rand(100) < chance
      battler.hp = 1
      battle.pbDisplay(_INTL(PokemonAffection::MSG_ENDURE, pkmn.name))
    end
  }
)

#===============================================================================
# Affection Critical Hit Boost
#===============================================================================

EventHandlers.add(:on_critical_check, :sc_affection_crit,
  proc { |battle, user, _target, result|
    next unless PokemonAffection::ENABLED
    next unless user.index.even?
    pkmn = user.pokemon
    next unless pkmn
    level = pkmn.affection_level
    chance = PokemonAffection::CRIT_BOOST_CHANCE[level] || 0
    next if chance == 0
    if !result && rand(100) < chance
      result = true
      battle.pbDisplay(_INTL(PokemonAffection::MSG_CRIT, pkmn.name))
    end
  }
)

#===============================================================================
# Affection Status Cure (end of turn)
#===============================================================================

EventHandlers.add(:on_battle_turn_end, :sc_affection_status_cure,
  proc { |battle|
    next unless PokemonAffection::ENABLED
    battle.allSameSideBattlers(0).each do |battler|
      next unless battler && battler.pokemon
      next unless battler.status != :NONE
      pkmn = battler.pokemon
      level = pkmn.affection_level
      chance = PokemonAffection::STATUS_CURE_CHANCE[level] || 0
      next if chance == 0
      if rand(100) < chance
        old_status = battler.status.to_s.downcase
        battler.pbCureStatus(false)
        battle.pbDisplay(_INTL(PokemonAffection::MSG_CURE, pkmn.name, old_status))
      end
    end
  }
)

#===============================================================================
# Affection EXP Boost
#===============================================================================

EventHandlers.add(:on_exp_gain, :sc_affection_exp,
  proc { |pkmn, base_exp|
    next unless PokemonAffection::ENABLED
    next unless pkmn
    level = pkmn.affection_level
    multiplier = PokemonAffection::EXP_MULTIPLIER[level] || 1.0
    if multiplier > 1.0
      bonus = (base_exp * (multiplier - 1.0)).round
      base_exp += bonus
    end
  }
)
