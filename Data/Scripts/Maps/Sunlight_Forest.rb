#===============================================================================
# Sunlight Forest - First Guardian Named (Xerneas) - Cutscenes
# Extracted from Main_Story.rb Chapter 14
#===============================================================================

GameData::Cutscene.define :ch14_approaching_forest do |scene|
  scene.play_bgm 'Pokemon XY - Santalune Forest'
  
  scene.message "\\bLyra\\b: *breathing deeply* It's beautiful..."
  scene.message "\\bLyra\\b: I can feel something. Calling me."
  
  scene.message "\\bKael\\b: Your Guardian's influence."
  scene.message "\\bKael\\b: This forest is connected to Xerneas."
  
  scene.message "\\b\\PN\\b: Can you follow the feeling?"
  
  scene.message "\\bLyra\\b: I think so..."
  scene.message "\\bLyra\\b: It's like warmth pulling at my heart."
  
  scene.message "\\bKael\\b: *quietly* The power is already manifesting."
  scene.message "\\b\\PN\\b: Is that... normal?"
  scene.message "\\bKael\\b: I don't think anything about us is normal anymore."
end

GameData::Cutscene.define :ch14_forest_wildlife do |scene|
  scene.play_bgm 'Pokemon XY - Santalune Forest'
  
  scene.message "\\bLyra\\b: *giggling* Hello, little one!"
  
  scene.message "\\bKael\\b: They sense Xerneas in you."
  scene.message "\\bKael\\b: Life recognizes life."
  
  scene.message "\\bLyra\\b: It's like they're escorting us!"
  
  scene.message "\\b\\PN\\b: Maybe they are."
end

GameData::Cutscene.define :ch14_ragnar_encounter do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bRagnar\\b: *mouth full* Mm! \\PN!"
  
  scene.message "\\b\\PN\\b: Ragnar? What are you doing here?"
  
  scene.message "\\bRagnar\\b: *swallowing* Heard there's a forest up ahead!"
  scene.message "\\bRagnar\\b: Wanted to catch some rare Pokémon!"
  
  scene.message "\\bKael\\b: You should avoid that forest."
  
  scene.message "\\bRagnar\\b: Huh? Why?"
  
  scene.message "\\bLyra\\b: It's... dangerous right now."
  scene.message "\\bLyra\\b: There's been strange activity."
  
  scene.message "\\bRagnar\\b: *standing up* The cult stuff?"
  scene.message "\\bRagnar\\b: I've seen those creeps around."
  
  scene.message "\\b\\PN\\b: Then you know why you should stay away."
  
  scene.message "\\bRagnar\\b: *grumbling* Fine, fine."
  scene.message "\\bRagnar\\b: But you better tell me what happens!"
  scene.message "\\bRagnar\\b: I hate being left out of the cool stuff!"
end

GameData::Cutscene.define :ch14_forest_shrine do |scene|
  scene.play_bgm 'Pokemon DPPT - Lake'
  
  scene.message "\\bLyra\\b: *awed* This place..."
  
  scene.message "\\bKael\\b: The second seal point."
  scene.message "\\bKael\\b: Where Xerneas's power anchors Hoopa's prison."
  
  scene.message "\\b\\PN\\b: Is the seal still intact?"
  
  scene.message "\\bKael\\b: Weakened, but holding."
  scene.message "\\bKael\\b: If Lyra can commune with Xerneas..."
  scene.message "\\bKael\\b: She might be able to strengthen it."
  
  scene.message "\\bLyra\\b: How do I do that?"
  
  scene.message "\\bKael\\b: That... you'll have to figure out."
  scene.message "\\bKael\\b: Connect with your Guardian."
end

GameData::Cutscene.define :ch14_lyra_meditates do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: (Xerneas... can you hear me?)"
  scene.message "\\bLyra\\b: (I'm here. At your shrine.)"
  scene.message "\\bLyra\\b: (Please... help me understand.)"
  
  scene.message "\\bKael\\b: *stepping back* It's working..."
  
  scene.message "\\b\\PN\\b: Lyra?"
end

GameData::Cutscene.define :ch14_xerneas_realm do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  scene.message "\\bXerneas\\b: Lyra. Child of the light."
  scene.message "\\bXerneas\\b: You have come at last."
  
  scene.message "\\bLyra\\b: I... I don't know what to do."
  scene.message "\\bLyra\\b: Everyone expects me to be special."
  scene.message "\\bLyra\\b: But I'm just... me."
  
  scene.message "\\bXerneas\\b: 'Just you' is precisely what I chose."
  scene.message "\\bXerneas\\b: Not power. Not ambition."
  scene.message "\\bXerneas\\b: But heart. Compassion. Love."
  
  scene.message "\\bLyra\\b: Love?"
  
  scene.message "\\bXerneas\\b: You love without condition."
  scene.message "\\bXerneas\\b: Your sister. Your grandmother."
  scene.message "\\bXerneas\\b: Your friends. Your Pokémon."
  scene.message "\\bXerneas\\b: Even the cold one... especially him."
  
  scene.message "\\bLyra\\b: *blushing* I don't—"
  
  scene.message "\\bXerneas\\b: *gentle laughter* You cannot hide from me, child."
  scene.message "\\bXerneas\\b: I am Life. I see all bonds."
end

GameData::Cutscene.define :ch14_xerneas_named do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  scene.message "\\bXerneas\\b: I have many names."
  scene.message "\\bXerneas\\b: The Life-Giver. The Renewal."
  scene.message "\\bXerneas\\b: But in ages past, I was called Moira."
  
  scene.message "\\bLyra\\b: Moira... you were human?"
  
  scene.message "\\bXerneas\\b: A healer. In the time before time."
  scene.message "\\bXerneas\\b: I could not bear to see suffering."
  scene.message "\\bXerneas\\b: So I became something that could end it."
end
