# Reputation System

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Faction-based reputation with 5 factions and 6 tiers. Reputation affects shop prices, NPC dialogue, and unlockable content.

---

## Features

- **5 Factions** -- Configurable faction groups with independent reputation tracks
- **6 Tiers** -- Hostile, Unfriendly, Neutral, Friendly, Honored, Exalted
- **Shop Price Modifiers** -- Discounts at high reputation, markups at low
- **NPC Reactions** -- Dialogue changes based on standing
- **Reputation UI** -- Dedicated ReputationScene with faction overview
- **Point Range** -- -100 to +100 per faction

---

## Configuration

Module: `ReputationSystem`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `FACTIONS` | 5 | Faction definitions |
| `TIERS` | 6 | Tier names and point thresholds |
| `SHOP_MODIFIERS` | `{...}` | Price multipliers per tier |
| `REP_MIN` / `REP_MAX` | -100 / +100 | Point bounds |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `repChange(faction, amount)` | Add/subtract reputation points |
| `pbReputationTier(faction)` | Get current tier for a faction |
| `pbReputationPoints(faction)` | Get raw point value |
| `pbOpenReputation` | Open the ReputationScene UI |

---

## Usage Example

```ruby
# From event scripts
repChange(:ASGHEIM_GUARD, +10)
repChange(:SHADOW_CULT, -5)

# Conditional check
if pbReputationTier(:ASGHEIM_GUARD) >= 4  # Honored
  pbMessage("Welcome, honored champion!")
end
```

---

## Cross-Plugin Integration

- **Quest Journal** -- Quest completion affects reputation
- **Wanted Board** -- Bounty rewards include reputation
- **Nemesis System** -- Defeating high-rank nemeses grants reputation
- **Trainer Card Ex** -- Faction standings displayed

---

## File Structure

```
[SC] Reputation System/
  meta.txt              - Plugin metadata
  000_Config.rb         - Factions, tiers, shop modifiers
  001_ReputationCore.rb - Save data, point tracking, event hooks
  002_ReputationScene.rb - UI display
```
