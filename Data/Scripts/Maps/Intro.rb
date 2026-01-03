#===============================================================================
# INTRO MAP - Game Introduction and Settings
#===============================================================================
# Map ID: 001
# This is the intro/settings map before the game truly begins.
# Order: Settings → Gender → Name → Story Prologue → Transfer to Dawnhaven
#===============================================================================

#===============================================================================
# INTRO MAP ENTRY - Using frame update with counter for delayed start
#===============================================================================

# Global counter to track frames on intro map
$intro_frame_counter = 0

EventHandlers.add(:on_frame_update, :intro_map_check,
  proc {
    next if !$scene.is_a?(Scene_Map)
    next if !$game_map || $game_map.map_id != 1
    next if $game_switches[SW::INTRO_PLAYED]
    
    # Count frames - wait 60 frames (1 second) for scene to be fully ready
    $intro_frame_counter += 1
    next if $intro_frame_counter < 60
    
    # Set switch immediately to prevent re-triggering
    $game_switches[SW::INTRO_PLAYED] = true
    $intro_frame_counter = 0
    
    # Run the intro
    run_full_intro_sequence
  }
)

EventHandlers.add(:on_frame_update, :intro_sprite_anim_update,
  proc {
    next if !$intro_animating
    update_intro_sprite_frame
  }
)

#===============================================================================
# FULL INTRO SEQUENCE - Runs all parts in order
#===============================================================================

def run_full_intro_sequence
  # ENSURE SCREEN IS VISIBLE AND SCENE IS READY
  $game_screen.start_tone_change(Tone.new(0, 0, 0, 0), 0)  # Reset screen tone
  
  # Wait for scene to be fully initialized
  20.times do
    Graphics.update
    Input.update
    $scene.update if $scene
  end
  
  # PART 1: GAME SETTINGS
  run_game_settings

  
  # PART 2: GENDER AND NAME
  run_character_creation
  
  # PART 3: STORY PROLOGUE
  run_story_prologue
  
  # PART 4: SET SWITCH AND TRANSFER
  $game_switches[SW::INTRO_PLAYED] = true
  $game_switches[SW::FIRST_DREAM] = true
  
  # Transfer to Player's House (Map 34)
  pbFadeOutIn {
    # Reset player transparency so they are visible on new map
    $game_player.transparent = false
    
    $game_temp.player_new_map_id = 34
    $game_temp.player_new_x = 7   # Standard bed position guess (adjust if needed)
    $game_temp.player_new_y = 6
    $game_temp.player_new_direction = 8  # Up (facing bed usually) or 2 (Down)
    $scene.transfer_player if $scene.is_a?(Scene_Map)
  }
end

#===============================================================================
# PART 1: GAME SETTINGS
#===============================================================================

