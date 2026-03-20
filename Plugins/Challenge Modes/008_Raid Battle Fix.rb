#===============================================================================
# Raid Battle Storage Fix
# Ensures captured Pokemon in raids go to party first, then PC if party is full
#===============================================================================

class Battle
  # Override storage specifically for raid battles
  alias raid_fix_pbStorePokemon pbStorePokemon if method_defined?(:pbStorePokemon)
  def pbStorePokemon(pkmn)
    # In raid battles, use the default storage logic
    if @raid
      if $player.party.length < Settings::MAX_PARTY_SIZE
        $player.party.push(pkmn)
        return true
      else
        # Party full — store to PC via original method
        if respond_to?(:raid_fix_pbStorePokemon)
          return raid_fix_pbStorePokemon(pkmn)
        end
        return false
      end
    end

    # For non-raid battles, use the original method
    if respond_to?(:raid_fix_pbStorePokemon)
      return raid_fix_pbStorePokemon(pkmn)
    else
      return $player.party.length < Settings::MAX_PARTY_SIZE
    end
  end
end
