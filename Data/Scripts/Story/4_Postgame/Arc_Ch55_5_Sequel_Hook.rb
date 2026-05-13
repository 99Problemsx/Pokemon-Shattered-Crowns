#===============================================================================
# POKÉMON SHATTERED CROWNS - NEW ARC: SEQUEL HOOK (Chapter 55.5+)
#===============================================================================
# A 6-scene secret arc that unlocks after the True Ending (Ch55) AND after
# the player has unlocked at least 5 endings (any 5 of the 6). Sets up
# the seeds of a sequel without committing to a specific shape.
#
# This is intentionally LIGHT. It is a *promise,* not a roadmap. The
# arc gives the surviving cast (and their next generation) a final
# evening together, and lets the audience know: there will be more
# work. Not now. Not for the player on this save. But somewhere, the
# story continues.
#
# Beats:
#   :seq_invitation        — Years later. A letter arrives at Sanctuary.
#   :seq_the_messenger     — The messenger is a stranger with a familiar mark.
#   :seq_old_friends       — Old friends reunite at the Sanctuary.
#   :seq_the_question      — The next-generation Chosen ask for help.
#   :seq_the_promise       — The original Chosen agree.
#   :seq_to_be_continued   — The sun sets on Asgheim. A new day begins.
#
# Compatible with the Romance branches — if the player went Ragnar, the
# letter explicitly references Ragnar's memorial; if Viktor, the letter
# comes from Viktor's Asgheim Champion successor; etc.
#===============================================================================


GameData::Cutscene.define :seq_invitation do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.fade_in 60

  scene.message "\\ts[]Some years after the Final Sunset."
  scene.wait 30

  scene.message "\\i[The Sanctuary was, by every measure, peaceful.]"
  scene.message "\\i[Lyra and Kael's grandchildren ran the place now. The Gallade had taken on the role of head trainer; it allowed the children to call it 'Gally' and was visibly proud of this.]"
  scene.wait 30

  # The letter arrives
  scene.message "\\bChild\\b: *running up to \\Player on the porch* \\\\nGrandpa/Grandma \\PN! \\\\nA letter! \\\\nIt's got the *new* league seal on it!"
  scene.wait 20

  scene.message "\\b\\PN\\b: *reading* \\\\n...oh. \\\\nOh dear."
  scene.message "\\b\\PN\\b: *to the child* \\\\nGo get your grandparents. \\\\nTell them to bring tea."

  scene.script {
    pbAchievement(:ach_sequel_invitation) if defined?(pbAchievement)
    scMemory(:mem_seq_invitation) if defined?(scMemory)
  }
end


GameData::Cutscene.define :seq_the_messenger do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'

  scene.message "\\i[A young trainer stood at the Sanctuary gate. Sixteen, maybe seventeen. Carried a Pokémon in a leaf-wrapped basket the way Lyra had carried Willow at the same age.]"
  scene.wait 30

  scene.message "\\bYoung Trainer\\b: ...is this where the Chosen live?"
  scene.message "\\b\\PN\\b: It's where we *retired,* yes."
  scene.message "\\bYoung Trainer\\b: \\\\nI'm sorry to disturb you. \\\\nThe League said you wouldn't mind if I —"
  scene.wait 20

  scene.show_emotion :player, :exclamation

  # The mark
  scene.message "\\i[The young trainer's sleeve had ridden up while they fidgeted. \\\\nUnder the sleeve: a steel-blue mark, identical to \\PN's. Newer. Cleaner.]"
  scene.wait 30

  scene.message "\\b\\PN\\b: *quietly* \\\\n...come in. \\\\nWe were just about to make tea."
  scene.message "\\bYoung Trainer\\b: *small voice* \\\\n...thank you."

  scene.script {
    codexDiscover(:NEXT_GEN_CHOSEN) if defined?(codexDiscover)
    scMemory(:mem_seq_messenger) if defined?(scMemory)
  }
end


