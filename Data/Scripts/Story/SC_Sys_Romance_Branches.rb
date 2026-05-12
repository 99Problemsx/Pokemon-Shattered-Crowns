#===============================================================================
# POKÉMON SHATTERED CROWNS - PLAYER ROMANCE BRANCHES
#===============================================================================
# The bible's main romance is Lyra-Kael (NPC-to-NPC). The player is
# witness/best-person. That was an unusual and valid choice; this file
# does NOT replace it. Instead, it adds OPTIONAL parallel paths so the
# player can choose to have their own arc on the side — without
# disrupting the central Lyra-Kael story.
#
# Available paths:
#   :solo            — explicit choice; player is wedded to the work
#   :ragnar          — only available if Tier-A Romance Toggle was set
#                     BEFORE Ch28; Ragnar still dies but the grief is
#                     personal-grief (Ch28 cutscene branches subtly)
#   :viktor          — rival-to-romance arc; pays off Ch6/Ch16 banter
#   :sera_apprentice — Astoria-line apprentice met at Sela's temple
#
# Branch is set via the :sc_romance_choice global. Each branch is built
# from a small number of cutscenes layered onto the existing main story.
# All branches respect Lyra-Kael's primary arc completely.
#===============================================================================


module SCRomance
  PATHS = [:none, :solo, :ragnar, :viktor, :sera_apprentice].freeze

  def self.current
    $PokemonGlobal.sc_romance_choice || :none
  end

  def self.set(path)
    raise ArgumentError, "Unknown romance path: #{path}" unless PATHS.include?(path)
    $PokemonGlobal.sc_romance_choice = path
    case path
    when :solo            then pbAchievement(:ach_romance_solo)            if defined?(pbAchievement)
    when :ragnar          then pbAchievement(:ach_romance_ragnar_chosen)   if defined?(pbAchievement)
    when :viktor          then pbAchievement(:ach_romance_viktor_chosen)   if defined?(pbAchievement)
    when :sera_apprentice then pbAchievement(:ach_romance_sera_chosen)     if defined?(pbAchievement)
    end
  end

  def self.is?(path)
    current == path
  end

  def self.any?
    current != :none
  end

  def self.locked?
    # After Ch28 the romance choice is locked in (or stays :none)
    $game_switches && $game_switches[:sc_romance_locked]
  end
end


#===============================================================================
# Ch2.5 — Romance Toggle Conversation
# Optional dialogue prompt that lets the player formally choose a path.
# Default is :none. Player can also revisit this until Ch28 via the menu.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :sc_romance_toggle_prompt do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "\\i[A quiet moment. You catch yourself thinking about your life — not the world's. Just yours.]"
  scene.wait 30

  scene.choice [
    "Stay focused on the work (Solo).",
    "...I keep thinking about Ragnar.",
    "...I keep thinking about Viktor.",
    "...I keep thinking about someone I haven't met yet.",
    "Not sure yet."
  ] do |result|
    case result
    when 0
      SCRomance.set(:solo)
      pbMessage("\\b\\PN\\b: The work is enough. \\\\nI'll be fine.")
    when 1
      SCRomance.set(:ragnar)
      pbMessage("\\b\\PN\\b: ...he laughs too loud. He shouts when he's nervous. \\\\nHe is the only person who has ever known me before I was anything.")
      pbMessage("\\b\\PN\\b: *quiet* Yeah. \\\\nIt's Ragnar.")
    when 2
      SCRomance.set(:viktor)
      pbMessage("\\b\\PN\\b: ...he is *infuriating.* \\\\nHe is also someone who looked at me like an *opponent* for the first time in my life. \\\\nNot a Chosen. Not Marcus's kid.")
      pbMessage("\\b\\PN\\b: *small smile* That's something.")
    when 3
      SCRomance.set(:sera_apprentice)
      pbMessage("\\b\\PN\\b: I don't know yet. \\\\nI just *feel* like I haven't met them yet. \\\\nThat's the answer for now.")
    when 4
      pbMessage("\\b\\PN\\b: I don't know. \\\\nI'm not going to decide just because someone asked. \\\\nI'll know when I know.")
    end
  end
