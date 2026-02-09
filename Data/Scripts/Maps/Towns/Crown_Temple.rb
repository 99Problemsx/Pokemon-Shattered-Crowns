#===============================================================================
# Crown Temple - Ancient Crown Keeper Temple
#===============================================================================
# Map ID: 045
# Location for Lyra's Secret Quest and Crown lore exploration
#===============================================================================

#===============================================================================
# MAP ENTRY - CROWN TEMPLE
#===============================================================================

EventHandlers.add(:on_map_or_spriteset_change, :crown_temple_entry,
  proc {
    next if !$game_map || !$scene.is_a?(Scene_Map)
    next if $game_map.map_id != 45
    
    # First time entering - atmospheric setup
    if !$game_switches[SW::VISITED_CROWN_TEMPLE]
      pbWait(1)
      GameData::Cutscene.play(:crown_temple_first_visit)
      $game_switches[SW::VISITED_CROWN_TEMPLE] = true
    end
    
    # Lyra's quest active - temple responds to her
    if $game_switches[SW::QUEST_LYRAS_SECRET_ACTIVE] && !$game_switches[SW::LYRA_TEMPLE_INTRO]
      GameData::Cutscene.play(:sq_lyras_secret_temple)
      $game_switches[SW::LYRA_TEMPLE_INTRO] = true
    end
  }
)

#===============================================================================
# CUTSCENES
#===============================================================================

GameData::Cutscene.define :crown_temple_first_visit do |scene|
  scene.fade_in
  scene.play_bgm 'Pokemon BW - Relic Castle'
  
  scene.message "\\i[ANCIENT CROWN TEMPLE]"
  scene.message "The air here feels heavy with age and power."
  scene.message "Ancient murals cover every surface..."
  scene.message "Depicting beings of immense power and their gifts to humanity."
  
  scene.message "\\bKael\\b: This place is old. Really old."
  scene.message "\\bKael\\b: I don't think anyone's been here in centuries."
  
  scene.message "\\bLyra\\b: *touching a wall* I feel... strange."
  scene.message "\\bLyra\\b: Like the stones are whispering."
  
  scene.message "\\b\\PN\\b: Be careful. Places like this have guardians."
end

#===============================================================================
# NPC EVENTS - TEMPLE GUARDIANS
#===============================================================================

# Stone Guardian - Ancient protector
GameData::Cutscene.define :crown_temple_stone_guardian do |scene|
  if !$game_switches[SW::DEFEATED_STONE_GUARDIAN]
    scene.play_bgm 'Pokemon XY - Legendary Pokemon'
    
    scene.message "The stone statue's eyes glow with life!"
    scene.message "\\bStone Guardian\\b: WHO DISTURBS THE SACRED TEMPLE?"
    
    scene.message "\\b\\PN\\b: We seek knowledge about the Crown."
    
    scene.message "\\bStone Guardian\\b: ONLY THE WORTHY MAY PASS."
    scene.message "\\bStone Guardian\\b: PROVE YOUR STRENGTH!"
    
    # Battle: Stone Guardian (Golurk)
    scene.message "\\i[Battle: Stone Guardian - Golurk Lv. 40]"
    
    # After battle
    scene.message "\\bStone Guardian\\b: YOU HAVE PROVEN YOUR WORTH."
    scene.message "\\bStone Guardian\\b: PROCEED."
    
    scene.set_switch SW::DEFEATED_STONE_GUARDIAN, true
  else
    scene.message "The Stone Guardian stands aside, granting passage."
  end
end

# Ancient Inscription Reader
GameData::Cutscene.define :crown_temple_inscription_1 do |scene|
  scene.message "An ancient inscription is carved into the wall..."
  scene.message "\\i[\"The Crown was forged in the light of creation.\"]"
  scene.message "\\i[\"A gift from He Who Shaped All.\"]"
  scene.message "\\i[\"To those who would walk between worlds.\"]"
  
  scene.message "\\bLyra\\b: 'He Who Shaped All'... that has to be Arceus."
  scene.message "\\bKael\\b: So the Crown is divine in origin."
  scene.message "\\b\\PN\\b: That explains its power..."
end

GameData::Cutscene.define :crown_temple_inscription_2 do |scene|
  scene.message "Another inscription, partially worn by time..."
  scene.message "\\i[\"The Keepers of the Crown are bound by blood.\"]"
  scene.message "\\i[\"Their lineage carries the resonance eternal.\"]"
  scene.message "\\i[\"When the Crown calls, they must answer.\"]"
  
  scene.message "\\bLyra\\b: *pale* The Keepers..."
  scene.message "\\bLyra\\b: That's what the voice called me."
  scene.message "\\bKael\\b: Your family?"
  scene.message "\\bLyra\\b: I... I need to find more answers."
end

GameData::Cutscene.define :crown_temple_inscription_3 do |scene|
  scene.message "The final inscription, written in a different hand..."
  scene.message "\\i[\"Should the Crown ever shatter,\"]"
  scene.message "\\i[\"The World-Eater shall stir.\"]"
  scene.message "\\i[\"Only the Marked Ones can restore what was lost.\"]"
  
  scene.message "\\b\\PN\\b: The World-Eater... Nidhoggr."
  scene.message "\\bKael\\b: And we're the Marked Ones."
  scene.message "\\bLyra\\b: This was all written millennia ago."
  scene.message "\\bLyra\\b: We were destined for this."
