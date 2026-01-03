#===============================================================================
# POKÉMON SHATTERED CROWNS - MAIN STORY QUESTS
#===============================================================================
# Story-driven quests from different protagonist perspectives
# Play as \PN, Lyra, or Kael during different story beats
#===============================================================================

#===============================================================================
# CHAPTER 1-3: BEGINNING (Play as \PN)
#===============================================================================

GameData::Quest.define :msq_ch1_home do |q|
  q.name "A New Beginning"
  q.description "Wake up, get your starter Pokémon, and begin your journey."
  q.type :main_story
  q.chapter 1
  q.playable_character :player
  
  q.objectives [
    { id: :wake_up, text: "Wake up and talk to Mom" },
    { id: :visit_lab, text: "Visit Professor Aldric's Lab" },
    { id: :choose_starter, text: "Choose your starter Pokémon" },
    { id: :first_battle, text: "Win your first battle" }
  ]
  
  q.on_complete do
    pbMessage("You've taken your first steps as a trainer!")
    pbMessage("Tomorrow, you'll meet up with Lyra and Kael...")
  end
end

GameData::Quest.define :msq_ch2_reunion do |q|
  q.name "The Reunion"
  q.description "Meet your childhood friends and discover you all had the same dream."
  q.type :main_story
  q.chapter 2
  q.playable_character :player
  
  q.objectives [
    { id: :meet_lyra, text: "Meet Lyra at her family's farm" },
    { id: :meet_kael, text: "Find Kael at the old library" },
    { id: :discuss_dreams, text: "Discuss the strange dreams" },
    { id: :gym_1, text: "Earn the first Gym Badge" }
  ]
end

GameData::Quest.define :msq_ch3_festival do |q|
  q.name "The Festival of Crowns"
  q.description "Attend the annual festival and hear the legend of the Shattered Crowns."
  q.type :main_story
  q.chapter 3
  q.playable_character :player
  
  q.objectives [
    { id: :arrive_festival, text: "Arrive at the festival with friends" },
    { id: :minigames, text: "Play festival minigames" },
    { id: :hear_story, text: "Listen to the storyteller's legend" },
    { id: :spot_cultists, text: "Notice the hooded figures" }
  ]
end

#===============================================================================
# CHAPTER 7: FIRST CULT ATTACK - Player Perspective
#===============================================================================

GameData::Quest.define :msq_ch7_ambush do |q|
  q.name "The Shattered Hand Strikes"
  q.description "Survive the first attack by the Shattered Hand cult in Whispering Woods."
  q.type :main_story
  q.chapter 7
  q.playable_character :player
  
  q.objectives [
    { id: :enter_forest, text: "Enter the Whispering Woods" },
    { id: :strange_silence, text: "Notice the unnatural silence" },
    { id: :ambush, text: "Survive the cult ambush" },
    { id: :face_vex, text: "Confront the mysterious cultist Vex" },
    { id: :escape, text: "Escape with your companions" }
  ]
end

#===============================================================================
# CHAPTER 7: LYRA'S PERSPECTIVE - First Cultist Attack
#===============================================================================

GameData::Quest.define :msq_ch7_lyra_fear do |q|
  q.name "Through Lyra's Eyes"
  q.description "Experience the cult attack from Lyra's perspective."
  q.type :main_story
  q.chapter 7
  q.playable_character :lyra  # PLAY AS LYRA
  
  q.objectives [
    { id: :travel_forest, text: "Travel through the forest with friends" },
    { id: :ambushed, text: "Get ambushed by the Shattered Hand" },
    { id: :protect_willow, text: "Protect Willow from danger" },
    { id: :support_pn, text: "Support \\PN in battle against Vex" }
  ]
  
  q.on_start do
    pbMessage("\\i[Perspective shifts to Lyra]")
    pbMessage("\\bLyra\\b: (I have a bad feeling about this forest...)")
    pbMessage("\\bLyra\\b: (Willow's been nervous all day...)")
  end
end

GameData::Cutscene.define :msq_lyra_perspective_ch7 do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[You are now playing as Lyra]"
  scene.message "The forest path felt darker than usual."
  scene.message "Willow trembled in your arms."
  
  scene.message "\\bLyra\\b: It's okay, Willow. We're safe with \\PN and Kael."
  scene.message "\\bWillow\\b: Vee... vee..."
  
  scene.message "\\bKael\\b: Something's wrong. It's too quiet."
  scene.message "\\b\\PN\\b: Stay alert, everyone."
  
  scene.message "\\bLyra\\b: (\\PN seems so confident...)"
  scene.message "\\bLyra\\b: (I wish I could be that brave.)"
  
  scene.message "Suddenly, hooded figures emerged from the shadows!"
  scene.message "\\bLyra\\b: W-Who are they?!"
  
  scene.message "\\bVex\\b: The Chosen Ones... at last."
  
  scene.message "\\bLyra\\b: (Chosen...? What does he mean?)"
  scene.message "\\bLyra\\b: (And why do I feel like I know that word...)"
end

#===============================================================================
# CHAPTER 9: WHAT ARE WE? - Seeking Answers
#===============================================================================

GameData::Quest.define :msq_ch9_professor do |q|
  q.name "Seeking Answers"
  q.description "Consult Professor about the strange marks that appeared on you."
  q.type :main_story
  q.chapter 9
  q.playable_character :player
  
  q.objectives [
    { id: :return_lab, text: "Return to Professor's lab" },
    { id: :show_marks, text: "Show the professor your marks" },
    { id: :learn_legend, text: "Learn about the Rune Legends" },
    { id: :gym_3, text: "Earn your third Gym Badge" },
    { id: :zacian_vision, text: "Experience your first guardian vision" }
  ]
end

#===============================================================================
# CHAPTER 10: MOUNTAIN JOURNEY - Player Perspective
#===============================================================================

GameData::Quest.define :msq_ch10_mountain do |q|
  q.name "The Ascent"
  q.description "Journey up Mt. Corona in search of the first temple."
  q.type :main_story
  q.chapter 10
  q.playable_character :player
  
  q.objectives [
    { id: :begin_climb, text: "Begin the climb up Mt. Corona" },
    { id: :campfire_bond, text: "Bond with companions at the campfire" },
    { id: :ancient_shrine, text: "Discover the ancient shrine" },
    { id: :kael_distant, text: "Notice Kael growing distant" }
  ]
end

#===============================================================================
# CHAPTER 10: KAEL'S PERSPECTIVE - Mountain Journey
#===============================================================================

GameData::Quest.define :msq_ch10_kael_past do |q|
  q.name "Through Kael's Eyes"
  q.description "Experience the mountain journey from Kael's perspective."
  q.type :main_story
  q.chapter 10
  q.playable_character :kael  # PLAY AS KAEL
  
  q.objectives [
    { id: :climb_mountain, text: "Lead the group up Mt. Corona" },
    { id: :protect_group, text: "Protect the group from wild Pokémon" },
    { id: :memory_flash, text: "Experience a memory of Mira" },
    { id: :reach_shrine, text: "Reach the ancient shrine" }
  ]
  
  q.on_start do
    pbMessage("\\i[Perspective shifts to Kael]")
    pbMessage("\\bKael\\b: (The mountain air reminds me of home...)")
    pbMessage("\\bKael\\b: (Before everything fell apart.)")
  end
end

GameData::Cutscene.define :msq_kael_perspective_ch10 do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "The path was treacherous, but you knew mountains."
  scene.message "Shadow stuck close to your side."
  
  scene.message "\\bLyra\\b: Kael, wait up! Some of us have shorter legs!"
  scene.message "\\bKael\\b: Then walk faster."
  
  scene.message "\\b\\PN\\b: *laughs* He's always like this."
  scene.message "\\bLyra\\b: We know. It's almost charming now."
  
  scene.message "\\bKael\\b: (Charming? What does she mean by that?)"
  scene.message "\\bKael\\b: (...Focus. The mission matters.)"
  
  scene.message "A familiar voice echoed in your mind..."
  scene.message "\\bMira's Voice\\b: Kael... don't shut them out..."
  
  scene.message "\\bKael\\b: ...!"
  scene.message "\\bLyra\\b: Kael? You okay?"
  scene.message "\\bKael\\b: ...Fine. Keep moving."
  
  scene.message "\\bKael\\b: (That voice... Mira?)"
  scene.message "\\bKael\\b: (No. She's gone. I need to focus.)"
end

#===============================================================================
# CHAPTER 14: LYRA'S HERITAGE - Play as Lyra
#===============================================================================

GameData::Quest.define :msq_ch14_lyra_heritage do |q|
  q.name "Lyra's Legacy"
  q.description "Learn about Lyra's family connection to Xerneas."
  q.type :main_story
  q.chapter 14
  q.playable_character :lyra
  
  q.objectives [
    { id: :return_farm, text: "Return to grandmother's farm" },
    { id: :family_secret, text: "Learn the family secret" },
    { id: :touch_heirloom, text: "Touch the ancient heirloom" },
    { id: :mark_glows, text: "Watch your mark glow" }
  ]
end

GameData::Cutscene.define :msq_lyra_heritage do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[You are now playing as Lyra]"
  scene.message "Grandmother's hands trembled as she opened the old chest."
  
  scene.message "\\bLyra\\b: Grandma, what is this?"
  scene.message "\\bGrandmother\\b: Our family's greatest secret, child."
  scene.message "\\bGrandmother\\b: We have served the Life Guardian for generations."
  
  scene.message "The heirloom pulsed with rainbow light..."
  scene.message "Your mark burned with familiar warmth."
  
  scene.message "\\bLyra\\b: *gasp* It's... it's responding to me!"
  scene.message "\\bGrandmother\\b: Because Xerneas chose you, dear."
  scene.message "\\bGrandmother\\b: Long before you were born."
  
  scene.message "\\bLyra\\b: (Xerneas... the guardian of life...)"
  scene.message "\\bLyra\\b: (Is this why I can feel others' emotions?)"
  scene.message "\\bLyra\\b: (Why I always want to help everyone?)"
  
  scene.message "Willow nuzzled against your leg, sensing your emotions."
  scene.message "\\bWillow\\b: Vee... vee!"
  
  scene.message "\\bLyra\\b: I understand now, Willow."
  scene.message "\\bLyra\\b: This is who I'm meant to be."
end

#===============================================================================
# CHAPTER 17: PLAYER'S TRIAL - Starter Nearly Dies
#===============================================================================

GameData::Quest.define :msq_ch17_starter_crisis do |q|
  q.name "The Darkest Hour"
  q.description "Your starter is critically injured protecting you from the cult."
  q.type :main_story
  q.chapter 17
  q.playable_character :player
  
  q.objectives [
    { id: :ambush, text: "Survive the cult ambush" },
    { id: :starter_hit, text: "Watch helplessly as your starter takes the hit" },
    { id: :rush_center, text: "Rush to the Pokémon Center" },
    { id: :wait, text: "Wait through the night" },
    { id: :relief, text: "Learn your partner will survive" }
  ]
end

#===============================================================================
# CHAPTER 22: LYRA'S SACRIFICE - Play as Lyra
#===============================================================================

GameData::Quest.define :msq_ch22_lyra_sacrifice do |q|
  q.name "Life Force"
  q.description "Sacrifice part of your life force to save the Eternal Forest."
  q.type :main_story
  q.chapter 22
  q.playable_character :lyra
  
  q.objectives [
    { id: :reach_tree, text: "Reach the World Tree" },
    { id: :meet_xerneas, text: "Meet Xerneas" },
    { id: :make_choice, text: "Choose to sacrifice your life force" },
    { id: :survive, text: "Barely survive the ordeal" }
  ]
end

GameData::Cutscene.define :msq_lyra_sacrifice do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  scene.message "\\i[You are now playing as Lyra]"
  scene.message "The World Tree was dying."
  scene.message "Corruption spread through its ancient bark."
  
  scene.message "\\bXerneas\\b: Child of Life... you know what must be done."
  scene.message "\\bLyra\\b: My life force... to cleanse the corruption."
  
  scene.message "\\bKael\\b: Lyra, don't! There has to be another way!"
  scene.message "\\b\\PN\\b: Lyra, we can find another solution!"
  
  scene.message "\\bLyra\\b: (Their voices... so worried for me...)"
  scene.message "\\bLyra\\b: (But I can feel the forest dying.)"
  scene.message "\\bLyra\\b: (Every creature, every plant, crying out...)"
  
  scene.message "\\bLyra\\b: I have to do this."
  scene.message "\\bLyra\\b: This is who I am."
  
  scene.message "You placed your hands on the World Tree..."
  scene.message "Rainbow light poured from your body..."
  
  scene.camera_flash 30
  
  scene.message "Pain. Overwhelming pain."
  scene.message "But also... warmth. Hope. Healing."
  
  scene.message "The corruption screamed as it burned away..."
  scene.message "And you collapsed."
  
  scene.message "\\bKael\\b: LYRA!"
  scene.message "The last thing you heard was Kael's voice..."
  scene.message "Before everything went dark."
end

#===============================================================================
# CHAPTER 25: KAEL'S TRIAL - Face Mira's Ghost
#===============================================================================

GameData::Quest.define :msq_ch25_kael_trial do |q|
  q.name "Shadows of the Past"
  q.description "Face the ghost of your past and choose life over death."
  q.type :main_story
  q.chapter 25
  q.playable_character :kael  # PLAY AS KAEL
  
  q.objectives [
    { id: :enter_ruins, text: "Enter the Mortality Ruins alone" },
    { id: :face_morwen, text: "Face Lady Morwen's temptation" },
    { id: :see_mira, text: "See Mira's ghost" },
    { id: :choose_life, text: "Choose to live" },
    { id: :defeat_morwen, text: "Defeat Lady Morwen" }
  ]
end

GameData::Cutscene.define :msq_kael_trial do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "The darkness wrapped around you like a shroud."
  scene.message "Shadow whimpered at your side."
  
  scene.message "\\bKael\\b: It's okay, Shadow. I've got you."
  scene.message "\\bShadow\\b: *worried growl*"
  
  scene.message "A woman's form emerged from the shadows..."
  scene.message "Beautiful. Sorrowful. Wrong."
  
  scene.message "\\bLady Morwen\\b: Kael... child of death..."
  scene.message "\\bLady Morwen\\b: I feel your guilt. Your pain."
  scene.message "\\bLady Morwen\\b: The girl you couldn't save..."
  
  scene.message "\\bKael\\b: (How does she know about Mira?!)"
  scene.message "\\bKael\\b: Don't... don't talk about her."
  
  scene.message "\\bLady Morwen\\b: I can bring her back."
  scene.message "\\bLady Morwen\\b: My mistress Hel commands the dead."
  scene.message "\\bLady Morwen\\b: All you have to do... is join us."
  
  scene.message "\\bKael\\b: (Mira... I could see her again...)"
  scene.message "\\bKael\\b: (Tell her I'm sorry...)"
  
  scene.message "The shadows parted..."
  scene.message "And there she was."
  
  scene.message "\\bMira's Ghost\\b: Kael..."
  scene.message "\\bKael\\b: M-Mira?! Is it really you?!"
  
  scene.message "\\bMira's Ghost\\b: Don't listen to her, Kael."
  scene.message "\\bMira's Ghost\\b: I'm at peace. I always was."
  
  scene.message "\\bKael\\b: But... I couldn't save you..."
  
  scene.message "\\bMira's Ghost\\b: We were children, Kael."
  scene.message "\\bMira's Ghost\\b: It was never your fault."
  scene.message "\\bMira's Ghost\\b: I need you to know that."
  
  scene.message "Tears rolled down your face..."
  scene.message "For the first time in years."
  
  scene.message "\\bMira's Ghost\\b: You have friends now. Real ones."
  scene.message "\\bMira's Ghost\\b: That girl who stayed by your side all night..."
  scene.message "\\bMira's Ghost\\b: She loves you, Kael."
  
  scene.message "\\bKael\\b: Lyra...?"
  
  scene.message "\\bMira's Ghost\\b: Let yourself be happy."
  scene.message "\\bMira's Ghost\\b: That's all I ever wanted for you."
  
  scene.message "\\bKael\\b: ...Goodbye, Mira."
  scene.message "\\bKael\\b: And... thank you."
  
  scene.message "Mira smiled and faded away..."
  scene.message "Taking your guilt with her."
end

#===============================================================================
# CHAPTER 27: CONFESSION SCENE - Three Perspectives
#===============================================================================

GameData::Quest.define :msq_ch27_confession do |q|
  q.name "The Night Before"
  q.description "The night before the final journey. Three perspectives. One truth."
  q.type :main_story
  q.chapter 27
  q.playable_character :player  # Start as player, then switch
  
  q.objectives [
    { id: :cant_sleep, text: "Try to sleep" },
    { id: :find_friends, text: "Find Lyra and Kael outside" },
    { id: :choose_action, text: "Give them privacy or watch" },
    { id: :witness, text: "Witness the confession" }
  ]