end


#===============================================================================
# RAGNAR PATH — small additions across Ch1-28
#-------------------------------------------------------------------------------
GameData::Cutscene.define :rag_path_ch3_festival_dance do |scene|
  return unless SCRomance.is?(:ragnar)
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  scene.message "\\i[Thornwood Festival. The dance.]"
  scene.message "\\bRagnar\\b: I — I — *one* dance. Not a *date.* A dance."
  scene.message "\\b\\PN\\b: Ragnar, you have asked me three times already."
  scene.message "\\bRagnar\\b: *fast* I am building up the *nerve* to ask a fourth time, just *say yes,* \\PN."
  scene.message "\\b\\PN\\b: *smiling* Yes, Ragnar."
  scene.message "\\bRagnar\\b: ...wait you said *yes?*"
  scene.message "\\b\\PN\\b: I said yes."
  scene.script {
    scMemory(:mem_rag_first_dance) if defined?(scMemory)
    relChange(:RAGNAR, 10) if defined?(relChange)
  }
end

GameData::Cutscene.define :rag_path_ch17_recovery_visit do |scene|
  return unless SCRomance.is?(:ragnar)
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.message "\\i[After your starter's near-death, you woke up in the Pokemon Center to Ragnar asleep in the chair by the window.]"
  scene.message "\\i[He'd been there for sixty hours. Lyra had given up trying to send him to the inn.]"
  scene.message "\\bRagnar\\b: *waking, immediately upright* \\\\nYou're *awake.* You are *awake.* \\\\nDo not — do not EVER do that to me again."
  scene.message "\\b\\PN\\b: *small voice* It wasn't *me* who — "
  scene.message "\\bRagnar\\b: *kneeling at the bed, taking your hand* \\\\nI know it wasn't. *I know.* \\\\nIt doesn't change what I'm asking."
  scene.message "\\b\\PN\\b: ...okay."
  scene.message "\\bRagnar\\b: *quietly* \\\\nI'm in love with you. \\\\nI think I have been since I was *seven.* \\\\nI was going to wait until after the league but. \\\\nThe league isn't a guaranteed *after,* anymore."
  scene.message "\\b\\PN\\b: *crying* ...I'm in love with you too, you loud bastard."
  scene.message "\\bRagnar\\b: *forehead to yours* \\\\nI'm staying. \\\\nThe whole way."
  scene.script {
    scMemory(:mem_rag_confession) if defined?(scMemory)
    $PokemonGlobal.sc_ragnar_lover_confession = true if $PokemonGlobal.respond_to?(:sc_ragnar_lover_confession=)
  }
end

GameData::Cutscene.define :rag_path_ch28_death_branch do |scene|
  return unless SCRomance.is?(:ragnar)
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.message "\\i[The arch was coming down. \\\\nRagnar was already moving. \\\\nYou *knew* what was about to happen, because of *who* he was, but also because of *what he had become to you.*]"
  scene.wait 30
  scene.message "\\bRagnar\\b: *catching your eye, smiling — actually smiling* \\\\nI told you I was staying the whole way."
  scene.message "\\bRagnar\\b: *quick, before he goes* I love you, \\PN. \\\\nI loved you ALL the way."
  scene.wait 60
  scene.message "\\i[The arch fell.]"
  scene.message "\\i[You did not look away.]"
  scene.wait 60
  scene.message "\\bLyra\\b: *catching you as you crumple* \\\\nI know. \\\\nI know I know I know."
  scene.message "\\bKael\\b: *kneeling beside you, no words, hand on your back, not moving*"
  scene.wait 45
  scene.script {
    scMemory(:mem_rag_last_words) if defined?(scMemory)
    pbAchievement(:ach_romance_ragnar_carried) if defined?(pbAchievement)
    scFateGrant(:fate_loved_and_lost, 3, "Loved him all the way") if defined?(scFateGrant)
  }
