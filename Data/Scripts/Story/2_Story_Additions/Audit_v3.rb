#===============================================================================
# POKÉMON SHATTERED CROWNS - STORY AUDIT v3 (EMOTIONAL RESONANCE)
#===============================================================================
# Third audit pass — focused on what v1/v2 left thin: emotional depth.
#
#   v3-1   Grief revisitation              — Ch33, Ch36.5, Ch41.5
#   v3-2   Starter character arc           — Ch1.5 naming + 4 bonding beats
#   v3-3   Guardian voices                  — stylistic helper + 3 codex personality entries
#
# All content uses the SC Script System (no PBS). New cutscenes are
# self-contained and reference only existing variables/handlers.
#===============================================================================


#===============================================================================
# v3-3 helper: Guardian voice styling
#-------------------------------------------------------------------------------
# Each of the three Guardians has a distinct personality. Plain
# `scene.message "\\bZacian\\b: ..."` lines all read the same. This helper
# wraps a Guardian's name + color + small flavor prefix so their voices
# feel distinct without needing per-cutscene rewrites.
#
# Usage:
#   scene.script { sc_guardian_say(:ZACIAN, "Steady now. The blade chooses its moment.") }
#
# Or shorter via the builder extension below:
#   scene.zacian_says   "Steady now. The blade chooses its moment."
#   scene.xerneas_says  "The forest knows you. Lean into it."
#   scene.yveltal_says  "You will lose someone today. That, too, is the cycle."
#-------------------------------------------------------------------------------
SC_GUARDIAN_VOICE = {
  :ZACIAN  => {
    color:   "\\c[3]",      # Steel-blue accent
    prefix:  "Zacian",
    flavor:  "*formal, like a master-at-arms speaking to a squire*",
    sigil:   "\\i[27]",     # if you have a sword icon — falls back to nothing if not
  },
  :XERNEAS => {
    color:   "\\c[1]",      # Warm gold-pink
    prefix:  "Xerneas",
    flavor:  "*low and warm, the way a grandmother's voice would be if she were a deer-god*",
    sigil:   "\\i[28]",
  },
  :YVELTAL => {
    color:   "\\c[7]",      # Deep crimson
    prefix:  "Yveltal",
    flavor:  "*old, slow, neither angry nor kind*",
    sigil:   "\\i[29]",
  }
}.freeze

def sc_guardian_say(who, text, show_flavor: false)
  v = SC_GUARDIAN_VOICE[who]
  return pbMessage(text) unless v
  prefix = "#{v[:color]}#{v[:prefix]}\\c[0]"
  if show_flavor
    pbMessage("#{prefix}: #{v[:flavor]}\\1\\n#{text}")
  else
    pbMessage("#{prefix}: #{text}")
  end
end

# Builder extension so cutscenes can call scene.zacian_says directly
if defined?(GameData::CutsceneBuilder)
  module GameData
    class CutsceneBuilder
      def zacian_says(text, show_flavor: false)
        @steps << { type: :script, block: proc { sc_guardian_say(:ZACIAN, text, show_flavor: show_flavor) } }
      end

      def xerneas_says(text, show_flavor: false)
        @steps << { type: :script, block: proc { sc_guardian_say(:XERNEAS, text, show_flavor: show_flavor) } }
      end

      def yveltal_says(text, show_flavor: false)
        @steps << { type: :script, block: proc { sc_guardian_say(:YVELTAL, text, show_flavor: show_flavor) } }
      end
    end
  end
end


#===============================================================================
# v3-1 — Grief revisitation
#-------------------------------------------------------------------------------
# Three short interludes that revisit the dead later in the story. Real
# grief comes back in waves, not just at the funeral. These give the
# characters room to actually carry the weight forward.
#===============================================================================

