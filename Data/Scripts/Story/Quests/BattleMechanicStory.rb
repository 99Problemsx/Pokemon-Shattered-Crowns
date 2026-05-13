#===============================================================================
# Battle Mechanic Story Integration
#===============================================================================
# Handles giving the player their mechanic-specific items at story points.
# Adapts based on which mechanic the player chose at the start.
#===============================================================================

module BattleMechanicStory
  #-----------------------------------------------------------------------------
  # Give the player their mechanic item (Mega Ring, Dynamax Band, etc.)
  # Call this at a key story point (e.g., Chapter 12)
  # silent: If true, suppresses the message boxes (for custom story dialogue)
  #-----------------------------------------------------------------------------
  def self.give_mechanic_item(silent: false)
    case BattleMechanicChoice.current_mechanic
    when BattleMechanicChoice::MEGA_EVOLUTION
      give_mega_ring(silent: silent)
      
    when BattleMechanicChoice::DYNAMAX
      give_dynamax_band(silent: silent)
      
    when BattleMechanicChoice::TERASTALLIZATION
      give_tera_orb(silent: silent)
      
    when BattleMechanicChoice::Z_MOVES
      give_z_power_ring(silent: silent)
    end
  end
  
  #-----------------------------------------------------------------------------
  # Mega Evolution - Give Mega Ring
  #-----------------------------------------------------------------------------
  def self.give_mega_ring(silent: false)
    return if $player.has_key_item?(:MEGARING)
    
    $player.add_key_item(:MEGARING)
    
    unless silent
      pbMessage("\\se[Fanfare2]You received the \\c[1]Mega Ring\\c[0]!")
      pbMessage("You can now use Mega Evolution in battle!")
      pbMessage("Look for Mega Stones to Mega Evolve your Pokémon!")
    end
    
    # Optional: Give a starter Mega Stone
    pbReceiveItem(:LUCARIONITE)
    unless silent
      pbMessage("You also received \\c[1]Lucarionite\\c[0]!")
    end
  end
  
  #-----------------------------------------------------------------------------
  # Dynamax - Give Dynamax Band
  #-----------------------------------------------------------------------------
  def self.give_dynamax_band(silent: false)
    return if $player.has_key_item?(:DYNAMAXBAND)
    
    $player.add_key_item(:DYNAMAXBAND)
    
    unless silent
      pbMessage("\\se[Fanfare2]You received the \\c[1]Dynamax Band\\c[0]!")
      pbMessage("You can now Dynamax your Pokémon in Power Spots!")
      pbMessage("Look for Dynamax Dens to catch Gigantamax Pokémon!")
    end
    
    # Enable Dynamax in wild battles (optional)
    $game_switches[Settings::DYNAMAX_IN_WILD_BATTLES] = true
  end
  
  #-----------------------------------------------------------------------------
  # Terastallization - Give Tera Orb
  #-----------------------------------------------------------------------------
  def self.give_tera_orb(silent: false)
    return if $player.has_key_item?(:TERAORB)
    
    $player.add_key_item(:TERAORB)
    $player.tera_charged = true
    
    unless silent
      pbMessage("\\se[Fanfare2]You received the \\c[1]Tera Orb\\c[0]!")
      pbMessage("You can now Terastallize your Pokémon in battle!")
      pbMessage("Collect Tera Shards to change your Pokémon's Tera Type!")
    end
    
    # Optional: Give some Tera Shards to start
    pbReceiveItem(:TERASHARDFIGHTING, 10)
    unless silent
      pbMessage("You also received some \\c[1]Tera Shards\\c[0]!")
    end
  end
  
  #-----------------------------------------------------------------------------
  # Z-Moves - Give Z-Power Ring
  #-----------------------------------------------------------------------------
  def self.give_z_power_ring(silent: false)
    return if $player.has_key_item?(:ZPOWERRING)
    
    $player.add_key_item(:ZPOWERRING)
    
    unless silent
      pbMessage("\\se[Fanfare2]You received the \\c[1]Z-Power Ring\\c[0]!")
      pbMessage("You can now use Z-Moves in battle!")
      pbMessage("Collect Z-Crystals to unlock powerful Z-Moves!")
    end
    
    # Optional: Give a starter Z-Crystal
    pbReceiveItem(:NORMALIUMZ)
    unless silent
      pbMessage("You also received \\c[1]Normalium Z\\c[0]!")
    end
  end
  
  #-----------------------------------------------------------------------------
  # Give first Mega Stone (for Mega Evolution mode)
  # Call this when player gets their first compatible Pokémon
  #-----------------------------------------------------------------------------
  def self.give_first_mega_stone(pokemon_species)
    return unless BattleMechanicChoice.mega_evolution?
    
    mega_stone = case pokemon_species
    when :CHARIZARD then :CHARIZARDITEX
    when :BLASTOISE then :BLASTOISINITE
    when :VENUSAUR then :VENUSAURITE
    when :LUCARIO then :LUCARIONITE
    when :GARCHOMP then :GARCHOMPITE
    # Add more as needed
    else nil
    end
    
    if mega_stone
      pbMessage("You found a \\c[1]#{GameData::Item.get(mega_stone).name}\\c[0]!")
      pbReceiveItem(mega_stone)
    end
  end
  
  #-----------------------------------------------------------------------------
  # Check if player should receive their mechanic item
  # Based on story progression or gym badges
  #-----------------------------------------------------------------------------
  def self.should_give_mechanic_item?
    # Give after 3rd gym badge
    badge_count = 0
    (SW::BADGE_1..SW::BADGE_8).each { |sw| badge_count += 1 if SW.on?(sw) }
    
    return badge_count >= 3
  end
end

#===============================================================================
# Cutscene for receiving mechanic item
#===============================================================================

GameData::Cutscene.define :receive_mechanic_item do |scene, event_id: nil|
  scene.message "You've proven yourself as a skilled trainer."
  scene.message "I think you're ready for this..."
  
  scene.script do
    BattleMechanicStory.give_mechanic_item
  end
  
  scene.message "Use it wisely on your journey!"
  
  scene.disable_event(event_id) if event_id
end

#===============================================================================
# Event Handler - Auto-give at story milestone
#===============================================================================

EventHandlers.add(:on_trainer_win, :check_mechanic_item,
  proc { |trainer, battle|
    # Check if this was a gym leader battle
    next unless trainer.trainer_type == :LEADER
    
    # Check if player should receive item
    next unless BattleMechanicStory.should_give_mechanic_item?
    
    # Check if player already has their item
    case BattleMechanicChoice.current_mechanic
    when BattleMechanicChoice::MEGA_EVOLUTION
      next if $player.has_key_item?(:MEGARING)
    when BattleMechanicChoice::DYNAMAX
      next if $player.has_key_item?(:DYNAMAXBAND)
    when BattleMechanicChoice::TERASTALLIZATION
      next if $player.has_key_item?(:TERAORB)
    when BattleMechanicChoice::Z_MOVES
      next if $player.has_key_item?(:ZPOWERRING)
    end
    
    # Give the item after battle
    pbWait(20)
    pbMessage("The Gym Leader approaches you...")
    BattleMechanicStory.give_mechanic_item
  }
)
