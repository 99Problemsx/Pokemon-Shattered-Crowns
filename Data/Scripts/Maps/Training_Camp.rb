#===============================================================================
# Training Camp - Growing Bonds - Cutscenes
# Extracted from Main_Story.rb Chapter 13 (Recovery and Training)
#===============================================================================

GameData::Cutscene.define :ch12_ragnar_town do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bRagnar\\b: \\PN! Is that you?!"
  
  scene.message "\\b\\PN\\b: Ragnar! Your Pikachu evolved!"
  
  scene.message "\\bRagnar\\b: *proudly* YUP! We're unstoppable now!"
  scene.message "\\bRagnar\\b: Four badges and counting!"
  
  scene.message "\\bRagnar\\b: ...You look rough, buddy."
  scene.message "\\bRagnar\\b: Those dark times you mentioned?"
  
  scene.message "\\b\\PN\\b: Getting darker."
  
  scene.message "\\bRagnar\\b: *serious for once* Look, I know I'm not part of"
  scene.message "\\bRagnar\\b: whatever weird chosen one stuff you've got going."
  scene.message "\\bRagnar\\b: But if you EVER need backup—"
  
  scene.message "\\b\\PN\\b: I know."
  
  scene.message "\\bRagnar\\b: Good! Now go get some rest!"
  scene.message "\\bRagnar\\b: You look like a Snorlax that hasn't slept in weeks!"
end

GameData::Cutscene.define :ch13_recovery_camp do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: I made soup! Who's hungry?"
  scene.message "\\bWillow\\b: Vee vee!"
  
  scene.message "\\bKael\\b: *quietly takes bowl* ...Thanks."
  
  scene.message "\\b\\PN\\b: This is good, Lyra."
  scene.message "\\bLyra\\b: *beaming* Grandma taught me!"
end

GameData::Cutscene.define :ch13_ragnar_rematch do |scene|
  scene.play_bgm 'Pokemon XY - Rival Theme'
  
  scene.message "\\bRagnar\\b: HEY! BROODY! BATTLE TIME!"
  
  scene.message "\\b\\PN\\b: Ragnar, I'm kind of busy—"
  
  scene.message "\\bRagnar\\b: TOO BAD!"
  scene.message "\\bRagnar\\b: You've been avoiding me for WEEKS!"
  scene.message "\\bRagnar\\b: Time to see who's really gotten stronger!"
  
  scene.message "\\bLyra\\b: *to Kael* Who is this guy?"
  scene.message "\\bKael\\b: \\PN's rival. He's... loud."
  
  scene.message "\\bRagnar\\b: I HEARD THAT, DARK AND BROODY!"
  
  scene.trainer_battle :RIVAL_RAGNAR, 2
end

GameData::Cutscene.define :ch13_ragnar_after_battle do |scene|
  scene.play_bgm 'Pokemon XY - Rival Theme'
  
  scene.message "\\bRagnar\\b: *panting* Okay... okay, you're still tough."
  scene.message "\\bRagnar\\b: But I'm catching up! You feel it, right?!"
  
  scene.message "\\b\\PN\\b: Yeah. You've gotten a lot better."
  
  scene.message "\\bRagnar\\b: *grinning* Course I have!"
  scene.message "\\bRagnar\\b: Can't let my rival leave me in the dust!"
  
  scene.message "\\bRagnar\\b: You two better be taking care of \\PN!"
  scene.message "\\bRagnar\\b: That's MY job to annoy them!"
  
  scene.message "\\bLyra\\b: *laughing* We'll do our best!"
  scene.message "\\bKael\\b: ...Sure."
  
  scene.message "\\bRagnar\\b: Alright! Next time, I WIN!"
end

