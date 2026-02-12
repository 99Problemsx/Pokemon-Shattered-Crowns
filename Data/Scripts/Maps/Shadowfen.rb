#===============================================================================
# Shadowfen - Cutscenes
# Extracted from Main_Story.rb Chapter 2
#===============================================================================

GameData::Cutscene.define :ch2_road_to_shadowfen do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: I've heard there's someone else in Shadowfen."
  scene.message "\\bLyra\\b: Another trainer our age."
  
  scene.message "\\b\\PN\\b: Friend of yours?"
  
  scene.message "\\bLyra\\b: Not exactly... we've exchanged letters."
  scene.message "\\bLyra\\b: He's... intense."
  
  scene.message "\\b\\PN\\b: Intense how?"
  
  scene.message "\\bLyra\\b: You'll see."
end

GameData::Cutscene.define :ch2_shadowfen_arrival do |scene|
  scene.play_bgm 'Pokemon RSE - Abandoned Ship'
  
  scene.message "\\bLyra\\b: *shivering* This place is creepy..."
  scene.message "\\bWillow\\b: Vee..."
  
  scene.message "\\b\\PN\\b: Stay close. We don't know what's out there."
  
  scene.message "\\bLyra\\b: The library ruins should be up ahead."
  scene.message "\\bLyra\\b: That's where Kael said he'd be."
end

GameData::Cutscene.define :ch2_meet_kael do |scene|
  scene.message "\\bKael\\b: ...You're late."
  scene.message "\\bLyra\\b: Nice to see you too, grumpy!"
  scene.message "\\bKael\\b: ..."
  
  scene.message "\\bKael\\b: I heard you both had strange dreams."
  scene.message "\\bKael\\b: So did I. The same one."
  scene.message "\\bKael\\b: That's... statistically improbable."
  
  scene.message "\\b\\PN\\b: Three of us having the exact same dream? That's not coincidence."
  scene.message "\\b\\PN\\b: Something's going on."
end

GameData::Cutscene.define :ch2_kael_introduction do |scene|
  scene.play_bgm 'Pokemon RSE - Abandoned Ship'
  
  scene.message "\\bLyra\\b: Kael, this is \\PN!"
  scene.message "\\bKael\\b: I know. You mentioned them in your letters."
end
