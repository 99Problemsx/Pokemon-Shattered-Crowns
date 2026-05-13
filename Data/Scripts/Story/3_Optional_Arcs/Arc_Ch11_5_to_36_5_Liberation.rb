#===============================================================================
# POKÉMON SHATTERED CROWNS - NEW ARC: THE LIBERATION
#===============================================================================
# A recurring side-arc that runs across Acts 2-4, with six liberation
# operations the Chosen carry out against Hand-controlled Pokémon. Each
# raid frees a small number of Pokémon being used for cult purposes, and
# either reunites them with their original trainers or releases them
# back to the wild. Some of the freed Pokémon return to help in Ch34.
#
# Sites:
#   :liberation_op_1   Ashbury Underbelly         (Ch11.5, basic intro)
#   :liberation_op_2   Frostfall Slaughterhouse   (Ch17.5, hardest emotionally)
#   :liberation_op_3   Eternal Forest Pens         (Ch20.5, ties to Subject Zero arc)
#   :liberation_op_4   Stormwatch Warehouse        (Ch26.5)
#   :liberation_op_5   The Gateway Camps           (Ch29.5)
#   :liberation_op_6   Asgaheim Inner Sanctum      (Ch32.5 — pre-Malachar)
#
# Closure beats:
#   :liberation_reunion_montage   Ch34.5 — freed Pokémon arrive to help
#   :liberation_aftermath         Ch36.5 — sanctuary intake report
#
# This is the player's TEAM PLASMA REVERSED arc — instead of freeing
# Pokémon from trainers, the Chosen free them from a death-cult and
# match them with the people who lost them. It is the most uplifting
# thread in an otherwise heavy story.
#===============================================================================


#-------------------------------------------------------------------------------
# Liberation Op 1: Ashbury Underbelly (Ch11.5)
# A small cell, three cultists, six caged Pokémon. The first one feels like
# a heist. The next five make it clear how much there is to do.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :liberation_op_1_intro do |scene|
  scene.play_bgm 'Pokemon BW - Plasma Frigate'

  scene.message "\\bFern (over phone)\\b: \\PN. \\\\nOne of my correspondents says there's a Hand cell in the Ashbury underbelly. Six caged Pokémon. Three guards."
  scene.message "\\bFern\\b: I would not normally call you about something this small."
  scene.message "\\bFern\\b: But three of the Pokémon are *registered.* Someone is looking for them."
  scene.wait 30

  scene.message "\\b\\PN\\b: How long ago were they taken?"
  scene.message "\\bFern\\b: A Pidgeot — six weeks. \\\\nA Granbull — four months. \\\\nA Linoone — almost a year."
  scene.message "\\bFern\\b: The trainers have *not* given up."
  scene.wait 30

  scene.message "\\bLyra\\b: ...then we go tonight."
  scene.message "\\bKael\\b: I'll scout."
  scene.message "\\b\\PN\\b: Tell Fern we're moving."

  scene.script {
    $PokemonGlobal.sc_liberation_active = true if $PokemonGlobal.respond_to?(:sc_liberation_active=)
  }
end

GameData::Cutscene.define :liberation_op_1_raid do |scene|
  scene.play_bgm 'Pokemon BW - Plasma Frigate'

  scene.message "\\i[Three guards. Six cages. \\\\nKael's Zorua took the lookout. \\\\nLyra distracted with a flash-pulse. \\\\nYou took the door.]"
  scene.wait 30

  scene.trainer_battle :CULTIST, "Cell Leader", 0

  scene.message "\\bCell Leader\\b: *defeated, hands up* All right — *all right.* I'm not paid enough for this."
  scene.message "\\bKael\\b: You aren't paid at all. The Hand doesn't pay."
  scene.message "\\bCell Leader\\b: ...how did you know that."
  scene.message "\\bKael\\b: *to the cages* We have the keys?"
  scene.message "\\bLyra\\b: *holding up a ring of keys* On the wall by the door. Like *amateurs.*"
end