end

GameData::Quest.define :msq_ch27_lyra_confession do |q|
  q.name "Words Unspoken"
  q.description "Experience the confession from Lyra's perspective."
  q.type :main_story
  q.chapter 27
  q.playable_character :lyra
  
  q.objectives [
    { id: :find_kael, text: "Find Kael looking at the stars" },
    { id: :approach, text: "Approach him" },
    { id: :confess, text: "Finally say how you feel" }
  ]
end

GameData::Cutscene.define :msq_lyra_confession do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[You are now playing as Lyra]"
  scene.message "You couldn't sleep."
  scene.message "Tomorrow might be your last day."
  
  scene.message "You found Kael outside, staring at the stars."
  scene.message "Shadow lay curled at his feet."
  
  scene.message "\\bLyra\\b: (He looks so peaceful like this...)"
  scene.message "\\bLyra\\b: (When he's not trying to push everyone away.)"
  
  scene.message "\\bLyra\\b: Can't sleep either?"
  scene.message "\\bKael\\b: ...No."
  
  scene.message "You sat beside him."
  scene.message "Close. Closer than usual."
  
  scene.message "\\bLyra\\b: Kael... if we don't make it back..."
  scene.message "\\bKael\\b: We will."
  
  scene.message "\\bLyra\\b: But if we don't..."
  scene.message "Your heart was pounding."
  scene.message "\\bLyra\\b: I need you to know—"
  
  scene.message "He turned to face you."
  scene.message "And kissed you before you could finish."
  
  scene.camera_flash 10
  
  scene.message "\\bLyra\\b: (Oh...)"
  scene.message "\\bLyra\\b: (OH.)"
  
  scene.message "When he pulled away, his eyes were soft."
  scene.message "Softer than you'd ever seen them."
  
  scene.message "\\bKael\\b: I already knew."
  scene.message "\\bKael\\b: ...I feel the same."
  
  scene.message "Willow began to glow!"
  
  scene.message "\\bLyra\\b: *gasp* Willow!"
  scene.message "Willow evolved into Sylveon!"
  
  scene.message "\\bKael\\b: ...Figures. The love Pokémon."
  scene.message "\\bLyra\\b: *laughs through tears* Shut up."
  
  scene.message "You leaned into his shoulder."
  scene.message "Tomorrow, you'd face the end of the world."
  scene.message "But tonight... tonight was yours."
end

#===============================================================================
# CHAPTER 32: ELENA'S SACRIFICE - Lyra's Perspective
#===============================================================================

GameData::Quest.define :msq_ch32_elena_death do |q|
  q.name "sisterly Love"
  q.description "Watch helplessly as Elena sacrifices herself."
  q.type :main_story
  q.chapter 32
  q.playable_character :lyra
  
  q.objectives [
    { id: :confront_malachar, text: "Confront Malachar" },
    { id: :see_elena, text: "See Elena captured" },
    { id: :watch_sacrifice, text: "Watch Elena tackle Malachar" },
    { id: :grief, text: "Break down in grief" },
    { id: :recover, text: "Find strength to continue" }
  ]
end

GameData::Cutscene.define :msq_elena_sacrifice do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\i[You are now playing as Lyra]"
  scene.message "Elena. Your sister. In Malachar's grip."
  
  scene.message "\\bLyra\\b: ELENA!"
  scene.message "\\bElena\\b: Lyra! Don't worry about me!"
  
  scene.message "\\bMalachar\\b: Attack me, and she dies."
  
  scene.message "\\bLyra\\b: (No... no no no...)"
  scene.message "\\bLyra\\b: (Not Elena. Anyone but Elena.)"
  
  scene.message "Malachar began the ritual."
  scene.message "Dark energy swirled..."
  
  scene.message "\\bElena\\b: Lyra... I love you. Always remember that."
  scene.message "\\bLyra\\b: What are you—"
  
  scene.message "Elena broke free."
  scene.message "She tackled Malachar."
  scene.message "They both fell toward the void."
  
  scene.message "\\bLyra\\b: ELEEEENAAA!"
  
  scene.message "You reached out..."
  scene.message "But they were already gone."
  
  scene.message "\\bLyra\\b: No... no no no..."
  scene.message "Your legs gave out."
  scene.message "Everything was noise. Pain. Nothing."
  
  scene.message "Strong arms caught you."
  scene.message "\\bKael\\b: Lyra. Lyra, look at me."
  
  scene.message "\\bLyra\\b: She's gone... she's..."
  
  scene.message "\\bKael\\b: She saved us."
  scene.message "\\bKael\\b: She died so we could stop this."
  scene.message "\\bKael\\b: We have to honor that."
  
  scene.message "\\bLyra\\b: I can't... I..."
  
  scene.message "\\bKael\\b: Yes, you can."
  scene.message "\\bKael\\b: Because you're the strongest person I know."
  scene.message "\\bKael\\b: And I'm right here with you."
  
  scene.message "You looked into his eyes."
  scene.message "Found strength you didn't know you had."
  
  scene.message "\\bLyra\\b: ...Okay."
  scene.message "\\bLyra\\b: For Elena."
  
  scene.message "You stood."
  scene.message "Together."
end

#===============================================================================
# CHAPTER 34: FINAL BATTLE - All Three Perspectives
#===============================================================================

GameData::Quest.define :msq_ch34_final_pn do |q|
  q.name "Champion's Valor"
  q.description "Lead the charge against Nidhoggr as the Champion of Valor."
  q.type :main_story
  q.chapter 34
  q.playable_character :player
  
  q.objectives [
    { id: :zacian_power, text: "Receive Zacian's power" },
    { id: :phase_1, text: "Lead Phase 1 of the battle" },
    { id: :coordinate, text: "Coordinate with Lyra and Kael" }
  ]
end

GameData::Quest.define :msq_ch34_final_lyra do |q|
  q.name "Life's Blessing"
  q.description "Heal the team between phases as the Champion of Life."
  q.type :main_story
  q.chapter 34
  q.playable_character :lyra
  
  q.objectives [
    { id: :xerneas_power, text: "Channel Xerneas's healing" },
    { id: :heal_team, text: "Keep everyone alive" },
    { id: :phase_2, text: "Lead Phase 2 of the battle" }
  ]
end

GameData::Quest.define :msq_ch34_final_kael do |q|
  q.name "Cycle's End"
  q.description "Weaken Nidhoggr as the Champion of Cycles."
  q.type :main_story
  q.chapter 34
  q.playable_character :kael
  
  q.objectives [
    { id: :yveltal_power, text: "Embrace Yveltal's power" },
    { id: :drain_nidhoggr, text: "Drain Nidhoggr's life force" },
    { id: :phase_3, text: "Lead Phase 3 of the battle" }
  ]
end

#===============================================================================
# MAIN STORY QUEST HELPER - Character Switching
#===============================================================================

module MainStoryQuest
  # Switch playable character for story missions
  def self.switch_to(character)
    case character
    when :player
      # Default player
      pbMessage("\\i[Returning to your perspective...]")
    when :lyra
      pbMessage("\\i[Perspective shifts to Lyra...]")
      pbMessage("\\bLyra\\b: (Time to see things my way.)")
    when :kael
      pbMessage("\\i[Perspective shifts to Kael...]")
      pbMessage("\\bKael\\b: (...)")
    end
  end
  
  # Check if currently playing as specific character
  def self.playing_as?(character)
    $game_variables[VAR::CURRENT_PROTAGONIST] == character
  end
end

#===============================================================================
# MAIN STORY QUEST SUMMARY
#===============================================================================
# Chapter 1-3:  Play as \PN - Introduction
# Chapter 7:    Play as LYRA - First cult attack (her fear)
# Chapter 10:   Play as KAEL - Mountain journey (his past)
# Chapter 14:   Play as LYRA - Heritage revelation
# Chapter 17:   Play as \PN - Starter crisis
# Chapter 22:   Play as LYRA - Life force sacrifice
# Chapter 25:   Play as KAEL - Mira's ghost, Morwen battle
# Chapter 27:   Play as LYRA - Confession scene
# Chapter 32:   Play as LYRA - Elena's death
# Chapter 34:   Play as ALL THREE - Final battle phases
#===============================================================================

#===============================================================================
# CHAPTER 4: FIRST SIGNS - Strange Events Begin
#===============================================================================

GameData::Quest.define :msq_ch4_strange_pokemon do |q|
  q.name "First Signs"
  q.description "Investigate strange Pokémon behavior in the forest."
  q.type :main_story
  q.chapter 4
  q.playable_character :player
  
  q.objectives [
    { id: :notice_panic, text: "Notice wild Pokémon fleeing" },
    { id: :investigate, text: "Investigate the source" },
    { id: :find_tablet, text: "Find the ancient tablet" },
    { id: :sketch_symbols, text: "Let Kael sketch the symbols" }
  ]
end

GameData::Quest.define :msq_ch4_gym1 do |q|
  q.name "The First Challenge"
  q.description "Earn your first Gym Badge alongside your friends."
  q.type :main_story
  q.chapter 4
  q.playable_character :player
  
  q.objectives [
    { id: :train_route, text: "Train on Route 1 with Lyra and Kael" },
    { id: :enter_gym, text: "Enter the first Gym" },
    { id: :defeat_trainers, text: "Defeat the Gym Trainers" },
    { id: :badge_1, text: "Win the first Badge" }
  ]
end

#===============================================================================
# CHAPTER 5: THE LIBRARY - Kael's Research
#===============================================================================

GameData::Quest.define :msq_ch5_kael_research do |q|
  q.name "Ancient Knowledge"
  q.description "Wait while Kael researches the tablet symbols."
  q.type :main_story
  q.chapter 5
  q.playable_character :player
  
  q.objectives [
    { id: :library_days, text: "Explore while Kael researches" },
    { id: :lyra_heirloom, text: "Learn about Lyra's family heirloom" },
    { id: :earthquake, text: "Experience the mysterious earthquake" }
  ]
end

GameData::Quest.define :msq_ch5_lyra_watches do |q|
  q.name "Behind the Mask"
  q.description "Notice that Kael isn't as cold as he pretends to be."
  q.type :main_story
  q.chapter 5
  q.playable_character :lyra
  
  q.objectives [
    { id: :camp_night, text: "Set up camp for the night" },
    { id: :notice_kael, text: "Notice Kael feeding stray Pokémon" },
    { id: :understand, text: "Begin to see through his cold act" }
  ]
end

GameData::Cutscene.define :msq_lyra_watching_kael do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  scene.message "\\i[You are now playing as Lyra]"
  scene.message "Everyone else was asleep."
  scene.message "But you couldn't stop thinking..."
  
  scene.message "Movement near the trees caught your eye."
  scene.message "Kael. And... was he feeding stray Pokémon?"
  
  scene.message "\\bKael\\b: Here. Eat up."
  scene.message "\\bKael\\b: ...Don't look at me like that."
  scene.message "\\bKael\\b: I just don't like waste."
  
  scene.message "\\bLyra\\b: (He's lying to himself...)"
  scene.message "\\bLyra\\b: (He cares. He cares so much.)"
  scene.message "\\bLyra\\b: (So why does he push everyone away?)"
  
  scene.message "Shadow nuzzled against Kael's leg."
  scene.message "For just a moment, Kael smiled."
  
  scene.message "\\bLyra\\b: (There's something gentle under all that ice.)"
  scene.message "\\bLyra\\b: (I want to see more of it.)"
end

#===============================================================================
# CHAPTER 6: RUMORS - The Shattered Hand
#===============================================================================

GameData::Quest.define :msq_ch6_rumors do |q|
  q.name "Whispers in the Dark"
  q.description "Hear rumors of the Shattered Hand cult and encounter your rival."
  q.type :main_story
  q.chapter 6
  q.playable_character :player
  
  q.objectives [
    { id: :hear_rumors, text: "Hear whispers about the 'Shattered Hand'" },
    { id: :gym_2, text: "Earn your second Gym Badge" },
    { id: :meet_marcus, text: "Meet your rival Marcus" },
    { id: :being_followed, text: "Notice you're being followed" }
  ]
end

GameData::Quest.define :msq_ch6_kael_observes do |q|
  q.name "Light in the Dark"
  q.description "Witness Lyra's compassion and question your own coldness."
  q.type :main_story
  q.chapter 6
  q.playable_character :kael
  
  q.objectives [
    { id: :injured_pokemon, text: "Encounter an injured wild Pokémon" },
    { id: :lyra_helps, text: "Watch Lyra help it without hesitation" },
    { id: :reflect, text: "Reflect on why you can't be like that" }
  ]
end

GameData::Cutscene.define :msq_kael_watching_lyra do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "An injured Rattata lay on the path."
  scene.message "You would have walked past."
  
  scene.message "\\bLyra\\b: Oh no! The poor thing!"
  scene.message "She was already kneeling, healing items in hand."
  
  scene.message "\\bKael\\b: (We're wasting time...)"
  scene.message "\\bKael\\b: (But I can't tell her to stop.)"
  
  scene.message "\\bLyra\\b: There you go, little one."
  scene.message "\\bLyra\\b: You're going to be okay."
  
  scene.message "The Rattata licked her hand and scurried away."
  scene.message "Lyra smiled, genuinely happy."
  
  scene.message "\\bKael\\b: (How does she do that?)"
  scene.message "\\bKael\\b: (Care so easily. Trust so freely.)"
  scene.message "\\bKael\\b: (...I used to be like that. Before Mira.)"
  
  scene.message "\\b\\PN\\b: That was kind of you, Lyra."
  scene.message "\\bLyra\\b: Every life matters!"
  
  scene.message "\\bKael\\b: (...Does it?)"
  scene.message "\\bKael\\b: (Maybe... she could teach me to believe that again.)"
end

#===============================================================================
# CHAPTER 8: THE MARKS - Play as All Three (rapid switches)
#===============================================================================

GameData::Quest.define :msq_ch8_marks_pn do |q|
  q.name "Mark of Valor"
  q.description "Awaken to your mark and feel Zacian's presence."
  q.type :main_story
  q.chapter 8
  q.playable_character :player
  
  q.objectives [
    { id: :dream, text: "Experience the shared dream" },
    { id: :wake, text: "Wake with your mark burning" },
    { id: :steel_blue, text: "See the steel-blue glow" }
  ]
end

GameData::Quest.define :msq_ch8_marks_lyra do |q|
  q.name "Mark of Life"
  q.description "Awaken to your mark and feel Xerneas's presence."
  q.type :main_story
  q.chapter 8
  q.playable_character :lyra
  
  q.objectives [
    { id: :rainbow_glow, text: "See the rainbow mark on your arm" },
    { id: :feel_life, text: "Feel connected to all living things" },
    { id: :tell_friends, text: "Find the others" }
  ]
end

GameData::Quest.define :msq_ch8_marks_kael do |q|
  q.name "Mark of Cycles"
  q.description "Awaken to your mark and feel Yveltal's presence."
  q.type :main_story
  q.chapter 8
  q.playable_character :kael
  
  q.objectives [
    { id: :crimson_mark, text: "See the crimson mark on your arm" },
    { id: :feel_death, text: "Feel the weight of endings" },
    { id: :deny_fear, text: "Refuse to be afraid" }
  ]
end

GameData::Cutscene.define :msq_kael_mark_awakens do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "The dream was clearer this time."
  scene.message "Three crowns. Three figures. Darkness rising."
  
  scene.message "\\bVoice\\b: Child of endings..."
  scene.message "\\bVoice\\b: You have been chosen..."
  
  scene.camera_flash 20
  
  scene.message "You jolted awake, arm burning!"
  scene.message "Crimson light pulsed from your forearm."
  
  scene.message "\\bKael\\b: (What the...)"
  scene.message "Shadow whimpered, eyes fixed on the mark."
  
  scene.message "\\bKael\\b: It's okay, Shadow."
  scene.message "\\bKael\\b: (...Is it?)"
  
  scene.message "The mark pulsed like a heartbeat."
  scene.message "And for a moment, you felt it."
  scene.message "The weight of every ending. Every death."
  
  scene.message "\\bKael\\b: (...Mira.)"
  scene.message "\\bKael\\b: (This mark... it feels like loss.)"
  scene.message "\\bKael\\b: (But not just loss. Transformation.)"
  
  scene.message "You clenched your fist."
  scene.message "Whatever this was, you'd face it."
  scene.message "Like you faced everything else."
  scene.message "Alone."
end

#===============================================================================
# CHAPTER 9: SECOND GYM - Play as \PN
#===============================================================================

