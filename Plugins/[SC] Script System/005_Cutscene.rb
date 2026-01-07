#===============================================================================
# Shattered Crowns Script System - Cutscenes/Events DSL
#===============================================================================
# Provides a clean DSL for defining cutscenes and scripted events.
#===============================================================================

module GameData
  #=============================================================================
  # Cutscene - DSL for scripted sequences
  #=============================================================================
  class Cutscene < ScriptBase
    @cutscenes = {}
    @played_history = []  # Track which cutscenes have been played
    
    class << self
      attr_accessor :cutscenes, :played_history
    end
    
    #---------------------------------------------------------------------------
    # Define a cutscene
    # Usage: Cutscene.define :intro_scene do |scene| ... end
    #---------------------------------------------------------------------------
    def self.define(name, &block)
      builder = CutsceneBuilder.new(name)
      yield(builder) if block_given?
      @cutscenes[name] = builder
      SCScripts.log("Registered cutscene: #{name}")
    end
    
    #---------------------------------------------------------------------------
    # Play a cutscene by name
    # Usage: GameData::Cutscene.play(:intro_scene)
    # Options: auto_save: true/false (saves before playing)
    #---------------------------------------------------------------------------
    def self.play(name, auto_save: false)
      cutscene = @cutscenes[name]
      unless cutscene
        SCScripts.log("ERROR: Cutscene '#{name}' not found!")
        return false
      end
      
      # Auto-save before important cutscenes
      if auto_save && $game_system && $game_map
        pbSave
        pbMessage("Game saved.")
      end
      
      # Add to history
      @played_history << { name: name, time: Time.now } unless @played_history.any? { |h| h[:name] == name }
      
      cutscene.execute
      true
    end
    
    #---------------------------------------------------------------------------
    # Check if cutscene exists
    #---------------------------------------------------------------------------
    def self.exists?(name)
      @cutscenes.key?(name)
    end
    
    #---------------------------------------------------------------------------
    # Check if cutscene has been played this session
    #---------------------------------------------------------------------------
    def self.played?(name)
      @played_history.any? { |h| h[:name] == name }
    end
    
    #---------------------------------------------------------------------------
    # Get list of all registered cutscenes
    #---------------------------------------------------------------------------
    def self.list_all
      @cutscenes.keys.sort
    end
    
    #---------------------------------------------------------------------------
    # Get count of all cutscenes
    #---------------------------------------------------------------------------
    def self.count
      @cutscenes.size
    end
    
    #---------------------------------------------------------------------------
    # Get play history
    #---------------------------------------------------------------------------
    def self.history
      @played_history
    end
    
    #---------------------------------------------------------------------------
    # Clear history (for new game)
    #---------------------------------------------------------------------------
    def self.clear_history
      @played_history = []
    end
    
    #---------------------------------------------------------------------------
    # CUTSCENE GALLERY - Replay cutscenes from menu
    #---------------------------------------------------------------------------
    def self.open_gallery
      # Get all cutscenes that have been played
      available = @played_history.map { |h| h[:name] }
      
      if available.empty?
        pbMessage("No cutscenes unlocked yet.")
        return
      end
      
      # Build choice list
      names = available.map { |n| n.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ') }
      names << "Cancel"
      
      loop do
        choice = pbShowCommands(nil, names, names.length - 1)
        break if choice == names.length - 1 || choice < 0
        
        # Replay the selected cutscene
        selected_name = available[choice]
        pbMessage("Replaying: #{names[choice]}")
        play(selected_name)
      end
    end
    
    #---------------------------------------------------------------------------
    # Debug: List all cutscenes in console
    #---------------------------------------------------------------------------
    def self.debug_list
      puts "=== REGISTERED CUTSCENES (#{count}) ==="
      list_all.each_with_index do |name, i|
        played_marker = played?(name) ? "[✓]" : "[ ]"
        puts "#{i+1}. #{played_marker} #{name}"
      end
      puts "==================================="
    end
  end

  
  #=============================================================================
  # CutsceneBuilder - Builds cutscene sequences
  #=============================================================================
  class CutsceneBuilder
    attr_reader :name, :steps
    
    def initialize(name)
      @name = name
      @steps = []
      @variables = {}
    end
    
    #---------------------------------------------------------------------------
    # Step types
    #---------------------------------------------------------------------------
    
    # Show dialogue
    def say(speaker, text, options = {})
      @steps << { type: :dialogue, speaker: speaker, text: text, options: options }
    end
    
    # Show message (no speaker)
    def message(text)
      @steps << { type: :message, text: text }
    end
    
    # Move an event/character
    def move(target, route, wait: true)
      @steps << { type: :move, target: target, route: route, wait: wait }
    end
    
    # Wait for time
    def wait(frames)
      @steps << { type: :wait, frames: frames }
    end
    
    # Fade screen
    def fade_out(duration = 8)
      @steps << { type: :fade_out, duration: duration }
    end
    
    def fade_in(duration = 8)
      @steps << { type: :fade_in, duration: duration }
    end
    
    # Play sound effect
    def play_se(filename, volume = 80, pitch = 100)
      @steps << { type: :play_se, filename: filename, volume: volume, pitch: pitch }
    end
    
    # Play background music
    def play_bgm(filename, volume = 100, pitch = 100)
      @steps << { type: :play_bgm, filename: filename, volume: volume, pitch: pitch }
    end
    
    # Stop music
    def stop_bgm(fadeout = 0)
      @steps << { type: :stop_bgm, fadeout: fadeout }
    end
    
    # Change map
    def transfer(map_id, x, y, direction = nil)
      @steps << { type: :transfer, map_id: map_id, x: x, y: y, direction: direction }
    end
    
    # Set switch
    def set_switch(switch_id, value = true)
      @steps << { type: :set_switch, switch_id: switch_id, value: value }
    end
    
    # Set variable
    def set_variable(var_id, value)
      @steps << { type: :set_variable, var_id: var_id, value: value }
    end
    
    # Conditional block
    def condition(check, &block)
      builder = CutsceneBuilder.new("#{@name}_condition")
      yield(builder) if block_given?
      @steps << { type: :condition, check: check, sub_steps: builder.steps }
    end
    
    # Run custom Ruby code
    def script(&block)
      @steps << { type: :script, block: block }
    end
    
    # Show choice
    def choice(options, variable: nil, &block)
      @steps << { type: :choice, options: options, variable: variable, block: block }
    end
    
    # Give Pokemon
    def give_pokemon(species, level, options = {})
      @steps << { type: :give_pokemon, species: species, level: level, options: options }
    end
    
    # Give item
    def give_item(item, quantity = 1)
      @steps << { type: :give_item, item: item, quantity: quantity }
    end
    
    # Heal party
    def heal_party
      @steps << { type: :heal_party }
    end
    
    # Start battle with optional win/lose handling
    # Usage: 
    #   scene.trainer_battle :RIVAL1, "Gary", 0
    #   scene.trainer_battle :RIVAL1, "Gary", 0 do |won|
    #     if won
    #       # win messages
    #     else
    #       # lose messages
    #     end
    #   end
    def trainer_battle(trainer_type, name, version = 0, &block)
      @steps << { type: :trainer_battle, trainer_type: trainer_type, name: name, version: version, block: block }
    end
    
    # Check last battle result
    def battle_won?
      @last_battle_won == true
    end
    
    def battle_lost?
      @last_battle_won == false
    end

    
    def wild_battle(species, level, options = {})
      @steps << { type: :wild_battle, species: species, level: level, options: options }
    end
    
    #---------------------------------------------------------------------------
    # Execute the cutscene
    #---------------------------------------------------------------------------
    def execute
      # Save current BGM to restore after cutscene
      @saved_bgm = $game_system.playing_bgm
      
      # Pre-process steps to chain consecutive messages
      @steps.each_with_index do |step, i|
        # Only process text steps
        next unless [:message, :dialogue].include?(step[:type])
        
        # Look ahead for the next step
        next_step = @steps[i + 1]
        next unless next_step
        
        # If next step is also text, chain them
        if [:message, :dialogue].include?(next_step[:type])
          # Ensure we don't modify frozen strings or create duplicates
          text = step[:text].is_a?(String) ? step[:text].dup : step[:text].to_s
          
          # Add \1 if it's not already there
          unless text.end_with?("\\1")
            text += "\\1"
            step[:text] = text
          end
        end
      end
      
      @steps.each do |step|
        execute_step(step)
      end
      
      # Restore previous BGM if we changed it
      if @saved_bgm && @bgm_changed
        pbBGMPlay(@saved_bgm)
      end
    end
    
    private
    
    def execute_step(step)
      case step[:type]
      when :dialogue
        # Just show the text - use scene.message if you don't want speaker handling
        # The speaker parameter is stored but PE's message system handles display
        pbMessage(step[:text])
        
      when :message
        pbMessage(step[:text])
        
      when :wait
        (step[:frames] || 8).times { pbUpdateSceneMap }
        
      when :fade_out
        pbFadeOutIn(step[:duration]) { }
        
      when :fade_in
        # Usually handled by fade_out block
        
      when :play_se
        pbSEPlay(step[:filename], step[:volume], step[:pitch])
        
      when :play_bgm
        # Just use filename - PE finds the file automatically
        pbBGMPlay(step[:filename])
        @bgm_changed = true
        
      when :stop_bgm
        pbBGMFade(step[:fadeout])
        
      when :transfer
        pbFadeOutIn {
          $game_temp.player_new_map_id = step[:map_id]
          $game_temp.player_new_x = step[:x]
          $game_temp.player_new_y = step[:y]
          $game_temp.player_new_direction = step[:direction] if step[:direction]
          $scene.transfer_player
        }
        
      when :set_switch
        $game_switches[step[:switch_id]] = step[:value]
        $game_map.need_refresh = true
        
      when :set_variable
        $game_variables[step[:var_id]] = step[:value]
        
      when :condition
        if step[:check].call
          step[:sub_steps].each { |s| execute_step(s) }
        end
        
      when :script
        step[:block].call if step[:block]
        
      when :choice
        choices = step[:options]
        # Use pbShowCommands for proper choice menu
        result = pbShowCommands(nil, choices, -1)
        $game_variables[step[:variable]] = result if step[:variable]
        step[:block].call(result) if step[:block]
        
      when :give_pokemon
        pbAddPokemon(step[:species], step[:level])
        
      when :give_item
        pbReceiveItem(step[:item], step[:quantity])
        
      when :heal_party
        $player.party.each { |p| p.heal }
        
      when :trainer_battle
        result = TrainerBattle.start(step[:trainer_type], step[:name], step[:version])
        # result is true if player won, false if lost/ran
        @last_battle_won = (result == 1) # 1 = win, 2 = loss, 3 = draw, 4 = run, 5 = items
        step[:block].call(@last_battle_won) if step[:block]

        
      when :wild_battle
        pbWildBattle(step[:species], step[:level])
        
      when :move
        # TODO: Implement move routes
        
      end
    end
  end
end

#===============================================================================
# Short helper functions for event scripts (fits in RPG Maker script box)
#===============================================================================
def pbCutscene(name)
  GameData::Cutscene.play(name)
end

def pbShop(name)
  GameData::Shop.open(name)
end

def pbQuest(action, name)
  case action
  when :start then GameData::Quest.start(name)
  when :complete then GameData::Quest.complete(name)
  when :active then GameData::Quest.active?(name)
  end
end

