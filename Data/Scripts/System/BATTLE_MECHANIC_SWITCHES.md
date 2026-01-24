# Battle Mechanic Switches - Übersicht

## Alle verfügbaren Battle-Mechaniken

Das System unterstützt jetzt **4 Battle-Mechaniken**:
1. **Mega Evolution** (Gen 6)
2. **Dynamax** (Gen 8 - Galar)
3. **Terastallization** (Gen 9 - Paldea)
4. **Z-Moves** (Gen 7 - Alola)

## Switch-Übersicht

### Plugin Switches (werden automatisch gesetzt)

| Switch ID | Name | Beschreibung |
|-----------|------|--------------|
| 34 | `Settings::NO_MEGA_EVOLUTION` | OFF = Mega Evolution aktiv |
| 64 | `Settings::NO_ZMOVE` | OFF = Z-Moves aktiv |
| 65 | `Settings::NO_ULTRA_BURST` | OFF = Ultra Burst aktiv (mit Z-Moves) |
| 66 | `Settings::NO_DYNAMAX` | OFF = Dynamax aktiv |
| 67 | `Settings::DYNAMAX_ON_ANY_MAP` | ON = Dynamax überall möglich |
| 68 | `Settings::DYNAMAX_IN_WILD_BATTLES` | ON = Dynamax in Wild Battles |
| 69 | `Settings::NO_TERASTALLIZE` | OFF = Terastallization aktiv |
| 70 | `Settings::TERA_ORB_ALWAYS_CHARGED` | ON = Tera Orb immer geladen |
| 71 | `Settings::RANDOMIZED_TERA_TYPES` | ON = Zufällige Tera Types |

### Custom Switches (für Event Conditions)

| Switch ID | Name | Beschreibung |
|-----------|------|--------------|
| 145 | `SW::MECHANIC_MEGA_EVOLUTION` | ON wenn Spieler Mega Evolution gewählt hat |
| 146 | `SW::MECHANIC_DYNAMAX` | ON wenn Spieler Dynamax gewählt hat |
| 147 | `SW::MECHANIC_TERASTALLIZATION` | ON wenn Spieler Terastallization gewählt hat |
| 148 | `SW::MECHANIC_Z_MOVES` | ON wenn Spieler Z-Moves gewählt hat |

## Variable

| Variable ID | Name | Werte |
|-------------|------|-------|
| 31 | `VAR::BATTLE_MECHANIC_MODE` | 0=Mega, 1=Dynamax, 2=Tera, 3=Z-Moves |

## Wie die Switches gesetzt werden

Wenn der Spieler eine Mechanik wählt:

### Mega Evolution gewählt (0)
```ruby
Settings::NO_MEGA_EVOLUTION = false  # Mega aktiv
Settings::NO_DYNAMAX = true          # Dynamax aus
Settings::NO_TERASTALLIZE = true     # Tera aus
Settings::NO_ZMOVE = true            # Z-Moves aus
Settings::NO_ULTRA_BURST = true      # Ultra Burst aus

SW::MECHANIC_MEGA_EVOLUTION = true   # Custom Switch
SW::MECHANIC_DYNAMAX = false
SW::MECHANIC_TERASTALLIZATION = false
SW::MECHANIC_Z_MOVES = false
```

### Dynamax gewählt (1)
```ruby
Settings::NO_MEGA_EVOLUTION = true
Settings::NO_DYNAMAX = false         # Dynamax aktiv
Settings::NO_TERASTALLIZE = true
Settings::NO_ZMOVE = true
Settings::NO_ULTRA_BURST = true

SW::MECHANIC_MEGA_EVOLUTION = false
SW::MECHANIC_DYNAMAX = true          # Custom Switch
SW::MECHANIC_TERASTALLIZATION = false
SW::MECHANIC_Z_MOVES = false
```

### Terastallization gewählt (2)
```ruby
Settings::NO_MEGA_EVOLUTION = true
Settings::NO_DYNAMAX = true
Settings::NO_TERASTALLIZE = false    # Tera aktiv
Settings::NO_ZMOVE = true
Settings::NO_ULTRA_BURST = true

SW::MECHANIC_MEGA_EVOLUTION = false
SW::MECHANIC_DYNAMAX = false
SW::MECHANIC_TERASTALLIZATION = true # Custom Switch
SW::MECHANIC_Z_MOVES = false
```

### Z-Moves gewählt (3)
```ruby
Settings::NO_MEGA_EVOLUTION = true
Settings::NO_DYNAMAX = true
Settings::NO_TERASTALLIZE = true
Settings::NO_ZMOVE = false           # Z-Moves aktiv
Settings::NO_ULTRA_BURST = false     # Ultra Burst auch aktiv

SW::MECHANIC_MEGA_EVOLUTION = false
SW::MECHANIC_DYNAMAX = false
SW::MECHANIC_TERASTALLIZATION = false
SW::MECHANIC_Z_MOVES = true          # Custom Switch
```

## Event-Beispiele

### Z-Crystal Shop (nur bei Z-Moves)
**Page 1** - Z-Moves gewählt
- Condition: ☑ Switch [148] MECHANIC_Z_MOVES = ON
- Content: "Welcome to the Z-Crystal shop!"

**Page 2** - Andere Mechanik
- Condition: (keine)
- Content: Leer

### Totem Pokémon Battle (nur bei Z-Moves)
**Page 1** - Z-Moves gewählt
- Condition: ☑ Switch [148] MECHANIC_Z_MOVES = ON
- Script: `pbTotemBattle(:RATICATE, 20)`

**Page 2** - Andere Mechanik
- Condition: (keine)
- Content: Leer

## Ruby Checks

```ruby
# Check welche Mechanik aktiv ist
BattleMechanicChoice.mega_evolution?      # true/false
BattleMechanicChoice.dynamax?             # true/false
BattleMechanicChoice.terastallization?    # true/false
BattleMechanicChoice.z_moves?             # true/false

# Get mechanic name
BattleMechanicChoice.mechanic_name
# => "Mega Evolution" / "Dynamax" / "Terastallization" / "Z-Moves"

# Get mode number
BattleMechanicChoice.current_mechanic
# => 0, 1, 2, or 3
```

## Zusammenfassung

- **4 Mechaniken** zur Auswahl
- **Automatische Switch-Verwaltung**
- **Einfache Event-Conditions** mit Custom Switches (145-148)
- **4x Wiederspielbarkeit!**

Jetzt können Spieler zwischen **4 verschiedenen Spielerfahrungen** wählen! 🎮✨
