#===============================================================================
# Ironvale City - Cutscenes
# Extracted from Main_Story.rb Chapter 5
#===============================================================================

GameData::Cutscene.define :ch5_travel_to_ironvale do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  scene.message "\\bLyra\\b: Did you hear what that merchant said?"
  scene.message "\\bLyra\\b: 'The ground groaned last night.'"
  
  scene.message "\\bKael\\b: Seismic activity has increased across the region."
  scene.message "\\bKael\\b: Something geological is happening."
  
  scene.message "\\b\\PN\\b: Or something not-so-geological."
  
  scene.message "\\bKael\\b: ...Possibly."
  
  scene.message "\\bKael\\b: *eyes lighting up* The Grand Archive."
  scene.message "\\bKael\\b: If answers exist anywhere, they're there."
end

GameData::Cutscene.define :ch5_ironvale_arrival do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave City'
  
  scene.message "\\bLyra\\b: This place is so... intellectual."
  scene.message "\\bLyra\\b: I feel underdressed."
  
  scene.message "\\bKael\\b: For once, I feel at home."
  
  scene.message "\\b\\PN\\b: Let's find a place to stay first."
  scene.message "\\b\\PN\\b: Then you can visit your beloved library, Kael."
  
  scene.message "\\bKael\\b: It's not 'beloved.' It's practical."
  scene.message "\\bLyra\\b: Sure, Kael. Sure."
end

GameData::Cutscene.define :ch5_library_exterior do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave Library'
  
  scene.message "\\bKael\\b: Fifteen floors of knowledge."
  scene.message "\\bKael\\b: Some texts here predate recorded history."
  
  scene.message "\\bLyra\\b: *whistling* That's a LOT of reading."
  
  scene.message "\\bKael\\b: You don't have to come."
  scene.message "\\bLyra\\b: And miss watching you nerd out? Never!"
  
  scene.message "\\b\\PN\\b: I'm curious too."
  scene.message "\\b\\PN\\b: Maybe we'll find something about those symbols."
end

GameData::Cutscene.define :ch5_library_research do |scene|
  scene.play_bgm 'Pokemon DPPT - Canalave Library'
  
  scene.message "\\bLyra\\b: *worried* He's going to work himself to death."
  scene.message "\\b\\PN\\b: That's just how Kael is."
  
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
end

GameData::Cutscene.define :ch5_kael_revelation do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.message "\\bKael\\b: (The fire... Mira...)"
  
  scene.message "\\bShadow\\b: Zor?"
  
  scene.message "\\bKael\\b: I'm fine, girl."
  scene.message "\\bKael\\b: Just... remembering."
  
  scene.message "\\bKael\\b: I couldn't save her."
  scene.message "\\bKael\\b: But maybe... if these legends are real..."
  scene.message "\\bKael\\b: Maybe there's power enough to prevent such things."
end

GameData::Cutscene.define :ch5_lyra_letter do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
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
  
  scene.message "\\bVoice\\b: The time of awakening draws near."
  scene.message "\\bVoice\\b: You are the bridge between worlds."
  scene.message "\\bVoice\\b: Find the fragments before the broken ones."
  
  scene.message "\\b\\PN\\b: Who are you?! What do you want?!"
  
  scene.message "\\bVoice\\b: We are what remains."
  scene.message "\\bVoice\\b: We are the guardians' last hope."
  scene.message "\\bVoice\\b: And you... are chosen."
end

GameData::Cutscene.define :ch5_ragnar_concern do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bRagnar\\b: *grabbing your shoulder* Hey."
  
  scene.message "\\bRagnar\\b: You okay? You've been... different lately."
  
  scene.message "\\b\\PN\\b: What do you mean?"
  
  scene.message "\\bRagnar\\b: Quieter. More serious."
  scene.message "\\bRagnar\\b: Those new friends of yours..."
  scene.message "\\bRagnar\\b: Something weird's going on, right?"
  
  scene.message "\\b\\PN\\b: It's... complicated."
  
  scene.message "\\bRagnar\\b: *crossing arms* I'm not dumb, you know."
  scene.message "\\bRagnar\\b: I can see it in your face."
  scene.message "\\bRagnar\\b: Whatever it is... be careful, okay?"
  
  scene.message "\\b\\PN\\b: I will."
  
  scene.message "\\bRagnar\\b: Good! 'Cause I still need to beat you!"
  scene.message "\\bRagnar\\b: Can't do that if you go and disappear!"
end

GameData::Cutscene.define :ch5_trio_discussion do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  
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
end

GameData::Cutscene.define :ch5_earthquake do |scene|
  scene.play_bgm 'Pokemon RSE - Drought'
  scene.camera_shake 10, 60
  
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
  
  scene.message "\\bKael\\b: Don't look. But we're being watched."
  scene.message "\\bLyra\\b: The Shattered Hand?"
  
  scene.message "\\bKael\\b: Possibly. Act natural."
  
  scene.message "\\b\\PN\\b: (Who are they? What do they want?)"
end

GameData::Cutscene.define :ch5_leaving_ironvale do |scene|
  scene.play_bgm 'Pokemon XY - Route 1'
  
  scene.message "\\bLyra\\b: So we're really doing this."
  scene.message "\\bLyra\\b: Chasing ancient legends."
  
  scene.message "\\bKael\\b: We don't have a choice."
  scene.message "\\bKael\\b: The legends are chasing us."
  
  scene.message "\\b\\PN\\b: Then let's stay one step ahead."
end
