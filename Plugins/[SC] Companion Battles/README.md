# Companion Battles

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Tag-team double battles with companion AI partners. 4 AI profiles control how companions behave in battle, with quality scaling based on relationship level.

---

## Features

- **Tag-Team Doubles** -- Fight alongside a companion in double battles
- **4 AI Profiles** -- Offensive, Defensive, Support, Balanced
- **Relationship Bonus** -- Higher relationship tier = smarter AI decisions
- **Companion Dialogue** -- Pre-battle and post-battle companion remarks
- **Configurable Companions** -- Define companion teams and AI preferences

---

## Configuration

Module: `CompanionBattles`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `COMPANIONS` | 4 | Companion definitions with teams |
| `AI_PROFILES` | 4 | AI behavior profiles |
| `MAX_COMPANION_POKEMON` | `3` | Pokemon per companion |

---

## AI Profiles

| Profile | Behavior |
|---------|----------|
| Offensive | Prioritizes damage-dealing moves, targets weaknesses |
| Defensive | Uses protect, screens, and status moves first |
| Support | Heals, buffs partner, uses status on opponents |
| Balanced | Mixes all strategies based on situation |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbStartCompanionBattle(companion_id, trainer_type, trainer_name)` | Start a tag-team battle |

---

## Cross-Plugin Integration

- **Relationship System** -- Relationship tier modifies AI quality
- **Party Banter** -- Battle-related banter from companion

---

## File Structure

```
[SC] Companion Battles/
  meta.txt              - Plugin metadata
  000_Config.rb         - Companion definitions, AI profiles
  001_CompanionCore.rb  - Battle setup, AI engine, dialogue hooks
```
