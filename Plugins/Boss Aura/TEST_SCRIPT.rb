#===============================================================================
# Boss Aura - Test Script
# Place this in an event to test the boss aura feature
#===============================================================================

# Test 1: Standard Boss Battle
def pbTestBossAura1
  pbMessage("\\PN encounters a powerful Pokémon!")
  pbMessage("Its aura is radiating with energy!")
  pbStandardBossBattle
  WildBattle.start(:LUCARIO, 30)
end

# Test 2: Strong Boss Battle
def pbTestBossAura2
  pbMessage("A legendary Pokémon appears!")
  pbMessage("You can feel its overwhelming power!")
  pbStrongBossBattle
  WildBattle.start(:DIALGA, 50)
end

# Test 3: Custom Boss Battle
def pbTestBossAura3
  pbMessage("A mysterious Pokémon blocks your path!")
  pbMessage("It seems to be protecting something...")
  pbSetupBossBattle(
    :ATTACK => 3,
    :SPEED => 2
  )
  WildBattle.start(:ZOROARK, 40)
end

# Test 4: Legendary Boss Battle
def pbTestBossAura4
  pbMessage("The ruler of time itself appears!")
  pbMessage("Dialga's presence distorts the air around you!")
  pbLegendaryBossBattle
  WildBattle.start(:DIALGA, 70)
end

# Test 5: Tank Boss Battle
def pbTestBossAura5
  pbMessage("An immovable force stands before you!")
  pbTankBossBattle
  WildBattle.start(:SNORLAX, 50)
end

# Test 6: Speed Boss Battle
def pbTestBossAura6
  pbMessage("A lightning-fast Pokémon appears!")
  pbSpeedBossBattle
  WildBattle.start(:JOLTEON, 45)
end

#===============================================================================
# Quick test menu (for debugging)
#===============================================================================
def pbBossAuraTestMenu
  commands = [
    "Standard Boss (Lucario Lv30)",
    "Strong Boss (Dialga Lv50)",
    "Custom Boss (Zoroark Lv40)",
    "Legendary Boss (Dialga Lv70)",
    "Tank Boss (Snorlax Lv50)",
    "Speed Boss (Jolteon Lv45)",
    "Cancel"
  ]
  
  choice = pbMessage("Boss Aura Test Menu", commands, -1)
  
  case choice
  when 0
    pbTestBossAura1
  when 1
    pbTestBossAura2
  when 2
    pbTestBossAura3
  when 3
    pbTestBossAura4
  when 4
    pbTestBossAura5
  when 5
    pbTestBossAura6
  end
end

#===============================================================================
# Event Script Examples
#===============================================================================

# Example 1: Simple boss encounter
# Just call before pbWildBattle:
#   pbStandardBossBattle
#   pbWildBattle(:LUCARIO, 30)

# Example 2: Story boss with custom stats
#   pbMessage("Kael's Zorua appears, its aura blazing!")
#   pbSetupBossBattle(:ATTACK => 2, :SPEED => 2)
#   pbWildBattle(:ZORUA, 25)

# Example 3: Legendary encounter
#   pbMessage("The legendary Pokémon awakens!")
#   pbLegendaryBossBattle
#   pbWildBattle(:RAYQUAZA, 70)

# Example 4: Conditional boss based on difficulty
#   if $game_variables[DIFFICULTY_VAR] >= 2
#     pbStrongBossBattle
#   else
#     pbStandardBossBattle
#   end
#   pbWildBattle(:MEWTWO, 70)
