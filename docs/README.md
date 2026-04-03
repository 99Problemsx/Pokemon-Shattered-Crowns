# ⚔️ Shattered Crowns Plugin Documentation

> **Pokémon Shattered Crowns** — A Norse mythology-inspired Pokémon Essentials v21.1 fan game.

This documentation covers all **\[SC\] custom plugins** built for Shattered Crowns. Each plugin is modular, toggle-able via its `000_Config.rb`, and designed to work independently or alongside others.

---

## Plugin Overview

Shattered Crowns ships with **34 custom plugins** spanning battle mechanics, story systems, world-building, and quality-of-life features. Every plugin follows the same structure:

```
[SC] Plugin Name/
  meta.txt          - Plugin metadata (name, version, dependencies)
  000_Config.rb     - All settings in one place — toggle features, tune values
  001_Core.rb       - Main logic
  002_Additions.rb  - Hooks, UI, integrations
```

All plugins can be **enabled/disabled** individually via `ENABLED = true/false` in their config.

---

## Categories

### 🔧 [Core Systems](core-systems/README.md)
Foundational plugins that other systems build upon.

| Plugin | Description |
|--------|-------------|
| [Script System](core-systems/script-system.md) | Complete PBS replacement with Ruby script definitions |
| [QoL Toggles](core-systems/qol-toggles.md) | Player-facing toggle menu: auto-run, fast text, battle speed |
| [Level Caps Ex](core-systems/level-caps-ex.md) | Flexible level cap system with 3 modes, badge caps, EXP storage, EV conversion |

### ⚔️ [Battle Systems](battle-systems/README.md)
Plugins that enhance or expand the battle experience.

| Plugin | Description |
|--------|-------------|
| [Battle Arena](battle-systems/battle-arena.md) | Post-game challenge tower with themed floors, streaks, and rewards |
| [Battle Rewards Ex](battle-systems/battle-rewards-ex.md) | Ranks battles S/A/B/C based on performance, awards bonus items |
| [Companion Battles](battle-systems/companion-battles.md) | Tag-team battles with story companions using custom AI |
| [Dynamic Music](battle-systems/dynamic-music.md) | Context-aware BGM: HP-based, boss phases, day/night, weather |
| [Nemesis System](battle-systems/nemesis-system.md) | Rival trainers that remember your defeats, grow stronger, and hunt you down |
| [Trainer Rematch](battle-systems/trainer-rematch.md) | Trainers become re-battleable with scaled teams after story progress |

### 📖 [Story & Narrative](story-narrative/README.md)
Plugins that deepen the storytelling and character development.

| Plugin | Description |
|--------|-------------|
| [Morality System](story-narrative/morality-system.md) | Light/Dark alignment based on story choices — affects endings, NPCs, unlocks |
| [Relationship System](story-narrative/relationship-system.md) | Track relationship points with story companions — unlocks cutscenes, team access |
| [Flashback System](story-narrative/flashback-system.md) | Playable flashback sequences from other characters' perspectives |
| [Memory Lane](story-narrative/memory-lane.md) | End-game team journey recap with lifetime stats visualization |
| [Lore Codex](story-narrative/lore-codex.md) | Collectible lore encyclopedia — fragments found via books, steles, NPCs |
| [Party Banter](story-narrative/party-banter.md) | Context-sensitive dialogue from following Pokémon and story companions |

### 🌍 [World & Exploration](world-exploration/README.md)
Plugins that make the world feel alive and rewarding to explore.

| Plugin | Description |
|--------|-------------|
| [Map Fog of War](world-exploration/map-fog-of-war.md) | Town Map starts blacked out — regions reveal as you explore |
| [Time Travel](world-exploration/time-travel.md) | Certain locations exist in Past/Present eras — switch via Yggdrasil roots |
| [Spirit Realm](world-exploration/spirit-realm.md) | Alternate-dimension dungeons via Yggdrasil portals — shadow encounters, void corruption |
| [Weather Events](world-exploration/weather-events.md) | Gameplay-affecting weather: rare encounters, hidden areas, special NPCs |
| [Secret Base](world-exploration/secret-base.md) | Player-built hidden base with decorations, features, and NPC invitations |

### 🐉 [Pokémon & Training](pokemon-training/README.md)
Plugins that expand how Pokémon grow, bond, and fight.

| Plugin | Description |
|--------|-------------|
| [Pokémon Affection](pokemon-training/pokemon-affection.md) | Affection value per Pokémon granting in-battle bonuses |
| [Pokémon Titles](pokemon-training/pokemon-titles.md) | Pokémon earn titles/epithets based on battle achievements |
| [Companion Pokémon](pokemon-training/companion-pokemon.md) | Overworld follower system (replaces Following Pokémon EX) |
| [Rune System](pokemon-training/rune-system.md) | Equippable Norse runes found at shrines — stat boosts socketed per Pokémon |
| [Rune Forging](pokemon-training/rune-forging.md) | Combine two runes at Yggdrasil to create hybrid runes with combined effects |
| [Ancestral Weapons](pokemon-training/ancestral-weapons.md) | Legendary relics tied to the Three Chosen that evolve through combat |
| [Move Tutor Network](pokemon-training/move-tutor-network.md) | Distributed Move Tutors across both regions with tracking and discovery |

### 👤 [Player Systems](player-systems/README.md)
Plugins that give the player new tools, progression, and activities.

| Plugin | Description |
|--------|-------------|
| [Destiny Board](player-systems/destiny-board.md) | Branching skill-tree for the protagonist — spend Fate Points on passive perks |
| [Trainer Card Ex](player-systems/trainer-card-ex.md) | Enhanced trainer card with achievement badges, stats, and team showcase |
| [Photo Mode](player-systems/photo-mode.md) | Pause + free camera, filters, Pokémon posing, PNG export |
| [Quest Journal](player-systems/quest-journal.md) | Main and side quest tracking with markers and rewards |
| [Wanted Board](player-systems/wanted-board.md) | Rotating bounty board quests in cities — hunt targets for rewards |
| [Reputation System](player-systems/reputation-system.md) | Faction reputation affecting shops, quests, and NPC reactions |
| [Crafting System](player-systems/crafting-system.md) | Material collection and item crafting with recipe discovery |

---

## Quick Start

1. All plugins live in `Plugins/[SC] Plugin Name/`
2. Edit `000_Config.rb` to tune any settings
3. Set `ENABLED = false` to disable a plugin without removing files
4. Most plugins log to the console in debug builds — check `DEBUG_MODE`

---

## Compatibility

- **Essentials:** v21.1
- **Deluxe Battle Kit:** ✅ Fully compatible
- **Generation 9 Pack:** ✅ Fully compatible

---

*Built with ♥ for the Shattered Crowns community.*
