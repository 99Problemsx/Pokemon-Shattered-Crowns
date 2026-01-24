# Battle Mechanic Choice System - Tutorial

## Übersicht

Dieses System erlaubt dem Spieler, am Anfang des Spiels zu wählen, welche Battle-Mechanik er verwenden möchte:
- **Mega Evolution**
- **Dynamax**
- **Terastallization**

Basierend auf dieser Wahl werden automatisch die entsprechenden Switches gesetzt und Events/Trainer können sich anpassen.

## 🎮 Verwendung im Spiel

### Im Intro/Cutscene

Füge diesen Cutscene-Aufruf in dein Intro ein:

```ruby
pbCutscene(:choose_battle_mechanic, event_id: X)
```

Der Spieler wird dann gefragt, welche Mechanik er möchte.

### Direkter Aufruf (für Testing)

```ruby
BattleMechanicChoice.show_selection
```

## 📊 Switches & Variables

### Variable
- **VAR::BATTLE_MECHANIC_MODE** (31)
  - `0` = Mega Evolution
  - `1` = Dynamax
  - `2` = Terastallization

### Switches (für einfache Event-Conditions)
- **SW::MECHANIC_MEGA_EVOLUTION** (145) - ON wenn Mega Evolution gewählt
- **SW::MECHANIC_DYNAMAX** (146) - ON wenn Dynamax gewählt
- **SW::MECHANIC_TERASTALLIZATION** (147) - ON wenn Terastallization gewählt

### Plugin Switches (werden automatisch gesetzt)
- **Settings::NO_MEGA_EVOLUTION** (34) - OFF nur bei Mega Evolution
- **Settings::NO_DYNAMAX** (66) - OFF nur bei Dynamax
- **Settings::NO_TERASTALLIZE** (69) - OFF nur bei Terastallization

## 🗺️ Events basierend auf Mechanik

### Beispiel 1: Dynamax Den (nur bei Dynamax)

**Event: Dynamax Den**

**Page 1** - Dynamax gewählt
- Conditions:
  - ☑ Switch [146] MECHANIC_DYNAMAX = ON
- Contents:
  - Text: "A Dynamax Den! Let's raid it!"
  - Script: `pbDynamaxDen`

**Page 2** - Andere Mechanik
- Conditions:
  - ☐ (keine Bedingung)
- Contents:
  - Leer (Event ist unsichtbar)

### Beispiel 2: Tera Raid (nur bei Terastallization)

**Event: Tera Raid Crystal**

**Page 1** - Terastallization gewählt
- Conditions:
  - ☑ Switch [147] MECHANIC_TERASTALLIZATION = ON
- Contents:
  - Text: "A Tera Raid Crystal is glowing!"
  - Script: `pbTeraRaid`

**Page 2** - Andere Mechanik
- Conditions:
  - ☐ (keine Bedingung)
- Contents:
  - Leer

### Beispiel 3: NPC gibt Mega Stone (nur bei Mega Evolution)

**Event: NPC with Mega Stone**

**Page 1** - Mega Evolution gewählt
- Conditions:
  - ☑ Switch [145] MECHANIC_MEGA_EVOLUTION = ON
  - ☑ Self Switch A = OFF
- Contents:
  - Text: "Here, take this Mega Stone!"
  - Script: `pbReceiveItem(:LUCARIONITE)`
  - Control Self Switch: A = ON

**Page 2** - Nach Erhalt
- Conditions:
  - ☑ Self Switch A = ON
- Contents:
  - Text: "Use it wisely!"

**Page 3** - Andere Mechanik
- Conditions:
  - ☐ (keine Bedingung)
- Contents:
  - Leer

## 👥 Trainer basierend auf Mechanik

### Methode 1: Verschiedene Trainer-Versionen

```ruby
# In deinem Map Script oder Trainer Event

if BattleMechanicChoice.mega_evolution?
  pbTrainerBattle(:RIVAL1, "Gary", 0)  # Version mit Mega Evolution
elsif BattleMechanicChoice.dynamax?
  pbTrainerBattle(:RIVAL1, "Gary", 1)  # Version mit Dynamax
elsif BattleMechanicChoice.terastallization?
  pbTrainerBattle(:RIVAL1, "Gary", 2)  # Version mit Terastallization
end
```

### Methode 2: Event Pages

**Event: Rival Battle**

**Page 1** - Mega Evolution
- Conditions:
  - ☑ Switch [145] MECHANIC_MEGA_EVOLUTION = ON
- Contents:
  - Script: `pbTrainerBattle(:RIVAL1, "Gary", 0)`

