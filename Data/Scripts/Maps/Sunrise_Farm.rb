#===============================================================================
# Sunrise Farm - Cutscenes
# Extracted from Main_Story.rb Chapter 2
#===============================================================================

GameData::Cutscene.define :ch2_farm_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  scene.camera_pan :up, 4, 3
  scene.wait 40
  scene.play_se 'Audio/SE/Cow'
  scene.wait 20
  scene.camera_reset
  
  scene.message "\\b\\PN\\b: This must be the place."
  scene.message "\\b\\PN\\b: Lyra said to meet her here."
  
  scene.camera_pan_to_event :LYRA, 60
  scene.wait 20
  scene.show_emotion :LYRA, :heart
  scene.jump :LYRA, 0, 0
  scene.wait 20
  scene.camera_reset
end

GameData::Cutscene.define :ch2_meet_lyra do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bLyra\\b: \\PN! Over here!"
  scene.move :LYRA, [:step_left, :step_left, :step_down], wait: true
  scene.wait 10
  scene.show_animation :LYRA, 3
  scene.wait 10
  
  scene.message "\\bLyra\\b: This is Willow! Grandma gave her to me."
  scene.message "\\bLyra\\b: She's a little shy, but she's the sweetest!"
  scene.message "\\bWillow\\b: Vee..."
  
  scene.message "\\b\\PN\\b: She's adorable! Nice to meet you, Willow."
  
  scene.message "\\bLyra\\b: Hey, did you have any weird dreams last night?"
  scene.message "\\bLyra\\b: I had this strange dream about golden light..."
  
  if StoryChoices.enabled?
    choice = scene.script { 
      StoryChoices.make_decision(:ch2_share_dream, [
        "Yes, me too.",
        "No, not really."
      ]) 
    }
    
    if choice == 0
      scene.message "\\b\\PN\\b: Wait... me too. Golden light and broken pieces."
      scene.message "\\bLyra\\b: *eyes widening* Really? That's... amazing!"
      scene.message "\\bLyra\\b: It means we're connected somehow!"
    else
      scene.message "\\b\\PN\\b: No... I slept like a rock."
      scene.message "\\bLyra\\b: *disappointed* Oh. Just me then?"
      scene.message "\\bLyra\\b: Maybe I just ate too many berries before bed..."
    end
  else
    scene.message "\\b\\PN\\b: Wait... me too. Golden light and broken pieces."
  end
end

GameData::Cutscene.define :ch2_pokemon_introductions do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.move :PARTNER, [:step_toward_event, :WILLOW], wait: true
  scene.wait 20
  scene.show_emotion :PARTNER, :heart
  scene.jump :WILLOW, 0, 0
  scene.show_emotion :WILLOW, :music
  scene.wait 20
  
  scene.message "\\bLyra\\b: Aww! They're already friends!"
  scene.message "\\bWillow\\b: Vee vee!"
  
  scene.message "\\b\\PN\\b: Looks like they get along."
  
  scene.message "\\bLyra\\b: Pokémon are good judges of character."
  scene.message "\\bLyra\\b: If Willow likes your partner..."
  scene.message "\\bLyra\\b: Then you must be a good person!"
  
  scene.message "\\b\\PN\\b: *laughing* I hope so."
  
  scene.move :WILLOW, [:run_right, :run_right, :run_up], wait: false
  scene.move :PARTNER, [:wait, :wait, :run_right, :run_right, :run_up], wait: true
  scene.wait 20
  scene.show_emotion :LYRA, :heart
  scene.wait 20
end

GameData::Cutscene.define :ch2_ragnar_route do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.camera_pan_to_event :RAGNAR, 60
  scene.wait 20
  scene.show_emotion :RAGNAR, :sleep
  scene.wait 20
  
  scene.message "\\b\\PN\\b: Ragnar? You're ahead of me already?"
  
  scene.message "\\bRagnar\\b: Duh! I've been training non-stop!"
  scene.message "\\bRagnar\\b: Already caught two new partners!"
  
  scene.message "\\bRagnar\\b: How many have YOU caught?"
  
  scene.message "\\b\\PN\\b: I'm... taking my time."
  
  scene.message "\\bRagnar\\b: HA! Classic Broody!"
  scene.message "\\bRagnar\\b: Always overthinking everything!"
  
  scene.message "\\bRagnar\\b: Don't worry, I'll wait for you at the first Gym!"
  scene.message "\\bRagnar\\b: So I can watch you TRY to catch up!"
