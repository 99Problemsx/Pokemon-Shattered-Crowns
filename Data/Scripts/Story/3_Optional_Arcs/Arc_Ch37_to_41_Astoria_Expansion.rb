#===============================================================================
# POKÉMON SHATTERED CROWNS - NEW ARC: ASTORIA EXPANSION
#===============================================================================
# Act 5 of the bible takes the Chosen to Astoria but treats the region
# as a destination, not a place. This arc gives Astoria its own life:
# seven named NPCs, three wild encounter pools, four side-quests, and
# two hidden cultural beats that connect Astoria's past to Asgheim's
# future.
#
# Astoria region structure:
#   - The Port Town (Marrowport)
#   - Three temple paths (Stars / Tides / Shadows)
#   - The Forgotten Library (lore vault)
#   - The Hidden Caldera (postgame Mewtwo)
#
# Astoria NPCs (in addition to existing Lior + Sela + Orin + Vera):
#   - The Port Master (manages traffic, knows everyone)
#   - The Refugee Coordinator (helps Hand-defectors who came home)
#   - The Three Astoria-line elders (Petra's relatives)
#   - The Library Keeper (curates the lore vault)
#   - The Caldera Hermit (post-game gatekeeper)
#===============================================================================


#===============================================================================
# Marrowport (the port town) - first-impression cutscene
#===============================================================================
GameData::Cutscene.define :astoria_marrowport_arrival do |scene|
  scene.play_bgm 'Pokemon XY - Couriway Town'

  scene.message "\\i[Marrowport was a town of grey stone and white sails. Old in the way Asgheim had not been old in centuries.]"
  scene.message "\\i[The houses were carved from the same rock as the cliffs. The streets were the cliffs.]"
  scene.wait 30

  scene.message "\\bLior\\b: \\\\nWelcome to the Forgotten Region. \\\\nI'll arrange transport to the temples. \\\\nGo see Maris first."
  scene.message "\\b\\PN\\b: Maris?"
  scene.message "\\bLior\\b: \\\\nThe port master. She knows everyone who came in by ship for thirty years. \\\\nShe will know who *you* are by reputation. \\\\nShe will pretend not to."

  scene.script {
    scMemory(:mem_astoria_arrival) if defined?(scMemory)
  }
end


#===============================================================================
# Maris — Port Master
#===============================================================================
GameData::Cutscene.define :astoria_maris_intro do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'

  scene.message "\\i[The port master's office was a stone room with a window facing the water. Maris was forty, weather-beaten, sharp-eyed.]"
  scene.wait 30

  scene.message "\\bMaris\\b: *not looking up from her ledger* \\\\nThree Chosen. \\\\nOne Eevee-evolution. Two Pokémon in pokeballs. One Pokémon in a pocket. \\\\nWelcome."
  scene.message "\\bLyra\\b: ...how did you —"
  scene.message "\\bMaris\\b: *finally looking up* \\\\nI'm Maris. I run the port. \\\\nLior radioed ahead. *Also* I have eyes."
  scene.wait 30

  scene.message "\\bMaris\\b: \\\\nThree things you need to know about Astoria."
  scene.message "\\bMaris\\b: \\\\nOne. We're a *small* region. Everybody knows everybody. \\\\nTwo. The three temples are not where the old maps say. \\\\nThree. *Be kind to the refugees.* They walked further than you flew."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...refugees?"
  scene.message "\\bMaris\\b: \\\\nThe Hand has been chasing Astoria-line bloodlines for forty years. \\\\nThe survivors came *home* the long way. \\\\nMost of them through *this* port. \\\\nMost of them on *my* boats."
  scene.wait 30

  scene.message "\\bMaris\\b: \\\\nGo see Daro at the Refugee Hall. \\\\nTell him I sent you. \\\\nDo NOT promise him anything you cannot deliver."

  scene.script {
    codexDiscover(:MARIS_PORT) if defined?(codexDiscover)
    scMemory(:mem_astoria_maris) if defined?(scMemory)
  }
end


