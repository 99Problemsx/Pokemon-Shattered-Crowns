# Sun Script - Changelog

## Version 2.0 - Bug Fixes & Improvements

### Fixed Bugs

- **Border "Deep-Fried" Bug**: Fixed issue where the sun became extremely bright near map borders

  - Changed sprite positioning and scaling to properly cover the entire viewport
  - Sun now scales exactly to screen size without excess pixels

- **Random Brightness Fluctuations**: Fixed sun randomly becoming brighter or dimmer while moving

  - Implemented global sun sprite system to prevent multiple overlapping sun sprites
  - Added spriteset registry to properly manage sun ownership across multiple spritesets
  - Only one sun sprite exists at a time, preventing accumulation and brightness spikes

- **Random Disappearance**: Fixed sun sprite disappearing unexpectedly
  - Improved spriteset lifecycle management
  - Sun now persists across spriteset transitions
  - Only disposes when truly needed (night, indoor, weather changes)

### Improvements

- **Optimized Performance**: Reduced from array-based to single sprite management
- **Better Z-Index**: Lowered from 9999 to 200 to prevent rendering conflicts
- **Configurable Opacity**: Added `SUN_OPACITY` setting (default: 150, adjustable 0-255)
- **Debug Logging**: Added console output for troubleshooting (can be removed in production)
- **Spriteset Management**: Multiple spritesets now share one sun sprite seamlessly

### Technical Changes

- Replaced per-instance `@sun_sprite` with global `@@sun_sprite` in `SunSettings` module
- Implemented active spriteset registry system
- Dynamic primary spriteset assignment for sun management
- Removed animation/scrolling features (can be re-added if needed)
- Simplified opacity calculation with cleaner fade transitions

### Settings

```ruby
SUN_OPACITY = 150  # Adjust brightness: 100 = subtle, 150 = moderate, 200 = strong, 255 = maximum
```

### Notes

- Animation removed for stability (static overlay like original design)
- Debug `echoln` statements can be removed for production by deleting those lines
- Compatible with multiple viewport/spriteset systems
