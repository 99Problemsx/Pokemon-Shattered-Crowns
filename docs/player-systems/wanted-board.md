# Wanted Board

**Version:** 1.0.0\
**Module:** `WantedBoard`\
**Requires:** None

City bounty boards offer **rotating contracts** — catch a specific Pokémon, defeat trainers on a route, hunt a rampaging beast, or deliver items. Complete bounties for money, items, and Merchant Guild reputation.

---

## Features

| Feature | Description |
|---------|-------------|
| **5 Bounty Types** | Catch, defeat trainer, defeat wild, fetch item, catch type |
| **Rotating Board** | 3 bounties available, refreshes every 2000 steps |
| **Max 2 Active** | Accept up to 2 bounties at once |
| **Difficulty Tiers** | 1–4, gated by badge count |
| **Reputation Bonus** | +5 Merchant Guild reputation per completion |

---

## Example Bounties

| Bounty | Type | Difficulty | Min Badges | Reward |
|--------|------|-----------|------------|--------|
| Catch an Eevee | Catch | 1 | 0 | §3,000 + Rare Candy |
| Clear the Route | Defeat 3 trainers | 2 | 2 | §5,000 |
| Gyarados Hunt | Defeat wild | 3 | 3 | §8,000 + Mystic Water |
| Stardust Delivery | Fetch 3 Stardust | 1 | 1 | §4,000 |
| Dragon Tamer's Request | Catch Dragon-type | 4 | 5 | §12,000 + Dragon Scale |

---

## Configuration

All settings are in `000_Config.rb` inside the `WantedBoard` module.

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `BOARD_SIZE` | `3` | Bounties shown at once |
| `REFRESH_STEPS` | `2000` | Steps before board refreshes |
| `MAX_ACTIVE` | `2` | Max bounties player can hold |
| `REPUTATION_BONUS_FACTION` | `:MERCHANT_GUILD` | Faction rewarded |
| `REPUTATION_BONUS_AMOUNT` | `5` | Rep points per bounty |

---

## Script Calls

```ruby
# Open the wanted board UI
WantedBoard.open

# Accept a bounty
WantedBoard.accept(:CATCH_EEVEE)

# Complete a bounty
WantedBoard.complete(:CATCH_EEVEE)

# Get active bounties
WantedBoard.active_bounties  # => [:CATCH_EEVEE, :HUNT_GYARADOS]

# Force refresh the board
WantedBoard.refresh
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Quest Journal](quest-journal.md) | Bounties auto-create Daily quests |
| [Reputation System](reputation-system.md) | Completions award Merchant Guild rep |
| [Crafting System](crafting-system.md) | Fetch bounties may require craftable items |

---

## File Structure

```
Plugins/[SC] Wanted Board/
  meta.txt          — Plugin metadata
  000_Config.rb     — Bounty pool, board settings, rewards
  001_Core.rb       — Bounty tracking, rotation, completion
  002_Additions.rb  — UI, event hooks, reputation integration
```
