#===============================================================================
# POKÉMON SHATTERED CROWNS - BOND QUESTS
#===============================================================================
# Optional character-bonding quests referenced in full_story_index.md but
# never written. Three relationship tracks, five tiers each:
#
#   bond_lyra_*       — Player ↔ Lyra friendship arc
#   bond_kael_*       — Player ↔ Kael friendship arc
#   bond_lyra_kael_*  — Witnessing Lyra ↔ Kael falling in love
#
# Each bond quest awards Relationship System points if the plugin is loaded,
# and a small Fate Point grant for caring about people. Tier 5 quests unlock
# late-game (post Ch29) and require all four prior tiers in the same line.
#
# Naming intentionally matches the bible's bond_lyra_1, bond_kael_1, etc.
# placeholders so event scripts can call pbQuest(:start, :bond_lyra_1) and
# this file provides the actual quest data.
#===============================================================================

# Tiny helper: friendship + small FP grant + optional codex unlock
def _sc_bond_reward(character, tier, codex_key = nil)
  amount = tier * 5   # 5/10/15/20/25 friendship per tier
  relChange(character, amount) if defined?(relChange)
  scFateGrant("bond_#{character.downcase}_#{tier}".to_sym, (tier >= 4 ? 1 : 0),
              "Grew closer to #{character.to_s.capitalize}") if defined?(scFateGrant)
  if codex_key && defined?(codexDiscover)
    codexDiscover(codex_key)
  end
end


#===============================================================================
# Lyra Bond Quests — five tiers, gated by main-story chapter
#===============================================================================

GameData::Quest.define :bond_lyra_1 do |q|
  q.name "First Breakfast at the Farm"
  q.description "Lyra is making her grandmother's pancakes. She wants help — and " \
                "she wants to ask you things she won't ask in front of Kael."
  q.category :bond
  q.chapter 2
  q.giver "Lyra"
  q.location "Sunrise Farm Kitchen"
  q.objective "Help Lyra make breakfast", count: 1
  q.objective "Answer her question about your starter honestly", count: 1
  q.friendship_points :lyra, 5
  q.reward_item :ORANBERRY, 5
  q.on_complete { _sc_bond_reward(:LYRA, 1) }
end

GameData::Quest.define :bond_lyra_2 do |q|
  q.name "The Pendant's Story"
  q.description "Lyra wants to tell you what her grandmother told her about the " \
                "leaf-shaped pendant. She's been waiting for a quiet evening."
  q.category :bond
  q.chapter 9
  q.giver "Lyra"
  q.location "Campfire after Mountain Path"
  q.chapter_unlock 9
  q.objective "Sit with Lyra by the fire", count: 1
  q.objective "Hear the pendant's family story", count: 1
  q.friendship_points :lyra, 10
  q.on_complete { _sc_bond_reward(:LYRA, 2) }
end

GameData::Quest.define :bond_lyra_3 do |q|
  q.name "Berries for Elena"
  q.description "Lyra wants to gather rare berries to bring to her sister Elena " \
                "when they next meet. She remembers Elena's favourites from " \
                "childhood — Pamtre, Watmel, and the impossibly rare Enigma."
  q.category :bond
  q.chapter 16
  q.giver "Lyra"
  q.location "Anywhere with berry trees"
  q.objective "Gather Pamtre Berry", count: 3
  q.objective "Gather Watmel Berry", count: 3
  q.objective "Find one Enigma Berry", count: 1
  q.friendship_points :lyra, 15
  q.reward_item :SITRUSBERRY, 5
  q.on_complete { _sc_bond_reward(:LYRA, 3) }
end