**Page 2** - Dynamax
- Conditions:
  - ☑ Switch [146] MECHANIC_DYNAMAX = ON
- Contents:
  - Script: `pbTrainerBattle(:RIVAL1, "Gary", 1)`

**Page 3** - Terastallization
- Conditions:
  - ☑ Switch [147] MECHANIC_TERASTALLIZATION = ON
- Contents:
  - Script: `pbTrainerBattle(:RIVAL1, "Gary", 2)`

## 🔧 Ruby Helper Methods

```ruby
# Check welche Mechanik aktiv ist
if BattleMechanicChoice.mega_evolution?
  pbMessage("You're using Mega Evolution!")
end

if BattleMechanicChoice.dynamax?
  pbMessage("You're using Dynamax!")
end

if BattleMechanicChoice.terastallization?
  pbMessage("You're using Terastallization!")
end

# Get current mechanic name
mechanic = BattleMechanicChoice.mechanic_name
pbMessage("Your mechanic is #{mechanic}!")

# Get current mechanic mode number
mode = BattleMechanicChoice.current_mechanic
# 0 = Mega, 1 = Dynamax, 2 = Tera

# Manually set mechanic (für Testing)
BattleMechanicChoice.set_mechanic(BattleMechanicChoice::DYNAMAX)
```

## 📝 Trainer Teams definieren

### In PBS/trainers.txt

```
#-------------------------------
[RIVAL1,Gary,0]  # Mega Evolution Version
LoseText = I can't believe I lost!
Pokemon = Pidgeot,12
  Moves = GUST,QUICKATTACK
Pokemon = Charizard,15
  Item = CHARIZARDITEX
  Moves = EMBER,SLASH,MEGAEVOLVE
#-------------------------------
[RIVAL1,Gary,1]  # Dynamax Version
LoseText = I can't believe I lost!
Pokemon = Pidgeot,12
  Moves = GUST,QUICKATTACK
Pokemon = Charizard,15
  DynamaxLevel = 10
  Moves = EMBER,SLASH
#-------------------------------
[RIVAL1,Gary,2]  # Terastallization Version
LoseText = I can't believe I lost!
Pokemon = Pidgeot,12
  Moves = GUST,QUICKATTACK
Pokemon = Charizard,15
  TeraType = DRAGON
  Moves = EMBER,SLASH,TERABLAST
```

## 🎯 Beispiel: Vollständiges Intro

```ruby
GameData::Cutscene.define :game_intro do |scene, event_id: nil|
  scene.message "Welcome to the world of Pokémon!"
  scene.message "I am Professor Oak!"
  
  # Gender selection
  scene.choice ['Boy', 'Girl'], variable: VAR::PLAYER_GENDER do |choice|
    if choice == 0
      pbChangePlayer(1)
    else
      pbChangePlayer(2)
    end
  end
  
  scene.message "What's your name?"
  scene.script { pbTrainerName }
  
  scene.message "\\PN! What a wonderful name!"
  
  # Battle Mechanic Selection
  scene.message "Now, before you begin..."
  scene.message "Which battle mechanic would you like to use?"
  
  scene.script do
    BattleMechanicChoice.show_selection
  end
  
  scene.message "Excellent! Your adventure awaits!"
  
  scene.disable_event(event_id) if event_id
end
```

## 🔄 Wiederspielbarkeit

Dieses System ermöglicht 3 verschiedene Spielerfahrungen:

1. **Mega Evolution Run**
   - Mega Stones sammeln
   - Mega Evolution Trainer
   - Klassisches Pokémon-Feeling

2. **Dynamax Run**
   - Dynamax Dens erkunden
   - Max Raids
   - Gigantamax Pokémon

3. **Terastallization Run**
   - Tera Raids
   - Tera Shards sammeln
   - Tera Types ändern

## 🐛 Debug/Testing

```ruby
# Im Debug Menu oder Console

# Zeige aktuelle Mechanik
p BattleMechanicChoice.mechanic_name

# Wechsle Mechanik (für Testing)
BattleMechanicChoice.set_mechanic(BattleMechanicChoice::DYNAMAX)

# Check Switches
p $game_switches[SW::MECHANIC_DYNAMAX]  # true
p $game_switches[Settings::NO_DYNAMAX]  # false
```

## 📚 Zusammenfassung

1. ✓ Spieler wählt Mechanik im Intro
2. ✓ Switches werden automatisch gesetzt
3. ✓ Events reagieren auf gewählte Mechanik
4. ✓ Trainer haben verschiedene Teams
5. ✓ 3x Wiederspielbarkeit!

Viel Erfolg beim Aufbau deines mechanik-basierten Spiels! 🎮✨
