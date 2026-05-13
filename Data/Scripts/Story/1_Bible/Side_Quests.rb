#===============================================================================
# POKÉMON SHATTERED CROWNS - SIDE QUESTS
#===============================================================================
# Optional content with valuable item rewards
#===============================================================================

#===============================================================================
# QUEST 0: THE NOVICE CATCHER (Tutorial)
# Reward: 5 Poké Balls
#===============================================================================

GameData::Quest.define :novice_catcher do |q|
  q.name "The Novice Catcher"
  q.description "Catch a Pidgey on Route 1 to show you've mastered the basics."
  q.giver "Youngster Joey"
  q.location "Route 1"
  
  q.objective :catch_species, species: :PIDGEY, count: 1
  
  q.on_complete do
    pbMessage("\\bJoey\\b: Whoa! You caught it!")
    pbMessage("\\bJoey\\b: My Rattata is still the top percentage, but that Pidgey is cool too!")
    pbMessage("\\bJoey\\b: Here, take these!")
    pbReceiveItem(:POKEBALL, 5)
    pbMessage("\\b\\PN\\b: Thanks, Joey!")
  end
end

GameData::Cutscene.define :sq_novice_catcher_start do |scene|
  scene.message "\\bJoey\\b: Hey! You're a rookie trainer, right?"
  scene.message "\\bJoey\\b: Getting your first Pokémon is easy, but CATCHING them is the real challenge!"
  scene.message "\\bJoey\\b: Bet you can't catch a Pidgey!"
  scene.message "\\bJoey\\b: If you do, I'll give you some sweet gear."
end

#===============================================================================
# QUEST 1: THE BREEDER'S CHALLENGE

GameData::Quest.define :breeders_challenge do |q|
  q.name "The Breeder's Challenge"
  q.description "Help the legendary breeder hatch 5 different Pokémon eggs."
  q.giver "Breeder Helena"
  q.location "Sunrise Ranch"
  
  q.objective :hatch_eggs, count: 5
  
  q.on_complete do
    pbMessage("\\bHelena\\b: Amazing work, \\PN!")
    pbMessage("\\bHelena\\b: You've proven yourself a true caretaker!")
    pbMessage("\\bHelena\\b: Take this - my family's secret Egg Incubator.")
    pbMessage("\\bHelena\\b: It halves the time needed to hatch eggs!")
    pbReceiveItem(:EGGINCUBATOR)
    pbMessage("\\b\\PN\\b: This is incredible! Thank you, Helena!")
  end
end

# Egg Incubator cutscenes
GameData::Cutscene.define :sq_breeder_start do |scene|
  scene.play_bgm 'Pokemon XY - Route 7'
  
  scene.message "\\bHelena\\b: Oh! A young trainer!"
  scene.message "\\bHelena\\b: I'm Helena, the region's best Pokémon breeder."
  scene.message "\\bHelena\\b: Well... I used to be."
  
  scene.message "\\b\\PN\\b: What happened?"
  
  scene.message "\\bHelena\\b: I'm getting old, dear."
  scene.message "\\bHelena\\b: I need someone to carry on my legacy."
  scene.message "\\bHelena\\b: If you can hatch 5 different eggs..."
  scene.message "\\bHelena\\b: I'll give you my family's greatest treasure."
  
  scene.message "\\b\\PN\\b: I'll do it! What kind of eggs do you have?"
  
  scene.message "\\bHelena\\b: Various ones! Help yourself to one egg now."
  scene.message "\\bHelena\\b: Come back when you've hatched five different species."
  
  # Give first egg
  scene.script { pbGenerateEgg(:TOGEPI) }
end

#===============================================================================
# QUEST 2: THE COMPETITIVE TRAINER
# Reward: Choice Scarf
#===============================================================================

GameData::Quest.define :speed_demon do |q|
  q.name "Speed Demon"
  q.description "Defeat the Speed Demon trainer using only fast Pokémon."
  q.giver "Speedster Rex"
  q.location "Racing Track"
  
  q.on_complete do
    pbMessage("\\bRex\\b: WHOOOOA! You're FAST!")
    pbMessage("\\bRex\\b: I've never lost a speed battle before!")
    pbMessage("\\bRex\\b: You've earned this, champ!")
    pbReceiveItem(:CHOICESCARF)
    pbMessage("\\b\\PN\\b: A Choice Scarf! This will make my Pokémon even faster!")
  end
end

GameData::Cutscene.define :sq_speed_demon do |scene|
  scene.play_bgm 'Pokemon BW - Battle Subway'
  
  scene.message "\\bRex\\b: HEY! You there!"
  scene.message "\\bRex\\b: You look like you've got SPEED in your soul!"
  
  scene.message "\\b\\PN\\b: Uh... thanks?"
  
  scene.message "\\bRex\\b: I'm Rex! The fastest trainer in the region!"
  scene.message "\\bRex\\b: Nobody's EVER beaten me!"
  scene.message "\\bRex\\b: Think you can keep up?!"
  
  scene.message "\\b\\PN\\b: Bring it on!"
  
  scene.trainer_battle :SPEEDSTER, "Rex", 0
  
  # Quest complete handled in battle end
end

#===============================================================================
# QUEST 3: THE POWER COLLECTOR
# Reward: Choice Band
#===============================================================================

GameData::Quest.define :power_collector do |q|
  q.name "The Power Collector"
  q.description "Bring 10 Rare Candies to the mysterious collector."
  q.giver "Collector Maxim"
  q.location "Hidden Cave"
  
  q.on_complete do
    pbMessage("\\bMaxim\\b: Yes... YES! Such power!")
    pbMessage("\\bMaxim\\b: With these Rare Candies, my research is complete!")
    pbMessage("\\bMaxim\\b: As promised, take this Choice Band.")
    pbMessage("\\bMaxim\\b: It amplifies physical attacks beyond normal limits!")
    pbReceiveItem(:CHOICEBAND)
    pbMessage("\\b\\PN\\b: This is amazing! Thanks!")
  end
end

GameData::Cutscene.define :sq_power_collector do |scene|
  scene.message "\\bMaxim\\b: A visitor? Interesting..."
  scene.message "\\bMaxim\\b: I am Maxim. I collect... power."
  
  scene.message "\\b\\PN\\b: Power?"
  
  scene.message "\\bMaxim\\b: Rare Candies, to be precise."
  scene.message "\\bMaxim\\b: Bring me 10, and I'll reward you handsomely."
  scene.message "\\bMaxim\\b: I have an item that boosts Attack dramatically..."
  
  scene.message "\\b\\PN\\b: You want Rare Candies? I can find those."
  
  scene.message "\\bMaxim\\b: Excellent. Return when you have 10."
end

#===============================================================================
# QUEST 4: THE SPECIAL ATTACKER
# Reward: Choice Specs
#===============================================================================

GameData::Quest.define :wisdom_seeker do |q|
  q.name "Wisdom Seeker"
  q.description "Answer 10 Pokémon trivia questions correctly."
  q.giver "Professor Iris"
  q.location "Academy Library"
  
  q.on_complete do
    pbMessage("\\bIris\\b: Remarkable! You got all 10 correct!")
    pbMessage("\\bIris\\b: Your knowledge rivals my own!")
    pbMessage("\\bIris\\b: Take these Choice Specs - for a mind as sharp as yours!")
    pbReceiveItem(:CHOICESPECS)
    pbMessage("\\b\\PN\\b: Choice Specs! My special attackers will love this!")
  end
end

#===============================================================================
# QUEST 5: THE FOSSIL HUNTER
# Reward: Rare Fossil + Fossil Pokémon
#===============================================================================

GameData::Quest.define :fossil_hunter do |q|
  q.name "Fossil Hunter"
  q.description "Help the archaeologist find 3 fossils in the desert."
  q.giver "Dr. Stone"
  q.location "Sandstorm Desert"
  
  q.objective :find_fossils, count: 3
  
  q.on_complete do
    pbMessage("\\bDr. Stone\\b: Magnificent finds! All three!")
    pbMessage("\\bDr. Stone\\b: Let me revive one for you as thanks!")
    pbMessage("Which fossil would you like revived?")
    choice = pbShowCommands(nil, ["Helix Fossil", "Dome Fossil", "Old Amber"])
    case choice
    when 0
      pbAddPokemon(:OMANYTE, 25)
    when 1
      pbAddPokemon(:KABUTO, 25)
    when 2
      pbAddPokemon(:AERODACTYL, 25)
    end
    pbMessage("\\b\\PN\\b: A real fossil Pokémon! This is incredible!")
  end
end

#===============================================================================
# QUEST 6: THE LIFE ORB SEEKER
# Reward: Life Orb
#===============================================================================

GameData::Quest.define :life_orb_seeker do |q|
  q.name "The Orb of Life"
  q.description "Defeat 50 wild Pokémon in the Cursed Woods."
  q.giver "Hermit Old Man"
  q.location "Cursed Woods Entrance"
  
  q.objective :defeat_wild, count: 50
  
  q.on_complete do
    pbMessage("\\bHermit\\b: The curse... you've lifted it!")
    pbMessage("\\bHermit\\b: 50 spirits, returned to rest!")
    pbMessage("\\bHermit\\b: Take this Life Orb - born from their release!")
    pbReceiveItem(:LIFEORB)
    pbMessage("\\b\\PN\\b: A Life Orb! The power... I can feel it!")
  end
end

#===============================================================================
# QUEST 7: THE BERRY MASTER
# Reward: Focus Sash + Rare Berries
#===============================================================================

GameData::Quest.define :berry_master do |q|
  q.name "Berry Master's Trial"
  q.description "Grow 20 different berry types on the farm."
  q.giver "Berry Master Gavin"
  q.location "Berry Paradise Farm"
  
  q.on_complete do
    pbMessage("\\bGavin\\b: 20 varieties! You're a natural!")
    pbMessage("\\bGavin\\b: Here - take this Focus Sash.")
    pbMessage("\\bGavin\\b: It's woven from the rarest berry fibers!")
    pbReceiveItem(:FOCUSSASH)
    pbReceiveItem(:LIECHIBERRY, 5)
    pbReceiveItem(:GANLONBERRY, 5)
    pbReceiveItem(:SALACBERRY, 5)
    pbMessage("\\b\\PN\\b: Focus Sash AND rare berries?! Thank you!")
  end
end

#===============================================================================
# QUEST 8: THE LEFTOVERS CHEF
# Reward: Leftovers
#===============================================================================

GameData::Quest.define :leftover_chef do |q|
  q.name "The Perfect Recipe"
  q.description "Bring the chef ingredients: Big Mushroom, Honey, Moomoo Milk."
  q.giver "Chef Gusteau"
  q.location "Gourmet Restaurant"
  
  q.on_complete do
    pbMessage("\\bGusteau\\b: Magnifique! Ze perfect ingredients!")
    pbMessage("\\bGusteau\\b: Now I can create... ze Leftovers!")
    pbMessage("\\bGusteau\\b: A dish so filling, it heals forever!")
    pbReceiveItem(:LEFTOVERS)
    pbMessage("\\b\\PN\\b: Wait, Leftovers is... food? I thought—")
    pbMessage("\\bGusteau\\b: Do not question ze chef!")
  end
end

#===============================================================================
# QUEST 9: THE ASSAULT VEST WARRIOR
# Reward: Assault Vest
#===============================================================================

GameData::Quest.define :assault_warrior do |q|
  q.name "Assault Warrior"
  q.description "Win 10 consecutive battles at the Battle Tower."
  q.giver "Tower Master Cynthia"
  q.location "Battle Tower Lobby"
  
  q.objective :battle_tower_streak, count: 10
  
  q.on_complete do
    pbMessage("\\bCynthia\\b: 10 wins without a loss... impressive.")
    pbMessage("\\bCynthia\\b: You fight with pure aggression.")
    pbMessage("\\bCynthia\\b: This Assault Vest suits your style.")
    pbReceiveItem(:ASSAULTVEST)
    pbMessage("\\b\\PN\\b: An Assault Vest! Bulk AND power!")
  end
end

#===============================================================================
# QUEST 10: THE ROCKY HELMET DEFENDER
# Reward: Rocky Helmet
#===============================================================================

GameData::Quest.define :rocky_defender do |q|
  q.name "Rocky Defender"
  q.description "Survive 25 super effective hits without fainting."
  q.giver "Trainer Tank"
  q.location "Defense Dojo"
  
  q.on_complete do
    pbMessage("\\bTank\\b: YOU SURVIVED?!")
    pbMessage("\\bTank\\b: That's... that's impossible!")
    pbMessage("\\bTank\\b: You've earned the Rocky Helmet!")
    pbReceiveItem(:ROCKYHELMET)
    pbMessage("\\b\\PN\\b: Thanks! Now attackers will regret touching me!")
  end
end

#===============================================================================
# QUEST 11: THE EVIOLITE RESEARCHER
# Reward: Eviolite
#===============================================================================

GameData::Quest.define :evolution_researcher do |q|
  q.name "Evolution Research"
  q.description "Show the researcher 10 different unevolved Pokémon."
  q.giver "Professor Newton"
  q.location "Evolution Lab"
  
  q.on_complete do
    pbMessage("\\bNewton\\b: Fascinating data! 10 different NFE species!")
    pbMessage("\\bNewton\\b: My research is complete!")
    pbMessage("\\bNewton\\b: Take this Eviolite - it enhances unevolved Pokémon!")
    pbReceiveItem(:EVIOLITE)
    pbMessage("\\b\\PN\\b: Eviolite! My Little Cup team will love this!")
  end
end

#===============================================================================
# QUEST 12: THE SHINY CHARM COLLECTOR
# Reward: Shiny Charm
#===============================================================================

GameData::Quest.define :shiny_collector do |q|
  q.name "The Shiny Hunter"
  q.description "Catch or own 3 different Shiny Pokémon."
  q.giver "Shiny Hunter Lux"
  q.location "Rainbow Cave"
  
  q.objective :own_shinies, count: 3
  
  q.on_complete do
    pbMessage("\\bLux\\b: THREE shinies?! You're one of us now!")
    pbMessage("\\bLux\\b: Take the Shiny Charm - it attracts rare colors!")
    pbReceiveItem(:SHINYCHARM)
    pbMessage("\\b\\PN\\b: The legendary Shiny Charm! My hunts just got easier!")
  end
end

#===============================================================================
# QUEST 13: THE EXP SHARE TEACHER
# Reward: Lucky Egg
#===============================================================================

GameData::Quest.define :training_teacher do |q|
  q.name "Training Mastery"
  q.description "Level up a Pokémon from 1 to 50."
  q.giver "Trainer Academy"
  q.location "Trainer School"
  
  q.on_complete do
    pbMessage("\\bHeadmaster\\b: From level 1 to 50! Remarkable dedication!")
    pbMessage("\\bHeadmaster\\b: You understand the value of training!")
    pbMessage("\\bHeadmaster\\b: Take this Lucky Egg for future endeavors!")
    pbReceiveItem(:LUCKYEGG)
    pbMessage("\\b\\PN\\b: A Lucky Egg! Training just got faster!")
  end
end

#===============================================================================
# QUEST 14: THE DESTINY KNOT MATCHMAKER
# Reward: Destiny Knot
#===============================================================================

GameData::Quest.define :matchmaker do |q|
  q.name "Love Connection"
  q.description "Successfully breed 5 Pokémon with perfect IVs."
  q.giver "Matchmaker Rosa"
  q.location "Day Care Center"
  
  q.on_complete do
    pbMessage("\\bRosa\\b: Five perfect babies! You have the touch!")
    pbMessage("\\bRosa\\b: The Destiny Knot is yours!")
    pbMessage("\\bRosa\\b: It passes down more IVs when breeding!")
    pbReceiveItem(:DESTINYKNOT)
    pbMessage("\\b\\PN\\b: Perfect for competitive breeding!")
  end
end

#===============================================================================
# QUEST 15: THE ABILITY CAPSULE DOCTOR
# Reward: Ability Capsule
#===============================================================================

GameData::Quest.define :ability_doctor do |q|
  q.name "Ability Adjustment"
  q.description "Bring the doctor 3 Pokémon with Hidden Abilities."
  q.giver "Dr. Ability"
  q.location "Genetics Lab"
  
  q.on_complete do
    pbMessage("\\bDr. Ability\\b: Three Hidden Abilities! Excellent specimens!")
    pbMessage("\\bDr. Ability\\b: My research is complete!")
    pbMessage("\\bDr. Ability\\b: Take this Ability Capsule - it changes abilities!")
    pbReceiveItem(:ABILITYCAPSULE)
    pbMessage("\\b\\PN\\b: I can change my Pokémon's ability now! Awesome!")
  end
end

#===============================================================================
# QUEST 16: THE GUARDIAN'S ECHO
# Reward: Crown Pendant (boosts all stats when HP is critical)
#===============================================================================

GameData::Quest.define :guardians_echo do |q|
  q.name "The Guardian's Echo"
  q.description "Investigate mysterious energy readings across the region connected to ancient guardian legends."
  q.giver "Historian Mirella"
  q.location "Ancient Library"
  
  q.objective :collect_item, item: :ANCIENTCROWNFRAGMENT, count: 3
  
  q.on_complete do
    pbMessage("\\bMirella\\b: You've collected all three Crown Fragments!")
    pbMessage("\\bMirella\\b: Together, they resonate with the power of Zacian, Zamazenta, and Eternatus!")
    pbMessage("\\bMirella\\b: Let me forge them into something useful...")
    pbMessage("The fragments merge into a beautiful pendant!")
    pbReceiveItem(:CROWNPENDANT)
    pbMessage("\\bMirella\\b: The Crown Pendant will protect you when hope seems lost.")
    pbMessage("\\bMirella\\b: May the Guardians watch over you, Chosen One.")
  end
