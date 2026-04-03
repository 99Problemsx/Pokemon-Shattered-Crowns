# Quest Journal

**Version:** 1.0.0\
**Module:** `QuestJournal`\
**Requires:** None

Track every quest in Shattered Crowns — from the main story to hidden secrets. The journal organizes quests into four categories, tracks objectives with checkboxes, shows rewards, and marks active quests on the Town Map.

---

## Features

| Feature | Description |
|---------|-------------|
| **4 Quest Categories** | Main, Side, Daily, and Secret quests |
| **4 Quest States** | Hidden → Active → Complete / Failed |
| **Objective Tracking** | Per-quest checklist with auto-updating progress |
| **Map Markers** | Active quests show a marker on the Town Map |
| **Reward Display** | Items, money, and reputation rewards shown before completion |
| **Paginated UI** | 8 quests per page with category tabs |

---

## Quest Categories

| Category | Icon | Description |
|----------|------|-------------|
| 📕 **Main** | Crown icon | Core story quests — always tracked, cannot be abandoned |
| 📗 **Side** | Scroll icon | Optional quests from NPCs and exploration |
| 📘 **Daily** | Clock icon | Repeatable quests that reset each day |
| 📙 **Secret** | Lock icon | Hidden quests discovered through lore, exploration, or specific actions |

---

## Quest States

```
  HIDDEN ──► ACTIVE ──► COMPLETE
                │
                └──────► FAILED
```

| State | Value | Description |
|-------|-------|-------------|
| **Hidden** | `0` | Quest exists but player hasn't discovered it yet |
| **Active** | `1` | Quest is in the journal, objectives trackable |
| **Complete** | `2` | All objectives met, rewards given |
| **Failed** | `3` | Quest failed (timed out, wrong choice, etc.) |

---

## Configuration

All settings are in `000_Config.rb` inside the `QuestJournal` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log quest state changes to console |
| `QUESTS_PER_PAGE` | `8` | Number of quests shown per page in the UI |

### Quest Definitions

Quests are defined in the `QUESTS` hash:

```ruby
QUESTS = {
  CROWN_OF_ASGHEIM: {
    name:       "The Crown of Asgheim",
    category:   :MAIN,
    description: "Find the first shard of the shattered crown.",
    objectives: [
      "Speak to Elder Aldric in Asgheim",
      "Travel to the Ruins of Fenrir",
      "Defeat the Void Guardian",
      "Retrieve the Crown Shard",
    ],
    rewards:    { items: [:RARECANDY], money: 5000 },
  },
  # ... more quests
}
```

---

## Tutorial: Creating a Quest

### Step 1: Define the Quest in Config

Add an entry to the `QUESTS` hash in `000_Config.rb` (see example above).

### Step 2: Activate the Quest via Event

```ruby
# Activate a quest (changes from HIDDEN to ACTIVE)
QuestJournal.activate(:CROWN_OF_ASGHEIM)
```

### Step 3: Update Objectives

```ruby
# Mark an objective as complete (by index, 0-based)
QuestJournal.complete_objective(:CROWN_OF_ASGHEIM, 0)  # "Speak to Elder Aldric"
QuestJournal.complete_objective(:CROWN_OF_ASGHEIM, 1)  # "Travel to the Ruins"
```

### Step 4: Complete or Fail the Quest

```ruby
# Complete the quest — awards all rewards
QuestJournal.complete(:CROWN_OF_ASGHEIM)

# Or fail it
QuestJournal.fail(:CROWN_OF_ASGHEIM)
```

### Step 5: Open the Journal UI

```ruby
# Open the quest journal screen
QuestJournal.open

# Open to a specific category
QuestJournal.open(:SIDE)
```

---

## Script Calls

```ruby
# Activate a quest
QuestJournal.activate(:QUEST_ID)

# Complete an objective
QuestJournal.complete_objective(:QUEST_ID, index)

# Complete a quest
QuestJournal.complete(:QUEST_ID)

# Fail a quest
QuestJournal.fail(:QUEST_ID)

# Get quest state
QuestJournal.state(:QUEST_ID)            # => :HIDDEN, :ACTIVE, :COMPLETE, :FAILED

# Check if a quest is active
QuestJournal.active?(:QUEST_ID)          # => true/false

# Check if a quest is complete
QuestJournal.complete?(:QUEST_ID)        # => true/false

# Get all active quests
QuestJournal.active_quests               # => [:QUEST_A, :QUEST_B, ...]

# Get all quests in a category
QuestJournal.quests_in(:DAILY)           # => [:DAILY_HUNT, :DAILY_GATHER, ...]

# Get objective progress
QuestJournal.objectives(:QUEST_ID)       # => [true, false, false, false]

# Open the journal UI
QuestJournal.open
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Wanted Board](wanted-board.md) | Bounty hunts automatically create Daily quests |
| [Reputation System](reputation-system.md) | Quest completion can award faction reputation |
| [Morality System](../story-narrative/morality-system.md) | Some quests are gated behind alignment tiers |
| [Lore Codex](../story-narrative/lore-codex.md) | Discovering codex entries can activate Secret quests |
| [Map Fog of War](../world-exploration/map-fog-of-war.md) | Active quest markers only show on revealed map areas |

---

## File Structure

```
Plugins/[SC] Quest Journal/
  meta.txt          — Plugin metadata
  000_Config.rb     — Quest definitions, categories, UI settings
  001_Core.rb       — State tracking, objective logic, rewards
  002_Additions.rb  — UI, map markers, event hooks
```
