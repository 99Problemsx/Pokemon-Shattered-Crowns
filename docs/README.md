# ⚔️ Pokémon Shattered Crowns — Plugin Documentation

> *In the shadow of Yggdrasil, three Chosen rise. The Crowns have shattered — and the world remembers.*

**Pokémon Shattered Crowns** is a story-driven Pokémon fan game built on Essentials v21.1, set in the Norse-inspired regions of **Asgheim** and the **Forgotten Region**. This documentation covers all **34 custom \[SC\] plugins** that power the game's unique mechanics.

---

## 🌍 The World

Shattered Crowns takes place across two interconnected regions steeped in Norse mythology:

- **Asgheim** — A prosperous region protected by the Three Guardians: Zacian, Xerneas, and Yveltal
- **The Forgotten Region** — A sealed-off land corrupted by Nidhoggr's void influence
- **The Spirit Realm** — An alternate dimension accessible through Yggdrasil portals
- **The Past** — Time-shifted versions of key locations accessed via Yggdrasil roots

The player is one of the **Three Chosen**, destined to either restore, balance, or shatter the legendary Crowns.

---

## 🧩 Plugin Architecture

Every \[SC\] plugin follows the same structure and conventions:

```
[SC] Plugin Name/
  meta.txt          — Plugin metadata (name, version, dependencies)
  000_Config.rb     — All settings in one place — toggle features, tune values
  001_Core.rb       — Main logic
  002_Additions.rb  — Hooks, UI extensions, integrations
```

**Key principles:**
- 🔘 **Toggle anything** — Every plugin has `ENABLED = true/false` in its config
- 🔧 **Tune everything** — All values are exposed as named constants, no magic numbers
- 🔌 **Modular** — Plugins work independently; cross-plugin features degrade gracefully
- 🐛 **Debug-friendly** — Set `DEBUG_MODE = true` for console logging

---

## 📚 Plugin Categories

### [🔧 Core Systems](core-systems/README.md)

The foundation everything else builds upon.

| Plugin | What It Does |
|--------|-------------|
| [Script System](core-systems/script-system.md) | Replaces PBS text files with Ruby script definitions |
| [QoL Toggles](core-systems/qol-toggles.md) | Player menu for auto-run, fast text, battle speed |
| [Level Caps Ex](core-systems/level-caps-ex.md) | 3-mode level cap with badge auto-cap, EXP bank, and EV conversion |

### [⚔️ Battle Systems](battle-systems/README.md)

Make every fight memorable.

| Plugin | What It Does |
|--------|-------------|
| [Battle Arena](battle-systems/battle-arena.md) | Post-game challenge tower with themed floors and streak rewards |
| [Battle Rewards Ex](battle-systems/battle-rewards-ex.md) | S/A/B/C rank scoring with bonus loot |
| [Companion Battles](battle-systems/companion-battles.md) | Tag-team with story companions who have custom AI |
| [Dynamic Music](battle-systems/dynamic-music.md) | Music reacts to HP, boss phases, weather, and time of day |
| [Nemesis System](battle-systems/nemesis-system.md) | Trainers remember your losses, rank up, and ambush you |
| [Trainer Rematch](battle-systems/trainer-rematch.md) | Re-battle trainers with scaled teams after story progress |

### [📖 Story & Narrative](story-narrative/README.md)

Every choice matters.

| Plugin | What It Does |
|--------|-------------|
| [Morality System](story-narrative/morality-system.md) | Light/Dark alignment scale (−100 to +100) that shapes the ending |
| [Relationship System](story-narrative/relationship-system.md) | Bond with Lyra, Kael, Aldric, and Ragnar through choices and battle |
| [Flashback System](story-narrative/flashback-system.md) | Playable sequences from other characters' perspectives |
| [Memory Lane](story-narrative/memory-lane.md) | End-game journey recap with team lifetime stats |
| [Lore Codex](story-narrative/lore-codex.md) | Collectible mythology encyclopedia from books, steles, and NPCs |
| [Party Banter](story-narrative/party-banter.md) | Your Pokémon and companions react to the world around them |

### [🌍 World & Exploration](world-exploration/README.md)

A world worth exploring.