end

GameData::Cutscene.define :sq_guardians_echo_start do |scene|
  scene.play_bgm 'Pokemon SwSh - Slumbering Weald'
  
  scene.message "\\bMirella\\b: Ah, a visitor to my library..."
  scene.message "\\bMirella\\b: Wait. That mark on your hand!"
  
  scene.message "\\b\\PN\\b: You can see it?"
  
  scene.message "\\bMirella\\b: I've studied the ancient texts for decades."
  scene.message "\\bMirella\\b: You bear Zacian's blessing. The mark of the Chosen."
  
  # TODO: Event Sequence - Mirella approaches
  # - Old historian moves closer
  # - Examines mark with magnifying glass
  
  scene.message "\\bMirella\\b: There are places... where the barrier between worlds is thin."
  scene.message "\\bMirella\\b: Where echoes of the ancient guardians still linger."
  scene.message "\\bMirella\\b: Three locations hold fragments of their power."
  
  scene.message "\\b\\PN\\b: Where are these places?"
  
  scene.message "\\bMirella\\b: The Weeping Falls, where Zacian once rested..."
  scene.message "\\bMirella\\b: The Iron Ruins, where Zamazenta stood vigil..."
  scene.message "\\bMirella\\b: And the Void Chasm, where Eternatus was first sealed."
  
  scene.message "\\bMirella\\b: Find the Crown Fragments at each location."
  scene.message "\\bMirella\\b: Together, they hold great power."
  
  scene.message "\\b\\PN\\b: I'll find them."
  
  scene.message "\\bMirella\\b: Be careful, Chosen One."
  scene.message "\\bMirella\\b: The echoes... they test those who seek them."
end

GameData::Cutscene.define :sq_guardians_echo_zacian do |scene|
  scene.play_bgm 'Pokemon SwSh - Legendary Dogs'
  
  # TODO: Event Sequence - Arrival at Weeping Falls
  # - Mist parts as player approaches
  # - Ancient sword marking on stone
  # - Blue energy pulses
  
  scene.message "\\bZacian Echo\\b: Who dares approach the Falls of Valor?"
  
  scene.camera_shake 3, 15
  
  # TODO: Event Sequence - Echo Manifestation
  # - Spectral form of Zacian appears
  # - Not solid, translucent blue energy
  # - Eyes glow with recognition
  
  scene.message "\\bZacian Echo\\b: ...The mark."
  scene.message "\\bZacian Echo\\b: You carry my blessing."
  
  scene.message "\\b\\PN\\b: Zacian? But... you're with me already."
  
  scene.message "\\bZacian Echo\\b: I am but a memory. An echo of times past."
  scene.message "\\bZacian Echo\\b: Left here to guard this fragment until the Chosen arrived."
  
  scene.message "\\bZacian Echo\\b: Answer me, Chosen One."
  scene.message "\\bZacian Echo\\b: What is true strength?"
  
  scene.choice ["Protecting those you love", "Never giving up", "The bonds we share"] do |choice|
    pbMessage("\\bZacian Echo\\b: ...")
    pbMessage("\\bZacian Echo\\b: All answers hold truth.")
    pbMessage("\\bZacian Echo\\b: But remember - strength without love is merely violence.")
  end
  
  scene.message "\\bZacian Echo\\b: Take this fragment. You have earned it."
  
  scene.camera_flash 15
  
  scene.script do
    pbReceiveItem(:ANCIENTCROWNFRAGMENT)
    pbMessage("Obtained CROWN FRAGMENT (VALOR)!")
  end
  
  scene.message "\\bZacian Echo\\b: Two more await. Seek them with courage."
  
  # TODO: Event Sequence - Echo Fades
  # - Blue light dissipates
  # - Warmth remains in the air
end

GameData::Cutscene.define :sq_guardians_echo_zamazenta do |scene|
  scene.play_bgm 'Pokemon SwSh - Legendary Dogs'
  
  # TODO: Event Sequence - Iron Ruins
  # - Ancient stone fortification
  # - Shield emblem carved into walls
  # - Red energy pulses from center
  
  scene.message "\\bZamazenta Echo\\b: HALT!"
  
  scene.camera_shake 5, 20
  
  # TODO: Event Sequence - Echo Manifestation
  # - Massive spectral shield forms
  # - Red energy coalesces into Zamazenta's form
  # - Protective stance
  
  scene.message "\\bZamazenta Echo\\b: None may pass without proving their heart."
  
  scene.message "\\b\\PN\\b: I carry Zacian's mark. I seek the Crown Fragment."
  
  scene.message "\\bZamazenta Echo\\b: The mark means nothing without the will to use it."
  scene.message "\\bZamazenta Echo\\b: I shall test you!"
  
  scene.trainer_battle :GUARDIAN_ECHO, "Zamazenta Echo", 0
  
  scene.message "\\bZamazenta Echo\\b: *impressed* You fight with conviction."
  scene.message "\\bZamazenta Echo\\b: Not for glory. For others."
  scene.message "\\bZamazenta Echo\\b: That is the heart of a true protector."
  
  scene.camera_flash 15
  
  scene.script do
    pbReceiveItem(:ANCIENTCROWNFRAGMENT)
    pbMessage("Obtained CROWN FRAGMENT (PROTECTION)!")
  end
  
  scene.message "\\bZamazenta Echo\\b: One fragment remains. In the darkest place."
  scene.message "\\bZamazenta Echo\\b: Face your fears, Chosen One."
  
  # TODO: Event Sequence - Echo fades into shield stones
end

GameData::Cutscene.define :sq_guardians_echo_eternatus do |scene|
  scene.play_bgm 'Pokemon SwSh - Eternatus Phase 2'
  
  # TODO: Event Sequence - Void Chasm
  # - Darkness swirls
  # - Purple energy crackles
  # - Oppressive atmosphere
  
  scene.message "\\bEternatus Echo\\b: So... you have come."
  
  scene.camera_shake 8, 25
  
  # TODO: Event Sequence - Eternatus manifestation
  # - Massive skeletal form
  # - Purple and pink energy
  # - Eyes burn with ancient power
  
  scene.message "\\bEternatus Echo\\b: The light-bearers sent their puppet."
  
  scene.message "\\b\\PN\\b: I'm no puppet. I make my own choices."
  
  scene.message "\\bEternatus Echo\\b: Do you? Or do you simply follow the path laid before you?"
  scene.message "\\bEternatus Echo\\b: Zacian chose you. Zamazenta accepted you."
  scene.message "\\bEternatus Echo\\b: But I... I shall show you truth."
  
  # TODO: Event Sequence - Vision sequence
  # - Player sees themselves failing
  # - Friends falling
  # - World ending
  
  scene.message "\\bEternatus Echo\\b: This is what awaits. Can you bear it?"
  
  scene.choice ["I'll change that future", "I'm not afraid"] do |choice|
    if choice == 0
      pbMessage("\\bEternatus Echo\\b: ...Change? Foolish.")
      pbMessage("\\bEternatus Echo\\b: And yet... that foolishness is what defeated me once.")
    else
      pbMessage("\\bEternatus Echo\\b: Fear is wisdom. But courage... is greater.")
    end
  end
  
  scene.message "\\bEternatus Echo\\b: Take the fragment, Chosen One."
  scene.message "\\bEternatus Echo\\b: Chaos acknowledges your will."
  
  scene.camera_flash 20
  
  scene.script do
    pbReceiveItem(:ANCIENTCROWNFRAGMENT)
    pbMessage("Obtained CROWN FRAGMENT (ETERNITY)!")
    pbMessage("You have collected all three Crown Fragments!")
    pbMessage("Return to Historian Mirella at the Ancient Library.")
  end
  
  scene.message "\\bEternatus Echo\\b: When darkness comes again..."
  scene.message "\\bEternatus Echo\\b: Remember - even chaos can be wielded for light."
  
  # TODO: Event Sequence - Echo dissipates into void
end

GameData::Cutscene.define :sq_guardians_echo_complete do |scene|
  scene.play_bgm 'Pokemon XY - Victory Road'
  
  scene.message "\\bMirella\\b: You've returned! And the fragments..."
  
  # TODO: Event Sequence - Fragments React
  # - Three fragments float from bag
  # - Orbit each other
  # - Blue, red, purple light intertwines
  
  scene.camera_flash 25
  
  scene.message "\\bMirella\\b: Magnificent! They're resonating!"
  scene.message "\\bMirella\\b: Quick, place them on the altar!"
  
  # TODO: Event Sequence - Fusion
  # - Player places fragments on ancient altar
  # - Blinding light
  # - When it fades, a pendant remains
  
  scene.message "\\bMirella\\b: The Crown Pendant..."
  scene.message "\\bMirella\\b: Forged from the essence of three guardians."
  scene.message "\\bMirella\\b: It will protect you in your darkest hour."
  
  scene.message "\\b\\PN\\b: Thank you, Mirella. For everything."
  
  scene.message "\\bMirella\\b: No, Chosen One. Thank YOU."
  scene.message "\\bMirella\\b: I spent my life studying legends."
  scene.message "\\bMirella\\b: And now... I've met one."
  
  scene.message "\\bMirella\\b: Go. Fulfill your destiny."
  scene.message "\\bMirella\\b: The guardians believe in you. As do I."
end

#===============================================================================
# SIDE STORY: LYRA'S FARM (Relaxation)
#===============================================================================

GameData::Cutscene.define :sq_lyra_farm_visit do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  
  scene.message "\\bLyra\\b: \\PN! Welcome to my family's farm!"
  scene.message "\\bLyra\\b: Grandma grows the best berries in the region."
  
  scene.message "\\b\\PN\\b: It's so peaceful here..."
  
  scene.message "\\bLyra\\b: Right? Sometimes I just come here to relax."
  scene.message "\\bLyra\\b: Want to help with the chores?"
  
  scene.choice ["Sure!", "Maybe later"] do |choice|
    if choice == 0
      pbMessage("\\bLyra\\b: Great! Let's water the berry trees!")
      pbMessage("You spent a relaxing afternoon on the farm.")
      pbMessage("Your friendship with Lyra deepened.")
    else
      pbMessage("\\bLyra\\b: No worries! Come back anytime.")
    end
  end
end

#===============================================================================
# SIDE STORY: KAEL'S ORPHANAGE
#===============================================================================

GameData::Cutscene.define :sq_kael_orphanage do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bKael\\b: ...This is where I grew up."
  scene.message "A modest building, weathered but warm."
  
  scene.message "\\b\\PN\\b: The orphanage?"
  
  scene.message "\\bKael\\b: Yeah. They're struggling for funds now."
  scene.message "\\bKael\\b: I send them money when I can, but..."
  
  scene.message "\\b\\PN\\b: Let's help them together."
  
  scene.message "\\bKael\\b: ...Really?"
  
  scene.message "\\b\\PN\\b: Of course. That's what friends do."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: Thanks, \\PN."
  scene.message "For the first time, Kael looked truly grateful."
end

#===============================================================================
# MINI-GAME: EGG HATCHING SYSTEM
#===============================================================================

# Custom item: Egg Incubator
# Halves steps required to hatch eggs

module EggIncubator
  def self.active?
    $bag.has?(:EGGINCUBATOR)
  end
  
  def self.step_multiplier
    active? ? 0.5 : 1.0
  end
end

#===============================================================================
# QUEST REWARD SUMMARY
#===============================================================================
# Quest 1:  Egg Incubator (halves hatch steps)
# Quest 2:  Choice Scarf (speed boost)
# Quest 3:  Choice Band (attack boost)
# Quest 4:  Choice Specs (sp.atk boost)
# Quest 5:  Fossil Pokémon (Omanyte/Kabuto/Aerodactyl)
# Quest 6:  Life Orb (damage boost)
# Quest 7:  Focus Sash + Rare Berries
# Quest 8:  Leftovers (passive healing)
# Quest 9:  Assault Vest (sp.def boost)
# Quest 10: Rocky Helmet (contact damage)
# Quest 11: Eviolite (NFE bulk boost)
# Quest 12: Shiny Charm (shiny odds)
# Quest 13: Lucky Egg (exp boost)
# Quest 14: Destiny Knot (IV breeding)
# Quest 15: Ability Capsule (ability change)
# Quest 16: Crown Pendant (all stats boost at critical HP)
# Quest 15: Ability Capsule (ability change)
#===============================================================================

#===============================================================================
# QUEST 16: THE TREASURE HUNTER
# Reward: Master Ball
#===============================================================================

GameData::Quest.define :treasure_hunter do |q|
  q.name "The Ultimate Treasure"
  q.description "Find 10 hidden treasure chests across the region."
  q.giver "Treasure Hunter Jake"
  q.location "Explorer's Guild"
  
  q.objective :find_treasures, count: 10
  
  q.on_complete do
    pbMessage("\\bJake\\b: TEN chests?! You're a natural explorer!")
    pbMessage("\\bJake\\b: I've got something REALLY special for you...")
    pbMessage("\\bJake\\b: The legendary MASTER BALL!")
    pbReceiveItem(:MASTERBALL)
    pbMessage("\\b\\PN\\b: A Master Ball?! This is the ultimate treasure!")
  end
end

#===============================================================================
# QUEST 17: THE TM COLLECTOR
# Reward: All 3 Elemental Punch TMs
#===============================================================================

GameData::Quest.define :tm_collector do |q|
  q.name "TM Collector"
  q.description "Collect 50 different TMs for the collector."
  q.giver "TM Fanatic Marcus"
  q.location "Move Tutor House"
  
  q.on_complete do
    pbMessage("\\bMarcus\\b: 50 TMs! What a collection!")
    pbMessage("\\bMarcus\\b: Here, take these rare punch TMs!")
    pbReceiveItem(:TM09) # Ice Punch
    pbReceiveItem(:TM10) # Fire Punch
    pbReceiveItem(:TM11) # Thunder Punch
    pbMessage("\\b\\PN\\b: All three elemental punches! Amazing!")
  end
end

#===============================================================================
# QUEST 18: THE FISHING CHAMPION
# Reward: Super Rod + Rare Water Pokémon
#===============================================================================

GameData::Quest.define :fishing_champion do |q|
  q.name "Fishing Champion"
  q.description "Catch 20 different fish Pokémon using any rod."
  q.giver "Fisherman Walter"
  q.location "Lake Serenity"
  
  q.objective :catch_fish, count: 20
  
  q.on_complete do
    pbMessage("\\bWalter\\b: 20 species! You're a true angler!")
    pbMessage("\\bWalter\\b: Take my prize Super Rod!")
    pbReceiveItem(:SUPERROD)
    pbMessage("\\bWalter\\b: And this rare Feebas I've been raising!")
    pbAddPokemon(:FEEBAS, 20)
    pbMessage("\\b\\PN\\b: A Feebas! These are so rare!")
  end
end

#===============================================================================
# QUEST 19: THE GHOST WHISPERER
# Reward: Spell Tag + Shiny Gastly
#===============================================================================

GameData::Quest.define :ghost_whisperer do |q|
  q.name "Ghost Whisperer"
  q.description "Help 5 lost spirits find peace in the haunted tower."
  q.giver "Medium Celeste"
  q.location "Spirit Tower"
  
  q.objective :help_spirits, count: 5
  
  q.on_complete do
    pbMessage("\\bCeleste\\b: Five souls at peace... beautiful.")
    pbMessage("\\bCeleste\\b: The spirits want to thank you.")
    pbMessage("\\bCeleste\\b: Take this Spell Tag and... a friend.")
    pbReceiveItem(:SPELLTAG)
    # Give shiny Gastly
    pkmn = Pokemon.new(:GASTLY, 25)
    pkmn.shiny = true
    pbAddPokemon(pkmn)
    pbMessage("\\b\\PN\\b: A shiny Gastly?! This is incredible!")
  end
end

#===============================================================================
# QUEST 20: THE DRAGON TAMER
# Reward: Dragon Fang + Dratini Egg
#===============================================================================

GameData::Quest.define :dragon_tamer do |q|
  q.name "Dragon Tamer"
  q.description "Defeat 10 Dragon-type Pokémon in the Dragon's Den."
  q.giver "Dragon Master Lance Jr."
  q.location "Dragon's Den"
  
  q.objective :defeat_dragons, count: 10
  
  q.on_complete do
    pbMessage("\\bLance Jr.\\b: You've proven yourself against dragons!")
    pbMessage("\\bLance Jr.\\b: Take this Dragon Fang...")
    pbMessage("\\bLance Jr.\\b: And this precious Dratini egg!")
    pbReceiveItem(:DRAGONFANG)
    pbGenerateEgg(:DRATINI)
    pbMessage("\\b\\PN\\b: A Dratini! I'll raise it well!")
  end
end

#===============================================================================
# QUEST 21: THE PHOTOGRAPHY CHALLENGE
# Reward: Rotom Phone (special item)
#===============================================================================

