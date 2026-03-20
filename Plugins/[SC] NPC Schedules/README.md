# NPC Daily Schedules Plugin

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

A plugin for Pokémon Essentials that gives NPCs time-based daily routines. NPCs can move to different positions, become hidden, change sprites, patrol routes, and activate self-switches based on the current hour. Works with both Ruby DSL definitions and RPG Maker event comments.

---

## Features

- **Time-Based Positioning** — NPCs move to different map tiles at different hours
- **Visibility Control** — Hide/show NPCs based on time of day
- **Direction Changes** — NPCs face different directions per time slot
- **Sprite Overrides** — Change NPC appearance at different times
- **Patrol Routes** — NPCs walk repeating paths during their active slot
- **Self-Switch Activation** — Trigger different event pages per time slot
- **Story Lock System** — Freeze NPCs during cutscenes/story events
- **Two Definition Methods** — Ruby DSL or event comment tags
- **Debug Tools** — Full debug menu with time override and 24h simulation
- **Save Compatible** — Locks and overrides persist through save/load

---

## Quick Start

### Method 1: Event Comments (No Ruby Required)

Place a **Comment** event command on any NPC event:

```
[Schedule morning x:10 y:5 dir:down]
[Schedule afternoon x:3 y:8 dir:left]
[Schedule night hidden]
```

That's it! The NPC will move to (10,5) facing down in the morning, (3,8) facing left in the afternoon, and disappear at night.

### Method 2: Ruby DSL (Event Scripts)

```ruby
pbDefineNPCSchedule(5) do |s|
  s.morning   x: 10, y: 5, direction: 2
  s.afternoon x: 3,  y: 8, direction: 4
  s.evening   x: 7,  y: 3, direction: 8
  s.night     visible: false
end
```

---

## Comment Tag Reference

### Format

```
[Schedule TIME_SPEC PROPERTIES...]
```

### Time Specifications

| Preset | Hours |
|--------|-------|
| `morning` | 5:00 - 11:59 |
| `afternoon` | 12:00 - 16:59 |
| `evening` | 17:00 - 19:59 |
| `night` | 20:00 - 4:59 |
| `daytime` | 5:00 - 19:59 |
| `allday` | 0:00 - 23:59 |
| `8-17` | Custom range (8:00 - 17:59) |
| `22-4` | Midnight wrap (22:00 - 4:59) |
| `8,12,18` | Specific hours only |

### Properties

| Property | Example | Description |
|----------|---------|-------------|
| `x:N` | `x:10` | X tile position |
| `y:N` | `y:5` | Y tile position |
| `dir:DIR` | `dir:down` | Facing direction (down/left/right/up) |
| `hidden` | `hidden` | NPC is invisible and walk-through |
| `switch:X` | `switch:B` | Activate self-switch (A/B/C/D) |
| `speed:N` | `speed:3` | Movement speed (1-6) |
| `graphic:NAME` | `graphic:NPC_02` | Override sprite filename |
| `patrol:DIRS` | `patrol:down,down,right,right,up,up,left,left` | Repeating patrol route |

### Patrol Commands

`down`, `up`, `left`, `right`, `random`, `toward`, `away`, `wait`, `turn_down`, `turn_up`, `turn_left`, `turn_right`

### Examples

```
[Schedule morning x:10 y:5 dir:down]
[Schedule 9-17 x:5 y:3 dir:right switch:A]
[Schedule night hidden]
[Schedule evening x:8 y:12 patrol:down,down,right,right,up,up,left,left]
[Schedule allday x:5 y:5 graphic:NPC_shopkeeper_alt]
```

---

## Ruby DSL Reference

### Defining Schedules

```ruby
# For an event on the current map
pbDefineNPCSchedule(event_id) do |s|
  s.slot :label, hours: (8..17), x: 10, y: 5, direction: 2
end

# For an event on a specific map
pbDefineNPCSchedule(event_id, map_id) do |s|
  s.morning   x: 10, y: 5, direction: 2    # 5:00-11:59
  s.afternoon x: 3,  y: 8, direction: 4    # 12:00-16:59
  s.evening   x: 7,  y: 3, direction: 8    # 17:00-19:59
  s.night     visible: false                 # 20:00-4:59
  s.daytime   x: 5,  y: 5                   # 5:00-19:59
  s.allday    x: 5,  y: 5                   # All hours
end
```

### Slot Options

```ruby
s.slot :work,
  hours: (9..17),        # Hour range or array
  x: 10, y: 5,          # Position
  direction: 2,          # 2=down, 4=left, 6=right, 8=up
  visible: true,         # true/false
  speed: 3,              # 1-6
  graphic: "NPC_02",     # Sprite override
  self_switch: "A",      # Activate self-switch
  route: [:down, :down, :right, :right, :up, :up, :left, :left]
```

### Conditional Slots

```ruby
s.slot :rainy_day, hours: (8..17), x: 5, y: 5 do
  # Only active when it's raining
  $game_screen.weather_type == :Rain
end
```

---

## Script Helper Reference

