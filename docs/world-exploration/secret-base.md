# Secret Base

**Version:** 1.0.0\
**Module:** `SecretBase`\
**Requires:** None

Find a hidden location, claim it as your own, and **build your personal base**. Place furniture, install functional stations (healing, PC, shop, training dummy), grow berries, and invite story companions to visit.

---

## Features

| Feature | Description |
|---------|-------------|
| **Multiple Locations** | Choose from forest caves, mountain dens, beach coves |
| **8 Decorations** | Furniture, posters, lights, and functional items |
| **Functional Stations** | Heal, access PC, train, shop, grow berries |
| **NPC Invitations** | Invite Lyra, Kael, and Aldric to visit |
| **5 Categories** | Furniture, Posters, Plants, Lights, Special |

---

## Decorations

| Decoration | Category | Cost | Effect |
|------------|----------|------|--------|
| Wooden Table | Furniture | §500 | None (decorative) |
| Cozy Bed | Furniture | §2,000 | 💤 **Full heal** when you rest |
| Mini PC | Special | §5,000 | 💻 **Access PC boxes** |
| Training Dummy | Special | §8,000 | ⚔️ **Train against Magikarp Lv.10** for EXP |
| Berry Planter | Plants | §3,000 | 🍓 **Grow berries** in your base |
| Legends Poster | Posters | §1,000 | None (decorative) |
| Fairy Lights | Lights | §1,500 | None (decorative) |
| Vendor Stall | Special | §10,000 | 🛍️ **Personal shop** in your base |

---

## Configuration

All settings are in `000_Config.rb` inside the `SecretBase` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log base events |
| `BASE_INTERIOR_MAP_ID` | `100` | Map used as base interior |
| `MAX_INVITED_NPCS` | `3` | Max NPCs you can invite |

### Training Dummy

| Constant | Default | Description |
|----------|---------|-------------|
| `TRAINING_DUMMY_SPECIES` | `:MAGIKARP` | Species for training battles |
| `TRAINING_DUMMY_LEVEL` | `10` | Dummy Pokémon level |
| `TRAINING_DUMMY_COOLDOWN_STEPS` | `500` | Steps between training sessions |

---

## Script Calls

```ruby
# Enter the player's base
SecretBase.enter

# Place a decoration
SecretBase.place(:COZY_BED, x, y)

# Remove a decoration
SecretBase.remove(:COZY_BED)

# Invite an NPC
SecretBase.invite(:LYRA)

# Check if base is established
SecretBase.established?  # => true/false
```

---

## File Structure

```
Plugins/[SC] Secret Base/
  meta.txt          — Plugin metadata
  000_Config.rb     — Locations, decorations, training, NPCs
  001_Core.rb       — Base state, decoration placement, functional logic
  002_Additions.rb  — UI, event hooks, NPC dialogue
```
