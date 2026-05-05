#===============================================================================
# No Items Mode
# Healing, status-curing, and revive items can't be used — neither in
# battle nor on the field. TMs/HMs, evolution stones, key items, and
# stat-affecting items (Vitamins, Mints, Bottle Caps) still work.
#
# Pair with NO_POKEMON_CENTER for a true "no heal" run, or with
# LIMITED_HEALING / NO_POKEMON_CENTER off to lean on natural healing
# (Rest, Drain Punch, Wish).
#===============================================================================

module ChallengeModes
  RULES[:NO_ITEMS] = {
    :name  => _INTL("No Healing Items"),
    :desc  => _INTL("Potions, Revives, status-curing items, and EXP/Rare Candies can't be used. TMs, evolution stones, and key items still work."),
    :order => 22
  }

  # Items blocked under this rule. Add or remove freely.
  NO_ITEMS_BLOCKED = [
    # HP restore
    :POTION,        :SUPERPOTION,   :HYPERPOTION,   :MAXPOTION,
    :FULLRESTORE,   :BERRYJUICE,    :SACREDASH,
    :FRESHWATER,    :SODAPOP,       :LEMONADE,      :MOOMOOMILK,
    :SWEETHEART,    :ENERGYPOWDER,  :ENERGYROOT,    :HEALPOWDER,
    :REVIVE,        :MAXREVIVE,     :REVIVALHERB,   :MAXHONEY,
    :RAGECANDYBAR,  :OLDGATEAU,     :LAVACOOKIE,
    :CASTELIACONE,  :LUMIOSEGALETTE, :SHALOURSABLE, :BIGMALASADA,
    # Status cures
    :ANTIDOTE,      :AWAKENING,     :BURNHEAL,      :ICEHEAL,
    :PARALYZEHEAL,  :FULLHEAL,
    # PP restore
    :ELIXIR,        :MAXELIXIR,     :ETHER,         :MAXETHER,
    # Berries that heal HP/status (EV-altering berries are intentionally allowed
    # since they're a stat-shaping tool, not a heal)
    :ORANBERRY,     :SITRUSBERRY,   :BERRYJUICE,
    :CHERIBERRY,    :CHESTOBERRY,   :PECHABERRY,    :RAWSTBERRY,
    :ASPEARBERRY,   :LUMBERRY,      :PERSIMBERRY,   :ENIGMABERRY
  ].uniq

  def self.no_items?
    return on?(:NO_ITEMS)
  end

  def self.no_items_blocks?(item_id)
    return false unless no_items?
    data = GameData::Item.try_get(item_id)
    return false unless data
    NO_ITEMS_BLOCKED.include?(data.id)
  end
end

#===============================================================================
# Block in-battle usage via CanUseInBattle (wraps any inner handler so we
# don't clobber Permafaint's revive guards).
#===============================================================================
ChallengeModes::NO_ITEMS_BLOCKED.each do |item_id|
  next unless GameData::Item.exists?(item_id)
  inner = ItemHandlers::CanUseInBattle[item_id]
  ItemHandlers::CanUseInBattle.add(item_id,
    proc { |item, pokemon, battler, move, firstAction, battle, scene, showMessages|
      if ChallengeModes.no_items?
        if showMessages && battle
          data = GameData::Item.try_get(item)
          name = data ? data.name : item.to_s
          battle.pbDisplay(_INTL("{1} can't be used in Challenge Mode!", name))
        end
        next false
      end
      next true unless inner
      next inner.call(item, pokemon, battler, move, firstAction, battle, scene, showMessages)
    }
  )
end

#===============================================================================
# Block field usage via UseOnPokemon (party screen) and UseInField.
#===============================================================================
ChallengeModes::NO_ITEMS_BLOCKED.each do |item_id|
  next unless GameData::Item.exists?(item_id)
  inner_party = ItemHandlers::UseOnPokemon[item_id]
  ItemHandlers::UseOnPokemon.add(item_id, proc { |item, qty, pkmn, scene|
    if ChallengeModes.no_items?
      scene.pbDisplay(_INTL("Challenge Mode prevents this item from being used!"))
      next false
    end
    next inner_party ? inner_party.call(item, qty, pkmn, scene) : false
  })

  inner_field = ItemHandlers::UseInField[item_id]
  if inner_field
    ItemHandlers::UseInField.add(item_id, proc { |item|
      if ChallengeModes.no_items?
        pbMessage(_INTL("Challenge Mode prevents this item from being used!"))
        next false
      end
      next inner_field.call(item)
    })
  end
end
