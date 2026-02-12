#===============================================================================
# Kael's Nightmare Interlude - Cutscenes
# Extracted from Main_Story.rb Chapter 8.5
#===============================================================================

GameData::Cutscene.define :ch8_5_intro do |scene|
  scene.play_bgm nil
  
  scene.message "\\i[CHAPTER 8.5 - KAEL'S NIGHTMARE]"
  scene.message "\\i[The Fire That Made Shadow]"
  
  scene.wait 30
  scene.fade_in
end

GameData::Cutscene.define :ch8_5_cant_sleep do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.message "\\bKael\\b: ..."
  
  scene.message "\\bKael\\b: (They're sleeping so peacefully.)"
  scene.message "\\bKael\\b: (Lyra's even smiling.)"
  scene.message "\\bKael\\b: (Must be nice.)"
  
  scene.message "\\bShadow\\b: *nuzzling* Zor..."
  
  scene.message "\\bKael\\b: *quietly* Can't sleep either, girl?"
  scene.message "\\bKael\\b: *sighing* Yeah. The marks."
  scene.message "\\bKael\\b: You remember where we found each other, don't you?"
  
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\bKael\\b: (I try not to think about that night.)"
  scene.message "\\bKael\\b: (But the mark... it's bringing it all back.)"
end

GameData::Cutscene.define :ch8_5_memory_begins do |scene|
  scene.fade_out
  scene.wait 30
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.fade_in
  
  scene.message "\\i[FIVE YEARS AGO - ASHTHORN ORPHANAGE]"
  
  scene.message "\\i[Young Kael, age 11, sits reading by candlelight]"
  
  scene.message "\\bYoung Kael\\b: (Another book finished.)"
  scene.message "\\bYoung Kael\\b: (The other kids think I'm weird.)"
  scene.message "\\bYoung Kael\\b: (But books don't judge you.)"
  
  scene.message "\\bMira\\b: Kael! There you are!"
  
  scene.message "\\bYoung Kael\\b: *startled* Mira? What are you doing up?"
  
  scene.message "\\bMira\\b: Looking for you, dummy!"
  scene.message "\\bMira\\b: The headmaster said lights out an hour ago."
  
  scene.message "\\bYoung Kael\\b: I just... I couldn't stop reading."
  scene.message "\\bMira\\b: You ALWAYS can't stop reading."
  
  scene.message "\\bMira\\b: *sitting next to him* What's it about this time?"
  
  scene.message "\\bYoung Kael\\b: Legends. Old ones."
  scene.message "\\bYoung Kael\\b: About guardians who protected Asgaheim."
  
  scene.message "\\bMira\\b: That sounds boring."
  scene.message "\\bYoung Kael\\b: It's NOT boring!"
  scene.message "\\bMira\\b: *giggling* I'm teasing."
  scene.message "\\bMira\\b: Will you tell me the story?"
  
  scene.message "\\bYoung Kael\\b: ...It's pretty dark."
  scene.message "\\bMira\\b: I can handle dark!"
  scene.message "\\bMira\\b: I'm seven. I'm practically grown up."
  
  scene.message "\\bYoung Kael\\b: *smiling* Fine."
  scene.message "\\bYoung Kael\\b: There were three guardians..."
end

GameData::Cutscene.define :ch8_5_the_fire do |scene|
  scene.play_bgm 'Pokemon XY - Crisis'
  scene.camera_shake 5, 30
  
  scene.message "\\bVoice\\b: FIRE! FIRE IN THE WEST WING!"
  
  scene.message "\\bYoung Kael\\b: What—?!"
  scene.message "\\bMira\\b: Kael? What's happening?"
  
  scene.message "\\bYoung Kael\\b: *grabbing her hand* We have to go. NOW."
  
  scene.message "\\i[Smoke fills the hallway. Screaming. Chaos.]"
  
  scene.message "\\bMira\\b: *coughing* I can't see!"
  scene.message "\\bYoung Kael\\b: Hold onto me! Don't let go!"
  
  scene.message "\\bMira\\b: It's so hot..."
  scene.message "\\bYoung Kael\\b: I know. I know. Just keep moving."
  
  scene.message "\\i[A beam cracks above them.]"
  
  scene.camera_shake 10, 20