GameData::Cutscene.define :ch13_first_night do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  scene.message "\\bLyra\\b: Do you think the Shattered Hand is looking for us?"
  
  scene.message "\\bKael\\b: Definitely."
  scene.message "\\bKael\\b: But we're far from the temple now."
  scene.message "\\bKael\\b: They won't find us easily."
  
  scene.message "\\b\\PN\\b: We should keep moving in the morning."
  scene.message "\\b\\PN\\b: Put more distance between us."
  
  scene.message "\\bLyra\\b: And then?"
  
  scene.message "\\bKael\\b: We study the tablets we took."
  scene.message "\\bKael\\b: Find the seal locations."
  scene.message "\\bKael\\b: And get there before they do."
  
  scene.message "\\bLyra\\b: Right. We can do this."
  
  scene.message "\\b\\PN\\b: Get some sleep. I'll take first watch."
  
  scene.message "\\bKael\\b: Wake me in three hours."
end

GameData::Cutscene.define :ch13_morning_tablets do |scene|
  scene.play_bgm 'Pokemon DPPT - Professor Rowan'
  
  scene.message "\\bKael\\b: There are four major seal points."
  scene.message "\\bKael\\b: The Temple was the first. Now compromised."
  
  scene.message "\\bLyra\\b: Where are the others?"
  
  scene.message "\\bKael\\b: One in the Abyssal Caves to the east."
  scene.message "\\bKael\\b: One in the Sunlight Forest to the south."
  scene.message "\\bKael\\b: And one... the tablets don't say."
  scene.message "\\bKael\\b: Just 'the place of falling stars.'"
  
  scene.message "\\b\\PN\\b: That's cryptic."
  
  scene.message "\\bKael\\b: Ancient texts usually are."
  
  scene.message "\\bLyra\\b: Which do we go to first?"
  
  scene.message "\\bKael\\b: Sunlight Forest is closest."
  scene.message "\\bKael\\b: And it matches your Guardian, Lyra."
  scene.message "\\bKael\\b: Xerneas was once called the Life-Giver."
  
  scene.message "\\bLyra\\b: *touching her mark* Let's go there."
end

GameData::Cutscene.define :ch13_training_montage do |scene|
  scene.play_bgm 'Pokemon RSE - Battle Frontier'
  
  scene.message "\\bKael\\b: Shadow, use Dark Pulse!"
  scene.message "\\bShadow\\b: Zor!"
  
  scene.message "\\bLyra\\b: Willow, practice your Quick Attack!"
  scene.message "\\bWillow\\b: Vee!"
  
  scene.message "\\bKael\\b: You're getting better, \\PN."
  scene.message "\\b\\PN\\b: Is that... praise?"
  scene.message "\\bKael\\b: Observation. Don't let it go to your head."
  
  scene.message "\\bLyra\\b: *laughs* That's Kael-speak for 'good job!'"
end

GameData::Cutscene.define :ch13_kael_trains_player do |scene|
  scene.play_bgm 'Pokemon RSE - Battle Frontier'
  
  scene.message "\\bKael\\b: Your strategy is too predictable."
  scene.message "\\bKael\\b: You always attack head-on."
  
  scene.message "\\b\\PN\\b: That's... fair."
  
  scene.message "\\bKael\\b: Let me show you something."
  
  scene.message "\\bKael\\b: Misdirection. Make them look one way."
  scene.message "\\bKael\\b: Then strike from another."
  
  scene.message "\\b\\PN\\b: Where did you learn that?"
  
  scene.message "\\bKael\\b: Survival."
  scene.message "\\bKael\\b: The orphanage wasn't kind to the weak."
  
  scene.message "\\b\\PN\\b: I'm sorry."
  
  scene.message "\\bKael\\b: Don't be."
  scene.message "\\bKael\\b: Use the lesson."
end

GameData::Cutscene.define :ch13_lyra_helps_player do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: You're pushing too hard, \\PN."
  scene.message "\\bLyra\\b: Your Pokémon need rest too."
  
  scene.message "\\b\\PN\\b: We don't have time for rest."
  
  scene.message "\\bLyra\\b: We won't have time for anything if they collapse in battle."
  
  scene.message "\\bLyra\\b: Here. Let me show you a healing technique."
  scene.message "\\bLyra\\b: Grandma taught me. Uses special berries."
  
  scene.message "\\bLyra\\b: Apply this to tired muscles."
  scene.message "\\bLyra\\b: Pokémon recover twice as fast."
  
  scene.message "\\b\\PN\\b: That's... really useful."
  
  scene.message "\\bLyra\\b: *winking* I'm not just a pretty face!"
