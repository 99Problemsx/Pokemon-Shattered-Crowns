# Move Tutor Network

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

5 distributed move tutors across the game world with discovery tracking and multiple payment currencies.

---

## Features

- **5 Tutors** -- Each in a different location with unique move pools
- **Discovery Tracking** -- Tutors must be found before they can be used
- **Multi-Currency** -- Pay with Shards, Money, or Battle Points depending on the tutor
- **Codex Integration** -- Discovering a tutor registers a Lore Codex entry

---

## Configuration

Module: `MoveTutorNetwork`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `TUTORS` | 5 | Tutor definitions with locations and move lists |
| `SHARD_ITEM` | varies | Item used as shard currency |
| `CODEX_ON_DISCOVER` | `true` | Auto-register codex entry on discovery |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbDiscoverTutor(tutor_id)` | Mark a tutor as discovered |
| `pbTutorDiscovered?(tutor_id)` | Check if tutor has been found |
| `pbOpenTutorMenu(tutor_id)` | Open the move teaching interface |

---

## Cross-Plugin Integration

- **Lore Codex** -- Each tutor discovery registers an entry

---

## File Structure

```
[SC] Move Tutor Network/
  meta.txt              - Plugin metadata
  000_Config.rb         - Tutor definitions, currencies, move lists
  001_TutorCore.rb      - Discovery tracking, payment handling, teach interface
```