GameData::Quest.define :photographer do |q|
  q.name "Pokémon Photographer"
  q.description "Take photos of 30 different wild Pokémon species."
  q.giver "Photographer Todd"
  q.location "Photo Studio"
  
  q.objective :photograph_pokemon, count: 30
  
  q.on_complete do
    pbMessage("\\bTodd\\b: 30 unique shots! You've got the eye!")
    pbMessage("\\bTodd\\b: Here, take my old Rotom Phone!")
    pbMessage("\\bTodd\\b: It has a built-in camera AND Rotom assistant!")
    pbReceiveItem(:ROTOMPHONE)
    pbMessage("\\b\\PN\\b: This is so cool! Thanks, Todd!")
  end
end

#===============================================================================
# QUEST 22: THE POKÉ MART MOGUL
# Reward: Amulet Coin
#===============================================================================

GameData::Quest.define :mart_mogul do |q|
  q.name "Shop Till You Drop"
  q.description "Spend 100,000 PokéDollars at Poké Marts."
  q.giver "Mart Owner Marty"
  q.location "Mega Mart"
  
  q.on_complete do
    pbMessage("\\bMarty\\b: Wow! You're my best customer!")
    pbMessage("\\bMarty\\b: Here's an Amulet Coin for your loyalty!")
    pbMessage("\\bMarty\\b: Double prize money in battles!")
    pbReceiveItem(:AMULETCOIN)
    pbMessage("\\b\\PN\\b: Now I can earn that money back!")
  end
end

#===============================================================================
# QUEST 23: THE BIKE ROAD RACER
# Reward: Acro Bike OR Mach Bike
#===============================================================================

GameData::Quest.define :bike_racer do |q|
  q.name "Need for Speed"
  q.description "Complete the Cycling Road time trial in under 2 minutes."
  q.giver "Biker Cleo"
  q.location "Cycling Road Start"
  
  q.on_complete do
    pbMessage("\\bCleo\\b: Under 2 minutes! That's a new record!")
    pbMessage("\\bCleo\\b: Pick your prize bike!")
    choice = pbShowCommands(nil, ["Acro Bike", "Mach Bike"])
    if choice == 0
      pbReceiveItem(:ACROBIKE)
      pbMessage("\\b\\PN\\b: Acro Bike! Time for some tricks!")
    else
      pbReceiveItem(:MACHBIKE)
      pbMessage("\\b\\PN\\b: Mach Bike! Maximum speed!")
    end
  end
end

#===============================================================================
# QUEST 24: THE SECRET BASE BUILDER
# Reward: Secret Base Decorations + Rare Furniture
#===============================================================================

GameData::Quest.define :base_builder do |q|
  q.name "Dream Home"
  q.description "Create a secret base and decorate it with 20 items."
  q.giver "Interior Designer Dee"
  q.location "Decor Shop"
  
  q.on_complete do
    pbMessage("\\bDee\\b: Your base is GORGEOUS!")
    pbMessage("\\bDee\\b: Here's some exclusive furniture!")
    pbReceiveItem(:GOLDSTATUE)
    pbReceiveItem(:POKEMONDOLL)
    pbReceiveItem(:DIAMONDCUSHION)
    pbMessage("\\b\\PN\\b: These will make my base amazing!")
  end
end

#===============================================================================
# QUEST 25: THE LEGENDARY BIRD HUNT
# Reward: Sacred Ash
#===============================================================================

GameData::Quest.define :legendary_birds do |q|
  q.name "The Three Birds"
  q.description "Encounter (but not catch) all three legendary birds."
  q.giver "Bird Watcher Ava"
  q.location "Sky Tower Observation Deck"
  
  q.objective :encounter_birds, count: 3
  
  q.on_complete do
    pbMessage("\\bAva\\b: You've seen all three?!")
    pbMessage("\\bAva\\b: Articuno, Zapdos, AND Moltres!")
    pbMessage("\\bAva\\b: Take this Sacred Ash - a feather from Ho-Oh itself!")
    pbReceiveItem(:SACREDASH)
    pbMessage("\\b\\PN\\b: Sacred Ash! This revives my whole team!")
  end
end

#===============================================================================
# QUEST 26: THE CONTEST STAR
# Reward: Beautiful Scarf + Contest Pass
#===============================================================================

GameData::Quest.define :contest_star do |q|
  q.name "Contest Superstar"
  q.description "Win 5 Pokémon Contests in different categories."
  q.giver "Contest Idol Maya"
  q.location "Contest Hall"
  
  q.objective :win_contests, count: 5
  
  q.on_complete do
    pbMessage("\\bMaya\\b: Five wins! You're a natural!")
    pbMessage("\\bMaya\\b: Here's a silk scarf for your Pokémon...")
    pbMessage("\\bMaya\\b: And a VIP Contest Pass!")
    pbReceiveItem(:SILKSCARF)
    pbReceiveItem(:CONTESTPASS)
    pbMessage("\\b\\PN\\b: I'm officially a contest star!")
  end
end

#===============================================================================
# QUEST 27: THE UNDERGROUND EXPLORER
# Reward: Prism Scale + Star Piece x5
#===============================================================================

GameData::Quest.define :underground_explorer do |q|
  q.name "Underground Explorer"
  q.description "Find 50 items in the underground tunnels."
  q.giver "Miner Pete"
  q.location "Underground Entrance"
  
  q.objective :find_underground, count: 50
  
  q.on_complete do
    pbMessage("\\bPete\\b: 50 finds! You've got a miner's eye!")
    pbMessage("\\bPete\\b: Here's something rare I found...")
    pbReceiveItem(:PRISMSCALE)
    pbReceiveItem(:STARPIECE, 5)
    pbMessage("\\b\\PN\\b: A Prism Scale! This evolves Feebas!")
  end
end

#===============================================================================
# QUEST 28: THE BATTLE FRONTIER CHALLENGE
# Reward: Gold Symbol + Rare Candy x10
#===============================================================================

GameData::Quest.define :frontier_challenge do |q|
  q.name "Frontier Brains"
  q.description "Defeat all 5 Frontier Brains."
  q.giver "Frontier Master Scott"
  q.location "Battle Frontier Entrance"
  
  q.objective :defeat_frontier, count: 5
  
  q.on_complete do
    pbMessage("\\bScott\\b: ALL FIVE?! That's legendary!")
    pbMessage("\\bScott\\b: You've earned the Gold Symbol!")
    pbMessage("\\bScott\\b: And these Rare Candies as a bonus!")
    pbReceiveItem(:GOLDSYMBOL)
    pbReceiveItem(:RARECANDY, 10)
    pbMessage("\\b\\PN\\b: I'm officially a Frontier Champion!")
  end
end

#===============================================================================
# QUEST 29: THE EVOLUTION MASTER
# Reward: Thunder Stone, Fire Stone, Water Stone
#===============================================================================

GameData::Quest.define :evolution_master do |q|
  q.name "Evolution Master"
  q.description "Evolve 15 different Pokémon species."
  q.giver "Evolution Expert Evan"
  q.location "Evolution Cave"
  
  q.objective :evolve_pokemon, count: 15
  
  q.on_complete do
    pbMessage("\\bEvan\\b: 15 evolutions! Magnificent!")
    pbMessage("\\bEvan\\b: Take these evolution stones!")
    pbReceiveItem(:THUNDERSTONE)
    pbReceiveItem(:FIRESTONE)
    pbReceiveItem(:WATERSTONE)
    pbReceiveItem(:LEAFSTONE)
    pbReceiveItem(:MOONSTONE)
    pbMessage("\\b\\PN\\b: All these stones! Thank you!")
  end
end

#===============================================================================
# QUEST 30: THE DAILY JOGGER
# Reward: Running Shoes EX (faster running)
#===============================================================================

GameData::Quest.define :daily_jogger do |q|
  q.name "Marathon Runner"
  q.description "Walk 100,000 steps throughout your journey."
  q.giver "Jogger Jenny"
  q.location "Morning Park"
  
  q.objective :walk_steps, count: 100000
  
  q.on_complete do
    pbMessage("\\bJenny\\b: 100,000 steps! You're dedicated!")
    pbMessage("\\bJenny\\b: These Running Shoes EX are perfect for you!")
    pbMessage("\\bJenny\\b: They let you run even faster!")
    pbReceiveItem(:RUNNINGSHOESEX)
    pbMessage("\\b\\PN\\b: Faster running? Yes please!")
  end
end

#===============================================================================
# QUEST 31: THE WONDER TRADE ENTHUSIAST
# Reward: Mystery Egg (random rare Pokémon)
#===============================================================================

GameData::Quest.define :wonder_trader do |q|
  q.name "Wonder Trader"
  q.description "Complete 20 Wonder Trades."
  q.giver "Trade Master Wanda"
  q.location "Global Trade Station"
  
  q.objective :wonder_trades, count: 20
  
  q.on_complete do
    pbMessage("\\bWanda\\b: 20 trades! You spread joy!")
    pbMessage("\\bWanda\\b: Here's a Mystery Egg!")
    pbMessage("\\bWanda\\b: It could be anything rare!")
    # Random rare egg
    rare_pokemon = [:LARVITAR, :BAGON, :BELDUM, :GIBLE, :DEINO, :GOOMY]
    pbGenerateEgg(rare_pokemon.sample)
    pbMessage("\\b\\PN\\b: A mystery egg! I can't wait to see what hatches!")
  end
end

#===============================================================================
# QUEST 32: THE RIBBON COLLECTOR
# Reward: Special Ribbon + PP Max x3
#===============================================================================

GameData::Quest.define :ribbon_collector do |q|
  q.name "Ribbon Collector"
  q.description "Earn 10 different ribbons on your Pokémon."
  q.giver "Ribbon Fan Ruby"
  q.location "Ribbon Syndicate"
  
  q.objective :earn_ribbons, count: 10
  
  q.on_complete do
    pbMessage("\\bRuby\\b: 10 ribbons! Such dedication!")
    pbMessage("\\bRuby\\b: Here's the Champion Ribbon!")
    pbMessage("\\bRuby\\b: And some PP Max as a bonus!")
    pbReceiveItem(:CHAMPIONRIBBON)
    pbReceiveItem(:PPMAX, 3)
    pbMessage("\\b\\PN\\b: The Champion Ribbon! My Pokémon will love this!")
  end
end

#===============================================================================
# QUEST 33: THE CURRY MASTER
# Reward: Curry Dex completion + Soothe Bell
#===============================================================================

GameData::Quest.define :curry_master do |q|
  q.name "Curry Master"
  q.description "Cook 30 different curry recipes at camp."
  q.giver "Chef Kalos"
  q.location "Camp Kitchen"
  
  q.objective :cook_curry, count: 30
  
  q.on_complete do
    pbMessage("\\bKalos\\b: 30 recipes! You're a curry genius!")
    pbMessage("\\bKalos\\b: Your Pokémon must love you!")
    pbMessage("\\bKalos\\b: Take this Soothe Bell!")
    pbReceiveItem(:SOOTHEBELL)
    pbMessage("\\b\\PN\\b: A Soothe Bell! Friendship boosts here I come!")
  end
end

#===============================================================================
# QUEST 34: THE ITEM HOARDER
# Reward: Big Nugget x5 (sells for lots)
#===============================================================================

GameData::Quest.define :item_hoarder do |q|
  q.name "Item Hoarder"
  q.description "Have 200 different items in your bag."
  q.giver "Collector Carl"
  q.location "Collector's Mansion"
  
  q.objective :collect_items, count: 200
  
  q.on_complete do
    pbMessage("\\bCarl\\b: 200 items! A true collector!")
    pbMessage("\\bCarl\\b: Here's some Big Nuggets for your trouble!")
    pbReceiveItem(:BIGNUGGET, 5)
    pbMessage("\\b\\PN\\b: These are worth a fortune!")
  end
end

#===============================================================================
# QUEST 35: THE NATURE PERFECTIONIST
# Reward: Synchronize Abra + Everstone
#===============================================================================

GameData::Quest.define :nature_perfectionist do |q|
  q.name "Nature Perfectionist"
  q.description "Catch Pokémon with 10 different natures."
  q.giver "Breeder Natalie"
  q.location "Nature Reserve"
  
  q.objective :catch_natures, count: 10
  
  q.on_complete do
    pbMessage("\\bNatalie\\b: 10 natures! You understand breeding!")
    pbMessage("\\bNatalie\\b: Take this Abra with Synchronize!")
    pbMessage("\\bNatalie\\b: And an Everstone for nature passing!")
    pkmn = Pokemon.new(:ABRA, 20)
    pkmn.ability_index = 1 # Synchronize
    pbAddPokemon(pkmn)
    pbReceiveItem(:EVERSTONE)
    pbMessage("\\b\\PN\\b: Perfect for competitive breeding!")
  end
end

#===============================================================================
# QUEST 36: THE POKÉ BALL SPECIALIST
# Reward: Safari Ball x10 + Sport Ball x10
#===============================================================================

GameData::Quest.define :ball_specialist do |q|
  q.name "Ball Expert"
  q.description "Catch Pokémon using 10 different Poké Ball types."
  q.giver "Ball Maker Kurt Jr."
  q.location "Apricorn Workshop"
  
  q.objective :use_ball_types, count: 10
  
  q.on_complete do
    pbMessage("\\bKurt Jr.\\b: 10 different balls! Impressive!")
    pbMessage("\\bKurt Jr.\\b: Here are some rare balls I made!")
    pbReceiveItem(:SAFARIBALL, 10)
    pbReceiveItem(:SPORTBALL, 10)
    pbMessage("\\b\\PN\\b: Rare balls! These are collector's items!")
  end
end

#===============================================================================
# QUEST 37: THE WEATHER WATCHER
# Reward: Heat Rock, Damp Rock, Smooth Rock, Icy Rock
#===============================================================================

GameData::Quest.define :weather_watcher do |q|
  q.name "Weather Watcher"
  q.description "Battle in all 4 weather conditions."
  q.giver "Meteorologist Storm"
  q.location "Weather Institute"
  
  q.on_complete do
    pbMessage("\\bStorm\\b: Sun, Rain, Sand, AND Hail!")
    pbMessage("\\bStorm\\b: You've experienced it all!")
    pbMessage("\\bStorm\\b: Take these weather rocks!")
    pbReceiveItem(:HEATROCK)
    pbReceiveItem(:DAMPROCK)
    pbReceiveItem(:SMOOTHROCK)
    pbReceiveItem(:ICYROCK)
    pbMessage("\\b\\PN\\b: All four weather rocks! My teams will love these!")
  end
end

#===============================================================================
# QUEST 38: THE MOVE TUTOR STUDENT
# Reward: Heart Scale x20
#===============================================================================

GameData::Quest.define :move_student do |q|
  q.name "Move Master"
  q.description "Learn 30 moves from Move Tutors."
  q.giver "Move Tutor Elder"
  q.location "Move Mastery Temple"
  
  q.objective :learn_moves, count: 30
  
  q.on_complete do
    pbMessage("\\bElder\\b: 30 moves mastered!")
    pbMessage("\\bElder\\b: You have dedication!")
    pbMessage("\\bElder\\b: These Heart Scales will help you remember moves!")
    pbReceiveItem(:HEARTSCALE, 20)
    pbMessage("\\b\\PN\\b: 20 Heart Scales! That's so many free moves!")
  end
end

#===============================================================================
# QUEST 39: THE POKEDEX COMPLETIONIST
# Reward: Shiny Stone, Dusk Stone, Dawn Stone
#===============================================================================

GameData::Quest.define :pokedex_hero do |q|
  q.name "Pokédex Hero"
  q.description "Complete 50% of the Regional Pokédex."
  q.giver "Professor Aldric"
  q.location "Research Lab"
  
  q.on_complete do
    pbMessage("\\bProfessor Aldric\\b: 50% complete! Excellent work!")
    pbMessage("\\bProfessor Aldric\\b: Here are some rare evolution stones!")
    pbReceiveItem(:SHINYSTONE)
    pbReceiveItem(:DUSKSTONE)
    pbReceiveItem(:DAWNSTONE)
    pbMessage("\\b\\PN\\b: These will help me evolve even more Pokémon!")
  end
end

#===============================================================================
# QUEST 40: THE FINAL CHALLENGE
# Reward: Gold Bottle Cap (max all IVs)
#===============================================================================

GameData::Quest.define :final_challenge do |q|
  q.name "The Ultimate Challenge"
  q.description "Defeat the secret boss in Champion difficulty."
  q.giver "Mysterious Trainer ???"
  q.location "Hidden Summit"
  
  q.on_complete do
    pbMessage("\\b???\\b: ...Impressive.")
    pbMessage("\\b???\\b: You are worthy.")
    pbMessage("\\b???\\b: Take this Gold Bottle Cap.")
    pbMessage("\\b???\\b: It maximizes all of a Pokémon's potential.")
    pbReceiveItem(:GOLDBOTTLECAP)
    pbMessage("\\b\\PN\\b: A Gold Bottle Cap! Perfect competitive stats!")
  end
end