end

GameData::Cutscene.define :ch13_pokemon_bonding do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bWillow\\b: Vee vee!"
  
  scene.message "\\bShadow\\b: *annoyed* Zor."
  
  scene.message "\\bLyra\\b: Look! They're getting along!"
  
  scene.message "\\bKael\\b: *watching* Shadow doesn't 'get along.'"
  scene.message "\\bKael\\b: But he's... tolerating."
  
  scene.message "\\b\\PN\\b: That's progress."
  
  scene.message "\\bLyra\\b: We're building something here."
  scene.message "\\bLyra\\b: Not just a team. A... family."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: Maybe."
end

GameData::Cutscene.define :ch13_lyra_kael_moment do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  scene.message "\\bLyra\\b: Mind if I sit?"
  scene.message "\\bKael\\b: ..."
  
  scene.message "\\bLyra\\b: You've been quiet. More than usual."
  scene.message "\\bKael\\b: I'm always quiet."
  
  scene.message "\\bLyra\\b: This is different."
  scene.message "\\bLyra\\b: You can talk to me, you know."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: The temple... the records about being 'chosen.'"
  scene.message "\\bKael\\b: I never asked for any of this."
  
  scene.message "\\bLyra\\b: None of us did."
  
  scene.message "\\bKael\\b: You and \\PN seem to handle it well."
  scene.message "\\bKael\\b: I just see more ways for things to go wrong."
  
  scene.message "\\bLyra\\b: *softly* That's okay."
  scene.message "\\bLyra\\b: That's why we're a team."
  scene.message "\\bLyra\\b: You see the dangers. I see the hope."
  scene.message "\\bLyra\\b: And \\PN keeps us moving forward."
  
  scene.message "\\bKael\\b: ...That's surprisingly insightful."
  scene.message "\\bLyra\\b: Hey! I can be smart too!"
  scene.message "\\bKael\\b: I never said you couldn't."
end

