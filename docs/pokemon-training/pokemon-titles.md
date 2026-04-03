# Pokémon Titles

**Version:** 1.0.0\
**Module:** `PokemonTitles`\
**Requires:** None

Your Pokémon earn **epithets** based on their achievements in battle. A Pokémon that wins 50 battles without fainting earns **"the Undefeated"**. One that KO's 10 Dragon-types becomes **"the Dragon Slayer"**. Titles are displayed in the Summary screen and battle intro — giving every team member a unique identity.

---

## Features

| Feature | Description |
|---------|-------------|
| **10 Unique Titles** | Each earned through specific combat achievements |
| **Priority System** | Highest-priority title shown when multiple are earned |
| **Shown in Battle** | Title displayed during battle intro |
| **Shown in Summary** | Title displayed on Summary screen |
| **Title Earned SE** | Sound effect plays when a title is unlocked |

---

## Title List

| Title | Condition | Priority |
|-------|-----------|----------|
| 👑 **Nidhoggr's Bane** | Dealt the final blow to Nidhoggr | 200 |
| 👑 **Crown Bearer** | Used Crown Shatter 25 times | 110 |
| ⭐ **the Undefeated** | Won 50 battles without fainting | 100 |
| ⭐ **the Chosen** | Defeated all 8 Gym Leaders | 90 |
| 🐉 **the Dragon Slayer** | KO'd 10 Dragon-type Pokémon | 80 |
| 💥 **the Devastating** | KO'd 20 opponents in a single hit | 75 |
| 🛡️ **the Iron Wall** | Survived 30 super-effective hits | 70 |
| 🏅 **the Veteran** | Won 200 battles | 60 |
| ⚡ **the Swift** | Moved first 100 times | 50 |
| 💕 **the Loyal** | Walked 10,000 steps as lead Pokémon | 40 |

> Higher priority titles are displayed first when a Pokémon earns multiple.

---

## Configuration

All settings are in `000_Config.rb` inside the `PokemonTitles` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log title unlocks |
| `SE_TITLE_EARNED` | `"Pkmn exp full"` | Sound on title unlock |
| `SHOW_IN_BATTLE_INTRO` | `true` | Show title in battle |
| `SHOW_IN_SUMMARY` | `true` | Show title in Summary |
| `TITLE_COLOR` | Gold | Title text color |

---

## Script Calls

```ruby
# Get a Pokémon's current displayed title
PokemonTitles.current_title(pkmn)     # => "the Undefeated"

# Get all earned titles
PokemonTitles.earned_titles(pkmn)     # => [:THE_UNDEFEATED, :DRAGON_SLAYER]

# Check if a specific title is earned
PokemonTitles.has_title?(pkmn, :IRON_WALL)  # => true/false

# Force-award a title (debug/story)
PokemonTitles.award(pkmn, :NIDHOGGRS_BANE)
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Memory Lane](../story-narrative/memory-lane.md) | Titles earned shown in journey recap |
| [Trainer Card Ex](../player-systems/trainer-card-ex.md) | Team titles visible on card |
| [Nemesis System](../battle-systems/nemesis-system.md) | Defeating Archnemesis can award title |
| [Battle Arena](../battle-systems/battle-arena.md) | Arena streaks contribute to title progress |

---

## File Structure

```
Plugins/[SC] Pokemon Titles/
  meta.txt          — Plugin metadata
  000_Config.rb     — Title definitions, conditions, display settings
  001_Core.rb       — Tracking, condition checks, title logic
  002_Additions.rb  — Battle intro hook, Summary UI, battle stat tracking
```
