# Photo Mode

**Version:** 1.0.0\
**Module:** `PhotoMode`\
**Requires:** None

Pause the game and enter a **free camera mode** with 9 visual filters, 4 photo frames, zoom levels, and PNG export. Capture your journey through Asgheim.

---

## Features

| Feature | Description |
|---------|-------------|
| **Free Camera** | Move freely around the scene |
| **3 Zoom Levels** | 1.0×, 1.5×, 2.0× |
| **9 Filters** | Normal, Sepia, Noir, Warm, Cool, Vivid, Night, Golden, Dramatic |
| **4 Frames** | Simple, Ornate, Postcard, Polaroid |
| **PNG Export** | Screenshots saved to `Screenshots/` folder |
| **Watermark** | Optional "Pokémon Shattered Crowns" watermark |
| **Trigger Key** | F7 to enter photo mode |

---

## Filters

| Filter | Effect |
|--------|--------|
| Normal | No modification |
| Sepia | Warm, vintage tone |
| Noir | Black and white with high contrast |
| Warm | Slightly warm/orange |
| Cool | Cool blue tone |
| Vivid | Boosted saturation |
| Night | Dark blue overlay |
| Golden | Rich golden tones |
| Dramatic | High contrast, desaturated |

---

## Configuration

All settings are in `000_Config.rb` inside the `PhotoMode` module.

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `TRIGGER_KEY` | `:F7` | Key to open photo mode |
| `CAMERA_SPEED` | `4` | Pixels per frame |
| `CAMERA_MAX_RANGE_X` | `256` | Max horizontal range from player |
| `SCREENSHOT_FOLDER` | `"Screenshots"` | Output folder |
| `FILE_FORMAT` | `"png"` | Output format |
| `WATERMARK` | `"Pokémon Shattered Crowns"` | Watermark text (nil to disable) |

---

## Script Calls

```ruby
# Open photo mode
PhotoMode.open

# Take a screenshot from script
PhotoMode.capture
```

---

## File Structure

```
Plugins/[SC] Photo Mode/
  meta.txt          — Plugin metadata
  000_Config.rb     — Camera, filters, frames, output settings
  001_Core.rb       — Camera logic, filter application, screenshot capture
  002_Additions.rb  — UI controls overlay, frame rendering
```
