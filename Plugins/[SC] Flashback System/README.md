# Flashback System

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Playable flashback sequences with full state save/restore. Temporarily swaps the player's party, location, and variables for a self-contained story segment, then restores everything when the flashback ends.

---

## Features

- **State Preservation** -- Saves party, position, switches, and variables before the flashback
- **Party Swap** -- Provides a temporary party for the flashback sequence
- **Visual Effects** -- Sepia tone and fade transitions to signal entering/leaving a flashback
- **Full Restoration** -- Returns everything to its pre-flashback state when done
- **Disable Controls** -- Optionally disables saving, menu, and encounters during flashbacks

---

## Configuration

Module: `FlashbackSystem`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `FLASHBACK_TONE` | Sepia | Screen tone during flashbacks |
| `DISABLE_SAVE` | `true` | Block saving during flashback |
| `DISABLE_MENU` | `true` | Block menu during flashback |
| `DISABLE_ENCOUNTERS` | `true` | Block wild encounters |
| `FLASHBACKS` | `{}` | Flashback definitions |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbStartFlashback(id)` | Begin a flashback sequence |
| `pbEndFlashback` | End flashback and restore state |
| `pbInFlashback?` | Check if currently in a flashback |

---

## Usage Example

```ruby
# Start flashback -- saves current state, teleports to flashback map
pbStartFlashback(:ANCIENT_WAR)

# ... flashback map events play out ...

# End flashback -- restores party, position, everything
pbEndFlashback
```

---

## Cross-Plugin Integration

- **Time Travel** -- Complementary systems (flashback = scripted, time travel = player-driven)
- **Lore Codex** -- Flashback events can discover codex entries

---

## File Structure

```
[SC] Flashback System/
  meta.txt              - Plugin metadata
  000_Config.rb         - Flashback definitions, visual settings
  001_FlashbackCore.rb  - State save/restore, transition effects
```