#===============================================================================
# Daro — Refugee Coordinator (former Hand defector)
#===============================================================================
GameData::Cutscene.define :astoria_daro_intro do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'

  scene.message "\\i[The Refugee Hall was a converted warehouse. Cots, communal kitchen, a small medical bay. About forty people moving through it at any one time.]"
  scene.message "\\i[Daro was thirty-one, soft-spoken, scarred forearms, Hand-mark half-burnt-out at the wrist.]"
  scene.wait 30

  scene.message "\\bDaro\\b: ...Maris sent you. *Of course* she did."
  scene.message "\\bDaro\\b: \\\\nDaro Vest. Aldrin Vest's youngest brother. \\\\nGeneral Shade was my brother."
  scene.wait 45

  scene.show_emotion :player, :exclamation
  scene.message "\\b\\PN\\b: ...oh."

  scene.message "\\bDaro\\b: *gentle* \\\\nI walked out of the Hand the day Mara died — Aldrin's wife. \\\\nMost of us did. Aldrin didn't. \\\\nThat's the only reason he became Shade and I became *this.*"
  scene.message "\\bDaro\\b: \\\\nI'm not asking you to apologize for killing my brother. \\\\nHe died years before you fought him. You only *witnessed* it."
  scene.message "\\bDaro\\b: \\\\nWhat I AM asking is: help us with the Astoria-side refugees. \\\\nFor a week. While you're here for the temples."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...what kind of help?"
  scene.message "\\bDaro\\b: \\\\nTraining mostly. \\\\nMany of our newer arrivals never trained Pokémon — they were children when their families ran. \\\\nThey have *partners* now. They don't know what to *do* with them."
  scene.message "\\bDaro\\b: \\\\nYou three are the best teachers the world has right now. \\\\nGive us a week."

  scene.choice ["Yes. We have the time.",
                "We have the temples to do first.",
                "Why us?"] do |result|
    case result
    when 0
      pbMessage("\\b\\PN\\b: Yes. We have the time.")
      pbMessage("\\bDaro\\b: \\\\nThank you. \\\\nI will not forget this.")
      $PokemonGlobal.sc_astoria_refugee_help = true if $PokemonGlobal.respond_to?(:sc_astoria_refugee_help=)
      scFateGrant(:fate_astoria_refugees, 2, "Trained Astoria's refugees") if defined?(scFateGrant)
    when 1
      pbMessage("\\b\\PN\\b: We have the temples to do first. After?")
      pbMessage("\\bDaro\\b: \\\\nAfter is fine. \\\\nI will be here.")
    when 2
      pbMessage("\\b\\PN\\b: Why us?")
      pbMessage("\\bDaro\\b: \\\\nBecause *Aldrin* would have asked you. \\\\nBecause he can't.")
      pbMessage("\\b\\PN\\b: ...yes. Of course.")
      $PokemonGlobal.sc_astoria_refugee_help = true if $PokemonGlobal.respond_to?(:sc_astoria_refugee_help=)
    end
  end

  scene.script {
    codexDiscover(:DARO_REFUGEES) if defined?(codexDiscover)
    scMemory(:mem_astoria_daro) if defined?(scMemory)
  }
end


#===============================================================================
# The Three Elders — Astoria-line keepers (Petra's relatives)
#===============================================================================
GameData::Cutscene.define :astoria_three_elders do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "\\i[Three elders waited at the long table of the elder-hall. Two women and one man. None younger than seventy.]"
  scene.message "\\i[They were Petra's great-aunts and great-uncle. They had been waiting for the Chosen for a year.]"
  scene.wait 30

  scene.message "\\bElder Anya\\b: \\\\nThe Heart-of-Asgheim sprig you carry. \\\\nGive it to me a moment."
  scene.script {
    if pbHasItem?(:HEART_OF_ASGHEIM_SPRIG)
      pbMessage("\\i[You held the sprig out. \\\\nAnya passed her hand over it. Her own family-line glowed in response — *brighter* than Lyra's.]")
      pbMessage("\\bElder Anya\\b: \\\\nGood. \\\\nFern's gift is well-rooted.")
    else
      pbMessage("\\i[You did not have the sprig with you. Anya nodded knowingly.]")
    end
  }
  scene.wait 30

  scene.message "\\bElder Bren\\b: *the man* \\\\nWe have been corresponding with Aldric since before he died. \\\\nWe have a great deal of work for you. \\\\nNone of it is urgent. \\\\nMost of it is *remembering.*"
  scene.message "\\bElder Coraline\\b: \\\\nThree side-quests. \\\\nOne for each of you. \\\\nPick yours when you have a quiet evening."
  scene.wait 30

  scene.script {
    GameData::Quest.start(:sq_astoria_anyas_song) if defined?(GameData::Quest)
    GameData::Quest.start(:sq_astoria_brens_carving) if defined?(GameData::Quest)
    GameData::Quest.start(:sq_astoria_coralines_dance) if defined?(GameData::Quest)
    codexDiscover(:ASTORIA_ELDERS) if defined?(codexDiscover)
    scMemory(:mem_astoria_elders) if defined?(scMemory)
  }
end


#===============================================================================
# Astoria side-quests
#===============================================================================

