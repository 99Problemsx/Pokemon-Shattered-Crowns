
import os
from collections import defaultdict

filename = "PBS/pokemon.txt"
if not os.path.exists(filename):
    filename = os.path.join(os.getcwd(), "PBS", "pokemon.txt")

print(f"Scanning {filename} for duplicate sections...")

try:
    with open(filename, 'r', encoding='utf-8', errors='ignore') as f:
        lines = f.readlines()
    
    sections = defaultdict(list)
    
    for i, line in enumerate(lines):
        line = line.strip()
        if line.startswith('[') and line.endswith(']'):
            section_name = line
            sections[section_name].append(i + 1)
            
    duplicates_found = False
    with open("pbs_duplicates.txt", "w") as out:
        for name, positions in sections.items():
            if len(positions) > 1:
                duplicates_found = True
                msg = f"Duplicate section {name} found at lines: {positions}"
                print(msg)
                out.write(msg + "\n")
                
    if not duplicates_found:
        print("No duplicates found.")

except Exception as e:
    print(f"Error: {e}")
