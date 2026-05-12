#===============================================================================
# POKÉMON SHATTERED CROWNS - NEW ARC: ALDRIC'S NOTEBOOKS
#===============================================================================
# A 6-scene arc that runs as Chapter 24.5, immediately following Aldric's
# funeral. Pays off the promise made in v2's :ch24_aurora_arrives — Aurora
# said she had Aldric's hidden notebooks and would show them "when you
# were ready."
#
# Reading the notebooks unlocks:
#   - A timeline of Aldric's 30-year investigation
#   - The original list of identifying marks (helps the Chosen self-
#     diagnose Yveltal-line warnings before they happen)
#   - The location of Aldric's hidden second lab, in the basement under
#     his official one
#   - A letter from Aldric, written six months before his death, to be
#     opened "when one of you reads this aloud to the others"
#
# This is the player's first visit home since Ch1. Home is different now.
# Mom is different. So are they.
#===============================================================================


GameData::Cutscene.define :ch24_5_home_again do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  scene.camera_tint :sepia, 30

  scene.message "\\i[Dawnhaven hadn't changed. The pond. The old oak. The cobbled stretch up to the house.]"
  scene.message "\\i[The flowers in the front planter were the silver-stem ones. Mom must have planted them recently.]"
  scene.wait 30

  scene.message "\\b\\PN\\b: ...I'm home."
  scene.message "\\bLyra\\b: I know. \\\\nWe're here too. Whenever you need us."
  scene.message "\\bKael\\b: We'll wait at the inn. \\\\nThis hour is yours."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...thanks."

  # Player approaches the door alone. The door opens before the player knocks.
  scene.message "\\bMom (Aurora)\\b: *seeing you* Oh."
  scene.message "\\bMom (Aurora)\\b: Oh, sweetheart, you grew up while I wasn't looking."
  scene.wait 30

  # Long hug
  scene.message "\\i[She held on. You held on. Neither of you said anything for a while.]"
  scene.message "\\i[When she let go she did not let go all the way.]"
  scene.wait 30

  scene.camera_tint :reset, 30
end


GameData::Cutscene.define :ch24_5_the_study do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'

  scene.message "\\bMom (Aurora)\\b: Come up to the study. I have everything ready."
  scene.message "\\bMom (Aurora)\\b: ...your father's downstairs cleaning his pokeballs. Pretending to. \\\\nGive him an hour."
  scene.wait 30

  # TODO: Event Sequence - The Study
  # - Aurora's study, dust-free for once
  # - A long table covered in leather-bound notebooks, sorted chronologically
  # - At the far end: a sealed envelope with \PN's name on it

  scene.message "\\i[The study had been cleaned. Aurora's research desk was cleared.]"
  scene.message "\\i[Twelve leather notebooks were laid out on the long table. Dates on the spines, the earliest from thirty years ago.]"
  scene.wait 30

  scene.message "\\bMom (Aurora)\\b: Aldric kept two sets of notes. \\\\nThe ones in his official journal. And these."
  scene.message "\\bMom (Aurora)\\b: He sent the first one to me thirty years ago. The day Marcus and I confirmed I was pregnant with you."
  scene.message "\\bMom (Aurora)\\b: He never told me why he wrote it that day. Now we know."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...thirty years."
  scene.message "\\bMom (Aurora)\\b: Thirty years. \\\\nHe knew the marks would skip into your generation. He didn't know it would be *you,* exactly — there were eight candidates he tracked."
  scene.message "\\bMom (Aurora)\\b: Two are dead. Four are accounted for in other regions. \\\\nYou are one of the remaining two."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...who's the other one?"
  scene.message "\\bMom (Aurora)\\b: A girl named Ines. She runs the Corona City Gym."
  scene.message "\\b\\PN\\b: *startled* Ines was a candidate?"
  scene.message "\\bMom (Aurora)\\b: She was. Aldric noted that she was the only one of the eight who seemed to feel the marks as *cold* rather than warm. He wrote that he was worried about her."
  scene.wait 30

  # Big reveal — Ines's betrayal in Ch20 wasn't random. She was a failed
  # candidate. The Hand recruited her by offering her the warmth she
  # never felt from the Guardians.
  scene.message "\\b\\PN\\b: She turned. The Hand recruited her."
  scene.message "\\bMom (Aurora)\\b: I know. \\\\nAldric knew it was *possible.* He didn't catch it in time."
  scene.message "\\bMom (Aurora)\\b: He blamed himself."

  scene.script {
    codexDiscover(:ALDRIC_NOTEBOOKS) if defined?(codexDiscover)
    $PokemonGlobal.sc_aldric_notebooks_opened = true if $PokemonGlobal.respond_to?(:sc_aldric_notebooks_opened=)
  }
