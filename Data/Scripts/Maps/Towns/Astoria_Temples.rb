#===============================================================================
# Astoria Region - The Forgotten Temples
#===============================================================================
# Post-game content: The Astoria region and its three temples
# Temple of Stars (Jirachi), Temple of Tides (Manaphy), Temple of Shadows (Darkrai)
# Part of Act 5: The Crown's Legacy
#===============================================================================

#===============================================================================
# ASTORIA REGION - ARRIVAL
#===============================================================================
# Map ID: 065 (Astoria Hub)

EventHandlers.add(:on_map_or_spriteset_change, :astoria_entry,
  proc {
    next if !$game_map || !$scene.is_a?(Scene_Map)
    next if $game_map.map_id != 65  # Map ID for Astoria Hub
    
    # First time entering Astoria
    if $game_switches[SW::UNLOCKED_ASTORIA] && !$game_switches[SW::VISITED_ASTORIA]
      pbWait(1)
      GameData::Cutscene.play(:astoria_arrival)
      $game_switches[SW::VISITED_ASTORIA] = true
    end
  }
)

GameData::Cutscene.define :astoria_arrival do |scene|
  scene.fade_in
  scene.play_bgm 'Pokemon ORAS - Soaring Illusions'
  
  scene.message "\\i[ASTORIA - THE FORGOTTEN REGION]"
  scene.message "Beyond the rift, a new land awaited."
  scene.message "An ancient region lost to time and memory."
  scene.message "Ruins of a forgotten civilization dotted the landscape."
  
  scene.message "\\bKael\\b: Astoria... I've read about this place."
  scene.message "\\bKael\\b: It was destroyed in the same war that shattered the Crown."
  
  scene.message "\\bElena\\b: The Great Convergence."
  scene.message "\\bElena\\b: When the barriers between realms weakened."
  
  scene.message "\\bLyra\\b: According to legend, three fragments of divine power fell here."
  scene.message "\\bLyra\\b: Housed in temples built to protect them."
  
  scene.message "\\b\\PN\\b: And Giratina said we need them to stabilize the seal."
  
  scene.message "\\bRagnar\\b: Three temples? Sounds like three adventures to me!"
  
  scene.message "Three paths stretched before you."
  scene.message "Each leading to a different temple."
  scene.message "The final chapter of your journey awaited..."
end

#===============================================================================
# TEMPLE OF STARS - JIRACHI
#===============================================================================
# Map ID: 066

EventHandlers.add(:on_map_or_spriteset_change, :temple_stars_entry,
  proc {
    next if !$game_map || !$scene.is_a?(Scene_Map)
    next if $game_map.map_id != 66  # Temple of Stars
    
    if $game_switches[SW::VISITED_ASTORIA] && !$game_switches[SW::VISITED_STAR_TEMPLE]
      pbWait(1)
      GameData::Cutscene.play(:star_temple_arrival)
      $game_switches[SW::VISITED_STAR_TEMPLE] = true
    end
  }
)

GameData::Cutscene.define :star_temple_arrival do |scene|
  scene.fade_in
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\i[TEMPLE OF STARS - SANCTUARY OF WISHES]"
  scene.message "The temple floated among the clouds."
  scene.message "Crystal spires caught starlight even in daylight."
  scene.message "Constellations moved across the floor."
  
  scene.message "\\bElena\\b: Beautiful..."
  scene.message "\\bElena\\b: It's like walking among the stars themselves."
  
  scene.message "A gentle energy pulsed from within."
  scene.message "Something was waiting to awaken..."
end

GameData::Cutscene.define :star_temple_jirachi do |scene|
  scene.play_bgm 'Pokemon RSE - Jirachi Theme'
  
  scene.message "At the temple's heart, a small figure floated."
  scene.message "A tiny creature wrapped in star-paper."
  scene.message "Three wish tags hung from its head."
  
  scene.message "\\bJirachi\\b: *yawning* Mmm... visitors?"
  scene.message "\\bJirachi\\b: It's been so long since anyone came here..."
  
  scene.message "\\b\\PN\\b: Jirachi? The Wish Pokémon?"
  
  scene.message "\\bJirachi\\b: That's me! *stretching*"
  scene.message "\\bJirachi\\b: You woke me up! That means you must really need something."
  
  scene.message "\\bKael\\b: We need the Star Fragment to stabilize the Crown's seal."
  
  scene.message "\\bJirachi\\b: The Fragment? Hmm..."
  scene.message "\\bJirachi\\b: I can give it to you! But first..."
  scene.message "\\bJirachi\\b: You have to play with me!"
  
  scene.message "\\bRagnar\\b: ...Play?"
  
  scene.message "\\bJirachi\\b: I've been sleeping for a thousand years!"
  scene.message "\\bJirachi\\b: I'm bored! Let's have a battle!"
  
  scene.choice ["Ready to play!", "Wait, let me prepare..."] do |choice|
    if choice == 0
      scene.legendary_battle :JIRACHI, 70
      scene.next_cutscene :star_temple_fragment
    else
      scene.message "\\bJirachi\\b: Okay! I'll wait right here!"
    end
  end
