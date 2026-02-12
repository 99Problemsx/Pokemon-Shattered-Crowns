#===============================================================================
# Thornwood Forest - Cutscenes
# Extracted from Main_Story.rb Chapter 4
#===============================================================================

GameData::Cutscene.define :ch4_forest_path do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  scene.message "\\bLyra\\b: It's so pretty here!"
  scene.message "\\bWillow\\b: Vee!"
  
  scene.message "\\bKael\\b: Stay focused. Forests can be dangerous."
  scene.message "\\bLyra\\b: You worry too much, Kael."
  
  scene.message "\\b\\PN\\b: He has a point. We should stay alert."
end

GameData::Cutscene.define :ch4_strange_pokemon do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  scene.message "\\bLyra\\b: They're terrified! What's happening?"
  scene.message "\\bKael\\b: Something's driving them out."
  scene.message "\\bKael\\b: We should investigate."
  
  scene.message "\\b\\PN\\b: Agreed. Let's move carefully."
end

GameData::Cutscene.define :ch4_fleeing_pokemon do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  scene.message "\\bLyra\\b: I've never seen them act like this!"
  scene.message "\\bLyra\\b: *kneeling down* Hey, little one, what's wrong?"
  
  scene.message "\\bCaterpie\\b: Cat... cater..."
  
  scene.message "\\bKael\\b: It can't tell us anything useful."
  scene.message "\\bLyra\\b: It's still scared! We need to help!"
  
  scene.message "\\b\\PN\\b: We'll find the source and stop it."
  scene.message "\\b\\PN\\b: Lyra, can you calm it down?"
  
  scene.message "\\bLyra\\b: *nodding* Shh, it's okay, little guy..."
  scene.message "\\bLyra\\b: We'll protect you."
end

GameData::Cutscene.define :ch4_eerie_clearing do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\bKael\\b: The vegetation is distorted."
  scene.message "\\bKael\\b: Something is affecting the natural growth."
  
  scene.message "\\bLyra\\b: It feels... heavy here."
  scene.message "\\bLyra\\b: Like the air itself is sad."
  
  scene.message "\\bShadow\\b: Zor... zorua..."
  
  scene.message "\\bKael\\b: She senses something. Be ready."
end

GameData::Cutscene.define :ch4_ancient_tablet do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bLyra\\b: What is that?"
  scene.message "\\bKael\\b: Old. Very old."
  
  scene.message "\\bKael\\b: These symbols... I've never seen anything like them."
  scene.message "\\bKael\\b: But I've seen fragments in old books."
  
  scene.message "\\bLyra\\b: Can you read them?"
  scene.message "\\bKael\\b: Not yet. But I will."
  
  scene.message "\\b\\PN\\b: Let's bring this to Professor Aldric."
  scene.message "\\b\\PN\\b: He might know what it means."
end

GameData::Cutscene.define :ch4_tablet_reaction do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.camera_flash 10
  
  scene.message "\\b\\PN\\b: Did you see that?!"
  
  scene.message "\\bLyra\\b: See what? The light?"
  scene.message "\\bKael\\b: ...I saw something too."
  scene.message "\\bKael\\b: Fragments. Like the dreams."
  
  scene.message "\\bLyra\\b: I didn't see anything..."
  scene.message "\\bLyra\\b: Just felt really warm suddenly."
  
  scene.message "\\bKael\\b: Interesting. Different reactions."
  scene.message "\\bKael\\b: Perhaps we each connect to it differently."
end

GameData::Cutscene.define :ch4_pokemon_returning do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  scene.message "\\bLyra\\b: Look! They're coming back!"
  scene.message "\\bLyra\\b: Whatever was scaring them... stopped."
  
  scene.message "\\bKael\\b: Because we activated the tablet?"
  scene.message "\\bKael\\b: Or because something finished what it was doing?"
  
  scene.message "\\b\\PN\\b: Either way, the forest feels better now."
  
  scene.message "\\bLyra\\b: *releasing it* There you go, little one!"
  scene.message "\\bLyra\\b: You're safe now!"
end
