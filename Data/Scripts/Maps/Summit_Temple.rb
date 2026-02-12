#===============================================================================
# Summit Temple - First Truth - Cutscenes
# Extracted from Main_Story.rb Chapter 10-11 (Temple Revelations)
#===============================================================================

GameData::Cutscene.define :ch10_kael_memory_flash do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_flash 10
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.message "\\bMira's Voice\\b: Kael! Look at the view!"
  scene.message "\\bMira's Voice\\b: It's beautiful!"
  
  scene.message "\\bKael\\b: ...!"
  scene.message "\\bKael\\b: (Mira...)"
  
  scene.message "\\bLyra\\b: Kael? You okay?"
  
  scene.message "\\bKael\\b: ...Fine. Keep moving."
  
  scene.message "\\bKael\\b: (She's been dead for years.)"
  scene.message "\\bKael\\b: (Why do I keep hearing her voice?)"
  scene.message "\\bKael\\b: (Is it the mark? These mountains?)"
  
  scene.message "\\bKael\\b: *quietly* Thanks, Shadow."
end

GameData::Cutscene.define :ch10_mira_memory do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  
  scene.message "\\i[KAEL'S PERSPECTIVE - MEMORY]"
  
  scene.message "\\bYoung Mira\\b: Kael! You have to see the sunset!"
  scene.message "\\bYoung Kael\\b: I've seen sunsets before."
  scene.message "\\bYoung Mira\\b: Not like THIS one!"
  
  scene.message "\\bYoung Mira\\b: See? It's magic!"
  scene.message "\\bYoung Kael\\b: *small smile* Yeah. It is."
  
  scene.message "\\bYoung Mira\\b: Promise me something, Kael."
  scene.message "\\bYoung Mira\\b: Promise we'll always watch sunsets together."
  
  scene.message "\\bYoung Kael\\b: ...I promise."
  
  scene.fade_in
end

GameData::Cutscene.define :ch10_ancient_shrine do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bKael\\b: These are ancient. Thousands of years."
  
  scene.message "\\bLyra\\b: Look! Three figures!"
  
  scene.message "\\bKael\\b: The guardians..."
  scene.message "\\bKael\\b: But the details are too worn."
  scene.message "\\bKael\\b: I can't make out their forms."
  
  scene.message "\\b\\PN\\b: The temple should have more."
  scene.message "\\b\\PN\\b: Let's keep going."
end

GameData::Cutscene.define :ch10_shrine_inscription do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bLyra\\b: Can you read it?"
  
  scene.message "\\bKael\\b: It's ancient Coronan..."
  scene.message "\\bKael\\b: Similar to texts I studied."
  
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
  
  scene.message "\\bLyra\\b: I really, REALLY don't like heights."
  
  scene.message "\\bKael\\b: Don't look down. Focus on my back."
  scene.message "\\bKael\\b: One step at a time."
  
  scene.message "\\b\\PN\\b: I've got you, Lyra. We'll go slow."
  
  scene.message "\\bKael\\b: You're doing well."
  scene.message "\\bKael\\b: Just a little further."
  
  scene.message "\\bLyra\\b: Never. Again."
  
  scene.message "\\bKael\\b: ...You did well."
end

GameData::Cutscene.define :ch10_temple_in_sight do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  scene.message "\\bLyra\\b: *breathless* It's real..."
  
  scene.message "\\bKael\\b: The Summit Temple."
  scene.message "\\bKael\\b: Built by the first vessels."
  scene.message "\\bKael\\b: Or so the legends say."
  
  scene.message "\\b\\PN\\b: We made it."
  
  scene.message "\\bLyra\\b: Do we just... go in?"
  
  scene.message "\\bKael\\b: I think that's our answer."
end

GameData::Cutscene.define :ch10_lyra_guardian_sense do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  scene.message "\\bLyra\\b: (What is this feeling...?)"
  
  scene.message "\\b???\\b: Child of light."
  scene.message "\\b???\\b: You have come far."
  
  scene.message "\\bLyra\\b: *gasps* Did you hear that?"
  
  scene.message "\\bKael\\b: Hear what?"
  
  scene.message "\\bLyra\\b: A voice... calling me..."
  
  scene.message "\\b???\\b: When you are ready, seek me."
  scene.message "\\b???\\b: In the light that judges all."
  
  scene.message "\\bLyra\\b: I think... my Guardian spoke to me."
  scene.message "\\bLyra\\b: For just a moment."
end

