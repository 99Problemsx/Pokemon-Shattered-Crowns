#===============================================================================
# Shattered Crowns Script System - Script Loader
#===============================================================================
# Automatically loads map and animation scripts from the Data/Scripts folder.
#===============================================================================

module SCScripts
  module Loader
    #---------------------------------------------------------------------------
    # Load all scripts from the configured paths
    #---------------------------------------------------------------------------
    def self.load_all
      load_example_scripts  # Load examples/definitions first
      load_map_scripts
      load_animation_scripts
      SCScripts.log("All scripts loaded successfully!")
    end
    
    #---------------------------------------------------------------------------
    # Load map data scripts
    #---------------------------------------------------------------------------
    def self.load_map_scripts
      path = SCScripts::MAP_SCRIPTS_PATH
      return unless Dir.exist?(path)
      
      count = 0
      Dir.glob("#{path}/**/*.rb").each do |file|
        begin
          # Extract map ID from filename if possible (e.g., "Route 101.rb" or "033_Route101.rb")
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
          SCScripts.log("Loaded: #{file}")
        rescue => e
          SCScripts.log("ERROR loading #{file}: #{e.message}")
          echoln e.backtrace.first(5).join("\n")
        end
      end
      
      SCScripts.log("Loaded #{count} map script(s)")
    end
    
    #---------------------------------------------------------------------------
    # Load animation scripts
    #---------------------------------------------------------------------------
    def self.load_animation_scripts
      path = SCScripts::ANIMATION_SCRIPTS_PATH
      return unless Dir.exist?(path)
      
      count = 0
      Dir.glob("#{path}/**/*.rb").each do |file|
        begin
          load file
          count += 1
          SCScripts.log("Loaded: #{file}")
        rescue => e
          SCScripts.log("ERROR loading #{file}: #{e.message}")
          echoln e.backtrace.first(5).join("\n")
        end
      end
      
      SCScripts.log("Loaded #{count} animation script(s)")
    end
    
    #---------------------------------------------------------------------------
    # Load example/definition scripts (cutscenes, shops, quests)
    #---------------------------------------------------------------------------
    def self.load_example_scripts
      path = "Data/Scripts/Examples"
      return unless Dir.exist?(path)
      
      count = 0
      Dir.glob("#{path}/**/*.rb").each do |file|
        begin
          load file
          count += 1
          SCScripts.log("Loaded: #{file}")
        rescue => e
          SCScripts.log("ERROR loading #{file}: #{e.message}")
          echoln e.backtrace.first(5).join("\n")
        end
      end
      
      SCScripts.log("Loaded #{count} example script(s)")
    end
    
    #---------------------------------------------------------------------------
    # Extract map ID from filename
    # Supports formats: "033_Route101", "Route 101", "Map033", etc.
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
  end
end

#===============================================================================
# Hook into game startup to load scripts
#===============================================================================
module SCScripts
  module GameStartup
    def self.trigger
      SCScripts.log("=== Shattered Crowns Script System ===")
      SCScripts.log("Loading scripts...")
      
      # Create directories if they don't exist
      ensure_directories
      
      # Load all scripts
      Loader.load_all
    end
    
    def self.ensure_directories
      [SCScripts::MAP_SCRIPTS_PATH, SCScripts::ANIMATION_SCRIPTS_PATH].each do |path|
        unless Dir.exist?(path)
          begin
            FileUtils.mkdir_p(path)
            SCScripts.log("Created directory: #{path}")
          rescue => e
            SCScripts.log("Could not create directory #{path}: #{e.message}")
          end
        end
      end
    end
  end
end

# Trigger on game start (after other plugins load)
SCScripts::GameStartup.trigger if $DEBUG || SCScripts::DEBUG
