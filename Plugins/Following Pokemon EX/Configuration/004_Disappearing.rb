#-------------------------------------------------------------------------------
# These are used to define whether the follower should appear or disappear when
# refreshing it. "next true" will let it stay and "next false" will make it
# disappear
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_appear, :vehicles, proc { |_pkmn|
  # Don't follow if on bicyle
  next false if $PokemonGlobal.bicycle
  # Don't follow if on Pokeride
  next false if $PokemonGlobal.respond_to?(:mount) && $PokemonGlobal.mount
})
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_appear, :map_flag_keep, proc { |pkmn|
  metadata = $game_map.metadata
  # Always follow if map has the approriate flag to hide
  next true if metadata && metadata.has_flag?("ShowFollowingPkmn")
})
#-------------------------------------------------------------------------------
# [PERF FIX] Cache height check result per map+species to avoid expensive
# species lookup + encounter table iteration on every refresh_internal call.
# The cache is invalidated when the map changes or the follower species changes.
#-------------------------------------------------------------------------------
$__following_pkmn_height_cache = {}
EventHandlers.add(:following_pkmn_appear, :height, proc { |pkmn|
  metadata = $game_map.metadata
  if metadata && metadata.outdoor_map != true && $PokemonEncounters
    cache_key = [$game_map.map_id, pkmn.species, pkmn.form]
    if $__following_pkmn_height_cache[:key] == cache_key
      next false if $__following_pkmn_height_cache[:result] == :hide
    else
      height = GameData::Species.get_species_form(pkmn.species, pkmn.form).height
      should_hide = (height / 10.0) > 3.0 && !$PokemonEncounters.encounter_possible_here?
      $__following_pkmn_height_cache = { key: cache_key, result: should_hide ? :hide : :show }
      next false if should_hide
    end
  end
})
# Invalidate height cache only on non-connected map transitions (teleportation).
# Connected map scrolling keeps the same encounter data, so the cache stays valid.
EventHandlers.add(:on_enter_map, :clear_following_pkmn_height_cache, proc {
  # Only clear if the cached map isn't connected to the current map
  old_map_id = $__following_pkmn_height_cache.dig(:key, 0)
  if old_map_id && $map_factory
    connected = $map_factory.areConnected?(old_map_id, $game_map.map_id) rescue false
    $__following_pkmn_height_cache = {} unless connected
  else
    $__following_pkmn_height_cache = {}
  end
})
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_appear, :map_flag_remove, proc { |pkmn|
  metadata = $game_map.metadata
  # Don't follow if map has the approriate flag to hide
  next false if metadata && metadata.has_flag?("HideFollowingPkmn")
})
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_appear, :surfing, proc { |pkmn|
  if ($PokemonGlobal.surfing && !$game_temp.ending_surf) ||
     (FollowingPkmn.get_event&.terrain_tag&.can_surf && FollowingPkmn.active?)
    # Don't follow if this is the Pokemon currently being ridden
    # UNLESS it's the only Pokemon in the party (then show it swimming)
    if pkmn == $PokemonGlobal.current_surfing
      able_count = $player.able_pokemon_count
      # If we have more than 1 able Pokemon, hide the surfing one
      next false if able_count > 1
      # If it's the only Pokemon, let it follow with swimming sprite
      next true if able_count == 1
    end
    # Follow if the Pokemon is water type, levitates or is manually removed
    next true if FollowingPkmn.waterborne_follower?
    # Don't Follow
    next false
  end
})
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_appear, :diving, proc { |pkmn|
  if $PokemonGlobal.diving
    # Don't follow if this is the Pokemon currently being ridden
    next false if pkmn == $PokemonGlobal.current_diving
    # Follow if the Pokemon is water type
    next true if pkmn.hasType?(:WATER)
    # Don't Follow
    next false
  end
})
#-------------------------------------------------------------------------------