GameData::Cutscene.define :liberation_op_1_reunion do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "\\i[Eagle's Watch took the cultists. \\\\nFern arrived ninety minutes later in a horse-drawn cart with the families.]"
  scene.wait 30

  scene.message "\\bPidgeot Trainer\\b: *running* SCOUT — SCOUT — *baby*, oh baby —"
  scene.message "\\i[The Pidgeot saw him. Knocked him over.]"
  scene.message "\\i[Lyra started crying first.]"
  scene.wait 30

  scene.message "\\bGranbull Trainer\\b: *to \\Player* I had given up. \\\\nI had *given up.* She was four months gone."
  scene.message "\\b\\PN\\b: We don't give up on them."
  scene.wait 30

  scene.message "\\bLinoone Trainer\\b: A year. A *year.*"
  scene.message "\\bLinoone Trainer\\b: *to her Linoone* I'm so sorry, baby. I'm so sorry I wasn't faster."
  scene.message "\\i[The Linoone looked at her trainer, then at \\PN, then back at her trainer. \\\\nIt chirped once. Decided. Climbed into the trainer's arms.]"
  scene.wait 45

  scene.message "\\bFern\\b: *quietly, to \\PN* That's three. \\\\nThere will be more."
  scene.message "\\b\\PN\\b: Then we'll do more."

  scene.script {
    pbAchievement(:ach_liberation_first) if defined?(pbAchievement)
    scFateGrant(:fate_liberation_1, 1, "First liberation reunion") if defined?(scFateGrant)
    $PokemonGlobal.sc_liberation_count ||= 0
    $PokemonGlobal.sc_liberation_count += 1
  }
end


#-------------------------------------------------------------------------------
# Liberation Op 2: Frostfall Slaughterhouse (Ch17.5) — the hardest one
# The Hand uses captured Pokémon to feed their dark rituals. This op is
# about getting there before the next ritual. They don't make it in time
# for all of them. Some Pokémon they save. Some they bury.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :liberation_op_2_intro do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_tint :sepia, 30

  scene.message "\\bFern (over phone)\\b: \\PN. I'm sorry."
  scene.message "\\bFern\\b: This one is bad. \\\\nI don't want to send you. \\\\nI have to send you."
  scene.wait 30

  scene.message "\\b\\PN\\b: How bad?"
  scene.message "\\bFern\\b: Frostfall. A facility I didn't know existed. \\\\nThey've been using captured Pokémon for ritual fuel. Forty cages, last count. \\\\nThe next ritual is in *six hours.*"
  scene.wait 30

  scene.message "\\b\\PN\\b: ...we'll go now."
  scene.message "\\bFern\\b: \\PN — listen to me. \\\\nYou are going to be too late for *some* of them. \\\\nI need you to be ready for that before you go in."
  scene.wait 30

  scene.message "\\b\\PN\\b: *quiet* ...okay."
  scene.message "\\bFern\\b: I am so sorry."

  scene.camera_tint :reset, 30
end

GameData::Cutscene.define :liberation_op_2_raid do |scene|
  scene.play_bgm 'Pokemon BW - Plasma Frigate'
  scene.camera_tint :red, 30

  scene.message "\\i[The facility was a converted ice-cellar. Cold. Quiet. Wrong.]"
  scene.message "\\i[Kael went first. He stopped at the first row of cages and put his hand against his mouth.]"
  scene.wait 45

  scene.message "\\bKael\\b: *very flat* Six of them are gone. \\\\nAt least six."
  scene.message "\\bLyra\\b: *running past him to the next row* The rest are *alive* — start with the alive ones, start with the alive ones —"
  scene.wait 30

  scene.trainer_battle :CULTIST, "Ritual Master", 1

  scene.message "\\bRitual Master\\b: *defeated, laughing softly* You came. \\\\nYou were always going to come."
  scene.message "\\bRitual Master\\b: It doesn't matter. The ritual was *yesterday.*"
  scene.message "\\bRitual Master\\b: *what you found was the dressing.*"
  scene.wait 30

  scene.message "\\bKael\\b: *cold* How many."
  scene.message "\\bRitual Master\\b: Enough. \\\\nThe rest were on the menu for tomorrow. Congratulations, Chosen. You saved *thirty-four.*"

  scene.show_emotion :LYRA, :ellipses
  scene.message "\\bLyra\\b: *to the surviving cages, kneeling* Thirty-four. *Thirty-four.* Let's get you out of here. \\\\nWe're going to get you out of here."

  scene.camera_tint :reset, 30
end

