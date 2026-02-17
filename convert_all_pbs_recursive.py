#!/usr/bin/env python3
"""
Complete PBS to Ruby DSL Converter - ALL FILES INCLUDING SUBDIRECTORIES
Converts ALL Pokemon Essentials PBS files to Ruby script definitions
Processes Gen 5-9 backups and plugin PBS files
"""

import os
import sys
import re
from pathlib import Path
from collections import defaultdict

# Force UTF-8 for stdout/stderr to avoid UnicodeEncodeErrors
sys.stdout.reconfigure(encoding='utf-8')
sys.stderr.reconfigure(encoding='utf-8')

# Configuration
PBS_DIRS = ["PBS", "PBS_Backup"]
OUTPUT_DIR = "Plugins/[SC] Script System"

def escape_string(s):
    """Escape quotes and special characters in strings"""
    if not s:
        return ""
    return s.replace('\\', '\\\\').replace('"', '\\"').replace('\n', '\\n')

def safe_print(s):
    """Safely print strings that might contain unprintable characters"""
    try:
        print(s)
    except UnicodeEncodeError:
        print(s.encode('ascii', 'replace').decode('ascii'))

def parse_pbs_section(content):
    """Parse PBS file into sections"""
    sections = []
    current_section = None
    current_data = {}
    
    for line in content.split('\n'):
        line = line.strip()
        
        # Skip comments and empty lines
        if not line or line.startswith('#'):
            continue
        
        # New section starts with [ID]
        if line.startswith('[') and line.endswith(']'):
            if current_section:
                sections.append((current_section, current_data))
            current_section = line[1:-1]
            current_data = {}
        elif '=' in line and current_section:
            key, value = line.split('=', 1)
            current_data[key.strip()] = value.strip()
    
    # Add last section
    if current_section:
        sections.append((current_section, current_data))
    
    return sections

def find_files_recursively(base_dirs, file_patterns):
    """Find files matching patterns (case-insensitive) recursively in list of dirs"""
    found_files = []
    if isinstance(file_patterns, str):
        patterns = [file_patterns.lower()]
    else:
        patterns = [p.lower() for p in file_patterns]
    
    if isinstance(base_dirs, str):
        base_dirs = [base_dirs]
        
    for base_dir in base_dirs:
        for root, dirs, files in os.walk(base_dir):
            for file in files:
                f_lower = file.lower()
                for pattern in patterns:
                    if f_lower == pattern or (pattern == "*.txt" and f_lower.endswith(".txt")):
                        found_files.append(os.path.join(root, file))
    return found_files

def get_file_priority(path):
    """Determine processing priority: 0=Auto-Updates/Backup, 1=Main, 2=Gen 9 Pack, 3=Plugins"""
    p = str(path).lower()
    if "plugins" in p: return 3
    if "gen 9 pack" in p or "standalone" in p: return 2
    if "auto-updates" in p or "backup" in p: return 0
    return 1

