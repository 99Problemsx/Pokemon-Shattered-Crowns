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
| `pbEnterSpiritRealm(portal_key)` | Enter the Spirit Realm through a portal |
| `pbExitSpiritRealm` | Leave the Spirit Realm |
| `pbClearSpiritRealm` | Mark the current realm as cleared |
| `pbInSpiritRealm?` | True if player is currently in the Spirit Realm |
| `pbPortalDiscovered?(portal_key)` | True if the portal has been discovered |
| `pbRealmCleared?(portal_key)` | True if the realm at portal_key has been cleared |
| `pbCorruptionLevel` | Current corruption (0..`CORRUPTION_MAX`, 0 outside the realm) |
| `pbMarkShadow(pkmn)` | Mark a Pokemon as shadow (call on catch in the realm) |
| `pbIsShadowPokemon?(pkmn)` | True if the Pokemon is currently shadow |
| `pbPurifyPokemon(pkmn, item = nil)` | Returns steps remaining; pass `PURIFICATION_ITEM` to instant-purify |

---

## Cross-Plugin Integration

- **Map Fog of War** -- Spirit Realm locations tracked separately
- **Lore Codex** -- Portal discovery entries
- **Time Travel** -- Complementary realm system (past/present vs spirit)

---

## File Structure

```
[SC] Spirit Realm/
  meta.txt        - Plugin metadata
  000_Config.rb   - Portal definitions, corruption settings, shadow config,
                    SHADOW_AMBUSH_SPECIES list
  001_RealmCore.rb - Save data, portal logic, corruption engine, shadow
                     marking + step-based purification, event helpers
```