#===============================================================================
# UPDATED QUEST REWARD SUMMARY
#===============================================================================
# Quest 1:  Egg Incubator          Quest 21: Rotom Phone
# Quest 2:  Choice Scarf           Quest 22: Amulet Coin
# Quest 3:  Choice Band            Quest 23: Acro/Mach Bike
# Quest 4:  Choice Specs           Quest 24: Rare Decorations
# Quest 5:  Fossil Pokémon         Quest 25: Sacred Ash
# Quest 6:  Life Orb               Quest 26: Silk Scarf + Contest Pass
# Quest 7:  Focus Sash + Berries   Quest 27: Prism Scale + Star Pieces
# Quest 8:  Leftovers              Quest 28: Gold Symbol + Rare Candy x10
# Quest 9:  Assault Vest           Quest 29: Evolution Stones (5)
# Quest 10: Rocky Helmet           Quest 30: Running Shoes EX
# Quest 11: Eviolite               Quest 31: Mystery Egg (rare)
# Quest 12: Shiny Charm            Quest 32: Champion Ribbon + PP Max
# Quest 13: Lucky Egg              Quest 33: Soothe Bell
# Quest 14: Destiny Knot           Quest 34: Big Nugget x5
# Quest 15: Ability Capsule        Quest 35: Synchronize Abra + Everstone
# Quest 16: Master Ball            Quest 36: Safari Ball + Sport Ball
# Quest 17: Elemental Punch TMs    Quest 37: Weather Rocks (4)
# Quest 18: Super Rod + Feebas     Quest 38: Heart Scale x20
# Quest 19: Spell Tag + Shiny Gastly   Quest 39: Rare Evolution Stones (3)
# Quest 20: Dragon Fang + Dratini Egg  Quest 40: Gold Bottle Cap
#===============================================================================

#===============================================================================
# QUEST 41: THE MEGA STONE HUNTER
# Reward: Player's Starter Mega Stone
#===============================================================================

GameData::Quest.define :mega_hunter do |q|
  q.name "Mega Evolution"
  q.description "Find the Key Stone hidden in the Crystal Cave."
  q.giver "Mega Expert Korrina"
  q.location "Tower of Mastery"
  
  q.on_complete do
    pbMessage("\\bKorrina\\b: You found the Key Stone!")
    pbMessage("\\bKorrina\\b: Now you can Mega Evolve!")
    pbMessage("\\bKorrina\\b: Here's a Mega Stone for your starter!")
    pbReceiveItem(:KEYSTONE)
    # Give appropriate mega stone based on starter
    pbReceiveItem(:VENUSAURITE)
    pbReceiveItem(:CHARIZARDITEY)
    pbReceiveItem(:BLASTOISINITE)
    pbMessage("\\b\\PN\\b: Mega Evolution! This is incredible!")
  end
end

#===============================================================================
# QUEST 42: THE TYPE GEM COLLECTOR
# Reward: All 18 Type Gems
#===============================================================================

GameData::Quest.define :gem_collector do |q|
  q.name "Gem Collector"
  q.description "Collect 5 different Type Gems from wild Pokémon."
  q.giver "Jeweler Crystal"
  q.location "Gem Mines"
  
  q.on_complete do
    pbMessage("\\bCrystal\\b: Beautiful finds!")
    pbMessage("\\bCrystal\\b: Here - take my complete collection!")
    [:NORMALGEM, :FIREGEM, :WATERGEM, :ELECTRICGEM, :GRASSGEM,
     :ICEGEM, :FIGHTINGGEM, :POISONGEM, :GROUNDGEM, :FLYINGGEM,
     :PSYCHICGEM, :BUGGEM, :ROCKGEM, :GHOSTGEM, :DRAGONGEM,
     :DARKGEM, :STEELGEM, :FAIRYGEM].each { |gem| pbReceiveItem(gem) }
    pbMessage("\\b\\PN\\b: All 18 type gems! Amazing!")
  end
end

#===============================================================================
# QUEST 43: THE LEGENDARY DOG TRACKER
# Reward: Beast Ball x10
#===============================================================================

GameData::Quest.define :dog_tracker do |q|
  q.name "Roaming Beasts"
  q.description "Track and encounter Entei, Raikou, and Suicune."
  q.giver "Tracker Elena"
  q.location "Burned Tower"
  
  q.objective :encounter_beasts, count: 3
  
  q.on_complete do
    pbMessage("\\bElena\\b: All three legendary beasts!")
    pbMessage("\\bElena\\b: You're a true tracker!")
    pbMessage("\\bElena\\b: Take these Beast Balls!")
    pbReceiveItem(:BEASTBALL, 10)
    pbMessage("\\b\\PN\\b: Beast Balls! Perfect for legends!")
  end
end

#===============================================================================
# QUEST 44: THE POKÉ PELAGO FARMER
# Reward: Rare Berry Seeds + PP Up x5
#===============================================================================

GameData::Quest.define :pelago_farmer do |q|
  q.name "Island Paradise"
  q.description "Fully upgrade all Poké Pelago islands."
  q.giver "Island Keeper Mohn"
  q.location "Poké Pelago"
  
  q.on_complete do
    pbMessage("\\bMohn\\b: All islands upgraded! Beautiful!")
    pbMessage("\\bMohn\\b: Your Pokémon love living here!")
    pbMessage("\\bMohn\\b: Take these rare seeds!")
    pbReceiveItem(:STARFBERRY, 3)
    pbReceiveItem(:LANSATBERRY, 3)
    pbReceiveItem(:PPUP, 5)
    pbMessage("\\b\\PN\\b: Starf and Lansat berries! So rare!")
  end
end

#===============================================================================
# QUEST 45: THE POKÉ RADAR MASTER
# Reward: Poké Radar + Chain Charm
#===============================================================================

GameData::Quest.define :radar_master do |q|
  q.name "Chain Master"
  q.description "Achieve a chain of 40 encounters using the Poké Radar."
  q.giver "Radar Expert Riley"
  q.location "Research Route"
  
  q.on_complete do
    pbMessage("\\bRiley\\b: A chain of 40! Incredible patience!")
    pbMessage("\\bRiley\\b: Take this Chain Charm!")
    pbMessage("\\bRiley\\b: It makes chains easier to continue!")
    pbReceiveItem(:CHAINCHARM)
    pbMessage("\\b\\PN\\b: Shiny hunting just got easier!")
  end
end

#===============================================================================
# QUEST 46: THE BATTLE BOND TRAINER
# Reward: Rare Candy x5 + Exp. Candy XL x10
#===============================================================================

GameData::Quest.define :battle_bond do |q|
  q.name "Battle Bond"
  q.description "Win 100 battles with your first Pokémon in the party."
  q.giver "Bond Expert Ash"
  q.location "Battle Stadium"
  
  q.objective :win_with_lead, count: 100
  
  q.on_complete do
    pbMessage("\\bAsh\\b: 100 wins with your partner!")
    pbMessage("\\bAsh\\b: That's a true bond!")
    pbMessage("\\bAsh\\b: Here's some training treats!")
    pbReceiveItem(:RARECANDY, 5)
    pbReceiveItem(:EXPCANDYXL, 10)
    pbMessage("\\b\\PN\\b: So much exp! Thanks!")
  end
end

#===============================================================================
# QUEST 47: THE TERA HUNTER
# Reward: Tera Orb
#===============================================================================

GameData::Quest.define :tera_hunter do |q|
  q.name "Tera Crystal Hunter"
  q.description "Find 10 Tera Crystals in raid dens."
  q.giver "Tera Researcher Nemona"
  q.location "Crystal Observatory"
  
  q.objective :find_tera, count: 10
  
  q.on_complete do
    pbMessage("\\bNemona\\b: 10 crystals! You're amazing!")
    pbMessage("\\bNemona\\b: Here's a Tera Orb!")
    pbMessage("\\bNemona\\b: It lets you Terastallize!")
    pbReceiveItem(:TERAORB)
    pbMessage("\\b\\PN\\b: Terastallizing! A whole new power!")
  end
end

#===============================================================================
# QUEST 48: THE DOUBLE BATTLE MASTER
# Reward: Wide Lens + Zoom Lens
#===============================================================================

GameData::Quest.define :double_master do |q|
  q.name "Double Trouble"
  q.description "Win 20 Double Battles."
  q.giver "Duo Trainer Tate & Liza"
  q.location "Doubles Arena"
  
  q.objective :win_doubles, count: 20
  
  q.on_complete do
    pbMessage("\\bTate\\b: 20 Double Battle wins!")
    pbMessage("\\bLiza\\b: You understand synergy!")
    pbMessage("\\bTate\\b: Take these accuracy items!")
    pbReceiveItem(:WIDELENS)
    pbReceiveItem(:ZOOMLENS)
    pbMessage("\\b\\PN\\b: Never miss again!")
  end
end

#===============================================================================
# QUEST 49: THE INVERSE BATTLE CHAMPION
# Reward: Expert Belt
#===============================================================================

GameData::Quest.define :inverse_champion do |q|
  q.name "Inverse Champion"
  q.description "Win 10 Inverse Battles where type matchups are flipped."
  q.giver "Inverse Trainer Inver"
  q.location "Inverse House"
  
  q.objective :win_inverse, count: 10
  
  q.on_complete do
    pbMessage("\\bInver\\b: 10 Inverse wins!")
    pbMessage("\\bInver\\b: You've mastered the flip!")
    pbMessage("\\bInver\\b: Take this Expert Belt!")
    pbReceiveItem(:EXPERTBELT)
    pbMessage("\\b\\PN\\b: Super effective bonus! Nice!")
  end
end

#===============================================================================
# QUEST 50: THE HORDE HUNTER
# Reward: Macho Brace + Power Items Set
#===============================================================================

GameData::Quest.define :horde_hunter do |q|
  q.name "Horde Hunter"
  q.description "Defeat 50 Horde Encounters."
  q.giver "EV Trainer Marcus"
  q.location "Training Fields"
  
  q.objective :defeat_hordes, count: 50
  
  q.on_complete do
    pbMessage("\\bMarcus\\b: 50 hordes! EV training master!")
    pbMessage("\\bMarcus\\b: Take these Power Items!")
    pbReceiveItem(:MACHOBRACE)
    pbReceiveItem(:POWERWEIGHT)
    pbReceiveItem(:POWERBRACER)
    pbReceiveItem(:POWERBELT)
    pbReceiveItem(:POWERLENS)
    pbReceiveItem(:POWERBAND)
    pbReceiveItem(:POWERANKLET)
    pbMessage("\\b\\PN\\b: Full Power Item set! Perfect for EV training!")
  end
end

#===============================================================================
# QUEST 51: THE HIDDEN ABILITY HUNTER
# Reward: Ability Patch
#===============================================================================

GameData::Quest.define :ha_hunter do |q|
  q.name "Hidden Potential"
  q.description "Catch 5 Pokémon with Hidden Abilities."
  q.giver "HA Expert Sharon"
  q.location "Ability Den"
  
  q.objective :catch_ha, count: 5
  
  q.on_complete do
    pbMessage("\\bSharon\\b: 5 Hidden Abilities! You have the touch!")
    pbMessage("\\bSharon\\b: Take this Ability Patch!")
    pbMessage("\\bSharon\\b: It unlocks Hidden Abilities!")
    pbReceiveItem(:ABILITYPATCH)
    pbMessage("\\b\\PN\\b: An Ability Patch! So valuable!")
  end
end

#===============================================================================
# QUEST 52: THE VITAMINS MERCHANT
# Reward: Full Vitamin Set (HP Up, Protein, etc.)
#===============================================================================

GameData::Quest.define :vitamin_merchant do |q|
  q.name "Vitamin Vendor"
  q.description "Use 50 vitamins on your Pokémon."
  q.giver "Health Expert Dr. Vita"
  q.location "Pokémon Gym Supplement Shop"
  
  q.objective :use_vitamins, count: 50
  
  q.on_complete do
    pbMessage("\\bDr. Vita\\b: 50 vitamins! Healthy trainer!")
    pbMessage("\\bDr. Vita\\b: Here's a full set on the house!")
    pbReceiveItem(:HPUP, 10)
    pbReceiveItem(:PROTEIN, 10)
    pbReceiveItem(:IRON, 10)
    pbReceiveItem(:CALCIUM, 10)
    pbReceiveItem(:ZINC, 10)
    pbReceiveItem(:CARBOS, 10)
    pbMessage("\\b\\PN\\b: 60 vitamins! My team will be maxed!")
  end
end

#===============================================================================
# QUEST 53: THE MINT GARDENER
# Reward: All Nature Mints
#===============================================================================

GameData::Quest.define :mint_gardener do |q|
  q.name "Mint Collector"
  q.description "Grow 10 different mints in the garden."
  q.giver "Mint Farmer Minty"
  q.location "Mint Garden"
  
  q.on_complete do
    pbMessage("\\bMinty\\b: 10 mint varieties! Green thumb!")
    pbMessage("\\bMinty\\b: Here's my prize collection!")
    [:LONELYMINT, :ADAMANTMINT, :NAUGHTYMINT, :BRAVEMINT,
     :BOLDMINT, :IMPISHMINT, :LAXMINT, :RELAXEDMINT,
     :MODESTMINT, :MILDMINT, :RASHMINT, :QUIETMINT,
     :CALMMINT, :GENTLEMINT, :CAREFULMINT, :SASSYMINT,
     :TIMIDMINT, :HASTYMINT, :JOLLYMINT, :NAIVEMINT].each { |m| pbReceiveItem(m) }
    pbMessage("\\b\\PN\\b: All the mints! Perfect for competitive!")
  end
end

#===============================================================================
# QUEST 54: THE GIGANTAMAX HUNTER
# Reward: Max Soup x10
#===============================================================================

GameData::Quest.define :gmax_hunter do |q|
  q.name "Gigantamax Hunter"
  q.description "Catch 5 Gigantamax-capable Pokémon."
  q.giver "Dynamax Expert Mustard"
  q.location "Master Dojo"
  
  q.objective :catch_gmax, count: 5
  
  q.on_complete do
    pbMessage("\\bMustard\\b: 5 G-Max Pokémon! Well done!")
    pbMessage("\\bMustard\\b: Take this Max Soup!")
    pbMessage("\\bMustard\\b: It unlocks G-Max potential!")
    pbReceiveItem(:MAXSOUP, 10)
    pbMessage("\\b\\PN\\b: Max Soup! Any Pokémon can G-Max now!")
  end
end

#===============================================================================
# QUEST 55: THE Z-CRYSTAL COLLECTOR
# Reward: All Type Z-Crystals
#===============================================================================

GameData::Quest.define :z_collector do |q|
  q.name "Z-Power Collector"
  q.description "Complete all Island Trials."
  q.giver "Kahuna Hala"
  q.location "Festival Plaza"
  
  q.on_complete do
    pbMessage("\\bHala\\b: All trials complete!")
    pbMessage("\\bHala\\b: You've earned ALL Z-Crystals!")
    [:NORMALIUMZ, :FIRIUMZ, :WATERIUMZ, :ELECTRIUMZ, :GRASSIUMZ,
     :ICIUMZ, :FIGHTINIUMZ, :POISONIUMZ, :GROUNDIUMZ, :FLYINIUMZ,
     :PSYCHIUMZ, :BUGINIUMZ, :ROCKIUMZ, :GHOSTIUMZ, :DRAGONIUMZ,
     :DARKINIUMZ, :STEELIUMZ, :FAIRIUMZ].each { |z| pbReceiveItem(z) }
    pbReceiveItem(:ZRING)
    pbMessage("\\b\\PN\\b: All Z-Crystals AND a Z-Ring!")
  end
end

#===============================================================================
# QUEST 56: THE POKÉ BALL CRAFTER
# Reward: Apricorn Set + Apricorn Pokéballs
#===============================================================================

GameData::Quest.define :ball_crafter do |q|
  q.name "Apricorn Artisan"
  q.description "Collect 7 different Apricorns."
  q.giver "Ball Crafter Kurt"
  q.location "Azalea Town Workshop"
  
  q.on_complete do
    pbMessage("\\bKurt\\b: All 7 Apricorns! Perfect!")
    pbMessage("\\bKurt\\b: Let me make you special balls!")
    pbReceiveItem(:LEVELBALL, 5)
    pbReceiveItem(:LUREBALL, 5)
    pbReceiveItem(:MOONBALL, 5)
    pbReceiveItem(:FRIENDBALL, 5)
    pbReceiveItem(:LOVEBALL, 5)
    pbReceiveItem(:HEAVYBALL, 5)
    pbReceiveItem(:FASTBALL, 5)
    pbMessage("\\b\\PN\\b: All Apricorn balls! So stylish!")
  end
end

#===============================================================================
# QUEST 57: THE LEGENDARY GOLEM AWAKENER
# Reward: Light Ball + Thick Club
#===============================================================================

GameData::Quest.define :golem_awakener do |q|
  q.name "Golem Awakener"
  q.description "Awaken Regirock, Regice, and Registeel."
  q.giver "Ruin Explorer Brandon"
  q.location "Sealed Chamber"
  
  q.objective :awaken_golems, count: 3
  
  q.on_complete do
    pbMessage("\\bBrandon\\b: All three golems!")
    pbMessage("\\bBrandon\\b: You've unlocked ancient power!")
    pbMessage("\\bBrandon\\b: These signature items are yours!")
    pbReceiveItem(:LIGHTBALL)
    pbReceiveItem(:THICKCLUB)
    pbReceiveItem(:LUCKYPUNCH)
    pbMessage("\\b\\PN\\b: Signature held items! Rare finds!")
  end
end

#===============================================================================
# QUEST 58: THE RIVAL GAUNTLET
# Reward: Flame Orb + Toxic Orb
#===============================================================================

