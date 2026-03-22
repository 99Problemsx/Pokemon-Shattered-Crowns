# Pokemon Affection

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Per-Pokemon affection values with 5 levels and battle bonuses. Affection grows through battles, items, and walking. High affection grants combat advantages.

---

## Features

- **Per-Pokemon Tracking** -- Each Pokemon has its own affection value
- **5 Affection Levels** -- Escalating tiers with increasing bonuses
- **Battle Bonuses** -- Endure at 1 HP, crit boost, status cure, EXP bonus
- **Multiple Gain Sources** -- Battling, items, walking, Following Pokemon interaction
- **Loss Conditions** -- Fainting, long box storage, trading

---

## Configuration

Module: `PokemonAffection`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `LEVEL_THRESHOLDS` | 5 levels | Point ranges per affection level |
| `GAIN_BATTLE` | varies | Points gained from battle participation |
| `GAIN_ITEM` | varies | Points from using items |
| `GAIN_WALK` | varies | Points from walking together |
| `LOSS_FAINT` | varies | Points lost on fainting |

---

## Battle Bonuses by Level

| Level | Bonus |
|-------|-------|
| 1 | Small EXP bonus |
| 2 | Occasional status self-cure |
| 3 | Boosted critical hit rate |
| 4 | Chance to endure a KO at 1 HP |
| 5 | All bonuses at maximum rates + extra EXP |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbAffectionLevel(pokemon)` | Get affection level (1-5) |
| `pbChangeAffection(pokemon, amount)` | Modify affection points |

---

## Cross-Plugin Integration

- **Following Pokemon EX** -- Walking with follower increases affection
- **Party Banter** -- Banter can reference affection levels
- **Memory Lane** -- Affection milestones recorded

---

## File Structure

```
[SC] Pokemon Affection/
  meta.txt              - Plugin metadata
  000_Config.rb         - Level thresholds, gain/loss rates, bonus config
  001_AffectionCore.rb  - Save data, level calculation, gain/loss hooks
  002_AffectionBattle.rb - Battle bonus implementation
```