GameData::Cutscene.define :liberation_op_2_burial do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  scene.message "\\i[Outside, the Eagle's Watch operatives helped them bury the six who hadn't survived.]"
  scene.message "\\i[Lyra insisted on doing the marker stones herself. \\\\nKael stayed in the back of the line. Watched. Did not look away.]"
  scene.wait 45

  scene.message "\\bOperative Vesper\\b: ...\\PN. \\\\nYou saved thirty-four. That's *thirty-four* whole worlds."
  scene.message "\\b\\PN\\b: I know. \\\\nThat doesn't make the six smaller."
  scene.message "\\bVesper\\b: No. \\\\nIt doesn't."
  scene.wait 30

  scene.message "\\bVesper\\b: Champion Marcus said to tell you something."
  scene.message "\\bVesper\\b: *exact quote* 'This is the part of the work I never got used to. I am sorry you have to learn it. You will not get used to it either. That is a *feature* of who you are, not a flaw.'"
  scene.message "\\bVesper\\b: I'm to wait while you cry. He was specific about that."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...thanks, Vesper."
  scene.message "\\bVesper\\b: *quietly* I miss my Captain too. \\\\nYou and I are in the same club, Chosen."

  scene.script {
    pbAchievement(:ach_liberation_grief) if defined?(pbAchievement)
    scFateGrant(:fate_liberation_2, 2, "Carried what could not be saved") if defined?(scFateGrant)
    $PokemonGlobal.sc_liberation_count ||= 0
    $PokemonGlobal.sc_liberation_count += 1
  }
end


#-------------------------------------------------------------------------------
# Liberation Ops 3-6 (compressed — each is one scene)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :liberation_op_3 do |scene|
  scene.play_bgm 'Pokemon BW - Plasma Frigate'
  scene.message "\\i[Eternal Forest pens. Twelve Pokemon. Connected to the same lab complex where you'd find Subject Zero.]"
  scene.message "\\i[The Hand was breeding fear into them. Lyra refused to leave until each one was held.]"
  scene.trainer_battle :CULTIST, "Pen Master", 0
  scene.message "\\bFern\\b: *over phone* Eleven trainers identified. The twelfth Pokémon, the Bisharp, was wild-caught. \\\\nI know someone who'll take her."
  scene.message "\\b\\PN\\b: Send her over."
  scene.script {
    pbAchievement(:ach_liberation_third) if defined?(pbAchievement)
    $PokemonGlobal.sc_liberation_count = ($PokemonGlobal.sc_liberation_count || 0) + 1
  }
end

GameData::Cutscene.define :liberation_op_4 do |scene|
  scene.play_bgm 'Pokemon BW - Plasma Frigate'
  scene.message "\\i[Stormwatch warehouse. Eighteen Pokemon, but the cell was warned. Half were already moved out.]"
  scene.message "\\i[The Hand had Telmer's old supply route memorized. He cried about it for an hour afterwards.]"
  scene.trainer_battle :CULTIST, "Quartermaster", 1
  scene.message "\\bTelmer\\b: I knew this route. I *used* this route. \\\\nI should have remembered sooner."
  scene.message "\\bLyra\\b: You're remembering NOW, Telmer. \\\\nThat's how every defector before you saved someone after their own."
  scene.script {
    pbAchievement(:ach_liberation_fourth) if defined?(pbAchievement)
    $PokemonGlobal.sc_liberation_count = ($PokemonGlobal.sc_liberation_count || 0) + 1
  }
end

GameData::Cutscene.define :liberation_op_5 do |scene|
  scene.play_bgm 'Pokemon BW - Plasma Frigate'
  scene.message "\\i[The Gateway Camps — large, mobile, full of Pokémon being prepared as ritual sacrifices for the final binding.]"
  scene.message "\\i[Eagle's Watch ran point this time. The Chosen were ONE of three teams.]"
  scene.message "\\i[They freed eighty-one Pokémon in a single night. None of them died.]"
  scene.message "\\bOperative Vesper\\b: *grinning, exhausted* This is how the war ends, \\PN. \\\\nNot with the big fight. With *eighty-one.*"
  scene.script {
    pbAchievement(:ach_liberation_fifth) if defined?(pbAchievement)
    $PokemonGlobal.sc_liberation_count = ($PokemonGlobal.sc_liberation_count || 0) + 1
  }
