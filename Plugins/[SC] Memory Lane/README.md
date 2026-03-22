# Memory Lane

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Per-Pokemon lifetime statistics with journey milestones and party snapshots. Provides a recap UI showing each Pokemon's complete history.

---

## Features

- **Lifetime Stats** -- KOs, battles fought, steps walked, items used, level-ups
- **Milestones** -- Automatic snapshots at important events
- **4 Milestone Categories** -- Battle, Exploration, Story, Achievement
- **Party Snapshots** -- Records team composition at milestone moments
- **Recap UI** -- Timeline view of each Pokemon's journey

---

## Configuration

Module: `MemoryLane`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `TRACK_KOS` | `true` | Track knockout count |
| `TRACK_BATTLES` | `true` | Track battle participation |
| `TRACK_STEPS` | `true` | Track steps walked |
| `TRACK_ITEMS` | `true` | Track items used on Pokemon |
| `TRACK_LEVELS` | `true` | Track level-up history |
| `TRACK_EVOLVE` | `true` | Track evolution events |
| `TRACK_CAUGHT` | `true` | Track catch date/location |
| `MILESTONE_CATEGORIES` | 4 | Battle, Exploration, Story, Achievement |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `MemoryLaneManager.add_milestone(text)` | Add a milestone with current party snapshot |
| `pbOpenMemoryLane(pokemon)` | Open the recap UI for a specific Pokemon |

---

## Cross-Plugin Integration

- **Time Travel** -- Time travel events recorded as milestones
- **Pokemon Titles** -- Title earned recorded as milestone
- **Map Fog of War** -- New location discoveries recorded
- **Trainer Card Ex** -- Lifetime stats displayed on card

---

## File Structure

```
[SC] Memory Lane/
  meta.txt              - Plugin metadata
  000_Config.rb         - Tracking toggles, milestone categories
  001_MemoryCore.rb     - Stat tracking, milestone recording, snapshot system, UI
```