#-------------------------------------------------------------------------------
# Aldric, mourned in Ch33 — Lyra hears his voice before a hard choice.
# Trigger: Quiet moment right before the Guardians manifest in Ch33.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch33_morning_for_aldric do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'

  # TODO: Event Sequence - Lyra Alone in the Predawn
  # - Camp asleep. Lyra sitting up. Her starter Willow curled beside her.
  # - She's whispering to no one, very quietly.

  scene.message "\\i[Lyra hadn't slept. She sat watching the embers, with Willow's tail across her knees.]"
  scene.wait 30

  scene.message "\\bLyra\\b: *whispering* ...Professor? Are you here?"
  scene.message "\\bLyra\\b: I keep hearing you. Right before I have to do something hard."
  scene.message "\\bLyra\\b: Like you're standing just over my shoulder, telling me to *breathe first.*"
  scene.wait 30

  scene.message "\\i[A breath of wind. Just wind. Probably wind.]"
  scene.wait 20

  scene.show_emotion :LYRA, :ellipses
  scene.message "\\bLyra\\b: Today I have to ask Xerneas for more than I gave already."
  scene.message "\\bLyra\\b: I'm scared the asking is what breaks me."
  scene.message "\\bLyra\\b: If you were here, you'd say something dry. About hypothesis testing. About taking the next step."
  scene.wait 30

  scene.message "\\bLyra\\b: I'll take the next step. \\\\nI miss you, Professor."
  scene.wait 30

  # Kael wakes, doesn't say anything, just sits beside her.
  scene.show_emotion :KAEL, :ellipses
  scene.message "\\bKael\\b: *quietly, after a long moment* ...he'd have wanted you to ask. Loudly."
  scene.message "\\bLyra\\b: *smiling through tears* He would, wouldn't he."

  scene.show_emotion :KAEL, :ellipses
  scene.message "\\bKael\\b: I'll wake \\PN. We don't do this alone."

  # Codex unlock: Lyra processes grief differently — registers a side codex
  scene.script {
    codexDiscover(:LYRA_PROFILE) if defined?(codexDiscover) && !$game_switches[:dummy]
  }
end


#-------------------------------------------------------------------------------
# Ragnar, one year later. Ch36.5 — between Sanctuary established and the
# Fracture (Ch37). Anniversary of his death. Player visits the grave.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch36_5_ragnar_one_year do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_tint :sepia, 30

  # TODO: Event Sequence - At the Grave
  # - One year after Ch28
  # - League road where it bends north
  # - Headstone with Marcus's old Champion cloak draped over it (from v1-7 Ch35)
  # - Late afternoon. Wind through tall grass.

  scene.message "\\i[The road bent north here. You stopped where the stone was.]"
  scene.message "\\i[Dad's old cloak had weathered a year of seasons. It was lighter now. Less red. More rust.]"
  scene.wait 30

  scene.message "\\b\\PN\\b: Hey. It's been a year."
  scene.message "\\b\\PN\\b: Mom planted the silver-stem flowers you liked. They came up by themselves this spring."
  scene.wait 30

  scene.message "\\b\\PN\\b: I beat Champion Viktor last week. \\\\nNot ranked. Just a friendly. He wanted to."
  scene.message "\\b\\PN\\b: He said the second pokeball I threw — the one I always lead with — \\\\nthat was the same one *you* always led with when we fought as kids."
  scene.message "\\b\\PN\\b: I didn't know that. Apparently I picked it up from you. *Apparently.*"
  scene.wait 30

  # Player breaks
  scene.show_emotion :player, :ellipses
  scene.message "\\b\\PN\\b: ...I still hear you yell my name when I turn corners too fast on a bike."
  scene.message "\\b\\PN\\b: Loud bastard. I miss you so much."
  scene.wait 45

  # Marcus arrives. Doesn't say anything. Stands beside.
  scene.message "\\i[Footsteps behind you. Dad. He didn't say anything. He just stood there.]"
  scene.wait 30

  scene.message "\\bDad Marcus\\b: ...you've been here an hour, kid. Mom's worried."
  scene.message "\\b\\PN\\b: Yeah."
  scene.message "\\bDad Marcus\\b: I'll tell her another hour."
  scene.wait 30

  scene.message "\\b\\PN\\b: Dad?"
  scene.message "\\bDad Marcus\\b: Yeah?"
  scene.message "\\b\\PN\\b: ...thanks for training him those six weeks."
  scene.message "\\bDad Marcus\\b: *voice tight* He was easy to love."

  scene.camera_tint :reset, 30
  scene.script {
    scFateGrant(:fate_year_one_grief, 1, "Marked the anniversary") if defined?(scFateGrant)
  }
end


