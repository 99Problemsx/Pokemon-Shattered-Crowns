#===============================================================================
# Verdantia Town - Cutscenes
# Extracted from Main_Story.rb Chapter 4
#===============================================================================

GameData::Cutscene.define :ch4_first_town_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\bLyra\\b: Finally! A bed! Real food!"
  scene.message "\\bKael\\b: And a library. I need to research those symbols."
  
  scene.message "\\b\\PN\\b: First things first—let's check into the Pokémon Center."
  
  scene.message "\\bNurse Joy\\b: Welcome, trainers!"
  scene.message "\\bNurse Joy\\b: You look like you've had quite a day!"
  
  scene.message "\\bLyra\\b: You have no idea..."
end

GameData::Cutscene.define :ch4_ragnar_appears do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bRagnar\\b: \\PN! THERE YOU ARE!"
  
  scene.message "\\bRagnar\\b: I've been looking EVERYWHERE for you!"
  scene.message "\\bRagnar\\b: I already beat the first Gym!"
  
  scene.message "\\b\\PN\\b: Already?"
  
  scene.message "\\bRagnar\\b: YEP! Fern was tough, but we crushed it!"
  scene.message "\\bRagnar\\b: *notices Lyra and Kael* Oh! You made friends!"
  
  scene.message "\\bLyra\\b: Hi! I'm Lyra!"
  scene.message "\\bKael\\b: ...Kael."
  
  scene.message "\\bRagnar\\b: Cool! I'm Ragnar!"
  scene.message "\\bRagnar\\b: \\PN's been my rival since we were kids!"
  scene.message "\\bRagnar\\b: I'm gonna beat them to the Championship!"
  
  scene.message "\\bKael\\b: *to you* Is he always like this?"
  scene.message "\\b\\PN\\b: Unfortunately, yes."
  
  scene.message "\\bRagnar\\b: HEY! I heard that!"
  scene.message "\\bRagnar\\b: Anyway, I'm not sticking around!"
  scene.message "\\bRagnar\\b: I've got badges to collect!"
  
  scene.message "\\bRagnar\\b: But \\PN—don't fall too far behind!"
  scene.message "\\bRagnar\\b: Our rematch is gonna be LEGENDARY!"
  
  scene.message "\\bLyra\\b: *giggling* I like him!"
  scene.message "\\bKael\\b: *sighing* I don't."
end

GameData::Cutscene.define :ch4_gym_leader_intro do |scene|
  scene.play_bgm 'Pokemon XY - Gym'
  
  scene.message "\\bFern\\b: Welcome, young trainers!"
  scene.message "\\bFern\\b: I sense potential in all three of you."
  
  scene.message "\\bLyra\\b: Thank you! We're here to challenge the Gym!"
  
  scene.message "\\bFern\\b: Wonderful! But first..."
  scene.message "\\bFern\\b: Tell me—why do you want to become strong?"
  
  scene.message "\\bLyra\\b: To protect the people I love!"
  scene.message "\\bKael\\b: To find answers."
  scene.message "\\b\\PN\\b: To become someone who can make a difference."
  
  scene.message "\\bFern\\b: *smiling* Good answers, all of them."
  scene.message "\\bFern\\b: Strength without purpose is just destruction."
  scene.message "\\bFern\\b: Remember that, whatever path you walk."
end

GameData::Cutscene.define :ch4_gym1_prep do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bLyra\\b: The first Gym! I'm so nervous!"
  scene.message "\\bKael\\b: Nervousness is a waste of energy."
  scene.message "\\bKael\\b: Either you're prepared or you're not."
  
  scene.message "\\bLyra\\b: *pouting* Could you be supportive for once?"
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: You'll do fine."
  
  scene.message "\\bLyra\\b: *surprised* Was that... encouragement?"
  scene.message "\\bKael\\b: Don't get used to it."
  
  scene.message "\\b\\PN\\b: *laughing* Let's all do our best!"
  scene.message "\\bLyra\\b: Together!"
  scene.message "\\bKael\\b: ...Together."
end

GameData::Cutscene.define :ch4_gym_battle do |scene|
  scene.play_bgm 'Pokemon XY - Gym Leader Battle'
  
  scene.message "\\bFern\\b: Feel the rhythm of the forest!"
  scene.message "\\bFern\\b: Leafeon, Leaf Blade!"
  
  scene.message "\\bFern\\b: You adapt quickly!"
  scene.message "\\bFern\\b: But can you handle this?"
end

GameData::Cutscene.define :ch4_gym1_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory!'
  
  scene.message "\\bFern\\b: Impressive! You've got real potential!"
  scene.message "\\bFern\\b: Here, take the Forest Badge!"
  
  scene.message "\\bLyra\\b: We did it! All three of us!"
  scene.message "\\bKael\\b: *small nod* Not bad."
  
  scene.message "\\b\\PN\\b: One down, seven to go!"
  
  scene.set_switch SW::BADGE_1, true
end

GameData::Cutscene.define :ch4_fern_warning do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bFern\\b: I sensed something unusual during our battle."
  scene.message "\\bFern\\b: A power dormant within you three."
  
  scene.message "\\b\\PN\\b: What kind of power?"
  
  scene.message "\\bFern\\b: I don't know. But the forest knows."
  scene.message "\\bFern\\b: The plants whispered when you entered."
  scene.message "\\bFern\\b: They haven't done that in centuries."
  
  scene.message "\\bKael\\b: ...Centuries?"
  
  scene.message "\\bFern\\b: There are old stories. Older than the League."
  scene.message "\\bFern\\b: About chosen ones who would awaken the guardians."
  scene.message "\\bFern\\b: Be careful on your journey."
  scene.message "\\bFern\\b: Not everyone welcomes change."
end

GameData::Cutscene.define :ch4_evening_reflection do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  scene.message "\\bLyra\\b: We actually won our first Badge!"
  scene.message "\\bLyra\\b: I can't believe it!"
  
  scene.message "\\bKael\\b: Believe it. You earned it."
  
  scene.message "\\b\\PN\\b: We all did. Together."
  
  scene.message "\\bLyra\\b: *yawning* Best. Day. Ever."
  scene.message "\\bLyra\\b: Even with the scary forest stuff."
  
  scene.message "\\bKael\\b: That 'scary forest stuff' is why we're here."
  scene.message "\\bKael\\b: The tablet, the dreams, Fern's warning..."
  scene.message "\\bKael\\b: It's all connected."
  
  scene.message "\\b\\PN\\b: Then we'll figure it out. Together."
end
