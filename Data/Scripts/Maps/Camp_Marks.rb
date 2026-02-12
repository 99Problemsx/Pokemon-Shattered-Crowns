#===============================================================================
# Camp - Marks Appear - Cutscenes
# Extracted from Main_Story.rb Chapter 7-8 (Aftermath & Marks)
#===============================================================================

GameData::Cutscene.define :ch7_aftermath do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: *trembling* That was... intense."
  scene.message "\\bWillow\\b: Vee... vee..."
  
  scene.message "\\bKael\\b: Chosen Ones. Marks. Guardians."
  scene.message "\\bKael\\b: He knew things about us that WE don't know."
  
  scene.message "\\b\\PN\\b: We need to find out what's going on."
  scene.message "\\b\\PN\\b: Professor Aldric might know something."
  
  scene.message "\\bKael\\b: Agreed. But first..."
  scene.message "\\bKael\\b: Are you okay?"
  
  scene.message "\\bLyra\\b: *surprised* Y-yeah. I'm fine."
  scene.message "\\bLyra\\b: Thanks for asking."
  
  scene.message "\\bKael\\b: ...Don't get used to it."
end

GameData::Cutscene.define :ch7_healing_pokemon do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'
  
  scene.message "\\bLyra\\b: *applying potion* Poor Willow..."
  scene.message "\\bLyra\\b: You were so brave."
  scene.message "\\bWillow\\b: *weakly* Vee..."
  
  scene.message "\\bKael\\b: Shadow took some hits too."
  scene.message "\\bKael\\b: But nothing serious."
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\b\\PN\\b: *checking starter* You okay, buddy?"
  
  scene.message "\\bLyra\\b: We make a good team."
  scene.message "\\bLyra\\b: Even against those odds."
  
  scene.message "\\bKael\\b: We were lucky."
  scene.message "\\bKael\\b: Next time, we need to be prepared."
end

GameData::Cutscene.define :ch7_campfire_setup do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  scene.message "\\bKael\\b: I'll take first watch."
  scene.message "\\bLyra\\b: Are you sure? You look tired."
  
  scene.message "\\bKael\\b: I won't sleep anyway."
  scene.message "\\bKael\\b: Too much to think about."
  
  scene.message "\\b\\PN\\b: We'll rotate. No one stays up all night."
end

GameData::Cutscene.define :ch7_lyra_fear do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  scene.message "\\bLyra\\b: (Chosen Ones... what does that even mean?)"
  scene.message "\\bLyra\\b: (I'm just a farm girl.)"
  scene.message "\\bLyra\\b: (I'm not special. I'm not brave.)"
  
  scene.message "\\bWillow\\b: Vee..."
  
  scene.message "\\bLyra\\b: At least I have you, Willow."
  scene.message "\\bLyra\\b: And \\PN. And Kael."
  
  scene.message "\\bLyra\\b: (Kael asked if I was okay...)"
  scene.message "\\bLyra\\b: (He never asks things like that.)"
  scene.message "\\bLyra\\b: (Maybe he's not as cold as he pretends.)"
end

GameData::Cutscene.define :ch7_kael_analysis do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.message "\\bKael\\b: (The Shattered Hand. A cult.)"
  scene.message "\\bKael\\b: (Connected to the shattered crowns legend.)"
  scene.message "\\bKael\\b: (They believe we're 'marked.')"
  
  scene.message "\\bKael\\b: (What if they're right?)"
  scene.message "\\bKael\\b: (What if I AM marked?)"
  scene.message "\\bKael\\b: (By what? For what?)"
  
  scene.message "\\bKael\\b: I know, girl. I don't like mysteries either."
  
  scene.message "\\bKael\\b: (She was scared today.)"
  scene.message "\\bKael\\b: (But she didn't run.)"
  scene.message "\\bKael\\b: (That's... admirable.)"
  
  scene.message "\\bKael\\b: (Focus. We have work to do.)"
end

GameData::Cutscene.define :ch7_player_reflection do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  scene.message "\\i[\\PN'S PERSPECTIVE]"
  
  scene.message "\\b\\PN\\b: (Chosen Ones. Guardians. Marks.)"
  scene.message "\\b\\PN\\b: (What have we stumbled into?)"
  
  scene.message "\\b\\PN\\b: (I'll protect them.)"
  scene.message "\\b\\PN\\b: (Whatever's coming...)"
  scene.message "\\b\\PN\\b: (We'll face it together.)"
  
  scene.message "\\b\\PN\\b: Thanks, partner."
  scene.message "\\b\\PN\\b: I'm glad you're with me."
