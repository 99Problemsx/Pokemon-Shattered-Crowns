# Reputation System

**Version:** 1.0.0\
**Module:** `ReputationSystem`\
**Requires:** None

Five factions control the world of Shattered Crowns — and they're all watching you. Complete quests, make story choices, and defeat (or spare) enemies to shift your standing with each faction. Your reputation affects **shop prices**, **quest access**, **NPC dialogue**, and **restricted areas**.

---

## Features

| Feature | Description |
|---------|-------------|
| **5 Factions** | Each with unique identity, territory, and questlines |
| **Per-Faction Tracking** | Independent reputation value for each faction |
| **Shop Price Modifiers** | Prices range from 150% (Hated) to 75% (Revered) |
| **Tiered Access** | Quests, areas, and NPCs unlock/lock based on standing |
| **Dynamic Reactions** | NPCs change dialogue based on your faction tier |

---

## The Five Factions

| Faction | Starting Rep | Territory | Identity |
|---------|-------------|-----------|----------|
| 🛡️ **Asgheim Guard** | 0 | Asgheim capital & routes | The kingdom's protectors — lawful, rigid, honorable |
| 🌑 **Void Resistance** | 0 | Forgotten Region hideouts | Rebels fighting Nidhoggr's corruption — desperate, secretive |
| 💰 **Merchant Guild** | 0 | Trade cities & markets | Profit above all — will deal with anyone who pays |
| 📚 **Scholar's Circle** | +10 | Libraries & ruins | Seekers of truth — respect knowledge and discovery |
| ⚔️ **Astoria Remnants** | −20 | Scattered outposts | Remnants of a fallen kingdom — bitter, distrustful of outsiders |

---

## Reputation Tiers

| Tier | Threshold | Shop Modifier | Effect |
|------|-----------|--------------|--------|
| 💀 **Hated** | Very Low | **×1.50** (50% markup) | Barred from faction shops, quests, and areas |
| 🔴 **Hostile** | Low | ×1.25 | Limited access, hostile NPC dialogue |
| ⚪ **Neutral** | 0 | ×1.00 | Standard interaction |
| 🔵 **Friendly** | Medium | ×0.90 | Access to faction quests and special stock |
| 🟢 **Honored** | High | ×0.80 | Exclusive quests, rare items in shops |
| 🟡 **Revered** | Very High | **×0.75** (25% discount) | Full access, faction-specific rewards and story content |

---

## How Reputation Changes

| Action | Example | Effect |
|--------|---------|--------|
| Complete faction quest | Deliver supplies to Asgheim Guard | **+10 to +25** with that faction |
| Story choice alignment | Side with Void Resistance against the Guard | **+15 Void, −10 Guard** |
| Defeat faction enemies | Beat Astoria Remnant raiders | **−5 Astoria, +5 Guard** |
| Spare faction members | Let a Void scout escape | **+5 Void** |
| Donate items/money | Fund the Scholar's Circle | **+5 to +15 Scholar** |
| Betray a faction | Leak Void Resistance plans | **−20 Void, +10 Guard** |

> **Key design note:** Factions oppose each other. Helping the Asgheim Guard often angers the Void Resistance, and vice versa. The Merchant Guild is mostly neutral — they respect money above politics.

---

## Configuration

All settings are in `000_Config.rb` inside the `ReputationSystem` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log reputation changes to console |

### Faction Definitions

```ruby
FACTIONS = {
  ASGHEIM_GUARD:    { name: "Asgheim Guard",    start: 0   },
  VOID_RESISTANCE:  { name: "Void Resistance",  start: 0   },
  MERCHANT_GUILD:   { name: "Merchant Guild",   start: 0   },
  SCHOLARS_CIRCLE:  { name: "Scholar's Circle", start: 10  },
  ASTORIA_REMNANTS: { name: "Astoria Remnants", start: -20 },
}
```

### Shop Price Modifiers

| Constant | Default | Description |
|----------|---------|-------------|
| `SHOP_MOD_HATED` | `1.5` | 150% prices when Hated |
| `SHOP_MOD_REVERED` | `0.75` | 75% prices when Revered |

---

## Tutorial: Working with Reputation

### Step 1: Change Reputation in Events

```ruby
# Player helped the Asgheim Guard
ReputationSystem.shift(:ASGHEIM_GUARD, 15)

# That angered the Void Resistance
ReputationSystem.shift(:VOID_RESISTANCE, -10)
```

### Step 2: Gate Content by Standing

```ruby
# Only if the player is Honored or higher with the Scholar's Circle
if ReputationSystem.tier(:SCHOLARS_CIRCLE) >= :HONORED
  # Unlock the hidden archive
end

# Check if player can access a faction shop
if ReputationSystem.tier(:ASTORIA_REMNANTS) != :HATED
  # Open the Remnant black market
end
```

### Step 3: Apply Shop Modifiers

Shop price modifiers apply automatically when the player enters a tagged shop. In the event, tag the shop with a faction:

```ruby
# Open a Merchant Guild shop (prices adjusted by reputation)
ReputationSystem.open_faction_shop(:MERCHANT_GUILD)
```

---

## Script Calls

```ruby
# Get reputation value
ReputationSystem.points(:ASGHEIM_GUARD)       # => 45

# Get reputation tier
ReputationSystem.tier(:VOID_RESISTANCE)        # => :FRIENDLY

# Shift reputation
ReputationSystem.shift(:SCHOLARS_CIRCLE, 10)
ReputationSystem.shift(:ASTORIA_REMNANTS, -5)

# Set to exact value
ReputationSystem.set(:MERCHANT_GUILD, 0)

# Get shop price modifier for a faction
ReputationSystem.shop_modifier(:ASGHEIM_GUARD) # => 0.9

# Open a faction-modified shop
ReputationSystem.open_faction_shop(:MERCHANT_GUILD)

# Get all factions at a tier
ReputationSystem.at_tier(:REVERED)             # => [:SCHOLARS_CIRCLE]
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Morality System](../story-narrative/morality-system.md) | Alignment shifts often cause faction shifts |
| [Quest Journal](quest-journal.md) | Faction quests appear when reputation is high enough |
| [Wanted Board](wanted-board.md) | Bounties come from specific factions |
| [Nemesis System](../battle-systems/nemesis-system.md) | Clearing nemeses boosts local faction reputation |
| [Crafting System](crafting-system.md) | Some recipes are sold only by Honored+ faction shops |

---

## File Structure

```
Plugins/[SC] Reputation System/
  meta.txt          — Plugin metadata
  000_Config.rb     — Factions, tiers, shop modifiers
  001_Core.rb       — Point tracking, tier logic, shop integration
  002_Additions.rb  — NPC dialogue hooks, area gating, UI
```
