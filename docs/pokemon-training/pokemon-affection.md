# Pokémon Affection

**Version:** 1.0.0\
**Module:** `PokemonAffection`\
**Requires:** None

Every Pokémon has an **affection value** (0–255) that grows as you travel, battle, and care for them. At higher affection levels, your Pokémon gain powerful **in-battle bonuses** — surviving fatal hits, shaking off status, landing extra crits, and earning more EXP.

---

## Features

| Feature | Description |
|---------|-------------|
| **0–255 Affection Scale** | 5 tiers from None to Max |
| **4 Battle Bonuses** | Endure, Crit Boost, Status Cure, EXP Bonus |
| **Multiple Gain Sources** | Walking, leveling, evolving, healing, winning |
| **Loss on Neglect** | Fainting and PC deposit reduce affection |
| **Heart Display** | Hearts shown in the Summary screen |

---

## Affection Tiers

| Tier | Range | Endure | Crit Boost | Status Cure | EXP Multiplier |
|------|-------|--------|-----------|-------------|----------------|
| ⬛ **None** | 0–49 | 0% | 0% | 0% | ×1.0 |
| 🧡 **Low** | 50–99 | 0% | 0% | 0% | ×1.0 |
| 💛 **Medium** | 100–149 | 5% | 0% | 0% | ×1.1 |
| 🧡 **High** | 150–199 | 12% | 8% | 5% | ×1.15 |
| ❤️ **Max** | 200–255 | 20% | 15% | 12% | ×1.2 |

---

## How Affection Changes

### Gains

| Source | Amount | Notes |
|--------|--------|-------|
| Walking (lead) | +1 per 300 steps | Lead party Pokémon only |
| Following | +1 per 200 steps | If Companion Pokémon is active |
| Level up | +5 | Per level gained |
| Evolution | +10 | On evolution |
| Pokémon Center | +3 | On heal |
| Use healing item | +2 | Per item used |
| Win battle | +1 | Per trainer battle won |

### Losses

| Source | Amount |
|--------|--------|
| Faint | −5 |
| Deposit to PC | −2 |

---

## Battle Messages

| Event | Message |
|-------|---------|
| Endure | *"{1} toughed it out so you wouldn't feel sad!"* |
| Crit | *"{1} is so in sync with you that the move became a critical hit!"* |
| Status Cure | *"{1} shook off its {2} so you wouldn't worry!"* |
| EXP Boost | *"{1} gained a bit more Exp. Points from the bond with you!"* |

---

## Configuration

All settings are in `000_Config.rb` inside the `PokemonAffection` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log affection changes |
| `MAX_AFFECTION` | `255` | Maximum affection value |
| `SHOW_IN_SUMMARY` | `true` | Show hearts in Summary screen |
| `HEART_ICON` | `"affection_heart"` | Heart graphic file |

---

## Script Calls

```ruby
# Get affection value (0-255)
PokemonAffection.value(pkmn)          # => 165

# Get affection tier
PokemonAffection.tier(pkmn)           # => :HIGH

# Manually adjust affection
PokemonAffection.gain(pkmn, 10)
PokemonAffection.lose(pkmn, 5)

# Set to exact value
PokemonAffection.set(pkmn, 200)
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Companion Pokémon](companion-pokemon.md) | Following boosts affection gain |
| [Destiny Board](../player-systems/destiny-board.md) | Fairy Aura perk boosts friendship gain |
| [Level Caps Ex](../core-systems/level-caps-ex.md) | EXP multiplier stacks with cap system |
| [Memory Lane](../story-narrative/memory-lane.md) | Affection milestones recorded |

---

## File Structure

```
Plugins/[SC] Pokemon Affection/
  meta.txt          — Plugin metadata
  000_Config.rb     — Tiers, bonuses, gain/loss values, messages
  001_Core.rb       — Affection tracking, tier logic, battle hooks
  002_Additions.rb  — Step hooks, Summary UI hearts, message display
```
