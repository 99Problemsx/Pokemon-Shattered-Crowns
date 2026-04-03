# Spirit Realm

**Version:** 1.0.0\
**Module:** `SpiritRealm`\
**Requires:** None

Step through a Yggdrasil portal and enter the **Spirit Realm** — a twisted mirror of the living world, corrupted by Nidhoggr's void. The deeper you go, the stronger the **void corruption** grows. Shadow Pokémon roam the distorted corridors, and only by purifying the corruption can you reclaim what was lost.

---

## Features

| Feature | Description |
|---------|-------------|
| **Portal Entry** | Enter Spirit Realm dungeons through Yggdrasil portal events |
| **Void Corruption** | Corruption builds per step — visual/gameplay effects at thresholds |
| **Shadow Pokémon** | Boosted encounters with +5 levels and +10% stats |
| **4 Corruption Stages** | Screen tint → random damage → wild ambushes → forced exit |
| **Purification** | Walk 1000 steps in the real world to cleanse corruption |
| **Unique Loot** | Tier 3 runes, rare items, and lore codex fragments |

---

## Void Corruption

Every step you take in the Spirit Realm adds **1 point of corruption** (max 100). As corruption climbs, the realm fights back:

```
0%        25%         50%          75%          100%
│          │           │            │             │
▼          ▼           ▼            ▼             ▼
Normal   Screen     Random      Wild          FORCED
         Tint       Damage      Ambush         EXIT
```

| Threshold | Effect | Description |
|-----------|--------|-------------|
| **25%** | 🟣 Screen Tint | Purple-void overlay darkens the screen |
| **50%** | 💥 Random Damage | Party Pokémon take small HP damage each step |
| **75%** | 👾 Wild Ambush | Forced shadow Pokémon encounters at random |
| **100%** | 🚫 Forced Exit | Ejected from the Spirit Realm immediately |

> **Corruption persists** after leaving the realm. You must **purify** it by walking in the real world.

---

## Shadow Pokémon

Wild encounters in the Spirit Realm are **Shadow Pokémon** — void-touched versions with boosted stats:

| Boost | Value | Description |
|-------|-------|-------------|
| **Level Boost** | +5 | Shadow Pokémon are 5 levels higher than normal |
| **Stat Boost** | +10% | All stats multiplied by 1.10 |
| **Encounter Rate** | 30% | Base chance of encountering a shadow variant |

Shadow Pokémon can be **caught** like normal Pokémon. Once caught, they retain their level boost but lose the stat boost until **purified**.

---

## Purification

Corruption is cleansed by walking in the **real world** (not the Spirit Realm):

| Constant | Default | Description |
|----------|---------|-------------|
| `PURIFICATION_STEPS` | `1000` | Steps in the real world to fully cleanse corruption |

Purification reduces corruption proportionally — every step removes `CORRUPTION_MAX / PURIFICATION_STEPS` corruption. At 0 corruption, you're safe to re-enter.

---

## Configuration

All settings are in `000_Config.rb` inside the `SpiritRealm` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log corruption changes to console |

### Corruption Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `CORRUPTION_PER_STEP` | `1` | Corruption gained per step in the Spirit Realm |
| `CORRUPTION_MAX` | `100` | Maximum corruption before forced exit |
| `PURIFICATION_STEPS` | `1000` | Steps in the real world to fully purify |

### Corruption Thresholds

| Constant | Default | Description |
|----------|---------|-------------|
| `THRESHOLD_SCREEN_TINT` | `25` | Corruption level for screen tint effect |
| `THRESHOLD_RANDOM_DAMAGE` | `50` | Corruption level for random party damage |
| `THRESHOLD_WILD_AMBUSH` | `75` | Corruption level for forced encounters |
| `THRESHOLD_FORCED_EXIT` | `100` | Corruption level for ejection |

### Shadow Pokémon Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `SHADOW_LEVEL_BOOST` | `5` | Extra levels for shadow Pokémon |
| `SHADOW_STAT_BOOST` | `10` | % stat boost for shadow Pokémon |
| `SHADOW_ENCOUNTER_RATE` | `30` | % chance a wild encounter is a shadow variant |

---

## Tutorial: Setting Up a Spirit Realm Portal

### Step 1: Create a Portal Event

Place an event on the overworld that triggers portal entry:

```ruby
# Enter Spirit Realm dungeon map 42
SpiritRealm.enter_portal(42)
```

### Step 2: Tag the Dungeon Map

In the Spirit Realm map's metadata, mark it as a spirit realm zone:

```ruby
# In the map's event or metadata
SpiritRealm.register_map(42, "Void Hollow")
```

### Step 3: Place an Exit

```ruby
# Return to the overworld from the Spirit Realm
SpiritRealm.exit_portal
```

### Step 4: Check Corruption in Events

```ruby
# Check current corruption level
if SpiritRealm.corruption >= 50
  # Show warning: "The void claws at your mind..."
end
```

---

## Script Calls

```ruby
# Enter the Spirit Realm
SpiritRealm.enter_portal(map_id)

# Exit the Spirit Realm
SpiritRealm.exit_portal

# Get current corruption level (0–100)
SpiritRealm.corruption                # => 47

# Manually set corruption (debug)
SpiritRealm.set_corruption(0)

# Check if player is in the Spirit Realm
SpiritRealm.in_spirit_realm?          # => true/false

# Force purification
SpiritRealm.purify

# Check if a map is registered as Spirit Realm
SpiritRealm.spirit_realm_map?(42)     # => true/false
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Rune System](../pokemon-training/rune-system.md) | Tier 3 runes hidden in Spirit Realm shrines |
| [Lore Codex](../story-narrative/lore-codex.md) | Void corruption lore entries found inside |
| [Morality System](../story-narrative/morality-system.md) | Entering the Spirit Realm shifts alignment slightly Dark |
| [Weather Events](weather-events.md) | Spirit Realm has unique void weather |
| [Map Fog of War](map-fog-of-war.md) | Spirit Realm maps have their own fog layer |

---

## File Structure

```
Plugins/[SC] Spirit Realm/
  meta.txt          — Plugin metadata
  000_Config.rb     — Corruption, shadows, portals, thresholds
  001_Core.rb       — Corruption tracking, shadow generation, portal logic
  002_Additions.rb  — Step hooks, screen effects, battle modifications
```
