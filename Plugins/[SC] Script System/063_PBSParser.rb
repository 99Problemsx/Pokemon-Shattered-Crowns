#===============================================================================
# Shattered Crowns Script System - PBS Parser
#===============================================================================
# Parses PBS text files and converts them to script registry data.
# Supports all standard PBS formats including plugin PBS files.
#===============================================================================

module SCScripts
  module PBSParser
    #---------------------------------------------------------------------------
    # Parse a PBS file and return structured data
    #---------------------------------------------------------------------------
    def self.parse_file(filepath)
      return nil unless File.exist?(filepath)
      
      filename = File.basename(filepath).downcase
      content = File.read(filepath, encoding: 'UTF-8')
      
      # Determine file type and parse accordingly
      # NOTE: Order matters! More specific patterns must come before general ones.
      # e.g. pokemon_metrics, pokemon_forms must match before plain /pokemon/
      case filename
      when /abilities/
        parse_abilities(content)
      when /moves/
        parse_moves(content)
      when /items/
        parse_items(content)
      when /types/
        parse_types(content)
      when /pokemon.*metrics/
        parse_pokemon_metrics(content)
      when /pokemon.*forms/
        parse_pokemon_forms(content)
      when /pokemon/
        parse_pokemon(content)
      when /trainers\.txt/
        parse_trainers(content)
      when /trainer_types/
        parse_trainer_types(content)
      when /encounters/
        parse_encounters(content)
      else
        SCScripts.warn("Unknown PBS file type: #{filename}")
        nil
      end
    end
    
    #---------------------------------------------------------------------------
    # Parse abilities PBS format
    #---------------------------------------------------------------------------
    def self.parse_abilities(content)
      abilities = {}
      current_id = nil
      current_data = {}
      
      content.each_line do |line|
        line = line.strip
        next if line.empty? || line.start_with?('#')
        
        # New entry starts with [ID]
        if line =~ /^\[(\w+)\]$/
          # Save previous entry
          if current_id
            abilities[current_id.to_sym] = current_data
          end
          
          current_id = $1
          current_data = { id: current_id.to_sym }
        elsif line.include?('=') && current_id
          key, value = line.split('=', 2).map(&:strip)
          
          case key.downcase
          when 'name'
            current_data[:name] = value
          when 'description'
            current_data[:description] = value
          when 'flags'
            current_data[:flags] = value.split(',').map { |f| f.strip.to_sym }
          end
        end
      end
      
      # Save last entry
      abilities[current_id.to_sym] = current_data if current_id
      
      abilities
    end
    
    #---------------------------------------------------------------------------
    # Parse moves PBS format
    #---------------------------------------------------------------------------
    def self.parse_moves(content)
      moves = {}
      current_id = nil
      current_data = {}
      
      content.each_line do |line|
        line = line.strip
        next if line.empty? || line.start_with?('#')
        
        if line =~ /^\[(\w+)\]$/
          if current_id
            moves[current_id.to_sym] = current_data
          end
          
          current_id = $1
          current_data = { id: current_id.to_sym }
        elsif line.include?('=') && current_id
          key, value = line.split('=', 2).map(&:strip)
          
          case key.downcase
          when 'name'
            current_data[:name] = value
          when 'type'
            current_data[:type] = value.to_sym
          when 'category'
            current_data[:category] = case value.downcase
                                      when 'physical' then 0
                                      when 'special' then 1
                                      when 'status' then 2
                                      else value.downcase.to_sym
                                      end
          when 'power', 'basedamage'
            current_data[:power] = value.to_i
          when 'accuracy'
            current_data[:accuracy] = value.to_i
          when 'totalpp', 'pp'
            current_data[:pp] = value.to_i
          when 'target'
            current_data[:target] = value.to_sym
          when 'priority'
            current_data[:priority] = value.to_i
          when 'functioncode'
            current_data[:function_code] = value
          when 'effectchance'
            current_data[:effect_chance] = value.to_i
          when 'description'
            current_data[:description] = value
          when 'flags'
            current_data[:flags] = value.split(',').map { |f| f.strip.to_sym }
          end
        end
      end
      
      moves[current_id.to_sym] = current_data if current_id
      moves
    end
    
    #---------------------------------------------------------------------------
    # Parse items PBS format
    #---------------------------------------------------------------------------
    def self.parse_items(content)
      items = {}
      current_id = nil
      current_data = {}
      
      content.each_line do |line|
        line = line.strip
        next if line.empty? || line.start_with?('#')
        
        if line =~ /^\[(\w+)\]$/
          if current_id
            items[current_id.to_sym] = current_data
          end
          
          current_id = $1
          current_data = { id: current_id.to_sym }
        elsif line.include?('=') && current_id
          key, value = line.split('=', 2).map(&:strip)
          
          case key.downcase
          when 'name'
            current_data[:name] = value
          when 'nameplural'
            current_data[:name_plural] = value
          when 'pocket'
            current_data[:pocket] = value.to_i
          when 'price'
            current_data[:price] = value.to_i
          when 'fielduse'
            current_data[:field_use] = value.to_sym
          when 'battleuse'
            current_data[:battle_use] = value.to_sym
          when 'consumable'
            current_data[:consumable] = (value.downcase == 'true')
          when 'move'
            current_data[:move] = value.to_sym
          when 'description'
            current_data[:description] = value
          when 'flags'
            current_data[:flags] = value.split(',').map { |f| f.strip.to_sym }
          end
        end
      end
      
      items[current_id.to_sym] = current_data if current_id
      items
    end
    
    #---------------------------------------------------------------------------
    # Parse types PBS format
    #---------------------------------------------------------------------------
    def self.parse_types(content)
      types = {}
      current_id = nil
      current_data = {}
      
      content.each_line do |line|
        line = line.strip
        next if line.empty? || line.start_with?('#')
        
        if line =~ /^\[(\w+)\]$/
          if current_id
            types[current_id.to_sym] = current_data
          end
          
          current_id = $1
          current_data = { id: current_id.to_sym }
        elsif line.include?('=') && current_id
          key, value = line.split('=', 2).map(&:strip)
          
          case key.downcase
          when 'name'
            current_data[:name] = value
          when 'iconposition'
            current_data[:icon_position] = value.to_i
          when 'isspecialtype'
            current_data[:special_type] = (value.downcase == 'true')
          when 'ispseudotype'
            current_data[:is_pseudo_type] = (value.downcase == 'true')
          when 'weaknesses'
            current_data[:weaknesses] = value.split(',').map { |t| t.strip.to_sym }
          when 'resistances'
            current_data[:resistances] = value.split(',').map { |t| t.strip.to_sym }
          when 'immunities'
            current_data[:immunities] = value.split(',').map { |t| t.strip.to_sym }
          when 'flags'
            current_data[:flags] = value.split(',').map { |f| f.strip.to_sym }
          end
        end
      end
      
      types[current_id.to_sym] = current_data if current_id
      types
    end
    
    #---------------------------------------------------------------------------
    # Parse pokemon PBS format
    #---------------------------------------------------------------------------
    def self.parse_pokemon(content)
      pokemon = {}
      current_id = nil
      current_data = {}
      
      content.each_line do |line|
        line = line.strip
        next if line.empty? || line.start_with?('#')
        
        if line =~ /^\[(\w+)\]$/
          if current_id
            pokemon[current_id.to_sym] = current_data
          end
          
          current_id = $1
          current_data = { id: current_id.to_sym }
        elsif line.include?('=') && current_id
          key, value = line.split('=', 2).map(&:strip)
          
          case key.downcase
          when 'name'
            current_data[:name] = value
          when 'types'
            current_data[:types] = value.split(',').map { |t| t.strip.to_sym }
          when 'basestats'
            stats = value.split(',').map(&:to_i)
            current_data[:base_stats] = {
              hp: stats[0], attack: stats[1], defense: stats[2],
              sp_atk: stats[3], sp_def: stats[4], speed: stats[5]
            }
          when 'genderratio'
            current_data[:gender_ratio] = value.to_sym
          when 'growthrate'
            current_data[:growth_rate] = value.to_sym
          when 'baseexp'
            current_data[:base_exp] = value.to_i
          when 'evs'
            evs = {}
            value.split(',').each do |ev|
              stat, val = ev.strip.split('_')
              evs[stat.downcase.to_sym] = val.to_i
            end
            current_data[:evs] = evs
          when 'catchrate'
            current_data[:catch_rate] = value.to_i
          when 'happiness'
            current_data[:happiness] = value.to_i
          when 'abilities'
            current_data[:abilities] = value.split(',').map { |a| a.strip.to_sym }
          when 'hiddenabilities'
            current_data[:hidden_abilities] = value.split(',').map { |a| a.strip.to_sym }
          when 'moves'
            moves = []
            value.split(',').each_slice(2) do |level, move|
              moves << [level.to_i, move.strip.to_sym]
            end
            current_data[:moves] = moves
          when 'eggmoves'
            current_data[:egg_moves] = value.split(',').map { |m| m.strip.to_sym }
          when 'egggroups'
            current_data[:egg_groups] = value.split(',').map { |g| g.strip.to_sym }
          when 'hatchsteps'
            current_data[:hatch_steps] = value.to_i
          when 'height'
            current_data[:height] = value.to_f
          when 'weight'
            current_data[:weight] = value.to_f
          when 'color'
            current_data[:color] = value.to_sym
          when 'shape'
            current_data[:shape] = value.to_sym
          when 'category'
            current_data[:category] = value
          when 'pokedex'
            current_data[:pokedex_entry] = value
          when 'evolutions'
            evos = []
            value.split(',').each_slice(3) do |species, method, param|
              evos << {
                species: species.strip.to_sym,
                method: method.strip.to_sym,
                parameter: param&.strip
              }
            end
            current_data[:evolutions] = evos
          when 'flags'
            current_data[:flags] = value.split(',').map { |f| f.strip.to_sym }
          end
        end
      end
      
      pokemon[current_id.to_sym] = current_data if current_id
      pokemon
    end
    
    #---------------------------------------------------------------------------
    # Parse pokemon forms PBS format
    #---------------------------------------------------------------------------
    def self.parse_pokemon_forms(content)
      parse_pokemon(content)  # Same format, different filename convention
    end
    
    #---------------------------------------------------------------------------
    # Parse pokemon metrics PBS format
    # These contain sprite positioning data, NOT species definitions.
    # They should NOT overwrite species data.
    #---------------------------------------------------------------------------
    def self.parse_pokemon_metrics(content)
      metrics = {}
      current_id = nil
      current_data = {}
      
      content.each_line do |line|
        line = line.strip
        next if line.empty? || line.start_with?('#')
        
        if line =~ /^\[(\w+)\]$/
          metrics[current_id.to_sym] = current_data if current_id
          current_id = $1
          current_data = { id: current_id.to_sym }
        elsif line.include?('=') && current_id
          key, value = line.split('=', 2).map(&:strip)
          
          case key.downcase
          when 'backsprite'
            vals = value.split(',').map(&:to_i)
            current_data[:back_sprite] = { x: vals[0] || 0, y: vals[1] || 0 }
          when 'frontsprite'
            vals = value.split(',').map(&:to_i)
            current_data[:front_sprite] = { x: vals[0] || 0, y: vals[1] || 0 }
          when 'frontspritealtitude'
            current_data[:front_sprite_altitude] = value.to_i
          when 'shadowx'
            current_data[:shadow_x] = value.to_i
          when 'shadowsize'
            current_data[:shadow_size] = value.to_i
          end
        end
      end
      
      metrics[current_id.to_sym] = current_data if current_id
      metrics
    end
    
    #---------------------------------------------------------------------------
    # Parse trainers PBS format
    #---------------------------------------------------------------------------
    def self.parse_trainers(content)
      trainers = {}
      current_key = nil
      current_data = {}
      in_pokemon_section = false
      current_pokemon = []
      
      content.each_line do |line|
        line = line.strip
        next if line.empty? || line.start_with?('#')
        
        if line =~ /^\[(\w+),(.+?)(,(\d+))?\]$/
          if current_key
            current_data[:party] = current_pokemon unless current_pokemon.empty?
            trainers[current_key] = current_data
          end
          
          trainer_type = $1
          name = $2.strip
          version = $4 ? $4.to_i : 0
          current_key = "#{trainer_type}_#{name}_#{version}"
          current_data = {
            trainer_type: trainer_type.to_sym,
            name: name,
            version: version
          }
          current_pokemon = []
          in_pokemon_section = false
        elsif line.include?('=') && current_key
          key, value = line.split('=', 2).map(&:strip)
          
          case key.downcase
          when 'losetext'
            current_data[:lose_text] = value
          when 'items'
            current_data[:items] = value.split(',').map { |i| i.strip.to_sym }
          when 'pokemon'
            in_pokemon_section = true
            species, level = value.split(',').map(&:strip)
            current_pokemon << { species: species.to_sym, level: level.to_i }
          when 'item'
            current_pokemon.last[:item] = value.to_sym if current_pokemon.any?
          when 'moves'
            current_pokemon.last[:moves] = value.split(',').map { |m| m.strip.to_sym } if current_pokemon.any?
          when 'ability'
            current_pokemon.last[:ability] = value.to_sym if current_pokemon.any?
          when 'abilityindex'
            current_pokemon.last[:ability_index] = value.to_i if current_pokemon.any?
          when 'nature'
            current_pokemon.last[:nature] = value.to_sym if current_pokemon.any?
          when 'gender'
            if current_pokemon.any?
              g = value.downcase
              current_pokemon.last[:gender] = (g == 'male') ? 0 : (g == 'female') ? 1 : nil
            end
          when 'iv'
            if current_pokemon.any?
              vals = value.split(',').map { |v| v.strip.to_i }
              stat_keys = [:HP, :ATTACK, :DEFENSE, :SPECIAL_ATTACK, :SPECIAL_DEFENSE, :SPEED]
              iv_hash = {}
              stat_keys.each_with_index { |k, i| iv_hash[k] = vals[i] || 0 }
              current_pokemon.last[:iv] = iv_hash
            end
          when 'ev'
            if current_pokemon.any?
              vals = value.split(',').map { |v| v.strip.to_i }
              stat_keys = [:HP, :ATTACK, :DEFENSE, :SPECIAL_ATTACK, :SPECIAL_DEFENSE, :SPEED]
              ev_hash = {}
              stat_keys.each_with_index { |k, i| ev_hash[k] = vals[i] || 0 }
              current_pokemon.last[:ev] = ev_hash
            end
          when 'name'
            current_pokemon.last[:real_name] = value if current_pokemon.any?
          when 'shiny'
            current_pokemon.last[:shininess] = (value.downcase == 'true') if current_pokemon.any?
          when 'shadow'
            current_pokemon.last[:shadowness] = (value.downcase == 'true') if current_pokemon.any?
          when 'ball'
            current_pokemon.last[:poke_ball] = value.to_sym if current_pokemon.any?
          when 'form'
            current_pokemon.last[:form] = value.to_i if current_pokemon.any?
          when 'happiness'
            current_pokemon.last[:happiness] = value.to_i if current_pokemon.any?
          when 'dynamaxlevel'
            current_pokemon.last[:dynamax_level] = value.to_i if current_pokemon.any?
          when 'teratype'
            current_pokemon.last[:tera_type] = value.to_sym if current_pokemon.any?
          when 'skilllevel'
            current_data[:skill_level] = value.to_i
          when 'doublebattle'
            current_data[:double_battle] = (value.downcase == 'true')
          end
        end
      end
      
      if current_key
        current_data[:party] = current_pokemon unless current_pokemon.empty?
        trainers[current_key] = current_data
      end
      
      trainers
    end
    
    #---------------------------------------------------------------------------
    # Parse trainer types PBS format
    #---------------------------------------------------------------------------
    def self.parse_trainer_types(content)
      types = {}
      current_id = nil
      current_data = {}
      
      content.each_line do |line|
        line = line.strip
        next if line.empty? || line.start_with?('#')
        
        if line =~ /^\[(\w+)\]$/
          if current_id
            types[current_id.to_sym] = current_data
          end
          
          current_id = $1
          current_data = { id: current_id.to_sym }
        elsif line.include?('=') && current_id
          key, value = line.split('=', 2).map(&:strip)
          
          case key.downcase
          when 'name'
            current_data[:name] = value
          when 'basemoney'
            current_data[:base_money] = value.to_i
          when 'battlebgm'
            current_data[:battle_bgm] = value
          when 'victorybgm'
            current_data[:victory_bgm] = value
          when 'gender'
            case value.strip.downcase
            when 'male'   then current_data[:gender] = 0
            when 'female' then current_data[:gender] = 1
            else               current_data[:gender] = 2
            end
          when 'skilllevel'
            current_data[:skill_level] = value.to_i
          when 'introbgm'
            current_data[:intro_bgm] = value
          when 'flags'
            current_data[:flags] = value.split(',').map { |f| f.strip.to_sym }
          end
        end
      end
      
      types[current_id.to_sym] = current_data if current_id
      types
    end
    
    #---------------------------------------------------------------------------
    # Parse encounters PBS format
    #---------------------------------------------------------------------------
    def self.parse_encounters(content)
      encounters = {}
      current_map = nil
      current_version = 0
      current_type = nil
      current_slots = []
      
      content.each_line do |line|
        line = line.strip
        next if line.empty? || line.start_with?('#')
        
        if line =~ /^\[(\d+)(,(\d+))?\]$/
          # Save previous encounter type
          if current_map && current_type
            encounters["#{current_map}_#{current_version}"] ||= { map_id: current_map, version: current_version, types: {} }
            encounters["#{current_map}_#{current_version}"][:types][current_type] = current_slots
          end
          
          current_map = $1.to_i
          current_version = $3 ? $3.to_i : 0
          current_type = nil
          current_slots = []
        elsif line =~ /^(\w+)$/  # Encounter type header
          # Save previous type
          if current_map && current_type
            encounters["#{current_map}_#{current_version}"] ||= { map_id: current_map, version: current_version, types: {} }
            encounters["#{current_map}_#{current_version}"][:types][current_type] = current_slots
          end
          
          current_type = $1.to_sym
          current_slots = []
        elsif line.include?(',') && current_type
          parts = line.split(',').map(&:strip)
          species = parts[0].to_sym
          level_min = parts[1].to_i
          level_max = parts[2] ? parts[2].to_i : level_min
          
          current_slots << { species: species, level_min: level_min, level_max: level_max }
        end
      end
      
      # Save last entries
      if current_map && current_type
        encounters["#{current_map}_#{current_version}"] ||= { map_id: current_map, version: current_version, types: {} }
        encounters["#{current_map}_#{current_version}"][:types][current_type] = current_slots
      end
      
      encounters
    end
    
    #---------------------------------------------------------------------------
    # Load and register all PBS data
    #---------------------------------------------------------------------------
    def self.load_all_pbs
      SCScripts.log("Loading PBS data into registry...")
      
      SCScripts.all_pbs_files.each do |file_info|
        data = parse_file(file_info[:path])
        next unless data
        
        register_parsed_data(data, file_info)
      end
      
      SCScripts.log("PBS data loading complete!")
    end
    
    #---------------------------------------------------------------------------
    # Register parsed data to the appropriate registry
    #---------------------------------------------------------------------------
    def self.register_parsed_data(data, file_info)
      filename = file_info[:name].downcase
      
      case filename
      when /abilities/
        data.each { |id, d| GameData::ScriptRegistry.register_ability(id, d) }
        SCScripts.log("Registered #{data.count} abilities from #{file_info[:name]}")
      when /moves/
        data.each { |id, d| GameData::ScriptRegistry.register_move(id, d) }
        SCScripts.log("Registered #{data.count} moves from #{file_info[:name]}")
      when /items/
        data.each { |id, d| GameData::ScriptRegistry.register_item(id, d) }
        SCScripts.log("Registered #{data.count} items from #{file_info[:name]}")
      when /types/
        data.each { |id, d| GameData::ScriptRegistry.register_type(id, d) }
        SCScripts.log("Registered #{data.count} types from #{file_info[:name]}")
      when /pokemon.*metrics/
        data.each do |id, d|
          # Merge metrics into existing pokemon data rather than overwriting
          existing = GameData::ScriptRegistry.pokemon[id]
          if existing
            existing.merge!(d) { |_key, old_val, _new_val| old_val }  # Keep existing values
          end
        end
        SCScripts.log("Merged #{data.count} Pokemon metrics from #{file_info[:name]}")
      when /pokemon/
        data.each { |id, d| GameData::ScriptRegistry.register_pokemon(id, d) }
        SCScripts.log("Registered #{data.count} Pokemon from #{file_info[:name]}")
      when /trainers\.txt/
        data.each { |key, d| GameData::ScriptRegistry.register_trainer(key, d) }
        SCScripts.log("Registered #{data.count} trainers from #{file_info[:name]}")
      when /trainer_types/
        data.each { |id, d| GameData::ScriptRegistry.register_trainer_type(id, d) }
        SCScripts.log("Registered #{data.count} trainer types from #{file_info[:name]}")
      when /encounters/
        data.each { |key, d| GameData::ScriptRegistry.register_encounter(key, d) }
        SCScripts.log("Registered #{data.count} encounter tables from #{file_info[:name]}")
      end
    end
  end
end
