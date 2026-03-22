# Quest Journal

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

A full quest tracking system with main and side quests. 4 categories, 4 states, and a dedicated journal UI with filters and descriptions.

---

## Features

- **4 Categories** -- Main Story, Side Quest, Daily, Secret
- **4 Quest States** -- Not Started, Active, Completed, Failed
- **Journal UI** -- QuestJournalScene with category filters and scrolling
- **Quest Markers** -- Map indicators for active quest objectives
- **Event Helpers** -- Start, advance, and complete quests from event scripts

---

## Configuration

Module: `QuestJournal`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `CATEGORIES` | 4 | Main, Side, Daily, Secret |
| `QUESTS_PER_PAGE` | `8` | Display limit per page |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbStartQuest(quest_id)` | Begin a quest (set to Active) |
| `pbAdvanceQuest(quest_id, step)` | Update quest progress |
| `pbCompleteQuest(quest_id)` | Mark quest as Completed |
| `pbFailQuest(quest_id)` | Mark quest as Failed |
| `pbQuestActive?(quest_id)` | Check if quest is currently active |
| `pbQuestCompleted?(quest_id)` | Check if quest is done |
| `pbOpenQuestJournal` | Open the journal UI |

---

## Defining Quests

```ruby
QuestData.register(:FIND_THE_RUNE) do |q|
  q.name        = "The Lost Rune"
  q.category    = :SIDE
  q.description = "A scholar in Frosthollow has lost a rune fragment."
  q.steps       = ["Talk to the scholar", "Search the cave", "Return the rune"]
end
```

---

## Cross-Plugin Integration

- **Wanted Board** -- Bounties are tracked as Daily quests
- **Trainer Card Ex** -- Quest completion badge
- **Reputation System** -- Quest completion affects faction reputation

---

## File Structure

```
[SC] Quest Journal/
  meta.txt              - Plugin metadata
  000_Config.rb         - Configuration constants
  001_QuestCore.rb      - Save data, state management, event helpers
  002_QuestScene.rb     - QuestJournalScene UI
  Data/                 - Quest definitions
```
