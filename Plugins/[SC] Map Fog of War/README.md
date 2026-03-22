# Map Fog of War

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Town Map locations are hidden until the player visits them. Tracks exploration completion percentage.

---

## Features

- **Auto-Reveal** -- Locations appear on the Town Map only after the first visit
- **Completion Tracking** -- Shows percentage of all map points discovered
- **Nearby Glow** -- Optional hint glow for map points close to discovered areas
- **Exploration Status** -- Per-map visited/not-visited state

---

## Configuration

Module: `MapFogOfWar`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `MAP_POINTS` | `{...}` | All discoverable map locations |
| `GLOW_NEARBY_ENABLED` | varies | Show hints for nearby undiscovered locations |
| `GLOW_PROXIMITY_MAPS` | `1` | How many map steps away to show glow |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `FogOfWarManager.reveal_location(map_id)` | Manually reveal a location |
| `pbFogCompletion` | Get exploration completion percentage |
| `pbLocationRevealed?(map_id)` | Check if a location is visible |

---

## Cross-Plugin Integration

- **Lore Codex** -- New discoveries register codex entries
- **Memory Lane** -- Exploration milestones recorded
- **Trainer Card Ex** -- Exploration completion badge
- **Time Travel** -- Past-era maps are revealed separately
- **Spirit Realm** -- Spirit realm locations have their own fog state

---

## File Structure

```
[SC] Map Fog of War/
  meta.txt              - Plugin metadata
  000_Config.rb         - Map point definitions, glow settings
  001_FogCore.rb        - Save data, reveal logic, completion tracking
  002_FogDisplay.rb     - Town Map integration, glow rendering
```
