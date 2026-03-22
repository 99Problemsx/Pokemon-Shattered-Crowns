# Dynamic Music

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Context-aware music system that dynamically changes BGM based on battle state, time of day, and weather conditions.

---

## Features

- **Low HP Tension** -- Dramatic music when player's Pokemon are at critical HP
- **Boss Phase Transitions** -- Music changes at boss HP thresholds
- **Day/Night Variants** -- Different overworld music for day and night
- **Weather Overrides** -- Weather conditions change the background music
- **Smooth Fading** -- Crossfade between tracks for seamless transitions

---

## Configuration

Module: `DynamicMusic`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `LOW_HP_THRESHOLD` | varies | HP percentage to trigger tension music |
| `LOW_HP_BGM` | varies | BGM file for low HP |
| `BOSS_PHASES` | `{...}` | Boss HP thresholds and phase music |
| `DAY_NIGHT_MAPS` | `{...}` | Maps with day/night music variants |
| `WEATHER_BGM` | `{...}` | Weather-specific music overrides |
| `FADE_DURATION` | varies | Crossfade speed in frames |

---

## Boss Phase Example

```ruby
# In BOSS_PHASES config:
# Map 100 boss music changes at 50% and 25% HP
100 => {
  bgm_phase1: "Boss_Normal",
  bgm_phase2: "Boss_Intense",    # Below 50% HP
  bgm_phase3: "Boss_Desperate",  # Below 25% HP
}
```

---

## Cross-Plugin Integration

- **Weather Events** -- Weather music overrides coordinate with weather encounters

---

## File Structure

```
[SC] Dynamic Music/
  meta.txt              - Plugin metadata
  000_Config.rb         - BGM definitions, thresholds, map assignments
  001_MusicCore.rb      - Music switching engine, fade control, hooks
```
