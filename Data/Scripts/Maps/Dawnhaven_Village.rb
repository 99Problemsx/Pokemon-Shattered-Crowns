#===============================================================================
# Dawnhaven Village - Cutscenes
# Extracted from Main_Story.rb Chapter 1
#===============================================================================

GameData::Cutscene.define :ch1_wake_up do |scene|
  scene.fade_in
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  scene.message "\\bMom\\b: \\PN! Time to wake up!"
  scene.message "\\bMom\\b: Professor Aldric is waiting for you at the lab!"
  scene.message "\\bMom\\b: Today's the day you get your first Pokémon!"
  
  scene.wait 60
  
  scene.show_emotion :PLAYER, :exclamation
  scene.wait 30
  scene.turn_up :PLAYER
  scene.turn_left :PLAYER
  scene.turn_right :PLAYER
  scene.turn_down :PLAYER
  scene.show_emotion :PLAYER, :music
  scene.wait 20
  
  scene.message "\\b\\PN\\b: *yawning* Finally..."
  scene.message "\\b\\PN\\b: Today is the day!"
end

GameData::Cutscene.define :ch1_morning_routine do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  scene.message "\\b\\PN\\b: (I've been waiting for this day my whole life.)"
  scene.message "\\b\\PN\\b: (Today... everything changes.)"
  
  scene.fade_out 30
  scene.play_se 'Audio/SE/Equip'
  scene.wait 30
  scene.fade_in 30
  scene.show_animation :PLAYER, 4
  scene.wait 20
end

GameData::Cutscene.define :ch1_breakfast_with_family do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  scene.camera_pan :down, 2, 4
  scene.wait 20
  scene.show_emotion :MOM, :heart
  scene.wait 10
  scene.show_emotion :DAD, :note
  scene.wait 20
  
  scene.message "\\bMom (Aurora)\\b: Eat up! Can't start an adventure on an empty stomach!"
  scene.message "\\bDad (Marcus)\\b: Your mother's right. Trust me."
  scene.message "\\bDad (Marcus)\\b: I learned that the hard way in my Champion days."
  
  scene.message "\\b\\PN\\b: Dad, you've told that story a hundred times."
  
  scene.message "\\bDad (Marcus)\\b: And I'll tell it a hundred more!"
  scene.message "\\bMom (Aurora)\\b: *rolling eyes* Here we go..."
  
  scene.message "\\bDad (Marcus)\\b: Elite Four, final battle. I was starving."
  scene.message "\\bDad (Marcus)\\b: Almost lost because my stomach growled louder than my Charizard!"
  
  scene.message "\\bMom (Aurora)\\b: That's not quite how I remember it."
  scene.message "\\bDad (Marcus)\\b: Artistic license, dear."
end

GameData::Cutscene.define :ch1_dad_gift do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bDad (Marcus)\\b: \\PN. Before you go."
  scene.move :DAD, [:step_toward_player], wait: true
  scene.play_se 'Audio/SE/Item Get'
  scene.show_animation :DAD, 20
  scene.wait 20
  
  scene.message "\\bDad (Marcus)\\b: This was my first partner's child."
  scene.message "\\bDad (Marcus)\\b: Raised her myself after the egg hatched."
  scene.message "\\bDad (Marcus)\\b: She insisted on going with you."
  
  scene.message "\\b\\PN\\b: Dad... I can't take—"
  
  scene.message "\\bDad (Marcus)\\b: You can. And you will."
  scene.message "\\bDad (Marcus)\\b: I was Champion once. Your mother saved the world with me."
  scene.message "\\bDad (Marcus)\\b: Twice."
  
  scene.message "\\bMom (Aurora)\\b: *from the kitchen* Three times if you count the Hoenn incident!"
  
  scene.message "\\bDad (Marcus)\\b: *smiling* The point is..."
  scene.message "\\bDad (Marcus)\\b: We won't hold you back. This is YOUR journey."
  scene.message "\\bDad (Marcus)\\b: But when you need us... we'll be there."
  
  scene.message "\\bMom (Aurora)\\b: Always."
  
  scene.move :MOM, [:step_toward_player], wait: true
  scene.show_emotion :PLAYER, :heart
  scene.show_emotion :MOM, :heart
  scene.show_emotion :DAD, :heart
  scene.wait 40
end

GameData::Cutscene.define :ch1_walk_to_lab do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  scene.message "\\bOld Man\\b: Off to get your starter, \\PN?"
  scene.message "\\bOld Man\\b: Good luck out there!"
  
  scene.message "\\bYoung Girl\\b: Mommy, mommy! \\PN's gonna be a trainer!"
  scene.message "\\bMother\\b: Maybe someday you will too, dear."
  
  scene.camera_pan :up, 5, 2
  scene.wait 60
  scene.camera_reset
  scene.wait 20
end

GameData::Cutscene.define :ch1_village_memories do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  scene.camera_pan :right, 3, 3
  scene.wait 40
  scene.play_se 'Audio/SE/Splash'
  scene.wait 20
  scene.camera_pan :down, 3, 3
  scene.play_se 'Audio/SE/Sheep'
  scene.wait 40
  scene.camera_reset
  
  scene.message "\\b\\PN\\b: (I'm going to miss this place...)"
