#===============================================================================
# Shattered Hand Fortress - Cult Headquarters
#===============================================================================
# Map ID: 047
# Final dungeon before Nidhoggr encounter
#===============================================================================

#===============================================================================
# MAP ENTRY - FORTRESS APPROACH
#===============================================================================

EventHandlers.add(:on_map_or_spriteset_change, :fortress_entry,
  proc {
    next if !$game_map || !$scene.is_a?(Scene_Map)
    next if $game_map.map_id != 47
    
    # First time entering
    if !$game_switches[SW::VISITED_FORTRESS]
      pbWait(1)
      GameData::Cutscene.play(:fortress_first_visit)
      $game_switches[SW::VISITED_FORTRESS] = true
    end
    
    # Final assault chapter active
    if $game_switches[SW::CHAPTER_31_ACTIVE] && !$game_switches[SW::FORTRESS_ASSAULT_STARTED]
      GameData::Cutscene.play(:fortress_assault_begin)
      $game_switches[SW::FORTRESS_ASSAULT_STARTED] = true
    end
  }
)

#===============================================================================
# CUTSCENES - EXPLORATION
#===============================================================================

GameData::Cutscene.define :fortress_first_visit do |scene|
  scene.fade_in
  scene.play_bgm 'Pokemon XD - Cipher Lab'
  
  scene.message "\\i[SHATTERED HAND FORTRESS]"
  scene.message "The cult's dark fortress looms before you."
  scene.message "Twisted architecture rises against a blood-red sky."
  scene.message "Dark energy pulses from its core..."
  
  scene.message "\\bKael\\b: This is it. Their headquarters."
  scene.message "\\bLyra\\b: I can feel the corruption from here."
  scene.message "\\b\\PN\\b: Everyone ready?"
  
  scene.message "\\bKael\\b: As we'll ever be."
  scene.message "\\bLyra\\b: Let's end this."
end

#===============================================================================
# FORTRESS ASSAULT SEQUENCE
#===============================================================================

GameData::Cutscene.define :fortress_assault_begin do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Secret HQ'
  
  scene.message "\\bKael\\b: Remember the plan."
  scene.message "\\bKael\\b: We fight through to Malachar."
  scene.message "\\bKael\\b: Stop the ritual before Nidhoggr fully awakens."
  
  scene.message "\\bLyra\\b: And find Elena. She's still in there somewhere."
  
  scene.message "\\b\\PN\\b: We save everyone. No one gets left behind."
  
  scene.message "\\bKael\\b: *nods* Then let's move."
end

# Fortress Floor 1 - Entry Hall
GameData::Cutscene.define :fortress_floor1 do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Hideout'
  
  scene.message "Cultists block the entrance hall."
  
  scene.message "\\bCultist\\b: The Marked Ones! They're here!"
  scene.message "\\bCultist\\b: Lord Malachar! They've breached the fortress!"
  
  scene.message "\\bKael\\b: Get out of our way."
  
  scene.message "\\bCultist\\b: You'll never reach the ritual chamber!"
  scene.message "\\bCultist\\b: Mightyena! Attack!"
  
  scene.message "\\i[Battle: Cultist x3]"
end

# Fortress Floor 2 - Twisted Laboratories
GameData::Cutscene.define :fortress_floor2 do |scene|
  scene.play_bgm 'Pokemon Colosseum - The Under'
  
  scene.message "The second floor reveals horrific experiments."
  scene.message "Pokémon held in stasis, infused with dark energy..."
  
  scene.message "\\bLyra\\b: *horrified* What have they done?!"
  
  scene.message "\\bKael\\b: They're creating an army."
  scene.message "\\bKael\\b: Corrupted Pokémon, bound to serve the cult."
  
  scene.message "\\b\\PN\\b: We need to free them. After we stop Malachar."
  
  scene.message "\\bLyra\\b: ...Right. Priorities."
  scene.message "\\bLyra\\b: But we ARE coming back for them."
end

# General Shade - Optional Boss
GameData::Cutscene.define :fortress_shade_encounter do |scene|
  if !$game_switches[SW::SHADE_REMATCH_WON]
    scene.play_bgm 'Pokemon USUM - Battle! Ultra Recon Squad'
    
    scene.message "A familiar figure blocks the stairway."
    
    scene.message "\\bGeneral Shade\\b: So you made it this far."
    scene.message "\\bGeneral Shade\\b: I underestimated you before."
    scene.message "\\bGeneral Shade\\b: That won't happen again."
    
    scene.message "\\bKael\\b: Step aside, Shade."
    scene.message "\\bKael\\b: We've beaten you before."
    
    scene.message "\\bGeneral Shade\\b: *laughs* Beaten me?"
    scene.message "\\bGeneral Shade\\b: I was holding back."
    scene.message "\\bGeneral Shade\\b: Lord Malachar has given me TRUE power!"
    
    scene.message "\\i[Boss Battle: General Shade (Powered Up)]"
    scene.message "\\i[Tyranitar, Hydreigon, Weavile, Bisharp, Zoroark, Darkrai]"
  else
    scene.message "The stairway ahead is clear."
    scene.message "General Shade's defeat opened the path."
  end
