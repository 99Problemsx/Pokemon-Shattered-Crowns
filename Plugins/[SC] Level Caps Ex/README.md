# Level Caps Ex

**Version:** 2.3.2 (Shattered Crowns Fork)  
**Essentials:** v21.1  
**Author:** Nononever

Flexible level cap system with 3 modes, badge-based auto-caps, smooth EXP scaling, and an EXP storage piggy bank.

---

## Features

- **3 Cap Modes** -- Hard Cap (no EXP), EXP Cap (reduced EXP), Obedience Cap (disobey)
- **Badge-Based Auto Cap** -- Level cap automatically increases with each badge
- **Smooth Soft Cap** -- Exponentially reduced EXP instead of flat 1/10 (1 over = 50%, 5 over = 3%)
- **EXP Storage** -- Blocked EXP is banked per-Pokemon and awarded when the cap increases
- **Bypass Switch** -- Game switch to disable caps for enemy trainers

---

## Configuration

Module: `LevelCapsEX`

| Constant | Default | Description |
|----------|---------|-------------|
| `LEVEL_CAP_VARIABLE` | `198` | Game Variable controlling the level cap |
| `LEVEL_CAP_MODE_VARIABLE` | `199` | Game Variable controlling the cap mode |
| `DEFAULT_LEVEL_CAP_MODE` | `1` | Default mode (1=Hard, 2=EXP, 3=Obedience) |
| `LEVEL_CAP_BYPASS_SWITCH` | `200` | Game Switch to disable caps for enemies |
| `LOG_LEVEL_CAP_CHANGES` | `true` | Console logging in debug builds |
| `BADGE_AUTO_CAP` | `true` | Auto-update cap on badge earn |
| `SOFT_CAP_SCALED` | `true` | Use smooth EXP curve for mode 2 |
| `EXP_STORAGE_ENABLED` | `true` | Bank blocked EXP and award later |

---

## Badge Level Caps

| Badges | Level Cap |
|--------|-----------|
| 0 | 15 |
| 1 | 20 |
| 2 | 25 |
| 3 | 30 |
| 4 | 35 |
| 5 | 45 |
| 6 | 55 |
| 7 | 65 |
| 8 | 75 |
| 9 (post-game) | 100 |

---

## Cap Modes

| Mode | Behavior |
|------|----------|
| 1 -- Hard Cap | Pokemon cannot gain any EXP past the cap |
| 2 -- EXP Cap | Reduced EXP gain (smooth curve when SOFT_CAP_SCALED is true) |
| 3 -- Obedience Cap | Pokemon disobeys when over the cap level |

---

## File Structure

```
[SC] Level Caps Ex/
  meta.txt              - Plugin metadata
  000_Config.rb         - Cap variables, badge table, mode settings
  001_Main.rb           - EXP interception, cap mode logic, storage
  002_Additions.rb      - Badge event hooks, bypass logic
```