end

#===============================================================================
# TRIAL CHAMBERS
#===============================================================================

# Trial of Mind - Puzzle Chamber
GameData::Cutscene.define :crown_temple_trial_mind do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'
  
  scene.message "\\i[TRIAL OF MIND]"
  scene.message "A spectral voice echoes through the chamber."
  
  scene.message "\\bVoice\\b: Child of the Keepers, prove your wisdom."
  scene.message "\\bVoice\\b: Answer my riddle, and the path shall open."
  
  scene.message "\\bVoice\\b: \"I am the gift that power demands.\""
  scene.message "\\bVoice\\b: \"Without me, rulers become tyrants.\""
  scene.message "\\bVoice\\b: \"What am I?\""
  
  scene.choice ["Responsibility", "Fear", "Wealth", "Secrecy"] do |choice|
    if choice == 0
      scene.message "\\bVoice\\b: Correct. Power without responsibility is tyranny."
      scene.message "The first seal glows with golden light."
      scene.set_switch SW::TRIAL_MIND_PASSED, true
    else
      scene.message "\\bVoice\\b: Incorrect. Reflect, and try again."
    end
  end
end

# Trial of Heart - Bond Chamber
GameData::Cutscene.define :crown_temple_trial_heart do |scene|
  scene.play_bgm 'Pokemon SM - Altar of the Sunne'
  
  scene.message "\\i[TRIAL OF HEART]"
  
  scene.message "\\bVoice\\b: Child of the Keepers, prove your compassion."
  scene.message "\\bVoice\\b: Why do you seek the Crown's power?"
  
  scene.choice ["To protect those I love", "To defeat our enemies", "To become stronger", "Because it's my destiny"] do |choice|
    if choice == 0
      scene.message "\\bVoice\\b: Love. The purest motivation."
      scene.message "\\bVoice\\b: You seek power not for yourself, but for others."
      scene.message "The second seal blazes with warm light."
      scene.set_switch SW::TRIAL_HEART_PASSED, true
    else
      scene.message "\\bVoice\\b: Your heart wavers. Look deeper within."
    end
  end
end

# Trial of Sacrifice - Final Chamber
GameData::Cutscene.define :crown_temple_trial_sacrifice do |scene|
  scene.play_bgm 'Pokemon USUM - Ultra Wormhole'
  
  scene.message "\\i[TRIAL OF SACRIFICE]"
  
  scene.message "\\bVoice\\b: Child of the Keepers, prove your resolve."
  scene.message "\\bVoice\\b: Would you sacrifice everything for this world?"
  
  scene.choice ["Yes, without hesitation", "I would try to find another way", "I don't know", "No, my life has value too"] do |choice|
    case choice
    when 0
      scene.message "\\bVoice\\b: Brave, but reckless."
      scene.message "\\bVoice\\b: True sacrifice is not seeking death."
    when 1
      scene.message "\\bVoice\\b: Wise. You understand the weight of life."
      scene.message "\\bVoice\\b: True sacrifice is living each day for others."
      scene.message "The final seal shatters, revealing the inner sanctum."
      scene.set_switch SW::TRIAL_SACRIFICE_PASSED, true
    when 2
      scene.message "\\bVoice\\b: Honest, but uncertain. Return when you know your heart."
    when 3
      scene.message "\\bVoice\\b: You value yourself. Good."
      scene.message "\\bVoice\\b: But can you value others equally?"
    end
  end
end

#===============================================================================
# INNER SANCTUM - REVELATION
#===============================================================================

GameData::Cutscene.define :crown_temple_sanctum do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
  scene.message "\\i[INNER SANCTUM]"
  scene.message "Within the sanctum stands an ancient mural spanning the entire wall."
  scene.message "It depicts a lineage stretching back millennia."
  scene.message "Faces, names, dates... all leading to the present."
  
  scene.message "\\bLyra\\b: *gasps* These people... they're all..."
  
  scene.message "\\bVoice\\b: Your ancestors, Lyra of the Keeper bloodline."
  scene.message "\\bVoice\\b: When the Crown was forged, your family swore an oath."
  scene.message "\\bVoice\\b: To guard it. To ensure it was never misused."
  
  scene.message "\\bLyra\\b: But my grandmother never told me..."
  
  scene.message "\\bVoice\\b: The knowledge was lost through wars and time."
  scene.message "\\bVoice\\b: But the blood remembers."
  scene.message "\\bVoice\\b: That is why the artifacts call to you."
  
  scene.message "\\bKael\\b: So Lyra is basically Crown royalty?"
  
  scene.message "\\bVoice\\b: Not royalty. Something greater."
  scene.message "\\bVoice\\b: A guardian."
  
  scene.message "Take the Resonance Crystal. It will amplify your connection."
  scene.message "\\i[Obtained Resonance Crystal!]"
  
  scene.set_switch SW::LYRA_BLOODLINE_REVEALED, true
end
