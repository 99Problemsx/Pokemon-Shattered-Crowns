#===============================================================================
# Astoria Refugee Side Quests
#===============================================================================
# Seven small side stories for the Astoria-line survivors who fled to Fracture
# after the World-Tree-Root collapse in Ch37. Each is a single-NPC quest,
# unlocked post-Ch38 and tied to a meaningful reward.
#
# All seven sit on Map 44 (Fracture / Astoria coast town). The event manifest
# in Data/Scripts/Events/Astoria_Refugees_Map044.rb places the NPCs.
#===============================================================================

# Quest 1 — Anya the Elder ("Three remembering-tasks")
GameData::Quest.define :astoria_sq_anya_remembering do |q|
  q.name "Three Remembering-Tasks"
  q.description "Elder Anya can't sleep — three small chores from the old Astoria observances she has not been able to keep since the displacement."
  q.giver "Elder Anya"
  q.location "Fracture, Astoria Refugee Quarter"
  q.objective :complete_chain, count: 3
  q.on_complete do
    pbReceiveItem(:HEARTSCALE, 5)
    pbReceiveItem(:RAREBONE, 1) rescue pbReceiveItem(:NUGGET, 2)
    pbEarnFatePoints(1) if defined?(pbEarnFatePoints)
    codexDiscover(:ASTORIA_OBSERVANCES) if defined?(codexDiscover)
  end
end

# Quest 2 — Kell the Net-mender (lost his sister's Relicanth carving)
GameData::Quest.define :astoria_sq_kell_carving do |q|
  q.name "The Carved Relicanth"
  q.description "Kell lost the bone Relicanth his sister carved for him. Last seen on the tide-flats north of Fracture before the panic."
  q.giver "Kell"
  q.location "Fracture Pier"
  q.objective :find_hidden_item, item: :ASTORIA_CARVING
  q.on_complete do
    pbReceiveItem(:NETBALL, 10)
    pbReceiveItem(:WAVEINCENSE) rescue pbReceiveItem(:SEAINCENSE)
    pbEarnFatePoints(1) if defined?(pbEarnFatePoints)
  end
end

# Quest 3 — Vora the Salt-singer (her songs are forgotten lyrics)
GameData::Quest.define :astoria_sq_vora_songs do |q|
  q.name "The Salt-Singer's Lyrics"
  q.description "Vora can hum the old songs but can't remember the words. Find the three keepers (Sela / Orin / Vera) and ask each for one verse."
  q.giver "Vora"
  q.location "Fracture, Tavern"
  q.objective :talk_to_chain, npcs: ["Keeper Sela", "Keeper Orin", "Keeper Vera"]
  q.on_complete do
    pbReceiveItem(:TM_HYPERVOICE) rescue pbReceiveItem(:HEARTSCALE, 8)
    pbEarnFatePoints(2) if defined?(pbEarnFatePoints)
    codexDiscover(:ASTORIA_SALT_SONG) if defined?(codexDiscover)
  end
end

# Quest 4 — Tobin the Boatwright (build a Shadow's-Crossing boat for the trial)
GameData::Quest.define :astoria_sq_tobin_boat do |q|
  q.name "The Shadow-Crossing Boat"
  q.description "Tobin needs Skarmory feathers, Aron scrap, and Corsola coral to repair an old shadow-realm ferry. Bring him three of each."
  q.giver "Tobin"
  q.location "Fracture, Boatyard"
  q.objective :deliver_items, items: { SKARMORYFEATHER: 3, ARONSCRAP: 3, CORSOLACORAL: 3 }
  q.on_complete do
    pbReceiveItem(:METALCOAT) rescue pbReceiveItem(:HARDSTONE)
    pbReceiveItem(:HEAVYBALL, 5)
    pbEarnFatePoints(2) if defined?(pbEarnFatePoints)
  end
end

# Quest 5 — Mira the Child (lost her partner — a Buizel — in the panic)
GameData::Quest.define :astoria_sq_mira_buizel do |q|
  q.name "Mira's Buizel"
  q.description "Mira's Buizel ran off when the Fracture happened. Mira is six. She has not slept in three nights. Find her partner."
  q.giver "Mira"
  q.location "Fracture Square"
  q.objective :find_event, event: :buizel_found_map44
  q.on_complete do
    pbReceiveItem(:WATERSTONE)
    pbReceiveItem(:LUCKYINCENSE) rescue pbReceiveItem(:NETBALL, 5)
    pbEarnFatePoints(2) if defined?(pbEarnFatePoints)
    codexDiscover(:MIRA_AND_BUIZEL) if defined?(codexDiscover)
  end
end

