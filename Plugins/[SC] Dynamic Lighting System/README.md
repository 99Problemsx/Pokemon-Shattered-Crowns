# Dynamic Lighting System v2.5.0

## Installation

1. Copy the `[005] Dynamic Lighting System` folder into your project's `Plugins/` directory.
2. Ensure you are running **Pokémon Essentials v21.1** or compatible.
3. The plugin auto-loads on game start — no additional setup required.

---

## File Structure

```
[005] Dynamic Lighting System/
├── meta.txt                    # Plugin metadata (name, version)
├── [001] GameData.rb           # Data models, presets, script helpers, save/load, PBS import
├── [002] Lighting_Core.rb      # Main engine: rendering, updates, all visual effects
├── [003] Scene_Integration.rb  # Scene_Map hooks and Spriteset_Global integration
├── [004] Map_Lights.rb         # Pre-placed map light definitions (purple house etc.)
├── [005] Debug_Tools.rb        # Debug menu, hotkeys, quick-add commands
├── [006] Night_Tilesets.rb     # Automatic _n tileset variant loading at night
├── README.md                   # This documentation
├── NIGHT_TILESETS_README.md    # Night tileset system documentation
└── Tile IDs Generator.html     # HTML tool for generating tile IDs
```

---

## Quick Start

### Add a light via event comment
In any event's first page, add a comment line:
```
[Light circle 48]
```
This creates a 48-pixel radius circle light that follows the event.

### Add a light via script
```ruby
pbAddLight(10, 12)                          # Default circle at tile (10,12)
pbAddLight(10, 12, 48, Color.new(255,0,0))  # Red circle, radius 48
pbAddLight(10, 12, preset: :torch)          # Use the :torch preset
```

### Toggle flashlight
```ruby
Flashlight.toggle
Flashlight.on
Flashlight.off
```

---

## Light Types

| Type      | Description                                    | Key Params          |
|-----------|------------------------------------------------|---------------------|
| `:circle` | Radial gradient light (most common)            | `radius`            |
| `:rect`   | Rectangular light (signs, windows)             | `width`, `height`   |
| `:cone`   | Directional cone (flashlights, spotlights)     | `cone_spread`, `cone_angle` |
| `:bitmap` | Custom bitmap-based shape                      | `bitmap` (path)     |

---

## Presets

Use presets for quick light placement with pre-configured settings:

| Preset            | Type   | Radius | Description                              |
|-------------------|--------|--------|------------------------------------------|
| `:torch`          | circle | 48     | Warm flickering torch with embers        |
| `:streetlamp`     | circle | 72     | Bright steady white-yellow lamp          |
| `:neon_sign`      | rect   | —      | Color-cycling neon sign                  |
| `:campfire`       | circle | 56     | Large warm fire with embers and cycling  |
| `:candle`         | circle | 28     | Small warm candle with flicker           |
| `:crystal`        | circle | 40     | Blue crystal with heartbeat pulse        |
| `:lava`           | circle | 44     | Red-orange lava with heat shimmer        |
| `:moonbeam`       | circle | 64     | Faint blue-white moonlight               |
| `:spotlight`      | circle | 96     | Bright white stage spotlight             |
| `:damaged_neon`   | rect   | —      | Stuttering broken neon sign              |
| `:window_warm`    | rect   | —      | Warm interior window glow                |
| `:crystal_cave`   | circle | 40     | Crystal with rainbow refraction beams    |
| `:wall_torch`     | circle | 48     | Wall-mounted torch with flame overlay    |
| `:power_lamp`     | circle | 60     | Power-grid connected lamp                |
| `:deep_sea_glow`  | circle | 36     | Faint blue deep-sea bioluminescence      |
| `:ore_vein`       | circle | 20     | Dim gold ore glow                        |
| `:spotlight_follow`| circle | 72    | Auto-tracking spotlight                  |
| `:lava_floor`     | circle | 32     | Lava floor pulse (always visible)        |

### Using presets

**In script:**
```ruby
pbAddLight(x, y, preset: :torch)
```

**In event comment:**
```
[Light circle 0 preset:torch]
```

**In PBS/lights.txt:**
```
5,10,12,circle,0,torch
```

---

## Script Commands

### Basic Light Management