end

GameData::Cutscene.define :rag_path_ch35_widowed do |scene|
  return unless SCRomance.is?(:ragnar)
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.message "\\i[At Ragnar's grave, the day of the unveiling.]"
  scene.message "\\b\\PN\\b: *to the stone* \\\\nWe won, Rag. \\\\nIt wasn't worth the price. \\\\nI'm not going to pretend it was."
  scene.message "\\b\\PN\\b: *placing a folded note under the cloak on the stone* \\\\nI wrote you back. \\\\nDad told me the league was practising. \\\\nThey want to retire your number. \\\\nI told them yes."
  scene.message "\\bMarcus\\b: *quietly, behind you* \\\\nKid. Your mother and I have the kitchen warm if you want it."
  scene.message "\\b\\PN\\b: *not turning* \\\\nIn a minute, Dad. \\\\nIn a minute."
  scene.script {
    scMemory(:mem_rag_grave_unveiling) if defined?(scMemory)
  }
end


#===============================================================================
# VIKTOR PATH — rival-to-romance, lighter touch, no tragic ending
#-------------------------------------------------------------------------------
GameData::Cutscene.define :vik_path_ch16_real_question do |scene|
  return unless SCRomance.is?(:viktor)
  scene.play_bgm 'Pokemon BW - Rival Theme'
  scene.message "\\bViktor\\b: Hey. Hey. \\\\nReal question. \\\\nOne not for performing in front of your friends."
  scene.message "\\b\\PN\\b: ...okay."
  scene.message "\\bViktor\\b: When this is over — \\\\nIF it is over, I am not — *I am not* assuming —"
  scene.message "\\b\\PN\\b: *patient* Viktor. Real question."
  scene.message "\\bViktor\\b: ...would you let me take you to dinner. \\\\nA *real* dinner. \\\\nThe Asgheim Champion has a *whole* expense account."
  scene.message "\\b\\PN\\b: *grinning* You're not the Champion yet, Viktor."
  scene.message "\\bViktor\\b: I will *be.* \\\\nDinner. *Yes or no.*"
  scene.message "\\b\\PN\\b: ...yes."
  scene.message "\\bViktor\\b: *small fist-pump under the table that Kael definitely saw*"
  scene.script {
    scMemory(:mem_vik_real_question) if defined?(scMemory)
    relChange(:VIKTOR, 15) if defined?(relChange)
  }
end

GameData::Cutscene.define :vik_path_ch29_championship_aside do |scene|
  return unless SCRomance.is?(:viktor)
  scene.play_bgm 'Pokemon XY - Champion Battle'
  scene.message "\\bViktor\\b: *before the battle, low, only to you* \\\\nIf I win — *which I won't* — \\\\nyou owe me dinner anyway."
  scene.message "\\b\\PN\\b: *smiling* Deal."
  scene.message "\\bViktor\\b: If *you* win — \\\\nI owe *you* dinner. Plus the title. \\\\nThat seems fair."
  scene.message "\\b\\PN\\b: Just battle, Viktor."
  scene.message "\\bViktor\\b: *grinning* Just dinner, \\PN. \\\\nGoing in."
  scene.script {
    scMemory(:mem_vik_pre_championship) if defined?(scMemory)
  }
end

GameData::Cutscene.define :vik_path_ch35_after_seal do |scene|
  return unless SCRomance.is?(:viktor)
  scene.play_bgm 'Pokemon XY - Anistar City'
  scene.message "\\bViktor\\b: ...you saved the world."
  scene.message "\\b\\PN\\b: We saved the world."
  scene.message "\\bViktor\\b: ...you let me help."
  scene.message "\\b\\PN\\b: Of course I did."
  scene.message "\\bViktor\\b: \\\\nI'd like to *keep* helping. \\\\nNot only the world. \\\\nYou."
  scene.message "\\b\\PN\\b: *quietly* I'd like that too."
  scene.message "\\bViktor\\b: *tentatively, fingers brushing yours* \\\\nDinner, then? \\\\nFinally?"
  scene.message "\\b\\PN\\b: *taking his hand fully* \\\\nFinally."
  scene.script {
    scMemory(:mem_vik_after_seal) if defined?(scMemory)
    pbAchievement(:ach_romance_viktor_complete) if defined?(pbAchievement)
  }
