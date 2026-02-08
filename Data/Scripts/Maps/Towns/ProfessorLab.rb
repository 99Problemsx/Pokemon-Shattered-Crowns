#===============================================================================
# Professor's Lab (Map 35)
#===============================================================================
# Map ID: 035
# Where the player meets Professor Aldric, chooses a starter, and meets the rival.
#===============================================================================

#===============================================================================
# MAP ENTRY - MEET PROFESSOR & RIVAL
#===============================================================================
EventHandlers.add(:on_frame_update, :lab_intro_event,
  proc {
    next if !$game_map || $game_map.map_id != 35
    next if $game_switches[SW::LAB_INTRO_PLAYED]
    
    # Trigger when walking up to the professor (assuming coordinates)
    # Ideally this would be an event on the map, but we can force it here
    next if $game_player.y > 6 # Adjust based on map layout
    
    $game_switches[SW::LAB_INTRO_PLAYED] = true
    
    # Play Professor's Theme
    pbBGMPlay('Pokemon DPPT - Professor Rowan')
    
    # Story cutscene defined in Main_Story.rb
    GameData::Cutscene.play(:ch1_get_starter)
    
    # Starter Selection Logic ...
    pbMessage("The three Pokémon look up at you expectantly.")
    
    loop do
      choice = pbShowCommands(nil, ["Sprigatito (Grass)", "Fuecoco (Fire)", "Quaxly (Water)"], -1)
      
      case choice
      when 0 # Sprigatito
        if pbConfirmMessage("Do you want the Grass-type Pokémon, Sprigatito?")
          pbAddPokemon(:SPRIGATITO, 5)
          pbMessage("You chose Sprigatito!")
          break
        end
      when 1 # Fuecoco
        if pbConfirmMessage("Do you want the Fire-type Pokémon, Fuecoco?")
          pbAddPokemon(:FUECOCO, 5)
          pbMessage("You chose Fuecoco!")
          break
        end
      when 2 # Quaxly
        if pbConfirmMessage("Do you want the Water-type Pokémon, Quaxly?")
          pbAddPokemon(:QUAXLY, 5)
          pbMessage("You chose Quaxly!")
          break
        end
      else
        pbMessage("Choose a partner to begin your journey!")
      end
    end
    
    $game_variables[VAR::STORY_PROGRESSION] = 2 # Got Starter
    
    # Rival Interrupt (Ragnar is the rival, not Kael - Kael is one of the three Chosen)
    pbMessage("Suddenly, the door bursts open!")
    pbMessage("\\bRagnar\\b: YO! Wait for me!")
    
    # Ragnar dialogue
    pbMessage("\\bProfessor Aldric\\b: Ah, Ragnar. Late as usual.")
    pbMessage("\\bRagnar\\b: *panting* You weren't gonna leave without me, right \\PN?")
    
    $game_switches[SW::GOT_STARTER] = true
  }
)