# Quest 6 — Old Halvor (knows where Aerodactyl's last fossil nests are)
GameData::Quest.define :astoria_sq_halvor_fossils do |q|
  q.name "The Fossil-Keeper's Trust"
  q.description "Halvor will share the location of the cliff nests — but only after he sees you treat a Rhyhorn with the old respect-gesture (a script-call event)."
  q.giver "Old Halvor"
  q.location "Fracture Cliffs"
  q.objective :perform_action, action: :rhyhorn_respect
  q.on_complete do
    pbReceiveItem(:OLDAMBER)
    pbReceiveItem(:CLAWFOSSIL)
    pbReceiveItem(:JAWFOSSIL) rescue pbReceiveItem(:HARDSTONE, 3)
    pbEarnFatePoints(2) if defined?(pbEarnFatePoints)
    codexDiscover(:HALVOR_FOSSILS) if defined?(codexDiscover)
  end
end

# Quest 7 — The Three Refugee Sisters (Sela / Orin / Vera's distant cousins)
GameData::Quest.define :astoria_sq_three_sisters do |q|
  q.name "The Three Cousins"
  q.description "Three Astoria sisters were separated in the Fracture chaos. Their cousins (the Keepers) need them found and reunited at the Tavern."
  q.giver "Keeper Sela"
  q.location "Fracture and surrounding maps"
  q.objective :find_three, names: ["Cousin Lia", "Cousin Bryn", "Cousin Ase"]
  q.on_complete do
    pbReceiveItem(:RARECANDY, 3)
    pbReceiveItem(:PPMAX, 2) rescue pbReceiveItem(:PPUP, 5)
    pbEarnFatePoints(3) if defined?(pbEarnFatePoints)
    codexDiscover(:THREE_COUSINS) if defined?(codexDiscover)
  end
end


#===============================================================================
# Cutscenes (one short intro per quest — the meat is the gameplay objective)
#===============================================================================

GameData::Cutscene.define :sq_astoria_anya_intro do |scene|
  scene.message "\\bElder Anya\\b: The displacement broke our rhythm, child."
  scene.message "\\bElder Anya\\b: Three small things we used to do daily, and I cannot rest while they are undone."
  scene.message "\\bElder Anya\\b: A salt offering at dawn. A net touched after sundown. A name spoken to the sea on the third day."
  scene.message "\\bElder Anya\\b: Would you carry them for me, while my knees still ache from the road?"
end

GameData::Cutscene.define :sq_astoria_kell_intro do |scene|
  scene.message "\\bKell\\b: My sister carved me a Relicanth from bone when I was twelve. I carried it for thirty years."
  scene.message "\\bKell\\b: I lost it on the flats when we were running. *I lost her at the same time.* Please — if you find it..."
end

GameData::Cutscene.define :sq_astoria_vora_intro do |scene|
  scene.message "\\bVora\\b: I can hum every salt-song my mother taught me. *every one.*"
  scene.message "\\bVora\\b: But the words. The words are *gone*. The keepers — Sela, Orin, Vera — they each remember a verse. Bring me what they can give, and I will sing them whole again."
end

GameData::Cutscene.define :sq_astoria_tobin_intro do |scene|
  scene.message "\\bTobin\\b: I'm rebuilding a shadow-crossing ferry — old Astoria design, the kind that crosses to the spirit side."
  scene.message "\\bTobin\\b: I need Skarmory feathers for the sail-spars, Aron scrap for the nails, and Corsola coral for the prow. Three of each. I'll make it worth your while."
end

GameData::Cutscene.define :sq_astoria_mira_intro do |scene|
  scene.message "\\bMira\\b: *small voice* Have you seen my Buizel? She's orange. She has a white tail."
  scene.message "\\bMira\\b: She ran the wrong way when everything was shaking. *I called and called.*"
  scene.message "\\b\\PN\\b: ...We'll find her, Mira. I promise."
end

GameData::Cutscene.define :sq_astoria_halvor_intro do |scene|
  scene.message "\\bOld Halvor\\b: You want to know where the Aerodactyl roost is."
  scene.message "\\bOld Halvor\\b: *Everyone* wants to know where the Aerodactyl roost is. — But I will not tell strangers. Show me you understand the old respect-gesture for a Rhyhorn, and I will reconsider."
end

GameData::Cutscene.define :sq_astoria_sisters_intro do |scene|
  scene.message "\\bKeeper Sela\\b: My cousins — Lia, Bryn, and Ase — were swept apart in the panic. Lia ran inland. Bryn stayed at the harbour. Ase, I do not know."
  scene.message "\\bKeeper Sela\\b: If you can find them and bring them to the Tavern, the three of us will owe you a debt the old families honour."
end