end

GameData::Cutscene.define :star_temple_fragment do |scene|
  scene.play_bgm 'Pokemon XY - Victory!'
  
  scene.message "\\bJirachi\\b: *giggling* That was fun!"
  scene.message "\\bJirachi\\b: You're strong! No wonder you're the Chosen!"
  
  scene.message "\\bJirachi\\b: Here! The Star Fragment!"
  
  scene.screen_flash :gold, 1.0
  
  scene.message "A golden shard of pure starlight materialized!"
  scene.add_item :STARFRAGMENT, 1
  
  scene.message "\\bJirachi\\b: Use it well! And..."
  scene.message "\\bJirachi\\b: If you ever need a wish granted... call on me!"
  scene.message "\\bJirachi\\b: We're friends now, after all!"
  
  scene.message "Jirachi drifted back to sleep, smiling."
  
  scene.set_switch SW::GOT_STAR_FRAGMENT, true
end

#===============================================================================
# TEMPLE OF TIDES - MANAPHY
#===============================================================================
# Map ID: 067

EventHandlers.add(:on_map_or_spriteset_change, :temple_tides_entry,
  proc {
    next if !$game_map || !$scene.is_a?(Scene_Map)
    next if $game_map.map_id != 67  # Temple of Tides
    
    if $game_switches[SW::VISITED_ASTORIA] && !$game_switches[SW::VISITED_TIDE_TEMPLE]
      pbWait(1)
      GameData::Cutscene.play(:tide_temple_arrival)
      $game_switches[SW::VISITED_TIDE_TEMPLE] = true
    end
  }
)

GameData::Cutscene.define :tide_temple_arrival do |scene|
  scene.fade_in
  scene.play_bgm 'Pokemon DPPT - Lake Theme'
  
  scene.message "\\i[TEMPLE OF TIDES - HEART OF THE OCEAN]"
  scene.message "The temple rose from the depths of an endless sea."
  scene.message "Water flowed upward, defying gravity."
  scene.message "Coral and crystal merged in impossible beauty."
  
  scene.message "\\bLyra\\b: The Temple of Tides..."
  scene.message "\\bLyra\\b: Said to be connected to every ocean in existence."
  
  scene.message "\\bKael\\b: I can hear the waves, even up here."
  
  scene.message "A current of warmth pulled you deeper..."
end

GameData::Cutscene.define :tide_temple_manaphy do |scene|
  scene.play_bgm 'Pokemon Ranger - Manaphy Theme'
  
  scene.message "In the temple's central chamber, water spiraled."
  scene.message "Within the spiral, a small blue figure danced."
  scene.message "Antennae bobbed as it sensed your presence."
  
  scene.message "\\bManaphy\\b: ♪ Hello, hello! ♪"
  scene.message "\\bManaphy\\b: ♪ Visitors from the land above! ♪"
  
  scene.message "\\bElena\\b: It's adorable..."
  
  scene.message "\\bManaphy\\b: You seek the Tide Fragment?"
  scene.message "\\bManaphy\\b: The sea told me you were coming!"
  
  scene.message "\\b\\PN\\b: The sea talks to you?"
  
  scene.message "\\bManaphy\\b: The sea talks to everyone!"
  scene.message "\\bManaphy\\b: Most just don't listen."
  
  scene.message "\\bManaphy\\b: The Fragment is yours... if you prove your heart is true."
  scene.message "\\bManaphy\\b: The ocean tests all who seek its treasures!"
  
  scene.message "Water rose around you!"
  
  scene.legendary_battle :MANAPHY, 70
  
  scene.next_cutscene :tide_temple_fragment
end