#-------------------------------------------------------------------------------
# Elena, in Astoria. Ch41.5 — between Shadows Temple and Crown Restoration.
# Lyra finds an old correspondence box in a temple side-chamber. Elena
# wrote letters home she never sent.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch41_5_elena_message do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'

  # TODO: Event Sequence - The Side Chamber
  # - Lyra exploring while Kael recovers from the Shadows trial
  # - Finds a stone box in a corner, sealed with a sigil Elena would have known

  scene.message "\\i[Lyra brushed centuries of dust off the lid. The sigil flickered, then opened.]"
  scene.message "\\i[Inside: a small bundle of letters, written in her sister's handwriting.]"
  scene.wait 30

  scene.show_emotion :LYRA, :exclamation
  scene.message "\\bLyra\\b: ...Elena was here?"
  scene.message "\\bLyra\\b: She *was* here. She was researching. Years before any of this."
  scene.wait 30

  # The letter Elena never sent
  scene.message "\\i[The top letter is dated three years before the Hand's first attack.]"
  scene.wait 20

  scene.message "\\b[Elena's Letter]\\b: \\\\nDear Lyra — I found the Crown chamber today. It's everything Grandma said it was."
  scene.message "\\b[Elena's Letter]\\b: I'm not coming home until I understand what it does. I think Xerneas chose someone in our family for a reason and I want to find out which of us before it picks for itself."
  scene.message "\\b[Elena's Letter]\\b: Probably you. You always had the brighter heart. I love you. I'll be home soon."
  scene.message "\\b[Elena's Letter]\\b: — Elena"
  scene.wait 60

  scene.show_emotion :LYRA, :ellipses
  scene.message "\\bLyra\\b: *very quietly* You knew. You knew *years* ago and you didn't tell me."
  scene.message "\\bLyra\\b: You ran into a temple alone to figure it out so I wouldn't have to."
  scene.wait 30

  # Kael arrives, sees Lyra, doesn't ask
  scene.message "\\bKael\\b: ...Lyra?"
  scene.message "\\bLyra\\b: *holding the letter* She picked me by *not* picking herself."
  scene.message "\\bLyra\\b: All this time I thought Xerneas chose me. Elena did. \\\\nElena chose me and then made the world wait until she was sure I'd survive it."
  scene.wait 30

  scene.message "\\bKael\\b: *gently* Then you carry her choice. That's still a sister's gift."
  scene.message "\\bLyra\\b: *folding the letter, carefully* I want to take these home. After. \\\\nMom should read them."

  scene.script {
    codexDiscover(:HOOPA_PROFILE) if defined?(codexDiscover) && !$game_switches[:dummy]
    scFateGrant(:fate_elena_letters, 1, "Found Elena's letters") if defined?(scFateGrant)
  }
end


#===============================================================================
# v3-2 — Starter character arc
#-------------------------------------------------------------------------------
# Player's starter has no name and no personality in the bible. Lyra has
# Willow, Kael has Shadow. These five beats give the player's starter a
# name (player choice) and a recurring personality that pays off at key
# emotional moments.
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# v3-2a — Naming the starter (Ch1.5, right after :ch1_starter_bond)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch1_5_starter_naming do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'

  # TODO: Event Sequence - Outside the Lab
  # - Player walks outside with new starter
  # - Starter trots beside, looking up

  scene.message "\\i[Outside the lab, your starter trotted at your heels. \\\\nLooked up at you. Waited.]"
  scene.wait 20

  scene.message "\\b\\PN\\b: *kneeling* So. We need a name for you."

  # In an in-engine event, replace this script call with the actual
  # pbNameEntry helper. The cutscene's job here is the framing.
  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("What will you call your starter?"))
      name = pbNameEntry(_INTL("{1}'s name?", starter.speciesName), 10, starter.speciesName, starter)
      if name && !name.empty?
        starter.name = name
      end
    end
  }
  scene.wait 20

  scene.message "\\b\\PN\\b: That feels right. \\\\nWelcome to the team."

  # First friendship bump
  scene.script {
    starter = $player.party[0]
    starter.changeHappiness("getegg") if starter rescue nil
  }
end

#-------------------------------------------------------------------------------
# v3-2b — Marks awaken, starter senses it first (Ch8)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch8_starter_senses do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'

  # TODO: Event Sequence - Pre-Mark Sensing
  # - Player wakes in inn, mark not yet visible
  # - Starter is already out of its ball, sitting on player's chest

  scene.message "\\i[You woke to weight on your chest. Your starter was already out of its pokeball, eyes wide open, staring at your face.]"
  scene.wait 30

  scene.show_emotion :PLAYER, :question
  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *low, urgent cry*", starter.name))
    else
      pbMessage("\\bStarter\\b: *low, urgent cry*")
    end
  }
  scene.wait 20

  scene.message "\\b\\PN\\b: Buddy? What's wrong?"

  # Starter touches the spot on the player's skin where the mark will appear
  scene.message "\\i[Your partner touched its nose to the inside of your forearm. The skin there was warm. Warmer than the room.]"
  scene.wait 30

  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *softer cry, like a warning*", starter.name))
    end
  }

  scene.message "\\b\\PN\\b: ...okay. I trust you. Show me."

  # Hand off to the regular mark-awakening sequence (ch8_marks_appear)
  scene.script {
    starter = $player.party[0]
    starter.changeHappiness("evolution") if starter rescue nil
  }
