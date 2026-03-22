# Battle Rewards Ex

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Post-battle performance scoring system. Ranks battles S/A/B/C based on turns taken, faints, items used, and type effectiveness. Awards bonus items based on rank.

---

## Features

- **4 Ranks** -- S (perfect), A (great), B (good), C (basic)
- **Scoring Criteria** -- Turn count, party faints, items used, super-effective hits
- **Bonus Rewards** -- Configurable item rewards per rank
- **Post-Battle Display** -- Rank shown after every trainer battle
- **Advanced AI Filtering** -- Works with AAI system for accurate stat extraction

---

## Configuration

Module: `BattleRewardsEx`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `RANK_THRESHOLDS` | `{S, A, B, C}` | Score cutoffs per rank |
| `SCORE_WEIGHTS` | `{...}` | Weight for each scoring factor |
| `RANK_REWARDS` | `{S: [...], A: [...], ...}` | Item rewards per rank |

---

## Scoring Breakdown

| Factor | Good | Bad |
|--------|------|-----|
| Turns taken | Fewer = higher score | Many turns = lower |
| Party faints | 0 faints = bonus | Each faint reduces score |
| Items used | 0 items = bonus | Each item reduces score |
| Super-effective hits | More = bonus | -- |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbLastBattleRank` | Get the rank from the most recent battle |
| `pbBattleRankCount(rank)` | Count how many times a rank was achieved |

---

## Cross-Plugin Integration

- **Reputation System** -- High ranks grant reputation bonus
- **Nemesis System** -- Rank factors into nemesis reward quality
- **Trainer Card Ex** -- Battle rank statistics display

---

## File Structure

```
[SC] Battle Rewards Ex/
  meta.txt              - Plugin metadata
  000_Config.rb         - Rank thresholds, weights, rewards
  001_RewardsCore.rb    - Scoring engine, post-battle hooks
  002_RewardsDisplay.rb - Rank display UI
```
