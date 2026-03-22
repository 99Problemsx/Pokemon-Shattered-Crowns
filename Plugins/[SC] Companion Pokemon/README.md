# Companion Pokemon

**Version:** 3.1.0  
**Essentials:** v21.1  
**Author:** Nononever  
**Requires:** [SC] Pokemon Affection

Comprehensive companion reaction system for the follower Pokemon. Fully standalone — uses overworld sprites from Graphics/Characters/Followers/ and Essentials' native follower system. Reacts to environment, weather, battles, leveling, evolution, fainting, catching, healing, map transfers, toggles, bridges, ice sliding, status conditions, shiny Pokemon, friendship, and more — all scaled by affection level.

---

## Features

- **26 Reaction Contexts** -- Sun, rain, snow, cave, water, trainer, gym, outdoor, sandstorm, storm, forest, beach, Pokemon Center, home, night, lab, indoors, bridge, ice sliding, fog, mountain, lake, morning, surfing, diving, bicycle
- **Shiny Pokemon Reactions** -- Special sparkle reactions when the follower is shiny
- **Friendship Reactions** -- High and low friendship dialogue based on base happiness
- **Status-Aware Reactions** -- Poison, Burn, Paralysis, Frozen, Sleep with emotes and messages
- **Low HP Concern** -- Warns the player when the follower's HP is critically low
- **Battle End Reactions** -- Victory celebrations and defeat comfort after battles
- **Level Up Celebrations** -- Emote + dance when the follower levels up
- **Evolution Celebrations** -- Special reactions when the follower evolves
- **Faint Reactions** -- Emotional farewell when the follower faints
- **Catch Reactions** -- Excitement when catching new Pokemon, with same-type bonus
- **Heal Gratitude** -- Reactions after Pokemon Center healing
- **22+ Type-Specific Reactions** -- All 18 types with context combos including bridge and ice
- **Item Find System** -- High-affection Pokemon find items while walking
- **Affection Talk Hook** -- 40% chance of affection-scaled dialogue when talking to follower
- **Map Enter Reactions** -- One-shot dialogue when entering gyms, caves, forests, cities, routes
- **Toggle Show/Hide Reactions** -- Greetings and farewells when toggling follower
- **Bridge & Ice Sliding** -- Reactions to crossing bridges and sliding on ice puzzles
- **Affection Milestones** -- One-time celebrations on affection tier-up
- **Walking Affection Gain** -- +1 affection per 200 steps while following

---

## Configuration

Module: `CompanionPokemon`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Console logging |
| `REACTION_STEP_INTERVAL` | `40` | Steps between reaction checks |
| `REACTION_COOLDOWN` | `120` | Min steps between displayed reactions |
| `FOLLOW_AFFECTION_STEPS` | `200` | Steps per +1 affection while following |
| `ITEM_FIND_ENABLED` | `true` | Toggle item find system |
| `ITEM_FIND_STEPS` | `500` | Steps between item find checks |
| `MAP_ENTER_ENABLED` | `true` | Toggle map entrance reactions |
| `TOGGLE_REACTIONS_ENABLED` | `true` | Toggle show/hide reactions |
| `BATTLE_REACTIONS_ENABLED` | `true` | Toggle battle end reactions |
| `BATTLE_REACTION_CHANCE` | `50` | % chance to react after a battle |
| `CATCH_REACTIONS_ENABLED` | `true` | Toggle catch reactions |
| `CATCH_REACTION_CHANCE` | `40` | % chance to react on catch |
| `LOW_HP_ENABLED` | `true` | Toggle low HP concern |
| `LOW_HP_THRESHOLD` | `0.25` | HP ratio below which concern triggers |
| `HEAL_REACTIONS_ENABLED` | `true` | Toggle Pokemon Center heal reactions |

---

## Reaction Contexts (19)

| Context | Trigger | Priority |
|---------|---------|----------|
| Trainer Nearby | Trainer within 5 tiles | 1 (highest) |
| Gym | Map name contains gym/league/arena | 2 |
| Lab | Map name contains lab/professor | 3 |
| Pokemon Center | Map name contains center/heal | 4 |
| Home | Map name contains home/house, indoor | 5 |
| Ice Sliding | `$PokemonGlobal.ice_sliding` active | 6 |
| Bridge | `$PokemonGlobal.bridge > 0` | 7 |
| Storm | Heavy rain or thunderstorm | 8 |
| Sandstorm | Sandstorm weather | 9 |
| Cave | Dark map metadata | 10 |
| Snow | Snow/blizzard/hail | 11 |
| Rain | Rain weather | 12 |
| Sunny | Sun weather | 13 |
| Forest | Map name contains forest/woods/grove | 14 |
| Beach | Map name contains beach/shore/coast | 15 |
| Water | Adjacent surfable tiles | 16 |
| Night | Nighttime (PBDayNight) | 17 |
| Indoors | Indoor map (no outdoor flag) | 18 |
| Outdoor | Outdoor map (fallback) | 19 |

