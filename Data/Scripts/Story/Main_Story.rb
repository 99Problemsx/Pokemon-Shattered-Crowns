#===============================================================================
# POKÉMON SHATTERED CROWNS - MAIN STORY SCRIPTS
#===============================================================================
# Updated with ancient evils, champions, and full 40-chapter structure
# See Story_Bible.md for complete outline
#
# ASGHEIM REGION LOCATIONS:
# - Dawnhaven Village (Starter)
# - Sunrise Farm, Willowmere, Thornwood Town (Gym 1)
# - Ashwood Crossing, Misthollow City (Gym 2), Ravenwatch Post
# - Shadowfen, Ironpeak Village (Gym 3), Glacier Pass
# - Frostfall Town (Gym 4), Hollowbrook, Corona City (Gym 5)
# - Hearthstone, Ashvale Town (Gym 6), Grimholt Fortress (Gym 7)
# - Willowdale, Evershade Grove (Gym 8), Duskfall
# - Twilight Harbor, Stormwatch, Valoria City (League)
# - The Gateway, Asgaheim, The Shattered Throne
#===============================================================================

#===============================================================================
# ACT 1: NORMAL LIFE (Chapters 1-8)
# Locations: Dawnhaven → Sunrise Farm → Willowmere → Thornwood → Ashwood 
#            → Misthollow → Ravenwatch → Shadowfen → Ironpeak
#===============================================================================

#===============================================================================
# Chapter 1: Home - Dawnhaven Village
#===============================================================================

GameData::Cutscene.define :ch1_wake_up do |scene|
  scene.fade_in
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  scene.message "\\bMom\\b: \\PN! Time to wake up!"
  scene.message "\\bMom\\b: Professor Aldric is waiting for you at the lab!"
  scene.message "\\bMom\\b: Today's the day you get your first Pokémon!"
  
  scene.wait 60
  
  # TODO: Event Sequence - Waking up animation
  # scene.message "You stretched and looked around your room in Dawnhaven Village."
  # scene.message "The morning sun lived up to the town's name."
  # scene.message "Today was finally the day..."
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
  
  # TODO: Event Sequence - Room details
  # scene.message "You took a moment to look around your room."
  # scene.message "Posters of Champion battles. Model Pokéballs. A worn map."
  
  scene.message "\\b\\PN\\b: (I've been waiting for this day my whole life.)"
  scene.message "\\b\\PN\\b: (Today... everything changes.)"
  
  # TODO: Event Sequence - Getting dressed animation/fade
  # scene.message "You got dressed quickly."
  # scene.message "Your adventure clothes. Chosen weeks ago."
  # scene.message "Finally, you were going to use them."
  scene.fade_out 30
  scene.play_se 'Audio/SE/Equip'
  scene.wait 30
  scene.fade_in 30
  scene.show_animation :PLAYER, 4 # "Status Up" or similar generic pos
  scene.wait 20
end

GameData::Cutscene.define :ch1_breakfast_with_family do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  # TODO: Event Sequence
  # The kitchen was lively this morning.
  # Mom had maps spread across the table between breakfast plates.
  # Dad was polishing an old Pokéball.
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
  
  # TODO: Event Sequence - Family moment, player laughs at parents' banter
end

GameData::Cutscene.define :ch1_dad_gift do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bDad (Marcus)\\b: \\PN. Before you go."
  # TODO: Event Sequence - He pulled out a worn Pokéball. His hands were scarred. Battle-worn.
  # scene.message "He pulled out a worn Pokéball."
  # scene.message "His hands were scarred. Battle-worn."
  scene.move :DAD, [:step_toward_player], wait: true
  scene.play_se 'Audio/SE/Item Get'
  scene.show_animation :DAD, 20 # Item reveal generic
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
  
  # TODO: Event Sequence - Hug scene
  # scene.message "You hugged them both."
  # scene.message "The best parents a trainer could ask for."
  scene.move :MOM, [:step_toward_player], wait: true
  scene.show_emotion :PLAYER, :heart
  scene.show_emotion :MOM, :heart
  scene.show_emotion :DAD, :heart
  scene.wait 40
end

GameData::Cutscene.define :ch1_walk_to_lab do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  # TODO: Event Sequence - Village ambience
  # scene.message "Dawnhaven Village was peaceful in the morning light."
  # scene.message "Neighbors waved as you passed."
  
  scene.message "\\bOld Man\\b: Off to get your starter, \\PN?"
  scene.message "\\bOld Man\\b: Good luck out there!"
  
  scene.message "\\bYoung Girl\\b: Mommy, mommy! \\PN's gonna be a trainer!"
  scene.message "\\bMother\\b: Maybe someday you will too, dear."
  
  # TODO: Event Sequence - Internal monologue/Narrator
  # scene.message "You'd lived in this village your whole life."
  # scene.message "Everyone knew everyone."
  # scene.message "But today... today you'd finally see what was beyond."
  scene.camera_pan :up, 5, 2 # Scenic view of village
  scene.wait 60
  scene.camera_reset
  scene.wait 20
end

GameData::Cutscene.define :ch1_village_memories do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  # TODO: Event Sequence - Scenic Walk
  # scene.message "You passed the old oak tree where you used to play."
  # scene.message "The pond where wild Magikarp splashed."
  # scene.message "The fields where Mareep grazed peacefully."
  scene.camera_pan :right, 3, 3
  scene.wait 40
  scene.play_se 'Audio/SE/Splash'
  scene.wait 20
  scene.camera_pan :down, 3, 3
  scene.play_se 'Audio/SE/Sheep'
  scene.wait 40
  scene.camera_reset
  
  scene.message "\\b\\PN\\b: (I'm going to miss this place...)"
  
  # TODO: Event Sequence - World calling, can't ignore it anymore
  
  # TODO: Event Sequence - Lab Approach
  # scene.message "The Professor's lab rose ahead."
  # scene.message "Your heart pounded with anticipation."
end

GameData::Cutscene.define :ch1_ragnar_appears do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bRagnar\\b: YO! \\PN! WAIT UP!"
  
  # TODO: Event Sequence - Ragnar Introduction
  # scene.message "A familiar voice echoed across the village."
  # scene.message "You turned to see your childhood friend sprinting toward you."
  # scene.message "Ragnar. Your neighbor. Your rival since you could walk."
  # scene.message "Competitive. Loud. Loyal to a fault."
  scene.show_emotion :PLAYER, :exclamation
  scene.turn_toward_event :PLAYER, :RAGNAR
  scene.move :RAGNAR, [:step_toward_player, :step_toward_player, :step_toward_player, :jump_in_place], speed: 5
  scene.wait 10
  
  scene.message "\\bRagnar\\b: *panting* You weren't... gonna leave... without me!"
  
  scene.message "\\b\\PN\\b: I was just getting a head start."
  
  scene.message "\\bRagnar\\b: HA! Classic \\PN!"
  scene.message "\\bRagnar\\b: Always trying to be first!"
  scene.message "\\bRagnar\\b: Well NOT TODAY!"
  
  # TODO: Event Sequence - Ragnar's grin
  # scene.message "He grinned, that same competitive spark in his eyes."
  # scene.message "You'd been racing each other your whole lives."
  # scene.message "Why would today be any different?"
  scene.show_emotion :RAGNAR, :idea
  scene.jump :RAGNAR, 0, 0
  scene.wait 20
  
  scene.message "\\bRagnar\\b: Let's go get our starters TOGETHER!"
  scene.message "\\bRagnar\\b: And then I'll beat you in our first battle!"
  
  scene.message "\\b\\PN\\b: We'll see about that."
end

GameData::Cutscene.define :ch1_lab_arrival do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  # TODO: Event Sequence - Lab Interior
  # scene.message "The Professor's lab was a modest building."
  # scene.message "But inside, it was filled with wonders."
  # scene.message "Shelves of ancient artifacts. Glowing machines."
  # scene.message "And in the center... three Pokéballs."
  scene.fade_out 20
  scene.wait 20
  scene.fade_in 20
  scene.camera_pan :up, 2, 2
  scene.wait 30
  scene.show_animation :CENTRAL_MACHINE, 15 # Glowing machine animation
  scene.wait 20
  
  scene.message "\\bRagnar\\b: Whoa... so cool..."
  
  scene.message "\\bProfessor Aldric\\b: Ah! Right on time!"
  scene.message "\\bProfessor Aldric\\b: Both of you! Come in, come in!"
  
  # TODO: Event Sequence - Professor Description
  # scene.message "The Professor was an older man with kind eyes."
  # scene.message "Silver hair and a warm smile."
  # scene.message "He'd known your father. They'd been friends."
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
  
  # Starter choice handled by event
end

GameData::Cutscene.define :ch1_starter_bond do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Starter Reveal
  # scene.message "The Pokéball opened..."
  # scene.message "And there it was. Your first Pokémon."
  # scene.message "It looked up at you with curious eyes."
  # scene.message "Then... a happy cry."
  scene.play_se 'Audio/SE/Ball Open'
  scene.camera_flash 10
  scene.show_animation :PLAYER, 40 # Receive item/pokemon
  scene.wait 30
  scene.play_se 'Cries/STARTER_CRY_PLACEHOLDER'
  scene.show_emotion :PLAYER, :heart
  scene.wait 20
  
  scene.message "\\b\\PN\\b: Hey there, partner."
  scene.message "\\b\\PN\\b: Looks like we're going to be together for a long time."
  
  # TODO: Event Sequence - Bonding Animation
  # scene.message "You knelt down and extended your hand."
  # scene.message "Your starter sniffed it..."
  # scene.message "Then nuzzled against you affectionately."
  scene.jump :STARTER, 0, 0
  scene.show_emotion :STARTER, :heart
  scene.wait 20
  
  scene.message "\\bProfessor Aldric\\b: *smiling* A perfect match."
  scene.message "\\bProfessor Aldric\\b: I knew it would be."
  
  # TODO: Event Sequence - Emotional moment
  # scene.message "Something clicked in that moment."
  # scene.message "Like two puzzle pieces finding each other."
  # scene.message "You'd found your partner."
  scene.wait 30
  scene.camera_flash 10, Color.new(255, 255, 200, 100) # Warm flash
  scene.wait 10
end

GameData::Cutscene.define :ch1_ragnar_starter do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bRagnar\\b: Okay, my turn! MY TURN!"
  
  # TODO: Event Sequence - Ragnar's excitement
  # scene.message "Ragnar bounced on his heels excitedly."
  # scene.message "He reached for a Pokéball with barely contained energy."
  scene.jump :RAGNAR, 0, 0
  scene.jump :RAGNAR, 0, 0
  scene.show_emotion :RAGNAR, :exclamation
  scene.wait 20
  
  scene.message "\\bRagnar\\b: This one! I can feel it!"
  
  # TODO: Event Sequence - Pikachu reveal
  # scene.message "The ball opened, revealing a Pikachu."
  # scene.message "The electric mouse sparked with energy."
  scene.play_se 'Audio/SE/Ball Open'
  scene.camera_flash 10
  scene.show_animation :RAGNAR, 40 # Receive item/pokemon
  scene.wait 30
  scene.play_se 'Cries/PIKACHU'
  scene.show_animation :RAGNAR, 3 # Sparkle or electric effect
  scene.wait 20
  
  scene.message "\\bRagnar\\b: PERFECT! A Pikachu!"
  scene.message "\\bRagnar\\b: We're gonna be UNSTOPPABLE!"
  
  scene.message "\\bPikachu\\b: Pika!"
  
  # TODO: Event Sequence - Pikachu bonds with Ragnar
  # scene.message "The Pikachu immediately climbed onto Ragnar's shoulder."
  # scene.message "They were a perfect match too."
  scene.jump :PIKACHU, 0, 0
  scene.show_emotion :PIKACHU, :heart
  scene.show_emotion :RAGNAR, :heart
  scene.wait 20
  
  scene.message "\\bProfessor Aldric\\b: *chuckling* Two excellent pairs."
  scene.message "\\bProfessor Aldric\\b: I expect great things from both of you."
end

GameData::Cutscene.define :ch1_first_rival_battle do |scene|
  scene.play_bgm 'Pokemon RSE - Rival Battle'
  
  # TODO: Event Sequence - Rival battle setup
  # scene.message "Outside the lab, Ragnar blocked your path."
  # scene.message "That competitive grin on his face."
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
  
  # TODO: Event Sequence - Battle start animation
  # scene.message "Your starter stepped forward, ready."
  scene.play_se 'Cries/STARTER_CRY_PLACEHOLDER'
  scene.show_animation :PLAYER, 1 # Battle start shine
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
  
  # TODO: Event Sequence - Ragnar leaves
  # scene.message "Ragnar took off down a different path."
  # scene.message "His Pikachu clinging to his shoulder."
  scene.move :RAGNAR, [:step_right, :step_right, :step_right, :step_up, :step_up, :step_up], speed: 5, wait: true
  scene.remove_event :RAGNAR
  scene.wait 20
  
  scene.message "\\b\\PN\\b: (Same old Ragnar...)"
  scene.message "\\b\\PN\\b: (But I wouldn't have it any other way.)"
end

GameData::Cutscene.define :ch1_receive_pokedex do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\bProfessor Aldric\\b: One more thing before you go."
  
  # TODO: Event Sequence - Pokedex Handover
  # scene.message "He handed you a sleek red device."
  scene.play_se 'Audio/SE/Item Get'
  scene.show_animation :PLAYER, 22 # Key Item get generic
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

GameData::Cutscene.define :ch1_parents_goodbye do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Parents at gate
  # scene.message "Both your parents met you at the village gate."
  # scene.message "Dad had his old adventure bag. Mom had her research notes."
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
  
  # TODO: Event Sequence - Leaving Town
  # scene.message "With a final wave, you stepped beyond the village gate."
  # scene.message "Your parents watched, arms around each other."
  # scene.message "The road stretched ahead."
  # scene.message "Your adventure had begun."
  scene.move :PLAYER, [:step_down, :step_down, :step_down], wait: true
  scene.fade_out 60
  scene.wait 30
end

GameData::Cutscene.define :ch1_first_wild_battle do |scene|
  scene.play_bgm 'Pokemon XY - Wild Battle'
  
  # TODO: Event Sequence - Wild Encounter
  # scene.message "Not far from the village, rustling in the grass!"
  # scene.message "A wild Rattata appeared!"
  scene.play_se 'Audio/SE/Jump Small'
  scene.show_emotion :PLAYER, :exclamation
  scene.show_animation :RATTATA, 1 # Grass rustle or appear
  scene.play_se 'Cries/RATTATA'
  scene.wait 30
  
  scene.message "\\b\\PN\\b: This is it! Our first battle!"
  scene.message "\\b\\PN\\b: Let's go, partner!"
  
  # TODO: Event Sequence - Battle Animation
  # scene.message "Your starter leaped forward eagerly."
  # scene.message "The battle was short but fierce."
  scene.show_animation :PLAYER, 1 # Attack/Battle
  scene.camera_shake 2, 20
  scene.wait 30
  
  # TODO: Event Sequence - Victory celebration
  
  scene.message "\\b\\PN\\b: Great job! You're amazing!"
  
  # TODO: Event Sequence - Starter puffs up with pride, start of something incredible
end

GameData::Cutscene.define :ch1_strange_dream do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Dream Visualization
  # scene.message "That night, you had a strange dream..."
  # scene.message "Golden light. Fragments of something broken."
  # scene.message "A voice, barely a whisper..."
  scene.camera_tint :sepia, 60
  scene.wait 60
  scene.play_se 'Audio/SE/Magic'
  scene.camera_flash 30
  scene.wait 30
  scene.message "\\ts[]'Soon...'"
  
  # scene.message "You woke with a start."
  # scene.message "(What was that...?)"
  
  scene.fade_in
end

GameData::Cutscene.define :ch1_dream_details do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Dream Recollection
  # scene.message "You tried to remember the dream."
  # scene.message "Fragments of images..."
  #
  # scene.message "A crown. Broken into pieces."
  # scene.message "Three figures standing against darkness."
  # scene.message "And a roar... ancient and terrible."
  scene.camera_shake 1, 60
  scene.play_se 'Audio/SE/Roar'
  scene.wait 60
  
  scene.message "\\b\\PN\\b: (What does it mean?)"
  
  # TODO: Event Sequence - Starter Comfort
  # scene.message "Your starter nuzzled against you."
  # scene.message "As if sensing your unease."
  scene.show_emotion :PARTNER, :heart
  scene.wait 20
  
  scene.message "\\b\\PN\\b: *petting* It's okay, buddy."
  scene.message "\\b\\PN\\b: Probably just a weird dream."
  
  # TODO: Event Sequence - Lingering doubt
  # - Player senses something more to the dream
end

GameData::Cutscene.define :ch1_route_exploration do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Route Walk
  # scene.message "The next morning, you set out on Route 1."
  # scene.message "The path wound through gentle hills and forests."
  #
  # scene.message "Wild Pokémon watched from the bushes."
  # scene.message "Birds sang in the trees."
  # scene.message "Everything felt fresh and new."
  scene.camera_pan :right, 5, 2
  scene.wait 60
  scene.camera_reset
  scene.wait 20
  
  scene.message "\\b\\PN\\b: The world is so big..."
  scene.message "\\b\\PN\\b: I can't wait to see all of it."
  
  # TODO: Event Sequence - Starter excitement
  # scene.message "Your starter bounded ahead."
  # scene.message "Just as excited as you were."
  scene.jump :PARTNER, 0, 0
  scene.move :PARTNER, [:step_right, :step_right], wait: true
  scene.wait 20
  
  # TODO: Event Sequence - Farm View
  # scene.message "Ahead, you could see a farm in the distance."
  # scene.message "Sunrise Farm. Your first destination."
  scene.camera_pan :up, 3, 3
  scene.wait 40
  scene.camera_reset
  scene.wait 20
end

#===============================================================================
# Chapter 2: Reunion - Sunrise Farm & Meeting Kael
#===============================================================================

GameData::Cutscene.define :ch2_farm_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  # TODO: Event Sequence - Farm Entry
  # scene.message "Sunrise Farm appeared over the hill."
  # scene.message "Rolling fields of berries. Grazing Miltank."
  # scene.message "The scent of fresh earth and flowers."
  scene.camera_pan :up, 4, 3
  scene.wait 40
  scene.play_se 'Audio/SE/Cow'
  scene.wait 20
  scene.camera_reset
  
  scene.message "\\b\\PN\\b: This must be the place."
  scene.message "\\b\\PN\\b: Lyra said to meet her here."
  
  # TODO: Event Sequence - Lyra Waving
  # scene.message "A figure waved from the farmhouse."
  # scene.message "Bright smile. Boundless energy."
  # scene.message "That had to be Lyra."
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
  # TODO: Event Sequence - Lyra Introduction
  # scene.message "A cheerful girl waved from Sunrise Farm."
  # scene.message "The berry fields stretched behind her, vibrant and alive."
  # scene.message "Beside her stood a small Eevee."
  scene.move :LYRA, [:step_left, :step_left, :step_down], wait: true
  scene.wait 10
  scene.show_animation :LYRA, 3 # Sparkle
  scene.wait 10
  
  scene.message "\\bLyra\\b: This is Willow! Grandma gave her to me."
  scene.message "\\bLyra\\b: She's a little shy, but she's the sweetest!"
  scene.message "\\bWillow\\b: Vee..."
  
  scene.message "\\b\\PN\\b: She's adorable! Nice to meet you, Willow."
  
  scene.message "\\bLyra\\b: Hey, did you have any weird dreams last night?"
  scene.message "\\bLyra\\b: I had this strange dream about golden light..."
  
  # STORY CHOICE: Share the dream?
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
    # Standard Story Path
    scene.message "\\b\\PN\\b: Wait... me too. Golden light and broken pieces."
  end
end

GameData::Cutscene.define :ch2_pokemon_introductions do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Pokemon Playing
  # scene.message "Your starter and Willow sniffed each other curiously."
  # scene.message "Then they started playing!"
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
  
  # TODO: Event Sequence - Playful Chase
  # scene.message "The two Pokémon chased each other through the berry bushes."
  # scene.message "Carefree. Happy. Like you wished you could be."
  scene.move :WILLOW, [:run_right, :run_right, :run_up], wait: false
  scene.move :PARTNER, [:wait, :wait, :run_right, :run_right, :run_up], wait: true
  scene.wait 20
  scene.show_emotion :LYRA, :heart
  scene.wait 20
end

GameData::Cutscene.define :ch2_ragnar_route do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Ragnar Encounter
  # scene.message "A familiar voice echoed across the route."
  #
  # scene.message "Ragnar was sitting by a tree, Pikachu on his shoulder."
  # scene.message "A Rattata and a Pidgey sat nearby."
  scene.camera_pan_to_event :RAGNAR, 60
  scene.wait 20
  scene.show_emotion :RAGNAR, :sleep # Maybe he was napping? Or just sitting
  scene.wait 20
  
  scene.message "\\b\\PN\\b: Ragnar? You're ahead of me already?"
  
  scene.message "\\bRagnar\\b: Duh! I've been training non-stop!"
  scene.message "\\bRagnar\\b: Already caught two new partners!"
  
  scene.message "\\bRagnar\\b: How many have YOU caught?"
  
  scene.message "\\b\\PN\\b: I'm... taking my time."
  
  scene.message "\\bRagnar\\b: HA! Classic Broody!"
  scene.message "\\bRagnar\\b: Always overthinking everything!"
  
  # TODO: Event Sequence - Pikachu sparks playfully at starter
  
  scene.message "\\bRagnar\\b: Don't worry, I'll wait for you at the first Gym!"
  scene.message "\\bRagnar\\b: So I can watch you TRY to catch up!"
  
  # TODO: Event Sequence - Ragnar runs off laughing
end

GameData::Cutscene.define :ch2_farm_tour do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: Let me show you around!"
  
  # TODO: Event Sequence - Lyra leads through berry fields (Cheri, Pecha, Oran)
  
  scene.message "\\bLyra\\b: We grow berries for the whole region!"
  scene.message "\\bLyra\\b: Grandma started this farm 40 years ago."
  
  scene.message "\\b\\PN\\b: It's amazing. So peaceful."
  
  scene.message "\\bLyra\\b: I love it here. But..."
  scene.message "\\bLyra\\b: I've always wanted to see more."
  
  # TODO: Event Sequence - Farm chores montage (watering, feeding Miltank, chasing Wooloo)
  
  scene.message "\\bLyra\\b: *laughing* Watch out for—"
  # TODO: Event Sequence - Wooloo knocks player over
  scene.message "\\bLyra\\b: —that one. Sorry!"
end

GameData::Cutscene.define :ch2_lyra_backstory do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Walking through fields
  # scene.message "You walked through the berry fields with Lyra."
  # scene.message "The afternoon sun painted everything golden."
  scene.camera_tint :sepia, 120 # Afternoon/Golden Hour feel
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
  
  # TODO: Event Sequence - Foreshadowing moment
end

GameData::Cutscene.define :ch2_sunset_talk do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Sunset View
  # scene.message "You sat on the fence, watching the sunset."
  # scene.message "Orange and pink painted the sky."
  scene.camera_tint :sunset, 120
  scene.wait 60
  scene.camera_pan :up, 2, 5
  scene.wait 40
  # Assuming events are "sitting" or just facing up at view
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
  
  # TODO: Event Sequence - Grandmother watching
  # scene.message "Lyra's grandmother watched from the porch."
  # scene.message "Something in her eyes seemed... knowing."
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
  
  # TODO: Event Sequence - Player ponders grandmother's cryptic warning
end

GameData::Cutscene.define :ch2_grandmother_stories do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  # TODO: Event Sequence - Storytelling by fire
  # scene.message "That night, Grandmother told stories by the fire."
  scene.camera_tint :night, 60
  scene.wait 60
  scene.play_se 'Audio/SE/Fire'
  scene.wait 20
  # Assuming sitting positions
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
  
  # TODO: Event Sequence - Fire Visions
  # scene.message "The fire crackled."
  # scene.message "For a moment, you could have sworn you saw shapes in the flames."
  # scene.message "A wolf. A deer. A great bird."
  scene.show_animation :FIREPLACE, 10 # Fire animation if available or generic magic
  scene.camera_flash 30, Color.new(255, 100, 0, 50)
  scene.wait 30
  scene.play_se 'Audio/SE/Magic'
  scene.wait 20
end

GameData::Cutscene.define :ch2_shared_dream do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.fade_out
  
  # TODO: Event Sequence - Dream Shared
  # scene.message "That night, you dreamed again."
  # scene.message "The same dream. Golden light."
  #
  # scene.message "But this time... you weren't alone."
  # scene.message "Lyra was there. And a third figure, shrouded in shadow."
  scene.camera_tint :sepia, 60
  scene.wait 60
  scene.camera_pan_to_event :LYRA_DREAM, 0
  scene.show_animation :LYRA_DREAM, 4 # Appear?
  scene.wait 20
  scene.camera_pan :right, 3, 2
  scene.wait 40
  # Shadow figure
  scene.show_animation :SHADOW_FIGURE, 4 # Appear?
  scene.wait 20
  
  scene.message "\\ts[]'Three must stand...'"
  scene.message "\\ts[]'Against the coming dark...'"
  
  # scene.message "You woke to find Lyra already awake."
  # scene.message "Eyes wide."
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
  
  # TODO: Event Sequence - Morning Departure
  # scene.message "Morning came. Time to continue your journey."
  scene.camera_tint :reset, 0
  scene.fade_in 60
  scene.wait 30
  scene.play_se 'Audio/SE/Bird'
  scene.wait 20
  
  scene.message "\\bGrandmother\\b: Take care of my granddaughter."
  scene.message "\\b\\PN\\b: I will. I promise."
  
  scene.message "\\bLyra\\b: Grandma, don't worry! I can take care of myself!"
  scene.message "\\bGrandmother\\b: I know, dear. But it's nice to have friends."
  
  # TODO: Event Sequence - Pendant Gift
  # scene.message "She pressed something into Lyra's hands."
  # scene.message "A small pendant. Shaped like leaves."
  scene.move :GRANDMOTHER, [:step_toward_event, :LYRA], wait: true
  scene.play_se 'Audio/SE/Item Get'
  scene.show_animation :LYRA, 22 # Key item get
  scene.wait 20
  
  scene.message "\\bGrandmother\\b: This belonged to your mother."
  scene.message "\\bGrandmother\\b: Keep it close."
  
  scene.message "\\bLyra\\b: *hugging her* I love you, Grandma."
  scene.message "\\bGrandmother\\b: Go make me proud."
end