GameData::Quest.define :rival_gauntlet do |q|
  q.name "Rival Gauntlet"
  q.description "Defeat your rival 10 times throughout the journey."
  q.giver "Rival Marcus"
  q.location "Various"
  
  q.objective :defeat_rival, count: 10
  
  q.on_complete do
    pbMessage("\\bMarcus\\b: 10 losses to you...")
    pbMessage("\\bMarcus\\b: I have to admit, you're strong.")
    pbMessage("\\bMarcus\\b: Take these. You'll use them better than me.")
    pbReceiveItem(:FLAMEORB)
    pbReceiveItem(:TOXICORB)
    pbMessage("\\b\\PN\\b: Status orbs! Great for Guts strategies!")
  end
end

#===============================================================================
# QUEST 59: THE UNDERGROUND MINING TYCOON
# Reward: Odd Keystone + Spiritomb Encounter
#===============================================================================

GameData::Quest.define :mining_tycoon do |q|
  q.name "Mining Tycoon"
  q.description "Mine 100 items from the Underground."
  q.giver "Mining Expert Roark"
  q.location "Underground Base"
  
  q.objective :mine_items, count: 100
  
  q.on_complete do
    pbMessage("\\bRoark\\b: 100 treasures mined!")
    pbMessage("\\bRoark\\b: Look what I found down there...")
    pbMessage("\\bRoark\\b: An Odd Keystone with 108 souls!")
    pbReceiveItem(:ODDKEYSTONE)
    pbMessage("\\bRoark\\b: Touch it at the Hallowed Tower...")
    pbMessage("\\b\\PN\\b: Spiritomb! Finally I can get one!")
  end
end

#===============================================================================
# QUEST 60: THE TRADE EVOLUTION HELPER
# Reward: Link Cable (instant trade evolution)
#===============================================================================

GameData::Quest.define :trade_helper do |q|
  q.name "Trade Helper"
  q.description "Help 5 NPCs evolve their trade evolution Pokémon."
  q.giver "Trader Trevor"
  q.location "Trade Center"
  
  q.objective :help_trades, count: 5
  
  q.on_complete do
    pbMessage("\\bTrevor\\b: You helped 5 trainers!")
    pbMessage("\\bTrevor\\b: Here's a Link Cable!")
    pbMessage("\\bTrevor\\b: It evolves trade Pokémon WITHOUT trading!")
    pbReceiveItem(:LINKCABLE)
    pbMessage("\\b\\PN\\b: No trading needed? This changes everything!")
  end
end

#===============================================================================
# QUEST 61: THE SURPRISE TRADE CHAMPION
# Reward: Dream Ball x10
#===============================================================================

GameData::Quest.define :surprise_champ do |q|
  q.name "Surprise Champion"
  q.description "Complete 30 Surprise Trades."
  q.giver "Trade Master Y-Comm"
  q.location "Y-Comm Station"
  
  q.objective :surprise_trades, count: 30
  
  q.on_complete do
    pbMessage("\\bY-Comm\\b: 30 surprises! You spread joy!")
    pbMessage("\\bY-Comm\\b: Dream Balls for a dreamy trader!")
    pbReceiveItem(:DREAMBALL, 10)
    pbMessage("\\b\\PN\\b: Dream Balls! Perfect for Hidden Abilities!")
  end
end

#===============================================================================
# QUEST 62: THE EEVEE COLLECTOR
# Reward: All Eeveelutions (one of each)
#===============================================================================

GameData::Quest.define :eevee_collector do |q|
  q.name "Eeveelution Master"
  q.description "Own all 8 Eeveelutions at once."
  q.giver "Eevee Fan Club President"
  q.location "Eevee Fan Club"
  
  q.on_complete do
    pbMessage("\\bPresident\\b: ALL 8 EEVEELUTIONS!")
    pbMessage("\\bPresident\\b: You're the ultimate fan!")
    pbMessage("\\bPresident\\b: Here - special eggs for each!")
    # Give eggs of each Eeveelution
    pbGenerateEgg(:EEVEE)
    pbReceiveItem(:WATERSTONE)
    pbReceiveItem(:THUNDERSTONE)
    pbReceiveItem(:FIRESTONE)
    pbMessage("\\b\\PN\\b: More Eevees to evolve! I love it!")
  end
end

#===============================================================================
# QUEST 63: THE REGIONAL FORM RESEARCHER
# Reward: Regional Form Pokémon
#===============================================================================

GameData::Quest.define :regional_researcher do |q|
  q.name "Regional Researcher"
  q.description "Catch 10 Regional Form Pokémon."
  q.giver "Professor Laventon"
  q.location "Regional Studies Lab"
  
  q.objective :catch_regional, count: 10
  
  q.on_complete do
    pbMessage("\\bLaventon\\b: 10 regional variants! Fascinating!")
    pbMessage("\\bLaventon\\b: Here's a rare Galarian starter!")
    choice = pbShowCommands(nil, ["Galarian Ponyta", "Galarian Corsola", "Galarian Darumaka"])
    case choice
    when 0
      pbAddPokemon(:PONYTA, 30, :GALAR)
    when 1
      pbAddPokemon(:CORSOLA, 30, :GALAR)
    when 2
      pbAddPokemon(:DARUMAKA, 30, :GALAR)
    end
    pbMessage("\\b\\PN\\b: A Galarian Pokémon! So cool!")
  end
end

#===============================================================================
# QUEST 64: THE PARADOX HUNTER
# Reward: Booster Energy
#===============================================================================

GameData::Quest.define :paradox_hunter do |q|
  q.name "Paradox Hunter"
  q.description "Encounter 5 Paradox Pokémon in Area Zero."
  q.giver "Professor Turo/Sada"
  q.location "Area Zero Entrance"
  
  q.objective :encounter_paradox, count: 5
  
  q.on_complete do
    pbMessage("\\bProfessor\\b: 5 Paradox Pokémon!")
    pbMessage("\\bProfessor\\b: You've touched the fabric of time!")
    pbMessage("\\bProfessor\\b: Take this Booster Energy!")
    pbReceiveItem(:BOOSTERENERGY)
    pbMessage("\\b\\PN\\b: Booster Energy! Powers up Paradox abilities!")
  end
end

#===============================================================================
# QUEST 65: THE LEGENDARY TITAN CATCHER
# Reward: Rusted Sword + Rusted Shield
#===============================================================================

GameData::Quest.define :titan_catcher do |q|
  q.name "Titan Catcher"
  q.description "Defeat all 5 Titan Pokémon."
  q.giver "Titan Expert Arven"
  q.location "Titan Research Lab"
  
  q.objective :defeat_titans, count: 5
  
  q.on_complete do
    pbMessage("\\bArven\\b: All 5 Titans! Incredible!")
    pbMessage("\\bArven\\b: These ancient weapons are yours!")
    pbReceiveItem(:RUSTEDSWORD)
    pbReceiveItem(:RUSTEDSHIELD)
    pbMessage("\\b\\PN\\b: Zacian and Zamazenta's weapons!")
  end
end

#===============================================================================
# QUEST 66: THE POKÉMON RANGER
# Reward: Capture Styler + Partner Pokémon
#===============================================================================

GameData::Quest.define :pokemon_ranger do |q|
  q.name "Ranger Recruit"
  q.description "Complete 20 Ranger Missions."
  q.giver "Top Ranger Kellyn"
  q.location "Ranger Union"
  
  q.objective :ranger_missions, count: 20
  
  q.on_complete do
    pbMessage("\\bKellyn\\b: 20 missions! You're a top ranger!")
    pbMessage("\\bKellyn\\b: Here's your official Capture Styler!")
    pbMessage("\\bKellyn\\b: And a partner Pokémon!")
    pbReceiveItem(:CAPTURYSTYLER)
    pbAddPokemon(:PLUSLE, 25)
    pbAddPokemon(:MINUN, 25)
    pbMessage("\\b\\PN\\b: Plusle AND Minun! The perfect duo!")
  end
end

#===============================================================================
# QUEST 67: THE LEGENDARY BEAST MASTER
# Reward: Sacred Ash + Revival Herb x10
#===============================================================================

GameData::Quest.define :beast_master do |q|
  q.name "Beast Master"
  q.description "Catch Entei, Raikou, Suicune, and Ho-Oh."
  q.giver "Legendary Scholar Eusine"
  q.location "Bell Tower"
  
  q.on_complete do
    pbMessage("\\bEusine\\b: All four legends! My life's work!")
    pbMessage("\\bEusine\\b: Take these revival items!")
    pbReceiveItem(:SACREDASH)
    pbReceiveItem(:REVIVALHERB, 10)
    pbMessage("\\b\\PN\\b: Sacred Ash again! And Revival Herbs!")
  end
end

#===============================================================================
# QUEST 68: THE SHINY BREEDER
# Reward: Oval Charm
#===============================================================================

GameData::Quest.define :shiny_breeder do |q|
  q.name "Shiny Breeder"
  q.description "Hatch a shiny Pokémon from an egg."
  q.giver "Shiny Expert Masuda"
  q.location "Breeding Center"
  
  q.on_complete do
    pbMessage("\\bMasuda\\b: You hatched a shiny!")
    pbMessage("\\bMasuda\\b: Your dedication paid off!")
    pbMessage("\\bMasuda\\b: Take this Oval Charm!")
    pbMessage("\\bMasuda\\b: It makes eggs appear faster!")
    pbReceiveItem(:OVALCHARM)
    pbMessage("\\b\\PN\\b: Faster eggs = more shiny chances!")
  end
end

#===============================================================================
# QUEST 69: THE BATTLE TOWER LEGEND
# Reward: Ability Shield + Clear Amulet
#===============================================================================

GameData::Quest.define :tower_legend do |q|
  q.name "Tower Legend"
  q.description "Reach a 50-win streak in Battle Tower."
  q.giver "Tower Tycoon Palmer"
  q.location "Battle Tower Summit"
  
  q.objective :tower_streak, count: 50
  
  q.on_complete do
    pbMessage("\\bPalmer\\b: 50 WINS! Unbelievable!")
    pbMessage("\\bPalmer\\b: You've surpassed even me!")
    pbMessage("\\bPalmer\\b: These items suit a champion!")
    pbReceiveItem(:ABILITYSHIELD)
    pbReceiveItem(:CLEARAMULET)
    pbMessage("\\b\\PN\\b: Protection from stat drops and ability changes!")
  end
end

#===============================================================================
# QUEST 70: THE ULTIMATE COMPLETIONIST
# Reward: Mark Charm + All Marks
#===============================================================================

GameData::Quest.define :completionist do |q|
  q.name "True Completionist"
  q.description "Complete the entire Pokédex (all 400+ Pokémon)."
  q.giver "Professor Aldric"
  q.location "Research Laboratory"
  
  q.on_complete do
    pbMessage("\\bProfessor Aldric\\b: THE ENTIRE POKÉDEX!")
    pbMessage("\\bProfessor Aldric\\b: You've done what no one else could!")
    pbMessage("\\bProfessor Aldric\\b: Take this Mark Charm!")
    pbMessage("\\bProfessor Aldric\\b: It helps you find marked Pokémon!")
    pbReceiveItem(:MARKCHARM)
    pbMessage("\\b\\PN\\b: I've... I've really done it!")
    pbMessage("\\bProfessor Aldric\\b: You are a true Pokémon Master.")
  end
end

#===============================================================================
# STORY-RELATED SIDE QUESTS (71-80)
# These tie into the main story but are optional
#===============================================================================

#===============================================================================
# QUEST 71: THE ASHEN COVENANT - Part 1
# Reward: Intel Document
#===============================================================================

GameData::Quest.define :ashen_covenant_intel do |q|
  q.name "Ashen Covenant Intel"
  q.description "Gather intelligence on the Shattered Hand cult's activities."
  q.giver "Former Cultist"
  q.location "Hidden Alley"
  q.chapter_unlock 8  # Unlocks after Chapter 8
  
  q.objectives [
    { id: :find_informant, text: "Find the hidden informant" },
    { id: :cult_documents, text: "Retrieve cult documents from 3 locations" },
    { id: :return_intel, text: "Return the intel to the informant" }
  ]
  
  q.on_complete do
    pbMessage("\\bInformant\\b: You got them all...")
    pbMessage("\\bInformant\\b: These documents mention something called 'Nidhoggr'...")
    pbMessage("\\bInformant\\b: I don't know what it is, but it terrifies even Malachar.")
    pbReceiveItem(:CULTINTEL)
    pbMessage("\\b\\PN\\b: This could be useful...")
  end
end

GameData::Cutscene.define :sq_ashen_covenant_start do |scene|
  scene.play_bgm 'Pokemon RSE - Oceanic Museum'
  
  scene.message "A hooded figure beckons you into a dark alley..."
  scene.message "\\bInformant\\b: You're one of the Chosen, aren't you?"
  scene.message "\\bInformant\\b: I can tell by the mark on your hand."
  
  scene.message "\\b\\PN\\b: Who are you? How do you know about the marks?"
  
  scene.message "\\bInformant\\b: I... was one of them. The Shattered Hand."
  scene.message "\\bInformant\\b: But what Malachar is planning... it's madness."
  scene.message "\\bInformant\\b: I want to help you stop him."
  
  scene.message "\\bInformant\\b: Gather documents from their bases."
  scene.message "\\bInformant\\b: The old lighthouse, the abandoned mine, and the ruined church."
  scene.message "\\bInformant\\b: Bring them to me. I'll decrypt them."
end

#===============================================================================
# QUEST 72: GUARDIAN LEGENDS - Zacian's History
# Reward: Rusty Sword (upgradeable item)
#===============================================================================

GameData::Quest.define :guardian_zacian_history do |q|
  q.name "The Warrior's Legacy"
  q.description "Learn about Zacian's ancient history at the Shrine of Valor."
  q.giver "Elder Historian"
  q.location "Ancient Library"
  q.chapter_unlock 10
  
  q.objectives [
    { id: :find_tablets, text: "Find 5 Warrior Tablets" },
    { id: :visit_shrine, text: "Visit the Shrine of Valor" },
    { id: :solve_puzzle, text: "Solve the ancient puzzle" }
  ]
  
  q.on_complete do
    pbMessage("\\bElder\\b: You've uncovered the truth about Zacian!")
    pbMessage("\\bElder\\b: Long ago, Zacian was a mortal warrior...")
    pbMessage("\\bElder\\b: Who gave everything to protect this world.")
    pbMessage("\\bElder\\b: Take this ancient relic.")
    pbReceiveItem(:RUSTYSWORD)
    pbMessage("\\b\\PN\\b: A rusted sword? It feels... familiar somehow.")
  end
end

#===============================================================================
# QUEST 73: GUARDIAN LEGENDS - Xerneas's History
# Reward: Life Orb Fragment (upgradeable item)
#===============================================================================

GameData::Quest.define :guardian_xerneas_history do |q|
  q.name "The Life Giver's Legacy"
  q.description "Learn about Xerneas's ancient history at the Grove of Life."
  q.giver "Elderly Healer"
  q.location "Temple of the Fae"
  q.chapter_unlock 14
  
  q.objectives [
    { id: :find_petals, text: "Collect 7 Life Petals from ancient trees" },
    { id: :visit_grove, text: "Visit the Grove of Life" },
    { id: :witness_vision, text: "Witness a vision of the past" }
  ]
  
  q.on_complete do
    pbMessage("\\bHealer\\b: The vision showed you Xerneas's sacrifice...")
    pbMessage("\\bHealer\\b: When the world was dying, Xerneas gave its own life force.")
    pbMessage("\\bHealer\\b: This fragment holds a spark of that power.")
    pbReceiveItem(:LIFEORBFRAGMENT)
    pbMessage("\\b\\PN\\b: I can feel warmth emanating from it...")
  end
end

#===============================================================================
# QUEST 74: GUARDIAN LEGENDS - Yveltal's History
# Reward: Shadow Feather (upgradeable item)
#===============================================================================

GameData::Quest.define :guardian_yveltal_history do |q|
  q.name "The Destroyer's Legacy"
  q.description "Learn about Yveltal's ancient history at the Crypt of Endings."
  q.giver "Death Sage"
  q.location "Forgotten Catacombs"
  q.chapter_unlock 18
  
  q.objectives [
    { id: :find_bones, text: "Collect 6 Ancient Bones" },
    { id: :enter_crypt, text: "Enter the Crypt of Endings" },
    { id: :face_test, text: "Pass the test of acceptance" }
  ]
  
  q.on_complete do
    pbMessage("\\bDeath Sage\\b: You passed the test...")
    pbMessage("\\bDeath Sage\\b: Yveltal is not evil. Death is not evil.")
    pbMessage("\\bDeath Sage\\b: Without endings, there can be no beginnings.")
    pbMessage("\\bDeath Sage\\b: Take this feather shed by Yveltal itself.")
    pbReceiveItem(:SHADOWFEATHER)
    pbMessage("\\b\\PN\\b: It's cold, but somehow... comforting.")
  end
end

#===============================================================================
# QUEST 75: CULT SPY NETWORK
# Reward: Cult Robes (disguise item)
#===============================================================================