end

GameData::Cutscene.define :ch7_morning_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  scene.message "\\bLyra\\b: *stretching* Morning, everyone!"
  scene.message "\\bKael\\b: *grunting* Coffee first. Talk later."
  
  scene.message "\\b\\PN\\b: *laughing* Not a morning person?"
  scene.message "\\bKael\\b: Morning is an unnecessary invention."
  
  scene.message "\\bLyra\\b: *giggling* Grumpy Kael is adorable."
  scene.message "\\bKael\\b: I am NOT adorable."
  scene.message "\\bLyra\\b: Sure you're not."
  
  scene.message "\\b\\PN\\b: Let's move. Professor Aldric awaits."
  scene.message "\\bKael\\b: Finally, someone with priorities."
  scene.message "\\bLyra\\b: Hey! I have priorities too!"
  scene.message "\\bKael\\b: Breakfast isn't a priority."
  scene.message "\\bLyra\\b: It absolutely IS!"
end

#===============================================================================
# Chapter 8 - Marks Appear
#===============================================================================

GameData::Cutscene.define :ch8_peaceful_night do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  scene.message "\\bLyra\\b: *yawning* What a day..."
  scene.message "\\bKael\\b: At least no one attacked us today."
  scene.message "\\bLyra\\b: Progress!"
  
  scene.message "\\b\\PN\\b: Let's get some rest. We're close to the professor's lab."
end

GameData::Cutscene.define :ch8_dream_begins do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\i[DREAM]"
  
  scene.message "\\bVoice\\b: Chosen One..."
  scene.message "\\bVoice\\b: The time has come."
  scene.message "\\bVoice\\b: Receive our blessing."
end

GameData::Cutscene.define :ch8_marks_appear do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\ts[]'Awaken, Chosen Ones...'"
  scene.message "\\ts[]'The balance must be restored...'"
  scene.message "\\ts[]'Before HE returns...'"
  
  scene.camera_flash 20
  scene.camera_shake 5, 30
  
  scene.set_switch SW::MARKS_APPEARED, true
end

GameData::Cutscene.define :ch8_waking_panic do |scene|
  scene.play_bgm 'Pokemon XY - Tension'
  
  scene.message "\\b\\PN\\b: What... what is this?!"
end

GameData::Cutscene.define :ch8_friends_have_marks do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: You too...?"
  
  scene.message "\\bKael\\b: ..."
  
  scene.message "\\bLyra\\b: What's happening to us?"
  scene.message "\\bKael\\b: The cult mentioned marks."
  scene.message "\\bKael\\b: Maybe this is what they meant."
  
  scene.message "\\bLyra\\b: But what ARE they?"
  scene.message "\\bKael\\b: I don't know. But Professor Aldric might."
  scene.message "\\b\\PN\\b: Then let's go find out. I'm not sitting around waiting for answers."
end

GameData::Cutscene.define :ch8_ragnar_worried do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bRagnar\\b: Hey! There you are!"
  
  scene.message "\\bRagnar\\b: ...What's wrong?"
  scene.message "\\bRagnar\\b: You look like you've seen a ghost."
  
  scene.message "\\b\\PN\\b: It's... complicated."
  
  scene.message "\\bRagnar\\b: *crossing arms* That's what you always say."
  scene.message "\\bRagnar\\b: But I know that face."
  scene.message "\\bRagnar\\b: Something happened."
  
  scene.message "\\bRagnar\\b: What the—?!"
  scene.message "\\bRagnar\\b: What IS that?!"
  
  scene.message "\\b\\PN\\b: We don't know yet."
  scene.message "\\b\\PN\\b: That's why we're going to find answers."
  
  scene.message "\\bRagnar\\b: ..."
  scene.message "\\bRagnar\\b: Okay. Be careful."
  scene.message "\\bRagnar\\b: And call me if you need backup."
  
  scene.message "\\b\\PN\\b: Since when are you so serious?"
  
  scene.message "\\bRagnar\\b: Since my rival got a glowing tattoo, apparently!"
end