end

GameData::Cutscene.define :liberation_op_6 do |scene|
  scene.play_bgm 'Pokemon BW - Battle Ghetsis'
  scene.message "\\i[Asgaheim itself. The Hand's inner sanctum. Eight cages, all powerful Pokémon meant for the Nidhoggr summoning.]"
  scene.message "\\i[This was the one they almost didn't make. Lyra was caught. Kael fought a Sigilyph for fifteen minutes alone before reinforcements arrived.]"
  scene.trainer_battle :CULTIST, "Sanctum Warden", 2
  scene.message "\\bKael\\b: *bleeding, holding the last cage open* All right. \\\\nAll right. *Go.*"
  scene.message "\\i[The last cage opened. A Gallade stepped out. Saluted Kael. Walked to the wall. Sat down to wait.]"
  scene.message "\\bLyra\\b: ...it doesn't want to leave."
  scene.message "\\bGallade\\b: *thought-projection* \\\\nNo. I will stay. I will fight beside you when the dragon comes."
  scene.wait 30
  scene.message "\\b\\PN\\b: ...okay. \\\\nWelcome to the team, friend."
  scene.script {
    pbAchievement(:ach_liberation_sixth) if defined?(pbAchievement)
    $PokemonGlobal.sc_liberation_count = ($PokemonGlobal.sc_liberation_count || 0) + 1
    $PokemonGlobal.sc_gallade_ally = true if $PokemonGlobal.respond_to?(:sc_gallade_ally=)
  }
end


#-------------------------------------------------------------------------------
# Ch34.5 — The Reunion Montage
# When Nidhoggr emerges, dozens of Pokémon the Chosen freed appear on the
# battlefield. Their former trainers are not there. The Pokémon are.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch34_5_liberation_reunion do |scene|
  scene.play_bgm 'Pokemon SWSH - Battle! Eternatus'
  scene.camera_flash 40

  scene.message "\\i[Nidhoggr's first form was breaking. \\\\nYou were almost out of revives. Lyra was kneeling. Kael was *snarling.*]"
  scene.message "\\i[Then the sky cracked open.]"
  scene.wait 30

  # The freed Pokémon arrive
  scene.message "\\i[The Pidgeot from Op 1. The Granbull. The Linoone. \\\\nThirty-four from the Frostfall facility. \\\\nThe Bisharp from the forest pens. \\\\nThe Gallade from the Sanctum.]"
  scene.message "\\i[All of them. *All of them.* Arrived without their trainers, who hadn't been able to make it to Asgaheim.]"
  scene.message "\\i[The Pokémon had come *themselves.*]"
  scene.wait 45

  scene.message "\\bLyra\\b: *crying* They *remember* us —"
  scene.message "\\bKael\\b: *voice cracking* They didn't have to come. They *chose* it."
  scene.wait 30

  scene.message "\\bGallade\\b: *thought-projection to all three* \\\\nYou freed us so we could choose. \\\\nWe chose this."
  scene.message "\\bGallade\\b: \\\\nNow strike the dragon."
  scene.wait 30

  scene.message "\\b\\PN\\b: *steel-blue light blazing across the field* On me. \\\\nEVERYONE — ON ME!"

  # This is the Ch34 turning-point. The freed Pokémon stay for the rest
  # of the fight and provide a flat 25% damage boost to the player's team
  # in the in-engine implementation.
  scene.script {
    $PokemonGlobal.sc_liberation_reunion_fired = true if $PokemonGlobal.respond_to?(:sc_liberation_reunion_fired=)
    pbAchievement(:ach_liberation_reunion) if defined?(pbAchievement)
  }
end


#-------------------------------------------------------------------------------
# Ch36.5 — Sanctuary Intake Report (one year later)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch36_5_liberation_aftermath do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "\\bLyra\\b: \\PN. Look at this. \\\\nFern sent the year-end intake."
  scene.wait 20

  scene.message "\\i[A printed report on Verdantia letterhead. Three pages.]"
  scene.message "\\bLyra\\b: \\\\nLiberated this year: one hundred and thirty-seven Pokémon."
  scene.message "\\bLyra\\b: Reunited with original trainers: ninety-one."
  scene.message "\\bLyra\\b: Released back to the wild: twenty-eight."
  scene.message "\\bLyra\\b: Stayed at the Sanctuary as residents: eighteen, including our Gallade."
  scene.wait 30

  scene.message "\\b\\PN\\b: Ninety-one *families.*"
  scene.message "\\bLyra\\b: Ninety-one families."
  scene.message "\\bKael\\b: *quietly* That's the number that matters. \\\\nThe Generals didn't make it into a textbook. The ninety-one did. \\\\nI'll take that trade."

  scene.script {
    pbAchievement(:ach_liberation_total) if defined?(pbAchievement)
  }