GameData::Quest.define :cult_spy do |q|
  q.name "Infiltration"
  q.description "Obtain cult robes to infiltrate Shattered Hand meetings."
  q.giver "Resistance Leader"
  q.location "Underground Base"
  q.chapter_unlock 15
  
  q.objectives [
    { id: :defeat_cultists, text: "Defeat 10 cult members" },
    { id: :steal_robes, text: "Obtain cultist robes" },
    { id: :infiltrate_meeting, text: "Attend a cult meeting undetected" }
  ]
  
  q.on_complete do
    pbMessage("\\bResistance Leader\\b: You got in and out undetected!")
    pbMessage("\\bResistance Leader\\b: What did you learn?")
    pbMessage("\\b\\PN\\b: They're planning something big at the Eternal Forest...")
    pbMessage("\\bResistance Leader\\b: Keep the robes. You might need them again.")
    pbReceiveItem(:CULTROBES)
  end
end

GameData::Cutscene.define :sq_cult_spy_meeting do |scene|
  scene.play_bgm 'Pokemon RSE - Team Aqua-Magma Hideout'
  
  scene.message "\\i[You are wearing the cult robes]"
  scene.message "Dozens of hooded figures gathered in the underground chamber."
  
  scene.message "\\bCult Leader\\b: Brothers and sisters of the Shattered Hand!"
  scene.message "\\bCult Leader\\b: The day of reckoning approaches!"
  
  scene.message "\\bCult Leader\\b: Soon, Lord Malachar will break the prison!"
  scene.message "\\bCult Leader\\b: And Hoopa will grant us the power to reshape this world!"
  
  scene.message "\\bCultists\\b: PRAISE MALACHAR! PRAISE HOOPA!"
  
  scene.message "\\b\\PN's Thoughts\\b: (So they're using Hoopa's power...)"
  scene.message "\\b\\PN's Thoughts\\b: (But for what exactly?)"
  
  scene.message "\\bCult Leader\\b: The corruption devices are nearly complete!"
  scene.message "\\bCult Leader\\b: Soon the Eternal Forest will fall!"
  
  scene.message "\\b\\PN's Thoughts\\b: (I need to warn the others!)"
end

#===============================================================================
# QUEST 76: THE LOST CHAMPION
# Reward: Champion's Badge
#===============================================================================

GameData::Quest.define :lost_champion do |q|
  q.name "The Forgotten Champion"
  q.description "Discover the truth about the region's first Champion."
  q.giver "Old Champion's Ghost"
  q.location "Champion's Grave"
  q.chapter_unlock 20
  
  q.objectives [
    { id: :find_grave, text: "Find the hidden grave" },
    { id: :collect_badges, text: "Collect 8 Gym Badges" },
    { id: :defeat_ghost, text: "Defeat the Champion's spirit" }
  ]
  
  q.on_complete do
    pbMessage("\\bGhost\\b: You remind me of myself, long ago...")
    pbMessage("\\bGhost\\b: I too fought against an ancient evil.")
    pbMessage("\\bGhost\\b: Take my badge. May it bring you fortune.")
    pbReceiveItem(:CHAMPIONSBADGE)
    pbMessage("\\bGhost\\b: The guardians chose well this time...")
  end
end

#===============================================================================
# QUEST 77: LYRA'S FAMILY LEGACY
# Reward: Grandmother's Locket
#===============================================================================

GameData::Quest.define :lyra_family do |q|
  q.name "Lyra's Heritage"
  q.description "Help Lyra uncover her family's connection to Xerneas."
  q.giver "Lyra's Grandmother"
  q.location "Family Farm"
  q.chapter_unlock 14
  q.playable_character :lyra
  
  q.objectives [
    { id: :visit_grandmother, text: "Visit grandmother's farm" },
    { id: :find_heirlooms, text: "Find 3 family heirlooms" },
    { id: :unlock_memory, text: "Unlock the hidden memory" }
  ]
  
  q.on_complete do
    pbMessage("\\bGrandmother\\b: I should have told you sooner, child...")
    pbMessage("\\bGrandmother\\b: Our family has served Xerneas for generations.")
    pbMessage("\\bGrandmother\\b: Take my locket. Your mother wore it on her wedding day.")
    pbReceiveItem(:GRANDMASLOCKET)
    pbMessage("\\bLyra\\b: *tears up* Grandmother...")
  end
end

#===============================================================================
# QUEST 78: KAEL'S ORPHANAGE
# Reward: Mira's Bracelet
#===============================================================================

GameData::Quest.define :kael_orphanage do |q|
  q.name "Shadows of the Past"
  q.description "Help Kael confront his past at the orphanage."
  q.giver "Old Caretaker"
  q.location "Ruined Orphanage"
  q.chapter_unlock 22
  q.playable_character :kael
  
  q.objectives [
    { id: :return_orphanage, text: "Return to the orphanage ruins" },
    { id: :face_memories, text: "Confront painful memories" },
    { id: :find_bracelet, text: "Find Mira's hidden treasure" }
  ]
  
  q.on_complete do
    pbMessage("\\bKael\\b: (This place... I remember...)")
    pbMessage("\\bKael\\b: (Mira used to hide things here...)")
    
    # Find bracelet
    pbMessage("You found a small box hidden in the floorboards.")
    pbMessage("Inside was a simple bracelet with the initials 'M.K.' carved into it.")
    
    pbReceiveItem(:MIRASBRACELET)
    pbMessage("\\bKael\\b: ...Mira.")
    pbMessage("\\bKael\\b: (I won't forget you. But I have to keep living.)")
  end
end

#===============================================================================
# QUEST 79: THE THREE MARKS
# Reward: Trinity Charm
#===============================================================================

GameData::Quest.define :three_marks do |q|
  q.name "The Trinity"
  q.description "Complete challenges representing all three guardians."
  q.giver "Ancient Spirit"
  q.location "Temple of Balance"
  q.chapter_unlock 25
  
  q.objectives [
    { id: :valor_trial, text: "Complete the Trial of Valor (Zacian)" },
    { id: :life_trial, text: "Complete the Trial of Life (Xerneas)" },
    { id: :death_trial, text: "Complete the Trial of Endings (Yveltal)" },
    { id: :balance_achieved, text: "Achieve perfect balance" }
  ]
  
  q.on_complete do
    pbMessage("\\bAncient Spirit\\b: You have proven yourselves worthy.")
    pbMessage("\\bAncient Spirit\\b: Valor, Life, and Death in perfect harmony.")
    pbMessage("\\bAncient Spirit\\b: Take this Trinity Charm.")
    pbMessage("\\bAncient Spirit\\b: It will strengthen the bond between your souls.")
    pbReceiveItem(:TRINITYCHARM)
    pbMessage("\\bAncient Spirit\\b: The three of you... are stronger together.")
  end
end

#===============================================================================
# QUEST 80: BEFORE THE FINAL BATTLE
# Reward: Hope's Light (key item for final boss)
#===============================================================================

GameData::Quest.define :final_preparation do |q|
  q.name "Hope's Light"
  q.description "Gather the hopes and prayers of everyone you've helped."
  q.giver "All Previous Quest NPCs"
  q.location "Various"
  q.chapter_unlock 32
  
  q.objectives [
    { id: :visit_joey, text: "Receive Joey's encouragement" },
    { id: :visit_helena, text: "Receive Helena's blessing" },
    { id: :visit_professor, text: "Receive the Professor's wisdom" },
    { id: :visit_all, text: "Visit all other quest NPCs" },
    { id: :light_forms, text: "Watch Hope's Light form" }
  ]
  
  q.on_complete do
    pbMessage("As you gathered everyone's hopes and prayers...")
    pbMessage("A brilliant light began to form in your hands.")
    
    pbMessage("\\bJoey's Voice\\b: You can do it, \\PN!")
    pbMessage("\\bHelena's Voice\\b: We believe in you!")
    pbMessage("\\bProfessor's Voice\\b: The world is counting on you...")
    
    pbReceiveItem(:HOPESLIGHT)
    
    pbMessage("\\b\\PN\\b: ...Everyone's counting on us.")
    pbMessage("\\bLyra\\b: We won't let them down.")
    pbMessage("\\bKael\\b: ...Let's finish this.")
  end
end

GameData::Cutscene.define :sq_hopes_light_complete do |scene|
  scene.play_bgm 'Pokemon XY - Snowbelle City'
  
  scene.message "The light pulsed with warmth in your hands."
  scene.message "Every person you'd helped, every life you'd touched..."
  scene.message "Their hopes crystallized into pure energy."
  
  scene.message "\\bLyra\\b: It's beautiful..."
  scene.message "\\bKael\\b: ...All this... for us?"
  
  scene.message "\\b\\PN\\b: Not just for us. For everyone."
  scene.message "\\b\\PN\\b: We're carrying their hopes now."
  
  scene.message "\\bLyra\\b: Then we definitely can't lose."
  scene.message "\\bKael\\b: *nods* We won't."
  
  scene.message "The three of you stood together, ready for the final battle."
  scene.message "Whatever happened next... you would face it as one."
end

#===============================================================================
# QUEST 76: KAEL'S PAST - Orphanage Memories
# Unlocks after Chapter 25, reveals Kael's backstory
# Reward: Shadow Oath Badge (boosts Dark-type moves)
#===============================================================================

GameData::Quest.define :kaels_past do |q|
  q.name "Shadows of the Orphanage"
  q.description "Help Kael confront his past at the ruins of St. Aegis Orphanage."
  q.giver "Kael"
  q.location "Ruins of Aegis Town"
  q.chapter_unlock 25
  
  q.objectives [
    { id: :find_ruins, text: "Find the orphanage ruins" },
    { id: :recover_locket, text: "Recover Kael's sister's locket" },
    { id: :confront_memory, text: "Face the memory of the fire" },
    { id: :defeat_shadow, text: "Battle Kael's Shadow Self" }
  ]
  
  q.on_complete do
    pbMessage("\\bKael\\b: ...I remember now. Everything.")
    pbMessage("\\bKael\\b: My sister... she saved me that night.")
    pbReceiveItem(:SHADOWOATHBADGE)
    pbMessage("\\bKael\\b: I've been running from this for so long.")
    pbMessage("\\bKael\\b: But now... I can finally move forward.")
  end
end

GameData::Cutscene.define :sq_kaels_past_start do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'
  
  scene.message "\\bKael\\b: \\PN... can I ask you something?"
  scene.message "\\bKael\\b: There's a place I need to visit."
  scene.message "\\bKael\\b: I've been putting it off for years, but..."
  
  scene.message "\\b\\PN\\b: Where is it?"
  
  scene.message "\\bKael\\b: ...The orphanage where I grew up."
  scene.message "\\bKael\\b: It burned down when I was seven."
  scene.message "\\bKael\\b: I... I don't remember what happened."
  
  scene.message "\\bLyra\\b: We'll go with you."
  scene.message "\\bKael\\b: ...Thanks."
end

GameData::Cutscene.define :sq_kaels_past_ruins do |scene|
  scene.play_bgm 'Pokemon XY - Empty Streets'
  
  scene.message "The ruins of St. Aegis Orphanage stood silent."
  scene.message "Charred beams and crumbling walls told of tragedy long past."
  
  scene.message "\\bKael\\b: ...It's smaller than I remember."
  scene.message "\\bKael\\b: Everything always seems bigger when you're a kid."
  
  scene.message "\\bLyra\\b: What are we looking for?"
  
  scene.message "\\bKael\\b: My sister's locket. She... she was wearing it that night."
  scene.message "\\bKael\\b: If I can find it, maybe... maybe I'll remember."
  
  # TODO: Event Sequence
  # Search through rubble
  # Find hidden basement
  # Discover memorial for orphans who didn't survive
  
  scene.message "\\b\\PN\\b: Kael, over here. I found something."
  scene.message "A small silver locket, tarnished but intact."
  
  scene.message "\\bKael\\b: ...That's it. That's hers."
  scene.message "\\bKael\\b: *takes locket* Sister..."
end

GameData::Cutscene.define :sq_kaels_past_memory do |scene|
  scene.play_bgm 'Pokemon SM - Aether Paradise'
  
  scene.message "As Kael held the locket, memories flooded back."
  
  # Flashback sequence
  scene.message "\\b[Flashback]\\b"
  scene.message "\\bYoung Kael\\b: Sister! The building is on fire!"
  scene.message "\\bKael's Sister\\b: I know, Kael. Take my hand."
  scene.message "\\bKael's Sister\\b: We have to get the others out."
  
  scene.message "\\bYoung Kael\\b: I'm scared..."
  scene.message "\\bKael's Sister\\b: I know. But you're brave."
  scene.message "\\bKael's Sister\\b: Take this locket. Keep it safe for me."
  
  scene.message "A beam collapsed, separating them."
  
  scene.message "\\bKael's Sister\\b: Kael! Go! Get out!"
  scene.message "\\bYoung Kael\\b: I won't leave you!"
  scene.message "\\bKael's Sister\\b: You have to live, Kael!"
  scene.message "\\bKael's Sister\\b: Live for both of us!"
  
  scene.message "\\b[End Flashback]\\b"
  
  scene.message "\\bKael\\b: ...She pushed me out. Saved my life."
  scene.message "\\bKael\\b: And I... I forgot her face. Her name."
  scene.message "\\bKael\\b: How could I forget?"
  
  scene.message "A dark shadow manifested behind Kael."
  scene.message "\\bShadow Kael\\b: Because you wanted to forget."
  scene.message "\\bShadow Kael\\b: The guilt. The survivor's shame."
end

GameData::Cutscene.define :sq_kaels_past_battle do |scene|
  scene.play_bgm 'Pokemon USUM - Battle! Ultra Necrozma'
  
  scene.message "\\bShadow Kael\\b: You let her die."
  scene.message "\\bShadow Kael\\b: You were weak. You couldn't save anyone."
  
  scene.message "\\bKael\\b: ...Maybe you're right."
  scene.message "\\bKael\\b: But I'm not that scared kid anymore."
  
  scene.message "\\bLyra\\b: Kael, we're with you!"
  scene.message "\\b\\PN\\b: You don't have to face this alone!"
  
  scene.message "\\bKael\\b: I know. That's why I can do this now."
  scene.message "\\bKael\\b: Come on, shadow. Let's end this."
  
  # Battle: Shadow Kael (uses Dark-type team)
  # Umbreon, Absol, Zoroark, Shadow Greninja
end

GameData::Cutscene.define :sq_kaels_past_complete do |scene|
  scene.play_bgm 'Pokemon XY - Friends Forever'
  
  scene.message "The shadow dissipated, merging back into Kael."
  
  scene.message "\\bKael\\b: ...Her name was Sera."
  scene.message "\\bKael\\b: Sera. My sister Sera."
  scene.message "\\bKael\\b: *clutches locket* I remember now."
  
  scene.message "\\bLyra\\b: Are you okay?"
  
  scene.message "\\bKael\\b: ...Yeah. For the first time in years."
  scene.message "\\bKael\\b: She didn't die so I could hide in the shadows."
  scene.message "\\bKael\\b: She died so I could live."
  
  scene.message "\\bKael\\b: \\PN, Lyra... thank you."
  scene.message "\\bKael\\b: For coming with me. For not giving up on me."
  
  scene.message "\\b\\PN\\b: That's what friends are for."
  
  scene.message "\\bKael\\b: ...Friends. Yeah."
  scene.message "\\bKael\\b: *small smile* I like the sound of that."
end

#===============================================================================
# QUEST 77: LYRA'S SECRET - Crown Resonance
# Unlocks after Chapter 30, reveals Lyra's connection to Crown magic
# Reward: Resonance Crystal (boosts Psychic/Fairy moves)
#===============================================================================

GameData::Quest.define :lyras_secret do |q|
  q.name "Echoes of the Crown"
  q.description "Investigate why Lyra has strange reactions near Crown artifacts."
  q.giver "Lyra"
  q.location "Ancient Crown Temple"
  q.chapter_unlock 30
  
  q.objectives [
    { id: :investigate_reactions, text: "Study Lyra's Crown resonance" },
    { id: :find_temple, text: "Locate the Ancient Crown Temple" },
    { id: :pass_trials, text: "Complete the Temple's three trials" },
    { id: :learn_truth, text: "Discover Lyra's ancestral secret" }
  ]
  
  q.on_complete do
    pbMessage("\\bLyra\\b: I'm... descended from the Crown Keepers?")
    pbMessage("\\bLyra\\b: That's why the artifacts react to me...")
    pbReceiveItem(:RESONANCECRYSTAL)
    pbMessage("\\bLyra\\b: This power... I'll use it to protect everyone.")
  end
end

GameData::Cutscene.define :sq_lyras_secret_start do |scene|
  scene.play_bgm 'Pokemon ORAS - Mt. Pyre Peak'
  
  scene.message "\\bLyra\\b: \\PN, something strange has been happening."
  scene.message "\\bLyra\\b: Every time we get near a Crown artifact..."
  scene.message "\\bLyra\\b: I feel this... pull. Like it's calling to me."
  
  scene.message "\\b\\PN\\b: Have you always felt this?"
  
  scene.message "\\bLyra\\b: No, it started when I touched the Crown Pendant."
  scene.message "\\bLyra\\b: I heard... voices. Ancient voices."
  
  scene.message "\\bKael\\b: That's not normal."
  scene.message "\\bLyra\\b: I know. That's why I need to understand what's happening."
  scene.message "\\bLyra\\b: My grandmother mentioned an old temple once..."
  scene.message "\\bLyra\\b: She said our family had 'obligations.'"
end

