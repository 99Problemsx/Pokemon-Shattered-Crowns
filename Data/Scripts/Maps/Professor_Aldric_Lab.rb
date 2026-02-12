#===============================================================================
# Professor Aldric Lab - Cutscenes
# Extracted from Main_Story.rb Chapter 9 (Seeking Answers)
#===============================================================================

GameData::Cutscene.define :ch9_journey_to_professor do |scene|
  scene.play_bgm 'Pokemon XY - Route 7'
  
  scene.message "\\bLyra\\b: I keep staring at my mark."
  scene.message "\\bLyra\\b: Every time I look away, I have to look again."
  
  scene.message "\\bKael\\b: Same."
  scene.message "\\bKael\\b: It's like having a question burned into your skin."
  
  scene.message "\\b\\PN\\b: At least we're getting answers soon."
  scene.message "\\b\\PN\\b: Professor Aldric studies ancient history."
  scene.message "\\b\\PN\\b: If anyone knows what these are, it's him."
  
  scene.message "\\bLyra\\b: You trust him?"
  
  scene.message "\\b\\PN\\b: Dad does. They collaborated on research years ago."
  scene.message "\\b\\PN\\b: Before Dad became Champion, he was a researcher too."
  
  scene.message "\\bKael\\b: Wait—your father is Champion Marcus?"
  scene.message "\\bKael\\b: THE Marcus?"
  
  scene.message "\\b\\PN\\b: *sheepishly* I... don't like to bring it up."
  
  scene.message "\\bLyra\\b: *jaw drops* Your dad is the CHAMPION?!"
  scene.message "\\bLyra\\b: Why didn't you tell us?!"
  
  scene.message "\\b\\PN\\b: I wanted you to like me for me."
  scene.message "\\b\\PN\\b: Not for who my father is."
  
  scene.message "\\bKael\\b: ...I can respect that."
end

GameData::Cutscene.define :ch9_campfire_confessions do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  scene.message "\\bLyra\\b: So... Champion's kid, huh?"
  scene.message "\\bLyra\\b: That explains the expensive gear."
  
  scene.message "\\b\\PN\\b: *laughs* Guilty as charged."
  
  scene.message "\\bKael\\b: My parents left me at an orphanage."
  scene.message "\\bKael\\b: I don't know if they're alive or dead."
  scene.message "\\bKael\\b: ...I tell myself I don't care."
  
  scene.message "\\bLyra\\b: Kael..."
  
  scene.message "\\bKael\\b: It's fine. Ancient history."
  scene.message "\\bKael\\b: Shadow's my family now."
  
  scene.message "\\bLyra\\b: My dad left when I was six."
  scene.message "\\bLyra\\b: Just... vanished one day."
  scene.message "\\bLyra\\b: Elena—my sister—she basically raised me."
  
  scene.message "\\b\\PN\\b: That must have been hard."
  
  scene.message "\\bLyra\\b: It was. But Elena never complained."
  scene.message "\\bLyra\\b: She always put me first."
  
  scene.message "\\bLyra\\b: That's why I have to become strong."
  scene.message "\\bLyra\\b: So I can protect her for once."
end

GameData::Cutscene.define :ch9_ragnar_splits do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bRagnar\\b: Those guys were SERIOUS."
  scene.message "\\bRagnar\\b: Like, cult-serious."
  
  scene.message "\\b\\PN\\b: Ragnar, listen..."
  
  scene.message "\\bRagnar\\b: Yeah, yeah, you can't tell me."
  scene.message "\\bRagnar\\b: I get it. Destiny stuff or whatever."
  
  scene.message "\\bRagnar\\b: But I'm gonna keep training."
  scene.message "\\bRagnar\\b: So when you DO need help..."
  scene.message "\\bRagnar\\b: I'll be strong enough to matter."
  
  scene.message "\\b\\PN\\b: Ragnar..."
  
  scene.message "\\bRagnar\\b: Don't get all mushy on me!"
  scene.message "\\bRagnar\\b: I've got Gyms to conquer!"
  scene.message "\\bRagnar\\b: I'll see you at the League!"
end

