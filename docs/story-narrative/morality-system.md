# Morality System

**Version:** 1.0.0\
**Module:** `MoralitySystem`\
**Requires:** None

Every choice casts a shadow — or shines a light. The Morality System tracks the player's alignment on a **−100 to +100 scale**, shaped by dialogue choices, story decisions, and key events. Your alignment determines NPC reactions, quest availability, shop access, visual feedback, and ultimately **which of the three endings** you unlock.

---

## Features

| Feature | Description |
|---------|-------------|
| **Alignment Scale** | −100 (Pure Dark) to +100 (Pure Light), starting at 0 |
| **5 Alignment Tiers** | Pure Dark → Dark → Neutral → Light → Pure Light |
| **3 Endings** | Redemption (Pure Light), Balance (Neutral), Domination (Pure Dark) |
| **NPC Reactions** | Dialogue and quest access change based on your tier |
| **Visual Feedback** | Screen flash with alignment-colored tint on every morality shift |
| **Sound Feedback** | Unique SE plays on Light vs Dark shifts |
| **Debug Mode** | Console logging of every alignment change |

---

## The Alignment Scale

```
 PURE DARK        DARK         NEUTRAL         LIGHT       PURE LIGHT
◄──────────┼──────────┼──────────┼──────────┼──────────►
-100      -61       -21         0        +21       +61      +100
```

Your alignment value determines your **tier**:

| Tier | Range | Description |
|------|-------|-------------|
| 🟣 **Pure Dark** | −100 to −61 | Embraced Nidhoggr's void — feared by all |
| 🔴 **Dark** | −60 to −21 | Walking a selfish, ruthless path |
| ⚪ **Neutral** | −20 to +20 | Balanced — neither light nor shadow |
| 🔵 **Light** | +21 to +60 | Guided by compassion and duty |
| 🟡 **Pure Light** | +61 to +100 | Champion of Yggdrasil's radiance — revered |

---

## Endings

Your tier at the **point of no return** determines the ending cinematic and epilogue:

| Ending | Required Tier | What Happens |
|--------|---------------|-------------|
| ✨ **Redemption** | Pure Light | The Crowns are restored, Yggdrasil is healed, Nidhoggr is sealed |
| ⚖️ **Balance** | Neutral | A fragile peace — neither victory nor defeat, the cycle continues |
| 💀 **Domination** | Pure Dark | The Crowns shatter forever, the player claims the void's power |

> **Note:** The Dark and Light tiers (non-pure) default to the nearest extreme ending, but with altered dialogue and cutscenes reflecting the player's hesitation.

---

## Configuration

All settings are in `000_Config.rb` inside the `MoralitySystem` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle for the entire morality system |
| `DEBUG_MODE` | `false` | Log every alignment change to the console |
| `DEFAULT_ALIGNMENT` | `0` | Starting alignment value for new games |

### Alignment Tiers

| Constant | Default | Description |
|----------|---------|-------------|
| `ALIGNMENT_TIERS[:PURE_DARK]` | `-100..-61` | Range for Pure Dark tier |
| `ALIGNMENT_TIERS[:DARK]` | `-60..-21` | Range for Dark tier |
| `ALIGNMENT_TIERS[:NEUTRAL]` | `-20..20` | Range for Neutral tier |
| `ALIGNMENT_TIERS[:LIGHT]` | `21..60` | Range for Light tier |
| `ALIGNMENT_TIERS[:PURE_LIGHT]` | `61..100` | Range for Pure Light tier |

### Endings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENDINGS[:REDEMPTION]` | `:PURE_LIGHT` | Tier required for the Redemption ending |
| `ENDINGS[:BALANCE]` | `:NEUTRAL` | Tier required for the Balance ending |
| `ENDINGS[:DOMINATION]` | `:PURE_DARK` | Tier required for the Domination ending |

### Visual & Audio Feedback

| Constant | Default | Description |
|----------|---------|-------------|
| `ALIGNMENT_FLASH_DURATION` | `20` | Frames the screen flash lasts on alignment change |
| `LIGHT_FLASH_COLOR` | `[255, 223, 100, 160]` | RGBA tint for Light shifts (warm gold) |
| `DARK_FLASH_COLOR` | `[80, 0, 120, 160]` | RGBA tint for Dark shifts (deep purple) |
| `LIGHT_SE` | `"Aura_Light"` | Sound effect played on Light alignment gain |
| `DARK_SE` | `"Aura_Dark"` | Sound effect played on Dark alignment gain |

---

## Tutorial: Adding a Morality Choice

### Step 1: Create a Dialogue Event

In RPG Maker, create an event with a **Show Choices** command. Each choice should call a script to shift alignment:

```ruby
# Player chose to help the villager (Light +10)
MoralitySystem.shift_alignment(10)

# Player chose to rob the villager (Dark −15)
MoralitySystem.shift_alignment(-15)
```

### Step 2: Gate Content by Tier

Use conditional branches to check the player's current tier:

```ruby
# Only available to Light or Pure Light players
if MoralitySystem.tier == :LIGHT || MoralitySystem.tier == :PURE_LIGHT
  # Show exclusive Light-path dialogue or quest
end

# Only available to Dark players
if MoralitySystem.alignment < -20
  # Unlock the Void Resistance hideout
end
```

### Step 3: Check Before the Final Battle

At the point of no return, the system automatically determines which ending path activates:

```ruby
# Get the ending the player has earned
ending = MoralitySystem.current_ending  # => :REDEMPTION, :BALANCE, or :DOMINATION
```

---

## Script Calls

```ruby
# Get current alignment value (-100 to +100)
MoralitySystem.alignment            # => 35

# Get current tier symbol
MoralitySystem.tier                  # => :LIGHT

# Shift alignment (positive = Light, negative = Dark)
MoralitySystem.shift_alignment(10)   # +10 towards Light
MoralitySystem.shift_alignment(-20)  # −20 towards Dark

# Set alignment to exact value
MoralitySystem.set_alignment(0)      # Reset to Neutral

# Get current ending based on tier
MoralitySystem.current_ending        # => :REDEMPTION

# Check specific tiers
MoralitySystem.pure_light?           # => true/false
MoralitySystem.pure_dark?            # => true/false
MoralitySystem.neutral?              # => true/false
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Relationship System](relationship-system.md) | Morality shifts can raise/lower companion affinity |
| [Reputation System](../player-systems/reputation-system.md) | Some factions judge you by alignment |
| [Quest Journal](../player-systems/quest-journal.md) | Certain quests are locked behind alignment tiers |
| [Party Banter](party-banter.md) | Companions comment on your moral choices |
| [Lore Codex](lore-codex.md) | Dark-path players unlock Nidhoggr entries; Light-path players unlock Yggdrasil entries |

---

## File Structure

```
Plugins/[SC] Morality System/
  meta.txt          — Plugin metadata
  000_Config.rb     — Tiers, endings, flash colors, sound effects
  001_Core.rb       — Alignment tracking, tier calculation, ending logic
  002_Additions.rb  — Event hooks, NPC reaction integration, UI overlays
```
