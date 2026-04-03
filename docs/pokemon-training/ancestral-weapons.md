# Ancestral Weapons

**Version:** 1.1.0\
**Module:** `AncestralWeapons`\
**Requires:** None

Three legendary relics — one for each of the **Three Chosen** — that **evolve through combat**. Each weapon grants percentage-based stat boosts to your party and unlocks special effects as it grows. The Fang of Zacian sharpens through aggression, the Antler of Xerneas blooms through endurance, and the Wing of Yveltal feeds on destruction.

---

## Features

| Feature | Description |
|---------|-------------|
| **3 Ancestral Weapons** | Zacian's Fang, Xerneas' Antler, Yveltal's Wing |
| **3 Evolution Stages** | Each weapon evolves twice through battle milestones |
| **% Stat Boosts** | Party-wide multipliers that stack with other effects |
| **Special Effects** | Crit boost, passive healing, steel-type pierce, and more |
| **Lore Integration** | Tied to the Three Guardians and the Shattered Crowns storyline |

---

## The Three Weapons

### ⚔️ Zacian's Fang

*"The blade that cut the first crown."*

| Stage | ATK | SPD | Special Effect |
|-------|-----|-----|----------------|
| **Stage 1** — Chipped Fang | +10% | +5% | — |
| **Stage 2** — Honed Fang | +20% | +10% | 🗡️ **Crit Boost** — +1 crit stage for party |
| **Stage 3** — Crowned Fang | +35% | +15% | 🛡️ **Steel Pierce** — Steel-type moves ignore resistance |

### 🌿 Xerneas' Antler

*"Life endures where all else falls."*

| Stage | SPATK | SPD | Special Effect |
|-------|-------|-----|----------------|
| **Stage 1** — Budding Antler | +10% | — | — |
| **Stage 2** — Blooming Antler | +20% | +5% | 🌱 **Regeneration** — Heal 1/16 max HP per turn |
| **Stage 3** — Eternal Antler | +30% | +10% | 🌳 **Life Aura** — Party auto-heals 5% HP after every battle |

### 🌑 Yveltal's Wing

*"From death, power."*

| Stage | SPATK | DEF | Special Effect |
|-------|-------|-----|----------------|
| **Stage 1** — Broken Wing | +10% | — | — |
| **Stage 2** — Shadow Wing | +20% | +5% | 💀 **Drain Touch** — Damaging moves heal 10% of damage dealt |
| **Stage 3** — Oblivion Wing | +35% | +10% | 🌀 **Void Burst** — On KO, deal 25% of the KO'd Pokémon's HP to the next foe |

---

## Evolution Stages

Weapons evolve by accumulating **Battle Points** (BP) through combat:

| Stage | BP Required | How to Earn |
|-------|-------------|-------------|
| **Stage 1** | 0 (starting) | Awarded during the story |
| **Stage 2** | ~50 BP | Win battles, defeat bosses, clear dungeons |
| **Stage 3** | ~150 BP | Major story milestones + significant combat |

> BP values are approximate — the exact thresholds are tuned in `000_Config.rb`.

---

## Configuration

All settings are in `000_Config.rb` inside the `AncestralWeapons` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log weapon evolution to console |

### Weapon Definitions

```ruby
WEAPONS = {
  ZACIANS_FANG: {
    name: "Zacian's Fang",
    stages: {
      1 => { boosts: { ATK: 10, SPD: 5 },  effects: [] },
      2 => { boosts: { ATK: 20, SPD: 10 }, effects: [:CRIT_BOOST] },
      3 => { boosts: { ATK: 35, SPD: 15 }, effects: [:STEEL_PIERCE] },
    }
  },
  XERNEAS_ANTLER: {
    name: "Xerneas' Antler",
    stages: {
      1 => { boosts: { SPATK: 10 },          effects: [] },
      2 => { boosts: { SPATK: 20, SPD: 5 },  effects: [:HEAL_16] },
      3 => { boosts: { SPATK: 30, SPD: 10 }, effects: [:LIFE_AURA] },
    }
  },
  YVELTALS_WING: {
    name: "Yveltal's Wing",
    stages: {
      1 => { boosts: { SPATK: 10 },          effects: [] },
      2 => { boosts: { SPATK: 20, DEF: 5 },  effects: [:DRAIN_TOUCH] },
      3 => { boosts: { SPATK: 35, DEF: 10 }, effects: [:VOID_BURST] },
    }
  },
}
```

---

## Tutorial: Working with Ancestral Weapons

### Step 1: Award a Weapon

Weapons are story awards — given during key events:

```ruby
# Player receives Zacian's Fang during the Crown ceremony
AncestralWeapons.give(:ZACIANS_FANG)
```

### Step 2: Award Battle Points

```ruby
# After winning a significant battle
AncestralWeapons.award_bp(:ZACIANS_FANG, 10)

# After defeating a story boss
AncestralWeapons.award_bp(:ZACIANS_FANG, 25)
```

### Step 3: Check Weapon State

```ruby
# Current stage
AncestralWeapons.stage(:ZACIANS_FANG)    # => 2

# Current BP
AncestralWeapons.bp(:ZACIANS_FANG)       # => 73

# Has the weapon?
AncestralWeapons.has?(:XERNEAS_ANTLER)   # => true/false
```

### Step 4: Evolve the Weapon

Evolution happens automatically when BP thresholds are met, with a dramatic cutscene. You can also force it:

```ruby
# Force evolution to next stage (debug/story)
AncestralWeapons.evolve(:ZACIANS_FANG)
```

---

## Script Calls

```ruby
# Give a weapon
AncestralWeapons.give(:ZACIANS_FANG)

# Award battle points
AncestralWeapons.award_bp(:ZACIANS_FANG, amount)

# Get current stage (1/2/3)
AncestralWeapons.stage(:ZACIANS_FANG)

# Get current BP
AncestralWeapons.bp(:ZACIANS_FANG)

# Check ownership
AncestralWeapons.has?(:YVELTALS_WING)

# Force evolve
AncestralWeapons.evolve(:XERNEAS_ANTLER)

# Get active boosts (returns hash of current stat multipliers)
AncestralWeapons.active_boosts(:ZACIANS_FANG)  # => { ATK: 20, SPD: 10 }

# Get active effects
AncestralWeapons.active_effects(:ZACIANS_FANG) # => [:CRIT_BOOST]
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Destiny Board](../player-systems/destiny-board.md) | Weapon alignment matches Destiny Board branches |
| [Rune System](rune-system.md) | Rune boosts and weapon boosts stack |
| [Morality System](../story-narrative/morality-system.md) | Which weapon you get may depend on alignment |
| [Relationship System](../story-narrative/relationship-system.md) | Companions comment on your weapon's evolution |
| [Battle Rewards Ex](../battle-systems/battle-rewards-ex.md) | S-rank battles award bonus BP |

---

## File Structure

```
Plugins/[SC] Ancestral Weapons/
  meta.txt          — Plugin metadata
  000_Config.rb     — Weapon definitions, stages, BP thresholds
  001_Core.rb       — BP tracking, evolution logic, stat application
  002_Additions.rb  — Battle hooks, cutscene triggers, UI
```
