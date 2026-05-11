#===============================================================================
# Eggs Only / Wonderlocke Mode
# Every Pokemon you catch is "Wonder Traded" — its species is replaced with
# a random one of similar BST. Level, IVs, EVs, nature, and gender are
# preserved; ability and moves are rerolled to fit the new species.
# Gift Pokemon and starters go through the same transformation.
#
# This is the modern Wonderlocke ruleset, popularised by Twitch challenge
# runs. Combine with One Capture per Map for the classic Nuzlocke flavour.
#===============================================================================

module ChallengeModes
  RULES[:EGGS_ONLY] = {
    :name  => _INTL("Eggs Only (Wonderlocke)"),
    :desc  => _INTL("Every Pokémon you catch or receive gets Wonder-Traded for a random species of similar power. You never know what you'll get."),
    :order => 27
  }

  EGGS_ONLY_BST_TOLERANCE = 60   # ± points around the original's BST

  def self.eggs_only?
    return on?(:EGGS_ONLY)
  end

  #-----------------------------------------------------------------------------
  # Replace a Pokemon's species with a random one of similar power. Mutates
  # the Pokemon in place — caller doesn't need to swap pointers around.
  #-----------------------------------------------------------------------------
  def self.wonder_trade!(pkmn)
    return unless pkmn.is_a?(Pokemon)

    original_species = pkmn.species
    original_data = GameData::Species.try_get(original_species)
    return unless original_data

    target_bst = original_data.base_stats.values.sum
    candidates = []

    GameData::Species.each do |sp|
      next if sp.form != 0                             # base forms only
      next if sp.mega_stone || sp.mega_move            # no megas
      next if sp.has_flag?("Legendary") || sp.has_flag?("Mythical")
      next if sp.species == original_species
      bst = sp.base_stats.values.sum
      next if (bst - target_bst).abs > EGGS_ONLY_BST_TOLERANCE
      candidates << sp.species
    end

    return if candidates.empty?
    new_species = candidates.sample

    # Apply the transformation. Reset moves and ability to species defaults
    # so the new Pokemon makes sense (e.g. Charmander's moveset on a Lapras
    # would be invalid).
    pkmn.species = new_species
    pkmn.form = 0
    pkmn.reset_moves
    pkmn.ability_index = nil   # let species_data pick a default
    pkmn.calc_stats
  end
end

#===============================================================================
# Wonder-trade everything that enters the player's collection.
# We hook Battle::Peer.pbStorePokemon (post-catch) and the global pbAddPokemon
# (gift / event Pokemon).
#===============================================================================
class Battle::Peer
  alias __cm_eggs_only__pbStorePokemon pbStorePokemon unless method_defined?(:__cm_eggs_only__pbStorePokemon)
  def pbStorePokemon(player, pkmn)
    ChallengeModes.wonder_trade!(pkmn) if ChallengeModes.eggs_only? && pkmn
    return __cm_eggs_only__pbStorePokemon(player, pkmn)
  end
end

alias __cm_eggs_only__pbAddPokemon pbAddPokemon unless defined?(__cm_eggs_only__pbAddPokemon)
def pbAddPokemon(*args)
  if ChallengeModes.eggs_only?
    pkmn = args[0]
    if pkmn.is_a?(Symbol) || pkmn.is_a?(String)
      level = args[1] || 5
      data = GameData::Species.try_get(pkmn)
      if data
        pkmn = Pokemon.new(data.species, level)
        ChallengeModes.wonder_trade!(pkmn)
        args[0] = pkmn
      end
    elsif pkmn.is_a?(Pokemon)
      ChallengeModes.wonder_trade!(pkmn)
    end
  end
  return __cm_eggs_only__pbAddPokemon(*args)
end