```ruby
# Add a light — returns the generated ID
id = pbAddLight(x, y)
id = pbAddLight(x, y, radius, color, day: false, intensity: 1.0, preset: nil)

# Remove a light
pbRemoveLight(id)

# Fade a light in or out (smooth transition)
pbFadeLight(id, :in)
pbFadeLight(id, :out)
pbFadeLight(id, :in, 0.02)    # Slower fade

# Attach light to an event (follows the event)
pbAttachLight(light_id, event_id)

# Set light intensity (0.0 to 1.0)
pbSetLightIntensity(id, 0.5)
```

### Group Commands

```ruby
# All lights sharing the same :group tag are affected together
pbGroupFadeIn(:house_lights)
pbGroupFadeIn(:house_lights, 0.02)    # Slower
pbGroupFadeOut(:house_lights)
pbGroupHide(:house_lights)
pbGroupShow(:house_lights)
pbGroupSetIntensity(:house_lights, 0.5)
```

### Light Chaining

```ruby
# Link two lights — toggling/fading one affects the other
pbChainLights(:light_a, :light_b)

# Remove the chain
pbUnchainLight(:light_a)
```

### Gameplay Queries

```ruby
# Check if a tile is illuminated by any active light
pbTileIlluminated?(x, y)    # Returns true/false

# Get encounter rate multiplier based on darkness
pbDarkZoneEncounterMult(range = 4, dark_mult = 1.5)  # Returns Float
```

### Save/Load

```ruby
pbSaveLights       # Persist all runtime lights (auto-called on save)
pbRestoreLights    # Restore from save (auto-called on map enter)
```

---

## Event Comment Tags

Add these in an event's first page comment to create lights that follow the event.

### Basic syntax
```
[Light TYPE PARAMS KEYWORDS...]
```

### Examples
```
[Light circle 48]                    # Basic circle
[Light circle 64 red]                # Red circle
[Light rect 2 1 warm day]           # 2x1 warm rectangle, visible during day
[Light cone 60 spread:90]           # 60-radius cone, 90° spread
[Light circle 48 flicker embers]    # Flickering torch with embers
[Light circle 0 preset:torch]       # Use preset
```

### Available keywords

| Keyword                | Effect                                          |
|------------------------|-------------------------------------------------|
| `red` `blue` `yellow` `green` `orange` `warm` | Set light color |
| `color:R,G,B`          | Custom RGB color (0-255 each)                  |
| `day`                  | Light visible during daytime too                |
| `flicker`              | Enable random flicker                           |
| `flicker:0.2`          | Flicker with specific intensity                 |
| `embers`               | Spawn ember particles                           |
| `reflect`              | Render water reflection below                   |
| `beam`                 | Project visible light beam rays                 |
| `window`               | Project angled window light spill               |
| `shadows`              | Enable soft shadow casting                      |
| `shimmer`              | Enable heat shimmer distortion                  |
| `power_grid`           | Participate in flickering power grid             |
| `crystal`              | Split into rainbow refraction sub-beams         |
| `flame`                | Show animated flame overlay                     |
| `bleed`                | Tint adjacent tiles with light color            |
| `seasonal`             | Auto-shift color by in-game season              |
| `pulse:candle`         | Pulse profile: `candle`, `heartbeat`, `strobe`, `damaged_neon` |
| `intensity:0.5`        | Set intensity (0.0-1.0)                         |
| `radius:48`            | Override radius                                 |
| `group:name`           | Assign to a group for batch control             |
| `switch:42`            | Only active when game switch 42 is ON           |
| `sync:name`            | Sync animation with other lights in same group  |
| `lifespan:120`         | Auto-expire after N frames                      |
| `blend:additive`       | Blend mode: `additive`, `subtractive`, `multiply` |
| `sound:fire_crackle`   | Play SE when player is nearby                   |
| `sound_range:5`        | Tile range for sound audibility                 |
| `layer:ground`         | Z-layer: `ground`, `mid`, `overhead`            |
| `color_var:10`         | Color changes based on game variable 10         |
| `preset:torch`         | Apply a named preset                            |
| `spread:90`            | Cone spread angle in degrees                    |
| `on_hour:18`           | Activate at this hour (24h)                     |
| `off_hour:6`           | Deactivate at this hour                         |
| `follow:player`        | Spotlight tracks player                         |
| `follow:nearest`       | Spotlight tracks nearest event                  |
| `follow_range:8`       | Max tracking range in tiles                     |
| `cull:15`              | Skip rendering if >15 tiles from player         |
| `chain:other_id`       | Chain to another light ID                       |

---

## PBS Light Import

Create `PBS/lights.txt` to bulk-define lights loaded at game start.