GameData::Quest.define :sq_astoria_anyas_song do |q|
  q.name "Anya's Song"
  q.description "Elder Anya wants to teach Lyra a lullaby that the Astoria " \
                "line sang to their children. It was last sung forty years ago. " \
                "Anya is the only one alive who still remembers it."
  q.category :side
  q.chapter 38
  q.giver "Elder Anya"
  q.location "Astoria Elder Hall"
  q.objective "Visit Anya twice for lullaby lessons", count: 2
  q.objective "Sing the lullaby with Lyra at the Sanctuary", count: 1
  q.reward_item :SOOTHEBEL, 1
  q.on_complete {
    scMemory(:mem_astoria_lullaby) if defined?(scMemory)
    pbAchievement(:ach_astoria_anyas_song) if defined?(pbAchievement)
  }
end

GameData::Quest.define :sq_astoria_brens_carving do |q|
  q.name "Bren's Carving"
  q.description "Elder Bren wants Kael to help him carve a memorial plaque " \
                "for the Astoria-line dead. The carving requires steady " \
                "hands and the patience to listen while Bren tells the " \
                "stories. Kael has surprised himself with both, lately."
  q.category :side
  q.chapter 38
  q.giver "Elder Bren"
  q.location "Astoria Elder Hall"
  q.objective "Carve three names with Bren", count: 3
  q.objective "Hear three stories", count: 3
  q.reward_item :SOULDEW, 1
  q.on_complete {
    scMemory(:mem_astoria_carving) if defined?(scMemory)
    pbAchievement(:ach_astoria_brens_carving) if defined?(pbAchievement)
  }
end

GameData::Quest.define :sq_astoria_coralines_dance do |q|
  q.name "Coraline's Dance"
  q.description "Elder Coraline wants you — yes, you personally — to learn " \
                "the old festival step that the Astoria-line danced at the " \
                "harvest. She thinks you will be the first to perform it " \
                "publicly in forty-three years."
  q.category :side
  q.chapter 38
  q.giver "Elder Coraline"
  q.location "Astoria Elder Hall"
  q.objective "Practice the step three times with Coraline", count: 3
  q.objective "Perform at the Marrowport autumn festival", count: 1
  q.reward_item :FESTIVALRIBBON, 1
  q.on_complete {
    scMemory(:mem_astoria_dance) if defined?(scMemory)
    pbAchievement(:ach_astoria_coralines_dance) if defined?(pbAchievement)
  }
end


#===============================================================================
# The Forgotten Library
#===============================================================================
GameData::Cutscene.define :astoria_library_keeper do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'

  scene.message "\\i[The Forgotten Library was a long stone hall lined with books in three languages. The keeper was named Iola; she was seventy-three and the youngest person who had read every book in the building.]"
  scene.wait 30

  scene.message "\\bIola\\b: \\\\nChosen. \\\\nThe answer to the question you have not yet asked is: yes, Aldric corresponded with my predecessor. \\\\nNo, I do not have his letters. \\\\nThey were in the lab fire. \\\\nThe basement set survived, however."
  scene.message "\\bIola\\b: \\\\nWhich brings me to *your* business in this hall."
  scene.wait 30

  scene.message "\\bIola\\b: \\\\nI have *the other half* of Aldric's final notebook. \\\\nThe one you recovered in Ch24.5 only had Marcus's working file on Malachar. \\\\nI have the half that was on *Vex.*"
  scene.message "\\bIola\\b: \\\\nWould you like to read it?"
  scene.wait 30

  scene.choice ["Yes.", "Not yet.", "Will it change anything?"] do |result|
    case result
    when 0
      pbMessage("\\bIola\\b: \\\\nThen come. \\\\nSit. \\\\nThis will take an evening.")
      GameData::Cutscene.play(:astoria_vex_notebook) if defined?(GameData::Cutscene)
    when 1
      pbMessage("\\bIola\\b: \\\\nWhen you're ready. \\\\nI am not going anywhere.")
    when 2
      pbMessage("\\bIola\\b: \\\\nYes. \\\\nIt will not change *what* you do. \\\\nIt will change *who* you remember while you do it.")
      pbMessage("\\b\\PN\\b: ...then I want to read it.")
      GameData::Cutscene.play(:astoria_vex_notebook) if defined?(GameData::Cutscene)
    end
  end

  scene.script {
    codexDiscover(:IOLA_KEEPER) if defined?(codexDiscover)
  }
end

