# Spirit Realm

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Yggdrasil portal network leading to the Spirit Realm. Features badge-gated portals, a void corruption mechanic, and shadow Pokemon that require step-based purification.

---

## Features

- **Portal Network** -- Enter the Spirit Realm through Yggdrasil root portals
- **Badge Gates** -- Each portal requires a minimum number of badges
- **Void Corruption** -- Corruption builds the longer you stay in the Spirit Realm
- **4 Corruption Thresholds** -- Screen tint, passive damage, ambush encounters, forced expulsion
- **Shadow Pokemon** -- Special corrupted Pokemon found only in the Spirit Realm
- **Purification System** -- Shadow Pokemon are purified by walking a set number of steps

---

## Configuration

Module: `SpiritRealm`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `PORTALS` | `{...}` | Portal locations with badge requirements |
| `CORRUPTION_ENABLED` | `true` | Enable void corruption |
| `CORRUPTION_PER_STEP` | varies | Corruption gained per step |
| `CORRUPTION_MAX` | varies | Maximum corruption before forced expulsion |
| `SHADOW_BOOST` | varies | Stat bonus % for shadow Pokemon |
| `PURIFICATION_STEPS` | varies | Steps needed to purify a shadow Pokemon |

---

## Corruption Thresholds

| Level | Effect |
|-------|--------|
| 1 | Screen tint grows darker |
| 2 | Passive HP drain on party |
| 3 | Random shadow Pokemon ambushes |
| 4 | Forced expulsion from the Spirit Realm |

---

## Event Tag

Place a **Comment** on portal events:

```
[SpiritRealm]
```

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbEnterSpiritRealm(portal_id)` | Enter the Spirit Realm through a portal |
| `pbExitSpiritRealm` | Leave the Spirit Realm |
| `pbInSpiritRealm?` | Check if player is in the Spirit Realm |
| `pbCorruptionLevel` | Get current corruption value |
| `pbPurifyPokemon(pokemon)` | Begin/check purification progress |

---

## Cross-Plugin Integration

- **Map Fog of War** -- Spirit Realm locations tracked separately
- **Lore Codex** -- Portal discovery entries
- **Time Travel** -- Complementary realm system (past/present vs spirit)

---

## File Structure

```
[SC] Spirit Realm/
  meta.txt              - Plugin metadata
  000_Config.rb         - Portal definitions, corruption settings, shadow config
  001_SpiritCore.rb     - Save data, portal logic, corruption engine
  002_ShadowSystem.rb   - Shadow Pokemon creation, purification tracking
```
