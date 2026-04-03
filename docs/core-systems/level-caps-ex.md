# Level Caps Ex

**Version:** 2.3.2 (Shattered Crowns Fork)\
**Author:** Nononever\
**Module:** `LevelCapsEX`

Flexible level cap system with 3 modes, badge-based auto-caps, smooth EXP scaling, an EXP storage piggy bank, and EV conversion from blocked EXP.

<!-- TODO: Add screenshot of Party Screen showing orange/red level cap indicators -->

---

## Features

| Feature | Description |
|---------|-------------|
| **3 Cap Modes** | Hard Cap (no EXP), Soft/EXP Cap (reduced EXP), Obedience Cap (disobey) |
| **Badge-Based Auto Cap** | Level cap automatically increases with each badge earned |
| **Smooth Soft Cap** | Exponentially reduced EXP instead of flat 1/10 (1 over = 50%, 5 over = 3%) |
| **EXP Storage** | Blocked EXP is banked per-Pokémon and awarded when the cap increases |
| **EV Conversion** | At-cap Pokémon still gain EVs from defeated foes (respects 510/252, Pokérus, Power items) |
| **Bypass Switch** | Game switch to disable caps for enemy trainers |
| **UI Indicators** | Orange level text at cap, red when over cap (party screen + summary) |
| **Pause Menu HUD** | Shows current level cap in Voltseon's Pause Menu (if installed) |
| **Debug Menu** | Set cap, mode, view/award/clear stored EXP, toggle bypass |

---

## Configuration

All settings are in `000_Config.rb` inside the `LevelCapsEX` module.

### Core Variables

| Constant | Default | Description |
|----------|---------|-------------|
| `LEVEL_CAP_VARIABLE` | `198` | Game Variable that holds the current level cap value |
| `LEVEL_CAP_MODE_VARIABLE` | `199` | Game Variable that holds the current cap mode (1/2/3) |
| `DEFAULT_LEVEL_CAP_MODE` | `1` | Mode set on new game start |
| `LEVEL_CAP_BYPASS_SWITCH` | `200` | Game Switch — when ON, disables caps for enemy trainers |
| `LOG_LEVEL_CAP_CHANGES` | `true` | Print cap changes to console (debug builds only) |

### Badge Auto-Cap

| Constant | Default | Description |
|----------|---------|-------------|
| `BADGE_AUTO_CAP` | `true` | Automatically update cap when player earns a badge |
| `BADGE_LEVEL_CAPS` | Hash | Maps badge count → level cap (see below) |

```ruby
BADGE_LEVEL_CAPS = {
  0 => 15,   # Start of game
  1 => 20,   # After Badge 1
  2 => 25,   # After Badge 2
  3 => 30,   # After Badge 3
  4 => 35,   # After Badge 4
  5 => 45,   # After Badge 5
  6 => 55,   # After Badge 6
  7 => 65,   # After Badge 7
  8 => 75,   # After Badge 8
  9 => 100   # Post-game
}
```

### Soft Cap Scaling

| Constant | Default | Description |
|----------|---------|-------------|
| `SOFT_CAP_SCALED` | `true` | Use smooth EXP curve for mode 2 instead of flat 1/10 |

When enabled, the reduction curve works like this:

| Levels Over Cap | EXP Multiplier |
|-----------------|----------------|
| 1 | 50% |
| 2 | 25% |
| 3 | 12.5% |
| 5 | ~3% |
| 10+ | 1% (minimum) |

### EXP Storage (Piggy Bank)

| Constant | Default | Description |
|----------|---------|-------------|
| `EXP_STORAGE_ENABLED` | `true` | Bank blocked EXP and award it when the cap increases |

Data is persisted in `$PokemonGlobal.level_cap_stored_exp` — saved automatically with the game.

### EV Conversion

| Constant | Default | Description |
|----------|---------|-------------|
| `EV_FROM_BLOCKED_EXP` | `true` | At-cap Pokémon still gain EVs from battle |
| `EV_BLOCKED_EXP_MULTIPLIER` | `1.0` | Multiplier on EV yield (1.0 = normal, 2.0 = double) |