---

## Bridge Reactions

| Affection | Emote | Move | Example |
|-----------|-------|------|---------|
| LOW | Dots | -- | "{1} glances nervously over the edge of the bridge." |
| MEDIUM | Happy | Jump | "{1} peeks over the railing with curiosity." |
| HIGH | Happy | Jump | "{1} stops mid-bridge to enjoy the view." |
| MAX | Music | Double Jump | "{1} poses heroically on the bridge like an adventurer!" |

---

## Ice Sliding Reactions

| Affection | Emote | Move | Example |
|-----------|-------|------|---------|
| LOW | Dots | -- | "{1} is struggling to keep its balance on the ice!" |
| MEDIUM | Dots | -- | "{1} is sliding after you, legs flailing!" |
| HIGH | Happy | Spin | "{1} is starting to enjoy the ice sliding!" |
| MAX | Music | Spin+Jump | "{1} is doing figure skating moves on the ice!" |

---

## Map Enter Reactions

One-shot reactions triggered when entering a new map. Matched by map name pattern:

| Map Type | Pattern | Emote | Example |
|----------|---------|-------|---------|
| Gym | gym/league/arena/elite/champion | Angry | "{1} lets out a battle cry! It's fired up!" |
| Pokemon Center | center/heal | Heart | "{1} drags you toward Nurse Joy with excitement!" |
| Home | home/your house | Heart | "{1} is SO happy to be home! It's zooming around!" |
| Cave | cave/cavern/tunnel/mine/grotto | Dots | "{1} strides in confidently — it trusts you completely!" |
| Forest | forest/woods/grove/jungle/garden | Happy | "{1} dashes ahead into the trees and looks back with a grin!" |
| Route | route/road/path/trail | Happy | "{1} takes point, scouting the road ahead!" |
| City | city/town/village/hamlet | Happy | "{1} is waving at strangers — how friendly!" |

---

## Toggle Show/Hide Reactions

Affection-scaled reactions when the follower is toggled on or off:

**Toggle ON (showing follower):**

| Affection | Emote | Move | Example |
|-----------|-------|------|---------|
| NONE | -- | -- | "{1} appeared!" |
| LOW | Heart | Spin+Jump | "{1} stretches after being in its Poke Ball." |
| MEDIUM | Heart | Spin+Jump | "{1} bounces out happily!" |
| HIGH | Heart | Spin+Jump | "{1} twirls out of its ball with a happy cry!" |
| MAX | Heart | Spin+Jump | "{1} explodes out of its ball and won't stop spinning!" |

**Toggle OFF (hiding follower):**

| Affection | Emote | Example |
|-----------|-------|---------|
| NONE | -- | "{1} returned to its Poke Ball." |
| LOW | Dots | "{1} goes back into its Poke Ball." |
| MEDIUM | Dots | "{1} looks a little sad to go back..." |
| HIGH | Dots | "{1} whimpers softly and returns reluctantly." |
| MAX | Dots | "{1} refuses at first... then sadly returns." |

---

## Status Reactions

| Status | Emote | Move | Example |
|--------|-------|------|---------|
| Poison | Poison | Step Back | "{1} is shivering with the effects of being poisoned." |
| Burn | Angry | Step Back | "{1}'s burn looks painful." |
| Paralysis | Dots | -- | "{1} is twitching from paralysis..." |
| Frozen | Dots | -- | "Poor {1}... It's completely frozen and can't move." |
| Sleep | Dots | -- | "{1} is snoring softly. It must be dreaming." |

Status reactions have highest priority and override environment reactions.

---

## Type-Specific Reactions (22+ types)

