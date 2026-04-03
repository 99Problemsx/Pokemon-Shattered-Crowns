# Party Banter

**Version:** 1.0.0\
**Module:** `PartyBanter`\
**Requires:** None

Your Pokémon and companions aren't just silent followers — they **react to the world around them**. Walking through a storm? Your Fire-type complains. Just finished a boss fight? Lyra comments on your teamwork. Enter a new area? Kael has something sarcastic to say. Party Banter adds life to every step.

---

## Features

| Feature | Description |
|---------|-------------|
| **7 Trigger Types** | Low HP, weather, story events, new areas, type relevance, time of day, random |
| **Priority System** | Higher-priority triggers checked first (Low HP > Story > Weather > Random) |
| **Cooldown & Cap** | 80-step cooldown, max 3 banters per map visit |
| **3 Display Modes** | Portrait, speech bubble, or standard message |
| **Companion Speakers** | Lyra, Kael, Aldric with custom portraits |
| **Pokémon Speakers** | Your party Pokémon react based on species/type |

---

## Trigger Types

| Trigger | Priority | Condition | Example |
|---------|----------|-----------|--------|
| 💔 **Low HP** | 100 | Party member below 25% HP | *"Hey, your Charizard looks hurt..."* |
| 📖 **Story Event** | 90 | Just completed a story flag | *"That was intense back there."* |
| 🌧️ **Weather** | 80 | Special weather active | *"This rain won't let up..."* |
| 🌍 **New Area** | 50 | Entered a new map zone | *"I've never been here before."* |
| 🔥 **Pokémon Type** | 40 | Type matches map theme | *"My Vaporeon loves this lake!"* |
| 🌙 **Time of Day** | 30 | Morning / evening / night | *"Beautiful sunset..."* |
| 🎲 **Random** | 10 | Always possible (filler) | *"..." (Pokémon looks at you)* |

---

## Configuration

All settings are in `000_Config.rb` inside the `PartyBanter` module.

### Trigger Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `COOLDOWN_STEPS` | `80` | Steps between banter lines |
| `MAP_ENTRY_DELAY` | `15` | Steps before banter can fire on a new map |
| `TRIGGER_CHANCE` | `12` | % chance per step (after cooldown) |
| `MAX_PER_MAP` | `3` | Max banters per map visit |

### Display Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `DISPLAY_MODE` | `:portrait` | `:portrait`, `:bubble`, or `:message` |
| `BUBBLE_DURATION` | `180` | Frames for speech bubble mode |
| `BANTER_SE` | `"GUI sel cursor"` | Sound on banter |

### Companion Speakers

```ruby
COMPANION_SPEAKERS = {
  :LYRA   => { :name => "Lyra",   :portrait => "lyra_happy" },
  :KAEL   => { :name => "Kael",   :portrait => "kael_smirk" },
  :ALDRIC => { :name => "Aldric", :portrait => "aldric_calm" },
}
```

---

## Tutorial: Adding Banter Lines

### Step 1: Register a Banter Line

```ruby
# Lyra reacts to entering a forest
PartyBanter.register({
  :speaker   => :LYRA,
  :trigger   => :NEW_AREA,
  :condition => proc { $game_map.name.include?("Forest") },
  :text      => "The air is so fresh here... I love forests.",
})
```

### Step 2: Pokémon-Specific Banter

```ruby
# Any Fire-type reacts to rain
PartyBanter.register({
  :speaker   => :PARTY_POKEMON,
  :trigger   => :WEATHER,
  :condition => proc { :FIRE },
  :text      => "{1} shivers in the rain and looks at you sadly.",
})
```

---

## Script Calls

```ruby
# Force a banter line
PartyBanter.trigger(:LYRA, "Custom dialogue line here")

# Suppress banter temporarily (e.g., during cutscenes)
PartyBanter.suppress
PartyBanter.unsuppress

# Check if banter is active
PartyBanter.active?  # => true/false
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Relationship System](relationship-system.md) | Higher tiers unlock more banter lines |
| [Companion Pokémon](../pokemon-training/companion-pokemon.md) | Follower Pokémon is primary banter speaker |
| [Weather Events](../world-exploration/weather-events.md) | Weather triggers banter |
| [Morality System](morality-system.md) | Companions comment on alignment shifts |
| [Nemesis System](../battle-systems/nemesis-system.md) | Companions react to nemesis ambushes |

---

## File Structure

```
Plugins/[SC] Party Banter/
  meta.txt          — Plugin metadata
  000_Config.rb     — Triggers, display mode, speakers
  001_Core.rb       — Trigger logic, priority queue, cooldown tracking
  002_Additions.rb  — Banter line registry, display rendering, hooks
```
