#===============================================================================
# Mountain Escape - First Shade Confrontation - Cutscenes
# Extracted from Main_Story.rb Chapter 12 (General Shade)
#===============================================================================

GameData::Cutscene.define :ch12_surrounded do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  scene.message "\\bShade\\b: Did you really think we wouldn't find you?"
  scene.message "\\bShade\\b: The marked ones? Here?"
  scene.message "\\bShade\\b: Every spy we have was watching."
  
  scene.message "\\bKael\\b: *through gritted teeth* We need to fight through."
  
  scene.message "\\bLyra\\b: There are too many!"
  
  scene.message "\\b\\PN\\b: Then we make an opening."
  scene.message "\\b\\PN\\b: Together."
  
  scene.message "\\bShade\\b: How touching."
  scene.message "\\bShade\\b: Surrender now, and I might let one of you live."
  
  scene.message "\\bKael\\b: Counter-offer."
  scene.message "\\bKael\\b: Leave now, and YOU might live."
  
  scene.message "\\bShade\\b: *laughs coldly* Bold. I like that."
  scene.message "\\bShade\\b: I'll remember your words when I'm carving them on your grave."
end

GameData::Cutscene.define :ch12_shade_reveal do |scene|
  scene.play_bgm 'Pokemon XY - Lysandre'
  
  scene.message "\\bShade\\b: I am Shade, General of the Shattered Hand."
  scene.message "\\bShade\\b: First of Viktor's chosen."
  scene.message "\\bShade\\b: And the one who will bring you to heel."
  
  scene.message "\\b\\PN\\b: Viktor?"
  
  scene.message "\\bShade\\b: Our leader. The true heir to the crown."
  scene.message "\\bShade\\b: When Hoopa is freed, he will wield its power."
  scene.message "\\bShade\\b: And then... Nidhoggr."
  
  scene.message "\\bKael\\b: You want to free the thing that nearly destroyed the world?"
  scene.message "\\bKael\\b: Are you insane?"
  
  scene.message "\\bShade\\b: Destroy? No."
  scene.message "\\bShade\\b: Nidhoggr will remake it."
  scene.message "\\bShade\\b: Burn away the corruption."
  scene.message "\\bShade\\b: And from the ashes, paradise."
  
  scene.message "\\bLyra\\b: That's insane!"
  
  scene.message "\\bShade\\b: Perhaps."
  scene.message "\\bShade\\b: But insanity and vision are often mistaken for each other."
end

GameData::Cutscene.define :ch12_shade_backstory do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bShade\\b: I was once like you, you know."
  scene.message "\\bShade\\b: Young. Idealistic. Believing in heroes."
  
  scene.message "\\b\\PN\\b: What happened?"
  
  scene.message "\\bShade\\b: The world showed me its true face."
  scene.message "\\bShade\\b: My village was destroyed in a territorial war."
  scene.message "\\bShade\\b: Pokémon against Pokémon. Humans caught in between."
  
  scene.message "\\bShade\\b: My family. My friends. All gone."
  scene.message "\\bShade\\b: While the 'heroes' watched from their towers."
  
  scene.message "\\bKael\\b: So you joined the people causing more destruction?"
  
  scene.message "\\bShade\\b: I joined the people who will END destruction."
  scene.message "\\bShade\\b: Nidhoggr's hunger will consume all conflict."
  scene.message "\\bShade\\b: No more war. No more suffering."
  scene.message "\\bShade\\b: Just... peace."
  
  scene.message "\\bLyra\\b: The peace of the grave."
  
  scene.message "\\bShade\\b: *smiles* You understand perfectly."
end

GameData::Cutscene.define :ch12_battle_begins do |scene|
  scene.play_bgm 'Pokemon SwSh - Battle! Bede'
  
  scene.message "\\bShade\\b: Enough talk."
  scene.message "\\bShade\\b: Take them."
  
  scene.message "\\bKael\\b: Shadow! Dark Pulse!"
  
  scene.message "\\bLyra\\b: Willow, support!"
  scene.message "\\bWillow\\b: Vee!"
  
  scene.message "\\b\\PN\\b: Break through! Head for the path!"
  
  scene.message "\\bShade\\b: *watching calmly* Impressive stamina."
  scene.message "\\bShade\\b: But futile."