end

GameData::Cutscene.define :fortress_shade_defeated do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Defeated'
  
  scene.message "\\bGeneral Shade\\b: *collapsing* How... impossible..."
  
  scene.message "\\b\\PN\\b: It's over, Shade. Tell us where Malachar is."
  
  scene.message "\\bGeneral Shade\\b: *laughing weakly* You're too late."
  scene.message "\\bGeneral Shade\\b: The ritual is almost complete."
  scene.message "\\bGeneral Shade\\b: Nidhoggr awakens... and this world ends."
  
  scene.message "\\bLyra\\b: Then we'll stop it!"
  
  scene.message "\\bGeneral Shade\\b: You can try..."
  scene.message "\\bGeneral Shade\\b: But even the Guardians couldn't..."
  
  scene.message "Shade loses consciousness."
  
  scene.message "\\bKael\\b: Leave him. We need to move."
  
  scene.set_switch SW::SHADE_REMATCH_WON, true
end

#===============================================================================
# RITUAL CHAMBER - MALACHAR CONFRONTATION
#===============================================================================

GameData::Cutscene.define :fortress_ritual_chamber do |scene|
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  scene.camera_shake 15, 40
  
  scene.message "\\i[RITUAL CHAMBER]"
  scene.message "The heart of the fortress pulses with dark energy."
  scene.message "Ancient symbols glow on every surface."
  scene.message "At the center, Malachar stands before a rift in reality."
  
  scene.message "\\bMalachar\\b: *not turning around* You made it."
  scene.message "\\bMalachar\\b: I expected nothing less from the Marked Ones."
  
  scene.message "\\b\\PN\\b: It's over, Malachar! Step away from the ritual!"
  
  scene.message "\\bMalachar\\b: *turns slowly* Over?"
  scene.message "\\bMalachar\\b: My dear child... it's only just beginning."
end

GameData::Cutscene.define :fortress_elena_captured do |scene|
  scene.play_bgm 'Pokemon XY - Tension'
  
  scene.message "A figure hangs suspended in dark energy."
  
  scene.message "\\bLyra\\b: ELENA!"
  
  scene.message "\\bElena\\b: *weakly* Lyra... don't..."
  scene.message "\\bElena\\b: It's a trap..."
  
  scene.message "\\bMalachar\\b: Ah yes, Elena."
  scene.message "\\bMalachar\\b: Such a useful hostage."
  scene.message "\\bMalachar\\b: Her Crown Keeper blood accelerates the ritual nicely."
  
  scene.message "\\bLyra\\b: *furious* Let her GO!"
  
  scene.message "\\bMalachar\\b: Certainly."
  scene.message "\\bMalachar\\b: Once Nidhoggr awakens, everyone will be free."
  scene.message "\\bMalachar\\b: Free from the burden of existence!"
end

GameData::Cutscene.define :fortress_malachar_speech do |scene|
  scene.play_bgm 'Pokemon XY - Lysandre Theme'
  
  scene.message "\\bMalachar\\b: Do you know why I do this?"
  scene.message "\\bMalachar\\b: It's not for power. Not for revenge."
  
  scene.message "\\bKael\\b: Then why?!"
  
  scene.message "\\bMalachar\\b: Because I've SEEN the truth."
  scene.message "\\bMalachar\\b: I've lived through horrors you cannot imagine."
  scene.message "\\bMalachar\\b: Wars. Famines. Plagues. Loss after meaningless loss."
  
  scene.message "\\bMalachar\\b: The world is broken. Full of suffering."
  scene.message "\\bMalachar\\b: The cycle of life and death... it breeds only pain."
  
  scene.message "\\b\\PN\\b: So your solution is to end everything?!"
  
  scene.message "\\bMalachar\\b: My solution is PEACE."
  scene.message "\\bMalachar\\b: When nothing exists, nothing suffers."
  scene.message "\\bMalachar\\b: Is that not the ultimate mercy?"
  
  scene.message "\\bLyra\\b: That's not peace! That's annihilation!"
  
  scene.message "\\bMalachar\\b: To you, perhaps."
  scene.message "\\bMalachar\\b: But I have seen beyond the veil."
  scene.message "\\bMalachar\\b: And I know this is the only way."
end

#===============================================================================
# MALACHAR BOSS BATTLE
#===============================================================================

GameData::Cutscene.define :fortress_malachar_battle do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Rose'
  
  scene.message "\\bMalachar\\b: Enough talk."
  scene.message "\\bMalachar\\b: Since words won't convince you..."
  scene.message "\\bMalachar\\b: Let POWER speak instead!"
  
  scene.message "Dark energy erupts from Malachar."
  scene.message "His eyes burn with Nidhoggr's corruption."
  
  scene.message "\\b\\PN\\b: Everyone! Together!"
  
  scene.message "\\i[BOSS BATTLE: Cult Leader Malachar]"
  scene.message "\\i[Hydreigon, Tyranitar, Dusknoir, Chandelure, Grimmsnarl, Eternatus]"
end

