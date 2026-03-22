# Trainer Rematch

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Scaled rematches against previously defeated trainers. 5 difficulty tiers with automatic team scaling based on player progress.

---

## Features

- **5 Rematch Tiers** -- Each tier brings stronger opponents
- **Auto-Scaling** -- Level boost, IV boost, better items, evolved Pokemon
- **Badge Gating** -- Rematches unlock after a configurable badge count
- **Event Tag** -- Simple tag on trainer events to enable rematches
- **Self-Switch Control** -- Uses self-switch C for rematch state tracking

---

## Configuration

Module: `TrainerRematch`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `BADGES_REQUIRED` | `4` | Minimum badges before rematches activate |
| `MAX_REMATCH_TIER` | `5` | Maximum difficulty tier |
| `REMATCH_SELF_SWITCH` | `"C"` | Self-switch used for rematch tracking |

---

## Tier Scaling

| Tier | Level Boost | IV Boost | Items | Evolutions |
|------|-------------|----------|-------|------------|
| 1 | +2 | +5 | -- | -- |
| 2 | +4 | +10 | Basic | -- |
| 3 | +6 | +15 | Better | Some |
| 4 | +8 | +20 | Strong | Most |
| 5 | +10 | +25 | Best | All |

---

## Event Tag

Place a **Comment** on any trainer event:

```
[Rematch KEY]
```

### Example

```
[Rematch ROUTE1_YOUNGSTER]
```

The trainer becomes rematchable after the player has enough badges. Each subsequent rematch raises the tier.

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbRematchReady?(event_id)` | Check if trainer is ready for rematch |
| `pbRematchTier(event_id)` | Get current rematch tier |

---

## Cross-Plugin Integration

- **Event Indicators** -- Visual markers on rematch-ready trainers
- **Battle Rewards Ex** -- Rematches are scored normally

---

## File Structure

```
[SC] Trainer Rematch/
  meta.txt              - Plugin metadata
  000_Config.rb         - Tier scaling, badge requirements
  001_RematchCore.rb    - Rematch tracking, scaling engine, event hooks
```
