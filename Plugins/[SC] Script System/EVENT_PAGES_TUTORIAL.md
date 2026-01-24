# Event Page Management - Tutorial

## The Problem

When you create an event in RPG Maker (e.g., a battle against Gary), the player can normally trigger the event multiple times, even after it has already been completed. This is a common problem!

## Visual Explanation

![Event Page Flow Diagram](event_page_flow_1768516683726.png)

## The Solution: Event Pages

In RPG Maker, each event has multiple pages. The system checks pages from top to bottom and displays the first page whose conditions are met.

### Example: Gary Battle

**Page 1** - The Battle
- **Condition**: Self Switch A is (unchecked/grayed out) AND Switch [GOT_STARTER] is ON
- **Content**: Script Call: `pbCutscene(:lappet_rival_intro, event_id: 9)`

**Page 2** - After the Battle
- **Condition**: Self Switch A is ON
- **Content**: Script Call: `pbDialogue(:lappet_gary_after_battle)`
- Gary now shows different dialogue: "Tch... I can't believe I lost to you!"

## How It Works

1. **Before the battle**: Self Switch A is OFF → Page 1 is displayed
2. **Player starts event**: The cutscene runs
3. **At the end of cutscene**: `scene.disable_event(event_id)` sets Self Switch A to ON
4. **After the battle**: Self Switch A is ON → Page 2 is displayed
5. **Event cannot be repeated!**

## Self Switches vs. Global Switches

### Self Switches (Recommended for Events)
- **A, B, C, D** - Each event has its own
- Perfect for "event was already triggered"
- Automatically set by `scene.disable_event(event_id)`

### Global Switches
- **SW::CUTSCENE_INTRO_PLAYED** (Switch 120)
- Apply to the entire game
- Good for story progress that affects multiple maps

## Usage in Code

### In your Cutscenes (Ruby)

```ruby
GameData::Cutscene.define :my_event do |scene, event_id: nil|
  scene.message "This happens only once!"
  scene.message "After this I'm gone!"
  
  # At the end of the cutscene:
  scene.disable_event(event_id) if event_id  # Sets Self Switch A to ON
end
```

### Options

```ruby
# Use a different Self Switch (B, C, or D)
scene.disable_event(event_id, 'B') if event_id

# The event_id parameter is required
# Get it from the event in RPG Maker (shown in the event editor)
```

### Directly in RPG Maker Event Scripts

```ruby
# Disable event ID 10
pbDisableEvent(10)

# Re-enable event ID 10
pbEnableEvent(10)

# Use Self Switch B
pbDisableEvent(10, 'B')
```

## Setup in RPG Maker

### Step 1: Create Page 1
1. Right-click on Event → "Edit..."
2. Make sure you're on **Page 1**
3. **Conditions**: 
   - Self Switch: Leave UNCHECKED (grayed out)
   - Other conditions (e.g., Switch [GOT_STARTER] ON)
4. **Contents**: Script: `pbCutscene(:your_cutscene_name, event_id: X)`
   - Replace X with the actual event ID (shown at top of event editor)

### Step 2: Create Page 2
1. Click on "New Page" (top right)
2. **Conditions**:
   - Self Switch: A is ON (check the box and select A)
3. **Contents**: 
   - **Option 1**: Empty (event is invisible/inactive)
   - **Option 2**: Script: `pbDialogue(:your_dialogue_name)` for different dialogue
   - Example: `pbDialogue(:lappet_gary_after_battle)` shows Gary's "I lost" dialogue

### Step 3: Test it!
1. Start the game
2. Trigger the event
3. Try again → It should not work anymore!

## Common Mistakes

### Error 1: No Page 2
```
Page 1: Self Switch A unchecked → Event
(No Page 2)
```
**Problem**: Event can be triggered repeatedly!

### Error 2: Wrong Condition on Page 1
```
Page 1: Self Switch A = ON → Event
Page 2: Self Switch A = ON → Empty
```
**Problem**: Both pages have the same condition!

### Correct
```
Page 1: Self Switch A unchecked → Event
Page 2: Self Switch A = ON → Empty/Different Dialogue
```

## Advanced Usage

### Multiple Phases of an Event