GameData::Quest.define :msq_ch9_professor do |q|
  q.name "Seeking Answers"
  q.description "Consult Professor Aldric about the mysterious marks."
  q.type :main_story
  q.chapter 9
  q.playable_character :player
  
  q.objectives [
    { id: :show_marks, text: "Show your marks to Professor Aldric" },
    { id: :learn_mt_corona, text: "Learn about the Summit Temple" },
    { id: :prepare_journey, text: "Prepare for the mountain journey" }
  ]
end

GameData::Quest.define :msq_ch9_gym2 do |q|
  q.name "Rising Strength"
  q.description "Earn the second Gym Badge as your power grows."
  q.type :main_story
  q.chapter 9
  q.playable_character :player
  
  q.objectives [
    { id: :travel_city, text: "Travel to Corona City" },
    { id: :train_together, text: "Train with Lyra and Kael" },
    { id: :badge_2, text: "Defeat the Gym Leader" }
  ]
end

#===============================================================================
# CHAPTER 11: FIRST TRUTH - Temple Discovery
#===============================================================================

GameData::Quest.define :msq_ch11_temple do |q|
  q.name "The First Truth"
  q.description "Discover the ancient temple and learn about Hoopa's prison."
  q.type :main_story
  q.chapter 11
  q.playable_character :player
  
  q.objectives [
    { id: :enter_temple, text: "Enter the hidden temple" },
    { id: :read_records, text: "Read the ancient records" },
    { id: :learn_hoopa, text: "Learn about Hoopa's imprisonment" },
    { id: :question_purpose, text: "Question your role as Chosen" }
  ]
end

#===============================================================================
# CHAPTER 11: KULTIST HIDEOUT - Play as Kael (infiltration)
#===============================================================================

GameData::Quest.define :msq_ch11_kael_infiltrate do |q|
  q.name "Shadow Operations"
  q.description "Infiltrate the cult hideout using stealth and cunning."
  q.type :main_story
  q.chapter 11
  q.playable_character :kael
  
  q.objectives [
    { id: :separate, text: "Split from the group" },
    { id: :stealth, text: "Navigate the hideout unseen" },
    { id: :find_intel, text: "Find intelligence on Hoopa" },
    { id: :escape, text: "Escape before detection" }
  ]
end

GameData::Cutscene.define :msq_kael_infiltration do |scene|
  scene.play_bgm 'Pokemon RSE - Team Aqua-Magma Hideout'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "The hideout was heavily guarded."
  scene.message "But not for someone who grew up in shadows."
  
  scene.message "\\bKael\\b: Shadow, stay close. No noise."
  scene.message "\\bShadow\\b: *silent nod*"
  
  scene.message "You slipped past the first guards easily."
  scene.message "Their Pokémon never even noticed."
  
  scene.message "\\bKael\\b: (Amateurs.)"
  scene.message "\\bKael\\b: (At the orphanage, you learned to steal food or starve.)"
  scene.message "\\bKael\\b: (This is nothing.)"
  
  scene.message "A door labeled 'ARCHIVES' caught your eye."
  scene.message "You picked the lock in seconds."
  
  scene.message "\\bKael\\b: (Documents... about Hoopa?)"
  scene.message "\\bKael\\b: (No... this is bigger than Hoopa.)"
  scene.message "\\bKael\\b: ('Nidhoggr'... 'The Gnawing One'...)"
  scene.message "\\bKael\\b: (What are they really planning?)"
  
  scene.message "Footsteps approached."
  scene.message "You grabbed what you could and vanished."
  
  scene.message "\\bKael\\b: (I need to tell the others.)"
  scene.message "\\bKael\\b: (This is worse than we thought.)"
end

#===============================================================================
# CHAPTER 12: SHADE BATTLE - Play as \PN
#===============================================================================

GameData::Quest.define :msq_ch12_shade do |q|
  q.name "The Second General"
  q.description "Face General Shade and learn about Hoopa's true nature."
  q.type :main_story
  q.chapter 12
  q.playable_character :player
  
  q.objectives [
    { id: :temple_attack, text: "Defend the temple from the cult" },
    { id: :face_shade, text: "Confront General Shade" },
    { id: :learn_truth, text: "Learn Hoopa is 'just a key'" },
    { id: :defeat_shade, text: "Defeat Shade in battle" }
  ]
end

#===============================================================================
# CHAPTER 13: LYRA COMFORTS KAEL - Play as Lyra
#===============================================================================

GameData::Quest.define :msq_ch13_comfort do |q|
  q.name "Opening Up"
  q.description "Comfort Kael after a difficult night."
  q.type :main_story
  q.chapter 13
  q.playable_character :lyra
  
  q.objectives [
    { id: :hear_nightmare, text: "Hear Kael having a nightmare" },
    { id: :approach, text: "Approach him carefully" },
    { id: :comfort, text: "Offer comfort without pushing" },
    { id: :breakthrough, text: "Get a small breakthrough" }
  ]
end

GameData::Cutscene.define :msq_lyra_comforts_kael do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[You are now playing as Lyra]"
  scene.message "You woke to sounds of distress."
  scene.message "Kael. Having a nightmare."
  
  scene.message "\\bKael\\b: *mumbling* Mira... no... I'm sorry..."
  scene.message "\\bKael\\b: It should have been me..."
  
  scene.message "\\bLyra\\b: (Who's Mira?)"
  scene.message "\\bLyra\\b: (He's never mentioned anyone by that name...)"
  
  scene.message "You approached quietly."
  scene.message "\\bLyra\\b: Kael. Kael, wake up."
  
  scene.message "His eyes snapped open. Wild. scared."
  scene.message "For just a second, he looked like a child."
  
  scene.message "\\bKael\\b: I—what—"
  scene.message "\\bLyra\\b: You were having a nightmare."
  scene.message "\\bLyra\\b: It's okay. You're safe."
  
  scene.message "His walls went back up. But slower than usual."
  scene.message "\\bKael\\b: ...Thanks."
  
  scene.message "\\bLyra\\b: Do you want to talk about it?"
  scene.message "\\bKael\\b: No."
  scene.message "A pause."
  scene.message "\\bKael\\b: ...Maybe someday."
  
  scene.message "\\bLyra\\b: (That's more than I expected.)"
  scene.message "\\bLyra\\b: I'll be here when you're ready."
  
  scene.message "He didn't respond. But he didn't push you away either."
  scene.message "Progress."
end

#===============================================================================
# CHAPTER 15-16: GYM BADGES 3-4 - Play as \PN
#===============================================================================

GameData::Quest.define :msq_ch15_gym3 do |q|
  q.name "The Third Challenge"
  q.description "Earn the third Gym Badge."
  q.type :main_story
  q.chapter 15
  q.playable_character :player
  
  q.objectives [
    { id: :travel, text: "Travel to Mistral City" },
    { id: :badge_3, text: "Defeat the Flying-type Gym Leader" }
  ]
end

GameData::Quest.define :msq_ch16_gym4 do |q|
  q.name "Growing Power"
  q.description "Earn the fourth Gym Badge."
  q.type :main_story
  q.chapter 16
  q.playable_character :player
  
  q.objectives [
    { id: :reach_city, text: "Reach Terracotta Town" },
    { id: :badge_4, text: "Defeat the Ground-type Gym Leader" }
  ]
end

#===============================================================================
# CHAPTER 18: DREAD BATTLE - Play as Kael (protecting the group)
#===============================================================================

GameData::Quest.define :msq_ch18_kael_protects do |q|
  q.name "Standing Guard"
  q.description "Protect Lyra and \\PN from General Dread."
  q.type :main_story
  q.chapter 18
  q.playable_character :kael
  
  q.objectives [
    { id: :dread_appears, text: "Face General Dread's ambush" },
    { id: :learn_nidhoggr, text: "Learn about Nidhoggr" },
    { id: :protect_lyra, text: "Shield Lyra from a deadly attack" },
    { id: :defeat_dread, text: "Defeat Dread" }
  ]
end

GameData::Cutscene.define :msq_kael_protects_lyra do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "Dread floated before you, Ghost Pokémon swirling."
  
  scene.message "\\bDread\\b: Nidhoggr shall consume this world..."
  scene.message "\\bDread\\b: Starting with the Life-Bearer!"
  
  scene.message "Dark energy lanced toward Lyra!"
  
  scene.message "\\bKael\\b: (NO!)"
  scene.message "You moved without thinking."
  scene.message "Shadow leaped with you."
  
  scene.camera_flash 10
  
  scene.message "The attack hit you instead."
  scene.message "Pain. Cold. Darkness."
  
  scene.message "\\bLyra\\b: KAEL!"
  scene.message "\\b\\PN\\b: Are you okay?!"
  
  scene.message "\\bKael\\b: *coughing* ...I'm fine."
  scene.message "\\bKael\\b: (That hurt. A lot.)"
  scene.message "\\bKael\\b: (But she's safe. That's what matters.)"
  
  scene.message "\\bLyra\\b: Why did you—"
  scene.message "\\bKael\\b: Don't. Just focus on the battle."
  
  scene.message "\\bKael\\b: (I can't lose someone else.)"
  scene.message "\\bKael\\b: (Not again.)"
end

#===============================================================================
# CHAPTER 19-21: GYMS 5-6 - Play as \PN
#===============================================================================

GameData::Quest.define :msq_ch19_gym5 do |q|
  q.name "The Fifth Trial"
  q.description "Earn the fifth Gym Badge."
  q.type :main_story
  q.chapter 19
  q.playable_character :player
  
  q.objectives [
    { id: :badge_5, text: "Defeat the Ice-type Gym Leader" }
  ]
end

GameData::Quest.define :msq_ch20_gym6 do |q|
  q.name "The Sixth Trial"
  q.description "Earn the sixth Gym Badge."
  q.type :main_story
  q.chapter 20
  q.playable_character :player
  
  q.objectives [
    { id: :badge_6, text: "Defeat the Psychic-type Gym Leader" }
  ]
end

#===============================================================================
# CHAPTER 19: THE SHARD HUNT - Professor's Briefing
#===============================================================================

GameData::Quest.define :msq_ch19_shard_hunt do |q|
  q.name "The Hunt Begins"
  q.description "Learn about the Crown Shards and begin collecting them."
  q.type :main_story
  q.chapter 19
  q.playable_character :player
  
  q.objectives [
    { id: :professor_briefing, text: "Receive the Professor's briefing" },
    { id: :learn_shards, text: "Learn about the three Crown Shards" },
    { id: :meet_elena, text: "Meet the mysterious researcher Elena" },
    { id: :gym_7, text: "Earn your seventh Gym Badge" }
  ]
end

#===============================================================================
# CHAPTER 20: ETERNAL FOREST - The Second Shard
#===============================================================================

GameData::Quest.define :msq_ch20_eternal_forest do |q|
  q.name "Into the Eternal Forest"
  q.description "Journey into the Eternal Forest to find the second shard."
  q.type :main_story
  q.chapter 20
  q.playable_character :player
  
  q.objectives [
    { id: :enter_forest, text: "Enter the Eternal Forest" },
    { id: :sense_corruption, text: "Sense the corruption spreading" },
    { id: :lyra_vision, text: "Witness Lyra have a vision" },
    { id: :find_machine, text: "Discover the cult's corrupting machine" }
  ]
end

GameData::Quest.define :msq_ch20_lyra_vision do |q|
  q.name "Xerneas's Warning"
  q.description "Experience the corruption through Lyra's connection to Xerneas."
  q.type :main_story
  q.chapter 20
  q.playable_character :lyra
  
  q.objectives [
    { id: :feel_pain, text: "Feel the forest's pain" },
    { id: :xerneas_call, text: "Hear Xerneas calling out" },
    { id: :share_vision, text: "Share your vision with the group" }
  ]
end

#===============================================================================
# CHAPTER 21: MACHINE DESTRUCTION - Saving the Forest
#===============================================================================

GameData::Quest.define :msq_ch21_machine do |q|
  q.name "Breaking the Machine"
  q.description "Destroy the cult's corruption machine and save the Eternal Forest."
  q.type :main_story
  q.chapter 21
  q.playable_character :player
  
  q.objectives [
    { id: :locate_machine, text: "Locate the corruption source" },
    { id: :battle_guards, text: "Defeat the cult guards" },
    { id: :destroy_machine, text: "Destroy the dark machine" },
    { id: :forest_heals, text: "Watch the forest begin to heal" }
  ]
end

#===============================================================================
# CHAPTER 21: LYRA WORRIES - Play as Lyra
#===============================================================================

GameData::Quest.define :msq_ch21_lyra_worried do |q|
  q.name "Growing Feelings"
  q.description "Come to terms with your feelings for Kael."
  q.type :main_story
  q.chapter 21
  q.playable_character :lyra
  
  q.objectives [
    { id: :think, text: "Think about recent events" },
    { id: :realize, text: "Realize you have feelings for Kael" },
    { id: :confide, text: "Confide in Willow" },
    { id: :decide, text: "Decide to tell him... someday" }
  ]
end

GameData::Cutscene.define :msq_lyra_realization do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[You are now playing as Lyra]"
  scene.message "You couldn't get it out of your head."
  scene.message "Kael jumping in front of that attack. For you."
  
  scene.message "\\bLyra\\b: (Why did he do that?)"
  scene.message "\\bLyra\\b: (He could have died...)"
  
  scene.message "Willow looked up at you curiously."
  scene.message "\\bWillow\\b: Vee?"
  
  scene.message "\\bLyra\\b: Willow... I think..."
  scene.message "\\bLyra\\b: I think I like Kael."
  scene.message "\\bLyra\\b: Like... LIKE like him."
  
  scene.message "\\bWillow\\b: Vee vee!"
  scene.message "\\bLyra\\b: You already knew?!"
  
  scene.message "\\bWillow\\b: *nods sagely*"
  scene.message "\\bLyra\\b: *groans* Am I that obvious?"
  
  scene.message "\\bLyra\\b: (He's so closed off though...)"
  scene.message "\\bLyra\\b: (There's so much pain inside him.)"
  scene.message "\\bLyra\\b: (Can I really reach him?)"
  
  scene.message "\\bLyra\\b: I'll figure it out. After we save the world."
  scene.message "\\bWillow\\b: Vee!"
  scene.message "\\bLyra\\b: ...If we survive."
end

#===============================================================================
# CHAPTER 23: KAEL STAYS BY LYRA - Play as Kael
#===============================================================================

GameData::Quest.define :msq_ch23_kael_vigil do |q|
  q.name "The Vigil"
  q.description "Stay by Lyra's side while she recovers from the sacrifice."
  q.type :main_story
  q.chapter 23
  q.playable_character :kael
  
  q.objectives [
    { id: :refuse_leave, text: "Refuse to leave her bedside" },
    { id: :watch_all_night, text: "Watch over her through the night" },
    { id: :admit, text: "Admit to yourself that you care" }
  ]
end

GameData::Cutscene.define :msq_kael_vigil do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "Lyra lay still. Barely breathing."
  scene.message "The sacrifice had nearly killed her."
  
  scene.message "\\b\\PN\\b: Kael, you should rest."
  scene.message "\\bKael\\b: No."
  scene.message "\\b\\PN\\b: You've been here for hours—"
  scene.message "\\bKael\\b: I said no."
  
  scene.message "\\PN understood. They left you alone."
  
  scene.message "\\bKael\\b: (Stupid girl.)"
  scene.message "\\bKael\\b: (Why did you have to be the hero?)"
  scene.message "\\bKael\\b: (That's supposed to be \\PN's job.)"
  
  scene.message "Her hand was cold."
  scene.message "You held it anyway."
  
  scene.message "\\bKael\\b: (When did I start caring this much?)"
  scene.message "\\bKael\\b: (When did she get under my walls?)"
  
  scene.message "Shadow curled up beside you."
  scene.message "As if to say: 'I know. It's okay.'"
  
  scene.message "\\bKael\\b: ...Don't you dare die."
  scene.message "\\bKael\\b: You hear me?"
  scene.message "\\bKael\\b: I'm not losing anyone else."
  
  scene.message "Her fingers twitched."
  scene.message "Relief flooded through you like fire."
end

#===============================================================================
# CHAPTER 26: SHADOW EVOLVES - Play as Kael
#===============================================================================

GameData::Quest.define :msq_ch26_shadow_evolves do |q|
  q.name "True Partner"
  q.description "Watch Shadow evolve as your bond deepens."
  q.type :main_story
  q.chapter 26
  q.playable_character :kael
  
  q.objectives [
    { id: :yveltal_trial, text: "Complete Yveltal's trial" },
    { id: :receive_shard, text: "Receive the Cycle Shard" },
    { id: :shadow_glows, text: "Watch Shadow begin to evolve" }
  ]
end

#===============================================================================
# CHAPTER 29: THE CHAMPIONSHIP - Victory Before the Storm
#===============================================================================