GameData::Quest.define :bond_lyra_4 do |q|
  q.name "Healing the Forest Together"
  q.description "After the Eternal Forest is saved, Lyra wants to go back. " \
                "There are still hurt trees. She wants you with her — not Kael. " \
                "She'll explain why on the way."
  q.category :bond
  q.chapter 22
  q.giver "Lyra"
  q.location "Eternal Forest"
  q.objective "Walk the eastern path with Lyra", count: 1
  q.objective "Help her heal six dying trees", count: 6
  q.objective "Hear what she's afraid Kael won't survive", count: 1
  q.friendship_points :lyra, 20
  q.reward_item :MIRACLEBERRY, 1
  q.on_complete { _sc_bond_reward(:LYRA, 4) }
end

GameData::Quest.define :bond_lyra_5 do |q|
  q.name "The Blanket Scene"
  q.description "Before the final assault, Lyra brings you a blanket on watch " \
                "and stays. Not romance — friendship that's older than language. " \
                "She wants you to know what she'd say if there isn't a tomorrow."
  q.category :bond
  q.chapter 29
  q.giver "Lyra"
  q.location "Campfire before the Gateway"
  q.chapter_unlock 29
  q.objective "Accept the blanket without making a joke", count: 1
  q.objective "Listen", count: 1
  q.friendship_points :lyra, 25
  q.reward_item :MAXREVIVE, 2
  q.on_complete { _sc_bond_reward(:LYRA, 5, :LYRA_PROFILE) }
end


#===============================================================================
# Kael Bond Quests — five tiers, gated by main-story chapter
#===============================================================================

GameData::Quest.define :bond_kael_1 do |q|
  q.name "First Meeting (Properly)"
  q.description "Kael said three sentences during your introduction at the " \
                "Shadowfen library. He's now reading on the second floor, " \
                "pretending not to notice you came back. He'll talk if you stay " \
                "five minutes longer than is comfortable."
  q.category :bond
  q.chapter 2
  q.giver "Kael"
  q.location "Shadowfen Library, Upper Floor"
  q.objective "Sit nearby and read your own book", count: 1
  q.objective "Outlast his silence", count: 1
  q.friendship_points :kael, 5
  q.reward_item :TOXICORB, 1
  q.on_complete { _sc_bond_reward(:KAEL, 1) }
end

GameData::Quest.define :bond_kael_2 do |q|
  q.name "Shadow's Test"
  q.description "Kael's Zorua, Shadow, has decided you might be worth trusting. " \
                "There is a test. Kael did not ask Shadow to do this. Shadow does " \
                "not care."
  q.category :bond
  q.chapter 10
  q.giver "Kael"
  q.location "Mountain Camp"
  q.objective "Survive Shadow's illusion gauntlet", count: 1
  q.objective "Don't react when Shadow steals your starter's berry", count: 1
  q.friendship_points :kael, 10
  q.on_complete { _sc_bond_reward(:KAEL, 2) }
end

GameData::Quest.define :bond_kael_3 do |q|
  q.name "About Mira"
  q.description "Kael will tell you about his sister Mira tonight. He's never " \
                "told anyone the whole story. He's not asking you to fix it — he " \
                "is asking you to hear it once so it stops being secret."
  q.category :bond
  q.chapter 13
  q.giver "Kael"
  q.location "Recovery Camp"
  q.objective "Sit with Kael away from the fire", count: 1
  q.objective "Hear Mira's story without interrupting", count: 1
  q.friendship_points :kael, 15
  q.on_complete { _sc_bond_reward(:KAEL, 3) }
end

GameData::Quest.define :bond_kael_4 do |q|
  q.name "The Orphanage Run"
  q.description "Kael wants to visit the orphanage where he grew up. He's " \
                "claimed it's 'just supplies.' You both know it isn't. The kids " \
                "haven't seen him in two years."
  q.category :bond
  q.chapter 26
  q.giver "Kael"
  q.location "Asgheim Orphanage"
  q.objective "Travel to Asgheim with Kael", count: 1
  q.objective "Battle the orphanage's protective Houndoom (a play-fight)", count: 1
  q.objective "Be introduced to the kids as 'a friend'", count: 1
  q.friendship_points :kael, 20
  q.reward_item :MAXELIXIR, 1
  q.on_complete { _sc_bond_reward(:KAEL, 4) }