GameData::Cutscene.define :astoria_vex_notebook do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  scene.message "\\i[Iola handed you a slim leather book. \\\\nAldric had labelled it: 'For when the next Chosen of Valor is grown enough.']"
  scene.wait 30

  scene.message "\\b[Aldric's Notebook, Vex section]\\b: \\\\nI have spent thirty years writing a man's name in this notebook every time I think of him. \\\\nThe count is at 4,217. \\\\nI miss the man Vex was before the binding."
  scene.message "\\b[Aldric's Notebook]\\b: \\\\nVex was kind. \\\\nHe was funny when he had had two drinks. \\\\nHe loved his sister. \\\\nHe wanted children. \\\\nHe never had them."
  scene.message "\\b[Aldric's Notebook]\\b: \\\\nThe man who became the General was not the same man. \\\\nI want this to be on the record. \\\\nThe Hand did not 'turn him.' Hoopa's binding-flash *broke* him. \\\\nWe failed him. *I* failed him."
  scene.wait 45

  scene.message "\\b[Aldric's Notebook]\\b: \\\\nIf the Chosen kill Vex — and they likely will, because Vex will not be talked down — \\\\nthat death is not a victory. \\\\nIt is a mercy. \\\\nIt is *also* the consequence of a failure that started thirty years before the Chosen were born."
  scene.message "\\b[Aldric's Notebook]\\b: \\\\nLet them carry that the way *I* carry it. \\\\nNot as guilt. \\\\nAs accuracy."
  scene.wait 60

  scene.message "\\b\\PN\\b: *very quietly* ...Aldric, I miss you."
  scene.message "\\bIola\\b: *softly* \\\\nWe all do, dear."

  scene.script {
    scMemory(:mem_astoria_vex_notebook) if defined?(scMemory)
    pbAchievement(:ach_astoria_vex_truth) if defined?(pbAchievement)
    scFateGrant(:fate_astoria_vex, 1, "Read the truth about Vex") if defined?(scFateGrant)
  }
end


#===============================================================================
# The Caldera Hermit (postgame)
#===============================================================================
GameData::Cutscene.define :astoria_caldera_hermit do |scene|
  scene.play_bgm 'Pokemon XY - Frost Cavern'

  scene.message "\\i[The Hidden Caldera was a half-day's walk south of Marrowport. The hermit had been waiting at the entrance for three months, by his own admission.]"
  scene.message "\\i[He looked sixty. He was forty-one. The mountain weathered him.]"
  scene.wait 30

  scene.message "\\bHermit\\b: \\\\nYou came for the Mewtwo."
  scene.message "\\b\\PN\\b: ...we did."
  scene.message "\\bHermit\\b: \\\\nIt is up there. \\\\nIt has been waiting longer than I have. \\\\nGo gently."
  scene.message "\\bHermit\\b: \\\\nLeave the food behind, please. \\\\nI feed it on Tuesdays. \\\\nIt does not eat much."

  scene.script {
    codexDiscover(:CALDERA_HERMIT) if defined?(codexDiscover)
    scMemory(:mem_astoria_hermit) if defined?(scMemory)
  }
end


#===============================================================================
# Wild encounter tables
#-------------------------------------------------------------------------------
# Astoria has three exclusive encounter pools. The exact map IDs need
# customization, but the species lists are defined here so that the
# Encounter system can dispatch them.
#===============================================================================
if defined?(GameData::Encounter)
  begin
    GameData::Encounter.define(:ASTORIA_COAST) do |e|
      e.type :Land
      e.density 25
      e.add(:CORSOLA,     10..15, 25)
      e.add(:STARYU,      10..15, 20)
      e.add(:KRABBY,      10..14, 20)
      e.add(:WINGULL,     8..14,  15)
      e.add(:RELICANTH,   18..22, 5)
      e.add(:CHINCHOU,    12..16, 10)
      e.add(:LAPRAS,      25..30, 5)
    end

    GameData::Encounter.define(:ASTORIA_CLIFFS) do |e|
      e.type :Land
      e.density 20
      e.add(:SKARMORY,    18..24, 20)
      e.add(:RHYHORN,     20..26, 15)
      e.add(:LARVITAR,    16..20, 10)
      e.add(:GLIGAR,      18..24, 20)
      e.add(:NOSEPASS,    20..24, 15)
      e.add(:ANORITH,     22..26, 10)
      e.add(:AERODACTYL,  30..35, 5)
      e.add(:CRANIDOS,    24..28, 5)
    end

    GameData::Encounter.define(:ASTORIA_FORGOTTEN_GROVES) do |e|
      e.type :Land
      e.density 30
      e.add(:RALTS,       16..20, 20)
      e.add(:SNORUNT,     18..22, 15)
      e.add(:ROSELIA,     20..24, 20)
      e.add(:ABSOL,       22..26, 10)
      e.add(:BAGON,       18..22, 10)
      e.add(:DRATINI,     20..24, 5)
      e.add(:JANGMOO,     22..26, 15)
      e.add(:DEINO,       24..28, 5)
    end
  rescue
    # Encounter system may not be loaded yet at this file's parse time
  end