### Format
```
MAP_ID,X,Y,TYPE,RADIUS,PRESET_AND_KEYWORDS
```

### Examples
```
# Comments start with #
5,10,12,circle,48
5,14,8,circle,0,torch
8,3,5,rect,0,,width:2 height:1 red day
12,6,7,circle,64,streetlamp
12,8,9,circle,0,,warm flicker embers
```

Lines starting with `#` are comments. Blank lines are skipped.  
The preset name (if any) comes first in the keywords column, followed by space-separated keywords.

---

## LightEffect Attributes

All attributes available on `GameData::LightEffect`:

### Core Attributes
| Attribute       | Type    | Default     | Description                              |
|-----------------|---------|-------------|------------------------------------------|
| `id`            | Symbol  | auto        | Unique identifier                        |
| `type`          | Symbol  | —           | `:circle`, `:rect`, `:cone`, `:bitmap`   |
| `map_x`         | Integer | —           | Tile X position                          |
| `map_y`         | Integer | —           | Tile Y position                          |
| `map_id`        | Integer | current map | Map ID this light belongs to             |
| `radius`        | Integer | 64          | Radius in pixels (circle/cone)           |
| `color`         | Color   | white       | Light color                              |
| `width`         | Integer | 2           | Width in tiles (rect)                    |
| `height`        | Integer | 2           | Height in tiles (rect)                   |
| `day`           | Boolean | false       | Visible during daytime                   |
| `intensity`     | Float   | 1.0         | Brightness (0.0-1.0)                     |

### Animation Attributes
| Attribute       | Type    | Default     | Description                              |
|-----------------|---------|-------------|------------------------------------------|
| `stop_anim`     | Boolean | false       | Disable breathing animation              |
| `flicker`       | Mixed   | false       | Boolean or Float intensity               |
| `pulse`         | Symbol  | nil         | `:candle`, `:heartbeat`, `:strobe`, `:damaged_neon` |
| `color_cycle`   | Array   | nil         | Array of Colors to cycle through         |
| `cycle_speed`   | Float   | 2.0         | Seconds per color cycle                  |
| `keyframes`     | Array   | nil         | `[{t:, radius:, color:, intensity:}]`    |

### Visibility Attributes
| Attribute       | Type    | Default     | Description                              |
|-----------------|---------|-------------|------------------------------------------|
| `hide`          | Boolean | false       | Hidden but not removed                   |
| `switch`        | Integer | nil         | Game switch ID that controls visibility  |
| `on_hour`       | Integer | nil         | Hour to activate (24h)                   |
| `off_hour`      | Integer | nil         | Hour to deactivate                       |
| `lifespan`      | Integer | nil         | Frames until auto-expire                 |
| `cull_distance`  | Integer | nil        | Max tile distance before culling render  |

### Fade Attributes
| Attribute       | Type    | Default     | Description                              |
|-----------------|---------|-------------|------------------------------------------|
| `fade_speed`    | Float   | 0.05        | Fade transition speed per frame          |
| `fade_opacity`  | Float   | 1.0         | Current fade value                       |
| `fade_target`   | Float   | 1.0         | Target fade value                        |

### Visual Effect Attributes
| Attribute        | Type    | Default    | Description                              |
|------------------|---------|------------|------------------------------------------|
| `embers`         | Boolean | false      | Spawn ember particles                    |
| `beam`           | Boolean | false      | Project visible beam rays                |
| `window`         | Boolean | false      | Project window light spill               |
| `flame_sprite`   | Boolean | false      | Animated flame overlay                   |
| `color_bleed`    | Boolean | false      | Tint adjacent tiles                      |
| `crystal_refract`| Boolean | false      | Rainbow refraction beams                 |
| `power_grid`     | Boolean | false      | Flickering power grid participation      |
| `water_reflect`  | Boolean | false      | Flipped reflection on water              |
| `heat_shimmer`   | Boolean | false      | Heat distortion wobble                   |
| `shadows`        | Boolean | false      | Soft shadow casting                      |
| `item_glow`      | Boolean | false      | Hidden item hint glow                    |
| `blend`          | Symbol  | nil        | `:additive`, `:subtractive`, `:multiply` |
| `layer`          | Symbol  | nil        | `:ground`, `:mid`, `:overhead`           |
| `seasonal`       | Boolean | false      | Auto-shift color by season               |

