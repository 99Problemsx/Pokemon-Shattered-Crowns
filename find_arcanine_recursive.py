
import os

root_dir = "PBS"
output_file = "arcanine_all_locations.txt"

print(f"Searching in {root_dir}...")

with open(output_file, 'w', encoding='utf-8') as out:
    for root, dirs, files in os.walk(root_dir):
        for file in files:
            if file.lower() == "pokemon.txt":
                filepath = os.path.join(root, file)
                try:
                    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
                        lines = f.readlines()
                    
                    found = False
                    for i, line in enumerate(lines):
                        if "[ARCANINE]" in line: # partial match to be safe? No, strict [ARCANINE]
                            found = True
                            out.write(f"File: {filepath}\n")
                            out.write(f"  Match at line {i+1}\n")
                            # Print next 5 lines
                            for j in range(1, 6):
                                if i+j < len(lines):
                                    out.write(f"    {lines[i+j].strip()}\n")
                            out.write("-" * 20 + "\n")
                    
                    if not found:
                         pass # out.write(f"File: {filepath} - NO MATCH\n")

                except Exception as e:
                    print(f"Error reading {filepath}: {e}")

print(f"Written to {output_file}")
