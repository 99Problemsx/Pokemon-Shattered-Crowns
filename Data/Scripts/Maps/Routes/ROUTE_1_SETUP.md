# Route 1 - Setup Guide

## Wild Encounters

The wild encounters are defined in `Route_1.rb` and will work automatically when you walk in tall grass on Map 36.

### Encounter Rates:
- **Pidgey** - 30% (Level 2-4)
- **Rattata** - 30% (Level 2-4)
- **Sentret** - 20% (Level 2-3)
- **Hoothoot** - 10% (Level 2-3)
- **Spearow** - 10% (Level 3-4)

### Time-Based Encounters:
- **Morning**: More Pidgey and Sentret
- **Night**: More Hoothoot and Rattata

## Trainers Setup

You need to create 3 trainer events in RPG Maker:

### 1. Youngster Joey (Event ID 5)

**Event Setup:**
- **Name**: Youngster Joey
- **Graphic**: Youngster sprite
- **Trigger**: Player Touch
- **Move Type**: Face Player

**Page 1** - Before Battle
- **Conditions**: Self Switch A = (unchecked)
- **Contents**:
  - Text: "Hey! You're a new trainer, right?"
  - Text: "Let's battle!"
  - Script: `pbRoute1Joey`
  - Control Self Switch: A = ON

**Page 2** - After Battle
- **Conditions**: Self Switch A = ON
- **Contents**:
  - Text: "My Rattata is in the top percentage of Rattata!"

### 2. Lass Alice (Event ID 6)

**Event Setup:**
- **Name**: Lass Alice
- **Graphic**: Lass sprite
- **Trigger**: Player Touch
- **Move Type**: Face Player

**Page 1** - Before Battle
- **Conditions**: Self Switch A = (unchecked)
- **Contents**:
  - Text: "Oh! A trainer!"
  - Script: `pbRoute1Alice`
  - Control Self Switch: A = ON

**Page 2** - After Battle
- **Conditions**: Self Switch A = ON
- **Contents**:
  - Text: "You're pretty good!"

### 3. Bug Catcher Ben (Event ID 7)

**Event Setup:**
- **Name**: Bug Catcher Ben
- **Graphic**: Bug Catcher sprite
- **Trigger**: Player Touch
- **Move Type**: Face Player

**Page 1** - Before Battle
- **Conditions**: Self Switch A = (unchecked)
- **Contents**:
  - Text: "I love Bug Pokemon!"
  - Script: `pbRoute1Ben`
  - Control Self Switch: A = ON

**Page 2** - After Battle
- **Conditions**: Self Switch A = ON
- **Contents**:
  - Text: "Bug Pokemon are the best!"

## Items

Add these as Item Ball events:

1. **Potion** - Near the start of the route
   - Script: `pbItemBall(:POTION)`

2. **Pokeball** - Hidden in grass
   - Script: `pbHiddenItem(:POKEBALL)`

3. **Antidote** - Near Bug Catcher Ben
   - Script: `pbItemBall(:ANTIDOTE)`

## Achievements

Two achievements will unlock automatically:

1. **First Steps** - Unlocks when entering Route 1 for the first time
   - Reward: 100 money

2. **Route 1 Champion** - Unlocks when defeating all trainers
   - Reward: 3 Great Balls

## Important Notes

1. **Event IDs**: Make sure the event IDs in RPG Maker match the ones in the code (5, 6, 7)
   - You can change them in `Route_1.rb` if needed

2. **Map ID**: Route 1 must be Map ID 36
   - Change in `Route_1.rb` if your map has a different ID

3. **Trainer Sprites**: Make sure you have the correct trainer sprites:
   - Youngster
   - Lass
   - Bug Catcher

4. **Tall Grass**: Wild encounters only work in tiles marked as "Grass" in the tileset

## Testing

1. Walk into tall grass → Should encounter wild Pokemon
2. Walk near trainers → They should challenge you
3. Defeat all trainers → Achievement should unlock
4. Try to battle trainers again → They should just talk

## Customization

To change Pokemon or levels, edit `Route_1.rb`:

```ruby
# Change encounter rates
land.encounter :PIDGEY, 2..4, 30  # Pokemon, Level Range, Chance %

# Change trainer Pokemon
team.add :RATTATA, 3  # Pokemon, Level
```
