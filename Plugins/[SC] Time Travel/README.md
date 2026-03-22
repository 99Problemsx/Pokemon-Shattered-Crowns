# Time Travel

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Certain map locations exist in Past and Present eras. Travel between them via Yggdrasil root events. Past-era maps have higher wild levels, exclusive fossil species, and visual tone shifts.

---

## Features

- **Dual Eras** -- Present and Ancient Era for paired map locations
- **Yggdrasil Root Travel** -- Event-based portal with badge requirements
- **Visual Transitions** -- Screen flash and tone change when switching eras
- **Past-Era Bonuses** -- Wild encounters +3 levels, exclusive fossil species
- **State Persistence** -- Configurable shared switches/variables across timelines
- **Badge Gates** -- Each map pair can require a minimum badge count

---

## Configuration

Module: `TimeTravelSystem`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `ERA_PRESENT` | `:PRESENT` | Present era identifier |
| `ERA_PAST` | `:PAST` | Past era identifier |
| `PAST_LEVEL_BONUS` | `3` | +N levels for wild encounters in the past |
| `PAST_EXCLUSIVE_SPECIES` | 6 species | Fossil Pokemon only found in the past |
| `SHARED_SWITCHES` | `[]` | Game switches shared between timelines |
| `SHARED_VARIABLES` | `[]` | Game variables shared between timelines |

---

## Map Pairs

Define in `MAP_PAIRS` hash:

```ruby
MAP_PAIRS = {
  50 => { :past_map => 150, :name => "Asgheim Central",  :badge_req => 3 },
  60 => { :past_map => 160, :name => "Frosthollow",      :badge_req => 4 },
}
```

---

## Event Tag

Place a **Comment** on Yggdrasil root events:

```
[TimeTravel]
[TimeTravel ASGHEIM]
```

---

## Visual Settings

| Setting | Value | Description |
|---------|-------|-------------|
| `TRANSITION_SE` | "Door exit" | Sound effect on travel |
| `TRANSITION_FLASH_COLOR` | Purple (200,180,255) | Flash color |
| `SCREEN_TONE_PAST` | Dim blue-ish | Past era screen tone |
| `SCREEN_TONE_PRESENT` | Normal | Present era screen tone |

---

## Past-Era Exclusive Species

Aerodactyl, Relicanth, Archen, Tirtouga, Cranidos, Shieldon

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbTimeTravel(direction)` | Travel to past or present |
| `pbCurrentEra` | Get current era |
| `pbInPast?` | Check if player is in the past |

---

## Cross-Plugin Integration

- **Map Fog of War** -- Past-era maps tracked separately
- **Spirit Realm** -- Complementary realm system
- **Trainer Card Ex** -- "Time Walker" badge for visiting all time travel locations

---

## File Structure

```
[SC] Time Travel/
  meta.txt              - Plugin metadata
  000_Config.rb         - Era definitions, map pairs, visual settings, exclusive species
  001_TimeTravelCore.rb - Save data, era switching, transition effects, encounter hooks
```
