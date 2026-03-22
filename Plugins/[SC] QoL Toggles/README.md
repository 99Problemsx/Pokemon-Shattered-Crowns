# QoL Toggles

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

8 quality-of-life toggles accessible from the options menu. Each toggle can be independently enabled or disabled by the player.

---

## Features

- **8 Toggles** -- Each providing a distinct convenience feature
- **Options Menu Integration** -- Toggles appear in the game's options screen
- **Per-Save Persistence** -- Toggle states saved with the game
- **Default Values** -- Each toggle has a configurable default state
- **Cutscene Tracking** -- Skip Seen Cutscenes requires tracking which cutscenes have been viewed

---

## Configuration

Module: `QoLToggles`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `TOGGLES` | 8 | Toggle definitions |
| `HOTKEY` | `nil` | Optional hotkey to open toggle menu |

---

## Toggle List

| Toggle | Default | Effect |
|--------|---------|--------|
| Auto-Run | Off | Always run without holding B |
| Fast Text | Off | Instant text display |
| Fast Battles | Off | Accelerated battle animations |
| Skip Seen Cutscenes | Off | Skip previously viewed cutscenes |
| Quick Surf | Off | Surf without separate animation |
| Auto-Sort Bag | Off | Automatically sort inventory |
| Skip Nickname | Off | Skip the "give a nickname?" prompt |
| Damage Numbers | Off | Show damage values in battle |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbQoLToggle?(toggle_id)` | Check if a toggle is enabled |
| `pbSetQoLToggle(toggle_id, value)` | Set a toggle on/off |
| `pbMarkCutsceneSeen(cutscene_id)` | Register a cutscene as viewed |
| `pbCutsceneSeen?(cutscene_id)` | Check if cutscene was viewed before |

---

## Cross-Plugin Integration

- **Enhanced Options Menu** -- Toggles appear in the V22 options menu if available

---

## File Structure

```
[SC] QoL Toggles/
  meta.txt              - Plugin metadata
  000_Config.rb         - Toggle definitions, default values
  001_ToggleCore.rb     - Save data, toggle logic, cutscene tracking
  002_ToggleHooks.rb    - Gameplay hooks for each toggle effect
```