| Type | Contexts | Example |
|------|----------|---------|
| Fire | Rain, Sunny, Snow, Storm, Ice Sliding | "{1}'s warmth is slightly melting the ice beneath it!" |
| Water | Rain, Water, Sunny, Beach, Bridge | "{1} wants to jump off the bridge into the water!" |
| Ice | Snow, Sunny, Cave, Ice Sliding, Bridge | "{1} is showing off its ice skating skills!" |
| Grass | Sunny, Rain, Forest, Sandstorm | "{1} released a sweet, floral scent into the air." |
| Dark | Cave, Night | "{1}'s eyes gleam in the shadows." |
| Ghost | Cave, Night | "{1} disappears for a moment, then pops back up giggling!" |
| Electric | Rain, Storm | "{1} shouted at the sky as lightning struck nearby!" |
| Fighting | Gym, Trainer | "{1} is bouncing on its feet, eager to battle!" |
| Psychic | Lab, Cave, Night | "{1}'s psychic aura illuminates its surroundings." |
| Dragon | Storm, Gym, Cave | "{1} roars into the storm without fear!" |
| Fairy | Forest, Night, Sunny | "{1} is sprinkling sparkles as it moves through the trees!" |
| Steel | Sandstorm, Lab, Cave, Ice Sliding | "{1} slides perfectly straight — no friction at all!" |
| Rock | Sandstorm, Cave, Beach | "{1} found a nice warm spot on the rocks!" |
| Ground | Sandstorm, Cave | "{1} can feel the vibrations deep underground." |
| Flying | Storm, Sunny, Outdoor, Bridge, Ice Sliding | "{1} takes off and glides under the bridge!" |
| Bug | Forest, Rain, Night | "{1} found a friend! A wild bug Pokemon waves at it!" |
| Poison | Cave, Forest | "{1} puffs out a tiny cloud of purple gas." |
| Normal | Home, PokeCenter, Outdoor | "{1} is so happy to be home! It's rolling on the floor!" |

---

## Item Find System

High-affection Pokemon may find items while walking.

| Affection | Chance per Check |
|-----------|-----------------|
| HIGH | 8% |
| MAX | 15% |

**Context-specific loot tables:**

| Context | Items |
|---------|-------|
| Default | Potion, Super Potion, Revive, Repel, Escape Rope, Pearl, Tiny Mushroom, Honey, Nugget |
| Cave | Escape Rope, Revive, Max Repel, Star Dust, Star Piece, Nugget, Rare Bone, Hard Stone |
| Beach | Pearl, Big Pearl, Heart Scale, Shoal Shell, Shoal Salt, Star Piece |
| Forest | Tiny Mushroom, Big Mushroom, Honey, Balm Mushroom, Absorb Bulb, Miracle Seed |
| Snow | Never-Melt Ice, Ice Heal, Full Restore, Rare Candy |

---

## Talk Hook

When the player interacts with the follower, 40% chance to show affection-scaled dialogue:

| Affection | Emote | Move | Example |
|-----------|-------|------|---------|
| NONE | -- | -- | "{1} looks at you cautiously." |
| LOW | Dots | -- | "{1} is slowly getting used to you." |
| MEDIUM | Happy | Jump | "{1} does a little spin when you look at it!" |
| HIGH | Music | Double Jump | "{1} jumps up and tries to lick your face!" |
| MAX | Heart | Spin+Jump | "{1} gazes at you with pure love in its eyes." |

---

## Affection Milestones

| Level | Message |
|-------|---------|
| LOW | "{1} seems to be getting used to traveling with you." |
| MEDIUM | "{1} looks at you with growing trust." |
| HIGH | "{1} clearly adores being your companion!" |
| MAX | "{1} would follow you to the ends of the earth." |

---

## Battle End Reactions

Triggered after battles end (50% chance). Affection-scaled:

**Victory:**

| Affection | Emote | Move | Example |
|-----------|-------|------|---------|
| LOW | Happy | Spin+Jump | "{1} looks relieved the battle is over." |
| MEDIUM | Happy | Spin+Jump | "{1} puffs out its chest proudly!" |
| HIGH | Happy | Spin+Jump | "{1} does a little victory dance!" |
| MAX | Happy | Spin+Jump | "{1} high-fives you with its paw!" |

**Defeat:**

| Affection | Emote | Example |
|-----------|-------|---------|
| LOW | Dots | "{1} hangs its head quietly." |
| MEDIUM | Dots | "{1} nudges you gently, as if to say 'it's okay.'" |
| HIGH | Dots | "{1} tries to comfort you after the loss." |
| MAX | Dots | "{1} looks determined — next time you'll win for sure!" |

---

## Level Up Reactions

Triggered when the following Pokemon levels up:

