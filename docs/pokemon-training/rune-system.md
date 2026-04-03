# Rune System

**Version:** 1.0.0\
**Module:** `RuneSystem`\
**Requires:** None

Discover Norse runes at shrines scattered across Asgheim and the Forgotten Region. Each rune can be **socketed onto a Pokémon** as a second equipment layer alongside held items, granting stat boosts and special effects. Higher-tier runes are rarer, more powerful, and tied to the deeper lore of Yggdrasil.

---

## Features

| Feature | Description |
|---------|-------------|
| **8 Unique Runes** | Each inspired by a Norse deity or mythological force |
| **3 Tiers** | Tier 1 (common) → Tier 2 (uncommon) → Tier 3 (legendary) |
| **Stat Boosts** | Flat percentage bonuses to HP, ATK, DEF, SPATK, SPDEF, SPD |
| **Special Effects** | Regeneration, crit boost, status cure — in addition to stats |
| **One Rune Per Pokémon** | Strategic choice: you can only socket one at a time |
| **Free Swapping** | Swap runes without penalty (configurable) |
| **Separate from Items** | Runes occupy their own slot — held items still work normally |

---

## The Runes

### ⚔️ Tier 1 — Common

| Rune | Stats | Special Effect | Lore |
|------|-------|---------------|------|
| **Fenrir** 🐺 | ATK +15% | — | *The Devourer's fury — raw strength unbound.* |

### 🔷 Tier 2 — Uncommon

| Rune | Stats | Special Effect | Lore |
|------|-------|---------------|------|
| **Mímir** 🧠 | SPATK +10%, SPDEF +10% | — | *The Wise One's knowledge shields the mind.* |
| **Þórr** ⚡ | ATK +10%, SPD +10% | — | *Thunder and lightning in a single strike.* |
| **Freyja** 🌿 | — | Regeneration (1/16 HP per turn) | *The Goddess of Life restores what was lost.* |
| **Týr** 🛡️ | DEF +15% | Crit Boost (+1 crit stage) | *The One-Handed God — sacrifice for victory.* |

### 🟡 Tier 3 — Legendary

| Rune | Stats | Special Effect | Lore |
|------|-------|---------------|------|
| **Óðinn** 👁️ | ALL +5% | — | *The Allfather sees all, empowers all.* |
| **Yggdrasil** 🌳 | HP +10% | Status Cure (auto-heal every 3 turns) | *The World Tree cleanses all corruption.* |
| **Níðhöggr** 🐉 | SPATK +25%, DEF −10% | — | *The Void Serpent's power — devastating but brittle.* |

---

## Special Effects

| Effect | Behavior | Config Key |
|--------|----------|-----------|
| **Regeneration** | Heals 1/16 of max HP at end of each turn | `REGEN_FRACTION = 16` |
| **Crit Boost** | Adds +1 to the Pokémon's critical hit stage | Built-in |
| **Status Cure** | Automatically cures status conditions every 3 turns | `STATUS_CURE_TURNS = 3` |

---

## Configuration

All settings are in `000_Config.rb` inside the `RuneSystem` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle for the rune system |
| `DEBUG_MODE` | `false` | Log rune operations to the console |
| `MAX_RUNES_PER_POKEMON` | `1` | How many runes a single Pokémon can hold |
| `FREE_SWAP` | `true` | Allow swapping runes without destroying the old one |

### Effect Tuning

| Constant | Default | Description |
|----------|---------|-------------|
| `REGEN_FRACTION` | `16` | Freyja heals 1/N of max HP per turn |
| `STATUS_CURE_TURNS` | `3` | Yggdrasil cures status every N turns |

### Rune Definitions

Each rune is defined in the `RUNES` hash:

```ruby
RUNES = {
  FENRIR:    { name: "Fenrir",    tier: 1, stats: { ATK: 15 } },
  MIMIR:     { name: "Mímir",     tier: 2, stats: { SPATK: 10, SPDEF: 10 } },
  THOR:      { name: "Þórr",      tier: 2, stats: { ATK: 10, SPD: 10 } },
  FREYA:     { name: "Freyja",    tier: 2, stats: {}, effects: [:REGEN] },
  TYR:       { name: "Týr",       tier: 2, stats: { DEF: 15 }, effects: [:CRIT_BOOST] },
  ODIN:      { name: "Óðinn",     tier: 3, stats: { HP: 5, ATK: 5, DEF: 5, SPATK: 5, SPDEF: 5, SPD: 5 } },
  YGGDRASIL: { name: "Yggdrasil", tier: 3, stats: { HP: 10 }, effects: [:STATUS_CURE] },
  NIDHOGGR:  { name: "Níðhöggr",  tier: 3, stats: { SPATK: 25, DEF: -10 } },
}
```

---

## Tutorial: Giving the Player a Rune

### Step 1: Award a Rune via Event

```ruby
# Give the player the Fenrir rune
RuneSystem.give_rune(:FENRIR)
```

### Step 2: Socket a Rune onto a Pokémon

The player opens the **Rune Menu** from the party screen and selects which Pokémon to equip:

```ruby
# Or via script: socket Fenrir onto the first party Pokémon
RuneSystem.socket_rune($player.party[0], :FENRIR)
```

### Step 3: Remove / Swap Runes

```ruby
# Remove rune from a Pokémon (returns it to inventory)
RuneSystem.unsocket_rune($player.party[0])

# Swap: just socket a new one — the old one returns automatically (if FREE_SWAP)
RuneSystem.socket_rune($player.party[0], :ODIN)
```

### Step 4: Place a Shrine in the World

Shrines are events that call:

```ruby
# Show rune discovery animation + award
RuneSystem.discover_at_shrine(:THOR)
```

---

## Script Calls

```ruby
# Give a rune to the player's inventory
RuneSystem.give_rune(:FENRIR)

# Check if player has a rune
RuneSystem.has_rune?(:FENRIR)           # => true/false

# Socket onto a Pokémon
RuneSystem.socket_rune(pkmn, :FENRIR)

# Get the rune socketed on a Pokémon
RuneSystem.get_rune(pkmn)               # => :FENRIR or nil

# Remove a rune
RuneSystem.unsocket_rune(pkmn)

# List all runes in player inventory
RuneSystem.inventory                     # => [:FENRIR, :MIMIR, ...]

# Get rune data
RuneSystem.rune_data(:FENRIR)            # => { name: "Fenrir", tier: 1, ... }
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Rune Forging](rune-forging.md) | Combine two runes at Yggdrasil for hybrid runes |
| [Spirit Realm](../world-exploration/spirit-realm.md) | Tier 3 runes found in Spirit Realm shrine dungeons |
| [Lore Codex](../story-narrative/lore-codex.md) | Each rune discovery unlocks a codex entry |
| [Ancestral Weapons](ancestral-weapons.md) | Weapons and runes stack — build synergies |

---

## File Structure

```
Plugins/[SC] Rune System/
  meta.txt          — Plugin metadata
  000_Config.rb     — Rune definitions, limits, effect tuning
  001_Core.rb       — Socketing, inventory, stat application
  002_Additions.rb  — Battle hooks, UI, shrine events
```