def run_game_settings
  # Just play BGM, no fade (screen is already visible)
  pbBGMPlay('Pokemon XY - Professor Theme')
  
  pbMessage("<c2>--- POKÉMON SHATTERED CROWNS ---</c2>")

  pbMessage("Before your adventure begins...")
  pbMessage("Let's configure some game settings.")
  
  #-----------------------------------------------------------------------------
  # DIFFICULTY MODE - Using SelectionBox UI
  #-----------------------------------------------------------------------------
  choice = pbSelectBox("Select the difficulty mode.", [
    { title: "EASY MODE",   desc: "Standard Pokémon experience", color: :green },
    { title: "NORMAL MODE", desc: "Trainers use smarter tactics", color: :blue },
    { title: "HARD MODE",   desc: "Full Advanced AI challenge", color: :red },
    { title: "NUZLOCKE",    desc: "Challenge mode with custom rules", color: :orange }
  ])
  
  case choice
  when 0  # Easy
    $game_variables[VAR::DIFFICULTY_MODE] = 0
    $game_variables[AdvancedAI::AI_MODE_VARIABLE] = 1  # Beginner AI
    pbMessage("Easy mode selected!")
  when 1  # Normal
    $game_variables[VAR::DIFFICULTY_MODE] = 1
    $game_variables[AdvancedAI::AI_MODE_VARIABLE] = 2  # Mid AI
    AdvancedAI.activate!
    pbMessage("Normal mode selected!")
  when 2  # Hard
    $game_variables[VAR::DIFFICULTY_MODE] = 2
    $game_variables[AdvancedAI::AI_MODE_VARIABLE] = 3  # Pro AI
    AdvancedAI.activate!
    pbMessage("Hard mode selected!")
  when 3  # Nuzlocke
    $game_variables[VAR::DIFFICULTY_MODE] = 3
    $game_variables[AdvancedAI::AI_MODE_VARIABLE] = 3  # Pro AI
    AdvancedAI.activate!
    pbMessage("Opening Challenge Mode options...")
    ChallengeModes.start
  end
  
  #-----------------------------------------------------------------------------
  # LEVEL CAPS - Using SelectionBox UI
  #-----------------------------------------------------------------------------
  choice = pbSelectBox("Select level cap mode.", [
    { title: "NO CAPS",  desc: "Train freely to any level", color: :green },
    { title: "SOFT CAP", desc: "Reduced EXP above cap", color: :blue },
    { title: "HARD CAP", desc: "No EXP gain above cap", color: :red }
  ])
  
  case choice
  when 0  # No Caps
    $game_variables[LevelCapsEX::LEVEL_CAP_MODE_VARIABLE] = 0
    $game_variables[LevelCapsEX::LEVEL_CAP_VARIABLE] = 100
    pbMessage("Level caps disabled!")
  when 1  # Soft Cap
    $game_variables[LevelCapsEX::LEVEL_CAP_MODE_VARIABLE] = 2
    $game_variables[LevelCapsEX::LEVEL_CAP_VARIABLE] = 15
    pbMessage("Soft level caps enabled!")
  when 2  # Hard Cap
    $game_variables[LevelCapsEX::LEVEL_CAP_MODE_VARIABLE] = 1
    $game_variables[LevelCapsEX::LEVEL_CAP_VARIABLE] = 15
    pbMessage("Hard level caps enabled!")
  end
  
  #-----------------------------------------------------------------------------
  # EXP SHARE - Using SelectionBox UI
  #-----------------------------------------------------------------------------
  choice = pbSelectBox("Select EXP Share mode.", [
    { title: "FULL PARTY", desc: "All Pokémon gain EXP", color: :green },
    { title: "CLASSIC",    desc: "Only battlers gain EXP", color: :blue }
  ])
  
  if choice == 0
    $game_switches[SW::EXP_SHARE_ALL] = true
    pbMessage("Full party EXP enabled!")
  else
    $game_switches[SW::EXP_SHARE_ALL] = false
    pbMessage("Classic EXP mode enabled!")
  end
  
  #-----------------------------------------------------------------------------
  # OPTIONAL CHALLENGES
  #-----------------------------------------------------------------------------
  pbMessage("<c2>--- OPTIONAL CHALLENGES ---</c2>")
  pbMessage("Would you like to enable any extra challenges?")
  
  # Set Mode
  if pbConfirmMessage("Enable SET battle mode? (No switch after KO)")
    $game_switches[SW::SET_MODE] = true
    pbMessage("SET mode enabled.")
  end
  
  # Item restrictions
  if pbConfirmMessage("Restrict items in battle? (No healing items)")
    $game_switches[SW::NO_BATTLE_ITEMS] = true
    pbMessage("Battle item restrictions enabled.")
  end
  
  pbMessage("<c2>--- SETTINGS SAVED ---</c2>")
  pbMessage("You can change these later in the Options menu.")
end

#===============================================================================
# CUSTOM DIFFICULTY MENU
#===============================================================================

def run_custom_difficulty
  pbMessage("<c2>--- CUSTOM DIFFICULTY ---</c2>")
  pbMessage("Configure your personalized challenge:")
  
  loop do
    choice = pbMessage("Select option to toggle:", [
      "#{$game_switches[SW::NUZLOCKE_MODE] ? '✓' : '○'} Nuzlocke Rules",
      "#{$game_switches[SW::SET_MODE] ? '✓' : '○'} SET Battle Mode",
      "#{$game_switches[SW::NO_BATTLE_ITEMS] ? '✓' : '○'} No Battle Items",
      "#{$game_switches[SW::RANDOMIZER_MODE] ? '✓' : '○'} Randomizer",
      "Level Cap: #{['None', 'Gym', 'Strict'][$game_variables[VAR::LEVEL_CAP_MODE] || 0]}",
      "Done - Save Settings"
    ])
    
    case choice
    when 0
      $game_switches[SW::NUZLOCKE_MODE] = !$game_switches[SW::NUZLOCKE_MODE]
    when 1
      $game_switches[SW::SET_MODE] = !$game_switches[SW::SET_MODE]
    when 2
      $game_switches[SW::NO_BATTLE_ITEMS] = !$game_switches[SW::NO_BATTLE_ITEMS]
    when 3
      $game_switches[SW::RANDOMIZER_MODE] = !$game_switches[SW::RANDOMIZER_MODE]
    when 4
      cap = ($game_variables[VAR::LEVEL_CAP_MODE] || 0) + 1
      cap = 0 if cap > 2
      $game_variables[VAR::LEVEL_CAP_MODE] = cap
    when 5
      break
    end
  end
  
  pbMessage("Custom difficulty saved!")
