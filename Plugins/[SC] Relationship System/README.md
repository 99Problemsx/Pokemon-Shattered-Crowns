# Relationship System

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

A point-based companion relationship system with 6 tiers. Relationships change through dialogue, battle results, and event decisions. Ties into companion battles, party banter, and story outcomes.

---

## Features

- **Point-Based Relationships** -- Each companion has a numeric value that rises/falls through gameplay
- **6 Relationship Tiers** -- Stranger, Acquaintance, Friend, Close Friend, Trusted Ally, Soulbound
- **Battle Hooks** -- Bonus points when companions fight alongside you successfully
- **Dialogue Integration** -- NPCs react differently based on relationship level
- **Event Tag Support** -- Modify relationships from map events with comment tags
- **UI Scene** -- Dedicated RelationshipScene with portraits and tier indicators
- **Guardian Legendaries** -- Ties to the Chosen/legendary companion system

---

## Configuration

Module: `RelationshipSystem`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `CHARACTERS` | `{LYRA, KAEL, ALDRIC, RAGNAR}` | Defined companions |
| `TIER_THRESHOLDS` | 6 tiers | Point ranges per tier |

---

## Event Tag

Place a **Comment** on any map event:

```
[Relationship CHAR +/-N]
```

### Examples

```
[Relationship LYRA +5]
[Relationship KAEL -3]
```

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbRelationshipLevel(char)` | Get current tier for a character |
| `pbRelationshipPoints(char)` | Get raw point value |
| `pbChangeRelationship(char, amount)` | Add/subtract points |

---

## Cross-Plugin Integration

- **Party Banter** -- Banter triggers scale with relationship tier
- **Companion Battles** -- Higher tier = better AI decisions in tag battles
- **Trainer Card Ex** -- Relationship badges on trainer card
- **Morality System** -- Some moral choices affect relationships

---

## File Structure

```
[SC] Relationship System/
  meta.txt              - Plugin metadata
  000_Config.rb         - Configuration constants
  001_RelationshipCore.rb - Save data, tier logic, event hooks
  002_RelationshipUI.rb - RelationshipScene display
```
