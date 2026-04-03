# Nemesis System

**Version:** 1.0.0\
**Module:** `NemesisSystem`\
**Requires:** None

Lose a battle, and the trainer who beat you **remembers**. They grow stronger, gain new Pokémon, rank up, start taunting you — and eventually **ambush you on the overworld**. The Nemesis System transforms throwaway trainer losses into personal rivalries that persist across your entire playthrough.

---

## Features

| Feature | Description |
|---------|-------------|
| **Persistent Rivalries** | Trainers who defeat you become Nemeses — saved across sessions |
| **5 Nemesis Ranks** | Upstart → Rival → Threat → Overlord → Archnemesis |
| **Scaling Power** | Each rank boosts levels, IVs, and team composition |
| **Overworld Ambush** | Nemeses hunt you down between random step intervals |
| **Taunt & Defeat Lines** | Unique dialogue per rank — they mock you, and you can shut them up |
| **Max 3 Active Nemeses** | Only the strongest rivals persist — weaker ones fade |
| **Badge Gate** | System activates only after earning a minimum number of badges |

---

## Nemesis Ranks

When you lose to a trainer, there's a **60% chance** they become a Nemesis. Each time they defeat you again — or you flee — they **rank up**.

| Rank | Title | Level Boost | IV Boost | Behavior |
|------|-------|-------------|----------|----------|
| 1 | **Upstart** | +0 | +0 | Basic — just got lucky |
| 2 | **Rival** | +2 | +5 | Starts taunting you before battle |
| 3 | **Threat** | +4 | +10 | Gains additional Pokémon |
| 4 | **Overlord** | +7 | +15 | Ambushes become more frequent |
| 5 | **Archnemesis** | +10 | +20 | Maximum power — elite AI, custom dialogue |

> **Level Boost** is added on top of the trainer's base team levels.\
> **IV Boost** is added to all IVs (capped at 31).

---

## Overworld Ambush

Nemeses don't wait for you to come to them — they **find you**.

| Setting | Default | Description |
|---------|---------|-------------|
| `AMBUSH_MIN_STEPS` | `300` | Minimum steps before an ambush can trigger |
| `AMBUSH_MAX_STEPS` | `800` | Maximum steps — ambush guaranteed by this point |
| `AMBUSH_CHANCE` | `30` | % chance per step check (within the step window) |

When an ambush triggers:
1. The screen darkens with a dramatic flash
2. The Nemesis appears with their **taunt line** (rank-dependent)
3. A forced battle begins with their boosted team
4. If you win → they drop a rank (or are removed at Rank 1)
5. If you lose → they rank up (and gloat about it)

---

## Dialogue

Each rank has unique **taunt** (pre-battle) and **defeat** (post-loss) lines:

### Taunt Lines (Before Battle)

| Rank | Line |
|------|------|
| Upstart | *"Hey, I remember you! Ready for round two?"* |
| Rival | *"You again? This is getting too easy."* |
| Threat | *"I've been looking for you. Let's settle this."* |
| Overlord | *"You can't run forever. I own this route now."* |
| Archnemesis | *"This ends here. One of us walks away."* |

### Defeat Lines (When You Lose Again)

| Rank | Line |
|------|------|
| Upstart | *"Hah! Guess it wasn't a fluke after all."* |
| Rival | *"Starting to see a pattern here, aren't you?"* |
| Threat | *"You should just give up. Seriously."* |
| Overlord | *"I'm disappointed. I expected more from you."* |
| Archnemesis | *"Pathetic. You'll never surpass me."* |

---

## Configuration

All settings are in `000_Config.rb` inside the `NemesisSystem` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle for the nemesis system |
| `DEBUG_MODE` | `false` | Log nemesis events to the console |
| `NEMESIS_TRAINER_TYPE` | `:POKEMONTRAINER_Nemesis` | Trainer type used for nemesis encounters |
| `MAX_NEMESES` | `3` | Maximum concurrent active nemeses |
| `GENERATION_CHANCE` | `60` | % chance a defeating trainer becomes a nemesis |
| `MIN_BADGES` | `2` | Minimum badges before the system activates |

### Rank Definitions

```ruby
RANKS = {
  1 => { title: "Upstart",     level_boost: 0,  iv_boost: 0  },
  2 => { title: "Rival",       level_boost: 2,  iv_boost: 5  },
  3 => { title: "Threat",      level_boost: 4,  iv_boost: 10 },
  4 => { title: "Overlord",    level_boost: 7,  iv_boost: 15 },
  5 => { title: "Archnemesis", level_boost: 10, iv_boost: 20 },
}
```

### Ambush Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `AMBUSH_MIN_STEPS` | `300` | Steps before ambush window opens |
| `AMBUSH_MAX_STEPS` | `800` | Steps at which ambush is guaranteed |
| `AMBUSH_CHANCE` | `30` | % chance per check within the window |

---

## Tutorial: Working with Nemeses

### Automatic Generation

The system hooks into the battle loss event automatically. When the player loses:
1. System checks if the trainer qualifies (not already a nemesis, badge gate met)
2. Rolls `GENERATION_CHANCE` (60%)
3. If successful, creates a Nemesis entry with Rank 1

### Force-Create a Nemesis via Event

```ruby
# Make a specific trainer a nemesis (e.g., after a story event)
NemesisSystem.create_nemesis(:POKEMONTRAINER_Nemesis, "Shadow")
```

### Check Nemesis State

```ruby
# Get all active nemeses
NemesisSystem.active_nemeses         # => [Nemesis, Nemesis, ...]

# Check if a specific trainer is a nemesis
NemesisSystem.nemesis?(:POKEMONTRAINER_Kael)  # => true/false

# Get a nemesis's rank
nemesis = NemesisSystem.find("Shadow")
nemesis.rank                          # => 3
nemesis.title                         # => "Threat"
```

### Defeat / Remove a Nemesis

```ruby
# Demote a nemesis (after player wins)
NemesisSystem.demote(nemesis)

# Force-remove a nemesis (story event)
NemesisSystem.remove(nemesis)
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Trainer Rematch](trainer-rematch.md) | Nemeses exist separately from rematch trainers — they're personal |
| [Morality System](../story-narrative/morality-system.md) | Defeating Archnemeses can shift alignment |
| [Reputation System](../player-systems/reputation-system.md) | Clearing nemeses boosts regional reputation |
| [Party Banter](../story-narrative/party-banter.md) | Companions react to nemesis ambushes |

---

## File Structure

```
Plugins/[SC] Nemesis System/
  meta.txt          — Plugin metadata
  000_Config.rb     — Ranks, ambush tuning, dialogue lines
  001_Core.rb       — Nemesis tracking, rank logic, ambush triggers
  002_Additions.rb  — Battle hooks, overworld events, UI
```
