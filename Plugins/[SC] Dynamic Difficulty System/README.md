# Dynamic Difficulty System

**Version:** 1.4.0  
**Essentials:** v21.1  
**Author:** Nononever

Performance-based difficulty scaling that adjusts AI tier, trainer teams, and competitive sets based on the player's win/loss record. Integrates with the Advanced AI System.

---

## Features

- **Performance Score** -- Ranges from -50 to +50, updated after every trainer battle
- **Win/Loss Tuning** -- Base score +/- 8 per battle, modified by streaks and dominance
- **Streak Bonus** -- Consecutive same-outcome battles add extra score (+2 per, capped at +8)
- **Trainer Class Weights** -- Losing to a Gym Leader hurts less than losing to a Youngster
- **Level Gap Scaling** -- Stomping under-levelled trainers has reduced score impact
- **Badge Tier Caps** -- Prevents extreme AI tiers early in the story
- **Grace Period** -- 5 trainer battles before the system activates
- **Decay** -- Score drifts toward 0 each battle to prevent runaway difficulty
- **Team Scaler** -- Adjusts trainer Pokemon levels, IVs, and sets based on tier
- **Competitive Sets** -- Full competitive movesets by generation (Gen 1-9)

---

## Configuration

Module: `DynamicDifficulty`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `SCORE_MIN` | `-50` | Minimum performance score |
| `SCORE_MAX` | `50` | Maximum performance score |
| `WIN_BASE` | `8` | Base score gain per win |
| `LOSS_BASE` | `-8` | Base score loss per loss |
| `STREAK_STEP` | `2` | Score bonus per consecutive same outcome |
| `STREAK_CAP` | `8` | Maximum streak bonus |
| `DECAY_RATE` | `2` | Score decay toward 0 per battle |
| `GRACE_PERIOD` | `5` | Battles before DDS activates |
| `LEVEL_GAP_THRESHOLD` | `10` | Level difference for gap scaling |
| `LEVEL_GAP_REDUCTION` | `0.3` | Dominance reduction when over-levelled |

---

## Trainer Class Weights

| Class | Weight | Effect |
|-------|--------|--------|
| Leader | 0.6 | Losing hurts less, winning rewards less |
| Elite Four | 0.5 | Expected tough fight |
| Champion | 0.4 | Minimal score impact |
| Rival | 0.8 | Moderate weight |
| Youngster/Lass/Bug Catcher | 1.3 | Losing hurts more |
| Default | 1.0 | Normal weight |

---

## Badge Tier Caps

| Badges | Max Tier |
|--------|----------|
| 0-1 | Mid |
| 2-3 | Pro |
| 4+ | Uncapped |

---

## File Structure

```
[SC] Dynamic Difficulty System/
  meta.txt                - Plugin metadata
  Settings.rb             - Core settings, score tuning, weights, tier caps
  DDS_PerformanceTracker.rb - Win/loss tracking, score calculation
  DDS_TierEngine.rb       - Tier determination from score
  DDS_TeamScaler.rb       - Level, IV, and set adjustments for trainer teams
  DDS_TeamBuilder.rb      - Full team building from competitive sets
  DDS_BattleHooks.rb      - Post-battle score update hooks
  DDS_CompetitiveSets.rb  - Competitive moveset definitions
  DDS_Sets_EarlyMid.rb    - Early/mid-game sets
  DDS_Sets_Gen1to3.rb     - Gen 1-3 competitive sets
  DDS_Sets_Gen4to6.rb     - Gen 4-6 competitive sets
  DDS_Sets_Gen7to9.rb     - Gen 7-9 competitive sets
  DDS_DoublesTeams.rb     - Doubles battle team compositions
  DDS_OptionsMenu.rb      - Options menu integration
  CHANGELOG_v1.4.md       - Version history
```
