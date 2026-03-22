# Lore Codex

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

A collectible in-game encyclopedia with 6 categories. Entries are discovered through exploration, events, battles, and cross-plugin triggers. Provides a dedicated UI scene for browsing collected lore.

---

## Features

- **6 Categories** -- Mythology, Characters, Locations, History, Bestiary, Artifacts
- **Discovery System** -- Entries unlock as you play, not all at once
- **CodexScene UI** -- Full browsing interface with search and category filtering
- **Cross-Plugin Hooks** -- Many other [SC] plugins register codex entries automatically
- **Completion Tracking** -- Percentage per category and overall

---

## Configuration

Module: `LoreCodex`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `CATEGORIES` | 6 | Mythology, Characters, Locations, History, Bestiary, Artifacts |

---

## Discovering Entries

### From Events

```ruby
codexDiscover(:ENTRY_ID)
```

### Automatic Discovery

Many plugins call `codexDiscover` automatically when relevant:
- Spirit Realm portals discovered
- Time Travel locations unlocked
- Ancestral Weapons evolved
- Rune System runes found
- Move Tutors discovered
- Weather Events special encounters

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `codexDiscover(entry_id)` | Unlock a codex entry |
| `pbCodexDiscovered?(entry_id)` | Check if entry is unlocked |
| `pbCodexCompletion` | Get overall completion percentage |
| `pbOpenCodex` | Open the CodexScene UI |

---

## Cross-Plugin Integration

- **Ancestral Weapons** -- Entry per weapon evolution stage
- **Spirit Realm** -- Portal discovery entries
- **Time Travel** -- Era discovery entries
- **Move Tutor Network** -- Tutor discovery entries
- **Rune System** -- Rune discovery entries
- **Crafting System** -- Recipe discovery entries
- **Trainer Card Ex** -- Achievement badge for codex completion

---

## File Structure

```
[SC] Lore Codex/
  meta.txt              - Plugin metadata
  000_Config.rb         - Configuration and category definitions
  001_CodexCore.rb      - Save data, discovery logic, completion tracking
  002_CodexScene.rb     - UI scene for browsing entries
  Data/                 - Codex entry definitions
```