def convert_all_pokemon_files(output_dir):
    """Find and convert ALL pokemon.txt files including Gen 9 Packs"""
    safe_print("Searching for all pokemon.txt and pokemon_base_Gen_9_Pack.txt files...")
    # Add Gen 9 Pack patterns
    patterns = ["pokemon.txt", "pokemon_base_Gen_9_Pack.txt", "pokemon_forms_Gen_9_Pack.txt", 
                "pokemon_metrics.txt", "pokemon_metrics_Gen_9_Pack.txt"]
    pokemon_files = find_files_recursively(PBS_DIRS, patterns)
    
    # Sort files by priority: Low -> High (so high overrides low)
    pokemon_files.sort(key=get_file_priority)
    
    safe_print(f"Found {len(pokemon_files)} pokemon files.")

    # Dictionary to store base species data: SpeciesID -> (OriginalID, DataDict)
    final_pokemon = {}
    # Dictionary to store forms: SpeciesID -> {FormID -> DataDict}
    pokemon_forms = defaultdict(dict)
    
    for pbs_file in pokemon_files:
        safe_print(f"Processing {pbs_file}...")
        try:
            with open(pbs_file, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            sections = parse_pbs_section(content)
            for section_key, data in sections:
                # Handle [SPECIES] vs [SPECIES,FORM]
                if ',' in section_key:
                    parts = section_key.split(',')
                    species_id = parts[0].strip().upper()
                    form_id = parts[1].strip()
                    # Merge form data (metrics or normal)
                    if form_id in pokemon_forms[species_id]:
                        pokemon_forms[species_id][form_id].update(data)
                    else:
                        pokemon_forms[species_id][form_id] = data
                else:
                    species_id = section_key.strip().upper()
                    if species_id in final_pokemon:
                        final_pokemon[species_id][1].update(data)
                    else:
                        final_pokemon[species_id] = (section_key, data)
                
        except Exception as e:
            safe_print(f"  ERROR processing {pbs_file}: {e}")

    safe_print(f"Total unique Pokemon collected: {len(final_pokemon)}")
    
    # Organize by type
    type_pokemon = defaultdict(list)
    for species_id_upper, (original_id, data) in final_pokemon.items():
        primary_type = "NORMAL"
        if 'Types' in data:
            types = data['Types'].split(',')
            primary_type = types[0].strip()
        elif 'Type' in data:
            primary_type = data['Type'].strip()
        
        # Attach forms to the data dict for generation
        if species_id_upper in pokemon_forms:
            data['_Forms'] = pokemon_forms[species_id_upper]
            
        type_pokemon[primary_type].append((original_id, data))

    # Write Ruby files
    for ptype, pokemon_list in type_pokemon.items():
        type_dir = Path(output_dir) / "Pokemon" / f"{ptype}_Type"
        type_dir.mkdir(parents=True, exist_ok=True)
        
        for species_id, data in pokemon_list:
            output_file = type_dir / f"{species_id}.rb"
            lines = generate_pokemon_ruby(species_id, data, ptype)
            with open(output_file, 'w', encoding='utf-8') as f:
                f.write('\n'.join(lines))
    
    return len(final_pokemon)

def to_ruby_symbol(s):
    """Convert string to safe Ruby symbol literal"""
    if not s: return ":nil"
    # Always quote to be safe with hyphens etc (e.g. :"HO-OH")
    return f':"{s}"'

def generate_pokemon_ruby(species_id, data, ptype):
    lines = []
    
    # Helper to generate a single species definition block
    def write_species_block(s_id, s_data, is_form=False, base_id=None, form_n=None):
        lines.append(f"GameData::Species.define {to_ruby_symbol(s_id)} do |pkmn|")
        
        if is_form and base_id:
            lines.append(f"  pkmn.species {to_ruby_symbol(base_id)}")
            lines.append(f"  pkmn.form {form_n}")
            
        if 'Name' in s_data: lines.append(f'  pkmn.name "{s_data["Name"]}"')
        if 'FormName' in s_data: lines.append(f'  pkmn.form_name "{s_data["FormName"]}"')
        
        if 'Types' in s_data:
            types = s_data['Types'].split(',')
            if len(types) == 1:
                lines.append(f'  pkmn.types {to_ruby_symbol(types[0].strip())}')
            else:
                types_str = ', '.join(to_ruby_symbol(t.strip()) for t in types)
                lines.append(f'  pkmn.types {types_str}')
                
        if 'BaseStats' in s_data:
            stats = s_data['BaseStats'].split(',')
            if len(stats) == 6:
                lines.append(f'  pkmn.base_stats hp: {stats[0]}, attack: {stats[1]}, defense: {stats[2]},')
                lines.append(f'                  sp_atk: {stats[3]}, sp_def: {stats[4]}, speed: {stats[5]}')

        if 'Abilities' in s_data:
            abilities = s_data['Abilities'].split(',')
            abilities_str = ', '.join(to_ruby_symbol(a.strip()) for a in abilities)
            lines.append(f'  pkmn.abilities {abilities_str}')
        
        if 'HiddenAbilities' in s_data:
            hidden = s_data['HiddenAbilities'].split(',')
            hidden_str = ', '.join(to_ruby_symbol(h.strip()) for h in hidden)
            lines.append(f'  pkmn.hidden_abilities {hidden_str}')

        if 'Flags' in s_data:
            flags = s_data['Flags'].split(',')
            flags_str = ', '.join(to_ruby_symbol(f.strip()) for f in flags)
            lines.append(f'  pkmn.flags {flags_str}')

        # SOS Calling
        if 'CallRateSOS' in s_data: lines.append(f'  pkmn.call_rate_sos {s_data["CallRateSOS"]}')
        if 'CallRateShadow' in s_data: lines.append(f'  pkmn.call_rate_shadow {s_data["CallRateShadow"]}')
        if 'CallRateSame' in s_data: lines.append(f'  pkmn.call_rate_same {s_data["CallRateSame"]}')

        for key, val in [('GenderRatio', 'gender_ratio'), ('GrowthRate', 'growth_rate'), 
                         ('Color', 'color'), ('Shape', 'shape')]:
            if key in s_data:
                lines.append(f'  pkmn.{val} {to_ruby_symbol(s_data[key])}')

        for key, val in [('BaseExp', 'base_exp'), ('CatchRate', 'catch_rate'), 
                         ('Happiness', 'happiness'), ('HatchSteps', 'hatch_steps'),
                         ('Height', 'height'), ('Weight', 'weight')]:
            if key in s_data:
                lines.append(f'  pkmn.{val} {s_data[key]}')
                
        if 'Category' in s_data:
            lines.append(f'  pkmn.category "{s_data["Category"]}"')
        if 'Pokedex' in s_data:
            lines.append(f'  pkmn.pokedex_entry "{escape_string(s_data["Pokedex"])}"')

        if 'EVs' in s_data:
            evs = s_data['EVs'].split(',')
            if len(evs) >= 2:
                stat = evs[0].strip().lower()
                value = evs[1].strip()
                lines.append(f'  pkmn.evs {stat}: {value}')

        if 'EggGroups' in s_data:
            groups = s_data['EggGroups'].split(',')
            groups_str = ', '.join(to_ruby_symbol(g.strip()) for g in groups)
            lines.append(f'  pkmn.egg_groups {groups_str}')

        if 'Moves' in s_data:
            moves = s_data['Moves'].split(',')
            if moves and len(moves) > 1:
                lines.append("")
                lines.append("  pkmn.moves do |m|")
                for i in range(0, len(moves), 2):
                    if i+1 < len(moves):
                        level = moves[i].strip()
                        move = moves[i+1].strip()
                        lines.append(f'    m.at {level}, {to_ruby_symbol(move)}')
                lines.append("  end")

        if 'TutorMoves' in s_data:
            tm = s_data['TutorMoves'].split(',')
            tm_str = ', '.join(to_ruby_symbol(t.strip()) for t in tm)
            lines.append(f'  pkmn.tutor_moves {tm_str}')
    
        if 'EggMoves' in s_data:
            em = s_data['EggMoves'].split(',')
            em_str = ', '.join(to_ruby_symbol(e.strip()) for e in em)
            lines.append(f'  pkmn.egg_moves {em_str}')
            
        lines.append("end")

    # Helper to generate SpeciesMetrics block
    def write_metrics_block(s_id, s_data):
        # Only write block if there is actual metrics data
        has_metrics = any(k in s_data for k in ['BackSprite', 'FrontSprite', 'ShadowX', 'ShadowSize'])
        
        if has_metrics:
            lines.append("")
            lines.append(f"GameData::SpeciesMetrics.define {to_ruby_symbol(s_id)} do |m|")
            
            if 'BackSprite' in s_data:
                coords = s_data['BackSprite'].split(',')
                if len(coords) >= 2:
                    lines.append(f"  m.back_sprite {coords[0].strip()}, {coords[1].strip()}")
                    
            if 'FrontSprite' in s_data:
                coords = s_data['FrontSprite'].split(',')
                if len(coords) >= 2:
                    lines.append(f"  m.front_sprite {coords[0].strip()}, {coords[1].strip()}")
            
            # Combine ShadowX/ShadowSize into shadow_sprite(x, y, size)
            # Default Y to 0 if not present
            sx = s_data.get('ShadowX', '0')
            sy = '0' # Default
            ss = s_data.get('ShadowSize', '2')
            # Check if ShadowX/Size are actually present before writing
            if 'ShadowX' in s_data or 'ShadowSize' in s_data:
                lines.append(f"  m.shadow_sprite {sx}, {sy}, {ss}")
                
            lines.append("end")

    # Write Base Species
    lines.append("#" + "=" * 77)
    lines.append(f"# {data.get('Name', species_id)} - {ptype} Type")
    lines.append("#" + "=" * 77)
    lines.append("")
    write_species_block(species_id, data)
    write_metrics_block(species_id, data)
    
    # Write Forms (if any)
    if '_Forms' in data:
        for form_id, form_data in data['_Forms'].items():
            # Merge base data with form data to ensure completeness
            merged_data = data.copy()
            merged_data.update(form_data)
            
            # Remove _Forms from merged data to prevent recursion/clutter
            if '_Forms' in merged_data: del merged_data['_Forms']
            
            form_species_key = f"{species_id}_{form_id}"
            lines.append("")
            lines.append(f"# Form {form_id} - {merged_data.get('FormName', 'Unknown Form')}")
            write_species_block(form_species_key, merged_data, is_form=True, base_id=species_id, form_n=form_id)
            write_metrics_block(form_species_key, merged_data)

    return lines

def convert_all_moves_files(output_dir):
    """Find and convert ALL moves.txt files including Gen 9 Packs"""
    safe_print("Searching for all moves.txt and moves_Gen_9_Pack.txt files...")
    patterns = ["moves.txt", "moves_Gen_9_Pack.txt"]
    moves_files = find_files_recursively(PBS_DIRS, patterns)
    safe_print(f"Found {len(moves_files)} moves files.")
    
    all_moves = {}
    type_moves = defaultdict(list)
    
    # Sort files by priority: Backups -> Main -> Gen 9 Pack -> Plugins
    moves_files.sort(key=get_file_priority)

    for pbs_file in moves_files:
        safe_print(f"Processing {pbs_file}...")
        try:
            with open(pbs_file, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            sections = parse_pbs_section(content)
            for move_id, data in sections:
                if move_id in all_moves:
                    all_moves[move_id].update(data)
                else:
                    all_moves[move_id] = data
                
                # Update type list - we need to refresh this if Type changed or new entry
                move_type = all_moves[move_id].get('Type', 'NORMAL')
                # Remove from old type list if exists? Too complex. 
                # Just rebuild type_moves at end.

        except Exception as e:
            safe_print(f"  ERROR processing {pbs_file}: {e}")
            
    safe_print(f"Total unique Moves collected: {len(all_moves)}")
    
    # Rebuild type_moves after all merging
    for move_id, data in all_moves.items():
        move_type = data.get('Type', 'NORMAL')
        type_moves[move_type].append((move_id, data))

    for mtype, moves_list in type_moves.items():
        output_file = Path(output_dir) / "Moves" / f"{mtype}_Moves.rb"
        output_file.parent.mkdir(parents=True, exist_ok=True)
        lines = generate_moves_ruby(mtype, moves_list)
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write('\n'.join(lines))
            
    return len(all_moves)

def generate_moves_ruby(mtype, moves_list):
    lines = []
    lines.append("#" + "=" * 77)
    lines.append(f"# {mtype} Type Moves")
    lines.append("#" + "=" * 77)
    lines.append("")
    
    for move_id, data in moves_list:
        lines.append(f"GameData::Move.define :{move_id} do |m|")
        if 'Name' in data: lines.append(f'  m.name "{data["Name"]}"')
        if 'Type' in data: lines.append(f'  m.type :{data["Type"]}')
        if 'Category' in data: lines.append(f'  m.category :{data["Category"]}')
        
        power = data.get('Power', data.get('BaseDamage', '0'))
        if power != '0': lines.append(f'  m.power {power}')
        
        if 'Accuracy' in data: lines.append(f'  m.accuracy {data["Accuracy"]}')
        
        pp = data.get('TotalPP', data.get('PP', '0'))
        if pp != '0': lines.append(f'  m.pp {pp}')
        
        if 'Target' in data: lines.append(f'  m.target :{data["Target"]}')
        if 'Priority' in data and data['Priority'] != '0': lines.append(f'  m.priority {data["Priority"]}')
        if 'FunctionCode' in data: lines.append(f'  m.function_code "{data["FunctionCode"]}"')
        if 'EffectChance' in data and data['EffectChance'] != '0': lines.append(f'  m.effect_chance {data["EffectChance"]}')
        
        if 'Flags' in data:
            flags = data['Flags'].split(',')
            for flag in flags:
                flag = flag.strip().lower()
                if flag == 'contact': lines.append('  m.makes_contact')
                elif flag == 'sound': lines.append('  m.sound_based')
                elif flag == 'punch': lines.append('  m.punching')
                elif flag == 'highcriticalrate': lines.append('  m.high_crit_ratio')
                
        if 'Description' in data: lines.append(f'  m.description "{escape_string(data["Description"])}"')
        lines.append("end")
        lines.append("")
    return lines

def convert_all_items_files(output_dir):
    """Find and convert ALL items.txt files including Gen 9 Packs"""
    safe_print("Searching for all items.txt and items_Gen_9_Pack.txt files...")
    patterns = ["items.txt", "items_Gen_9_Pack.txt"]
    items_files = find_files_recursively(PBS_DIRS, patterns)
    safe_print(f"Found {len(items_files)} items files.")

    all_items = {}
    pocket_items = defaultdict(list)
    pocket_names = {
        '1': 'Items', '2': 'Medicine', '3': 'PokeBalls', '4': 'TMs_HMs',
        '5': 'Berries', '6': 'Mail', '7': 'BattleItems', '8': 'KeyItems'
    }

    # Sort files by priority: Backups -> Main -> Gen 9 Pack -> Plugins
    items_files.sort(key=get_file_priority)

    for pbs_file in items_files:
        safe_print(f"Processing {pbs_file}...")
        try:
            with open(pbs_file, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            sections = parse_pbs_section(content)
            for item_id, data in sections:
                if item_id in all_items:
                    all_items[item_id].update(data)
                else:
                    all_items[item_id] = data
        except Exception as e:
            safe_print(f"  ERROR processing {pbs_file}: {e}")

    # Re-bucket items by pocket
    for item_id, data in all_items.items():
        pocket = data.get('Pocket', '1')
        pocket_items[pocket].append((item_id, data))

    safe_print(f"Total unique Items collected: {len(all_items)}")

    for pocket, items_list in pocket_items.items():
        pocket_name = pocket_names.get(pocket, f'Pocket{pocket}')
        output_file = Path(output_dir) / "Items" / f"{pocket_name}.rb"
        output_file.parent.mkdir(parents=True, exist_ok=True)
        lines = generate_items_ruby(pocket_name, items_list)
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write('\n'.join(lines))
            
    return len(all_items)

def generate_items_ruby(pocket_name, items_list):
    lines = []
    lines.append("#" + "=" * 77)
    lines.append(f"# {pocket_name}")
    lines.append("#" + "=" * 77)
    lines.append("")
    for item_id, data in items_list:
        lines.append(f"GameData::Item.define {to_ruby_symbol(item_id)} do |i|")
        if 'Name' in data: lines.append(f'  i.name "{data["Name"]}"')
        if 'NamePlural' in data: lines.append(f'  i.name_plural "{data["NamePlural"]}"')
        if 'Pocket' in data: lines.append(f'  i.pocket {data["Pocket"]}')
        if 'Price' in data and data['Price'] != '0': lines.append(f'  i.price {data["Price"]}')
        if 'FieldUse' in data: lines.append(f'  i.field_use {to_ruby_symbol(data["FieldUse"])}')
        if 'BattleUse' in data: lines.append(f'  i.battle_use {to_ruby_symbol(data["BattleUse"])}')
        if 'Move' in data: lines.append(f'  i.teaches {to_ruby_symbol(data["Move"])}')
        if 'Consumable' in data and data['Consumable'].lower() == 'false': lines.append('  i.not_consumable')
        if 'Description' in data: lines.append(f'  i.description "{escape_string(data["Description"])}"')
        lines.append("end")
        lines.append("")
    return lines

def convert_all_generic_files(filename_pattern, subdir, output_name, output_dir):
    """Generic converter for abilities, types, etc. handling lists of patterns"""
    safe_print(f"Searching for all {filename_pattern} files...")
    files = find_files_recursively(PBS_DIRS, filename_pattern)
    files.sort(key=get_file_priority) # Apply priority
    safe_print(f"Found {len(files)} files matching pattern(s).")
    
    all_data = {}
    for pbs_file in files:
        safe_print(f"Processing {pbs_file}...")
        try:
            with open(pbs_file, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            sections = parse_pbs_section(content)
            for uid, data in sections:
                if uid not in all_data:
                    all_data[uid] = data
                else:
                    # Overwrite if from higher priority file (files are sorted)
                    # We WANT to overwrite since we sorted Low -> High priority
                    all_data[uid].update(data) 
        except Exception as e:
            safe_print(f"  ERROR processing {pbs_file}: {e}")
            
    safe_print(f"Total unique entries collected: {len(all_data)}")
    
    if not all_data: return 0

    output_file = Path(output_dir) / subdir / output_name
    output_file.parent.mkdir(parents=True, exist_ok=True)
    
    lines = []
    lines.append("#" + "=" * 77)
    lines.append(f"# All {subdir}")
    lines.append("#" + "=" * 77)
    lines.append("")
    
    # Simple generation based on section type would go here
    # For now handling Abilities and Types specifically if needed, or generic
    for uid, data in all_data.items():
        if subdir == "Abilities":
            lines.append(f"GameData::Ability.define {to_ruby_symbol(uid)} do |a|")
            if 'Name' in data: lines.append(f'  a.name "{data["Name"]}"')
            if 'Description' in data: lines.append(f'  a.description "{escape_string(data["Description"])}"')
            if 'Flags' in data:
                flags = data['Flags'].split(',')
                flags_str = ', '.join(to_ruby_symbol(f.strip()) for f in flags)
                lines.append(f'  a.flags {flags_str}')
            lines.append("end")
        elif subdir == "Types":
            lines.append(f"GameData::Type.define {to_ruby_symbol(uid)} do |t|")
            if 'Name' in data: lines.append(f'  t.name "{data["Name"]}"')
            if 'IconPosition' in data: lines.append(f'  t.icon_position {data["IconPosition"]}')
            if 'IsSpecialType' in data and data['IsSpecialType'].lower() == 'true': lines.append('  t.special_type')
            if 'IsPseudoType' in data and data['IsPseudoType'].lower() == 'true': lines.append('  t.pseudo_type')
            
            for key, method_name in [('Weaknesses', 'weaknesses'), ('Resistances', 'resistances'), ('Immunities', 'immunities')]:
                if key in data:
                    val = data[key].split(',')
                    val_str = ', '.join(to_ruby_symbol(v.strip()) for v in val)
                    lines.append(f'  t.{method_name} {val_str}')
            lines.append("end")
        lines.append("")
        
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))
        
    return len(all_data)

def main():
    safe_print("=" * 80)
    safe_print("Complete PBS to Ruby DSL Converter - RECURSIVE ALL FILES")
    safe_print("=" * 80)
    
    convert_all_pokemon_files(OUTPUT_DIR)
    convert_all_moves_files(OUTPUT_DIR)
    convert_all_items_files(OUTPUT_DIR)
    convert_all_generic_files(["abilities.txt", "abilities_Gen_9_Pack.txt"], "Abilities", "AllAbilities.rb", OUTPUT_DIR)
    convert_all_generic_files("types.txt", "Types", "AllTypes.rb", OUTPUT_DIR)
    convert_all_trainer_types(OUTPUT_DIR)
    convert_all_metadata(OUTPUT_DIR)
    
    safe_print("=" * 80)
    safe_print("Conversion complete!")
    safe_print("=" * 80)

def convert_all_trainer_types(output_dir):
    safe_print("Searching for all trainer_types.txt files...")
    files = find_files_recursively(PBS_DIRS, "trainer_types.txt")
    files.sort(key=get_file_priority) # Apply priority
    
    safe_print(f"Found {len(files)} trainer_types.txt files.")
    
    all_data = {}
    for pbs_file in files:
        safe_print(f"Processing {pbs_file}...")
        try:
            with open(pbs_file, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            sections = parse_pbs_section(content)
            for uid, data in sections:
                # Normalize ID? Trainer Types usually Caps?
                all_data[uid] = data
        except Exception as e:
            safe_print(f"  ERROR processing {pbs_file}: {e}")
            
    if not all_data: return
    
    output_file = Path(output_dir) / "TrainerTypes" / "AllTrainerTypes.rb"
    output_file.parent.mkdir(parents=True, exist_ok=True)
    
    lines = []
    lines.append("#" + "=" * 77)
    lines.append("# All Trainer Types")
    lines.append("#" + "=" * 77)
    lines.append("")
    
    for uid, data in all_data.items():
        lines.append(f"GameData::TrainerType.define :{uid} do |tt|")
        if 'Name' in data: lines.append(f'  tt.name "{data["Name"]}"')
        if 'Gender' in data: lines.append(f'  tt.gender :{data["Gender"]}')
        if 'SkillLevel' in data: lines.append(f'  tt.skill_level {data["SkillLevel"]}')
        if 'BaseMoney' in data: lines.append(f'  tt.base_money {data["BaseMoney"]}')
        if 'IntroBGM' in data: lines.append(f'  tt.intro_bgm "{data["IntroBGM"]}"')
        

        
        # Handle WinBGM / VictoryBGM / VictoryME
        win_bgm = data.get('WinBGM', data.get('VictoryBGM', data.get('VictoryME')))
        if win_bgm: lines.append(f'  tt.victory_bgm "{win_bgm}"')
        
        if 'BattleBGM' in data: lines.append(f'  tt.battle_bgm "{data["BattleBGM"]}"')
        lines.append("end")
        lines.append("")
        
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))

def convert_all_metadata(output_dir):
    # Metadata.txt and map_metadata.txt
    # 1. Map Metadata
    safe_print("Searching for map_metadata.txt...")
    files = find_files_recursively(PBS_DIRS, "map_metadata.txt")
    files.sort(key=get_file_priority)
    
    all_maps = {} # map_id -> data
    for pbs_file in files:
        try:
            with open(pbs_file, 'r', encoding='utf-8', errors='ignore') as f:
                 content = f.read()
            sections = parse_pbs_section(content)
            for uid, data in sections:
                all_maps[uid] = data
        except Exception: pass

    if all_maps:
        output_file = Path(output_dir) / "MapMetadata" / "AllMapMetadata.rb"
        output_file.parent.mkdir(parents=True, exist_ok=True)
        lines = []
        lines.append("# Map Metadata")
        for uid, data in all_maps.items():
            lines.append(f"GameData::MapMetadata.define {uid} do |map|")
            for k, v in data.items():
                # Generic handling for properties? 
                # Most are map.property value
                # Check specifics like 'Outdoor' (boolean)
                if v.lower() == 'true': lines.append(f'  map.{k.lower()} true')
                elif v.lower() == 'false': lines.append(f'  map.{k.lower()} false')
                elif k == 'BGM': lines.append(f'  map.bgm "{v}"')
                else: 
                     # Heuristic: if value is number, no quotes?
                     # Map names are strings.
                     # But define is meta programming.
                     # Safest: treat as raw value if it looks like Symbol? 
                     # Actually standard properties: Name, Outdoor, ShowArea, Bicycle, Weather...
                     # We can map them.
                     prop = k.lower()
                     if k == 'Name': lines.append(f'  map.name "{v}"')
                     elif ',' in v: # Array?
                        val_str = ', '.join(f':{x.strip()}' if not x.strip().isdigit() else x.strip() for x in v.split(','))
                        lines.append(f'  map.{prop} {val_str}')
                     else:
                        if v.isdigit(): lines.append(f'  map.{prop} {v}')
                        else: lines.append(f'  map.{prop} :{v}')
            lines.append("end")
            lines.append("")
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write('\n'.join(lines))

if __name__ == "__main__":
    main()
