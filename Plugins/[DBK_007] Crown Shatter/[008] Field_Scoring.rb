#===============================================================================
# Crown Shatter — AAI Move Scoring Integration
#===============================================================================
# Extends the Advanced AI's move scoring to account for active Shatter Fields.
# If a Shatter Field is active, moves that benefit from the field get bonuses
# and moves that are blocked/weakened get penalties.
#===============================================================================

if defined?(AdvancedAI)
  module AdvancedAI
    module ShatterFieldScoring
      #=========================================================================
      # Main scoring hook — called from Core.rb pipeline
      #=========================================================================
      def self.shatter_field_bonus(battle, move, user, target, skill_level)
        return 0 unless battle.shatterFieldActive?
        return 0 if skill_level < 40
        score = 0
        shatter_type = battle.shatterFieldType
        field_data = CrownShatter::SHATTER_FIELDS[shatter_type]
        return 0 unless field_data
        effects = field_data[:effects] || {}
        move_type = move.type rescue nil
        #-----------------------------------------------------------------------
        # Boosted type: encourage using it
        #-----------------------------------------------------------------------
        if move_type == shatter_type
          score += 20  # This move is boosted by the field
          score += 10 if Effectiveness.super_effective_type?(move_type, target.type1, target.type2) rescue false
        end
        #-----------------------------------------------------------------------
        # Weakened type: discourage
        #-----------------------------------------------------------------------
        if effects[:weaken_type] && move_type == effects[:weaken_type]
          score -= 25
        end
        #-----------------------------------------------------------------------
        # Blocked type: avoid completely
        #-----------------------------------------------------------------------
        if effects[:block_type] && move_type == effects[:block_type]
          score -= 100  # This move will fail
        end
        #-----------------------------------------------------------------------
        # Sound moves fail in Iron Field
        #-----------------------------------------------------------------------
        if effects[:block_sound_moves] && move.soundMove?
          score -= 100
        end
        #-----------------------------------------------------------------------
        # Priority moves fail in Arena Field
        #-----------------------------------------------------------------------
        if effects[:block_priority] && move.priority > 0
          score -= 100
        end
        #-----------------------------------------------------------------------
        # Weight-based moves fail in Gale Field
        #-----------------------------------------------------------------------
        if effects[:block_weight_moves]
          weight_moves = [:HEAVYSLAM, :HEATCRASH, :LOWKICK, :GRASSKNOT]
          score -= 100 if weight_moves.include?(move.id)
        end
        #-----------------------------------------------------------------------
        # Multi-hit moves fail in Primordial Field
        #-----------------------------------------------------------------------
        if effects[:block_multihit]
          hits = move.pbNumHits(user, [target]) rescue 1
          score -= 100 if hits > 1
        end
        #-----------------------------------------------------------------------
        # Status moves can't miss in Warped Field: encourage
        #-----------------------------------------------------------------------
        if effects[:status_perfect] && move.statusMove?
          score += 15
        end
        #-----------------------------------------------------------------------
        # Fire boost in Grass field
        #-----------------------------------------------------------------------
        if effects[:fire_boost] && move_type == :FIRE
          score += 10
        end
        #-----------------------------------------------------------------------
        # Ground boost in Electric field
        #-----------------------------------------------------------------------
        if effects[:ground_boost] && move_type == :GROUND
          score += 10
        end
        #-----------------------------------------------------------------------
        # Crit boost in Dragon field: encourage high-crit moves
        #-----------------------------------------------------------------------
        if effects[:crit_boost]
          high_crit_moves = [:CROSSPOISON, :NIGHTSLASH, :STONEEMGE, :PSYCHOCUT,
                             :LEAFBLADE, :RAZORWIND, :SLASH, :AEROBLAST, :SPACIALREND]
          score += 8 if high_crit_moves.include?(move.id)
        end
        #-----------------------------------------------------------------------
        # Bug field: multi-hit moves always max — encourage
        #-----------------------------------------------------------------------
        if effects[:max_multihit]
          hits = move.pbNumHits(user, [target]) rescue 1
          score += 15 if hits > 1
        end
        #-----------------------------------------------------------------------
        # Fairy field: stat-drop moves become boosts — revalue
        #-----------------------------------------------------------------------
        if effects[:invert_stat_drops]
          # Moves that lower opponent's stats now BOOST them — avoid!
          stat_lowering_moves = [:CHARM, :SCREECH, :LEER, :INTIMIDATE_MOVE, :PARTINGSHOT]
          if status_move_lowers_stats?(move)
            score -= 40  # Would boost the opponent
          end
        end
        score
      end

      #=========================================================================
      # Helper: does this move lower the target's stats?
      #=========================================================================
      def self.status_move_lowers_stats?(move)
        return false unless move.statusMove?
        # Check if move has stat-lowering effect
        return true if move.respond_to?(:statDown) && move.statDown
        [:CHARM, :FAKETEARS, :METALSOUND, :SCREECH, :LEER, :GROWL,
         :STRINGSHOT, :COTTONSPORE, :SCARYFACE, :SWEETSCENT, :NOBLEROAR,
         :PARTINGSHOT, :MEMENTO, :TICKLE, :CAPTIVATE].include?(move.id)
      end
    end
  end
end