end


GameData::Cutscene.define :ch24_5_the_yveltal_warning do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'

  scene.message "\\bMom (Aurora)\\b: There's something you need to see. \\\\nNot for you — for Kael."
  scene.wait 20

  # Aurora pulls out a specific notebook, opens to a particular page
  scene.message "\\i[She opened a notebook to a page covered in Aldric's slanted handwriting and three diagrammed marks.]"
  scene.wait 30

  scene.message "\\bMom (Aurora)\\b: Aldric documented every known case of a Yveltal-line bond going wrong."
  scene.message "\\bMom (Aurora)\\b: There were two warning signs. The bearer's pupils contract more slowly than they should. \\\\nAnd they stop dreaming."
  scene.message "\\bMom (Aurora)\\b: Both signs appear about six weeks before the bond *consumes* the bearer instead of partnering with them."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...has Kael been dreaming?"
  scene.message "\\bMom (Aurora)\\b: That's the question to ask him. \\\\nKindly. Not as an interrogation."
  scene.message "\\bMom (Aurora)\\b: If he says no, you bring him here. \\\\nI know what to do. So does Lyra, even if she doesn't yet know she does."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...thank you, Mom."
  scene.message "\\bMom (Aurora)\\b: That's not gratitude work. That's *parent* work. \\\\nIt's what we do."

  scene.script {
    codexDiscover(:YVELTAL_WARNING_SIGNS) if defined?(codexDiscover)
    # Gameplay hook: this unlocks the Yveltal-monitor side-quest, which
    # if completed catches the Dark-ending trigger before it fires.
    $PokemonGlobal.sc_yveltal_monitor_unlocked = true if $PokemonGlobal.respond_to?(:sc_yveltal_monitor_unlocked=)
  }
end


GameData::Cutscene.define :ch24_5_the_hidden_lab do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'

  scene.message "\\bMom (Aurora)\\b: Last thing. \\\\nAldric had a second lab. \\\\nBeneath the official one. The Hand burned the building above but the basement is shielded."
  scene.wait 30

  # TODO: Event Sequence - The Map
  # - Aurora unfolds a map of the lab compound
  # - Marks the trapdoor under the third desk

  scene.message "\\bMom (Aurora)\\b: There's a trapdoor under the third desk in the destroyed wing. \\\\nIf the Hand didn't think to look down — and they wouldn't, because their general was paranoid about being underground — \\\\nthere are still records there. Including Aldric's working file on Malachar."
  scene.message "\\bMom (Aurora)\\b: I haven't been able to go. Marcus refused. I have not been alone for that yet."
  scene.message "\\bMom (Aurora)\\b: I am hoping you and your friends will go for me."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...we'll go. \\\\nOf course we'll go."
  scene.message "\\bMom (Aurora)\\b: Good. \\\\nThere will be one more notebook there. Aldric kept the most sensitive one on-site so the Hand couldn't link it to me by post."
  scene.message "\\bMom (Aurora)\\b: When you find it, *don't read it on site.* Bring it back here. Read it with witnesses."

  scene.script {
    # Adds a side-quest waypoint to the destroyed lab map
    $PokemonGlobal.sc_aldric_basement_unlocked = true if $PokemonGlobal.respond_to?(:sc_aldric_basement_unlocked=)
  }
