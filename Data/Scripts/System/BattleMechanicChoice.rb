#===============================================================================
# Battle Mechanic Choice System
#===============================================================================
# Allows the player to choose which battle mechanic they want to use.
# This affects which events, trainers, and features are available.
#===============================================================================

module BattleMechanicChoice
  # Mechanic modes
  MEGA_EVOLUTION    = 0
  DYNAMAX           = 1
  TERASTALLIZATION  = 2
  Z_MOVES           = 3
  
  #-----------------------------------------------------------------------------
  # Set the battle mechanic mode
  #-----------------------------------------------------------------------------
  def self.set_mechanic(mode)
    $game_variables[VAR::BATTLE_MECHANIC_MODE] = mode
    
    # Disable all mechanics first
    $game_switches[Settings::NO_MEGA_EVOLUTION] = true
    $game_switches[Settings::NO_DYNAMAX] = true
    $game_switches[Settings::NO_TERASTALLIZE] = true
    $game_switches[Settings::NO_ZMOVE] = true
    $game_switches[Settings::NO_ULTRA_BURST] = true
    
    # Clear all mechanic switches
    SW.off(SW::MECHANIC_MEGA_EVOLUTION)
    SW.off(SW::MECHANIC_DYNAMAX)
    SW.off(SW::MECHANIC_TERASTALLIZATION)
    SW.off(SW::MECHANIC_Z_MOVES)
    
    # Enable the chosen mechanic
    case mode
    when MEGA_EVOLUTION
      $game_switches[Settings::NO_MEGA_EVOLUTION] = false
      SW.set(SW::MECHANIC_MEGA_EVOLUTION, true)
      
    when DYNAMAX
      $game_switches[Settings::NO_DYNAMAX] = false
      SW.set(SW::MECHANIC_DYNAMAX, true)
      # Enable Dynamax on any map by default (optional)
      # $game_switches[Settings::DYNAMAX_ON_ANY_MAP] = true
      
    when TERASTALLIZATION
      $game_switches[Settings::NO_TERASTALLIZE] = false
      SW.set(SW::MECHANIC_TERASTALLIZATION, true)
      # Give player Tera Orb with infinite charge (optional)
      # $game_switches[Settings::TERA_ORB_ALWAYS_CHARGED] = true
      # $player.tera_charged = true
      
    when Z_MOVES
      $game_switches[Settings::NO_ZMOVE] = false
      $game_switches[Settings::NO_ULTRA_BURST] = false
      SW.set(SW::MECHANIC_Z_MOVES, true)
    end
    
    $game_map.need_refresh = true
  end
  
  #-----------------------------------------------------------------------------
  # Get the current battle mechanic mode
  #-----------------------------------------------------------------------------
  def self.current_mechanic
    $game_variables[VAR::BATTLE_MECHANIC_MODE] || MEGA_EVOLUTION
  end
  
  #-----------------------------------------------------------------------------
  # Check if a specific mechanic is active
  #-----------------------------------------------------------------------------
  def self.mega_evolution?
    current_mechanic == MEGA_EVOLUTION
  end
  
  def self.dynamax?
    current_mechanic == DYNAMAX
  end
  
  def self.terastallization?
    current_mechanic == TERASTALLIZATION
  end
  
  def self.z_moves?
    current_mechanic == Z_MOVES
  end
  
  #-----------------------------------------------------------------------------
  # Get mechanic name
  #-----------------------------------------------------------------------------
  def self.mechanic_name(mode = nil)
    mode ||= current_mechanic
    case mode
    when MEGA_EVOLUTION    then "Mega Evolution"
    when DYNAMAX           then "Dynamax"
    when TERASTALLIZATION  then "Terastallization"
    when Z_MOVES           then "Z-Moves"
    else "Unknown"
    end
  end
  
  #-----------------------------------------------------------------------------
  # Show selection screen
  #-----------------------------------------------------------------------------
  def self.show_selection
    commands = [
      "Mega Evolution",
      "Dynamax",
      "Terastallization",
      "Z-Moves"
    ]
    
    choice = pbMessage(
      "Which battle mechanic would you like to use on your journey?",
      commands,
      -1
    )
    
    return nil if choice < 0
    
    set_mechanic(choice)
    
    pbMessage("You chose #{mechanic_name(choice)}!")
    pbMessage("Your adventure will feature #{mechanic_name(choice)}-based content.")
    
    return choice
  end
end

#===============================================================================
# Cutscene for battle mechanic selection
#===============================================================================
GameData::Cutscene.define :choose_battle_mechanic do |scene, event_id: nil|
  scene.message "Before you begin your journey, there's an important choice to make."
  scene.message "The world of Pokémon has evolved with different battle mechanics."
  scene.message "Which one would you like to experience?"
  
  scene.script do
    BattleMechanicChoice.show_selection
  end
  
  scene.message "Excellent choice!"
  scene.message "Your journey will be tailored to this mechanic."
  
  scene.disable_event(event_id) if event_id
end
