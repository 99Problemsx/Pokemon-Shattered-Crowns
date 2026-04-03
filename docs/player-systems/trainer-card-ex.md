# Trainer Card Ex

**Version:** 1.0.0\
**Module:** `TrainerCardEx`\
**Requires:** None

Your trainer card now shows more than just badges. Track **11 achievement badges**, display detailed stats (playtime, steps, arena streak, morality), and showcase your team — all on one enhanced card.

---

## Features

| Feature | Description |
|---------|-------------|
| **11 Achievement Badges** | Unlocked automatically from game progress |
| **8 Stat Categories** | Playtime, Pokédex, money, battles, steps, arena, quests, morality |
| **Cross-Plugin** | Integrates with Arena, Quests, Morality, Fog of War, Wanted Board |

---

## Achievement Badges

| Badge | Condition |
|-------|----------|
| 🥇 Gym Challenger | Earn 1 badge |
| 🏆 Badge Master | Earn all 8 badges |
| 📖 Aspiring Scholar | Own 50 Pokémon |
| 🎓 Pokémon Professor | Own 150 Pokémon |
| ⚔️ Arena Veteran | Clear Arena Floor 5 |
| 👑 Arena Champion | Clear Arena Floor 10 |
| 📜 Questmaster | Complete 10 quests |
| 🌍 World Explorer | 100% map explored |
| 🎯 Bounty Hunter | Complete 25 bounties |
| ✨ Beacon of Light | Reach Pure Light alignment |
| 🌑 Void Embrace | Reach Pure Dark alignment |

---

## Configuration

All settings are in `000_Config.rb` inside the `TrainerCardEx` module.

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `SHOW_PLAYTIME` | `true` | Display play time |
| `SHOW_POKEDEX` | `true` | Display Pokédex count |
| `SHOW_BATTLES_WON` | `true` | Display battle wins |
| `SHOW_ARENA_STREAK` | `true` | Display arena streak |
| `SHOW_MORALITY` | `true` | Display alignment |

---

## Script Calls

```ruby
# Open the enhanced trainer card
TrainerCardEx.open

# Get unlocked badge count
TrainerCardEx.badge_count   # => 5
```

---

## File Structure

```
Plugins/[SC] Trainer Card Ex/
  meta.txt          — Plugin metadata
  000_Config.rb     — Badges, tracked stats, UI colors
  001_Core.rb       — Badge conditions, stat gathering
  002_Additions.rb  — Card UI rendering
```
