#===============================================================================
# Crown Shatter — AI Intelligence Module
#===============================================================================
# Advanced AI evaluation for when to use Crown Shatter.
# Follows the same pattern as Terastallization_Intelligence.rb and
# Dynamax_Intelligence.rb — multi-factor scoring system.
#
# Integrates with the [000_AAI] Advanced AI System.
# Falls back gracefully if AAI is not installed.
#===============================================================================

module AdvancedAI
  module ShatterIntelligence
    #===========================================================================
    # Constants
    #===========================================================================
    SHATTER_SKILL_THRESHOLD = 50   # Minimum AI skill to evaluate intelligently
    SHATTER_GUARANTEE_SCORE = 80   # Auto-Shatter if score >= this
    SHATTER_STRONG_SCORE    = 60   # Strong inclination
    SHATTER_MODERATE_SCORE  = 40   # Moderate — use if limited options remain

    #===========================================================================
    # Main Gate — Should the AI Shatter?
    #===========================================================================
    def self.should_shatter?(battle, user, skill)
      return false unless battle.pbCanShatter?(user.index)
      return false if battle.shatterFieldActive? && battle.shatterFieldType == user.pokemon.types[0]
      # Below skill threshold: random 30% chance
      if skill < SHATTER_SKILL_THRESHOLD
        return rand(100) < 30
      end
      score = calculate_shatter_score(battle, user, skill)
      # Decision thresholds
      return true if score >= SHATTER_GUARANTEE_SCORE
      return true if score >= SHATTER_STRONG_SCORE && rand(100) < 80
      remaining = battle.pbTeamAllFainted?(user.index) rescue 3
      return true if score >= SHATTER_MODERATE_SCORE && remaining <= 2
      return false
    end

    #===========================================================================
    # Score Calculation — Sum of 6 Sub-Evaluators
    #===========================================================================
    def self.calculate_shatter_score(battle, user, skill)
      score  = evaluate_timing(battle, user, skill)
      score += evaluate_type_synergy(battle, user, skill)
      score += evaluate_field_value(battle, user, skill)
      score += evaluate_survival(battle, user, skill)
      score += evaluate_team_state(battle, user, skill)
      score += evaluate_counter_shatter(battle, user, skill)
      [score, 0].max
    end

    #===========================================================================
    # 1. Timing — Is this a good turn to Shatter? (0–25)
    #===========================================================================
    def self.evaluate_timing(battle, user, skill)
      score = 0
      turn = battle.turnCount
      # Too early penalty
      score -= 10 if turn < 1
      # Sweet spot: turns 2-4
      score += 10 if turn >= 2 && turn <= 4
      score += 5  if turn >= 5 && turn <= 7
      # Don't Shatter on the last turn of a sweep
      hp_percent = user.hp.to_f / user.totalhp
      score -= 15 if hp_percent < 0.4  # Too low HP to afford cost
      score += 5  if hp_percent > 0.8  # Healthy = good time
      [score, 0].max.clamp(0, 25)
    end

    #===========================================================================
    # 2. Type Synergy — How well does the Shatter type help our team? (0–35)
    #===========================================================================
    def self.evaluate_type_synergy(battle, user, skill)
      score = 0
      shatter_type = user.pokemon.types[0]
      field_data = CrownShatter::SHATTER_FIELDS[shatter_type]
      return 0 unless field_data
      # Count allies that benefit from the type boost
      allies = battle.allSameSideBattlers(user.index)
      allies.each do |ally|
        next if ally.fainted?
        # Does ally have STAB moves of the boosted type?
        ally_moves = ally.moves || []
        stab_count = ally_moves.count { |m| m && m.type == shatter_type }
        score += stab_count * 8
        # Does ally IS the boosted type?
        score += 5 if ally.pbHasType?(shatter_type)
      end
      # Count opponents that are WEAK to the boosted type
      opponents = battle.allOtherSideBattlers(user.index)
      opponents.each do |opp|
        next if opp.fainted?
        # Check type effectiveness
        eff = Effectiveness.calculate(shatter_type, *opp.pbTypes(true))
        score += 8 if Effectiveness.super_effective?(eff)
        score -= 5 if Effectiveness.not_very_effective?(eff)
        score -= 10 if Effectiveness.ineffective?(eff)
      end
      score.clamp(0, 35)
    end

    #===========================================================================
    # 3. Field Value — How good are this field's special effects? (0–30)
    #===========================================================================
    def self.evaluate_field_value(battle, user, skill)
      score = 0
      shatter_type = user.pokemon.types[0]
      field_data = CrownShatter::SHATTER_FIELDS[shatter_type]
      return 0 unless field_data
      effects = field_data[:effects] || {}
      opponents = battle.allOtherSideBattlers(user.index)
      allies    = battle.allSameSideBattlers(user.index)
      #-------------------------------------------------------------------------
      # Evaluate disruptive effects against opponents
      #-------------------------------------------------------------------------
      # Chip damage is always good
      score += 10 if effects[:chip_damage]
      # Blocking types the opponent relies on
      if effects[:block_type]
        blocked = effects[:block_type]
        opponents.each do |opp|
          next if opp.fainted?
          opp_moves = opp.moves || []
          blocked_count = opp_moves.count { |m| m && m.type == blocked }
          score += blocked_count * 7
        end
      end
      # Weakening types the opponent uses
      if effects[:weaken_type]
        weakened = effects[:weaken_type]
        opponents.each do |opp|
          next if opp.fainted?
          opp_moves = opp.moves || []
          weak_count = opp_moves.count { |m| m && m.type == weakened }
          score += weak_count * 5
        end
      end
      # Speed halving benefits slow teams
      if effects[:speed_halve]
        our_avg_speed = allies.reject(&:fainted?).map(&:speed).sum.to_f /
                        [allies.reject(&:fainted?).length, 1].max
        opp_avg_speed = opponents.reject(&:fainted?).map(&:speed).sum.to_f /
                        [opponents.reject(&:fainted?).length, 1].max
        score += 12 if our_avg_speed < opp_avg_speed  # We benefit from slowing them
      end
      # Block switching is strong when we have the advantage
      if effects[:block_switching]
        score += 10  # Always disruptive
      end
      # Block priority helps if opponents rely on priority
      if effects[:block_priority]
        opponents.each do |opp|
          next if opp.fainted?
          priority_count = (opp.moves || []).count { |m| m && m.priority > 0 }
          score += priority_count * 6
        end
      end
      # Strip boosts at EOT is great vs setup
      if effects[:strip_boosts_eot]
        opponents.each do |opp|
          next if opp.fainted?
          boosted = false
          GameData::Stat.each_battle { |s| boosted = true if opp.stages[s.id] && opp.stages[s.id] > 0 } rescue nil
          score += 10 if boosted
        end
      end
      # Invert stat drops (Fairy) — good if we use stat-lowering moves
      if effects[:invert_stat_drops]
        allies.each do |ally|
          next if ally.fainted?
          lower_moves = (ally.moves || []).count { |m| m && m.statusMove? }
          score += lower_moves * 3
        end
      end
      # Healing effects benefit our side
      score += 8 if effects[:grounded_heal]
      score += 6 if effects[:poison_heal] && allies.any? { |a| !a.fainted? && a.pbHasType?(:POISON) }
      # Normal: Clear-all is situationally powerful
      if effects[:clear_all_fields]
        # Good if opponent has hazards, screens, or weather advantage
        opp_side = user.idxOpposingSide
        has_screens = battle.sides[opp_side].effects[PBEffects::Reflect] > 0 rescue false
        has_screens ||= battle.sides[opp_side].effects[PBEffects::LightScreen] > 0 rescue false
        our_side = user.idxOwnSide
        has_hazards = battle.sides[our_side].effects[PBEffects::StealthRock] rescue false
        has_spikes  = (battle.sides[our_side].effects[PBEffects::Spikes] || 0) > 0 rescue false
        score += 15 if has_screens
        score += 12 if has_hazards || has_spikes
        score += 8  if battle.field.weather != :None
      end
      score.clamp(0, 30)
    end

    #===========================================================================
    # 4. Survival — Can we afford the HP cost? (0–20, or -30 penalty)
    #===========================================================================
    def self.evaluate_survival(battle, user, skill)
      score = 0
      hp_percent = user.hp.to_f / user.totalhp
      hp_cost = Settings::SHATTER_HP_COST rescue 0.25
      remaining_hp = hp_percent - hp_cost
      # Heavy penalty if we'd be in KO range after cost
      if remaining_hp < 0.25
        score -= 30
      elsif remaining_hp < 0.40
        score -= 15
      elsif remaining_hp < 0.60
        score -= 5
      else
        score += 10  # Comfortable HP
      end
      # Extra penalty if opponents have priority moves that could pick us off
      opponents = battle.allOtherSideBattlers(user.index)
      opponents.each do |opp|
        next if opp.fainted?
        priority_moves = (opp.moves || []).select { |m| m && m.priority > 0 && m.damagingMove? }
        if priority_moves.any? && remaining_hp < 0.35
          score -= 15
          break
        end
      end
      # Bonus if we have recovery
      user_moves = user.moves || []
      has_recovery = user_moves.any? { |m| m && [:RECOVER, :ROOST, :SOFTBOILED, :MOONLIGHT,
        :MORNINGSUN, :SYNTHESIS, :SLACKOFF, :MILKDRINK, :SHOREUP, :LIFEDEW].include?(m.id) }
      score += 10 if has_recovery
      score.clamp(-30, 20)
    end

    #===========================================================================
    # 5. Team State — How is our overall position? (0–20, or -15 penalty)
    #===========================================================================
    def self.evaluate_team_state(battle, user, skill)
      score = 0
      allies = battle.allSameSideBattlers(user.index)
      alive_allies = allies.reject(&:fainted?)
      opponents = battle.allOtherSideBattlers(user.index)
      alive_opps = opponents.reject(&:fainted?)
      # Number advantage
      score += 8  if alive_allies.length > alive_opps.length
      score -= 10 if alive_allies.length < alive_opps.length
      # Last mon consideration — risky to Shatter
      if alive_allies.length == 1
        score -= 15  # Don't waste HP on last mon unless field is great
      end
      # Momentum: are we in a good position?
      avg_ally_hp = alive_allies.map { |a| a.hp.to_f / a.totalhp }.sum.to_f / [alive_allies.length, 1].max
      avg_opp_hp  = alive_opps.map { |o| o.hp.to_f / o.totalhp }.sum.to_f / [alive_opps.length, 1].max
      score += 10 if avg_ally_hp > avg_opp_hp + 0.2  # Winning — field can seal it
      score -= 5  if avg_opp_hp > avg_ally_hp + 0.3   # Losing badly — might need raw HP
      score.clamp(-15, 20)
    end

    #===========================================================================
    # 6. Counter-Shatter — Should we overwrite the opponent's field? (0–20)
    #===========================================================================
    def self.evaluate_counter_shatter(battle, user, skill)
      score = 0
      return 0 unless battle.shatterFieldActive?
      active_type = battle.shatterFieldType
      active_data = CrownShatter::SHATTER_FIELDS[active_type]
      return 0 unless active_data
      our_type = user.pokemon.types[0]
      # Is the current field BAD for us?
      bad_for_us = false
      effects = active_data[:effects] || {}
      # Check if the boosted type hurts us
      opponents = battle.allOtherSideBattlers(user.index)
      allies    = battle.allSameSideBattlers(user.index)
      opp_benefits = opponents.count { |o| !o.fainted? && o.pbHasType?(active_type) }
      bad_for_us = true if opp_benefits >= 2
      # Check if blocked type is ours
      if effects[:block_type]
        allies.each do |a|
          next if a.fainted?
          blocked_moves = (a.moves || []).count { |m| m && m.type == effects[:block_type] }
          bad_for_us = true if blocked_moves >= 2
        end
      end
      # Chip damage hurting us more than them
      if effects[:chip_damage]
        immune_types = effects[:chip_damage][:immune_types] || []
        our_immune = allies.count { |a| !a.fainted? && a.pbTypes(true).any? { |t| immune_types.include?(t) } }
        opp_immune = opponents.count { |o| !o.fainted? && o.pbTypes(true).any? { |t| immune_types.include?(t) } }
        bad_for_us = true if opp_immune > our_immune
      end
      if bad_for_us
        score += 15  # Overwriting a bad field is very valuable
        score += 5 if battle.field.effects[PBEffects::ShatterField] >= 3  # Many turns left
      else
        score -= 10  # Current field is fine or neutral — don't waste Shatter counter
      end
      score.clamp(0, 20)
    end
  end