end

#===============================================================================
# PART 2: CHARACTER CREATION (Gender + Name)
#===============================================================================

def run_character_creation
  pbFadeOutIn { }
  
  #-----------------------------------------------------------------------------
  # GENDER SELECTION - Using SelectionBox UI
  #-----------------------------------------------------------------------------
  choice = pbSelectBox("Are you a boy or a girl?", [
    { title: "BOY",  desc: "Male trainer", color: :blue },
    { title: "GIRL", desc: "Female trainer", color: :purple }
  ])
  
  if choice == 0
    pbChangePlayer(1)  # Boy = Player [1] in metadata.txt
    pbMessage("Ah, a young man ready for adventure!")
  else
    pbChangePlayer(2)  # Girl = Player [2] in metadata.txt  
    pbMessage("Ah, a young woman ready for adventure!")
  end
  
  #-----------------------------------------------------------------------------
  # NAME ENTRY
  #-----------------------------------------------------------------------------
  pbMessage("And what is your name?")
  
  pbTrainerName
  
  pbMessage("\\PN... What a wonderful name!")
  pbMessage("Your legend is about to begin...")
end

#===============================================================================
# PART 3: STORY PROLOGUE
#===============================================================================

# Helper function to show an animated character sprite (like overworld events)
def show_intro_sprite(sprite_name, position = :center)
  # Hide player sprite during intro using standard transparency
  $game_player.transparent = true if $game_player
  
  # Load the sprite from Characters folder first
  path = "Graphics/Characters/#{sprite_name}"
  resolved = pbResolveBitmap(path)
  if !resolved
    # Try Followers subfolder as fallback
    path = "Graphics/Characters/Followers/#{sprite_name}"
    resolved = pbResolveBitmap(path)
  end
  
  return unless resolved
  
  # Store the full spritesheet for animation
  $intro_full_bitmap = AnimatedBitmap.new(resolved).bitmap
  
  # Character spritesheets are typically 4 columns x 4 rows
  $intro_frame_width = $intro_full_bitmap.width / 4
  $intro_frame_height = $intro_full_bitmap.height / 4
  $intro_current_frame = 0
  
  # Create sprite if it doesn't exist
  $intro_sprite ||= Sprite.new
  $intro_sprite.z = 99999
  $intro_sprite.bitmap = Bitmap.new($intro_frame_width, $intro_frame_height)
  
  # Position the sprite
  case position
  when :center
    $intro_sprite.x = (Graphics.width - $intro_frame_width) / 2
    $intro_sprite.y = 60
  when :left
    $intro_sprite.x = 80
    $intro_sprite.y = 80
  when :right
    $intro_sprite.x = Graphics.width - $intro_frame_width - 80
    $intro_sprite.y = 80
  end
  
  # Draw first frame
  update_intro_sprite_frame
  $intro_sprite.visible = true
  
  # Start animation thread
  $intro_animating = true
end

# Update sprite animation frame
def update_intro_sprite_frame
  return unless $intro_sprite && $intro_full_bitmap
  
  # Update timer
  $intro_anim_timer ||= 0
  $intro_anim_timer += 1
  
  # Change frame every 8 frames (adjust for speed)
  return if $intro_anim_timer < 8
  $intro_anim_timer = 0
  
  # Clear current bitmap
  $intro_sprite.bitmap.clear
  
  # Animation pattern: 0, 1, 2, 1 (step animation like events)
  patterns = [0, 1, 2, 1]
  frame = patterns[$intro_current_frame % 4]
  
  # Copy the current animation frame (row 0 = facing down)
  src_x = frame * $intro_frame_width
  src_rect = Rect.new(src_x, 0, $intro_frame_width, $intro_frame_height)
  $intro_sprite.bitmap.blt(0, 0, $intro_full_bitmap, src_rect)
  
  $intro_current_frame += 1
end

def hide_intro_sprite
  $intro_animating = false
  if $intro_sprite
    $intro_sprite.visible = false
  end
end

def dispose_intro_sprite
  if $intro_sprite
    $intro_sprite.dispose
    $intro_sprite = nil
  end
