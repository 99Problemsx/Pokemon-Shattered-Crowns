# Map Fog of War

**Version:** 1.0.0\
**Module:** `MapFogOfWar`\
**Requires:** None

The Town Map starts **completely blacked out**. Routes, cities, and landmarks only appear once you've actually visited them — rewarding exploration and preventing spoilers. Nearby undiscovered areas glow faintly to hint at what's next.

---

## Features

| Feature | Description |
|---------|-------------|
| **Hidden Map** | All locations start unrevealed |
| **Visit-Based Reveal** | Entering any map in a location group reveals the point |
| **Proximity Glow** | Undiscovered locations near you glow on the map |
| **Completion %** | Track exploration progress |
| **Persistent** | Revealed areas saved across sessions |

---

## Configuration

All settings are in `000_Config.rb` inside the `MapFogOfWar` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log reveal events |
| `SHOW_PERCENTAGE` | `true` | Show completion % on the Town Map |
| `SE_REVEAL` | `"GUI sel decision"` | Sound on area reveal |

### Proximity Glow

| Constant | Default | Description |
|----------|---------|-------------|
| `GLOW_NEARBY_ENABLED` | `true` | Show glow hints for adjacent undiscovered areas |
| `GLOW_PROXIMITY_MAPS` | `1` | Map "hops" for glow range |

### Map Point Definitions

```ruby
MAP_POINTS = {
  :ASGHEIM_CITY => { :name => "Asgheim City", :map_ids => [1, 2, 3] },
  :ROUTE_1      => { :name => "Route 1",      :map_ids => [10] },
  :FROSTPEAK    => { :name => "Frostpeak",    :map_ids => [20, 21] },
  :VOID_RIFT    => { :name => "Void Rift",    :map_ids => [50, 51, 52] },
}
```

---

## Script Calls

```ruby
# Manually reveal a location
MapFogOfWar.reveal(:ASGHEIM_CITY)

# Check if revealed
MapFogOfWar.revealed?(:FROSTPEAK)   # => true/false

# Get completion percentage
MapFogOfWar.completion_percent       # => 65.0

# Reveal all (debug)
MapFogOfWar.reveal_all
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Quest Journal](../player-systems/quest-journal.md) | Quest markers only show on revealed areas |
| [Trainer Card Ex](../player-systems/trainer-card-ex.md) | Exploration % shown on card |
| [Lore Codex](../story-narrative/lore-codex.md) | Area discovery can trigger codex entries |
| [Spirit Realm](spirit-realm.md) | Spirit Realm maps have their own fog layer |

---

## File Structure

```
Plugins/[SC] Map Fog of War/
  meta.txt          — Plugin metadata
  000_Config.rb     — Map points, glow settings, sounds
  001_Core.rb       — Reveal logic, persistence, completion tracking
  002_Additions.rb  — Town Map overlay, step hooks, UI
```
