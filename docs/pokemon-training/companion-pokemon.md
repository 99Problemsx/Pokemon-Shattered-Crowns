# Companion Pokémon

**Version:** 4.0.0\
**Module:** `CompanionPokemon`\
**Requires:** None

Your lead Pokémon **follows you on the overworld** with species-specific sprites. Talk to your follower for context-sensitive reactions. This is a modern replacement for Following Pokémon EX with better performance and integration.

> ⚠️ **Replaces Following Pokémon EX** — delete that plugin before installing this one.

---

## Features

| Feature | Description |
|---------|-------------|
| **Overworld Follower** | Lead party Pokémon walks behind you |
| **Species Sprites** | Each Pokémon has its own follower graphic |
| **Talk Interactions** | Press A to interact with your follower |
| **Context Reactions** | Follower reacts to location, weather, mood |
| **Shiny Sprites** | Shiny Pokémon show shiny follower sprites |
| **Party Banter** | Integrates with Party Banter for dialogue |

---

## Configuration

Settings are in `001_FollowerConfig.rb`.

---

## Script Calls

```ruby
# Toggle follower on/off
CompanionPokemon.toggle

# Check if follower is active
CompanionPokemon.active?           # => true/false

# Get the current follower species
CompanionPokemon.species           # => :PIKACHU

# Force refresh follower sprite
CompanionPokemon.refresh
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Party Banter](../story-narrative/party-banter.md) | Follower is primary banter speaker |
| [Pokémon Affection](pokemon-affection.md) | Following boosts affection (+1 per 200 steps) |
| [Photo Mode](../player-systems/photo-mode.md) | Follower visible in photo mode |

---

## File Structure

```
Plugins/[SC] Companion Pokemon/
  meta.txt              — Plugin metadata
  001_FollowerConfig.rb — All settings
  002_FollowerCore.rb   — Overworld logic, sprite handling
  003_Interactions.rb   — Talk reactions, context checks
```
