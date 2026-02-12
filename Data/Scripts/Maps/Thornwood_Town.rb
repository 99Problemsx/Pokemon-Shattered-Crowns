#===============================================================================
# Thornwood Town - Cutscenes
# Extracted from Main_Story.rb Chapter 3
#===============================================================================

GameData::Cutscene.define :ch3_road_to_thornwood do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  scene.message "\\bLyra\\b: *skipping ahead* I love this time of year!"
  scene.message "\\bLyra\\b: The leaves, the smell, the festivals!"
  
  scene.message "\\bKael\\b: It's just dying vegetation."
  scene.message "\\bLyra\\b: Way to ruin the magic, Kael."
  
  scene.message "\\b\\PN\\b: What's special about Thornwood Town?"
  
  scene.message "\\bLyra\\b: It's where they hold the Festival of Crowns!"
  scene.message "\\bLyra\\b: Every year they celebrate the legend of the guardians!"
  
  scene.message "\\bKael\\b: Superstitious nonsense."
  scene.message "\\bLyra\\b: You'll see! It's amazing!"
  
  scene.message "\\bKael\\b: ...Don't look at me like that."
end

GameData::Cutscene.define :ch3_thornwood_entrance do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\bLyra\\b: *gasping* It's even more beautiful than I remembered!"
  scene.message "\\bLyra\\b: I came here as a kid with my parents..."
  
  scene.message "\\b\\PN\\b: Your parents?"
  
  scene.message "\\bLyra\\b: They... they're not around anymore."
  scene.message "\\bLyra\\b: It's okay! That was a long time ago."
  scene.message "\\bLyra\\b: Grandma raised me. And Elena helped too."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: The festival looks... adequate."
end

GameData::Cutscene.define :ch3_festival_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\bLyra\\b: Look at all the decorations!"
  scene.message "\\bLyra\\b: The Festival of Crowns is my favorite!"
  
  scene.message "\\bKael\\b: What's the point of all this?"
  
  scene.message "\\bLyra\\b: It celebrates the legend of the three guardians!"
  scene.message "\\bLyra\\b: Grandma used to tell me stories..."
  
  scene.message "\\b\\PN\\b: Let's check out the stalls."
end

GameData::Cutscene.define :ch3_festival_food do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\bLyra\\b: *drooling* I want one of everything!"
  scene.message "\\bKael\\b: That's nutritionally irresponsible."
  scene.message "\\bLyra\\b: Live a little, Kael!"
  
  scene.message "\\bKael\\b: *eating quietly* ...Not bad."
  scene.message "\\bLyra\\b: Ha! I knew you'd like it!"
  
  scene.message "\\b\\PN\\b: This is nice. The three of us together."
  scene.message "\\bLyra\\b: The best team ever!"
  scene.message "\\bKael\\b: ...Adequate team."
  scene.message "\\bLyra\\b: I'll take it!"
end

GameData::Cutscene.define :ch3_pokemon_contest do |scene|
  scene.play_bgm 'Pokemon RSE - Contest'
  
  scene.message "\\bHost\\b: Next up—who wants to enter their partner?"
  scene.message "\\bLyra\\b: Ooh! Willow wants to try! Right, Willow?"
  scene.message "\\bWillow\\b: Vee!!"
  
  scene.message "\\bKael\\b: *sighing* She's going to embarrass us."
  scene.message "\\b\\PN\\b: Let her have fun."
  
  scene.message "\\bHost\\b: Amazing! What a darling Eevee!"
  scene.message "\\bHost\\b: Third place goes to... Willow!"
  
  scene.message "\\bLyra\\b: *running back* We got third! Not bad for our first try!"
  scene.message "\\bKael\\b: Participation is the first step to mediocrity."
  scene.message "\\bLyra\\b: Party pooper."
  scene.message "\\b\\PN\\b: I thought Willow was great!"
  scene.message "\\bWillow\\b: *preening proudly* Vee!"
end

