# Dynamic Music

**Version:** 1.0.0\
**Module:** `DynamicMusic`

Context-aware music system that dynamically changes BGM based on battle state, time of day, and weather conditions. Supports multi-phase boss themes with smooth crossfades.

<!-- TODO: Add audio waveform diagram or video link showing transitions -->

---

## Features

| Feature | Description |
|---------|-------------|
| **Low HP Music** | Switches to tense BGM when your last Pokémon drops below 25% HP |
| **Boss Phase Music** | BGM changes at HP thresholds during boss battles (multi-phase) |
| **Day/Night Variants** | Maps can play different BGM during day vs night hours |
| **Weather Music** | Override map BGM during specific weather conditions |
| **Smooth Crossfade** | Configurable fade duration for seamless transitions |

---

## Configuration

All settings in `000_Config.rb` inside the `DynamicMusic` module.

### Low HP Music

| Constant | Default | Description |
|----------|---------|-------------|
| `LOW_HP_ENABLED` | `true` | Enable low-HP battle music switch |
| `LOW_HP_THRESHOLD` | `0.25` | HP percentage threshold (25%) |
| `LOW_HP_BGM` | `"Battle Critical"` | BGM filename to play (no extension) |

### Boss Phase Music

Define multi-phase boss themes per trainer type. Thresholds are checked high→low — first match wins.

```ruby
BOSS_PHASES = {
  :CHAMPION => [
    { :threshold => 0.50, :bgm => "Battle Champion Phase2" },
    { :threshold => 0.25, :bgm => "Battle Champion Final" },
  ],
  :NIDHOGGR => [
    { :threshold => 0.75, :bgm => "Nidhoggr Phase2" },
    { :threshold => 0.50, :bgm => "Nidhoggr Phase3" },
    { :threshold => 0.25, :bgm => "Nidhoggr Final" },
  ],
}
```

### Day/Night Variants

| Constant | Default | Description |
|----------|---------|-------------|
| `DAY_NIGHT_ENABLED` | `true` | Enable day/night BGM switching |
| `NIGHT_START_HOUR` | `20` | Hour when night begins (24h format) |
| `NIGHT_END_HOUR` | `6` | Hour when night ends |

```ruby
DAY_NIGHT_MAPS = {
  5 => { :day => "Asgheim Day", :night => "Asgheim Night" },
}
```

### Weather Music

| Constant | Default | Description |
|----------|---------|-------------|
| `WEATHER_MUSIC_ENABLED` | `true` | Enable weather-based BGM override |

```ruby
WEATHER_BGM = {
  :Storm => "Stormy Ambience",
  :Snow  => "Snowy Night",
}
```

### Transition

| Constant | Default | Description |
|----------|---------|-------------|
| `FADE_DURATION` | `800` | Crossfade duration in milliseconds |
| `VOLUME_NORMAL` | `80` | Normal BGM volume |
| `VOLUME_LOW` | `60` | Reduced volume during transitions |

---

## Tutorial: Adding a Multi-Phase Boss Theme

### Step 1: Prepare Your Audio Files

Place your BGM files in `Audio/BGM/`:
- `Battle Nidhoggr.ogg` — Phase 1 (default battle BGM)
- `Nidhoggr Phase2.ogg` — Phase 2 (50% HP)
- `Nidhoggr Final.ogg` — Final phase (25% HP)

### Step 2: Register in Config

```ruby
BOSS_PHASES = {
  :NIDHOGGR => [
    { :threshold => 0.50, :bgm => "Nidhoggr Phase2" },
    { :threshold => 0.25, :bgm => "Nidhoggr Final" },
  ],
}
```

### Step 3: Set Up the Trainer Battle

In your event, start the battle as normal. The plugin detects the trainer type automatically:

```ruby
# In your event's script command:
setBattleRule("canLose")
TrainerBattle.start(:NIDHOGGR, "Nidhoggr")
```

The music will transition automatically as the boss loses HP.

---

## File Structure

```
[SC] Dynamic Music/
  meta.txt              - Plugin metadata
  000_Config.rb         - All settings: thresholds, BGM names, fade timing
  001_MusicCore.rb      - Core music switching logic, battle hooks, map hooks
  README.md             - Quick reference
```