end


#===============================================================================
# SERA APPRENTICE PATH — slower, Astoria-side, post-Ch37
#-------------------------------------------------------------------------------
GameData::Cutscene.define :sera_path_ch39_introduction do |scene|
  return unless SCRomance.is?(:sera_apprentice)
  scene.play_bgm 'Pokemon XY - Frost Cavern'
  scene.message "\\i[Sela, the Temple of Stars keeper, gestured for someone in the corner to step forward.]"
  scene.message "\\bSela\\b: \\\\nThis is my apprentice, Anuk. \\\\nThey will accompany you through the trial — the Stars require a *second observer* for first-time Chosen."
  scene.message "\\bAnuk\\b: \\\\n...hello. \\\\nI am Anuk. \\\\nI was supposed to be Chosen myself, but the Stars decided otherwise. \\\\nI try not to be bitter about it. \\\\nI fail sometimes."
  scene.message "\\b\\PN\\b: *immediately liking them* \\\\nThat is the most honest greeting I have ever received."
  scene.message "\\bAnuk\\b: \\\\nI cannot perform smaller. \\\\nIt's a known flaw."
  scene.message "\\b\\PN\\b: *small smile* \\\\nIt's a *quality.*"
  scene.script {
    scMemory(:mem_sera_intro) if defined?(scMemory)
    relChange(:ANUK, 5) if defined?(relChange)
  }
end

GameData::Cutscene.define :sera_path_ch44_distortion_help do |scene|
  return unless SCRomance.is?(:sera_apprentice)
  scene.play_bgm 'Pokemon XY - Reflection Cave'
  scene.message "\\i[In the Distortion World, you got separated from Lyra and Kael for two hours. \\\\nAnuk was there. Their lantern was still burning when yours had gone out.]"
  scene.message "\\bAnuk\\b: \\\\nI followed you. \\\\nThe Stars said you would need a second observer here. \\\\nI was not going to argue with the Stars."
  scene.message "\\b\\PN\\b: ...you came into the *Distortion World* for me?"
  scene.message "\\bAnuk\\b: \\\\nI came into the Distortion World *for the work.* \\\\nThe fact that you are *in* the work is a *secondary* feature."
  scene.message "\\bAnuk\\b: ...*incredibly secondary,* I should say."
  scene.message "\\b\\PN\\b: *quiet laugh* \\\\nThat was the closest you have come to flirting in three months, Anuk."
  scene.message "\\bAnuk\\b: \\\\nI know. \\\\nI am working up to it. \\\\nLet's get out alive first."
  scene.script {
    scMemory(:mem_sera_distortion) if defined?(scMemory)
  }
end

GameData::Cutscene.define :sera_path_ch48_quiet_arrival do |scene|
  return unless SCRomance.is?(:sera_apprentice)
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.message "\\i[Anuk waited at the port of Astoria for the ship home. \\\\nThey had a small bag. They had their lantern. They had asked.]"
  scene.message "\\bAnuk\\b: ...Sela said I could go. \\\\nIf I wanted."
  scene.message "\\b\\PN\\b: ...do you want?"
  scene.message "\\bAnuk\\b: \\\\nVery much. \\\\nMore than is sensible."
  scene.message "\\b\\PN\\b: *taking their hand* \\\\nGood. \\\\nI didn't want to sail home alone."
  scene.script {
    scMemory(:mem_sera_arrival) if defined?(scMemory)
    pbAchievement(:ach_romance_sera_complete) if defined?(pbAchievement)
  }
