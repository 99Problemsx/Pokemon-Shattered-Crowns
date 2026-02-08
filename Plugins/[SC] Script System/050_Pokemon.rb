#===============================================================================
# Shattered Crowns Script System - Pokemon Species Definitions
#===============================================================================
# Complete PBS replacement for pokemon.txt and pokemon_forms.txt
# Defines species data using Ruby DSL instead of text files.
#===============================================================================

module GameData
  #=============================================================================
  # Species - Define Pokemon species
  #=============================================================================
  class Species < ScriptBase
    #---------------------------------------------------------------------------
    # Define a new Pokemon species
    # Usage:
    #   GameData::Species.define :PIKACHU do |pkmn|
    #     pkmn.name "Pikachu"
    #     pkmn.types :ELECTRIC
    #     pkmn.base_stats hp: 35, attack: 55, defense: 40, 
    #                     sp_atk: 50, sp_def: 50, speed: 90
    #     ...
    #   end
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      id = DSL.to_id(id)
      builder = SpeciesBuilder.new(id)
      yield(builder) if block_given?
      ScriptRegistry.register_pokemon(id, builder.to_data)
    end
    
    #---------------------------------------------------------------------------
    # Define a form for an existing species
    # Usage:
    #   GameData::Species.define_form :PIKACHU, 1 do |form|
    #     form.form_name "Partner Pikachu"
    #     form.base_stats hp: 45, attack: 80, ...
    #   end
    #---------------------------------------------------------------------------
    def self.define_form(species, form_number, &block)
      species = DSL.to_id(species)
      builder = FormBuilder.new(species, form_number)
      yield(builder) if block_given?
      ScriptRegistry.register_pokemon_form(species, form_number, builder.to_data)
    end
    
    #---------------------------------------------------------------------------
    # Get species data
    #---------------------------------------------------------------------------
    def self.get(id)
      ScriptRegistry.get_pokemon(DSL.to_id(id))
    end
    
    def self.get_form(species, form)
      ScriptRegistry.get_pokemon_form(DSL.to_id(species), form)
    end
    
    def self.exists?(id)
      !ScriptRegistry.get_pokemon(DSL.to_id(id)).nil?
    end
    
    def self.each
      ScriptRegistry.pokemon.each { |id, data| yield(id, data) }
    end
    
    def self.count
      ScriptRegistry.pokemon.count
    end
  end
  
  #=============================================================================
  # SpeciesBuilder - Builder for species data
  #=============================================================================
  class SpeciesBuilder
    attr_reader :id
    
    def initialize(id)
      @id = id
      @data = {
        id: id,
        name: id.to_s.capitalize,
        types: [:NORMAL],
        base_stats: { hp: 50, attack: 50, defense: 50, sp_atk: 50, sp_def: 50, speed: 50 },
        gender_ratio: :Female50Percent,
        growth_rate: :Medium,
        base_exp: 50,
        evs: {},
        catch_rate: 255,
        happiness: 70,
        abilities: [],
        hidden_abilities: [],
        moves: [],
        tutor_moves: [],
        egg_moves: [],
        egg_groups: [:Undiscovered],
        hatch_steps: 5120,
        height: 1.0,
        weight: 10.0,
        color: :Gray,
        shape: :Head,
        habitat: nil,
        category: "Unknown",
        pokedex_entry: "No data available.",
        generation: 1,
        flags: [],
        evolutions: [],
        mega_stone: nil,
        mega_move: nil,
        unmega_form: nil,
        mega_message: nil
      }
    end
    
    # Basic info
    def name(val); @data[:name] = val; end
    def form_name(val); @data[:form_name] = val; end
    def category(val); @data[:category] = val; end
    def pokedex_entry(val); @data[:pokedex_entry] = val; end
    def generation(val); @data[:generation] = val; end
    
    # Types - can pass one or two
    def types(*val)
      @data[:types] = val.flatten.map { |t| DSL.to_id(t) }
    end
    def type1(val); @data[:types][0] = DSL.to_id(val); end
    def type2(val); @data[:types][1] = DSL.to_id(val); end
    
    # Base Stats
    def base_stats(stats = {})
      @data[:base_stats] = {
        hp:     stats[:hp] || stats[:HP] || 50,
        attack: stats[:attack] || stats[:Attack] || stats[:atk] || 50,
        defense: stats[:defense] || stats[:Defense] || stats[:def] || 50,
        sp_atk: stats[:sp_atk] || stats[:SpAtk] || stats[:special_attack] || 50,
        sp_def: stats[:sp_def] || stats[:SpDef] || stats[:special_defense] || 50,
        speed:  stats[:speed] || stats[:Speed] || stats[:spd] || 50
      }
    end
    
    # EVs yielded
    def evs(vals = {})
      @data[:evs] = {
        hp:     vals[:hp] || vals[:HP] || 0,
        attack: vals[:attack] || vals[:Attack] || 0,
        defense: vals[:defense] || vals[:Defense] || 0,
        sp_atk: vals[:sp_atk] || vals[:SpAtk] || 0,
        sp_def: vals[:sp_def] || vals[:SpDef] || 0,
        speed:  vals[:speed] || vals[:Speed] || 0
      }
    end
    
    # Growth and catch
    def growth_rate(val); @data[:growth_rate] = val; end
    def base_exp(val); @data[:base_exp] = val; end
    def catch_rate(val); @data[:catch_rate] = val; end
    def happiness(val); @data[:happiness] = val; end
    
    # Gender
    def gender_ratio(val); @data[:gender_ratio] = val; end
    def always_male; @data[:gender_ratio] = :AlwaysMale; end
    def always_female; @data[:gender_ratio] = :AlwaysFemale; end
    def genderless; @data[:gender_ratio] = :Genderless; end
    
    # Abilities
    def abilities(*vals)
      @data[:abilities] = vals.flatten.map { |a| DSL.to_id(a) }
    end
    def hidden_abilities(*vals)
      @data[:hidden_abilities] = vals.flatten.map { |a| DSL.to_id(a) }
    end
    
    # Moves - level-up moves
    def moves(&block)
      move_builder = MoveLevelBuilder.new
      yield(move_builder) if block_given?
      @data[:moves] = move_builder.moves
    end
    
    # Individual move at level
    def learns(move, level)
      @data[:moves] << [level, DSL.to_id(move)]
    end
    
    # Tutor and egg moves
    def tutor_moves(*vals)
      @data[:tutor_moves] = vals.flatten.map { |m| DSL.to_id(m) }
    end
    def egg_moves(*vals)
      @data[:egg_moves] = vals.flatten.map { |m| DSL.to_id(m) }
    end
    
    # Breeding
    def egg_groups(*vals)
      @data[:egg_groups] = vals.flatten.map { |g| DSL.to_id(g) }
    end
    def hatch_steps(val); @data[:hatch_steps] = val; end
    
    # Physical characteristics
    def height(val); @data[:height] = val; end
    def weight(val); @data[:weight] = val; end
    def color(val); @data[:color] = val; end
    def shape(val); @data[:shape] = val; end
    def habitat(val); @data[:habitat] = val; end
    
    # Evolutions
    def evolutions(&block)
      evo_builder = EvolutionBuilder.new
      yield(evo_builder) if block_given?
      @data[:evolutions] = evo_builder.evolutions
    end
    
    def evolves_to(species, method, param = nil)
      @data[:evolutions] << {
        species: DSL.to_id(species),
        method: method,
        parameter: param
      }
    end
    
    # Flags (Legendary, Mythical, Ultra Beast, etc.)
    def flags(*vals)
      @data[:flags] = vals.flatten.map { |f| DSL.to_id(f) }
    end
    def legendary; @data[:flags] << :Legendary; end
    def mythical; @data[:flags] << :Mythical; end
    def ultra_beast; @data[:flags] << :UltraBeast; end
    def paradox; @data[:flags] << :Paradox; end
    
    # Mega Evolution
    def mega_stone(val); @data[:mega_stone] = DSL.to_id(val); end
    def mega_move(val); @data[:mega_move] = DSL.to_id(val); end
    
    # Wild held items
    def wild_items(common: nil, uncommon: nil, rare: nil)
      @data[:wild_item_common] = DSL.to_id(common) if common
      @data[:wild_item_uncommon] = DSL.to_id(uncommon) if uncommon
      @data[:wild_item_rare] = DSL.to_id(rare) if rare
    end
    
    # Incense for breeding
    def incense(val); @data[:incense] = DSL.to_id(val); end
    
    # Offspring (for breeding)
    def offspring(*vals)
      @data[:offspring] = vals.flatten.map { |s| DSL.to_id(s) }
    end
    
    def to_data
      @data.compact
    end
  end
  
  #=============================================================================
  # FormBuilder - Builder for form data (inherits from species)
  #=============================================================================
  class FormBuilder < SpeciesBuilder
    def initialize(species, form_number)
      super(species)
      @form_number = form_number
      @data[:base_species] = species
      @data[:form_number] = form_number
    end
    
    # Form-specific attributes
    def mega_form; @data[:flags] << :MegaForm; end
    def gmax_form; @data[:flags] << :GmaxForm; end
    def primal_form; @data[:flags] << :PrimalForm; end
    
    def to_data
      @data.compact
    end
  end
  
  #=============================================================================
  # MoveLevelBuilder - Helper for level-up moves
  #=============================================================================
  class MoveLevelBuilder
    attr_reader :moves
    
    def initialize
      @moves = []
    end
    
    # Add move at level
    def at(level, *move_names)
      move_names.flatten.each do |move|
        @moves << [level, DSL.to_id(move)]
      end
    end
    
    # Shorthand for level 1 moves
    def start(*move_names)
      at(1, *move_names)
    end
    
    # Evolution move (level 0)
    def on_evolution(*move_names)
      at(0, *move_names)
    end
  end
  
  #=============================================================================
  # EvolutionBuilder - Helper for evolutions
  #=============================================================================
  class EvolutionBuilder
    attr_reader :evolutions
    
    def initialize
      @evolutions = []
    end
    
    def to(species, method:, param: nil)
      @evolutions << {
        species: DSL.to_id(species),
        method: method,
        parameter: param
      }
    end
    
    # Common evolution methods
    def level_up(species, level)
      to(species, method: :Level, param: level)
    end
    
    def item(species, item_id)
      to(species, method: :Item, param: DSL.to_id(item_id))
    end
    
    def trade(species, item: nil)
      if item
        to(species, method: :TradeItem, param: DSL.to_id(item))
      else
        to(species, method: :Trade)
      end
    end
    
    def friendship(species, time: nil)
      method = case time
               when :day then :HappinessDay
               when :night then :HappinessNight
               else :Happiness
               end
      to(species, method: method)
    end
    
    def level_with_move(species, move)
      to(species, method: :HasMove, param: DSL.to_id(move))
    end
    
    def level_with_type(species, type)
      to(species, method: :HasMoveType, param: DSL.to_id(type))
    end
    
    def location(species, map_id)
      to(species, method: :Location, param: map_id)
    end
    
    def level_male(species, level)
      to(species, method: :LevelMale, param: level)
    end
    
    def level_female(species, level)
      to(species, method: :LevelFemale, param: level)
    end
  end
end

#===============================================================================
# Top-level Shortcut
#===============================================================================
def Species
  GameData::Species
end
