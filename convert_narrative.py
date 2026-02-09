#!/usr/bin/env python3
"""
Converts narrative scene.message lines to TODO comments in Main_Story.rb
Rule: scene.message should ONLY contain dialogue with \b...\b: format
All narrative descriptions become # TODO: Event Sequence comments
"""

import re
import sys

def is_dialogue(line):
    """Check if the line contains dialogue (has \\b...\\b: pattern)"""
    # Dialogue has speaker format like \bName\b: or \b\PN\b:
    return '\\b' in line and '\\b:' in line

def is_system_message(line):
    """Check if it's a system/special message"""
    # System messages like \i[...], \ts[...], Victory!, etc.
    if '\\i[' in line or '\\ts[' in line:
        return True
    if 'scene.message "..."' in line:
        return True
    return False

def extract_narrative_text(line):
    """Extract the text content from a scene.message line"""
    match = re.search(r'scene\.message\s+"(.+)"', line)
    if match:
        return match.group(1)
    return None

def convert_to_todo(text):
    """Convert narrative text to a TODO comment bullet point"""
    # Clean up the text for TODO format
    text = text.replace('"', '')
    # Shorten if too long
    if len(text) > 60:
        text = text[:57] + "..."
    return f"  # - {text}"

def process_file(input_path, output_path):
    with open(input_path, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    output_lines = []
    i = 0
    converted_count = 0
    todo_buffer = []
    
    while i < len(lines):
        line = lines[i]
        stripped = line.strip()
        
        # Check if this is a narrative scene.message (not dialogue, not commented, not system)
        if (stripped.startswith('scene.message "') and 
            not stripped.startswith('#') and
            not is_dialogue(stripped) and
            not is_system_message(stripped)):
            
            text = extract_narrative_text(stripped)
            if text:
                # Start or continue a TODO block
                if not todo_buffer:
                    # Get indentation
                    indent = len(line) - len(line.lstrip())
                    spaces = ' ' * indent
                    todo_buffer.append(f"{spaces}# TODO: Event Sequence - Narrative\n")
                
                todo_buffer.append(convert_to_todo(text) + "\n")
                converted_count += 1
                i += 1
                continue
        
        # If we have buffered TODOs and hit a non-narrative line, flush them
        if todo_buffer:
            output_lines.extend(todo_buffer)
            todo_buffer = []
        
        output_lines.append(line)
        i += 1
    
    # Flush any remaining TODOs
    if todo_buffer:
        output_lines.extend(todo_buffer)
    
    with open(output_path, 'w', encoding='utf-8') as f:
        f.writelines(output_lines)
    
    return converted_count

if __name__ == '__main__':
    input_file = r'Data\Scripts\Story\Main_Story.rb'
    output_file = r'Data\Scripts\Story\Main_Story.rb'
    
    print(f"Processing {input_file}...")
    count = process_file(input_file, output_file)
    print(f"Converted {count} narrative lines to TODO format")
    print("Done!")