### Audio Attributes
| Attribute       | Type    | Default     | Description                              |
|-----------------|---------|-------------|------------------------------------------|
| `sound`         | String  | nil         | SE filename for proximity audio          |
| `sound_range`   | Integer | 3           | Tile distance for audibility             |

### Relationship Attributes
| Attribute       | Type    | Default     | Description                              |
|-----------------|---------|-------------|------------------------------------------|
| `group`         | Symbol  | nil         | Group name for batch commands            |
| `sync_group`    | Symbol  | nil         | Sync animation with same-group lights    |
| `chain_to`      | Symbol  | nil         | ID of chained partner light              |
| `event`         | Integer | nil         | Event ID this light follows              |
| `proximity`     | Integer | nil         | Fade based on player distance            |
| `color_var`     | Integer | nil         | Game variable ID for dynamic color       |
| `follow_target` | Mixed   | nil         | `:player`, `:nearest_event`, or event ID |
| `follow_range`  | Integer | 6           | Max tile distance for follow tracking    |

### Path Animation
| Attribute       | Type    | Default     | Description                              |
|-----------------|---------|-------------|------------------------------------------|
| `path`          | Array   | nil         | `[[x1,y1],[x2,y2],...]` waypoints       |
| `path_speed`    | Float   | 1.0         | Tiles per second                         |

### Cone Attributes
| Attribute       | Type    | Default     | Description                              |
|-----------------|---------|-------------|------------------------------------------|
| `cone_spread`   | Integer | 60          | Cone spread angle in degrees             |
| `cone_angle`    | Integer | 0           | Current cone direction (0=right)         |

### Callback Attributes
| Attribute       | Type    | Default     | Description                              |
|-----------------|---------|-------------|------------------------------------------|
| `on_activate`   | Proc    | nil         | Called when light activates              |
| `on_deactivate` | Proc    | nil         | Called when light deactivates            |

---

## Flashlight System

The flashlight creates a directional circle light attached to the player with smooth direction sweeping and lantern sway.

```ruby
Flashlight.toggle       # Toggle on/off
Flashlight.on           # Turn on
Flashlight.off          # Turn off
Flashlight.active?      # Check state
```

### Configuration Constants (in Lighting_Core.rb)
| Constant       | Default | Description                     |
|----------------|---------|---------------------------------|
| `LIGHT_ID`     | `:player_flashlight` | Internal light ID    |
| `RADIUS`       | 80      | Flashlight radius in pixels     |
| `OFFSET`       | 48      | Forward offset from player      |
| `LERP_SPEED`   | 0.25    | Direction sweep smoothness      |

The flashlight state persists across save/load via `$PokemonGlobal.flashlight_active`.

---

## Feature Reference

### Visual Effects (Per-Light)
| Feature              | Trigger                           | Description                                          |
|----------------------|-----------------------------------|------------------------------------------------------|
| Torch Flame Sprite   | `flame_sprite: true`              | Animated fire overlay on torch/campfire lights        |
| Light Color Bleed    | `color_bleed: true`               | Colored light tints adjacent tiles                   |
| Crystal Refraction   | `crystal_refract: true`           | Splits into rainbow sub-beams                        |
| Flicker Shadows      | `flicker` + radius ≥ 30          | Dancing shadow edges near flickering lights           |
| Power Grid Flicker   | `power_grid: true`                | Grid-wide stutter on all connected lights            |
| Warm Zones           | `pulse: :candle`, radius ≥ 50    | Extra warm tone near campfire-sized lights            |
| Window Light Spill   | `window: true`                    | Angled parallelogram patches below windows            |
| Item Glow Hint       | `item_glow: true`                 | Faint glow on hidden item tiles at night              |
| Water Reflection     | `water_reflect: true`             | Flipped glow reflection on water tiles               |
| Per-Light Blend Mode | `blend: :additive` etc.           | Individual blend type override per light             |
| Light Layers         | `layer: :ground` etc.             | Z-priority sorting per light                         |

### Weather Effects
| Feature                | Weather Condition   | Description                                        |
|------------------------|---------------------|----------------------------------------------------|
| Lightning Flash        | Storm/HeavyRain     | Screen-wide white flash                            |
| Fog Light Scatter      | Fog                 | Halo/bloom ring around lights during fog           |
| Rain Streak Illumination| Rain/Storm/HeavyRain| White sparkle streaks through lights              |
| Frozen Light (Frost Ring)| Blizzard          | Frosty blue-white crystalline border ring          |
| Snow Glow              | Snow/Blizzard       | Increased effective light radius                   |