end

GameData::Cutscene.define :ch8_5_mira_found do |scene|
  scene.play_bgm 'Pokemon XY - Crisis'
  
  scene.message "\\bMira\\b: KAEL!"
  
  scene.message "\\bYoung Kael\\b: I've got you! I've got—"
  
  scene.message "\\i[The floor gives way.]"
  
  scene.message "\\bMira\\b: KAEL! MY HAND! I'M SLIPPING!"
  
  scene.message "\\bYoung Kael\\b: HOLD ON! HOLD ON MIRA!"
  
  scene.message "\\bMira\\b: I'm scared..."
  
  scene.message "\\bYoung Kael\\b: *straining* I won't let you fall!"
  scene.message "\\bYoung Kael\\b: I PROMISED I'D PROTECT YOU!"
  
  scene.message "\\bMira\\b: *smiling through tears* It's okay, Kael."
  scene.message "\\bMira\\b: It's okay."
  
  scene.message "\\bYoung Kael\\b: NO! MIRA!"
end

GameData::Cutscene.define :ch8_5_the_push do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_flash 20
  
  scene.message "\\i[Something pushes Kael. Hard.]"
  scene.message "\\i[He flies backward through a window.]"
  scene.message "\\i[Glass shatters. Cold air. Snow.]"
  
  scene.message "\\bYoung Kael\\b: MIRA!!!"
  
  scene.message "\\i[He watches the building collapse.]"
  scene.message "\\i[And something... something watches him.]"
  scene.message "\\i[Red eyes. Vast wings. A presence of pure death.]"
  
  scene.message "\\ts[]'Not yet, little one.'"
  scene.message "\\ts[]'You have a purpose.'"
  scene.message "\\ts[]'Remember this gift.'"
  
  scene.message "\\i[Then it's gone.]"
  scene.message "\\i[And Mira is gone.]"
  scene.message "\\i[And nothing will ever be the same.]"
end

GameData::Cutscene.define :ch8_5_aftermath do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\i[The next morning. Rain and ashes.]"
  
  scene.message "\\bAdult Voice\\b: Twelve dead. Including the headmaster."
  scene.message "\\bAdult Voice\\b: Only a few survivors."
  
  scene.message "\\bAnother Voice\\b: The west wing collapsed completely."
  scene.message "\\bAnother Voice\\b: No way anyone in there survived."
  
  scene.message "\\i[Kael sits alone. Covered in soot. Unblinking.]"
  
  scene.message "\\bAdult Voice\\b: Poor kid. His little sister was in there."
  scene.message "\\bAnother Voice\\b: He hasn't said a word since we found him."
  
  scene.message "\\bYoung Kael\\b: (I let her go.)"
  scene.message "\\bYoung Kael\\b: (I let her fall.)"
  scene.message "\\bYoung Kael\\b: (Why am I alive?)"
  scene.message "\\bYoung Kael\\b: (What pushed me?)"
  scene.message "\\bYoung Kael\\b: (Those red eyes...)"
end