end

#-------------------------------------------------------------------------------
# v3-2c — Starter nearly dies in Ch17, recovery talk
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch17_starter_promise do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  # TODO: Event Sequence - Pokemon Center, Quiet Hour
  # - Three days post-attack
  # - Starter awake, weak, but okay
  # - Player kneeling at the cot

  scene.message "\\i[The nurse said you could see them. \\\\nAlone, no team, no friends — just you and your partner.]"
  scene.wait 30

  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *weak cry, happy to see you*", starter.name))
    end
  }
  scene.wait 20

  scene.message "\\b\\PN\\b: Hey. Hey buddy."
  scene.message "\\b\\PN\\b: *voice breaking* You shouldn't have done that. \\\\nYou shouldn't have *stayed.*"
  scene.wait 30

  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *low, certain cry — disagreeing*", starter.name))
    end
  }

  scene.message "\\b\\PN\\b: I know. I know you did. But —"
  scene.message "\\b\\PN\\b: *small voice* If you ever do that again I will end you myself."
  scene.message "\\b\\PN\\b: That's a *promise.* From your trainer. Who loves you too much for this."
  scene.wait 30

  # Starter touches forehead to player's
  scene.message "\\i[They touched their forehead to yours. \\\\nIt was the closest thing to language between you.]"
  scene.wait 30

  scene.message "\\b\\PN\\b: ...okay. Together. *Together,* you hear me?"

  scene.script {
    starter = $player.party[0]
    starter.changeHappiness("evolution") if starter rescue nil
    starter.changeHappiness("vitamin") if starter rescue nil
  }
end

#-------------------------------------------------------------------------------
# v3-2d — Starter saves you again at Ragnar's death (Ch28)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch28_starter_at_ragnar do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  # TODO: Event Sequence - After the Arch Falls
  # - Player on knees, dust everywhere
  # - Starter at player's side — uninjured but trembling

  scene.message "\\i[Your starter was the first thing that moved.]"
  scene.message "\\i[It walked, slow, until it was between you and the rubble.]"
  scene.wait 30

  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *low cry — not victory. Not grief either. Standing.*", starter.name))
    end
  }
  scene.wait 30

  scene.message "\\b\\PN\\b: *barely audible* He took my place."
  scene.message "\\b\\PN\\b: He took my *place.*"

  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *cry — close, level, refusing to look away*", starter.name))
    end
  }

  scene.message "\\b\\PN\\b: ...I know. \\\\nI know you're here. \\\\nI know."
  scene.wait 30

  scene.message "\\i[You stayed there a long time. The starter stayed too. Eventually Lyra and Kael came back for you both.]"
end

#-------------------------------------------------------------------------------
# v3-2e — Starter's final evolution at the Crown's restoration (Ch42)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch42_starter_final_evo do |scene|
  scene.play_bgm 'Pokemon XY - Battle Trainer'
  scene.camera_flash 60

  # TODO: Event Sequence - The Crown Activates
  # - Crown reforms in player's hands
  # - All three starters glow
  # - The player's starter steps forward, undergoes final evolution

  scene.message "\\i[The Crown reformed. Three colors of light spiraled around you.]"
  scene.message "\\i[Your starter looked up — not at you, *past* you, into something only it could see.]"
  scene.wait 30

  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *bright, certain cry*", starter.name))
    end
  }

  scene.play_se 'Audio/SE/Evolution'
  scene.camera_flash 80
  scene.wait 60

  scene.message "\\i[Your partner had grown. Bigger. Surer. The light didn't fade after — it stayed in the eyes.]"
  scene.wait 30

  scene.script {
    starter = $player.party[0]
    if starter
      # Trigger evolution if possible — Essentials' check_evolution
      if starter.respond_to?(:check_evolution_on_event_triggered)
        starter.check_evolution_on_event_triggered("LevelUp")
      end
      pbMessage(_INTL("\\b{1}\\b: *new voice, deeper, but still theirs*", starter.name))
    end
  }

  scene.message "\\b\\PN\\b: *smiling, finally* Hey. \\\\nYou look good."
  scene.message "\\b\\PN\\b: Let's go finish this."

  scene.script {
    scFateGrant(:fate_starter_final, 1, "The bond was always complete") if defined?(scFateGrant)
  }
end