| Plugin | What It Does |
|--------|-------------|
| [Map Fog of War](world-exploration/map-fog-of-war.md) | Town Map reveals as you explore — no spoilers |
| [Time Travel](world-exploration/time-travel.md) | Switch between Past and Present at Yggdrasil roots |
| [Spirit Realm](world-exploration/spirit-realm.md) | Yggdrasil portal dungeons with void corruption and shadow Pokémon |
| [Weather Events](world-exploration/weather-events.md) | Dynamic weather unlocks rare encounters and hidden areas |
| [Secret Base](world-exploration/secret-base.md) | Build and decorate your own hidden base |

### [🐉 Pokémon & Training](pokemon-training/README.md)

Your team, your way.

| Plugin | What It Does |
|--------|-------------|
| [Pokémon Affection](pokemon-training/pokemon-affection.md) | Affection grants in-battle bonuses (endure, crit, status shake) |
| [Pokémon Titles](pokemon-training/pokemon-titles.md) | Earn epithets like "The Unbreakable" from battle achievements |
| [Companion Pokémon](pokemon-training/companion-pokemon.md) | Lead Pokémon follows you on the overworld |
| [Rune System](pokemon-training/rune-system.md) | Socket Norse runes onto Pokémon for stat boosts and effects |
| [Rune Forging](pokemon-training/rune-forging.md) | Combine runes at Yggdrasil for hybrid runes |
| [Ancestral Weapons](pokemon-training/ancestral-weapons.md) | Legendary relics that evolve through combat: Fang, Antler, Wing |
| [Move Tutor Network](pokemon-training/move-tutor-network.md) | Discover tutors across both regions |

### [👤 Player Systems](player-systems/README.md)

Tools, progression, and things to do.

| Plugin | What It Does |
|--------|-------------|
| [Destiny Board](player-systems/destiny-board.md) | Skill tree with three paths: Blade, Life, and Void |
| [Trainer Card Ex](player-systems/trainer-card-ex.md) | Enhanced card with achievement badges and stats |
| [Photo Mode](player-systems/photo-mode.md) | Free camera, filters, posing, PNG export |
| [Quest Journal](player-systems/quest-journal.md) | Track main, side, daily, and secret quests |
| [Wanted Board](player-systems/wanted-board.md) | City bounty boards with rotating hunt contracts |
| [Reputation System](player-systems/reputation-system.md) | Five factions whose opinion of you affects gameplay |
| [Crafting System](player-systems/crafting-system.md) | Gather materials, discover recipes, craft items |

---

## 🔗 How Systems Connect

The plugins aren't isolated — they talk to each other:

```
You make a story choice
  → Morality shifts Light or Dark
  → Relationship points change with companions
  → Reputation shifts with factions
  → Party Banter reacts with new dialogue
  → Quest Journal updates objectives
  → Lore Codex may unlock hidden entries

You win a battle at the level cap
  → Level Caps Ex blocks EXP (stored in piggy bank)
  → EVs are still awarded from the defeated Pokémon
  → Battle Rewards Ex scores your performance
  → Nemesis System checks if you lost (nemesis spawns)
  → Ancestral Weapon gains evolution progress
  → Rune effects applied throughout the fight

You explore a new area
  → Map Fog of War reveals the region
  → Weather Events may trigger a rare encounter
  → Spirit Realm portal may be discoverable
  → Time Travel root may connect to the Past
```

---

## ⚡ Quick Start

1. All plugins live in `Plugins/[SC] Plugin Name/`
2. Open `000_Config.rb` to see every setting with descriptions
3. Set `ENABLED = false` to disable any plugin cleanly
4. Set `DEBUG_MODE = true` for console logging during development
5. Check individual plugin pages for script calls and event setup

---

## ✅ Compatibility

| Dependency | Status |
|------------|--------|
| Pokémon Essentials v21.1 | ✅ Required |
| Deluxe Battle Kit | ✅ Fully compatible |
| Generation 9 Pack | ✅ Fully compatible |
| SV Summary | ✅ Compatible |
| Voltseon's Pause Menu | ✅ Optional integration |

---

*Built with ♥ for the Shattered Crowns community.*
