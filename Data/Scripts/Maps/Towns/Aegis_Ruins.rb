#===============================================================================
# Aegis Town Ruins - Kael's Orphanage Location
#===============================================================================
# Map ID: 046
# Location for Kael's Past Quest - the burned orphanage
#===============================================================================

#===============================================================================
# MAP ENTRY - RUINED TOWN
#===============================================================================

EventHandlers.add(:on_map_or_spriteset_change, :aegis_ruins_entry,
  proc {
    next if !$game_map || !$scene.is_a?(Scene_Map)
    next if $game_map.map_id != 46
    
    # First time - atmospheric introduction
    if !$game_switches[SW::VISITED_AEGIS_RUINS]
      pbWait(1)
      GameData::Cutscene.play(:aegis_ruins_first_visit)
      $game_switches[SW::VISITED_AEGIS_RUINS] = true
    end
    
    # Kael's quest active
    if $game_switches[SW::QUEST_KAELS_PAST_ACTIVE] && !$game_switches[SW::KAEL_RUINS_INTRO]
      GameData::Cutscene.play(:sq_kaels_past_ruins)
      $game_switches[SW::KAEL_RUINS_INTRO] = true
    end
  }
)

#===============================================================================
# CUTSCENES
#===============================================================================

GameData::Cutscene.define :aegis_ruins_first_visit do |scene|
  scene.fade_in
  scene.play_bgm 'Pokemon XY - Empty Streets'
  
  scene.message "\\i[RUINS OF AEGIS TOWN]"
  scene.message "An eerie silence blankets the abandoned town."
  scene.message "Buildings stand hollow, reclaimed by nature."
  scene.message "Something terrible happened here long ago..."
  
  scene.message "\\bLyra\\b: This place feels... sad."
  scene.message "\\bKael\\b: *quietly* ..."
  scene.message "\\b\\PN\\b: Kael? Are you okay?"
  scene.message "\\bKael\\b: Fine. Let's just... keep moving."
end

#===============================================================================
# ORPHANAGE RUINS - MAIN STORY LOCATION
#===============================================================================

GameData::Cutscene.define :aegis_orphanage_exterior do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'
  
  scene.message "The ruins of St. Aegis Orphanage stand before you."
  scene.message "Charred beams and crumbling walls tell of tragedy."
  scene.message "Wildflowers grow where children once played."
  
  scene.message "\\bKael\\b: *stops walking* ..."
  scene.message "\\bKael\\b: It's smaller than I remember."
  scene.message "\\bKael\\b: Everything always seems bigger when you're a kid."
  
  scene.message "\\bLyra\\b: Kael, we don't have to do this."
  
  scene.message "\\bKael\\b: Yes. We do."
  scene.message "\\bKael\\b: I've been running for too long."
end

GameData::Cutscene.define :aegis_orphanage_search do |scene|
  scene.play_bgm 'Pokemon XY - Empty Streets'
  
  scene.message "You search through the rubble carefully."
  scene.message "Old toys, faded photographs, remnants of childhood..."
  
  scene.message "\\bLyra\\b: What are we looking for exactly?"
  
  scene.message "\\bKael\\b: A locket. Silver, with a rose engraving."
  scene.message "\\bKael\\b: My sister was wearing it... that night."
  
  scene.message "\\b\\PN\\b: Your sister?"
  
  scene.message "\\bKael\\b: *long pause* Sera. Her name was Sera."
  scene.message "\\bKael\\b: At least... I think it was."
  scene.message "\\bKael\\b: I can barely remember her face anymore."
end

# Finding the locket
GameData::Cutscene.define :aegis_orphanage_locket_found do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\b\\PN\\b: Kael, over here. I found something."
  
  scene.message "Beneath a collapsed beam, a glint of silver catches the light."
  scene.message "A small locket, tarnished but intact."
  
  scene.message "\\bKael\\b: *takes locket with trembling hands* ...That's it."
  scene.message "\\bKael\\b: That's hers."
  
  scene.message "\\i[Kael obtained Sera's Locket!]"
  
  scene.message "\\bKael\\b: Sera... I'm sorry."
  scene.message "\\bKael\\b: I'm so sorry I forgot you."
  
  scene.message "The locket seems to pulse with warmth in Kael's hands."
  scene.message "And suddenly, memories flood back..."
  
  scene.set_switch SW::KAEL_LOCKET_FOUND, true
end

#===============================================================================
# FLASHBACK SEQUENCE
#===============================================================================

GameData::Cutscene.define :aegis_flashback do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon SM - Aether Paradise'
  scene.fade_in
  
  scene.message "\\i[FLASHBACK - 12 YEARS AGO]"
  
  scene.message "\\bYoung Kael\\b: Sister! The building is on fire!"
  
  scene.message "\\bSera\\b: I know, Kael. Take my hand."
  scene.message "\\bSera\\b: We have to get the others out."
  
  scene.message "\\bYoung Kael\\b: I'm scared..."
  
  scene.message "\\bSera\\b: *kneeling down* I know you are."
  scene.message "\\bSera\\b: But you're also the bravest kid I know."
  scene.message "\\bSera\\b: Take this locket. Keep it safe for me, okay?"
  
  scene.message "\\bYoung Kael\\b: *takes locket* O-okay..."
  
  scene.message "A beam collapsed, separating them."
  
  scene.message "\\bSera\\b: KAEL! Go! Get out!"
  scene.message "\\bYoung Kael\\b: I won't leave you!"
  scene.message "\\bSera\\b: You have to live, Kael!"
  scene.message "\\bSera\\b: *crying* Live for both of us!"
  
  scene.message "Strong arms pulled young Kael away."
  scene.message "The last thing he saw was his sister's face..."
  scene.message "Determined. Loving. Unafraid."
  
  scene.fade_out
  scene.message "\\i[END FLASHBACK]"
  scene.fade_in