GameData::Cutscene.define :ch2_road_to_shadowfen do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Travel Montage
  # scene.message "You traveled through Willowmere."
  # scene.message "A peaceful village by a lake."
  
  scene.message "\\bLyra\\b: I've heard there's someone else in Shadowfen."
  scene.message "\\bLyra\\b: Another trainer our age."
  
  scene.message "\\b\\PN\\b: Friend of yours?"
  
  scene.message "\\bLyra\\b: Not exactly... we've exchanged letters."
  scene.message "\\bLyra\\b: He's... intense."
  
  scene.message "\\b\\PN\\b: Intense how?"
  
  scene.message "\\bLyra\\b: You'll see."
  
  # TODO: Event Sequence - Approaching Shadowfen
  # scene.message "The path ahead led into darker woods."
  # scene.message "Shadowfen was close."
end

GameData::Cutscene.define :ch2_shadowfen_arrival do |scene|
  scene.play_bgm 'Pokemon RSE - Abandoned Ship'
  
  # TODO: Event Sequence - Shadowfen Atmosphere
  # scene.message "Shadowfen lived up to its name."
  # scene.message "Twisted trees. Murky water. Eerie silence."
  
  scene.message "\\bLyra\\b: *shivering* This place is creepy..."
  scene.message "\\bWillow\\b: Vee..."
  
  scene.message "\\b\\PN\\b: Stay close. We don't know what's out there."
  
  # TODO: Event Sequence - Creepy Forest
  # scene.message "Fog rolled between the trees."
  # scene.message "Something moved in the shadows."
  # scene.message "But it wasn't attacking. Just... watching."
  
  scene.message "\\bLyra\\b: The library ruins should be up ahead."
  scene.message "\\bLyra\\b: That's where Kael said he'd be."
end

GameData::Cutscene.define :ch2_meet_kael do |scene|
  # TODO: Event Sequence - Meeting Kael
  # scene.message "You traveled through Willowmere and into Shadowfen."
  # scene.message "The swamp village was eerie, but beyond it lay the old library ruins."
  # scene.message "You found Kael there, reading alone. A Zorua at his feet."
  
  scene.message "\\bKael\\b: ...You're late."
  scene.message "\\bLyra\\b: Nice to see you too, grumpy!"
  scene.message "\\bKael\\b: ..."
  
  # TODO: Event Sequence - Shadow's reaction
  # scene.message "His Zorua, Shadow, eyed you suspiciously."
  
  scene.message "\\bKael\\b: I heard you both had strange dreams."
  scene.message "\\bKael\\b: So did I. The same one."
  scene.message "\\bKael\\b: That's... statistically improbable."
  
  scene.message "\\b\\PN\\b: Three of us having the exact same dream? That's not coincidence."
  scene.message "\\b\\PN\\b: Something's going on."
end

GameData::Cutscene.define :ch2_kael_introduction do |scene|
  scene.play_bgm 'Pokemon RSE - Abandoned Ship'
  
  # TODO: Event Sequence - Kael Description
  # scene.message "Kael was different from Lyra."
  # scene.message "Cold where she was warm. Quiet where she was loud."
  
  scene.message "\\bLyra\\b: Kael, this is \\PN!"
  scene.message "\\bKael\\b: I know. You mentioned them in your letters."
  
  scene.message "\\b\\PN\\b: Nice to meet you."
  scene.message "\\bKael\\b: Hmm."
  
  # TODO: Event Sequence - Shadow Inspects
  # scene.message "Shadow circled you suspiciously."
  # scene.message "Then seemed to relax."
  
  scene.message "\\bKael\\b: Shadow approves. That's... rare."
  scene.message "\\bLyra\\b: See? \\PN's great!"
  
  scene.message "\\bKael\\b: We'll see."
end

GameData::Cutscene.define :ch2_kael_backstory do |scene|
  scene.play_bgm 'Pokemon RSE - Abandoned Ship'
  
  # TODO: Event Sequence - Kael Interaction
  # scene.message "You tried to get to know Kael better."
  # scene.message "It wasn't easy. He deflected most questions."
  
  scene.message "\\bLyra\\b: So where are you from, Kael?"
  scene.message "\\bKael\\b: Nowhere."
  
  scene.message "\\bLyra\\b: Everyone's from somewhere!"
  scene.message "\\bKael\\b: I grew up in an orphanage. It burned down."
  scene.message "\\bKael\\b: There. Happy?"
  
  scene.message "\\bLyra\\b: Oh... I'm sorry, I didn't—"
  scene.message "\\bKael\\b: Don't. I don't need pity."
  
  # TODO: Event Sequence - Kael and Shadow
  # scene.message "Shadow rubbed against Kael's leg."
  scene.message "\\bKael\\b: Shadow was there too. We escaped together."
  scene.message "\\bKael\\b: She's all I need."
  
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\b\\PN\\b: Well, now you have us too."
  scene.message "\\bKael\\b: ...We'll see."
end

GameData::Cutscene.define :ch2_library_exploration do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave Library'
  
  # TODO: Event Sequence - Library Atmosphere
  # scene.message "The library ruins were fascinating."
  # scene.message "Ancient books. Faded murals. Forgotten knowledge."
  
  scene.message "\\bKael\\b: I've been researching the dreams."
  scene.message "\\bKael\\b: There are references in old texts."
  
  scene.message "\\bLyra\\b: What do they say?"
  
  scene.message "\\bKael\\b: Prophecies. Legends."
  scene.message "\\bKael\\b: Something about 'Chosen Ones' and 'guardians.'"
  
  scene.message "\\b\\PN\\b: Like the festival story?"
  
  scene.message "\\bKael\\b: *surprised* You know about that?"
  scene.message "\\b\\PN\\b: Lyra's grandmother mentioned it."
  
  scene.message "\\bKael\\b: Interesting. The old woman knows more than she lets on."
end

GameData::Cutscene.define :ch2_first_battle_together do |scene|
  scene.play_bgm 'Pokemon XY - Wild Battle'
  
  # TODO: Event Sequence - Wild Ambush
  # scene.message "As you left the library, wild Pokémon blocked your path."
  # scene.message "A territorial Nidorino and its pack."
  
  scene.message "\\bNidorino\\b: NIDO!"
  
  scene.message "\\bLyra\\b: They look angry!"
  scene.message "\\bKael\\b: We're in their territory. Stand back."
  
  scene.message "\\b\\PN\\b: No. We fight together."
  scene.message "\\b\\PN\\b: That's what friends do."
  
  scene.message "\\bKael\\b: ...Fine. Shadow, you're up."
  scene.message "\\bLyra\\b: Go, Willow!"
  
  # TODO: Event Sequence - Battle Teamwork
  # scene.message "Your three Pokémon fought side by side."
  # scene.message "Despite the danger, it felt... right."
  
  scene.message "\\bLyra\\b: We did it!"
  scene.message "\\bKael\\b: You weren't useless."
  scene.message "\\bLyra\\b: Was that... a compliment?"
  scene.message "\\bKael\\b: Don't get used to it."
end

GameData::Cutscene.define :ch2_trio_formed do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Post-Battle Bonding
  # scene.message "After the battle, something felt different."
  # scene.message "A connection between the three of you."
  
  scene.message "\\bLyra\\b: We should stick together!"
  scene.message "\\bLyra\\b: We make a great team!"
  
  scene.message "\\bKael\\b: We barely know each other."
  
  scene.message "\\b\\PN\\b: Then let's change that."
  scene.message "\\b\\PN\\b: We're having the same dreams for a reason."
  scene.message "\\b\\PN\\b: Something's bringing us together."
  
  scene.message "\\bKael\\b: ...Logical."
  scene.message "\\bKael\\b: Fine. We travel together. For now."
  
  scene.message "\\bLyra\\b: *hugging them both* YAY! Best friends!"
  scene.message "\\bKael\\b: Don't touch me."
  scene.message "\\bLyra\\b: Too late!"
  
  # TODO: Event Sequence - Trio Formation Moment
  # scene.message "And so, the trio was formed."
  # scene.message "Three trainers. Three Pokémon. One destiny."
end

#===============================================================================
# Chapter 3: The Festival - Thornwood Town
#===============================================================================
GameData::Cutscene.define :ch3_road_to_thornwood do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Autumn Road
  # scene.message "The road to Thornwood took you through beautiful autumn forests."
  # scene.message "Golden leaves crunched beneath your feet."
  
  scene.message "\\bLyra\\b: *skipping ahead* I love this time of year!"
  scene.message "\\bLyra\\b: The leaves, the smell, the festivals!"
  
  scene.message "\\bKael\\b: It's just dying vegetation."
  scene.message "\\bLyra\\b: Way to ruin the magic, Kael."
  
  scene.message "\\b\\PN\\b: What's special about Thornwood Town?"
  
  scene.message "\\bLyra\\b: It's where they hold the Festival of Crowns!"
  scene.message "\\bLyra\\b: Every year they celebrate the legend of the guardians!"
  
  scene.message "\\bKael\\b: Superstitious nonsense."
  scene.message "\\bLyra\\b: You'll see! It's amazing!"
  
  # TODO: Event Sequence - Kael smiles
  # scene.message "Shadow ran ahead, chasing falling leaves."
  # scene.message "Even Kael smiled—just a little."
  
  scene.message "\\bKael\\b: ...Don't look at me like that."
end

GameData::Cutscene.define :ch3_thornwood_entrance do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Thornwood Reveal
  # scene.message "Thornwood Town appeared through the trees."
  # scene.message "Even from a distance, you could see the festivities."
  #
  # scene.message "Banners of gold and silver hung from every building."
  # scene.message "The sound of music and laughter echoed through the forest."
  
  scene.message "\\bLyra\\b: *gasping* It's even more beautiful than I remembered!"
  scene.message "\\bLyra\\b: I came here as a kid with my parents..."
  
  # TODO: Event Sequence - Lyra's reaction
  # scene.message "She trailed off, her smile flickering."
  
  scene.message "\\b\\PN\\b: Your parents?"
  
  scene.message "\\bLyra\\b: They... they're not around anymore."
  scene.message "\\bLyra\\b: It's okay! That was a long time ago."
  scene.message "\\bLyra\\b: Grandma raised me. And Elena helped too."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: The festival looks... adequate."
  
  # TODO: Event Sequence - Lyra beams
  # scene.message "Lyra beamed at him, recognizing the kindness beneath his words."
end

GameData::Cutscene.define :ch3_festival_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Festival Atmosphere
  # scene.message "Thornwood Town bustled with festival preparations."
  # scene.message "Banners depicting golden crowns hung from every building."
  
  scene.message "\\bLyra\\b: Look at all the decorations!"
  scene.message "\\bLyra\\b: The Festival of Crowns is my favorite!"
  
  scene.message "\\bKael\\b: What's the point of all this?"
  
  scene.message "\\bLyra\\b: It celebrates the legend of the three guardians!"
  scene.message "\\bLyra\\b: Grandma used to tell me stories..."
  
  scene.message "\\b\\PN\\b: Let's check out the stalls."
  
  # TODO: Event Sequence - Festival Stalls
  # scene.message "Food vendors sold golden crown-shaped pastries."
  # scene.message "Game booths offered prizes shaped like legendary Pokémon."
  # scene.message "Children ran around with toy swords and shields."
  #
  # scene.message "For a moment, you could almost forget your strange dreams."
end

GameData::Cutscene.define :ch3_festival_food do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Food Stalls
  # scene.message "The food stalls were overwhelming in variety."
  # scene.message "Crown-shaped pastries. Berry kebabs. Honey cakes."
  
  scene.message "\\bLyra\\b: *drooling* I want one of everything!"
  scene.message "\\bKael\\b: That's nutritionally irresponsible."
  scene.message "\\bLyra\\b: Live a little, Kael!"
  
  # TODO: Event Sequence - Eating together
  # scene.message "You bought treats for everyone."
  # scene.message "Even some Pokémon-safe snacks for your partners."
  #
  # scene.message "Willow nibbled on a berry cake."
  # scene.message "Shadow sniffed her food suspiciously before devouring it."
  # scene.message "Your starter chirped happily with each bite."
  
  scene.message "\\bKael\\b: *eating quietly* ...Not bad."
  scene.message "\\bLyra\\b: Ha! I knew you'd like it!"
  
  scene.message "\\b\\PN\\b: This is nice. The three of us together."
  scene.message "\\bLyra\\b: The best team ever!"
  scene.message "\\bKael\\b: ...Adequate team."
  scene.message "\\bLyra\\b: I'll take it!"
end

GameData::Cutscene.define :ch3_pokemon_contest do |scene|
  scene.play_bgm 'Pokemon RSE - Contest'
  
  # TODO: Event Sequence - Contest Setup
  # scene.message "A crowd gathered around a small stage."
  # scene.message "A Pokémon cuteness contest was underway."
  
  scene.message "\\bHost\\b: Next up—who wants to enter their partner?"
  scene.message "\\bLyra\\b: Ooh! Willow wants to try! Right, Willow?"
  scene.message "\\bWillow\\b: Vee!!"
  
  # TODO: Event Sequence - Lyra enters Willow
  # scene.message "Lyra rushed to the stage with Willow."
  # scene.message "The little Eevee posed adorably for the crowd."
  
  scene.message "\\bKael\\b: *sighing* She's going to embarrass us."
  scene.message "\\b\\PN\\b: Let her have fun."
  
  # TODO: Event Sequence - Willow performs
  # scene.message "Willow performed tricks—spinning, jumping, making cute faces."
  # scene.message "The crowd cheered and clapped."
  
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
  
  # TODO: Event Sequence - Darts Game
  # scene.message "Kael reluctantly threw darts at the balloons."
  # scene.message "He hit every single one. Perfect score."
  
  scene.message "\\bLyra\\b: Whoa! How did you—"
  scene.message "\\bKael\\b: I grew up needing good aim."
  
  # TODO: Event Sequence - Kael gives plushie
  # scene.message "He handed the plushie to Lyra without a word."
  scene.message "\\bLyra\\b: F-for me?!"
  scene.message "\\bKael\\b: I don't need it. You obviously do."
  
  scene.message "\\bLyra\\b: *hugging plushie* Thank you, Kael!"
  scene.message "\\bKael\\b: Whatever."
  
  # TODO: Event Sequence - Kael embarrassed
  # scene.message "(But you noticed his ears turn red.)"
end

GameData::Cutscene.define :ch3_strength_test do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Strength Test
  # scene.message "A strength-testing game caught your eye."
  # scene.message "Hit the target, ring the bell, win a prize."
  
  scene.message "\\bLyra\\b: \\PN, you should try!"
  scene.message "\\b\\PN\\b: Alright, let's see..."
  
  # TODO: Event Sequence - Hammer Swing
  # scene.message "You swung the mallet with all your might."
  # scene.message "The striker flew up... and rang the bell!"
  
  scene.message "\\bBooth Owner\\b: A winner! Take your pick!"
  
  # TODO: Event Sequence - Prize Choice
  # scene.message "You chose a small charm shaped like a crown."
  # scene.message "Three interlinked circles—gold, silver, bronze."
  
  scene.message "\\bLyra\\b: Ooh, pretty! What does it represent?"
  scene.message "\\bBooth Owner\\b: The three guardians, of course!"
  scene.message "\\bBooth Owner\\b: Wear it for good luck!"
  
  # TODO: Event Sequence - Magic Item Feel
  # scene.message "Something about the charm felt... warm."
  # scene.message "Almost like it was meant for you."
  
  scene.message "\\bKael\\b: *narrowing eyes* Interesting design..."
end

GameData::Cutscene.define :ch3_mask_merchant do |scene|
  scene.play_bgm 'Pokemon RSE - Slateport City'
  
  # TODO: Event Sequence - Mask merchant beckons, display stall full of masks
  
  scene.message "\\bMask Merchant\\b: Ah, young travelers!"
  scene.message "\\bMask Merchant\\b: Pick a mask—it reveals your true nature!"
  
  scene.message "\\bLyra\\b: Ooh, fun! I want the Sylveon mask!"
  scene.message "\\bMask Merchant\\b: The fairy mask... you seek connection with others."
  
  scene.message "\\bKael\\b: *picking Zoroark mask* ...This one."
  scene.message "\\bMask Merchant\\b: The illusionist... you hide your true self."
  scene.message "\\bKael\\b: *flinching* That's—"
  
  scene.message "\\bMask Merchant\\b: And you, young one?"
  
  # TODO: Event Sequence - Mask Choice Mystery
  # scene.message "Your eyes were drawn to one mask in particular."
  # scene.message "A crown-like mask with three gems—gold, silver, bronze."
  
  scene.message "\\bMask Merchant\\b: *eyes widening* ...The Guardian Mask."
  scene.message "\\bMask Merchant\\b: I... I don't remember making that one."
  scene.message "\\bMask Merchant\\b: Take it. No charge. It was waiting for you."
  
  scene.message "\\b\\PN\\b: Waiting...?"
  # TODO: Event Sequence - Merchant ignores player, returns to other customers
end

GameData::Cutscene.define :ch3_festival_story do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Festival Town
  # scene.message "Thornwood Town's annual Festival of Crowns was in full swing."
  # scene.message "Autumn leaves danced around the forest-edge town."
  # scene.message "Lights, music, laughter filled the air."
  
  scene.message "\\bOld Storyteller\\b: Gather 'round, children!"
  scene.message "\\bOld Storyteller\\b: Let me tell you the legend of the Shattered Crowns..."
  
  scene.message "\\bOld Storyteller\\b: Long ago, three guardians protected our world."
  scene.message "\\bOld Storyteller\\b: Each wore a crown of divine power."
  scene.message "\\bOld Storyteller\\b: But a great evil coveted their strength..."
  scene.message "\\bOld Storyteller\\b: In a battle that shook the heavens..."
  scene.message "\\bOld Storyteller\\b: The crowns were shattered!"
  
  scene.message "\\bLyra\\b: Ooh, spooky!"
  scene.message "\\bKael\\b: It's just a fairy tale."
  # TODO: Event Sequence - Familiarity
  # scene.message "(But something about it felt... familiar.)"
end

GameData::Cutscene.define :ch3_storyteller_prophecy do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Storyteller drops voice low, atmosphere intensifies
  
  scene.message "\\bOld Storyteller\\b: But the legend doesn't end there..."
  scene.message "\\bOld Storyteller\\b: The ancients spoke of a prophecy."
  
  # TODO: Event Sequence - Crowd falls silent
  
  scene.message "\\bOld Storyteller\\b: 'When shadows rise and crowns awaken...'"
  scene.message "\\bOld Storyteller\\b: 'Three souls bound by fate shall stand.'"
  scene.message "\\bOld Storyteller\\b: 'Heart of light, mind of shadow, will of flame...'"
  scene.message "\\bOld Storyteller\\b: 'Together they restore what darkness unmade.'"
  
  scene.message "\\bLyra\\b: Three souls..."
  scene.message "\\bKael\\b: It's a coincidence."
  
  # TODO: Event Sequence - Storyteller locks eyes with player, eyes seem to glow
  
  scene.message "\\bOld Storyteller\\b: Perhaps. Or perhaps... the prophecy has begun."
  
  # TODO: Event Sequence - Storyteller bows mysteriously, later vanishes
end

GameData::Cutscene.define :ch3_hooded_figures do |scene|
  # TODO: Event Sequence - Hooded Watchers
  # scene.message "As the festival wound down..."
  # scene.message "You noticed hooded figures watching from the shadows."
  #
  # scene.message "When you looked again, they were gone."
  # scene.message "(Strange...)"
end

GameData::Cutscene.define :ch3_ragnar_festival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Ragnar's Mess
  # scene.message "A commotion near the food stalls caught your attention."
  #
  # scene.message "His Pikachu was surrounded by empty berry bowls."
  
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
  
  # TODO: Event Sequence - Ragnar points at Kael, Kael glares
  
  scene.message "\\bKael\\b: Who are you?"
  scene.message "\\bRagnar\\b: Your new best friend! Obviously!"
  
  # TODO: Event Sequence - Kael gives player pleading look, player shrugs
end

GameData::Cutscene.define :ch3_dance_festival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Intro to dance
  # scene.message "The main square cleared for the traditional Crown Dance."
  # scene.message "Couples and groups began swaying to festival music."
  #
  # scene.message "Shadow nudged Kael's leg encouragingly."
  scene.message "\\bShadow\\b: Zor!"
  
  scene.message "\\bKael\\b: Not you too..."
  scene.message "\\bKael\\b: *sighing heavily* Fine. ONE dance."
  
  # TODO: Event Sequence - Dancing together
  # scene.message "The three of you joined the dance circle."
  # scene.message "Lyra spun gracefully. Kael moved stiffly."
  # scene.message "You tried your best, bumping into each other and laughing."
  #
  # scene.message "Even Kael cracked a genuine smile."
  scene.message "\\bKael\\b: ...This is ridiculous."
  scene.message "\\bLyra\\b: But you're having fun! Admit it!"
  scene.message "\\bKael\\b: ...Maybe."
end

GameData::Cutscene.define :ch3_firework_setup do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  # TODO: Event Sequence - Hill Climb
  # scene.message "As dusk fell, the festival prepared for its grand finale."
  # scene.message "Fireworks would illuminate the Legend of the Crowns."
  #
  # scene.message "You climbed the hill as the last light faded."
  # scene.message "Below, the festival glittered like a sea of stars."
  # scene.message "Above, the real stars began to appear."
  
  scene.message "\\bLyra\\b: Elena... I wish she was here."
  scene.message "\\bKael\\b: Where is she now?"
  scene.message "\\bLyra\\b: Training somewhere. Being a hero."
  scene.message "\\bLyra\\b: She's always been stronger than me."
  
  scene.message "\\b\\PN\\b: Strength isn't everything."
  scene.message "\\bLyra\\b: *smiling* Thanks, \\PN."
end

GameData::Cutscene.define :ch3_festival_night do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  # TODO: Event Sequence - Fireworks Show
  # scene.message "The three of you sat on a hill overlooking the festival."
  # scene.message "Fireworks painted the night sky."
  
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
  
  # TODO: Event Sequence - Chosen One hints
  # scene.message "You looked up at the stars."
  # scene.message "For some reason, you couldn't shake the feeling..."
  # scene.message "That you already were."
end

GameData::Cutscene.define :ch3_shared_dream_again do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Kael's Dream
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # scene.message "That night, the dream came again."
  # scene.message "The void. The three figures. The shattered crowns."
  
  # scene.message "But this time... something was different."
  # scene.message "The figures turned toward you."
  
  scene.message "\\bVoice\\b: The time draws near..."
  scene.message "\\bVoice\\b: Find the first fragment before darkness does."
  scene.message "\\bVoice\\b: The forest temple holds what you seek."
  
  # scene.message "Kael woke with a start."
  # scene.message "Across the room, you and Lyra were also awake."
  # scene.message "The same dream. The same message."
  
  scene.message "\\bKael\\b: ...The forest temple."
  scene.message "\\bLyra\\b: You heard it too?"
  scene.message "\\b\\PN\\b: All three of us."
  
  scene.message "\\bKael\\b: This is beyond coincidence now."
  scene.message "\\bKael\\b: Something is deliberately contacting us."
end

GameData::Cutscene.define :ch3_shadow_stalker do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Shadow Stalker Encounter
  # scene.message "As you walked back to the inn..."
  # scene.message "Shadow suddenly growled."
  #
  # scene.message "Movement in the alley. A hooded figure."
  # scene.message "Not running this time. Watching."
  
  scene.message "\\bHooded Figure\\b: ...Soon."
  
  # scene.message "And vanished into the shadows."
  # scene.message "The festival's cheer suddenly felt very far away."
end

GameData::Cutscene.define :ch3_morning_after do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Morning After
  # scene.message "The morning after the festival felt different."
  # scene.message "The town was quiet, recovering from the celebrations."
  #
  # scene.message "You gathered your supplies and prepared to leave Thornwood."
  # scene.message "The festival was over, but your journey was just beginning."
end

GameData::Cutscene.define :ch3_departure_gift do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Gift Encounter
  # scene.message "As you left town, an old woman stopped you."
  # scene.message "She pressed something into your hand."
  
  scene.message "\\bOld Woman\\b: For your journey, young ones."
  scene.message "\\bOld Woman\\b: The path ahead is dark, but you carry light."
  
  scene.message "\\bLyra\\b: Thank you, but who—"
  
  # TODO: Event Sequence - Mysterious Crystal
  # scene.message "The woman was already gone."
  # scene.message "In your hand was a small crystal that pulsed with warmth."
  
  scene.message "\\bKael\\b: That's not normal."
  scene.message "\\bKael\\b: Normal crystals don't glow."
  
  scene.message "\\b\\PN\\b: Nothing about this journey is normal."
  
  # TODO: Event Sequence - Crystal Fades
  # scene.message "The crystal's light faded, but the warmth remained."
  # scene.message "A small comfort against the unknown ahead."
  
  scene.message "\\bLyra\\b: Well... here we go!"
  scene.message "\\bKael\\b: Stay alert. Something tells me the real journey starts now."
end

#===============================================================================
# Chapter 4: First Signs - Wild Pokémon Acting Strange
#===============================================================================

GameData::Cutscene.define :ch4_forest_path do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Forest Entry
  # scene.message "The path through Thornwood Forest was peaceful."
  # scene.message "Dappled sunlight filtered through autumn leaves."
  
  scene.message "\\bLyra\\b: It's so pretty here!"
  scene.message "\\bWillow\\b: Vee!"
  
  scene.message "\\bKael\\b: Stay focused. Forests can be dangerous."
  scene.message "\\bLyra\\b: You worry too much, Kael."
  
  scene.message "\\b\\PN\\b: He has a point. We should stay alert."
  
  # TODO: Event Sequence - Uneasy Feeling
  # scene.message "Your Pokémon walked beside you, ears perked."
  # scene.message "Something felt different today."
  # scene.message "The forest was quieter than usual."
end

GameData::Cutscene.define :ch4_strange_pokemon do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  # TODO: Event Sequence - Panic Run
  # scene.message "Something was wrong in the forest."
  # scene.message "Wild Pokémon fled past you in panic."
  
  scene.message "\\bLyra\\b: They're terrified! What's happening?"
  scene.message "\\bKael\\b: Something's driving them out."
  scene.message "\\bKael\\b: We should investigate."
  
  scene.message "\\b\\PN\\b: Agreed. Let's move carefully."
end

GameData::Cutscene.define :ch4_fleeing_pokemon do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  # TODO: Event Sequence - More Fleeing
  # scene.message "More Pokémon rushed past—Pidgey, Rattata, even a Nidoran."
  # scene.message "All running in the same direction. Away from something."
  
  scene.message "\\bLyra\\b: I've never seen them act like this!"
  scene.message "\\bLyra\\b: *kneeling down* Hey, little one, what's wrong?"
  
  # TODO: Event Sequence - Scared Caterpie
  # scene.message "A frightened Caterpie trembled in her hands."
  scene.message "\\bCaterpie\\b: Cat... cater..."
  
  scene.message "\\bKael\\b: It can't tell us anything useful."
  scene.message "\\bLyra\\b: It's still scared! We need to help!"
  
  scene.message "\\b\\PN\\b: We'll find the source and stop it."
  scene.message "\\b\\PN\\b: Lyra, can you calm it down?"
  
  scene.message "\\bLyra\\b: *nodding* Shh, it's okay, little guy..."
  scene.message "\\bLyra\\b: We'll protect you."
  
  # TODO: Event Sequence - Willow Comforts
  # scene.message "Willow curled around the Caterpie protectively."