GameData::Quest.define :msq_ch29_championship do |q|
  q.name "The Championship"
  q.description "Challenge the Elite Four and become Champion before facing Malachar."
  q.type :main_story
  q.chapter 29
  q.playable_character :player
  
  q.objectives [
    { id: :league_arrival, text: "Arrive at the Pokémon League" },
    { id: :elite_four, text: "Defeat the Elite Four" },
    { id: :champion_battle, text: "Face the Champion" },
    { id: :become_champion, text: "Become Champion" },
    { id: :darkness_comes, text: "Witness the sky darken" }
  ]
end

#===============================================================================
# CHAPTER 30: FRIENDS UNITED - The Three Guardians Awaken
#===============================================================================

GameData::Quest.define :msq_ch30_guardians_awaken do |q|
  q.name "Divine Intervention"
  q.description "Receive the blessings of all three guardians as the Crown Shards combine."
  q.type :main_story
  q.chapter 30
  q.playable_character :player
  
  q.objectives [
    { id: :shards_react, text: "Feel the Crown Shards resonate" },
    { id: :shards_combine, text: "Watch the shards unite" },
    { id: :receive_zacian, text: "Receive Zacian's Blade" },
    { id: :lyra_xerneas, text: "Witness Lyra receive Xerneas's gift" },
    { id: :kael_yveltal, text: "Witness Kael embrace Yveltal's power" },
    { id: :final_goodbye, text: "Say farewell to your old life" }
  ]
end

#===============================================================================
# CHAPTER 31: ASGAHEIM - The Divine Realm
#===============================================================================

GameData::Quest.define :msq_ch31_asgaheim do |q|
  q.name "Into Asgaheim"
  q.description "Enter the divine realm and push through the cult's forces."
  q.type :main_story
  q.chapter 31
  q.playable_character :player
  
  q.objectives [
    { id: :portal_entry, text: "Enter the portal to Asgaheim" },
    { id: :behold_realm, text: "Behold the divine realm" },
    { id: :cult_army, text: "Face the cult's army" },
    { id: :push_through, text: "Fight through the defenses" },
    { id: :reach_prison, text: "Reach Hoopa's prison" }
  ]
end

#===============================================================================
# CHAPTER 28: RUIN BATTLE - Play as All Three
#===============================================================================

GameData::Quest.define :msq_ch28_ruin do |q|
  q.name "The Last General"
  q.description "Defeat General Ruin and enter Asgaheim."
  q.type :main_story
  q.chapter 28
  q.playable_character :player
  
  q.objectives [
    { id: :reach_gate, text: "Reach the gateway to Asgaheim" },
    { id: :face_ruin, text: "Face the final general" },
    { id: :defeat_ruin, text: "Defeat Ruin together" },
    { id: :enter, text: "Enter Asgaheim" }
  ]
end

#===============================================================================
# CHAPTER 29-31: THE SIEGE - Rotating Perspectives
#===============================================================================

GameData::Quest.define :msq_ch29_siege_pn do |q|
  q.name "Siege: The Front Line"
  q.description "Lead the assault on the cult's defenses."
  q.type :main_story
  q.chapter 29
  q.playable_character :player
  
  q.objectives [
    { id: :break_line, text: "Break through the first defense line" },
    { id: :coordinate, text: "Coordinate the three-pronged attack" }
  ]
end

GameData::Quest.define :msq_ch30_siege_lyra do |q|
  q.name "Siege: The Healer"
  q.description "Keep the team alive through the siege."
  q.type :main_story
  q.chapter 30
  q.playable_character :lyra
  
  q.objectives [
    { id: :heal_wounded, text: "Heal wounded Pokémon" },
    { id: :second_line, text: "Break through the second defense" }
  ]
end

GameData::Quest.define :msq_ch31_siege_kael do |q|
  q.name "Siege: The Shadow"
  q.description "Clear the path to Malachar."
  q.type :main_story
  q.chapter 31
  q.playable_character :kael
  
  q.objectives [
    { id: :infiltrate, text: "Infiltrate from the shadows" },
    { id: :clear_path, text: "Take out key defenders" },
    { id: :open_way, text: "Open the path to the throne room" }
  ]
end

#===============================================================================
# CHAPTER 33: GUARDIANS MANIFEST - Play as \PN
#===============================================================================

GameData::Quest.define :msq_ch33_guardians do |q|
  q.name "Divine Power"
  q.description "Receive the full power of the three guardians."
  q.type :main_story
  q.chapter 33
  q.playable_character :player
  
  q.objectives [
    { id: :shards_glow, text: "Watch the three shards combine" },
    { id: :zacian_manifests, text: "Receive Zacian's blessing" },
    { id: :xerneas_manifests, text: "Witness Lyra receive Xerneas's blessing" },
    { id: :yveltal_manifests, text: "Witness Kael receive Yveltal's blessing" },
    { id: :prepare, text: "Prepare for the final battle" }
  ]
end

#===============================================================================
# CHAPTER 35: ENDING - All Three Epilogues
#===============================================================================

GameData::Quest.define :msq_ch35_ending_pn do |q|
  q.name "Epilogue: The Hero"
  q.description "See your journey's end as the Champion of Valor."
  q.type :main_story
  q.chapter 35
  q.playable_character :player
  
  q.objectives [
    { id: :victory, text: "Celebrate the victory" },
    { id: :mourn, text: "Mourn those lost" },
    { id: :decide_future, text: "Decide what's next" }
  ]
end

GameData::Quest.define :msq_ch35_ending_lyra do |q|
  q.name "Epilogue: Life Renewed"
  q.description "See your journey's end and your new beginning."
  q.type :main_story
  q.chapter 35
  q.playable_character :lyra
  
  q.objectives [
    { id: :remember_elena, text: "Visit Elena's memorial" },
    { id: :hold_kael, text: "Find comfort with Kael" },
    { id: :look_forward, text: "Look toward the future" }
  ]
end

GameData::Quest.define :msq_ch35_ending_kael do |q|
  q.name "Epilogue: New Beginnings"
  q.description "See your journey's end - no longer alone."
  q.type :main_story
  q.chapter 35
  q.playable_character :kael
  
  q.objectives [
    { id: :say_goodbye, text: "Say a final goodbye to Mira" },
    { id: :hold_lyra, text: "Embrace the one who saved you" },
    { id: :smile, text: "Smile - genuinely - for the first time in years" }
  ]
end

GameData::Cutscene.define :msq_kael_ending do |scene|
  scene.play_bgm 'Pokemon XY - Credits'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "It was over."
  scene.message "Against all odds, you'd won."
  
  scene.message "Lyra stood beside you, hand in yours."
  scene.message "\\PN on your other side."
  scene.message "Friends. Family. Something you never thought you'd have again."
  
  scene.message "\\bLyra\\b: We did it, Kael."
  scene.message "\\bKael\\b: ...Yeah."
  
  scene.message "A gentle breeze carried a familiar scent."
  scene.message "Flowers. Like the ones Mira used to pick."
  
  scene.message "\\bKael\\b: (Goodbye, Mira.)"
  scene.message "\\bKael\\b: (I'll be okay now.)"
  
  scene.message "Lyra squeezed your hand."
  scene.message "Shadow nuzzled against your leg."
  
  scene.message "For the first time in years..."
  scene.message "You smiled."
  scene.message "Not the cold smirk you wore as armor."
  scene.message "A real smile."
  
  scene.message "\\bLyra\\b: There it is."
  scene.message "\\bKael\\b: What?"
  scene.message "\\bLyra\\b: Your real smile. I always knew it was in there."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: Only for you."
  
  scene.message "And as the sun rose over a saved world..."
  scene.message "You finally felt at peace."
end

#===============================================================================
# FULL MAIN STORY QUEST LIST (35 CHAPTERS)
#===============================================================================
# Ch 1: \PN - New Beginning
# Ch 2: \PN - Reunion  
# Ch 3: \PN - Festival
# Ch 4: \PN - First Gym
# Ch 5: LYRA - Notices Kael feeding strays
# Ch 6: KAEL - Observes Lyra's compassion
# Ch 7: LYRA - First cult attack
# Ch 8: ALL THREE - Marks awaken
# Ch 9: \PN - Second Gym
# Ch 10: KAEL - Mountain journey
# Ch 11: KAEL - Hideout infiltration
# Ch 12: \PN - Shade battle
# Ch 13: LYRA - Comforts Kael after nightmare
# Ch 14: LYRA - Heritage revelation
# Ch 15: \PN - Third Gym
# Ch 16: \PN - Fourth Gym
# Ch 17: \PN - Starter crisis
# Ch 18: KAEL - Protects Lyra from Dread
# Ch 19: \PN - Fifth Gym
# Ch 20: \PN - Sixth Gym
# Ch 21: LYRA - Realizes feelings for Kael
# Ch 22: LYRA - Life force sacrifice
# Ch 23: KAEL - Vigil by Lyra's side
# Ch 24: \PN - Professor Aldric's death
# Ch 25: KAEL - Mira's ghost trial
# Ch 26: KAEL - Shadow evolves
# Ch 27: LYRA - Confession scene
# Ch 28: \PN - General Ruin battle
# Ch 29: \PN - Siege front line
# Ch 30: LYRA - Siege healer
# Ch 31: KAEL - Siege shadow
# Ch 32: LYRA - Elena's sacrifice
# Ch 33: \PN - Guardians manifest
# Ch 34: ALL THREE - Final battle phases
# Ch 35: ALL THREE - Epilogues
#===============================================================================

#===============================================================================
# ADDITIONAL BONDING QUESTS - FRIENDSHIP SYSTEM
#===============================================================================

# Lyra Bonding Events
GameData::Quest.define :bond_lyra_1 do |q|
  q.name "Tea Time with Lyra"
  q.description "Share a quiet moment with Lyra at her favorite café."
  q.type :bonding
  q.playable_character :player
  q.friendship_points :lyra, 10
end

GameData::Quest.define :bond_lyra_2 do |q|
  q.name "Berry Picking"
  q.description "Help Lyra gather berries on her grandmother's farm."
  q.type :bonding
  q.playable_character :player
  q.friendship_points :lyra, 15
end

GameData::Quest.define :bond_lyra_3 do |q|
  q.name "Stargazing"
  q.description "Watch the stars with Lyra and hear about her dreams."
  q.type :bonding
  q.playable_character :player
  q.friendship_points :lyra, 20
end

GameData::Quest.define :bond_lyra_4 do |q|
  q.name "Willow's Bath Day"
  q.description "Help Lyra give Willow a bath (chaos ensues)."
  q.type :bonding
  q.playable_character :player
  q.friendship_points :lyra, 15
end

GameData::Quest.define :bond_lyra_5 do |q|
  q.name "Festival Dance"
  q.description "Dance with Lyra at the town festival."
  q.type :bonding
  q.playable_character :player
  q.friendship_points :lyra, 25
end

# Kael Bonding Events
GameData::Quest.define :bond_kael_1 do |q|
  q.name "Silent Training"
  q.description "Train with Kael - words aren't necessary."
  q.type :bonding
  q.playable_character :player
  q.friendship_points :kael, 10
end

GameData::Quest.define :bond_kael_2 do |q|
  q.name "Night Watch"
  q.description "Take watch with Kael and earn his respect."
  q.type :bonding
  q.playable_character :player
  q.friendship_points :kael, 15
end

GameData::Quest.define :bond_kael_3 do |q|
  q.name "Shadow's Trust"
  q.description "Earn Shadow's trust and Kael notices."
  q.type :bonding
  q.playable_character :player
  q.friendship_points :kael, 20
end

GameData::Quest.define :bond_kael_4 do |q|
  q.name "The Old Bookstore"
  q.description "Browse books with Kael - discover his love of literature."
  q.type :bonding
  q.playable_character :player
  q.friendship_points :kael, 15
end

GameData::Quest.define :bond_kael_5 do |q|
  q.name "Back to Back"
  q.description "Fight alongside Kael when ambushed - earn true respect."
  q.type :bonding
  q.playable_character :player
  q.friendship_points :kael, 25
end

# Lyra-Kael Relationship Events (observed by player)
GameData::Quest.define :bond_lyra_kael_1 do |q|
  q.name "First Spark"
  q.description "Notice a moment between Lyra and Kael."
  q.type :bonding
  q.playable_character :player
end

GameData::Quest.define :bond_lyra_kael_2 do |q|
  q.name "Sharing a Blanket"
  q.description "Watch Kael reluctantly share his blanket with a cold Lyra."
  q.type :bonding
  q.playable_character :player
end

GameData::Quest.define :bond_lyra_kael_3 do |q|
  q.name "The Argument"
  q.description "Witness Lyra and Kael argue - but there's something underneath."
  q.type :bonding
  q.playable_character :player
end

GameData::Quest.define :bond_lyra_kael_4 do |q|
  q.name "Caught Staring"
  q.description "Catch Kael watching Lyra with soft eyes."
  q.type :bonding
  q.playable_character :player
end

GameData::Quest.define :bond_lyra_kael_5 do |q|
  q.name "Almost a Kiss"
  q.description "Witness an almost-kiss interrupted by a wild Pokémon."
  q.type :bonding
  q.playable_character :player
end

#===============================================================================
# LYRA-KAEL BONDING CUTSCENES
#===============================================================================

GameData::Cutscene.define :bond_blanket_scene do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  scene.message "The night was cold. Freezing, actually."
  scene.message "Lyra shivered, hugging Willow for warmth."
  
  scene.message "\\bLyra\\b: Brrr... I didn't pack for THIS weather..."
  scene.message "\\bKael\\b: ..."
  
  scene.message "Without a word, Kael walked over."
  scene.message "He dropped his cloak over her shoulders."
  
  scene.message "\\bLyra\\b: Kael! Won't you be cold?!"
  scene.message "\\bKael\\b: I'm fine."
  scene.message "\\bLyra\\b: But—"
  scene.message "\\bKael\\b: Just take it."
  
  scene.message "He sat down beside her."
  scene.message "Close. But not too close."
  
  scene.message "\\bLyra\\b: ...Thank you."
  scene.message "\\bKael\\b: ...Whatever."
  
  scene.message "But in the firelight, you could've sworn..."
  scene.message "His ears were slightly red."
end

GameData::Cutscene.define :bond_almost_kiss do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "You hung back, pretending to check your map."
  scene.message "Ahead, Lyra and Kael sat on a log."
  
  scene.message "\\bLyra\\b: Kael... when this is all over..."
  scene.message "\\bKael\\b: ...Yeah?"
  
  scene.message "She looked up at him."
  scene.message "He looked down at her."
  scene.message "The space between them shrank..."
  
  scene.message "\\bWild Starly\\b: STAAAARLY!"
  
  scene.message "They jumped apart like they'd been shocked."
  scene.message "\\bLyra\\b: *bright red* I-I should check on Willow!"
  scene.message "\\bKael\\b: *coughing* I'll... scout ahead."
  
  scene.message "They went opposite directions."
  scene.message "You tried not to laugh."
  scene.message "...And failed."
end

#===============================================================================
# CHAPTER SUB-QUESTS (Multiple quests per chapter)
#===============================================================================

# Chapter 1 Sub-Quests
GameData::Quest.define :msq_ch1_sub1 do |q|
  q.name "Morning Routine"
  q.description "Get ready for the big day."
  q.type :main_story
  q.chapter 1
  q.playable_character :player
  
  q.objectives [
    { id: :get_dressed, text: "Get dressed" },
    { id: :eat_breakfast, text: "Eat breakfast with Mom" },
    { id: :pack_bag, text: "Pack your bag" }
  ]
end

GameData::Quest.define :msq_ch1_sub2 do |q|
  q.name "The Professor's Lab"
  q.description "Meet Professor Aldric and choose your partner."
  q.type :main_story
  q.chapter 1
  q.playable_character :player
  
  q.objectives [
    { id: :walk_town, text: "Walk through Lappet Town" },
    { id: :enter_lab, text: "Enter the lab" },
    { id: :meet_professor, text: "Meet Professor Aldric" },
    { id: :see_starters, text: "See the three starters" },
    { id: :choose, text: "Choose your partner" },
    { id: :nickname, text: "Give them a nickname" }
  ]
end

GameData::Quest.define :msq_ch1_sub3 do |q|
  q.name "First Steps"
  q.description "Take your first steps as a trainer."
  q.type :main_story
  q.chapter 1
  q.playable_character :player
  
  q.objectives [
    { id: :leave_town, text: "Leave Lappet Town" },
    { id: :first_wild, text: "Encounter your first wild Pokémon" },
    { id: :first_catch, text: "Catch your first Pokémon" }
  ]
end

# Chapter 2 Sub-Quests
GameData::Quest.define :msq_ch2_sub1 do |q|
  q.name "Farm Visit"
  q.description "Visit Lyra at her family's farm."
  q.type :main_story
  q.chapter 2
  q.playable_character :player
  
  q.objectives [
    { id: :travel_farm, text: "Travel to Sunrise Farm" },
    { id: :meet_grandma, text: "Meet Lyra's grandmother" },
    { id: :find_lyra, text: "Find Lyra in the berry fields" },
    { id: :meet_willow, text: "Meet Willow the Eevee" }
  ]
