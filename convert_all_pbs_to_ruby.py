#!/usr/bin/env python3
"""
Complete PBS to Ruby DSL Converter
Converts ALL Pokemon Essentials PBS files to Ruby script definitions
Organizes Pokemon by type, Moves by type, Items by category
"""

import os
import re
from pathlib import Path
from collections import defaultdict

# Configuration
PBS_DIR = "PBS"
OUTPUT_DIR = "Plugins/[SC] Script System"

def escape_string(s):
    """Escape quotes and special characters in strings"""
    if not s:
        return ""
    return s.replace('\\', '\\\\').replace('"', '\\"').replace('\n', '\\n')

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

def convert_pokemon_to_ruby(pbs_file, output_dir):
    """Convert pokemon.txt to Ruby definitions organized by primary type"""
    print(f"Converting {pbs_file}...")
    
    with open(pbs_file, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
    
    sections = parse_pbs_section(content)
    
    # Group by primary type
    type_pokemon = defaultdict(list)
    
    for species_id, data in sections:
        # Get primary type
        primary_type = "NORMAL"
        if 'Types' in data:
            types = data['Types'].split(',')
            primary_type = types[0].strip()
        
        type_pokemon[primary_type].append((species_id, data))
    
    # Write Ruby files organized by type
    for ptype, pokemon_list in type_pokemon.items():
        type_dir = Path(output_dir) / "Pokemon" / f"{ptype}_Type"
        type_dir.mkdir(parents=True, exist_ok=True)
        
        for species_id, data in pokemon_list:
            output_file = type_dir / f"{species_id}.rb"
            
            lines = []
            lines.append("#" + "=" * 77)
            lines.append(f"# {data.get('Name', species_id)} - {ptype} Type")
            lines.append("#" + "=" * 77)
            lines.append("")
            lines.append(f"GameData::Species.define :{species_id} do |pkmn|")
            
            # Name
            if 'Name' in data:
                lines.append(f'  pkmn.name "{data["Name"]}"')
            
            # Types
            if 'Types' in data:
                types = data['Types'].split(',')
                if len(types) == 1:
                    lines.append(f'  pkmn.types :{types[0].strip()}')
                else:
                    types_str = ', '.join(f':{t.strip()}' for t in types)
                    lines.append(f'  pkmn.types {types_str}')
            
            # Base Stats
            if 'BaseStats' in data:
                stats = data['BaseStats'].split(',')
                if len(stats) == 6:
                    lines.append(f'  pkmn.base_stats hp: {stats[0]}, attack: {stats[1]}, defense: {stats[2]},')
                    lines.append(f'                  sp_atk: {stats[3]}, sp_def: {stats[4]}, speed: {stats[5]}')
            
            # Abilities
            if 'Abilities' in data:
                abilities = data['Abilities'].split(',')
                abilities_str = ', '.join(f':{a.strip()}' for a in abilities)
                lines.append(f'  pkmn.abilities {abilities_str}')
            
            if 'HiddenAbilities' in data:
                hidden = data['HiddenAbilities'].split(',')
                hidden_str = ', '.join(f':{h.strip()}' for h in hidden)
                lines.append(f'  pkmn.hidden_abilities {hidden_str}')
            
            # Other properties
            if 'GenderRatio' in data:
                lines.append(f'  pkmn.gender_ratio :{data["GenderRatio"]}')
            if 'GrowthRate' in data:
                lines.append(f'  pkmn.growth_rate :{data["GrowthRate"]}')
            if 'BaseExp' in data:
                lines.append(f'  pkmn.base_exp {data["BaseExp"]}')
            if 'CatchRate' in data:
                lines.append(f'  pkmn.catch_rate {data["CatchRate"]}')
            if 'Happiness' in data:
                lines.append(f'  pkmn.happiness {data["Happiness"]}')
            
            # EVs
            if 'EVs' in data:
                evs = data['EVs'].split(',')
                if len(evs) >= 2:
                    stat = evs[0].strip().lower()
                    value = evs[1].strip()
                    lines.append(f'  pkmn.evs {stat}: {value}')
            
            # Egg Groups
            if 'EggGroups' in data:
                groups = data['EggGroups'].split(',')
                groups_str = ', '.join(f':{g.strip()}' for g in groups)
                lines.append(f'  pkmn.egg_groups {groups_str}')
            
            if 'HatchSteps' in data:
                lines.append(f'  pkmn.hatch_steps {data["HatchSteps"]}')
            if 'Height' in data:
                lines.append(f'  pkmn.height {data["Height"]}')
            if 'Weight' in data:
                lines.append(f'  pkmn.weight {data["Weight"]}')
            if 'Color' in data:
                lines.append(f'  pkmn.color :{data["Color"]}')
            if 'Shape' in data:
                lines.append(f'  pkmn.shape :{data["Shape"]}')
            if 'Category' in data:
                lines.append(f'  pkmn.category "{data["Category"]}"')
            if 'Pokedex' in data:
                lines.append(f'  pkmn.pokedex_entry "{escape_string(data["Pokedex"])}"')
            
            # Moves
            if 'Moves' in data:
                moves = data['Moves'].split(',')
                if moves and len(moves) > 1:
                    lines.append("")
                    lines.append("  pkmn.moves do |m|")
                    for i in range(0, len(moves), 2):
                        if i + 1 < len(moves):
                            level = moves[i].strip()
                            move = moves[i+1].strip()
                            lines.append(f"    m.at {level}, :{move}")
                    lines.append("  end")
            
            # Egg Moves
            if 'EggMoves' in data:
                egg_moves = data['EggMoves'].split(',')
                if egg_moves:
                    lines.append("")
                    lines.append("  pkmn.egg_moves do |m|")
                    for move in egg_moves:
                        if move.strip():
                            lines.append(f"    m.add :{move.strip()}")
                    lines.append("  end")
            
            # Evolutions
            if 'Evolutions' in data:
                evos = data['Evolutions'].split(',')
                if len(evos) >= 3:
                    lines.append("")
                    lines.append("  pkmn.evolutions do |evo|")
                    for i in range(0, len(evos), 3):
                        if i + 2 < len(evos):
                            species = evos[i].strip()
                            method = evos[i+1].strip()
                            param = evos[i+2].strip()
                            if param.isdigit():
                                lines.append(f"    evo.to :{species}, method: :{method}, param: {param}")
                            else:
                                lines.append(f"    evo.to :{species}, method: :{method}, param: :{param}")
                    lines.append("  end")
            
            lines.append("end")
            lines.append("")
            
            with open(output_file, 'w', encoding='utf-8') as f:
                f.write('\n'.join(lines))
    
    print(f"  ✓ Converted {len(sections)} Pokemon organized by type")

def convert_moves_to_ruby(pbs_file, output_dir):
    """Convert moves.txt to Ruby definitions organized by type"""
    print(f"Converting {pbs_file}...")
    
    with open(pbs_file, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
    
    sections = parse_pbs_section(content)
    
    # Group by type
    type_moves = defaultdict(list)
    
    for move_id, data in sections:
        move_type = data.get('Type', 'NORMAL')
        type_moves[move_type].append((move_id, data))
    
    # Write Ruby files organized by type
    for mtype, moves_list in type_moves.items():
        output_file = Path(output_dir) / "Moves" / f"{mtype}_Moves.rb"
        output_file.parent.mkdir(parents=True, exist_ok=True)
        
        lines = []
        lines.append("#" + "=" * 77)
        lines.append(f"# {mtype} Type Moves")
        lines.append("#" + "=" * 77)
        lines.append("")
        
        for move_id, data in moves_list:
            lines.append(f"GameData::Move.define :{move_id} do |m|")
            
            if 'Name' in data:
                lines.append(f'  m.name "{data["Name"]}"')
            if 'Type' in data:
                lines.append(f'  m.type :{data["Type"]}')
            if 'Category' in data:
                lines.append(f'  m.category :{data["Category"]}')
            if 'Power' in data or 'BaseDamage' in data:
                power = data.get('Power', data.get('BaseDamage', '0'))
                if power != '0':
                    lines.append(f'  m.power {power}')
            if 'Accuracy' in data:
                lines.append(f'  m.accuracy {data["Accuracy"]}')
            if 'TotalPP' in data or 'PP' in data:
                pp = data.get('TotalPP', data.get('PP', '0'))
                lines.append(f'  m.pp {pp}')
            if 'Target' in data:
                lines.append(f'  m.target :{data["Target"]}')
            if 'Priority' in data and data['Priority'] != '0':
                lines.append(f'  m.priority {data["Priority"]}')
            if 'FunctionCode' in data:
                lines.append(f'  m.function_code "{data["FunctionCode"]}"')
            if 'EffectChance' in data and data['EffectChance'] != '0':
                lines.append(f'  m.effect_chance {data["EffectChance"]}')
            if 'Flags' in data:
                flags = data['Flags'].split(',')
                for flag in flags:
                    flag = flag.strip().lower()
                    if flag == 'contact':
                        lines.append('  m.makes_contact')
                    elif flag == 'sound':
                        lines.append('  m.sound_based')
                    elif flag == 'punch':
                        lines.append('  m.punching')
                    elif flag == 'highcriticalrate':
                        lines.append('  m.high_crit_ratio')
            if 'Description' in data:
                lines.append(f'  m.description "{escape_string(data["Description"])}"')
            
            lines.append("end")
            lines.append("")
        
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write('\n'.join(lines))
    
    print(f"  ✓ Converted {len(sections)} Moves organized by type")

def convert_items_to_ruby(pbs_file, output_dir):
    """Convert items.txt to Ruby definitions organized by pocket"""
    print(f"Converting {pbs_file}...")
    
    with open(pbs_file, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
    
    sections = parse_pbs_section(content)
    
    # Group by pocket
    pocket_items = defaultdict(list)
    pocket_names = {
        '1': 'Items',
        '2': 'Medicine',
        '3': 'PokeBalls',
        '4': 'TMs_HMs',
        '5': 'Berries',
        '6': 'Mail',
        '7': 'BattleItems',
        '8': 'KeyItems'
    }
    
    for item_id, data in sections:
        pocket = data.get('Pocket', '1')
        pocket_items[pocket].append((item_id, data))
    
    # Write Ruby files organized by pocket
    for pocket, items_list in pocket_items.items():
        pocket_name = pocket_names.get(pocket, f'Pocket{pocket}')
        output_file = Path(output_dir) / "Items" / f"{pocket_name}.rb"
        output_file.parent.mkdir(parents=True, exist_ok=True)
        
        lines = []
        lines.append("#" + "=" * 77)
        lines.append(f"# {pocket_name}")
        lines.append("#" + "=" * 77)
        lines.append("")
        
        for item_id, data in items_list:
            lines.append(f"GameData::Item.define :{item_id} do |i|")
            
            if 'Name' in data:
                lines.append(f'  i.name "{data["Name"]}"')
            if 'NamePlural' in data:
                lines.append(f'  i.name_plural "{data["NamePlural"]}"')
            if 'Pocket' in data:
                lines.append(f'  i.pocket {data["Pocket"]}')
            if 'Price' in data and data['Price'] != '0':
                lines.append(f'  i.price {data["Price"]}')
            if 'FieldUse' in data:
                lines.append(f'  i.field_use :{data["FieldUse"]}')
            if 'BattleUse' in data:
                lines.append(f'  i.battle_use :{data["BattleUse"]}')
            if 'Move' in data:
                lines.append(f'  i.teaches :{data["Move"]}')
            if 'Consumable' in data and data['Consumable'].lower() == 'false':
                lines.append('  i.not_consumable')
            if 'Description' in data:
                lines.append(f'  i.description "{escape_string(data["Description"])}"')
            
            lines.append("end")
            lines.append("")
        
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write('\n'.join(lines))
    
    print(f"  ✓ Converted {len(sections)} Items organized by pocket")

def convert_abilities_to_ruby(pbs_file, output_dir):
    """Convert abilities.txt to Ruby definitions"""
    print(f"Converting {pbs_file}...")
    
    with open(pbs_file, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
    
    sections = parse_pbs_section(content)
    
    output_file = Path(output_dir) / "Abilities" / "AllAbilities.rb"
    output_file.parent.mkdir(parents=True, exist_ok=True)
    
    lines = []
    lines.append("#" + "=" * 77)
    lines.append("# All Abilities")
    lines.append("#" + "=" * 77)
    lines.append("")
    
    for ability_id, data in sections:
        lines.append(f"GameData::Ability.define :{ability_id} do |a|")
        
        if 'Name' in data:
            lines.append(f'  a.name "{data["Name"]}"')
        if 'Description' in data:
            lines.append(f'  a.description "{escape_string(data["Description"])}"')
        if 'Flags' in data:
            flags = data['Flags'].split(',')
            flags_str = ', '.join(f':{f.strip()}' for f in flags)
            lines.append(f'  a.flags {flags_str}')
        
        lines.append("end")
        lines.append("")
    
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))
    
    print(f"  ✓ Converted {len(sections)} Abilities")

def convert_types_to_ruby(pbs_file, output_dir):
    """Convert types.txt to Ruby definitions"""
    print(f"Converting {pbs_file}...")
    
    with open(pbs_file, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
    
    sections = parse_pbs_section(content)
    
    output_file = Path(output_dir) / "Types" / "AllTypes.rb"
    output_file.parent.mkdir(parents=True, exist_ok=True)
    
    lines = []
    lines.append("#" + "=" * 77)
    lines.append("# All Types")
    lines.append("#" + "=" * 77)
    lines.append("")
    
    for type_id, data in sections:
        lines.append(f"GameData::Type.define :{type_id} do |t|")
        
        if 'Name' in data:
            lines.append(f'  t.name "{data["Name"]}"')
        if 'IconPosition' in data:
            lines.append(f'  t.icon_position {data["IconPosition"]}')
        if 'IsSpecialType' in data and data['IsSpecialType'].lower() == 'true':
            lines.append('  t.special_type')
        if 'IsPseudoType' in data and data['IsPseudoType'].lower() == 'true':
            lines.append('  t.pseudo_type')
        if 'Weaknesses' in data:
            weak = data['Weaknesses'].split(',')
            weak_str = ', '.join(f':{w.strip()}' for w in weak)
            lines.append(f'  t.weaknesses {weak_str}')
        if 'Resistances' in data:
            res = data['Resistances'].split(',')
            res_str = ', '.join(f':{r.strip()}' for r in res)
            lines.append(f'  t.resistances {res_str}')
        if 'Immunities' in data:
            imm = data['Immunities'].split(',')
            imm_str = ', '.join(f':{i.strip()}' for i in imm)
            lines.append(f'  t.immunities {imm_str}')
        
        lines.append("end")
        lines.append("")
    
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))
    
    print(f"  ✓ Converted {len(sections)} Types")

def find_all_pbs_files(base_dir):
    """Find all PBS files including in subdirectories"""
    pbs_files = []
    for root, dirs, files in os.walk(base_dir):
        for file in files:
            if file.endswith('.txt'):
                pbs_files.append(os.path.join(root, file))
    return pbs_files

def main():
    """Main conversion function"""
    print("=" * 80)
    print("Complete PBS to Ruby DSL Converter")
    print("=" * 80)
    print()
    
    # Find all PBS files
    all_pbs_files = find_all_pbs_files(PBS_DIR)
    print(f"Found {len(all_pbs_files)} PBS files")
    print()
    
    # Convert each type of file
    for pbs_file in all_pbs_files:
        filename = os.path.basename(pbs_file).lower()
        
        try:
            if 'pokemon' in filename and 'forms' not in filename and 'metrics' not in filename:
                convert_pokemon_to_ruby(pbs_file, OUTPUT_DIR)
            elif 'moves' in filename or 'move' in filename:
                convert_moves_to_ruby(pbs_file, OUTPUT_DIR)
            elif 'items' in filename or 'item' in filename:
                convert_items_to_ruby(pbs_file, OUTPUT_DIR)
            elif 'abilities' in filename or 'ability' in filename:
                convert_abilities_to_ruby(pbs_file, OUTPUT_DIR)
            elif 'types' in filename or 'type' in filename:
                convert_types_to_ruby(pbs_file, OUTPUT_DIR)
            else:
                print(f"  Skipping {pbs_file} (no converter)")
        except Exception as e:
            print(f"  ✗ Error converting {pbs_file}: {e}")
    
    print()
    print("=" * 80)
    print("Conversion complete!")
    print(f"Ruby files created in: {OUTPUT_DIR}")
    print("=" * 80)

if __name__ == "__main__":
    main()
