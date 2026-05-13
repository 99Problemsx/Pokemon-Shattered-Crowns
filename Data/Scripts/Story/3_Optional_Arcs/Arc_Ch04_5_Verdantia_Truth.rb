#===============================================================================
# POKÉMON SHATTERED CROWNS - NEW ARC: THE VERDANTIA TRUTH
#===============================================================================
# A 7-scene side-arc that runs as Chapter 4.5 (between the original Ch4
# gym victory and Ch5's library arc). Fern, the youngest gym leader,
# secretly recognized the marks the first time she met the Chosen — she
# has been writing to Aldric about it for months. After the gym battle,
# she invites \PN, Lyra, and Kael back to the greenhouse for tea. What
# unfolds is the first real recognition the Chosen receive from someone
# outside the trio: they are seen.
#
# Outcomes:
#   - Fern formally allies with the Chosen (codex unlock + future support)
#   - The first Heart-of-Asgheim Sprig is given (key item)
#   - Player learns the Astoria-line botanical signature for the first time
#   - Lyra discovers her grandmother knew Fern as a child
#
# This arc is the player's first MID-STORY ALLY beat. The original story
# has no analogue. Fern becomes one of three NPC-side allies recurring
# through the rest of the game (Eagle's Watch Operative Vesper, Fern,
# and later Captain Lior in Astoria).
#===============================================================================


GameData::Cutscene.define :ch4_5_verdantia_invitation do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'

  scene.message "\\bFern\\b: Wait — before you leave."
  scene.message "\\bFern\\b: I have a kettle on. \\\\nIt would be a kindness if you came back to the greenhouse for an hour."
  scene.wait 20

  scene.message "\\bKael\\b: ...we just *fought.* You want us to —"
  scene.message "\\bFern\\b: I want you to *sit down.* All three of you."
  scene.message "\\bFern\\b: Please."
  scene.wait 30

  scene.show_emotion :LYRA, :exclamation
  scene.message "\\bLyra\\b: ...okay."
  scene.message "\\b\\PN\\b: Lead the way."

  # Move handoff
  scene.script {
    $game_switches[:sc_verdantia_arc_started] = true if defined?($game_switches)
  }
end


GameData::Cutscene.define :ch4_5_greenhouse_tea do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.camera_tint :sepia, 30

  scene.message "\\i[The greenhouse smelled like hot lemongrass and damp soil.]"
  scene.message "\\i[Fern set out four cups. She poured for everyone. She sat down without ceremony.]"
  scene.wait 30

  scene.message "\\bFern\\b: I'm going to tell you a thing, and then I'm going to ask you a thing."
  scene.message "\\bFern\\b: The first time you walked in here for the gym registration — \\\\nI saw the marks. All three. I've seen the shape of those marks in books since I was twelve."
  scene.wait 30

  scene.show_emotion :LYRA, :exclamation
  scene.message "\\bLyra\\b: You *knew*? \\\\nAnd you didn't say anything?"

  scene.message "\\bFern\\b: I sent two letters to Professor Aldric the same evening. \\\\nWe've been corresponding ever since."
  scene.message "\\bFern\\b: I am twenty-two years old. \\\\nI did not know if you wanted to *be* Chosen yet. I was not going to be the one to tell you."

  scene.message "\\bKael\\b: ...that was generous."
  scene.message "\\bFern\\b: It was *necessary.* The mark you wear has to be a choice you carry. Not a label someone gave you."

  scene.message "\\b\\PN\\b: So what's the thing you want to ask?"
  scene.wait 20

  scene.camera_tint :reset, 30
end