GameData::Cutscene.define :ch8_5_finding_shadow do |scene|
  scene.play_bgm 'Pokemon DPPT - Route 210 Day'
  
  scene.message "\\i[THREE DAYS LATER]"
  
  scene.message "\\i[Kael wanders the ruins. He shouldn't be here.]"
  scene.message "\\i[But he can't stay away.]"
  
  scene.message "\\bYoung Kael\\b: (Mira loved the garden.)"
  scene.message "\\bYoung Kael\\b: (She'd pick flowers for everyone.)"
  scene.message "\\bYoung Kael\\b: (Even when they were mean to her.)"
  
  scene.message "\\bYoung Kael\\b: (I should have died instead.)"
  
  scene.message "\\bSmall Voice\\b: Zor..."
  
  scene.message "\\bYoung Kael\\b: ...What?"
  
  scene.message "\\i[A tiny Zorua. Burned. Limping. Barely alive.]"
  scene.message "\\i[It's huddled in the ashes of the garden.]"
  
  scene.message "\\bYoung Kael\\b: *kneeling* Hey... hey there."
  scene.message "\\bYoung Kael\\b: You're hurt."
  
  scene.message "\\bZorua\\b: *whimpering* Zor..."
  
  scene.message "\\bYoung Kael\\b: Were you... were you in the fire too?"
  
  scene.message "\\bZorua\\b: *nuzzling his hand weakly*"
  
  scene.message "\\bYoung Kael\\b: *tears finally falling* I lost someone."
  scene.message "\\bYoung Kael\\b: My sister. Mira."
  scene.message "\\bYoung Kael\\b: I couldn't save her."
  
  scene.message "\\bZorua\\b: Zor... zor..."
  
  scene.message "\\bYoung Kael\\b: *picking her up carefully* But maybe..."
  scene.message "\\bYoung Kael\\b: Maybe I can save you."
end

GameData::Cutscene.define :ch8_5_shadow_bond do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\i[Kael nurses the Zorua back to health.]"
  scene.message "\\i[He names her Shadow.]"
  scene.message "\\i[Because that's what he feels like now. A shadow of who he was.]"
  
  scene.message "\\bCaretaker\\b: You can't keep that Pokémon, boy."
  scene.message "\\bCaretaker\\b: It's dangerous. Zorua are tricksters."
  
  scene.message "\\bYoung Kael\\b: She's not dangerous."
  scene.message "\\bYoung Kael\\b: She's my friend."
  
  scene.message "\\bCaretaker\\b: You don't HAVE friends."
  scene.message "\\bCaretaker\\b: You're strange. You don't talk."
  scene.message "\\bCaretaker\\b: The other children are scared of you."
  
  scene.message "\\bYoung Kael\\b: Good."
  
  scene.message "\\bCaretaker\\b: Excuse me?"
  
  scene.message "\\bYoung Kael\\b: *coldly* I said good."
  scene.message "\\bYoung Kael\\b: Shadow is the only friend I need."
  scene.message "\\bYoung Kael\\b: And I'm not giving her up."
  
  scene.message "\\i[The caretaker sees something in his eyes.]"
  scene.message "\\i[Something old. Dangerous. Familiar.]"
  scene.message "\\i[He backs away.]"
  
  scene.message "\\bCaretaker\\b: ...Fine. Keep it."
  scene.message "\\bCaretaker\\b: Just stay out of my way."
  
  scene.message "\\bYoung Kael\\b: *to Shadow* Don't worry, girl."
  scene.message "\\bYoung Kael\\b: We're in this together now."
  scene.message "\\bYoung Kael\\b: Forever."
end

GameData::Cutscene.define :ch8_5_back_to_present do |scene|
  scene.fade_out
  scene.wait 30
  scene.play_bgm 'Pokemon DPPT - Night'
  scene.fade_in
  
  scene.message "\\i[PRESENT DAY]"
  
  scene.message "\\bKael\\b: *touching his mark*"
  scene.message "\\bKael\\b: (Crimson. Like the eyes I saw that night.)"
  scene.message "\\bKael\\b: (Connected to shadow. Knowledge. Secrets.)"
  
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\bKael\\b: (Was it Yveltal?)"
  scene.message "\\bKael\\b: (The guardian of death?)"
  scene.message "\\bKael\\b: (Did it mark me that night?)"
  
  scene.message "\\bKael\\b: (Why did it save me instead of Mira?)"
  scene.message "\\bKael\\b: (What PURPOSE do I have?)"
end

