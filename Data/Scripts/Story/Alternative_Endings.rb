#===============================================================================
# POKÉMON SHATTERED CROWNS - ALTERNATIVE ENDINGS
#===============================================================================
# The Morality System defines five endings (PURE_LIGHT, LIGHT, BALANCE, DARK,
# PURE_DARK) and the main story bible only writes the BALANCE/True Ending
# branch. This file fills in the four alternate branches so MoralityCore's
# `ending_available?` checks resolve to playable content.
#
# Branch picker: dispatch :ch34_ending_dispatch from the final battle's
# resolution. It examines MoralityManager.data.current_tier and routes to
# the appropriate cutscene. The shared post-credits cutscene
# :ch_credits_universal closes every ending.
#
# Design notes (per audit recommendation):
#   PURE_LIGHT (Redemption Maximum) — Player saves everyone, including
#       enemies. Malachar surrenders before the final fight. Costs the
#       player something subtler: their connection to Zacian becomes
#       advisory rather than partnered. They walked too clean a line.
#
#   LIGHT (Standard Heroic) — Close to canonical True Ending, slightly
#       different beats. Ragnar still dies. Elena still dies. But the
#       three Generals are spared, choose exile.
#
#   BALANCE (Canonical True Ending) — Handled by Main_Story.rb chapters
#       29-55. We dispatch to :ch35_ending_act4_end and let the regular
#       chain run.
#
#   DARK (Pyrrhic Victory) — Player wins but Kael is consumed by Yveltal's
#       hunger mid-battle. Lyra survives but never speaks of him again.
#       Sanctuary is built as a memorial, not a home.
#
#   PURE_DARK (Domination) — Player accepts Nidhoggr's offer at the last
#       moment. The world is "saved" through unilateral terror — the
#       player becomes the new tyrant. Lyra and Kael fight you. You win.
#       The credits are silent.
#===============================================================================


#-------------------------------------------------------------------------------
# Dispatcher — call this instead of going straight to :ch34_victory
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch34_ending_dispatch do |scene|
  scene.script {
    tier = if defined?(MoralityManager)
             MoralityManager.data.current_tier rescue :NEUTRAL
           else
             :NEUTRAL
           end

    target = case tier
             when :PURE_LIGHT then :ending_pure_light
             when :LIGHT      then :ending_light
             when :NEUTRAL    then :ending_balance     # canonical
             when :DARK       then :ending_dark
             when :PURE_DARK  then :ending_pure_dark
             else :ending_balance
             end

    GameData::Cutscene.play(target)
  }
end


#===============================================================================
# PURE_LIGHT — Redemption Maximum (Malachar surrenders, all enemies saved)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ending_pure_light do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.camera_flash 60

  scene.message "\\bMalachar\\b: ...I cannot do this. I cannot pull the lever."
  scene.message "\\bMalachar\\b: Look at them. Look at what they made of each other."
  scene.wait 30

  scene.message "\\bMalachar\\b: *to the Generals* Stand down. All of you."
  scene.message "\\bGeneral Ruin\\b: ...even me?"
  scene.message "\\bMalachar\\b: Especially you. You chose this. You can also un-choose it."
  scene.wait 30

  scene.message "\\bMalachar\\b: *kneeling, hand on heart* I surrender myself to the Chosen's justice. " \
                "Whatever you decide, I will accept. Bind me to the Eternal Seal as the next watcher."
  scene.message "\\b\\PN\\b: *quietly* ...okay."

  scene.wait 60

  # The cost: Zacian's voice becomes distant — the player never killed anything
  # they didn't have to. The bond becomes counsel rather than partnership.
  scene.message "\\bZacian\\b: *gently* You chose the harder path. I respect it."
  scene.message "\\bZacian\\b: I will not stand at your side as partner now. I will speak when called. The bond is yours to refuse."
  scene.message "\\b\\PN\\b: ...that's fair."

  scene.message "\\i[Years later, the Sanctuary at Astoria houses every former Hand member who chose to atone — Malachar among them.]"
  scene.message "\\i[Lyra and Kael marry quietly. You officiate. There is no parade. There is no need.]"
  scene.message "\\i[Hoopa visits weekly. Subject Zero visits monthly. Both ask after the Generals by name.]"
  scene.wait 60

  scene.script { GameData::Cutscene.play(:ch_credits_universal) }
end


#===============================================================================
# LIGHT — Standard Heroic (Generals exiled, world heals normally)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ending_light do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'

  scene.message "\\bMalachar\\b: *defeated, panting* You should kill me."
  scene.message "\\b\\PN\\b: I should. I'm not going to."
  scene.wait 30

  scene.message "\\bKael\\b: Mercy isn't surrender. It's a choice. We're choosing it."
  scene.message "\\bLyra\\b: The seal is yours to watch. Not as villain. As witness."
  scene.wait 30

  scene.message "\\bMalachar\\b: ...you understand I won't thank you."
  scene.message "\\b\\PN\\b: I don't need you to."

  scene.message "\\i[The three Generals are stripped of titles and exiled to the islands beyond Astoria.]"
  scene.message "\\i[Vex chooses to stay near Hoopa's seal — penance for what he started.]"
  scene.message "\\i[Ragnar is buried where the league road bends north. Elena is buried in the Eternal Forest.]"
  scene.message "\\i[Lyra and Kael marry the following spring.]"

  scene.script { GameData::Cutscene.play(:ch_credits_universal) }
end


