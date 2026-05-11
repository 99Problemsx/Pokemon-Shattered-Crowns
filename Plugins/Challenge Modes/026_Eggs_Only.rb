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
  EGGS_ONLY_BST_BUCKET    = 20   # bucket width for candidate memo

  def self.eggs_only?
    return on?(:EGGS_ONLY)
  end

  # Build a {bucket => [species, ...]} table once. ~900 species iterated
  # in total instead of per-catch — Wonder Trade picks become O(1) lookup.
  def self.eggs_only_candidate_pool
    return @eggs_only_pool if @eggs_only_pool
    @eggs_only_pool = {}
    GameData::Species.each do |sp|
      next if sp.form != 0
      next if sp.mega_stone || sp.mega_move
      next if sp.has_flag?("Legendary") || sp.has_flag?("Mythical")
      bst = sp.base_stats.values.sum
      bucket = bst / EGGS_ONLY_BST_BUCKET
      (@eggs_only_pool[bucket] ||= []) << sp.species
    end
    @eggs_only_pool
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
    pool = eggs_only_candidate_pool
    # Pull candidates from buckets that fall within tolerance.
    min_b = (target_bst - EGGS_ONLY_BST_TOLERANCE) / EGGS_ONLY_BST_BUCKET
    max_b = (target_bst + EGGS_ONLY_BST_TOLERANCE) / EGGS_ONLY_BST_BUCKET
    candidates = []
    (min_b..max_b).each { |b| candidates.concat(pool[b]) if pool[b] }
    candidates.delete(original_species)

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
#
# Note on rule-interaction: Eggs Only is loaded last (026) so its alias is the
# outermost wrapper around pbStorePokemon — wonder_trade! runs BEFORE 017
# Species Clause's storage-time notification, 022 Cage Match's party-cap
# routing, and 025 Solo Run's PC redirect. So downstream rules see the
# wonder-traded species (correct for Wonderlocke).
#
# Species Clause's actual block fires in pbThrowPokeBall, which runs BEFORE
# pbStorePokemon — so the catch-time block sees the ORIGINAL species. Combined
# with Wonderlocke this means: "you can't catch a duplicate of what's in your
# party; but if you catch a new species, it may turn into something you
# already have". Treat that as intentional Wonderlocke flavour; if you want
# post-trade clause enforcement, hoist wonder_trade! into pbThrowPokeBall.
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
