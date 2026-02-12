#===============================================================================
# Mt. Corona - Mountain Path - Cutscenes
# Extracted from Main_Story.rb Chapter 10 (Journey to Summit Temple)
#===============================================================================

GameData::Cutscene.define :ch10_ragnar_surprise do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bRagnar\\b: \\PN! You're heading up the mountain too?!"
  
  scene.message "\\b\\PN\\b: Ragnar? What are you doing here?"
  
  scene.message "\\bRagnar\\b: There's a rare Pokémon up there!"
  scene.message "\\bRagnar\\b: I'm gonna catch it and add it to my team!"
  
  scene.message "\\bKael\\b: *muttering* Of course he is."
  
  scene.message "\\bRagnar\\b: Hey Broody! Still traveling with \\PN, huh?"
  scene.message "\\bKael\\b: ...My name is Kael."
  scene.message "\\bRagnar\\b: Sure thing, Broody!"
  
  scene.message "\\bLyra\\b: *giggling* He's got you pegged."
  
  scene.message "\\bRagnar\\b: Anyway, \\PN—I've got FOUR badges now!"
  scene.message "\\bRagnar\\b: How many do YOU have?"
  
  scene.message "\\b\\PN\\b: ...Three."
  
  scene.message "\\bRagnar\\b: HA! I'm winning!"
  scene.message "\\bRagnar\\b: But hey, I heard some weird stuff is going on."
  scene.message "\\bRagnar\\b: Cult people? Ancient evils?"
  scene.message "\\bRagnar\\b: You guys wouldn't know anything about that, right?"
  
  scene.message "\\bRagnar\\b: ...Right?"
  
  scene.message "\\b\\PN\\b: It's complicated, Ragnar."
  
  scene.message "\\bRagnar\\b: *serious for once* ...Be careful up there, okay?"
  scene.message "\\bRagnar\\b: I've heard weird things about that mountain."
  
  scene.message "\\b\\PN\\b: We will."
  
  scene.message "\\bRagnar\\b: *grinning again* Good! Because I need my rival alive!"
  scene.message "\\bRagnar\\b: Can't beat you if you're dead!"
  
  scene.message "\\bLyra\\b: He really cares about you, doesn't he?"
  scene.message "\\b\\PN\\b: In his own way... yeah."
end

GameData::Cutscene.define :ch10_mountain_base do |scene|
  scene.play_bgm 'Pokemon RSE - Route 113'
  
  scene.message "\\bLyra\\b: *gulps* That's... really high."
  
  scene.message "\\bKael\\b: The Summit Temple is near the peak."
  scene.message "\\bKael\\b: Two days of climbing. Maybe three."
  
  scene.message "\\b\\PN\\b: Have you been here before?"
  
  scene.message "\\bKael\\b: No. But I know mountains."
  scene.message "\\bKael\\b: The orphanage sat at the base of the Ironpeak Range."
  scene.message "\\bKael\\b: I spent more time in those peaks than with people."
  
  scene.message "\\bLyra\\b: That sounds lonely..."
  
  scene.message "\\bKael\\b: It was peaceful."
  scene.message "\\bKael\\b: Mountains don't lie. Don't betray."
  scene.message "\\bKael\\b: They just... are."
  
  scene.message "\\b\\PN\\b: Well, we're not mountains."
  scene.message "\\b\\PN\\b: But you can count on us too."
end

GameData::Cutscene.define :ch10_first_ascent do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  scene.message "\\bKael\\b: Watch your footing here."
  scene.message "\\bKael\\b: The rocks are loose."
  
  scene.message "\\bLyra\\b: *slips* Whoa—!"
  
  scene.message "\\bKael\\b: Careful."
  
  scene.message "\\bLyra\\b: *blushing* T-Thanks..."
  
  scene.message "\\b\\PN\\b: (He barely moved, but his reflexes are incredible.)"
  
  scene.message "\\bKael\\b: I'll lead. Step where I step."
end

