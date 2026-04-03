# Time Travel

**Version:** 1.0.0\
**Module:** `TimeTravelSystem`\
**Requires:** None

Yggdrasil's roots don't just span space — they span **time**. Certain locations in Shattered Crowns exist in both the **Present** and the **Ancient Era**. Step through a Yggdrasil root to switch between eras, discovering different NPCs, layouts, encounters, and secrets that can only be found in the past.

---

## Features

| Feature | Description |
|---------|-------------|
| **2 Eras** | Present and Ancient Era |
| **Map Pairs** | Each paired location has a present and past version |
| **Yggdrasil Roots** | Travel points marked with `[TimeTravel]` event tag |
| **Badge-Gated** | Some portals require minimum badges to use |
| **Visual Transition** | Purple flash + screen tone shift |
| **Past Exclusive Pokémon** | Fossil species appear as wild encounters in the past |
| **Level Bonus** | Past-era wilds are +3 levels higher |
| **Shared State** | Configurable switches/variables persist across timelines |

---

## How It Works

```
[Present Map] ──► Yggdrasil Root event ──► [Past Map]
                   │
              Purple flash
              Tone shift: dimmer, blue-ish
              Pokémon levels +3
              Fossil species in wild
```

---

## Past-Exclusive Pokémon

These species can be found as wild encounters only in the Ancient Era:

| Species | Type |
|---------|------|
| Aerodactyl | Rock/Flying |
| Relicanth | Water/Rock |
| Archen | Rock/Flying |
| Tirtouga | Water/Rock |
| Cranidos | Rock |
| Shieldon | Rock/Steel |

---

## Configuration

All settings are in `000_Config.rb` inside the `TimeTravelSystem` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log era switches to console |
| `ERA_PRESENT` | `:PRESENT` | Present era key |
| `ERA_PAST` | `:PAST` | Past era key |

### Visual Transition

| Constant | Default | Description |
|----------|---------|-------------|
| `TRANSITION_SE` | `"Door exit"` | Sound effect on era switch |
| `TRANSITION_FLASH_COLOR` | Purple-ish | Flash color during transition |
| `TRANSITION_FLASH_SPEED` | `20` | Flash speed in frames |
| `SCREEN_TONE_PAST` | Dim/blue | Tone while in the Ancient Era |
| `SCREEN_TONE_PRESENT` | Normal | Tone while in the Present |

### Gameplay Rules

| Constant | Default | Description |
|----------|---------|-------------|
| `PAST_LEVEL_BONUS` | `3` | Wild Pokémon level boost in the past |
| `PAST_EXCLUSIVE_SPECIES` | 6 fossil species | Species only found in past era |
| `PAST_NPC_PREFIX` | `"Ancient "` | Prefix for NPC names in the past |

### Map Pair Definitions

```ruby
MAP_PAIRS = {
  50 => { :past_map => 150, :name => "Asgheim Central", :badge_req => 3 },
  60 => { :past_map => 160, :name => "Frosthollow",     :badge_req => 4 },
  70 => { :past_map => 170, :name => "Verdant Plateau", :badge_req => 5 },
  80 => { :past_map => 180, :name => "Nidhoggr's Grove", :badge_req => 7 },
}
```

---

## Tutorial: Setting Up Time Travel

### Step 1: Create Map Pairs

Create a present-day map and its past counterpart in RPG Maker.

### Step 2: Register the Pair

Add the map IDs to `MAP_PAIRS` in the config.

### Step 3: Place a Yggdrasil Root Event

Create an event with the comment tag `[TimeTravel]`:

```ruby
# Or trigger via script
TimeTravelSystem.travel
```

### Step 4: Check Current Era

```ruby
TimeTravelSystem.current_era       # => :PRESENT or :PAST
TimeTravelSystem.in_past?           # => true/false
```

---

## Script Calls

```ruby
# Travel to the other era
TimeTravelSystem.travel

# Check current era
TimeTravelSystem.current_era        # => :PRESENT or :PAST
TimeTravelSystem.in_past?            # => true/false

# Get era display name
TimeTravelSystem.era_name            # => "Ancient Era"

# Force to specific era
TimeTravelSystem.set_era(:PAST)
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Spirit Realm](spirit-realm.md) | Spirit portals exist in both eras |
| [Lore Codex](../story-narrative/lore-codex.md) | Past-era steles unlock history entries |
| [Map Fog of War](map-fog-of-war.md) | Past maps have separate fog tracking |
| [Weather Events](weather-events.md) | Past and present can have different weather |

---

## File Structure

```
Plugins/[SC] Time Travel/
  meta.txt          — Plugin metadata
  000_Config.rb     — Map pairs, transitions, gameplay rules
  001_Core.rb       — Era tracking, map transfer, encounter modification
  002_Additions.rb  — Event tag parsing, visual effects, hooks
```