GameData::Cutscene.define :ch8_comparing_marks do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: They're all different..."
  scene.message "\\bLyra\\b: Mine is rainbow, like a prism."
  
  scene.message "\\bKael\\b: Mine is crimson. Dark red, almost black."
  
  scene.message "\\b\\PN\\b: And mine is steel-blue."
  
  scene.message "\\bLyra\\b: Three colors. Three of us."
  scene.message "\\bLyra\\b: That can't be coincidence."
  
  scene.message "\\bKael\\b: Nothing about this is coincidence."
  scene.message "\\bKael\\b: The shared dreams. The cult knowing about us."
  scene.message "\\bKael\\b: And now this."
  
  scene.message "\\bLyra\\b: I'm scared..."
  
  scene.message "\\b\\PN\\b: Me too. But we're in this together."
  scene.message "\\b\\PN\\b: Whatever these marks mean..."
  scene.message "\\b\\PN\\b: We'll figure it out as a team."
  
  scene.message "\\bKael\\b: ...Agreed."
end

GameData::Cutscene.define :ch8_mark_meanings do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bKael\\b: If I had to guess..."
  scene.message "\\bKael\\b: These correspond to the three guardians."
  
  scene.message "\\bLyra\\b: The ones from the legends?"
  
  scene.message "\\bKael\\b: Exactly. Based on my research..."
  scene.message "\\bKael\\b: One guardian represented light. Connection. Life."
  scene.message "\\bKael\\b: That would be your rainbow mark, Lyra."
  
  scene.message "\\bLyra\\b: Oh..."
  
  scene.message "\\bKael\\b: Another represented shadow. Knowledge. Secrets."
  scene.message "\\bKael\\b: *touching his crimson mark* That's mine."
  
  scene.message "\\b\\PN\\b: And the third?"
  
  scene.message "\\bKael\\b: Will. Courage. The bridge between worlds."
  scene.message "\\bKael\\b: Steel-blue. That's you."
  
  scene.message "\\b\\PN\\b: So we're... connected to the guardians?"
  scene.message "\\bKael\\b: It seems so. The question is why."
end

GameData::Cutscene.define :ch8_marks_react do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.camera_flash 10
  
  scene.message "\\i[Three thrones. Three crowns. Three guardians.]"
  scene.message "\\i[And in the distance... a shadowy prison.]"
  
  scene.message "\\bLyra\\b: Did you see that?!"
  scene.message "\\bKael\\b: Thrones... and something locked away."
  scene.message "\\b\\PN\\b: It felt like a warning."
  
  scene.message "\\bLyra\\b: What's in that prison?"
  scene.message "\\bKael\\b: I don't know."
  scene.message "\\bKael\\b: But someone's trying to open it."
end

GameData::Cutscene.define :ch8_pokemon_reactions do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bWillow\\b: Vee? Vee vee?"
  scene.message "\\bLyra\\b: I don't know either, Willow."
  
  scene.message "\\bShadow\\b: Zor..."
  scene.message "\\bKael\\b: She knows something's different."
  
  scene.message "\\b\\PN\\b: At least they still trust us."
  scene.message "\\bLyra\\b: They're our best friends."
  scene.message "\\bLyra\\b: Of course they trust us."
  
  scene.message "\\bKael\\b: *quietly* That's more than I've had before."
end

GameData::Cutscene.define :ch8_decision_to_continue do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bLyra\\b: So... we're really doing this?"
  scene.message "\\bLyra\\b: Going to the professor? Finding answers?"
  
  scene.message "\\bKael\\b: What's the alternative? Ignore it?"
  scene.message "\\bKael\\b: The cult won't stop looking for us."
  
  scene.message "\\b\\PN\\b: And we can't run forever."
  scene.message "\\b\\PN\\b: Better to know what we're dealing with."
  
  scene.message "\\bLyra\\b: You're right. Both of you."
  scene.message "\\bLyra\\b: I just... wish things could stay normal."
  
  scene.message "\\bKael\\b: Normal was never an option for people like us."
  
  scene.message "\\bLyra\\b: People like us?"
  
  scene.message "\\bKael\\b: Orphan. Farm girl. ..."
  scene.message "\\bKael\\b: We were never meant for ordinary lives."
  
  scene.message "\\b\\PN\\b: Then let's make ours extraordinary."
  scene.message "\\b\\PN\\b: Together."
end

GameData::Cutscene.define :ch8_marks_bond do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bLyra\\b: Whoa!"
  scene.message "\\bKael\\b: Don't move. Let it happen."
  
  scene.message "\\bLyra\\b: I felt... I felt both of you."
  scene.message "\\bKael\\b: The marks link us somehow."
  
  scene.message "\\b\\PN\\b: We really are connected."
end

GameData::Cutscene.define :ch8_departure_scene do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  scene.message "\\bLyra\\b: Professor Aldric's lab is half a day away."
  scene.message "\\bKael\\b: Then we should move."
  
  scene.message "\\b\\PN\\b: Let's go get some answers."
end
