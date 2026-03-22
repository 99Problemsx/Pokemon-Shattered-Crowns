# Party Banter

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Context-sensitive companion dialogues that trigger automatically during gameplay. Uses a priority system with cooldowns to keep conversations natural and non-repetitive.

---

## Features

- **Context Triggers** -- Dialogues fire on map change, battle end, item use, story events
- **BanterRegistry DSL** -- Define dialogues with conditions, priorities, and speaker assignments
- **Cooldown System** -- Prevents spam, guarantees variety between triggers
- **Portrait Support** -- Integrates with rainefallPortraits for speaker display
- **Relationship Scaling** -- Banter content and frequency scale with relationship tiers

---

## Configuration

Module: `PartyBanter`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `COOLDOWN_STEPS` | `80` | Minimum steps between banter triggers |
| `DISPLAY_MODE` | `:portrait` | Display style (`:portrait` or `:message`) |
| `COMPANION_SPEAKERS` | `{...}` | Speaker definitions |

---

## Defining Banter

### BanterRegistry DSL

```ruby
BanterRegistry.register(:forest_chat) do |b|
  b.trigger   :map_enter
  b.map       42
  b.speakers  [:LYRA, :KAEL]
  b.priority  5
  b.condition { pbRelationshipLevel(:LYRA) >= 3 }
  b.dialogue [
    [:LYRA, "This forest feels... familiar."],
    [:KAEL, "Stay alert. Something's watching us."],
  ]
end
```

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbTriggerBanter(context)` | Manually trigger a banter check |
| `pbBanterOnCooldown?` | Check if cooldown is active |

---

## Cross-Plugin Integration

- **Relationship System** -- Unlocks banter lines at higher tiers
- **rainefallPortraits** -- Speaker portrait display
- **Lore Codex** -- Some banters discover codex entries

---

## File Structure

```
[SC] Party Banter/
  meta.txt              - Plugin metadata
  000_Config.rb         - Configuration constants
  001_BanterCore.rb     - BanterRegistry, trigger engine, cooldowns
  002_BanterData.rb     - Banter definitions
```
