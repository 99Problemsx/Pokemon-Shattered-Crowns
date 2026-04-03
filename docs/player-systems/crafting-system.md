# Crafting System

**Version:** 1.0.0\
**Module:** `CraftingSystem`\
**Requires:** None

Collect materials from the world — battles, shops, exploration — and **craft items** using discoverable recipes. Turn basic items into Rare Candies, PP Ups, and more. Some recipes are known from the start; others must be discovered through exploration and NPCs.

---

## Features

| Feature | Description |
|---------|-------------|
| **4 Material Categories** | Organic, Mineral, Arcane, Tech |
| **3 Unlock Types** | Default (known), Discovery (find recipe), Quest (reward) |
| **5 Starter Recipes** | Including Rare Candy and PP Up crafting |
| **Portable Option** | Craft anywhere or require a station |

---

## Recipes

| Recipe | Result | Materials | Unlock |
|--------|--------|-----------|--------|
| Super Repel | Super Repel ×1 | Repel ×2, Stardust ×1 | Default |
| Full Heal | Full Heal ×1 | Antidote + Paralyze Heal + Awakening | Default |
| Revive | Revive ×1 | Potion ×2, Stardust ×3 | Discovery |
| Rare Candy | Rare Candy ×1 | Stardust ×5, Star Piece ×1 | Discovery |
| PP Up | PP Up ×1 | Elixir ×1, Stardust ×3 | Discovery |

---

## Configuration

All settings are in `000_Config.rb` inside the `CraftingSystem` module.

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log crafting events |
| `REQUIRE_STATION` | `false` | Must be at crafting station to craft |
| `PORTABLE_KIT_ITEM` | `nil` | Item that enables portable crafting |

### Recipe Definitions

```ruby
RECIPES = {
  :RARE_CANDY_CRAFT => {
    :name      => "Rare Candy",
    :result    => :RARECANDY,
    :amount    => 1,
    :materials => [[:STARDUST, 5], [:STARPIECE, 1]],
    :unlock    => :discovery,
  },
  # ... more recipes
}
```

---

## Script Calls

```ruby
# Open the crafting UI
CraftingSystem.open

# Discover a recipe
CraftingSystem.discover(:REVIVE_CRAFT)

# Check if a recipe is known
CraftingSystem.known?(:RARE_CANDY_CRAFT)  # => true/false

# Craft an item (checks materials)
CraftingSystem.craft(:RARE_CANDY_CRAFT)   # => true/false

# Get all known recipes
CraftingSystem.known_recipes  # => [:SUPER_REPEL_CRAFT, ...]
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Move Tutor Network](../pokemon-training/move-tutor-network.md) | Stardust shared as tutor currency |
| [Wanted Board](wanted-board.md) | Fetch bounties may require craftable items |
| [Reputation System](reputation-system.md) | Honored faction shops sell rare materials |
| [Secret Base](../world-exploration/secret-base.md) | Crafting station in your base |

---

## File Structure

```
Plugins/[SC] Crafting System/
  meta.txt          — Plugin metadata
  000_Config.rb     — Recipes, material categories, station settings
  001_Core.rb       — Crafting logic, material checks, recipe discovery
  002_Additions.rb  — UI, event hooks, sound effects
```
