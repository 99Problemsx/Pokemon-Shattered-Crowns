# Destiny Board

**Version:** 1.0.0\
**Module:** `DestinyBoard`\
**Requires:** None

The player is one of the **Three Chosen** — and the Destiny Board is their skill tree. Spend **Fate Points** earned from story milestones to unlock passive perks across three branches, each aligned with one of the legendary guardians: **Zacian** (Blade), **Xerneas** (Life), and **Yveltal** (Void).

---

## Features

| Feature | Description |
|---------|-------------|
| **3 Branches** | Path of the Blade, Path of Life, Path of the Void |
| **12 Perks** | 4 tiers per branch — each with unique gameplay effects |
| **Fate Points** | Earned from story milestones, spent to unlock perks |
| **Mix & Match** | Invest across branches to create hybrid builds |
| **Permanent** | Once unlocked, perks are permanent (no respec by default) |

---

## The Three Paths

### ⚔️ Path of the Blade — Zacian

*"Cut through everything."*

For players who want to win fights harder and faster.

| Tier | Perk | Effect |
|------|------|--------|
| 1 | **Keen Edge** | +5% critical hit rate for all party Pokémon |
| 2 | **Battle Focus** | +10% EXP from trainer battles |
| 3 | **Steel Resolve** | 10% chance your Pokémon endure a fatal hit at 1 HP |
| 4 | **Crowned Sword** | +5% ATK and +5% SPD for the entire party |

### 🌿 Path of Life — Xerneas

*"Nurture and grow."*

For players who want better catching, breeding, and sustainability.

| Tier | Perk | Effect |
|------|------|--------|
| 1 | **Nature's Gift** | +15% catch rate on all Poké Balls |
| 2 | **Verdant Touch** | Berry trees yield +1 extra berry per harvest |
| 3 | **Life Surge** | Party heals 5% of max HP after every battle |
| 4 | **Fairy Aura** | Eggs hatch 30% faster, friendship gains +25% |

### 🌑 Path of the Void — Yveltal

*"Take what you want."*

For players who want money, stealth, and dark power.

| Tier | Perk | Effect |
|------|------|--------|
| 1 | **Dark Bargain** | +20% prize money from all sources |
| 2 | **Void Step** | −25% wild encounter rate |
| 3 | **Shadow Cloak** | 10% chance to dodge status conditions |
| 4 | **Oblivion Wing** | Heal 10% HP on any KO your Pokémon scores |

---

## Build Examples

| Build Name | Perks | Playstyle |
|------------|-------|-----------|
| **Glass Cannon** | Keen Edge → Battle Focus → Crowned Sword | All offense, max EXP |
| **Explorer** | Nature's Gift → Void Step → Verdant Touch | Rare catches, less grinding |
| **Sustain Tank** | Life Surge → Steel Resolve → Oblivion Wing | Never visit the Pokémon Center |
| **Merchant** | Dark Bargain → Verdant Touch → Battle Focus | Maximum income |

---

## Configuration

All settings are in `000_Config.rb` inside the `DestinyBoard` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log perk unlocks to console |

### Branch Definitions

```ruby
BRANCHES = {
  ZACIAN:  { name: "Path of the Blade", icon: "blade_icon" },
  XERNEAS: { name: "Path of Life",      icon: "life_icon"  },
  YVELTAL: { name: "Path of the Void",  icon: "void_icon"  },
}
```

### Perk Definitions

```ruby
PERKS = {
  # Zacian Branch
  KEEN_EDGE:     { branch: :ZACIAN,  tier: 1, effect: :CRIT_BOOST,    value: 5   },
  BATTLE_FOCUS:  { branch: :ZACIAN,  tier: 2, effect: :EXP_BOOST,     value: 10  },
  STEEL_RESOLVE: { branch: :ZACIAN,  tier: 3, effect: :ENDURE_CHANCE, value: 10  },
  CROWNED_SWORD: { branch: :ZACIAN,  tier: 4, effect: :STAT_BOOST,    value: { ATK: 5, SPD: 5 } },
  # Xerneas Branch
  NATURES_GIFT:  { branch: :XERNEAS, tier: 1, effect: :CATCH_BOOST,   value: 15  },
  VERDANT_TOUCH: { branch: :XERNEAS, tier: 2, effect: :BERRY_BONUS,   value: 1   },
  LIFE_SURGE:    { branch: :XERNEAS, tier: 3, effect: :POST_HEAL,     value: 5   },
  FAIRY_AURA:    { branch: :XERNEAS, tier: 4, effect: :HATCH_FRIEND,  value: { hatch: 30, friend: 25 } },
  # Yveltal Branch
  DARK_BARGAIN:  { branch: :YVELTAL, tier: 1, effect: :MONEY_BOOST,   value: 20  },
  VOID_STEP:     { branch: :YVELTAL, tier: 2, effect: :ENCOUNTER_CUT, value: 25  },
  SHADOW_CLOAK:  { branch: :YVELTAL, tier: 3, effect: :STATUS_DODGE,  value: 10  },
  OBLIVION_WING: { branch: :YVELTAL, tier: 4, effect: :DRAIN_ON_KO,   value: 10  },
}
```

---

## Tutorial: Unlocking Perks

### Step 1: Award Fate Points

Fate Points are given during story events:

```ruby
# Award 1 Fate Point (e.g., after defeating a gym leader)
DestinyBoard.award_fate_points(1)

# Award 3 Fate Points (major story milestone)
DestinyBoard.award_fate_points(3)
```

### Step 2: Open the Destiny Board UI

```ruby
# Opens the skill tree screen
DestinyBoard.open
```

The player selects a branch, then a tier to unlock. Each tier costs **1 Fate Point** and requires the previous tier in that branch.

### Step 3: Check Perk Status in Events

```ruby
# Is a specific perk unlocked?
DestinyBoard.has_perk?(:KEEN_EDGE)     # => true/false

# How many Fate Points does the player have?
DestinyBoard.fate_points               # => 3

# How many perks are unlocked in a branch?
DestinyBoard.branch_level(:ZACIAN)     # => 2 (Tiers 1–2 unlocked)
```

---

## Script Calls

```ruby
# Award Fate Points
DestinyBoard.award_fate_points(n)

# Open the Destiny Board UI
DestinyBoard.open

# Check perk
DestinyBoard.has_perk?(:OBLIVION_WING)   # => true/false

# Get all unlocked perks
DestinyBoard.unlocked_perks               # => [:KEEN_EDGE, :DARK_BARGAIN, ...]

# Get available Fate Points
DestinyBoard.fate_points                  # => 5

# Get branch progress
DestinyBoard.branch_level(:XERNEAS)       # => 3

# Force-unlock a perk (debug/story)
DestinyBoard.unlock_perk(:CROWNED_SWORD)
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Level Caps Ex](../core-systems/level-caps-ex.md) | Battle Focus stacks with EXP system |
| [Crafting System](crafting-system.md) | Verdant Touch affects material gathering |
| [Pokémon Affection](../pokemon-training/pokemon-affection.md) | Fairy Aura boosts friendship gains |
| [Morality System](../story-narrative/morality-system.md) | Void perks may be gated behind Dark alignment |
| [Quest Journal](quest-journal.md) | "Unlock all perks in a branch" can be a quest objective |

---

## File Structure

```
Plugins/[SC] Destiny Board/
  meta.txt          — Plugin metadata
  000_Config.rb     — Branches, perks, Fate Point costs
  001_Core.rb       — Perk logic, stat application, UI
  002_Additions.rb  — Battle hooks, event integration
```