GameData::Cutscene.define :seq_old_friends do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "\\i[By evening the porch was full. Lyra and Kael. Hoopa, on the railing, sorting mail with one ear cocked. The Gallade behind the door, definitely listening. Hilde, who lived at the Sanctuary now. Captain Marcus, who came up from the village. Aurora, with the tea.]"
  scene.message "\\i[The young trainer had been silent for ten minutes. They had eaten three pieces of bread.]"
  scene.wait 45

  scene.message "\\bAurora\\b: *to the young trainer, gently* \\\\nWhat's your name, dear?"
  scene.message "\\bYoung Trainer\\b: \\\\n...Quill. Quill Vester."
  scene.message "\\bMarcus\\b: ...*Vester.* As in —"
  scene.message "\\bQuill\\b: \\\\nVex was my great-uncle. \\\\nI'm sorry."
  scene.wait 45

  # The whole table goes quiet. Then Marcus speaks first.
  scene.message "\\bMarcus\\b: *quietly* \\\\nKid. \\\\nDon't apologize. \\\\nYour great-uncle was a good man before the binding broke him. \\\\nIt's a *gift* that his line carries the mark now."
  scene.message "\\bQuill\\b: *small* \\\\n...the League didn't tell me that part."
  scene.message "\\bAurora\\b: *firm* \\\\nThe League doesn't *know* that part. \\\\nWe do."

  scene.script {
    scMemory(:mem_seq_old_friends) if defined?(scMemory)
  }
end


GameData::Cutscene.define :seq_the_question do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  scene.message "\\bQuill\\b: \\\\nThere's a — *thing* — happening at the old Astoria seal. \\\\nNot Nidhoggr. \\\\nSomething else."
  scene.message "\\bQuill\\b: \\\\nI'm not the only one. \\\\nThere are three of us — like there were three of you."
  scene.message "\\bQuill\\b: \\\\nA girl in Hoenn. A boy in Sinnoh. Me. \\\\nAll marked. All sixteen. All scared."
  scene.wait 45

  scene.message "\\bLyra\\b: *taking Quill's hand* \\\\nWho sent you to find us?"
  scene.message "\\bQuill\\b: \\\\nGiratina. \\\\nIn a dream. \\\\nIt said you would know what to do."
  scene.wait 45

  scene.message "\\bKael\\b: *very calm* \\\\n...we *don't* know what to do, Quill. \\\\nWe will *help you find out.* \\\\nThat is not the same thing."
  scene.message "\\bQuill\\b: \\\\n...that's better, actually. \\\\nThe League made it sound like you'd just *fix* it."
  scene.message "\\bLyra\\b: \\\\nWe were never the fix, dear. \\\\nWe were the *first* to walk that particular road. \\\\nNow you walk yours."
  scene.wait 30

  scene.script {
    codexDiscover(:GIRATINA_NEW_DREAM) if defined?(codexDiscover)
    scMemory(:mem_seq_the_question) if defined?(scMemory)
  }
end


