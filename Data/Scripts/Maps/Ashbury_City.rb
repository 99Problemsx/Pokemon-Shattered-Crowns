#===============================================================================
# Ashbury City - Cutscenes
# Extracted from Main_Story.rb Chapter 6
#===============================================================================

GameData::Cutscene.define :ch6_new_city_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\bLyra\\b: Wow! It's huge!"
  scene.message "\\bLyra\\b: So many people! So many shops!"
  
  scene.message "\\bKael\\b: And many places for enemies to hide."
  scene.message "\\bLyra\\b: Can't you just enjoy things for once?"
  
  scene.message "\\b\\PN\\b: He has a point. Stay alert."
  scene.message "\\b\\PN\\b: After what happened at the library..."
  
  scene.message "\\bLyra\\b: *sighing* Fine. Alert AND excited."
end

GameData::Cutscene.define :ch6_cult_rumors do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\bCitizen\\b: They call themselves the Shattered Hand..."
  scene.message "\\bCitizen\\b: Weird cult stuff. Stay away from them."
  
  scene.message "\\bLyra\\b: Shattered Hand? Like the shattered crowns?"
  
  scene.message "\\bKael\\b: *eyes narrowing* Could be a coincidence."
  scene.message "\\bKael\\b: Or could be connected to everything else."
  
  scene.message "\\b\\PN\\b: Should we investigate?"
  
  scene.message "\\bKael\\b: Not yet. We don't know what we're dealing with."
  scene.message "\\bKael\\b: Let's keep our eyes open."
end

GameData::Cutscene.define :ch6_street_talk do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\bTrainer A\\b: My cousin saw them in the old district."
  scene.message "\\bTrainer A\\b: Said they had matching robes. A broken hand symbol."
  
  scene.message "\\bTrainer B\\b: Sounds like trouble. What do they want?"
  scene.message "\\bTrainer A\\b: Nobody knows. They just... watch."
  
  scene.message "\\bKael\\b: *leaning back* Interesting."
  scene.message "\\bLyra\\b: *whispering* Should we ask them more?"
  
  scene.message "\\b\\PN\\b: Not here. We'd draw attention."
  
  scene.message "\\bKael\\b: The old district. Worth investigating later."
end

GameData::Cutscene.define :ch6_ragnar_gym2 do |scene|
  scene.play_bgm 'Pokemon XY - Rival Theme'
  
  scene.message "\\bRagnar\\b: TWO BADGES, BABY!"
  
  scene.message "\\bRagnar\\b: Oh! \\PN! You're just getting here?"
  scene.message "\\bRagnar\\b: HA! I'm still ahead!"
  
  scene.message "\\b\\PN\\b: *sighing* Hi, Ragnar."
  
  scene.message "\\bLyra\\b: Is this your rival?"
  
  scene.message "\\bRagnar\\b: THE one and only!"
  scene.message "\\bRagnar\\b: Ragnar, future Champion, at your service!"
  
  scene.message "\\bKael\\b: ...Is he always like this?"
  
  scene.message "\\b\\PN\\b: Unfortunately."
  
  scene.message "\\bRagnar\\b: You love it!"
  scene.message "\\bRagnar\\b: Anyway, good luck in there!"
  scene.message "\\bRagnar\\b: Spark's tough, but nothing compared to ME!"
  
  scene.message "\\bLyra\\b: *giggling* I like him!"
  scene.message "\\bKael\\b: That's one word for it."
end

GameData::Cutscene.define :ch6_gym2_building do |scene|
  scene.play_bgm 'Pokemon XY - Gym'
  
  scene.message "\\bLyra\\b: It's so... shiny!"
  scene.message "\\bKael\\b: That's just the electrical discharge."
  scene.message "\\bLyra\\b: Still pretty!"
  
  scene.message "\\b\\PN\\b: Is everyone ready?"
  
  scene.message "\\bLyra\\b: Ready!"
  scene.message "\\bKael\\b: *nodding* Let's get this done."
end

GameData::Cutscene.define :ch6_gym2_prep do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'
  
  scene.message "\\bLyra\\b: \\PN? You seem distracted."
  
  scene.message "\\b\\PN\\b: Just thinking about everything."
  scene.message "\\b\\PN\\b: The symbols. The cult. The earthquakes."
  
  scene.message "\\bLyra\\b: I know. It's a lot."
  scene.message "\\bLyra\\b: But right now, let's focus on what we can control."
  
  scene.message "\\bKael\\b: The Gym. Then we investigate."
  scene.message "\\bKael\\b: One thing at a time."
  
  scene.message "\\b\\PN\\b: You're right. Let's do this."
end

GameData::Cutscene.define :ch6_gym2_leader_intro do |scene|
  scene.play_bgm 'Pokemon XY - Gym Leader'
  
  scene.message "\\bSpark\\b: Yo! Welcome to my Gym!"
  scene.message "\\bSpark\\b: I'm Spark! Let's see if you can handle the voltage!"
  
  scene.message "\\bLyra\\b: Ooh, he's cool!"
  scene.message "\\bKael\\b: *muttering* He's obnoxious."
  
  scene.message "\\bSpark\\b: I heard that! But I'll forgive you..."
  scene.message "\\bSpark\\b: If you can beat me in battle!"
  
  scene.message "\\b\\PN\\b: Bring it on!"
  
  scene.message "\\bSpark\\b: That's the spirit! Luxray, let's go!"
end