GameData::Cutscene.define :tide_temple_fragment do |scene|
  scene.play_bgm 'Pokemon XY - Victory!'
  
  scene.message "\\bManaphy\\b: ♪ Your heart is pure! ♪"
  scene.message "\\bManaphy\\b: ♪ The ocean accepts you! ♪"
  
  scene.message "\\bManaphy\\b: Take the Tide Fragment!"
  
  scene.screen_flash :blue, 1.0
  
  scene.message "A sapphire shard of crystallized ocean appeared!"
  scene.add_item :TIDEFRAGMENT, 1
  
  scene.message "\\bManaphy\\b: The seas will always aid you now!"
  scene.message "\\bManaphy\\b: Wherever there is water, I am with you!"
  
  scene.message "Manaphy dived into the spiral and vanished."
  scene.message "But you felt its presence in every drop of water around you."
  
  scene.set_switch SW::GOT_TIDE_FRAGMENT, true
end

#===============================================================================
# TEMPLE OF SHADOWS - DARKRAI
#===============================================================================
# Map ID: 068

EventHandlers.add(:on_map_or_spriteset_change, :temple_shadows_entry,
  proc {
    next if !$game_map || !$scene.is_a?(Scene_Map)
    next if $game_map.map_id != 68  # Temple of Shadows
    
    if $game_switches[SW::VISITED_ASTORIA] && !$game_switches[SW::VISITED_SHADOW_TEMPLE]
      pbWait(1)
      GameData::Cutscene.play(:shadow_temple_arrival)
      $game_switches[SW::VISITED_SHADOW_TEMPLE] = true
    end
  }
)

GameData::Cutscene.define :shadow_temple_arrival do |scene|
  scene.fade_in
  scene.play_bgm 'Pokemon DPPT - Distortion World'
  
  scene.message "\\i[TEMPLE OF SHADOWS - DOMAIN OF NIGHTMARES]"
  scene.message "Darkness consumed everything beyond the threshold."
  scene.message "Shadows moved with a life of their own."
  scene.message "The air was thick with unease."
  
  scene.message "\\bKael\\b: ...This place feels familiar."
  scene.message "\\bKael\\b: Like my worst nightmares given form."
  
  scene.message "\\bLyra\\b: The Temple of Shadows houses Darkrai."
  scene.message "\\bLyra\\b: The nightmare Pokémon. Be on your guard."
  
  scene.message "\\bElena\\b: I feel something watching us..."
  
  scene.message "Eyes opened in the darkness. Countless eyes."
end

GameData::Cutscene.define :shadow_temple_darkrai do |scene|
  scene.play_bgm 'Pokemon DPPT - Darkrai Theme'
  
  scene.message "From the shadows, a figure emerged."
  scene.message "White smoke billowed from a dark form."
  scene.message "A single blue eye assessed you coldly."
  
  scene.message "\\bDarkrai\\b: ...Mortals. In my domain."
  
  scene.message "\\bKael\\b: Darkrai. We need the Shadow Fragment."
  
  scene.message "\\bDarkrai\\b: Direct. I appreciate that."
  scene.message "\\bDarkrai\\b: But the Fragment is not given freely."
  
  scene.message "\\b\\PN\\b: Then we'll earn it. Whatever it takes."
  
  scene.message "\\bDarkrai\\b: Brave words. But can you face your nightmares?"
  
  scene.message "Darkness enveloped you!"
  scene.screen_flash :black, 1.5
  
  scene.message "\\i[NIGHTMARE REALM]"
  scene.message "You saw your deepest fears made manifest..."
  scene.message "Everything you'd lost... Everyone who'd suffered..."
  scene.message "Elena frozen in crystal... Aldric dying..."
  
  scene.message "\\bDarkrai\\b: This is your truth. Can you accept it?"
  
  scene.choice ["I accept my fears. They make me stronger.", "I reject this nightmare! It's not real!"] do |choice|
    if choice == 0
      scene.message "\\bDarkrai\\b: ...Interesting."
      scene.message "\\bDarkrai\\b: You understand that darkness is part of you."
      scene.message "\\bDarkrai\\b: Very well. Prove your resolve in battle!"
    else
      scene.message "\\bDarkrai\\b: Denial? A common response."
      scene.message "\\bDarkrai\\b: But not incorrect. Reality is what we make of it."
      scene.message "\\bDarkrai\\b: Show me your will to shape it!"
    end
  end
  
  scene.screen_flash :white, 0.5
  scene.message "The nightmare shattered!"
  scene.message "Darkrai awaited your challenge!"
  
  scene.legendary_battle :DARKRAI, 75
  
  scene.next_cutscene :shadow_temple_fragment
end