GameData::Cutscene.define :ch3_festival_games do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\bLyra\\b: Ooh, a balloon pop game!"
  scene.message "\\bLyra\\b: Winner gets a giant Eevee plushie!"
  
  scene.message "\\bKael\\b: Waste of time."
  scene.message "\\bLyra\\b: Come on, it'll be fun!"
  
  scene.message "\\bLyra\\b: Whoa! How did you—"
  scene.message "\\bKael\\b: I grew up needing good aim."
  
  scene.message "\\bLyra\\b: F-for me?!"
  scene.message "\\bKael\\b: I don't need it. You obviously do."
  
  scene.message "\\bLyra\\b: *hugging plushie* Thank you, Kael!"
  scene.message "\\bKael\\b: Whatever."
end

GameData::Cutscene.define :ch3_strength_test do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\bLyra\\b: \\PN, you should try!"
  scene.message "\\b\\PN\\b: Alright, let's see..."
  
  scene.message "\\bBooth Owner\\b: A winner! Take your pick!"
  
  scene.message "\\bLyra\\b: Ooh, pretty! What does it represent?"
  scene.message "\\bBooth Owner\\b: The three guardians, of course!"
  scene.message "\\bBooth Owner\\b: Wear it for good luck!"
  
  scene.message "\\bKael\\b: *narrowing eyes* Interesting design..."
end

GameData::Cutscene.define :ch3_mask_merchant do |scene|
  scene.play_bgm 'Pokemon RSE - Slateport City'
  
  scene.message "\\bMask Merchant\\b: Ah, young travelers!"
  scene.message "\\bMask Merchant\\b: Pick a mask—it reveals your true nature!"
  
  scene.message "\\bLyra\\b: Ooh, fun! I want the Sylveon mask!"
  scene.message "\\bMask Merchant\\b: The fairy mask... you seek connection with others."
  
  scene.message "\\bKael\\b: *picking Zoroark mask* ...This one."
  scene.message "\\bMask Merchant\\b: The illusionist... you hide your true self."
  scene.message "\\bKael\\b: *flinching* That's—"
  
  scene.message "\\bMask Merchant\\b: And you, young one?"
  
  scene.message "\\bMask Merchant\\b: *eyes widening* ...The Guardian Mask."
  scene.message "\\bMask Merchant\\b: I... I don't remember making that one."
  scene.message "\\bMask Merchant\\b: Take it. No charge. It was waiting for you."
  
  scene.message "\\b\\PN\\b: Waiting...?"
end

GameData::Cutscene.define :ch3_festival_story do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\bOld Storyteller\\b: Gather 'round, children!"
  scene.message "\\bOld Storyteller\\b: Let me tell you the legend of the Shattered Crowns..."
  
  scene.message "\\bOld Storyteller\\b: Long ago, three guardians protected our world."
  scene.message "\\bOld Storyteller\\b: Each wore a crown of divine power."
  scene.message "\\bOld Storyteller\\b: But a great evil coveted their strength..."
  scene.message "\\bOld Storyteller\\b: In a battle that shook the heavens..."
  scene.message "\\bOld Storyteller\\b: The crowns were shattered!"
  
  scene.message "\\bLyra\\b: Ooh, spooky!"
  scene.message "\\bKael\\b: It's just a fairy tale."
end

GameData::Cutscene.define :ch3_storyteller_prophecy do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\bOld Storyteller\\b: But the legend doesn't end there..."
  scene.message "\\bOld Storyteller\\b: The ancients spoke of a prophecy."
  
  scene.message "\\bOld Storyteller\\b: 'When shadows rise and crowns awaken...'"
  scene.message "\\bOld Storyteller\\b: 'Three souls bound by fate shall stand.'"
  scene.message "\\bOld Storyteller\\b: 'Heart of light, mind of shadow, will of flame...'"
  scene.message "\\bOld Storyteller\\b: 'Together they restore what darkness unmade.'"
  
  scene.message "\\bLyra\\b: Three souls..."
  scene.message "\\bKael\\b: It's a coincidence."
  
  scene.message "\\bOld Storyteller\\b: Perhaps. Or perhaps... the prophecy has begun."
end

