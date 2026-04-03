# Script System

**Version:** 2.0.0\
**Module:** `SCScripts`\
**Requires:** None

The Script System is a **complete PBS replacement** — instead of editing text-based PBS files, all game data (Pokémon, moves, abilities, items, trainers, encounters, etc.) is defined in **Ruby scripts**. This enables proper version control (no more binary diffs), modular data loading, and easier collaboration.

---

## Features

| Feature | Description |
|---------|-------------|
| **Full PBS Replacement** | 30+ PBS files replaced with Ruby scripts |
| **Modular Paths** | Separate folders for Maps, Pokémon, Moves, Items, etc. |
| **Plugin PBS** | Each plugin can have its own data scripts |
| **Version Control Friendly** | Ruby files diff cleanly in Git |
| **Migration Support** | Can merge with existing PBS data |

---

## Replaced PBS Files

The system replaces all major PBS text files:

- `pokemon.txt`, `pokemon_forms.txt`, `pokemon_metrics.txt`
- `moves.txt`, `abilities.txt`, `items.txt`, `types.txt`
- `trainers.txt`, `trainer_types.txt`, `encounters.txt`
- `map_metadata.txt`, `map_connections.txt`, `town_map.txt`
- `regional_dexes.txt`, `ribbons.txt`
- All Gen 9, Dynamax, Z-Power, Terastal PBS extensions

---

## Configuration

| Constant | Default | Description |
|----------|---------|-------------|
| `PBS_REPLACEMENT_MODE` | `true` | `true` = scripts only; `false` = merge with PBS |
| `SCRIPTS_BASE_PATH` | `"Plugins/[SC] Script System"` | Root path for script data |

### Data Paths

```ruby
MAP_SCRIPTS_PATH        = ".../Maps"
POKEMON_SCRIPTS_PATH    = ".../Pokemon"
MOVES_SCRIPTS_PATH      = ".../Moves"
ABILITIES_SCRIPTS_PATH  = ".../Abilities"
ITEMS_SCRIPTS_PATH      = ".../Items"
TYPES_SCRIPTS_PATH      = ".../Types"
TRAINERS_SCRIPTS_PATH   = ".../Trainers"
ENCOUNTERS_SCRIPTS_PATH = ".../Encounters"
RIBBONS_SCRIPTS_PATH    = ".../Ribbons"
```

---

## File Structure

```
Plugins/[SC] Script System/
  meta.txt              — Plugin metadata
  000_Config.rb         — Paths, PBS replacement mode, file list
  001_GameData_Base.rb  — Data loading and registration
  Maps/                 — Map metadata scripts
  Pokemon/              — Species definitions
  Moves/                — Move definitions
  Items/                — Item definitions
  Trainers/             — Trainer definitions
  Encounters/           — Encounter tables
```
