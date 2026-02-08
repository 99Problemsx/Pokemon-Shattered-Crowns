#===============================================================================
# Shattered Crowns Script System - PBS Override Hooks
#===============================================================================
# Intercepts PBS loading and replaces it with script-based data.
# This is the core of the PBS replacement system.
#===============================================================================

module SCScripts
  #=============================================================================
  # PBS Override Module
  #=============================================================================
  module PBSOverride
    @initialized = false
    @overrides_installed = false
    
    class << self
      attr_accessor :initialized, :overrides_installed
    end
    
    #---------------------------------------------------------------------------
    # Install all PBS override hooks
    #---------------------------------------------------------------------------
    def self.install_hooks
      return if @overrides_installed
      
      SCScripts.log("Installing PBS override hooks...")
      
      install_species_hooks
      install_move_hooks
      install_ability_hooks
      install_item_hooks
      install_type_hooks
      install_trainer_hooks
      install_encounter_hooks
      install_ribbon_hooks
      install_map_metadata_hooks
      install_map_connection_hooks
      install_regional_dex_hooks
      install_metadata_hooks
      install_town_map_hooks
      install_species_metrics_hooks
      
      @overrides_installed = true
      SCScripts.log("PBS override hooks installed successfully!")
    end
    
    #---------------------------------------------------------------------------
    # Species/Pokemon Hooks
    #---------------------------------------------------------------------------
    def self.install_species_hooks
      return unless defined?(GameData::Species)
      
      # Store original methods
      GameData::Species.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        
        # Override get to check script registry first
        define_method(:get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_pokemon(id)
          return wrap_script_species(id, script_data) if script_data
          original_get(id) rescue nil
        end
        
        define_method(:try_get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_pokemon(id)
          return wrap_script_species(id, script_data) if script_data
          original_try_get(id) rescue nil
        end
        
        define_method(:exists?) do |id|
          id = id.to_sym if id.is_a?(String)
          return true if GameData::ScriptRegistry.get_pokemon(id)
          original_exists?(id) rescue false
        end
        
        # Wrapper to convert script data to GameData::Species format
        define_method(:wrap_script_species) do |id, data|
          return nil unless data
          
          # Create a struct-like object that mimics GameData::Species
          species_data = OpenStruct.new(data)
          species_data.id = id
          species_data.id_number = data[:dex_number] || 0
          
          # Map base stats
          if data[:base_stats]
            species_data.base_stats = {
              :HP => data[:base_stats][:hp],
              :ATTACK => data[:base_stats][:attack],
              :DEFENSE => data[:base_stats][:defense],
              :SPECIAL_ATTACK => data[:base_stats][:sp_atk],
              :SPECIAL_DEFENSE => data[:base_stats][:sp_def],
              :SPEED => data[:base_stats][:speed]
            }
          end
          
          species_data
        end
      end
      
      SCScripts.debug("Species hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Move Hooks
    #---------------------------------------------------------------------------
    def self.install_move_hooks
      return unless defined?(GameData::Move)
      
      GameData::Move.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        
        define_method(:get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_move(id)
          return wrap_script_move(id, script_data) if script_data
          original_get(id) rescue nil
        end
        
        define_method(:try_get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_move(id)
          return wrap_script_move(id, script_data) if script_data
          original_try_get(id) rescue nil
        end
        
        define_method(:exists?) do |id|
          id = id.to_sym if id.is_a?(String)
          return true if GameData::ScriptRegistry.get_move(id)
          original_exists?(id) rescue false
        end
        
        define_method(:wrap_script_move) do |id, data|
          return nil unless data
          move_data = OpenStruct.new(data)
          move_data.id = id
          move_data.real_name = data[:name]
          move_data.real_description = data[:description]
          move_data.base_damage = data[:power]
          move_data.total_pp = data[:pp]
          move_data
        end
      end
      
      SCScripts.debug("Move hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Ability Hooks
    #---------------------------------------------------------------------------
    def self.install_ability_hooks
      return unless defined?(GameData::Ability)
      
      GameData::Ability.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        
        define_method(:get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_ability(id)
          return wrap_script_ability(id, script_data) if script_data
          original_get(id) rescue nil
        end
        
        define_method(:try_get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_ability(id)
          return wrap_script_ability(id, script_data) if script_data
          original_try_get(id) rescue nil
        end
        
        define_method(:exists?) do |id|
          id = id.to_sym if id.is_a?(String)
          return true if GameData::ScriptRegistry.get_ability(id)
          original_exists?(id) rescue false
        end
        
        define_method(:wrap_script_ability) do |id, data|
          return nil unless data
          ability_data = OpenStruct.new(data)
          ability_data.id = id
          ability_data.real_name = data[:name]
          ability_data.real_description = data[:description]
          ability_data
        end
      end
      
      SCScripts.debug("Ability hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Item Hooks
    #---------------------------------------------------------------------------
    def self.install_item_hooks
      return unless defined?(GameData::Item)
      
      GameData::Item.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        
        define_method(:get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_item(id)
          return wrap_script_item(id, script_data) if script_data
          original_get(id) rescue nil
        end
        
        define_method(:try_get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_item(id)
          return wrap_script_item(id, script_data) if script_data
          original_try_get(id) rescue nil
        end
        
        define_method(:exists?) do |id|
          id = id.to_sym if id.is_a?(String)
          return true if GameData::ScriptRegistry.get_item(id)
          original_exists?(id) rescue false
        end
        
        define_method(:wrap_script_item) do |id, data|
          return nil unless data
          item_data = OpenStruct.new(data)
          item_data.id = id
          item_data.real_name = data[:name]
          item_data.real_name_plural = data[:name_plural]
          item_data.real_description = data[:description]
          item_data
        end
      end
      
      SCScripts.debug("Item hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Type Hooks
    #---------------------------------------------------------------------------
    def self.install_type_hooks
      return unless defined?(GameData::Type)
      
      GameData::Type.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        
        define_method(:get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_type(id)
          return wrap_script_type(id, script_data) if script_data
          original_get(id) rescue nil
        end
        
        define_method(:try_get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_type(id)
          return wrap_script_type(id, script_data) if script_data
          original_try_get(id) rescue nil
        end
        
        define_method(:exists?) do |id|
          id = id.to_sym if id.is_a?(String)
          return true if GameData::ScriptRegistry.get_type(id)
          original_exists?(id) rescue false
        end
        
        define_method(:wrap_script_type) do |id, data|
          return nil unless data
          type_data = OpenStruct.new(data)
          type_data.id = id
          type_data.real_name = data[:name]
          type_data
        end
      end
      
      SCScripts.debug("Type hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Trainer Hooks (for PBS trainers.txt replacement)
    #---------------------------------------------------------------------------
    def self.install_trainer_hooks
      return unless defined?(GameData::Trainer)
      
      GameData::Trainer.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        
        define_method(:get) do |trainer_type, name, version = 0|
          # Check script registry first
          key = "#{trainer_type}_#{name}_#{version}"
          script_data = GameData::ScriptRegistry.get_trainer(key)
          return wrap_script_trainer(script_data) if script_data
          original_get(trainer_type, name, version) rescue nil
        end
        
        define_method(:try_get) do |trainer_type, name, version = 0|
          key = "#{trainer_type}_#{name}_#{version}"
          script_data = GameData::ScriptRegistry.get_trainer(key)
          return wrap_script_trainer(script_data) if script_data
          original_try_get(trainer_type, name, version) rescue nil
        end
        
        define_method(:wrap_script_trainer) do |data|
          return nil unless data
          trainer_data = OpenStruct.new(data)
          trainer_data
        end
      end
      
      SCScripts.debug("Trainer hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Encounter Hooks
    #---------------------------------------------------------------------------
    def self.install_encounter_hooks
      return unless defined?(GameData::Encounter)
      
      GameData::Encounter.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        
        define_method(:get) do |map_id, version = 0|
          # Check script registry first
          key = "#{map_id}_#{version}"
          script_data = GameData::ScriptRegistry.get_encounters(key)
          return wrap_script_encounter(script_data) if script_data
          original_get(map_id, version) rescue nil
        end
        
        define_method(:wrap_script_encounter) do |data|
          return nil unless data
          encounter_data = OpenStruct.new(data)
          encounter_data
        end
      end
      
      SCScripts.debug("Encounter hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Ribbon Hooks
    #---------------------------------------------------------------------------
    def self.install_ribbon_hooks
      return unless defined?(GameData::Ribbon)
      
      GameData::Ribbon.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        
        define_method(:get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_ribbon(id)
          return wrap_script_ribbon(id, script_data) if script_data
          original_get(id) rescue nil
        end
        
        define_method(:try_get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_ribbon(id)
          return wrap_script_ribbon(id, script_data) if script_data
          original_try_get(id) rescue nil
        end
        
        define_method(:exists?) do |id|
          id = id.to_sym if id.is_a?(String)
          return true if GameData::ScriptRegistry.get_ribbon(id)
          original_exists?(id) rescue false
        end
        
        define_method(:wrap_script_ribbon) do |id, data|
          return nil unless data
          ribbon_data = OpenStruct.new(data)
          ribbon_data.id = id
          ribbon_data.real_name = data[:name]
          ribbon_data.real_description = data[:description]
          ribbon_data
        end
      end
      
      SCScripts.debug("Ribbon hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Map Metadata Hooks
    #---------------------------------------------------------------------------
    def self.install_map_metadata_hooks
      return unless defined?(GameData::MapMetadata)
      
      GameData::MapMetadata.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        
        define_method(:get) do |map_id|
          script_data = GameData::ScriptRegistry.get_map(map_id)
          return wrap_script_metadata(map_id, script_data) if script_data
          original_get(map_id) rescue nil
        end
        
        define_method(:try_get) do |map_id|
          script_data = GameData::ScriptRegistry.get_map(map_id)
          return wrap_script_metadata(map_id, script_data) if script_data
          original_try_get(map_id) rescue nil
        end
        
        define_method(:wrap_script_metadata) do |map_id, data|
          return nil unless data
          metadata = OpenStruct.new(data)
          metadata.id = map_id
          metadata.real_name = data[:real_name]
          metadata
        end
      end
      
      SCScripts.debug("Map metadata hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Map Connection Hooks
    #---------------------------------------------------------------------------
    def self.install_map_connection_hooks
      return unless defined?(GameData::MapConnection)
      
      GameData::MapConnection.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_each, :each if method_defined?(:each) && !method_defined?(:original_each)
        
        # Get connection by ID
        define_method(:get) do |id|
          script_data = ScriptRegistry.get_map_connection(id)
          return OpenStruct.new(script_data) if script_data
          original_get(id) rescue nil
        end
        
        # Iterate over all connections
        define_method(:each) do |&block|
          ScriptRegistry.all_map_connections.each_value do |data|
            block.call(OpenStruct.new(data)) if block
          end
        end
        
        # Get connections for a specific map
        define_method(:connections_for) do |map_id|
          ScriptRegistry.connections_for_map(map_id).map { |c| OpenStruct.new(c) }
        end
      end
      
      SCScripts.debug("Map connection hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Regional Dex Hooks
    #---------------------------------------------------------------------------
    def self.install_regional_dex_hooks
      return unless defined?(GameData::RegionalDex) || defined?(pbGetRegionalNumber)
      
      if defined?(GameData::RegionalDex)
        GameData::RegionalDex.singleton_class.class_eval do
          alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
          
          define_method(:get) do |dex_id|
            script_data = ScriptRegistry.get_regional_dex(dex_id)
            return OpenStruct.new(script_data) if script_data
            original_get(dex_id) rescue nil
          end
          
          # Get species list for a dex
          define_method(:species_list) do |dex_id|
            dex = ScriptRegistry.get_regional_dex(dex_id)
            dex ? dex[:species] : []
          end
          
          # Get regional dex number for a species
          define_method(:dex_number) do |dex_id, species|
            ScriptRegistry.regional_dex_number(dex_id, species)
          end
        end
      end
      
      # Also hook pbGetRegionalNumber if it exists
      if defined?(pbGetRegionalNumber)
        original_method = method(:pbGetRegionalNumber)
        define_method(:pbGetRegionalNumber) do |dex_id, species|
          num = ScriptRegistry.regional_dex_number(dex_id, species)
          return num if num
          original_method.call(dex_id, species) rescue 0
        end
      end
      
      SCScripts.debug("Regional dex hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Global Metadata Hooks
    #---------------------------------------------------------------------------
    def self.install_metadata_hooks
      return unless defined?(GameData::Metadata) || defined?(GameData::PlayerMetadata)
      
      if defined?(GameData::Metadata)
        GameData::Metadata.singleton_class.class_eval do
          alias_method :original_get_meta, :get if method_defined?(:get) && !method_defined?(:original_get_meta)
          
          define_method(:get) do
            data = ScriptRegistry.get_metadata
            return OpenStruct.new(data) if data
            original_get_meta rescue nil
          end
        end
      end
      
      if defined?(GameData::PlayerMetadata)
        GameData::PlayerMetadata.singleton_class.class_eval do
          alias_method :original_get_player, :get if method_defined?(:get) && !method_defined?(:original_get_player)
          
          define_method(:get) do |player_id|
            data = ScriptRegistry.get_player_metadata(player_id)
            return OpenStruct.new(data) if data
            original_get_player(player_id) if respond_to?(:original_get_player)
          end
        end
      end
      
      SCScripts.debug("Metadata hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Town Map Hooks
    #---------------------------------------------------------------------------
    def self.install_town_map_hooks
      return unless defined?(GameData::TownMap)
      
      GameData::TownMap.singleton_class.class_eval do
        alias_method :original_get_tm, :get if method_defined?(:get) && !method_defined?(:original_get_tm)
        
        define_method(:get) do |region_id|
          data = ScriptRegistry.get_town_map(region_id)
          return OpenStruct.new(data) if data
          original_get_tm(region_id) if respond_to?(:original_get_tm)
        end
        
        define_method(:fly_destinations) do |region_id|
          ScriptRegistry.fly_destinations(region_id)
        end
      end
      
      SCScripts.debug("Town map hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Species Metrics Hooks
    #---------------------------------------------------------------------------
    def self.install_species_metrics_hooks
      return unless defined?(GameData::SpeciesMetrics)
      
      GameData::SpeciesMetrics.singleton_class.class_eval do
        alias_method :original_get_sm, :get if method_defined?(:get) && !method_defined?(:original_get_sm)
        
        define_method(:get) do |species_id|
          data = ScriptRegistry.get_species_metrics(species_id)
          return OpenStruct.new(data) if data
          original_get_sm(species_id) if respond_to?(:original_get_sm)
        end
        
        # Get metrics for a specific form
        define_method(:get_species_form) do |species, form = 0|
          form_id = "#{species}_#{form}".to_sym
          data = ScriptRegistry.get_species_metrics(form_id)
          return OpenStruct.new(data) if data
          
          # Fall back to base species
          data = ScriptRegistry.get_species_metrics(species)
          return OpenStruct.new(data) if data
          
          nil
        end
      end
      
      SCScripts.debug("Species metrics hooks installed")
    end
  end
end

#===============================================================================
# Hook PBS override installation into Compiler
#===============================================================================
module SCScripts
  module CompilerHook
    # Intercept PBS compilation to inject script data
    def self.install
      return unless defined?(Compiler)
      
      # Check if we should bypass PBS entirely
      if SCScripts::PBS_REPLACEMENT_MODE
        Compiler.singleton_class.class_eval do
          # Store original compile methods
          alias_method :original_compile_all, :compile_all if method_defined?(:compile_all) && !method_defined?(:original_compile_all)
          
          define_method(:compile_all) do |*args|
            # Load script data first
            SCScripts.log("Loading script-based data instead of PBS files...")
            SCScripts::Loader.load_all_data
            
            # Install hooks
            SCScripts::PBSOverride.install_hooks
            
            # Skip PBS files that are replaced
            SCScripts.log("PBS files replaced by script system: #{SCScripts::PBS_FILES_TO_REPLACE.join(', ')}")
            
            # Call original for non-replaced data
            # original_compile_all(*args) rescue nil
            
            SCScripts.log("Script data compilation complete!")
          end
        end
        
        SCScripts.debug("Compiler hook installed (PBS replacement mode)")
      end
    end
  end
end
