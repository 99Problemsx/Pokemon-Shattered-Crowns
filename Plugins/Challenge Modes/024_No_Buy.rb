#===============================================================================
# No Buy Mode
# Marts can't be entered. The shopkeeper greets you and turns you away.
# Selling is also blocked (otherwise it'd be a one-way drain on the
# economy with no way to use the money). All other ways of getting items —
# pickup, hidden items, gift items — still work.
#===============================================================================

module ChallengeModes
  RULES[:NO_BUY] = {
    :name  => _INTL("No Buy"),
    :desc  => _INTL("Pokémon Marts are closed. You'll have to find or earn every item — no buying or selling."),
    :order => 25
  }

  def self.no_buy?
    return on?(:NO_BUY)
  end
end

#===============================================================================
# Block the standard mart entry point.
#===============================================================================
alias __cm_no_buy__pbPokemonMart pbPokemonMart unless defined?(__cm_no_buy__pbPokemonMart)
def pbPokemonMart(*args)
  if ChallengeModes.no_buy?
    pbMessage(_INTL("\"Sorry, the shop is closed for the season!\""))
    pbMessage(_INTL("(Challenge Mode prevents you from buying or selling items.)"))
    return
  end
  __cm_no_buy__pbPokemonMart(*args)
end