GameData::Cutscene.define :ch4_5_fern_question do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "\\bFern\\b: I want to ask if I can be your contact. \\\\nFor research. For botanical data. For evacuation routing when it comes to that."
  scene.message "\\bFern\\b: I cannot fight the way you can fight. \\\\nBut I have a greenhouse, and a name, and a thousand correspondents. \\\\nLet me put that to your work."
  scene.wait 30

  scene.message "\\bKael\\b: We don't have a *use case* for a greenhouse."
  scene.message "\\bFern\\b: *patient* Yes you do. \\\\nYou just don't know it yet."
  scene.wait 20

  scene.choice [
    "Yes. Thank you, Fern.",
    "We'll think about it.",
    "...why us, specifically?"
  ] do |result|
    case result
    when 0
      pbMessage("\\b\\PN\\b: Yes. Thank you, Fern. \\\\nWe accept.")
      pbMessage("\\bFern\\b: *visible relief* Then I work for the Chosen now. \\\\nWhen you need me, the greenhouse phone rings on the third ring or not at all. Trust the third ring.")
      $PokemonGlobal.sc_verdantia_allied = true if $PokemonGlobal.respond_to?(:sc_verdantia_allied=)
      scFateGrant(:fate_verdantia_ally, 1, "Fern of Verdantia joins your cause") if defined?(scFateGrant)
    when 1
      pbMessage("\\b\\PN\\b: We'll think about it. \\\\nIt's a lot to take in.")
      pbMessage("\\bFern\\b: That's *exactly* the right answer. \\\\nGo on. I'm not going anywhere.")
    when 2
      pbMessage("\\b\\PN\\b: ...why us, specifically?")
      pbMessage("\\bFern\\b: Because every other person who ever wore that mark died before they could ask.")
      pbMessage("\\bFern\\b: I would like one of them, for once, to *survive.*")
      pbMessage("\\b\\PN\\b: ...alright. Yes.")
      $PokemonGlobal.sc_verdantia_allied = true if $PokemonGlobal.respond_to?(:sc_verdantia_allied=)
      scFateGrant(:fate_verdantia_ally, 1, "Fern of Verdantia joins your cause") if defined?(scFateGrant)
    end
  end
end


GameData::Cutscene.define :ch4_5_astoria_signature do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'

  scene.message "\\bFern\\b: Before you go — one more thing. \\\\nLook at this."
  scene.wait 20

  # TODO: Event Sequence - The Sprig
  # - Fern lays a sprig of pale-silver leaves on the table
  # - The leaves catch the light differently than any other plant
  # - Tiny veins glow faintly when Lyra's hand passes over them

  scene.message "\\i[Fern set out a sprig of silvery green leaves. The leaves looked normal, until Lyra leaned over them.]"
  scene.show_emotion :LYRA, :exclamation
  scene.wait 20

  scene.message "\\bLyra\\b: They're — *glowing*?"
  scene.message "\\bFern\\b: Only when someone Astoria-blood comes near. \\\\nThis is called *Heart-of-Asgheim.* It grows only in two places in the world."
  scene.message "\\bFern\\b: One of them is at the Sunrise Farm where your grandmother lives, Lyra."
  scene.message "\\bFern\\b: The other is in a planter on my counter."
  scene.wait 30

  scene.message "\\bLyra\\b: *very quietly* Grandma's hedge."
  scene.message "\\bLyra\\b: I always wondered why the hedge stayed green even in winter."
  scene.message "\\bFern\\b: Now you know."
  scene.wait 30

  scene.message "\\bFern\\b: Take this sprig. \\\\nIf you ever meet someone you suspect is Astoria-line, hold the sprig in your hand and watch what happens."
  scene.message "\\bFern\\b: It'll save you weeks of investigation. \\\\nAnd it might save someone's life."

  scene.script {
    pbReceiveItem(:HEART_OF_ASGHEIM_SPRIG, 1) rescue nil
    codexDiscover(:HEART_OF_ASGHEIM) if defined?(codexDiscover)
    pbAchievement(:ach_verdantia_truth) if defined?(pbAchievement)
  }
end


GameData::Cutscene.define :ch4_5_lyra_grandmother_call do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'

  scene.message "\\i[Outside the greenhouse, Lyra pulled out her phone. \\\\nGrandma picked up on the second ring.]"
  scene.wait 30

  scene.message "\\bLyra\\b: Grandma. I have a question."
  scene.message "\\bLyra\\b: Why is the back hedge green in winter?"
  scene.wait 20

  scene.message "\\bGrandma\\b: *long pause* ...because someone planted it for someone. A long time ago."
  scene.message "\\bGrandma\\b: I was going to tell you. When you were ready to ask the question."
  scene.message "\\bGrandma\\b: I think you just got ready."
  scene.wait 30

  scene.message "\\bLyra\\b: ...are *we* Astoria-line, Grandma?"
  scene.message "\\bGrandma\\b: Yes, child. \\\\nMy great-great-grandmother. \\\\nIt skipped seven generations. Then there was you."
  scene.wait 30

  scene.message "\\bLyra\\b: Why did it *skip*?"
  scene.message "\\bGrandma\\b: Because the world didn't need you yet. \\\\nNow it does. \\\\nNow *you* know."

  scene.show_emotion :LYRA, :ellipses

  scene.message "\\bGrandma\\b: When you get a quiet hour, come home. \\\\nI have the rest of the family book. I should have given it to you before you left."
  scene.message "\\bLyra\\b: ...okay, Grandma. I will."
  scene.message "\\bGrandma\\b: I love you, my brave girl."

  scene.script {
    $game_switches[:sc_lyra_astoria_confirmed] = true if defined?($game_switches)
    codexDiscover(:LYRA_PROFILE) if defined?(codexDiscover)
  }
