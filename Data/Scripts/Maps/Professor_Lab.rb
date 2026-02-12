#===============================================================================
# Professor Lab - Cutscenes
# Extracted from Main_Story.rb Chapter 1
#===============================================================================

GameData::Cutscene.define :ch1_lab_arrival do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.fade_out 20
  scene.wait 20
  scene.fade_in 20
  scene.camera_pan :up, 2, 2
  scene.wait 30
  scene.show_animation :CENTRAL_MACHINE, 15
  scene.wait 20
  
  scene.message "\\bRagnar\\b: Whoa... so cool..."
  
  scene.message "\\bProfessor Aldric\\b: Ah! Right on time!"
  scene.message "\\bProfessor Aldric\\b: Both of you! Come in, come in!"
  
  scene.move :PROFESSOR, [:face_down], wait: true
  scene.show_emotion :PROFESSOR, :note
  scene.wait 20
end

GameData::Cutscene.define :ch1_professor_talk do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\bProfessor Aldric\\b: Before we begin..."
  scene.message "\\bProfessor Aldric\\b: I want you to understand something."
  
  scene.message "\\bProfessor Aldric\\b: Being a trainer isn't just about battles."
  scene.message "\\bProfessor Aldric\\b: It's about partnership. Trust. Friendship."
  
  scene.message "\\bProfessor Aldric\\b: Your Pokémon will be your companion."
  scene.message "\\bProfessor Aldric\\b: Through good times and bad."
  scene.message "\\bProfessor Aldric\\b: Treat them with respect."
  
  scene.message "\\b\\PN\\b: I understand, Professor."
  
  scene.message "\\bProfessor Aldric\\b: *nodding* Good."
  scene.message "\\bProfessor Aldric\\b: Your father understood that too."
  scene.message "\\bProfessor Aldric\\b: You have his spirit."
end

GameData::Cutscene.define :ch1_get_starter do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\bProfessor Aldric\\b: Ah, \\PN! Perfect timing!"
  scene.message "\\bProfessor Aldric\\b: I have three Pokémon here, each one special."
  scene.message "\\bProfessor Aldric\\b: Choose wisely - this partner will be with you forever."
end

GameData::Cutscene.define :ch1_starter_bond do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.play_se 'Audio/SE/Ball Open'
  scene.camera_flash 10
  scene.show_animation :PLAYER, 40
  scene.wait 30
  scene.play_se 'Cries/STARTER_CRY_PLACEHOLDER'
  scene.show_emotion :PLAYER, :heart
  scene.wait 20
  
  scene.message "\\b\\PN\\b: Hey there, partner."
  scene.message "\\b\\PN\\b: Looks like we're going to be together for a long time."
  
  scene.jump :STARTER, 0, 0
  scene.show_emotion :STARTER, :heart
  scene.wait 20
  
  scene.message "\\bProfessor Aldric\\b: *smiling* A perfect match."
  scene.message "\\bProfessor Aldric\\b: I knew it would be."
  
  scene.wait 30
  scene.camera_flash 10, Color.new(255, 255, 200, 100)
  scene.wait 10
end

GameData::Cutscene.define :ch1_ragnar_starter do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bRagnar\\b: Okay, my turn! MY TURN!"
  
  scene.jump :RAGNAR, 0, 0
  scene.jump :RAGNAR, 0, 0
  scene.show_emotion :RAGNAR, :exclamation
  scene.wait 20
  
  scene.message "\\bRagnar\\b: This one! I can feel it!"
  
  scene.play_se 'Audio/SE/Ball Open'
  scene.camera_flash 10
  scene.show_animation :RAGNAR, 40
  scene.wait 30
  scene.play_se 'Cries/PIKACHU'
  scene.show_animation :RAGNAR, 3
  scene.wait 20
  
  scene.message "\\bRagnar\\b: PERFECT! A Pikachu!"
  scene.message "\\bRagnar\\b: We're gonna be UNSTOPPABLE!"
  
  scene.message "\\bPikachu\\b: Pika!"
  
  scene.jump :PIKACHU, 0, 0
  scene.show_emotion :PIKACHU, :heart
  scene.show_emotion :RAGNAR, :heart
  scene.wait 20
  
  scene.message "\\bProfessor Aldric\\b: *chuckling* Two excellent pairs."
  scene.message "\\bProfessor Aldric\\b: I expect great things from both of you."
end

GameData::Cutscene.define :ch1_receive_pokedex do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\bProfessor Aldric\\b: One more thing before you go."
  
  scene.play_se 'Audio/SE/Item Get'
  scene.show_animation :PLAYER, 22
  scene.wait 20
  
  scene.message "\\bProfessor Aldric\\b: This is the Pokédex."
  scene.message "\\bProfessor Aldric\\b: It records data on every Pokémon you encounter."
  scene.message "\\bProfessor Aldric\\b: I'd appreciate it if you could help complete it."
  
  scene.message "\\b\\PN\\b: Leave it to me, Professor!"
  
  scene.message "\\bProfessor Aldric\\b: I'm also giving you these Pokéballs."
  scene.message "\\bProfessor Aldric\\b: Use them to catch wild Pokémon."
  
  scene.script { pbReceiveItem(:POKEBALL, 5) }
  
  scene.message "\\bProfessor Aldric\\b: Now go, \\PN."
  scene.message "\\bProfessor Aldric\\b: Your adventure awaits!"
end