end

#===============================================================================
# SHADOW SELF MANIFESTATION
#===============================================================================

GameData::Cutscene.define :aegis_shadow_appears do |scene|
  scene.play_bgm 'Pokemon USUM - Battle! Ultra Necrozma'
  scene.camera_shake 10, 30
  
  scene.message "A dark shadow manifests behind Kael."
  scene.message "It takes his form... but twisted, hollow-eyed."
  
  scene.message "\\bShadow Kael\\b: You remembered."
  scene.message "\\bShadow Kael\\b: After all these years of running..."
  
  scene.message "\\bKael\\b: *turns around* What the—?!"
  
  scene.message "\\bShadow Kael\\b: I am you, Kael."
  scene.message "\\bShadow Kael\\b: The part you buried. The guilt. The shame."
  
  scene.message "\\bLyra\\b: Kael, step back!"
  
  scene.message "\\bShadow Kael\\b: You let her die."
  scene.message "\\bShadow Kael\\b: You were weak. You couldn't save anyone."
  
  scene.message "\\bKael\\b: ...Maybe you're right."
  scene.message "\\bKael\\b: But I'm not that scared kid anymore."
end

GameData::Cutscene.define :aegis_shadow_battle_prep do |scene|
  scene.play_bgm 'Pokemon USUM - Battle! Ultra Necrozma'
  
  scene.message "\\bLyra\\b: Kael, we're with you!"
  scene.message "\\b\\PN\\b: You don't have to face this alone!"
  
  scene.message "\\bKael\\b: I know. That's why I can do this now."
  scene.message "\\bKael\\b: Come on, shadow. Let's end this."
  
  scene.message "\\bShadow Kael\\b: Very well..."
  scene.message "\\bShadow Kael\\b: Show me you've changed!"
  
  scene.message "\\i[Boss Battle: Shadow Kael]"
  scene.message "\\i[Umbreon, Absol, Zoroark, Ash-Greninja]"
end

GameData::Cutscene.define :aegis_shadow_defeated do |scene|
  scene.play_bgm 'Pokemon XY - Friends Forever'
  
  scene.message "The shadow dissipates, merging back into Kael."
  
  scene.message "\\bKael\\b: *breathing heavily* ..."
  scene.message "\\bKael\\b: Her name was Sera."
  scene.message "\\bKael\\b: Sera. My sister Sera."
  scene.message "\\bKael\\b: *clutches locket* I remember now. Everything."
  
  scene.message "\\bLyra\\b: Are you okay?"
  
  scene.message "\\bKael\\b: ...Yeah. For the first time in years."
  scene.message "\\bKael\\b: She didn't die so I could hide in the shadows."
  scene.message "\\bKael\\b: She died so I could live."
  
  scene.message "\\bKael\\b: \\PN, Lyra... thank you."
  scene.message "\\bKael\\b: For coming with me. For not giving up on me."
  
  scene.message "\\b\\PN\\b: That's what friends are for."
  
  scene.message "\\bKael\\b: ...Friends. Yeah."
  scene.message "\\bKael\\b: *small smile* I like the sound of that."
  
  scene.message "\\i[Kael obtained Shadow Oath Badge!]"
  scene.message "\\i[Quest Complete: Shadows of the Orphanage]"
  
  scene.set_switch SW::KAEL_SHADOW_DEFEATED, true
  scene.set_switch SW::QUEST_KAELS_PAST_COMPLETE, true
end

#===============================================================================
# MEMORIAL - POST QUEST
#===============================================================================

GameData::Cutscene.define :aegis_memorial do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "A small memorial stands in the orphanage courtyard."
  scene.message "Names are carved into weathered stone."
  scene.message "Those who didn't make it out that night."
  
  if $game_switches[SW::QUEST_KAELS_PAST_COMPLETE]
    scene.message "\\bKael\\b: *placing locket at the memorial*"
    scene.message "\\bKael\\b: Rest now, Sera."
    scene.message "\\bKael\\b: I'll carry your memory with me."
    scene.message "\\bKael\\b: And I'll make you proud."
  else
    scene.message "\\bKael\\b: *stares at the names in silence*"
    scene.message "\\bKael\\b: ..."
    scene.message "\\b\\PN\\b: (Maybe we should give him some space...)"
  end
end

#===============================================================================
# GHOST POKEMON ENCOUNTERS - ATMOSPHERE
#===============================================================================

GameData::MapEncounter.define :aegis_ruins do |enc|
  enc.map_id 46
  enc.name "Ruins of Aegis Town"
  
  enc.land do |land|
    land.encounter :GASTLY, 20..25, 30
    land.encounter :SHUPPET, 20..24, 25
    land.encounter :DUSKULL, 21..25, 20
    land.encounter :LITWICK, 20..23, 15
    land.encounter :PHANTUMP, 22..26, 10
  end
  
  enc.land_night do |land|
    land.encounter :GASTLY, 22..27, 25
    land.encounter :HAUNTER, 25..28, 15
    land.encounter :SHUPPET, 21..25, 20
    land.encounter :BANETTE, 26..28, 10
    land.encounter :DUSKULL, 22..26, 15
    land.encounter :DUSCLOPS, 27..30, 5
    land.encounter :LITWICK, 21..24, 10
  end
end