end

GameData::Quest.define :bond_kael_5 do |q|
  q.name "What He Couldn't Say"
  q.description "The night before the Gateway, Kael wants to say a thing he's " \
                "never said to anyone. He'll need help saying it. He chose you " \
                "to be the practice run."
  q.category :bond
  q.chapter 29
  q.giver "Kael"
  q.location "Campfire before the Gateway"
  q.chapter_unlock 29
  q.objective "Walk away from the fire with Kael", count: 1
  q.objective "Help him rehearse the words", count: 1
  q.friendship_points :kael, 25
  q.reward_item :MAXREVIVE, 2
  q.on_complete { _sc_bond_reward(:KAEL, 5, :KAEL_PROFILE) }
end


#===============================================================================
# Lyra-Kael Bond Quests — witnessing their love, not interfering
#===============================================================================

GameData::Quest.define :bond_lyra_kael_1 do |q|
  q.name "The First Glance"
  q.description "You watched Lyra look at Kael across the campfire and look " \
                "away when he turned. She thinks you didn't see. You did."
  q.category :bond
  q.chapter 5
  q.objective "Notice the moment", count: 1
  q.objective "Say nothing", count: 1
  q.friendship_points :lyra, 5
  q.friendship_points :kael, 5
  q.on_complete {
    relChange(:LYRA, 5) if defined?(relChange)
    relChange(:KAEL, 5) if defined?(relChange)
  }
end

GameData::Quest.define :bond_lyra_kael_2 do |q|
  q.name "Lyra Comforts Kael"
  q.description "Kael is taking the death of someone you all knew harder than " \
                "he'll admit. Lyra sits with him for two hours. You stand the " \
                "watch outside. Both of them know you're doing it. Neither says " \
                "anything. It's a kindness."
  q.category :bond
  q.chapter 13
  q.objective "Stand watch through the night", count: 1
  q.friendship_points :lyra, 10
  q.friendship_points :kael, 10
end

GameData::Quest.define :bond_lyra_kael_3 do |q|
  q.name "The Almost-Kiss"
  q.description "Walking back from the Eternal Forest, Lyra slips on a wet " \
                "stone. Kael catches her. Time slows for everyone except you " \
                "(who can absolutely see what is happening). Then a Pidgeotto " \
                "screams from a tree and both of them jump apart. You will " \
                "remember this forever. They will not."
  q.category :bond
  q.chapter 22
  q.objective "Witness the moment", count: 1
  q.objective "Carry the secret silently", count: 1
  q.friendship_points :lyra, 15
  q.friendship_points :kael, 15
end

GameData::Quest.define :bond_lyra_kael_4 do |q|
  q.name "Carrying Lyra Home"
  q.description "After Xerneas's trial, Lyra collapses from the channelling. " \
                "Kael carries her the entire seven kilometers to the train " \
                "station without stopping. You watched him do it. He didn't " \
                "ask for help once."
  q.category :bond
  q.chapter 22
  q.objective "Walk with Kael as he carries her", count: 1
  q.objective "Don't offer to help", count: 1
  q.friendship_points :lyra, 20
  q.friendship_points :kael, 20
end

GameData::Quest.define :bond_lyra_kael_5 do |q|
  q.name "The Blanket Scene"
  q.description "Bond Lyra 5 and Bond Kael 5 happen on the same night. Then " \
                "the third thing: Kael and Lyra sit by the fire. You step away. " \
                "When you come back, something has changed. They've decided " \
                "they're not pretending anymore. You knew. You always knew. You " \
                "just waited for them to figure it out."
  q.category :bond
  q.chapter 27
  q.chapter_unlock 27
  q.objective "Leave the fire to give them space", count: 1
  q.objective "Return when ready", count: 1
  q.friendship_points :lyra, 25
  q.friendship_points :kael, 25
  q.reward_item :LUCKINCENSE, 1
  q.on_complete {
    relChange(:LYRA, 25) if defined?(relChange)
    relChange(:KAEL, 25) if defined?(relChange)
    scFateGrant(:fate_witness_love, 1, "Witnessed the bond bloom") if defined?(scFateGrant)
  }