#===============================================================================
# BALANCE — Canonical True Ending (dispatched to Main_Story.rb's existing chain)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ending_balance do |scene|
  scene.script {
    # Hand off to the existing canonical chain
    GameData::Cutscene.play(:ch34_victory)
    GameData::Cutscene.play(:ch34_asgaheim_crumbles)
    GameData::Chapter.complete(:ch34) if defined?(GameData::Chapter)
  }
end


#===============================================================================
# DARK — Pyrrhic Victory (Kael consumed, Lyra survives broken)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ending_dark do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_shake 20, 90

  scene.message "\\bKael\\b: I can hold him longer if I stop holding back."
  scene.message "\\bLyra\\b: Kael — DON'T —"
  scene.message "\\bKael\\b: *softly* I love you."
  scene.wait 30

  # Kael lets Yveltal take more than the bond can return
  scene.camera_flash 80
  scene.message "\\i[Kael did not return.]"
  scene.message "\\i[Yveltal lingered three days after the battle. Then it was gone too.]"
  scene.wait 45

  scene.message "\\bLyra\\b: *empty* He said he wanted a sanctuary. We'll build it anyway."
  scene.message "\\bLyra\\b: With his name on it."
  scene.wait 30

  scene.message "\\i[The Sanctuary is built. It is beautiful. Lyra runs it for the rest of her life.]"
  scene.message "\\i[She never speaks Kael's name to anyone else. She speaks it to the wind every morning.]"
  scene.message "\\i[You visit every year. You bring berries Lyra used to like. She thanks you.]"
  scene.message "\\i[She does not smile anymore. Not really.]"

  scene.script { GameData::Cutscene.play(:ch_credits_universal) }
end


#===============================================================================
# PURE_DARK — Domination (Player accepts Nidhoggr's offer)
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ending_pure_dark do |scene|
  scene.play_bgm 'Pokemon XY - Final Battle Lysandre'
  scene.camera_tint :red, 60
  scene.camera_shake 30, 120

  scene.message "\\bNidhoggr\\b: ...you understand, don't you?"
  scene.message "\\bNidhoggr\\b: They would seal me again in a thousand years. And a thousand years after. And again."
  scene.message "\\bNidhoggr\\b: There is one alternative. *You.*"
  scene.wait 30

  scene.message "\\bNidhoggr\\b: Take what I am. Wield it. End suffering once. Permanently."
  scene.message "\\bNidhoggr\\b: A Chosen of Valor has the right. The right of the strongest."
  scene.wait 30

  # The player accepts
  scene.message "\\b\\PN\\b: ...yes."

  scene.message "\\bLyra\\b: *horrified* No — \\PN — what are you DOING —"
  scene.message "\\bKael\\b: *drawing on Yveltal* Step. Back. \\PN."
  scene.wait 30

  scene.camera_flash 100
  scene.message "\\i[The Crown turned in your hand. The colors inverted. Steel-blue became black, gold became void.]"
  scene.message "\\i[Lyra and Kael fought you. They fought *well.* They didn't win.]"
  scene.wait 30

  scene.message "\\b\\PN\\b: *quietly* I'm sorry."
  scene.message "\\b\\PN\\b: I'm building a better world. You'll see."
  scene.wait 45

  # The world is "saved" — there is no Hand, no cult, no rivals, no suffering.
  # There is also no choice. The new tyrant is gentle. The new tyrant is alone.
  scene.message "\\i[The Hand dissolves. The League dissolves. The gyms become libraries.]"
  scene.message "\\i[Every illness is cured. Every famine ends. Every war stops.]"
  scene.message "\\i[Nobody loves you. Nobody is allowed to be afraid of you. Nobody is allowed to disagree.]"
  scene.message "\\i[You sit alone on the throne for a very long time.]"
  scene.message "\\i[Zacian stopped speaking the day you took the offer. It has not spoken since.]"

  # No music for the credits — that's the silence the audit specified.
  scene.message "\\ts[]THE BAD END"
  scene.message "\\ts[](For a New Game+ run, the player carries forward awareness — a Pure-Light reroll unlocks a hidden 'Mercy from the Throne' ending.)"

  scene.script {
    # Mark this run as the bad ending so NG+ can detect it
    $PokemonGlobal.sc_bad_ending_seen = true if $PokemonGlobal.respond_to?(:sc_bad_ending_seen=)
  }
end


#===============================================================================
# Shared credit roll — every ending closes here for consistent presentation
#===============================================================================
GameData::Cutscene.define :ch_credits_universal do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.fade_out 90
  scene.wait 60

  scene.message "\\ts[]Pokémon Shattered Crowns"
  scene.message "\\ts[]Thank you for playing."

  # Hook for credits scroll asset if you have one
  # scene.script { pbCreditsScroll if defined?(pbCreditsScroll) }
end


#===============================================================================
# Save data hook for tracking which endings have been seen (NG+ unlocks)
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_endings_seen
  attr_accessor :sc_bad_ending_seen
end

SaveData.register(:sc_endings_seen) do
  ensure_class :Array
  save_value { $PokemonGlobal.sc_endings_seen ||= [] }
  load_value { |value| $PokemonGlobal.sc_endings_seen = value }
  new_game_value { [] }
end

# Mark the chosen ending when the dispatcher fires
EventHandlers.add(:on_sc_chapter_completed, :sc_record_ending,
  proc { |chapter_id|
    next unless chapter_id == :ch34
    next unless defined?(MoralityManager)
    tier = MoralityManager.data.current_tier rescue :NEUTRAL
    $PokemonGlobal.sc_endings_seen ||= []
    $PokemonGlobal.sc_endings_seen << tier unless $PokemonGlobal.sc_endings_seen.include?(tier)
  }
)