end


GameData::Cutscene.define :ch24_5_the_letter do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "\\bMom (Aurora)\\b: ...and this."
  scene.message "\\i[She handed you a sealed envelope. Aldric's handwriting. Your name.]"
  scene.wait 30

  scene.message "\\b\\PN\\b: ...when?"
  scene.message "\\bMom (Aurora)\\b: Six months before. He wrote one for each of the three of you. \\\\nThis one is yours."
  scene.message "\\bMom (Aurora)\\b: The instruction on the back says: *Open when one of you can read it aloud to the others.*"

  scene.message "\\b\\PN\\b: ...okay."

  scene.message "\\bMom (Aurora)\\b: Take it. \\\\nThere's no rush. Bring it back when it's the right night."
  scene.message "\\bMom (Aurora)\\b: He would have given you years if he could have. \\\\nHe couldn't. So he gave you what he could give."
  scene.wait 45

  scene.script {
    pbReceiveItem(:ALDRIC_LETTER_PN, 1) rescue nil
    codexDiscover(:ALDRIC_LETTER) if defined?(codexDiscover)
  }
end


GameData::Cutscene.define :ch24_5_dad_downstairs do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'

  scene.message "\\i[You found Dad downstairs at the kitchen table. \\\\nHe had three pokeballs on a polishing cloth. They were *gleaming.* He was still polishing.]"
  scene.wait 30

  scene.message "\\bDad Marcus\\b: ...your mother told me she gave you the lab map."
  scene.message "\\b\\PN\\b: Yeah."
  scene.message "\\bDad Marcus\\b: Eagle's Watch will go with you. \\\\nThat's not a request, kid. That is a *please.*"
  scene.wait 30

  scene.message "\\b\\PN\\b: Okay, Dad."
  scene.message "\\bDad Marcus\\b: Okay."

  # Marcus looks up, holds eye contact for a long moment.
  scene.message "\\bDad Marcus\\b: ...you look like her, you know. \\\\nWhen she was your age. \\\\nIt's almost rude how much you look like her right now."
  scene.message "\\b\\PN\\b: *small laugh* Thanks, Dad."
  scene.wait 30

  # The hug
  scene.message "\\bDad Marcus\\b: *standing up* Come here, kid."
  scene.message "\\i[He hugged you the way he used to hug you when you woke up from nightmares at six. Tight. Both arms. Not letting go first.]"
  scene.message "\\i[He let go first this time. You noticed. You let him.]"
  scene.wait 45

  scene.message "\\bDad Marcus\\b: ...go save the world, kid. \\\\nYour mother and I will keep the kitchen warm."

  scene.script {
    GameData::Chapter.complete(:ch24_5) if defined?(GameData::Chapter)
    scFateGrant(:fate_aldric_notebooks, 2, "Read Aldric's hidden notebooks") if defined?(scFateGrant)
  }
end


#===============================================================================
# Side-quest: The Basement Lab (unlocks after ch24_5_the_hidden_lab plays)
#-------------------------------------------------------------------------------
GameData::Quest.define :sq_aldric_basement_lab do |q|
  q.name "The Basement Lab"
  q.description "Aldric kept a second lab beneath the burned one. Aurora wants " \
                "the final notebook recovered. Eagle's Watch will escort you."
  q.category :side
  q.chapter 24
  q.giver "Aurora"
  q.location "Dawnhaven Lab Ruins"
  q.chapter_unlock 24
  q.objective "Reach the trapdoor under the third desk", count: 1
  q.objective "Recover Aldric's final notebook", count: 1
  q.objective "Return the notebook to Aurora", count: 1
  q.reward_item :ALDRIC_FINAL_NOTEBOOK, 1
  q.reward_item :TM_PSYCHIC, 1
  q.on_complete {
    codexDiscover(:ALDRIC_FINAL_NOTEBOOK) if defined?(codexDiscover)
    pbAchievement(:ach_basement_lab) if defined?(pbAchievement)
    scFateGrant(:fate_basement_recovered, 2, "Recovered Aldric's last notebook") if defined?(scFateGrant)
  }
