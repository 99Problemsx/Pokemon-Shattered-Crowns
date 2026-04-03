# Relationship System

**Version:** 1.0.0\
**Module:** `RelationshipSystem`\
**Requires:** None

Four companions walk beside you through Shattered Crowns — **Lyra**, **Kael**, **Aldric**, and **Ragnar**. Every dialogue choice, battle action, and story decision shifts how they feel about you. Earn their trust to unlock exclusive cutscenes, partner battle access, and endgame variants. Betray it, and they may turn against you.

---

## Features

| Feature | Description |
|---------|-------------|
| **4 Companions** | Each with unique personality, guardian alignment, and story arc |
| **6 Relationship Tiers** | Rival → Cold → Neutral → Warm → Friend → Bonded |
| **Multiple Point Sources** | Dialogue (+5), battle protection (+3), story events (+15/−10) |
| **Tier-Gated Content** | Cutscenes, battle access, and endings unlock at specific tiers |
| **Per-Character Tracking** | Each companion has an independent relationship value |

---

## The Companions

| Companion | Starting Points | Guardian Alignment | Personality |
|-----------|----------------|-------------------|-------------|
| **Lyra** 🌿 | 10 (Neutral) | Xerneas — Path of Life | Compassionate healer, believes in second chances |
| **Kael** 🌑 | −5 (Cold) | Yveltal — Path of the Void | Cynical loner, distrusts everyone — especially you |
| **Aldric** ⚔️ | 20 (Warm) | None — walks his own path | Veteran knight, loyal but tests your resolve |
| **Ragnar** ⚡ | 0 (Neutral) | None — undecided | Hot-headed warrior, respects strength above all |

> **Guardian Alignment** means the companion naturally gravitates toward that Destiny Board path. Lyra approves of Life choices; Kael respects Void choices.

---

## Relationship Tiers

| Tier | Threshold | Status | What It Means |
|------|-----------|--------|---------------|
| 🔴 **Rival** | −100 | Hostile | Will oppose you in story events, may become an enemy |
| 🟠 **Cold** | −50 | Distrustful | Minimal interaction, refuses to partner in battle |
| ⚪ **Neutral** | −20 | Indifferent | Standard dialogue, no bonuses or penalties |
| 🔵 **Warm** | +20 | Friendly | Unlocks casual dialogue, small battle bonuses |
| 🟢 **Friend** | +50 | Trusted | Unlocks personal cutscenes and partner battles |
| 🟡 **Bonded** | +80 | Deep bond | Unlocks final story arc, unique ending variant, and exclusive moves |

---

## How Points Change

### Dialogue Choices

Every story conversation with choices affects the companion who's present:

| Action | Points |
|--------|--------|
| Choose a response they agree with | **+5** |
| Choose a neutral response | **0** |
| Choose a response they disagree with | **−5** |
| Major story alignment (positive) | **+15** |
| Major story alignment (negative) | **−10** |

### Battle Actions

| Action | Points |
|--------|--------|
| Protect their Pokémon in a companion battle | **+3** |
| Let their Pokémon faint while yours survives | **−2** |
| Win a companion battle together | **+2** |

### Story Events

Major events can shift relationships dramatically:

| Example Event | Effect |
|---------------|--------|
| Side with Lyra against the Void Resistance | Lyra +15, Kael −10 |
| Spare a defeated Nemesis | Aldric +10, Ragnar −5 |
| Sacrifice an item to save a village | All companions +5 |

---

## Configuration

All settings are in `000_Config.rb` inside the `RelationshipSystem` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log relationship changes to console |

### Character Definitions

```ruby
CHARACTERS = {
  LYRA:   { name: "Lyra",   start: 10,  guardian: :XERNEAS },
  KAEL:   { name: "Kael",   start: -5,  guardian: :YVELTAL },
  ALDRIC: { name: "Aldric", start: 20,  guardian: nil      },
  RAGNAR: { name: "Ragnar", start: 0,   guardian: nil      },
}
```

### Tier Thresholds

```ruby
TIERS = {
  RIVAL:   -100,
  COLD:    -50,
  NEUTRAL: -20,
  WARM:     20,
  FRIEND:   50,
  BONDED:   80,
}
```

### Point Values

| Constant | Default | Description |
|----------|---------|-------------|
| `DIALOGUE_POSITIVE` | `5` | Points for a liked dialogue choice |
| `DIALOGUE_NEGATIVE` | `-5` | Points for a disliked dialogue choice |
| `BATTLE_PROTECT_ALLY` | `3` | Points for protecting their Pokémon |
| `BATTLE_ALLY_FAINT` | `-2` | Points when their Pokémon faints |
| `STORY_MAJOR_POSITIVE` | `15` | Points for a major aligned story choice |
| `STORY_MAJOR_NEGATIVE` | `-10` | Points for a major opposed story choice |

---

## Tutorial: Changing Relationship Points

### Step 1: Shift Points in a Dialogue Event

```ruby
# Lyra liked your choice
RelationshipSystem.shift(:LYRA, 5)

# Kael did not appreciate that
RelationshipSystem.shift(:KAEL, -10)
```

### Step 2: Check Tier for Content Gating

```ruby
# Only trigger if Aldric considers you a Friend
if RelationshipSystem.tier(:ALDRIC) == :FRIEND
  # Start Aldric's personal cutscene
end

# Check if anyone is at Bonded tier
RelationshipSystem.bonded_companions  # => [:LYRA, :ALDRIC]
```

### Step 3: Gate a Companion Battle

```ruby
# Ragnar will only fight alongside you if Warm or higher
if RelationshipSystem.points(:RAGNAR) >= 20
  # Start a companion double battle with Ragnar
end
```

---

## Script Calls

```ruby
# Get relationship points
RelationshipSystem.points(:LYRA)          # => 35

# Get relationship tier
RelationshipSystem.tier(:KAEL)            # => :COLD

# Shift relationship
RelationshipSystem.shift(:ALDRIC, 10)
RelationshipSystem.shift(:RAGNAR, -5)

# Set to exact value
RelationshipSystem.set(:LYRA, 50)

# Get all companions at a specific tier
RelationshipSystem.at_tier(:FRIEND)       # => [:LYRA, :ALDRIC]

# Get all bonded companions
RelationshipSystem.bonded_companions      # => [:LYRA]

# Check if a cutscene should trigger
RelationshipSystem.cutscene_ready?(:KAEL, :FRIEND)  # => false
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Morality System](morality-system.md) | Alignment shifts can affect relationship with aligned companions |
| [Companion Battles](../battle-systems/companion-battles.md) | Tier gates who can fight beside you |
| [Party Banter](party-banter.md) | Dialogue changes based on relationship tier |
| [Flashback System](flashback-system.md) | Bonded tier unlocks playable flashback for that companion |
| [Memory Lane](memory-lane.md) | End-game recap includes relationship highlights |

---

## File Structure

```
Plugins/[SC] Relationship System/
  meta.txt          — Plugin metadata
  000_Config.rb     — Characters, tiers, point tuning, UI settings
  001_Core.rb       — Point tracking, tier logic, cutscene gates
  002_Additions.rb  — Dialogue hooks, battle integration, UI
```
