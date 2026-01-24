#===============================================================================
# BOSS AURA - QUICK REFERENCE
#===============================================================================
# Schnelle Referenz für die Verwendung der Boss Aura Funktion
#===============================================================================

#===============================================================================
# EINFACHE VERWENDUNG
#===============================================================================

# 1. Standard Boss (alle Stats +1)
# pbStandardBossBattle
# pbWildBattle(:LUCARIO, 30)

# 2. Starker Boss (die meisten Stats +2)
# pbStrongBossBattle
# pbWildBattle(:DIALGA, 50)

# 3. Legendärer Boss (alle Stats +2)
# pbLegendaryBossBattle
# pbWildBattle(:RAYQUAZA, 70)

#===============================================================================
# SPEZIELLE BOSS-TYPEN
#===============================================================================

# Physischer Boss (Angriff/Verteidigung +2, Geschwindigkeit +1)
# pbPhysicalBossBattle
# pbWildBattle(:MACHAMP, 60)

# Spezieller Boss (Spezial-Angriff/Verteidigung +2, Geschwindigkeit +1)
# pbSpecialBossBattle
# pbWildBattle(:ALAKAZAM, 60)

# Tank Boss (Verteidigung/Spezial-Verteidigung +3)
# pbTankBossBattle
# pbWildBattle(:SNORLAX, 65)

# Speed Boss (Angriff/Spezial-Angriff +1, Geschwindigkeit +3)
# pbSpeedBossBattle
# pbWildBattle(:JOLTEON, 55)

#===============================================================================
# EIGENE KONFIGURATION
#===============================================================================

# Eigene Stat-Boosts definieren
# pbSetupBossBattle(
#   :ATTACK => 2,           # Angriff +2
#   :DEFENSE => 1,          # Verteidigung +1
#   :SPECIAL_ATTACK => 2,   # Spezial-Angriff +2
#   :SPECIAL_DEFENSE => 1,  # Spezial-Verteidigung +1
#   :SPEED => 1             # Geschwindigkeit +1
# )
# pbWildBattle(:MEWTWO, 70)

# Nur einen Stat boosten
# pbSetupBossBattle(:SPEED => 3)
# pbWildBattle(:NINJASK, 50)

# Nur zwei Stats boosten
# pbSetupBossBattle(:ATTACK => 3, :SPEED => 2)
# pbWildBattle(:ZOROARK, 40)

#===============================================================================
# VERFÜGBARE STATS
#===============================================================================
# :ATTACK           - Angriff
# :DEFENSE          - Verteidigung
# :SPECIAL_ATTACK   - Spezial-Angriff
# :SPECIAL_DEFENSE  - Spezial-Verteidigung
# :SPEED            - Geschwindigkeit
# :ACCURACY         - Genauigkeit (selten verwendet)
# :EVASION          - Ausweichwert (selten verwendet)

#===============================================================================
# STAT-STUFEN ERKLÄRUNG
#===============================================================================
# +1 = 50% Erhöhung (1.5x)
# +2 = 100% Erhöhung (2.0x)
# +3 = 150% Erhöhung (2.5x)
# +4 = 200% Erhöhung (3.0x)
# +5 = 250% Erhöhung (3.5x)
# +6 = 300% Erhöhung (4.0x) [Maximum]

#===============================================================================
# BEISPIEL-EVENTS
#===============================================================================

# Beispiel 1: Story-Boss
def story_boss_kael_zorua
  pbMessage("Kael's Zorua tritt hervor!")
  pbMessage("Seine Aura lodert bedrohlich!")
  pbSetupBossBattle(:ATTACK => 2, :SPEED => 2)
  WildBattle.start(:ZORUA, 25)
end

# Beispiel 2: Legendäres Pokemon
def legendary_dialga_encounter
  pbMessage("Der Herrscher der Zeit erscheint!")
  pbLegendaryBossBattle
  WildBattle.start(:DIALGA, 70)
end

# Beispiel 3: Optionaler schwieriger Boss
def optional_boss_mewtwo
  pbMessage("Ein mächtiges Pokemon wartet...")
  if pbConfirmMessage("Möchtest du kämpfen?")
    pbStrongBossBattle
    WildBattle.start(:MEWTWO, 75)
  end
end

# Beispiel 4: Schwierigkeitsbasierter Boss
def difficulty_scaled_boss
  if $game_variables[DIFFICULTY_VAR] == 2  # Hard Mode
    pbLegendaryBossBattle
  elsif $game_variables[DIFFICULTY_VAR] == 1  # Normal Mode
    pbStrongBossBattle
  else  # Easy Mode
    pbStandardBossBattle
  end
  WildBattle.start(:RAYQUAZA, 70)
end

#===============================================================================
# WICHTIGE HINWEISE
#===============================================================================
# 
# ✓ Funktioniert NUR bei Wild Pokemon Battles
# ✓ Funktioniert NUR bei Single Battles (1v1)
# ✗ Funktioniert NICHT bei Trainer Battles
# ✗ Funktioniert NICHT bei Doppel-Wild-Battles
# 
# Die Boss-Daten werden automatisch nach dem Kampf gelöscht.
# Du musst pbSetupBossBattle vor JEDEM Boss-Kampf aufrufen.
#
#===============================================================================

#===============================================================================
# TESTING
#===============================================================================

# Test-Menü öffnen (für Debugging)
# pbBossAuraTestMenu

# Einzelne Tests
# pbTestBossAura1  # Standard Boss
# pbTestBossAura2  # Strong Boss
# pbTestBossAura3  # Custom Boss
# pbTestBossAura4  # Legendary Boss
# pbTestBossAura5  # Tank Boss
# pbTestBossAura6  # Speed Boss

#===============================================================================
