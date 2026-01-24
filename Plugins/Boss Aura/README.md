# Boss Aura Plugin

Dieses Plugin fügt Boss-Kämpfe mit dramatischen Aura-Animationen hinzu, ähnlich wie Totem-Pokemon in den offiziellen Spielen.

## Features

- **Dramatische Aura-Animation**: Zeigt eine beeindruckende AURAFLARE-Animation wenn ein Boss-Pokemon erscheint
- **Automatische Stat-Boosts**: Erhöht die Stats des Boss-Pokemon zu Beginn des Kampfes
- **Einfache Verwendung**: Vorgefertigte Funktionen für verschiedene Boss-Typen
- **Anpassbar**: Erstelle eigene Stat-Boost-Kombinationen

## Verwendung

### Basis-Verwendung

Vor einem Wild-Battle einfach eine der Setup-Funktionen aufrufen:

```ruby
# Standard Boss (moderate Boosts)
pbStandardBossBattle
pbWildBattle(:DIALGA, 50)

# Starker Boss (signifikante Boosts)
pbStrongBossBattle
pbWildBattle(:RAYQUAZA, 70)

# Legendärer Boss (große Boosts)
pbLegendaryBossBattle
pbWildBattle(:ARCEUS, 80)
```

### Vorgefertigte Boss-Typen

```ruby
# Physischer Boss (Angriff/Verteidigung fokussiert)
pbPhysicalBossBattle
pbWildBattle(:MACHAMP, 60)

# Spezieller Boss (Spezial-Angriff/Verteidigung fokussiert)
pbSpecialBossBattle
pbWildBattle(:ALAKAZAM, 60)

# Tank Boss (Defensive fokussiert)
pbTankBossBattle
pbWildBattle(:SNORLAX, 65)

# Speed Boss (Geschwindigkeit fokussiert)
pbSpeedBossBattle
pbWildBattle(:JOLTEON, 55)
```

### Eigene Stat-Boosts definieren

```ruby
# Individuelle Stat-Boosts
pbSetupBossBattle(
  :ATTACK => 2,           # +2 Angriff
  :DEFENSE => 1,          # +1 Verteidigung
  :SPECIAL_ATTACK => 2,   # +2 Spezial-Angriff
  :SPEED => 1             # +1 Geschwindigkeit
)
pbWildBattle(:MEWTWO, 70)

# Nur einen Stat boosten
pbSetupBossBattle(:SPEED => 3)
pbWildBattle(:NINJASK, 50)
```

### Erweiterte Verwendung

```ruby
# Direkt über das BossAura-Modul
BossAura.setup_boss_battle(
  :ATTACK => 2,
  :DEFENSE => 2,
  :SPECIAL_ATTACK => 2,
  :SPECIAL_DEFENSE => 2,
  :SPEED => 2
)
pbWildBattle(:GIRATINA, 75)
```

## Stat-Boost-Werte

Die Zahlen entsprechen den Standard-Pokemon-Stat-Stufen:
- **1** = +1 Stufe (50% Erhöhung)
- **2** = +2 Stufen (100% Erhöhung)
- **3** = +3 Stufen (150% Erhöhung)
- **4** = +4 Stufen (200% Erhöhung)
- usw.

## Vorgefertigte Boss-Konfigurationen

### pbStandardBossBattle
- Alle Stats: +1
- Gut für frühe Boss-Kämpfe

### pbStrongBossBattle
- Angriff, Verteidigung, Spezial-Angriff, Spezial-Verteidigung: +2
- Geschwindigkeit: +1
- Gut für mittlere Boss-Kämpfe

### pbLegendaryBossBattle
- Alle Stats: +2
- Gut für legendäre Pokemon

### pbPhysicalBossBattle
- Angriff, Verteidigung: +2
- Geschwindigkeit: +1
- Gut für physische Angreifer

### pbSpecialBossBattle
- Spezial-Angriff, Spezial-Verteidigung: +2
- Geschwindigkeit: +1
- Gut für spezielle Angreifer

### pbTankBossBattle
- Verteidigung, Spezial-Verteidigung: +3
- Gut für defensive Pokemon

### pbSpeedBossBattle
- Angriff, Spezial-Angriff: +1
- Geschwindigkeit: +3
- Gut für schnelle Angreifer

## Beispiel-Event

```ruby
# Event-Skript für einen Boss-Kampf
pbMessage("Ein mächtiges Dialga erscheint!")
pbStrongBossBattle
pbWildBattle(:DIALGA, 50)
```

## Wichtige Hinweise

- **Nur für Wild-Battles**: Die Boss-Aura funktioniert nur bei Wild-Pokemon-Kämpfen, nicht bei Trainer-Kämpfen
- **Nur Einzel-Kämpfe**: Funktioniert nur bei 1v1 Wild-Battles, nicht bei Doppel-Wild-Battles
- **Automatische Bereinigung**: Die Boss-Daten werden nach dem Kampf automatisch gelöscht

## Technische Details

### Dateien
- `001_Boss_Aura_Animation.rb` - AURAFLARE-Animation
- `002_Boss_Battle_Helper.rb` - Helper-Funktionen
- `003_Battle_Integration.rb` - Battle-System-Integration

### Grafiken
Alle benötigten Grafiken befinden sich in:
`Graphics/Battle animations/AURAFLARE/`

## Credits

Adaptiert von Elite Battle DX für Pokemon Essentials
