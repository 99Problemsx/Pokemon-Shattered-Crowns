# Trainer Card Ex

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Extended trainer card with 11 achievement badges, lifetime statistics, and a team showcase. Badges check conditions across all other [SC] plugins.

---

## Features

- **11 Achievement Badges** -- Each awarded by checking conditions from other plugins
- **Lifetime Stats** -- Aggregate gameplay statistics displayed on the card
- **Team Showcase** -- Current party displayed with Pokemon Titles integration
- **Cross-Plugin Checks** -- Badges use `defined?()` guards so missing plugins are safely skipped

---

## Configuration

Module: `TrainerCardEx`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `BADGES_DISPLAY` | 10+ | Badge definitions with condition procs |
| `SHOW_BATTLE_STATS` | `true` | Display battle statistics |
| `SHOW_QUEST_STATS` | `true` | Display quest statistics |
| `SHOW_EXPLORATION` | `true` | Display exploration percentage |
| `SHOW_MORALITY` | `true` | Display alignment |
| `SHOW_ARENA` | `true` | Display arena streak |
| `SHOW_BOUNTIES` | `true` | Display bounty count |
| `SHOW_REPUTATION` | `true` | Display faction standings |

---

## Achievement Badges

| Badge | Source Plugin | Condition |
|-------|-------------|-----------|
| Explorer | Map Fog of War | 100% map completion |
| Scholar | Lore Codex | 100% codex completion |
| Champion | Battle Arena | Clear Floor 10 |
| Hero/Villain | Morality System | Pure Light or Pure Dark |
| Bounty Hunter | Wanted Board | Complete 20 bounties |
| Quest Master | Quest Journal | All main quests completed |
| Runekeeper | Rune System | Collect all 8 runes |
| Nemesis Slayer | Nemesis System | Defeat a Rank 5 nemesis |
| Time Walker | Time Travel | Visit all time travel locations |
| Artisan | Crafting System | Discover all recipes |
| Soulbound | Relationship System | Max relationship with any companion |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbOpenTrainerCardEx` | Open the extended trainer card |
| `pbBadgeCount_Ex` | Get number of earned achievement badges |

---

## File Structure

```
[SC] Trainer Card Ex/
  meta.txt              - Plugin metadata
  000_Config.rb         - Badge definitions, stat toggle settings
  001_CardCore.rb       - Badge checking engine, stat aggregation
  002_CardScene.rb      - Trainer card UI display
```
