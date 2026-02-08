#===============================================================================
# Player's House (Map 34)
#===============================================================================
# Map ID: 034
# The player's home where they wake up after the intro.
#===============================================================================

#===============================================================================
# MAP ENTRY - WAKE UP SEQUENCE (First time entering from intro)
#===============================================================================

EventHandlers.add(:on_map_or_spriteset_change, :players_house_wakeup,
  proc {
    next if !$game_map || !$scene.is_a?(Scene_Map)
    next if $game_map.map_id != 34  # Only map 34 (Player's House)
    
    # Check if coming from intro and haven't played wake up scene yet
    if $game_switches[SW::INTRO_PLAYED] && !$game_switches[SW::WAKE_UP_EVENT_PLAYED]
      pbWait(20) # Short wait for map to load
      
      # WAKE UP TRANSITION
      pbMessage("<c2>--- DAWNHAVEN VILLAGE ---</c2>\n<c2>YOUR HOME</c2>")
      pbMessage("You wake with a start.")
      pbMessage("Sunlight streams through your window.")
      pbMessage("A strange dream... golden light, broken pieces...")
      
      pbMessage("You shake your head.")
      pbMessage("Just a dream. Nothing more.")
      
      pbMessage("\\bMom\\b: \\PN! Time to wake up!")
      pbMessage("\\bMom\\b: Professor Aldric is waiting for you at the lab!")
      pbMessage("\\bMom\\b: Today's the day you get your first Pokémon!")
      
      pbMessage("You stretch and look around your room.")
      pbMessage("Today is the day.")
      pbMessage("Your adventure begins!")
      
      # Set switch to prevent replaying
      $game_switches[SW::WAKE_UP_EVENT_PLAYED] = true
      $game_switches[SW::ARRIVED_DAWNHAVEN] = true # Mark arrival
    end
  }
)

#===============================================================================
# MAP 33 - PLAYER'S HOUSE 1F (Downstairs)
#===============================================================================

EventHandlers.add(:on_frame_update, :players_house_mom_event,
  proc {
    next if !$game_map || $game_map.map_id != 33
    next if $game_switches[SW::MOM_TALKED_START]
    
    # Auto-run event when stepping off stairs or entering room?
    # For now, let's assume we trigger it when the player moves or after a short wait
    next if $game_player.moving?
    
    $game_switches[SW::MOM_TALKED_START] = true
    
    pbMessage("\\bMom\\b: Oh, good morning, \\PN!")
    pbMessage("\\bMom\\b: You slept in a bit late today. Nervous about the big day?")
    pbMessage("\\bMom\\b: Professor Aldric stopped by earlier. He's waiting at the Lab.")
    
    pbMessage("\\bMom\\b: Oh! Before you go!")
    pbMessage("Mom gives you the \\bRunning Shoes\\b!")
    $game_switches[35] = true # standard Running Shoes switch
    pbMessage("You can now hold B to run!")
    
    pbMessage("Mom gives you the \\bTown Map\\b!")
    $PokemonBag.pbStoreItem(:TOWNMAP)
    
    pbMessage("\\bMom\\b: Good luck, \\PN! Come back and show me your Pokémon later!")
    
    $game_variables[VAR::STORY_PROGRESSION] = 1 # Ready for Lab
  }
)
