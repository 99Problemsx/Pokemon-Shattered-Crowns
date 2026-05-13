#===============================================================================
# Map Events — Shadowfen (Ch2 — meeting Kael)
#===============================================================================
# Player + Lyra arrive at Shadowfen. They explore the library, meet
# Kael, fight together for the first time. The trio is formed at the
# end of this map.
#===============================================================================

MapEvents.define(7) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Shadowfen arrival trigger (autorun)
  #-----------------------------------------------------------------------------
  m.event 1, "Shadowfen Arrival" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first_entry do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch2_shadowfen_arrival, event_id: 1
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Kael in the library doorway
  #-----------------------------------------------------------------------------
  m.event 2, "Kael" do |e|
    e.position 8, 6
    e.graphic "NPC Kael", direction: :down
    e.trigger :action

    # First meeting
    e.page :first_meet do |p|
      p.condition_self_switch 'A', false
      p.trigger :autorun
      p.cutscene :ch2_meet_kael, event_id: 2
      p.cutscene :ch2_kael_introduction
      p.cutscene :ch2_kael_backstory
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch2_met_kael, true
    end

    # After meeting — library exploration prompt
    e.page :after_meet do |p|
      p.condition_self_switch 'A', true
      p.condition_switch :ch2_library_done, false
      p.script "pbMessage('Kael: There\\'s a book in the library you should see.')"
    end

    # After library — invitation to fight
    e.page :library_done do |p|
      p.condition_switch :ch2_library_done, true
      p.condition_switch :ch2_trio_formed, false
      p.script "pbMessage('Kael: Fine. \\\\nOne fight. \\\\nThen we travel together.')"
    end

    # Trio formed
    e.page :trio do |p|
      p.condition_switch :ch2_trio_formed, true
      p.script "pbMessage('Kael: Wherever \\PN goes, I go.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Library door (transfers to Shadowfen Library interior)
  #-----------------------------------------------------------------------------
  m.event 3, "Library Door" do |e|
    e.position 8, 7
    e.graphic "Object door", direction: :up
    e.trigger :player_touch

    e.page :default do |p|
      p.condition_switch :ch2_met_kael, true
      p.script "pbFadeOutIn { pbWarp(8, 5, 9) }"   # Map 8 = Library interior
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — First Battle Together trigger (autorun after library)
  #-----------------------------------------------------------------------------
  m.event 4, "First Battle Together" do |e|
    e.position 5, 10
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first_battle do |p|
      p.condition_switch :ch2_library_done, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch2_first_battle_together, event_id: 4
      p.cutscene :ch2_trio_formed
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch2_trio_formed, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — South exit to Thornwood (Ch3 Festival)
  #-----------------------------------------------------------------------------
  m.event 5, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :ch2_trio_formed, false
      p.script "pbMessage('Better stay with Lyra and Kael for now.')"
    end

    e.page :open do |p|
      p.condition_switch :ch2_trio_formed, true
      p.script "pbFadeOutIn { pbWarp(9, 5, 3) }"   # Map 9 = Thornwood
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — Lyra companion (follows player from now on, visually)
  #-----------------------------------------------------------------------------
  m.event 6, "Lyra Companion" do |e|
    e.position 4, 3
    e.graphic "NPC Lyra", direction: :down
    e.trigger :action

    e.page :greet do |p|
      p.condition_switch :ch2_met_lyra, true
      p.script "pbMessage('Lyra: Quiet place, isn\\'t it. \\\\nKael fits, somehow.')"
    end
  end
end
