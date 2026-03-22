# Weather Events

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Weather-dependent encounters, hidden areas, and weather merchants. Includes a forecast system so players can plan their exploration.

---

## Features

- **Weather-Exclusive Encounters** -- Special Pokemon only appear during specific weather
- **Hidden Areas** -- Paths and locations accessible only in certain weather conditions
- **Weather Merchants** -- Special shops with rotating stock based on current weather
- **Forecast System** -- Players can check upcoming weather before exploring
- **Lore Codex Triggers** -- Weather encounters can discover codex entries

---

## Configuration

Module: `WeatherEvents`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `FORECAST_ENABLED` | `true` | Allow weather forecasting |
| `FORECAST_DAYS` | varies | How far ahead the forecast shows |
| `WEATHER_ENCOUNTERS` | `{...}` | Species available per weather type |
| `WEATHER_LOCKED_AREAS` | `{...}` | Areas gated by weather conditions |

---

## Weather Types

| Weather | Exclusive Content |
|---------|------------------|
| Rain | Water-type rarities, flooded caves |
| Sun | Fire-type rarities, dried lake paths |
| Snow | Ice-type rarities, frozen bridges |
| Sandstorm | Ground/Rock rarities, desert ruins |
| Fog | Ghost-type rarities, hidden shrines |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbWeatherForecast` | Show upcoming weather prediction |
| `pbWeatherSpecies?` | Check if special encounters are active |

---

## Cross-Plugin Integration

- **Lore Codex** -- Weather encounters trigger codex entries
- **Dynamic Music** -- Weather overrides background music
- **NPC Schedules** -- NPCs can have weather-conditional slots

---

## File Structure

```
[SC] Weather Events/
  meta.txt              - Plugin metadata
  000_Config.rb         - Weather encounter/area definitions
  001_WeatherCore.rb    - Encounter hooks, area access, forecast system
```
