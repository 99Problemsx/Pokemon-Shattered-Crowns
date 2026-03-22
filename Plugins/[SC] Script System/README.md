# Script System

**Version:** 2.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Complete PBS replacement system that defines all game data (Pokemon, Moves, Abilities, Items, Types, Trainers, Encounters, Maps, and more) as Ruby scripts instead of text-based PBS files.

---

## Features

- **Full PBS Replacement** -- All data types can be defined in Ruby instead of PBS text files
- **GameData Registry** -- `GameData::ScriptRegistry` manages all script-defined data
- **63+ Script Files** -- Covering Pokemon, Moves, Abilities, Items, Types, Trainers, Encounters, Maps, Animations, and more
- **PBS Migration** -- Tools to convert existing PBS files to script format
- **Debug Tools** -- Writer, hooks, and editor fixes for script-defined data
- **Custom Data Types** -- Cutscenes, Quests, Shops, Chapters, Achievements, Cameras, Audio, Timed Events
- **Plugin Integration** -- Extension points for other plugins to register custom data

---

## Configuration

Module: `SCScripts`

| Constant | Default | Description |
|----------|---------|-------------|
| `VERSION` | `"2.0.0"` | System version |
| `SCRIPTS_BASE_PATH` | `"Plugins/[SC] Script System"` | Base path for script data |
| `PBS_REPLACEMENT_MODE` | varies | When true, bypasses PBS and uses only scripts |

---

## Data Paths

| Data Type | Script Path |
|-----------|-------------|
| Pokemon | `Pokemon/` |
| Moves | `Moves/` |
| Abilities | `Abilities/` |
| Items | `Items/` |
| Types | `Types/` |
| Trainers | `Trainers/` (+ `AllTrainers.rb`) |
| Trainer Types | `TrainerTypes/` |
| Encounters | (encounters scripts) |
| Maps | (map metadata scripts) |
| Animations | (animation scripts) |

---

## Key Components

| File | Purpose |
|------|---------|
| `000_Config.rb` | Path configuration and mode settings |
| `001_GameData_Base.rb` | Base GameData registry extensions |
| `020_ScriptLoader.rb` | Script loading and registration engine |
| `030_Integration.rb` | Cross-plugin integration hooks |
| `040_DebugMenu.rb` | Debug menu additions |
| `041_DebugWriter.rb` | Write script data back to files |
| `060_PBSOverride.rb` | PBS file bypass when replacement mode is on |
| `061_Compiler.rb` | Compiler extensions for script data |
| `062_PBSMigrator.rb` | PBS-to-script migration tool |
| `063_PBSParser.rb` | Parsing utilities |

---

## File Structure

```
[SC] Script System/
  meta.txt              - Plugin metadata
  000_Config.rb         - Paths and mode configuration
  001_GameData_Base.rb  - GameData registry base
  002-059*.rb           - Data type handlers (maps, encounters, trainers, etc.)
  060_PBSOverride.rb    - PBS replacement toggle
  061_Compiler.rb       - Compiler hooks
  062_PBSMigrator.rb    - Migration from PBS text to Ruby scripts
  063_PBSParser.rb      - PBS parsing utilities
  Abilities/            - Ability script definitions
  Items/                - Item script definitions
  Moves/                - Move script definitions
  Pokemon/              - Pokemon script definitions
  TrainerTypes/         - Trainer type script definitions
  Types/                - Type script definitions
  PBS_REPLACEMENT_GUIDE.md
  EVENT_PAGES_REFERENCE.md
  EVENT_PAGES_TUTORIAL.md
```
