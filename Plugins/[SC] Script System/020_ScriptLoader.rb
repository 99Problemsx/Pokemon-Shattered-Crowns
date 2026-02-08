#===============================================================================
# Shattered Crowns Script System - Script Loader
#===============================================================================
# Automatically loads all script data from Data/Scripts folders.
# This replaces PBS file loading with Ruby script loading.
#===============================================================================

module SCScripts
  module Loader
    #---------------------------------------------------------------------------
    # Load all scripts and data
    #---------------------------------------------------------------------------
    def self.load_all
      load_all_data
      SCScripts.log("All scripts loaded successfully!")
    end
    
    #---------------------------------------------------------------------------
    # Load all data scripts (replaces PBS loading)
    #---------------------------------------------------------------------------
    def self.load_all_data
      SCScripts.log("Loading script-based game data...")
      
      # Load in dependency order
      load_type_scripts       # Types must be first
      load_ability_scripts    # Abilities before Pokemon
      load_move_scripts       # Moves before Pokemon
      load_item_scripts       # Items before Pokemon (for held items, evo stones)
      load_pokemon_scripts    # Pokemon need types, abilities, moves
      load_trainer_scripts    # Trainers need Pokemon
      load_encounter_scripts  # Encounters need Pokemon
      load_ribbon_scripts     # Ribbons
      load_map_scripts        # Maps and encounters
      load_animation_scripts  # Battle animations
      load_example_scripts    # Example/extra scripts
      
      # Load Plugin-specific scripts
      load_plugin_scripts
      
      # Parse any remaining PBS files that need conversion
      parse_pbs_fallback if SCScripts::PBS_REPLACEMENT_MODE
      
      # Compile and validate all data
      SCScripts::Compiler.compile_all if defined?(SCScripts::Compiler)
      
      SCScripts.log("Game data loading complete!")
    end
    
    #---------------------------------------------------------------------------
    # Load scripts from Plugin folders
    #---------------------------------------------------------------------------
    def self.load_plugin_scripts
      return unless defined?(SCScripts::PLUGIN_SCRIPTS_PATH)
      plugin_path = SCScripts::PLUGIN_SCRIPTS_PATH
      return unless Dir.exist?(plugin_path)
      
      SCScripts.log("Loading plugin scripts...")
      total_count = 0
      
      # Load from each plugin folder
      SCScripts::PBS_PLUGIN_FOLDERS.each do |folder_name|
        plugin_folder = "#{plugin_path}/#{folder_name}"
        next unless Dir.exist?(plugin_folder)
        
        count = load_scripts_from(plugin_folder, "#{folder_name} scripts")
        total_count += count
      end
      
      SCScripts.log("Loaded #{total_count} total plugin scripts") if total_count > 0
    end
    
    #---------------------------------------------------------------------------
    # Parse PBS files as fallback for non-converted data
    #---------------------------------------------------------------------------
    def self.parse_pbs_fallback
      return unless defined?(SCScripts::PBSParser)
      
      SCScripts.log("Parsing remaining PBS files...")
      SCScripts::PBSParser.load_all_pbs
    end
    
    #---------------------------------------------------------------------------
    # Load scripts from a specific path
    #---------------------------------------------------------------------------
    def self.load_scripts_from(path, description = "scripts")
      return 0 unless Dir.exist?(path)
      
      count = 0
      Dir.glob("#{path}/**/*.rb").sort.each do |file|
        begin
          load file
          count += 1
          SCScripts.debug("Loaded: #{file}")
        rescue => e
          SCScripts.error("ERROR loading #{file}: #{e.message}")
          echoln e.backtrace.first(5).join("\n") if SCScripts::DEBUG
        end
      end
      
      SCScripts.log("Loaded #{count} #{description}") if count > 0
      count
    end
    
    #---------------------------------------------------------------------------
    # Individual loaders for each data type
    #---------------------------------------------------------------------------
    def self.load_type_scripts
      load_scripts_from(SCScripts::TYPES_SCRIPTS_PATH, "type definitions")
    end
    
    def self.load_ability_scripts
      load_scripts_from(SCScripts::ABILITIES_SCRIPTS_PATH, "ability definitions")
    end
    
    def self.load_move_scripts
      load_scripts_from(SCScripts::MOVES_SCRIPTS_PATH, "move definitions")
    end
    
    def self.load_item_scripts
      load_scripts_from(SCScripts::ITEMS_SCRIPTS_PATH, "item definitions")
    end
    
    def self.load_pokemon_scripts
      load_scripts_from(SCScripts::POKEMON_SCRIPTS_PATH, "Pokemon definitions")
    end
    
    def self.load_trainer_scripts
      load_scripts_from(SCScripts::TRAINERS_SCRIPTS_PATH, "trainer definitions")
    end
    
    def self.load_encounter_scripts
      load_scripts_from(SCScripts::ENCOUNTERS_SCRIPTS_PATH, "encounter definitions")
    end
    
    def self.load_ribbon_scripts
      load_scripts_from(SCScripts::RIBBONS_SCRIPTS_PATH, "ribbon definitions")
    end
    
    def self.load_map_scripts
      path = SCScripts::MAP_SCRIPTS_PATH
      return 0 unless Dir.exist?(path)
      
      count = 0
      Dir.glob("#{path}/**/*.rb").sort.each do |file|
        begin
          filename = File.basename(file, '.rb')
          map_id = extract_map_id(filename)
          
          if map_id
            GameData::ScriptBase.for_map(map_id) do
              load file
            end
          else
            load file
          end
          
          count += 1
          SCScripts.debug("Loaded: #{file}")
        rescue => e
          SCScripts.error("ERROR loading #{file}: #{e.message}")
          echoln e.backtrace.first(5).join("\n") if SCScripts::DEBUG
        end
      end
      
      SCScripts.log("Loaded #{count} map scripts") if count > 0
      count
    end
    
    def self.load_animation_scripts
      load_scripts_from(SCScripts::ANIMATION_SCRIPTS_PATH, "animation scripts")
    end
    
    def self.load_example_scripts
      path = "Data/Scripts/Examples"
      load_scripts_from(path, "example scripts")
    end
    
    #---------------------------------------------------------------------------
    # Extract map ID from filename
    #---------------------------------------------------------------------------
    def self.extract_map_id(filename)
      # Pattern: starts with number (e.g., "033_Route101")
      if filename =~ /^(\d+)[_\s]/
        return $1.to_i
      end
      
      # Pattern: "Map" followed by number
      if filename =~ /Map\s*(\d+)/i
        return $1.to_i
      end
      
      nil
    end
    
    #---------------------------------------------------------------------------
    # Reload a specific data type
    #---------------------------------------------------------------------------
    def self.reload_data_type(type)
      case type.to_sym
      when :types     then load_type_scripts
      when :abilities then load_ability_scripts
      when :moves     then load_move_scripts
      when :items     then load_item_scripts
      when :pokemon   then load_pokemon_scripts
      when :trainers  then load_trainer_scripts
      when :encounters then load_encounter_scripts
      when :ribbons    then load_ribbon_scripts
      when :maps      then load_map_scripts
      when :animations then load_animation_scripts
      else
        SCScripts.warn("Unknown data type: #{type}")
        return false
      end
      
      # Recompile after reload
      SCScripts::Compiler.compiled = false
      SCScripts::Compiler.compile_all if defined?(SCScripts::Compiler)
      true
    end
  end
end

#===============================================================================
# Hook into game startup to load scripts
#===============================================================================
module SCScripts
  module GameStartup
    def self.trigger
      SCScripts.log("=" * 50)
      SCScripts.log("#{SCScripts::NAME} v#{SCScripts::VERSION}")
      SCScripts.log("=" * 50)
      
      if SCScripts::PBS_REPLACEMENT_MODE
        SCScripts.log("Mode: FULL PBS REPLACEMENT")
      else
        SCScripts.log("Mode: PBS MERGE (scripts take priority)")
      end
      
      # Create directories if they don't exist
      ensure_directories
      
      # Install PBS override hooks
      SCScripts::PBSOverride.install_hooks if defined?(SCScripts::PBSOverride)
      
      # Install Debug write hooks (redirect PBS writes to Ruby)
      SCScripts::DebugHooks.install if defined?(SCScripts::DebugHooks)
      
      # Load all scripts
      Loader.load_all
      
      SCScripts.log("Startup complete!")
    end
    
    def self.ensure_directories
      SCScripts.ensure_all_directories
    end
  end
end

# Trigger on game start (after other plugins load)
SCScripts::GameStartup.trigger if $DEBUG || SCScripts::DEBUG
