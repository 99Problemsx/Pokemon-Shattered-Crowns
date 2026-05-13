#===============================================================================
# Map Events — Ironvale Library Interior (Ch5)
#===============================================================================
# Kael's research, ancient text, librarian's warning, the revelation
# moment, Lyra's letter from home + Mom's heirloom mention, and the
# prophetic dream.
#===============================================================================

MapEvents.define(14) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Kael at the research table (autorun for research scene)
  #-----------------------------------------------------------------------------
  m.event 1, "Kael Research" do |e|
    e.position 6, 5
    e.graphic "NPC Kael", direction: :down
    e.trigger :autorun

    e.page :research do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch5_library_research, event_id: 1
      p.cutscene :ch5_ancient_text
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Kael: Three names. Three Guardians. We are not the first.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Librarian (warning)
  #-----------------------------------------------------------------------------
  m.event 2, "Librarian" do |e|
    e.position 10, 5
    e.graphic "NPC 09", direction: :down
    e.trigger :action

    e.page :warning do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch5_librarian_warning, event_id: 2
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Librarian: Some books should stay closed, child.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Kael's revelation moment (autorun after research)
  #-----------------------------------------------------------------------------
  m.event 3, "Kael Revelation" do |e|
    e.position 6, 8
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :revelation do |p|
      p.condition_self_switch 'A', false
      p.condition_switch :ch5_library_done, false
      p.through true
      p.script <<~RUBY.strip
        if $game_self_switches[[14, 1, 'A']]
          pbCutscene(:ch5_kael_revelation, event_id: 3)
          pbCutscene(:ch5_lyra_letter)
          pbCutscene(:ch5_lyra_heirloom)
          pbCutscene(:ch5_prophetic_dream)
          $game_self_switches[[14, 3, 'A']] = true
          $game_switches[:ch5_library_done] = true
        end
      RUBY
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Library exit
  #-----------------------------------------------------------------------------
  m.event 4, "Library Exit" do |e|
    e.position 5, 12
    e.graphic "Object door", direction: :down
    e.trigger :player_touch

    e.page :default do |p|
      p.script "pbFadeOutIn { pbWarp(13, 8, 7) }"   # Map 13 = Ironvale exterior
    end
  end
end
