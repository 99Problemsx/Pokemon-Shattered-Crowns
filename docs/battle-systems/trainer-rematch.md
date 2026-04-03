# Trainer Rematch

**Version:** 1.0.0\
**Module:** `TrainerRematch`\
**Requires:** None

Beat a trainer once and they're done? Not anymore. After earning **4 badges**, trainers become **re-battleable** with progressively stronger teams. Each rematch tier adds levels, held items, evolutions, IVs, and eventually competitive movesets.

---

## Features

| Feature | Description |
|---------|-------------|
| **5 Rematch Tiers** | Each tier makes trainers stronger |
| **Level Scaling** | +5 levels per tier |
| **Progressive Difficulty** | Held items → Evolutions → Max IVs → Competitive sets |
| **Cooldown** | 500 steps between rematches with the same trainer |
| **Money Multiplier** | Up to ×4 prize money at Tier 5 |
| **Bonus Item Drops** | 30% chance for bonus item per rematch win |
| **Visual Indicators** | Blue exclamation icon when rematch is available |

---

## Rematch Tiers

| Tier | Level Boost | Additions | Money Multiplier |
|------|-------------|-----------|------------------|
| 1 | +5 | Base team | ×1.5 |
| 2 | +10 | + Held items | ×2.0 |
| 3 | +15 | + Evolutions | ×2.5 |
| 4 | +20 | + Max IVs (31) | ×3.0 |
| 5 | +25 | + Competitive movesets | ×4.0 |

---

## Configuration

All settings are in `000_Config.rb` inside the `TrainerRematch` module.

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `BADGES_REQUIRED` | `4` | Badges before rematches unlock |
| `COOLDOWN_STEPS` | `500` | Steps between rematches |
| `MAX_REMATCH_TIER` | `5` | Maximum tier |
| `LEVEL_BOOST_PER_TIER` | `5` | Level boost per tier |
| `ADD_ITEMS_AT_TIER` | `2` | Tier when held items are added |
| `EVOLVE_AT_TIER` | `3` | Tier when Pokémon are evolved |
| `MAX_IVS_AT_TIER` | `4` | Tier when IVs are maxed |
| `COMPETITIVE_AT_TIER` | `5` | Tier when competitive sets activate |
| `BONUS_ITEM_CHANCE` | `30` | % chance of bonus drop |

---

## Tutorial: Marking Trainers

Add a `[Rematch]` comment tag to any trainer event, or register manually:

```ruby
REGISTERED_TRAINERS = {
  "POKEMONTRAINER_May" => { :map_id => 10, :event_id => 5 },
}
```

---

## Script Calls

```ruby
# Check if a trainer is ready for rematch
TrainerRematch.ready?(trainer_event)    # => true/false

# Get current rematch tier
TrainerRematch.tier(trainer_event)      # => 3

# Force reset cooldown (debug)
TrainerRematch.reset_cooldown(trainer_event)
```

---

## File Structure

```
Plugins/[SC] Trainer Rematch/
  meta.txt          — Plugin metadata
  000_Config.rb     — Tiers, scaling, cooldown, rewards
  001_Core.rb       — Tier logic, team modification, cooldown tracking
  002_Additions.rb  — Event indicators, registration, battle hooks
```