GameData::Cutscene.define :ch3_ragnar_festival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\b\\PN\\b: Ragnar?!"
  
  scene.message "\\bRagnar\\b: *mouth full* Oh hey \\PN!"
  scene.message "\\bRagnar\\b: *swallows* Great festival, right?!"
  
  scene.message "\\bLyra\\b: Is he... a friend of yours?"
  
  scene.message "\\b\\PN\\b: Unfortunately."
  
  scene.message "\\bRagnar\\b: HEY! I heard that!"
  scene.message "\\bRagnar\\b: Oh, you're Lyra! \\PN mentioned you!"
  
  scene.message "\\bLyra\\b: They did?"
  
  scene.message "\\bRagnar\\b: Yeah! Said you're really nice!"
  scene.message "\\bRagnar\\b: Unlike THIS grumpy one!"
  
  scene.message "\\bKael\\b: Who are you?"
  scene.message "\\bRagnar\\b: Your new best friend! Obviously!"
end

GameData::Cutscene.define :ch3_dance_festival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\bShadow\\b: Zor!"
  
  scene.message "\\bKael\\b: Not you too..."
  scene.message "\\bKael\\b: *sighing heavily* Fine. ONE dance."
  
  scene.message "\\bKael\\b: ...This is ridiculous."
  scene.message "\\bLyra\\b: But you're having fun! Admit it!"
  scene.message "\\bKael\\b: ...Maybe."
end

GameData::Cutscene.define :ch3_firework_setup do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  scene.message "\\bLyra\\b: Elena... I wish she was here."
  scene.message "\\bKael\\b: Where is she now?"
  scene.message "\\bLyra\\b: Training somewhere. Being a hero."
  scene.message "\\bLyra\\b: She's always been stronger than me."
  
  scene.message "\\b\\PN\\b: Strength isn't everything."
  scene.message "\\bLyra\\b: *smiling* Thanks, \\PN."
end

GameData::Cutscene.define :ch3_festival_night do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  scene.message "\\bLyra\\b: This was nice. We should do this more often."
  scene.message "\\bKael\\b: ...It wasn't terrible."
  
  scene.message "\\b\\PN\\b: High praise from you, Kael."
  scene.message "\\bKael\\b: Don't push it."
  
  scene.message "\\bLyra\\b: You know... that story about the guardians..."
  scene.message "\\bLyra\\b: Grandma used to tell it differently."
  
  scene.message "\\b\\PN\\b: How so?"
  
  scene.message "\\bLyra\\b: She said the guardians aren't gone."
  scene.message "\\bLyra\\b: They're sleeping. Waiting for the right people."
  scene.message "\\bLyra\\b: 'Chosen Ones' she called them."
  
  scene.message "\\bKael\\b: Fairy tales don't have 'Chosen Ones' in real life."
  
  scene.message "\\bLyra\\b: Maybe not. But wouldn't it be cool?"
  scene.message "\\bLyra\\b: To be chosen for something special?"
end

GameData::Cutscene.define :ch3_shared_dream_again do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.message "\\bVoice\\b: The time draws near..."
  scene.message "\\bVoice\\b: Find the first fragment before darkness does."
  scene.message "\\bVoice\\b: The forest temple holds what you seek."
  
  scene.message "\\bKael\\b: ...The forest temple."
  scene.message "\\bLyra\\b: You heard it too?"
  scene.message "\\b\\PN\\b: All three of us."
  
  scene.message "\\bKael\\b: This is beyond coincidence now."
  scene.message "\\bKael\\b: Something is deliberately contacting us."
end

GameData::Cutscene.define :ch3_shadow_stalker do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\bHooded Figure\\b: ...Soon."
end

GameData::Cutscene.define :ch3_departure_gift do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bOld Woman\\b: For your journey, young ones."
  scene.message "\\bOld Woman\\b: The path ahead is dark, but you carry light."
  
  scene.message "\\bLyra\\b: Thank you, but who—"
  
  scene.message "\\bKael\\b: That's not normal."
  scene.message "\\bKael\\b: Normal crystals don't glow."
  
  scene.message "\\b\\PN\\b: Nothing about this journey is normal."
  
  scene.message "\\bLyra\\b: Well... here we go!"
  scene.message "\\bKael\\b: Stay alert. Something tells me the real journey starts now."
end