end


#===============================================================================
# Solo path — small confirmations across the game
#-------------------------------------------------------------------------------
GameData::Cutscene.define :solo_path_ch27_witness_only do |scene|
  return unless SCRomance.is?(:solo)
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.message "\\i[That night, watching the fire burn down, you knew the answer for yourself.]"
  scene.message "\\b\\PN\\b: *to your starter, softly* \\\\nThis is the right answer for me. \\\\nI want it to be them. I don't want it to be me too."
  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *very gentle agreement-chirp*", starter.name))
    end
  }
  scene.message "\\b\\PN\\b: *smiling* \\\\nI know. \\\\nI'm not lonely, friend. \\\\nI'm *yours.*"
  scene.script {
    scMemory(:mem_solo_chosen) if defined?(scMemory)
    pbAchievement(:ach_romance_solo_complete) if defined?(pbAchievement)
  }
end


#===============================================================================
# Memory definitions for romance branches
#===============================================================================
[
  [:mem_rag_first_dance,    "The First Dance",       "Wait you said yes?",                    "Thornwood Festival",   3, :love],
  [:mem_rag_confession,     "The Whole Way",         "I loved you all the way.",              "Pokemon Center",      17, :love],
  [:mem_rag_last_words,     "Smiling, Still",        "I told you I was staying the whole way.", "The Gateway",       28, :grief],
  [:mem_rag_grave_unveiling,"The Note Under the Cloak", "I wrote you back.",                  "League Road",        35, :grief],
  [:mem_vik_real_question,  "The Real Question",     "Would you let me take you to dinner?",  "Ravenwatch",          16, :warm],
  [:mem_vik_pre_championship,"Just Dinner",          "If you win, I owe you dinner. Plus the title.", "League Hall", 29, :bright],
  [:mem_vik_after_seal,     "Finally",               "Finally.",                              "Sanctuary",          35, :love],
  [:mem_sera_intro,         "Anuk",                  "I try not to be bitter. I fail sometimes.", "Temple of Stars", 39, :warm],
  [:mem_sera_distortion,    "Lantern Still Burning", "I came into the Distortion World for the work.", "Distortion World", 44, :awe],
  [:mem_sera_arrival,       "Quiet Arrival",         "I didn't want to sail home alone.",     "Astoria Port",       48, :love],
  [:mem_solo_chosen,        "Yours",                 "I'm not lonely. I'm yours.",            "Camp by the fire",   27, :love],
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
    [:ach_romance_solo,            "Wedded to the Work",       "Commit to the solo path."],
    [:ach_romance_ragnar_chosen,   "It Was Always Going to Be Him", "Commit to Ragnar."],
    [:ach_romance_ragnar_carried,  "All The Way",              "Carry Ragnar's love through to the Gateway."],
    [:ach_romance_viktor_chosen,   "The Real Question",        "Commit to Viktor."],
    [:ach_romance_viktor_complete, "Finally",                  "Complete the Viktor path."],
    [:ach_romance_sera_chosen,     "Someone I Haven't Met Yet", "Commit to the Astoria path."],
    [:ach_romance_sera_complete,   "Lantern Still Burning",    "Complete the Anuk path."],
    [:ach_romance_solo_complete,   "Yours",                    "Complete the solo path."],
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
  attr_accessor :sc_romance_choice, :sc_ragnar_lover_confession
end

SaveData.register(:sc_romance_choice) do
  ensure_class :Symbol
  save_value { $PokemonGlobal.sc_romance_choice || :none }
  load_value { |v| $PokemonGlobal.sc_romance_choice = v }
  new_game_value { :none }
end

SaveData.register(:sc_ragnar_lover_confession) do
  ensure_class :TrueClass
  save_value { $PokemonGlobal.sc_ragnar_lover_confession || false }
  load_value { |v| $PokemonGlobal.sc_ragnar_lover_confession = v }
  new_game_value { false }
end