GameData::Cutscene.define :fortress_malachar_defeated do |scene|
  scene.play_bgm 'Pokemon XY - Lysandre Defeated'
  scene.camera_shake 5, 20
  
  scene.message "\\bMalachar\\b: *staggering* Impossible..."
  scene.message "\\bMalachar\\b: You defeated my team... even Eternatus..."
  
  scene.message "\\b\\PN\\b: It's over, Malachar. Surrender."
  
  scene.message "\\bMalachar\\b: *laughing bitterly* Surrender?"
  scene.message "\\bMalachar\\b: You don't understand..."
  scene.message "\\bMalachar\\b: The ritual is COMPLETE."
end

#===============================================================================
# NIDHOGGR AWAKENS
#===============================================================================

GameData::Cutscene.define :fortress_nidhoggr_awakens do |scene|
  scene.play_bgm 'Pokemon SwSh - Eternatus Awakens'
  scene.camera_shake 40, 120
  scene.camera_flash 30
  
  scene.message "The ground splits open."
  scene.message "Dark energy pours from the rift."
  scene.message "Something massive stirs in the void..."
  
  scene.message "\\bMalachar\\b: *ecstatic* YES! YESSS!"
  scene.message "\\bMalachar\\b: NIDHOGGR AWAKENS!"
  
  scene.message "\\bLyra\\b: Everyone, get back!"
  
  scene.message "A colossal form rises from the darkness."
  scene.message "Ancient. Corrupt. Hungry."
  scene.message "Nidhoggr, the World-Eater, has returned."
  
  scene.message "\\bNidhoggr\\b: AT LAST... I AM FREE..."
end

GameData::Cutscene.define :fortress_malachar_absorbed do |scene|
  scene.play_bgm 'Pokemon SwSh - Eternatus Theme'
  scene.camera_shake 20, 60
  
  scene.message "\\bMalachar\\b: *approaching Nidhoggr* Great One!"
  scene.message "\\bMalachar\\b: I have freed you from your prison!"
  scene.message "\\bMalachar\\b: Grant me the power you promised!"
  
  scene.message "\\bNidhoggr\\b: POWER?"
  scene.message "\\bNidhoggr\\b: YOU DESIRE... POWER?"
  
  scene.message "Dark tendrils wrap around Malachar."
  
  scene.message "\\bMalachar\\b: *confused* What... what are you—"
  
  scene.message "\\bNidhoggr\\b: I GRANT YOUR WISH..."
  scene.message "\\bNidhoggr\\b: BECOME ONE WITH THE VOID!"
  
  scene.message "\\bMalachar\\b: NO! WAIT! THIS ISN'T—AAAAAAHHH!"
  
  scene.message "Malachar's screams echo as Nidhoggr consumes him."
  scene.message "His life force feeds the World-Eater's awakening."
  
  scene.message "\\bKael\\b: ...Even he was just a tool."
  scene.message "\\bLyra\\b: That's what happens when you deal with monsters."
  
  scene.message "\\b\\PN\\b: Now we have to stop the monster itself."
  
  scene.set_switch SW::MALACHAR_ABSORBED, true
end

#===============================================================================
# TRAINER ENCOUNTERS
#===============================================================================

GameData::MapTrainer.define :fortress_cultist_1 do |trainer|
  trainer.map_id 47
  trainer.event_id 10
  trainer.trainer_type :CULTIST
  trainer.name "Zealot"
  trainer.version 0
  
  trainer.lose_text "The void takes all..."
  
  trainer.pokemon do |team|
    team.add :MIGHTYENA, 45
    team.add :HONCHKROW, 46
  end
end

GameData::MapTrainer.define :fortress_cultist_2 do |trainer|
  trainer.map_id 47
  trainer.event_id 11
  trainer.trainer_type :CULTIST
  trainer.name "Acolyte"
  trainer.version 0
  
  trainer.lose_text "Lord Malachar will avenge us!"
  
  trainer.pokemon do |team|
    team.add :DUSCLOPS, 44
    team.add :MISMAGIUS, 45
    team.add :SABLEYE, 43
  end
end

GameData::MapTrainer.define :fortress_cultist_3 do |trainer|
  trainer.map_id 47
  trainer.event_id 12
  trainer.trainer_type :CULTIST
  trainer.name "Shadow Priest"
  trainer.version 0
  
  trainer.lose_text "The ritual cannot be stopped!"
  
  trainer.pokemon do |team|
    team.add :GENGAR, 48
    team.add :SPIRITOMB, 47
    team.add :CHANDELURE, 49
  end
end

#===============================================================================
# WILD ENCOUNTERS
#===============================================================================

GameData::MapEncounter.define :shattered_hand_fortress do |enc|
  enc.map_id 47
  enc.name "Shattered Hand Fortress"
  
  enc.land do |land|
    land.encounter :GASTLY, 40..45, 20
    land.encounter :HAUNTER, 42..47, 20
    land.encounter :SHUPPET, 40..44, 15
    land.encounter :BANETTE, 44..48, 15
    land.encounter :DUSKULL, 41..45, 15
    land.encounter :DUSCLOPS, 45..48, 10
    land.encounter :SPIRITOMB, 48..50, 5
  end
end
