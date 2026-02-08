#===============================================================================
# Shattered Crowns Script System - Trainer Definitions
#===============================================================================
# Complete PBS replacement for trainers.txt and trainer_types.txt
# Defines trainer data using Ruby DSL instead of text files.
#===============================================================================

module GameData
  #=============================================================================
  # TrainerType - Define trainer types (classes)
  #=============================================================================
  class TrainerType < ScriptBase
    def self.define(id, &block)
      id = DSL.to_id(id)
      builder = TrainerTypeBuilder.new(id)
      yield(builder) if block_given?
      ScriptRegistry.register_trainer_type(id, builder.to_data)
    end
    
    def self.get(id)
      ScriptRegistry.get_trainer_type(DSL.to_id(id))
    end
    
    def self.exists?(id)
      !ScriptRegistry.get_trainer_type(DSL.to_id(id)).nil?
    end
    
    def self.each
      ScriptRegistry.trainer_types.each { |id, data| yield(id, data) }
    end
    
    def self.count
      ScriptRegistry.trainer_types.count
    end
  end
  
  #=============================================================================
  # TrainerTypeBuilder
  #=============================================================================
  class TrainerTypeBuilder
    attr_reader :id
    
    def initialize(id)
      @id = id
      @data = {
        id: id,
        name: id.to_s.split('_').map(&:capitalize).join(' '),
        gender: :Male,
        base_money: 30,
        skill_level: 50,
        skill_code: nil,
        intro_bgm: nil,
        battle_bgm: nil,
        victory_bgm: nil,
        flags: []
      }
    end
    
    def name(value);        @data[:name] = value; self; end
    def gender(value);      @data[:gender] = value; self; end
    def base_money(value);  @data[:base_money] = value; self; end
    def skill_level(value); @data[:skill_level] = value; self; end
    def skill_code(value);  @data[:skill_code] = value; self; end
    def intro_bgm(value);   @data[:intro_bgm] = value; self; end
    def battle_bgm(value);  @data[:battle_bgm] = value; self; end
    def victory_bgm(value); @data[:victory_bgm] = value; self; end
    def flags(*values);     @data[:flags] = values.flatten; self; end
    
    def to_data
      @data.dup
    end
  end
  
  #=============================================================================
  # Trainer - Define individual trainers
  #=============================================================================
  class Trainer < ScriptBase
    def self.define(type, name, version = 0, &block)
      type = DSL.to_id(type)
      key = "#{type}_#{name}_#{version}"
      builder = TrainerBuilder.new(type, name, version)
      yield(builder) if block_given?
      ScriptRegistry.register_trainer(key, builder.to_data)
    end
    
    def self.get(type, name, version = 0)
      key = "#{DSL.to_id(type)}_#{name}_#{version}"
      ScriptRegistry.get_trainer(key)
    end
    
    def self.exists?(type, name, version = 0)
      !get(type, name, version).nil?
    end
    
    def self.each
      ScriptRegistry.trainers.each { |key, data| yield(key, data) }
    end
    
    def self.count
      ScriptRegistry.trainers.count
    end
  end
  
  #=============================================================================
  # TrainerBuilder
  #=============================================================================
  class TrainerBuilder
    attr_reader :type, :name, :version
    
    def initialize(type, name, version)
      @type = type
      @name = name
      @version = version
      @data = {
        type: type,
        name: name,
        version: version,
        lose_text: nil,
        items: [],
        pokemon: []
      }
      @current_pokemon = nil
    end
    
    def lose_text(value); @data[:lose_text] = value; self; end
    def items(*values);   @data[:items] = values.flatten; self; end
    
    def pokemon(species, level, &block)
      pkmn_builder = TrainerPokemonBuilder.new(species, level)
      yield(pkmn_builder) if block_given?
      @data[:pokemon] << pkmn_builder.to_data
      self
    end
    
    def to_data
      @data.dup
    end
  end
  
  #=============================================================================
  # TrainerPokemonBuilder
  #=============================================================================
  class TrainerPokemonBuilder
    def initialize(species, level)
      @data = {
        species: DSL.to_id(species),
        level: level,
        moves: nil,
        item: nil,
        gender: nil,
        nature: nil,
        ability: nil,
        iv: nil,
        ev: nil,
        happiness: nil,
        ball: nil,
        shiny: false,
        shadow: false,
        form: nil,
        nickname: nil
      }
    end
    
    def moves(*values);    @data[:moves] = values.flatten; self; end
    def item(value);       @data[:item] = value; self; end
    def gender(value);     @data[:gender] = value; self; end
    def nature(value);     @data[:nature] = value; self; end
    def ability(value);    @data[:ability] = value; self; end
    def iv(value);         @data[:iv] = value; self; end
    def ev(value);         @data[:ev] = value; self; end
    def happiness(value);  @data[:happiness] = value; self; end
    def ball(value);       @data[:ball] = value; self; end
    def shiny(value = true); @data[:shiny] = value; self; end
    def shadow(value = true); @data[:shadow] = value; self; end
    def form(value);       @data[:form] = value; self; end
    def nickname(value);   @data[:nickname] = value; self; end
    
    def to_data
      @data.dup
    end
  end
end

#===============================================================================
# ScriptRegistry Extensions for Trainers
#===============================================================================
module GameData
  module ScriptRegistry
    class << self
      def trainer_types
        @trainer_types ||= {}
      end
      
      def trainers
        @trainers ||= {}
      end
      
      def register_trainer_type(id, data)
        trainer_types[id] = data
      end
      
      def get_trainer_type(id)
        trainer_types[id]
      end
      
      def register_trainer(key, data)
        trainers[key] = data
      end
      
      def get_trainer(key)
        trainers[key]
      end
    end
  end
end