end


#===============================================================================
# Tier-5 Bond Cutscenes — the emotional payoff scenes
#===============================================================================
# Three full cutscenes, one per Tier-5 quest. The lower-tier quests stay
# text-only (their objectives are the gameplay; no scene needed).
#===============================================================================

#-------------------------------------------------------------------------------
# bond_lyra_5_scene — "The Blanket Scene" (Lyra side)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :bond_lyra_5_scene do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "\\i[The campfire was low. The sky over the Gateway was the colour of cold iron. You had been on watch for an hour when Lyra came up with two blankets and a cup of something hot.]"
  scene.message "\\bLyra\\b: Move over."
  scene.message "\\b\\PN\\b: ..."
  scene.message "\\bLyra\\b: I am not asking, \\PN. *Move over.*"

  scene.message "\\i[She sat. She put a blanket around your shoulders, then one around her own. She did not look at you for a long time.]"

  scene.message "\\bLyra\\b: ...I want to tell you something. If I do not say it tonight I am going to spend tomorrow afraid I did not."
  scene.message "\\bLyra\\b: When this started — when Aldric pulled us into his lab and said \\\"you three\\\" — I was *terrified*. I am not built for this kind of thing. I cried in the bathroom for an hour the first night."
  scene.message "\\b\\PN\\b: ...You never said."
  scene.message "\\bLyra\\b: I never had to. Because *you* never said it either. You just kept walking. You kept *choosing* to walk. — And it made it possible for me to walk too."

  scene.message "\\bLyra\\b: I do not know if you understand how *rare* you are. You think you are ordinary. You are not."
  scene.message "\\bLyra\\b: I needed you to know that. Before tomorrow. In case."

  scene.message "\\b\\PN\\b: ...Lyra."
  scene.message "\\bLyra\\b: Do not. Do not be sweet. I will cry and I want to not cry yet. — Just sit with me. Drink your tea. Watch the fire."
  scene.message "\\bLyra\\b: That is all. That is the thing. Thanks for hearing it."

  scene.message "\\i[You sat. The tea was bitter. The blanket was warm. Somewhere behind you, Kael was awake too — pretending to be asleep so Lyra could have this. He would take his turn at his own thing soon enough.]"

  scene.script {
    pbEarnFatePoints(2) if defined?(pbEarnFatePoints)
    relChange(:LYRA, 25) if defined?(relChange)
    codexDiscover(:LYRA_PROFILE) if defined?(codexDiscover)
  }
end