end

GameData::Cutscene.define :ch1_ragnar_appears do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bRagnar\\b: YO! \\PN! WAIT UP!"
  
  scene.show_emotion :PLAYER, :exclamation
  scene.turn_toward_event :PLAYER, :RAGNAR
  scene.move :RAGNAR, [:step_toward_player, :step_toward_player, :step_toward_player, :jump_in_place], speed: 5
  scene.wait 10
  
  scene.message "\\bRagnar\\b: *panting* You weren't... gonna leave... without me!"
  
  scene.message "\\b\\PN\\b: I was just getting a head start."
  
  scene.message "\\bRagnar\\b: HA! Classic \\PN!"
  scene.message "\\bRagnar\\b: Always trying to be first!"
  scene.message "\\bRagnar\\b: Well NOT TODAY!"
  
  scene.show_emotion :RAGNAR, :idea
  scene.jump :RAGNAR, 0, 0
  scene.wait 20
  
  scene.message "\\bRagnar\\b: Let's go get our starters TOGETHER!"
  scene.message "\\bRagnar\\b: And then I'll beat you in our first battle!"
  
  scene.message "\\b\\PN\\b: We'll see about that."
end

GameData::Cutscene.define :ch1_first_rival_battle do |scene|
  scene.play_bgm 'Pokemon RSE - Rival Battle'
  
  scene.turn_toward_event :RAGNAR, :PLAYER
  scene.show_emotion :RAGNAR, :exclamation
  scene.move :RAGNAR, [:jump_in_place], wait: true
  scene.wait 10
  
  scene.message "\\bRagnar\\b: Hey \\PN!"
  scene.message "\\bRagnar\\b: We've got our partners now..."
  scene.message "\\bRagnar\\b: So there's only ONE thing to do!"
  
  scene.message "\\b\\PN\\b: You want to battle already?"
  
  scene.message "\\bRagnar\\b: DUH!"
  scene.message "\\bRagnar\\b: We've been waiting our whole lives for this!"
  scene.message "\\bRagnar\\b: First one to beat the other STARTS with the advantage!"
  
  scene.message "\\bPikachu\\b: Pika pika!"
  
  scene.play_se 'Cries/STARTER_CRY_PLACEHOLDER'
  scene.show_animation :PLAYER, 1
  scene.wait 20
  
  scene.message "\\b\\PN\\b: You're on, Ragnar."
  
  scene.trainer_battle :RIVAL, "Ragnar", 0
end

GameData::Cutscene.define :ch1_after_rival_battle do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bRagnar\\b: *laughing* Man, that was AWESOME!"
  scene.message "\\bRagnar\\b: Win or lose, that was our first real battle!"
  
  scene.message "\\b\\PN\\b: It was a good fight."
  
  scene.message "\\bRagnar\\b: This is just the beginning, \\PN!"
  scene.message "\\bRagnar\\b: By the time we reach the Pokémon League..."
  scene.message "\\bRagnar\\b: I'll be WAY stronger!"
  
  scene.message "\\b\\PN\\b: We'll see about that."
  
  scene.message "\\bRagnar\\b: *grinning* That's the spirit!"
  scene.message "\\bRagnar\\b: Catch you later, rival!"
  
  scene.move :RAGNAR, [:step_right, :step_right, :step_right, :step_up, :step_up, :step_up], speed: 5, wait: true
  scene.remove_event :RAGNAR
  scene.wait 20
  
  scene.message "\\b\\PN\\b: (Same old Ragnar...)"
  scene.message "\\b\\PN\\b: (But I wouldn't have it any other way.)"
end

GameData::Cutscene.define :ch1_parents_goodbye do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.camera_pan_to_event :PARENTS_GATE, 60
  scene.wait 20
  scene.show_emotion :MOM, :heart
  scene.wait 10
  
  scene.message "\\bMom (Aurora)\\b: I packed some supplies."
  scene.message "\\bMom (Aurora)\\b: Potions, berries, and my field notes on local Pokémon."
  
  scene.message "\\bDad (Marcus)\\b: And I put in some battle tips."
  scene.message "\\bDad (Marcus)\\b: Learned a few things as Champion."
  
  scene.message "\\b\\PN\\b: You two are the best."
  
  scene.message "\\bMom (Aurora)\\b: *hugging you* We're proud of you already."
  scene.message "\\bDad (Marcus)\\b: *joining the hug* Go show them what our kid can do."
  
  scene.message "\\bMom (Aurora)\\b: And remember..."
  scene.message "\\bDad (Marcus)\\b: When you need us..."
  scene.message "\\bBoth\\b: We'll be there."
  
  scene.message "\\bRagnar\\b: *waving from down the road* SEE YA AT THE GYM, \\PN!"
  scene.message "\\bRagnar\\b: DON'T KEEP ME WAITING!"
  
  scene.message "\\bDad (Marcus)\\b: *chuckling* That kid has energy."
  scene.message "\\bMom (Aurora)\\b: Good. \\PN will need a rival to push them."
  
  scene.move :PLAYER, [:step_down, :step_down, :step_down], wait: true
  scene.fade_out 60
  scene.wait 30
end
