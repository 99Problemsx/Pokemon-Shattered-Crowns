#===============================================================================
# Boss Battles — AI Awareness
# Makes the AI aware of boss mechanics for better decision-making.
#===============================================================================

#===============================================================================
# AI should treat Pain Split as failing against bosses.
# No existing handler for "UserTargetAverageHP" in MoveFailureAgainstTargetCheck,
# so we add one here.
#===============================================================================
Battle::AI::Handlers::MoveFailureAgainstTargetCheck.add("UserTargetAverageHP",
  proc { |move, user, target, ai, battle|
    next true if target.battler.isBoss?
    next false
  }
)
