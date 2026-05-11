#===============================================================================
# Banned Type Mode
# At challenge start, pick one type. Pokemon of that type can't be caught,
# received, or sent into battle. Inverse of Monotype Challenge.
#
# Recursive evolution check (like Monotype) is NOT applied here — only the
# Pokemon's current types matter, so a Bulbasaur (Grass/Poison) is banned
# under Banned-Grass but Charmander (Fire) is fine even though it evolves
# into a Charizard (Fire/Flying) — Flying is banned, but the rule is checked
# at use-time, not at species-tree level.
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :challenge_banned_type
end

module ChallengeModes
  RULES[:BANNED_TYPE] = {
    :name  => _INTL("Banned Type"),
    :desc  => _INTL("Pick a type at the start. Pokémon of that type cannot be caught, received, or used in battle."),
    :order => 24
  }

  def self.banned_type?
    return on?(:BANNED_TYPE)
  end

  def self.banned_type
    return $PokemonGlobal&.challenge_banned_type
  end

  def self.has_banned_type?(pokemon)
    return false unless banned_type?
    return false unless banned_type
    species_data = pokemon.is_a?(Pokemon) ? pokemon.species_data : GameData::Species.try_get(pokemon)
    return false unless species_data
    return species_data.types.include?(banned_type)
  end

  def self.select_banned_type
    type_names = []
    MONOTYPE_TYPES.each do |type|
      data = GameData::Type.try_get(type)
      type_names.push(data ? data.name : type.to_s)
    end
    type_names.push(_INTL("Cancel"))

    selected = pbMessage(_INTL("Choose the type to BAN:"), type_names)
    if selected >= 0 && selected < MONOTYPE_TYPES.length
      $PokemonGlobal.challenge_banned_type = MONOTYPE_TYPES[selected]
      type_data = GameData::Type.try_get($PokemonGlobal.challenge_banned_type)
      type_name = type_data ? type_data.name : $PokemonGlobal.challenge_banned_type.to_s
      pbMessage(_INTL("{1}-type Pokémon are banned for this challenge!", type_name))
      return true
    end
    return false
  end
end

#===============================================================================
# Hook into begin_challenge to prompt for the banned type.
#===============================================================================
module ChallengeModes
  class << self
    alias __banned_type__begin_challenge begin_challenge
  end

  def self.begin_challenge
    __banned_type__begin_challenge
    if on?(:BANNED_TYPE) && !$PokemonGlobal.challenge_banned_type
      select_banned_type
    end
  end
end

#===============================================================================
# Block adding banned-type Pokemon
#===============================================================================
alias __cm_banned_type__pbAddPokemon pbAddPokemon unless defined?(__cm_banned_type__pbAddPokemon)
def pbAddPokemon(*args)
  if ChallengeModes.banned_type?
    pkmn = args[0]
    target = pkmn.is_a?(Pokemon) ? pkmn : pkmn
    if target && ChallengeModes.has_banned_type?(target)
      type_data = GameData::Type.try_get(ChallengeModes.banned_type)
      type_name = type_data ? type_data.name : ChallengeModes.banned_type.to_s
      pbMessage(_INTL("{1}-type Pokémon are banned in Challenge Mode!", type_name))
      return false
    end
  end
  return __cm_banned_type__pbAddPokemon(*args)
end

#===============================================================================
# Block sending banned-type Pokemon into battle
#===============================================================================
class Battle
  alias __cm_banned_type__pbCanSwitchIn? pbCanSwitchIn? unless method_defined?(:__cm_banned_type__pbCanSwitchIn?)
  def pbCanSwitchIn?(idxBattler, idxParty, partyScene = nil)
    return false unless __cm_banned_type__pbCanSwitchIn?(idxBattler, idxParty, partyScene)
    if ChallengeModes.banned_type?
      pokemon = pbParty(idxBattler)[idxParty]
      return false if pokemon && ChallengeModes.has_banned_type?(pokemon)
    end
    return true
  end
end

#===============================================================================
# Block catching wild banned-type Pokemon
#===============================================================================
class Battle
  alias __cm_banned_type__pbThrowPokeBall pbThrowPokeBall unless method_defined?(:__cm_banned_type__pbThrowPokeBall)
  def pbThrowPokeBall(*args)
    if ChallengeModes.banned_type?
      battler = opposes?(args[0]) ? @battlers[args[0]] : @battlers[args[0]].pbDirectOpposing(true)
      battler = battler.allAllies.first if battler&.fainted?
      if battler && ChallengeModes.has_banned_type?(battler.pokemon)
        type_data = GameData::Type.try_get(ChallengeModes.banned_type)
        type_name = type_data ? type_data.name : ChallengeModes.banned_type.to_s
        pbDisplay(_INTL("The Poké Ball won't work!"))
        pbDisplay(_INTL("{1}-type Pokémon are banned in Challenge Mode!", type_name))
        return
      end
    end
    return __cm_banned_type__pbThrowPokeBall(*args)
  end
end

#===============================================================================
# Reset on challenge end
#===============================================================================
module ChallengeModes
  class << self
    alias __banned_type__reset reset unless method_defined?(:__banned_type__reset)
  end

  def self.reset
    __banned_type__reset
    return unless $PokemonGlobal
    $PokemonGlobal.challenge_banned_type = nil
  end
end