GameData::Cutscene.define :sq_lyras_secret_temple do |scene|
  scene.play_bgm 'Pokemon BW - Relic Castle'
  
  scene.message "The Ancient Crown Temple rose from the mountainside."
  scene.message "Its architecture pre-dated any known civilization."
  
  scene.message "\\bKael\\b: This place is old. Really old."
  scene.message "\\bLyra\\b: ...The voices are louder here."
  
  # TODO: Event Sequence
  # The temple doors respond only to Lyra's touch
  # Ancient mechanisms spring to life
  
  scene.message "\\b\\PN\\b: The temple recognized you, Lyra."
  
  scene.message "\\bLyra\\b: I know. I think... I think I was meant to come here."
  scene.message "\\bLyra\\b: Let's see what's inside."
end

GameData::Cutscene.define :sq_lyras_secret_trial1 do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'
  
  scene.message "\\b[Trial of Mind]\\b"
  scene.message "An ethereal voice echoed through the chamber."
  
  scene.message "\\bVoice\\b: Child of the Keepers, prove your wisdom."
  scene.message "\\bVoice\\b: The Crown grants power. What must balance power?"
  
  scene.message "\\bLyra\\b: ...Responsibility."
  scene.message "\\bLyra\\b: Power without responsibility is tyranny."
  
  scene.message "\\bVoice\\b: You speak truth. Proceed."
  
  scene.message "The first seal illuminated with golden light."
end

GameData::Cutscene.define :sq_lyras_secret_trial2 do |scene|
  scene.play_bgm 'Pokemon SM - Altar of the Sunne'
  
  scene.message "\\b[Trial of Heart]\\b"
  
  scene.message "\\bVoice\\b: Child of the Keepers, prove your compassion."
  scene.message "\\bVoice\\b: Show us the bonds that give you strength."
  
  # TODO: Event Sequence
  # Lyra must demonstrate her connections to allies
  # Memories of helping others flash by
  
  scene.message "\\bLyra\\b: I fight for my friends. For the people I love."
  scene.message "\\bLyra\\b: \\PN, Kael, everyone we've met on this journey..."
  scene.message "\\bLyra\\b: They're my strength."
  
  scene.message "\\bVoice\\b: Your heart is true. Proceed."
  
  scene.message "The second seal blazed with warm light."
end

GameData::Cutscene.define :sq_lyras_secret_trial3 do |scene|
  scene.play_bgm 'Pokemon USUM - Ultra Wormhole'
  
  scene.message "\\b[Trial of Sacrifice]\\b"
  
  scene.message "\\bVoice\\b: Child of the Keepers, prove your resolve."
  scene.message "\\bVoice\\b: Would you give everything to protect what matters?"
  
  scene.message "\\bLyra\\b: ..."
  scene.message "\\bLyra\\b: Yes. Without hesitation."
  
  scene.message "\\bKael\\b: Lyra, don't—"
  
  scene.message "\\bLyra\\b: If my life could save the world, I'd give it."
  scene.message "\\bLyra\\b: But I'd rather live... and fight... and win."
  scene.message "\\bLyra\\b: That's why I won't give up. Ever."
  
  scene.message "\\bVoice\\b: ...Well spoken, young one."
  scene.message "\\bVoice\\b: True sacrifice is not seeking death."
  scene.message "\\bVoice\\b: It is living each day for others."
  
  scene.message "The final seal shattered, revealing the inner sanctum."
end

GameData::Cutscene.define :sq_lyras_secret_revelation do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
  scene.message "Within the sanctum stood an ancient mural."
  scene.message "It depicted a lineage stretching back millennia."
  
  scene.message "\\bLyra\\b: These people... they're all..."
  
  scene.message "\\bVoice\\b: Your ancestors, Lyra of the Keeper bloodline."
  scene.message "\\bVoice\\b: When the Crown was forged, your family swore an oath."
  scene.message "\\bVoice\\b: To guard it. To ensure it was never misused."
  
  scene.message "\\bLyra\\b: But... my grandmother never mentioned..."
  
  scene.message "\\bVoice\\b: The knowledge was lost. Wars, disasters, time itself..."
  scene.message "\\bVoice\\b: But the blood remembers."
  scene.message "\\bVoice\\b: That is why the artifacts call to you."
  
  scene.message "\\bKael\\b: So Lyra is basically Crown royalty?"
  scene.message "\\bVoice\\b: Not royalty. Something greater. A guardian."
end

GameData::Cutscene.define :sq_lyras_secret_complete do |scene|
  scene.play_bgm 'Pokemon XY - Cyllage City'
  
  scene.message "\\bLyra\\b: This is... a lot to take in."
  scene.message "\\bLyra\\b: My whole life, I felt like there was something more."
  scene.message "\\bLyra\\b: Some purpose I couldn't quite see."
  
  scene.message "\\b\\PN\\b: How do you feel now?"
  
  scene.message "\\bLyra\\b: Honestly? Relieved."
  scene.message "\\bLyra\\b: It explains why I could never just... ignore injustice."
  scene.message "\\bLyra\\b: Why I had to help people."
  
  scene.message "\\bKael\\b: That's just who you are, Lyra."
  scene.message "\\bKael\\b: Bloodline or not."
  
  scene.message "\\bLyra\\b: *smiles* Thanks, Kael."
  scene.message "\\bLyra\\b: \\PN, I promise—I'll use this power to help us win."
  scene.message "\\bLyra\\b: The Crown won't fall into the wrong hands. Not on my watch."
end

#===============================================================================
# QUEST 78: ELENA'S LEGACY - The Lost Princess
# Unlocks after Chapter 40, reveals Elena's true fate
# Reward: Crown Heir Ring (all stats +10% in decisive battles)
#===============================================================================

GameData::Quest.define :elenas_legacy do |q|
  q.name "The Lost Princess"
  q.description "Uncover the truth about Princess Elena's disappearance 20 years ago."
  q.giver "Royal Historian"
  q.location "Crownheart Palace Archives"
  q.chapter_unlock 40
  
  q.objectives [
    { id: :find_documents, text: "Find Elena's hidden journals" },
    { id: :visit_locations, text: "Visit places from Elena's past" },
    { id: :find_survivor, text: "Locate someone who knew Elena" },
    { id: :learn_truth, text: "Discover what really happened" },
    { id: :honor_memory, text: "Honor Elena's memory at the memorial" }
  ]
  
  q.on_complete do
    pbMessage("\\bRoyal Historian\\b: So that's what happened to Princess Elena...")
    pbMessage("\\bRoyal Historian\\b: She sacrificed everything to seal away Eternatus.")
    pbReceiveItem(:CROWNHEIRRING)
    pbMessage("\\bRoyal Historian\\b: This ring was meant for her heir...")
    pbMessage("\\bRoyal Historian\\b: I believe she would want you to have it.")
  end
end

GameData::Cutscene.define :sq_elenas_legacy_start do |scene|
  scene.play_bgm 'Pokemon XY - Parfum Palace'
  
  scene.message "\\bRoyal Historian\\b: Ah, travelers. You seek knowledge?"
  scene.message "\\bRoyal Historian\\b: I am the keeper of royal histories."
  
  scene.message "\\b\\PN\\b: We want to learn about Princess Elena."
  
  scene.message "\\bRoyal Historian\\b: *surprised* The Lost Princess?"
  scene.message "\\bRoyal Historian\\b: That story is... complicated."
  scene.message "\\bRoyal Historian\\b: Twenty years ago, Elena vanished."
  scene.message "\\bRoyal Historian\\b: The official story says she fled her duties."
  
  scene.message "\\bLyra\\b: But that's not true, is it?"
  
  scene.message "\\bRoyal Historian\\b: *sighs* I've always suspected more."
  scene.message "\\bRoyal Historian\\b: Her journals are hidden in the archives."
  scene.message "\\bRoyal Historian\\b: Find them, and perhaps you'll learn the truth."
end

GameData::Cutscene.define :sq_elenas_legacy_journals do |scene|
  scene.play_bgm 'Pokemon HGSS - National Park'
  
  scene.message "Deep within the archives, a hidden chamber awaited."
  scene.message "Elena's personal journals sat untouched for two decades."
  
  scene.message "\\bLyra\\b: *reading* 'Day 47: The Crown fragments grow unstable.'"
  scene.message "\\bLyra\\b: 'Father refuses to acknowledge the danger.'"
  scene.message "\\bLyra\\b: 'If Eternatus awakens, everything will be lost.'"
  
  scene.message "\\bKael\\b: Eternatus? The same one Cedric is trying to awaken?"
  
  scene.message "\\b\\PN\\b: *reading* 'Day 112: I've found a way.'"
  scene.message "\\b\\PN\\b: 'The sealing ritual requires a sacrifice.'"
  scene.message "\\b\\PN\\b: 'My bloodline can contain the beast.'"
  
  scene.message "\\bLyra\\b: She was planning to..."
  
  scene.message "\\b\\PN\\b: Keep reading. 'Day 113: Tomorrow, I will save our kingdom.'"
  scene.message "\\b\\PN\\b: 'Tell no one. If they knew, they would try to stop me.'"
  scene.message "\\b\\PN\\b: 'This is my duty as heir to the Crown.'"
end

GameData::Cutscene.define :sq_elenas_legacy_survivor do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'
  
  scene.message "Following the journal's clues led to a small cottage."
  scene.message "An elderly knight answered the door."
  
  scene.message "\\bOld Knight\\b: Who... who are you?"
  
  scene.message "\\b\\PN\\b: We're investigating Princess Elena's disappearance."
  
  scene.message "\\bOld Knight\\b: *eyes widen* After all these years..."
  scene.message "\\bOld Knight\\b: I was her personal guard. Sir Marcus."
  scene.message "\\bOld Knight\\b: I was the only one who knew her plan."
  
  scene.message "\\bLyra\\b: What happened that night?"
  
  scene.message "\\bSir Marcus\\b: She made me swear to let her go."
  scene.message "\\bSir Marcus\\b: Said the kingdom needed protecting more than she needed life."
  scene.message "\\bSir Marcus\\b: I watched her walk into that portal..."
  scene.message "\\bSir Marcus\\b: And it sealed behind her."
end

GameData::Cutscene.define :sq_elenas_legacy_truth do |scene|
  scene.play_bgm 'Pokemon USUM - Vast Poni Canyon'
  
  scene.message "\\bSir Marcus\\b: For twenty years, I've kept her secret."
  scene.message "\\bSir Marcus\\b: The king declared her a traitor to save face."
  scene.message "\\bSir Marcus\\b: But Elena was the greatest hero this kingdom ever had."
  
  scene.message "\\bKael\\b: She sealed Eternatus... by sacrificing herself?"
  
  scene.message "\\bSir Marcus\\b: Her soul became the lock."
  scene.message "\\bSir Marcus\\b: As long as her spirit endures, the seal holds."
  scene.message "\\bSir Marcus\\b: But now... with the Crown shattering..."
  
  scene.message "\\bLyra\\b: The seal is weakening."
  scene.message "\\bLyra\\b: That's why Eternatus is stirring again."
  
  scene.message "\\bSir Marcus\\b: You must stop whoever is trying to break the seal."
  scene.message "\\bSir Marcus\\b: If Eternatus awakens while the Crown is shattered..."
  scene.message "\\bSir Marcus\\b: Elena's sacrifice will have been for nothing."
end

GameData::Cutscene.define :sq_elenas_legacy_memorial do |scene|
  scene.play_bgm 'Pokemon SWSH - Ballonlea'
  
  scene.message "Sir Marcus led you to a hidden grove."
  scene.message "A small shrine stood among ancient trees."
  
  scene.message "\\bSir Marcus\\b: I built this for her."
  scene.message "\\bSir Marcus\\b: Every year, I come here to remember."
  
  # TODO: Event Sequence
  # Place flowers at the memorial
  # A ghostly presence briefly appears
  
  scene.message "For a moment, a translucent figure shimmered."
  
  scene.message "\\bElena's Spirit\\b: ...Thank you for remembering."
  scene.message "\\bElena's Spirit\\b: The seal... it won't hold much longer."
  scene.message "\\bElena's Spirit\\b: Please... finish what I started."
  
  scene.message "The vision faded, but warmth remained."
  
  scene.message "\\b\\PN\\b: We will, Princess Elena."
  scene.message "\\bLyra\\b: Your sacrifice won't be forgotten."
  scene.message "\\bKael\\b: We'll stop Cedric. We'll protect the kingdom."
end

GameData::Cutscene.define :sq_elenas_legacy_complete do |scene|
  scene.play_bgm 'Pokemon XY - Friends Forever'
  
  scene.message "\\bSir Marcus\\b: *tears in eyes* Thank you, young ones."
  scene.message "\\bSir Marcus\\b: For learning the truth."
  scene.message "\\bSir Marcus\\b: For honoring her memory."
  
  scene.message "\\bSir Marcus\\b: Take this ring."
  scene.message "\\bSir Marcus\\b: It belonged to Elena's mother, the Queen."
  scene.message "\\bSir Marcus\\b: It was meant for the Crown heir."
  
  scene.message "\\b\\PN\\b: We can't accept this..."
  
  scene.message "\\bSir Marcus\\b: You carry on her mission."
  scene.message "\\bSir Marcus\\b: That makes you her heir in spirit, if not blood."
  scene.message "\\bSir Marcus\\b: Wear it with honor."
  
  scene.message "\\bLyra\\b: We won't let her down."
  scene.message "\\bKael\\b: The kingdom will know the truth someday."
  scene.message "\\b\\PN\\b: Princess Elena will be remembered as a hero."
  
  scene.message "\\bSir Marcus\\b: *smiles* That's all she ever wanted."
end

#===============================================================================
# FULL QUEST REWARD SUMMARY (1-78)
#===============================================================================
# 1-15: Basic competitive items
# 16-40: Advanced items and rare Pokémon
# 41-70: Mega/Z/Gmax items, mints, patches, and legendary gear
# 71-75: Story-related items (Guardian legends, cult infiltration)
# 76-78: Character backstory quests (Kael, Lyra, Elena)
#
# Total Unique Rewards:
# - Master Ball, Gold Bottle Cap, Ability Patch
# - All Choice Items, Life Orb, Leftovers
# - Shiny Charm, Oval Charm, Mark Charm
# - All Type Gems, All Z-Crystals, All Mints
# - Mega Stones, Tera Orb, Booster Energy
# - Key Stone, Link Cable, Power Items
# - Beast Balls, Dream Balls, Apricorn Balls
# - Shadow Oath Badge, Resonance Crystal, Crown Heir Ring
# - Multiple Shiny Pokémon rewards!
#===============================================================================

#===============================================================================
# QUEST 79: JOEY'S RATTATA - The Ultimate Challenge
# Joey's obsession reaches its peak - can you beat his perfect Rattata?
# Reward: Focus Sash + Top Percentage Badge
#===============================================================================

GameData::Quest.define :joeys_rattata do |q|
  q.name "Top Percentage"
  q.description "Joey claims his Rattata is in the top percentage. Prove him wrong... if you can."
  q.giver "Joey"
  q.location "Champion Road"
  q.chapter_unlock 45
  
  q.objectives [
    { id: :find_joey, text: "Find Joey on Champion Road" },
    { id: :hear_story, text: "Listen to Joey's Rattata journey" },
    { id: :battle_joey, text: "Battle Joey's ultimate Rattata" },
    { id: :acknowledge, text: "Acknowledge the top percentage" }
  ]
  
  q.on_complete do
    pbMessage("\\bJoey\\b: See?! I TOLD you my Rattata was special!")
    pbMessage("\\bJoey\\b: Years of training, perfect breeding, optimal EV spreads...")
    pbReceiveItem(:FOCUSSASH)
    pbReceiveItem(:TOPPERCENTBADGE)
    pbMessage("\\bJoey\\b: Now everyone will know the truth!")
  end
end

GameData::Cutscene.define :sq_joeys_rattata_start do |scene|
  scene.play_bgm 'Pokemon HGSS - Route 30'
  
  scene.message "\\bJoey\\b: \\PN! Over here!"
  scene.message "\\bJoey\\b: I've been waiting for this moment my whole life!"
  
  scene.message "\\b\\PN\\b: Joey? What are you doing on Champion Road?"
  
  scene.message "\\bJoey\\b: Training! Preparing!"
  scene.message "\\bJoey\\b: Everyone laughed at me and my Rattata."
  scene.message "\\bJoey\\b: 'Just a Rattata,' they said. 'Use a real Pokémon,' they said."
  
  scene.message "\\bJoey\\b: But I BELIEVED."
  scene.message "\\bJoey\\b: And now, my Rattata has reached its ultimate form!"
end

GameData::Cutscene.define :sq_joeys_rattata_story do |scene|
  scene.play_bgm 'Pokemon HGSS - Goldenrod City'
  
  scene.message "\\bJoey\\b: Let me tell you the story of my Rattata."
  
  scene.message "\\bJoey\\b: I caught her when I was six years old."
  scene.message "\\bJoey\\b: Everyone else wanted Pikachu, Charizard, legendaries..."
  scene.message "\\bJoey\\b: But I saw something special in those beady eyes."
  
  scene.message "\\bJoey\\b: We trained every day. Rain or shine."
  scene.message "\\bJoey\\b: We lost hundreds of battles. HUNDREDS."
  scene.message "\\bJoey\\b: But we never gave up."
  
  scene.message "\\bJoey\\b: I studied every mechanic. EVs, IVs, natures, abilities..."
  scene.message "\\bJoey\\b: I bred for six generations to get the perfect specimen."
  scene.message "\\bJoey\\b: And now... NOW..."
  
  scene.message "\\bJoey\\b: Behold the TOP PERCENTAGE!"