end


#===============================================================================
# Side-quest: The Yveltal Monitor (unlocks if Kael is asked about dreams)
#-------------------------------------------------------------------------------
GameData::Quest.define :sq_yveltal_monitor do |q|
  q.name "The Yveltal Monitor"
  q.description "Aurora taught you the two warning signs of Yveltal-bond " \
                "decay: slow pupils, no dreams. Check on Kael at three " \
                "specific moments. If he's drifting, intervene."
  q.category :side
  q.chapter 25
  q.giver "Aurora"
  q.location "Wherever you camp"
  q.chapter_unlock 25
  q.objective "Ask Kael about his sleep after Ch25", count: 1
  q.objective "Ask Kael about his sleep after Ch27", count: 1
  q.objective "Ask Kael about his sleep before Ch33", count: 1
  q.on_complete {
    # If the player completes the monitor, they unlock a special prep
    # buff for the final battle that prevents the Dark ending trigger.
    $PokemonGlobal.sc_yveltal_monitor_completed = true if $PokemonGlobal.respond_to?(:sc_yveltal_monitor_completed=)
    pbAchievement(:ach_yveltal_monitor) if defined?(pbAchievement)
    pbMessage("\\i[Kael will not be lost to the cycle this run.]")
  }
end


#===============================================================================
# Aldric's letter — opens after Ch33 via a Bond Quest variant
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch33_5_aldric_letter_read do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "\\i[Three weeks after Aldric's funeral. \\\\nLyra brought it up first. 'We could read it now. If you wanted.']"
  scene.message "\\i[You sat together by the fire. You opened the envelope.]"
  scene.wait 30

  # The letter (full text)
  scene.message "\\b[Aldric's Letter]\\b: \\\\n\\PN. Lyra. Kael."
  scene.message "\\b[Aldric's Letter]\\b: \\\\nIf you are reading this, then it has gone the way I feared. \\\\nI am sorry. I would have liked to keep teaching you."
  scene.wait 45

  scene.message "\\b[Aldric's Letter]\\b: \\\\nI want you to know three things."
  scene.message "\\b[Aldric's Letter]\\b: \\\\nOne. You will be tempted to think that my death changes who you have to be. It does not. You were always going to do this. I was always going to be proud of you. The order of events does not change either fact."
  scene.wait 60

  scene.message "\\b[Aldric's Letter]\\b: \\\\nTwo. The Hand wants you to grieve in a way that makes you smaller. \\\\nMourn me by getting *larger.* By loving each other louder. By taking up *more* space in the world, not less."
  scene.wait 60

  scene.message "\\b[Aldric's Letter]\\b: \\\\nThree. I am not afraid for you. \\\\nI am the proudest old man in any region. \\\\nGo well. \\\\nGo together. \\\\nGo."
  scene.message "\\b[Aldric's Letter]\\b: \\\\n— A."
  scene.wait 60

  # Long, quiet beat. Nobody speaks for a while.
  scene.message "\\i[Nobody spoke for a long time. \\\\nLyra was crying. Kael was crying. You hadn't realized you were crying until your starter put their head on your knee.]"
  scene.wait 45

  scene.message "\\bLyra\\b: *small voice* ...he loved us, didn't he."
  scene.message "\\bKael\\b: *voice rough* He really did."
  scene.message "\\b\\PN\\b: *folding the letter carefully* Yeah. He did."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...let's get larger."
  scene.message "\\bLyra\\b: *small laugh through tears* Loudest love. Got it."
  scene.message "\\bKael\\b: *quietly* I'll work on the loud part."

  scene.script {
    pbAchievement(:ach_aldric_letter) if defined?(pbAchievement)
    scFateGrant(:fate_aldric_letter, 2, "Read Aldric's last letter together") if defined?(scFateGrant)
  }
