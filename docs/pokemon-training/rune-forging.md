# Rune Forging

**Version:** 1.0.0\
**Module:** `RuneForging`\
**Requires:** [Rune System](rune-system.md)

Bring two runes to an **Yggdrasil forge** and combine them into a **Tier 4 hybrid rune** with the merged stats of both parents — plus a unique bonus and a drawback to keep things balanced. Each hybrid has its own Norse name and lore.

---

## Features

| Feature | Description |
|---------|-------------|
| **Hybrid Runes** | Merge two base runes into a Tier 4 hybrid |
| **Merged Stats** | Inherits stat boosts from both parent runes |
| **Bonus + Drawback** | Each hybrid adds extra power at a cost |
| **Special Effects** | Some hybrids gain Crit Boost, Regen, Status Cure, or combos |
| **Norse Naming** | Every hybrid has a mythological name (Skoll, Hati, Idunn...) |
| **Recipe-Based** | Only specific pairs produce hybrids — experiment to discover them |

---

## Hybrid Rune Recipes

### ⚔️ Fenrir Combos (Wolf / ATK)

| Parent A | Parent B | Hybrid | Stats | Drawback | Special |
|----------|----------|--------|-------|----------|---------|
| Fenrir | Þórr | **Rune of Skoll** 🌞 | ATK +20%, SPD +10% | DEF −10% | — |
| Fenrir | Týr | **Rune of the Berserker** 🪓 | ATK +25% | SPDEF −15% | Crit Boost |
| Fenrir | Freyja | **Rune of the Alpha** 🐺 | ATK +15% | SPD −10% | Regen |
| Fenrir | Níðhöggr | **Rune of Hati** 🌙 | ATK +15%, SPATK +20% | HP −10% | — |

### 🧠 Mímir Combos (Wisdom / SPATK+SPDEF)

| Parent A | Parent B | Hybrid | Stats | Drawback | Special |
|----------|----------|--------|-------|----------|---------|
| Mímir | Freyja | **Rune of Idunn** 🍎 | SPATK +10%, SPDEF +10% | SPD −5% | Regen |
| Mímir | Óðinn | **Rune of the Seer** 👁️ | ALL +8% | HP −5% | — |
| Mímir | Níðhöggr | **Rune of Void Knowledge** 📖 | SPATK +30% | DEF −15% | — |

### ⚡ Þórr Combos (Thunder / SPD+ATK)

| Parent A | Parent B | Hybrid | Stats | Drawback | Special |
|----------|----------|--------|-------|----------|---------|
| Þórr | Týr | **Rune of the Einherjar** ⚔️ | ATK +15%, SPD +10% | HP −10% | Crit Boost |
| Þórr | Yggdrasil | **Rune of the Storm Tree** 🌩️ | SPD +10%, HP +10% | ATK −5% | Status Cure |

### 🌿 Freyja Combos (Life / Regen)

| Parent A | Parent B | Hybrid | Stats | Drawback | Special |
|----------|----------|--------|-------|----------|---------|
| Freyja | Yggdrasil | **Rune of Rebirth** 🔄 | HP +15% | ATK −10%, SPATK −10% | Regen + Status Cure |
| Freyja | Týr | **Rune of the Shieldmaiden** 🛡️ | DEF +15% | SPD −10% | Regen |

> **All hybrid runes are Tier 4** — stronger than any base rune, but always come with a tradeoff.

---

## How Forging Works

```
  Rune A ──┐
           ├──► Yggdrasil Forge ──► Hybrid Rune (Tier 4)
  Rune B ──┘         │
                     └──► Both parent runes are consumed
```

1. Visit an **Yggdrasil Forge** location
2. Select two runes from your inventory
3. If a valid recipe exists → the hybrid is created
4. If no recipe exists → forging fails (runes are NOT consumed)
5. Both parent runes are consumed on success

---

## Configuration

All settings are in `000_Config.rb` inside the `RuneForging` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log forging attempts to console |

### Recipe Definitions

Recipes are defined in the `RECIPES` hash. Each key is a sorted pair of rune symbols:

```ruby
RECIPES = {
  [:FENRIR, :THOR] => {
    :name        => "Rune of Skoll",
    :description => "Sun-chasing wolf. ATK +20%, Speed +10%, but Defense -10%.",
    :bonus       => { :ATTACK => 20, :SPEED => 10 },
    :drawback    => { :DEFENSE => -10 },
    :special     => nil,
    :tier        => 4,
  },
  # ... more recipes
}
```

---

## Tutorial: Forging a Rune

### Step 1: Open the Forge

Place an event at a Yggdrasil forge location:

```ruby
# Open the rune forging UI
RuneForging.open_forge
```

### Step 2: Select Two Runes

The UI shows the player's rune inventory. Select any two base runes (Tier 1–3).

### Step 3: Check the Result

```ruby
# Preview what a combo produces (without consuming)
RuneForging.preview(:FENRIR, :THOR)  # => "Rune of Skoll" or nil
```

### Step 4: Forge via Script (Alternative)

```ruby
# Force-forge a hybrid and add to inventory
RuneForging.forge(:FENRIR, :THOR)    # => :SKOLL (hybrid rune key)
```

---

## Script Calls

```ruby
# Open the forging UI
RuneForging.open_forge

# Preview a recipe
RuneForging.preview(:FENRIR, :THOR)     # => recipe hash or nil

# Forge two runes (consumes parents, adds hybrid)
RuneForging.forge(:FENRIR, :THOR)       # => hybrid key

# Check if a recipe exists
RuneForging.recipe_exists?(:FENRIR, :THOR)  # => true/false

# List all known recipes
RuneForging.all_recipes                 # => Array of recipe hashes
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Rune System](rune-system.md) | Hybrid runes use the same socketing mechanics |
| [Spirit Realm](../world-exploration/spirit-realm.md) | Yggdrasil forges found in Spirit Realm |
| [Lore Codex](../story-narrative/lore-codex.md) | Each hybrid rune unlocks a codex entry |
| [Ancestral Weapons](ancestral-weapons.md) | Hybrid runes synergize with weapon boosts |

---

## File Structure

```
Plugins/[SC] Rune Forging/
  meta.txt          — Plugin metadata
  000_Config.rb     — Recipe definitions, hybrid stats, drawbacks
  001_Core.rb       — Forging logic, recipe lookup, inventory management
  002_Additions.rb  — UI, event hooks, codex integration
```
