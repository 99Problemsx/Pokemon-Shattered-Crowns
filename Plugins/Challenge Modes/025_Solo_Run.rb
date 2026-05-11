#===============================================================================
# Solo Run Mode
# Only one Pokemon allowed in the active party. The first Pokemon you receive
# (usually the starter) becomes your one and only — every subsequent catch
# goes straight to the PC.
#
# This is technically a special case of Cage Match with party size 1, but
# it gets its own toggle because the playstyle is so different and people
# look for it by name.
#===============================================================================

module ChallengeModes
  RULES[:SOLO_RUN] = {
    :name  => _INTL("Solo Run"),
    :desc  => _INTL("Only one Pokémon in your active party. Catches always go to the PC. The Pokémon you start with is the one you finish with."),
    :order => 26
  }

  def self.solo_run?
    return on?(:SOLO_RUN)
  end

  def self.solo_run_party_full?
    return false unless solo_run?
    return false unless $player&.party
    return $player.party.length >= 1
  end
end

#===============================================================================
# Hook pbAddPokemon to send overflow to the PC.
# We use a dedicated alias that runs BEFORE Cage Match's so a player who
# enables both gets Solo Run's stricter limit.
#===============================================================================
alias __cm_solo_run__pbAddPokemon pbAddPokemon unless defined?(__cm_solo_run__pbAddPokemon)
def pbAddPokemon(*args)
  if ChallengeModes.solo_run_party_full?
    pkmn = args[0]
    if pkmn.is_a?(Symbol) || pkmn.is_a?(String)
      level = args[1] || 5
      species_data = GameData::Species.try_get(pkmn)
      pkmn = species_data ? Pokemon.new(species_data.species, level) : nil
    end
    if pkmn.is_a?(Pokemon)
      pbStorePokemon(pkmn) rescue $PokemonStorage.pbStoreCaught(pkmn)
      pbMessage(_INTL("Solo Run: {1} was sent to the PC.", pkmn.name))
      return true
    end
  end
  return __cm_solo_run__pbAddPokemon(*args)
end

#===============================================================================
# Block in-battle catches from joining the party (the catch still happens,
# the caught Pokemon just goes straight to PC storage).
#===============================================================================
class Battle::Peer
  alias __cm_solo_run__pbStorePokemon pbStorePokemon unless method_defined?(:__cm_solo_run__pbStorePokemon)
  def pbStorePokemon(player, pkmn)
    if ChallengeModes.solo_run? && player&.party && player.party.length >= 1
      $PokemonStorage.pbStoreCaught(pkmn) rescue nil
      pbMessage(_INTL("Solo Run: {1} was sent to the PC.", pkmn.name))
      return -1
    end
    return __cm_solo_run__pbStorePokemon(player, pkmn)
  end
end
