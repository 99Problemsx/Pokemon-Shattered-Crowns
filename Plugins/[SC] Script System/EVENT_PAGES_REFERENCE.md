# Event Page Manager - Quick Reference

## In Cutscenes (Ruby Code)

```ruby
GameData::Cutscene.define :my_event do |scene, event_id: nil|
  scene.message "This happens once!"
  
  # At the end:
  scene.disable_event(event_id) if event_id           # Disable current event (Self Switch A)
  scene.disable_event(event_id, 'B') if event_id      # Use Self Switch B instead
end
```

## In RPG Maker Events

```ruby
pbDisableEvent(event_id)              # Disable specific event
pbDisableEvent(event_id, 'B')         # Use Self Switch B
pbEnableEvent(event_id)               # Re-enable event
```

## Event Page Setup

### One-Time Event (Recommended)

**Page 1:**
- Condition: Self Switch A = (unchecked/grayed out)
- Content: `pbCutscene(:your_cutscene, event_id: 9)`

**Page 2:**
- Condition: Self Switch A = ON  
- Content: Empty (or different dialogue)

### Multi-Stage Event

**Page 1:** Self Switch A = (unchecked) → First interaction
**Page 2:** Self Switch A = ON, B = (unchecked) → Quest active
**Page 3:** Self Switch B = ON → Quest complete

## Common Patterns

### NPC that gives item once
```ruby
GameData::Cutscene.define :npc_gift do |scene, event_id: nil|
  scene.message "Here, take this!"
  scene.give_item :POTION, 5
  scene.disable_event(event_id) if event_id
end
```

### Battle that happens once
```ruby
GameData::Cutscene.define :rival_battle do |scene, event_id: nil|
  scene.trainer_battle :RIVAL1, "Gary", 0
  scene.message "You win this time!"
  scene.disable_event(event_id) if event_id
end
```

### Event that can be reset
```ruby
# Event 1: Activate something
pbDisableEvent(5)  # Disable event 5

# Event 2: Reset it later
pbEnableEvent(5)   # Re-enable event 5
```

## Debugging

```ruby
# Check if event is disabled
key = [$game_map.map_id, event_id, 'A']
p $game_self_switches[key]  # true = disabled

# Reset all events on current map (DEBUG ONLY!)
SCScripts::EventPageManager.reset_map_events($game_map.map_id)
```

## Self Switch vs Global Switch

| Type | Use Case | Example |
|------|----------|---------|
| **Self Switch** | Event-specific state | Event completed, NPC talked to |
| **Global Switch** | Game-wide state | Story progress, gym badges |

**Best Practice:** Use Self Switches for events, Global Switches for story!