When enabled, Pokémon at the hard cap still receive the defeated Pokémon's normal EV yield. This respects:
- ✅ 510 total EV limit / 252 per-stat limit
- ✅ Pokérus (2x)
- ✅ Power items (Macho Brace, Power Anklet, etc.)

---

## Cap Modes

### Mode 1 — Hard Cap
Pokémon **cannot gain any EXP** past the level cap. Blocked EXP goes to the piggy bank (if enabled). EVs are still awarded (if EV conversion is enabled).

### Mode 2 — Soft/EXP Cap
Pokémon gain **reduced EXP** when at or above the cap. With `SOFT_CAP_SCALED = true`, the reduction follows a smooth exponential curve. With it off, a flat 1/10 reduction is used.

### Mode 3 — Obedience Cap
Pokémon can **overlevel freely** but will **disobey** when above the cap. Disobedience chance increases with levels over cap:

| Levels Over | Behavior |
|-------------|----------|
| 1-2 | Occasional disobedience |
| 3-4 | Frequent disobedience |
| 5+ | Almost always disobeys |

---

## Tutorial: Setting Up Level Caps

### Step 1: Choose Your Mode

In an event or at game start, set the mode variable:

```ruby
# Hard Cap (recommended for story playthrough)
$game_variables[199] = 1

# Soft Cap (for a less restrictive feel)
$game_variables[199] = 2

# Obedience Cap (classic trade-Pokémon style)
$game_variables[199] = 3
```

### Step 2: Set the Initial Cap

If using `BADGE_AUTO_CAP = true`, the cap is set automatically. Otherwise, set it manually:

```ruby
$game_variables[198] = 15  # Cap at level 15
```

### Step 3: Customize Badge Table (Optional)

Edit `BADGE_LEVEL_CAPS` in `000_Config.rb` to match your game's progression:

```ruby
BADGE_LEVEL_CAPS = {
  0 => 12,   # Your custom values
  1 => 18,
  2 => 24,
  # ...
}
```

### Step 4: Test in Debug Menu

Open the debug menu → **Field** → **Level Cap options...** to:
- Set level cap / mode on the fly
- View stored EXP per party Pokémon
- Award or clear stored EXP
- Toggle the bypass switch

---

## Script Calls

For use in events or other plugins:

```ruby
# Get current level cap
LevelCapsEX.level_cap          # => 35

# Check current mode
LevelCapsEX.hard_cap?          # => true/false
LevelCapsEX.soft_cap?          # => true/false
LevelCapsEX.obedience_cap?     # => true/false

# Check if a specific Pokémon is at cap
pkmn.at_level_cap?             # => true/false

# Check if a Pokémon can gain EXP
LevelCapsEX.can_gain_exp?(pkmn)  # => true/false

# Get current level cap (alias)
LevelCapsEX.current_level_cap  # => 35

# Manually trigger badge-based cap update
LevelCapsEX.update_cap_for_badges

# View stored EXP for a Pokémon
LevelCapsEX.stored_exp[pkmn.personalID]  # => 1250

# Manually award all stored EXP
LevelCapsEX.award_stored_exp
```

---

## File Structure

```
[SC] Level Caps Ex/
  meta.txt              - Plugin metadata
  000_Config.rb         - All settings: variables, badge table, modes, EV conversion
  001_Main.rb           - EXP interception, cap mode logic, EV conversion, battle hooks
  002_Additions.rb      - Candy handlers, badge hooks, EXP storage, UI indicators, debug menu
  README.md             - Quick reference
```

---

## UI Indicators

<!-- TODO: Add screenshots -->

### Party Screen
- **Orange** level number → Pokémon is exactly at the level cap
- **Red** level number → Pokémon is above the level cap

### Summary Screen
- Shows "At Level Cap" (orange) or "Over Level Cap!" (red) label
- Shows stored EXP amount if the piggy bank has data for that Pokémon

### Pause Menu (Voltseon's)
- Displays "Current Lvl Cap: X" in the top-right corner
