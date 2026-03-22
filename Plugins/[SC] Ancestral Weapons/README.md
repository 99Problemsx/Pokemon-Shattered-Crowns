# Ancestral Weapons

**Version:** 1.1.0  
**Essentials:** v21.1  
**Author:** Nononever

Three legendary relics tied to the Three Chosen that evolve through combat KOs. Each weapon applies percentage-based stat multipliers to all party Pokemon in battle and grants special effects at higher stages.

---

## Features

- **3 Weapons** -- Zacian's Fang (Steel/Physical), Xerneas' Antler (Fairy/Special), Yveltal's Talon (Dark/Mixed)
- **3 Stages Each** -- Base, Awakened, Divine -- evolved by accumulating KOs
- **Stat Multipliers** -- ATK, SpATK, and Speed boosts applied to all party Pokemon in battle
- **Special Effects** -- Crit boost, Steel Pierce, HP regen, Fairy Lifesteal, Dark Drain, Dark Fear (flinch)
- **Battle Integration** -- Hooks into pbCalcDamageMultipliers, pbSpeed, pbIsCritical?, pbAdditionalEffect, pbEffectAgainstTarget, and on_end_round

---

## Configuration

Module: `AncestralWeapons`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `WEAPONS` | 3 | Weapon definitions with stages |
| `EVOLUTION_THRESHOLD` | `{1=>0, 2=>50, 3=>150}` | KOs needed per stage |

---

## Weapon Stages

### Zacian's Fang (Steel)

| Stage | Name | ATK | SpATK | Speed | Effect |
|-------|------|-----|-------|-------|--------|
| 1 | Zacian's Fang | +10% | -- | +5% | None |
| 2 | Zacian's Blade | +20% | -- | +10% | Crit Boost (+25% crit chance) |
| 3 | Zacian's Crowned Sword | +35% | -- | +15% | Steel Pierce (+30% Steel power) |

### Xerneas' Antler (Fairy)

| Stage | Name | ATK | SpATK | Speed | Effect |
|-------|------|-----|-------|-------|--------|
| 1 | Xerneas' Antler | -- | +10% | -- | None |
| 2 | Xerneas' Branch | -- | +20% | +5% | Heal (1/16 HP regen per turn) |
| 3 | Xerneas' Tree of Life | -- | +35% | +10% | Fairy Lifesteal (heal 25% of damage dealt) |

### Yveltal's Talon (Dark)

| Stage | Name | ATK | SpATK | Speed | Effect |
|-------|------|-----|-------|-------|--------|
| 1 | Yveltal's Talon | +5% | +5% | +5% | None |
| 2 | Yveltal's Wing | +10% | +10% | +10% | Dark Drain (heal 15% of damage dealt) |
| 3 | Yveltal's Oblivion | +15% | +20% | +15% | Dark Fear (20% flinch on Dark moves) |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbEquipWeapon(weapon_id)` | Equip a weapon to the party |
| `pbWeaponStage(weapon_id)` | Get current stage of a weapon |
| `pbWeaponKills(weapon_id)` | Get current KO count |
| `pbAddWeaponKills(weapon_id, n)` | Add KOs manually |

---

## Event Tag

Place a **Comment** on weapon discovery events:

```
[AncestralWeapon ZACIANS_FANG]
[AncestralWeapon XERNEAS_ANTLER]
[AncestralWeapon YVELTALS_TALON]
```

---

## Cross-Plugin Integration

- **Destiny Board** -- Complementary power system (skill perks vs weapon stats)
- **Rune System** -- Weapons boost party globally, runes boost individual Pokemon

---

## File Structure

```
[SC] Ancestral Weapons/
  meta.txt              - Plugin metadata
  000_Config.rb         - Weapon definitions, stages, stat boosts, effects
  001_WeaponCore.rb     - Save data, KO tracking, stage evolution, battle hooks
```