end

GameData::Cutscene.define :ch12_kael_rage do |scene|
  scene.play_bgm 'Pokemon SwSh - Battle! Bede'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.message "\\bKael\\b: (I led them here. My carelessness.)"
  scene.message "\\bKael\\b: (If they get hurt... it's my fault.)"
  
  scene.message "\\bYveltal's Voice\\b: Use it."
  scene.message "\\bYveltal's Voice\\b: Your anger. Your pain."
  scene.message "\\bYveltal's Voice\\b: Let me help you."
  
  scene.message "\\bKael\\b: *through gritted teeth* Not yet."
  scene.message "\\bKael\\b: I don't trust you."
  
  scene.message "\\bYveltal's Voice\\b: You trust nothing."
  scene.message "\\bYveltal's Voice\\b: But you will."
end

GameData::Cutscene.define :ch12_lyra_shield do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  scene.message "\\bLyra\\b: NO!"
  
  scene.message "\\bKael\\b: *stunned* Lyra...?"
  
  scene.message "\\bLyra\\b: I... I don't know how I did that..."
  
  scene.message "\\bXerneas's Voice\\b: Instinct."
  scene.message "\\bXerneas's Voice\\b: To protect those you love."
  
  scene.message "\\bShade\\b: *eyes narrowing* Interesting."
  scene.message "\\bShade\\b: The marks are awakening."
  scene.message "\\bShade\\b: Good. Viktor will be pleased."
end

GameData::Cutscene.define :ch12_player_breakthrough do |scene|
  scene.play_bgm 'Pokemon SwSh - Battle! Gym Leader'
  
  scene.message "\\i[YOUR PERSPECTIVE]"
  
  scene.message "\\bZacian's Voice\\b: Cut through."
  scene.message "\\bZacian's Voice\\b: Like a sword. Like me."
  
  scene.message "\\b\\PN\\b: MOVE!"
  
  scene.message "\\bKael\\b: GO! NOW!"
end

GameData::Cutscene.define :ch12_shade_lets_them_go do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  scene.message "\\bCultist\\b: General! They're escaping!"
  
  scene.message "\\bShade\\b: I know."
  
  scene.message "\\bCultist\\b: Should we—"
  
  scene.message "\\bShade\\b: No."
  
  scene.message "\\bShade\\b: Their marks awakened today."
  scene.message "\\bShade\\b: We've learned what we needed."
  scene.message "\\bShade\\b: Let them run."
  
  scene.message "\\bCultist\\b: But Viktor ordered—"
  
  scene.message "\\bShade\\b: *coldly* Viktor ordered me to assess them."
  scene.message "\\bShade\\b: I have."
  scene.message "\\bShade\\b: They're stronger than expected."
  scene.message "\\bShade\\b: But not strong enough."
  
  scene.message "\\bShade\\b: The next time we meet..."
  scene.message "\\bShade\\b: Will be the last."
end

GameData::Cutscene.define :ch12_escape_run do |scene|
  scene.play_bgm 'Pokemon RSE - Mt. Pyre'
  
  scene.message "\\bLyra\\b: *gasping* Are they... following?"
  
  scene.message "\\bKael\\b: *checking behind* No. They stopped."
  
  scene.message "\\b\\PN\\b: Why? They had us."
  
  scene.message "\\bKael\\b: Testing us."
  scene.message "\\bKael\\b: She wanted to see our powers."
  scene.message "\\bKael\\b: And we showed her."
  
  scene.message "\\bLyra\\b: Was that... bad?"
  
  scene.message "\\bKael\\b: It means they know what we can do."
  scene.message "\\bKael\\b: They'll be prepared next time."
  
  scene.message "\\b\\PN\\b: Then we need to be more prepared."
end