GameData::Cutscene.define :shadow_temple_fragment do |scene|
  scene.play_bgm 'Pokemon XY - Victory!'
  
  scene.message "\\bDarkrai\\b: ...You are worthy."
  scene.message "\\bDarkrai\\b: Few can face their nightmares and emerge whole."
  
  scene.message "\\bDarkrai\\b: Take the Shadow Fragment."
  
  scene.screen_flash :purple, 1.0
  
  scene.message "An obsidian shard of solidified shadow appeared!"
  scene.add_item :SHADOWFRAGMENT, 1
  
  scene.message "\\bDarkrai\\b: I am not evil, you know."
  scene.message "\\bDarkrai\\b: I am simply... misunderstood."
  scene.message "\\bDarkrai\\b: Nightmares serve a purpose. They reveal truth."
  
  scene.message "\\bKael\\b: I understand. More than you know."
  
  scene.message "\\bDarkrai\\b: Yes. I sensed that about you, Chosen of Death."
  scene.message "\\bDarkrai\\b: We are not so different."
  
  scene.message "Darkrai faded into the shadows."
  scene.message "But its voice lingered..."
  
  scene.message "\\bDarkrai\\b: Call upon me if you ever need... perspective."
  
  scene.set_switch SW::GOT_SHADOW_FRAGMENT, true
end

#===============================================================================
# THE CROWN RESTORED - ALL FRAGMENTS GATHERED
#===============================================================================

GameData::Cutscene.define :astoria_crown_restored do |scene|
  scene.play_bgm 'Pokemon DPPt - Arceus Theme'
  
  scene.message "With all three fragments gathered, you returned to the altar."
  scene.message "Star, Tide, and Shadow pulsed in harmony."
  
  scene.message "\\bLyra\\b: The fragments are resonating!"
  scene.message "\\bLyra\\b: Place them on the altar!"
  
  scene.message "You set the three fragments in place."
  
  scene.screen_flash :rainbow, 2.0
  
  scene.message "Light erupted from the altar!"
  scene.message "The fragments merged with the Crown of Balance!"
  scene.message "Its power magnified tenfold!"
  
  scene.message "\\bCrown of Balance\\b (speaking): Chosen..."
  scene.message "\\bCrown of Balance\\b: You have gathered the lost power."
  scene.message "\\bCrown of Balance\\b: The seal on Nidhoggr is now eternal."
  scene.message "\\bCrown of Balance\\b: The world is truly safe."
  
  scene.message "\\bElena\\b: It's over? Completely?"
  
  scene.message "\\bCrown of Balance\\b: The serpent will never wake again."
  scene.message "\\bCrown of Balance\\b: You have fulfilled your destiny, Chosen."
  
  scene.message "\\bKael\\b: *smiling* We actually did it."
  
  scene.message "\\b\\PN\\b: Together. We did it together."
  
  scene.set_switch SW::CROWN_FULLY_RESTORED, true
  scene.set_switch SW::POSTGAME_COMPLETE, true
end

#===============================================================================
# MAP ENCOUNTERS - ASTORIA TEMPLES
#===============================================================================

# Temple of Stars (Psychic/Fairy)
GameData::MapEncounter.define 66 do |enc|
  enc.walking do
    enc.add :CLEFAIRY, 48..52, 25
    enc.add :LUNATONE, 50..54, 20
    enc.add :SOLROCK, 50..54, 20
    enc.add :CHIMECHO, 48..52, 15
    enc.add :SIGILYPH, 52..55, 15
    enc.add :BEHEEYEM, 52..56, 5
  end
end

# Temple of Tides (Water)
GameData::MapEncounter.define 67 do |enc|
  enc.water do
    enc.add :LANTURN, 50..54, 25
    enc.add :GOREBYSS, 52..55, 20
    enc.add :HUNTAIL, 52..55, 20
    enc.add :MILOTIC, 53..57, 15
    enc.add :LAPRAS, 50..55, 15
    enc.add :PHIONE, 55..55, 5  # Rare
  end
end

# Temple of Shadows (Dark/Ghost)
GameData::MapEncounter.define 68 do |enc|
  enc.walking do
    enc.add :MISMAGIUS, 50..54, 25
    enc.add :HONCHKROW, 52..55, 20
    enc.add :SPIRITOMB, 53..56, 15
    enc.add :DUSKNOIR, 52..56, 15
    enc.add :GENGAR, 52..55, 15
    enc.add :ABSOL, 55..58, 10
  end
end
