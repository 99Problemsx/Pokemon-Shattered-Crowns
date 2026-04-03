# Memory Lane

**Version:** 1.0.0\
**Module:** `MemoryLane`\
**Requires:** None

At the end of your journey, Memory Lane presents a **cinematic recap** of your team's lifetime — every battle won, every step walked, every evolution witnessed. It's the credits scene for your Pokémon.

---

## Features

| Feature | Description |
|---------|-------------|
| **Per-Pokémon Stats** | Battles won, KOs, times fainted, steps walked, level-ups, moves learned, evolutions |
| **Journey Milestones** | Auto-recorded snapshots of key story moments |
| **4 Milestone Categories** | Story, Battle, Exploration, Friendship |
| **Custom BGM** | Optional special music for the Memory Lane screen |
| **Manual Milestone Recording** | Create milestones from events at any time |

---

## Tracked Stats

| Stat | Config Key | Description |
|------|-----------|-------------|
| ⚔️ Battles Won | `TRACK_BATTLES_WON` | Total trainer battles won |
| 💀 KOs | `TRACK_KOS` | Total Pokémon knocked out |
| 😵 Times Fainted | `TRACK_TIMES_FAINTED` | How many times this Pokémon fainted |
| 👣 Steps Walked | `TRACK_STEPS_WALKED` | Steps as lead party member |
| ⬆️ Level-Ups | `TRACK_LEVEL_UPS` | Number of times leveled up |
| 📖 Moves Learned | `TRACK_MOVES_LEARNED` | Total moves learned |
| 🔄 Evolutions | `TRACK_EVOLUTIONS` | Times evolved |

---

## Milestone Categories

| Category | Icon | Example Milestone |
|----------|------|-------------------|
| 📕 **Story** | Crown | "Defeated Gym Leader Freya" |
| ⚔️ **Battle** | Sword | "First Nemesis defeated" |
| 🌍 **Exploration** | Map | "Entered the Spirit Realm for the first time" |
| 💛 **Friendship** | Heart | "Lyra reached Bonded tier" |

---

## Configuration

All settings are in `000_Config.rb` inside the `MemoryLane` module.

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log milestone recording |
| `BGM_LANE` | `nil` | Special BGM for Memory Lane (nil = default) |
| `SE_OPEN` | `"GUI sel decision"` | Sound when opening Memory Lane |

---

## Tutorial: Recording Milestones

### Step 1: Record a Milestone in an Event

```ruby
# Record a story milestone
pbMemoryMilestone(:FIRST_GYM, "Defeated the first Gym Leader!")

# Record an exploration milestone
pbMemoryMilestone(:SPIRIT_REALM_FIRST, "Entered the Spirit Realm for the first time")
```

### Step 2: Open Memory Lane

```ruby
# Open the Memory Lane screen (usually at end-game)
MemoryLane.open
```

---

## Script Calls

```ruby
# Open Memory Lane UI
MemoryLane.open

# Record a milestone
pbMemoryMilestone(:KEY, "Description text")

# Get stats for a Pokémon
MemoryLane.stats(pkmn)  # => { battles_won: 42, kos: 38, ... }

# Get all milestones
MemoryLane.milestones   # => [{key: :FIRST_GYM, text: "...", category: :Story}, ...]
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Relationship System](relationship-system.md) | Relationship milestones recorded automatically |
| [Pokémon Titles](../pokemon-training/pokemon-titles.md) | Titles earned are shown in the recap |
| [Quest Journal](../player-systems/quest-journal.md) | Major quest completions become milestones |
| [Flashback System](flashback-system.md) | Flashback completions recorded |

---

## File Structure

```
Plugins/[SC] Memory Lane/
  meta.txt          — Plugin metadata
  000_Config.rb     — Tracked stats, milestone categories, UI settings
  001_Core.rb       — Stat tracking, milestone recording, UI rendering
  002_Additions.rb  — Battle hooks, evolution hooks, step counter
```
