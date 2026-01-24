# Battle Mechanic Choice - Quick Reference

## Switches

| Switch ID | Name | Description |
|-----------|------|-------------|
| 145 | `SW::MECHANIC_MEGA_EVOLUTION` | ON wenn Mega Evolution gewählt |
| 146 | `SW::MECHANIC_DYNAMAX` | ON wenn Dynamax gewählt |
| 147 | `SW::MECHANIC_TERASTALLIZATION` | ON wenn Terastallization gewählt |
| 34 | `Settings::NO_MEGA_EVOLUTION` | OFF nur bei Mega Evolution |
| 66 | `Settings::NO_DYNAMAX` | OFF nur bei Dynamax |
| 69 | `Settings::NO_TERASTALLIZE` | OFF nur bei Terastallization |

## Variable

| Variable ID | Name | Values |
|-------------|------|--------|
| 31 | `VAR::BATTLE_MECHANIC_MODE` | 0=Mega, 1=Dynamax, 2=Tera |

## Ruby Checks

```ruby
# Check welche Mechanik aktiv ist
BattleMechanicChoice.mega_evolution?      # true/false
BattleMechanicChoice.dynamax?             # true/false
BattleMechanicChoice.terastallization?    # true/false

# Get name
BattleMechanicChoice.mechanic_name        # "Mega Evolution" / "Dynamax" / "Terastallization"

# Get mode number
BattleMechanicChoice.current_mechanic     # 0, 1, or 2

# Set mechanic (für Testing)
BattleMechanicChoice.set_mechanic(BattleMechanicChoice::DYNAMAX)
```

## Event Conditions

### Nur bei Mega Evolution
- ☑ Switch [145] MECHANIC_MEGA_EVOLUTION = ON

### Nur bei Dynamax
- ☑ Switch [146] MECHANIC_DYNAMAX = ON

### Nur bei Terastallization
- ☑ Switch [147] MECHANIC_TERASTALLIZATION = ON

## Cutscene Call

```ruby
# Im Intro
pbCutscene(:choose_battle_mechanic, event_id: X)

# Oder direkt
BattleMechanicChoice.show_selection
```

## Trainer Versionen

```ruby
# Methode 1: Conditional
if BattleMechanicChoice.mega_evolution?
  pbTrainerBattle(:RIVAL1, "Gary", 0)
elsif BattleMechanicChoice.dynamax?
  pbTrainerBattle(:RIVAL1, "Gary", 1)
else
  pbTrainerBattle(:RIVAL1, "Gary", 2)
end

# Methode 2: Event Pages mit Switch Conditions
```

## Beispiel Event

**Dynamax Den (nur bei Dynamax)**

**Page 1:**
- Condition: ☑ Switch [146] MECHANIC_DYNAMAX = ON
- Script: `pbDynamaxDen`

**Page 2:**
- Condition: (keine)
- Content: Leer
