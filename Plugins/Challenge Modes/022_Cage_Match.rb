#===============================================================================
# Cage Match Mode
# Limits the active party size. Catches that would put the party over the
# limit go straight to the PC. Withdrawing from the PC isn't blocked —
# the limit is enforced on the additive side only, so the player can still
# rotate via PC, just can't have more than N active at once via catching.
#
# Default cap: 3. Adjust CAGE_MATCH_PARTY_SIZE below.
#===============================================================================

module ChallengeModes
  RULES[:CAGE_MATCH] = {
    :name  => _INTL("Cage Match"),
    :desc  => _INTL("Active party is capped at 3 Pokémon. Caught Pokémon over the cap go straight to the PC."),
    :order => 23
  }

  CAGE_MATCH_PARTY_SIZE = 3

  def self.cage_match?
    return on?(:CAGE_MATCH)
  end

  def self.cage_match_party_full?
    return false unless cage_match?
    return false unless $player&.party
    return $player.party.length >= CAGE_MATCH_PARTY_SIZE
  end
end

#===============================================================================
# Hook pbAddPokemon to redirect overflow to the PC.
#===============================================================================
alias __cm_cage_match__pbAddPokemon pbAddPokemon unless defined?(__cm_cage_match__pbAddPokemon)
def pbAddPokemon(*args)
  if ChallengeModes.cage_match_party_full?
    pkmn = args[0]
    if pkmn.is_a?(Symbol) || pkmn.is_a?(String)
      level = args[1] || 5
      species_data = GameData::Species.try_get(pkmn)
      if species_data
        pkmn = Pokemon.new(species_data.species, level)
      else
        pkmn = nil
      end
    end
    if pkmn.is_a?(Pokemon)
      pbStorePokemon(pkmn) rescue $PokemonStorage.pbStoreCaught(pkmn)
      pbMessage(_INTL("Cage Match: party is full ({1} max). {2} was sent to the PC.",
                       ChallengeModes::CAGE_MATCH_PARTY_SIZE, pkmn.name))
      return true   # treat as success — we did add it, just to storage
    end
  end
  return __cm_cage_match__pbAddPokemon(*args)
end

#===============================================================================
# Block in-battle catches that would exceed the cap (if PC is also full).
# Battle::Peer.pbStorePokemon already handles party-vs-PC routing; we just
# clamp it down to the configured cap here.
#===============================================================================
class Battle::Peer
  alias __cm_cage_match__pbStorePokemon pbStorePokemon unless method_defined?(:__cm_cage_match__pbStorePokemon)
  def pbStorePokemon(player, pkmn)
    if ChallengeModes.cage_match? && player&.party && player.party.length >= ChallengeModes::CAGE_MATCH_PARTY_SIZE
      # Force the storage path so the caught Pokemon goes to PC, not party.
      $PokemonStorage.pbStoreCaught(pkmn) rescue nil
      pbMessage(_INTL("Cage Match: party already at {1}. {2} was sent to the PC.",
                       ChallengeModes::CAGE_MATCH_PARTY_SIZE, pkmn.name))
      return -1
    end
    return __cm_cage_match__pbStorePokemon(player, pkmn)
  end
end
