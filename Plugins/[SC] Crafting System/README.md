# Crafting System

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Recipe-based crafting with material consumption. Recipes are discovered through events, exploration, and codex integration.

---

## Features

- **Recipe Discovery** -- Recipes unlock as you play, not available from the start
- **Material Consumption** -- Standard items from inventory are used as ingredients
- **Crafting Stations** -- Optional requirement to be at a station to craft
- **Portable Kit** -- Optional item that lets you craft anywhere
- **Codex Integration** -- New recipes register as Lore Codex entries

---

## Configuration

Module: `CraftingSystem`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `RECIPES` | 5+ | Recipe definitions |
| `MATERIAL_CATEGORIES` | varies | Material type groupings |
| `REQUIRE_STATION` | `true` | Must be at a crafting station |
| `PORTABLE_KIT_ITEM` | varies | Item that bypasses station requirement |

---

## Recipe Example

```ruby
# Recipe: Super Potion from 2 Potions + 1 Oran Berry
CraftingRecipe.register(:SUPER_POTION_CRAFT) do |r|
  r.name     = "Super Potion"
  r.result   = [:SUPERPOTION, 1]
  r.materials = [[:POTION, 2], [:ORANBERRY, 1]]
end
```

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbDiscoverRecipe(recipe_id)` | Unlock a recipe |
| `pbRecipeDiscovered?(recipe_id)` | Check if recipe is known |
| `pbOpenCraftingMenu` | Open the crafting interface |
| `pbCanCraft?(recipe_id)` | Check if player has materials |

---

## Cross-Plugin Integration

- **Lore Codex** -- Recipes register as codex entries on discovery
- **Secret Base** -- Cooking Pot decoration acts as crafting station

---

## File Structure

```
[SC] Crafting System/
  meta.txt              - Plugin metadata
  000_Config.rb         - Recipe definitions, material categories
  001_CraftingCore.rb   - Recipe management, material checking, crafting logic
```
