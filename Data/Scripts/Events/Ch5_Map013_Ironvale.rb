#===============================================================================
# Map Events — Ironvale Town (Ch5 — Library, Kael's research)
#===============================================================================
# Travel to Ironvale, library research, ancient text reveal, Kael's
# revelation, Lyra letter + heirloom moment, prophetic dream, Ragnar's
# concern, earthquake, mysterious observer.
#===============================================================================

MapEvents.define(13) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Ironvale arrival
  #-----------------------------------------------------------------------------
  m.event 1, "Ironvale Arrival" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first_entry do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch5_travel_to_ironvale, event_id: 1
      p.cutscene :ch5_ironvale_arrival
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Library exterior cutscene
  #-----------------------------------------------------------------------------
  m.event 2, "Library Exterior" do |e|
    e.position 8, 5
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :first_visit do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch5_library_exterior, event_id: 2
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Library entrance (to interior)
  #-----------------------------------------------------------------------------
  m.event 3, "Library Door" do |e|
    e.position 8, 6
    e.graphic "Object door", direction: :up
    e.trigger :player_touch

    e.page :open do |p|
      p.script "pbFadeOutIn { pbWarp(14, 5, 9) }"   # Map 14 = Ironvale Library
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Ragnar (concerned, post-library)
  #-----------------------------------------------------------------------------
  m.event 4, "Ragnar Concerned" do |e|
    e.position 11, 7
    e.graphic "NPC Ragnar", direction: :down
    e.trigger :action

    e.page :concern do |p|
      p.condition_switch :ch5_library_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch5_ragnar_concern, event_id: 4
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Ragnar: ...stay safe out there.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Trio discussion (autorun after Ragnar)
  #-----------------------------------------------------------------------------
  m.event 5, "Trio Discussion" do |e|
    e.position 5, 10
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :discussion do |p|
      # Fire after Ragnar event (event 4 SS A) and library done
      p.condition_self_switch 'A', false
      p.through true
      p.script <<~RUBY.strip
        if $game_self_switches[[13, 4, 'A']] && $game_switches[:ch5_library_done]
          pbCutscene(:ch5_trio_discussion, event_id: 5)
          pbCutscene(:ch5_earthquake)
          pbCutscene(:ch5_mysterious_observer)
          pbCutscene(:ch5_leaving_ironvale)
          $game_self_switches[[13, 5, 'A']] = true
          $game_switches[:ch5_complete] = true
        end
      RUBY
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — South exit (to Ch6 city)
  #-----------------------------------------------------------------------------
  m.event 6, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :ch5_complete, false
      p.script "pbMessage('Lyra: We should finish in the library first.')"
    end

    e.page :open do |p|
      p.condition_switch :ch5_complete, true
      p.script "pbFadeOutIn { pbWarp(15, 5, 3) }"   # Map 15 = Ch6 Rumors City
    end
  end
end