GameData::Cutscene.define :ch10_entering_temple do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
  scene.message "\\bKael\\b: Stay alert."
  scene.message "\\bKael\\b: Professor Aldric said the Hand knows of this place."
  
  scene.message "\\b\\PN\\b: We should find the records quickly."
  scene.message "\\b\\PN\\b: Learn what we can and get out."
  
  scene.message "\\bLyra\\b: *looking around* This place feels... alive."
  scene.message "\\bLyra\\b: Like it's watching us."
  
  scene.message "\\bKael\\b: It probably is."
  scene.message "\\bKael\\b: Ancient temples often have guardian spirits."
  
  scene.message "\\b\\PN\\b: Comforting."
end

#===============================================================================
# Chapter 11: The First Truth - Summit Temple Revelations
#===============================================================================

GameData::Cutscene.define :ch11_temple_entrance do |scene|
  scene.play_bgm 'Pokemon ORAS - Ancient Pyramid'
  
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
end

GameData::Cutscene.define :ch11_temple_interior do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bLyra\\b: How is this possible?"
  scene.message "\\bLyra\\b: It seemed smaller from outside..."
  
  scene.message "\\bKael\\b: Space distortion."
  scene.message "\\bKael\\b: The Guardians could manipulate reality itself."
  
  scene.message "\\b\\PN\\b: Look at these paintings..."
  scene.message "\\b\\PN\\b: They tell a story."
  
  scene.message "\\bKael\\b: The history of the Guardians."
  scene.message "\\bKael\\b: From their rise... to their fall."
  
  scene.message "\\bLyra\\b: Why did they fall?"
  
  scene.message "\\bKael\\b: That's what we're here to find out."
end

GameData::Cutscene.define :ch11_first_mural do |scene|
  scene.play_bgm 'Pokemon DPPT - Lake'
  
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
end

GameData::Cutscene.define :ch11_nidhoggr_mural do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
  scene.message "\\bKael\\b: 'The Gnawing One. Nidhoggr.'"
  scene.message "\\bKael\\b: 'Before time. Before existence.'"
  scene.message "\\bKael\\b: 'Hunger given form.'"
  
  scene.message "\\bLyra\\b: *backing away* I don't want to look at that."
  
  scene.message "\\b\\PN\\b: What is it?"
  
  scene.message "\\bKael\\b: The thing that nearly destroyed everything."
  scene.message "\\bKael\\b: The reason the Guardians exist."
  
  scene.message "\\bKael\\b: 'They sacrificed their humanity.'"
  scene.message "\\bKael\\b: 'To seal the Gnawing One.'"
  scene.message "\\bKael\\b: 'They became something more.'"
  
  scene.message "\\bLyra\\b: *quietly* That's what we might have to do."
  scene.message "\\bLyra\\b: Give up who we are."
end

GameData::Cutscene.define :ch11_temple_records do |scene|
  scene.play_bgm 'Pokemon RSE - Sealed Chamber'
  
  scene.message "\\bKael\\b: This will take months to translate..."
  
  scene.message "\\bLyra\\b: Wait! This one has pictures!"
  
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
  
  scene.message "\\i[LYRA'S PERSPECTIVE]"
  
  scene.message "\\bLyra\\b: *gasps* What—"
  
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
  
  scene.message "\\bKael\\b: Lyra? What happened?"
  
  scene.message "\\bLyra\\b: I... I saw her. Xerneas."
  scene.message "\\bLyra\\b: She was... beautiful."
end

GameData::Cutscene.define :ch11_yveltal_vision do |scene|
  scene.play_bgm 'Pokemon XY - Xerneas/Yveltal Theme'
  scene.camera_flash 20
  
  scene.message "\\i[KAEL'S PERSPECTIVE]"
  
  scene.message "\\bKael\\b: (What—)"
  
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
end

GameData::Cutscene.define :ch11_hoopa_revelation do |scene|
  scene.play_bgm 'Pokemon ORAS - Primal Reversion'
  
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
  
  scene.message "\\bLyra\\b: Does that mean...?"
  
  scene.message "\\bKael\\b: It means we might not all survive this."
end

GameData::Cutscene.define :ch11_burden_of_choice do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\b\\PN\\b: So we're expected to... what?"
  scene.message "\\b\\PN\\b: Die to save the world?"
  
  scene.message "\\bKael\\b: Maybe. The tablets aren't clear."
  scene.message "\\bKael\\b: But the first vessels gave up their humanity."
  scene.message "\\bKael\\b: We may have to give up something too."
  
  scene.message "\\bLyra\\b: I have people I need to get back to."
  scene.message "\\bLyra\\b: Elena. Grandma."
  
  scene.message "\\bKael\\b: And if the seal breaks?"
  scene.message "\\bKael\\b: There won't be anyone left to get back to."
  
  scene.message "\\b\\PN\\b: We don't have to decide now."
  scene.message "\\b\\PN\\b: We need more information."
  scene.message "\\b\\PN\\b: And we need to stop the Hand first."
  
  scene.message "\\bKael\\b: Agreed."
  scene.message "\\bLyra\\b: *shakily* Agreed."
