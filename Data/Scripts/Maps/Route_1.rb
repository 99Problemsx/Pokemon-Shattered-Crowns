#===============================================================================
# Route 1 - Cutscenes
# Extracted from Main_Story.rb Chapter 1
#===============================================================================

GameData::Cutscene.define :ch1_first_wild_battle do |scene|
  scene.play_bgm 'Pokemon XY - Wild Battle'
  
  scene.play_se 'Audio/SE/Jump Small'
  scene.show_emotion :PLAYER, :exclamation
  scene.show_animation :RATTATA, 1
  scene.play_se 'Cries/RATTATA'
  scene.wait 30
  
  scene.message "\\b\\PN\\b: This is it! Our first battle!"
  scene.message "\\b\\PN\\b: Let's go, partner!"
  
  scene.show_animation :PLAYER, 1
  scene.camera_shake 2, 20
  scene.wait 30
  
  scene.message "\\b\\PN\\b: Great job! You're amazing!"
end

GameData::Cutscene.define :ch1_strange_dream do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.camera_tint :sepia, 60
  scene.wait 60
  scene.play_se 'Audio/SE/Magic'
  scene.camera_flash 30
  scene.wait 30
  scene.message "\\ts[]'Soon...'"
  
  scene.fade_in
end

GameData::Cutscene.define :ch1_dream_details do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.camera_shake 1, 60
  scene.play_se 'Audio/SE/Roar'
  scene.wait 60
  
  scene.message "\\b\\PN\\b: (What does it mean?)"
  
  scene.show_emotion :PARTNER, :heart
  scene.wait 20
  
  scene.message "\\b\\PN\\b: *petting* It's okay, buddy."
  scene.message "\\b\\PN\\b: Probably just a weird dream."
end

GameData::Cutscene.define :ch1_route_exploration do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.camera_pan :right, 5, 2
  scene.wait 60
  scene.camera_reset
  scene.wait 20
  
  scene.message "\\b\\PN\\b: The world is so big..."
  scene.message "\\b\\PN\\b: I can't wait to see all of it."
  
  scene.jump :PARTNER, 0, 0
  scene.move :PARTNER, [:step_right, :step_right], wait: true
  scene.wait 20
  
  scene.camera_pan :up, 3, 3
  scene.wait 40
  scene.camera_reset
  scene.wait 20
end