### Ambient / Environmental
| Feature                | Trigger              | Description                                        |
|------------------------|----------------------|----------------------------------------------------|
| Moonlight              | Night + Outside      | Faint sweeping directional glow                    |
| Star Twinkle Layer     | Night + Outside      | Sparse white twinkling dots                        |
| Aurora Borealis        | "Aurora" map flag    | Slow-moving colored bands at night                 |
| Sunrise/Sunset Glow    | Hours 5-7 / 17-19   | Gradient horizon band                              |
| Cloud Shadow Drift     | Day + Outside        | Slow-moving dark patches                           |
| Sunset Silhouettes     | Dusk hours           | Long shadows from tall events                      |
| Canopy Dapple          | "Forest" map flag    | Animated leaf shadow spots                         |
| Heat Haze              | lava/fire lights     | Shimmer distortion above hot sources               |
| Lens Flare             | Bright lights        | Streak artifacts near screen edges                 |
| Pollen Drift           | Day + Forest         | Golden particles floating in lit areas             |
| Puddle Reflections     | After rain           | Puddles reflect nearby lights                      |
| Firefly Lanterns       | Dusk + Streetlamps   | Fireflies gather around lamp lights                |
| Underwater Caustics    | "Underwater" flag    | Rippling light patterns                            |
| Screen Vignette        | Night/Cave           | Darkened screen edges                              |
| Light Beam Projection  | `beam: true`         | Visible tapered light rays                         |
| Color Temperature      | Time of day          | Global warm/cool color shift                       |
| Seasonal Light Shifts  | `seasonal: true`     | Outdoor light colors auto-shift by season          |

### Lava & Fire
| Feature              | Trigger              | Description                                          |
|----------------------|----------------------|------------------------------------------------------|
| Lava Glow Pulse      | Lava terrain tiles   | Red-orange ground pulse on lava terrain              |
| Torch Ember Particles| `embers: true`       | Upward-drifting orange specks                        |
| Candle Smoke Wisps   | Candle/torch lights  | Translucent gray particles above flames              |

### Cave Effects
| Feature              | Trigger              | Description                                          |
|----------------------|----------------------|------------------------------------------------------|
| Dripping Light Ripples| "Cave" map flag     | Brief circular ripple flashes                        |
| Glowing Ore Veins    | Crystal/lava lights  | Nearby tiles show ore glow                           |
| Stalactite Shadow Bars| "Cave" + Flashlight | Vertical shadow stripes shifted by flashlight        |
| Echo Glow            | "Cave" map flag      | Bioluminescent floor pulse on player steps           |
| Cave Breathing       | "Cave" map flag      | Global radius oscillation                            |

### Dive / Underwater Effects
| Feature                  | Trigger                  | Description                                  |
|--------------------------|--------------------------|----------------------------------------------|
| Bioluminescent Jellyfish | "Diving" map flag        | Drifting glowing sprites                     |
| Pressure Darkness Vignette| "Diving" map flag       | Stronger vignette by virtual depth           |
| Deep Sea Light Falloff   | "Diving" map flag        | Light radius reduces with depth              |
| Light Absorption Tint    | "Underwater"/"Diving"    | Lights shift toward blue-green               |

### Gameplay Mechanics
| Feature                | Trigger / Command         | Description                                    |
|------------------------|---------------------------|------------------------------------------------|
| Spotlight Follow       | `follow_target: :player`  | Auto-tracking light toward target              |
| Light Effect Chaining  | `pbChainLights(a, b)`     | Linked lights sync fade/hide                   |
| Tile Illumination Check| `pbTileIlluminated?(x,y)` | Check if a tile is lit (puzzles)               |
| Dark Zone Encounters   | `pbDarkZoneEncounterMult` | Higher encounter rate in unlit areas           |
| Light Culling Distance | `cull_distance: 15`       | Skip rendering beyond distance                 |
| Event Triggers         | `on_activate: proc`       | Callback when light state changes              |
| Light Sound Integration| `sound: "filename"`       | Auto-play SE based on proximity                |
| Animation Keyframes    | `keyframes: [...]`        | Multi-property time-based animation            |

### Performance
| Feature                | Description                                              |
|------------------------|----------------------------------------------------------|
| Performance Auto-Scaler| Reduces particle counts when FPS drops below 20          |
| Light LOD              | Fewer glow layers for lights at screen edges             |
| Smart Deduplication    | Auto-merges identical lights at same tile                |
| Gradient Cache         | Reuses generated gradient bitmaps by radius              |
| Off-Screen Culling     | Skips bitmap drawing for lights outside visible area     |
| Light Culling Distance | Per-light max tile distance for rendering                |

