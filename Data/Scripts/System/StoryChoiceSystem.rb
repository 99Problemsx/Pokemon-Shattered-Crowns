#===============================================================================
# Story Choice System
#===============================================================================
# Allows players to make decisions that impact the story.
# Choices are stored in a Game Variable (as a Hash) if the mode is enabled.
#===============================================================================

module StoryChoices
  # Variable ID to store the choices hash
  # Ensure this Variable ID is reserved in 008_SwitchesVariables.rb
  CHOICES_VAR_ID = 32
  
  # Switch ID to enable/disable the mode
  # Ensure this Switch ID is reserved in 008_SwitchesVariables.rb
  MODE_SWITCH_ID = 149

  #-----------------------------------------------------------------------------
  # Check if Story Choice Mode is enabled
  #-----------------------------------------------------------------------------
  def self.enabled?
    return $game_switches && $game_switches[MODE_SWITCH_ID]
  end

  #-----------------------------------------------------------------------------
  # Enable or Disable the mode
  #-----------------------------------------------------------------------------
  def self.set_mode(enabled)
    $game_switches[MODE_SWITCH_ID] = enabled
    # Initialize the storage if enabling
    if enabled
      $game_variables[CHOICES_VAR_ID] ||= {}
    end
  end

  #-----------------------------------------------------------------------------
  # Make a decision
  # decision_id: Symbol representing the decision (e.g., :ch1_save_village)
  # options: Array of strings for the choices
  # Returns: The index of the chosen option (0, 1, etc.)
  #-----------------------------------------------------------------------------
  def self.make_decision(decision_id, options)
    # If mode is disabled, always return default (0)
    unless enabled?
      return 0 
    end

    # Present choice
    choice = pbMessage("Make your choice:", options)
    
    # Store result
    $game_variables[CHOICES_VAR_ID] ||= {}
    $game_variables[CHOICES_VAR_ID][decision_id] = choice
    
    return choice
  end

  #-----------------------------------------------------------------------------
  # Get a past decision
  # Returns: The index of the choice, or nil if not made
  #-----------------------------------------------------------------------------
  def self.decision(decision_id)
    return 0 unless enabled?
    return nil unless $game_variables[CHOICES_VAR_ID]
    
    return $game_variables[CHOICES_VAR_ID][decision_id] || 0
  end

  #-----------------------------------------------------------------------------
  # Check if a specific choice was made
  #-----------------------------------------------------------------------------
  def self.has_chosen?(decision_id, value_index)
    return decision(decision_id) == value_index
  end
end
