# Destiny Board

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Skill tree system with 3 branches tied to the Three Chosen. Spend Fate Points to unlock passive perks that affect gameplay.

---

## Features

- **3 Branches** -- Zacian (Combat), Xerneas (Life), Yveltal (Shadow)
- **12 Perks** -- 4 per branch with tier prerequisites
- **Fate Points** -- Earned through story progression, spent to unlock perks
- **Passive Effects** -- Always-active bonuses to catch rate, EXP, money, encounters, healing
- **UI** -- Skill tree display for browsing and unlocking perks

---

## Configuration

Module: `DestinyBoard`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `START_POINTS` | `0` | Starting Fate Points |
| `BRANCHES` | 3 | Zacian, Xerneas, Yveltal |
| `PERKS` | `{...}` | Perk definitions per branch |

---

## Branches and Perks

### Zacian Branch (Combat)

| Perk | Tier | Effect |
|------|------|--------|
| Steel Resolve | 1 | +10% physical damage |
| Blade Mastery | 2 | +15% crit rate |
| War Cry | 3 | +20% EXP from trainer battles |
| Crown of Swords | 4 | All Steel moves boosted |

### Xerneas Branch (Life)

| Perk | Tier | Effect |
|------|------|--------|
| Life Spring | 1 | +10% healing effectiveness |
| Nature's Gift | 2 | +15% catch rate |
| Yggdrasil's Blessing | 3 | Party heals 1 HP/step outdoors |
| Tree of Life | 4 | Fairy-type moves boosted |

### Yveltal Branch (Shadow)

| Perk | Tier | Effect |
|------|------|--------|
| Dark Whisper | 1 | +10% money from battles |
| Shadow Step | 2 | -25% encounter rate |
| Death's Touch | 3 | +20% Dark-type damage |
| Oblivion Wing | 4 | Dark moves drain HP |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbOpenDestinyBoard` | Open the skill tree UI |
| `pbFatePoints` | Get current Fate Point balance |
| `pbAddFatePoints(n)` | Grant Fate Points |
| `pbHasPerk?(perk_id)` | Check if a perk is unlocked |
| `pbUnlockPerk(perk_id)` | Unlock a perk (costs Fate Points) |

---

## Cross-Plugin Integration

- **Ancestral Weapons** -- Complementary power system
- **Morality System** -- Some perks may require alignment thresholds

---

## File Structure

```
[SC] Destiny Board/
  meta.txt              - Plugin metadata
  000_Config.rb         - Branch/perk definitions, Fate Point economy
  001_DestinyCore.rb    - Save data, perk unlock logic, passive effect hooks
  002_DestinyScene.rb   - Skill tree UI
```
