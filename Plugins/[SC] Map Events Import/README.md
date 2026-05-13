# Shattered Crowns Map Events Import

**Version:** 1.0.0
**Essentials:** v21.1
**Author:** Nononever

Define RPG Maker XP events in Ruby files instead of in the RPG Maker
editor. Events are loaded at game start and spawned into each map
automatically when the player visits — no `.rxdata` editing required.

---

## Why

You want to author every event in a text editor and version-control
everything cleanly. RPG Maker's `.rxdata` is opaque binary that diffs
poorly. This plugin lets you write events like this:

```ruby
MapEvents.define(4) do |m|
  m.event 1, "Professor Aldric" do |e|
    e.position 7, 5
    e.graphic "NPC Aldric", direction: :down
    e.trigger :action

    e.page :first_visit do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch1_lab_arrival, event_id: 1
      p.command :set_self_switch, 'A', true
    end

    e.page :after_visit do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Aldric: How is the partner I gave you?')"
    end
  end
end
```

…save the file under `Data/Scripts/Events/`, reload — the event appears
on map 4 at tile (7, 5) with the right graphic, triggers the cutscene
on first interaction, and shows a different message after.

---

## How it works

1. **Registry** (`001_MapEventsRegistry.rb`) — the DSL. `MapEvents.define`,
   `MapBuilder`, `EventBuilder`, `PageBuilder`. All purely declarative;
   no engine work happens here.

2. **Runtime spawner** (`002_RuntimeSpawner.rb`) — aliases `Game_Map#setup`.
   After the standard `.rxdata` load, the spawner reads the registry and
   converts each Builder into a native `RPG::Event` (with proper
   `RPG::Event::Page`, conditions, graphic, trigger, command list) and
   inserts it into `$game_map.events`.

3. **Collision policy** (`000_Config.rb`) — what to do when a spawned
   event has the same ID as a hand-placed `.rxdata` event:
   - `:SKIP` (default) — keep the `.rxdata` event, ignore the spawn
   - `:REPLACE` — overwrite with the spawn definition
   - `:MERGE` — append spawn pages to the existing event

4. **Auto-load** — every `.rb` file under `Data/Scripts/Events/` is loaded
   on game start and on save reload, so manifests persist across sessions.

---

## DSL reference

### Map

```ruby
MapEvents.define(MAP_ID) do |m|
  # events go here
end
```

### Event

```ruby
m.event(EVENT_ID, "Optional Name") do |e|
  e.position(x, y)                                  # tile position
  e.graphic("Char file", direction: :down)          # default sprite
  e.trigger(:action | :player_touch | :event_touch | :autorun | :parallel)

  e.page do |p| ... end                             # one or more pages
end
```

### Page

```ruby
e.page(:label) do |p|
  # Conditions (any combination)
  p.condition_switch(:switch_id_or_name, true)      # global switch
  p.condition_switch2(:other, true)                 # second global switch slot
  p.condition_variable(:var, :>=, 5)                # variable check
  p.condition_self_switch('A', true)                # self-switch (per event)
  p.condition_item(:LUMBERRY)                       # player has item

  # Graphic override
  p.graphic("NPC 07", direction: :up, pattern: 1)
  p.trigger(:action)

  # Movement
  p.move_random / p.move_approach / p.move_fixed
  p.speed(3); p.frequency(3)
  p.step_anime; p.walk_anime; p.direction_fix; p.through; p.always_on_top

  # Commands (executed when the event triggers)
  p.cutscene(:scene_name, event_id: 1)              # most common
  p.trainer_battle(:RIVAL, "Marcus", 0)
  p.script("pbMessage('Hello world')")              # arbitrary Ruby
  p.message("Plain text")                            # native Show Text
  p.command(:set_switch, :got_starter, true)
  p.command(:set_self_switch, 'A', true)
  p.command(:set_variable, :counter, 5)
  p.command(:wait, 60)                               # frames
end
```

### Sugar — common patterns

```ruby
# A single cutscene call, the most common event type:
e.page :default do |p|
  p.cutscene :ch1_wake_up, event_id: 1
  p.command :set_self_switch, 'A', true
end

# Trainer battle:
e.page :rival do |p|
  p.trainer_battle :RIVAL, "Marcus", 0
  p.command :set_self_switch, 'A', true
end

# Door / transfer:
e.page :default do |p|
  p.trigger :player_touch
  p.script "pbFadeOutIn { pbWarp(5, 1, 10) }"   # warp to map 5, tile (1,10)
end
```

