#===============================================================================
# Forest Ambush / Route to Professor - Cutscenes
# Extracted from Main_Story.rb Chapter 7
#===============================================================================

GameData::Cutscene.define :ch7_road_to_professor do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: *stretching* How much further?"
  scene.message "\\bKael\\b: According to the map, half a day."
  scene.message "\\bLyra\\b: *groaning* My feet hurt!"
  
  scene.message "\\b\\PN\\b: We could camp soon."
  scene.message "\\b\\PN\\b: It's getting dark anyway."
  
  scene.message "\\bKael\\b: Agreed. I don't like traveling at night."
  scene.message "\\bKael\\b: Too many unknowns."
  
  scene.message "\\bKael\\b: She senses something."
end

GameData::Cutscene.define :ch7_forest_journey do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: It's so pretty here!"
  scene.message "\\bLyra\\b: Look at all the Butterfree!"
  
  scene.message "\\bKael\\b: *scanning the trees* Something's wrong."
  scene.message "\\bKael\\b: Where are all the other Pokémon?"
  
  scene.message "\\b\\PN\\b: You're right... it's too quiet."
  
  scene.message "\\bLyra\\b: Maybe they're just—"
  
  scene.message "\\bKael\\b: We're surrounded."
  scene.message "\\bKael\\b: Those followers from the city."
  scene.message "\\bKael\\b: They've been herding us here."
end

GameData::Cutscene.define :ch7_trap_realization do |scene|
  scene.play_bgm 'Pokemon RSE - Mt Pyre'
  
  scene.message "\\bKael\\b: *cursing* I should have seen this."
  scene.message "\\bKael\\b: They wanted us here."
  
  scene.message "\\bLyra\\b: What do we do?!"
  scene.message "\\bWillow\\b: Vee! Vee!"
  
  scene.message "\\b\\PN\\b: Stay calm. We fight if we have to."
  
  scene.message "\\bKael\\b: Agreed. Back to back. Don't let them flank us."
end

GameData::Cutscene.define :ch7_ambush_begins do |scene|
  scene.play_bgm 'Pokemon RSE - Team Aqua-Magma Hideout'
  scene.camera_shake 3, 20
  
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
  
  scene.message "\\bCultist\\b: Mightyena, Shadow Ball!"
  scene.message "\\bCultist\\b: Sableye, Night Shade!"
  
  scene.message "\\bLyra\\b: There's too many of them!"
  scene.message "\\bKael\\b: Just hold on! Look for an opening!"
  
  scene.message "\\b\\PN\\b: There! The gap in their formation!"
  scene.message "\\b\\PN\\b: We can break through!"
  
  scene.message "\\bKael\\b: Together, on three!"
end

GameData::Cutscene.define :ch7_ragnar_rescue do |scene|
  scene.play_bgm 'Pokemon XY - Battle Theme'
  scene.camera_shake 5, 30
  
  scene.message "\\bRagnar\\b: PIKA! THUNDERBOLT! NOW!"
  
  scene.message "\\bRagnar\\b: *landing from a tree* MISS ME?!"
  
  scene.message "\\b\\PN\\b: RAGNAR?!"
  
  scene.message "\\bRagnar\\b: Saw you heading into the forest!"
  scene.message "\\bRagnar\\b: Figured you'd get into trouble without me!"
  
  scene.message "\\bRagnar\\b: Now who are these creepy hood guys?!"
  
  scene.message "\\bCultist\\b: Another one? Dispose of him!"
  
  scene.message "\\bRagnar\\b: HA! TRY IT!"
end

GameData::Cutscene.define :ch7_vex_arrives do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  
  scene.message "\\bVex\\b: Enough games."
  
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
  
  scene.message "\\bVex\\b: The master wishes to see your potential."
  scene.message "\\bVex\\b: Don't disappoint me."
  
  scene.message "\\bVex\\b: Let us begin!"
  
  scene.trainer_battle :SHATTEREDHAND, "Vex", 0
  
  scene.message "\\bVex\\b: Hmph. You have potential."
  scene.message "\\bVex\\b: We will meet again, Chosen Ones."
  
  scene.message "\\bLyra\\b: What... was that about?"
  scene.message "\\bKael\\b: I don't know. But I intend to find out."
  scene.message "\\b\\PN\\b: Whatever they're planning, we'll stop them. Together."
end

GameData::Cutscene.define :ch7_cultists_retreat do |scene|
  scene.play_bgm 'Pokemon XY - Tension'
  
  scene.message "\\bLyra\\b: They're... leaving?"
  
  scene.message "\\bKael\\b: They got what they wanted."
  scene.message "\\bKael\\b: Information. A measure of our strength."
  
  scene.message "\\b\\PN\\b: This was just a test."
  
  scene.message "\\bKael\\b: Exactly. Which means..."
  scene.message "\\bKael\\b: The real confrontation is still coming."
end