end


#===============================================================================
# Codex + Achievement + Save
#===============================================================================
if defined?(CodexRegistry)
  CodexRegistry.add(:ALDRIC_NOTEBOOKS,
    title:    "Aldric's Hidden Notebooks",
    category: :HISTORY,
    text:     "Twelve leather notebooks documenting thirty years of mark- " \
              "lineage research, hidden at the family home in Dawnhaven. " \
              "Aldric tracked eight candidate Chosen-bearers across his " \
              "lifetime. Two are dead. Four are accounted for in other " \
              "regions. \\Player is one of the remaining two. The other " \
              "is Inés of Corona City Gym."
  )

  CodexRegistry.add(:YVELTAL_WARNING_SIGNS,
    title:    "Warning Signs of a Failing Yveltal Bond",
    category: :MYTHOLOGY,
    text:     "Two signs: the bearer's pupils contract more slowly than " \
              "they should, and they stop dreaming. Both signs appear " \
              "roughly six weeks before the bond consumes the bearer. " \
              "Aurora taught \\Player these signs in Ch24.5; the " \
              "knowledge unlocks the 'Yveltal Monitor' side-quest which " \
              "can prevent the Dark ending trigger from firing in Ch34."
  )

  CodexRegistry.add(:ALDRIC_LETTER,
    title:    "Aldric's Last Letter",
    category: :HISTORY,
    text:     "Written six months before his death, kept by Aurora. The " \
              "instruction on the envelope reads: 'Open when one of you " \
              "can read it aloud to the others.' Three lines, each one a " \
              "command. Mourn by getting larger. Take up more space. Go " \
              "well, go together, go."
  )

  CodexRegistry.add(:ALDRIC_FINAL_NOTEBOOK,
    title:    "Aldric's Final Notebook",
    category: :HISTORY,
    text:     "Recovered from the basement of the burned lab in side-quest " \
              "sq_aldric_basement_lab. Contains Aldric's working file on " \
              "Malachar — including the cult leader's birth name, his " \
              "original profession (botanist, of all things), and the " \
              "specific event that broke him. \\\\nThe notebook is read " \
              "in full by Aurora and the Chosen one evening at the family " \
              "home. The information makes Malachar's Ch31 reveal heavier."
  )
end


if defined?(GameData::Achievement)
  GameData::Achievement.define :ach_basement_lab do |a|
    a.name "Below the Ashes"
    a.description "Recover Aldric's final notebook from the basement lab."
    a.category :story_hidden
    a.reward_item :MAXREVIVE, 1
  end

  GameData::Achievement.define :ach_yveltal_monitor do |a|
    a.name "We Don't Lose Him"
    a.description "Complete the Yveltal Monitor side-quest before the final battle."
    a.category :story_hidden
    a.hidden true
    a.reward_item :SACREDASH, 1
  end

  GameData::Achievement.define :ach_aldric_letter do |a|
    a.name "Go Together. Go."
    a.description "Read Aldric's last letter with Lyra and Kael."
    a.category :story_hidden
  end
end


class PokemonGlobalMetadata
  attr_accessor :sc_aldric_notebooks_opened, :sc_aldric_basement_unlocked
  attr_accessor :sc_yveltal_monitor_unlocked, :sc_yveltal_monitor_completed
end

[:sc_aldric_notebooks_opened, :sc_aldric_basement_unlocked,
 :sc_yveltal_monitor_unlocked, :sc_yveltal_monitor_completed].each do |key|
  SaveData.register(key) do
    ensure_class :TrueClass
    save_value { $PokemonGlobal.send(key) || false }
    load_value { |v| $PokemonGlobal.send("#{key}=", v) }
    new_game_value { false }
  end
end
