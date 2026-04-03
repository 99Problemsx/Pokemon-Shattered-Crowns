# Weather Events

**Version:** 1.0.0\
**Module:** `WeatherEvents`\
**Requires:** None

Weather in Shattered Crowns isn't just visual — it **changes the game**. Storms summon rare electric-type encounters, fog reveals hidden cave entrances, snow brings special NPCs, and a forecast system lets players plan ahead.

---

## Features

| Feature | Description |
|---------|-------------|
| **7 Weather Types** | Rain, Storm, Snow, Sandstorm, Sun, Fog, Hail |
| **Forecast NPC** | Get a 3-day weather forecast from a special NPC |
| **6-Hour Cycles** | Weather changes every 6 in-game hours |
| **Rare Encounters** | Weather-exclusive Pokémon (e.g., Zapdos in storms) |
| **Hidden Areas** | Paths only accessible during specific weather |
| **Weather Merchants** | Special NPCs that appear only in certain conditions |
| **Lore Integration** | Weather can reveal Lore Codex entries |

---

## Weather Types

| Weather | Effect on Gameplay |
|---------|-------------------|
| 🌧️ **Rain** | Water encounters boosted, special vendor appears |
| ⚡ **Storm** | Rare Electric/Flying encounters, hidden lightning paths |
| ❄️ **Snow** | Ice-type encounters, frozen lake shortcuts |
| 🏜️ **Sandstorm** | Ground/Rock encounters boosted, visibility reduced |
| ☀️ **Sun** | Fire/Grass encounters boosted, berry growth accelerated |
| 🌫️ **Fog** | Hidden cave entrances revealed, Ghost encounters |
| 🪨 **Hail** | Ice-type stat boosts in battle, rare Froslass encounters |

---

## Configuration

All settings are in `000_Config.rb` inside the `WeatherEvents` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log weather changes |
| `FORECAST_ENABLED` | `true` | Enable forecast NPC |
| `FORECAST_DAYS` | `3` | Days of forecast shown |
| `WEATHER_CYCLE_HOURS` | `6` | Hours between weather changes |
| `SHOW_WEATHER_NOTIFICATION` | `true` | Show notification on weather change |

### Weather Encounters

```ruby
WEATHER_ENCOUNTERS = {
  :Storm => [
    { :species => :ZAPDOS, :level_range => [50, 55], :map_ids => [20, 21], :chance => 5 },
  ],
  :Fog => [
    { :species => :MISDREAVUS, :level_range => [25, 30], :map_ids => [15], :chance => 15 },
  ],
  :Snow => [
    { :species => :FROSLASS, :level_range => [35, 40], :map_ids => [30, 31], :chance => 10 },
  ],
}
```

### Hidden Areas

```ruby
WEATHER_LOCKED_AREAS = {
  :FOG_CAVE    => { :weather => :Fog,   :map_id => 15, :event_id => 10 },
  :STORM_PEAK  => { :weather => :Storm, :map_id => 22, :event_id => 8 },
  :SNOW_SHRINE => { :weather => :Snow,  :map_id => 31, :event_id => 12 },
}
```

---

## Script Calls

```ruby
# Get current weather
WeatherEvents.current_weather          # => :Storm

# Check if specific weather is active
WeatherEvents.weather?(:Fog)            # => true/false

# Force weather change (debug)
WeatherEvents.set_weather(:Storm)

# Check if a weather-locked area is accessible
WeatherEvents.accessible?(:FOG_CAVE)    # => true/false

# Get forecast
WeatherEvents.forecast                  # => [:Rain, :Storm, :Sun]
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Dynamic Music](../battle-systems/dynamic-music.md) | Music changes with weather |
| [Lore Codex](../story-narrative/lore-codex.md) | Weather-specific lore entries |
| [Party Banter](../story-narrative/party-banter.md) | Companions comment on weather |
| [Spirit Realm](spirit-realm.md) | Spirit Realm has unique void weather |

---

## File Structure

```
Plugins/[SC] Weather Events/
  meta.txt          — Plugin metadata
  000_Config.rb     — Weather types, encounters, locked areas, merchants
  001_Core.rb       — Weather cycling, forecast, encounter modification
  002_Additions.rb  — Step hooks, area gating, NPC spawning, UI
```
