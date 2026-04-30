# [SC] Healing Vial

A portable Pokemon Center in your pocket. Uses limited charges that must be recharged at a real Pokemon Center.

## Features
- Fully heals all party Pokemon (HP, status, PP) on use
- Limited to **3 charges** by default (configurable in `000_Config.rb`)
- Recharges when visiting a Pokemon Center

## Setup

### 1. Give the player the vial (map event script)
```ruby
pbReceiveHealingVial
```

### 2. Auto-recharge at Pokemon Centers (add to nurse healing event)
```ruby
pbRechargeHealingVial if pbHasHealingVial?
```

### 3. Check charges in a conditional branch
```ruby
pbHealingVialCharges  # returns Integer (0..MAX_CHARGES)
```

## Configuration (`000_Config.rb`)
| Setting | Default | Description |
|---------|---------|-------------|
| `MAX_CHARGES` | 3 | Max charges the vial can hold |
| `STARTING_CHARGES` | MAX_CHARGES | Charges on first receive |
| `SE_HEAL` | `"Pkmn healing"` | Sound when healing |
| `SE_EMPTY` | `"GUI sel buzzer"` | Sound when empty |
| `SE_CHARGE` | `"Pkmn move learnt"` | Sound when recharged |