end

GameData::Cutscene.define :ch11_are_we_chosen do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bLyra\\b: So... we're really Chosen Ones?"
  scene.message "\\bLyra\\b: Like in the legends?"
  
  scene.message "\\bKael\\b: The evidence suggests so."
  scene.message "\\bKael\\b: The marks. The dreams. The cult's interest."
  
  scene.message "\\b\\PN\\b: Can we refuse?"
  
  scene.message "\\bKael\\b: ..."
  scene.message "\\bKael\\b: I don't know."
  
  scene.message "\\bLyra\\b: Do we WANT to refuse?"
  
  scene.message "\\b\\PN\\b: If we don't stop this..."
  scene.message "\\b\\PN\\b: Who will?"
  
  scene.message "\\bKael\\b: A fair point."
  
  scene.message "\\bLyra\\b: Then... we do this."
  scene.message "\\bLyra\\b: Together."
  
  scene.message "\\bKael\\b: *small nod* Together."
  
  scene.message "\\b\\PN\\b: Together."
end

GameData::Cutscene.define :ch11_temple_rumble do |scene|
  scene.play_bgm 'Pokemon XY - Team Flare Appears'
  scene.camera_shake 5
  
  scene.message "\\bKael\\b: *alert* That wasn't natural."
  
  scene.message "\\bLyra\\b: Earthquake?"
  
  scene.message "\\bKael\\b: No. Listen."
  
  scene.message "\\b\\PN\\b: Someone's attacking the temple!"
  
  scene.message "\\bKael\\b: The Shattered Hand."
  scene.message "\\bKael\\b: They tracked us."
  
  scene.message "\\bLyra\\b: What do we do?"
  
  scene.message "\\bKael\\b: We take the most important tablets."
  scene.message "\\bKael\\b: Then we run."
  
  scene.message "\\b\\PN\\b: We can fight!"
  
  scene.message "\\bKael\\b: Not their whole army. Not yet."
  scene.message "\\bKael\\b: Live to fight another day."
end

GameData::Cutscene.define :ch11_gathering_knowledge do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  
  scene.message "\\bKael\\b: These describe the seal locations."
  scene.message "\\bKael\\b: Where Hoopa is imprisoned."
  
  scene.message "\\bLyra\\b: And this one shows how to strengthen it!"
  
  scene.message "\\b\\PN\\b: Take everything you can carry."
  
  scene.message "\\bCultist Voice\\b: Spread out! They're here somewhere!"
  
  scene.message "\\bKael\\b: *quietly* Time to go."
  
  scene.message "\\bLyra\\b: There's a back exit."
  scene.message "\\bLyra\\b: I saw it in one of the murals!"
  
  scene.message "\\b\\PN\\b: Lead the way!"
end

GameData::Cutscene.define :ch11_escape_tunnel do |scene|
  scene.play_bgm 'Pokemon RSE - Mt. Pyre'
  
  scene.message "\\bLyra\\b: *whispering* Watch your step. It's slippery."
  
  scene.message "\\bKael\\b: Where does this lead?"
  
  scene.message "\\bLyra\\b: The mural showed it emerging near a river."
  scene.message "\\bLyra\\b: On the mountain's far side."
  
  scene.message "\\b\\PN\\b: Good. That puts distance between us and them."
  
  scene.message "\\bKael\\b: They'll realize we escaped."
  scene.message "\\bKael\\b: They'll come after us."
  
  scene.message "\\bLyra\\b: Then we'll be ready."
  
  scene.message "\\bKael\\b: *glancing at her* Yes."
  scene.message "\\bKael\\b: We will be."
end

GameData::Cutscene.define :ch11_mountain_escape do |scene|
  scene.play_bgm 'Pokemon XY - Route 4'
  
  scene.message "\\bLyra\\b: We made it!"
  
  scene.message "\\bKael\\b: Don't celebrate yet."
  scene.message "\\bKael\\b: We need to put more distance—"
  
  scene.message "\\bShade\\b: Well, well."
  scene.message "\\bShade\\b: The marked ones."
  
  scene.message "\\b\\PN\\b: General Shade..."
  
  scene.message "\\bShade\\b: You've done well to find this place."
  scene.message "\\bShade\\b: But the chase ends here."
end
