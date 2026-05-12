#===============================================================================
# POKÉMON SHATTERED CROWNS - NEW GAME+ & "MERCY FROM THE THRONE"
#===============================================================================
# Builds on the ending tracking in Alternative_Endings.rb. Once a save has
# at least one completed ending, the title screen exposes an NG+ option
# that carries over codex/achievements/some items into a fresh run, and
# unlocks NG+-only dialogue when meeting key characters.
#
# Also implements the hidden sixth ending — "Mercy from the Throne" —
# which only fires if:
#   1. Previous save flagged sc_bad_ending_seen (Pure Dark cleared)
#   2. Current NG+ run reaches the same Ch34 decision point
#   3. Player chooses to refuse Nidhoggr's offer this time
#
# All state lives in $PokemonGlobal so save/load survives.
#===============================================================================


module SCNGPlus
  # Save-bridging keys that survive across NG+
  CARRY_OVER_KEYS = [
    :sc_endings_seen,
    :sc_bad_ending_seen,
    :sc_achievements,
    :sc_achievement_progress,
    :sc_marcus_solo_beaten,
    :sc_marcus_aurora_beaten,
    :sc_marcus_prime_beaten,
    :sc_ngplus_runs,
  ].freeze

  # Items granted at NG+ start as a "you've been here before" handshake
  STARTING_NGPLUS_ITEMS = [
    [:MASTERBALL,    1],
    [:RARECANDY,     5],
    [:LUCKYEGG,      1],
    [:EXPCHARM,      1],
  ].freeze

  def self.eligible?
    return false unless $PokemonGlobal
    seen = $PokemonGlobal.sc_endings_seen
    seen.is_a?(Array) && !seen.empty?
  end

  def self.run_count
    $PokemonGlobal&.sc_ngplus_runs || 0
  end

  def self.active?
    run_count > 0
  end

  # Returns the array of tiers seen in any previous run.
  def self.endings_seen
    $PokemonGlobal&.sc_endings_seen || []
  end

  def self.bad_ending_seen?
    $PokemonGlobal&.sc_bad_ending_seen == true
  end

  # Called from the title-screen NG+ entry point
  def self.start
    return false unless eligible?

    # Snapshot data we want to carry over
    snapshot = {}
    CARRY_OVER_KEYS.each do |k|
      next unless $PokemonGlobal.respond_to?(k)
      snapshot[k] = $PokemonGlobal.send(k)
    end

    # Hand off — Essentials handles new-game flow elsewhere; this is just
    # the data-side preparation. Title-screen wiring restores `snapshot`
    # into the freshly-created $PokemonGlobal in :on_start_new_game.
    $sc_ngplus_snapshot = snapshot
    true
  end
end


#-------------------------------------------------------------------------------
# When a new game starts and we have a snapshot, transplant the survivors
# and increment the NG+ counter.
#-------------------------------------------------------------------------------
EventHandlers.add(:on_start_new_game, :sc_ngplus_restore,
  proc {
    next unless $sc_ngplus_snapshot.is_a?(Hash) && !$sc_ngplus_snapshot.empty?
    snap = $sc_ngplus_snapshot

    SCNGPlus::CARRY_OVER_KEYS.each do |k|
      next unless snap.key?(k)
      setter = "#{k}=".to_sym
      $PokemonGlobal.send(setter, snap[k]) if $PokemonGlobal.respond_to?(setter)
    end

    $PokemonGlobal.sc_ngplus_runs = (snap[:sc_ngplus_runs] || 0) + 1

    # Give starter items so the player isn't grinding the early game by hand
    SCNGPlus::STARTING_NGPLUS_ITEMS.each do |item, qty|
      pbReceiveItem(item, qty) rescue nil
    end

    # Welcome cutscene defer — let the regular intro play first, then
    # surface a quiet acknowledgement on first overworld load.
    $game_temp.sc_ngplus_welcome_pending = true if defined?($game_temp)

    $sc_ngplus_snapshot = nil
  }
)


#-------------------------------------------------------------------------------
# NG+ welcome cutscene — plays once on the first overworld step after intro
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ngplus_welcome do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.camera_tint :sepia, 30

  scene.message "\\i[The morning sun lit Dawnhaven the way it always had.]"
  scene.message "\\i[You knew this room. You knew this house. You knew the road. \\\\nIt knew you back.]"
  scene.wait 30

  scene.script {
    runs = SCNGPlus.run_count
    if SCNGPlus.bad_ending_seen?
      pbMessage("\\b\\PN\\b: *small voice* ...not this time.")
      pbMessage("\\b\\PN\\b: *no one in particular* I'm going to do this differently.")
    elsif runs >= 3
      pbMessage("\\b\\PN\\b: ...third time. Some things are starting to feel like prayers.")
    else
      pbMessage("\\b\\PN\\b: ...okay. Round #{runs + 1}. Let's see what we missed.")
    end
  }

  scene.camera_tint :reset, 30

  # Unlock the codex entries already discovered in prior runs
  scene.script {
    if $PokemonGlobal.respond_to?(:codex_discovered_keys)
      # Carried over via CARRY_OVER_KEYS pattern if extended; otherwise
      # players can still re-discover entries naturally.
    end
  }
end