GameData::Cutscene.define :ch13_kael_opens_up do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[LYRA'S PERSPECTIVE - CONTINUED]"
  
  scene.message "\\bKael\\b: Mira would have liked you."
  
  scene.message "\\bLyra\\b: Mira?"
  
  scene.message "\\bKael\\b: My sister."
  scene.message "\\bKael\\b: She... she died. In a fire."
  
  scene.message "\\bLyra\\b: Oh, Kael..."
  
  scene.message "\\bKael\\b: She was like you."
  scene.message "\\bKael\\b: Bright. Optimistic. Annoying."
  
  scene.message "\\bLyra\\b: *tearfully laughing* Hey..."
  
  scene.message "\\bKael\\b: She saw good in everything."
  scene.message "\\bKael\\b: Even in me."
  
  scene.message "\\bLyra\\b: I see good in you too."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: You barely know me."
  
  scene.message "\\bLyra\\b: I know enough."
end

GameData::Cutscene.define :ch13_player_watching do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\i[YOUR PERSPECTIVE]"
  
  scene.message "\\b\\PN\\b: (They're good for each other.)"
  
  scene.message "\\b\\PN\\b: (I'm the Champion's kid.)"
  scene.message "\\b\\PN\\b: (They have real struggles.)"
  scene.message "\\b\\PN\\b: (What do I know about pain?)"
  
  scene.message "\\bZacian's Voice\\b: You know more than you think."
  scene.message "\\bZacian's Voice\\b: Pain is not the only teacher."
  scene.message "\\bZacian's Voice\\b: Duty is also a burden."
  
  scene.message "\\b\\PN\\b: (Maybe.)"
end

GameData::Cutscene.define :ch13_mark_practice do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  scene.message "\\bKael\\b: Concentrate. Feel the power."
  scene.message "\\bKael\\b: Don't force it. Let it flow."
  
  scene.message "\\bLyra\\b: *straining* I can feel it but..."
  scene.message "\\bLyra\\b: It won't come out!"
  
  scene.message "\\b\\PN\\b: Same here. It responded in battle..."
  scene.message "\\b\\PN\\b: But now? Nothing."
  
  scene.message "\\bKael\\b: Adrenaline. Danger."
  scene.message "\\bKael\\b: The marks respond to need."
  scene.message "\\bKael\\b: We have to learn to activate them at will."
  
  scene.message "\\bLyra\\b: How?"
  
  scene.message "\\bKael\\b: The tablets might tell us."
  scene.message "\\bKael\\b: Or the Guardians themselves."
  
  scene.message "\\b\\PN\\b: More questions. Always more questions."
  
  scene.message "\\bKael\\b: That's the nature of truth."
  scene.message "\\bKael\\b: The more you know, the more you don't."
end

GameData::Cutscene.define :ch13_sunset_reflection do |scene|
  scene.play_bgm 'Pokemon DPPT - Lake'
  
  scene.message "\\bLyra\\b: It's beautiful."
  
  scene.message "\\bKael\\b: ...Yes."
  
  scene.message "\\b\\PN\\b: Moments like this..."
  scene.message "\\b\\PN\\b: They make the fighting worth it."
  
  scene.message "\\bLyra\\b: What will we do after?"
  scene.message "\\bLyra\\b: When this is all over?"
  
  scene.message "\\b\\PN\\b: I... hadn't thought about it."
  
  scene.message "\\bKael\\b: We might not have an 'after.'"
  
  scene.message "\\bLyra\\b: Kael!"
  
  scene.message "\\bKael\\b: I'm being realistic."
  
  scene.message "\\bLyra\\b: Well, I'm being hopeful."
  scene.message "\\bLyra\\b: After this, I want to see the world."
  scene.message "\\bLyra\\b: With people I care about."
  
  scene.message "\\b\\PN\\b: That sounds nice."
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: It does."
end

GameData::Cutscene.define :ch13_night_conversation do |scene|
  scene.play_bgm 'Pokemon XY - Night'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.message "\\bKael\\b: *quietly* Can't sleep either?"
  
  scene.message "\\b\\PN\\b: Just thinking."
  
  scene.message "\\bKael\\b: About?"
  
  scene.message "\\b\\PN\\b: Whether I'm ready for this."
  scene.message "\\b\\PN\\b: My dad saved the world once."
  scene.message "\\b\\PN\\b: I'm just... me."
  
  scene.message "\\bKael\\b: Your father wasn't always Champion."
  scene.message "\\bKael\\b: He became one through struggle."
  
  scene.message "\\b\\PN\\b: I know. But the expectation..."
  
  scene.message "\\bKael\\b: Forget expectations."
  scene.message "\\bKael\\b: You've already proven yourself."
  scene.message "\\bKael\\b: More than once."
  
  scene.message "\\b\\PN\\b: *surprised* That's... almost kind."
  
  scene.message "\\bKael\\b: Don't get used to it."
end

GameData::Cutscene.define :ch13_departure_preparations do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: Sunlight Forest, here we come!"
  
  scene.message "\\bKael\\b: Stay alert. The Hand could be anywhere."
  
  scene.message "\\b\\PN\\b: We've trained. We're ready."
  
  scene.message "\\bKael\\b: Ready is relative."
  scene.message "\\bKael\\b: But we're more ready than before."
  
  scene.message "\\bLyra\\b: That's practically optimism!"
  scene.message "\\bLyra\\b: I'm rubbing off on you!"
  
  scene.message "\\bKael\\b: *deadpan* Please don't."
  
  scene.message "\\b\\PN\\b: Let's go."
  scene.message "\\b\\PN\\b: Whatever's waiting..."
  scene.message "\\b\\PN\\b: We face it together."
end
