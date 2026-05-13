#===============================================================================
# INTERLUDE SCENES - Character Moments Between Major Events
#===============================================================================
# These scenes add depth to characters and relationships
# Play between main story chapters for pacing
#===============================================================================

#===============================================================================
# INTERLUDE 1: Campfire Memories (After Chapter 10)
# The trio shares their backstories for the first time
#===============================================================================

GameData::Cutscene.define :interlude_campfire_memories do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Pokemon Center (Night)'
  scene.fade_in
  
  scene.message "\\i[INTERLUDE: Campfire Memories]"
  scene.message "\\i[Evening - Route Campsite]"
  
  scene.message "The fire crackles as night falls."
  scene.message "Stars emerge, countless and distant."
  scene.message "For once, the world feels peaceful."
  
  scene.message "\\bLyra\\b: *staring at flames* Can I ask you both something?"
  scene.message "\\bKael\\b: Mm?"
  scene.message "\\bLyra\\b: Why did you become trainers?"
  
  scene.message "\\b\\PN\\b: My parents were trainers. Champions, actually."
  scene.message "\\b\\PN\\b: I guess I wanted to make them proud."
  
  scene.message "\\bLyra\\b: That's sweet."
  scene.message "\\bLyra\\b: *pause* I became a trainer to escape."
  scene.message "\\bLyra\\b: My hometown was... suffocating."
  scene.message "\\bLyra\\b: Everyone expected me to be something I wasn't."
  
  scene.message "\\bKael\\b: ..."
  
  scene.message "\\bLyra\\b: Kael? What about you?"
  
  scene.message "\\bKael\\b: *long pause* ...I don't remember my reason anymore."
  scene.message "\\bKael\\b: Just that I had to keep moving."
  scene.message "\\bKael\\b: Standing still felt like... dying."
  
  scene.message "Silence falls. Not uncomfortable. Understanding."
  
  scene.message "\\b\\PN\\b: Well, whatever our reasons were..."
  scene.message "\\b\\PN\\b: I'm glad they led us here."
  
  scene.message "\\bLyra\\b: *smiles* Me too."
  scene.message "\\bKael\\b: *small nod* ...Yeah."
end

#===============================================================================
# INTERLUDE 2: Training Day (After Chapter 15)
# Light-hearted training montage with humorous moments
#===============================================================================

GameData::Cutscene.define :interlude_training_day do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Route 18'
  scene.fade_in
  
  scene.message "\\i[INTERLUDE: Training Day]"
  scene.message "\\i[Morning - Meadow Clearing]"
  
  scene.message "\\bLyra\\b: Okay! Training time!"
  scene.message "\\bLyra\\b: We need to get stronger if we're going to face the cult!"
  
  scene.message "\\bKael\\b: *yawning* It's barely dawn."
  
  scene.message "\\bLyra\\b: Early Pidgey catches the Caterpie!"
  scene.message "\\bKael\\b: That's not how that works."
  
  scene.message "\\bLyra\\b: \\PN! Let's spar!"
  
  scene.message "\\i[Time Skip: 2 Hours Later]"
  
  scene.message "\\bLyra\\b: *panting* Ha... ha... one more round?"
  scene.message "\\b\\PN\\b: *also exhausted* How... do you have... such stamina?"
  scene.message "\\bKael\\b: *sitting in shade* Neither of you has hit me once."
  
  scene.message "\\bLyra\\b: *indignant* You've been DODGING!"
  scene.message "\\bKael\\b: That's... the point of training."
  
  scene.message "\\i[Time Skip: 4 Hours Later]"
  
  scene.message "All three of you collapse on the grass."
  
  scene.message "\\bKael\\b: *grinning* Okay. That was... actually fun."
  scene.message "\\bLyra\\b: See?! Told you!"
  scene.message "\\b\\PN\\b: Everything hurts. But... good hurts."
  
  scene.message "\\bLyra\\b: Same time tomorrow?"
  scene.message "\\bKael\\b: Absolutely not."
  scene.message "\\bKael\\b: ...Maybe noon."
end

#===============================================================================
# INTERLUDE 3: Nightmare (After Chapter 20)
# Foreshadowing and emotional vulnerability
#===============================================================================