---

## File layout

```
Plugins/[SC] Map Events Import/
  meta.txt
  000_Config.rb                  ← settings, collision policy, paths
  001_MapEventsRegistry.rb       ← DSL + builders
  002_RuntimeSpawner.rb          ← Game_Map hook + RPG::Event builder
  README.md

Data/Scripts/Events/             ← your event manifests live here
  Map001_Bedroom_Ch1.rb
  Map002_Kitchen_Ch1.rb
  Map003_Dawnhaven_Village_Ch1.rb
  Map004_Aldric_Lab_Ch1.rb
  …
```

The four shipped sample manifests cover Ch1's first four maps. They
illustrate every pattern: autorun cutscenes, gated transitions,
self-switch progression, multi-page NPCs, condition-gated dialogue.

---

## Configuration knobs (`000_Config.rb`)

| Constant | Default | Purpose |
|---|---|---|
| `ENABLED` | `true` | Master switch. |
| `DEBUG_MODE` | `$DEBUG` | Echoes spawn/skip/replace to the console. |
| `COLLISION_POLICY` | `:SKIP` | What to do when a spawned event ID matches an `.rxdata` event. |
| `SPAWN_ID_BASE` | `500` | Recommended floor for spawn-only event IDs (keep above hand-placed). |
| `SPAWN_ID_MAX` | `999` | Recommended ceiling. |
| `SPAWN_ONLY_MAPS` | `[]` | Maps where `.rxdata` events should be ignored entirely. |
| `EVENT_SCRIPTS_PATH` | `"Data/Scripts/Events"` | Where manifests are auto-loaded from. |

---

## Switch / variable names

If you have the SC Script System's `SwitchesVariables` module loaded
(`Plugins/[SC] Script System/008_SwitchesVariables.rb`), this plugin
will resolve `Symbol` switch/variable IDs through it. So you can write:

```ruby
p.condition_switch :ch1_got_starter, true
```

…instead of looking up the numeric ID. If the symbol isn't registered,
the spawner falls back to a deterministic high-range hash (won't
clash with hand-allocated IDs in the 1..999 range).

---

## Authoring workflow

1. Pick a map ID (look at the map's `.rxdata` filename or in the editor).
2. Create `Data/Scripts/Events/Map<ID>_<short_name>.rb`.
3. Write `MapEvents.define(<ID>) do |m| … end`.
4. Run the game; teleport to the map; the events appear.
5. Test, iterate, save.

For maps you author entirely in this plugin (no `.rxdata` events at
all), add the map ID to `SPAWN_ONLY_MAPS`.

---

## Public API

```ruby
MapEvents.define(map_id, &block)          # register events on a map
MapEvents.for_map(map_id)                  # => MapBuilder or nil
MapEvents.all                              # => { map_id => MapBuilder }
MapEvents.reset!                           # clear registry (debug)

MapEventsImport.apply_to_map(game_map)     # manually re-apply (debug)
MapEventsImport.load_all_manifests         # reload .rb files
```

---

## Compatibility

- **EBDX / DBK / SC Script System** — fully compatible; the spawner uses
  PE's native `RPG::Event` API. No engine override beyond `Game_Map#setup`.
- **Tiled `.tmx` maps** — orthogonal; this plugin only touches events,
  not tile data.
- **Save files** — events spawned this way behave exactly like
  hand-placed events at runtime (`$game_self_switches` works, etc.).
  Save data is unchanged.

---

## Known limitations

- Conditional branches (`if ... else ...` inside an event) are not yet
  exposed via DSL sugar — use `p.script "..."` for now and embed the
  logic inline. Most use cases are simpler than RPG Maker's branch
  command anyway.
- Move routes (the wavy `Move Up, Wait, Move Down, ...` sequences) are
  not yet exposed. Author them via `pbMoveRoute(...)` inside a script
  call instead.
- This plugin spawns at map-load time. Events that need to appear
  mid-cutscene should still be hand-placed or created via the existing
  `pbAddDependency` pattern.