| Affection | Emote | Move | Example |
|-----------|-------|------|---------|
| LOW | Heart | Spin+Jump | "{1} seems a little stronger now!" |
| MEDIUM | Heart | Spin+Jump | "{1} flexes after reaching Lv. {2}!" |
| HIGH | Heart | Spin+Jump | "{1} hit Lv. {2}! It's bouncing off the walls!" |
| MAX | Heart | Spin+Jump | "{1} powered up to Lv. {2}! It wants to celebrate with you!" |

---

## Evolution Reactions

Always triggers when the following Pokemon evolves:

| Affection | Emote | Move | Example |
|-----------|-------|------|---------|
| LOW | Heart | Dance | "{1} examines its new body curiously." |
| MEDIUM | Heart | Dance | "{1} can't stop looking at its reflection!" |
| HIGH | Heart | Dance | "{1} evolved! It roars with newfound power!" |
| MAX | Heart | Dance | "{1} evolved and won't stop nuzzling you!" |

---

## Faint Reactions

Triggered when the following Pokemon faints in battle:

| Affection | Emote | Example |
|-----------|-------|---------|
| LOW | Dots | "{1} collapsed from exhaustion." |
| MEDIUM | Dots | "Poor {1}... It fought as hard as it could." |
| HIGH | Dots | "{1} fainted trying to protect you..." |
| MAX | Dots | "{1} whispered your name before losing consciousness..." |

---

## Catch Reactions

Triggered when catching a new Pokemon (40% chance). Same-type bonus:

| Affection | Emote | Move | Example |
|-----------|-------|------|---------|
| LOW | Happy | Double Jump | "{1} watches the new Pokemon with curiosity." |
| MEDIUM | Happy | Double Jump | "{1} seems interested in the new teammate!" |
| HIGH | Happy | Double Jump | "{1} is eager to welcome the new Pokemon!" |
| MAX | Happy | Double Jump | "{1} does a little welcome dance for the newcomer!" |

If caught Pokemon shares a type with the follower: "{1} recognizes a fellow {type}-type and practically glows with joy!"

---

## Low HP Concern

Step-triggered when follower HP < 25% (40% chance per check):

| Affection | Emote | Move | Example |
|-----------|-------|------|---------|
| LOW | Dots | Step Back | "{1} is looking weak..." |
| MEDIUM | Dots | Step Back | "{1} stumbles a little as it walks." |
| HIGH | Dots | Step Back | "{1} is trying to hide how hurt it is..." |
| MAX | Dots | Step Back | "Please heal {1} soon... It's giving everything it has." |

---

## Heal Reactions

Triggered after healing at a Pokemon Center:

| Affection | Emote | Move | Example |
|-----------|-------|------|---------|
| LOW | Heart | Spin+Jump | "{1} feels better after the rest." |
| MEDIUM | Heart | Spin+Jump | "{1} is all healed up and ready to go!" |
| HIGH | Heart | Spin+Jump | "{1} is refreshed and nuzzles you gratefully!" |
| MAX | Heart | Spin+Jump | "{1} tackles you with gratitude — it feels amazing!" |

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbCompanionReaction` | Force a reaction check on the current follower |
| `pbCompanionAffectionLevel` | Get the follower's affection level symbol |
| `pbToggleCompanion` | Toggle follower visibility on/off |
| `pbShowCompanion` | Force-show the follower |
| `pbHideCompanion` | Force-hide the follower |

---

## Cross-Plugin Integration

- **CompanionFollower** -- Standalone abstraction layer for follower access, animations, and move routes via Essentials' native follower system
- **Pokemon Affection** -- Reads `affection_level`, calls `add_affection` for passive gains
- **Memory Lane** -- Records first companion walk
- **Event Hooks Used** -- `:on_player_step_taken`, `:on_game_load`, `:on_enter_map`, `:on_end_battle`, `:on_pokemon_level_up`, `:on_pokemon_evolved`, `:on_faint`, `:on_wild_pokemon_caught`, `:on_pokemon_center_heal`

---

## File Structure

| File | Purpose |
|------|---------|
| meta.txt | Plugin metadata and dependencies |
| 000_Config.rb | 26 contexts, 22+ type reactions, shiny, friendship, status, battle, level up, evolution, faint, catch, heal, low HP, items, talk, map enter, toggle |
| 001_CompanionFollower.rb | Standalone follower abstraction layer — animations, move routes, event access |
| 002_CompanionCore.rb | Reaction engine, 10 event hooks, step checks, item find, talk hook, map enter, toggle, milestone tracking |
| README.md | This file |