GameData::Cutscene.define :interlude_nightmare do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon ORAS - Sea Mauville'
  scene.fade_in
  
  scene.message "\\i[INTERLUDE: Nightmare]"
  scene.message "\\i[Night - Pokémon Center Room]"
  
  scene.message "You wake suddenly. Cold sweat. Racing heart."
  scene.message "The dream lingers..."
  
  scene.message "\\i[In the dream, you saw the world ending.]"
  scene.message "\\i[Your friends falling one by one.]"
  scene.message "\\i[And you couldn't save any of them.]"
  
  scene.message "A knock at the door startles you."
  
  scene.message "\\bLyra\\b: *through door* \\PN? You okay?"
  scene.message "\\bLyra\\b: I heard you... calling out."
  
  scene.message "\\b\\PN\\b: *opens door* Just a nightmare."
  
  scene.message "\\bLyra\\b: *concerned* Want to talk about it?"
  
  scene.choice ["It was nothing", "I saw us losing", "I'm scared"] do |choice|
    case choice
    when 0
      scene.message "\\bLyra\\b: \\PN... you don't have to pretend."
      scene.message "\\bLyra\\b: Not with us."
      scene.message "\\bLyra\\b: But I'm here when you're ready."
    when 1
      scene.message "\\bLyra\\b: *sits beside you* We won't lose."
      scene.message "\\bLyra\\b: We have each other. That's worth more than any power."
      scene.message "\\bLyra\\b: The nightmares lie. Remember that."
    when 2
      scene.message "\\bLyra\\b: *hugging you* So am I."
      scene.message "\\bLyra\\b: Every single day."
      scene.message "\\bLyra\\b: But being scared means we have something to fight for."
    end
  end
  
  scene.message "\\bKael\\b: *appearing in doorway* Room for one more?"
  scene.message "\\bKael\\b: Couldn't sleep either."
  
  scene.message "The three of you sit together until dawn."
  scene.message "No one sleeps. But no one is alone."
end

#===============================================================================
# INTERLUDE 4: Letters Home (After Chapter 25)
# Connection to family and past
#===============================================================================

GameData::Cutscene.define :interlude_letters_home do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon HGSS - New Bark Town'
  scene.fade_in
  
  scene.message "\\i[INTERLUDE: Letters Home]"
  scene.message "\\i[Afternoon - City Post Office]"
  
  scene.message "\\bLyra\\b: I need to send a letter to my grandmother."
  scene.message "\\bLyra\\b: She worries if I don't write every week."
  
  scene.message "\\bKael\\b: *leaning against wall* Must be nice."
  scene.message "\\bKael\\b: Having someone to write to."
  
  scene.message "\\bLyra\\b: *pauses* ...Do you want to add something?"
  scene.message "\\bLyra\\b: My grandmother loves meeting my friends. Virtually, anyway."
  
  scene.message "\\bKael\\b: *surprised* You'd... let me?"
  
  scene.message "\\b\\PN\\b: What about your parents, Lyra?"
  
  scene.message "\\bLyra\\b: *looking away* We don't... talk much."
  scene.message "\\bLyra\\b: They wanted me to take over the family business."
  scene.message "\\bLyra\\b: When I left to become a trainer..."
  scene.message "\\bLyra\\b: Let's just say they weren't happy."
  
  scene.message "\\bKael\\b: Their loss."
  scene.message "\\bKael\\b: You're the best person I know."
  
  scene.message "\\bLyra\\b: *blushing* K-Kael!"
  
  scene.message "\\bKael\\b: *quickly* I mean! As a trainer. You know."
  
  scene.message "\\b\\PN\\b: (Are these two ever going to admit it...?)"
end

#===============================================================================
# INTERLUDE 5: The Night Before (Before Chapter 30)
# Last peaceful moment before the final battle
#===============================================================================

GameData::Cutscene.define :interlude_night_before do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Snowbelle City'
  scene.fade_in
  
  scene.message "\\i[INTERLUDE: The Night Before]"
  scene.message "\\i[Night - Overlooking the Fortress]"
  
  scene.message "Tomorrow, you assault the Shattered Hand Fortress."
  scene.message "Tomorrow, everything ends. One way or another."
  scene.message "Tonight... you just want to breathe."
  
  scene.message "\\bLyra\\b: *sitting beside you* Couldn't sleep either?"
  scene.message "\\b\\PN\\b: Too many thoughts."
  
  scene.message "\\bLyra\\b: Same."
  scene.message "\\bLyra\\b: What if we fail tomorrow?"
  
  scene.message "\\b\\PN\\b: We won't."
  
  scene.message "\\bLyra\\b: But what if we do?"
  
  scene.message "\\b\\PN\\b: Then at least we'll fail together."
  scene.message "\\b\\PN\\b: And we'll know we tried. With everything we had."
  
  scene.message "\\bKael\\b: *walking up* Morbid conversation for midnight."
  scene.message "\\bKael\\b: Room for one more?"
  
  scene.message "\\bLyra\\b: Always."
  
  scene.message "The three of you sit in comfortable silence."
  scene.message "Watching the stars. Feeling the wind."
  scene.message "Three friends, bound by fate, facing the impossible."
  
  scene.message "\\bKael\\b: If this is it... I just want you both to know."
  scene.message "\\bKael\\b: You're the closest thing to family I've ever had."
  
  scene.message "\\bLyra\\b: *taking his hand* We ARE family now."
  scene.message "\\bLyra\\b: Nothing changes that. Not even death."
  
  scene.message "\\b\\PN\\b: Together, then. Until the end."
  
  scene.message "\\bKael\\b: Until the end."
  scene.message "\\bLyra\\b: Until the end."
  
  scene.message "The fortress looms in the distance."
  scene.message "But here, in this moment, there is only peace."
  scene.message "And love."
end

#===============================================================================
# INTERLUDE 6: Recovery (After Chapter 35)
# Healing after the battle
#===============================================================================

