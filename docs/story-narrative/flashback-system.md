# Flashback System

**Version:** 1.0.0\
**Module:** `FlashbackSystem`\
**Requires:** None

*"Years ago..."* — The screen fades to sepia, a label appears, and suddenly you're **playing as someone else**. The Flashback System lets you create fully playable sequences from other characters' perspectives — complete with their own party, location, and story context.

---

## Features

| Feature | Description |
|---------|-------------|
| **Playable Flashbacks** | Full control as another character with their own party |
| **Sepia Tone Overlay** | Automatic visual shift to a warm, nostalgic tone |
| **Label Text** | "Years ago..." / "Before the Chosen..." label at start |
| **Menu Restrictions** | Optionally disable Save, Bag, Map during flashbacks |
| **Completion Switch** | Set a game switch when a flashback finishes |
| **Seamless Return** | Player's party, position, and context restored after |

---

## How It Works

```
Story event triggers flashback
  → Screen fades (40 frames) + flash (20 frames)
  → Sepia tone overlay applied
  → Player's party/map/context saved
  → Flashback character's party loaded
  → Player teleported to flashback map
  → [Player plays the sequence]
  → Flashback end event fires
  → Context restored, completion switch set
```

---

## Configuration

All settings are in `000_Config.rb` inside the `FlashbackSystem` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log flashback events to console |

### Visual Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `FLASHBACK_TONE` | `Tone.new(20, 10, -20, 40)` | Sepia-ish screen tone |
| `FADE_FRAMES` | `40` | Fade-out duration in frames |
| `FLASH_FRAMES` | `20` | Flash duration in frames |
| `SHOW_LABEL` | `true` | Show "Years ago..." label text |
| `LABEL_TEXT_COLOR` | warm gold | Label text color |
| `LABEL_SHADOW_COLOR` | dark brown | Label text shadow |

### Menu Restrictions

| Constant | Default | Description |
|----------|---------|-------------|
| `DISABLE_SAVE` | `true` | Prevent saving during flashbacks |
| `DISABLE_BAG` | `false` | Prevent bag access |
| `DISABLE_POKEMON` | `false` | Prevent party screen access |
| `DISABLE_MAP` | `true` | Prevent map access |

### Flashback Definitions

```ruby
FLASHBACKS = {
  :RAGNAR_FALL => {
    :label       => "Years ago...",
    :character   => "Ragnar",
    :map_id      => 100,
    :start_x     => 10,
    :start_y     => 8,
    :party       => [:AEGISLASH, :TYRANITAR, :GARCHOMP],
    :party_levels => [55, 58, 60],
    :end_switch  => 300,
  },
  :KAEL_PAST => {
    :label       => "Before the Chosen...",
    :character   => "Kael",
    :map_id      => 102,
    :start_x     => 8,
    :start_y     => 6,
    :party       => [:ABSOL, :HONCHKROW, :WEAVILE],
    :party_levels => [40, 42, 38],
    :end_switch  => 302,
  },
}
```

---

## Tutorial: Creating a Flashback

### Step 1: Define in Config

Add an entry to the `FLASHBACKS` hash with a unique key.

### Step 2: Trigger from a Story Event

```ruby
# Start Ragnar's flashback
FlashbackSystem.start(:RAGNAR_FALL)
```

### Step 3: End the Flashback

Place an event on the flashback map that fires when the sequence is complete:

```ruby
# End current flashback and return to present
FlashbackSystem.end_flashback
```

### Step 4: Check Completion

```ruby
# Has this flashback been completed?
FlashbackSystem.completed?(:RAGNAR_FALL)  # => true/false

# Or check the game switch directly
$game_switches[300]  # => true after completion
```

---

## Script Calls

```ruby
# Start a flashback
FlashbackSystem.start(:RAGNAR_FALL)

# End the current flashback
FlashbackSystem.end_flashback

# Check if currently in a flashback
FlashbackSystem.in_flashback?          # => true/false

# Check if a flashback has been completed
FlashbackSystem.completed?(:KAEL_PAST)  # => true/false

# Get current flashback character name
FlashbackSystem.current_character       # => "Ragnar" or nil
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Relationship System](relationship-system.md) | Bonded tier unlocks companion flashbacks |
| [Morality System](morality-system.md) | Flashbacks can reveal backstory behind morality choices |
| [Lore Codex](lore-codex.md) | Flashback events can unlock codex entries |
| [Memory Lane](memory-lane.md) | Flashback completions recorded as milestones |

---

## File Structure

```
Plugins/[SC] Flashback System/
  meta.txt          — Plugin metadata
  000_Config.rb     — Flashback definitions, visuals, restrictions
  001_Core.rb       — Context save/restore, party swap, map transfer
  002_Additions.rb  — Event hooks, menu overrides, UI
```