GameData::Cutscene.define :ch6_gym2_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory!'
  
  scene.message "\\bSpark\\b: Whoa! You're stronger than you look!"
  scene.message "\\bSpark\\b: Here—the Storm Badge! You earned it!"
  
  scene.message "\\bLyra\\b: Two badges! We're on a roll!"
  
  scene.message "\\bSpark\\b: Hey, word of advice?"
  scene.message "\\bSpark\\b: I've seen some weird folks around town."
  scene.message "\\bSpark\\b: Hooded types. They give me the creeps."
  scene.message "\\bSpark\\b: Watch yourselves out there."
  
  scene.message "\\bKael\\b: We've noticed them too."
  
  scene.message "\\bSpark\\b: Then be careful. Something's brewing."
  
  scene.set_switch SW::BADGE_2, true
end

GameData::Cutscene.define :ch6_being_followed do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\bLyra\\b: *whispering* \\PN... are those...?"
  scene.message "\\b\\PN\\b: *nodding* The Shattered Hand."
  
  scene.message "\\bKael\\b: They've been following us for hours."
  scene.message "\\bKael\\b: I counted three so far."
  
  scene.message "\\bLyra\\b: Why are they watching US?"
  
  scene.message "\\bKael\\b: We found that tablet."
  scene.message "\\bKael\\b: Maybe they noticed."
  
  scene.message "\\b\\PN\\b: Should we confront them?"
  
  scene.message "\\bKael\\b: Not here. Too public."
  scene.message "\\bKael\\b: Let's lead them somewhere isolated."
  scene.message "\\bKael\\b: Then WE become the hunters."
end

GameData::Cutscene.define :ch6_old_district do |scene|
  scene.play_bgm 'Pokemon RSE - Abandoned Ship'
  
  scene.message "\\bLyra\\b: This place is creepy..."
  scene.message "\\bWillow\\b: Vee... vee..."
  
  scene.message "\\bKael\\b: Perfect for a cult hideout."
  scene.message "\\bKael\\b: Stay close. Watch for movement."
  
  scene.message "\\b\\PN\\b: They're here. I can feel it."
  
  scene.message "\\bKael\\b: Good. Let them come to us."
end

GameData::Cutscene.define :ch6_shadow_encounter do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\bHooded Figure\\b: You shouldn't be here."
  
  scene.message "\\bKael\\b: We go where we please."
  
  scene.message "\\bHooded Figure\\b: The Chosen Ones should be protected..."
  scene.message "\\bHooded Figure\\b: Not wandering into danger."
  
  scene.message "\\bLyra\\b: Chosen Ones? What do you mean?"
  
  scene.message "\\bHooded Figure\\b: You'll understand soon."
  scene.message "\\bHooded Figure\\b: When the marks awaken."
  
  scene.message "\\b\\PN\\b: What marks? What's going on?!"
end

GameData::Cutscene.define :ch6_regrouping do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'
  
  scene.message "\\bLyra\\b: Chosen Ones. Marks. What does it all mean?"
  
  scene.message "\\bKael\\b: They believe something about us."
  scene.message "\\bKael\\b: Something connected to those guardians."
  
  scene.message "\\b\\PN\\b: But why? What makes us special?"
  
  scene.message "\\bKael\\b: I don't know. Yet."
  scene.message "\\bKael\\b: But I intend to find out."
  
  scene.message "\\bLyra\\b: Should we tell someone?"
  scene.message "\\bLyra\\b: Like Professor Aldric?"
  
  scene.message "\\b\\PN\\b: Good idea. He might know something."
  scene.message "\\b\\PN\\b: Let's contact him tomorrow."
end

GameData::Cutscene.define :ch6_viktor_intro do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bViktor\\b: Well, well! New challengers!"
  scene.message "\\bViktor\\b: I'm Viktor. The region's next Champion."
  
  scene.message "\\bKael\\b: *unimpressed* Never heard of you."
  
  scene.message "\\bViktor\\b: You will! Once I crush you in battle!"
  scene.message "\\bViktor\\b: I've already got two badges!"
  
  scene.message "\\bLyra\\b: So do we!"
  
  scene.message "\\bViktor\\b: Oho! Spirited one, aren't you?"
  
  scene.message "\\bViktor\\b: Tell you what—let's battle!"
  scene.message "\\bViktor\\b: Winner gets bragging rights!"
  
  scene.message "\\b\\PN\\b: You're on."
  
  scene.trainer_battle :RIVAL, "Viktor", 0
  
  scene.message "\\bViktor\\b: Not bad! But next time, I'll win!"
  scene.message "\\bViktor\\b: See you around, cuties!"
  
  scene.message "\\bKael\\b: *muttering* I don't like him."
  scene.message "\\bLyra\\b: *giggling* Is that jealousy?"
  scene.message "\\bKael\\b: No."
  scene.message "\\bLyra\\b: Your ears are red."
  scene.message "\\bKael\\b: They are NOT."
end

GameData::Cutscene.define :ch6_night_thoughts do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  scene.message "\\i[\\PN'S PERSPECTIVE]"
  
  scene.message "\\b\\PN\\b: (Chosen Ones. What does that mean?)"
  scene.message "\\b\\PN\\b: (Am I really part of something bigger?)"
  
  scene.message "\\b\\PN\\b: (Whatever's coming...)"
  scene.message "\\b\\PN\\b: (I'll protect them.)"
  scene.message "\\b\\PN\\b: (That's what I choose.)"
  
  scene.message "\\b\\PN\\b: Thanks, buddy."
  scene.message "\\b\\PN\\b: At least I have all of you."
end

GameData::Cutscene.define :ch6_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  scene.message "\\bLyra\\b: So where to next?"
  
  scene.message "\\bKael\\b: Professor Aldric's lab isn't far."
  scene.message "\\bKael\\b: We should update him on what we've found."
  
  scene.message "\\b\\PN\\b: And ask about the Shattered Hand."
  scene.message "\\b\\PN\\b: He's been studying old legends for years."
  
  scene.message "\\bLyra\\b: Sounds like a plan!"
end
