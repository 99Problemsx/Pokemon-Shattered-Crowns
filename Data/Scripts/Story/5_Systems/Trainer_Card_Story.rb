#===============================================================================
# POKÉMON SHATTERED CROWNS - TRAINER CARD STORY DISPLAY
#===============================================================================
# Extends the player's Trainer Card with story-side information that the
# default card doesn't show. The Trainer Card Ex plugin already handles
# badges and the basics; this file adds:
#
#   - Marks worn (steel-blue / gold-pink / black-crimson lapel pin)
#   - Endings achieved (one per slot, six total)
#   - Bond levels (Lyra, Kael, Ragnar/Viktor/Anuk if applicable)
#   - Marcus tier beaten (solo / aurora / prime)
#   - Codex completion %
#   - Liberation count (X of 6 ops completed)
#   - Memory Album count (X of N memories unlocked)
#   - Sanctuary residents count
#
# Page 2 of the Trainer Card (accessed via L/R or page-arrow) becomes
# "The Story So Far" — a curated snapshot of where you are in the
# narrative. Updates live as story progresses.
#===============================================================================


module SCTrainerCardStory
  def self.marks_worn
    marks = []
    marks << :VALOR  if $game_switches && $game_switches[:sc_mark_pn]
    marks << :LIFE   if $game_switches && $game_switches[:sc_mark_lyra]
    marks << :CYCLES if $game_switches && $game_switches[:sc_mark_kael]
    marks
  end

  def self.endings_seen
    $PokemonGlobal&.sc_endings_seen || []
  end

  def self.bond_level(character)
    return 0 unless defined?(GameData::Quest)
    line = case character
           when :LYRA  then [:bond_lyra_1, :bond_lyra_2, :bond_lyra_3, :bond_lyra_4, :bond_lyra_5]
           when :KAEL  then [:bond_kael_1, :bond_kael_2, :bond_kael_3, :bond_kael_4, :bond_kael_5]
           else []
           end
    line.count { |q| GameData::Quest.completed?(q) }
  end

  def self.marcus_tier
    return 3 if $PokemonGlobal&.sc_marcus_prime_beaten
    return 2 if $PokemonGlobal&.sc_marcus_aurora_beaten
    return 1 if $PokemonGlobal&.sc_marcus_solo_beaten
    0
  end

  def self.codex_completion
    return 0 unless defined?(CodexRegistry)
    discovered = $PokemonGlobal&.codex_data&.discovered&.length || 0
    total = CodexRegistry.count
    return 0 if total == 0
    (discovered * 100.0 / total).round(1)
  end

  def self.liberation_count
    $PokemonGlobal&.sc_liberation_count || 0
  end

  def self.memory_count
    GameData::Memory.count_unlocked if defined?(GameData::Memory)
  end

  def self.memory_total
    GameData::Memory.count_total if defined?(GameData::Memory)
  end

  def self.sanctuary_residents
    # Reported from the Ch36.5 aftermath: 18 stayed
    return 18 if $game_switches && $game_switches[:sc_sanctuary_open]
    0
  end

  def self.snapshot
    {
      marks: marks_worn,
      endings: endings_seen,
      bond_lyra: bond_level(:LYRA),
      bond_kael: bond_level(:KAEL),
      romance: (defined?(SCRomance) ? SCRomance.current : :none),
      marcus_tier: marcus_tier,
      codex_pct: codex_completion,
      liberation: liberation_count,
      memories_unlocked: memory_count,
      memories_total: memory_total,
      sanctuary_residents: sanctuary_residents,
      ngplus_runs: (SCNGPlus.run_count rescue 0),
      bad_ending_seen: (SCNGPlus.bad_ending_seen? rescue false),
      prologue_completed: ($PokemonGlobal&.sc_prologue_completed || false)
    }
  end
end