**Page 1** - First Encounter
- Condition: Self Switch A unchecked
- Script: `pbCutscene(:npc_intro, event_id: 5)`
- At end: `scene.disable_event(event_id, 'A')`

**Page 2** - Quest Active
- Condition: Self Switch A = ON, Self Switch B unchecked
- Dialogue: "Did you find the items?"
- On completion: `pbDisableEvent(5, 'B')`

**Page 3** - Quest Complete
- Condition: Self Switch B = ON
- Dialogue: "Thanks for your help!"

### Temporarily Disable Event

```ruby
# In one event
pbDisableEvent(5)  # Disable event 5

# Later in another event
pbEnableEvent(5)   # Re-enable event 5
```

## Debugging

### Event not being disabled?

1. **Check the conditions**:
   - Page 1: Self Switch A must be UNCHECKED
   - Page 2: Self Switch A must be ON

2. **Check the code**:
   - Is `scene.disable_event(event_id)` at the END of the cutscene?
   - Is the cutscene even being executed?
   - Did you pass the correct event_id?

3. **Debug commands**:
```ruby
# In an event script
p $game_self_switches[[$game_map.map_id, 1, 'A']]  # Shows status of event 1
```

### Reset all events on a map

```ruby
# For debugging only! Resets all Self Switches on the current map
SCScripts::EventPageManager.reset_map_events($game_map.map_id)
```

## Summary

1. Use **two Event Pages** for one-time events
2. **Page 1**: Self Switch A unchecked → Your event
3. **Page 2**: Self Switch A = ON → Empty or different content
4. Add `scene.disable_event(event_id) if event_id` at the END of your cutscene
5. Always test if the event is disabled after the first time!

## Examples in the Project

See `Data/Scripts/Maps/Towns/Lappet Town.rb` for complete examples:
- `:lappet_lab_intro` - Professor Oak Intro
- `:lappet_choose_starter` - Starter Selection
- `:lappet_rival_intro` - Gary Battle (your problem!)
- `:lappet_gary_after_battle` - Gary Dialogue after battle

All these cutscenes now use `scene.disable_event(event_id)` at the end!

### Complete Example: Gary Battle with Dialogue

**Ruby Code** (`Lappet Town.rb`):

```ruby
# Cutscene for the first battle (Page 1)
GameData::Cutscene.define :lappet_rival_intro do |scene, event_id: nil|
  scene.message "Hey, wait up!"
  scene.message "\\PN, right? I'm Gary, Professor Oak's grandson!"
  scene.message "Gramps gave you a Pokémon, huh? Let me see!"
  scene.message "..."
  scene.message "Ha! Mine's way stronger! Let's battle!"
  
  scene.trainer_battle :RIVAL1, "Gary", 0
  
  scene.message "What?! I can't believe I lost!"
  scene.message "You just got lucky... I'll beat you next time!"
  scene.message "Smell ya later!"
  
  scene.set_switch SW::CUTSCENE_INTRO_PLAYED, true
  scene.disable_event(event_id) if event_id  # Switches to Page 2!
end

# Dialogue for after the battle (Page 2)
GameData::Dialogue.define :lappet_gary_after_battle do |d|
  d.node :start do |n|
    n.say "Tch... I can't believe I lost to you!"
    n.say "But don't get cocky, \\PN!"
    n.say "I'm going to train hard and become the strongest trainer!"
    n.say "Next time we meet, I'll crush you!"
    n.say "Smell ya later!"
  end
end
```

**RPG Maker Setup**:

**Event: Gary (e.g., Event ID 9)**

**Page 1** - First Battle
- Conditions: 
  - Self Switch A = (unchecked)
  - Switch [77] GOT_STARTER = ON
- Contents:
  - Script: `pbCutscene(:lappet_rival_intro, event_id: 9)`

**Page 2** - After Battle
- Conditions:
  - Self Switch A = ON
- Contents:
  - Script: `pbDialogue(:lappet_gary_after_battle)`

**Result**:
1. Player approaches Gary → Battle starts (Page 1)
2. After battle → Self Switch A is set to ON
3. Player talks to Gary again → Different dialogue (Page 2)
4. Battle cannot be repeated!