GameData::Cutscene.define :interlude_recovery do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Pokemon Village'
  scene.fade_in
  
  scene.message "\\i[INTERLUDE: Recovery]"
  scene.message "\\i[One Week After Nidhoggr's Defeat]"
  
  scene.message "The Pokémon Center is quiet this time of night."
  scene.message "Most of you are still healing."
  scene.message "But you're alive. All of you."
  
  scene.message "\\bLyra\\b: *walking with crutches* Doctor says I can ditch these next week."
  scene.message "\\bKael\\b: *bandaged arm* Lucky. I've got another month."
  
  scene.message "\\b\\PN\\b: You both took the worst of it."
  scene.message "\\b\\PN\\b: Protecting me."
  
  scene.message "\\bKael\\b: That's what we do."
  scene.message "\\bLyra\\b: Besides, you're the one who finished it."
  scene.message "\\bLyra\\b: We just kept you alive long enough."
  
  scene.message "\\b\\PN\\b: We did it together. Don't forget that."
  
  scene.message "\\bKael\\b: *quiet smile* We did, didn't we?"
  scene.message "\\bKael\\b: Saved the whole world."
  
  scene.message "\\bLyra\\b: *grinning* And nobody believes us!"
  scene.message "\\bKael\\b: *laughing* Right?!"
  
  scene.message "The laughter echoes through empty halls."
  scene.message "It feels strange. Normal."
  scene.message "Like maybe, just maybe, everything will be okay."
end

#===============================================================================
# INTERLUDE 7: First Date? (Post-Game)
# Lyra and Kael finally admit feelings
#===============================================================================

GameData::Cutscene.define :interlude_first_date do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon HGSS - Goldenrod City'
  scene.fade_in
  
  scene.message "\\i[INTERLUDE: First Date?]"
  scene.message "\\i[Springtime - Laverre Cafe]"
  
  scene.message "\\bLyra\\b: *nervous* Thanks for suggesting this place."
  scene.message "\\bKael\\b: *equally nervous* You said you liked the macarons here."
  
  scene.message "\\bLyra\\b: You remembered that?"
  scene.message "\\bLyra\\b: I mentioned it once. Months ago."
  
  scene.message "\\bKael\\b: *mumbles* I remember everything you say."
  scene.message "\\bLyra\\b: *blushing* Kael..."
  
  scene.message "\\bKael\\b: Listen. I'm not... good at this."
  scene.message "\\bKael\\b: Feelings. Words. All of it."
  scene.message "\\bKael\\b: But you deserve to hear it."
  
  scene.message "\\bKael\\b: *deep breath* I love you, Lyra."
  scene.message "\\bKael\\b: I think I have since the day we met."
  scene.message "\\bKael\\b: And I was too scared to admit it until now."
  
  scene.message "\\bLyra\\b: *tears forming* Kael..."
  scene.message "\\bLyra\\b: I love you too."
  scene.message "\\bLyra\\b: I was just waiting for you to catch up."
  
  scene.message "\\bKael\\b: *laughing softly* Of course you were."
  
  scene.message "They reach across the table."
  scene.message "Hands intertwine. Finally."
  
  scene.message "\\bLyra\\b: So... this IS a date?"
  scene.message "\\bKael\\b: If you want it to be."
  scene.message "\\bLyra\\b: I want it to be."
  
  scene.message "\\bKael\\b: *smiling* Then it is."
end

#===============================================================================
# INTERLUDE 8: The Proposal (Post-Game)
# Setting up the wedding chapter
#===============================================================================

GameData::Cutscene.define :interlude_proposal do |scene|
  scene.fade_out
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.fade_in
  
  scene.message "\\i[INTERLUDE: The Proposal]"
  scene.message "\\i[Two Years Later - Sunset Cliff]"
  
  scene.message "The same cliff where you once made a promise."
  scene.message "To fight. To survive. To see tomorrow."
  scene.message "Now, a different kind of promise awaits."
  
  scene.message "\\bKael\\b: *holding Lyra's hands* Remember this place?"
  scene.message "\\bLyra\\b: How could I forget?"
  scene.message "\\bLyra\\b: This is where we decided to take on the world."
  
  scene.message "\\bKael\\b: And we did."
  scene.message "\\bKael\\b: Together."
  
  scene.message "\\bKael\\b: *kneeling* Lyra... I want that to be true forever."
  scene.message "\\bKael\\b: No more fighting for survival."
  scene.message "\\bKael\\b: Just fighting for us. For our future."
  
  scene.message "\\bKael\\b: Will you marry me?"
  
  scene.message "\\bLyra\\b: *crying* Yes. Yes, yes, YES!"
  
  scene.message "She tackles him. They both laugh as they fall onto the grass."
  scene.message "The sun sets behind them, painting the world in gold."
  
  scene.message "Somewhere nearby, \\PN watches with a smile."
  scene.message "Your best friends. Your family."
  scene.message "Finding happiness after everything they've been through."
  
  scene.message "It was all worth it."
end