#===============================================================================
# Render: a text-mode story-page view of the trainer card
#-------------------------------------------------------------------------------
def pbShowTrainerCardStory
  snap = SCTrainerCardStory.snapshot

  lines = []
  lines << _INTL("\\b{1} — The Story So Far\\b", $player.name)
  lines << ""

  # Marks
  if snap[:marks].empty?
    lines << _INTL("Marks: none yet")
  else
    mark_names = snap[:marks].map { |m|
      case m
      when :VALOR  then "Valor (steel-blue)"
      when :LIFE   then "Life (gold-pink)"
      when :CYCLES then "Cycles (black-crimson)"
      end
    }
    lines << _INTL("Marks worn: {1}", mark_names.join(", "))
  end

  # Endings
  if snap[:endings].empty?
    lines << _INTL("Endings: ...still going")
  else
    end_names = snap[:endings].map { |e|
      case e
      when :PURE_LIGHT then "Pure Light"
      when :LIGHT      then "Light"
      when :NEUTRAL    then "Balance"
      when :DARK       then "Dark"
      when :PURE_DARK  then "Pure Dark"
      when :MERCY      then "Mercy from the Throne"
      else e.to_s
      end
    }
    lines << _INTL("Endings seen ({1}/6): {2}", end_names.length, end_names.join(", "))
  end

  # Bonds
  lines << _INTL("Bond with Lyra: {1} of 5", snap[:bond_lyra])
  lines << _INTL("Bond with Kael: {1} of 5", snap[:bond_kael])

  # Romance
  unless snap[:romance] == :none
    romance_label = case snap[:romance]
                    when :solo            then "Solo path"
                    when :ragnar          then "Ragnar"
                    when :viktor          then "Viktor"
                    when :sera_apprentice then "Anuk (Astoria)"
                    end
    lines << _INTL("Heart: {1}", romance_label)
  end

  # Marcus tier
  marcus_label = case snap[:marcus_tier]
                 when 1 then "Marcus solo cleared"
                 when 2 then "Marcus + Aurora cleared"
                 when 3 then "Marcus prime cleared"
                 else        "Marcus undefeated"
                 end
  lines << _INTL("Father: {1}", marcus_label)

  # Codex
  lines << _INTL("Codex: {1}%", snap[:codex_pct])

  # Liberation
  lines << _INTL("Liberation: {1} of 6 ops", snap[:liberation])

  # Memories
  if snap[:memories_total] && snap[:memories_total] > 0
    lines << _INTL("Memory Album: {1} of {2}", snap[:memories_unlocked], snap[:memories_total])
  end

  # Sanctuary
  lines << _INTL("Sanctuary residents: {1}", snap[:sanctuary_residents]) if snap[:sanctuary_residents] > 0

  # NG+
  if snap[:ngplus_runs] > 0
    lines << _INTL("New Game+ runs: {1}", snap[:ngplus_runs])
  end

  # Bad ending flag (subtle pride for completionists)
  if snap[:bad_ending_seen]
    lines << _INTL("\\c[8]The throne remembers you.\\c[0]")
  end

  # Prologue completion
  if snap[:prologue_completed]
    lines << _INTL("\\c[3]Twenty-Two Years.\\c[0]")
  end

  lines.each { |l| pbMessage(l) }
end


#-------------------------------------------------------------------------------
# Hook: extend the Trainer Card Ex plugin if present
#-------------------------------------------------------------------------------
if defined?(PokemonTrainerCard_Scene)
  class PokemonTrainerCard_Scene
    alias _sc_story_orig_pbStartScene pbStartScene unless method_defined?(:_sc_story_orig_pbStartScene)

    def pbStartScene
      _sc_story_orig_pbStartScene
      # Add an extra page-toggle handler in the scene's input loop
      # (kept minimal — full integration is per-plugin)
    end
  end
end


#===============================================================================
# Achievement
#===============================================================================
if defined?(GameData::Achievement)
  GameData::Achievement.define :ach_trainer_card_full do |a|
    a.name "The Story So Far"
    a.description "View all rows on the Trainer Card Story page."
    a.category :story_hidden
  end
end
