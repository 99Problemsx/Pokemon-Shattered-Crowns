# Photo Mode

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

A free-camera photo mode with filters, frames, and screenshot export. Triggered by hotkey during gameplay.

---

## Features

- **Free Camera** -- Move the camera independently of the player
- **9 Filters** -- Normal, Sepia, Noir, Vivid, Faded, Cool, Warm, Dramatic, Retro
- **5 Frames** -- Various border options for screenshots
- **PNG Export** -- Screenshots saved to the game directory
- **Zoom Control** -- Multiple zoom levels

---

## Configuration

Module: `PhotoMode`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `TRIGGER_KEY` | `:F7` | Key to open photo mode |
| `CAMERA_SPEED` | varies | Camera pan speed |
| `ZOOM_LEVELS` | multiple | Available zoom steps |
| `FILTERS` | 9 | Filter presets |
| `FRAMES` | 5 | Border options |

---

## Controls

| Key | Action |
|-----|--------|
| F7 | Open/close photo mode |
| Arrow Keys | Move camera |
| Z/X | Cycle filters |
| A/S | Cycle frames |
| +/- | Zoom in/out |
| Enter | Take screenshot |

---

## File Structure

```
[SC] Photo Mode/
  meta.txt              - Plugin metadata
  000_Config.rb         - Filter/frame definitions, key bindings
  001_PhotoCore.rb      - Camera control, filter rendering, screenshot export
```