#-------------------------------------------------------------------------------
# bond_kael_5_scene — "What He Could Not Say"
#-------------------------------------------------------------------------------
GameData::Cutscene.define :bond_kael_5_scene do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "\\i[Kael was already away from the fire when you came looking. He was on the rocks at the cliff edge, Shadow at his feet, watching the Gateway clouds.]"
  scene.message "\\bKael\\b: *not turning* I knew you would come."
  scene.message "\\bKael\\b: Sit. — I need a practice run."

  scene.message "\\b\\PN\\b: Practice run for what?"
  scene.message "\\bKael\\b: For tomorrow night. If we live through tomorrow morning. There is a thing I have to say to someone, and I have *never* said it to anyone, and I am not going to say it for the first time when it counts."
  scene.message "\\bKael\\b: So I am going to say it to you. So I know how the words feel in my mouth. So I do not fold like a coward when it is time."

  scene.message "\\b\\PN\\b: ...Okay. Say it."

  scene.message "\\bKael\\b: *long pause* — When I was nine, Hilde found me curled under the cellar stairs because I had convinced myself I was going to be sent back. Sent back to *what*, I do not know. Just back. Out. Done. I cried until I made myself sick and she held me and told me — *you are not going anywhere. You are home.*"
  scene.message "\\bKael\\b: It is the only time in my life anyone has said that to me and I believed it on the first try."

  scene.message "\\bKael\\b: I am going to tell Lyra tomorrow that she is my second time. That I believed her the first time too. That I was nine then and I am twenty now and I have *never* met another person who made me believe \\\"you are home\\\" without flinching."
  scene.message "\\bKael\\b: ...That is the thing. That is what I could not say. — How did it sound?"

  scene.message "\\b\\PN\\b: ...Kael. *That is beautiful.*"
  scene.message "\\bKael\\b: *covers face* — Oh gods. I cannot say it. I cannot say it out loud."
  scene.message "\\b\\PN\\b: You just did."
  scene.message "\\bKael\\b: ...To you. That does not count."
  scene.message "\\b\\PN\\b: It counts more than you think. — You said it. You will say it again tomorrow. To her."

  scene.message "\\bKael\\b: ...Thanks, \\PN. For — being someone I could practise being honest with."
  scene.message "\\b\\PN\\b: Always."

  scene.script {
    pbEarnFatePoints(2) if defined?(pbEarnFatePoints)
    relChange(:KAEL, 25) if defined?(relChange)
    codexDiscover(:KAEL_PROFILE) if defined?(codexDiscover)
  }
end

#-------------------------------------------------------------------------------
# bond_lyra_kael_5_scene — "The Blanket Scene" (the third thing)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :bond_lyra_kael_5_scene do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "\\i[You came back to the fire when the eastern sky started bleeding grey. Lyra was awake. Kael was awake. Neither of them had moved. They were sitting closer than they had been when you left.]"

  scene.message "\\bKael\\b: *very softly* Hi."
  scene.message "\\bLyra\\b: *very softly* Hi."

  scene.message "\\i[You stopped a little distance away. You did not interrupt. You watched them, the way you had watched them for months — the way Lyra found Kael's hand without looking; the way Kael leaned his shoulder into hers like it was the most natural thing in the world; the way neither of them was pretending anymore.]"

  scene.message "\\bLyra\\b: *seeing you* — How long have you been standing there?"
  scene.message "\\b\\PN\\b: Just got here."
  scene.message "\\bKael\\b: *not letting go of Lyra's hand* You are a *terrible* liar, \\PN."
  scene.message "\\bLyra\\b: He really is."
  scene.message "\\b\\PN\\b: ...Okay. Maybe a little longer than just got here. — But you both deserved a minute."

  scene.message "\\bLyra\\b: ..."
  scene.message "\\bKael\\b: ..."
  scene.message "\\bLyra\\b: We were *terrible* at hiding it, were we not?"
  scene.message "\\b\\PN\\b: *grinning* Catastrophic."

  scene.message "\\bKael\\b: How long have you known?"
  scene.message "\\b\\PN\\b: ...Since the spirit-realm ambush, probably. The way you both moved when the other was in trouble. — But really? Since the *first day.*"
  scene.message "\\bLyra\\b: *covering face* Oh my gods. Oh my *gods*."
  scene.message "\\bKael\\b: I am *never* going to live this down."

  scene.message "\\b\\PN\\b: You do not have to. — I am just really, really happy for you. Both of you."

  scene.message "\\i[Lyra reached out with her free hand and pulled you in. The three of you sat together until the sun came up, and the Gateway was not going to feel survivable today — but it was going to feel survived *together*, which is all any of you had ever asked for.]"

  scene.script {
    pbEarnFatePoints(3) if defined?(pbEarnFatePoints)
    relChange(:LYRA, 25) if defined?(relChange)
    relChange(:KAEL, 25) if defined?(relChange)
    scFateGrant(:fate_witness_love, 1, "Witnessed the bond bloom") if defined?(scFateGrant)
    codexDiscover(:LYRA_AND_KAEL_BOND) if defined?(codexDiscover)
  }
end