GameData::Cutscene.define :ch12_catching_breath do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: What... what happened back there?"
  scene.message "\\bLyra\\b: I made a shield. Of light."
  
  scene.message "\\b\\PN\\b: I fired some kind of energy wave."
  
  scene.message "\\bKael\\b: The marks. They responded to our need."
  scene.message "\\bKael\\b: I felt it too. Yveltal's power."
  scene.message "\\bKael\\b: I didn't use it... but I could have."
  
  scene.message "\\i[POWER AWAKENING]"
  
  mechanic_name = BattleMechanicChoice.mechanic_name
  scene.message "\\b\\PN\\b: (I feel... different.)"
  scene.message "\\b\\PN\\b: (Like I've unlocked... #{mechanic_name}.)"
  
  scene.camera_flash 30
  scene.play_se 'Audio/SE/Item Get'
  
  scene.script do
    BattleMechanicStory.give_mechanic_item(silent: true)
  end
  
  scene.wait 20
  
  scene.message "\\bLyra\\b: It's scary..."
  scene.message "\\bLyra\\b: Having this power we don't understand."
  
  scene.message "\\b\\PN\\b: We'll learn to control it."
  scene.message "\\b\\PN\\b: We have to."
  
  scene.message "\\bKael\\b: The tablets we took should help."
  scene.message "\\bKael\\b: They describe the Guardians' abilities."
  scene.message "\\bKael\\b: We can study them."
end

GameData::Cutscene.define :ch12_what_we_learned do |scene|
  scene.play_bgm 'Pokemon DPPT - Emotion'
  
  scene.message "\\bKael\\b: We learned important things today."
  scene.message "\\bKael\\b: About ourselves. About the enemy."
  
  scene.message "\\bLyra\\b: Their leader is named Viktor."
  
  scene.message "\\b\\PN\\b: And they don't just want Hoopa."
  scene.message "\\b\\PN\\b: They want Nidhoggr too."
  
  scene.message "\\bKael\\b: To remake the world through destruction."
  scene.message "\\bKael\\b: Madness. Complete madness."
  
  scene.message "\\bLyra\\b: But Shade believed it."
  scene.message "\\bLyra\\b: Really believed."
  
  scene.message "\\b\\PN\\b: That makes her more dangerous, not less."
  
  scene.message "\\bKael\\b: Agreed."
  scene.message "\\bKael\\b: A true believer will sacrifice anything."
  scene.message "\\bKael\\b: Including themselves."
  
  scene.message "\\bLyra\\b: So what do we do now?"
  
  scene.message "\\b\\PN\\b: We get stronger."
  scene.message "\\b\\PN\\b: We find the seals."
  scene.message "\\b\\PN\\b: And we stop them."
end

GameData::Cutscene.define :ch12_shade_aftermath do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: Is everyone okay?"
  scene.message "\\bKael\\b: We're fine. For now."
  
  scene.message "\\b\\PN\\b: She said there's something worse than Hoopa."
  scene.message "\\b\\PN\\b: 'Far greater,' she said."
  
  scene.message "\\bKael\\b: The tablets mentioned Nidhoggr."
  scene.message "\\bKael\\b: An ancient entity of chaos and hunger."
  
  scene.message "\\bLyra\\b: So Hoopa is just the beginning?"
  scene.message "\\bKael\\b: It seems that way."
  
  scene.message "\\b\\PN\\b: Then we need to stop them before they free either."
  scene.message "\\b\\PN\\b: First, we regroup and recover."
  
  scene.message "\\bKael\\b: And then?"
  
  scene.message "\\b\\PN\\b: And then we find the seals before they do."
end

GameData::Cutscene.define :ch12_night_watch do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.message "\\bKael\\b: *quietly* I almost lost control today."
  scene.message "\\bKael\\b: Yveltal's power... it wanted out."
  
  scene.message "\\bKael\\b: I won't let it happen again."
  scene.message "\\bKael\\b: I won't become a monster."
  
  scene.message "\\bKael\\b: (They're counting on me.)"
  scene.message "\\bKael\\b: (I won't fail them.)"
end

GameData::Cutscene.define :ch12_dawn_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: Where do we go now?"
  
  scene.message "\\b\\PN\\b: The tablets mention other temples."
  scene.message "\\b\\PN\\b: Places where the seals are anchored."
  
  scene.message "\\bKael\\b: If we can strengthen them..."
  scene.message "\\bKael\\b: We buy time to find a permanent solution."
  
  scene.message "\\bLyra\\b: Then let's go."
  scene.message "\\bLyra\\b: But... maybe we can eat first?"
  
  scene.message "\\bKael\\b: *almost smiling* Fair point."
end
