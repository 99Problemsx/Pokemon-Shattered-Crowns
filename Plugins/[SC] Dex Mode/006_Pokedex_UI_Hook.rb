#===============================================================================
# [SC] Dex Mode - Pokedex UI Hook
#===============================================================================
# When SC_LIMITED is active AND HIDE_OUT_OF_DEX_IN_POKEDEX is true, the
# Pokedex skips slots for species not in the curated list. The result:
# the dex feels designed for the game, not like a stripped Gen 9 dex
# with 600 ??? rows.
#
# Out-of-dex species the player has *already caught* (e.g. brought into
# a save that switched from FULL_DEX -> SC_LIMITED) still display in
# the dex — we only hide unseen slots.
#===============================================================================

module DexMode
  # True if a species should be visible in the Pokédex UI right now.
  def self.show_in_pokedex?(species_id)
    return true if !ENABLED
    return true unless HIDE_OUT_OF_DEX_IN_POKEDEX
    return true if full?
    sym = species_id.is_a?(Symbol) ? species_id : species_id.to_s.upcase.to_sym
    return true if in_dex?(sym)
    # Allow if already owned/seen
    return true if $player && $player.owned?(sym)
    return true if $player && $player.seen?(sym)
    false
  end
end


#-------------------------------------------------------------------------------
# Hook the Pokedex's species iterator. The engine builds a sorted list
# in PokemonPokedex_Scene#pbGetDexList (or similar method depending on
# the Essentials version). We post-filter the returned list.
#-------------------------------------------------------------------------------
if defined?(PokemonPokedex_Scene)
  class PokemonPokedex_Scene
    if method_defined?(:pbGetDexList) && !method_defined?(:_sc_dex_orig_pbGetDexList)
      alias_method :_sc_dex_orig_pbGetDexList, :pbGetDexList

      def pbGetDexList
        list = _sc_dex_orig_pbGetDexList
        return list unless DexMode::ENABLED && DexMode.limited? && DexMode::HIDE_OUT_OF_DEX_IN_POKEDEX
        list.select { |entry|
          # Engine returns entries as arrays — species id is at index 0
          species = entry.is_a?(Array) ? entry[0] : entry
          DexMode.show_in_pokedex?(species)
        }
      end
    end
  end
end


#-------------------------------------------------------------------------------
# Total / Seen / Owned counts respect the mode. In SC_LIMITED, the
# "completion %" is calculated against the curated list rather than the
# full GameData::Species count — so completion is achievable.
#-------------------------------------------------------------------------------
if defined?(Player)
  class Player
    if method_defined?(:pokedex_count) && !method_defined?(:_sc_dex_orig_pokedex_count)
      alias_method :_sc_dex_orig_pokedex_count, :pokedex_count

      def pokedex_count
        return _sc_dex_orig_pokedex_count unless DexMode::ENABLED && DexMode.limited?
        # Count only in-dex species the player has seen
        SCLimitedDex.species.count { |sp| seen?(sp) }
      end
    end
  end
end


#-------------------------------------------------------------------------------
# Public helper: current-mode dex completion summary
#-------------------------------------------------------------------------------
def pbDexCompletionSummary
  if DexMode.limited?
    seen  = SCLimitedDex.species.count { |sp| $player.seen?(sp) }
    owned = SCLimitedDex.species.count { |sp| $player.owned?(sp) }
    total = SCLimitedDex.count
    pbMessage(_INTL("Dex Mode: \\c[3]SC Limited\\c[0]"))
    pbMessage(_INTL("Seen: {1} / {2} ({3}%)", seen, total, (seen * 100.0 / total).round(1)))
    pbMessage(_INTL("Owned: {1} / {2} ({3}%)", owned, total, (owned * 100.0 / total).round(1)))
  else
    total = GameData::Species.each.count
    seen  = (0...total).count { |i| true rescue false }  # placeholder for engine-side count
    pbMessage(_INTL("Dex Mode: \\c[1]Full Dex\\c[0]"))
    pbMessage(_INTL("All {1} species available.", total))
  end
end