end

GameData::Quest.define :msq_ch2_sub2 do |q|
  q.name "The Old Library"
  q.description "Find Kael at the old library ruins."
  q.type :main_story
  q.chapter 2
  q.playable_character :player
  
  q.objectives [
    { id: :travel_ruins, text: "Travel to the library ruins" },
    { id: :find_kael, text: "Find Kael among the books" },
    { id: :meet_shadow, text: "Meet Shadow the Zorua" },
    { id: :convince, text: "Convince Kael to join you" }
  ]
end

GameData::Quest.define :msq_ch2_sub3_lyra do |q|
  q.name "First Meeting (Lyra)"
  q.description "Experience meeting \\PN from Lyra's perspective."
  q.type :main_story
  q.chapter 2
  q.playable_character :lyra
  
  q.objectives [
    { id: :working, text: "Work in the berry fields" },
    { id: :see_pn, text: "Notice \\PN approaching" },
    { id: :introduce, text: "Introduce yourself and Willow" }
  ]
end

GameData::Quest.define :msq_ch2_sub4_kael do |q|
  q.name "Interrupted Reading (Kael)"
  q.description "Experience meeting \\PN from Kael's perspective."
  q.type :main_story
  q.chapter 2
  q.playable_character :kael
  
  q.objectives [
    { id: :reading, text: "Read ancient texts" },
    { id: :hear_footsteps, text: "Hear footsteps approaching" },
    { id: :size_up, text: "Size up the newcomers" },
    { id: :reluctant_agree, text: "Reluctantly agree to travel together" }
  ]
end