### Schedule Management

| Method | Description |
|--------|-------------|
| `pbDefineNPCSchedule(event_id) { \|s\| ... }` | Define a schedule with DSL |
| `pbClearNPCSchedule(event_id)` | Remove all schedules for an NPC |
| `pbRefreshNPCSchedules` | Force-refresh all schedules on current map |

### NPC Queries

| Method | Returns | Description |
|--------|---------|-------------|
| `pbGetNPCSchedule(event_id)` | `NPCScheduleEntry` or `nil` | Get active schedule entry |
| `pbNPCVisible?(event_id)` | `true`/`false` | Is the NPC currently visible? |
| `pbNPCAt?(event_id, x, y)` | `true`/`false` | Is the NPC scheduled at this position? |
| `pbNPCActivity(event_id)` | `String` or `nil` | Get the NPC's current activity label |
| `pbNPCHasSchedule?(event_id)` | `true`/`false` | Does the NPC have any schedule? |

### Story Lock System

| Method | Description |
|--------|-------------|
| `pbLockNPCSchedule(event_id)` | Freeze NPC in current position (ignores schedule) |
| `pbUnlockNPCSchedule(event_id)` | Resume schedule |
| `pbNPCScheduleLocked?(event_id)` | Check if NPC is locked |

### Time Helpers

| Method | Returns | Description |
|--------|---------|-------------|
| `pbCurrentHour` | `Integer` (0-23) | Current hour |
| `pbHourBetween?(start, end)` | `true`/`false` | Is current hour in range? Handles midnight wrap |
| `pbIsWorkHours?` | `true`/`false` | 9:00-17:00 |
| `pbIsLateNight?` | `true`/`false` | 23:00-4:00 |
| `pbIsDawn?` | `true`/`false` | 5:00-6:00 |
| `pbIsDusk?` | `true`/`false` | 18:00-19:00 |

---

## Use Cases

### Market Vendor NPC

```
[Schedule 9-17 x:5 y:3 dir:down]
[Schedule night hidden]
```
Vendor stands behind their stall during business hours, disappears at night.

### Guard with Shift Change

```ruby
# Guard A: Day shift
pbDefineNPCSchedule(10) do |s|
  s.slot :day_shift, hours: (6..17), x: 12, y: 3, direction: 2
  s.slot :off_duty,  hours: (18..5), visible: false
end

# Guard B: Night shift
pbDefineNPCSchedule(11) do |s|
  s.slot :night_shift, hours: (18..5), x: 12, y: 3, direction: 2
  s.slot :off_duty,    hours: (6..17), visible: false
end
```

### NPC with Daily Routine

```ruby
pbDefineNPCSchedule(7) do |s|
  s.morning   x: 8,  y: 12, direction: 2  # At home, morning
  s.slot :commute, hours: (9..9), x: 15, y: 10, direction: 6  # Walking to work
  s.slot :work, hours: (10..16), x: 22, y: 5, direction: 8, self_switch: "A"
  s.evening   x: 8,  y: 12, direction: 2  # Back home
  s.night     visible: false               # Indoors (hidden on overworld)
end
```

### Patrolling NPC

```
[Schedule daytime x:5 y:5 patrol:right,right,right,down,down,down,left,left,left,up,up,up]
[Schedule night x:5 y:5 dir:down]
```
NPC walks a square patrol during the day, stands still at night.

### Story Override

```ruby
# During a cutscene, lock the NPC so they don't wander off
pbLockNPCSchedule(7)

# ... cutscene plays ...

# After cutscene, let them resume
pbUnlockNPCSchedule(7)
```

---

## Debug Menu

Access via **Debug > NPC Schedules** in the debug menu:

| Option | Description |
|--------|-------------|
| Show Schedule Info | Display all NPC states on current map |
| Toggle NPC Overlay | Show/hide schedule indicators on-screen |
| Set Time Override | Force a specific hour for testing |
| Clear Time Override | Return to real time |
| Force Refresh | Re-apply all schedules immediately |
| List All Scheduled | Show every registered NPC schedule |
| Lock/Unlock NPC | Toggle story lock for NPCs on current map |
| Simulate 24h Cycle | Fast-forward through all 24 hours |

---

## File Structure

```
[SC] NPC Schedules/
├── meta.txt                  - Plugin metadata
├── [001] Schedule_Data.rb    - Data model, DSL builder, save data
├── [002] Schedule_Engine.rb  - Core engine, event hooks, patrol system
├── [003] Comment_Parser.rb   - Event comment [Schedule] tag parser
├── [004] Script_Helpers.rb   - pb* convenience methods
├── [005] Debug_Tools.rb      - Debug menu and testing tools
└── README.md                 - This file
```

---

## Compatibility

- Works alongside **[SC] Script System** TimedEvent and EventPageManager
- Compatible with **Following Pokemon EX**
- Compatible with **Dynamic Lighting System** (NPCs that move will have their lights follow)
- No conflicts with self-switch-based event page systems (schedule self-switches are managed cleanly)