GameData::Cutscene.define :seq_the_promise do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "\\bMarcus\\b: *to \\PN, low* \\\\n...kid. \\\\nYou retired. \\\\nWe didn't make you promise you'd un-retire. \\\\nNobody on this porch will judge you for staying out of this."
  scene.message "\\b\\PN\\b: *quietly* \\\\n...I know, Dad. \\\\nBut Quill's three sixteen-year-olds are the same age I was when this started."
  scene.message "\\b\\PN\\b: \\\\nIf I don't help them figure out what's *theirs* to do — \\\\nthey will do what *we* did, the *hard* way, with no map."
  scene.message "\\b\\PN\\b: \\\\nI have a *map* now."
  scene.wait 45

  scene.message "\\bLyra\\b: \\\\nKael?"
  scene.message "\\bKael\\b: \\\\nI'll teach them the things that almost killed *me.* \\\\nAnd none of the things that almost *did.*"
  scene.message "\\bLyra\\b: \\\\nI'll teach them to *listen.* \\\\nNobody taught us. \\\\nWe should fix that."
  scene.wait 30

  scene.message "\\bHoopa\\b: *from the railing, deeply offended at being ignored* \\\\nAND I AM ALSO GOING."
  scene.message "\\bHoopa\\b: \\\\nA portal-trickster's *only* useful between worlds. \\\\nI am *severely* useful when there is *travel.*"
  scene.message "\\bGallade\\b: *thought-projection, from inside the house* \\\\nI also intend to come. \\\\nIt was rude to assume you would not bring me."
  scene.wait 30

  scene.message "\\bAurora\\b: \\\\n...all right. \\\\nThe Sanctuary will be fine without you. \\\\nThe grandchildren can run it. \\\\nThe Gallade is — apparently — *insulted enough* to leave them in charge of him."
  scene.message "\\bMarcus\\b: *grinning, finally* \\\\nYou're not retired anymore, kid."
  scene.message "\\b\\PN\\b: *grinning back* \\\\nI'm *consulting.* \\\\nIt's different."

  scene.script {
    $PokemonGlobal.sc_sequel_committed = true if $PokemonGlobal.respond_to?(:sc_sequel_committed=)
    scMemory(:mem_seq_the_promise) if defined?(scMemory)
    pbAchievement(:ach_sequel_committed) if defined?(pbAchievement)
    scFateGrant(:fate_sequel_committed, 3, "Agreed to walk the next road") if defined?(scFateGrant)
  }
end


GameData::Cutscene.define :seq_to_be_continued do |scene|
  scene.play_bgm 'Pokemon XY - Final Battle Lysandre'
  scene.camera_tint :sepia, 30

  scene.message "\\i[The next morning. Marrowport docks. Familiar place.]"
  scene.message "\\i[Captain Lior was older now. Eighty-two. He had not retired. He did not believe in retirement.]"
  scene.wait 30

  scene.message "\\bLior\\b: \\\\n\\PN. Lyra. Kael. \\\\nAnd the three new ones. \\\\nWelcome aboard."
  scene.message "\\b\\PN\\b: \\\\nLior. \\\\nYou should be retired."
  scene.message "\\bLior\\b: *grinning* \\\\nI *am* retired. \\\\nThis is a *favour.* \\\\nIt is the *favourite* favour of my retirement."
  scene.wait 30

  # The new trio of Chosen stand at the rail
  scene.message "\\i[Quill stood at the ship's rail with Joa (from Hoenn) and Bel (from Sinnoh). Three sixteen-year-olds. Mark-bearers. Scared. *Resolved.*]"
  scene.message "\\i[Behind them: the original trio. Older. Calmer. Ready.]"
  scene.wait 45

  # Final shot
  scene.message "\\bLyra\\b: *to the new three* \\\\nWhen you're scared — and you will be — \\\\nyou look at us. \\\\nWe will be standing *right* here."
  scene.message "\\bKael\\b: \\\\nWe also have *snacks.*"
  scene.message "\\b\\PN\\b: \\\\nKael is in charge of snacks. \\\\nIt is a deeply serious job."
  scene.wait 30

  scene.message "\\bQuill\\b: *small smile, first one we've seen from them* \\\\n...okay. \\\\nThank you."
  scene.wait 30

  scene.message "\\i[The ship cast off. Marrowport receded behind them.]"
  scene.message "\\i[The horizon was clear. \\\\nThe horizon was *new.* \\\\nThe story was — *not over.* \\\\nThe story was *next.*]"
  scene.wait 60

  scene.camera_tint :reset, 30
  scene.fade_out 90

  scene.message "\\ts[]TO BE CONTINUED"
  scene.wait 60

  scene.message "\\ts[]\\bPokémon Shattered Crowns II:\\b The Next Road"
  scene.message "\\ts[]Coming when it's ready."
  scene.wait 60

  scene.message "\\ts[]Thank you for walking this one with us."

  scene.script {
    pbAchievement(:ach_sequel_revealed) if defined?(pbAchievement)
    $PokemonGlobal.sc_sequel_hook_seen = true if $PokemonGlobal.respond_to?(:sc_sequel_hook_seen=)
  }