GameData::Cutscene.define :ch10_wild_encounter do |scene|
  scene.play_bgm 'Pokemon RSE - Wild Battle'
  
  scene.message "\\bLyra\\b: That's one angry Pokémon!"
  
  scene.message "\\bKael\\b: It's protecting its territory."
  scene.message "\\bKael\\b: We need to go around."
  
  scene.message "\\b\\PN\\b: There IS no around—it's blocking the only path!"
  
  scene.message "\\bKael\\b: Then we fight."
  scene.message "\\bKael\\b: Shadow!"
  
  scene.message "\\bKael\\b: *commanding* Foul Play!"
  
  scene.message "\\b\\PN\\b: It's backing down!"
  
  scene.message "\\bLyra\\b: That was amazing, Kael!"
  scene.message "\\bKael\\b: Just survival."
end

GameData::Cutscene.define :ch10_mountain_cave do |scene|
  scene.play_bgm 'Pokemon DPPT - Mt. Coronet'
  
  scene.message "\\bLyra\\b: Where did this weather come from?!"
  
  scene.message "\\bKael\\b: Mountain storms. They're unpredictable."
  scene.message "\\bKael\\b: We wait it out."
  
  scene.message "\\b\\PN\\b: At least the cave is dry."
  
  scene.message "\\bLyra\\b: Hey, Shadow."
  scene.message "\\bLyra\\b: You don't have to sit alone."
  
  scene.message "\\b\\PN\\b: (Even Shadow is learning to trust.)"
end

GameData::Cutscene.define :ch10_campfire_bond do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  scene.message "\\bLyra\\b: *shivering* It's freezing up here!"
  
  scene.message "\\bLyra\\b: *surprised* Kael...?"
  scene.message "\\bKael\\b: You were cold."
  scene.message "\\bLyra\\b: But you'll—"
  scene.message "\\bKael\\b: I don't get cold."
  
  scene.message "\\b\\PN\\b: (Something's definitely growing between those two.)"
  
  scene.message "\\bLyra\\b: Tell me something, Kael."
  scene.message "\\bLyra\\b: Something about yourself."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: I grew up in an orphanage."
  scene.message "\\bKael\\b: The mountains behind it were my escape."
  
  scene.message "\\bLyra\\b: *softly* I'm sorry..."
  scene.message "\\bKael\\b: Don't be. It made me who I am."
end

GameData::Cutscene.define :ch10_lyra_opens_up do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: I was scared of everything as a kid."
  scene.message "\\bLyra\\b: The dark. Thunder. Being alone."
  
  scene.message "\\bKael\\b: You don't seem scared now."
  
  scene.message "\\bLyra\\b: Elena fixed that."
  scene.message "\\bLyra\\b: She'd tell me stories to distract me."
  scene.message "\\bLyra\\b: Hold me during storms."
  
  scene.message "\\bLyra\\b: When Dad left... she became everything."
  scene.message "\\bLyra\\b: Mom, Dad, sister—all in one."
  
  scene.message "\\b\\PN\\b: She sounds amazing."
  
  scene.message "\\bLyra\\b: She is. She really is."
  scene.message "\\bLyra\\b: That's why I need to get stronger."
  scene.message "\\bLyra\\b: So someday I can protect HER."
  
  scene.message "\\bKael\\b: ...I understand."
  scene.message "\\bKael\\b: Wanting to protect someone."
end

GameData::Cutscene.define :ch10_stargazing do |scene|
  scene.play_bgm 'Pokemon DPPT - Lake'
  
  scene.message "\\bLyra\\b: *gasps* It's beautiful..."
  
  scene.message "\\b\\PN\\b: I've never seen so many stars."
  
  scene.message "\\bKael\\b: In the mountains, there's no light pollution."
  scene.message "\\bKael\\b: You see the sky as it truly is."
  
  scene.message "\\bKael\\b: That's the Three Guardians."
  scene.message "\\bKael\\b: Or at least, that's what people used to call it."
  
  scene.message "\\bLyra\\b: The same Guardians from the legends?"
  
  scene.message "\\bKael\\b: Probably."
  scene.message "\\bKael\\b: Ancient peoples saw them everywhere."
  scene.message "\\bKael\\b: In the stars. In the mountains. In themselves."
  
  scene.message "\\b\\PN\\b: And now they're in us."
end
