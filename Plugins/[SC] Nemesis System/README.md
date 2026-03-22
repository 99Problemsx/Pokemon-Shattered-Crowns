# Nemesis System

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Rival trainers that remember your defeats, grow stronger, and hunt you down. Nemeses rank up each time they beat you and appear as overworld ambushes.

---

## Features

- **Auto-Generation** -- 60% chance a loss spawns a nemesis trainer
- **5 Ranks** -- Upstart to Archnemesis with increasing level/IV boosts
- **Overworld Ambush** -- Nemeses appear on the overworld after a step cooldown
- **Type-Themed Teams** -- Each nemesis picks a type theme and builds a team around it
- **Taunt and Defeat Lines** -- Unique dialogue per rank
- **Max Simultaneous** -- Up to 3 active nemeses at once
- **Rank-Based Rewards** -- Better drops at higher ranks (Master Ball at Rank 5)

---

## Configuration

Module: `NemesisSystem`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `MAX_NEMESES` | `3` | Simultaneous active nemeses |
| `GENERATION_CHANCE` | `60` | % chance a loss creates a nemesis |
| `MIN_BADGES` | `2` | Minimum badges before system activates |
| `MAX_RANK` | `5` | Highest nemesis rank |
| `AMBUSH_MIN_STEPS` | `300` | Min steps before ambush check |
| `AMBUSH_MAX_STEPS` | `800` | Max steps before ambush check |
| `AMBUSH_CHANCE` | `30` | % chance per step check after cooldown |

---

## Rank Progression

| Rank | Title | Level Boost | IV Boost | Has Item |
|------|-------|-------------|----------|----------|
| 1 | Upstart | +0 | +0 | No |
| 2 | Rival | +2 | +5 | No |
| 3 | Threat | +4 | +10 | Yes |
| 4 | Overlord | +6 | +15 | Yes |
| 5 | Archnemesis | +10 | +20 | Yes |

---

## Rewards (on defeat)

| Rank | Reward |
|------|--------|
| 1 | 1 Rare Candy |
| 2 | 2 Rare Candy, 1 Nugget |
| 3 | 3 Rare Candy, 1 PP Up |
| 4 | 5 Rare Candy, 1 PP Max, 3 Nuggets |
| 5 | 5 Rare Candy, 1 Master Ball, 1 Ability Capsule |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbActiveNemeses` | Get list of active nemeses |
| `pbDismissNemesis(id)` | Remove a nemesis manually |
| `pbNemesisRank(id)` | Get a nemesis's rank |

---

## Cross-Plugin Integration

- **Trainer Card Ex** -- "Nemesis Slayer" badge for defeating a Rank 5 nemesis
- **Dynamic Difficulty System** -- Nemesis team scaling uses DDS performance tier

---

## File Structure

```
[SC] Nemesis System/
  meta.txt              - Plugin metadata
  000_Config.rb         - Generation, ranks, ambush, rewards, dialogue
  001_NemesisCore.rb    - Save data, generation, rank-up, ambush, battle setup
```