end


GameData::Cutscene.define :ch4_5_kael_reflects do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'

  scene.message "\\i[Walking out of Verdantia, Kael was unusually quiet. \\\\nEventually he said:]"
  scene.wait 20

  scene.message "\\bKael\\b: ...so Lyra has a lineage. \\PN has parents who knew."
  scene.message "\\bKael\\b: I don't have either of those things. \\\\nI grew up in an orphanage."
  scene.wait 30

  scene.message "\\bLyra\\b: Kael..."
  scene.message "\\bKael\\b: I'm not asking for pity. I am noting the *shape* of this."
  scene.message "\\bKael\\b: Yveltal picked someone with no records. Someone the Hand cannot trace back."
  scene.message "\\bKael\\b: I think — *I think* — that was deliberate."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...Aldric said something like that once."
  scene.message "\\bKael\\b: Aldric was the smartest person I ever met. \\\\nIf he said it, it's true."

  scene.message "\\bLyra\\b: Kael — wherever you came from, you're *here* now. \\\\nThat's worth more than a family book."
  scene.message "\\bKael\\b: *quiet* Maybe. \\\\nMaybe."

  # The Astoria-line reveal in Ch41 lands harder because of this scene.
  scene.script {
    $PokemonGlobal.sc_kael_lineage_seed = true if $PokemonGlobal.respond_to?(:sc_kael_lineage_seed=)
  }
end


GameData::Cutscene.define :ch4_5_arc_end do |scene|
  scene.play_bgm 'Pokemon XY - Route Theme'

  scene.message "\\i[That night you camped on the road outside Verdantia. \\\\nFern's sprig sat in a small glass on a flat rock by the fire.]"
  scene.message "\\i[The leaves glowed faintly when Lyra walked past. \\\\nNo one said anything.]"
  scene.wait 30

  scene.message "\\b\\PN\\b: *to your starter, softly* I think we just got our first real friend."
  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *agreement-chirp, contented*", starter.name))
    end
  }

  scene.message "\\i[The fire cracked. The night was quiet. \\\\nIt was the first time any of you slept well in a month.]"

  scene.script {
    GameData::Chapter.complete(:ch4_5) if defined?(GameData::Chapter)
  }
end


#===============================================================================
# Codex entries for this arc
#===============================================================================
if defined?(CodexRegistry)
  CodexRegistry.add(:HEART_OF_ASGHEIM,
    title:    "Heart-of-Asgheim Sprig",
    category: :HISTORY,
    text:     "A plant cultivated only by the Astoria diaspora — its veins " \
              "glow faintly when held by someone of the line. \\\\nGiven to " \
              "\\Player by Fern of Verdantia. Used through the rest of the " \
              "main story to identify hidden Astoria-line descendants, " \
              "including Gym Leader Petra and Captain Lior. \\\\nThe sprig " \
              "never wilts. Kael tested this empirically. He was annoyed."
  )

  CodexRegistry.add(:FERN_ALLY,
    title:    "Fern, Verdantia Gym Leader",
    category: :CHARACTERS,
    text:     "Fern is the youngest of Asgheim's gym leaders and runs the " \
              "Verdantia greenhouse as a botanical research station as much " \
              "as a battle hall. She has corresponded with Professor Aldric " \
              "since her teens. \\\\nAfter the Chosen accepted her offer of " \
              "support, the Verdantia greenhouse became the main " \
              "intelligence relay for the war — she has roughly a thousand " \
              "active correspondents across the region, more than the " \
              "Asgheim Guard."
  )
end


#===============================================================================
# Achievement
#===============================================================================
if defined?(GameData::Achievement)
  GameData::Achievement.define :ach_verdantia_truth do |a|
    a.name "The First Ally"
    a.description "Accept Fern's offer of support in the Verdantia greenhouse."
    a.category :story_hidden
    a.reward_item :ORANBERRY, 10
  end
end


#===============================================================================
# Save flag
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_verdantia_allied, :sc_kael_lineage_seed
end

SaveData.register(:sc_verdantia_allied) do
  ensure_class :TrueClass
  save_value { $PokemonGlobal.sc_verdantia_allied || false }
  load_value { |v| $PokemonGlobal.sc_verdantia_allied = v }
  new_game_value { false }
end

SaveData.register(:sc_kael_lineage_seed) do
  ensure_class :TrueClass
  save_value { $PokemonGlobal.sc_kael_lineage_seed || false }
  load_value { |v| $PokemonGlobal.sc_kael_lineage_seed = v }
  new_game_value { false }
end
