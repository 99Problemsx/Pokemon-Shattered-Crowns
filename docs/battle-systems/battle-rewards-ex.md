# Battle Rewards Ex

**Version:** 1.0.0\
**Module:** `BattleRewardsEx`\
**Requires:** None

Every trainer battle gets **ranked S/A/B/C** based on your performance. Win fast, don't use items, use type advantages, keep your team alive — earn better ranks and **bonus item rewards**.

---

## Features

| Feature | Description |
|---------|-------------|
| **4 Ranks** | 🥇 S (90+) → 🥈 A (70+) → 🥉 B (45+) → C |
| **6 Scoring Criteria** | Faints, items, speed, type advantage, status |
| **Rank-Based Rewards** | S-rank drops Rare Candy, PP Up, Ability Capsule |
| **Color-Coded Display** | Gold S, blue A, silver B, bronze C |
| **Filters** | Skip wild battles, require min opponent party size |

---

## Scoring Breakdown

| Criterion | Points | How |
|-----------|--------|-----|
| 📦 **No Faints** | 30 | Full party survived |
| ⚡ **Turn Efficiency** | 25 base, −3/turn after 4 | Finish fast (4 free turns) |
| 🔥 **Super-Effective Hits** | 20 | Used type-advantaged moves |
| 🚫 **No Items Used** | 15 | Didn't use healing items |
| 🛡️ **No Status Taken** | 10 | Party avoided status conditions |
| **Total** | **100** | |

---

## Rank Rewards

| Rank | Score | Possible Drops |
|------|-------|----------------|
| 🥇 **S** | 90–100 | Rare Candy, PP Up, Nugget, Ability Capsule |
| 🥈 **A** | 70–89 | Full Restore ×2, Max Revive, PP Max |
| 🥉 **B** | 45–69 | Hyper Potion ×2, Revive ×2, Ultra Ball ×3 |
| **C** | 0–44 | No bonus items |

---

## Configuration

All settings are in `000_Config.rb` inside the `BattleRewardsEx` module.

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `SKIP_WILD` | `true` | Don't rank wild battles |
| `MIN_OPPONENT_PARTY` | `2` | Min foes to trigger ranking |
| `RANKED_TRAINER_TYPES` | `nil` | Restrict to trainer types (nil = all) |
| `S_RANK_COUNT_FOR_ACHIEVEMENT` | `10` | S-ranks needed for achievement |

---

## Script Calls

```ruby
# Get last battle rank
BattleRewardsEx.last_rank           # => :S

# Get last battle score
BattleRewardsEx.last_score          # => 95

# Get total S-rank count
BattleRewardsEx.s_rank_count        # => 7
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Battle Arena](battle-arena.md) | Arena battles are also ranked |
| [Ancestral Weapons](../pokemon-training/ancestral-weapons.md) | S-rank awards bonus BP |
| [Trainer Card Ex](../player-systems/trainer-card-ex.md) | S-rank count shown on card |
| [Nemesis System](nemesis-system.md) | Nemesis battles have higher score potential |

---

## File Structure

```
Plugins/[SC] Battle Rewards Ex/
  meta.txt          — Plugin metadata
  000_Config.rb     — Scoring weights, rank thresholds, rewards
  001_Core.rb       — Score calculation, rank assignment, reward selection
  002_Additions.rb  — Battle end hook, rank display UI, sound effects
```