GameData::Cutscene.define :ch9_lab_arrival do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\bLab Assistant\\b: You must be the group Professor Aldric mentioned."
  scene.message "\\bLab Assistant\\b: He's been expecting you."
  scene.message "\\bLab Assistant\\b: ...Though I must say, you're all quite young."
  
  scene.message "\\bKael\\b: Age is irrelevant."
  scene.message "\\bKael\\b: Competence is what matters."
  
  scene.message "\\bLab Assistant\\b: *flustered* R-Right this way."
  
  scene.message "\\bLyra\\b: *whispering* This place is amazing..."
  
  scene.message "\\bProfessor Aldric\\b: Ah! Marcus's child!"
  scene.message "\\bProfessor Aldric\\b: You look just like your father did at your age."
  
  scene.message "\\b\\PN\\b: Professor Aldric. Thank you for seeing us."
  
  scene.message "\\bProfessor Aldric\\b: Thank ME? Child, you've brought me the discovery of a lifetime!"
  scene.message "\\bProfessor Aldric\\b: Now—show me these marks!"
end

GameData::Cutscene.define :ch9_mark_examination do |scene|
  scene.play_bgm 'Pokemon XY - Scientist Theme'
  
  scene.message "\\bProfessor Aldric\\b: Remarkable... truly remarkable."
  scene.message "\\bProfessor Aldric\\b: These symbols are ancient."
  scene.message "\\bProfessor Aldric\\b: I've seen fragments in texts, but never..."
  
  scene.message "\\bProfessor Aldric\\b: The energy readings are extraordinary."
  scene.message "\\bProfessor Aldric\\b: Each mark pulses with a unique signature."
  
  scene.message "\\b\\PN\\b: Do you know what they mean?"
  
  scene.message "\\bProfessor Aldric\\b: They appear to be... connection markers."
  scene.message "\\bProfessor Aldric\\b: Bonds between humans and divine entities."
  
  scene.message "\\bKael\\b: Divine entities?"
  
  scene.message "\\bProfessor Aldric\\b: Legendary Pokémon."
  scene.message "\\bProfessor Aldric\\b: Or something even older."
  
  scene.message "\\bLyra\\b: Older than Legendary Pokémon?"
  scene.message "\\bLyra\\b: What could possibly be older?"
  
  scene.message "\\bProfessor Aldric\\b: The Three Guardians."
  scene.message "\\bProfessor Aldric\\b: Beings who existed before recorded history."
  scene.message "\\bProfessor Aldric\\b: Legends say they were once human."
end

GameData::Cutscene.define :ch9_guardian_research do |scene|
  scene.play_bgm 'Pokemon DPPT - Lake'
  
  scene.message "\\bProfessor Aldric\\b: The Three Guardians appear across cultures."
  scene.message "\\bProfessor Aldric\\b: Different names. Different forms."
  scene.message "\\bProfessor Aldric\\b: But always three. Always together."
  
  scene.message "\\bProfessor Aldric\\b: One of steel and valor—the Sword."
  scene.message "\\bProfessor Aldric\\b: One of shadow and resolve—the Shield."
  scene.message "\\bProfessor Aldric\\b: One of light and judgment—the Crown."
  
  scene.message "\\bKael\\b: Sword... Shield... Crown."
  scene.message "\\bKael\\b: Like a king's regalia."
  
  scene.message "\\bProfessor Aldric\\b: Precisely! Some texts call them the Shattered Crown."
  scene.message "\\bProfessor Aldric\\b: A single crown, broken into three pieces."
  scene.message "\\bProfessor Aldric\\b: United, they could rule over all."
  
  scene.message "\\bLyra\\b: The Shattered Hand..."
  scene.message "\\bLyra\\b: They want to reform the crown."
  
  scene.message "\\bProfessor Aldric\\b: Which is why they hunt the marked."
  scene.message "\\bProfessor Aldric\\b: You three may be the key to everything."
end

GameData::Cutscene.define :ch9_history_lesson do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bProfessor Aldric\\b: A thousand years ago, the Guardians walked among us."
  scene.message "\\bProfessor Aldric\\b: They protected humanity from existential threats."
  
  scene.message "\\b\\PN\\b: What happened to them?"
  
  scene.message "\\bProfessor Aldric\\b: War."
  scene.message "\\bProfessor Aldric\\b: Humans wanted their power for themselves."
  scene.message "\\bProfessor Aldric\\b: The Great Betrayal, some texts call it."
  
  scene.message "\\bKael\\b: Humans betrayed the beings protecting them?"
  scene.message "\\bKael\\b: How predictable."
  
  scene.message "\\bProfessor Aldric\\b: The Guardians were... wounded."
  scene.message "\\bProfessor Aldric\\b: They sealed themselves away."
  scene.message "\\bProfessor Aldric\\b: Waiting for humans worthy of their trust."
  
  scene.message "\\bLyra\\b: And the marks...?"
  
  scene.message "\\bProfessor Aldric\\b: Signs that they've chosen again."
  scene.message "\\bProfessor Aldric\\b: After a millennium of silence."
  scene.message "\\bProfessor Aldric\\b: They've chosen the three of you."
