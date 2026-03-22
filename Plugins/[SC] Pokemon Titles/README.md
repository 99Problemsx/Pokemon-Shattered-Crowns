# Pokemon Titles

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Earned epithets for Pokemon based on battle achievements. Titles appear alongside the Pokemon's name in UI screens.

---

## Features

- **10 Unique Titles** -- Each unlocked by a specific combat achievement
- **Priority System** -- When multiple titles are earned, highest priority displays
- **Name Integration** -- `name_with_title` method for UI display
- **Per-Pokemon Tracking** -- Each Pokemon tracks its own achievements independently

---

## Configuration

Module: `PokemonTitles`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `TITLES` | 10 | Title definitions with unlock conditions |

---

## Title Examples

| Title | Unlock Condition |
|-------|-----------------|
| The Undefeated | Never fainted in 50+ battles |
| Dragon Slayer | Defeated 10 Dragon-type opponents |
| Champion's Bane | Defeated a Champion-level trainer's ace |
| Giant Killer | Defeated an opponent 20+ levels higher |
| Iron Wall | Took 500+ hits without fainting |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pokemon.name_with_title` | Get name + title string for display |
| `pokemon.has_title?(title_id)` | Check if Pokemon has earned a title |
| `pokemon.titles` | Get all earned titles |

---

## Cross-Plugin Integration

- **Summary Screen** -- Titles displayed on Pokemon summary
- **Trainer Card Ex** -- Title collection tracked
- **Memory Lane** -- Title earned recorded as milestone

---

## File Structure

```
[SC] Pokemon Titles/
  meta.txt              - Plugin metadata
  000_Config.rb         - Title definitions and unlock conditions
  001_TitleCore.rb      - Achievement tracking, title assignment, display method
```