#===============================================================================
# Mercy from the Throne — hidden sixth ending
#-------------------------------------------------------------------------------
# Only available if:
#   - $PokemonGlobal.sc_bad_ending_seen == true (Pure Dark cleared before)
#   - This run reaches Ch34's Nidhoggr offer
#   - Player picks "Refuse — I remember what this costs."
#
# Dispatcher: substitute :ch34_ending_dispatch_with_mercy for the default
# :ch34_ending_dispatch when SCNGPlus.bad_ending_seen? is true. The new
# dispatcher adds a Mercy branch BEFORE the regular morality routing.
#===============================================================================
GameData::Cutscene.define :ch34_ending_dispatch_with_mercy do |scene|
  scene.script {
    if SCNGPlus.bad_ending_seen?
      # Surface the special choice. Mercy is only available because the
      # player *remembers* the cost from a previous timeline.
      choices = [
        "I refuse. I remember what this costs.",
        "Continue normally."
      ]
      pick = pbShowCommands(nil, choices, -1)

      if pick == 0
        GameData::Cutscene.play(:ending_mercy_from_throne)
        next
      end
    end

    # Fall through to the normal dispatcher
    GameData::Cutscene.play(:ch34_ending_dispatch)
  }
end

GameData::Cutscene.define :ending_mercy_from_throne do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.camera_tint :reset, 30

  scene.message "\\bNidhoggr\\b: ...you know what I am offering."
  scene.message "\\bNidhoggr\\b: You have *taken* the offer before. I see it on you."
  scene.wait 30

  scene.message "\\b\\PN\\b: I know what you are offering."
  scene.message "\\b\\PN\\b: I took it last time. \\\\nI saw what it made me."
  scene.message "\\b\\PN\\b: I will not be that again."
  scene.wait 30

  scene.message "\\bNidhoggr\\b: ...curious. The Chosen of Valor with second-life memory."
  scene.message "\\bNidhoggr\\b: ...you remember the throne. The silence. The sitting alone."
  scene.message "\\bNidhoggr\\b: ...you remember Lyra and Kael fighting you, and losing, and your apology to them after."
  scene.wait 45

  scene.message "\\b\\PN\\b: I remember them losing because I wasn't strong enough to refuse you."
  scene.message "\\b\\PN\\b: I am strong enough this time."
  scene.message "\\b\\PN\\b: That is the only difference. \\\\nIt is enough of a difference."
  scene.wait 45

  scene.message "\\bNidhoggr\\b: ...then we are at impasse."
  scene.message "\\bNidhoggr\\b: ...seal me, Chosen. \\\\nDo it cleanly. This is the last offer I am permitted to make."
  scene.wait 30

  # The seal completes the way it should have the first time
  scene.script {
    sc_guardian_say(:ZACIAN,  "Steady.")
    sc_guardian_say(:XERNEAS, "We are with you.")
    sc_guardian_say(:YVELTAL, "Now.")
  }

  scene.camera_flash 80
  scene.wait 60

  scene.message "\\i[The seal closed. Cleanly. Permanently.]"
  scene.message "\\i[Lyra was there. Kael was there. Neither of them was ever fighting you, this time.]"
  scene.wait 30

  scene.message "\\bLyra\\b: ...you went somewhere just now. *Where did you go?*"
  scene.message "\\b\\PN\\b: *quiet* Somewhere I'm never going again. \\\\nLet's go home."
  scene.wait 30

  scene.message "\\i[Hoopa, who had returned in the previous timeline, was not yet free in this one.]"
  scene.message "\\i[Arceus arrived. Hoopa was freed. The world was saved.]"
  scene.message "\\i[The world was *also* slightly different in ways nobody could quite name. \\\\nLyra commented, late at night, that she felt like she had already had this victory before. \\\\nKael said: 'Maybe we did.']"

  scene.script {
    $PokemonGlobal.sc_endings_seen ||= []
    $PokemonGlobal.sc_endings_seen << :MERCY unless $PokemonGlobal.sc_endings_seen.include?(:MERCY)
    pbAchievement(:ach_ending_mercy) if defined?(pbAchievement)
    scFateGrant(:fate_mercy_ending, 3, "Refused the throne") if defined?(scFateGrant)
  }

  scene.script { GameData::Cutscene.play(:ch_credits_universal) }
end


#===============================================================================
# Save hooks
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_ngplus_runs
end

SaveData.register(:sc_ngplus_runs) do
  ensure_class :Integer
  save_value { $PokemonGlobal.sc_ngplus_runs || 0 }
  load_value { |v| $PokemonGlobal.sc_ngplus_runs = v }
  new_game_value { 0 }
end


#-------------------------------------------------------------------------------
# Title-screen wire-up
#-------------------------------------------------------------------------------
# To wire this into the actual title screen, add an extra menu entry in
# Essentials' title-screen scene that calls SCNGPlus.start before starting
# a new game. Example patch (apply in your title-screen plugin or main
# scene script — kept out of this file because it depends on which title
# system you use):
#
#   if SCNGPlus.eligible?
#     # Insert "New Game+" as a menu option above the regular "New Game"
#     # When selected:
#     #   SCNGPlus.start
#     #   then proceed to normal "New Game" flow
#   end
#
# The on_start_new_game handler above will restore the carried-over state
# automatically once the new game is created.
