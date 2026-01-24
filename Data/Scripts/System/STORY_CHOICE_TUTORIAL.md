# Story Choice Mode - Tutorial & Reference

This guide explains how to use the **Story Choice Mode** system to create branching narratives in your game.

## Overview

Story Choice Mode is an optional game mode (selected at the start) that allows players to make decisions that impact dialogue, cutscenes, and story progression.

- **Standard Mode**: The story plays out linearly (default path).
- **Choice Mode**: Players are presented with choices at key moments.

## How to Check if Mode is Enabled

In any script or event:
```ruby
if StoryChoices.enabled?
  # Do choice stuff
else
  # Do standard stuff
end
```

## Creating a Decision

To present a choice to the player during a cutscene (or any script), use `StoryChoices.make_decision`.

### Basic Syntax
```ruby
# Define a unique ID for the decision (e.g., :ch1_save_village)
# Define the options as an array of strings
choice = StoryChoices.make_decision(:unique_decision_id, [
  "Option A",
  "Option B",
  "Option C"
])
```

### Example in a Cutscene
```ruby
GameData::Cutscene.define :example_cutscene do |scene|
  scene.message "The villain stands before you!"
  
  if StoryChoices.enabled?
    # Make the decision
    # Note: Wrap in scene.script so it pauses the cutscene correctly
    choice = scene.script { 
      StoryChoices.make_decision(:ch3_villain_confrontation, [
        "Attack him!",       # returns 0
        "Try to reason.",    # returns 1
        "Run away."          # returns 2
      ]) 
    }
    
    # Handle the result
    case choice
    when 0
      scene.message "You lunged forward with your sword!"
      # ... battle logic ...
    when 1
      scene.message "You tried to talk, but he wouldn't listen."
      # ... diplomatic logic ...
    when 2
      scene.message "You ran for your life!"
      # ... escape logic ...
    end
  else
    # Standard Story Path (Default)
    scene.message "You stood your ground, ready to fight."
  end
end
```

## Checking Past Decisions

You can check a player's past choices later in the game to alter dialogue or events.

### Using `StoryChoices.has_chosen?`
```ruby
# Check if player chose Option 0 ("Attack him!") in the example above
if StoryChoices.has_chosen?(:ch3_villain_confrontation, 0)
  scene.message "Villain: I haven't forgotten how you attacked me before!"
end
```

### Using `StoryChoices.decision`
```ruby
# Get the saved value (returns 0, 1, 2, etc.)
past_choice = StoryChoices.decision(:ch3_villain_confrontation)

if past_choice == 1
  # Player tried to reason
elsif past_choice == 2
  # Player ran away
end
```

## Best Practices

1. **Unique IDs**: Always use a unique symbol name for `decision_id` (e.g., `:ch1_dream`, `:ch5_betrayal`).
2. **Standard Fallback**: Always provide an `else` block for Standard Mode so the game works for everyone.
3. **Meaningful Choices**: Try to make choices that matter, even if it's just changing a few lines of dialogue.
4. **Auto-Default**: If Choice Mode is disabled, `StoryChoices.decision` will return `0` (the first option) by default while checking past decisions. **Design your standard path to align with Option 0 usually, or handle the check carefully.**

## Debugging

You can manually toggle the mode or check variables using the debug console:
```ruby
StoryChoices.set_mode(true)  # Turn mode on
p StoryChoices.decision(:some_id) # See what was chosen
```
