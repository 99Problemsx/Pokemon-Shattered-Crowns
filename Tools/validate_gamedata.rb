#!/usr/bin/env ruby
#===============================================================================
# GameData Validation Script
#===============================================================================
# Validates all Ruby DSL files for:
# - Missing references (Pokemon using undefined abilities, moves, items)
# - Duplicate definitions
# - Invalid values
#===============================================================================

require 'fileutils'

class GameDataValidator
  SCRIPTS_DIR = "Data/Scripts"
  
  def initialize
    @errors = []
    @warnings = []
    
    # Collect all defined IDs
    @species = {}
    @species_forms = {}
    @moves = {}
    @abilities = {}
    @items = {}
    @types = {}
    @trainer_types = {}
    @ribbons = {}
  end
  
  #=============================================================================
  # Main Validation
  #=============================================================================
  
  def validate_all
    puts "=== GameData Validation Script ==="
    puts ""
    
    # Phase 1: Collect all definitions
    puts "Phase 1: Collecting definitions..."
    collect_types
    collect_abilities
    collect_moves
    collect_items
    collect_species
    collect_species_forms
    collect_trainer_types
    collect_ribbons
    
    puts "  Found: #{@species.size} Pokemon, #{@species_forms.size} Forms, #{@moves.size} Moves"
    puts "         #{@abilities.size} Abilities, #{@items.size} Items, #{@types.size} Types"
    puts "         #{@trainer_types.size} Trainer Types, #{@ribbons.size} Ribbons"
    puts ""
    
    # Phase 2: Validate references
    puts "Phase 2: Validating references..."
    validate_species_references
    validate_species_form_references
    validate_trainer_references
    validate_encounter_references
    
    # Phase 3: Report
    puts ""
    puts "=== Validation Results ==="
    
    if @errors.empty? && @warnings.empty?
      puts "✓ All validations passed!"
    else
      puts "Errors: #{@errors.size}"
      @errors.first(20).each { |e| puts "  ✗ #{e}" }
      puts "  ... and #{@errors.size - 20} more" if @errors.size > 20
      
      puts ""
      puts "Warnings: #{@warnings.size}"
      @warnings.first(20).each { |w| puts "  ⚠ #{w}" }
      puts "  ... and #{@warnings.size - 20} more" if @warnings.size > 20
    end
    
    # Write full report
    write_report
  end
  
  #=============================================================================
  # Collection Methods
  #=============================================================================
  
  def collect_types
    scan_ruby_files("#{SCRIPTS_DIR}/Types") do |content, file|
      content.scan(/GameData::Type\.define\s+:(\w+)/) do |match|
        id = match[0]
        if @types[id]
          @errors << "Duplicate Type: #{id} (in #{file})"
        else
          @types[id] = file
        end
      end
    end
  end
  
  def collect_abilities
    scan_ruby_files("#{SCRIPTS_DIR}/Abilities") do |content, file|
      content.scan(/GameData::Ability\.define\s+:(\w+)/) do |match|
        id = match[0]
        if @abilities[id]
          @errors << "Duplicate Ability: #{id} (in #{file})"
        else
          @abilities[id] = file
        end
      end
    end
  end
  
  def collect_moves
    scan_ruby_files("#{SCRIPTS_DIR}/Moves") do |content, file|
      content.scan(/GameData::Move\.define\s+:(\w+)/) do |match|
        id = match[0]
        if @moves[id]
          @warnings << "Duplicate Move: #{id} (in #{file}, first in #{@moves[id]})"
        else
          @moves[id] = file
        end
      end
    end
  end
  
  def collect_items
    scan_ruby_files("#{SCRIPTS_DIR}/Items") do |content, file|
      content.scan(/GameData::Item\.define\s+:(\w+)/) do |match|
        id = match[0]
        if @items[id]
          @warnings << "Duplicate Item: #{id} (in #{file})"
        else
          @items[id] = file
        end
      end
    end
  end
  
  def collect_species
    scan_ruby_files("#{SCRIPTS_DIR}/Pokemon") do |content, file|
      # Skip Forms folder
      next if file.include?('/Forms/')
      
      content.scan(/GameData::Species\.define\s+:(\w+)/) do |match|
        id = match[0]
        if @species[id]
          @errors << "Duplicate Species: #{id} (in #{file})"
        else
          @species[id] = file
        end
      end
    end
  end
  
  def collect_species_forms
    scan_ruby_files("#{SCRIPTS_DIR}/Pokemon/Forms") do |content, file|
      content.scan(/GameData::Species\.define_form\s+:(\w+),\s*(\d+)/) do |match|
        id = "#{match[0]}_#{match[1]}"
        if @species_forms[id]
          @errors << "Duplicate Form: #{match[0]} form #{match[1]} (in #{file})"
        else
          @species_forms[id] = file
        end
      end
    end
  end
  
  def collect_trainer_types
    scan_ruby_files("#{SCRIPTS_DIR}/Trainers") do |content, file|
      content.scan(/GameData::TrainerType\.define\s+:(\w+)/) do |match|
        id = match[0]
        if @trainer_types[id]
          @errors << "Duplicate TrainerType: #{id} (in #{file})"
        else
          @trainer_types[id] = file
        end
      end
    end
  end
  
  def collect_ribbons
    scan_ruby_files("#{SCRIPTS_DIR}/Ribbons") do |content, file|
      content.scan(/GameData::Ribbon\.define\s+:(\w+)/) do |match|
        id = match[0]
        if @ribbons[id]
          @errors << "Duplicate Ribbon: #{id} (in #{file})"
        else
          @ribbons[id] = file
        end
      end
    end
  end
  
  #=============================================================================
  # Validation Methods
  #=============================================================================
  
  def validate_species_references
    scan_ruby_files("#{SCRIPTS_DIR}/Pokemon") do |content, file|
      next if file.include?('/Forms/')
      
      # Check abilities
      content.scan(/\.abilities\s+(.+)$/) do |match|
        extract_symbols(match[0]).each do |ability|
          unless @abilities[ability]
            @errors << "Unknown Ability :#{ability} in #{file}"
          end
        end
      end
      
      content.scan(/\.hidden_abilities\s+(.+)$/) do |match|
        extract_symbols(match[0]).each do |ability|
          unless @abilities[ability]
            @errors << "Unknown Hidden Ability :#{ability} in #{file}"
          end
        end
      end
      
      # Check types
      content.scan(/\.types\s+(.+)$/) do |match|
        extract_symbols(match[0]).each do |type|
          unless @types[type]
            @errors << "Unknown Type :#{type} in #{file}"
          end
        end
      end
      
      # Check moves in m.at
      content.scan(/m\.at\s+\d+,\s*:(\w+)/) do |match|
        move = match[0]
        unless @moves[move]
          @warnings << "Unknown Move :#{move} in #{file}"
        end
      end
      
      # Check tutor/egg moves
      content.scan(/\.tutor_moves\s+(.+)$/) do |match|
        extract_symbols(match[0]).each do |move|
          unless @moves[move]
            @warnings << "Unknown Tutor Move :#{move} in #{file}"
          end
        end
      end
      
      content.scan(/\.egg_moves\s+(.+)$/) do |match|
        extract_symbols(match[0]).each do |move|
          unless @moves[move]
            @warnings << "Unknown Egg Move :#{move} in #{file}"
          end
        end
      end
      
      # Check wild items
      content.scan(/\.wild_item_\w+\s+:(\w+)/) do |match|
        item = match[0]
        unless @items[item]
          @warnings << "Unknown Wild Item :#{item} in #{file}"
        end
      end
      
      # Check evolutions
      content.scan(/\.evolves_into\s+:(\w+)/) do |match|
        species = match[0]
        unless @species[species]
          @warnings << "Unknown Evolution Target :#{species} in #{file}"
        end
      end
    end
  end
  
  def validate_species_form_references
    scan_ruby_files("#{SCRIPTS_DIR}/Pokemon/Forms") do |content, file|
      # Check base species exists
      content.scan(/GameData::Species\.define_form\s+:(\w+),\s*(\d+)/) do |match|
        species = match[0]
        unless @species[species]
          @errors << "Form defined for unknown Species :#{species} in #{file}"
        end
      end
      
      # Check mega stones
      content.scan(/\.mega_stone\s+:(\w+)/) do |match|
        item = match[0]
        unless @items[item]
          @warnings << "Unknown Mega Stone :#{item} in #{file}"
        end
      end
      
      # Check abilities
      content.scan(/\.abilities\s+(.+)$/) do |match|
        extract_symbols(match[0]).each do |ability|
          unless @abilities[ability]
            @errors << "Unknown Ability :#{ability} in #{file}"
          end
        end
      end
    end
  end
  
  def validate_trainer_references
    scan_ruby_files("#{SCRIPTS_DIR}/Trainers") do |content, file|
      # Skip TrainerTypes.rb
      next if file.include?('TrainerTypes.rb')
      
      # Check trainer type
      content.scan(/GameData::Trainer\.define\s+:(\w+)/) do |match|
        type = match[0]
        unless @trainer_types[type]
          @errors << "Unknown TrainerType :#{type} in #{file}"
        end
      end
      
      # Check Pokemon
      content.scan(/t\.pokemon\s+:(\w+)/) do |match|
        species = match[0]
        unless @species[species]
          @errors << "Unknown Pokemon :#{species} in trainer definition in #{file}"
        end
      end
      
      # Check items
      content.scan(/p\.item\s+:(\w+)/) do |match|
        item = match[0]
        unless @items[item]
          @warnings << "Unknown Item :#{item} in trainer Pokemon in #{file}"
        end
      end
      
      # Check moves
      content.scan(/p\.moves\s+(.+)$/) do |match|
        extract_symbols(match[0]).each do |move|
          unless @moves[move]
            @warnings << "Unknown Move :#{move} in trainer Pokemon in #{file}"
          end
        end
      end
    end
  end
  
  def validate_encounter_references
    scan_ruby_files("#{SCRIPTS_DIR}/Encounters") do |content, file|
      # Standard encounter: enc.add :SPECIES, level, probability
      content.scan(/enc\.add\s+:(\w+),/) do |match|
        species = match[0]
        unless @species[species]
          @errors << "Unknown Pokemon :#{species} in encounter in #{file}"
        end
      end
      
      # Form encounters are valid if base species exists and form is defined
      content.scan(/enc\.add\s+:(\w+),.+form:\s*(\d+)/) do |match|
        species = match[0]
        form = match[1]
        form_key = "#{species}_#{form}"
        
        unless @species[species]
          @errors << "Unknown base Pokemon :#{species} for form #{form} in encounter in #{file}"
        end
        
        unless @species_forms[form_key]
          @warnings << "Possibly undefined form: :#{species} form #{form} in encounter in #{file}"
        end
      end
    end
  end
  
  #=============================================================================
  # Utilities
  #=============================================================================
  
  def scan_ruby_files(dir, &block)
    return unless Dir.exist?(dir)
    
    Dir.glob("#{dir}/**/*.rb").each do |file|
      content = File.read(file, encoding: 'UTF-8')
      block.call(content, file)
    end
  end
  
  def extract_symbols(str)
    str.scan(/:(\w+)/).flatten
  end
  
  def write_report
    report = []
    report << "GameData Validation Report"
    report << "=" * 50
    report << ""
    report << "Summary:"
    report << "  Species: #{@species.size}"
    report << "  Forms: #{@species_forms.size}"
    report << "  Moves: #{@moves.size}"
    report << "  Abilities: #{@abilities.size}"
    report << "  Items: #{@items.size}"
    report << "  Types: #{@types.size}"
    report << "  Trainer Types: #{@trainer_types.size}"
    report << "  Ribbons: #{@ribbons.size}"
    report << ""
    report << "Errors (#{@errors.size}):"
    @errors.each { |e| report << "  #{e}" }
    report << ""
    report << "Warnings (#{@warnings.size}):"
    @warnings.each { |w| report << "  #{w}" }
    
    File.write("validation_report.txt", report.join("\n"), encoding: 'UTF-8')
    puts ""
    puts "Full report written to: validation_report.txt"
  end
end

# Run the validator
if __FILE__ == $0
  validator = GameDataValidator.new
  validator.validate_all
end
