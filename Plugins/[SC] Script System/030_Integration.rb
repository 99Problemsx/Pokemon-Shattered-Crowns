#===============================================================================
# Shattered Crowns Script System - Integration Hooks
#===============================================================================
# Provides integration with Challenge Modes and Dynamic Lighting plugins.
#===============================================================================

module SCScripts
  #=============================================================================
  # Challenge Mode Integration
  #=============================================================================
  module ChallengeMode
    # Check if challenge mode is active
    def self.active?
      return false unless defined?($PokemonGlobal)
      return false unless $PokemonGlobal
      $PokemonGlobal.challenge_mode rescue false
    end
    
    # Check specific challenge modes
    def self.nuzlocke?
      return false unless active?
      ChallengeModes.nuzlocke? rescue false
    end
    
    def self.hardcore?
      return false unless active?
      ChallengeModes.hardcore? rescue false
    end
    
    def self.randomizer?
      return false unless active?
      ChallengeModes.randomizer? rescue false
    end
    
    def self.monotype?
      return false unless active?
      ChallengeModes.monotype? rescue false
    end
    
    def self.level_cap?
      return false unless active?
      ChallengeModes.level_cap? rescue false
    end
    
    # Get current level cap
    def self.level_cap
      return 100 unless level_cap?
      ChallengeModes.get_level_cap rescue 100
    end
    
    # Conditional helper for DSL
    def self.if_challenge(&block)
      yield if active?
    end
    
    def self.unless_challenge(&block)
      yield unless active?
    end
  end
  
  #=============================================================================
  # Dynamic Lighting Integration
  #=============================================================================
  module Lighting
    # Check if lighting system is available
    def self.available?
      defined?(DynamicLighting) && DynamicLighting.respond_to?(:add_light)
    end
    
    # Add a light source
    def self.add_light(x, y, options = {})
      return false unless available?
      
      color = options[:color] || Color.new(255, 200, 150)
      radius = options[:radius] || 100
      intensity = options[:intensity] || 1.0
      
      DynamicLighting.add_light(x, y, radius, color, intensity)
      true
    rescue => e
      SCScripts.log("Lighting error: #{e.message}")
      false
    end
    
    # Add light to event
    def self.add_event_light(event, options = {})
      return false unless available?
      return false unless event
      
      event_id = event.is_a?(Integer) ? event : event.id
      
      DynamicLighting.add_event_light(event_id, options)
      true
    rescue => e
      SCScripts.log("Event lighting error: #{e.message}")
      false
    end
    
    # Remove light from event
    def self.remove_event_light(event)
      return false unless available?
      
      event_id = event.is_a?(Integer) ? event : event.id
      
      DynamicLighting.remove_event_light(event_id)
      true
    rescue
      false
    end
    
    # Preset light colors
    COLORS = {
      fire:     -> { Color.new(255, 150, 50) },
      torch:    -> { Color.new(255, 200, 100) },
      lantern:  -> { Color.new(255, 220, 150) },
      candle:   -> { Color.new(255, 180, 80) },
      crystal:  -> { Color.new(150, 200, 255) },
      magic:    -> { Color.new(200, 150, 255) },
      sunlight: -> { Color.new(255, 255, 200) },
      moonlight: -> { Color.new(180, 200, 255) }
    }
    
    def self.color(preset)
      COLORS[preset]&.call || Color.new(255, 255, 255)
    end
  end
  
  #=============================================================================
  # Hot Reload (Debug Mode Only)
  #=============================================================================
  module HotReload
    @last_load_time = {}
    @enabled = false
    
    def self.enable
      return unless $DEBUG
      @enabled = true
      SCScripts.log("Hot reload enabled")
    end
    
    def self.disable
      @enabled = false
    end
    
    def self.enabled?
      @enabled && $DEBUG
    end
    
    # Check and reload changed files
    def self.check_for_changes
      return unless enabled?
      
      paths = [SCScripts::MAP_SCRIPTS_PATH, SCScripts::ANIMATION_SCRIPTS_PATH]
      
      paths.each do |base_path|
        next unless Dir.exist?(base_path)
        
        Dir.glob("#{base_path}/**/*.rb").each do |file|
          mtime = File.mtime(file)
          
          if @last_load_time[file].nil?
            @last_load_time[file] = mtime
          elsif mtime > @last_load_time[file]
            reload_file(file)
            @last_load_time[file] = mtime
          end
        end
      end
    end
    
    def self.reload_file(file)
      begin
        load file
        SCScripts.log("Hot reloaded: #{File.basename(file)}")
        true
      rescue => e
        SCScripts.log("Hot reload ERROR: #{e.message}")
        false
      end
    end
    
    # Reload all scripts
    def self.reload_all
      SCScripts.log("Reloading all scripts...")
      SCScripts::Loader.load_all
    end
  end
end

#===============================================================================
# Hook hot reload into game update loop (debug only)
#===============================================================================
if $DEBUG
  class Scene_Map
    alias sc_hotreload_update update unless method_defined?(:sc_hotreload_update)
    
    def update
      sc_hotreload_update
      
      # Check for hot reload every 60 frames (1 second)
      @sc_hotreload_counter ||= 0
      @sc_hotreload_counter += 1
      
      if @sc_hotreload_counter >= 60
        @sc_hotreload_counter = 0
        SCScripts::HotReload.check_for_changes if SCScripts::HotReload.enabled?
      end
    end
  end
end