end

#===============================================================================
# Override the basic AI Shatter evaluation with AAI's scoring
#===============================================================================
class Battle::AI
  alias shatter_ai_should_ai_shatter? should_ai_shatter?
  def should_ai_shatter?(idxBattler)
    # Use AAI scoring if available
    if defined?(AdvancedAI::ShatterIntelligence)
      battler = @battle.battlers[idxBattler]
      skill = 0
      if defined?($game_variables) && $game_variables
        skill = $game_variables[100] rescue 0
        # Convert DDS tier variable to skill level
        case skill
        when 1 then skill = 20   # Beginner
        when 2 then skill = 40   # Mid
        when 3 then skill = 80   # Pro
        when 4 then skill = 100  # Extreme
        else   skill = 60        # Natural
        end
      end
      return AdvancedAI::ShatterIntelligence.should_shatter?(@battle, battler, skill)
    end
    # Fallback to basic heuristic
    return shatter_ai_should_ai_shatter?(idxBattler)
  end
end

#===============================================================================
# AAI Integration — dbk_enabled? support
#===============================================================================
if defined?(AdvancedAI) && AdvancedAI.respond_to?(:dbk_enabled?)
  module AdvancedAI
    class << self
      alias shatter_dbk_enabled? dbk_enabled?
      def dbk_enabled?(plugin)
        if plugin == :crown_shatter
          return defined?(Battle) && Battle.instance_methods.include?(:pbCanShatter?)
        end
        return shatter_dbk_enabled?(plugin)
      end
    end

    # Add to DBK_PLUGINS if it exists
    if defined?(DBK_PLUGINS)
      DBK_PLUGINS[:crown_shatter] = true
    end
  end
end

#===============================================================================
# Register the plugin
#===============================================================================
echoln "[Crown Shatter] Shatter Intelligence loaded." if defined?(echoln)
