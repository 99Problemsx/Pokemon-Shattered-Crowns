#===============================================================================
# Metamorph Challenge - Random Team After Every Battle
# After each battle, every Pokémon in the player's party transforms
# into a random different species while keeping its level.
#===============================================================================

#===============================================================================
# Hook into end of battle to randomize team
#===============================================================================
EventHandlers.add(:on_end_battle, :metamorph_challenge,
  proc { |decision, canLose|
    next if !ChallengeModes.on?(:METAMORPH_CHALLENGE)
    # Only transform after actual battles (won, lost, caught — not fled)
    next if ![1, 2, 4].include?(decision)

    transformed = []
    $player.party.each_with_index do |pkmn, i|
      next if !pkmn
      next if pkmn.egg?
      next if pkmn.respond_to?(:perma_faint) && pkmn.perma_faint

      new_species = ChallengeModes.get_metamorph_species(pkmn)
      next if !new_species || new_species == pkmn.species

      old_name    = pkmn.speciesName
      old_item    = pkmn.item
      old_level   = pkmn.level
      old_hp_pct  = pkmn.totalhp > 0 ? pkmn.hp.to_f / pkmn.totalhp : 0.0
      was_fainted = pkmn.fainted?
      old_status  = pkmn.status
      old_statcnt = pkmn.statusCount

      # Create fresh Pokémon at the same level
      new_pkmn = Pokemon.new(new_species, old_level)
      new_pkmn.reset_moves

      # Keep held item if configured
      if ChallengeModes::METAMORPH_CONFIG[:keep_held_items] && old_item
        new_pkmn.item = old_item
      end

      # Keep happiness if configured
      if ChallengeModes::METAMORPH_CONFIG[:keep_happiness]
        new_pkmn.happiness = pkmn.happiness
      end

      # Maintain HP ratio & status
      if was_fainted
        new_pkmn.hp = 0
      else
        new_pkmn.hp = [(new_pkmn.totalhp * old_hp_pct).round, 1].max
      end
      new_pkmn.status      = old_status
      new_pkmn.statusCount = old_statcnt

      $player.party[i] = new_pkmn
      transformed.push([old_name, new_pkmn.speciesName])
    end

    # Show transformation messages
    if ChallengeModes::METAMORPH_CONFIG[:show_message] && !transformed.empty?
      pbMessage(_INTL("\\se[Battle ball shake]Metamorph Challenge: Your team transforms!"))
      transformed.each do |old_name, new_name|
        pbMessage(_INTL("{1} transformed into {2}!", old_name, new_name))
      end
    end
  }
)

#===============================================================================
# Species selection for Metamorph transformation
#===============================================================================
module ChallengeModes
  module_function

  def get_metamorph_species(current_pkmn)
    possible = []

    # Try to load regional dex
    regional_dex = nil
    if METAMORPH_CONFIG[:only_regional]
      begin
        dexes = pbLoadRegionalDexes
        regional_dex = dexes[0] if dexes && !dexes.empty?
      rescue
        regional_dex = nil
      end
    end

    GameData::Species.each do |species|
      next if species.form != 0
      next if species.mega_stone || species.mega_move
      next if species.species == current_pkmn.species

      # Skip legendaries if configured
      if METAMORPH_CONFIG[:respect_legends]
        next if species.has_flag?("Legendary") || species.has_flag?("Mythical")
      end

      # Only regional dex if configured and available
      if regional_dex
        next if !regional_dex.include?(species.species)
      end

      # Respect Monotype if active
      if on?(:MONOTYPE_MODE) && $PokemonGlobal&.challenge_monotype_type
        next if !species.types.include?($PokemonGlobal.challenge_monotype_type)
      end

      possible.push(species.species)
    end

    return possible.sample
  end
end
