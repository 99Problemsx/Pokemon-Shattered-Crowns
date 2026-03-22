# Rune Forging

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever  
**Requires:** [SC] Rune System

Combine two base runes at a forge to create powerful hybrid runes. 28 unique recipes covering all combinations of the 8 Norse runes. Hybrids gain merged stat boosts plus a drawback to maintain balance.

---

## Features

- **28 Hybrid Runes** -- Every pair of the 8 base runes produces a unique hybrid
- **Tier 4 Power** -- Hybrids are stronger than base runes but carry a stat drawback
- **Consume to Create** -- Forging destroys both source runes permanently
- **Forge Preview** -- UI shows the result before confirming
- **Dynamic Registration** -- Hybrids integrate seamlessly with the Rune System equip/stat hooks
- **Save-Safe** -- Hybrid definitions are restored automatically on game load
- **New Special Effect** -- :REGEN_CURE combines HP regen with periodic status cure

---

## Configuration

Module: `RuneForging`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Console logging |
| `RECIPES` | 28 entries | Hybrid rune definitions keyed by sorted rune pairs |
| `SE_FORGE` | `"Airy Shine"` | Sound when forging succeeds |
| `SE_FAIL` | `"buzzer"` | Sound when forging fails |

---

## Hybrid Rune Examples

| Recipe | Hybrid | Bonus | Drawback |
|--------|--------|-------|----------|
| Fenrir + Thor | Rune of Skoll | ATK +20%, Speed +10% | Defense -10% |
| Mimir + Freya | Rune of Idunn | Sp.Atk +10%, Sp.Def +10%, regen | Speed -5% |
| Fenrir + Tyr | Rune of the Berserker | ATK +25%, crit boost | Sp.Def -15% |
| Thor + Odin | Rune of Gungnir | Speed +20%, mixed stats | HP -10% |
| Yggdrasil + Freya | Rune of Sif | Regen + status cure combo | Attack -10% |

---

## How Forging Works

1. Player selects first base rune from inventory
2. Compatible second runes are shown (only valid recipes)
3. Preview displays the hybrid name and description
4. On confirm, both base runes are consumed
5. Hybrid rune is added to inventory and registered in the Rune System

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbOpenRuneForge` | Open the forge selection menu |
| `RuneForgeManager.forge(rune_a, rune_b)` | Forge two runes directly |
| `RuneForgeManager.recipe_for(rune_a, rune_b)` | Look up a recipe |

---

## Cross-Plugin Integration

- **Rune System** -- Hybrids are registered as full rune entries and work with all equip/stat/battle hooks
- **Lore Codex** -- Each forged hybrid is recorded as a codex discovery
- **Memory Lane** -- Forge events are recorded as memories

---

## File Structure

| File | Purpose |
|------|---------|
| meta.txt | Plugin metadata and dependency |
| 000_Config.rb | 28 hybrid rune recipe definitions |
| 001_ForgeCore.rb | Forge logic, menu, save/load, battle hooks |
| README.md | This file |