end

GameData::Cutscene.define :ch4_eerie_clearing do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Twisted Woods
  # scene.message "You pushed deeper into the forest."
  # scene.message "The trees here were twisted, wrong somehow."
  
  scene.message "\\bKael\\b: The vegetation is distorted."
  scene.message "\\bKael\\b: Something is affecting the natural growth."
  
  scene.message "\\bLyra\\b: It feels... heavy here."
  scene.message "\\bLyra\\b: Like the air itself is sad."
  
  # TODO: Event Sequence - Shadow Growls
  # scene.message "Shadow growled at the shadows between trees."
  scene.message "\\bShadow\\b: Zor... zorua..."
  
  scene.message "\\bKael\\b: She senses something. Be ready."
  
  # TODO: Event Sequence - Ready Weapon
  # scene.message "You gripped your Pokéball tighter."
  # scene.message "Whatever was causing this, you'd face it together."
end

GameData::Cutscene.define :ch4_ancient_tablet do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Tablet Discovery
  # scene.message "Deep in the forest, you found the source."
  # scene.message "An ancient stone tablet, cracked and weathered."
  # scene.message "Strange symbols pulsed with faint light."
  
  scene.message "\\bLyra\\b: What is that?"
  scene.message "\\bKael\\b: Old. Very old."
  
  # TODO: Event Sequence - Kael Sketches
  # scene.message "He pulled out a notebook and began sketching."
  
  scene.message "\\bKael\\b: These symbols... I've never seen anything like them."
  scene.message "\\bKael\\b: But I've seen fragments in old books."
  
  scene.message "\\bLyra\\b: Can you read them?"
  scene.message "\\bKael\\b: Not yet. But I will."
  
  # TODO: Event Sequence - Tablet Sensation
  # scene.message "You noticed your arm tingling near the tablet."
  # scene.message "(Strange... it's almost warm.)"
  
  scene.message "\\b\\PN\\b: Let's bring this to Professor Aldric."
  scene.message "\\b\\PN\\b: He might know what it means."
end

GameData::Cutscene.define :ch4_tablet_reaction do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  scene.camera_flash 10
  
  # TODO: Event Sequence - Tablet Visions
  # scene.message "As you touched the tablet, light flared."
  # scene.message "Images flooded your mind—crowns, shadows, a great battle."
  
  scene.message "\\b\\PN\\b: Did you see that?!"
  
  scene.message "\\bLyra\\b: See what? The light?"
  scene.message "\\bKael\\b: ...I saw something too."
  scene.message "\\bKael\\b: Fragments. Like the dreams."
  
  scene.message "\\bLyra\\b: I didn't see anything..."
  scene.message "\\bLyra\\b: Just felt really warm suddenly."
  
  scene.message "\\bKael\\b: Interesting. Different reactions."
  scene.message "\\bKael\\b: Perhaps we each connect to it differently."
  
  # TODO: Event Sequence - Vision Ends
  # scene.message "The tablet's glow faded, but the warmth remained."
  # scene.message "Something had changed. You could feel it."
end

GameData::Cutscene.define :ch4_pokemon_returning do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Forest Calms
  # scene.message "After touching the tablet, the forest seemed to calm."
  # scene.message "Slowly, Pokémon began returning to the area."
  
  scene.message "\\bLyra\\b: Look! They're coming back!"
  scene.message "\\bLyra\\b: Whatever was scaring them... stopped."
  
  scene.message "\\bKael\\b: Because we activated the tablet?"
  scene.message "\\bKael\\b: Or because something finished what it was doing?"
  
  scene.message "\\b\\PN\\b: Either way, the forest feels better now."
  
  # TODO: Event Sequence - Caterpie Returns
  # scene.message "The Caterpie from before wiggled happily."
  scene.message "\\bLyra\\b: *releasing it* There you go, little one!"
  scene.message "\\bLyra\\b: You're safe now!"
  
  # TODO: Event Sequence - Caterpie Leaves
  # scene.message "It turned back once, as if to thank you, then disappeared into the brush."
end

GameData::Cutscene.define :ch4_first_town_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Town Arrival
  # scene.message "You arrived at Verdantia Town as evening fell."
  # scene.message "A cozy forest town with the region's first Gym."
  
  scene.message "\\bLyra\\b: Finally! A bed! Real food!"
  scene.message "\\bKael\\b: And a library. I need to research those symbols."
  
  scene.message "\\b\\PN\\b: First things first—let's check into the Pokémon Center."
  
  scene.message "\\bNurse Joy\\b: Welcome, trainers!"
  scene.message "\\bNurse Joy\\b: You look like you've had quite a day!"
  
  scene.message "\\bLyra\\b: You have no idea..."
  
  # TODO: Event Sequence - Rest
  # scene.message "Your Pokémon were healed while you rested."
  # scene.message "Tomorrow would bring new challenges."
end

GameData::Cutscene.define :ch4_ragnar_appears do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  scene.message "\\bRagnar\\b: \\PN! THERE YOU ARE!"
  
  # TODO: Event Sequence - Ragnar Appears
  # scene.message "You spun around to see Ragnar running toward you."
  # scene.message "His Pikachu—now a Raichu—perched on his shoulder."
  
  scene.message "\\bRagnar\\b: I've been looking EVERYWHERE for you!"
  scene.message "\\bRagnar\\b: I already beat the first Gym!"
  
  scene.message "\\b\\PN\\b: Already?"
  
  scene.message "\\bRagnar\\b: YEP! Fern was tough, but we crushed it!"
  scene.message "\\bRagnar\\b: *notices Lyra and Kael* Oh! You made friends!"
  
  scene.message "\\bLyra\\b: Hi! I'm Lyra!"
  scene.message "\\bKael\\b: ...Kael."
  
  scene.message "\\bRagnar\\b: Cool! I'm Ragnar!"
  scene.message "\\bRagnar\\b: \\PN's been my rival since we were kids!"
  scene.message "\\bRagnar\\b: I'm gonna beat them to the Championship!"
  
  scene.message "\\bKael\\b: *to you* Is he always like this?"
  scene.message "\\b\\PN\\b: Unfortunately, yes."
  
  scene.message "\\bRagnar\\b: HEY! I heard that!"
  scene.message "\\bRagnar\\b: Anyway, I'm not sticking around!"
  scene.message "\\bRagnar\\b: I've got badges to collect!"
  
  scene.message "\\bRagnar\\b: But \\PN—don't fall too far behind!"
  scene.message "\\bRagnar\\b: Our rematch is gonna be LEGENDARY!"
  
  # TODO: Event Sequence - Ragnar Exits
  # scene.message "He sprinted off before you could respond."
  
  scene.message "\\bLyra\\b: *giggling* I like him!"
  scene.message "\\bKael\\b: *sighing* I don't."
end

GameData::Cutscene.define :ch4_gym_leader_intro do |scene|
  scene.play_bgm 'Pokemon XY - Gym'
  
  # TODO: Event Sequence - Gym Intro
  # scene.message "The Verdantia Gym specialized in Grass-types."
  # scene.message "Its leader, Fern, was known for her nurturing battle style."
  
  scene.message "\\bFern\\b: Welcome, young trainers!"
  scene.message "\\bFern\\b: I sense potential in all three of you."
  
  scene.message "\\bLyra\\b: Thank you! We're here to challenge the Gym!"
  
  scene.message "\\bFern\\b: Wonderful! But first..."
  scene.message "\\bFern\\b: Tell me—why do you want to become strong?"
  
  scene.message "\\bLyra\\b: To protect the people I love!"
  scene.message "\\bKael\\b: To find answers."
  scene.message "\\b\\PN\\b: To become someone who can make a difference."
  
  scene.message "\\bFern\\b: *smiling* Good answers, all of them."
  scene.message "\\bFern\\b: Strength without purpose is just destruction."
  scene.message "\\bFern\\b: Remember that, whatever path you walk."
end

GameData::Cutscene.define :ch4_gym1_prep do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bLyra\\b: The first Gym! I'm so nervous!"
  scene.message "\\bKael\\b: Nervousness is a waste of energy."
  scene.message "\\bKael\\b: Either you're prepared or you're not."
  
  scene.message "\\bLyra\\b: *pouting* Could you be supportive for once?"
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: You'll do fine."
  
  scene.message "\\bLyra\\b: *surprised* Was that... encouragement?"
  scene.message "\\bKael\\b: Don't get used to it."
  
  scene.message "\\b\\PN\\b: *laughing* Let's all do our best!"
  scene.message "\\bLyra\\b: Together!"
  scene.message "\\bKael\\b: ...Together."
end

GameData::Cutscene.define :ch4_gym_battle do |scene|
  scene.play_bgm 'Pokemon XY - Gym Leader Battle'
  
  # TODO: Event Sequence - Battle Description
  # scene.message "The battle against Fern was intense."
  # scene.message "Her Pokémon moved in perfect harmony with nature."
  
  scene.message "\\bFern\\b: Feel the rhythm of the forest!"
  scene.message "\\bFern\\b: Leafeon, Leaf Blade!"
  
  # TODO: Event Sequence - Battle Action
  # scene.message "Your Pokémon dodged and countered."
  # scene.message "Every move was a learning experience."
  
  scene.message "\\bFern\\b: You adapt quickly!"
  scene.message "\\bFern\\b: But can you handle this?"
  
  # TODO: Event Sequence - Ace Reveal
  # scene.message "Her ace Pokémon emerged—a powerful Venusaur."
  # scene.message "The final clash would determine everything."
end

GameData::Cutscene.define :ch4_gym1_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory!'
  
  # TODO: Event Sequence - Victory
  # scene.message "You defeated the Gym Leader!"
  # scene.message "The first Badge was yours!"
  
  scene.message "\\bFern\\b: Impressive! You've got real potential!"
  scene.message "\\bFern\\b: Here, take the Forest Badge!"
  
  scene.message "\\bLyra\\b: We did it! All three of us!"
  scene.message "\\bKael\\b: *small nod* Not bad."
  
  scene.message "\\b\\PN\\b: One down, seven to go!"
  
  scene.set_switch SW::BADGE_1, true
end

GameData::Cutscene.define :ch4_fern_warning do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Serious Talk
  # scene.message "After the celebration, Fern pulled you aside."
  # scene.message "Her expression was serious."
  
  scene.message "\\bFern\\b: I sensed something unusual during our battle."
  scene.message "\\bFern\\b: A power dormant within you three."
  
  scene.message "\\b\\PN\\b: What kind of power?"
  
  scene.message "\\bFern\\b: I don't know. But the forest knows."
  scene.message "\\bFern\\b: The plants whispered when you entered."
  scene.message "\\bFern\\b: They haven't done that in centuries."
  
  scene.message "\\bKael\\b: ...Centuries?"
  
  scene.message "\\bFern\\b: There are old stories. Older than the League."
  scene.message "\\bFern\\b: About chosen ones who would awaken the guardians."
  scene.message "\\bFern\\b: Be careful on your journey."
  scene.message "\\bFern\\b: Not everyone welcomes change."
  
  # TODO: Event Sequence - Leaving Gym
  # scene.message "Her words echoed in your mind as you left the Gym."
end

GameData::Cutscene.define :ch4_evening_reflection do |scene|
  scene.play_bgm 'Pokemon RSE - Dewford Town'
  
  # TODO: Event Sequence - Stargazing
  # scene.message "That evening, you sat outside the Pokémon Center."
  # scene.message "Stars filled the sky above Verdantia Town."
  
  scene.message "\\bLyra\\b: We actually won our first Badge!"
  scene.message "\\bLyra\\b: I can't believe it!"
  
  scene.message "\\bKael\\b: Believe it. You earned it."
  
  scene.message "\\b\\PN\\b: We all did. Together."
  
  scene.message "\\bLyra\\b: *yawning* Best. Day. Ever."
  scene.message "\\bLyra\\b: Even with the scary forest stuff."
  
  scene.message "\\bKael\\b: That 'scary forest stuff' is why we're here."
  scene.message "\\bKael\\b: The tablet, the dreams, Fern's warning..."
  scene.message "\\bKael\\b: It's all connected."
  
  scene.message "\\b\\PN\\b: Then we'll figure it out. Together."
  
  # TODO: Event Sequence - Resting
  # scene.message "Shadow curled at Kael's feet."
  # scene.message "Willow dozed in Lyra's lap."
  # scene.message "Your starter nuzzled against you."
  #
  # scene.message "Whatever was coming, you'd face it as a team."
end

#===============================================================================
# Chapter 5: The Library - Kael's Research
#===============================================================================

GameData::Cutscene.define :ch5_travel_to_ironvale do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Travel Montage
  # scene.message "The road to Ironvale City took you through rolling hills."
  # scene.message "Each town you passed had stories of strange events."
  
  scene.message "\\bLyra\\b: Did you hear what that merchant said?"
  scene.message "\\bLyra\\b: 'The ground groaned last night.'"
  
  scene.message "\\bKael\\b: Seismic activity has increased across the region."
  scene.message "\\bKael\\b: Something geological is happening."
  
  scene.message "\\b\\PN\\b: Or something not-so-geological."
  
  scene.message "\\bKael\\b: ...Possibly."
  
  # TODO: Event Sequence - Ironvale Reveal
  # scene.message "Ironvale City appeared on the horizon."
  # scene.message "Its famous library tower pierced the clouds."
  
  scene.message "\\bKael\\b: *eyes lighting up* The Grand Archive."
  scene.message "\\bKael\\b: If answers exist anywhere, they're there."
end

GameData::Cutscene.define :ch5_ironvale_arrival do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave City'
  
  # TODO: Event Sequence - Scholar's Paradise
  # scene.message "Ironvale City was a scholar's paradise."
  # scene.message "Bookshops lined every street. Academics filled the cafes."
  
  scene.message "\\bLyra\\b: This place is so... intellectual."
  scene.message "\\bLyra\\b: I feel underdressed."
  
  scene.message "\\bKael\\b: For once, I feel at home."
  
  scene.message "\\b\\PN\\b: Let's find a place to stay first."
  scene.message "\\b\\PN\\b: Then you can visit your beloved library, Kael."
  
  scene.message "\\bKael\\b: It's not 'beloved.' It's practical."
  scene.message "\\bLyra\\b: Sure, Kael. Sure."
  
  # TODO: Event Sequence - Shadow's excitement
  # scene.message "Shadow bounced ahead, intrigued by all the new scents."
  # scene.message "Even she seemed excited to explore."
end

GameData::Cutscene.define :ch5_library_exterior do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave Library'
  
  # TODO: Event Sequence - Library Massive
  # scene.message "The Grand Archive was massive."
  # scene.message "Ancient stone walls covered in ivy. Stained glass windows."
  
  scene.message "\\bKael\\b: Fifteen floors of knowledge."
  scene.message "\\bKael\\b: Some texts here predate recorded history."
  
  scene.message "\\bLyra\\b: *whistling* That's a LOT of reading."
  
  scene.message "\\bKael\\b: You don't have to come."
  scene.message "\\bLyra\\b: And miss watching you nerd out? Never!"
  
  scene.message "\\b\\PN\\b: I'm curious too."
  scene.message "\\b\\PN\\b: Maybe we'll find something about those symbols."
  
  # TODO: Event Sequence - Library Interior
  # scene.message "The doors creaked open, revealing endless rows of books."
  # scene.message "The smell of old paper and knowledge filled the air."
end

GameData::Cutscene.define :ch5_library_research do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave Library'
  
  # TODO: Event Sequence - Research Montage
  # scene.message "Kael spent three days in the old library."
  # scene.message "Barely eating. Barely sleeping."
  
  scene.message "\\bLyra\\b: *worried* He's going to work himself to death."
  scene.message "\\b\\PN\\b: That's just how Kael is."
  
  # TODO: Event Sequence - Found Book
  # scene.message "Finally, he emerged with a dusty tome."
  
  scene.message "\\bKael\\b: Found it."
  scene.message "\\bKael\\b: The symbols on that tablet..."
  scene.message "\\bKael\\b: They mention something called 'Asgaheim.'"
  
  scene.message "\\bLyra\\b: Asgaheim? What's that?"
  
  scene.message "\\bKael\\b: I don't know. The book doesn't explain."
  scene.message "\\bKael\\b: But it says it's 'the realm where gods sleep.'"
  
  scene.message "\\b\\PN\\b: Gods? Like... legendary Pokémon?"
  
  scene.message "\\bKael\\b: Maybe. Or something older."
  scene.message "\\bKael\\b: There's more research to do."
end

GameData::Cutscene.define :ch5_ancient_text do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Ancient Text Display
  # scene.message "Kael showed you what he'd found."
  # scene.message "An ancient text, yellowed with age."
  
  scene.message "\\bKael\\b: This book mentions 'Three Guardians.'"
  scene.message "\\bKael\\b: Beings of immense power who protected balance."
  
  scene.message "\\bLyra\\b: Like the festival story!"
  
  scene.message "\\bKael\\b: Exactly. But this predates those stories."
  scene.message "\\bKael\\b: This is the SOURCE."
  
  scene.message "\\b\\PN\\b: What happened to them?"
  
  scene.message "\\bKael\\b: According to this..."
  scene.message "\\bKael\\b: They sacrificed themselves to seal away a great darkness."
  scene.message "\\bKael\\b: Their power was split into 'Crown Fragments.'"
  scene.message "\\bKael\\b: Scattered across the world."
  
  scene.message "\\bLyra\\b: So the shattered crowns are real..."
  scene.message "\\bKael\\b: Very real. And apparently, we're connected to them."
end

GameData::Cutscene.define :ch5_librarian_warning do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave Library'
  
  # TODO: Event Sequence - Librarian Warning
  # scene.message "An elderly librarian approached your table."
  # scene.message "Her eyes were sharp despite her age."
  
  scene.message "\\bLibrarian\\b: You're researching the old legends."
  scene.message "\\bLibrarian\\b: Be careful with that knowledge."
  
  scene.message "\\bKael\\b: Why? It's just history."
  
  scene.message "\\bLibrarian\\b: Is it?"
  scene.message "\\bLibrarian\\b: Some knowledge awakens things best left sleeping."
  scene.message "\\bLibrarian\\b: Others have come before you. Seeking the same answers."
  
  scene.message "\\b\\PN\\b: Others? Who?"
  
  scene.message "\\bLibrarian\\b: People in dark robes. Symbol of a broken hand."
  scene.message "\\bLibrarian\\b: They took many books. Asked about the guardians."
  
  scene.message "\\bLyra\\b: The Shattered Hand..."
  
  scene.message "\\bLibrarian\\b: Leave these matters alone, children."
  scene.message "\\bLibrarian\\b: Before you attract their attention."
  
  # TODO: Event Sequence - Librarian Exit
  # scene.message "She shuffled away, leaving you with a chill down your spine."
end

GameData::Cutscene.define :ch5_kael_revelation do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Kael's Memory
  # scene.message "That night, Kael couldn't sleep."
  # scene.message "The research had awakened old memories."
  
  scene.message "\\bKael\\b: (The fire... Mira...)"
  
  # TODO: Event Sequence - Shadow Comforts
  # scene.message "Shadow nuzzled his leg."
  scene.message "\\bShadow\\b: Zor?"
  
  scene.message "\\bKael\\b: I'm fine, girl."
  scene.message "\\bKael\\b: Just... remembering."
  
  # TODO: Event Sequence - Flashback Fire
  # scene.message "The orphanage fire. The screaming. His sister's sacrifice."
  # scene.message "She'd pushed him out the window before the flames took her."
  
  scene.message "\\bKael\\b: I couldn't save her."
  scene.message "\\bKael\\b: But maybe... if these legends are real..."
  scene.message "\\bKael\\b: Maybe there's power enough to prevent such things."
  
  # TODO: Event Sequence - Shadow Bond
  # scene.message "Shadow licked his hand."
  # scene.message "She understood. She always did."
end

GameData::Cutscene.define :ch5_lyra_letter do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Letter Reading
  # scene.message "A letter arrived for Lyra from her grandmother."
  # scene.message "Her expression grew serious as she read."
  
  scene.message "\\bLyra\\b: Grandma says Elena is coming home."
  scene.message "\\bLyra\\b: She's been investigating something..."
  
  scene.message "\\b\\PN\\b: That's good news, right?"
  
  scene.message "\\bLyra\\b: I don't know. The letter sounds worried."
  scene.message "\\bLyra\\b: Elena found something. Something about our family."
  scene.message "\\bLyra\\b: About why we've always been connected to legends."
  
  scene.message "\\bKael\\b: Another piece of the puzzle."
  
  scene.message "\\bLyra\\b: I need to see her."
  scene.message "\\bLyra\\b: She's my big sister. She always knows what to do."
  
  scene.message "\\b\\PN\\b: We'll meet up with her. Together."
  scene.message "\\bLyra\\b: *smiling slightly* Together."
end

GameData::Cutscene.define :ch5_lyra_heirloom do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Lyra Shaken
  # scene.message "Lyra returned from visiting her grandmother."
  # scene.message "She looked... shaken."
  
  scene.message "\\b\\PN\\b: Lyra? Everything okay?"
  
  scene.message "\\bLyra\\b: My grandmother showed me something."
  scene.message "\\bLyra\\b: A family heirloom. Very old."
  
  scene.message "\\bKael\\b: What kind of heirloom?"
  
  scene.message "\\bLyra\\b: A pendant. It glowed when I touched it."
  scene.message "\\bLyra\\b: Grandma got really serious."
  scene.message "\\bLyra\\b: She said our family has a 'duty'..."
  scene.message "\\bLyra\\b: But she wouldn't explain what."
  
  scene.message "\\b\\PN\\b: That's strange..."
  
  scene.message "\\bKael\\b: Another mystery."
  scene.message "\\bKael\\b: They're all connected. I'm sure of it."
end