end


#===============================================================================
# Codex
#===============================================================================
if defined?(CodexRegistry)
  [
    [:MARIS_PORT,       "Maris — Port Master of Marrowport",
                        "Forty, weather-beaten, runs Astoria's only deepwater port. " \
                        "Has personally booked passage for every refugee who reached " \
                        "Astoria in the last twenty years. Knows the Chosen by reputation; " \
                        "pretends she does not."],
    [:DARO_REFUGEES,    "Daro — Refugee Coordinator",
                        "General Shade's younger brother. Walked out of the Hand the " \
                        "day Mara Vest died and runs the Astoria-side refugee program. " \
                        "Asked the Chosen for a week of training help; they gave it."],
    [:ASTORIA_ELDERS,   "The Three Elders",
                        "Anya, Bren, and Coraline — Petra's great-aunts and great-uncle. " \
                        "The last three Astoria-line elders who personally remember the " \
                        "pre-diaspora rites. Each commissioned one Chosen with a remembering-task."],
    [:IOLA_KEEPER,      "Iola — Library Keeper",
                        "Seventy-three years old, custodian of the Forgotten Library. " \
                        "Holds the only surviving copy of Aldric's notebook half on Vex. " \
                        "Has been waiting for the Chosen of Valor to be grown enough to read it."],
    [:CALDERA_HERMIT,   "The Caldera Hermit",
                        "Forty-one, mountain-weathered, feeds Mewtwo on Tuesdays. Will " \
                        "not discuss his past. Is at peace with this."]
  ].each do |k, t, x|
    CodexRegistry.add(k, title: t, category: :CHARACTERS, text: x)
  end
end


#===============================================================================
# Memories
#===============================================================================
[
  [:mem_astoria_arrival,      "The Forgotten Region",   "Marrowport. Old in the way Asgheim had not been old in centuries.", "Astoria Port",      37, :awe],
  [:mem_astoria_maris,        "The Port Master",         "Three Chosen. One Eevee-evolution.",                                  "Maris's Office",   37, :warm],
  [:mem_astoria_daro,         "Shade's Brother",         "Daro Vest. Aldrin Vest's youngest brother.",                          "Refugee Hall",     37, :grief],
  [:mem_astoria_elders,       "The Three Elders",        "Three side-quests. Pick yours when you have a quiet evening.",       "Elder Hall",       38, :warm],
  [:mem_astoria_vex_notebook, "Four Thousand Two Hundred and Seventeen", "I miss the man Vex was before the binding.",         "Forgotten Library",41, :grief],
  [:mem_astoria_lullaby,      "Anya's Lullaby",          "The first lullaby in forty years.",                                   "Sanctuary",        43, :love],
  [:mem_astoria_carving,      "Bren's Carving",          "Three names. Three stories.",                                         "Elder Hall",       43, :grief],
  [:mem_astoria_dance,        "Coraline's Dance",        "First to perform it in forty-three years.",                           "Marrowport Festival", 43, :bright],
  [:mem_astoria_hermit,       "Tuesdays",                "I feed it on Tuesdays. It does not eat much.",                        "Hidden Caldera",   47, :awe],
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
  [
    [:ach_astoria_anyas_song,     "Anya's Lullaby",         "Complete Anya's Song side-quest."],
    [:ach_astoria_brens_carving,  "Bren's Carving",         "Complete Bren's Carving side-quest."],
    [:ach_astoria_coralines_dance,"Coraline's Dance",       "Complete Coraline's Dance side-quest."],
    [:ach_astoria_vex_truth,      "Four Thousand Names",    "Read the Vex notebook at the Forgotten Library."],
    [:ach_astoria_refugees_trained, "Trained the Diaspora", "Help Daro with the refugee training week."],
    [:ach_astoria_complete,       "Forgotten No Longer",    "Complete every Astoria side-quest."],
  ].each do |id, name, desc|
    GameData::Achievement.define id do |a|
      a.name        name
      a.description desc
      a.category    :story_hidden
    end
  end
end


#===============================================================================
# Save data
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_astoria_refugee_help
end

SaveData.register(:sc_astoria_refugee_help) do
  ensure_class :TrueClass
  save_value { $PokemonGlobal.sc_astoria_refugee_help || false }
  load_value { |v| $PokemonGlobal.sc_astoria_refugee_help = v }
  new_game_value { false }
end