end

GameData::Cutscene.define :ch2_farm_tour do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: Let me show you around!"
  
  scene.message "\\bLyra\\b: We grow berries for the whole region!"
  scene.message "\\bLyra\\b: Grandma started this farm 40 years ago."
  
  scene.message "\\b\\PN\\b: It's amazing. So peaceful."
  
  scene.message "\\bLyra\\b: I love it here. But..."
  scene.message "\\bLyra\\b: I've always wanted to see more."
  
  scene.message "\\bLyra\\b: *laughing* Watch out for—"
  scene.message "\\bLyra\\b: —that one. Sorry!"
end

GameData::Cutscene.define :ch2_lyra_backstory do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.camera_tint :sepia, 120
  scene.move :LYRA, [:step_left, :step_left], wait: true
  scene.move :PLAYER, [:step_left, :step_left], wait: true
  scene.turn_down :LYRA
  scene.turn_down :PLAYER
  scene.wait 20
  
  scene.message "\\bLyra\\b: I've always loved this farm."
  scene.message "\\bLyra\\b: My parents... they're always traveling for work."
  scene.message "\\bLyra\\b: But Grandma's always here."
  
  scene.message "\\b\\PN\\b: That sounds nice. A real home."
  
  scene.message "\\bLyra\\b: It is! And now with Willow, I'm never lonely."
  scene.message "\\bWillow\\b: Vee vee!"
  
  scene.message "\\bLyra\\b: I want to become a Pokémon Nurse someday."
  scene.message "\\bLyra\\b: Help all the injured Pokémon I can."
  
  scene.message "\\b\\PN\\b: That's a wonderful dream."
  
  scene.message "\\bLyra\\b: What about you? What do you want to be?"
  
  scene.message "\\b\\PN\\b: Honestly? I just want to explore."
  scene.message "\\b\\PN\\b: See everything the world has to offer."
  
  scene.message "\\bLyra\\b: Then let's go on adventures together!"
end

GameData::Cutscene.define :ch2_lyra_sister_mention do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: Oh! I should tell you about my sister!"
  scene.message "\\bLyra\\b: Her name's Elena. She's amazing."
  
  scene.message "\\b\\PN\\b: Where is she?"
  
  scene.message "\\bLyra\\b: Traveling, like my parents."
  scene.message "\\bLyra\\b: She's a researcher. Studies ancient legends."
  
  scene.message "\\bLyra\\b: *proudly* She sends me letters from everywhere!"
  scene.message "\\bLyra\\b: The Eternal Forest. The Crown Mountains."
  scene.message "\\bLyra\\b: She's seen it all."
  
  scene.message "\\b\\PN\\b: She sounds brave."
  
  scene.message "\\bLyra\\b: She is! I want to be just like her someday."
  scene.message "\\bLyra\\b: Maybe we'll run into her on our journey!"
end

GameData::Cutscene.define :ch2_sunset_talk do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.camera_tint :sunset, 120
  scene.wait 60
  scene.camera_pan :up, 2, 5
  scene.wait 40
  scene.turn_up :LYRA
  scene.turn_up :PLAYER
  scene.wait 20
  
  scene.message "\\bLyra\\b: Beautiful, isn't it?"
  scene.message "\\b\\PN\\b: Yeah... really beautiful."
  
  scene.message "\\bLyra\\b: My parents used to watch sunsets with me."
  scene.message "\\bLyra\\b: Before they started traveling all the time."
  
  scene.message "\\b\\PN\\b: Do you miss them?"
  
  scene.message "\\bLyra\\b: *quietly* Every day."
  scene.message "\\bLyra\\b: But Grandma says they're doing important work."
  scene.message "\\bLyra\\b: Research that could help everyone."
  
  scene.message "\\b\\PN\\b: My dad was Champion once."
  scene.message "\\b\\PN\\b: He and my mom still go on adventures sometimes."
  
  scene.message "\\bLyra\\b: That's so cool! Champion parents!"
  scene.message "\\bLyra\\b: No wonder you want to explore!"
end

