# Battle Arena

**Version:** 1.0.0\
**Module:** `SCBattleArena`\
**Requires:** None

A **10-floor challenge tower** that unlocks post-game. Each floor has a type theme, escalating levels, and milestone rewards. Bring a team of 3, no items allowed, no healing between fights. How far can you climb?

---

## Features

| Feature | Description |
|---------|-------------|
| **10 Themed Floors** | Fire → Ice → Electric → ... → Champion → Apex |
| **Party Limit** | 3 Pokémon only |
| **No Items** | Items disabled during arena battles |
| **No Healing** | No healing between trainers on the same floor |
| **Level Scaling** | Player Pokémon scaled down to floor level cap |
| **Milestone Rewards** | Rare items on first clear of key floors |
| **Win Streaks** | Bonus rewards at 10/25/50 streak milestones |

---

## Arena Floors

| Floor | Name | Theme | Level | Trainers | First-Clear Reward |
|-------|------|-------|-------|----------|-------------------|
| 1 | 🔥 Ember Floor | Fire | 50 | 3 | — |
| 2 | ❄️ Frost Floor | Ice | 52 | 3 | — |
| 3 | ⚡ Thunder Floor | Electric | 54 | 3 | Rare Candy ×3 |
| 4 | 🌑 Shadow Floor | Dark | 56 | 3 | — |
| 5 | 🐉 Dragon Floor | Dragon | 58 | 3 | PP Up ×2, Rare Candy ×3 |
| 6 | 🛡️ Steel Floor | Steel | 60 | 3 | — |
| 7 | 🔮 Psychic Floor | Psychic | 62 | 3 | PP Max ×1, Rare Candy ×5 |
| 8 | 👻 Ghost Floor | Ghost | 64 | 3 | — |
| 9 | 👑 Champion Floor | Mixed | 66 | 4 | Master Ball ×1 |
| 10 | 🌟 Apex Floor | Legendary | 70 | 1 | Ability Capsule ×1, Rare Candy ×10 |

---

## Streak Rewards

| Streak | Reward |
|--------|--------|
| 10 wins | Rare Candy ×5 |
| 25 wins | PP Max ×2 |
| 50 wins | Master Ball ×1 |

---

## Configuration

All settings are in `000_Config.rb` inside the `SCBattleArena` module.

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `PARTY_SIZE_LIMIT` | `3` | Max Pokémon per challenge |
| `LEVEL_CAP_ENABLED` | `true` | Scale player down to floor level |
| `HEAL_BETWEEN_TRAINERS` | `false` | Heal between battles on same floor |
| `ITEMS_ALLOWED` | `false` | Allow item use in battle |
| `ARENA_TRAINER_TYPE` | `:POKEMONTRAINER_Arena` | Trainer type for arena NPCs |

---

## Script Calls

```ruby
# Start an arena challenge from floor 1
SCBattleArena.start

# Start from a specific floor (debug)
SCBattleArena.start(floor: 5)

# Get current streak
SCBattleArena.streak              # => 12

# Get highest floor cleared
SCBattleArena.highest_floor       # => 7
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Battle Rewards Ex](battle-rewards-ex.md) | Arena battles are ranked S/A/B/C |
| [Trainer Card Ex](../player-systems/trainer-card-ex.md) | Arena achievements on card |
| [Pokémon Titles](../pokemon-training/pokemon-titles.md) | Arena streaks count toward titles |
| [Level Caps Ex](../core-systems/level-caps-ex.md) | Level scaling uses cap system |

---

## File Structure

```
Plugins/[SC] Battle Arena/
  meta.txt          — Plugin metadata
  000_Config.rb     — Floors, rewards, battle rules, streaks
  001_Core.rb       — Floor progression, trainer generation, scaling
  002_Additions.rb  — UI, streak tracking, milestone rewards
```
