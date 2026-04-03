# Lore Codex

**Version:** 1.0.0\
**Module:** `LoreCodex`\
**Requires:** None

The world of Shattered Crowns is steeped in Norse mythology — and the Lore Codex is how players piece it together. Discover **lore fragments** by reading books, examining steles, talking to NPCs, and exploring hidden areas. Each entry fills a page in your personal encyclopedia, organized into **6 color-coded categories**.

---

## Features

| Feature | Description |
|---------|-------------|
| **6 Categories** | Mythology, Characters, Locations, History, Bestiary, Artifacts |
| **Discovery-Based** | Entries unlock by finding them in the world |
| **Locked Preview** | Undiscovered entries show as "???" with a locked icon |
| **Completion Tracking** | Per-category and total completion percentage |
| **Discovery Sound** | Satisfying reveal sound on new entry |
| **Achievement Integration** | Optional achievements for completing categories |

---

## Categories

| Category | Color | Icon | Example Entries |
|----------|-------|------|-----------------|
| 🟣 **Mythology** | Purple | `codex_myth` | The Three Crowns, Yggdrasil's Roots, Nidhoggr's Prison |
| 🔵 **Characters** | Cyan | `codex_char` | Lyra's Origin, Kael's Betrayal, Elder Aldric |
| 🟢 **Locations** | Green | `codex_loc` | Asgheim City, The Forgotten Region, Void Rift |
| 🟡 **History** | Gold | `codex_hist` | The First Chosen, The Crown War, Astoria's Fall |
| 🔴 **Bestiary** | Red | `codex_beast` | Shadow Pokémon, Void Creatures, Guardian Beasts |
| ⚪ **Artifacts** | Silver | `codex_item` | Zacian's Fang, Rune of Óðinn, Crown Shards |

---

## Configuration

All settings are in `000_Config.rb` inside the `LoreCodex` module.

### Core Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `DEBUG_MODE` | `false` | Log entry discoveries to console |
| `GRAPHICS_FOLDER` | `"LoreCodex"` | Graphics folder for codex UI assets |
| `TOTAL_ENTRIES` | `nil` (auto) | Override total entry count (nil = auto-count) |

### UI Settings

| Constant | Default | Description |
|----------|---------|-------------|
| `TEXT_BASE` | white | Entry text color |
| `TEXT_LOCKED` | gray | Locked entry text color |
| `TEXT_TITLE` | gold | Entry title color |
| `SE_DISCOVER` | `"Mining reveal"` | Sound on new discovery |
| `SE_CURSOR` | `"GUI sel cursor"` | Cursor movement sound |

---

## Tutorial: Adding Lore Entries

### Step 1: Register an Entry (in a plugin script)

```ruby
# Register a lore entry
LoreCodex.register(:YGGDRASIL_ROOTS, {
  :category    => :MYTHOLOGY,
  :title       => "The Roots of Yggdrasil",
  :text        => "Yggdrasil's roots stretch across all realms...",
  :discovered  => false,
})
```

### Step 2: Unlock via Event

Place a book, stele, or NPC that reveals the entry:

```ruby
# Player reads a book → discovers lore entry
LoreCodex.discover(:YGGDRASIL_ROOTS)
```

### Step 3: Open the Codex UI

```ruby
# Open the Lore Codex screen
LoreCodex.open

# Open to a specific category
LoreCodex.open(:MYTHOLOGY)
```

---

## Script Calls

```ruby
# Discover an entry
LoreCodex.discover(:YGGDRASIL_ROOTS)

# Check if discovered
LoreCodex.discovered?(:YGGDRASIL_ROOTS)   # => true/false

# Get completion % for a category
LoreCodex.completion(:MYTHOLOGY)           # => 75.0

# Get total completion %
LoreCodex.total_completion                 # => 42.5

# Get all entries in a category
LoreCodex.entries_in(:BESTIARY)            # => [entry, entry, ...]

# Open the codex
LoreCodex.open
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Rune System](../pokemon-training/rune-system.md) | Rune discoveries add codex entries |
| [Spirit Realm](../world-exploration/spirit-realm.md) | Void lore entries found in Spirit Realm |
| [Weather Events](../world-exploration/weather-events.md) | Weather-specific lore reveals |
| [Move Tutor Network](../pokemon-training/move-tutor-network.md) | Discovering a tutor adds a codex entry |
| [Morality System](morality-system.md) | Dark/Light paths unlock different lore |

---

## File Structure

```
Plugins/[SC] Lore Codex/
  meta.txt          — Plugin metadata
  000_Config.rb     — Categories, UI colors, sounds, achievements
  001_Core.rb       — Entry registry, discovery logic, completion tracking
  002_Additions.rb  — UI rendering, event hooks, integration with other plugins
```