GameData::Cutscene.define :ch8_5_yveltal_first_whisper do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\ts[]'You already know, little shadow.'"
  
  scene.message "\\bKael\\b: *freezing*"
  
  scene.message "\\ts[]'The fire was no accident.'"
  scene.message "\\ts[]'THEY started it.'"
  scene.message "\\ts[]'The ones who seek the crowns.'"
  
  scene.message "\\bKael\\b: *whispering* The Shattered Hand."
  
  scene.message "\\ts[]'Find the truth.'"
  scene.message "\\ts[]'Protect the bearers of light and will.'"
  scene.message "\\ts[]'And when the time comes...'"
  scene.message "\\ts[]'Accept your inheritance.'"
  
  scene.message "\\bKael\\b: (The voice is gone.)"
  scene.message "\\bKael\\b: (But now I know.)"
  scene.message "\\bKael\\b: (The fire wasn't an accident.)"
  scene.message "\\bKael\\b: (Someone killed Mira.)"
  scene.message "\\bKael\\b: (And they're going to pay.)"
end

GameData::Cutscene.define :ch8_5_fire_truth_teased do |scene|
  scene.play_bgm 'Pokemon XY - Tension'
  
  scene.message "\\bKael\\b: (Wait.)"
  scene.message "\\bKael\\b: (If the cult started the fire...)"
  scene.message "\\bKael\\b: (Why were they at an orphanage?)"
  scene.message "\\bKael\\b: (What were they looking for?)"
  
  scene.message "\\bKael\\b: (Or... who?)"
  
  scene.message "\\bShadow\\b: Zor!"
  
  scene.message "\\bKael\\b: (Was I the target?)"
  scene.message "\\bKael\\b: (Did Mira die... because of me?)"
  
  scene.message "\\bKael\\b: *clenching fists*"
  scene.message "\\bKael\\b: (I need answers.)"
  scene.message "\\bKael\\b: (But not now.)"
  scene.message "\\bKael\\b: (First, we deal with the cult.)"
  scene.message "\\bKael\\b: (Then... I find out the truth.)"
end

GameData::Cutscene.define :ch8_5_lyra_wakes do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  scene.message "\\bLyra\\b: *sleepily* Kael...?"
  scene.message "\\bLyra\\b: You okay?"
  
  scene.message "\\bKael\\b: *quickly composing himself* Fine."
  scene.message "\\bKael\\b: Go back to sleep."
  
  scene.message "\\bLyra\\b: You sure? You looked..."
  scene.message "\\bLyra\\b: Sad."
  
  scene.message "\\bKael\\b: I'm not SAD."
  
  scene.message "\\bLyra\\b: *sitting up* It's okay to be sad sometimes."
  scene.message "\\bLyra\\b: I know you act tough, but..."
  
  scene.message "\\bKael\\b: Lyra."
  scene.message "\\bKael\\b: Go. To. Sleep."
  
  scene.message "\\bLyra\\b: ..."
  scene.message "\\bLyra\\b: You know we're here for you, right?"
  scene.message "\\bLyra\\b: Me and \\PN."
  scene.message "\\bLyra\\b: If you ever want to talk."
  
  scene.message "\\bKael\\b: ..."
  
  scene.message "\\bLyra\\b: *lying back down* Goodnight, Kael."
  scene.message "\\bLyra\\b: \\And Shadow."
  
  scene.message "\\bShadow\\b: Zor..."
end

GameData::Cutscene.define :ch8_5_almost_opening_up do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: *very quietly* ...Goodnight."
  
  scene.message "\\bKael\\b: (She's irritating.)"
  scene.message "\\bKael\\b: (And naive.)"
  scene.message "\\bKael\\b: (And too kind for her own good.)"
  
  scene.message "\\bKael\\b: (But...)"
  scene.message "\\bKael\\b: (She cares.)"
  scene.message "\\bKael\\b: (They both do.)"
  
  scene.message "\\bKael\\b: (I won't lose them like I lost Mira.)"
  scene.message "\\bKael\\b: (Whatever it takes.)"
  
  scene.message "\\bKael\\b: *to Shadow* Watch over them tonight, girl."
  scene.message "\\bKael\\b: I'll take the whole watch."
  
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\i[End of Interlude]"
end
