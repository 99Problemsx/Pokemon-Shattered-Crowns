#===============================================================================
# Frostheim City - Gym 3 - Cutscenes
# Extracted from Main_Story.rb Chapter 9 (Gym 3 - Frost)
#===============================================================================

GameData::Cutscene.define :ch9_gym3_prep do |scene|
  scene.play_bgm 'Pokemon XY - Gym'
  
  scene.message "\\bLyra\\b: Ice-type Gym?"
  scene.message "\\bLyra\\b: *shivering* Great..."
  
  scene.message "\\bKael\\b: Should be interesting."
  scene.message "\\bKael\\b: Shadow knows some Fire moves."
  
  scene.message "\\bLyra\\b: Show-off."
  
  scene.message "\\b\\PN\\b: Let's scout first."
  scene.message "\\b\\PN\\b: See what we're up against."
  
  scene.message "\\bGym Trainer\\b: Challengers? Brave."
  scene.message "\\bGym Trainer\\b: Leader Frost doesn't go easy on anyone."
  
  scene.message "\\bLyra\\b: Good! I don't want easy!"
  
  scene.message "\\bKael\\b: *quietly* Neither do I."
end

GameData::Cutscene.define :ch9_pre_battle_tension do |scene|
  scene.play_bgm 'Pokemon SwSh - Gym Leader Entrance'
  
  scene.message "\\bFrost\\b: Three challengers. All marked."
  scene.message "\\bFrost\\b: I've heard rumors about you."
  
  scene.message "\\b\\PN\\b: Rumors?"
  
  scene.message "\\bFrost\\b: The Shattered Hand is looking for you."
  scene.message "\\bFrost\\b: They've offered bounties."
  
  scene.message "\\bKael\\b: And?"
  
  scene.message "\\bFrost\\b: And I don't work for fanatics."
  scene.message "\\bFrost\\b: But I also don't give badges to the weak."
  scene.message "\\bFrost\\b: Show me what the marked can do."
  
  scene.message "\\bLyra\\b: Here we go..."
end

GameData::Cutscene.define :ch9_gym3_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory'
  
  scene.message "\\bFrost\\b: *smiling coldly* Impressive."
  scene.message "\\bFrost\\b: The marks aren't just decoration."
  
  scene.message "\\bFrost\\b: Take these. You've earned them."
  scene.message "\\bFrost\\b: And a word of warning..."
  
  scene.message "\\bFrost\\b: Mt. Corona is dangerous in winter."
  scene.message "\\bFrost\\b: The temple is guarded by more than just ice."
  scene.message "\\bFrost\\b: Be prepared for what you'll find there."
  
  scene.message "\\b\\PN\\b: Thank you for the advice."
  
  scene.message "\\bFrost\\b: Don't thank me yet."
  scene.message "\\bFrost\\b: Thank me when you survive."
end

GameData::Cutscene.define :ch9_night_before_mountain do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  scene.message "\\bLyra\\b: I can't sleep."
  scene.message "\\bLyra\\b: I keep thinking about what the Professor said."
  scene.message "\\bLyra\\b: About vessels... about the Great Betrayal."
  
  scene.message "\\bKael\\b: Humans betrayed beings of power."
  scene.message "\\bKael\\b: Shocking."
  
  scene.message "\\bLyra\\b: Kael... you really don't trust anyone, do you?"
  
  scene.message "\\bKael\\b: I trust Shadow."
  scene.message "\\bKael\\b: I trust... you two."
  scene.message "\\bKael\\b: That's enough."
  
  scene.message "\\b\\PN\\b: It's more than enough."
  scene.message "\\b\\PN\\b: Whatever's waiting up there..."
  scene.message "\\b\\PN\\b: We face it as three."
  
  scene.message "\\bLyra\\b: *smiling* Yeah. As three."
end

GameData::Cutscene.define :ch9_zacian_first_vision do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  scene.message "\\i[DREAM - YOUR VISION]"
  
  scene.message "\\bZacian\\b: So. You are the one who would bear my mark."
  
  scene.message "\\b\\PN\\b: (I can't move... the pressure is overwhelming...)"
  
  scene.message "\\bZacian\\b: Fear is natural. Even I know fear."
  scene.message "\\bZacian\\b: The fear of failing those I protect."
  scene.message "\\bZacian\\b: But you did not run. You stood."
  
  scene.message "\\bZacian\\b: I was once human, you know."
  scene.message "\\bZacian\\b: A warrior named Valdris."
  scene.message "\\bZacian\\b: I gave everything to protect this world."
  
  scene.message "\\b\\PN\\b: You... were human?"
  
  scene.message "\\bZacian\\b: We all were. The three of us."
  scene.message "\\bZacian\\b: We became more than human to save what we loved."
  scene.message "\\bZacian\\b: And in doing so... we lost what we loved."
  
  scene.message "\\b\\PN\\b: That sounds... lonely."
  
  scene.message "\\bZacian\\b: It is."
  scene.message "\\bZacian\\b: A thousand years of loneliness."
  scene.message "\\bZacian\\b: But now... perhaps..."
  
  scene.message "\\bZacian\\b: Will you make the same choice I made?"
  scene.message "\\bZacian\\b: To protect. To sacrifice. To stand."
  
  scene.message "\\b\\PN\\b: Yes."
  
  scene.message "\\bZacian\\b: We shall see."
  
  scene.camera_flash 30
  scene.fade_in
end

GameData::Cutscene.define :ch9_morning_departure do |scene|
  scene.play_bgm 'Pokemon RSE - Mt. Pyre'
  
  scene.message "\\bLyra\\b: \\PN? You look tired."
  
  scene.message "\\b\\PN\\b: I had a dream."
  scene.message "\\b\\PN\\b: About... Zacian."
  
  scene.message "\\bKael\\b: *sharply* You saw your Guardian?"
  
  scene.message "\\b\\PN\\b: It was human once. A warrior."
  scene.message "\\b\\PN\\b: It asked if I would make the same choice."
  
  scene.message "\\bLyra\\b: What choice?"
  
  scene.message "\\b\\PN\\b: To protect. To sacrifice."
  scene.message "\\b\\PN\\b: I said yes."
  
  scene.message "\\bKael\\b: I haven't seen mine yet."
  scene.message "\\bKael\\b: But I feel it watching."
  scene.message "\\bKael\\b: Waiting."
  
  scene.message "\\bLyra\\b: Me too..."
  scene.message "\\bLyra\\b: Something bright. Warm. Judging."
  
  scene.message "\\b\\PN\\b: Then let's go meet them."
  scene.message "\\b\\PN\\b: Together."
end