end


#===============================================================================
# Codex
#===============================================================================
if defined?(CodexRegistry)
  CodexRegistry.add(:LIBERATION_ARC,
    title:    "The Liberation",
    category: :HISTORY,
    text:     "Six liberation operations carried out by the Chosen across " \
              "Acts 2-4. \\\\nOver one hundred Pokémon freed from cult " \
              "captivity, nearly all of them reunited with the trainers " \
              "still searching. The most uplifting thread of the war " \
              "years. \\\\nFern of Verdantia coordinated the intelligence; " \
              "the Eagle's Watch provided extraction; the Chosen did the " \
              "hard part — the door. \\\\nMost of the freed Pokémon " \
              "returned of their own choice to fight at Asgaheim when " \
              "Nidhoggr emerged. The Hand had not anticipated this. The " \
              "Hand did not understand what they had taught the Pokémon."
  )

  CodexRegistry.add(:THE_GALLADE,
    title:    "The Gallade",
    category: :CHARACTERS,
    text:     "A psychic Gallade liberated from the Asgaheim inner sanctum " \
              "in Op 6. Refused to leave; refused to be reunited with any " \
              "prior trainer (records suggest it was wild-caught). \\\\n" \
              "Chose to fight at the Chosen's side at the Nidhoggr battle " \
              "and stayed with them afterwards as a sanctuary resident. \\\\n" \
              "Speaks through thought-projection. Has refused every name " \
              "offered. Goes by 'the Gallade.' Is fine with this."
  )
end


#===============================================================================
# Achievements
#===============================================================================
if defined?(GameData::Achievement)
  GameData::Achievement.define :ach_liberation_first do |a|
    a.name "The First Cage"
    a.description "Complete the first liberation operation."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_liberation_grief do |a|
    a.name "Thirty-Four Whole Worlds"
    a.description "Survive the Frostfall liberation. Bury the six."
    a.category :story_hidden
    a.hidden true
  end
  GameData::Achievement.define :ach_liberation_third do |a|
    a.name "The Forest Pens"
    a.description "Complete the Eternal Forest liberation."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_liberation_fourth do |a|
    a.name "Telmer's Atonement"
    a.description "Complete the Stormwatch warehouse liberation."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_liberation_fifth do |a|
    a.name "Eighty-One in a Night"
    a.description "Complete the Gateway Camps liberation."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_liberation_sixth do |a|
    a.name "The Sanctum Door"
    a.description "Complete the Asgaheim inner sanctum liberation."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_liberation_reunion do |a|
    a.name "They Came Back"
    a.description "Witness the freed Pokémon return at Nidhoggr's emergence."
    a.category :story_hidden
    a.hidden true
    a.reward_item :MASTERBALL, 1
  end
  GameData::Achievement.define :ach_liberation_total do |a|
    a.name "Ninety-One Families"
    a.description "Read the year-end Sanctuary intake report."
    a.category :story_hidden
  end
end


#===============================================================================
# Save flags
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_liberation_active, :sc_liberation_count
  attr_accessor :sc_liberation_reunion_fired, :sc_gallade_ally
end

[:sc_liberation_active, :sc_liberation_reunion_fired, :sc_gallade_ally].each do |key|
  SaveData.register(key) do
    ensure_class :TrueClass
    save_value { $PokemonGlobal.send(key) || false }
    load_value { |v| $PokemonGlobal.send("#{key}=", v) }
    new_game_value { false }
  end
end

SaveData.register(:sc_liberation_count) do
  ensure_class :Integer
  save_value { $PokemonGlobal.sc_liberation_count || 0 }
  load_value { |v| $PokemonGlobal.sc_liberation_count = v }
  new_game_value { 0 }
end
