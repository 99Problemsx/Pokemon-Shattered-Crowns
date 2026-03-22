# Wanted Board

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Rotating bounty board with automatic progress tracking. Offers catch, defeat, and fetch missions that refresh periodically.

---

## Features

- **3 Bounty Types** -- Catch, Defeat, Fetch (collect items)
- **Rotating Selection** -- Board refreshes with new bounties after a step count
- **Auto-Tracking** -- Progress is detected automatically (catches, KOs, item pickups)
- **Max Active Limit** -- Player can only have a limited number of active bounties
- **Reward Variety** -- Money, items, and reputation upon completion

---

## Configuration

Module: `WantedBoard`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `BOUNTIES` | 5+ | Bounty definitions |
| `BOARD_SIZE` | `3` | Bounties shown at once |
| `REFRESH_STEPS` | `2000` | Steps before new bounties appear |
| `MAX_ACTIVE` | `2` | Max simultaneous active bounties |

---

## Bounty Types

| Type | Example | Tracking |
|------|---------|----------|
| Catch | "Catch 3 Pikachu" | Auto-detected on catch |
| Defeat | "Defeat 5 Trainers on Route 3" | Auto-detected on battle win |
| Fetch | "Collect 10 Oran Berries" | Auto-detected from inventory |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbOpenWantedBoard` | Open the bounty board UI |
| `pbActiveBounties` | Get list of active bounties |
| `pbBountyComplete?(bounty_id)` | Check if a bounty is done |

---

## Cross-Plugin Integration

- **Reputation System** -- Bounty completion grants faction reputation
- **Quest Journal** -- Bounties tracked as Daily quests
- **Trainer Card Ex** -- Bounty completion count displayed

---

## File Structure

```
[SC] Wanted Board/
  meta.txt              - Plugin metadata
  000_Config.rb         - Bounty definitions, board settings
  001_WantedCore.rb     - Board management, auto-tracking, reward distribution
```