GameData::Cutscene.define :ch2_grandmother_warning do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  scene.camera_tint :reset, 60
  scene.wait 20
  scene.camera_pan_to_event :GRANDMOTHER, 60
  scene.move :GRANDMOTHER, [:step_down], wait: true
  scene.wait 20
  
  scene.message "\\bGrandmother\\b: You must be \\PN."
  scene.message "\\bGrandmother\\b: Lyra's told me all about you."
  
  scene.message "\\b\\PN\\b: It's nice to meet you, ma'am."
  
  scene.message "\\bGrandmother\\b: *studying you* Hmm..."
  scene.message "\\bGrandmother\\b: You have old eyes for someone so young."
  
  scene.message "\\b\\PN\\b: I... do?"
  
  scene.message "\\bGrandmother\\b: Take care of each other out there."
  scene.message "\\bGrandmother\\b: The world is changing."
  scene.message "\\bGrandmother\\b: And something tells me... you'll be at the center of it."
  
  scene.message "\\bLyra\\b: Grandma! Stop being cryptic!"
  scene.message "\\bGrandmother\\b: *laughs* Go on, you two. Have fun."
end

GameData::Cutscene.define :ch2_grandmother_stories do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  scene.camera_tint :night, 60
  scene.wait 60
  scene.play_se 'Audio/SE/Fire'
  scene.wait 20
  scene.turn_left :GRANDMOTHER
  scene.turn_right :LYRA
  scene.turn_right :PLAYER
  scene.wait 20
  
  scene.message "\\bGrandmother\\b: Long ago, this region was protected."
  scene.message "\\bGrandmother\\b: By three great guardians."
  
  scene.message "\\bLyra\\b: The crown story again?"
  scene.message "\\bGrandmother\\b: It's important, child."
  
  scene.message "\\bGrandmother\\b: They say the guardians sleep now."
  scene.message "\\bGrandmother\\b: Waiting for those worthy to awaken them."
  
  scene.message "\\b\\PN\\b: Who would be worthy?"
  
  scene.message "\\bGrandmother\\b: *mysterious smile* Those with pure hearts."
  scene.message "\\bGrandmother\\b: Those willing to sacrifice for others."
  scene.message "\\bGrandmother\\b: Those who forge unbreakable bonds."
  
  scene.show_animation :FIREPLACE, 10
  scene.camera_flash 30, Color.new(255, 100, 0, 50)
  scene.wait 30
  scene.play_se 'Audio/SE/Magic'
  scene.wait 20
end

GameData::Cutscene.define :ch2_shared_dream do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.fade_out
  
  scene.camera_tint :sepia, 60
  scene.wait 60
  scene.camera_pan_to_event :LYRA_DREAM, 0
  scene.show_animation :LYRA_DREAM, 4
  scene.wait 20
  scene.camera_pan :right, 3, 2
  scene.wait 40
  scene.show_animation :SHADOW_FIGURE, 4
  scene.wait 20
  
  scene.message "\\ts[]'Three must stand...'"
  scene.message "\\ts[]'Against the coming dark...'"
  
  scene.camera_tint :reset, 10
  scene.fade_in 60
  scene.wait 30
  scene.show_emotion :LYRA, :exclamation
  scene.wait 20
  
  scene.message "\\bLyra\\b: You had the dream too, didn't you?"
  scene.message "\\b\\PN\\b: The same one. With you in it."
  
  scene.message "\\bLyra\\b: And someone else..."
  scene.message "\\bLyra\\b: Who was the third person?"
  
  scene.fade_in
end

GameData::Cutscene.define :ch2_departure_farm do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.camera_tint :reset, 0
  scene.fade_in 60
  scene.wait 30
  scene.play_se 'Audio/SE/Bird'
  scene.wait 20
  
  scene.message "\\bGrandmother\\b: Take care of my granddaughter."
  scene.message "\\b\\PN\\b: I will. I promise."
  
  scene.message "\\bLyra\\b: Grandma, don't worry! I can take care of myself!"
  scene.message "\\bGrandmother\\b: I know, dear. But it's nice to have friends."
  
  scene.move :GRANDMOTHER, [:step_toward_event, :LYRA], wait: true
  scene.play_se 'Audio/SE/Item Get'
  scene.show_animation :LYRA, 22
  scene.wait 20
  
  scene.message "\\bGrandmother\\b: This belonged to your mother."
  scene.message "\\bGrandmother\\b: Keep it close."
  
  scene.message "\\bLyra\\b: *hugging her* I love you, Grandma."
  scene.message "\\bGrandmother\\b: Go make me proud."
end
