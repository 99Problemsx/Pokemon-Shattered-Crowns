# Battle Arena

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

10-floor battle tower with themed floors, streak tracking, and milestone rewards. Configurable rules per floor.

---

## Features

- **10 Themed Floors** -- Ember through Apex, each with increasing difficulty
- **Streak Tracking** -- Best streak saved, rewards at milestones
- **Milestone Rewards** -- Rare items at specific floors (Master Ball at Floor 9)
- **Configurable Rules** -- Item ban, level cap, healing toggle per floor
- **Boss Floors** -- Special opponents on milestone floors

---

## Configuration

Module: `BattleArena`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `FLOORS` | 10 | Floor definitions with themes and rules |
| `MILESTONE_REWARDS` | `{...}` | Items awarded at specific floors |
| `STREAK_MILESTONES` | `{...}` | Rewards for consecutive win streaks |
| `LEVEL_CAP_ENABLED` | varies | Whether level caps apply in the arena |

---

## Floor Progression

| Floor | Theme | Rule |
|-------|-------|------|
| 1 - Ember | Fire | Standard |
| 2 - Torrent | Water | No items |
| 3 - Gale | Flying | Level cap |
| 4 - Tremor | Ground | No items + level cap |
| 5 - Shadow | Dark | Boss floor |
| 6 - Frost | Ice | No healing between rounds |
| 7 - Surge | Electric | Double battle |
| 8 - Venom | Poison | No items + no healing |
| 9 - Dragon | Dragon | Boss floor + max difficulty |
| 10 - Apex | Mixed | All restrictions + final boss |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbStartArena` | Enter the battle arena |
| `pbArenaStreak` | Get current streak |
| `pbArenaBestStreak` | Get all-time best streak |
| `pbArenaFloor` | Get current floor |

---

## Cross-Plugin Integration

- **Trainer Card Ex** -- Arena streak and floor displayed
- **Battle Rewards Ex** -- Arena battles are ranked normally

---

## File Structure

```
[SC] Battle Arena/
  meta.txt              - Plugin metadata
  000_Config.rb         - Floor definitions, rules, rewards
  001_ArenaCore.rb      - Floor progression, streak tracking, battle setup
  002_ArenaScene.rb     - Arena entrance/selection UI
```
