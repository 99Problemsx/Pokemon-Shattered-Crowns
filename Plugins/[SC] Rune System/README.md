# Rune System

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

8 Norse-themed runes that can be socketed onto Pokemon for stat boosts and special effects. Each Pokemon can equip one rune at a time.

---

## Features

- **8 Runes** -- Each based on Norse mythology with unique effects
- **Socket System** -- Equip/swap runes on your Pokemon via UI
- **Stat Boosts** -- Flat stat increases per rune
- **Special Effects** -- HP regen, status cure, crit boost, and more
- **Per-Pokemon Tracking** -- Each Pokemon's equipped rune is saved

---

## Configuration

Module: `RuneSystem`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `RUNES` | 8 | Rune definitions |
| `MAX_RUNES_PER_POKEMON` | `1` | Runes per Pokemon |
| `FREE_SWAP` | varies | Whether swapping runes is free |
| `REGEN_FRACTION` | `16` | HP regen is 1/N of max HP |

---

## Rune List

| Rune | Theme | Effect |
|------|-------|--------|
| Fenrir | Wolf | Attack boost |
| Mimir | Wisdom | Special Attack boost |
| Thorr | Thunder | Speed boost |
| Freyja | Fertility | HP regen each turn (1/16) |
| Tyr | War | Critical hit rate boost |
| Odinn | Allfather | Mixed stat boost |
| Yggdrasil | World Tree | Status condition self-cure |
| Nidhoeggr | Serpent | Dark-type damage boost |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbOpenRuneMenu(pokemon)` | Open the rune socket interface |
| `pbEquipRune(pokemon, rune_id)` | Equip a rune on a Pokemon |
| `pbRemoveRune(pokemon)` | Remove equipped rune |
| `pbHasRune?(pokemon, rune_id)` | Check if Pokemon has a specific rune |

---

## Cross-Plugin Integration

- **Lore Codex** -- Rune discovery registers codex entries
- **Ancestral Weapons** -- Complementary power systems (weapons = party-wide, runes = per-Pokemon)

---

## File Structure

```
[SC] Rune System/
  meta.txt              - Plugin metadata
  000_Config.rb         - Rune definitions, stat values, effects
  001_RuneCore.rb       - Save data (equipped_runes), equip/remove logic
  002_RuneScene.rb      - Socket/swap UI
```