end

GameData::Cutscene.define :sq_joeys_rattata_battle do |scene|
  scene.play_bgm 'Pokemon HGSS - Battle! Trainer'
  
  scene.message "Joey sent out his Rattata!"
  scene.message "It was... wearing a Focus Sash and looked terrifyingly determined."
  
  # Battle: Joey's Ultimate Rattata
  # Level 100 Rattata with perfect stats
  # Moves: Endeavor, Quick Attack, Sucker Punch, Protect
  # Item: Focus Sash
  # The infamous F.E.A.R. strategy!
end

GameData::Cutscene.define :sq_joeys_rattata_complete do |scene|
  scene.play_bgm 'Pokemon HGSS - Pokemon Center'
  
  scene.message "\\bJoey\\b: *breathing heavily* That was... incredible!"
  
  scene.message "\\b\\PN\\b: Joey, your Rattata is genuinely terrifying."
  
  scene.message "\\bJoey\\b: *tears of joy* You... you really think so?"
  scene.message "\\bJoey\\b: After all these years... someone finally understands!"
  
  scene.message "\\bJoey\\b: Take this Focus Sash. It's my spare."
  scene.message "\\bJoey\\b: And this badge I made. It certifies that you've witnessed..."
  scene.message "\\bJoey\\b: THE TOP PERCENTAGE!"
  
  scene.message "\\b\\PN\\b: I'll treasure it, Joey."
  scene.message "\\bJoey\\b: Now if you'll excuse me, I need to call everyone I know."
  scene.message "\\bJoey\\b: *pulls out phone* This might take a while..."
end

#===============================================================================
# QUEST 80: HELENA'S RESEARCH - The Crown's Origin
# Helena's archaeological discovery leads to ancient secrets
# Reward: Ancient Codex (boosts all moves by 5% + lore item)
#===============================================================================

GameData::Quest.define :helenas_research do |q|
  q.name "Unearthed Secrets"
  q.description "Help Helena investigate an ancient ruin that may hold the Crown's origin."
  q.giver "Helena"
  q.location "Forgotten Excavation Site"
  q.chapter_unlock 35
  
  q.objectives [
    { id: :meet_helena, text: "Meet Helena at the excavation site" },
    { id: :explore_ruins, text: "Explore the underground chambers" },
    { id: :decipher_murals, text: "Help decipher the ancient murals" },
    { id: :retrieve_codex, text: "Retrieve the Ancient Codex" },
    { id: :escape_collapse, text: "Escape the collapsing ruins" }
  ]
  
  q.on_complete do
    pbMessage("\\bHelena\\b: We made it! And we have the codex!")
    pbMessage("\\bHelena\\b: This will revolutionize everything we know about the Crown!")
    pbReceiveItem(:ANCIENTCODEX)
    pbMessage("\\bHelena\\b: Keep it safe. The cult would kill for this knowledge.")
  end
end

GameData::Cutscene.define :sq_helenas_research_start do |scene|
  scene.play_bgm 'Pokemon XY - Geosenge Town'
  
  scene.message "\\bHelena\\b: \\PN! You came!"
  scene.message "\\bHelena\\b: I found something incredible. You won't believe it."
  
  scene.message "\\b\\PN\\b: What is it?"
  
  scene.message "\\bHelena\\b: These ruins... they're not from any known civilization."
  scene.message "\\bHelena\\b: The architecture predates the Crown Kingdom by millennia."
  scene.message "\\bHelena\\b: I think... I think this is where the Crown was MADE."
  
  scene.message "\\bLyra\\b: The origin of the Crown itself?"
  
  scene.message "\\bHelena\\b: Exactly! But the lower chambers are unstable."
  scene.message "\\bHelena\\b: I need backup in case of... complications."
end

GameData::Cutscene.define :sq_helenas_research_ruins do |scene|
  scene.play_bgm 'Pokemon BW - Relic Castle'
  
  scene.message "The underground chambers stretched endlessly into darkness."
  scene.message "Ancient machinery lay dormant, covered in dust and time."
  
  scene.message "\\bHelena\\b: *scribbling notes* Fascinating! These mechanisms..."
  scene.message "\\bHelena\\b: They were designed to channel some kind of energy."
  
  scene.message "\\bKael\\b: You mean like the Crown's power?"
  
  scene.message "\\bHelena\\b: Similar, but... more raw. Primal."
  scene.message "\\bHelena\\b: The Crown might just be a refined version of this."
  
  # TODO: Event Sequence
  # Navigate through puzzle chambers
  # Avoid ancient traps
  # Battle awakened guardian Pokémon
end

GameData::Cutscene.define :sq_helenas_research_murals do |scene|
  scene.play_bgm 'Pokemon ORAS - Cave of Origin'
  
  scene.message "Massive murals covered the central chamber walls."
  scene.message "They depicted beings of immense power... and their creation."
  
  scene.message "\\bHelena\\b: *gasps* This is... this is everything."
  scene.message "\\bHelena\\b: Look here—the Crown wasn't made by humans."
  
  scene.message "\\b\\PN\\b: Then who made it?"
  
  scene.message "\\bHelena\\b: According to this... Arceus itself."
  scene.message "\\bHelena\\b: The Crown was a gift to early humanity."
  scene.message "\\bHelena\\b: A way to maintain balance between humans and Pokémon."
  
  scene.message "\\bLyra\\b: And when the Crown shattered..."
  
  scene.message "\\bHelena\\b: The balance broke with it."
  scene.message "\\bHelena\\b: That's why legendary Pokémon have been stirring."
  scene.message "\\bHelena\\b: They sense the imbalance."
end

GameData::Cutscene.define :sq_helenas_research_codex do |scene|
  scene.play_bgm 'Pokemon USUM - Ultra Megalopolis'
  
  scene.message "In the deepest chamber, a pedestal held an ancient book."
  scene.message "The Ancient Codex—a record of the Crown's creation."
  
  scene.message "\\bHelena\\b: *reverent* This is it. The source text."
  scene.message "\\bHelena\\b: Every ritual, every power, every secret..."
  
  scene.message "The moment Helena touched the codex, the ruins began to shake."
  
  scene.message "\\bKael\\b: That's not good."
  scene.message "\\bHelena\\b: It must have been a trap! The codex was the trigger!"
  scene.message "\\bLyra\\b: RUN!"
end

GameData::Cutscene.define :sq_helenas_research_escape do |scene|
  scene.play_bgm 'Pokemon USUM - Battle! Ultra Necrozma'
  
  scene.message "Rocks fell as the ancient structure collapsed around you."
  
  # TODO: Event Sequence
  # Timed escape sequence
  # Quick decisions at branching paths
  # Helena almost falls, player saves her
  
  scene.message "\\bHelena\\b: The ceiling! It's—"
  scene.message "\\b\\PN\\b: Helena, watch out!"
  
  scene.message "You grabbed Helena and dove through the exit."
  scene.message "Behind you, millennia of history crumbled to dust."
end

GameData::Cutscene.define :sq_helenas_research_complete do |scene|
  scene.play_bgm 'Pokemon XY - Shalour City'
  
  scene.message "\\bHelena\\b: *coughing* We... we made it."
  scene.message "\\bHelena\\b: And the codex is intact!"
  
  scene.message "\\bKael\\b: That was way too close."
  
  scene.message "\\bHelena\\b: But worth it. \\PN, you saved my life."
  scene.message "\\bHelena\\b: I can't thank you enough."
  
  scene.message "\\bHelena\\b: Take the codex. You need it more than I do."
  scene.message "\\bHelena\\b: It might hold the key to restoring the Crown."
  
  scene.message "\\b\\PN\\b: Are you sure? This is your life's work."
  
  scene.message "\\bHelena\\b: *smiles* My life's work is understanding the past."
  scene.message "\\bHelena\\b: YOUR work is saving the future."
  scene.message "\\bHelena\\b: Make good use of it."
end

#===============================================================================
# QUEST 81: PROFESSOR ALDRIC - The Failed Experiment
# Professor Aldric's dark past catches up with him
# Reward: Aldric's Prototype (held item, random stat boost each turn)
#===============================================================================

GameData::Quest.define :aldrics_experiment do |q|
  q.name "The Failed Experiment"
  q.description "Help Professor Aldric confront the consequences of his past research."
  q.giver "Professor Aldric"
  q.location "Abandoned Research Facility"
  q.chapter_unlock 38
  
  q.objectives [
    { id: :receive_letter, text: "Receive Aldric's urgent message" },
    { id: :go_to_facility, text: "Travel to the abandoned facility" },
    { id: :learn_truth, text: "Learn about Experiment Chimera" },
    { id: :defeat_chimera, text: "Battle the escaped experiment" },
    { id: :aldrics_choice, text: "Witness Aldric's decision" }
  ]
  
  q.on_complete do
    pbMessage("\\bProfessor Aldric\\b: It's finally over...")
    pbMessage("\\bProfessor Aldric\\b: Twenty years of guilt... finally atoned.")
    pbReceiveItem(:ALDRICSPROTOTYPE)
    pbMessage("\\bProfessor Aldric\\b: Take this. A reminder that science must have ethics.")
  end
end

GameData::Cutscene.define :sq_aldrics_experiment_start do |scene|
  scene.play_bgm 'Pokemon XY - Professor Sycamore\'s Theme'
  
  scene.message "An urgent letter arrived from Professor Aldric."
  
  scene.message "\\b[Letter]\\b"
  scene.message "\\PN, I need your help. Something from my past has resurfaced."
  scene.message "Something I thought buried forever."
  scene.message "Meet me at these coordinates. Come alone if you can."
  scene.message "I'm sorry to involve you, but I have no one else to turn to."
  scene.message "- Aldric"
  
  scene.message "\\bLyra\\b: That doesn't sound good."
  scene.message "\\bKael\\b: 'Come alone' is never a good sign."
  scene.message "\\b\\PN\\b: He helped us. We should help him."
end

GameData::Cutscene.define :sq_aldrics_experiment_facility do |scene|
  scene.play_bgm 'Pokemon Colosseum - The Under'
  
  scene.message "The abandoned facility loomed against a grey sky."
  scene.message "Rust and decay covered what was once state-of-the-art technology."
  
  scene.message "\\bProfessor Aldric\\b: You came. Thank you."
  scene.message "\\bProfessor Aldric\\b: Before we go inside... you deserve to know the truth."
  
  scene.message "\\bProfessor Aldric\\b: Twenty years ago, I wasn't just a Pokémon researcher."
  scene.message "\\bProfessor Aldric\\b: I was the lead scientist of Project Chimera."
end

GameData::Cutscene.define :sq_aldrics_experiment_truth do |scene|
  scene.play_bgm 'Pokemon SM - Aether Paradise'
  
  scene.message "\\bProfessor Aldric\\b: Project Chimera was meant to create the ultimate Pokémon."
  scene.message "\\bProfessor Aldric\\b: We combined DNA from multiple species. Pushed boundaries."
  scene.message "\\bProfessor Aldric\\b: The kingdom funded us. They wanted a weapon."
  
  scene.message "\\bLyra\\b: That's... unethical."
  
  scene.message "\\bProfessor Aldric\\b: I know. I know that NOW."
  scene.message "\\bProfessor Aldric\\b: But back then, I was blinded by ambition."
  scene.message "\\bProfessor Aldric\\b: We succeeded in creating something. Subject Zero."
  
  scene.message "\\bKael\\b: What happened to it?"
  
  scene.message "\\bProfessor Aldric\\b: It... escaped. During the incident, it killed three of my colleagues."
  scene.message "\\bProfessor Aldric\\b: I sealed the facility and buried the project."
  scene.message "\\bProfessor Aldric\\b: But last week, I received reports of sightings."
  scene.message "\\bProfessor Aldric\\b: Subject Zero is awake. And it's coming for me."
end

GameData::Cutscene.define :sq_aldrics_experiment_inside do |scene|
  scene.play_bgm 'Pokemon XD - Cipher Lab'
  
  scene.message "Inside the facility, shattered containment pods lined the walls."
  scene.message "Claw marks scarred every surface."
  
  scene.message "\\bProfessor Aldric\\b: *trembling* It remembers. It remembers everything."
  scene.message "\\bProfessor Aldric\\b: The experiments, the pain, the loneliness..."
  
  # TODO: Event Sequence
  # Explore the facility
  # Find research logs revealing the experiments
  # Subject Zero stalks the group
  
  scene.message "A haunting cry echoed through the corridors."
  
  scene.message "\\bProfessor Aldric\\b: It's here."
end

GameData::Cutscene.define :sq_aldrics_experiment_chimera do |scene|
  scene.play_bgm 'Pokemon USUM - Battle! Ultra Necrozma'
  
  scene.message "Subject Zero emerged from the shadows."
  scene.message "A chimeric horror—parts of Mewtwo, Ditto, and unknown species fused together."
  scene.message "Its eyes held pain, rage, and something disturbingly human."
  
  scene.message "\\bSubject Zero\\b: ...Fa...ther..."
  
  scene.message "\\bProfessor Aldric\\b: *shocked* It... it can speak?"
  
  scene.message "\\bSubject Zero\\b: You... made me... then... abandoned me..."
  scene.message "\\bSubject Zero\\b: Twenty years... alone... in pain..."
  
  scene.message "\\bProfessor Aldric\\b: I'm sorry. I'm so sorry."
  
  scene.message "\\bSubject Zero\\b: Sorry... is not... ENOUGH!"
  
  # Battle: Subject Zero (custom chimera Pokémon)
  # Psychic/Dark type, Level 60
  # Ability: Adaptability
  # Moves: Psystrike, Dark Pulse, Transform, Recover
end

GameData::Cutscene.define :sq_aldrics_experiment_choice do |scene|
  scene.play_bgm 'Pokemon XY - Sycamore\'s Theme (Sad)'
  
  scene.message "Subject Zero collapsed, weakened but not defeated."
  
  scene.message "\\bSubject Zero\\b: End... it... please..."
  scene.message "\\bSubject Zero\\b: I don't... want to hurt... anymore..."
  
  scene.message "\\bProfessor Aldric\\b: *tears streaming* I can't... I created you. I can't destroy you."
  
  scene.message "\\bLyra\\b: There has to be another way."
  
  scene.message "\\bProfessor Aldric\\b: *long pause* ...There might be."
  scene.message "\\bProfessor Aldric\\b: The original stabilization formula. I never finished it."
  scene.message "\\bProfessor Aldric\\b: If I complete it now... I might be able to ease its pain."
  
  scene.message "Aldric worked feverishly, combining old formulas with new knowledge."
  scene.message "Hours passed. Finally, he approached Subject Zero with a syringe."
  
  scene.message "\\bProfessor Aldric\\b: This won't undo what I did. Nothing can."
  scene.message "\\bProfessor Aldric\\b: But maybe... maybe you can finally rest."
end

GameData::Cutscene.define :sq_aldrics_experiment_complete do |scene|
  scene.play_bgm 'Pokemon XY - Friends Forever'
  
  scene.message "The formula worked. Subject Zero's form stabilized."
  scene.message "The rage faded from its eyes, replaced by peace."
  
  scene.message "\\bSubject Zero\\b: ...Thank... you..."
  scene.message "\\bSubject Zero\\b: Father... I... forgive..."
  
  scene.message "Subject Zero's form shimmered, then dissolved into light."
  scene.message "It was finally free."
  
  scene.message "\\bProfessor Aldric\\b: *sobbing* I'm sorry. I'm so sorry."
  
  scene.message "\\bLyra\\b: Professor..."
  
  scene.message "\\bProfessor Aldric\\b: *composing himself* ...Thank you, all of you."
  scene.message "\\bProfessor Aldric\\b: For helping me face this. For not judging me."
  
  scene.message "\\bKael\\b: Everyone has a past, Professor."
  scene.message "\\bKael\\b: What matters is what you do now."
  
  scene.message "\\bProfessor Aldric\\b: *nods* You're right."
  scene.message "\\bProfessor Aldric\\b: Take this prototype. The only good thing to come from this project."
  scene.message "\\bProfessor Aldric\\b: May it serve you better than it served me."
end

#===============================================================================
# FULL QUEST REWARD SUMMARY (1-81)
#===============================================================================
# 1-15: Basic competitive items
# 16-40: Advanced items and rare Pokémon
# 41-70: Mega/Z/Gmax items, mints, patches, and legendary gear
# 71-75: Story-related items (Guardian legends, cult infiltration)
# 76-78: Character backstory quests (Kael, Lyra, Elena)
# 79-81: NPC spotlight quests (Joey, Helena, Aldric)
#
# Total Unique Rewards:
# - Master Ball, Gold Bottle Cap, Ability Patch
# - All Choice Items, Life Orb, Leftovers
# - Shiny Charm, Oval Charm, Mark Charm
# - All Type Gems, All Z-Crystals, All Mints
# - Mega Stones, Tera Orb, Booster Energy
# - Key Stone, Link Cable, Power Items
# - Beast Balls, Dream Balls, Apricorn Balls
# - Shadow Oath Badge, Resonance Crystal, Crown Heir Ring
# - Focus Sash, Top Percentage Badge, Ancient Codex, Aldric's Prototype
# - Multiple Shiny Pokémon rewards!
#===============================================================================