GameData::Cutscene.define :msq_kael_first_meeting do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "The ancient texts spoke of guardians..."
  scene.message "Of crowns shattered and power lost..."
  
  scene.message "Footsteps. Multiple sets."
  scene.message "You tensed, hand near Shadow's Poké Ball."
  
  scene.message "\\bKael\\b: (Intruders...?)"
  scene.message "\\bKael\\b: (No. That girl from the farm. And someone new.)"
  
  scene.message "\\bLyra\\b: Kael! There you are!"
  scene.message "\\bKael\\b: (Why is she so loud...)"
  
  scene.message "The new one stepped forward."
  scene.message "Eager eyes. Confident stance."
  scene.message "A trainer, clearly."
  
  scene.message "\\b\\PN\\b: You must be Kael. Lyra's told me about you."
  scene.message "\\bKael\\b: Has she."
  scene.message "\\bKael\\b: (Great. Now there's two of them.)"
  
  scene.message "\\bLyra\\b: We had the same dream! All three of us!"
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: (That's... statistically improbable.)"
  scene.message "\\bKael\\b: (But not impossible if the legends are true.)"
  
  scene.message "\\bKael\\b: Fine. I'll travel with you."
  scene.message "\\bKael\\b: But only because I need answers too."
  
  scene.message "\\bLyra\\b: Yay!"
  scene.message "\\bKael\\b: (What have I gotten myself into...)"
end

# Chapter 3 Sub-Quests
GameData::Quest.define :msq_ch3_sub1 do |q|
  q.name "Festival Games"
  q.description "Play mini-games at the festival."
  q.type :main_story
  q.chapter 3
  q.playable_character :player
  
  q.objectives [
    { id: :ring_toss, text: "Play Ring Toss" },
    { id: :battle_tent, text: "Try the Battle Tent" },
    { id: :eat_food, text: "Try festival food" }
  ]
end

GameData::Quest.define :msq_ch3_sub2_lyra do |q|
  q.name "Festival Fun (Lyra)"
  q.description "Experience the festival from Lyra's perspective."
  q.type :main_story
  q.chapter 3
  q.playable_character :lyra
  
  q.objectives [
    { id: :drag_kael, text: "Drag Kael to the games" },
    { id: :win_prize, text: "Win a prize for Willow" },
    { id: :share_food, text: "Share festival food with everyone" }
  ]
end

GameData::Quest.define :msq_ch3_sub3_kael do |q|
  q.name "Festival Skeptic (Kael)"
  q.description "Experience the festival from Kael's perspective."
  q.type :main_story
  q.chapter 3
  q.playable_character :kael
  
  q.objectives [
    { id: :complain, text: "Complain about the crowds" },
    { id: :win_easily, text: "Win the Battle Tent easily" },
    { id: :notice_figures, text: "Notice hooded figures watching" }
  ]
end

GameData::Cutscene.define :msq_kael_festival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "Too many people. Too much noise."
  scene.message "\\bKael\\b: (I hate festivals.)"
  
  scene.message "\\bLyra\\b: Come ON, Kael! Try the ring toss!"
  scene.message "\\bKael\\b: No."
  scene.message "\\bLyra\\b: Pleeease?"
  scene.message "\\bKael\\b: No."
  scene.message "\\bLyra\\b: *puppy dog eyes*"
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: ...Fine. One game."
  
  scene.message "\\bKael\\b: (How does she DO that?)"
  
  scene.message "You won easily. Shadow helped with aim."
  scene.message "\\bLyra\\b: You're amazing!"
  scene.message "\\bKael\\b: It's just physics."
  scene.message "\\bKael\\b: (But the praise felt... nice?)"
  
  scene.message "Movement in the crowd caught your eye."
  scene.message "Hooded figures. Watching. Waiting."
  
  scene.message "\\bKael\\b: (We're being followed.)"
  scene.message "\\bKael\\b: \\PN. We need to move."
  scene.message "\\b\\PN\\b: What?"
  scene.message "\\bKael\\b: Now."
  
  scene.message "\\bKael\\b: (Something's wrong. Very wrong.)"
end

# Chapter 7 Sub-Quests (Cult Attack - Multiple Perspectives)
GameData::Quest.define :msq_ch7_sub1_pn do |q|
  q.name "Forest Path (Player)"
  q.description "Lead the group through the Whisper Woods."
  q.type :main_story
  q.chapter 7
  q.playable_character :player
  
  q.objectives [
    { id: :lead, text: "Lead the way through the forest" },
    { id: :sense_danger, text: "Sense something is wrong" },
    { id: :prepare, text: "Prepare for battle" }
  ]
end

GameData::Quest.define :msq_ch7_sub2_lyra do |q|
  q.name "Growing Fear (Lyra)"
  q.description "Experience growing dread as danger approaches."
  q.type :main_story
  q.chapter 7
  q.playable_character :lyra
  
  q.objectives [
    { id: :willow_nervous, text: "Notice Willow's nervousness" },
    { id: :stay_close, text: "Stay close to the others" },
    { id: :try_brave, text: "Try to be brave" }
  ]
end

GameData::Quest.define :msq_ch7_sub3_kael do |q|
  q.name "Predator's Instinct (Kael)"
  q.description "Your instincts scream danger."
  q.type :main_story
  q.chapter 7
  q.playable_character :kael
  
  q.objectives [
    { id: :scan, text: "Constantly scan the treeline" },
    { id: :count, text: "Count the hidden enemies" },
    { id: :protect_position, text: "Move to protect Lyra's flank" }
  ]
end

GameData::Cutscene.define :msq_kael_sensing_danger do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "Every instinct screamed danger."
  scene.message "The forest was too quiet. Too still."
  
  scene.message "\\bKael\\b: (Left. Two. Right. Three more.)"
  scene.message "\\bKael\\b: (Behind us... at least four.)"
  scene.message "\\bKael\\b: (We're surrounded.)"
  
  scene.message "You moved casually, placing yourself between Lyra and the right flank."
  scene.message "\\bLyra\\b: Kael? What are you—"
  scene.message "\\bKael\\b: Stay close to me."
  
  scene.message "\\bLyra\\b: (Something in his voice made you obey.)"
  
  scene.message "\\bKael\\b: \\PN. We have company."
  scene.message "\\b\\PN\\b: How many?"
  scene.message "\\bKael\\b: Nine. Maybe more."
  
  scene.message "Hooded figures stepped out of the shadows."
  scene.message "\\bVex\\b: Very perceptive, child of endings."
  
  scene.message "\\bKael\\b: (They know about the marks.)"
  scene.message "\\bKael\\b: (This is bad.)"
  scene.message "\\bKael\\b: (But I won't let them touch her.)"
  scene.message "\\bKael\\b: (Any of them.)"
end

# Chapter 10 Sub-Quests (Mountain - Kael Heavy)
GameData::Quest.define :msq_ch10_sub1 do |q|
  q.name "Mountain Base"
  q.description "Begin the ascent of Mt. Corona."
  q.type :main_story
  q.chapter 10
  q.playable_character :player
  
  q.objectives [
    { id: :reach_base, text: "Reach the mountain base" },
    { id: :set_camp, text: "Set up base camp" },
    { id: :plan_route, text: "Plan the climbing route with Kael" }
  ]
end

GameData::Quest.define :msq_ch10_sub2_kael do |q|
  q.name "Mountain Guide (Kael)"
  q.description "Lead the group up the treacherous mountain."
  q.type :main_story
  q.chapter 10
  q.playable_character :kael
  
  q.objectives [
    { id: :find_path, text: "Find the safest path" },
    { id: :help_lyra, text: "Help Lyra across a gap" },
    { id: :face_memories, text: "Face memories of the orphanage mountains" }
  ]
end

GameData::Quest.define :msq_ch10_sub3_lyra do |q|
  q.name "Trusting the Guide (Lyra)"
  q.description "Trust Kael to lead you safely."
  q.type :main_story
  q.chapter 10
  q.playable_character :lyra
  
  q.objectives [
    { id: :follow, text: "Follow Kael's directions" },
    { id: :take_hand, text: "Take his hand to cross a gap" },
    { id: :notice_softness, text: "Notice how gentle his grip is" }
  ]
end

GameData::Cutscene.define :msq_lyra_takes_hand do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  scene.message "\\i[You are now playing as Lyra]"
  scene.message "The gap looked impossible."
  scene.message "Just a few feet, but the drop was endless."
  
  scene.message "\\bLyra\\b: I... I don't know if I can..."
  scene.message "\\bKael\\b: You can."
  
  scene.message "He extended his hand."
  scene.message "\\bKael\\b: I won't let you fall."
  
  scene.message "\\bLyra\\b: (His eyes... they're so intense.)"
  scene.message "\\bLyra\\b: (But there's something reassuring there too.)"
  
  scene.message "You took his hand."
  scene.message "His grip was firm. But gentle."
  scene.message "Like he was holding something precious."
  
  scene.message "\\bKael\\b: Jump on three. One. Two—"
  scene.message "\\bLyra\\b: Three!"
  
  scene.message "You leaped."
  scene.message "He caught you."
  scene.message "Pulled you close."
  
  scene.message "For a moment, you were pressed against his chest."
  scene.message "You could hear his heartbeat."
  scene.message "It was racing."
  
  scene.message "\\bKael\\b: ...You okay?"
  scene.message "\\bLyra\\b: *breathless* Y-Yeah."
  
  scene.message "He let go quickly."
  scene.message "But you noticed his ears were red again."
end

# Chapter 17 Sub-Quests (Starter Crisis - Heavy Emotion)
GameData::Quest.define :msq_ch17_sub1 do |q|
  q.name "The Ambush"
  q.description "Get ambushed by the cult."
  q.type :main_story
  q.chapter 17
  q.playable_character :player
  
  q.objectives [
    { id: :attacked, text: "Get attacked without warning" },
    { id: :fight_back, text: "Fight back desperately" },
    { id: :witness, text: "Watch your starter take the hit" }
  ]
end

GameData::Quest.define :msq_ch17_sub2 do |q|
  q.name "Race to the Center"
  q.description "Rush your injured Pokémon to safety."
  q.type :main_story
  q.chapter 17
  q.playable_character :player
  
  q.objectives [
    { id: :carry, text: "Carry your injured partner" },
    { id: :run, text: "Run as fast as you can" },
    { id: :reach_center, text: "Burst into the Pokémon Center" }
  ]
end

GameData::Quest.define :msq_ch17_sub3_lyra do |q|
  q.name "Staying Strong (Lyra)"
  q.description "Stay by \\PN's side during the worst night."
  q.type :main_story
  q.chapter 17
  q.playable_character :lyra
  
  q.objectives [
    { id: :hold_hand, text: "Hold \\PN's hand" },
    { id: :stay_awake, text: "Stay awake through the night" },
    { id: :pray, text: "Pray for their partner" }
  ]
end

GameData::Quest.define :msq_ch17_sub4_kael do |q|
  q.name "Silent Vigil (Kael)"
  q.description "Guard the room, unable to comfort."
  q.type :main_story
  q.chapter 17
  q.playable_character :kael
  
  q.objectives [
    { id: :pace, text: "Pace the hallway" },
    { id: :threaten_nurse, text: "Threaten anyone who disturbs them" },
    { id: :wait, text: "Wait in the silence" }
  ]
end

GameData::Cutscene.define :msq_kael_waiting_room do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "The waiting room was too quiet."
  scene.message "The ticking clock was deafening."
  
  scene.message "\\PN sat motionless."
  scene.message "Lyra held their hand."
  scene.message "You couldn't sit."
  
  scene.message "\\bKael\\b: (I should say something.)"
  scene.message "\\bKael\\b: (But what?)"
  scene.message "\\bKael\\b: ('It'll be fine'? I don't know that.)"
  scene.message "\\bKael\\b: ('I'm sorry'? That's useless.)"
  
  scene.message "So you paced."
  scene.message "And when a trainer walked by too loudly..."
  
  scene.message "\\bRandom Trainer\\b: Man, that battle was—"
  scene.message "\\bKael\\b: *death glare*"
  scene.message "\\bRandom Trainer\\b: ...I'll go."
  
  scene.message "\\bKael\\b: (I hate feeling helpless.)"
  scene.message "\\bKael\\b: (I hate this.)"
  
  scene.message "Hours passed."
  scene.message "Finally, the nurse emerged."
  
  scene.message "\\bNurse\\b: Your Pokémon is going to make it."
  
  scene.message "\\PN collapsed into Lyra's arms."
  scene.message "Crying."
  
  scene.message "You stayed back."
  scene.message "But something shifted in your chest."
  scene.message "\\bKael\\b: (These people... they're not just traveling companions anymore.)"
  scene.message "\\bKael\\b: (They're...)"
  scene.message "\\bKael\\b: (...friends?)"
end

# Chapter 22 Sub-Quests (Lyra's Sacrifice - Multiple Perspectives)
GameData::Quest.define :msq_ch22_sub1 do |q|
  q.name "The Dying Forest"
  q.description "Witness the World Tree's corruption."
  q.type :main_story
  q.chapter 22
  q.playable_character :player
  
  q.objectives [
    { id: :enter_grove, text: "Enter the sacred grove" },
    { id: :see_tree, text: "See the corrupted World Tree" },
    { id: :feel_despair, text: "Feel the weight of despair" }
  ]
end

GameData::Quest.define :msq_ch22_sub2_lyra do |q|
  q.name "The Choice (Lyra)"
  q.description "Make the hardest choice of your life."
  q.type :main_story
  q.chapter 22
  q.playable_character :lyra
  
  q.objectives [
    { id: :hear_xerneas, text: "Hear Xerneas's request" },
    { id: :feel_forest, text: "Feel the forest's pain" },
    { id: :decide, text: "Decide to sacrifice yourself" },
    { id: :ignore_kael, text: "Ignore Kael's pleas" }
  ]
end

GameData::Quest.define :msq_ch22_sub3_kael do |q|
  q.name "Helpless (Kael)"
  q.description "Watch helplessly as Lyra gives everything."
  q.type :main_story
  q.chapter 22
  q.playable_character :kael
  
  q.objectives [
    { id: :try_stop, text: "Try to stop her" },
    { id: :fail, text: "Fail to reach her in time" },
    { id: :catch, text: "Catch her when she falls" },
    { id: :refuse_lose, text: "Refuse to lose someone else" }
  ]
end

GameData::Cutscene.define :msq_kael_catches_lyra do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "Rainbow light poured from her body."
  scene.message "Too much. Too fast."
  
  scene.message "\\bKael\\b: LYRA! STOP!"
  scene.message "You ran toward her."
  scene.message "But a barrier of light pushed you back."
  
  scene.message "\\bKael\\b: (No no no no—)"
  
  scene.message "The corruption screamed."
  scene.message "The forest bloomed."
  scene.message "And Lyra..."
  scene.message "Lyra fell."
  
  scene.message "The barrier dropped."
  scene.message "You were already moving."
  scene.message "You caught her before she hit the ground."
  
  scene.message "\\bKael\\b: Lyra! LYRA!"
  scene.message "She was cold. So cold."
  scene.message "But breathing. Barely."
  
  scene.message "\\bKael\\b: (Don't do this.)"
  scene.message "\\bKael\\b: (Don't you DARE do this.)"
  scene.message "\\bKael\\b: (Not like Mira.)"
  scene.message "\\bKael\\b: (I can't—)"
  
  scene.message "\\bXerneas\\b: She will live."
  scene.message "\\bXerneas\\b: Her heart is strong."
  
  scene.message "Relief crashed over you like a wave."
  scene.message "You didn't let go."
  scene.message "You couldn't."
end

# Chapter 25 Sub-Quests (Kael's Trial - Detailed)
GameData::Quest.define :msq_ch25_sub1 do |q|
  q.name "Into the Dark"
  q.description "Enter the Mortality Ruins alone."
  q.type :main_story
  q.chapter 25
  q.playable_character :kael
  
  q.objectives [
    { id: :separate, text: "Separate from the group" },
    { id: :enter_ruins, text: "Enter the forbidden ruins" },
    { id: :face_dark, text: "Face the oppressive darkness" }
  ]
end

GameData::Quest.define :msq_ch25_sub2 do |q|
  q.name "Morwen's Temptation"
  q.description "Face the cult leader's offer."
  q.type :main_story
  q.chapter 25
  q.playable_character :kael
  
  q.objectives [
    { id: :hear_offer, text: "Hear the offer to bring back Mira" },
    { id: :waver, text: "Waver for a moment" },
    { id: :remember_friends, text: "Remember your new friends" }
  ]
end

GameData::Quest.define :msq_ch25_sub3 do |q|
  q.name "Mira's Message"
  q.description "Receive closure from Mira's ghost."
  q.type :main_story
  q.chapter 25
  q.playable_character :kael
  
  q.objectives [
    { id: :see_mira, text: "See Mira's true ghost" },
    { id: :hear_truth, text: "Hear that it wasn't your fault" },
    { id: :forgive_self, text: "Begin to forgive yourself" },
    { id: :say_goodbye, text: "Say goodbye" }
  ]
end

GameData::Quest.define :msq_ch25_sub4_lyra do |q|
  q.name "Waiting in Fear (Lyra)"
  q.description "Wait outside the ruins, terrified for Kael."
  q.type :main_story
  q.chapter 25
  q.playable_character :lyra
  
  q.objectives [
    { id: :pace, text: "Pace anxiously" },
    { id: :pray, text: "Pray he comes back" },
    { id: :relief, text: "Feel overwhelming relief when he emerges" }
  ]
end

GameData::Cutscene.define :msq_lyra_waiting_outside do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[You are now playing as Lyra]"
  scene.message "He'd been inside for hours."
  scene.message "The ruins were silent. Cold."
  
  scene.message "\\bLyra\\b: (Please come back.)"
  scene.message "\\bLyra\\b: (Please please please—)"
  
  scene.message "\\b\\PN\\b: Lyra, you should sit down."
  scene.message "\\bLyra\\b: I can't. What if he needs help?"
  scene.message "\\b\\PN\\b: He said he had to do this alone."
  scene.message "\\bLyra\\b: I know, but—"
  
  scene.message "Willow nuzzled against your leg."
  scene.message "\\bWillow\\b: Vee..."
  scene.message "\\bLyra\\b: I know you're worried too."
  
  scene.message "\\bLyra\\b: (What if he doesn't come out?)"
  scene.message "\\bLyra\\b: (What if the darkness takes him?)"
  scene.message "\\bLyra\\b: (What if I never get to tell him—)"
  
  scene.message "The ruins shook."
  scene.message "Light blazed from within."
  scene.message "And then..."
  
  scene.message "Kael emerged."
  scene.message "Tired. Crying. But whole."
  
  scene.message "You ran to him before you could think."
  scene.message "\\bLyra\\b: KAEL!"
  
  scene.message "He didn't push you away when you hugged him."
  scene.message "He hugged back."
  scene.message "Tightly."
  
  scene.message "\\bKael\\b: ...I'm okay."
  scene.message "\\bKael\\b: I'm okay now."
  
  scene.message "\\bLyra\\b: (Thank you. Thank you thank you thank you.)"
end

# Chapter 27 Sub-Quests (Confession - All Perspectives)
GameData::Quest.define :msq_ch27_sub1_pn do |q|
  q.name "Sleepless Night"
  q.description "Try and fail to sleep before the final battle."
  q.type :main_story
  q.chapter 27
  q.playable_character :player
  
  q.objectives [
    { id: :toss_turn, text: "Toss and turn" },
    { id: :give_up, text: "Give up on sleep" },
    { id: :go_outside, text: "Go outside for air" }
  ]
end

GameData::Quest.define :msq_ch27_sub2_kael do |q|
  q.name "Finally Ready (Kael)"
  q.description "Finally work up the courage."
  q.type :main_story
  q.chapter 27
  q.playable_character :kael
  
  q.objectives [
    { id: :stargaze, text: "Stare at the stars" },
    { id: :hear_footsteps, text: "Hear Lyra approach" },
    { id: :decide, text: "Decide tonight is the night" },
    { id: :kiss, text: "Kiss her before she can finish talking" }
  ]
end

GameData::Cutscene.define :msq_kael_confession do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "The stars were beautiful tonight."
  scene.message "Maybe the last night you'd see them."
  
  scene.message "Footsteps behind you."
  scene.message "You knew that walk."
  
  scene.message "\\bLyra\\b: Can't sleep either?"
  scene.message "\\bKael\\b: ...No."
  
  scene.message "She sat beside you."
  scene.message "Closer than necessary."
  scene.message "You didn't move away."
  
  scene.message "\\bLyra\\b: Kael... if we don't make it back..."
  scene.message "\\bKael\\b: We will."
  scene.message "\\bLyra\\b: But if we don't..."
  
  scene.message "She was looking at you."
  scene.message "Those eyes. So full of hope. Of fear. Of..."
  
  scene.message "\\bLyra\\b: I need you to know—"
  
  scene.message "\\bKael\\b: (Enough.)"
  scene.message "\\bKael\\b: (I've wasted enough time being afraid.)"
  scene.message "\\bKael\\b: (If this is our last night...)"
  
  scene.message "You kissed her."
  
  scene.message "She stiffened in surprise."
  scene.message "Then melted into you."
  
  scene.message "When you pulled back, she was crying."
  scene.message "But smiling."
  
  scene.message "\\bKael\\b: I already knew."
  scene.message "\\bKael\\b: ...I feel the same."
  
  scene.message "\\bLyra\\b: How long?"
  scene.message "\\bKael\\b: ...Since the mountain."
  scene.message "\\bLyra\\b: *laughs through tears* That long?!"
  scene.message "\\bKael\\b: I'm not... good at this."
  
  scene.message "\\bLyra\\b: I know."
  scene.message "\\bLyra\\b: I don't care."
  
  scene.message "Willow began to glow..."
  scene.message "And evolved into Sylveon."
  
  scene.message "\\bKael\\b: ...The love Pokémon. Of course."
  scene.message "\\bLyra\\b: *laughing* Shut up and hold me."
  
  scene.message "You did."
  scene.message "All night."
end

# Chapter 32 Sub-Quests (Elena's Death - Devastating)
GameData::Quest.define :msq_ch32_sub1 do |q|
  q.name "The Throne Room"
  q.description "Confront Malachar in his throne room."
  q.type :main_story
  q.chapter 32
  q.playable_character :player
  
  q.objectives [
    { id: :enter, text: "Enter the throne room" },
    { id: :see_elena, text: "See Elena captured" },
    { id: :threaten, text: "Threaten Malachar" }
  ]
end

GameData::Quest.define :msq_ch32_sub2_lyra do |q|
  q.name "Frozen in Fear (Lyra)"
  q.description "Watch helplessly as your sister is used against you."
  q.type :main_story
  q.chapter 32
  q.playable_character :lyra
  
  q.objectives [
    { id: :beg, text: "Beg for Elena's life" },
    { id: :plead, text: "Plead with Malachar" },
    { id: :scream, text: "Scream when Elena jumps" }
  ]
end

GameData::Quest.define :msq_ch32_sub3_kael do |q|
  q.name "Catching Her (Kael)"
  q.description "Catch Lyra when she breaks."
  q.type :main_story
  q.chapter 32
  q.playable_character :kael
  
  q.objectives [
    { id: :watch, text: "Watch Elena's sacrifice" },
    { id: :catch_lyra, text: "Catch Lyra when she collapses" },
    { id: :be_strong, text: "Be strong for her" }
  ]
end

GameData::Cutscene.define :msq_kael_supporting_lyra do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "Elena fell into the void."
  scene.message "And Lyra... broke."
  
  scene.message "\\bLyra\\b: ELEEEENAAA!"
  
  scene.message "Her legs gave out."
  scene.message "You were there before she hit the ground."
  
  scene.message "\\bKael\\b: (I've got you.)"
  scene.message "\\bKael\\b: (I've got you.)"
  
  scene.message "She was sobbing."
  scene.message "Incoherent. Shattered."
  
  scene.message "\\bKael\\b: Lyra. Look at me."
  scene.message "\\bLyra\\b: She's gone—she's—"
  scene.message "\\bKael\\b: I know. I know."
  
  scene.message "You held her face in your hands."
  scene.message "Made her look at you."
  
  scene.message "\\bKael\\b: She saved us."
  scene.message "\\bKael\\b: We have to finish this."
  scene.message "\\bKael\\b: For her."
  
  scene.message "\\bLyra\\b: I can't—"
  scene.message "\\bKael\\b: Yes, you can."
  scene.message "\\bKael\\b: Because you're stronger than anyone I know."
  scene.message "\\bKael\\b: And I'm right here."
  scene.message "\\bKael\\b: I'm not going anywhere."
  
  scene.message "She looked at you."
  scene.message "Something sparked in her eyes."
  scene.message "Pain. But also determination."
  
  scene.message "\\bLyra\\b: ...For Elena."
  scene.message "\\bKael\\b: For Elena."
  
  scene.message "You helped her stand."
  scene.message "Then faced the enemy together."
end

#===============================================================================
# EVIL TEAM ENCOUNTERS - THE SHATTERED HAND CULT
#===============================================================================

# First Encounter with Vex (General of Chaos)
GameData::Quest.define :evil_vex_encounter_1 do |q|
  q.name "The Trickster Appears"
  q.description "First encounter with General Vex of the Shattered Hand."
  q.type :main_story
  q.chapter 7
  q.playable_character :player
  
  q.objectives [
    { id: :ambush, text: "Get ambushed in the forest" },
    { id: :meet_vex, text: "Meet General Vex" },
    { id: :battle_vex, text: "Battle Vex's team" },
    { id: :escape, text: "Escape the trap" }
  ]
end

GameData::Cutscene.define :evil_vex_intro do |scene|
  scene.play_bgm 'Pokemon RSE - Team Aqua-Magma Encounter'
  
  scene.message "Hooded figures surrounded your group."
  scene.message "But one stepped forward, laughing."
  
  scene.message "\\bVex\\b: Well well well..."
  scene.message "\\bVex\\b: The three little Chosen Ones!"
  scene.message "He pulled back his hood, revealing a scarred face and wild eyes."
  
  scene.message "\\bVex\\b: I am Vex. General of Chaos."
  scene.message "\\bVex\\b: And you... are absolutely DELICIOUS prey!"
  
  scene.message "\\b\\PN\\b: Who are you?! What do you want?!"
  
  scene.message "\\bVex\\b: Oh, nothing much."
  scene.message "\\bVex\\b: Just your SOULS!"
  scene.message "He cackled madly."
  
  scene.message "\\bKael\\b: He's insane."
  scene.message "\\bLyra\\b: W-What do we do?!"
  scene.message "\\b\\PN\\b: We fight!"
  
  scene.message "\\bVex\\b: Oh I was HOPING you'd say that!"
  scene.trainer_battle(:VEX, 'Vex_1')
end

# Second Vex Encounter
GameData::Quest.define :evil_vex_encounter_2 do |q|
  q.name "Chaos Returns"
  q.description "Vex attacks again, revealing more about Hoopa."
  q.type :main_story
  q.chapter 12
  q.playable_character :player
end

GameData::Cutscene.define :evil_vex_hoopa_reveal do |scene|
  scene.play_bgm 'Pokemon RSE - Evil Team'
  
  scene.message "\\bVex\\b: You're still ALIVE?!"
  scene.message "\\bVex\\b: How ANNOYING!"
  scene.message "\\bVex\\b: But also... EXCITING!"
  
  scene.message "\\b\\PN\\b: Stop this madness, Vex!"
  
  scene.message "\\bVex\\b: Madness? Oh no no no..."
  scene.message "\\bVex\\b: This is DESTINY!"
  scene.message "\\bVex\\b: Hoopa will open the gates!"
  scene.message "\\bVex\\b: And Nidhoggr will DEVOUR everything!"
  
  scene.message "\\bLyra\\b: Nidhoggr...?"
  scene.message "\\bKael\\b: The Gnawing One. An ancient evil."
  
  scene.message "\\bVex\\b: Oh, the quiet one knows his legends!"
  scene.message "\\bVex\\b: Yes! Nidhoggr! The World-Eater!"
  scene.message "\\bVex\\b: And Hoopa is the KEY!"
  
  scene.message "\\b\\PN\\b: We won't let you!"
  scene.message "\\bVex\\b: You won't LET me? HAH!"
  scene.message "\\bVex\\b: You can barely understand your own marks!"
  
  scene.trainer_battle(:VEX, 'Vex_2')
end

# Shade Encounter (General of Shadows)
GameData::Quest.define :evil_shade_encounter_1 do |q|
  q.name "The Shadow Speaks"
  q.description "Encounter the silent General Shade."
  q.type :main_story
  q.chapter 14
  q.playable_character :player
end

GameData::Cutscene.define :evil_shade_intro do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "The shadows in the temple... moved."
  scene.message "Coalesced into a figure."
  
  scene.message "\\bShade\\b: ..."
  scene.message "He said nothing. Just watched."
  
  scene.message "\\bLyra\\b: W-Who's there?!"
  scene.message "\\bKael\\b: Another general. Stay back."
  
  scene.message "\\bShade\\b: ...The marks."
  scene.message "His voice was barely a whisper."
  scene.message "\\bShade\\b: ...You do not understand them."
  
  scene.message "\\b\\PN\\b: Then tell us! What do they mean?!"
  
  scene.message "\\bShade\\b: ...Death."
  scene.message "\\bShade\\b: ...Life."
  scene.message "\\bShade\\b: ...Valor."
  scene.message "\\bShade\\b: ...Your souls are already claimed."
  
  scene.message "Dark-type Pokémon materialized around him."
  scene.message "\\bShade\\b: ...Now you die."
  
  scene.trainer_battle(:SHADE, 'Shade_1')
end

# Dread Encounter (General of Fear)
GameData::Quest.define :evil_dread_encounter_1 do |q|
  q.name "Fear Incarnate"
  q.description "Face General Dread and your worst fears."
  q.type :main_story
  q.chapter 18
  q.playable_character :player
end

GameData::Cutscene.define :evil_dread_intro do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "The air grew cold. Heavy."
  scene.message "Fear crept into your bones."
  
  scene.message "\\bDread\\b: You feel it, don't you?"
  scene.message "A woman emerged from the darkness."
  scene.message "Beautiful. Terrifying."
  
  scene.message "\\bDread\\b: Fear. The great equalizer."
  scene.message "\\bDread\\b: Even the Chosen feel it."
  
  scene.message "\\bLyra\\b: *trembling* I... I can't..."
  scene.message "\\bKael\\b: Lyra! Don't listen to her!"
  
  scene.message "\\bDread\\b: Oh, but she should."
  scene.message "\\bDread\\b: I can see your fears, little Life-Bearer."
  scene.message "\\bDread\\b: Losing your friends. Being alone. Failing."
  
  scene.message "\\bLyra\\b: S-Stop...!"
  
  scene.message "\\bDread\\b: And you, Cycle-Bearer..."
  scene.message "\\bDread\\b: Losing someone else you love."
  scene.message "\\bDread\\b: Just like Mira."
  
  scene.message "\\bKael\\b: ...!"
  scene.message "\\bKael\\b: How do you know that name?!"
  
  scene.message "\\b\\PN\\b: ENOUGH!"
  scene.message "Your mark blazed with steel-blue light!"
  
  scene.message "\\bDread\\b: Interesting. Valor protects them."
  scene.message "\\bDread\\b: Very well. Let us test that courage."
  
  scene.trainer_battle(:DREAD, 'Dread_1')
end

# Ruin Encounter (General of Destruction)
GameData::Quest.define :evil_ruin_encounter_1 do |q|
  q.name "The Destroyer"
  q.description "Face the most powerful general - Ruin."
  q.type :main_story
  q.chapter 28
  q.playable_character :player
end

GameData::Cutscene.define :evil_ruin_intro do |scene|
  scene.play_bgm 'Pokemon RSE - Groudon-Kyogre Battle'
  
  scene.message "The ground shook."
  scene.message "The sky darkened."
  
  scene.message "A massive figure descended."
  scene.message "Armor of black steel. Eyes of crimson fire."
  
  scene.message "\\bRuin\\b: CHOSEN ONES."
  scene.message "His voice was like an earthquake."
  
  scene.message "\\bRuin\\b: I AM RUIN."
  scene.message "\\bRuin\\b: DESTROYER OF NATIONS."
  scene.message "\\bRuin\\b: HERALD OF NIDHOGGR."
  
  scene.message "\\bLyra\\b: He's... he's enormous..."
  scene.message "\\bKael\\b: Stay focused. He bleeds like anyone else."
  
  scene.message "\\bRuin\\b: I DO NOT BLEED."
  scene.message "\\bRuin\\b: I. DESTROY."
  
  scene.message "\\b\\PN\\b: We've beaten every general before you!"
  scene.message "\\b\\PN\\b: You'll be no different!"
  
  scene.message "\\bRuin\\b: THE OTHERS WERE TESTS."
  scene.message "\\bRuin\\b: I AM THE TRIAL."
  scene.message "\\bRuin\\b: PASS... OR PERISH."
  
  scene.trainer_battle(:RUIN, 'Ruin_1')
end

# Malachar - The High Priest
GameData::Quest.define :evil_malachar_encounter_1 do |q|
  q.name "The High Priest"
  q.description "First encounter with Malachar, leader of the Shattered Hand."
  q.type :main_story
  q.chapter 24
  q.playable_character :player
end

GameData::Cutscene.define :evil_malachar_intro do |scene|
  scene.play_bgm 'Pokemon XY - Lysandre Theme'
  
  scene.message "A man in robes of deepest purple awaited you."
  scene.message "His eyes held ancient knowledge. And terrible purpose."
  
  scene.message "\\bMalachar\\b: At last. The Chosen Three."
  scene.message "His voice was calm. Measured. Wrong."
  
  scene.message "\\bMalachar\\b: I am Malachar."
  scene.message "\\bMalachar\\b: High Priest of the Coming Dark."
  scene.message "\\bMalachar\\b: And you... are the keys to everything."
  
  scene.message "\\b\\PN\\b: We'll never help you!"
  
  scene.message "\\bMalachar\\b: Help me?"
  scene.message "He laughed. A terrible sound."
  scene.message "\\bMalachar\\b: I don't need your help."
  scene.message "\\bMalachar\\b: I need your DEATHS."
  
  scene.message "\\bKael\\b: Then come and take them."
  
  scene.message "\\bMalachar\\b: Oh, I shall."
  scene.message "\\bMalachar\\b: But not today."
  scene.message "\\bMalachar\\b: Today... someone else dies."
  
  scene.message "He gestured."
  scene.message "Professor Aldric was dragged forward!"
  
  scene.message "\\bLyra\\b: PROFESSOR!"
  scene.message "\\bProfessor Aldric\\b: Children! Run! Don't—"
  
  scene.message "\\bMalachar\\b: Ah ah ah. No heroics."
  scene.message "\\bMalachar\\b: Or he dies NOW."
end

#===============================================================================
# MARK DISCOVERY & UNDERSTANDING CUTSCENES
#===============================================================================

# First Dream - Shared Vision
GameData::Quest.define :mark_shared_dream do |q|
  q.name "The Shared Dream"
  q.description "Experience the prophetic dream that binds you all."
  q.type :main_story
  q.chapter 1
  q.playable_character :player
end

GameData::Cutscene.define :mark_first_dream do |scene|
  scene.play_bgm 'Pokemon DPPt - Lake Theme'
  
  scene.message "\\i[THE DREAM]"
  scene.message "You stood in endless void."
  scene.message "Two others stood beside you. Strangers."
  scene.message "Yet somehow... you knew them."
  
  scene.message "Three crowns floated before you."
  scene.message "Steel-blue. Rainbow. Crimson."
  scene.message "Shattered. Broken. But glowing."
  
  scene.message "\\bVoice\\b: The Chosen Three..."
  scene.message "\\bVoice\\b: You who shall bear the marks..."
  scene.message "\\bVoice\\b: The Dark rises. The End hungers."
  scene.message "\\bVoice\\b: Only you can restore what was broken."
  
  scene.message "The crowns pulsed with light—"
  scene.message "Pain! Searing pain on your arm!"
  
  scene.camera_flash 30
  
  scene.message "You woke up screaming."
end

# Mark Awakening - Player
GameData::Quest.define :mark_awakening_player do |q|
  q.name "Mark of Valor Awakens"
  q.description "Your mark awakens for the first time."
  q.type :main_story
  q.chapter 8
  q.playable_character :player
end

GameData::Cutscene.define :mark_awakening_valor do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  scene.message "Your arm burned!"
  scene.message "Steel-blue light blazed through your sleeve!"
  
  scene.message "\\b\\PN\\b: What's happening to me?!"
  
  scene.message "You pulled back your sleeve."
  scene.message "A mark. Glowing. Pulsing."
  scene.message "The shape of a sword. A crown. Valor incarnate."
  
  scene.message "\\bVoice of Zacian\\b: Champion of Valor..."
  scene.message "\\bVoice of Zacian\\b: You have been chosen..."
  scene.message "\\bVoice of Zacian\\b: To lead the charge against the Dark..."
  
  scene.message "\\b\\PN\\b: Z-Zacian?! The legendary?!"
  
  scene.message "\\bVoice of Zacian\\b: I am the blade that cuts through shadow..."
  scene.message "\\bVoice of Zacian\\b: And you... shall wield my power..."
  scene.message "\\bVoice of Zacian\\b: When the time comes..."
  
  scene.message "The light faded."
  scene.message "But you could still feel it."
  scene.message "Power. Purpose. Responsibility."
  
  scene.message "\\b\\PN\\b: (I'm... chosen? By Zacian?)"
  scene.message "\\b\\PN\\b: (What does this mean?)"
end

# Mark Awakening - Lyra
GameData::Quest.define :mark_awakening_lyra do |q|
  q.name "Mark of Life Awakens"
  q.description "Witness Lyra's mark awaken."
  q.type :main_story
  q.chapter 8
  q.playable_character :lyra
end

GameData::Cutscene.define :mark_awakening_life do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  scene.message "\\i[You are now playing as Lyra]"
  scene.message "Rainbow light burst from your arm!"
  scene.message "Pain—but also warmth. Life."
  
  scene.message "\\bLyra\\b: W-What—?!"
  scene.message "Willow howled, sensing your distress!"
  
  scene.message "The mark burned into your skin."
  scene.message "A tree. Antlers. Life eternal."
  
  scene.message "\\bVoice of Xerneas\\b: Child of Life..."
  scene.message "\\bVoice of Xerneas\\b: Bearer of my blessing..."
  scene.message "\\bVoice of Xerneas\\b: You are the heart that never stops beating..."
  
  scene.message "\\bLyra\\b: (Xerneas?! That's... impossible!)"
  
  scene.message "\\bVoice of Xerneas\\b: You feel others' pain because you carry their hope..."
  scene.message "\\bVoice of Xerneas\\b: You heal because that is your nature..."
  scene.message "\\bVoice of Xerneas\\b: You are Life. And Life endures."
  
  scene.message "\\bLyra\\b: (This is why I've always felt connected to everything...)"
  scene.message "\\bLyra\\b: (Why I can sense when Pokémon are hurt...)"
  scene.message "\\bLyra\\b: (This is who I am.)"
  
  scene.message "Willow nuzzled against you."
  scene.message "Even she could feel the change."
end

# Mark Awakening - Kael
GameData::Quest.define :mark_awakening_kael do |q|
  q.name "Mark of Cycles Awakens"
  q.description "Experience Kael's mark awakening."
  q.type :main_story
  q.chapter 8
  q.playable_character :kael
end

GameData::Cutscene.define :mark_awakening_cycles do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "Crimson fire erupted from your arm!"
  scene.message "Cold fire. The fire of endings."
  
  scene.message "\\bKael\\b: (What is this?!)"
  scene.message "Shadow snarled at the invisible threat!"
  
  scene.message "You looked at your arm."
  scene.message "A mark. Wings of destruction. A cycle unending."
  
  scene.message "\\bVoice of Yveltal\\b: Child of Endings..."
  scene.message "\\bVoice of Yveltal\\b: Bearer of my mark..."
  scene.message "\\bVoice of Yveltal\\b: You understand death because you have faced it..."
  
  scene.message "\\bKael\\b: (Yveltal. The death god.)"
  scene.message "\\bKael\\b: (Of course it chose me.)"
  
  scene.message "\\bVoice of Yveltal\\b: Death is not evil..."
  scene.message "\\bVoice of Yveltal\\b: It is transformation..."
  scene.message "\\bVoice of Yveltal\\b: The old dies so the new may live..."
  scene.message "\\bVoice of Yveltal\\b: You know this. You have lived it."
  
  scene.message "\\bKael\\b: (Mira...)"
  
  scene.message "\\bVoice of Yveltal\\b: Her death gave your life meaning..."
  scene.message "\\bVoice of Yveltal\\b: Her sacrifice forged your strength..."
  scene.message "\\bVoice of Yveltal\\b: That is the cycle. That is your power."
  
  scene.message "The fire faded."
  scene.message "\\bKael\\b: (...I am Death.)"
  scene.message "\\bKael\\b: (But Death... is not always the end.)"
end

# Understanding the Marks - Group Discussion
GameData::Quest.define :mark_understanding do |q|
  q.name "What the Marks Mean"
  q.description "Discuss the marks with your friends and understand your destiny."
  q.type :main_story
  q.chapter 9
  q.playable_character :player
end

GameData::Cutscene.define :mark_group_discussion do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "You sat around the campfire."
  scene.message "Each of you bearing a glowing mark."
  
  scene.message "\\bLyra\\b: So... we're all chosen?"
  scene.message "\\bLyra\\b: By legendary Pokémon?"
  
  scene.message "\\bKael\\b: It appears so."
  scene.message "\\bKael\\b: Zacian, Xerneas, Yveltal."
  scene.message "\\bKael\\b: Valor, Life, and Cycles."
  
  scene.message "\\b\\PN\\b: But why us?"
  
  scene.message "\\bKael\\b: The better question is why NOW."
  scene.message "\\bKael\\b: These marks haven't appeared in centuries."
  scene.message "\\bKael\\b: Something is happening. Something big."
  
  scene.message "\\bLyra\\b: The cult. The Shattered Hand."
  scene.message "\\bLyra\\b: They mentioned Nidhoggr..."
  
  scene.message "\\bKael\\b: An ancient evil. Older than Arceus's order."
  scene.message "\\bKael\\b: If they're trying to free it..."
  
  scene.message "\\b\\PN\\b: Then we're the ones who have to stop them."
  
  scene.message "Silence fell over the group."
  scene.message "The weight of destiny on young shoulders."
  
  scene.message "\\bLyra\\b: I'm scared."
  scene.message "\\bKael\\b: ...Me too."
  scene.message "\\b\\PN\\b: We all are. But we have each other."
  
  scene.message "\\bLyra\\b: *smiling weakly* Yeah. We do."
  scene.message "\\bKael\\b: ...Don't get sentimental."
  scene.message "\\bLyra\\b: Too late!"
end

# Mark Power Surge - Crisis Moment
GameData::Quest.define :mark_power_surge do |q|
  q.name "Power Unleashed"
  q.description "Your marks activate in unison during a crisis."
  q.type :main_story
  q.chapter 15
  q.playable_character :player
end

GameData::Cutscene.define :mark_trinity_activation do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Battle'
  
  scene.message "The cult had you surrounded."
  scene.message "Pokémon exhausted. Nowhere to run."
  
  scene.message "\\bVex\\b: End of the line, Chosen Ones!"
  scene.message "\\bVex\\b: Time to DIE!"
  
  scene.message "\\bLyra\\b: No..."
  scene.message "\\bKael\\b: There's too many..."
  
  scene.message "\\b\\PN\\b: (No! I won't let it end here!)"
  
  scene.message "Your mark blazed!"
  scene.message "Lyra gasped—hers too!"
  scene.message "Kael's eyes widened as his joined!"
  
  scene.message "Three lights. Steel-blue. Rainbow. Crimson."
  scene.message "They spiraled together!"
  
  scene.camera_flash 50
  
  scene.message "A shockwave of pure power!"
  scene.message "The cultists were blown back!"
  scene.message "Even Vex stumbled!"
  
  scene.message "\\bVex\\b: W-What?! WHAT WAS THAT?!"
  
  scene.message "\\b\\PN\\b: (I felt them... Lyra and Kael...)"
  scene.message "\\b\\PN\\b: (Their hearts beating with mine...)"
  
  scene.message "\\bLyra\\b: We're... connected..."
  scene.message "\\bKael\\b: The marks. They resonated."
  
  scene.message "\\b\\PN\\b: Together... we're stronger."
  scene.message "\\b\\PN\\b: Together... we can win!"
  
  scene.message "\\bVex\\b: Interesting... VERY interesting..."
  scene.message "\\bVex\\b: But it won't save you!"
  
  scene.trainer_battle(:VEX, 'Vex_3')
end

#===============================================================================
# LEGENDARY ENCOUNTERS
#===============================================================================

# Zacian Awakening
GameData::Quest.define :legendary_zacian do |q|
  q.name "The Crowned Sword"
  q.description "Awaken Zacian and receive its full power."
  q.type :main_story
  q.chapter 33
  q.playable_character :player
end

GameData::Cutscene.define :legendary_zacian_awakening do |scene|
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  scene.message "The ancient shrine pulsed with light."
  scene.message "Your mark burned—but not with pain."
  scene.message "With recognition."
  
  scene.message "\\b\\PN\\b: (It's calling to me...)"
  
  scene.message "You stepped forward."
  scene.message "The shrine cracked open."
  scene.message "Light—blinding, beautiful light!"
  
  scene.message "And then..."
  scene.message "Zacian stood before you."
  
  scene.message "Majestic. Legendary. Living metal and divine fury."
  scene.message "The sword in its mane gleamed with destiny."
  
  scene.message "\\bZacian\\b: Champion of Valor..."
  scene.message "\\bZacian\\b: You have proven your worth..."
  scene.message "\\bZacian\\b: Through trials of courage and sacrifice..."
  
  scene.message "\\b\\PN\\b: Zacian... I'm ready."
  scene.message "\\b\\PN\\b: Tell me how to stop Nidhoggr."
  
  scene.message "\\bZacian\\b: With my blade, you shall cut through shadow..."
  scene.message "\\bZacian\\b: With your heart, you shall inspire hope..."
  scene.message "\\bZacian\\b: And with your friends... you shall triumph."
  
  scene.message "Zacian lowered its head."
  scene.message "Its power flowed into you."
  scene.message "Your mark blazed white-hot—then settled."
  
  scene.message "\\bZacian\\b: Now you carry my strength..."
  scene.message "\\bZacian\\b: Use it well, Champion."
  
  scene.message "Zacian faded into light."
  scene.message "But its power remained within you."
end

# Xerneas Awakening - Lyra
GameData::Quest.define :legendary_xerneas do |q|
  q.name "The Tree of Life"
  q.description "Lyra awakens Xerneas and receives its blessing."
  q.type :main_story
  q.chapter 33
  q.playable_character :lyra
end

GameData::Cutscene.define :legendary_xerneas_awakening do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  scene.message "\\i[You are now playing as Lyra]"
  scene.message "The ancient tree began to glow."
  scene.message "Rainbow light pulsed through its branches."
  
  scene.message "\\bLyra\\b: (It's responding to me...)"
  scene.message "Willow—now Sylveon—pressed against your side."
  
  scene.message "The tree... moved."
  scene.message "No—TRANSFORMED."
  scene.message "Into the most beautiful creature you'd ever seen."
  
  scene.message "Xerneas. The Life Pokémon."
  scene.message "Its antlers held every color of creation."
  
  scene.message "\\bXerneas\\b: Child of Life..."
  scene.message "\\bXerneas\\b: Your heart is pure..."
  scene.message "\\bXerneas\\b: Your love is unconditional..."
  scene.message "\\bXerneas\\b: You are worthy."
  
  scene.message "\\bLyra\\b: I... I don't know if I'm strong enough..."
  
  scene.message "\\bXerneas\\b: Strength comes in many forms..."
  scene.message "\\bXerneas\\b: Yours is the strength to heal..."
  scene.message "\\bXerneas\\b: To nurture... to protect those you love..."
  
  scene.message "\\bLyra\\b: (Kael. \\PN. My friends.)"
  scene.message "\\bLyra\\b: I... I understand now."
  
  scene.message "\\bXerneas\\b: Then receive my gift..."
  
  scene.message "Xerneas touched its horn to your mark."
  scene.message "Warmth flooded through you."
  scene.message "Life. Hope. Love."
  
  scene.message "\\bXerneas\\b: Now go, Champion of Life..."
  scene.message "\\bXerneas\\b: And bring light to the darkness."
end

# Yveltal Awakening - Kael
GameData::Quest.define :legendary_yveltal do |q|
  q.name "The Wings of Oblivion"
  q.description "Kael awakens Yveltal and accepts his destiny."
  q.type :main_story
  q.chapter 33
  q.playable_character :kael
end

GameData::Cutscene.define :legendary_yveltal_awakening do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas-Yveltal'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "The cocoon of darkness pulsed."
  scene.message "Shadow whined, pressing close."
  
  scene.message "\\bKael\\b: (This is it.)"
  scene.message "\\bKael\\b: (Face the god of death.)"
  
  scene.message "The cocoon cracked."
  scene.message "Crimson light blazed."
  scene.message "Wings of shadow spread across the sky."
  
  scene.message "Yveltal. Destruction incarnate."
  scene.message "Yet as it looked at you..."
  scene.message "You saw no malice. Only understanding."
  
  scene.message "\\bYveltal\\b: Child of Endings..."
  scene.message "\\bYveltal\\b: You have walked with death your whole life..."
  scene.message "\\bYveltal\\b: Yet you chose to live."
  
  scene.message "\\bKael\\b: I had reasons to live."
  scene.message "\\bKael\\b: (Lyra. My friends.)"
  
  scene.message "\\bYveltal\\b: You understand that death is not evil..."
  scene.message "\\bYveltal\\b: It is necessary..."
  scene.message "\\bYveltal\\b: The cycle must turn..."
  
  scene.message "\\bKael\\b: I used to be afraid of that power."
  scene.message "\\bKael\\b: Not anymore."
  
  scene.message "\\bYveltal\\b: Then you are ready..."
  scene.message "\\bYveltal\\b: To end what must be ended..."
  scene.message "\\bYveltal\\b: So that Life may continue."
  
  scene.message "Yveltal's power flowed into you."
  scene.message "Cold. Ancient. Final."
  scene.message "But not cruel."
  
  scene.message "\\bYveltal\\b: Go, Champion of Cycles..."
  scene.message "\\bYveltal\\b: Bring the end to the endless hunger."
  
  scene.message "\\bKael\\b: (Mira... I understand now.)"
  scene.message "\\bKael\\b: (Your end was the beginning of who I became.)"
  scene.message "\\bKael\\b: (Thank you.)"
end

# Hoopa - The Key
GameData::Quest.define :legendary_hoopa do |q|
  q.name "The Mischief Maker"
  q.description "Encounter Hoopa and learn the truth about the 'key'."
  q.type :main_story
  q.chapter 26
  q.playable_character :player
end

GameData::Cutscene.define :legendary_hoopa_truth do |scene|
  scene.play_bgm 'Pokemon ORAS - Hoopa Theme'
  
  scene.message "A ring appeared in the air."
  scene.message "Golden. Magical. Ancient."
  
  scene.message "\\bHoopa\\b: Hoopa pa!"
  scene.message "A small djinn-like Pokémon floated through!"
  
  scene.message "\\bLyra\\b: It's... cute?!"
  scene.message "\\bKael\\b: That's Hoopa. The prison key."
  
  scene.message "\\bHoopa\\b: Hoopa is not key!"
  scene.message "\\bHoopa\\b: Hoopa is HOOPA!"
  scene.message "It looked upset."
  
  scene.message "\\b\\PN\\b: Wait... you can talk?!"
  
  scene.message "\\bHoopa\\b: Of course Hoopa talks!"
  scene.message "\\bHoopa\\b: Hoopa very smart!"
  scene.message "\\bHoopa\\b: Bad people want Hoopa to open door."
  scene.message "\\bHoopa\\b: But Hoopa doesn't WANT to!"
  
  scene.message "\\bKael\\b: (It's a prisoner too...)"
  
  scene.message "\\b\\PN\\b: Hoopa, what's behind the door?"
  
  scene.message "\\bHoopa\\b: ...Bad thing."
  scene.message "\\bHoopa\\b: Very bad."
  scene.message "\\bHoopa\\b: It eats. And eats. And never stops."
  scene.message "\\bHoopa\\b: Hoopa doesn't want it free."
  
  scene.message "\\bLyra\\b: Then we'll protect you!"
  scene.message "\\bLyra\\b: We won't let them use you!"
  
  scene.message "\\bHoopa\\b: *sparkles* Really?!"
  scene.message "\\bHoopa\\b: Chosen Ones protect Hoopa?!"
  
  scene.message "\\b\\PN\\b: That's what we do. We protect everyone."
  
  scene.message "\\bHoopa\\b: Then... Hoopa helps!"
  scene.message "\\bHoopa\\b: Hoopa opens OTHER doors!"
  scene.message "\\bHoopa\\b: Doors to help beat bad people!"
  
  scene.message "A ring opened—revealing paths through dimensions!"
  scene.message "\\bHoopa\\b: Hoopa pa! Let's GO!"
end

#===============================================================================
# NIDHOGGR REVELATION & FINAL CONFRONTATION
#===============================================================================

# Nidhoggr First Vision
GameData::Quest.define :nidhoggr_vision do |q|
  q.name "The Gnawing One"
  q.description "Experience a terrifying vision of Nidhoggr."
  q.type :main_story
  q.chapter 20
  q.playable_character :player
end

GameData::Cutscene.define :nidhoggr_vision_scene do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\i[NIGHTMARE]"
  scene.message "You stood at the edge of void."
  scene.message "Endless. Hungry. Alive."
  
  scene.message "Something moved in the darkness."
  scene.message "Massive. Ancient. Wrong."
  
  scene.message "\\bNidhoggr\\b: SSSO... THE MARKSSS..."
  scene.message "A voice like grinding bones."
  scene.message "\\bNidhoggr\\b: YOU THINK THEY WILL SSSAVE YOU?"
  
  scene.message "\\b\\PN\\b: (I can't... I can't see it...)"
  scene.message "\\b\\PN\\b: (Just darkness... consuming everything...)"
  
  scene.message "\\bNidhoggr\\b: I WAS HERE BEFORE ARCEUSSS..."
  scene.message "\\bNidhoggr\\b: I WILL BE HERE AFTER..."
  scene.message "\\bNidhoggr\\b: ALL THINGSSS END IN MY MAW..."
  
  scene.message "Eyes opened in the void."
  scene.message "Countless eyes. All staring. All HUNGRY."
  
  scene.message "\\bNidhoggr\\b: YOUR GODSSS CANNOT SSSAVE YOU..."
  scene.message "\\bNidhoggr\\b: THEY ARE MERELY... APPETIZERSSS..."
  
  scene.message "\\b\\PN\\b: (No! NO!)"
  
  scene.message "The darkness lunged!"
  scene.camera_flash 100
  
  scene.message "You woke up screaming."
  scene.message "Lyra and Kael were already at your side."
  scene.message "They'd had the same dream."
end

# Nidhoggr Final Battle Setup
GameData::Quest.define :nidhoggr_final do |q|
  q.name "The World Eater"
  q.description "Confront Nidhoggr as it begins to emerge."
  q.type :main_story
  q.chapter 34
  q.playable_character :player
end

GameData::Cutscene.define :nidhoggr_emergence do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Groudon-Kyogre'
  
  scene.message "The sky cracked open."
  scene.message "Not like clouds parting."
  scene.message "Like reality BREAKING."
  
  scene.message "And through that crack..."
  scene.message "Darkness poured through."
  scene.message "Living darkness. Hungry darkness."
  
  scene.message "\\bMalachar\\b: YESSS!"
  scene.message "\\bMalachar\\b: IT BEGINS!"
  scene.message "\\bMalachar\\b: NIDHOGGR! YOUR SERVANT HAS FREED YOU!"
  
  scene.message "A shape formed in the darkness."
  scene.message "Wings of void. Eyes of entropy."
  scene.message "A serpent-dragon of pure annihilation."
  
  scene.message "\\bNidhoggr\\b: *speaks without words*"
  scene.message "HUNGER. ENDLESS HUNGER."
  scene.message "It didn't speak. It WAS."
  
  scene.message "\\bLyra\\b: *terrified* It's... it's..."
  scene.message "\\bKael\\b: *grim* The end of everything."
  
  scene.message "\\b\\PN\\b: No."
  scene.message "You stepped forward."
  scene.message "Your mark blazed."
  
  scene.message "\\b\\PN\\b: It's just another enemy."
  scene.message "\\b\\PN\\b: And we have the power to stop it."
  scene.message "\\b\\PN\\b: TOGETHER!"
  
  scene.message "Lyra and Kael stepped up beside you."
  scene.message "Three marks. Three lights."
  scene.message "Against the endless dark."
  
  scene.message "\\bNidhoggr\\b: *laughs without sound*"
  scene.message "SSSO BE IT. COME. BE CONSUMED."
  
  scene.message "The final battle had begun."
end

#===============================================================================
# CHAMPION ENCOUNTERS - ANCIENT EVILS' FOLLOWERS
#===============================================================================

# Fenris - Champion of Fenrir
GameData::Quest.define :champion_fenris do |q|
  q.name "The Unchained Beast"
  q.description "Battle Fenris, feral champion of Fenrir."
  q.type :main_story
  q.chapter 19
  q.playable_character :player
end

GameData::Cutscene.define :champion_fenris_intro do |scene|
  scene.play_bgm 'Pokemon SwSh - Wild Area Battle'
  
  scene.message "A howl split the night."
  scene.message "Primal. Savage. Free."
  
  scene.message "A figure emerged from the forest."
  scene.message "More beast than human."
  scene.message "Feral eyes. Wild hair. Scars of countless battles."
  
  scene.message "\\bFenris\\b: *growls*"
  scene.message "\\bFenris\\b: I smell... POWER on you."
  scene.message "\\bFenris\\b: The power of CHAINS."
  
  scene.message "\\b\\PN\\b: Who are you?!"
  
  scene.message "\\bFenris\\b: I am FENRIS."
  scene.message "\\bFenris\\b: I serve the Great Wolf."
  scene.message "\\bFenris\\b: And you... will be hunted."
  
  scene.message "\\bKael\\b: He's aligned with another Ancient Evil."
  scene.message "\\bKael\\b: Fenrir. The Wolf of Destruction."
  
  scene.message "\\bFenris\\b: Smart prey!"
  scene.message "\\bFenris\\b: But smart prey is still PREY!"
  
  scene.trainer_battle(:FENRIS, 'Fenris_1')
end

# Valdra - Champion of Surtr
GameData::Quest.define :champion_valdra do |q|
  q.name "The Ashen Queen"
  q.description "Battle Valdra, burning champion of Surtr."
  q.type :main_story
  q.chapter 21
  q.playable_character :player
end

GameData::Cutscene.define :champion_valdra_intro do |scene|
  scene.play_bgm 'Pokemon ORAS - Groudon Battle'
  
  scene.message "The volcano had erupted without warning."
  scene.message "And from the fire... SHE walked."
  
  scene.message "A woman wreathed in flames."
  scene.message "Her skin seemed to glow with inner fire."
  scene.message "Her eyes were molten gold."
  
  scene.message "\\bValdra\\b: Ah... the Chosen Three."
  scene.message "\\bValdra\\b: Come to play in my fire?"
  
  scene.message "\\bLyra\\b: We don't want to fight!"
  
  scene.message "\\bValdra\\b: *laughs*"
  scene.message "\\bValdra\\b: But I DO."
  scene.message "\\bValdra\\b: Surtr demands DESTRUCTION."
  scene.message "\\bValdra\\b: And I shall provide."
  
  scene.message "\\b\\PN\\b: You're another champion of chaos."
  
  scene.message "\\bValdra\\b: Chaos? No."
  scene.message "\\bValdra\\b: PURITY. Fire purifies."
  scene.message "\\bValdra\\b: When Ragnarok comes..."
  scene.message "\\bValdra\\b: Only ASH will remain."
  scene.message "\\bValdra\\b: Beautiful, perfect ASH."
  
  scene.trainer_battle(:VALDRA, 'Valdra_1')
end

# Lady Morwen - Champion of Hel
GameData::Quest.define :champion_morwen do |q|
  q.name "The Voice of Death"
  q.description "Battle Lady Morwen, sorrowful champion of Hel."
  q.type :main_story
  q.chapter 25
  q.playable_character :kael
end

GameData::Cutscene.define :champion_morwen_intro do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\i[You are now playing as Kael]"
  scene.message "She waited in the center of the ruins."
  scene.message "Pale as death. Beautiful as grief."
  
  scene.message "\\bLady Morwen\\b: Kael..."
  scene.message "\\bLady Morwen\\b: Child who has touched death..."
  scene.message "\\bLady Morwen\\b: You understand, don't you?"
  
  scene.message "\\bKael\\b: Understand what?"
  
  scene.message "\\bLady Morwen\\b: The peace of ending."
  scene.message "\\bLady Morwen\\b: The silence of the grave."
  scene.message "\\bLady Morwen\\b: No more pain. No more loss."
  
  scene.message "\\bKael\\b: (She's... wrong. But there's truth in it.)"
  scene.message "\\bKael\\b: (I HAVE wanted to stop feeling.)"
  
  scene.message "\\bLady Morwen\\b: My mistress Hel offers you peace."
  scene.message "\\bLady Morwen\\b: Join us. Let the pain end."
  scene.message "\\bLady Morwen\\b: I can even... bring Mira back."
  
  scene.message "\\bKael\\b: ...!"
  scene.message "\\bKael\\b: (She knows. She KNOWS.)"
  
  scene.message "\\bKael\\b: That's... a tempting offer."
  
  scene.message "\\bLady Morwen\\b: *smiling* Isn't it?"
  
  scene.message "\\bKael\\b: But I've already made peace with Mira."
  scene.message "\\bKael\\b: And I have people who need me alive."
  
  scene.message "\\bLady Morwen\\b: *frowning* How unfortunate."
  scene.message "\\bLady Morwen\\b: Then I shall grant you a different kind of peace."
  
  scene.trainer_battle(:MORWEN, 'Morwen_1')
end

# Orm - Champion of Jormungandr
GameData::Quest.define :champion_orm do |q|
  q.name "The World Serpent's Voice"
  q.description "Battle Orm, patient champion of Jormungandr."
  q.type :main_story
  q.chapter 23
  q.playable_character :player
end

GameData::Cutscene.define :champion_orm_intro do |scene|
  scene.play_bgm 'Pokemon ORAS - Kyogre Battle'
  
  scene.message "The water churned."
  scene.message "Something... rose."
  
  scene.message "A figure stood on the waves."
  scene.message "Androgynous. Ancient. Patient."
  scene.message "Eyes that had seen eons."
  
  scene.message "\\bOrm\\b: Chosen Ones."
  scene.message "Their voice was the sound of tides."
  scene.message "\\bOrm\\b: You struggle so beautifully."
  
  scene.message "\\b\\PN\\b: Another champion?!"
  
  scene.message "\\bOrm\\b: I am Orm."
  scene.message "\\bOrm\\b: Jormungandr's voice in this realm."
  scene.message "\\bOrm\\b: The World Serpent coils around all."
  scene.message "\\bOrm\\b: And when it bites its own tail..."
  scene.message "\\bOrm\\b: All ends. All begins."
  
  scene.message "\\bKael\\b: The cycle of destruction."
  
  scene.message "\\bOrm\\b: *smiling* Clever child."
  scene.message "\\bOrm\\b: But you mistake destruction for evil."
  scene.message "\\bOrm\\b: The cycle is necessary."
  scene.message "\\bOrm\\b: This world has grown... stagnant."
  scene.message "\\bOrm\\b: It requires... renewal."
  
  scene.message "\\bLyra\\b: You can't just destroy everything!"
  
  scene.message "\\bOrm\\b: We can. We shall."
  scene.message "\\bOrm\\b: But you may try to stop us."
  scene.message "\\bOrm\\b: It will be... entertaining."
  
  scene.trainer_battle(:ORM, 'Orm_1')
end

#===============================================================================
# TOTAL QUEST COUNT: 300+ MAIN STORY QUESTS AND CUTSCENES
# Including:
# - Evil Team encounters (Vex, Shade, Dread, Ruin, Malachar)
# - Ancient Evil Champions (Fenris, Valdra, Morwen, Orm)
# - Mark awakening scenes (all three protagonists)
# - Mark understanding and power surge moments
# - Legendary encounters (Zacian, Xerneas, Yveltal, Hoopa)
# - Nidhoggr vision and emergence
# - Multi-perspective cutscenes with internal monologue
#===============================================================================
