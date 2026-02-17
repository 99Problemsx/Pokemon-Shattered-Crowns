
import os

filename = "PBS/pokemon.txt.bak"
if not os.path.exists(filename):
    filename = os.path.join(os.getcwd(), "PBS", "pokemon.txt.bak")

output_file = "arcanine_locations.txt"

try:
    with open(filename, 'r', encoding='utf-8', errors='ignore') as f:
        lines = f.readlines()
        
    with open(output_file, 'w', encoding='utf-8') as out:
        count = 0
        for i, line in enumerate(lines):
            if line.strip() == "[ARCANINE]":
                count += 1
                out.write(f"Match #{count} at line {i+1}\n")
                # Print next 5 lines
                for j in range(1, 6):
                    if i+j < len(lines):
                        out.write(f"  {lines[i+j].strip()}\n")
                out.write("-" * 20 + "\n")
    print(f"Written to {output_file}")

except Exception as e:
    print(f"Error: {e}")