end


#===============================================================================
# Unlock check — only runs if True Ending + 5 endings seen
#===============================================================================
def sc_check_sequel_unlock
  return false unless $PokemonGlobal&.sc_endings_seen
  endings_seen = $PokemonGlobal.sc_endings_seen.uniq.length
  return endings_seen >= 5
end


#===============================================================================
# Codex entries
#===============================================================================
if defined?(CodexRegistry)
  CodexRegistry.add(:NEXT_GEN_CHOSEN,
    title:    "The Next Three Chosen",
    category: :MYTHOLOGY,
    text:     "Three sixteen-year-olds, mark-bearers, scattered across " \
              "Asgheim/Hoenn/Sinnoh. \\\\nQuill Vester (Valor) is the " \
              "great-niece of Vex; her family line carries the apology " \
              "Vex never made. Joa Maredue (Life) is a Hoenn-region " \
              "researcher's daughter. Bel Whitestone (Cycles) was found, " \
              "the way Kael was found, as an infant; the truth of their " \
              "origin is unknown."
  )

  CodexRegistry.add(:GIRATINA_NEW_DREAM,
    title:    "Giratina's Second Calling",
    category: :MYTHOLOGY,
    text:     "Giratina, having been bound to the Eternal Seal in Ch46, " \
              "watches the cycle from inside the Distortion World. When " \
              "a new threat emerged — *not* Nidhoggr, *not* the Hand — " \
              "Giratina sent dreams to the next-generation Chosen. \\\\n" \
              "The dreams said: 'Find the first three. They will know.' " \
              "Giratina was correct."
  )
end


#===============================================================================
# Memories
#===============================================================================
[
  [:mem_seq_invitation,    "The Letter Arrives",   "A letter! It's got the new league seal!",  "Sanctuary Porch",      55, :awe],
  [:mem_seq_messenger,     "Quill",                "Vex was my great-uncle. I'm sorry.",       "Sanctuary Gate",       55, :awe],
  [:mem_seq_old_friends,   "Old Friends at Table", "We do. The League doesn't know.",          "Sanctuary",            55, :warm],
  [:mem_seq_the_question,  "Giratina's Dream",     "Find the first three. They will know.",   "Sanctuary",            55, :awe],
  [:mem_seq_the_promise,   "I'm Consulting",       "I have a map now.",                       "Sanctuary Porch",      55, :love],
].each do |id, title, quote, location, chapter, mood|
  GameData::Memory.define id do |m|
    m.title    title
    m.quote    quote
    m.location location
    m.chapter  chapter
    m.mood     mood
  end
end


#===============================================================================
# Achievements
#===============================================================================
if defined?(GameData::Achievement)
  GameData::Achievement.define :ach_sequel_invitation do |a|
    a.name "The Letter at the Door"
    a.description "Receive Quill's invitation at the Sanctuary."
    a.category :story_hidden
    a.hidden true
  end
  GameData::Achievement.define :ach_sequel_committed do |a|
    a.name "Not Retired — Consulting"
    a.description "Agree to help the next three Chosen."
    a.category :story_hidden
    a.hidden true
  end
  GameData::Achievement.define :ach_sequel_revealed do |a|
    a.name "To Be Continued"
    a.description "Watch the sequel hook ending."
    a.category :story_hidden
    a.hidden true
    a.reward_item :MASTERBALL, 3
  end
end


#===============================================================================
# Save flags
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_sequel_committed, :sc_sequel_hook_seen
end

SaveData.register(:sc_sequel_committed) do
  ensure_class :TrueClass
  save_value { $PokemonGlobal.sc_sequel_committed || false }
  load_value { |v| $PokemonGlobal.sc_sequel_committed = v }
  new_game_value { false }
end

SaveData.register(:sc_sequel_hook_seen) do
  ensure_class :TrueClass
  save_value { $PokemonGlobal.sc_sequel_hook_seen || false }
  load_value { |v| $PokemonGlobal.sc_sequel_hook_seen = v }
  new_game_value { false }
end
