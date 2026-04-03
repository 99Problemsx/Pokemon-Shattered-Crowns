# QoL Toggles

**Version:** 1.0.0\
**Module:** `QoLToggles`\
**Requires:** None

A player-facing **toggle menu** for quality-of-life features. Auto-run, fast text, battle speed, damage numbers, skip cutscenes — all accessible in-game without touching config files.

---

## Features

| Feature | Description |
|---------|-------------|
| **8 Toggles** | All QoL options in one menu |
| **In-Game Access** | From the options/pause menu |
| **Per-Save** | Each save file has its own toggle state |
| **Instant Apply** | Changes take effect immediately |

---

## Available Toggles

| Toggle | Default | Description |
|--------|---------|-------------|
| 🏃 **Auto-Run** | Off | Always run without holding B |
| ⏩ **Fast Text** | Off | Text displays instantly |
| ⚡ **Fast Battles** | Off | Battle animations play faster |
| ⏭️ **Skip Seen Cutscenes** | Off | Hold CTRL to skip seen cutscenes |
| 🌊 **Quick Surf** | Off | Skip the Surf animation |
| 🎒 **Auto-Sort Bag** | Off | Bag items auto-sorted |
| ❌ **Skip Nickname Prompt** | Off | Don't ask to nickname caught Pokémon |
| 📊 **Show Damage Numbers** | On | Display damage values in battle |

---

## Configuration

All settings are in `000_Config.rb` inside the `QoLToggles` module.

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `HOTKEY` | `nil` | Key to open QoL menu from overworld (nil = pause menu only) |

---

## Script Calls

```ruby
# Check if a toggle is active
QoLToggles.enabled?(:AUTO_RUN)     # => true/false

# Set a toggle
QoLToggles.set(:FAST_TEXT, true)

# Open the toggle menu
QoLToggles.open
```

---

## File Structure

```
Plugins/[SC] QoL Toggles/
  meta.txt          — Plugin metadata
  000_Config.rb     — Toggle definitions, hotkey, sounds
  001_Core.rb       — Toggle state management, menu UI
  002_Additions.rb  — Auto-run hook, text speed hook, battle hooks
```
