# Morality System

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

A Light/Dark alignment scale from -100 to +100 with 5 tiers. Choices shift alignment, which affects story endings, NPC reactions, and available options.

---

## Features

- **Alignment Scale** -- -100 (Pure Dark) to +100 (Pure Light)
- **5 Tiers** -- Pure Dark, Dark, Neutral, Light, Pure Light
- **Visual Feedback** -- Screen flash on alignment shifts (dark=purple, light=gold)
- **Story Endings** -- Different endings depending on alignment tier
- **Moral Choice Helper** -- Built-in dialogue prompt for binary moral decisions
- **Event Tag Support** -- Shift alignment from map event comments

---

## Configuration

Module: `MoralitySystem`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `MIN` / `MAX` | -100 / +100 | Alignment bounds |
| `TIERS` | 5 | Tier names and thresholds |
| `ENDINGS` | 3 | Ending requirements based on alignment |
| `ALIGNMENT_UNLOCKS` | `{...}` | Content gated by alignment |

---

## Event Tag

Place a **Comment** on any map event:

```
[Morality +/-N]
```

### Examples

```
[Morality +10]
[Morality -5]
```

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `moralChoice(light_text, dark_text, amount)` | Show moral choice prompt, applies +/- amount |
| `pbMorality` | Get current alignment value |
| `pbMoralityTier` | Get current tier name |
| `pbChangeMorality(amount)` | Directly shift alignment |
| `pbIsLight?` | Check if alignment is positive |
| `pbIsDark?` | Check if alignment is negative |

---

## Usage Example

```ruby
# Binary moral choice in an event
moralChoice("Help the villager", "Ignore them", 10)
# Player picks "Help" -> +10 morality (light flash)
# Player picks "Ignore" -> -10 morality (dark flash)

# Conditional content
if pbMoralityTier == :PURE_LIGHT
  pbMessage("The people bow before you. A true hero.")
end
```

---

## Cross-Plugin Integration

- **Relationship System** -- Some moral choices affect relationships
- **Trainer Card Ex** -- Alignment badge displayed
- **Destiny Board** -- Certain perks require alignment thresholds
- **Reputation System** -- Extreme alignment shifts affect faction standing

---

## File Structure

```
[SC] Morality System/
  meta.txt              - Plugin metadata
  000_Config.rb         - Tiers, endings, unlock definitions
  001_MoralityCore.rb   - Save data, alignment logic, visual feedback
  002_MoralityHelpers.rb - moralChoice prompt, event helpers
```
