#===============================================================================
# No EXP Mode (replaces "No Grinding" idea)
# Player Pokemon never gain EXP from any source — wild battles, trainer
# battles, Exp Share, Exp All, EXP Candies, Rare Candies, etc. Levels are
# locked at whatever they were when caught/received.
#
# Trainer Pokemon are unaffected; their scaling continues normally, so this
# rule turns into a "starter-level only" gauntlet. Pair with Trainer Scaling
# off if you want a fair run.
#===============================================================================

module ChallengeModes
  RULES[:NO_EXP] = {
    :name  => _INTL("No EXP"),
    :desc  => _INTL("Your Pokémon never gain EXP. Levels are locked at the level they were caught or received at."),
    :order => 21
  }

  def self.no_exp?
    return on?(:NO_EXP)
  end
end

#===============================================================================
# Block in-battle EXP gain
#===============================================================================
class Battle
  alias __cm_no_exp__pbGainExpOne pbGainExpOne unless method_defined?(:__cm_no_exp__pbGainExpOne)
  def pbGainExpOne(idxParty, defeatedBattler, numPartic, expShare, expAll, showMessages = true)
    return if ChallengeModes.no_exp?
    __cm_no_exp__pbGainExpOne(idxParty, defeatedBattler, numPartic, expShare, expAll, showMessages)
  end

  # Also block EVs — they're a stat-progression mechanic and feel inconsistent
  # if EXP is locked but EVs grind up. Comment out this block if you want
  # EVs to keep working.
  alias __cm_no_exp__pbGainEVsOne pbGainEVsOne unless method_defined?(:__cm_no_exp__pbGainEVsOne)
  def pbGainEVsOne(idxParty, defeatedBattler)
    return if ChallengeModes.no_exp?
    __cm_no_exp__pbGainEVsOne(idxParty, defeatedBattler)
  end
end

#===============================================================================
# Block Rare Candy / EXP Candies — they would otherwise side-step the rule.
# We override the standard handlers so the items show "no effect" in-game.
#===============================================================================
[:RARECANDY, :EXPCANDYXS, :EXPCANDYS, :EXPCANDYM, :EXPCANDYL, :EXPCANDYXL].each do |item_id|
  next unless GameData::Item.exists?(item_id)
  inner = ItemHandlers::UseOnPokemon[item_id]
  ItemHandlers::UseOnPokemon.add(item_id, proc { |item, qty, pkmn, scene|
    if ChallengeModes.no_exp?
      scene.pbDisplay(_INTL("Challenge Mode prevents EXP-granting items from being used!"))
      next false
    end
    next inner ? inner.call(item, qty, pkmn, scene) : false
  })
end