end

def run_story_prologue
  pbFadeOutIn { }
  pbBGMPlay('Pokemon RSE - Sealed Chamber')
  
  # THE DIVINE RECKONING
  pbMessage("<c2>--- FIFTY YEARS AGO ---</c2>\n<c2>THE DIVINE RECKONING</c2>")
  pbMessage("The world nearly ended.")
  pbMessage("Five Ancient Evils awoke from their eternal slumber.")
  
  pbSEPlay("Battle ball shake")
  
  # Show each evil legendary
  show_intro_sprite("FENRIS")
  pbMessage("Fenris, the World-Devourer.")
  
  show_intro_sprite("SURTR")
  pbMessage("Surtr, the Flame Giant.")
  
  show_intro_sprite("JORMUNGANDR")
  pbMessage("Jormungandr, the World Serpent.")
  
  show_intro_sprite("HEL")
  pbMessage("Hel, Queen of the Underworld.")
  
  show_intro_sprite("NIDHOGGR")
  pbMessage("And Nidhoggr... the Dragon of Darkness itself.")
  
  hide_intro_sprite
  pbMessage("They sought to unmake creation.")
  pbMessage("To return all things to the void.")
  
  pbMessage("But the Guardians rose to meet them.")
  
  # Show guardian legendaries
  show_intro_sprite("ZACIAN")
  pbMessage("Zacian, blade of justice.")
  
  show_intro_sprite("XERNEAS")
  pbMessage("Xerneas, light of life.")
  
  show_intro_sprite("YVELTAL")
  pbMessage("Yveltal, wings of death.")
  
  hide_intro_sprite
  pbMessage("At terrible cost, the Evils were sealed away.")
  pbMessage("Millions perished. Cities crumbled.")
  pbMessage("But the world survived.")
  
  pbMessage("The survivors called this The Divine Reckoning.")
  pbMessage("And they swore it would never happen again.")
  
  pbFadeOutIn {
    pbBGMPlay('Pokemon XY - Vaniville Town')
  }
  
  # PRESENT DAY
  pbMessage("<c2>--- PRESENT DAY ---</c2>\n<c2>ASGHEIM REGION</c2>")
  pbMessage("Fifty years have passed.")
  pbMessage("The Reckoning has become legend.")
  pbMessage("Most believe the danger is over.")
  
  pbMessage("They are wrong.")
  
  pbMessage("The seals are weakening.")
  pbMessage("The darkness stirs.")
  pbMessage("And somewhere in the shadows...")
  pbMessage("A cult called The Shattered Crown works to break them.")
  
  pbFadeOutIn {
    pbBGMPlay('Pokemon RSE - Sealed Chamber')
  }
  
  # YOUR DREAM
  pbMessage("<c2>--- YOUR DREAM ---</c2>")
  pbMessage("You see golden light.")
  pbMessage("Fragments of something broken, floating in the void.")
  pbMessage("A crown... shattered into a thousand pieces.")
  
  pbMessage("A voice speaks:")
  pbMessage("\\bVoice\\b: \\PN...")
  pbMessage("\\bVoice\\b: You have been chosen.")
  pbMessage("\\bVoice\\b: The seals are breaking.")
  pbMessage("\\bVoice\\b: Find the others.")
  pbMessage("\\bVoice\\b: Save them all.")
  
  pbMessage("You feel a burning sensation on your arm.")
  pbMessage("A mark appears, glowing with golden light.")
  pbMessage("The mark of Zacian.")
  
  pbFadeOutIn {
    pbBGMPlay('Pokemon XY - Vaniville Town')
  }
  
  # WAKE UP TRANSITION
  pbMessage("<c2>--- DAWNHAVEN VILLAGE ---</c2>\n<c2>YOUR HOME</c2>")
  pbMessage("You wake with a start.")
  pbMessage("Sunlight streams through your window.")
  pbMessage("Just a dream... right?")
  
  pbMessage("You look at your arm.")
  pbMessage("The mark is still there.")
  pbMessage("Faintly glowing.")
  
  pbMessage("\\bMom\\b: \\PN! Time to wake up!")
  pbMessage("\\bMom\\b: Professor Aldric is waiting for you at the lab!")
  pbMessage("\\bMom\\b: Today's the day you get your first Pokémon!")
  
  pbMessage("You hide the mark under your sleeve.")
  pbMessage("One thing at a time.")
  pbMessage("First, your Pokémon.")
  pbMessage("Then... answers.")
end