---

## Debug Tools

### Debug Menu
Access via **Debug → Field → Lighting System**:
- Add Circle/Rect/Small/Red/Blue/Yellow lights at player position
- Add any preset light
- List all lights on current map
- Remove nearest light
- Toggle all lights
- Toggle light editor preview

### Hotkeys (Debug mode only)
| Shortcut         | Action                                         |
|------------------|-------------------------------------------------|
| `Ctrl+USE`       | Show current map position and ID               |
| `Ctrl+L`         | Display lighting system info                   |
| `Ctrl+P`         | Toggle light editor preview (positions/radii)  |
| `Ctrl+Shift+L`   | Toggle performance profiler overlay            |
| `Ctrl+Shift+C`   | Toggle light counter HUD                       |

### Light Counter HUD
Shows real-time stats:
- Total/active light effects
- Sprite counts (light, particle, environment, overlay)
- Gradient cache size
- Weather state, day/night, map ID
- Performance auto-scaler percentage

### Performance Profiler
Shows:
- Effect counts (total and active)
- Light sprite count
- Ember and firefly counts
- Gradient cache entries
- Star and beam counts
- Night/outside state

---

## Night Tilesets

The Night Tileset system (`[006] Night_Tilesets.rb`) automatically swaps tilesets for `_n` variants at night.

- Place night tileset variants in the same Graphics folders with `_n` suffix  
  (e.g., `tileset.png` → `tileset_n.png`)
- Disable per-map via `MapMetadata.disable_night_tileset`
- See `NIGHT_TILESETS_README.md` for detailed setup

---

## Performance

### Auto-Scaler
The system monitors FPS and automatically reduces particle counts when performance drops:
- Below 20 FPS: scale decreases (min 30% of normal)
- Above 35 FPS: scale gradually recovers to 100%

### Optimization Tips
1. Use `cull_distance` on distant lights to skip rendering
2. Use `stop_anim: true` on static lights (street lamps)
3. Use `switch` to disable lights not needed
4. Use `on_hour` / `off_hour` for time-based lights
5. Group lights with `group` for efficient batch control
6. The LOD system automatically reduces quality for edge-of-screen lights

---

## Configuration

### Map Metadata Flags
| Flag          | Effect                                          |
|---------------|-------------------------------------------------|
| `"Cave"`      | Enables cave darkness, drip ripples, ore glow, stalactite shadows, echo glow, cave breathing |
| `"Forest"`    | Enables canopy dapple, green-tinted overlay      |
| `"Underwater"`| Enables caustics, light absorption tint          |
| `"Diving"`    | Enables jellyfish, pressure vignette, deep sea falloff |
| `"Aurora"`    | Enables aurora borealis bands at night           |

### LightMap Registration
Define custom lighting behavior per map:
```ruby
GameData::LightMap.register({
  :id   => map_id,
  :type => :night,   # :night, :cave, :forest, :custom
  :tone => Tone.new(-80, -80, -50, 100),
  :overlay => [Color.new(0, 0, 0, 150), 200, 12]
})
```

### Color Variable Map
Map game variable values to light colors (for `color_var` attribute):
```ruby
COLOR_VAR_MAP = {
  0 => Color.new(255, 255, 255),  # Default white
  1 => Color.new(255, 0, 0),      # Red
  2 => Color.new(0, 255, 0),      # Green
  3 => Color.new(0, 0, 255),      # Blue
}
```

### Lava Terrain Tag
Set `LAVA_TERRAIN_TAG` in Lighting_Core.rb to match your PBS terrain tag for lava tiles:
```ruby
LAVA_TERRAIN_TAG = 12  # Adjust to your project
```

---

## Save/Load

Lights are automatically saved when the game saves and restored when loading a save file.

- Event-spawned lights (from comment tags) are auto-rebuilt from event data
- Door bleed lights are auto-rebuilt from door event scanning
- Runtime-added lights (via `pbAddLight`) persist via `$PokemonGlobal.saved_lights`
- Flashlight state persists via `$PokemonGlobal.flashlight_active`

---

## Credits

- **Original Plugin**: Nononever
- **Extended Features**: Development team
- **Framework**: Pokémon Essentials v21.1
