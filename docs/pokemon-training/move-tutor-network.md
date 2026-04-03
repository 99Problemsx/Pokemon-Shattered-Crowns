# Move Tutor Network

**Version:** 1.0.0\
**Module:** `MoveTutorNetwork`\
**Requires:** None

Five Move Tutors are hidden across Asgheim and the Forgotten Region, each specializing in different move types and accepting different currencies. Discover them, track them in your journal, and teach your Pokémon powerful moves.

---

## Features

| Feature | Description |
|---------|-------------|
| **5 Tutors** | Spread across both regions |
| **3 Currencies** | Shards (Stardust), Money, or Battle Points |
| **Discovery Tracking** | Journal tracks which tutors you've found |
| **Codex Integration** | Discovering a tutor adds a Lore Codex entry |
| **15+ Tutor Moves** | From Fire Punch to Draco Meteor |

---

## The Tutors

| Tutor | Location | Currency | Moves |
|-------|----------|----------|-------|
| 🥋 **Master Hiro** | Asgheim City Dojo | Shards | Fire Punch (4), Ice Punch (4), Thunder Punch (4), Drain Punch (6) |
| ❄️ **Old Frost** | Frostpeak Summit | Shards | Icicle Crash (6), Iron Head (6), Zen Headbutt (4) |
| ⚡ **Storm Sage** | Stormhaven Shrine | Money | Hurricane (§8k), Thunderbolt (§5k), Heat Wave (§6k) |
| 📚 **Professor Wei** | Astoria Academy | Shards | Earth Power (6), Signal Beam (4), Dark Pulse (6), Aura Sphere (8) |
| ❓ **???** | Void Rift Entrance | Shards | Draco Meteor (10), Outrage (8), Superpower (8) |

> **Shard currency** uses Stardust (`SHARD_ITEM = :STARDUST`).

---

## Configuration

All settings are in `000_Config.rb` inside the `MoveTutorNetwork` module.

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `SHARD_ITEM` | `:STARDUST` | Item used as shard currency |
| `CODEX_ON_DISCOVER` | `true` | Add Lore Codex entry on discovery |

---

## Script Calls

```ruby
# Open a specific tutor's menu
MoveTutorNetwork.open(:ASGHEIM_DOJO)

# Mark a tutor as discovered
MoveTutorNetwork.discover(:VOID_WANDERER)

# Check if discovered
MoveTutorNetwork.discovered?(:FROSTPEAK_HERMIT)  # => true/false

# Get all discovered tutors
MoveTutorNetwork.discovered_tutors   # => [:ASGHEIM_DOJO, :STORMHAVEN_SAGE]
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Lore Codex](../story-narrative/lore-codex.md) | Discovery adds codex entry |
| [Map Fog of War](../world-exploration/map-fog-of-war.md) | Tutor locations marked on revealed map |
| [Crafting System](../player-systems/crafting-system.md) | Stardust also used for crafting |

---

## File Structure

```
Plugins/[SC] Move Tutor Network/
  meta.txt          — Plugin metadata
  000_Config.rb     — Tutor definitions, moves, currencies
  001_Core.rb       — Discovery tracking, move teaching logic
  002_Additions.rb  — UI, event hooks, codex integration
```
