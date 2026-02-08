#!/usr/bin/env ruby
#===============================================================================
# PBS to Ruby Converter V2
#===============================================================================
# Converts all PBS text files to Ruby DSL script files
# Uses the correct GameData::* format that matches the existing DSL system
#===============================================================================

require 'fileutils'

class PBSToRubyConverter
  PBS_DIR = "PBS"
  OUTPUT_DIR = "Data/Scripts"
  
  def initialize
    @pokemon_by_type = {}
    @moves_by_type = {}
    @items_by_category = {}
    @abilities = []
    @types = []
  end
  
  #=============================================================================
  # Main conversion methods
  #=============================================================================
  
  def convert_all
    puts "=== PBS to Ruby Converter V7 - Complete Conversion ==="
    puts ""
    
    # Base PBS
    convert_types
    convert_abilities
    convert_moves
    convert_items
    convert_pokemon
    
    # Extended PBS
    convert_pokemon_forms
    convert_trainer_types
    convert_trainers
    convert_encounters
    convert_ribbons
    
    # Map & Meta Data
    convert_map_metadata
    convert_map_connections
    convert_regional_dexes
    
    # Global Settings
    convert_metadata
    convert_town_map
    convert_pokemon_metrics
    
    # Battle Facilities
    convert_battle_tower_pokemon
    convert_battle_tower_trainers
    convert_battle_facility_lists
    convert_cup_tournaments
    
    # Dungeons
    convert_dungeon_parameters
    convert_dungeon_tilesets
    
    # Adventure Mode
    convert_adventure_maps
    
    # Misc
    convert_berry_plants
    convert_phone
    
    puts ""
    puts "=== Conversion Complete ==="
  end
  
  #=============================================================================
  # Types Conversion
  #=============================================================================
  
  def convert_types
    puts "Converting types.txt..."
    types_data = parse_pbs_file("#{PBS_DIR}/types.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Type Definitions
    #===============================================================================
    # Auto-generated from PBS/types.txt
    # Uses GameData::Type.define format
    #===============================================================================

    HEADER
    
    types_data.each do |id, data|
      output << generate_type_entry(id, data)
    end
    
    # Also add Stellar type if exists (Terastal)
    if File.exist?("#{PBS_DIR}/types_stellar.txt")
      stellar_data = parse_pbs_file("#{PBS_DIR}/types_stellar.txt")
      stellar_data.each do |id, data|
        output << generate_type_entry(id, data)
      end
      puts "  -> Added Stellar type from types_stellar.txt"
    end
    
    write_file("#{OUTPUT_DIR}/Types/All_Types.rb", output)
    puts "  -> Created Types/All_Types.rb (#{types_data.size} types)"
  end
  
  def generate_type_entry(id, data)
    entry = "GameData::Type.define :#{id} do |t|\n"
    entry << "  t.name        \"#{data['Name']}\"\n" if data['Name']
    entry << "  t.icon_pos    #{data['IconPosition']}\n" if data['IconPosition']
    
    if data['Weaknesses']
      weaknesses = data['Weaknesses'].split(',').map { |t| ":#{t.strip}" }.join(', ')
      entry << "  t.weaknesses  #{weaknesses}\n"
    end
    
    if data['Resistances']
      resistances = data['Resistances'].split(',').map { |t| ":#{t.strip}" }.join(', ')
      entry << "  t.resistances #{resistances}\n"
    end
    
    if data['Immunities']
      immunities = data['Immunities'].split(',').map { |t| ":#{t.strip}" }.join(', ')
      entry << "  t.immunities  #{immunities}\n"
    end
    
    if data['Flags']
      flags = data['Flags'].split(',').map { |f| ":#{f.strip}" }.join(', ')
      entry << "  t.flags       #{flags}\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Abilities Conversion
  #=============================================================================
  
  def convert_abilities
    puts "Converting abilities.txt..."
    abilities_data = parse_pbs_file("#{PBS_DIR}/abilities.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Ability Definitions
    #===============================================================================
    # Auto-generated from PBS/abilities.txt
    # Uses GameData::Ability.define format
    #===============================================================================

    HEADER
    
    abilities_data.each do |id, data|
      output << generate_ability_entry(id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Abilities/All_Abilities.rb", output)
    puts "  -> Created Abilities/All_Abilities.rb (#{abilities_data.size} abilities)"
    
    # Also convert Gen 9 abilities if exists
    if File.exist?("#{PBS_DIR}/abilities_Gen_9_Pack.txt")
      convert_gen9_abilities
    end
  end
  
  def convert_gen9_abilities
    puts "Converting abilities_Gen_9_Pack.txt..."
    abilities_data = parse_pbs_file("#{PBS_DIR}/abilities_Gen_9_Pack.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Gen 9 Ability Definitions
    #===============================================================================
    # Auto-generated from PBS/abilities_Gen_9_Pack.txt
    #===============================================================================

    HEADER
    
    abilities_data.each do |id, data|
      output << generate_ability_entry(id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Abilities/Gen9_Abilities.rb", output)
    puts "  -> Created Abilities/Gen9_Abilities.rb (#{abilities_data.size} abilities)"
  end
  
  def generate_ability_entry(id, data)
    entry = "GameData::Ability.define :#{id} do |a|\n"
    entry << "  a.name        \"#{escape_string(data['Name'])}\"\n" if data['Name']
    entry << "  a.description \"#{escape_string(data['Description'])}\"\n" if data['Description']
    
    if data['Flags']
      flags = data['Flags'].split(',').map { |f| ":#{f.strip}" }.join(', ')
      entry << "  a.flags       #{flags}\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Moves Conversion
  #=============================================================================
  
  def convert_moves
    puts "Converting moves.txt..."
    moves_data = parse_pbs_file("#{PBS_DIR}/moves.txt")
    
    # Group moves by type
    moves_by_type = {}
    moves_data.each do |id, data|
      type = data['Type'] || 'NORMAL'
      moves_by_type[type] ||= {}
      moves_by_type[type][id] = data
    end
    
    # Create a file for each type
    moves_by_type.each do |type, moves|
      output = generate_moves_file(type, moves)
      filename = "#{type.capitalize}_Moves.rb"
      write_file("#{OUTPUT_DIR}/Moves/#{filename}", output)
      puts "  -> Created Moves/#{filename} (#{moves.size} moves)"
    end
    
    # Convert plugin moves
    convert_plugin_moves
  end
  
  def convert_plugin_moves
    plugin_moves = [
      'moves_dynamax.txt',
      'moves_Gen_9_Pack.txt',
      'moves_terastal.txt',
      'moves_zpower.txt'
    ]
    
    plugin_moves.each do |file|
      next unless File.exist?("#{PBS_DIR}/#{file}")
      
      puts "Converting #{file}..."
      moves_data = parse_pbs_file("#{PBS_DIR}/#{file}")
      
      base_name = file.gsub('.txt', '').gsub('moves_', '')
      output = generate_moves_file(base_name.upcase, moves_data, "Plugin - #{base_name}")
      filename = "#{base_name.capitalize}_Moves.rb"
      write_file("#{OUTPUT_DIR}/Moves/Plugins/#{filename}", output)
      puts "  -> Created Moves/Plugins/#{filename} (#{moves_data.size} moves)"
    end
  end
  
  def generate_moves_file(type, moves, title = nil)
    title ||= "#{type.capitalize} Type"
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - #{title} Move Definitions
    #===============================================================================
    # Auto-generated from PBS files
    # Uses GameData::Move.define format
    #===============================================================================

    HEADER
    
    moves.each do |id, data|
      output << generate_move_entry(id, data)
    end
    
    output
  end
  
  def generate_move_entry(id, data)
    entry = "GameData::Move.define :#{id} do |m|\n"
    entry << "  m.name          \"#{escape_string(data['Name'])}\"\n" if data['Name']
    entry << "  m.type          :#{data['Type']}\n" if data['Type']
    entry << "  m.category      :#{data['Category']}\n" if data['Category']
    entry << "  m.power         #{data['Power']}\n" if data['Power'] && data['Power'] != '0'
    entry << "  m.accuracy      #{data['Accuracy']}\n" if data['Accuracy'] && data['Accuracy'] != '0'
    entry << "  m.total_pp      #{data['TotalPP']}\n" if data['TotalPP']
    entry << "  m.target        :#{data['Target']}\n" if data['Target']
    entry << "  m.priority      #{data['Priority']}\n" if data['Priority'] && data['Priority'] != '0'
    entry << "  m.function_code \"#{data['FunctionCode']}\"\n" if data['FunctionCode'] && data['FunctionCode'] != 'None'
    entry << "  m.effect_chance #{data['EffectChance']}\n" if data['EffectChance']
    
    if data['Flags']
      flags = data['Flags'].split(',').map { |f| ":#{f.strip}" }.join(', ')
      entry << "  m.flags         #{flags}\n"
    end
    
    entry << "  m.description   \"#{escape_string(data['Description'])}\"\n" if data['Description']
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Items Conversion
  #=============================================================================
  
  def convert_items
    puts "Converting items.txt..."
    items_data = parse_pbs_file("#{PBS_DIR}/items.txt")
    
    # Group items by pocket
    items_by_pocket = {}
    items_data.each do |id, data|
      pocket = data['Pocket'] || '1'
      items_by_pocket[pocket] ||= {}
      items_by_pocket[pocket][id] = data
    end
    
    pocket_names = {
      '1' => 'General',
      '2' => 'Medicine',
      '3' => 'Pokeballs',
      '4' => 'TMs',
      '5' => 'Berries',
      '6' => 'Mail',
      '7' => 'Battle',
      '8' => 'KeyItems'
    }
    
    items_by_pocket.each do |pocket, items|
      pocket_name = pocket_names[pocket] || "Pocket#{pocket}"
      output = generate_items_file(pocket_name, items)
      filename = "#{pocket_name}_Items.rb"
      write_file("#{OUTPUT_DIR}/Items/#{filename}", output)
      puts "  -> Created Items/#{filename} (#{items.size} items)"
    end
    
    # Convert plugin items
    convert_plugin_items
  end
  
  def convert_plugin_items
    plugin_items = [
      'items_custom.txt',
      'items_dynamax.txt',
      'items_Gen_9_Pack.txt',
      'items_Gen_9_Pack_TM.txt',
      'items_mark_charm.txt',
      'items_raid_bait.txt',
      'items_terastal.txt',
      'items_zpower.txt'
    ]
    
    plugin_items.each do |file|
      next unless File.exist?("#{PBS_DIR}/#{file}")
      
      puts "Converting #{file}..."
      items_data = parse_pbs_file("#{PBS_DIR}/#{file}")
      
      base_name = file.gsub('.txt', '').gsub('items_', '')
      output = generate_items_file(base_name.capitalize, items_data)
      filename = "#{base_name.capitalize}_Items.rb"
      write_file("#{OUTPUT_DIR}/Items/Plugins/#{filename}", output)
      puts "  -> Created Items/Plugins/#{filename} (#{items_data.size} items)"
    end
  end
  
  def generate_items_file(category, items)
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - #{category} Item Definitions
    #===============================================================================
    # Auto-generated from PBS files
    # Uses GameData::Item.define format
    #===============================================================================

    HEADER
    
    items.each do |id, data|
      output << generate_item_entry(id, data)
    end
    
    output
  end
  
  def generate_item_entry(id, data)
    entry = "GameData::Item.define :#{id} do |i|\n"
    entry << "  i.name        \"#{escape_string(data['Name'])}\"\n" if data['Name']
    entry << "  i.name_plural \"#{escape_string(data['NamePlural'])}\"\n" if data['NamePlural']
    entry << "  i.pocket      #{data['Pocket']}\n" if data['Pocket']
    entry << "  i.price       #{data['Price']}\n" if data['Price']
    entry << "  i.sell_price  #{data['SellPrice']}\n" if data['SellPrice']
    entry << "  i.bp_price    #{data['BPPrice']}\n" if data['BPPrice']
    entry << "  i.field_use   :#{data['FieldUse']}\n" if data['FieldUse']
    entry << "  i.battle_use  :#{data['BattleUse']}\n" if data['BattleUse']
    entry << "  i.consumable  #{data['Consumable']}\n" if data['Consumable']
    
    if data['Flags']
      flags = data['Flags'].split(',').map { |f| ":#{f.strip}" }.join(', ')
      entry << "  i.flags       #{flags}\n"
    end
    
    entry << "  i.description \"#{escape_string(data['Description'])}\"\n" if data['Description']
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Pokemon Conversion
  #=============================================================================
  
  def convert_pokemon
    puts "Converting pokemon.txt..."
    pokemon_data = parse_pbs_file("#{PBS_DIR}/pokemon.txt")
    
    # Group Pokemon by primary type
    pokemon_by_type = {}
    pokemon_data.each do |id, data|
      types = (data['Types'] || 'NORMAL').split(',')
      primary_type = types.first.strip
      pokemon_by_type[primary_type] ||= {}
      pokemon_by_type[primary_type][id] = data
    end
    
    # Create a file for each type
    pokemon_by_type.each do |type, pokemon|
      output = generate_pokemon_file(type, pokemon)
      filename = "#{type.capitalize}_Pokemon.rb"
      write_file("#{OUTPUT_DIR}/Pokemon/#{filename}", output)
      puts "  -> Created Pokemon/#{filename} (#{pokemon.size} Pokemon)"
    end
    
    # Convert Gen 9 Pokemon
    if File.exist?("#{PBS_DIR}/pokemon_base_Gen_9_Pack.txt")
      convert_gen9_pokemon
    end
  end
  
  def convert_gen9_pokemon
    puts "Converting pokemon_base_Gen_9_Pack.txt..."
    pokemon_data = parse_pbs_file("#{PBS_DIR}/pokemon_base_Gen_9_Pack.txt")
    
    # Group by type
    pokemon_by_type = {}
    pokemon_data.each do |id, data|
      types = (data['Types'] || 'NORMAL').split(',')
      primary_type = types.first.strip
      pokemon_by_type[primary_type] ||= {}
      pokemon_by_type[primary_type][id] = data
    end
    
    pokemon_by_type.each do |type, pokemon|
      output = generate_pokemon_file("Gen9 #{type.capitalize}", pokemon)
      filename = "Gen9_#{type.capitalize}_Pokemon.rb"
      write_file("#{OUTPUT_DIR}/Pokemon/Plugins/#{filename}", output)
      puts "  -> Created Pokemon/Plugins/#{filename} (#{pokemon.size} Pokemon)"
    end
  end
  
  def generate_pokemon_file(type, pokemon)
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - #{type.capitalize} Type Pokemon Definitions
    #===============================================================================
    # Auto-generated from PBS files
    # Uses GameData::Species.define format
    #===============================================================================

    HEADER
    
    pokemon.each do |id, data|
      output << generate_pokemon_entry(id, data)
    end
    
    output
  end
  
  def generate_pokemon_entry(id, data)
    entry = "GameData::Species.define :#{id} do |s|\n"
    entry << "  s.name          \"#{escape_string(data['Name'])}\"\n" if data['Name']
    
    # Types
    if data['Types']
      types = data['Types'].split(',').map { |t| ":#{t.strip}" }.join(', ')
      entry << "  s.types         #{types}\n"
    end
    
    # Base Stats - convert to hash format
    if data['BaseStats']
      stats = data['BaseStats'].split(',').map(&:to_i)
      entry << "  s.base_stats    hp: #{stats[0]}, attack: #{stats[1]}, defense: #{stats[2]}, speed: #{stats[3]}, sp_atk: #{stats[4]}, sp_def: #{stats[5]}\n"
    end
    
    entry << "  s.gender_ratio  :#{data['GenderRatio']}\n" if data['GenderRatio']
    entry << "  s.growth_rate   :#{data['GrowthRate']}\n" if data['GrowthRate']
    entry << "  s.base_exp      #{data['BaseExp']}\n" if data['BaseExp']
    entry << "  s.catch_rate    #{data['CatchRate']}\n" if data['CatchRate']
    entry << "  s.happiness     #{data['Happiness']}\n" if data['Happiness']
    
    # EVs - convert to hash format
    if data['EVs']
      evs_parts = data['EVs'].split(',')
      evs_hash = []
      evs_parts.each_slice(2) do |stat, val|
        stat_name = stat.strip.downcase.gsub('special_', 'sp_')
        evs_hash << "#{stat_name}: #{val.strip}"
      end
      entry << "  s.evs           #{evs_hash.join(', ')}\n" unless evs_hash.empty?
    end
    
    # Abilities
    if data['Abilities']
      abilities = data['Abilities'].split(',').map { |a| ":#{a.strip}" }.join(', ')
      entry << "  s.abilities     #{abilities}\n"
    end
    
    if data['HiddenAbilities']
      hidden = data['HiddenAbilities'].split(',').map { |a| ":#{a.strip}" }.join(', ')
      entry << "  s.hidden_abilities #{hidden}\n"
    end
    
    # Moves - parse level/move pairs
    if data['Moves']
      entry << "  s.moves do |m|\n"
      moves_parts = data['Moves'].split(',')
      moves_parts.each_slice(2) do |level, move|
        next unless level && move
        entry << "    m.at #{level.strip}, :#{move.strip}\n"
      end
      entry << "  end\n"
    end
    
    # Tutor and egg moves
    if data['TutorMoves']
      tutors = data['TutorMoves'].split(',').map { |m| ":#{m.strip}" }.join(', ')
      entry << "  s.tutor_moves   #{tutors}\n"
    end
    
    if data['EggMoves']
      eggs = data['EggMoves'].split(',').map { |m| ":#{m.strip}" }.join(', ')
      entry << "  s.egg_moves     #{eggs}\n"
    end
    
    # Egg groups
    if data['EggGroups']
      groups = data['EggGroups'].split(',').map { |g| ":#{g.strip}" }.join(', ')
      entry << "  s.egg_groups    #{groups}\n"
    end
    
    entry << "  s.hatch_steps   #{data['HatchSteps']}\n" if data['HatchSteps']
    entry << "  s.height        #{data['Height']}\n" if data['Height']
    entry << "  s.weight        #{data['Weight']}\n" if data['Weight']
    entry << "  s.color         :#{data['Color']}\n" if data['Color']
    entry << "  s.shape         :#{data['Shape']}\n" if data['Shape']
    entry << "  s.habitat       :#{data['Habitat']}\n" if data['Habitat']
    entry << "  s.category      \"#{escape_string(data['Category'])}\"\n" if data['Category']
    entry << "  s.pokedex_entry \"#{escape_string(data['Pokedex'])}\"\n" if data['Pokedex']
    entry << "  s.generation    #{data['Generation']}\n" if data['Generation']
    
    # Evolutions
    if data['Evolutions']
      evos = data['Evolutions'].split(',')
      evos.each_slice(3) do |species, method, param|
        next unless species && method
        if param
          entry << "  s.evolves_into  :#{species.strip}, :#{method.strip}, #{param.strip}\n"
        else
          entry << "  s.evolves_into  :#{species.strip}, :#{method.strip}\n"
        end
      end
    end
    
    # Flags
    if data['Flags']
      flags = data['Flags'].split(',').map { |f| ":#{f.strip}" }.join(', ')
      entry << "  s.flags         #{flags}\n"
    end
    
    # Wild items
    entry << "  s.wild_item_common   :#{data['WildItemCommon']}\n" if data['WildItemCommon']
    entry << "  s.wild_item_uncommon :#{data['WildItemUncommon']}\n" if data['WildItemUncommon']
    entry << "  s.wild_item_rare     :#{data['WildItemRare']}\n" if data['WildItemRare']
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Pokemon Forms Conversion
  #=============================================================================
  
  def convert_pokemon_forms
    form_files = [
      ['pokemon_forms.txt', 'All_Pokemon_Forms.rb'],
      ['pokemon_forms_Gen_9_Pack.txt', 'Gen9_Pokemon_Forms.rb'],
      ['pokemon_forms_gmax.txt', 'Gmax_Pokemon_Forms.rb'],
      ['Pokemon_forms_Kecleon.txt', 'Kecleon_Forms.rb'],
      ['pokemon_forms_pikachu_caps.txt', 'Pikachu_Caps_Forms.rb']
    ]
    
    form_files.each do |input_file, output_file|
      filepath = "#{PBS_DIR}/#{input_file}"
      next unless File.exist?(filepath)
      
      puts "Converting #{input_file}..."
      forms_data = parse_pokemon_forms_file(filepath)
      
      output = generate_forms_file(forms_data, input_file)
      write_file("#{OUTPUT_DIR}/Pokemon/Forms/#{output_file}", output)
      puts "  -> Created Pokemon/Forms/#{output_file} (#{forms_data.size} forms)"
    end
  end
  
  def parse_pokemon_forms_file(filepath)
    forms = {}
    current_key = nil
    current_data = {}
    
    File.readlines(filepath, encoding: 'UTF-8').each do |line|
      line = line.strip
      next if line.empty? || line.start_with?('#')
      
      # [SPECIES,FORM_NUMBER]
      if line =~ /^\[([A-Z0-9_]+),(\d+)\]$/
        if current_key
          forms[current_key] = current_data
        end
        current_key = [$1, $2.to_i]
        current_data = {}
      elsif line.include?('=') && current_key
        key, value = line.split('=', 2)
        current_data[key.strip] = value.strip if key && value
      end
    end
    
    forms[current_key] = current_data if current_key
    forms
  end
  
  def generate_forms_file(forms_data, source_file)
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Pokemon Form Definitions
    #===============================================================================
    # Auto-generated from PBS/#{source_file}
    # Uses GameData::Species.define_form format
    #===============================================================================

    HEADER
    
    forms_data.each do |(species, form_num), data|
      output << generate_form_entry(species, form_num, data)
    end
    
    output
  end
  
  def generate_form_entry(species, form_num, data)
    entry = "GameData::Species.define_form :#{species}, #{form_num} do |f|\n"
    entry << "  f.form_name     \"#{escape_string(data['FormName'])}\"\n" if data['FormName']
    
    # Types (optional override)
    if data['Types']
      types = data['Types'].split(',').map { |t| ":#{t.strip}" }.join(', ')
      entry << "  f.types         #{types}\n"
    end
    
    # Base Stats override
    if data['BaseStats']
      stats = data['BaseStats'].split(',').map(&:to_i)
      entry << "  f.base_stats    hp: #{stats[0]}, attack: #{stats[1]}, defense: #{stats[2]}, speed: #{stats[3]}, sp_atk: #{stats[4]}, sp_def: #{stats[5]}\n"
    end
    
    # Abilities override
    if data['Abilities']
      abilities = data['Abilities'].split(',').map { |a| ":#{a.strip}" }.join(', ')
      entry << "  f.abilities     #{abilities}\n"
    end
    if data['HiddenAbilities']
      hidden = data['HiddenAbilities'].split(',').map { |a| ":#{a.strip}" }.join(', ')
      entry << "  f.hidden_abilities #{hidden}\n"
    end
    
    # Mega Evolution requirements
    entry << "  f.mega_stone    :#{data['MegaStone']}\n" if data['MegaStone']
    entry << "  f.mega_move     :#{data['MegaMove']}\n" if data['MegaMove']
    entry << "  f.unmega_form   #{data['UnmegaForm']}\n" if data['UnmegaForm']
    
    # Primal/Ultra Beast
    entry << "  f.primal_item   :#{data['PokerusThreshold']}\n" if data['PokerusThreshold']
    
    # Height/Weight override
    entry << "  f.height        #{data['Height']}\n" if data['Height']
    entry << "  f.weight        #{data['Weight']}\n" if data['Weight']
    
    # Pokedex
    entry << "  f.pokedex_entry \"#{escape_string(data['Pokedex'])}\"\n" if data['Pokedex']
    
    # Wild items override
    entry << "  f.wild_item_common   :#{data['WildItemCommon']}\n" if data['WildItemCommon']
    entry << "  f.wild_item_uncommon :#{data['WildItemUncommon']}\n" if data['WildItemUncommon']
    entry << "  f.wild_item_rare     :#{data['WildItemRare']}\n" if data['WildItemRare']
    
    # Evolutions
    if data['Evolutions']
      evos = data['Evolutions'].split(',')
      evos.each_slice(3) do |evo_species, method, param|
        next unless evo_species && method
        if param
          entry << "  f.evolves_into  :#{evo_species.strip}, :#{method.strip}, #{param.strip}\n"
        else
          entry << "  f.evolves_into  :#{evo_species.strip}, :#{method.strip}\n"
        end
      end
    end
    
    # Moves override
    if data['Moves']
      entry << "  f.moves do |m|\n"
      moves_parts = data['Moves'].split(',')
      moves_parts.each_slice(2) do |level, move|
        next unless level && move
        entry << "    m.at #{level.strip}, :#{move.strip}\n"
      end
      entry << "  end\n"
    end
    
    if data['TutorMoves']
      tutors = data['TutorMoves'].split(',').map { |m| ":#{m.strip}" }.join(', ')
      entry << "  f.tutor_moves   #{tutors}\n"
    end
    
    if data['EggMoves']
      eggs = data['EggMoves'].split(',').map { |m| ":#{m.strip}" }.join(', ')
      entry << "  f.egg_moves     #{eggs}\n"
    end
    
    # Flags
    if data['Flags']
      flags = data['Flags'].split(',').map { |f| ":#{f.strip}" }.join(', ')
      entry << "  f.flags         #{flags}\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Trainer Types Conversion
  #=============================================================================
  
  def convert_trainer_types
    puts "Converting trainer_types.txt..."
    types_data = parse_pbs_file("#{PBS_DIR}/trainer_types.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Trainer Type Definitions
    #===============================================================================
    # Auto-generated from PBS/trainer_types.txt
    # Uses GameData::TrainerType.define format
    #===============================================================================

    HEADER
    
    types_data.each do |id, data|
      output << generate_trainer_type_entry(id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Trainers/TrainerTypes.rb", output)
    puts "  -> Created Trainers/TrainerTypes.rb (#{types_data.size} trainer types)"
  end
  
  def generate_trainer_type_entry(id, data)
    entry = "GameData::TrainerType.define :#{id} do |t|\n"
    entry << "  t.name        \"#{escape_string(data['Name'])}\"\n" if data['Name']
    entry << "  t.gender      :#{data['Gender']}\n" if data['Gender']
    entry << "  t.base_money  #{data['BaseMoney']}\n" if data['BaseMoney']
    entry << "  t.skill_level #{data['SkillLevel']}\n" if data['SkillLevel']
    entry << "  t.skill_code  \"#{data['SkillCode']}\"\n" if data['SkillCode']
    entry << "  t.intro_bgm   \"#{escape_string(data['IntroBGM'])}\"\n" if data['IntroBGM']
    entry << "  t.battle_bgm  \"#{escape_string(data['BattleBGM'])}\"\n" if data['BattleBGM']
    entry << "  t.victory_bgm \"#{escape_string(data['VictoryBGM'])}\"\n" if data['VictoryBGM']
    
    if data['Flags']
      flags = data['Flags'].split(',').map { |f| ":#{f.strip}" }.join(', ')
      entry << "  t.flags       #{flags}\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Trainers Conversion
  #=============================================================================
  
  def convert_trainers
    puts "Converting trainers.txt..."
    trainers_data = parse_trainers_file("#{PBS_DIR}/trainers.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Trainer Definitions
    #===============================================================================
    # Auto-generated from PBS/trainers.txt
    # Uses GameData::Trainer.define format
    #===============================================================================

    HEADER
    
    trainers_data.each do |key, data|
      output << generate_trainer_entry(key, data)
    end
    
    write_file("#{OUTPUT_DIR}/Trainers/All_Trainers.rb", output)
    puts "  -> Created Trainers/All_Trainers.rb (#{trainers_data.size} trainers)"
  end
  
  def parse_trainers_file(filepath)
    trainers = {}
    current_key = nil
    current_data = { 'pokemon' => [] }
    current_pokemon = nil
    
    File.readlines(filepath, encoding: 'UTF-8').each do |line|
      line = line.strip
      next if line.empty? || line.start_with?('#')
      
      # [TRAINER_TYPE,Name] or [TRAINER_TYPE,Name,Version]
      if line =~ /^\[([A-Z0-9_]+),([^\],]+)(?:,(\d+))?\]$/
        if current_key
          current_data['pokemon'] << current_pokemon if current_pokemon
          trainers[current_key] = current_data
        end
        current_key = [$1, $2, $3 || '0']
        current_data = { 'pokemon' => [] }
        current_pokemon = nil
      elsif line =~ /^Pokemon\s*=\s*(.+)$/
        # New Pokemon entry
        current_data['pokemon'] << current_pokemon if current_pokemon
        parts = $1.split(',')
        current_pokemon = { 'species' => parts[0].strip, 'level' => parts[1]&.strip || '50' }
      elsif line.include?('=') && current_key
        key, value = line.split('=', 2)
        key = key.strip
        value = value.strip
        
        if current_pokemon && %w[Moves Item Gender IV EV Happiness Nature Ball Shiny Shadow Poke].include?(key)
          current_pokemon[key] = value
        else
          current_data[key] = value
        end
      end
    end
    
    if current_key
      current_data['pokemon'] << current_pokemon if current_pokemon
      trainers[current_key] = current_data
    end
    
    trainers
  end
  
  def generate_trainer_entry(key, data)
    trainer_type, name, version = key
    entry = "GameData::Trainer.define :#{trainer_type}, \"#{escape_string(name)}\", #{version} do |t|\n"
    
    entry << "  t.lose_text \"#{escape_string(data['LoseText'])}\"\n" if data['LoseText']
    
    if data['Items']
      items = data['Items'].split(',').map { |i| ":#{i.strip}" }.join(', ')
      entry << "  t.items     #{items}\n"
    end
    
    # Pokemon
    data['pokemon'].each do |pkmn|
      next unless pkmn
      entry << "  t.pokemon :#{pkmn['species']}, #{pkmn['level']} do |p|\n"
      
      if pkmn['Moves']
        moves = pkmn['Moves'].split(',').map { |m| ":#{m.strip}" }.join(', ')
        entry << "    p.moves    #{moves}\n"
      end
      entry << "    p.item     :#{pkmn['Item']}\n" if pkmn['Item']
      entry << "    p.gender   :#{pkmn['Gender']}\n" if pkmn['Gender']
      entry << "    p.nature   :#{pkmn['Nature']}\n" if pkmn['Nature']
      entry << "    p.iv       #{pkmn['IV']}\n" if pkmn['IV']
      entry << "    p.ev       #{pkmn['EV']}\n" if pkmn['EV']
      entry << "    p.happiness #{pkmn['Happiness']}\n" if pkmn['Happiness']
      entry << "    p.ball     :#{pkmn['Ball']}\n" if pkmn['Ball']
      entry << "    p.shiny    true\n" if pkmn['Shiny'] == 'true'
      entry << "    p.shadow   true\n" if pkmn['Shadow'] == 'true'
      
      entry << "  end\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Encounters Conversion
  #=============================================================================
  
  def convert_encounters
    puts "Converting encounters.txt..."
    encounters_data = parse_encounters_file("#{PBS_DIR}/encounters.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Wild Encounter Definitions
    #===============================================================================
    # Auto-generated from PBS/encounters.txt
    # Uses GameData::Encounter.define format
    #===============================================================================

    HEADER
    
    encounters_data.each do |map_id, data|
      output << generate_encounter_entry(map_id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Encounters/All_Encounters.rb", output)
    puts "  -> Created Encounters/All_Encounters.rb (#{encounters_data.size} maps)"
  end
  
  def parse_encounters_file(filepath)
    encounters = {}
    current_map = nil
    current_encounter_type = nil
    current_density = 0
    
    File.readlines(filepath, encoding: 'UTF-8').each do |line|
      # Remove inline comments
      line = line.split('#').first.to_s.rstrip
      next if line.empty?
      
      # [MAP_ID] or [MAP_ID,VERSION]
      if line =~ /^\s*\[(\d+)(?:,(\d+))?\]/
        current_map = [$1.to_i, $2&.to_i || 0]
        encounters[current_map] = {}
        current_encounter_type = nil
      # Encounter type with density: Land,21 or Water,2
      elsif current_map && line =~ /^([A-Za-z]+)(?:,(\d+))?$/
        current_encounter_type = $1
        current_density = $2&.to_i || 0
        encounters[current_map][current_encounter_type] = { 'density' => current_density, 'pokemon' => [] }
      # Encounter entry (indented): 60,TENTACOOL,14,19 or 60,SHELLOS_1,14,19 (form)
      elsif current_map && current_encounter_type && line =~ /^\s+(\d+),([A-Z0-9_]+)(?:,(\d+)(?:,(\d+))?)?$/
        species_raw = $2
        # Handle form notation: SPECIES_FORM (e.g., SHELLOS_1)
        if species_raw =~ /^([A-Z0-9]+)_(\d+)$/
          species = $1
          form = $2.to_i
        else
          species = species_raw
          form = nil
        end
        
        encounters[current_map][current_encounter_type]['pokemon'] << {
          'probability' => $1.to_i,
          'species' => species,
          'form' => form,
          'min_level' => $3&.to_i || 5,
          'max_level' => $4&.to_i || $3&.to_i || 5
        }
      end
    end
    
    encounters
  end
  
  def generate_encounter_entry(map_key, data)
    map_id, version = map_key
    entry = "GameData::Encounter.define #{map_id}, #{version} do |e|\n"
    
    data.each do |encounter_type, enc_data|
      density = enc_data['density']
      pokemon_list = enc_data['pokemon']
      
      type_method = encounter_type.downcase
      entry << "  e.#{type_method} #{density} do |enc|\n"
      
      pokemon_list.each do |enc|
        form_str = enc['form'] ? ", form: #{enc['form']}" : ""
        if enc['min_level'] == enc['max_level']
          entry << "    enc.add :#{enc['species']}, #{enc['min_level']}, #{enc['probability']}#{form_str}\n"
        else
          entry << "    enc.add :#{enc['species']}, #{enc['min_level']}..#{enc['max_level']}, #{enc['probability']}#{form_str}\n"
        end
      end
      
      entry << "  end\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Ribbons Conversion
  #=============================================================================
  
  def convert_ribbons
    puts "Converting ribbons.txt..."
    ribbons_data = parse_pbs_file("#{PBS_DIR}/ribbons.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Ribbon Definitions
    #===============================================================================
    # Auto-generated from PBS/ribbons.txt
    # Uses GameData::Ribbon.define format
    #===============================================================================

    HEADER
    
    ribbons_data.each do |id, data|
      output << generate_ribbon_entry(id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Ribbons/All_Ribbons.rb", output)
    puts "  -> Created Ribbons/All_Ribbons.rb (#{ribbons_data.size} ribbons)"
  end
  
  def generate_ribbon_entry(id, data)
    entry = "GameData::Ribbon.define :#{id} do |r|\n"
    entry << "  r.name        \"#{escape_string(data['Name'])}\"\n" if data['Name']
    entry << "  r.icon_pos    #{data['IconPosition']}\n" if data['IconPosition']
    entry << "  r.description \"#{escape_string(data['Description'])}\"\n" if data['Description']
    
    if data['Flags']
      flags = data['Flags'].split(',').map { |f| ":#{f.strip}" }.join(', ')
      entry << "  r.flags       #{flags}\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Map Metadata Conversion
  #=============================================================================
  
  def convert_map_metadata
    puts "Converting map_metadata.txt..."
    metadata = parse_pbs_file("#{PBS_DIR}/map_metadata.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Map Metadata Definitions
    #===============================================================================
    # Auto-generated from PBS/map_metadata.txt
    # Uses GameData::MapMetadata.define format
    #===============================================================================

    HEADER
    
    metadata.each do |id, data|
      output << generate_map_metadata_entry(id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Maps/All_MapMetadata.rb", output)
    puts "  -> Created Maps/All_MapMetadata.rb (#{metadata.size} maps)"
  end
  
  def generate_map_metadata_entry(id, data)
    # Convert ID to integer to avoid octal issues with 008, 009, etc.
    map_id = id.to_i
    entry = "GameData::MapMetadata.define #{map_id} do |m|\n"
    entry << "  m.name          \"#{escape_string(data['Name'])}\"\n" if data['Name']
    entry << "  m.outdoor       true\n" if data['Outdoor'] == 'true'
    entry << "  m.show_area     true\n" if data['ShowArea'] == 'true'
    
    if data['MapPosition']
      parts = data['MapPosition'].split(',')
      entry << "  m.map_position  #{parts[0]}, #{parts[1]}, #{parts[2]}\n"
    end
    
    if data['MapSize']
      parts = data['MapSize'].split(',')
      entry << "  m.map_size      #{parts[0]}, #{parts[1]}\n"
    end
    
    entry << "  m.battle_back   \"#{data['BattleBack']}\"\n" if data['BattleBack']
    entry << "  m.environment   :#{data['Environment']}\n" if data['Environment']
    
    if data['Weather']
      parts = data['Weather'].split(',')
      if parts.size >= 2
        entry << "  m.weather       :#{parts[0]}, #{parts[1]}\n"
      else
        entry << "  m.weather       :#{parts[0]}\n"
      end
    end
    
    if data['HealingSpot']
      parts = data['HealingSpot'].split(',')
      entry << "  m.healing_spot  #{parts[0]}, #{parts[1]}, #{parts[2]}\n"
    end
    
    entry << "  m.bicycle       true\n" if data['Bicycle'] == 'true'
    entry << "  m.bicycle_always true\n" if data['BicycleAlways'] == 'true'
    entry << "  m.dark_map      true\n" if data['DarkMap'] == 'true'
    entry << "  m.safari_map    true\n" if data['SafariMap'] == 'true'
    entry << "  m.dive_map      #{data['DiveMap']}\n" if data['DiveMap']
    entry << "  m.snap_edges    true\n" if data['SnapEdges'] == 'true'
    entry << "  m.dungeon       true\n" if data['Dungeon'] == 'true'
    
    if data['Flags']
      flags = data['Flags'].split(',').map { |f| ":#{f.strip}" }.join(', ')
      entry << "  m.flags         #{flags}\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Map Connections Conversion
  #=============================================================================
  
  def convert_map_connections
    puts "Converting map_connections.txt..."
    connections = parse_map_connections_file("#{PBS_DIR}/map_connections.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Map Connection Definitions
    #===============================================================================
    # Auto-generated from PBS/map_connections.txt
    # Uses GameData::MapConnection.define format
    #===============================================================================

    HEADER
    
    connections.each_with_index do |conn, idx|
      output << generate_map_connection_entry(idx, conn)
    end
    
    write_file("#{OUTPUT_DIR}/Maps/All_MapConnections.rb", output)
    puts "  -> Created Maps/All_MapConnections.rb (#{connections.size} connections)"
  end
  
  def parse_map_connections_file(filepath)
    connections = []
    return connections unless File.exist?(filepath)
    
    File.readlines(filepath, encoding: 'UTF-8').each do |line|
      line = line.strip
      next if line.empty? || line.start_with?('#')
      
      # Format: map1,dir1,offset1,map2,dir2,offset2
      parts = line.split(',')
      next unless parts.size >= 6
      
      connections << {
        map1: parts[0].to_i,
        dir1: parts[1],
        offset1: parts[2].to_i,
        map2: parts[3].to_i,
        dir2: parts[4],
        offset2: parts[5].to_i
      }
    end
    
    connections
  end
  
  def generate_map_connection_entry(idx, conn)
    entry = "GameData::MapConnection.define do |c|\n"
    entry << "  c.map1    #{conn[:map1]}\n"
    entry << "  c.edge1   :#{conn[:dir1]}\n"
    entry << "  c.offset1 #{conn[:offset1]}\n"
    entry << "  c.map2    #{conn[:map2]}\n"
    entry << "  c.edge2   :#{conn[:dir2]}\n"
    entry << "  c.offset2 #{conn[:offset2]}\n"
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Regional Dexes Conversion
  #=============================================================================
  
  def convert_regional_dexes
    puts "Converting regional_dexes.txt..."
    dexes = parse_regional_dexes_file("#{PBS_DIR}/regional_dexes.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Regional Pokedex Definitions
    #===============================================================================
    # Auto-generated from PBS/regional_dexes.txt
    # Uses GameData::RegionalDex.define format
    #===============================================================================

    HEADER
    
    dexes.each do |dex_id, species_list|
      output << generate_regional_dex_entry(dex_id, species_list)
    end
    
    write_file("#{OUTPUT_DIR}/Pokemon/All_RegionalDexes.rb", output)
    puts "  -> Created Pokemon/All_RegionalDexes.rb (#{dexes.size} dexes)"
  end
  
  def parse_regional_dexes_file(filepath)
    dexes = {}
    return dexes unless File.exist?(filepath)
    
    current_dex = nil
    current_species = []
    
    File.readlines(filepath, encoding: 'UTF-8').each do |line|
      line = line.strip
      next if line.empty?
      
      # Skip comment lines (but not dex headers)
      next if line.start_with?('#') && !line.include?('---')
      
      # New dex entry
      if line =~ /^\[(\d+)\]$/
        if current_dex
          dexes[current_dex] = current_species
        end
        current_dex = $1.to_i
        current_species = []
      elsif current_dex && line !~ /^#/
        # Species list (comma-separated on each line)
        species = line.split(',').map(&:strip).reject(&:empty?)
        current_species.concat(species)
      end
    end
    
    # Save last dex
    if current_dex
      dexes[current_dex] = current_species
    end
    
    dexes
  end
  
  def generate_regional_dex_entry(dex_id, species_list)
    entry = "GameData::RegionalDex.define #{dex_id} do |d|\n"
    entry << "  d.species \\\n"
    
    # Format species in groups of 10 per line for readability
    species_list.each_slice(10).with_index do |group, idx|
      symbols = group.map { |s| ":#{s}" }.join(', ')
      if idx == (species_list.size / 10.0).ceil - 1
        entry << "    #{symbols}\n"
      else
        entry << "    #{symbols},\n"
      end
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Global Metadata Conversion
  #=============================================================================
  
  def convert_metadata
    puts "Converting metadata.txt..."
    metadata = parse_pbs_file("#{PBS_DIR}/metadata.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Global Metadata & Player Character Definitions
    #===============================================================================
    # Auto-generated from PBS/metadata.txt
    # Uses GameData::Metadata.define and GameData::PlayerMetadata.define format
    #===============================================================================

    HEADER
    
    metadata.each do |id, data|
      id_num = id.to_i
      if id_num == 0
        output << generate_global_metadata_entry(data)
      else
        output << generate_player_metadata_entry(id_num, data)
      end
    end
    
    write_file("#{OUTPUT_DIR}/Config/All_Metadata.rb", output)
    puts "  -> Created Config/All_Metadata.rb (#{metadata.size} entries)"
  end
  
  def generate_global_metadata_entry(data)
    entry = "GameData::Metadata.define do |m|\n"
    entry << "  m.start_money       #{data['StartMoney']}\n" if data['StartMoney']
    
    if data['StartItemStorage']
      items = data['StartItemStorage'].split(',').map { |i| ":#{i.strip}" }.join(', ')
      entry << "  m.start_item_storage #{items}\n"
    end
    
    if data['Home']
      parts = data['Home'].split(',')
      entry << "  m.home              #{parts.join(', ')}\n"
    end
    
    entry << "  m.storage_creator   \"#{data['StorageCreator']}\"\n" if data['StorageCreator']
    entry << "  m.wild_battle_bgm   \"#{data['WildBattleBGM']}\"\n" if data['WildBattleBGM']
    entry << "  m.trainer_battle_bgm \"#{data['TrainerBattleBGM']}\"\n" if data['TrainerBattleBGM']
    entry << "  m.wild_victory_bgm  \"#{data['WildVictoryBGM']}\"\n" if data['WildVictoryBGM']
    entry << "  m.trainer_victory_bgm \"#{data['TrainerVictoryBGM']}\"\n" if data['TrainerVictoryBGM']
    entry << "  m.surf_bgm          \"#{data['SurfBGM']}\"\n" if data['SurfBGM']
    entry << "  m.bicycle_bgm       \"#{data['BicycleBGM']}\"\n" if data['BicycleBGM']
    entry << "end\n\n"
    entry
  end
  
  def generate_player_metadata_entry(id, data)
    entry = "GameData::PlayerMetadata.define #{id} do |p|\n"
    entry << "  p.trainer_type  :#{data['TrainerType']}\n" if data['TrainerType']
    entry << "  p.walk_charset  \"#{data['WalkCharset']}\"\n" if data['WalkCharset']
    entry << "  p.run_charset   \"#{data['RunCharset']}\"\n" if data['RunCharset']
    entry << "  p.cycle_charset \"#{data['CycleCharset']}\"\n" if data['CycleCharset']
    entry << "  p.surf_charset  \"#{data['SurfCharset']}\"\n" if data['SurfCharset']
    entry << "  p.dive_charset  \"#{data['DiveCharset']}\"\n" if data['DiveCharset']
    entry << "  p.fish_charset  \"#{data['FishCharset']}\"\n" if data['FishCharset']
    entry << "  p.surf_fish_charset \"#{data['SurfFishCharset']}\"\n" if data['SurfFishCharset']
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Town Map Conversion
  #=============================================================================
  
  def convert_town_map
    puts "Converting town_map.txt..."
    town_map_data = parse_town_map_file("#{PBS_DIR}/town_map.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Town Map Definitions
    #===============================================================================
    # Auto-generated from PBS/town_map.txt
    # Uses GameData::TownMap.define format
    #===============================================================================

    HEADER
    
    town_map_data.each do |region_id, data|
      output << generate_town_map_entry(region_id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Config/All_TownMaps.rb", output)
    puts "  -> Created Config/All_TownMaps.rb (#{town_map_data.size} regions)"
  end
  
  def parse_town_map_file(filepath)
    regions = {}
    return regions unless File.exist?(filepath)
    
    current_region = nil
    current_data = { points: [] }
    
    File.readlines(filepath, encoding: 'UTF-8').each do |line|
      line = line.strip
      next if line.empty? || line.start_with?('#')
      
      if line =~ /^\[(\d+)\]/
        if current_region
          regions[current_region] = current_data
        end
        current_region = $1.to_i
        current_data = { points: [] }
      elsif line.include?('=') && current_region
        key, value = line.split('=', 2)
        key = key.strip
        value = value.strip
        
        if key == 'Point'
          current_data[:points] << value
        else
          current_data[key] = value
        end
      end
    end
    
    if current_region
      regions[current_region] = current_data
    end
    
    regions
  end
  
  def generate_town_map_entry(region_id, data)
    entry = "GameData::TownMap.define #{region_id} do |t|\n"
    entry << "  t.name     \"#{escape_string(data['Name'])}\"\n" if data['Name']
    entry << "  t.filename \"#{data['Filename']}\"\n" if data['Filename']
    
    data[:points].each do |point|
      parts = point.split(',')
      x = parts[0]
      y = parts[1]
      name = parts[2] || ''
      fly_dest = parts[3] || ''
      map_id = parts[4] || ''
      fly_x = parts[5] || ''
      fly_y = parts[6] || ''
      switch = parts[7] || ''
      
      entry << "  t.point    #{x}, #{y}"
      entry << ", \"#{name}\"" if name && !name.empty?
      entry << ", \"#{fly_dest}\"" if fly_dest && !fly_dest.empty?
      entry << ", #{map_id}" if map_id && !map_id.empty?
      entry << ", #{fly_x}" if fly_x && !fly_x.empty?
      entry << ", #{fly_y}" if fly_y && !fly_y.empty?
      entry << ", #{switch}" if switch && !switch.empty?
      entry << "\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Pokemon Metrics Conversion
  #=============================================================================
  
  def convert_pokemon_metrics
    puts "Converting pokemon_metrics.txt..."
    metrics = parse_pbs_file("#{PBS_DIR}/pokemon_metrics.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Pokemon Sprite Metrics
    #===============================================================================
    # Auto-generated from PBS/pokemon_metrics.txt
    # Uses GameData::SpeciesMetrics.define format
    #===============================================================================

    HEADER
    
    metrics.each do |id, data|
      output << generate_metrics_entry(id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Pokemon/All_Metrics.rb", output)
    puts "  -> Created Pokemon/All_Metrics.rb (#{metrics.size} entries)"
    
    # Also convert variant metric files
    convert_metrics_variant("pokemon_metrics_female.txt", "Pokemon/Female_Metrics.rb")
    convert_metrics_variant("pokemon_metrics_forms.txt", "Pokemon/Forms_Metrics.rb")
    convert_metrics_variant("pokemon_metrics_Gen_9_Pack.txt", "Pokemon/Gen9_Metrics.rb")
    convert_metrics_variant("pokemon_metrics_gmax.txt", "Pokemon/Gmax_Metrics.rb")
  end
  
  def convert_metrics_variant(filename, output_path)
    filepath = "#{PBS_DIR}/#{filename}"
    return unless File.exist?(filepath)
    
    puts "Converting #{filename}..."
    metrics = parse_pbs_file(filepath)
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Pokemon Sprite Metrics Variant
    #===============================================================================
    # Auto-generated from PBS/#{filename}
    # Uses GameData::SpeciesMetrics.define format
    #===============================================================================

    HEADER
    
    metrics.each do |id, data|
      output << generate_metrics_entry(id, data)
    end
    
    write_file("#{OUTPUT_DIR}/#{output_path}", output)
    puts "  -> Created #{output_path} (#{metrics.size} entries)"
  end
  
  def generate_metrics_entry(id, data)
    entry = "GameData::SpeciesMetrics.define :#{id} do |m|\n"
    
    if data['BackSprite']
      parts = data['BackSprite'].split(',')
      entry << "  m.back_sprite     #{parts[0]}, #{parts[1]}\n"
    end
    
    if data['FrontSprite']
      parts = data['FrontSprite'].split(',')
      entry << "  m.front_sprite    #{parts[0]}, #{parts[1]}\n"
    end
    
    if data['ShadowSprite']
      parts = data['ShadowSprite'].split(',')
      entry << "  m.shadow_sprite   #{parts.join(', ')}\n"
    end
    
    if data['DmaxBackSprite']
      parts = data['DmaxBackSprite'].split(',')
      entry << "  m.dmax_back_sprite #{parts[0]}, #{parts[1]}\n"
    end
    
    if data['DmaxFrontSprite']
      parts = data['DmaxFrontSprite'].split(',')
      entry << "  m.dmax_front_sprite #{parts[0]}, #{parts[1]}\n"
    end
    
    entry << "  m.dmax_shadow_x   #{data['DmaxShadowX']}\n" if data['DmaxShadowX']
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Battle Tower Pokemon Conversion
  #=============================================================================
  
  def convert_battle_tower_pokemon
    puts "Converting battle_tower_pokemon.txt..."
    pokemon = parse_battle_tower_pokemon("#{PBS_DIR}/battle_tower_pokemon.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Battle Tower Pokemon Definitions
    #===============================================================================
    # Auto-generated from PBS/battle_tower_pokemon.txt
    # Uses GameData::BattleTowerPokemon.define format
    #===============================================================================

    HEADER
    
    pokemon.each_with_index do |pkmn, idx|
      output << generate_bt_pokemon_entry(idx, pkmn)
    end
    
    write_file("#{OUTPUT_DIR}/BattleFacility/All_BattleTowerPokemon.rb", output)
    puts "  -> Created BattleFacility/All_BattleTowerPokemon.rb (#{pokemon.size} Pokemon)"
  end
  
  def parse_battle_tower_pokemon(filepath)
    pokemon = []
    return pokemon unless File.exist?(filepath)
    
    File.readlines(filepath, encoding: 'UTF-8').each do |line|
      line = line.strip
      next if line.empty? || line.start_with?('#')
      
      parts = line.split(';')
      next unless parts.size >= 4
      
      pokemon << {
        species: parts[0],
        item: parts[1],
        nature: parts[2],
        evs: parts[3],
        moves: parts[4] ? parts[4].split(',').map(&:strip).reject(&:empty?) : []
      }
    end
    
    pokemon
  end
  
  def generate_bt_pokemon_entry(idx, pkmn)
    entry = "GameData::BattleTowerPokemon.define #{idx} do |p|\n"
    entry << "  p.species :#{pkmn[:species]}\n"
    entry << "  p.item    :#{pkmn[:item]}\n" if pkmn[:item] && !pkmn[:item].empty?
    entry << "  p.nature  :#{pkmn[:nature]}\n" if pkmn[:nature] && !pkmn[:nature].empty?
    
    if pkmn[:evs] && !pkmn[:evs].empty?
      evs = pkmn[:evs].split(',').map { |e| ":#{e.strip}" }.join(', ')
      entry << "  p.evs     #{evs}\n"
    end
    
    if pkmn[:moves] && !pkmn[:moves].empty?
      moves = pkmn[:moves].map { |m| ":#{m}" }.join(', ')
      entry << "  p.moves   #{moves}\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Battle Tower Trainers Conversion
  #=============================================================================
  
  def convert_battle_tower_trainers
    puts "Converting battle_tower_trainers.txt..."
    trainers = parse_pbs_file("#{PBS_DIR}/battle_tower_trainers.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Battle Tower Trainer Definitions
    #===============================================================================
    # Auto-generated from PBS/battle_tower_trainers.txt
    # Uses GameData::BattleTowerTrainer.define format
    #===============================================================================

    HEADER
    
    trainers.each do |id, data|
      output << generate_bt_trainer_entry(id.to_i, data)
    end
    
    write_file("#{OUTPUT_DIR}/BattleFacility/All_BattleTowerTrainers.rb", output)
    puts "  -> Created BattleFacility/All_BattleTowerTrainers.rb (#{trainers.size} trainers)"
  end
  
  def generate_bt_trainer_entry(id, data)
    entry = "GameData::BattleTowerTrainer.define #{id} do |t|\n"
    entry << "  t.name            \"#{escape_string(data['Name'])}\"\n" if data['Name']
    entry << "  t.type            :#{data['Type']}\n" if data['Type']
    entry << "  t.begin_speech    \"#{escape_string(data['BeginSpeech'])}\"\n" if data['BeginSpeech']
    entry << "  t.end_speech_win  \"#{escape_string(data['EndSpeechWin'])}\"\n" if data['EndSpeechWin']
    entry << "  t.end_speech_lose \"#{escape_string(data['EndSpeechLose'])}\"\n" if data['EndSpeechLose']
    
    if data['PokemonNos']
      nums = data['PokemonNos'].split(',').map(&:strip).join(', ')
      entry << "  t.pokemon_nos     #{nums}\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Battle Facility Lists Conversion
  #=============================================================================
  
  def convert_battle_facility_lists
    puts "Converting battle_facility_lists.txt..."
    lists = parse_battle_facility_lists("#{PBS_DIR}/battle_facility_lists.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Battle Facility List Definitions
    #===============================================================================
    # Auto-generated from PBS/battle_facility_lists.txt
    # Uses GameData::BattleFacilityList.define format
    #===============================================================================

    HEADER
    
    lists.each_with_index do |list, idx|
      output << generate_facility_list_entry(idx, list)
    end
    
    write_file("#{OUTPUT_DIR}/BattleFacility/All_FacilityLists.rb", output)
    puts "  -> Created BattleFacility/All_FacilityLists.rb (#{lists.size} lists)"
  end
  
  def parse_battle_facility_lists(filepath)
    lists = []
    return lists unless File.exist?(filepath)
    
    current_list = nil
    
    File.readlines(filepath, encoding: 'UTF-8').each do |line|
      line = line.strip
      next if line.empty? || line.start_with?('#')
      
      if line =~ /^\[(\w+)\]/
        if current_list
          lists << current_list
        end
        current_list = { name: $1 }
      elsif line.include?('=') && current_list
        key, value = line.split('=', 2)
        current_list[key.strip] = value.strip
      end
    end
    
    lists << current_list if current_list
    lists
  end
  
  def generate_facility_list_entry(idx, list)
    entry = "GameData::BattleFacilityList.define :#{list[:name]} do |l|\n"
    entry << "  l.trainers   \"#{list['Trainers']}\"\n" if list['Trainers']
    entry << "  l.pokemon    \"#{list['Pokemon']}\"\n" if list['Pokemon']
    
    if list['Challenges']
      challenges = list['Challenges'].split(',').map { |c| ":#{c.strip}" }.join(', ')
      entry << "  l.challenges #{challenges}\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Cup Tournament Conversion
  #=============================================================================
  
  def convert_cup_tournaments
    puts "Converting cup tournament files..."
    
    cup_files = [
      ['cup_poke_pkmn.txt', 'cup_poke_trainers.txt', 'PokeCup'],
      ['cup_little_pkmn.txt', 'cup_little_trainers.txt', 'LittleCup'],
      ['cup_pika_pkmn.txt', 'cup_pika_trainers.txt', 'PikaCup'],
      ['cup_fancy_pkmn.txt', 'cup_fancy_trainers.txt', 'FancyCup'],
      ['cup_fancy_pkmn_single.txt', 'cup_fancy_trainers_single.txt', 'FancyCupSingle']
    ]
    
    total_pokemon = 0
    total_trainers = 0
    
    cup_files.each do |pkmn_file, trainer_file, cup_name|
      pkmn_path = "#{PBS_DIR}/#{pkmn_file}"
      trainer_path = "#{PBS_DIR}/#{trainer_file}"
      
      next unless File.exist?(pkmn_path)
      
      # Convert Pokemon
      pokemon = parse_battle_tower_pokemon(pkmn_path)
      if pokemon.any?
        output = <<~HEADER
        #===============================================================================
        # Shattered Crowns - #{cup_name} Pokemon Definitions
        #===============================================================================
        # Auto-generated from PBS/#{pkmn_file}
        #===============================================================================

        HEADER
        
        pokemon.each_with_index do |pkmn, idx|
          output << generate_bt_pokemon_entry(idx, pkmn)
        end
        
        write_file("#{OUTPUT_DIR}/BattleFacility/#{cup_name}_Pokemon.rb", output)
        total_pokemon += pokemon.size
      end
      
      # Convert Trainers
      if File.exist?(trainer_path)
        trainers = parse_pbs_file(trainer_path)
        if trainers.any?
          output = <<~HEADER
          #===============================================================================
          # Shattered Crowns - #{cup_name} Trainer Definitions
          #===============================================================================
          # Auto-generated from PBS/#{trainer_file}
          #===============================================================================

          HEADER
          
          trainers.each do |id, data|
            output << generate_bt_trainer_entry(id.to_i, data)
          end
          
          write_file("#{OUTPUT_DIR}/BattleFacility/#{cup_name}_Trainers.rb", output)
          total_trainers += trainers.size
        end
      end
    end
    
    puts "  -> Created Cup tournament files (#{total_pokemon} Pokemon, #{total_trainers} trainers)"
  end
  
  #=============================================================================
  # Adventure Maps Conversion
  #=============================================================================
  
  def convert_adventure_maps
    puts "Converting adventure_maps.txt..."
    maps = parse_adventure_maps("#{PBS_DIR}/adventure_maps.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Adventure Map Definitions
    #===============================================================================
    # Auto-generated from PBS/adventure_maps.txt
    # Uses GameData::AdventureMap.define format
    #===============================================================================

    HEADER
    
    maps.each do |id, data|
      output << generate_adventure_map_entry(id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Config/All_AdventureMaps.rb", output)
    puts "  -> Created Config/All_AdventureMaps.rb (#{maps.size} maps)"
  end
  
  def parse_adventure_maps(filepath)
    maps = {}
    return maps unless File.exist?(filepath)
    
    current_id = nil
    current_data = { tiles: [] }
    
    File.readlines(filepath, encoding: 'UTF-8').each do |line|
      line = line.strip
      next if line.empty?
      next if line.start_with?('#') && !line.include?('[')
      
      if line =~ /^\[(\d+)\]/
        if current_id
          maps[current_id] = current_data
        end
        current_id = $1.to_i
        current_data = { tiles: [] }
      elsif line.include?('=') && current_id
        key, value = line.split('=', 2)
        key = key.strip
        value = value.strip
        
        if key == 'Tile'
          current_data[:tiles] << value
        else
          current_data[key] = value
        end
      end
    end
    
    maps[current_id] = current_data if current_id
    maps
  end
  
  def generate_adventure_map_entry(id, data)
    entry = "GameData::AdventureMap.define #{id} do |m|\n"
    entry << "  m.name            \"#{escape_string(data['Name'])}\"\n" if data['Name']
    entry << "  m.filename        \"#{data['Filename']}\"\n" if data['Filename']
    entry << "  m.description     \"#{escape_string(data['Description'])}\"\n" if data['Description']
    entry << "  m.darkness_chance #{data['DarknessChance']}\n" if data['DarknessChance']
    
    if data['Dimensions']
      parts = data['Dimensions'].split(',')
      entry << "  m.dimensions      #{parts[0]}, #{parts[1]}\n"
    end
    
    entry << "  m.player_start    \"#{data['PlayerStart']}\"\n" if data['PlayerStart']
    
    if data['Pathways']
      pathways = data['Pathways'].split(',').map { |p| "\"#{p.strip}\"" }.join(', ')
      entry << "  m.pathways        #{pathways}\n"
    end
    
    if data['Battles']
      battles = data['Battles'].split(',').map { |b| "\"#{b.strip}\"" }.join(', ')
      entry << "  m.battles         #{battles}\n"
    end
    
    data[:tiles].each do |tile|
      parts = tile.split(',')
      entry << "  m.tile            :#{parts[0]}, \"#{parts[1]}\"\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Dungeon Parameters Conversion
  #=============================================================================
  
  def convert_dungeon_parameters
    puts "Converting dungeon_parameters.txt..."
    dungeons = parse_pbs_file("#{PBS_DIR}/dungeon_parameters.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Dungeon Parameter Definitions
    #===============================================================================
    # Auto-generated from PBS/dungeon_parameters.txt
    # Uses GameData::DungeonParameters.define format
    #===============================================================================

    HEADER
    
    dungeons.each do |id, data|
      output << generate_dungeon_params_entry(id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Dungeons/All_DungeonParameters.rb", output)
    puts "  -> Created Dungeons/All_DungeonParameters.rb (#{dungeons.size} dungeons)"
  end
  
  def generate_dungeon_params_entry(id, data)
    entry = "GameData::DungeonParameters.define :#{id} do |d|\n"
    
    if data['DungeonSize']
      parts = data['DungeonSize'].split(',')
      entry << "  d.dungeon_size      #{parts[0]}, #{parts[1]}\n"
    end
    
    if data['CellSize']
      parts = data['CellSize'].split(',')
      entry << "  d.cell_size         #{parts[0]}, #{parts[1]}\n"
    end
    
    if data['MinRoomSize']
      parts = data['MinRoomSize'].split(',')
      entry << "  d.min_room_size     #{parts[0]}, #{parts[1]}\n"
    end
    
    if data['MaxRoomSize']
      parts = data['MaxRoomSize'].split(',')
      entry << "  d.max_room_size     #{parts[0]}, #{parts[1]}\n"
    end
    
    entry << "  d.corridor_width    #{data['CorridorWidth']}\n" if data['CorridorWidth']
    entry << "  d.shift_corridors   true\n" if data['ShiftCorridors'] == 'true'
    entry << "  d.node_layout       :#{data['NodeLayout']}\n" if data['NodeLayout']
    entry << "  d.room_layout       :#{data['RoomLayout']}\n" if data['RoomLayout']
    entry << "  d.room_chance       #{data['RoomChance']}\n" if data['RoomChance']
    entry << "  d.extra_connections #{data['ExtraConnections']}\n" if data['ExtraConnections']
    
    if data['FloorPatches']
      entry << "  d.floor_patches     #{data['FloorPatches']}\n"
    end
    
    if data['FloorDecorations']
      entry << "  d.floor_decorations #{data['FloorDecorations']}\n"
    end
    
    if data['VoidDecorations']
      entry << "  d.void_decorations  #{data['VoidDecorations']}\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Dungeon Tilesets Conversion
  #=============================================================================
  
  def convert_dungeon_tilesets
    puts "Converting dungeon_tilesets.txt..."
    tilesets = parse_dungeon_tilesets("#{PBS_DIR}/dungeon_tilesets.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Dungeon Tileset Definitions
    #===============================================================================
    # Auto-generated from PBS/dungeon_tilesets.txt
    # Uses GameData::DungeonTileset.define format
    #===============================================================================

    HEADER
    
    tilesets.each do |id, data|
      output << generate_dungeon_tileset_entry(id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Dungeons/All_DungeonTilesets.rb", output)
    puts "  -> Created Dungeons/All_DungeonTilesets.rb (#{tilesets.size} tilesets)"
  end
  
  def parse_dungeon_tilesets(filepath)
    tilesets = {}
    return tilesets unless File.exist?(filepath)
    
    current_id = nil
    current_data = { tiles: [], autotiles: [] }
    
    File.readlines(filepath, encoding: 'UTF-8').each do |line|
      line = line.strip
      next if line.empty?
      next if line.start_with?('#') && !line.include?('[')
      
      if line =~ /^\[(\d+)\]/
        if current_id
          tilesets[current_id] = current_data
        end
        current_id = $1.to_i
        current_data = { tiles: [], autotiles: [], properties: {} }
      elsif line.include?('=') && current_id
        key, value = line.split('=', 2)
        key = key.strip
        value = value.strip
        
        case key
        when 'Tile'
          current_data[:tiles] << value
        when 'Autotile'
          current_data[:autotiles] << value
        else
          current_data[:properties][key] = value
        end
      end
    end
    
    tilesets[current_id] = current_data if current_id
    tilesets
  end
  
  def generate_dungeon_tileset_entry(id, data)
    entry = "GameData::DungeonTileset.define #{id} do |t|\n"
    
    data[:autotiles].each do |at|
      parts = at.split(',')
      entry << "  t.autotile  #{parts[0]}, :#{parts[1]}\n"
    end
    
    data[:tiles].each do |tile|
      parts = tile.split(',')
      entry << "  t.tile      #{parts[0]}, :#{parts[1]}\n"
    end
    
    props = data[:properties]
    entry << "  t.double_walls          true\n" if props['DoubleWalls'] == 'true'
    entry << "  t.floor_patch_under_walls true\n" if props['FloorPatchUnderWalls'] == 'true'
    entry << "  t.snap_to_large_grid    true\n" if props['SnapToLargeGrid'] == 'true'
    entry << "  t.large_void_tiles      true\n" if props['LargeVoidTiles'] == 'true'
    entry << "  t.large_wall_tiles      true\n" if props['LargeWallTiles'] == 'true'
    entry << "  t.thin_north_wall_offset #{props['ThinNorthWallOffset']}\n" if props['ThinNorthWallOffset']
    entry << "  t.wall_top              #{props['WallTop']}\n" if props['WallTop']
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Berry Plants Conversion
  #=============================================================================
  
  def convert_berry_plants
    puts "Converting berry_plants.txt..."
    berries = parse_pbs_file("#{PBS_DIR}/berry_plants.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Berry Plant Definitions
    #===============================================================================
    # Auto-generated from PBS/berry_plants.txt
    # Uses GameData::BerryPlant.define format
    #===============================================================================

    HEADER
    
    berries.each do |id, data|
      output << generate_berry_plant_entry(id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Items/All_BerryPlants.rb", output)
    puts "  -> Created Items/All_BerryPlants.rb (#{berries.size} berry types)"
  end
  
  def generate_berry_plant_entry(id, data)
    entry = "GameData::BerryPlant.define :#{id} do |b|\n"
    entry << "  b.hours_per_stage #{data['HoursPerStage']}\n" if data['HoursPerStage']
    entry << "  b.drying_per_hour #{data['DryingPerHour']}\n" if data['DryingPerHour']
    
    if data['Yield']
      parts = data['Yield'].split(',')
      entry << "  b.yield           #{parts[0]}, #{parts[1]}\n"
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # Phone Conversion
  #=============================================================================
  
  def convert_phone
    puts "Converting phone.txt..."
    phone_data = parse_phone_file("#{PBS_DIR}/phone.txt")
    
    output = <<~HEADER
    #===============================================================================
    # Shattered Crowns - Phone Message Definitions
    #===============================================================================
    # Auto-generated from PBS/phone.txt
    # Uses GameData::PhoneContact.define format
    #===============================================================================

    HEADER
    
    phone_data.each do |id, data|
      output << generate_phone_entry(id, data)
    end
    
    write_file("#{OUTPUT_DIR}/Config/All_PhoneMessages.rb", output)
    puts "  -> Created Config/All_PhoneMessages.rb (#{phone_data.size} contacts)"
  end
  
  def parse_phone_file(filepath)
    contacts = {}
    return contacts unless File.exist?(filepath)
    
    current_id = nil
    current_data = { messages: {} }
    
    File.readlines(filepath, encoding: 'UTF-8').each do |line|
      line = line.strip
      next if line.empty?
      next if line.start_with?('#') && !line.include?('[')
      
      if line =~ /^\[([^\]]+)\]/
        if current_id
          contacts[current_id] = current_data
        end
        current_id = $1.strip
        current_data = { messages: {} }
      elsif line.include?('=') && current_id
        key, value = line.split('=', 2)
        key = key.strip
        value = value.strip
        
        # Handle multiple messages with same key
        if current_data[:messages][key]
          if current_data[:messages][key].is_a?(Array)
            current_data[:messages][key] << value
          else
            current_data[:messages][key] = [current_data[:messages][key], value]
          end
        else
          current_data[:messages][key] = value
        end
      end
    end
    
    contacts[current_id] = current_data if current_id
    contacts
  end
  
  def generate_phone_entry(id, data)
    # Parse ID format: "TRAINERTYPE,Name" or "Default"
    if id.include?(',')
      parts = id.split(',')
      entry = "GameData::PhoneContact.define :#{parts[0]}, \"#{parts[1]}\" do |c|\n"
    else
      entry = "GameData::PhoneContact.define :#{id} do |c|\n"
    end
    
    data[:messages].each do |key, value|
      if value.is_a?(Array)
        value.each do |v|
          entry << "  c.#{key.downcase.gsub(/[^a-z0-9]/, '_')} \"#{escape_string(v)}\"\n"
        end
      else
        entry << "  c.#{key.downcase.gsub(/[^a-z0-9]/, '_')} \"#{escape_string(value)}\"\n"
      end
    end
    
    entry << "end\n\n"
    entry
  end
  
  #=============================================================================
  # PBS Parsing
  #=============================================================================
  
  def parse_pbs_file(filepath)
    return {} unless File.exist?(filepath)
    
    data = {}
    current_id = nil
    current_data = {}
    
    File.readlines(filepath, encoding: 'UTF-8').each do |line|
      line = line.strip
      
      # Skip comments and empty lines
      next if line.empty? || line.start_with?('#')
      
      # New entry - allows trailing comments like [001]   # Intro
      if line =~ /^\[([^\]]+)\]/
        # Save previous entry
        if current_id
          data[current_id] = current_data
        end
        
        current_id = $1.strip
        current_data = {}
      elsif line.include?('=') && current_id
        # Property line
        key, value = line.split('=', 2)
        current_data[key.strip] = value.strip if key && value
      end
    end
    
    # Save last entry
    if current_id
      data[current_id] = current_data
    end
    
    data
  end
  
  #=============================================================================
  # Utilities
  #=============================================================================
  
  def write_file(filepath, content)
    FileUtils.mkdir_p(File.dirname(filepath))
    File.write(filepath, content, encoding: 'UTF-8')
  end
  
  def escape_string(str)
    return '' unless str
    str.gsub('"', '\\"').gsub("\n", ' ')
  end
end

# Run the converter
if __FILE__ == $0
  converter = PBSToRubyConverter.new
  converter.convert_all
end