GameData::Cutscene.define :ch5_prophetic_dream do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\i[\\PN'S PERSPECTIVE]"
  
  # TODO: Event Sequence - Prophetic Visions
  # scene.message "The dream was more vivid this time."
  # scene.message "You stood in a vast chamber of light and shadow."
  
  # TODO: Event Sequence - Thrones
  # scene.message "Three thrones. Three crowns. Three figures."
  
  scene.message "\\bVoice\\b: The time of awakening draws near."
  scene.message "\\bVoice\\b: You are the bridge between worlds."
  scene.message "\\bVoice\\b: Find the fragments before the broken ones."
  
  scene.message "\\b\\PN\\b: Who are you?! What do you want?!"
  
  scene.message "\\bVoice\\b: We are what remains."
  scene.message "\\bVoice\\b: We are the guardians' last hope."
  scene.message "\\bVoice\\b: And you... are chosen."
  
  # TODO: Event Sequence - Waking Up
  # scene.message "You woke gasping for air."
  # scene.message "The weight of destiny felt heavier than ever."
end

GameData::Cutscene.define :ch5_ragnar_concern do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Ragnar Concerned
  # scene.message "You were walking to meet Lyra and Kael when—"
  
  scene.message "\\bRagnar\\b: *grabbing your shoulder* Hey."
  
  # scene.message "His usual energy was subdued."
  
  scene.message "\\bRagnar\\b: You okay? You've been... different lately."
  
  scene.message "\\b\\PN\\b: What do you mean?"
  
  scene.message "\\bRagnar\\b: Quieter. More serious."
  scene.message "\\bRagnar\\b: Those new friends of yours..."
  scene.message "\\bRagnar\\b: Something weird's going on, right?"
  
  # TODO: Event Sequence - Hesitation
  # scene.message "You hesitated. How much could you tell him?"
  
  scene.message "\\b\\PN\\b: It's... complicated."
  
  scene.message "\\bRagnar\\b: *crossing arms* I'm not dumb, you know."
  scene.message "\\bRagnar\\b: I can see it in your face."
  scene.message "\\bRagnar\\b: Whatever it is... be careful, okay?"
  
  scene.message "\\b\\PN\\b: I will."
  
  scene.message "\\bRagnar\\b: Good! 'Cause I still need to beat you!"
  scene.message "\\bRagnar\\b: Can't do that if you go and disappear!"
  
  # TODO: Event Sequence - Ragnar Departure
  # scene.message "He punched your shoulder lightly and jogged off."
  # scene.message "Ragnar. Annoying but... always there."
end

GameData::Cutscene.define :ch5_trio_discussion do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Trio Meeting
  # scene.message "You gathered the next morning to discuss your findings."
  # scene.message "Each of you had experienced something strange."
  
  scene.message "\\bKael\\b: The guardians. The fragments. The Shattered Hand."
  scene.message "\\bKael\\b: It's all connected."
  
  scene.message "\\bLyra\\b: And we're in the middle of it."
  scene.message "\\bLyra\\b: Whether we like it or not."
  
  scene.message "\\b\\PN\\b: So what do we do?"
  
  scene.message "\\bKael\\b: We keep moving forward."
  scene.message "\\bKael\\b: Collect the Gym Badges. Get stronger."
  scene.message "\\bKael\\b: And search for answers along the way."
  
  scene.message "\\bLyra\\b: And stick together! No splitting up!"
  scene.message "\\bKael\\b: ...Agreed."
  
  scene.message "\\b\\PN\\b: Then let's go. Adventure awaits."
  
  # TODO: Event Sequence - Path Ahead
  # scene.message "The path ahead was uncertain."
  # scene.message "But at least you weren't walking it alone."
end

GameData::Cutscene.define :ch5_earthquake do |scene|
  scene.play_bgm 'Pokemon RSE - Drought'
  scene.camera_shake 10, 60
  
  # TODO: Event Sequence - Earthquake
  # scene.message "That night, the ground shook."
  # scene.message "Not just here—reports came from across the region."
  
  scene.message "\\bNews Report\\b: Mysterious earthquakes reported..."
  scene.message "\\bNews Report\\b: Scientists baffled by unusual seismic patterns..."
  
  scene.message "\\bLyra\\b: That's the third weird thing this week!"
  
  scene.message "\\bKael\\b: The tablet. The heirloom. The earthquake."
  scene.message "\\bKael\\b: Something's waking up."
  
  scene.message "\\b\\PN\\b: What do you mean?"
  
  scene.message "\\bKael\\b: I don't know yet."
  scene.message "\\bKael\\b: But whatever it is..."
  scene.message "\\bKael\\b: We're caught in the middle of it."
end

GameData::Cutscene.define :ch5_mysterious_observer do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Mysterious Watching
  # scene.message "As you left the library, you felt eyes on you."
  # scene.message "A figure watched from across the plaza."
  
  scene.message "\\bKael\\b: Don't look. But we're being watched."
  scene.message "\\bLyra\\b: The Shattered Hand?"
  
  scene.message "\\bKael\\b: Possibly. Act natural."
  
  # TODO: Event Sequence - Walking Away
  # scene.message "You continued walking, pretending not to notice."
  # scene.message "The figure didn't follow—just watched."
  
  scene.message "\\b\\PN\\b: (Who are they? What do they want?)"
  
  # TODO: Event Sequence - Hunted Feeling
  # scene.message "The sense of being hunted had begun."
  # scene.message "Whatever game was being played, you were now pieces on the board."
end

GameData::Cutscene.define :ch5_leaving_ironvale do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Leaving Ironvale
  # scene.message "You left Ironvale City the next morning."
  # scene.message "Armed with knowledge, but burdened by questions."
  
  scene.message "\\bLyra\\b: So we're really doing this."
  scene.message "\\bLyra\\b: Chasing ancient legends."
  
  scene.message "\\bKael\\b: We don't have a choice."
  scene.message "\\bKael\\b: The legends are chasing us."
  
  scene.message "\\b\\PN\\b: Then let's stay one step ahead."
  
  # TODO: Event Sequence - Road Ahead
  # scene.message "The road stretched before you."
  # scene.message "Somewhere out there were answers."
  # scene.message "And somewhere out there, enemies gathered."
  #
  # scene.message "But you were together."
  # scene.message "And that would have to be enough."
end

#===============================================================================
# Chapter 6: Rumors - The Shattered Hand
#===============================================================================

GameData::Cutscene.define :ch6_new_city_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - City Description
  # scene.message "Ashbury City sprawled before you."
  # scene.message "A bustling metropolis of commerce and culture."
  
  scene.message "\\bLyra\\b: Wow! It's huge!"
  scene.message "\\bLyra\\b: So many people! So many shops!"
  
  scene.message "\\bKael\\b: And many places for enemies to hide."
  scene.message "\\bLyra\\b: Can't you just enjoy things for once?"
  
  scene.message "\\b\\PN\\b: He has a point. Stay alert."
  scene.message "\\b\\PN\\b: After what happened at the library..."
  
  scene.message "\\bLyra\\b: *sighing* Fine. Alert AND excited."
  
  # TODO: Event Sequence - Shadow Suspicion
  # scene.message "Shadow sniffed the air suspiciously."
  # scene.message "Even she sensed something in this city."
end

GameData::Cutscene.define :ch6_cult_rumors do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Cult Rumors
  # scene.message "In the city, whispers spread."
  # scene.message "People spoke of strange figures in hoods."
  
  scene.message "\\bCitizen\\b: They call themselves the Shattered Hand..."
  scene.message "\\bCitizen\\b: Weird cult stuff. Stay away from them."
  
  scene.message "\\bLyra\\b: Shattered Hand? Like the shattered crowns?"
  
  scene.message "\\bKael\\b: *eyes narrowing* Could be a coincidence."
  scene.message "\\bKael\\b: Or could be connected to everything else."
  
  scene.message "\\b\\PN\\b: Should we investigate?"
  
  scene.message "\\bKael\\b: Not yet. We don't know what we're dealing with."
  scene.message "\\bKael\\b: Let's keep our eyes open."
end

GameData::Cutscene.define :ch6_street_talk do |scene|
  scene.play_bgm 'Pokemon XY - Lumiose City'
  
  # TODO: Event Sequence - Eavesdropping
  # scene.message "You overheard a conversation at a cafe."
  # scene.message "Two older trainers spoke in hushed tones."
  
  scene.message "\\bTrainer A\\b: My cousin saw them in the old district."
  scene.message "\\bTrainer A\\b: Said they had matching robes. A broken hand symbol."
  
  scene.message "\\bTrainer B\\b: Sounds like trouble. What do they want?"
  scene.message "\\bTrainer A\\b: Nobody knows. They just... watch."
  
  scene.message "\\bKael\\b: *leaning back* Interesting."
  scene.message "\\bLyra\\b: *whispering* Should we ask them more?"
  
  scene.message "\\b\\PN\\b: Not here. We'd draw attention."
  
  scene.message "\\bKael\\b: The old district. Worth investigating later."
  
  # TODO: Event Sequence - Info Gathered
  # scene.message "You filed away the information for later."
end

GameData::Cutscene.define :ch6_ragnar_gym2 do |scene|
  scene.play_bgm 'Pokemon XY - Rival Theme'
  
  # TODO: Event Sequence - Ragnar Boast
  # scene.message "As you approached the Gym, the doors burst open."
  
  scene.message "\\bRagnar\\b: TWO BADGES, BABY!"
  
  # scene.message "Ragnar strutted out, his Pikachu sparking victoriously."
  
  scene.message "\\bRagnar\\b: Oh! \\PN! You're just getting here?"
  scene.message "\\bRagnar\\b: HA! I'm still ahead!"
  
  scene.message "\\b\\PN\\b: *sighing* Hi, Ragnar."
  
  scene.message "\\bLyra\\b: Is this your rival?"
  
  scene.message "\\bRagnar\\b: THE one and only!"
  scene.message "\\bRagnar\\b: Ragnar, future Champion, at your service!"
  
  scene.message "\\bKael\\b: ...Is he always like this?"
  
  scene.message "\\b\\PN\\b: Unfortunately."
  
  scene.message "\\bRagnar\\b: You love it!"
  scene.message "\\bRagnar\\b: Anyway, good luck in there!"
  scene.message "\\bRagnar\\b: Spark's tough, but nothing compared to ME!"
  
  # TODO: Event Sequence - Ragnar Exit
  # scene.message "He ran off, waving."
  
  scene.message "\\bLyra\\b: *giggling* He's fun!"
  scene.message "\\bKael\\b: That's one word for it."
end

GameData::Cutscene.define :ch6_gym2_building do |scene|
  scene.play_bgm 'Pokemon XY - Gym'
  
  # TODO: Event Sequence - Gym Description
  # scene.message "The Ashbury Gym specialized in Electric-types."
  # scene.message "Its building crackled with visible energy."
  
  scene.message "\\bLyra\\b: It's so... shiny!"
  scene.message "\\bKael\\b: That's just the electrical discharge."
  scene.message "\\bLyra\\b: Still pretty!"
  
  scene.message "\\b\\PN\\b: Is everyone ready?"
  
  scene.message "\\bLyra\\b: Ready!"
  scene.message "\\bKael\\b: *nodding* Let's get this done."
  
  # TODO: Event Sequence - Gym Entry
  # scene.message "The Gym doors slid open automatically."
  # scene.message "Inside, the hum of electricity filled the air."
end

GameData::Cutscene.define :ch6_gym2_prep do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'
  
  # TODO: Event Sequence - Distraction
  # scene.message "The second Gym awaited."
  # scene.message "But your mind was elsewhere."
  
  scene.message "\\bLyra\\b: \\PN? You seem distracted."
  
  scene.message "\\b\\PN\\b: Just thinking about everything."
  scene.message "\\b\\PN\\b: The symbols. The cult. The earthquakes."
  
  scene.message "\\bLyra\\b: I know. It's a lot."
  scene.message "\\bLyra\\b: But right now, let's focus on what we can control."
  
  scene.message "\\bKael\\b: The Gym. Then we investigate."
  scene.message "\\bKael\\b: One thing at a time."
  
  scene.message "\\b\\PN\\b: You're right. Let's do this."
end

GameData::Cutscene.define :ch6_gym2_leader_intro do |scene|
  scene.play_bgm 'Pokemon XY - Gym Leader'
  
  # TODO: Event Sequence - Leader Intro
  # scene.message "The Gym Leader appeared in a flash of lightning."
  # scene.message "A young man with spiky hair and an electric personality."
  
  scene.message "\\bSpark\\b: Yo! Welcome to my Gym!"
  scene.message "\\bSpark\\b: I'm Spark! Let's see if you can handle the voltage!"
  
  scene.message "\\bLyra\\b: Ooh, he's cool!"
  scene.message "\\bKael\\b: *muttering* He's obnoxious."
  
  scene.message "\\bSpark\\b: I heard that! But I'll forgive you..."
  scene.message "\\bSpark\\b: If you can beat me in battle!"
  
  scene.message "\\b\\PN\\b: Bring it on!"
  
  scene.message "\\bSpark\\b: That's the spirit! Luxray, let's go!"
  
  # TODO: Event Sequence - Battle starts, electric tension
end

GameData::Cutscene.define :ch6_gym2_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory!'
  
  # TODO: Event Sequence - Gym Defeated
  # scene.message "The battle ended with one final attack."
  # scene.message "Spark's Pokémon fell, defeated."
  
  scene.message "\\bSpark\\b: Whoa! You're stronger than you look!"
  scene.message "\\bSpark\\b: Here—the Storm Badge! You earned it!"
  
  scene.message "\\bLyra\\b: Two badges! We're on a roll!"
  
  scene.message "\\bSpark\\b: Hey, word of advice?"
  scene.message "\\bSpark\\b: I've seen some weird folks around town."
  scene.message "\\bSpark\\b: Hooded types. They give me the creeps."
  scene.message "\\bSpark\\b: Watch yourselves out there."
  
  scene.message "\\bKael\\b: We've noticed them too."
  
  scene.message "\\bSpark\\b: Then be careful. Something's brewing."
  
  scene.set_switch SW::BADGE_2, true
end

GameData::Cutscene.define :ch6_being_followed do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Stalkers
  # scene.message "After the Gym battle, you noticed them."
  # scene.message "Hooded figures. Watching from the shadows."
  
  scene.message "\\bLyra\\b: *whispering* \\PN... are those...?"
  scene.message "\\b\\PN\\b: *nodding* The Shattered Hand."
  
  scene.message "\\bKael\\b: They've been following us for hours."
  scene.message "\\bKael\\b: I counted three so far."
  
  scene.message "\\bLyra\\b: Why are they watching US?"
  
  scene.message "\\bKael\\b: We found that tablet."
  scene.message "\\bKael\\b: Maybe they noticed."
  
  scene.message "\\b\\PN\\b: Should we confront them?"
  
  scene.message "\\bKael\\b: Not here. Too public."
  scene.message "\\bKael\\b: Let's lead them somewhere isolated."
  scene.message "\\bKael\\b: Then WE become the hunters."
end

GameData::Cutscene.define :ch6_old_district do |scene|
  scene.play_bgm 'Pokemon RSE - Abandoned Ship'
  
  # TODO: Event Sequence - Old District
  # scene.message "You ventured into the old district."
  # scene.message "Crumbling buildings. Empty streets. Shadows everywhere."
  
  scene.message "\\bLyra\\b: This place is creepy..."
  scene.message "\\bWillow\\b: Vee... vee..."
  
  scene.message "\\bKael\\b: Perfect for a cult hideout."
  scene.message "\\bKael\\b: Stay close. Watch for movement."
  
  # TODO: Event Sequence - Tension
  # scene.message "You moved through the abandoned streets."
  # scene.message "The feeling of being watched intensified."
  
  scene.message "\\b\\PN\\b: They're here. I can feel it."
  
  scene.message "\\bKael\\b: Good. Let them come to us."
end

GameData::Cutscene.define :ch6_shadow_encounter do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Figure Appears
  # scene.message "A figure stepped from the shadows."
  # scene.message "Not attacking. Just observing."
  
  scene.message "\\bHooded Figure\\b: You shouldn't be here."
  
  scene.message "\\bKael\\b: We go where we please."
  
  scene.message "\\bHooded Figure\\b: The Chosen Ones should be protected..."
  scene.message "\\bHooded Figure\\b: Not wandering into danger."
  
  scene.message "\\bLyra\\b: Chosen Ones? What do you mean?"
  
  scene.message "\\bHooded Figure\\b: You'll understand soon."
  scene.message "\\bHooded Figure\\b: When the marks awaken."
  
  # TODO: Event Sequence - Figure Vanishes
  # scene.message "They stepped back into the darkness and vanished."
  
  scene.message "\\b\\PN\\b: What marks? What's going on?!"
  
  # scene.message "Silence was the only answer."
end

GameData::Cutscene.define :ch6_regrouping do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'
  
  # TODO: Event Sequence - Regroup at Center
  # scene.message "You returned to the Pokémon Center, shaken."
  # scene.message "So many questions. So few answers."
  
  scene.message "\\bLyra\\b: Chosen Ones. Marks. What does it all mean?"
  
  scene.message "\\bKael\\b: They believe something about us."
  scene.message "\\bKael\\b: Something connected to those guardians."
  
  scene.message "\\b\\PN\\b: But why? What makes us special?"
  
  scene.message "\\bKael\\b: I don't know. Yet."
  scene.message "\\bKael\\b: But I intend to find out."
  
  scene.message "\\bLyra\\b: Should we tell someone?"
  scene.message "\\bLyra\\b: Like Professor Aldric?"
  
  scene.message "\\b\\PN\\b: Good idea. He might know something."
  scene.message "\\b\\PN\\b: Let's contact him tomorrow."
end

GameData::Cutscene.define :ch6_viktor_intro do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  # TODO: Event Sequence - Viktor Block
  # scene.message "A confident trainer blocked your path."
  
  scene.message "\\bViktor\\b: Well, well! New challengers!"
  scene.message "\\bViktor\\b: I'm Viktor. The region's next Champion."
  
  scene.message "\\bKael\\b: *unimpressed* Never heard of you."
  
  scene.message "\\bViktor\\b: You will! Once I crush you in battle!"
  scene.message "\\bViktor\\b: I've already got two badges!"
  
  scene.message "\\bLyra\\b: So do we!"
  
  scene.message "\\bViktor\\b: Oho! Spirited one, aren't you?"
  # TODO: Event Sequence - Viktor Flirting
  # scene.message "He winked at Lyra."
  # scene.message "Kael's expression went cold."
  
  scene.message "\\bViktor\\b: Tell you what—let's battle!"
  scene.message "\\bViktor\\b: Winner gets bragging rights!"
  
  scene.message "\\b\\PN\\b: You're on."
  
  scene.trainer_battle :RIVAL, "Viktor", 0
  
  scene.message "\\bViktor\\b: Not bad! But next time, I'll win!"
  scene.message "\\bViktor\\b: See you around, cuties!"
  # TODO: Event Sequence - Viktor Exit
  # scene.message "He waved and left."
  
  scene.message "\\bKael\\b: *muttering* I don't like him."
  scene.message "\\bLyra\\b: *giggling* Is that jealousy?"
  scene.message "\\bKael\\b: No."
  scene.message "\\bLyra\\b: Your ears are red."
  scene.message "\\bKael\\b: They are NOT."
end

GameData::Cutscene.define :ch6_night_thoughts do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  # TODO: Event Sequence - Night Reflection
  scene.message "\\i[\\PN'S PERSPECTIVE]"
  # scene.message "That night, you couldn't sleep."
  # scene.message "Too many thoughts. Too many questions."
  
  scene.message "\\b\\PN\\b: (Chosen Ones. What does that mean?)"
  scene.message "\\b\\PN\\b: (Am I really part of something bigger?)"
  
  # TODO: Event Sequence - Friends Sleeping
  # scene.message "You looked at your sleeping friends."
  # scene.message "Lyra, clutching Willow even in sleep."
  # scene.message "Kael, frowning even as he dreamed."
  
  scene.message "\\b\\PN\\b: (Whatever's coming...)"
  scene.message "\\b\\PN\\b: (I'll protect them.)"
  scene.message "\\b\\PN\\b: (That's what I choose.)"
  
  # TODO: Event Sequence - Starter Bond
  # scene.message "Your starter nuzzled your hand."
  # scene.message "Even in sleep, it sensed your worry."
  
  scene.message "\\b\\PN\\b: Thanks, buddy."
  scene.message "\\b\\PN\\b: At least I have all of you."
end

GameData::Cutscene.define :ch6_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Leaving Ashbury
  # scene.message "The next morning, you left Ashbury City."
  # scene.message "More questions than answers. But forward was the only way."
  
  scene.message "\\bLyra\\b: So where to next?"
  
  scene.message "\\bKael\\b: Professor Aldric's lab isn't far."
  scene.message "\\bKael\\b: We should update him on what we've found."
  
  scene.message "\\b\\PN\\b: And ask about the Shattered Hand."
  scene.message "\\b\\PN\\b: He's been studying old legends for years."
  
  scene.message "\\bLyra\\b: Sounds like a plan!"
  
  # TODO: Event Sequence - Journey Continues
  # scene.message "The road stretched ahead."
  # scene.message "Whatever awaited, you'd face it together."
end

#===============================================================================
# Chapter 7: First Confrontation - The Shattered Hand Attack
#===============================================================================

GameData::Cutscene.define :ch7_road_to_professor do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Long Walk
  # scene.message "The road to Professor Aldric's lab wound through dense forest."
  # scene.message "You'd been walking for hours."
  
  scene.message "\\bLyra\\b: *stretching* How much further?"
  scene.message "\\bKael\\b: According to the map, half a day."
  scene.message "\\bLyra\\b: *groaning* My feet hurt!"
  
  scene.message "\\b\\PN\\b: We could camp soon."
  scene.message "\\b\\PN\\b: It's getting dark anyway."
  
  scene.message "\\bKael\\b: Agreed. I don't like traveling at night."
  scene.message "\\bKael\\b: Too many unknowns."
  
  # TODO: Event Sequence - Shadow Sensing
  # scene.message "Shadow sniffed the air nervously."
  scene.message "\\bKael\\b: She senses something."
end

GameData::Cutscene.define :ch7_forest_journey do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Quiet Forest
  # scene.message "The forest path was peaceful."
  # scene.message "Too peaceful."
  
  scene.message "\\bLyra\\b: It's so pretty here!"
  scene.message "\\bLyra\\b: Look at all the Butterfree!"
  
  scene.message "\\bKael\\b: *scanning the trees* Something's wrong."
  scene.message "\\bKael\\b: Where are all the other Pokémon?"
  
  scene.message "\\b\\PN\\b: You're right... it's too quiet."
  
  scene.message "\\bLyra\\b: Maybe they're just—"
  
  # TODO: Event Sequence - Rustling
  # scene.message "A rustling in the bushes."
  # scene.message "Then another. And another."
  
  scene.message "\\bKael\\b: We're surrounded."
  scene.message "\\bKael\\b: Those followers from the city."
  scene.message "\\bKael\\b: They've been herding us here."
end

GameData::Cutscene.define :ch7_trap_realization do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Blocked Path
  # scene.message "You stopped in a clearing."
  # scene.message "The path behind you was blocked."
  
  scene.message "\\bKael\\b: *cursing* I should have seen this."
  scene.message "\\bKael\\b: They wanted us here."
  
  scene.message "\\bLyra\\b: What do we do?!"
  scene.message "\\bWillow\\b: Vee! Vee!"
  
  scene.message "\\b\\PN\\b: Stay calm. We fight if we have to."
  
  scene.message "\\bKael\\b: Agreed. Back to back. Don't let them flank us."
  
  # TODO: Event Sequence - Formation
  # scene.message "The three of you formed a triangle."
  # scene.message "Your Pokémon at the ready."
  #
  # scene.message "Shadows moved between the trees."
  # scene.message "Getting closer."
end

GameData::Cutscene.define :ch7_ambush_begins do |scene|
  scene.play_bgm 'Pokemon RSE - Team Aqua-Magma Hideout'
  scene.camera_shake 3, 20
  
  # TODO: Event Sequence - Figures Emerge
  # scene.message "Hooded figures stepped out from the trees."
  # scene.message "Ten. Twenty. More appearing by the second."
  
  scene.message "\\bLyra\\b: *clutching Willow* There's so many!"
  scene.message "\\bWillow\\b: Vee! Vee!"
  
  scene.message "\\bKael\\b: *drawing Shadow's Pokéball* Stay behind me."
  scene.message "\\bShadow\\b: *materializing, growling*"
  
  scene.message "\\b\\PN\\b: *releasing starter* Let's take them together!"
  
  scene.message "\\bCultist\\b: Don't resist. This is inevitable."
  scene.message "\\bCultist\\b: The Marked Ones must come with us."
  
  scene.message "\\bKael\\b: Marked Ones? What marks?"
  
  scene.message "\\bCultist\\b: You'll understand soon enough."
end

GameData::Cutscene.define :ch7_cultist_battle do |scene|
  scene.play_bgm 'Pokemon XY - Team Battle'
  
  # TODO: Event Sequence - Cultist Attack
  # scene.message "The cultists attacked!"
  # scene.message "Their Pokémon were dark and aggressive."
  
  scene.message "\\bCultist\\b: Mightyena, Shadow Ball!"
  scene.message "\\bCultist\\b: Sableye, Night Shade!"
  
  # TODO: Event Sequence - Battle Chaos
  # scene.message "Your team fought back desperately."
  # scene.message "Shadow clashed with a Mightyena."
  # scene.message "Willow dodged a barrage of attacks."
  # scene.message "Your starter held the line."
  
  scene.message "\\bLyra\\b: There's too many of them!"
  scene.message "\\bKael\\b: Just hold on! Look for an opening!"
  
  scene.message "\\b\\PN\\b: There! The gap in their formation!"
  scene.message "\\b\\PN\\b: We can break through!"
  
  scene.message "\\bKael\\b: Together, on three!"
end

GameData::Cutscene.define :ch7_ragnar_rescue do |scene|
  scene.play_bgm 'Pokemon XY - Battle Theme'
  scene.camera_shake 5, 30
  
  # TODO: Event Sequence - Encirclement
  # scene.message "Just as the cultists closed in—"
  
  scene.message "\\bRagnar\\b: PIKA! THUNDERBOLT! NOW!"
  
  # TODO: Event Sequence - Thunderbolt
  # scene.message "A massive bolt of electricity struck the ground!"
  # scene.message "Cultists scattered, their Pokémon stunned."
  
  scene.message "\\bRagnar\\b: *landing from a tree* MISS ME?!"
  
  scene.message "\\b\\PN\\b: RAGNAR?!"
  
  scene.message "\\bRagnar\\b: Saw you heading into the forest!"
  scene.message "\\bRagnar\\b: Figured you'd get into trouble without me!"
  
  # TODO: Event Sequence - Pikachu Intimidate
  # scene.message "His Pikachu sparked menacingly."
  scene.message "\\bRagnar\\b: Now who are these creepy hood guys?!"
  
  scene.message "\\bCultist\\b: Another one? Dispose of him!"
  
  scene.message "\\bRagnar\\b: HA! TRY IT!"
  
  # TODO: Event Sequence - Turn Tide
  # scene.message "With Ragnar's help, the odds shifted."
  # scene.message "You fought side by side, just like old times."
end

GameData::Cutscene.define :ch7_vex_arrives do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  # TODO: Event Sequence - Vex Entrance
  # scene.message "The cultists parted."
  # scene.message "A tall figure strode forward."
  # scene.message "His presence made the air feel thick."
  
  scene.message "\\bVex\\b: Enough games."
  
  # TODO: Event Sequence - Vex Unhoods
  # scene.message "He removed his hood."
  # scene.message "Sharp features. Eyes that gleamed with unsettling hunger."
  
  scene.message "\\bVex\\b: I am Vex, General of the Shattered Hand."
  scene.message "\\bVex\\b: You three have been... difficult to locate."
  
  scene.message "\\bLyra\\b: What do you want with us?!"
  
  scene.message "\\bVex\\b: *studying them* Fascinating."
  scene.message "\\bVex\\b: You don't even know, do you?"
  scene.message "\\bVex\\b: The marks on your souls..."
  scene.message "\\bVex\\b: The guardians have chosen you."
  
  scene.message "\\bKael\\b: Guardians? What guardians?"
  
  scene.message "\\bVex\\b: *smiling coldly* All in due time."
  scene.message "\\bVex\\b: For now, I need to test something."
end

GameData::Cutscene.define :ch7_shattered_hand_attack do |scene|
  scene.play_bgm 'Pokemon RSE - Team Aqua-Magma Hideout'
  
  # TODO: Event Sequence - Vex Power
  # scene.message "Vex raised his hand."
  # scene.message "Dark energy crackled around him."
  
  scene.message "\\bVex\\b: The master wishes to see your potential."
  scene.message "\\bVex\\b: Don't disappoint me."
  
  # TODO: Event Sequence - Houndoom
  # scene.message "His Pokémon emerged—a fearsome Houndoom."
  # scene.message "Flames licked its jaws."
  
  scene.message "\\bVex\\b: Let us begin!"
  
  scene.trainer_battle :SHATTEREDHAND, "Vex", 0
  
  scene.message "\\bVex\\b: Hmph. You have potential."
  scene.message "\\bVex\\b: We will meet again, Chosen Ones."
  
  # TODO: Event Sequence - Vex Disappear
  # scene.message "He vanished into the shadows."
  scene.message "\\bLyra\\b: What... was that about?"
  scene.message "\\bKael\\b: I don't know. But I intend to find out."
  scene.message "\\b\\PN\\b: Whatever they're planning, we'll stop them. Together."
end

GameData::Cutscene.define :ch7_cultists_retreat do |scene|
  scene.play_bgm 'Pokemon XY - Tension'
  
  # TODO: Event Sequence - Retreat
  # scene.message "With Vex's departure, the other cultists hesitated."
  # scene.message "Then, as one, they melted back into the forest."
  
  scene.message "\\bLyra\\b: They're... leaving?"
  
  scene.message "\\bKael\\b: They got what they wanted."
  scene.message "\\bKael\\b: Information. A measure of our strength."
  
  scene.message "\\b\\PN\\b: This was just a test."
  
  scene.message "\\bKael\\b: Exactly. Which means..."
  scene.message "\\bKael\\b: The real confrontation is still coming."
  
  # TODO: Event Sequence - Silence
  # scene.message "The forest fell silent."
  # scene.message "Only the sound of heavy breathing remained."
end

GameData::Cutscene.define :ch7_aftermath do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Aftermath
  # scene.message "The cultists retreated into the shadows."
  # scene.message "You stood in the clearing, shaken but alive."
  
  scene.message "\\bLyra\\b: *trembling* That was... intense."
  scene.message "\\bWillow\\b: Vee... vee..."
  # TODO: Event Sequence - Lyra Hug
  # scene.message "Lyra hugged Willow tightly."
  
  scene.message "\\bKael\\b: Chosen Ones. Marks. Guardians."
  scene.message "\\bKael\\b: He knew things about us that WE don't know."
  
  scene.message "\\b\\PN\\b: We need to find out what's going on."
  scene.message "\\b\\PN\\b: Professor Aldric might know something."
  
  scene.message "\\bKael\\b: Agreed. But first..."
  # TODO: Event Sequence - Kael Concern
  # scene.message "He looked at Lyra with unexpected softness."
  scene.message "\\bKael\\b: Are you okay?"
  
  scene.message "\\bLyra\\b: *surprised* Y-yeah. I'm fine."
  scene.message "\\bLyra\\b: Thanks for asking."
  
  scene.message "\\bKael\\b: ...Don't get used to it."
  # TODO: Event Sequence - Kael Stays
  # scene.message "But he didn't move away."
end

GameData::Cutscene.define :ch7_healing_pokemon do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'
  
  # TODO: Event Sequence - Healing Montage
  # scene.message "You tended to your injured Pokémon."
  # scene.message "The battle had been fierce."
  
  scene.message "\\bLyra\\b: *applying potion* Poor Willow..."
  scene.message "\\bLyra\\b: You were so brave."
  scene.message "\\bWillow\\b: *weakly* Vee..."
  
  scene.message "\\bKael\\b: Shadow took some hits too."
  scene.message "\\bKael\\b: But nothing serious."
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\b\\PN\\b: *checking starter* You okay, buddy?"
  # TODO: Event Sequence - Starter Reaction
  # scene.message "Your Pokémon chirped affirmatively."
  
  scene.message "\\bLyra\\b: We make a good team."
  scene.message "\\bLyra\\b: Even against those odds."
  
  scene.message "\\bKael\\b: We were lucky."
  scene.message "\\bKael\\b: Next time, we need to be prepared."
end

GameData::Cutscene.define :ch7_campfire_setup do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  # TODO: Event Sequence - Camp Setup
  # scene.message "You set up camp in a safer location."
  # scene.message "Away from the ambush site."
  
  scene.message "\\bKael\\b: I'll take first watch."
  scene.message "\\bLyra\\b: Are you sure? You look tired."
  
  scene.message "\\bKael\\b: I won't sleep anyway."
  scene.message "\\bKael\\b: Too much to think about."
  
  scene.message "\\b\\PN\\b: We'll rotate. No one stays up all night."
  
  # TODO: Event Sequence - Firelight
  # scene.message "The fire crackled softly."
  # scene.message "Shadows danced at the edge of light."
  # scene.message "But for now, you were safe."
end

GameData::Cutscene.define :ch7_lyra_fear do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Lyra Thoughts
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # scene.message "That night, sleep wouldn't come."
  # scene.message "Vex's words echoed in your mind."
  
  scene.message "\\bLyra\\b: (Chosen Ones... what does that even mean?)"
  scene.message "\\bLyra\\b: (I'm just a farm girl.)"
  scene.message "\\bLyra\\b: (I'm not special. I'm not brave.)"
  
  # TODO: Event Sequence - Willow Comfort
  # scene.message "Willow nuzzled against your leg."
  scene.message "\\bWillow\\b: Vee..."
  
  scene.message "\\bLyra\\b: At least I have you, Willow."
  scene.message "\\bLyra\\b: And \\PN. And Kael."
  
  scene.message "\\bLyra\\b: (Kael asked if I was okay...)"
  scene.message "\\bLyra\\b: (He never asks things like that.)"
  scene.message "\\bLyra\\b: (Maybe he's not as cold as he pretends.)"
  
  # TODO: Event Sequence - Small Smile
  # scene.message "A small smile crossed your face."
  # scene.message "Whatever was coming..."
  # scene.message "At least you weren't alone."
end

GameData::Cutscene.define :ch7_kael_analysis do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  # TODO: Event Sequence - Kael Thoughts
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "While the others slept, you analyzed."
  # scene.message "Shadow lay at your feet, alert."
  
  scene.message "\\bKael\\b: (The Shattered Hand. A cult.)"
  scene.message "\\bKael\\b: (Connected to the shattered crowns legend.)"
  scene.message "\\bKael\\b: (They believe we're 'marked.')"
  
  # TODO: Event Sequence - Arm Check
  # scene.message "You looked at your arm."
  # scene.message "Nothing visible. But something felt... different."
  
  scene.message "\\bKael\\b: (What if they're right?)"
  scene.message "\\bKael\\b: (What if I AM marked?)"
  scene.message "\\bKael\\b: (By what? For what?)"
  
  # TODO: Event Sequence - Shadow Whimper
  # scene.message "Shadow whimpered."
  scene.message "\\bKael\\b: I know, girl. I don't like mysteries either."
  
  # scene.message "Your gaze drifted to Lyra's sleeping form."
  scene.message "\\bKael\\b: (She was scared today.)"
  scene.message "\\bKael\\b: (But she didn't run.)"
  scene.message "\\bKael\\b: (That's... admirable.)"
  
  # TODO: Event Sequence - Look Away
  # scene.message "You looked away quickly."
  scene.message "\\bKael\\b: (Focus. We have work to do.)"
end

GameData::Cutscene.define :ch7_player_reflection do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  # TODO: Event Sequence - Player Thoughts
  scene.message "\\i[\\PN'S PERSPECTIVE]"
  # scene.message "Your watch came at the darkest hour."
  # scene.message "The fire had burned low."
  
  scene.message "\\b\\PN\\b: (Chosen Ones. Guardians. Marks.)"
  scene.message "\\b\\PN\\b: (What have we stumbled into?)"
  
  # TODO: Event Sequence - Friends Sleeping Scene
  # scene.message "You looked at your sleeping friends."
  # scene.message "Lyra, curled around Willow."
  # scene.message "Kael, somehow still frowning in his sleep."
  
  scene.message "\\b\\PN\\b: (I'll protect them.)"
  scene.message "\\b\\PN\\b: (Whatever's coming...)"
  scene.message "\\b\\PN\\b: (We'll face it together.)"
  
  # TODO: Event Sequence - Starter Awake
  # scene.message "Your starter stirred, sensing your mood."
  # scene.message "It settled its head on your lap."
  
  scene.message "\\b\\PN\\b: Thanks, partner."
  scene.message "\\b\\PN\\b: I'm glad you're with me."
  
  # TODO: Event Sequence - Sunrise
  # scene.message "Dawn began to break on the horizon."
  # scene.message "A new day. New challenges."
  # scene.message "But you were ready."
end

GameData::Cutscene.define :ch7_morning_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Breaking Camp
  # scene.message "You broke camp as the sun rose."
  # scene.message "The forest seemed less threatening in daylight."
  
  scene.message "\\bLyra\\b: *stretching* Morning, everyone!"
  scene.message "\\bKael\\b: *grunting* Coffee first. Talk later."
  
  scene.message "\\b\\PN\\b: *laughing* Not a morning person?"
  scene.message "\\bKael\\b: Morning is an unnecessary invention."
  
  scene.message "\\bLyra\\b: *giggling* Grumpy Kael is adorable."
  scene.message "\\bKael\\b: I am NOT adorable."
  scene.message "\\bLyra\\b: Sure you're not."
  
  # TODO: Event Sequence - Tension Fades
  # scene.message "The tension from last night faded."
  # scene.message "You were still yourselves. Still friends."
  
  scene.message "\\b\\PN\\b: Let's move. Professor Aldric awaits."
  scene.message "\\bKael\\b: Finally, someone with priorities."
  scene.message "\\bLyra\\b: Hey! I have priorities too!"
  scene.message "\\bKael\\b: Breakfast isn't a priority."
  scene.message "\\bLyra\\b: It absolutely IS!"
  
  # TODO: Event Sequence - Laughing Departure
  # scene.message "Laughing together, you continued your journey."
end

#===============================================================================
# Chapter 8: The Marks Appear - Complete Sequence
#===============================================================================

GameData::Cutscene.define :ch8_peaceful_night do |scene|
  scene.play_bgm 'Pokemon DPPT - Night'
  
  # TODO: Event Sequence - Calm Evening
  # scene.message "The evening was calm."
  # scene.message "You'd set up camp by a quiet stream."
  
  scene.message "\\bLyra\\b: *yawning* What a day..."
  scene.message "\\bKael\\b: At least no one attacked us today."
  scene.message "\\bLyra\\b: Progress!"
  
  scene.message "\\b\\PN\\b: Let's get some rest. We're close to the professor's lab."
  
  # TODO: Event Sequence - Scene Normal
  # scene.message "The fire crackled softly."
  # scene.message "Your Pokémon settled around you."
  # scene.message "For a moment, everything felt normal."
end

GameData::Cutscene.define :ch8_dream_begins do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Dream Void
  scene.message "\\i[DREAM]"
  # scene.message "You floated in an endless void."
  # scene.message "Light and shadow danced together."
  
  # TODO: Event Sequence - Figures Appear
  # scene.message "Three massive figures appeared before you."
  # scene.message "They radiated power beyond comprehension."
  
  scene.message "\\bVoice\\b: Chosen One..."
  scene.message "\\bVoice\\b: The time has come."
  scene.message "\\bVoice\\b: Receive our blessing."
  
  # TODO: Event Sequence - Light Touch
  # scene.message "Light gathered around one of the figures."
  # scene.message "It reached toward you."
end

GameData::Cutscene.define :ch8_marks_appear do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Dream Clarity
  # scene.message "That night, the dream returned..."
  # scene.message "But this time, it was clearer."
  #
  # scene.message "Golden light. Three figures. Three crowns."
  scene.message "\\ts[]'Awaken, Chosen Ones...'"
  scene.message "\\ts[]'The balance must be restored...'"
  scene.message "\\ts[]'Before HE returns...'"
  
  scene.camera_flash 20
  scene.camera_shake 5, 30
  
  # TODO: Event Sequence - Mark Glow
  # scene.message "You jolted awake, arm burning!"
  #
  # scene.fade_in
  #
  # scene.message "On your forearm... a faint symbol glowed."
  # scene.message "Steel-blue light, pulsing like a heartbeat."
  
  # TODO: Event Sequence - Player examines mysterious mark with confusion
  
  scene.set_switch SW::MARKS_APPEARED, true
end

GameData::Cutscene.define :ch8_waking_panic do |scene|
  scene.play_bgm 'Pokemon XY - Tension'
  
  # TODO: Event Sequence - Panic
  # scene.message "You scrambled to your feet, heart racing."
  # scene.message "The mark on your arm glowed faintly."
  
  scene.message "\\b\\PN\\b: What... what is this?!"
  
  # TODO: Event Sequence - Others Awake
  # scene.message "Nearby, you heard Lyra scream."
  # scene.message "And Kael's sharp intake of breath."
  #
  # scene.message "They were awake too."
  # scene.message "They'd seen the same thing."
  #
  # scene.message "And on their arms..."
  # scene.message "Marks of their own."
end

GameData::Cutscene.define :ch8_friends_have_marks do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Rushing
  # scene.message "You rushed to find Lyra and Kael."
  # scene.message "They were already waiting, looking shaken."
  
  scene.message "\\bLyra\\b: You too...?"
  # TODO: Event Sequence - Revealing Marks
  # scene.message "She showed her arm. A rainbow-colored mark."
  
  scene.message "\\bKael\\b: ..."
  # scene.message "He reluctantly revealed his. Dark crimson."
  
  scene.message "\\bLyra\\b: What's happening to us?"
  scene.message "\\bKael\\b: The cult mentioned marks."
  scene.message "\\bKael\\b: Maybe this is what they meant."
  
  scene.message "\\bLyra\\b: But what ARE they?"
  scene.message "\\bKael\\b: I don't know. But Professor Aldric might."
  scene.message "\\b\\PN\\b: Then let's go find out. I'm not sitting around waiting for answers."
end

GameData::Cutscene.define :ch8_ragnar_worried do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Ragnar Finds Group
  # scene.message "Before leaving to find Professor Aldric, Ragnar found you."
  
  scene.message "\\bRagnar\\b: Hey! There you are!"
  
  # TODO: Event Sequence - Ragnar Stop
  # scene.message "He jogged over, then stopped dead."
  
  scene.message "\\bRagnar\\b: ...What's wrong?"
  scene.message "\\bRagnar\\b: You look like you've seen a ghost."
  
  scene.message "\\b\\PN\\b: It's... complicated."
  
  scene.message "\\bRagnar\\b: *crossing arms* That's what you always say."
  scene.message "\\bRagnar\\b: But I know that face."
  scene.message "\\bRagnar\\b: Something happened."
  
  # TODO: Event Sequence - Showing Mark
  # scene.message "You hesitated, then showed him your arm."
  # scene.message "The mark glowed faintly."
  
  scene.message "\\bRagnar\\b: What the—?!"
  scene.message "\\bRagnar\\b: What IS that?!"
  
  scene.message "\\b\\PN\\b: We don't know yet."
  scene.message "\\b\\PN\\b: That's why we're going to find answers."
  
  scene.message "\\bRagnar\\b: ..."
  scene.message "\\bRagnar\\b: Okay. Be careful."
  scene.message "\\bRagnar\\b: And call me if you need backup."
  
  scene.message "\\b\\PN\\b: Since when are you so serious?"
  
  scene.message "\\bRagnar\\b: Since my rival got a glowing tattoo, apparently!"
  
  # TODO: Event Sequence - Small Smile
  # scene.message "Despite everything, you managed a small smile."
end

GameData::Cutscene.define :ch8_comparing_marks do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Comparing Marks
  # scene.message "The three of you sat together, studying each other's marks."
  
  scene.message "\\bLyra\\b: They're all different..."
  scene.message "\\bLyra\\b: Mine is rainbow, like a prism."
  
  scene.message "\\bKael\\b: Mine is crimson. Dark red, almost black."
  
  scene.message "\\b\\PN\\b: And mine is steel-blue."
  
  scene.message "\\bLyra\\b: Three colors. Three of us."
  scene.message "\\bLyra\\b: That can't be coincidence."
  
  scene.message "\\bKael\\b: Nothing about this is coincidence."
  scene.message "\\bKael\\b: The shared dreams. The cult knowing about us."
  scene.message "\\bKael\\b: And now this."
  
  scene.message "\\bLyra\\b: I'm scared..."
  
  scene.message "\\b\\PN\\b: Me too. But we're in this together."
  scene.message "\\b\\PN\\b: Whatever these marks mean..."
  scene.message "\\b\\PN\\b: We'll figure it out as a team."
  
  scene.message "\\bKael\\b: ...Agreed."
end

GameData::Cutscene.define :ch8_mark_meanings do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Kael Study
  # scene.message "Kael studied the marks intensely."
  
  scene.message "\\bKael\\b: If I had to guess..."
  scene.message "\\bKael\\b: These correspond to the three guardians."
  
  scene.message "\\bLyra\\b: The ones from the legends?"
  
  scene.message "\\bKael\\b: Exactly. Based on my research..."
  scene.message "\\bKael\\b: One guardian represented light. Connection. Life."
  scene.message "\\bKael\\b: That would be your rainbow mark, Lyra."
  
  scene.message "\\bLyra\\b: Oh..."
  
  scene.message "\\bKael\\b: Another represented shadow. Knowledge. Secrets."
  scene.message "\\bKael\\b: *touching his crimson mark* That's mine."
  
  scene.message "\\b\\PN\\b: And the third?"
  
  scene.message "\\bKael\\b: Will. Courage. The bridge between worlds."
  scene.message "\\bKael\\b: Steel-blue. That's you."
  
  scene.message "\\b\\PN\\b: So we're... connected to the guardians?"
  scene.message "\\bKael\\b: It seems so. The question is why."
end

GameData::Cutscene.define :ch8_marks_react do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Resonance
  # scene.message "When you placed your hands together..."
  # scene.message "Something unexpected happened."
  
  scene.camera_flash 10
  
  # TODO: Event Sequence - Vision Flash
  # scene.message "The three marks pulsed in unison!"
  # scene.message "For a split second, you shared a vision."
  
  scene.message "\\i[Three thrones. Three crowns. Three guardians.]"
  scene.message "\\i[And in the distance... a shadowy prison.]"
  
  scene.message "\\bLyra\\b: Did you see that?!"
  scene.message "\\bKael\\b: Thrones... and something locked away."
  scene.message "\\b\\PN\\b: It felt like a warning."
  
  scene.message "\\bLyra\\b: What's in that prison?"
  scene.message "\\bKael\\b: I don't know."
  scene.message "\\bKael\\b: But someone's trying to open it."
  
  # TODO: Event Sequence - Vision Fades
  # scene.message "The marks faded back to their normal glow."
  # scene.message "But the image remained burned in your minds."
end

GameData::Cutscene.define :ch8_pokemon_reactions do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Pokemon Sense
  # scene.message "Your Pokémon reacted strangely to the marks."
  # scene.message "They could sense the change in you."
  
  # TODO: Event Sequence - Willow Reaction
  # scene.message "Willow sniffed Lyra's mark curiously."
  scene.message "\\bWillow\\b: Vee? Vee vee?"
  scene.message "\\bLyra\\b: I don't know either, Willow."
  
  # TODO: Event Sequence - Shadow Reaction
  # scene.message "Shadow sat beside Kael, unnaturally still."
  scene.message "\\bShadow\\b: Zor..."
  scene.message "\\bKael\\b: She knows something's different."
  
  # TODO: Event Sequence - Starter Comfort
  # scene.message "Your starter pressed against your leg."
  # scene.message "Offering comfort. Offering support."
  
  scene.message "\\b\\PN\\b: At least they still trust us."
  scene.message "\\bLyra\\b: They're our best friends."
  scene.message "\\bLyra\\b: Of course they trust us."
  
  scene.message "\\bKael\\b: *quietly* That's more than I've had before."
end

GameData::Cutscene.define :ch8_kael_memory do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Kael Inner Thoughts
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "The crimson mark pulsed on your arm."
  # scene.message "It reminded you of fire."
  
  scene.message "\\bKael\\b: (Fire. Always fire.)"
  scene.message "\\bKael\\b: (The orphanage. Mira.)"
  
  # TODO: Event Sequence - Shadow Comfort
  # scene.message "Shadow whimpered, sensing your distress."
  
  scene.message "\\bKael\\b: (This mark... shadow and secrets.)"
  scene.message "\\bKael\\b: (The guardian of knowledge.)"
  scene.message "\\bKael\\b: (Maybe... I can learn what really happened.)"
  scene.message "\\bKael\\b: (Who started that fire.)"
  scene.message "\\bKael\\b: (Why Mira had to die.)"
  
  # TODO: Event Sequence - Clenched Fist
  # scene.message "Your fist clenched."
  
  scene.message "\\bKael\\b: (If this power can give me answers...)"
  scene.message "\\bKael\\b: (I'll use it.)"
end

GameData::Cutscene.define :ch8_lyra_hope do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Lyra Inner Thoughts
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # scene.message "The rainbow mark shimmered on your skin."
  # scene.message "It felt warm. Almost comforting."
  
  scene.message "\\bLyra\\b: (Light and connection...)"
  scene.message "\\bLyra\\b: (That's what Kael said this represents.)"
  
  # TODO: Event Sequence - Looking at Friends
  # scene.message "You looked at your friends."
  # scene.message "At \\PN, who always stayed calm."
  # scene.message "At Kael, who pretended not to care."
  
  scene.message "\\bLyra\\b: (Maybe this is why we found each other.)"
  scene.message "\\bLyra\\b: (Maybe we were meant to be a team.)"
  
  # TODO: Event Sequence - Willow Snuggle
  # scene.message "Willow snuggled closer."
  scene.message "\\bWillow\\b: Vee!"
  
  scene.message "\\bLyra\\b: *smiling* Yeah. We're going to be okay."
  scene.message "\\bLyra\\b: (I believe that. I have to.)"
end

GameData::Cutscene.define :ch8_player_determination do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Player Inner Thoughts
  scene.message "\\i[\\PN'S PERSPECTIVE]"
  # scene.message "You stared at the steel-blue mark."
  # scene.message "Will. Courage. Bridge between worlds."
  
  scene.message "\\b\\PN\\b: (Why me?)"
  scene.message "\\b\\PN\\b: (I'm not special. I'm just...)"
  
  # TODO: Event Sequence - Parental Memory
  # scene.message "You thought of your parents."
  # scene.message "Dad, the former Champion."
  # scene.message "Mom, who always believed in you."
  
  scene.message "\\b\\PN\\b: (They never gave up.)"
  scene.message "\\b\\PN\\b: (Neither will I.)"
  
  # TODO: Event Sequence - Starter Support
  # scene.message "Your starter nudged your hand."
  # scene.message "As if to say: You're not alone."
  
  scene.message "\\b\\PN\\b: (That's right.)"
  scene.message "\\b\\PN\\b: (I have Lyra. I have Kael.)"
  scene.message "\\b\\PN\\b: (Together, we can handle anything.)"
end

GameData::Cutscene.define :ch8_decision_to_continue do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Departure Prep
  # scene.message "That morning, you gathered your things."
  # scene.message "The road ahead was uncertain."
  
  scene.message "\\bLyra\\b: So... we're really doing this?"
  scene.message "\\bLyra\\b: Going to the professor? Finding answers?"
  
  scene.message "\\bKael\\b: What's the alternative? Ignore it?"
  scene.message "\\bKael\\b: The cult won't stop looking for us."
  
  scene.message "\\b\\PN\\b: And we can't run forever."
  scene.message "\\b\\PN\\b: Better to know what we're dealing with."
  
  scene.message "\\bLyra\\b: You're right. Both of you."
  scene.message "\\bLyra\\b: I just... wish things could stay normal."
  
  scene.message "\\bKael\\b: Normal was never an option for people like us."
  
  scene.message "\\bLyra\\b: People like us?"
  
  scene.message "\\bKael\\b: Orphan. Farm girl. ..."
  scene.message "\\bKael\\b: We were never meant for ordinary lives."
  
  scene.message "\\b\\PN\\b: Then let's make ours extraordinary."
  scene.message "\\b\\PN\\b: Together."
  
  # TODO: Event Sequence - Pokemon Agreement
  # scene.message "Willow and Shadow barked in agreement."
  # scene.message "Your starter added its voice."
  # scene.message "The team was ready."
end

GameData::Cutscene.define :ch8_marks_bond do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Marks Glow Again
  # scene.message "Before you left, something strange happened."
  # scene.message "All three marks began to glow simultaneously."
  
  scene.message "\\bLyra\\b: Whoa!"
  scene.message "\\bKael\\b: Don't move. Let it happen."
  
  # TODO: Event Sequence - Shared Feelings
  # scene.message "A warmth spread through your bodies."
  # scene.message "For a moment, you could feel each other's emotions."
  
  # TODO: Event Sequence - Emotions
  # scene.message "Lyra's fear—and her hope."
  # scene.message "Kael's grief—and his determination."
  # scene.message "Your own courage—and your doubt."
  
  scene.message "\\bLyra\\b: I felt... I felt both of you."
  scene.message "\\bKael\\b: The marks link us somehow."
  
  scene.message "\\b\\PN\\b: We really are connected."
  
  # TODO: Event Sequence - Glow Fades
  # scene.message "The glow faded, but the bond remained."
  # scene.message "Whatever these marks meant..."
  # scene.message "You were in it together."
end

GameData::Cutscene.define :ch8_departure_scene do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  # TODO: Event Sequence - Sunrise
  # scene.message "The morning sun rose over the forest."
  # scene.message "A new day. A new chapter."
  
  scene.message "\\bLyra\\b: Professor Aldric's lab is half a day away."
  scene.message "\\bKael\\b: Then we should move."
  
  scene.message "\\b\\PN\\b: Let's go get some answers."
  
  # TODO: Event Sequence - Walking Forward
  # scene.message "The three of you walked forward."
  # scene.message "Marked. Changed. Connected."
  
  # TODO: Event Sequence - Destiny
  # scene.message "Whatever destiny awaited..."
  # scene.message "You would meet it head-on."
end

#===============================================================================
# INTERLUDE: Chapter 8.5 - Kael's Nightmare (Kael Perspective Chapter)
# Full playable chapter from Kael's POV during the mark awakening
#===============================================================================

GameData::Cutscene.define :ch8_5_intro do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\i[INTERLUDE: KAEL'S NIGHTMARE]"
  scene.message "\\i[The night the marks appeared...]"
  scene.fade_out 10
  scene.fade_in 10
  
  # TODO: Event Sequence - Kael Insomnia
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "The others were asleep."
  # scene.message "But you couldn't close your eyes."
  
  # scene.message "Every time you tried..."
  # scene.message "You saw fire."
  
  scene.message "\\bKael\\b: (Not again. Not tonight.)"
  
  # TODO: Event Sequence - Shadow Awake
  # scene.message "Shadow stirred beside you."
  scene.message "\\bShadow\\b: Zor...?"
  scene.message "\\bKael\\b: It's nothing, girl. Go back to sleep."
  
  # scene.message "But she wouldn't."
  # scene.message "She never did when the nightmares came."
end

GameData::Cutscene.define :ch8_5_cant_sleep do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  # TODO: Event Sequence - Walking Away
  # scene.message "You walked away from the campsite."
  # scene.message "Far enough that your movements wouldn't wake the others."
  #
  # scene.message "The new mark on your arm pulsed faintly."
  # scene.message "Crimson. Like dying embers."
  
  scene.message "\\bKael\\b: (What does this even mean?)"
  scene.message "\\bKael\\b: (Death and secrets. Shadow and entropy.)"
  scene.message "\\bKael\\b: (Fitting, I suppose.)"
  
  # TODO: Event Sequence - Staring at Stars
  # scene.message "You stared at the stars."
  # scene.message "Remembering another night."
  # scene.message "Another sky."
  # scene.message "And smoke that blotted out everything."
end

GameData::Cutscene.define :ch8_5_memory_begins do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.fade_out 20
  scene.fade_in 20
  
  # TODO: Event Sequence - Memory Flashback
  scene.message "\\i[MEMORY - The Orphanage]"
  scene.message "\\i[Five years ago...]"
  
  # scene.message "You were eleven years old."
  # scene.message "Small. Scared. Alone."
  # scene.message "Except for Mira."
  
  scene.message "\\bYoung Kael\\b: Mira! Mira, where are you?!"
  
  # scene.message "Smoke filled your lungs."
  # scene.message "Flames licked at the walls."
  # scene.message "The orphanage was burning."
  
  scene.message "\\bMira's Voice\\b: KAEL! Over here!"
  
  # TODO: Event Sequence - Running
  # scene.message "You ran toward her voice."
  # scene.message "Coughing. Choking. Terrified."
end

GameData::Cutscene.define :ch8_5_mira_found do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Mira Trapped
  # scene.message "Mira was trapped."
  # scene.message "A beam had fallen across the doorway."
  # scene.message "She couldn't get out."
  
  scene.message "\\bYoung Kael\\b: Mira! Hold on! I'll—"
  
  scene.message "\\bMira\\b: No, Kael. Listen to me."
  scene.message "\\bMira\\b: The window. It's your only way out."
  
  scene.message "\\bYoung Kael\\b: I'm not leaving you!"
  
  scene.message "\\bMira\\b: You HAVE to."
  scene.message "\\bMira\\b: Please. You're the only one I can save."
  
  # TODO: Event Sequence - Tears
  # scene.message "Tears streamed down your face."
  # scene.message "The flames were getting closer."
  
  scene.message "\\bYoung Kael\\b: Mira... please..."
  
  scene.message "\\bMira\\b: I love you, little brother."
  scene.message "\\bMira\\b: Now GO!"
end

GameData::Cutscene.define :ch8_5_the_push do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_shake 10, 40
  
  # TODO: Event Sequence - The Push
  # scene.message "She pushed you toward the window."
  # scene.message "With strength you didn't know she had."
  
  scene.message "\\bMira\\b: JUMP!"
  
  # scene.message "You fell."
  # scene.message "Through glass. Through fire."
  # scene.message "Into the cold night air."
  #
  # scene.message "You hit the ground hard."
  # scene.message "Looked back up at the window."
  #
  # scene.message "And saw Mira one last time."
  # scene.message "Wreathed in flames."
  # scene.message "Smiling."
  
  scene.message "\\bYoung Kael\\b: MIRA!!!"
  
  scene.camera_flash 30
  # TODO: Event Sequence - Collapse
  # scene.message "The building collapsed."
  # scene.message "And your sister was gone."
end

GameData::Cutscene.define :ch8_5_aftermath do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Hospital Waking
  # scene.message "You woke up in a hospital."
  # scene.message "Bandages on your arms. Ashes in your hair."
  # scene.message "And a hole in your chest that would never heal."
  
  scene.message "\\bNurse\\b: You're awake. Oh, thank Arceus."
  
  scene.message "\\bYoung Kael\\b: ...Mira?"
  
  # TODO: Event Sequence - Revelation
  # scene.message "The nurse's face told you everything."
  # scene.message "You didn't need to ask again."
  
  scene.message "\\bYoung Kael\\b: (She saved me.)"
  scene.message "\\bYoung Kael\\b: (She died... so I could live.)"
  scene.message "\\bYoung Kael\\b: (Why? Why her and not me?)"
  
  # TODO: Event Sequence - Closing Off
  # scene.message "From that day forward..."
  # scene.message "You stopped letting anyone close."
  # scene.message "It was safer that way."
end

GameData::Cutscene.define :ch8_5_finding_shadow do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_out 15
  scene.fade_in 15
  
  # TODO: Event Sequence - Streets Memory
  scene.message "\\i[MEMORY - One Year Later]"
  
  # scene.message "You were alone on the streets."
  # scene.message "Scrounging for food. Stealing when necessary."
  # scene.message "Trust no one. Rely on nothing."
  
  # scene.message "That's when you found her."
  
  # scene.message "A Zorua, beaten and abandoned."
  # scene.message "Left in an alley to die."
  
  scene.message "\\bYoung Kael\\b: (Walk away. Don't get involved.)"
  
  # TODO: Event Sequence - Recognition
  # scene.message "But something in her eyes..."
  # scene.message "Reminded you of Mira."
  
  scene.message "\\bYoung Kael\\b: ...Fine. Just this once."
  
  # TODO: Event Sequence - Helping Zorua
  # scene.message "You carried her home."
  # scene.message "Shared your meager food."
  # scene.message "Nursed her back to health."
  #
  # scene.message "And when she woke up..."
  # scene.message "She refused to leave your side."
end

GameData::Cutscene.define :ch8_5_shadow_bond do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bYoung Kael\\b: Don't get attached."
  scene.message "\\bYoung Kael\\b: I'm not someone you want to follow."
  
  scene.message "\\bZorua\\b: *tilts head* Zor?"
  
  scene.message "\\bYoung Kael\\b: I'm serious. People around me get hurt."
  scene.message "\\bYoung Kael\\b: You should find someone else."
  
  scene.message "\\bZorua\\b: *shakes head firmly*"
  scene.message "\\bZorua\\b: Zor. Zorua."
  
  # TODO: Event Sequence - Stubborn Pokemon
  # scene.message "She wouldn't budge."
  # scene.message "No matter what you said."
  # scene.message "No matter how cold you acted."
  
  scene.message "\\bYoung Kael\\b: (Stubborn thing.)"
  scene.message "\\bYoung Kael\\b: ...Fine. But I'm calling you Shadow."
  scene.message "\\bYoung Kael\\b: Because that's all you're allowed to be."
  
  scene.message "\\bShadow\\b: *happy bark*"
  
  # TODO: Event Sequence - Naming Shadow
  # scene.message "You pretended not to smile."
  # scene.message "But she saw it anyway."
end

GameData::Cutscene.define :ch8_5_back_to_present do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  scene.fade_out 20
  scene.fade_in 20
  
  # TODO: Event Sequence - Present Day
  scene.message "\\i[PRESENT - The Campsite]"
  
  # scene.message "You snapped back to reality."
  # scene.message "The memories fading but never gone."
  
  # scene.message "Shadow—no longer a Zorua—pressed against you."
  scene.message "\\bShadow\\b: Zor..."
  
  scene.message "\\bKael\\b: I know, girl. I know."
  
  # TODO: Event Sequence - Mark Pulse
  # scene.message "Your mark pulsed again."
  # scene.message "And for a moment..."
  # scene.message "You felt something else."
  #
  # scene.message "Not memory. Not pain."
  # scene.message "Something... watching."
end

GameData::Cutscene.define :ch8_5_yveltal_first_whisper do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bVoice\\b: (Child of entropy...)"
  
  # TODO: Event Sequence - Voice Whisper
  # scene.message "You spun around."
  # scene.message "No one there."
  
  scene.message "\\bKael\\b: Who's there?!"
  
  scene.message "\\bVoice\\b: (I am the ending. The necessary shadow.)"
  scene.message "\\bVoice\\b: (And you... you carry my mark.)"
  
  # scene.message "The mark flared crimson."
  # scene.message "Pain shot through your arm."
  
  scene.message "\\bKael\\b: *gritting teeth* What do you want?"
  
  scene.message "\\bVoice\\b: (To show you the truth.)"
  scene.message "\\bVoice\\b: (About the fire. About your sister.)"
  scene.message "\\bVoice\\b: (About why you were chosen.)"
  
  # TODO: Event Sequence - Shock
  # scene.message "Your heart stopped."
  scene.message "\\bKael\\b: You know... about the fire?"
end

GameData::Cutscene.define :ch8_5_fire_truth_teased do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bVoice\\b: (I know all endings, child.)"
  scene.message "\\bVoice\\b: (Every death. Every sacrifice.)"
  scene.message "\\bVoice\\b: (Including hers.)"
  
  scene.message "\\bKael\\b: Then tell me! Who started the fire?!"
  
  scene.message "\\bVoice\\b: (Patience.)"
  scene.message "\\bVoice\\b: (When you are ready... you will learn.)"
  scene.message "\\bVoice\\b: (But the truth may destroy you.)"
  
  scene.message "\\bKael\\b: I don't care."
  
  scene.message "\\bVoice\\b: (Good.)"
  scene.message "\\bVoice\\b: (That determination... is why I chose you.)"
  scene.message "\\bVoice\\b: (Face your trials. Master your grief.)"
  scene.message "\\bVoice\\b: (And the answers will come.)"
  
  # TODO: Event Sequence - Voice Fades
  # scene.message "The presence faded."
  # scene.message "The mark stopped burning."
  # scene.message "And you were alone again."
end

GameData::Cutscene.define :ch8_5_lyra_wakes do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bLyra\\b: Kael...?"
  
  # TODO: Event Sequence - Lyra Appears
  # scene.message "You turned sharply."
  # scene.message "Lyra stood at the edge of camp."
  # scene.message "Rubbing her eyes."
  
  scene.message "\\bLyra\\b: Are you okay? I heard you..."
  
  scene.message "\\bKael\\b: It's nothing. Go back to sleep."
  
  scene.message "\\bLyra\\b: That's not what your face says."
  
  # TODO: Event Sequence - She Approaches
  # scene.message "She walked closer."
  # scene.message "Ignoring your obvious discomfort."
  
  scene.message "\\bLyra\\b: You can talk to me, you know."
  scene.message "\\bLyra\\b: We're in this together now."
  
  scene.message "\\bKael\\b: ...Why do you care?"
  
  scene.message "\\bLyra\\b: Because that's what friends do."
end

GameData::Cutscene.define :ch8_5_almost_opening_up do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Staring
  # scene.message "You stared at her."
  # scene.message "This strange girl with sunshine in her smile."
  # scene.message "Who kept trying despite your walls."
  
  scene.message "\\bKael\\b: (Friends. When was the last time...?)"
  
  scene.message "\\bKael\\b: I had a sister once."
  
  scene.message "\\bLyra\\b: ..."
  
  scene.message "\\bKael\\b: She died. In a fire."
  scene.message "\\bKael\\b: She pushed me out a window and saved my life."
  scene.message "\\bKael\\b: And I've never forgiven myself."
  
  scene.message "\\bLyra\\b: Kael..."
  
  scene.message "\\bKael\\b: Don't. Don't say you're sorry."
  scene.message "\\bKael\\b: Everyone says that. It doesn't help."
  
  scene.message "\\bLyra\\b: ...Okay. I won't."
  scene.message "\\bLyra\\b: But I'll be here. When you want to talk about it."
  
  # TODO: Event Sequence - Silence
  # scene.message "You didn't know how to respond."
  # scene.message "So you said nothing."
end

GameData::Cutscene.define :ch8_5_lyra_stays do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Lyra Sits
  # scene.message "Lyra sat down beside you."
  # scene.message "Not too close. Not too far."
  # scene.message "Just... present."
  
  scene.message "\\bLyra\\b: My mom died when I was little."
  scene.message "\\bLyra\\b: I don't remember much about her."
  scene.message "\\bLyra\\b: But I remember how much I loved her."
  
  scene.message "\\bKael\\b: ..."
  
  scene.message "\\bLyra\\b: Loss doesn't go away."
  scene.message "\\bLyra\\b: But carrying it alone makes it heavier."
  
  scene.message "\\bKael\\b: You sound like a greeting card."
  
  scene.message "\\bLyra\\b: *laughing* Maybe."
  scene.message "\\bLyra\\b: But greeting cards exist for a reason."
  
  # TODO: Event Sequence - Almost Smile
  # scene.message "Despite yourself, you almost smiled."
  # scene.message "Almost."
end

GameData::Cutscene.define :ch8_5_pn_joins do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  # TODO: Event Sequence - Player Joins
  # scene.message "Footsteps in the grass."
  # scene.message "\\PN walked toward you both."
  # scene.message "Looking half-asleep but alert."
  
  scene.message "\\b\\PN\\b: Couldn't sleep either?"
  
  scene.message "\\bKael\\b: Why are you all awake?"
  
  scene.message "\\b\\PN\\b: My mark was burning."
  scene.message "\\b\\PN\\b: Felt like something was watching me."
  
  scene.message "\\bLyra\\b: Mine too."
  scene.message "\\bLyra\\b: Is it... the Guardians?"
  
  scene.message "\\bKael\\b: Probably."
  scene.message "\\bKael\\b: They're testing us. Or preparing us."
  scene.message "\\bKael\\b: Either way, we're in for a rough ride."
  
  scene.message "\\b\\PN\\b: Then we ride it together."
  
  # TODO: Event Sequence - Trio Bond
  # scene.message "You looked at them."
  # scene.message "These two strangers who'd become something more."
  # scene.message "And felt something you hadn't felt in years."
  
  scene.message "\\bKael\\b: (Hope. Dangerous thing.)"
end

GameData::Cutscene.define :ch8_5_watching_dawn do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Dawn Watching
  # scene.message "The three of you sat together."
  # scene.message "Waiting for the sun."
  # scene.message "Saying nothing. Needing nothing."
  #
  # scene.message "Shadow curled at your feet."
  # scene.message "Willow nestled in Lyra's lap."
  # scene.message "\\PN's starter dozed against their leg."
  
  scene.message "\\bLyra\\b: Beautiful, isn't it?"
  scene.message "\\bLyra\\b: The sunrise?"
  
  scene.message "\\bKael\\b: ...Yeah."
  
  # TODO: Event Sequence - Sun Break
  # scene.message "You'd forgotten what sunrises looked like."
  # scene.message "For years, you only saw the darkness."
  
  scene.message "\\bKael\\b: (Maybe... it doesn't have to stay that way.)"
  scene.message "\\bKael\\b: (Maybe there's something after the night.)"
  
  # scene.message "The sun broke the horizon."
  # scene.message "Golden light flooded the world."
  # scene.message "And for the first time in five years..."
  # scene.message "You felt warm."
end

GameData::Cutscene.define :ch8_5_resolution do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
  scene.message "\\bLyra\\b: *stretching* Ready to face the day?"
  
  scene.message "\\b\\PN\\b: Ready as we'll ever be."
  
  scene.message "\\bKael\\b: Let's go."
  
  # TODO: Event Sequence - Standing Up
  # scene.message "You stood."
  # scene.message "Brushed the grass from your clothes."
  # scene.message "And for just a moment, let your guard down."
  
  scene.message "\\bKael\\b: ...Thanks."
  
  scene.message "\\bLyra\\b: For what?"
  
  scene.message "\\bKael\\b: For not running when you found out."
  scene.message "\\bKael\\b: About me. About... everything."
  
  scene.message "\\bLyra\\b: *smiling* Why would we run?"
  scene.message "\\bLyra\\b: We're marked together."
  scene.message "\\bLyra\\b: That means something."
  
  scene.message "\\b\\PN\\b: We've got your back, Kael."
  scene.message "\\b\\PN\\b: Always."
  
  # TODO: Event Sequence - Silent Agreement
  # scene.message "You nodded."
  # scene.message "Not trusting your voice."
  # scene.message "But meaning it anyway."
end

GameData::Cutscene.define :ch8_5_ending do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  scene.fade_out 20
  
  # TODO: Event Sequence - Epilogue Text
  scene.message "\\i[Kael's Nightmare - End]"
  scene.message "\\i[The walls around his heart began to crack.]"
  scene.message "\\i[Not broken. Not yet.]"
  scene.message "\\i[But the light was getting in.]"
  
  scene.fade_in 20
  scene.message "\\i[Return to main story...]"
end

#===============================================================================
# ACT 2: AWAKENING (Chapters 9-18)
#===============================================================================

#===============================================================================
# Chapter 9: What Are We? - Seeking Answers
#===============================================================================

GameData::Cutscene.define :ch9_journey_to_professor do |scene|
  scene.play_bgm 'Pokemon XY - Route 7'
  
  # TODO: Event Sequence - Journey Start
  # scene.message "The road to Professor Aldric's laboratory was long."
  # scene.message "Three days of walking. Three days of wondering."
  
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
  
  # TODO: Event Sequence - Campfire
  # scene.message "That night, you camped under the stars."
  # scene.message "The fire crackled softly."
  
  scene.message "\\bLyra\\b: So... Champion's kid, huh?"
  scene.message "\\bLyra\\b: That explains the expensive gear."
  
  scene.message "\\b\\PN\\b: *laughs* Guilty as charged."
  
  scene.message "\\bKael\\b: My parents left me at an orphanage."
  scene.message "\\bKael\\b: I don't know if they're alive or dead."
  scene.message "\\bKael\\b: ...I tell myself I don't care."
  
  scene.message "\\bLyra\\b: Kael..."
  
  scene.message "\\bKael\\b: It's fine. Ancient history."
  scene.message "\\bKael\\b: Shadow's my family now."
  
  # TODO: Event Sequence - Shadow Comfort
  # scene.message "Shadow, as if understanding, curled tighter against his leg."
  
  scene.message "\\bLyra\\b: My dad left when I was six."
  scene.message "\\bLyra\\b: Just... vanished one day."
  scene.message "\\bLyra\\b: Elena—my sister—she basically raised me."
  
  scene.message "\\b\\PN\\b: That must have been hard."
  
  scene.message "\\bLyra\\b: It was. But Elena never complained."
  scene.message "\\bLyra\\b: She always put me first."
  
  scene.message "\\bLyra\\b: That's why I have to become strong."
  scene.message "\\bLyra\\b: So I can protect her for once."
  
  # TODO: Event Sequence - Bound by Fate
  # scene.message "The fire popped. Sparks drifted skyward."
  # scene.message "Three marked strangers, bound by fate."
end

GameData::Cutscene.define :ch9_ragnar_splits do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Ragnar Aside
  # scene.message "After escaping the forest, Ragnar pulled you aside."
  
  scene.message "\\bRagnar\\b: Those guys were SERIOUS."
  scene.message "\\bRagnar\\b: Like, cult-serious."
  
  scene.message "\\b\\PN\\b: Ragnar, listen..."
  
  scene.message "\\bRagnar\\b: Yeah, yeah, you can't tell me."
  scene.message "\\bRagnar\\b: I get it. Destiny stuff or whatever."
  
  # TODO: Event Sequence - Crossed Arms
  # scene.message "He crossed his arms."
  
  scene.message "\\bRagnar\\b: But I'm gonna keep training."
  scene.message "\\bRagnar\\b: So when you DO need help..."
  scene.message "\\bRagnar\\b: I'll be strong enough to matter."
  
  scene.message "\\b\\PN\\b: Ragnar..."
  
  scene.message "\\bRagnar\\b: Don't get all mushy on me!"
  scene.message "\\bRagnar\\b: I've got Gyms to conquer!"
  scene.message "\\bRagnar\\b: I'll see you at the League!"
  
  # TODO: Event Sequence - Ragnar Exit
  # scene.message "He ran off with a wave."
  # scene.message "That idiot. He really did care."
end

GameData::Cutscene.define :ch9_lab_arrival do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  # TODO: Event Sequence - Lab Description
  # scene.message "Professor Aldric's laboratory sat atop a cliff."
  # scene.message "Overlooking the sea. Isolated. Private."
  
  scene.message "\\bLab Assistant\\b: You must be the group Professor Aldric mentioned."
  scene.message "\\bLab Assistant\\b: He's been expecting you."
  scene.message "\\bLab Assistant\\b: ...Though I must say, you're all quite young."
  
  scene.message "\\bKael\\b: Age is irrelevant."
  scene.message "\\bKael\\b: Competence is what matters."
  
  scene.message "\\bLab Assistant\\b: *flustered* R-Right this way."
  
  # TODO: Event Sequence - Lab Interior
  # scene.message "The laboratory was filled with artifacts."
  # scene.message "Stone tablets. Ancient scrolls. Fossilized remnants."
  
  scene.message "\\bLyra\\b: *whispering* This place is amazing..."
  
  # TODO: Event Sequence - Aldric Intro
  # scene.message "An elderly man approached with warm eyes."
  # scene.message "His coat was wrinkled. His glasses thick."
  
  scene.message "\\bProfessor Aldric\\b: Ah! Marcus's child!"
  scene.message "\\bProfessor Aldric\\b: You look just like your father did at your age."
  
  scene.message "\\b\\PN\\b: Professor Aldric. Thank you for seeing us."
  
  scene.message "\\bProfessor Aldric\\b: Thank ME? Child, you've brought me the discovery of a lifetime!"
  scene.message "\\bProfessor Aldric\\b: Now—show me these marks!"
end

GameData::Cutscene.define :ch9_mark_examination do |scene|
  scene.play_bgm 'Pokemon XY - Scientist Theme'
  
  # TODO: Event Sequence - Studying Marks
  # scene.message "Professor Aldric studied the marks with fascination."
  # scene.message "His instruments beeped and whirred."
  
  scene.message "\\bProfessor Aldric\\b: Remarkable... truly remarkable."
  scene.message "\\bProfessor Aldric\\b: These symbols are ancient."
  scene.message "\\bProfessor Aldric\\b: I've seen fragments in texts, but never..."
  
  # TODO: Event Sequence - Adjust Glasses
  # scene.message "He adjusted his glasses, leaning closer."
  
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
  
  # TODO: Event Sequence - Scroll Room
  # scene.message "Professor Aldric led them to a room of scrolls."
  # scene.message "Ancient texts from civilizations long forgotten."
  
  scene.message "\\bProfessor Aldric\\b: The Three Guardians appear across cultures."
  scene.message "\\bProfessor Aldric\\b: Different names. Different forms."
  scene.message "\\bProfessor Aldric\\b: But always three. Always together."
  
  # TODO: Event Sequence - Unrolling Scroll
  # scene.message "He unrolled a fragile scroll."
  
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
  
  # TODO: Event Sequence - Map
  # scene.message "Professor Aldric spread a map across the table."
  # scene.message "Ancient locations marked with faded ink."
  
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
  
  # TODO: Event Sequence - Pointing to Map
  # scene.message "He pointed to a peak on the map."
  
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
  
  # TODO: Event Sequence - Gift
  # scene.message "Before you left, Professor Aldric stopped you."
  
  scene.message "\\bProfessor Aldric\\b: Wait. I have something for each of you."
  
  # TODO: Event Sequence - Crystals
  # scene.message "He produced three small crystals."
  # scene.message "Each one glowed with inner light."
  
  scene.message "\\bProfessor Aldric\\b: Temple Keys."
  scene.message "\\bProfessor Aldric\\b: Fragments of the original Guardians' power."
  scene.message "\\bProfessor Aldric\\b: They will resonate with your marks."
  
  # TODO: Event Sequence - Taking Crystal
  # scene.message "As you took yours, warmth flooded your body."
  # scene.message "Your mark pulsed in recognition."
  
  scene.message "\\bLyra\\b: It's... beautiful."
  
  scene.message "\\bKael\\b: *staring at his crystal* ...Thank you."
  
  scene.message "\\bProfessor Aldric\\b: Your father trusted me, \\PN."
  scene.message "\\bProfessor Aldric\\b: And now I trust you."
  scene.message "\\bProfessor Aldric\\b: Whatever happens at the temple..."
  scene.message "\\bProfessor Aldric\\b: Stay true to who you are."
end

GameData::Cutscene.define :ch9_departure do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Leaving Lab
  # scene.message "You departed as the sun rose."
  # scene.message "Mt. Corona loomed on the horizon."
  
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
  
  # TODO: Event Sequence - Gym Appearance
  # scene.message "The third Gym appeared—a structure of ice and stone."
  # scene.message "Frost coated every surface."
  
  scene.message "\\bLyra\\b: Ice-type Gym?"
  scene.message "\\bLyra\\b: *shivering* Great..."
  
  scene.message "\\bKael\\b: Should be interesting."
  scene.message "\\bKael\\b: Shadow knows some Fire moves."
  
  scene.message "\\bLyra\\b: Show-off."
  
  scene.message "\\b\\PN\\b: Let's scout first."
  scene.message "\\b\\PN\\b: See what we're up against."
  
  # TODO: Event Sequence - Gym Interior
  # scene.message "Inside, the Gym was a maze of frozen platforms."
  # scene.message "Trainers skated across the ice with practiced ease."
  
  scene.message "\\bGym Trainer\\b: Challengers? Brave."
  scene.message "\\bGym Trainer\\b: Leader Frost doesn't go easy on anyone."
  
  scene.message "\\bLyra\\b: Good! I don't want easy!"
  
  scene.message "\\bKael\\b: *quietly* Neither do I."
end

GameData::Cutscene.define :ch9_pre_battle_tension do |scene|
  scene.play_bgm 'Pokemon SwSh - Gym Leader Entrance'
  
  # TODO: Event Sequence - Leader Frost
  # scene.message "Gym Leader Frost awaited at the arena's center."
  # scene.message "A woman of sharp angles and colder eyes."
  
  scene.message "\\bFrost\\b: Three challengers. All marked."
  scene.message "\\bFrost\\b: I've heard rumors about you."
  
  scene.message "\\b\\PN\\b: Rumors?"
  
  scene.message "\\bFrost\\b: The Shattered Hand is looking for you."
  scene.message "\\bFrost\\b: They've offered bounties."
  
  scene.message "\\bKael\\b: And?"
  
  scene.message "\\bFrost\\b: And I don't work for fanatics."
  scene.message "\\bFrost\\b: But I also don't give badges to the weak."
  scene.message "\\bFrost\\b: Show me what the marked can do."
  
  # TODO: Event Sequence - Battle Start
  # scene.message "Ice formed around her feet."
  # scene.message "Her Pokémon emerged, breath misting in the cold."
  
  scene.message "\\bLyra\\b: Here we go..."
end

GameData::Cutscene.define :ch9_gym3_victory do |scene|
  scene.play_bgm 'Pokemon XY - Victory'
  
  # TODO: Event Sequence - Battle End
  # scene.message "The final attack landed. Frost's last Pokémon fell."
  
  scene.message "\\bFrost\\b: *smiling coldly* Impressive."
  scene.message "\\bFrost\\b: The marks aren't just decoration."
  
  # TODO: Event Sequence - Badge
  # scene.message "She produced three Glacier Badges."
  
  scene.message "\\bFrost\\b: Take these. You've earned them."
  scene.message "\\bFrost\\b: And a word of warning..."
  
  scene.message "\\bFrost\\b: Mt. Corona is dangerous in winter."
  scene.message "\\bFrost\\b: The temple is guarded by more than just ice."
  scene.message "\\bFrost\\b: Be prepared for what you'll find there."
  
  scene.message "\\b\\PN\\b: Thank you for the advice."
  
  scene.message "\\bFrost\\b: Don't thank me yet."
  scene.message "\\bFrost\\b: Thank me when you survive."
  
  # TODO: Event Sequence - Exit Warning
  # scene.message "Her words echoed as you left."
  # scene.message "Cold. Ominous. True."
end

GameData::Cutscene.define :ch9_night_before_mountain do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  # TODO: Event Sequence - Camp
  # scene.message "You camped at the mountain's base that night."
  # scene.message "Tomorrow, the real journey began."
  
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
  
  # TODO: Event Sequence - Mountain View
  # scene.message "The mountain loomed above."
  # scene.message "Silent. Waiting. Patient."
end

GameData::Cutscene.define :ch9_zacian_first_vision do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon SwSh - Zacian-Zamazenta Theme'
  
  # TODO: Event Sequence - Dream Scene
  scene.message "\\i[DREAM - YOUR VISION]"
  # scene.message "You stood in a field of steel flowers."
  # scene.message "Each petal sharp as a blade."
  # scene.message "The sky was silver. The air tasted of iron."
  
  # TODO: Event Sequence - Zacian Appears
  # scene.message "Before you stood a wolf of living metal."
  # scene.message "A sword rested in its mane, pulsing with power."
  # scene.message "Its eyes burned with ancient wisdom."
  
  scene.message "\\bZacian\\b: So. You are the one who would bear my mark."
  
  scene.message "\\b\\PN\\b: (I can't move... the pressure is overwhelming...)"
  
  scene.message "\\bZacian\\b: Fear is natural. Even I know fear."
  scene.message "\\bZacian\\b: The fear of failing those I protect."
  scene.message "\\bZacian\\b: But you did not run. You stood."
  
  # TODO: Event Sequence - circling
  # scene.message "The wolf circled you slowly."
  # scene.message "Each step rang like a sword being drawn."
  
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
  
  # TODO: Event Sequence - Waking Up
  # scene.message "You woke with the taste of steel on your tongue."
  # scene.message "Your mark pulsed brighter than before."
  # scene.message "The mountain waited."
end

GameData::Cutscene.define :ch9_morning_departure do |scene|
  scene.play_bgm 'Pokemon RSE - Mt. Pyre'
  
  # TODO: Event Sequence - Dawn
  # scene.message "Dawn broke cold and gray."
  # scene.message "The mountain path wound upward into mist."
  
  scene.message "\\bLyra\\b: \\PN? You look tired."
  
  scene.message "\\b\\PN\\b: I had a dream."
  scene.message "\\b\\PN\\b: About... Zacian."
  
  scene.message "\\bKael\\b: *sharply* You saw your Guardian?"
  
  scene.message "\\b\\PN\\b: It was human once. A warrior."
  scene.message "\\b\\PN\\b: It asked if I would make the same choice."
  
  scene.message "\\bLyra\\b: What choice?"
  
  scene.message "\\b\\PN\\b: To protect. To sacrifice."
  scene.message "\\b\\PN\\b: I said yes."
  
  # TODO: Event Sequence - Kael Silence
  # scene.message "Kael was silent for a long moment."
  
  scene.message "\\bKael\\b: I haven't seen mine yet."
  scene.message "\\bKael\\b: But I feel it watching."
  scene.message "\\bKael\\b: Waiting."
  
  scene.message "\\bLyra\\b: Me too..."
  scene.message "\\bLyra\\b: Something bright. Warm. Judging."
  
  scene.message "\\b\\PN\\b: Then let's go meet them."
  scene.message "\\b\\PN\\b: Together."
  
  # TODO: Event Sequence - Ascent
  # scene.message "The three of you began the ascent."
  # scene.message "Toward answers. Toward destiny."
end

#===============================================================================
# Chapter 10: The Mountain Path - Journey to the Summit Temple
#===============================================================================

GameData::Cutscene.define :ch10_ragnar_surprise do |scene|
  scene.play_bgm 'Pokemon BW - Rival Theme'
  
  # TODO: Event Sequence - Ragnar Voice
  # scene.message "At the mountain base, a familiar voice echoed."
  
  scene.message "\\bRagnar\\b: \\PN! You're heading up the mountain too?!"
  
  # TODO: Event Sequence - Ragnar Appearance
  # scene.message "Ragnar emerged from the nearby Pokémon Center."
  # scene.message "His team looked battle-hardened now."
  # scene.message "His Raichu's fur crackled with static."
  
  scene.message "\\b\\PN\\b: Ragnar? What are you doing here?"
  
  scene.message "\\bRagnar\\b: There's a rare Pokémon up there!"
  scene.message "\\bRagnar\\b: I'm gonna catch it and add it to my team!"
  
  scene.message "\\bKael\\b: *muttering* Of course he is."
  
  scene.message "\\bRagnar\\b: Hey Broody! Still traveling with \\PN, huh?"
  scene.message "\\bKael\\b: ...My name is Kael."
  scene.message "\\bRagnar\\b: Sure thing, Broody!"
  
  scene.message "\\bLyra\\b: *giggling* He's got you pegged."
  
  scene.message "\\bRagnar\\b: Anyway, \\PN—I've got FOUR badges now!"
  scene.message "\\bRagnar\\b: How many do YOU have?"
  
  scene.message "\\b\\PN\\b: ...Three."
  
  scene.message "\\bRagnar\\b: HA! I'm winning!"
  scene.message "\\bRagnar\\b: But hey, I heard some weird stuff is going on."
  scene.message "\\bRagnar\\b: Cult people? Ancient evils?"
  scene.message "\\bRagnar\\b: You guys wouldn't know anything about that, right?"
  
  # TODO: Event Sequence - Glances
  # scene.message "The three of you exchanged glances."
  
  scene.message "\\bRagnar\\b: *noticing* ...Right?"
  
  scene.message "\\b\\PN\\b: It's complicated, Ragnar."
  
  scene.message "\\bRagnar\\b: *serious for once* ...Be careful up there, okay?"
  scene.message "\\bRagnar\\b: I've heard weird things about that mountain."
  
  scene.message "\\b\\PN\\b: We will."
  
  scene.message "\\bRagnar\\b: *grinning again* Good! Because I need my rival alive!"
  scene.message "\\bRagnar\\b: Can't beat you if you're dead!"
  
  # TODO: Event Sequence - Ragnar Departure
  # scene.message "He waved and headed off on his own path."
  
  scene.message "\\bLyra\\b: He really cares about you, doesn't he?"
  scene.message "\\b\\PN\\b: In his own way... yeah."
end

GameData::Cutscene.define :ch10_mountain_base do |scene|
  scene.play_bgm 'Pokemon RSE - Route 113'
  
  # TODO: Event Sequence - Mountain Description
  # scene.message "Mt. Corona rose from the earth like a titan's fist."
  # scene.message "Snow crowned its peak. Mist shrouded its slopes."
  
  scene.message "\\bLyra\\b: *gulps* That's... really high."
  
  scene.message "\\bKael\\b: The Summit Temple is near the peak."
  scene.message "\\bKael\\b: Two days of climbing. Maybe three."
  
  scene.message "\\b\\PN\\b: Have you been here before?"
  
  scene.message "\\bKael\\b: No. But I know mountains."
  scene.message "\\bKael\\b: The orphanage sat at the base of the Ironpeak Range."
  scene.message "\\bKael\\b: I spent more time in those peaks than with people."
  
  scene.message "\\bLyra\\b: That sounds lonely..."
  
  scene.message "\\bKael\\b: It was peaceful."
  scene.message "\\bKael\\b: Mountains don't lie. Don't betray."
  scene.message "\\bKael\\b: They just... are."
  
  scene.message "\\b\\PN\\b: Well, we're not mountains."
  scene.message "\\b\\PN\\b: But you can count on us too."
  
  # TODO: Event Sequence - Kael Reaction
  # scene.message "Kael didn't respond."
  # scene.message "But you caught a flicker of something in his eyes."
end

GameData::Cutscene.define :ch10_first_ascent do |scene|
  scene.play_bgm 'Pokemon RSE - Meteor Falls'
  
  # TODO: Event Sequence - Trail
  # scene.message "The trail wound upward through sparse pines."
  # scene.message "Each step brought colder air."
  
  scene.message "\\bKael\\b: Watch your footing here."
  scene.message "\\bKael\\b: The rocks are loose."
  
  scene.message "\\bLyra\\b: *slips* Whoa—!"
  
  # TODO: Event Sequence - Catching Lyra
  # scene.message "Kael's hand shot out, catching her arm."
  
  scene.message "\\bKael\\b: Careful."
  
  scene.message "\\bLyra\\b: *blushing* T-Thanks..."
  
  scene.message "\\b\\PN\\b: (He barely moved, but his reflexes are incredible.)"
  
  scene.message "\\bKael\\b: I'll lead. Step where I step."
  
  # TODO: Event Sequence - Single File
  # scene.message "The three of you continued in single file."
  # scene.message "Kael's movements were fluid, confident."
  # scene.message "He truly was at home in the mountains."
end

GameData::Cutscene.define :ch10_wild_encounter do |scene|
  scene.play_bgm 'Pokemon RSE - Wild Battle'
  
  # TODO: Event Sequence - Aggron Appears
  # scene.message "A cry echoed across the cliffs."
  # scene.message "An Aggron emerged from a cave mouth."
  
  scene.message "\\bLyra\\b: That's one angry Pokémon!"
  
  scene.message "\\bKael\\b: It's protecting its territory."
  scene.message "\\bKael\\b: We need to go around."
  
  scene.message "\\b\\PN\\b: There IS no around—it's blocking the only path!"
  
  # TODO: Event Sequence - Charge
  # scene.message "The Aggron roared and charged."
  
  scene.message "\\bKael\\b: Then we fight."
  scene.message "\\bKael\\b: Shadow!"
  
  # TODO: Event Sequence - Shadow Fight
  # scene.message "Shadow leaped forward, meeting the charge."
  # scene.message "The battle was brief but intense."
  
  scene.message "\\bKael\\b: *commanding* Foul Play!"
  
  # TODO: Event Sequence - Foul Play
  # scene.message "Shadow twisted, using the Aggron's momentum against it."
  # scene.message "The metal beast stumbled back, surprised."
  
  scene.message "\\b\\PN\\b: It's backing down!"
  
  # TODO: Event Sequence - Retreat
  # scene.message "The Aggron growled but retreated to its cave."
  
  scene.message "\\bLyra\\b: That was amazing, Kael!"
  scene.message "\\bKael\\b: Just survival."
end

GameData::Cutscene.define :ch10_mountain_cave do |scene|
  scene.play_bgm 'Pokemon DPPT - Mt. Coronet'
  
  # TODO: Event Sequence - Storm
  # scene.message "A storm rolled in suddenly."
  # scene.message "You took shelter in a shallow cave."
  
  scene.message "\\bLyra\\b: Where did this weather come from?!"
  
  # TODO: Event Sequence - Wind
  # scene.message "Wind howled outside. Snow fell in sheets."
  
  scene.message "\\bKael\\b: Mountain storms. They're unpredictable."
  scene.message "\\bKael\\b: We wait it out."
  
  scene.message "\\b\\PN\\b: At least the cave is dry."
  
  # TODO: Event Sequence - Huddling
  # scene.message "Your Pokémon huddled together for warmth."
  # scene.message "Shadow sat apart, watching the storm."
  
  scene.message "\\bLyra\\b: Hey, Shadow."
  # TODO: Event Sequence - Lyra Sits with Shadow
  # scene.message "She sat down next to the Zorua."
  scene.message "\\bLyra\\b: You don't have to sit alone."
  
  # TODO: Event Sequence - Shadow Moves
  # scene.message "Shadow looked at her, then at Kael."
  # scene.message "Kael gave a slight nod."
  #
  # scene.message "The Zorua moved closer to the group."
  
  scene.message "\\b\\PN\\b: (Even Shadow is learning to trust.)"
end

GameData::Cutscene.define :ch10_campfire_bond do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  # TODO: Event Sequence - Campfire
  # scene.message "Night fell on the mountain."
  # scene.message "The campfire crackled against the cold."
  
  scene.message "\\bLyra\\b: *shivering* It's freezing up here!"
  
  # scene.message "Without a word, Kael removed his jacket."
  # scene.message "He draped it over her shoulders."
  
  scene.message "\\bLyra\\b: *surprised* Kael...?"
  scene.message "\\bKael\\b: You were cold."
  scene.message "\\bLyra\\b: But you'll—"
  scene.message "\\bKael\\b: I don't get cold."
  
  # TODO: Event Sequence - Jacket
  # scene.message "He was lying. You could see him shiver."
  # scene.message "But Lyra just smiled and pulled the jacket tighter."
  
  scene.message "\\b\\PN\\b: (Something's definitely growing between those two.)"
  
  scene.message "\\bLyra\\b: Tell me something, Kael."
  scene.message "\\bLyra\\b: Something about yourself."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: I grew up in an orphanage."
  scene.message "\\bKael\\b: The mountains behind it were my escape."
  
  scene.message "\\bLyra\\b: *softly* I'm sorry..."
  scene.message "\\bKael\\b: Don't be. It made me who I am."
  
  # TODO: Event Sequence - Silence
  # scene.message "The fire crackled in comfortable silence."
end

GameData::Cutscene.define :ch10_lyra_opens_up do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: I was scared of everything as a kid."
  scene.message "\\bLyra\\b: The dark. Thunder. Being alone."
  
  scene.message "\\bKael\\b: You don't seem scared now."
  
  scene.message "\\bLyra\\b: Elena fixed that."
  scene.message "\\bLyra\\b: She'd tell me stories to distract me."
  scene.message "\\bLyra\\b: Hold me during storms."
  
  scene.message "\\bLyra\\b: When Dad left... she became everything."
  scene.message "\\bLyra\\b: Mom, Dad, sister—all in one."
  
  scene.message "\\b\\PN\\b: She sounds amazing."
  
  scene.message "\\bLyra\\b: She is. She really is."
  scene.message "\\bLyra\\b: That's why I need to get stronger."
  scene.message "\\bLyra\\b: So someday I can protect HER."
  
  scene.message "\\bKael\\b: ...I understand."
  scene.message "\\bKael\\b: Wanting to protect someone."
  
  # TODO: Event Sequence - Kael Voice
  # scene.message "His voice was quieter than usual."
  # scene.message "Softer. Almost vulnerable."
end

GameData::Cutscene.define :ch10_stargazing do |scene|
  scene.play_bgm 'Pokemon DPPT - Lake'
  
  # TODO: Event Sequence - Stars
  # scene.message "The storm passed. The sky cleared."
  # scene.message "Stars blazed above—brighter than any city."
  
  scene.message "\\bLyra\\b: *gasps* It's beautiful..."
  
  scene.message "\\b\\PN\\b: I've never seen so many stars."
  
  scene.message "\\bKael\\b: In the mountains, there's no light pollution."
  scene.message "\\bKael\\b: You see the sky as it truly is."
  
  # TODO: Event Sequence - Pointing
  # scene.message "He pointed to a constellation."
  
  scene.message "\\bKael\\b: That's the Three Guardians."
  scene.message "\\bKael\\b: Or at least, that's what people used to call it."
  
  scene.message "\\bLyra\\b: The same Guardians from the legends?"
  
  scene.message "\\bKael\\b: Probably."
  scene.message "\\bKael\\b: Ancient peoples saw them everywhere."
  scene.message "\\bKael\\b: In the stars. In the mountains. In themselves."
  
  scene.message "\\b\\PN\\b: And now they're in us."
  
  # TODO: Event Sequence - Marks Pulse
  # scene.message "Your marks pulsed softly."
  # scene.message "Three lights among millions."
end

GameData::Cutscene.define :ch10_kael_memory_flash do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_flash 10
  
  # TODO: Event Sequence - Memory Trigger
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "The mountain air triggered something."
  # scene.message "A memory. Unbidden."
  
  scene.message "\\bMira's Voice\\b: Kael! Look at the view!"
  scene.message "\\bMira's Voice\\b: It's beautiful!"
  
  scene.message "\\bKael\\b: ...!"
  scene.message "\\bKael\\b: (Mira...)"
  
  scene.message "\\bLyra\\b: Kael? You okay?"
  
  scene.message "\\bKael\\b: ...Fine. Keep moving."
  
  scene.message "\\bKael\\b: (She's been dead for years.)"
  scene.message "\\bKael\\b: (Why do I keep hearing her voice?)"
  scene.message "\\bKael\\b: (Is it the mark? These mountains?)"
  
  # TODO: Event Sequence - Shadow Nuzzle
  # scene.message "Shadow nuzzled against his leg."
  scene.message "\\bKael\\b: *quietly* Thanks, Shadow."
end

GameData::Cutscene.define :ch10_mira_memory do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  # TODO: Event Sequence - Memory Scene
  scene.message "\\i[KAEL'S PERSPECTIVE - MEMORY]"
  # scene.fade_out
  
  # scene.message "Years ago. The orphanage rooftop."
  # scene.message "A small girl with Kael's same dark hair."
  
  scene.message "\\bYoung Mira\\b: Kael! You have to see the sunset!"
  scene.message "\\bYoung Kael\\b: I've seen sunsets before."
  scene.message "\\bYoung Mira\\b: Not like THIS one!"
  
  # TODO: Event Sequence - Hand Grab
  # scene.message "She grabbed his hand and pulled him up."
  # scene.message "The sky was ablaze—orange and pink and gold."
  
  scene.message "\\bYoung Mira\\b: See? It's magic!"
  scene.message "\\bYoung Kael\\b: *small smile* Yeah. It is."
  
  scene.message "\\bYoung Mira\\b: Promise me something, Kael."
  scene.message "\\bYoung Mira\\b: Promise we'll always watch sunsets together."
  
  scene.message "\\bYoung Kael\\b: ...I promise."
  
  scene.fade_in
  
  # TODO: Event Sequence - Promise Broken
  # scene.message "A promise he couldn't keep."
  # scene.message "The fire had taken her three days later."
end

GameData::Cutscene.define :ch10_ancient_shrine do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Shrine
  # scene.message "High on the mountain, you found the shrine."
  # scene.message "Weathered murals covered the walls."
  
  scene.message "\\bKael\\b: These are ancient. Thousands of years."
  
  scene.message "\\bLyra\\b: Look! Three figures!"
  # TODO: Event Sequence - Pointing
  # scene.message "She pointed to a faded painting."
  # scene.message "Three silhouettes. Three crowns."
  
  scene.message "\\bKael\\b: The guardians..."
  scene.message "\\bKael\\b: But the details are too worn."
  scene.message "\\bKael\\b: I can't make out their forms."
  
  scene.message "\\b\\PN\\b: The temple should have more."
  scene.message "\\b\\PN\\b: Let's keep going."
  
  # TODO: Event Sequence - Pulsing
  # scene.message "As you passed the mural, your marks pulsed in unison."
  # scene.message "Recognition. Connection. Something awakening."
end

GameData::Cutscene.define :ch10_shrine_inscription do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Inscription
  # scene.message "Kael studied an inscription below the mural."
  # scene.message "His brow furrowed in concentration."
  
  scene.message "\\bLyra\\b: Can you read it?"
  
  scene.message "\\bKael\\b: It's ancient Coronan..."
  scene.message "\\bKael\\b: Similar to texts I studied."
  
  # TODO: Event Sequence - Tracing
  # scene.message "He traced the carved letters."
  
  scene.message "\\bKael\\b: 'Three who are one.'"
  scene.message "\\bKael\\b: 'Bound by fate, divided by form.'"
  scene.message "\\bKael\\b: 'When darkness rises, the marked shall stand.'"
  
  scene.message "\\b\\PN\\b: 'The marked shall stand.'"
  scene.message "\\b\\PN\\b: That's us."
  
  scene.message "\\bKael\\b: There's more..."
  scene.message "\\bKael\\b: 'But beware the Fourth.'"
  scene.message "\\bKael\\b: 'The one who grasps but cannot hold.'"
  
  scene.message "\\bLyra\\b: The Fourth?"
  
  scene.message "\\bKael\\b: *darkly* Hoopa."
end

GameData::Cutscene.define :ch10_dangerous_crossing do |scene|
  scene.play_bgm 'Pokemon ORAS - Route 118'
  
  # TODO: Event Sequence - Ledge
  # scene.message "The path narrowed to a thin ledge."
  # scene.message "A sheer drop fell away to the left."
  
  scene.message "\\bLyra\\b: I really, REALLY don't like heights."
  
  scene.message "\\bKael\\b: Don't look down. Focus on my back."
  scene.message "\\bKael\\b: One step at a time."
  
  scene.message "\\b\\PN\\b: I've got you, Lyra. We'll go slow."
  
  # TODO: Event Sequence - Scary Ledge
  # scene.message "Lyra pressed against the cliff face."
  # scene.message "Her knuckles were white."
  
  scene.message "\\bKael\\b: You're doing well."
  scene.message "\\bKael\\b: Just a little further."
  
  # TODO: Event Sequence - Wide Ledge
  # scene.message "The ledge widened. Lyra collapsed against the rock."
  
  scene.message "\\bLyra\\b: Never. Again."
  
  scene.message "\\bKael\\b: ...You did well."
  
  # TODO: Event Sequence - Praise
  # scene.message "Coming from Kael, it was high praise."
end

GameData::Cutscene.define :ch10_temple_in_sight do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  # TODO: Event Sequence - Temple View
  # scene.message "As dawn broke, the temple appeared."
  # scene.message "Stone spires reaching toward the sky."
  # scene.message "Ancient. Majestic. Untouched by time."
  
  scene.message "\\bLyra\\b: *breathless* It's real..."
  
  scene.message "\\bKael\\b: The Summit Temple."
  scene.message "\\bKael\\b: Built by the first vessels."
  scene.message "\\bKael\\b: Or so the legends say."
  
  scene.message "\\b\\PN\\b: We made it."
  
  # TODO: Event Sequence - Gates
  # scene.message "The temple gates loomed before you."
  # scene.message "Carved with the same three figures."
  # scene.message "The Three Guardians."
  
  scene.message "\\bLyra\\b: Do we just... go in?"
  
  # TODO: Event Sequence - Gates Opening
  # scene.message "As if in answer, your marks flared."
  # scene.message "The gates began to open."
  
  scene.message "\\bKael\\b: I think that's our answer."
end

GameData::Cutscene.define :ch10_lyra_guardian_sense do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Warmth
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # scene.message "As the gates opened, warmth flooded through you."
  # scene.message "Different from the cold mountain air."
  
  scene.message "\\bLyra\\b: (What is this feeling...?)"
  
  # TODO: Event Sequence - Feeling Voice
  # scene.message "A voice—not heard, but felt."
  
  scene.message "\\b???\\b: Child of light."
  scene.message "\\b???\\b: You have come far."
  
  scene.message "\\bLyra\\b: *gasps* Did you hear that?"
  
  scene.message "\\bKael\\b: Hear what?"
  
  scene.message "\\bLyra\\b: A voice... calling me..."
  
  scene.message "\\b???\\b: When you are ready, seek me."
  scene.message "\\b???\\b: In the light that judges all."
  
  # TODO: Event Sequence - Hope
  # scene.message "The warmth faded, leaving only lingering hope."
  
  scene.message "\\bLyra\\b: I think... my Guardian spoke to me."
  scene.message "\\bLyra\\b: For just a moment."
  
  # TODO: Event Sequence - Mark Glow
  # scene.message "Her mark glowed golden beneath her sleeve."
end

GameData::Cutscene.define :ch10_entering_temple do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  # TODO: Event Sequence - Entering
  # scene.message "You crossed the threshold together."
  # scene.message "The temple swallowed you in shadow and stone."
  
  scene.message "\\bKael\\b: Stay alert."
  scene.message "\\bKael\\b: Professor Aldric said the Hand knows of this place."
  
  scene.message "\\b\\PN\\b: We should find the records quickly."
  scene.message "\\b\\PN\\b: Learn what we can and get out."
  
  scene.message "\\bLyra\\b: *looking around* This place feels... alive."
  scene.message "\\bLyra\\b: Like it's watching us."
  
  scene.message "\\bKael\\b: It probably is."
  scene.message "\\bKael\\b: Ancient temples often have guardian spirits."
  
  scene.message "\\b\\PN\\b: Comforting."
  
  # TODO: Event Sequence - Movement
  # scene.message "The three of you ventured deeper."
  # scene.message "Toward truth. Toward destiny."
  # scene.message "Toward the First Revelation."
end

#===============================================================================
# Chapter 11: The First Truth - Summit Temple Revelations
#===============================================================================

GameData::Cutscene.define :ch11_temple_entrance do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  # TODO: Event Sequence - Temple Appearance
  # scene.message "The Summit Temple rose from the mist."
  # scene.message "Ancient. Massive. Humbling."
  
  scene.message "\\bLyra\\b: It's... incredible."
  scene.message "\\bLyra\\b: I've never seen anything like it."
  
  scene.message "\\bKael\\b: The architecture is pre-Pokémon League."
  scene.message "\\bKael\\b: Older than recorded history."
  scene.message "\\bKael\\b: The craftsmanship is... impossible."
  
  scene.message "\\b\\PN\\b: Impossible how?"
  
  scene.message "\\bKael\\b: These stones are perfectly fitted."
  scene.message "\\bKael\\b: No mortar. No tools could achieve this."
  scene.message "\\bKael\\b: Unless the builders weren't... normal."
  
  scene.message "\\b\\PN\\b: Let's see what's inside."
  
  # TODO: Event Sequence - Doors Opening
  # scene.message "The doors opened at your touch."
  # scene.message "As if the temple had been waiting for you."
  # scene.message "For centuries. For millennia."
end

GameData::Cutscene.define :ch11_temple_interior do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Interior
  # scene.message "The interior was vast—impossibly so."
  # scene.message "Larger inside than the temple's exterior suggested."
  
  scene.message "\\bLyra\\b: How is this possible?"
  scene.message "\\bLyra\\b: It seemed smaller from outside..."
  
  scene.message "\\bKael\\b: Space distortion."
  scene.message "\\bKael\\b: The Guardians could manipulate reality itself."
  
  # TODO: Event Sequence - Murals
  # scene.message "Murals lined every wall."
  # scene.message "Depicting scenes of ancient glory and ancient sorrow."
  
  scene.message "\\b\\PN\\b: Look at these paintings..."
  scene.message "\\b\\PN\\b: They tell a story."
  
  scene.message "\\bKael\\b: The history of the Guardians."
  scene.message "\\bKael\\b: From their rise... to their fall."
  
  scene.message "\\bLyra\\b: Why did they fall?"
  
  scene.message "\\bKael\\b: That's what we're here to find out."
end

GameData::Cutscene.define :ch11_first_mural do |scene|
  scene.play_bgm 'Pokemon DPPT - Lake'
  
  # TODO: Event Sequence - First Mural
  # scene.message "The first mural showed three humans."
  # scene.message "A warrior. A scholar. A healer."
  
  scene.message "\\bKael\\b: The original vessels."
  scene.message "\\bKael\\b: Valdris, Moira, and... I can't make out the third name."
  
  scene.message "\\bLyra\\b: They look so normal."
  scene.message "\\bLyra\\b: Just people."
  
  scene.message "\\bKael\\b: They were people."
  scene.message "\\bKael\\b: Before they became Guardians."
  
  scene.message "\\b\\PN\\b: Zacian told me—in my dream."
  scene.message "\\b\\PN\\b: He was once a warrior named Valdris."
  
  scene.message "\\bKael\\b: So it's true."
  scene.message "\\bKael\\b: The Guardians were human."
  
  scene.message "\\bLyra\\b: What changed them?"
  
  scene.message "\\bKael\\b: *pointing to the next mural* I think that did."
  
  # TODO: Event Sequence - Second Mural
  # scene.message "The second mural showed darkness descending."
  # scene.message "A formless horror consuming the world."
end

GameData::Cutscene.define :ch11_nidhoggr_mural do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
  scene.message "\\bKael\\b: 'The Gnawing One. Nidhoggr.'"
  scene.message "\\bKael\\b: 'Before time. Before existence.'"
  scene.message "\\bKael\\b: 'Hunger given form.'"
  
  # TODO: Event Sequence - Nidhoggr Mural
  # scene.message "The mural depicted a creature of pure chaos."
  # scene.message "Writhing tentacles. Countless eyes. Endless maws."
  
  scene.message "\\bLyra\\b: *backing away* I don't want to look at that."
  
  scene.message "\\b\\PN\\b: What is it?"
  
  scene.message "\\bKael\\b: The thing that nearly destroyed everything."
  scene.message "\\bKael\\b: The reason the Guardians exist."
  
  # TODO: Event Sequence - Third Mural
  # scene.message "The third mural showed the three humans transformed."
  # scene.message "Wielding power beyond comprehension."
  # scene.message "Driving back the darkness."
  
  scene.message "\\bKael\\b: 'They sacrificed their humanity.'"
  scene.message "\\bKael\\b: 'To seal the Gnawing One.'"
  scene.message "\\bKael\\b: 'They became something more.'"
  
  scene.message "\\bLyra\\b: *quietly* That's what we might have to do."
  scene.message "\\bLyra\\b: Give up who we are."
  
  # TODO: Event Sequence - Silence
  # scene.message "Silence hung heavy in the ancient hall."
end

GameData::Cutscene.define :ch11_temple_records do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  # TODO: Event Sequence - Sanctum
  # scene.message "The inner sanctum held thousands of stone tablets."
  # scene.message "Records of ages past."
  
  scene.message "\\bKael\\b: This will take months to translate..."
  
  scene.message "\\bLyra\\b: Wait! This one has pictures!"
  # TODO: Event Sequence - Pointing
  # scene.message "She pointed to a large carved panel."
  
  # TODO: Event Sequence - Figures
  # scene.message "Three figures stood tall."
  # scene.message "A wolf with a sword. A deer with rainbow antlers."
  # scene.message "A bird of crimson darkness."
  
  scene.message "\\bKael\\b: The Guardians of Balance."
  scene.message "\\bKael\\b: *reading* 'Protectors of the mortal realm.'"
  scene.message "\\bKael\\b: 'When chaos threatens, they choose champions.'"
  
  scene.message "\\bLyra\\b: Champions... like us?"
  
  scene.message "\\bKael\\b: *continuing* 'The Chosen Ones will bear their marks.'"
  scene.message "\\bKael\\b: 'And stand against the darkness.'"
  
  scene.message "\\b\\PN\\b: What darkness?"
  
  scene.message "\\bKael\\b: *frowning* 'A chaos entity of infinite hunger.'"
  scene.message "\\bKael\\b: 'It cannot be killed. Only sealed.'"
  scene.message "\\bKael\\b: 'And the seal is weakening.'"
end

GameData::Cutscene.define :ch11_xerneas_vision do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  scene.camera_flash 20
  
  # TODO: Event Sequence - Vision Start
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # scene.message "Light exploded behind your eyes."
  # scene.message "Golden. Warm. Overwhelming."
  
  scene.message "\\bLyra\\b: *gasps* What—"
  
  # TODO: Event Sequence - Forest Vision
  # scene.message "You stood in a forest of crystal trees."
  # scene.message "Each leaf reflected rainbow light."
  
  # TODO: Event Sequence - Xerneas Appears
  # scene.message "Before you stood a deer of impossible beauty."
  # scene.message "Antlers like rainbows. Eyes like stars."
  
  scene.message "\\bXerneas\\b: Lyra. Child of light."
  
  scene.message "\\bLyra\\b: (I can't move... it's too beautiful...)"
  
  scene.message "\\bXerneas\\b: You fear the burden."
  scene.message "\\bXerneas\\b: The weight of destiny."
  
  scene.message "\\bLyra\\b: I... I'm scared I'm not enough."
  
  scene.message "\\bXerneas\\b: I too was scared."
  scene.message "\\bXerneas\\b: But love made me brave."
  scene.message "\\bXerneas\\b: Love for those I protected."
  
  scene.message "\\bXerneas\\b: Who do you love, child?"
  
  scene.message "\\bLyra\\b: ...My sister. My friends. My Pokémon."
  
  scene.message "\\bXerneas\\b: Then you are already enough."
  
  scene.camera_flash 20
  
  # TODO: Event Sequence - Vision End
  # scene.message "The vision faded."
  # scene.message "Lyra stood trembling, tears on her cheeks."
  
  scene.message "\\bKael\\b: Lyra? What happened?"
  
  scene.message "\\bLyra\\b: I... I saw her. Xerneas."
  scene.message "\\bLyra\\b: She was... beautiful."
end

GameData::Cutscene.define :ch11_yveltal_vision do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  scene.camera_flash 20
  
  # TODO: Event Sequence - Kael Vision
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "Darkness swallowed the world."
  # scene.message "Cold. Absolute. Final."
  
  scene.message "\\bKael\\b: (What—)"
  
  # TODO: Event Sequence - Yveltal Appears
  # scene.message "A bird of crimson and shadow materialized."
  # scene.message "Wings that could blot out the sun."
  # scene.message "Eyes of burning red."
  
  scene.message "\\bYveltal\\b: Kael. Bearer of shadows."
  
  scene.message "\\bKael\\b: You're... the death Pokémon."
  
  scene.message "\\bYveltal\\b: Death is not evil."
  scene.message "\\bYveltal\\b: It is necessary."
  scene.message "\\bYveltal\\b: I am the ending that makes new beginnings possible."
  
  scene.message "\\bKael\\b: Why choose me?"
  
  scene.message "\\bYveltal\\b: Because you understand loss."
  scene.message "\\bYveltal\\b: You have faced the void and survived."
  
  scene.message "\\bKael\\b: ...Mira."
  
  scene.message "\\bYveltal\\b: Your sister watches still."
  scene.message "\\bYveltal\\b: From the other side."
  scene.message "\\bYveltal\\b: She is proud of you."
  
  scene.message "\\bKael\\b: *voice breaking* You're lying."
  
  scene.message "\\bYveltal\\b: Death does not lie."
  scene.message "\\bYveltal\\b: It is the only truth."
  
  scene.camera_flash 20
  
  # TODO: Event Sequence - Kael Crying
  # scene.message "Kael fell to his knees."
  # scene.message "For the first time, tears streamed down his face."
  
  # TODO: Event Sequence - Comfort
  # scene.message "Shadow pressed against him."
  # scene.message "Lyra placed a hand on his shoulder."
  #
  # scene.message "He didn't push either of them away."
end

GameData::Cutscene.define :ch11_hoopa_revelation do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
  # TODO: Event Sequence - Translation
  # scene.message "After the visions passed, Kael returned to the tablets."
  # scene.message "Another caught his eye."
  # scene.message "He translated slowly, face paling."
  
  scene.message "\\bKael\\b: 'The Grasping One. The Ring Bearer.'"
  scene.message "\\bKael\\b: 'Once a guardian of passages.'"
  scene.message "\\bKael\\b: 'Now corrupted by greed.'"
  
  scene.message "\\bLyra\\b: A guardian... that turned evil?"
  
  scene.message "\\bKael\\b: 'It sought to steal the crowns of power.'"
  scene.message "\\bKael\\b: 'In the Divine Reckoning, it was sealed.'"
  scene.message "\\bKael\\b: 'But seals can break.'"
  
  scene.message "\\b\\PN\\b: The cult mentioned someone's 'return.'"
  scene.message "\\b\\PN\\b: They're trying to free this thing."
  
  scene.message "\\bKael\\b: It gets worse."
  scene.message "\\bKael\\b: 'The chaos entity is but a key.'"
  scene.message "\\bKael\\b: 'Behind it waits something older.'"
  scene.message "\\bKael\\b: 'The Gnawing One. Nidhoggr.'"
  
  scene.message "\\bLyra\\b: Two threats?!"
  
  scene.message "\\bKael\\b: It seems so."
  scene.message "\\bKael\\b: The cult wants to free Hoopa..."
  scene.message "\\bKael\\b: So Hoopa can free Nidhoggr."
end

GameData::Cutscene.define :ch11_seal_tablets do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bLyra\\b: How do we stop them?"
  
  scene.message "\\bKael\\b: *reading* 'The seal can be reinforced.'"
  scene.message "\\bKael\\b: 'By the three who bear the marks.'"
  scene.message "\\bKael\\b: 'But only if united in purpose.'"
  
  scene.message "\\b\\PN\\b: United in purpose?"
  
  scene.message "\\bKael\\b: We have to truly work together."
  scene.message "\\bKael\\b: Trust each other completely."
  
  scene.message "\\bLyra\\b: I trust you both."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: I'm learning to."
  
  scene.message "\\b\\PN\\b: That's a start."
  
  scene.message "\\bKael\\b: There's more..."
  scene.message "\\bKael\\b: 'The seal requires sacrifice.'"
  scene.message "\\bKael\\b: 'Power for power. Life for life.'"
  
  # TODO: Event Sequence - Silence
  # scene.message "Silence fell."
  
  scene.message "\\bLyra\\b: Does that mean...?"
  
  scene.message "\\bKael\\b: It means we might not all survive this."
end

GameData::Cutscene.define :ch11_burden_of_choice do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Heavy Atmosphere
  # scene.message "The weight of those words settled over the group."
  # scene.message "Heavy. Suffocating. Real."
  
  scene.message "\\b\\PN\\b: So we're expected to... what?"
  scene.message "\\b\\PN\\b: Die to save the world?"
  
  scene.message "\\bKael\\b: Maybe. The tablets aren't clear."
  scene.message "\\bKael\\b: But the first vessels gave up their humanity."
  scene.message "\\bKael\\b: We may have to give up something too."
  
  scene.message "\\bLyra\\b: I have people I need to get back to."
  scene.message "\\bLyra\\b: Elena. Grandma."
  
  scene.message "\\bKael\\b: And if the seal breaks?"
  scene.message "\\bKael\\b: There won't be anyone left to get back to."
  
  # TODO: Event Sequence - Truth
  # scene.message "The truth hung between them."
  # scene.message "Terrible. Unavoidable."
  
  scene.message "\\b\\PN\\b: We don't have to decide now."
  scene.message "\\b\\PN\\b: We need more information."
  scene.message "\\b\\PN\\b: And we need to stop the Hand first."
  
  scene.message "\\bKael\\b: Agreed."
  scene.message "\\bLyra\\b: *shakily* Agreed."
end

GameData::Cutscene.define :ch11_are_we_chosen do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Processing
  # scene.message "You sat in the temple's main hall."
  # scene.message "Processing everything you'd learned."
  
  scene.message "\\bLyra\\b: So... we're really Chosen Ones?"
  scene.message "\\bLyra\\b: Like in the legends?"
  
  scene.message "\\bKael\\b: The evidence suggests so."
  scene.message "\\bKael\\b: The marks. The dreams. The cult's interest."
  
  scene.message "\\b\\PN\\b: Can we refuse?"
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: I don't know."
  
  scene.message "\\bLyra\\b: Do we WANT to refuse?"
  
  # TODO: Event Sequence - Silence
  # scene.message "Silence fell over the group."
  
  scene.message "\\b\\PN\\b: If we don't stop this..."
  scene.message "\\b\\PN\\b: Who will?"
  
  scene.message "\\bKael\\b: A fair point."
  
  scene.message "\\bLyra\\b: Then... we do this."
  scene.message "\\bLyra\\b: Together."
  
  scene.message "\\bKael\\b: *small nod* Together."
  
  scene.message "\\b\\PN\\b: Together."
  
  # TODO: Event Sequence - Acceptance
  # scene.message "Your marks pulsed as one."
  # scene.message "Acknowledgment. Acceptance."
  # scene.message "The journey had truly begun."
end

GameData::Cutscene.define :ch11_temple_rumble do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  scene.camera_shake 5
  
  # TODO: Event Sequence - Quaking
  # scene.message "The temple shuddered."
  # scene.message "Dust rained from the ceiling."
  
  scene.message "\\bKael\\b: *alert* That wasn't natural."
  
  scene.message "\\bLyra\\b: Earthquake?"
  
  scene.message "\\bKael\\b: No. Listen."
  
  # TODO: Event Sequence - Sounds
  # scene.message "Distant sounds. Explosions. Shouting."
  
  scene.message "\\b\\PN\\b: Someone's attacking the temple!"
  
  scene.message "\\bKael\\b: The Shattered Hand."
  scene.message "\\bKael\\b: They tracked us."
  
  scene.message "\\bLyra\\b: What do we do?"
  
  scene.message "\\bKael\\b: We take the most important tablets."
  scene.message "\\bKael\\b: Then we run."
  
  scene.message "\\b\\PN\\b: We can fight!"
  
  scene.message "\\bKael\\b: Not their whole army. Not yet."
  scene.message "\\bKael\\b: Live to fight another day."
  
  # TODO: Event Sequence - Explosion
  # scene.message "Another explosion rocked the temple."
  # scene.message "Closer this time."
end

GameData::Cutscene.define :ch11_gathering_knowledge do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  # TODO: Event Sequence - Working
  # scene.message "You worked frantically."
  # scene.message "Gathering smaller tablets. Memorizing murals."
  
  scene.message "\\bKael\\b: These describe the seal locations."
  scene.message "\\bKael\\b: Where Hoopa is imprisoned."
  
  scene.message "\\bLyra\\b: And this one shows how to strengthen it!"
  
  scene.message "\\b\\PN\\b: Take everything you can carry."
  
  # TODO: Event Sequence - Closing In
  # scene.message "Footsteps echoed in the outer halls."
  # scene.message "The enemy was closing in."
  
  scene.message "\\bCultist Voice\\b: Spread out! They're here somewhere!"
  
  scene.message "\\bKael\\b: *quietly* Time to go."
  
  scene.message "\\bLyra\\b: There's a back exit."
  scene.message "\\bLyra\\b: I saw it in one of the murals!"
  
  scene.message "\\b\\PN\\b: Lead the way!"
  
  # TODO: Event Sequence - Escape
  # scene.message "The three of you slipped into the shadows."
  # scene.message "Information secured. Lives intact."
  # scene.message "For now."
end

GameData::Cutscene.define :ch11_escape_tunnel do |scene|
  scene.play_bgm 'Pokemon RSE - Mt. Pyre'
  
  # TODO: Event Sequence - Passage
  # scene.message "The back passage was narrow and dark."
  # scene.message "Ancient stairs descending into the mountain."
  
  scene.message "\\bLyra\\b: *whispering* Watch your step. It's slippery."
  
  scene.message "\\bKael\\b: Where does this lead?"
  
  scene.message "\\bLyra\\b: The mural showed it emerging near a river."
  scene.message "\\bLyra\\b: On the mountain's far side."
  
  scene.message "\\b\\PN\\b: Good. That puts distance between us and them."
  
  # TODO: Event Sequence - Running
  # scene.message "The sounds of the attack faded behind you."
  # scene.message "But you didn't slow down."
  
  scene.message "\\bKael\\b: They'll realize we escaped."
  scene.message "\\bKael\\b: They'll come after us."
  
  scene.message "\\bLyra\\b: Then we'll be ready."
  
  scene.message "\\bKael\\b: *glancing at her* Yes."
  scene.message "\\bKael\\b: We will be."
  
  # TODO: Event Sequence - Light
  # scene.message "Light appeared ahead."
  # scene.message "The tunnel's exit. Freedom."
end

GameData::Cutscene.define :ch11_mountain_escape do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Outside
  # scene.message "You emerged into cold mountain air."
  # scene.message "The river roared below."
  
  scene.message "\\bLyra\\b: We made it!"
  
  scene.message "\\bKael\\b: Don't celebrate yet."
  scene.message "\\bKael\\b: We need to put more distance—"
  
  # TODO: Event Sequence - Shade Appears
  # scene.message "A figure stepped from behind a boulder."
  # scene.message "Black cloak. Cold eyes. A general's bearing."
  
  scene.message "\\bShade\\b: Well, well."
  scene.message "\\bShade\\b: The marked ones."
  
  scene.message "\\b\\PN\\b: General Shade..."
  
  scene.message "\\bShade\\b: You've done well to find this place."
  scene.message "\\bShade\\b: But the chase ends here."
  
  # TODO: Event Sequence - Surrounded
  # scene.message "More cultists emerged from the rocks."
  # scene.message "You were surrounded."
end

#===============================================================================
# Chapter 12: General Shade - First Confrontation
#===============================================================================

GameData::Cutscene.define :ch12_surrounded do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  # TODO: Event Sequence - Cultist Army
  # scene.message "Cultists emerged from every direction."
  # scene.message "Ten. Twenty. Too many to count."
  
  scene.message "\\bShade\\b: Did you really think we wouldn't find you?"
  scene.message "\\bShade\\b: The marked ones? Here?"
  scene.message "\\bShade\\b: Every spy we have was watching."
  
  scene.message "\\bKael\\b: *through gritted teeth* We need to fight through."
  
  scene.message "\\bLyra\\b: There are too many!"
  
  scene.message "\\b\\PN\\b: Then we make an opening."
  scene.message "\\b\\PN\\b: Together."
  
  scene.message "\\bShade\\b: How touching."
  scene.message "\\bShade\\b: Surrender now, and I might let one of you live."
  
  scene.message "\\bKael\\b: Counter-offer."
  scene.message "\\bKael\\b: Leave now, and YOU might live."
  
  scene.message "\\bShade\\b: *laughs coldly* Bold. I like that."
  scene.message "\\bShade\\b: I'll remember your words when I'm carving them on your grave."
end

GameData::Cutscene.define :ch12_shade_reveal do |scene|
  scene.play_bgm 'Pokemon XY - Lysandre'
  
  # TODO: Event Sequence - Shade Forward
  # scene.message "General Shade stepped forward."
  # scene.message "In the light, you saw her clearly."
  
  # TODO: Event Sequence - Shade Description
  # scene.message "Tall. Elegant. Terrifying."
  # scene.message "Her cloak billowed despite the still air."
  
  scene.message "\\bShade\\b: I am Shade, General of the Shattered Hand."
  scene.message "\\bShade\\b: First of Viktor's chosen."
  scene.message "\\bShade\\b: And the one who will bring you to heel."
  
  scene.message "\\b\\PN\\b: Viktor?"
  
  scene.message "\\bShade\\b: Our leader. The true heir to the crown."
  scene.message "\\bShade\\b: When Hoopa is freed, he will wield its power."
  scene.message "\\bShade\\b: And then... Nidhoggr."
  
  scene.message "\\bKael\\b: You want to free the thing that nearly destroyed the world?"
  scene.message "\\bKael\\b: Are you insane?"
  
  scene.message "\\bShade\\b: Destroy? No."
  scene.message "\\bShade\\b: Nidhoggr will remake it."
  scene.message "\\bShade\\b: Burn away the corruption."
  scene.message "\\bShade\\b: And from the ashes, paradise."
  
  scene.message "\\bLyra\\b: That's insane!"
  
  scene.message "\\bShade\\b: Perhaps."
  scene.message "\\bShade\\b: But insanity and vision are often mistaken for each other."
end

GameData::Cutscene.define :ch12_shade_backstory do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bShade\\b: I was once like you, you know."
  scene.message "\\bShade\\b: Young. Idealistic. Believing in heroes."
  
  scene.message "\\b\\PN\\b: What happened?"
  
  scene.message "\\bShade\\b: The world showed me its true face."
  scene.message "\\bShade\\b: My village was destroyed in a territorial war."
  scene.message "\\bShade\\b: Pokémon against Pokémon. Humans caught in between."
  
  scene.message "\\bShade\\b: My family. My friends. All gone."
  scene.message "\\bShade\\b: While the 'heroes' watched from their towers."
  
  scene.message "\\bKael\\b: So you joined the people causing more destruction?"
  
  scene.message "\\bShade\\b: I joined the people who will END destruction."
  scene.message "\\bShade\\b: Nidhoggr's hunger will consume all conflict."
  scene.message "\\bShade\\b: No more war. No more suffering."
  scene.message "\\bShade\\b: Just... peace."
  
  scene.message "\\bLyra\\b: The peace of the grave."
  
  scene.message "\\bShade\\b: *smiles* You understand perfectly."
end

GameData::Cutscene.define :ch12_battle_begins do |scene|
  scene.play_bgm 'Pokemon SwSh - Battle! Bede'
  
  scene.message "\\bShade\\b: Enough talk."
  scene.message "\\bShade\\b: Take them."
  
  # TODO: Event Sequence - Attack
  # scene.message "Cultists surged forward."
  # scene.message "Pokémon burst from Poké Balls in a wave."
  
  scene.message "\\bKael\\b: Shadow! Dark Pulse!"
  
  # TODO: Event Sequence - Shadow Attack
  # scene.message "Shadow's attack scattered the first wave."
  # scene.message "But more kept coming."
  
  scene.message "\\bLyra\\b: Willow, support!"
  scene.message "\\bWillow\\b: Vee!"
  
  scene.message "\\b\\PN\\b: Break through! Head for the path!"
  
  # TODO: Event Sequence - Desperate Fight
  # scene.message "You fought desperately."
  # scene.message "For every cultist that fell, two more appeared."
  
  scene.message "\\bShade\\b: *watching calmly* Impressive stamina."
  scene.message "\\bShade\\b: But futile."
end

GameData::Cutscene.define :ch12_kael_rage do |scene|
  scene.play_bgm 'Pokemon SwSh - Battle! Bede'
  
  # TODO: Event Sequence - Rage
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  # scene.message "Rage burned through him."
  # scene.message "Not at the cultists. At himself."
  
  scene.message "\\bKael\\b: (I led them here. My carelessness.)"
  scene.message "\\bKael\\b: (If they get hurt... it's my fault.)"
  
  # TODO: Event Sequence - Mark Glow
  # scene.message "His mark began to glow."
  # scene.message "Dark. Pulsing. Hungry."
  
  scene.message "\\bYveltal's Voice\\b: Use it."
  scene.message "\\bYveltal's Voice\\b: Your anger. Your pain."
  scene.message "\\bYveltal's Voice\\b: Let me help you."
  
  scene.message "\\bKael\\b: *through gritted teeth* Not yet."
  scene.message "\\bKael\\b: I don't trust you."
  
  scene.message "\\bYveltal's Voice\\b: You trust nothing."
  scene.message "\\bYveltal's Voice\\b: But you will."
  
  # TODO: Event Sequence - Power Lingers
  # scene.message "The mark's glow faded."
  # scene.message "But the power lingered."
  # scene.message "Waiting."
end

GameData::Cutscene.define :ch12_lyra_shield do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  
  # TODO: Event Sequence - Attack Behind
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  # scene.message "An attack came from behind."
  # scene.message "Aimed at Kael's back."
  
  scene.message "\\bLyra\\b: NO!"
  
  # TODO: Event Sequence - Light Shield
  # scene.message "Her mark blazed golden."
  # scene.message "Light erupted between Kael and the attack."
  # scene.message "A barrier. Shimmering. Protective."
  
  scene.message "\\bKael\\b: *stunned* Lyra...?"
  
  scene.message "\\bLyra\\b: I... I don't know how I did that..."
  
  scene.message "\\bXerneas's Voice\\b: Instinct."
  scene.message "\\bXerneas's Voice\\b: To protect those you love."
  
  # TODO: Event Sequence - Fade
  # scene.message "The barrier flickered and faded."
  # scene.message "But it had been enough."
  
  scene.message "\\bShade\\b: *eyes narrowing* Interesting."
  scene.message "\\bShade\\b: The marks are awakening."
  scene.message "\\bShade\\b: Good. Viktor will be pleased."
end

GameData::Cutscene.define :ch12_player_breakthrough do |scene|
  scene.play_bgm 'Pokemon SwSh - Battle! Gym Leader'
  
  # TODO: Event Sequence - Player Power
  scene.message "\\i[YOUR PERSPECTIVE]"
  # scene.message "Your mark burned like fire."
  # scene.message "Power surged through your veins."
  
  scene.message "\\bZacian's Voice\\b: Cut through."
  scene.message "\\bZacian's Voice\\b: Like a sword. Like me."
  
  # TODO: Event Sequence - Gathering Energy
  # scene.message "You raised your hand without thinking."
  # scene.message "Energy gathered—steel-bright and sharp."
  
  scene.message "\\b\\PN\\b: MOVE!"
  
  # TODO: Event Sequence - Release
  # scene.message "The energy released in a wave."
  # scene.message "Cultists scattered before it."
  # scene.message "A path opened through their ranks."
  
  scene.message "\\bKael\\b: GO! NOW!"
  
  # TODO: Event Sequence - Escape
  # scene.message "The three of you sprinted through the gap."
  # scene.message "Shade watched you go."
  # scene.message "She didn't pursue."
end

GameData::Cutscene.define :ch12_shade_lets_them_go do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  scene.message "\\bCultist\\b: General! They're escaping!"
  
  scene.message "\\bShade\\b: I know."
  
  scene.message "\\bCultist\\b: Should we—"
  
  scene.message "\\bShade\\b: No."
  
  # TODO: Event Sequence - Shade Watching
  # scene.message "She watched the marked ones disappear into the mountains."
  # scene.message "A thin smile crossed her face."
  
  scene.message "\\bShade\\b: Their marks awakened today."
  scene.message "\\bShade\\b: We've learned what we needed."
  scene.message "\\bShade\\b: Let them run."
  
  scene.message "\\bCultist\\b: But Viktor ordered—"
  
  scene.message "\\bShade\\b: *coldly* Viktor ordered me to assess them."
  scene.message "\\bShade\\b: I have."
  scene.message "\\bShade\\b: They're stronger than expected."
  scene.message "\\bShade\\b: But not strong enough."
  
  scene.message "\\bShade\\b: The next time we meet..."
  scene.message "\\bShade\\b: Will be the last."
end

GameData::Cutscene.define :ch12_escape_run do |scene|
  scene.play_bgm 'Pokemon RSE - Mt. Pyre'
  
  # TODO: Event Sequence - Running
  # scene.message "You ran until your lungs burned."
  # scene.message "Down the mountain. Through the forest."
  
  scene.message "\\bLyra\\b: *gasping* Are they... following?"
  
  scene.message "\\bKael\\b: *checking behind* No. They stopped."
  
  scene.message "\\b\\PN\\b: Why? They had us."
  
  scene.message "\\bKael\\b: Testing us."
  scene.message "\\bKael\\b: She wanted to see our powers."
  scene.message "\\bKael\\b: And we showed her."
  
  scene.message "\\bLyra\\b: Was that... bad?"
  
  scene.message "\\bKael\\b: It means they know what we can do."
  scene.message "\\bKael\\b: They'll be prepared next time."
  
  scene.message "\\b\\PN\\b: Then we need to be more prepared."
  
  # TODO: Event Sequence - Stopping
  # scene.message "You finally stopped by a stream."
  # scene.message "Safe. For now."
end

GameData::Cutscene.define :ch12_catching_breath do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  # TODO: Event Sequence - Collapse
  # scene.message "The three of you collapsed by the water."
  # scene.message "Exhausted. Shaken. Alive."
  
  scene.message "\\bLyra\\b: What... what happened back there?"
  scene.message "\\bLyra\\b: I made a shield. Of light."
  
  scene.message "\\b\\PN\\b: I fired some kind of energy wave."
  
  scene.message "\\bKael\\b: The marks. They responded to our need."
  scene.message "\\bKael\\b: I felt it too. Yveltal's power."
  scene.message "\\bKael\\b: I didn't use it... but I could have."
  
  # Awakening of Battle Mechanic Power
  scene.message "\\i[POWER AWAKENING]"
  