end

GameData::Cutscene.define :ch9_summit_temple_direction do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\bLyra\\b: How do we learn more?"
  
  scene.message "\\bProfessor Aldric\\b: There are ancient texts in Mt. Corona."
  scene.message "\\bProfessor Aldric\\b: At the Summit Temple."
  scene.message "\\bProfessor Aldric\\b: If answers exist, they're there."
  
  scene.message "\\bProfessor Aldric\\b: The temple was built by the Guardians themselves."
  scene.message "\\bProfessor Aldric\\b: Or rather, by their first human vessels."
  
  scene.message "\\b\\PN\\b: Their first... vessels?"
  
  scene.message "\\bProfessor Aldric\\b: The Guardians could not take physical form forever."
  scene.message "\\bProfessor Aldric\\b: They needed human partners."
  scene.message "\\bProfessor Aldric\\b: The marked ones."
  
  scene.message "\\bKael\\b: So we're... vessels?"
  
  scene.message "\\bProfessor Aldric\\b: Potentially. If you accept the bond."
  scene.message "\\bProfessor Aldric\\b: The temple will reveal more."
  
  scene.message "\\bProfessor Aldric\\b: But be warned—"
  scene.message "\\bProfessor Aldric\\b: The Shattered Hand knows of the temple too."
  scene.message "\\bProfessor Aldric\\b: They will try to reach it before you."
end

GameData::Cutscene.define :ch9_aldric_gift do |scene|
  scene.play_bgm 'Pokemon DPPT - Emotion'
  
  scene.message "\\bProfessor Aldric\\b: Wait. I have something for each of you."
  
  scene.message "\\bProfessor Aldric\\b: Temple Keys."
  scene.message "\\bProfessor Aldric\\b: Fragments of the original Guardians' power."
  scene.message "\\bProfessor Aldric\\b: They will resonate with your marks."
  
  scene.message "\\bLyra\\b: It's... beautiful."
  
  scene.message "\\bKael\\b: *staring at his crystal* ...Thank you."
  
  scene.message "\\bProfessor Aldric\\b: Your father trusted me, \\PN."
  scene.message "\\bProfessor Aldric\\b: And now I trust you."
  scene.message "\\bProfessor Aldric\\b: Whatever happens at the temple..."
  scene.message "\\bProfessor Aldric\\b: Stay true to who you are."
end

GameData::Cutscene.define :ch9_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: I still can't believe it."
  scene.message "\\bLyra\\b: Ancient Guardians? Chosen vessels?"
  scene.message "\\bLyra\\b: It sounds like a fairy tale."
  
  scene.message "\\bKael\\b: Fairy tales don't leave marks on your skin."
  
  scene.message "\\b\\PN\\b: Whatever we are... we'll figure it out together."
  scene.message "\\b\\PN\\b: But first—the third Gym is on the way."
  
  scene.message "\\bLyra\\b: *brightening* Oh! Right!"
  scene.message "\\bLyra\\b: I almost forgot with all this legend stuff!"
  
  scene.message "\\bKael\\b: A welcome distraction."
  scene.message "\\bKael\\b: We should stay sharp."
  
  scene.message "\\b\\PN\\b: And keep getting stronger."
  scene.message "\\b\\PN\\b: Those cultists weren't pushovers."
end

GameData::Cutscene.define :ch9_gym3_prep do |scene|
  scene.play_bgm 'Pokemon XY - Gym'
  
  scene.message "\\bLyra\\b: Ice-type Gym?"
  scene.message "\\bLyra\\b: *shivering* Great..."
  
  scene.message "\\bKael\\b: Should be interesting."
  scene.message "\\bKael\\b: Shadow knows some Fire moves."
  
  scene.message "\\bLyra\\b: Show-off."
end
