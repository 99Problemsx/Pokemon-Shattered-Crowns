#===============================================================================
# Map Events — The Three Temples (Ch39 Stars, Ch40 Tides, Ch41 Shadows)
#===============================================================================
# All three Crown-fragment temples on one map for compactness. Stars
# (player's trial), Tides (Lyra's trial), Shadows (Kael's trial — with
# the v2 Vera reveal that Kael is the last Cycles-line descendant).
# Plus v3 audit ch41_5 Elena's letters discovered.
#===============================================================================

MapEvents.define(45) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Temple of Stars (Ch39 — player's trial)
  #-----------------------------------------------------------------------------
  m.event 1, "Temple of Stars" do |e|
    e.position 4, 5
    e.graphic "Object temple", direction: :down
    e.trigger :action

    e.page :trial do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch39_intro, event_id: 1
      p.cutscene :ch39_climbing
      p.cutscene :ch39_temple_found
      p.cutscene :ch39_entrance
      p.cutscene :astoria_keeper_sela_intro    # v2 audit Sela
      p.cutscene :ch39_interior
      p.cutscene :ch39_guardian_appears
      p.cutscene :ch39_trial_begins
      p.cutscene :ch39_trial_vision
      p.cutscene :ch39_overcoming
      p.cutscene :ch39_trial_complete
      p.cutscene :ch39_leaving
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch39_done, true
    end

    e.page :done do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('The Stars are quiet now. The fragment is yours.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Temple of Tides (Ch40 — Lyra's trial)
  #-----------------------------------------------------------------------------
  m.event 2, "Temple of Tides" do |e|
    e.position 8, 5
    e.graphic "Object temple", direction: :down
    e.trigger :action

    e.page :trial do |p|
      p.condition_switch :ch39_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch40_intro, event_id: 2
      p.cutscene :ch40_approach
      p.cutscene :ch40_descent
      p.cutscene :astoria_keeper_orin_intro    # v2 audit Orin
      p.cutscene :ch40_temple_interior
      p.cutscene :ch40_guardian_appears
      p.cutscene :ch40_trial_begins
      p.cutscene :ch40_lyra_trial
      p.cutscene :ch40_trial_complete
      p.cutscene :ch40_surface
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch40_done, true
    end

    e.page :locked do |p|
      p.condition_switch :ch39_done, false
      p.script "pbMessage('The Tides do not stir yet. The Stars must answer first.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Temple of Shadows (Ch41 — Kael's trial + Vera reveal)
  #-----------------------------------------------------------------------------
  m.event 3, "Temple of Shadows" do |e|
    e.position 12, 5
    e.graphic "Object temple", direction: :down
    e.trigger :action

    e.page :trial do |p|
      p.condition_switch :ch40_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch41_intro, event_id: 3
      p.cutscene :ch41_kael_tense
      p.cutscene :ch41_temple_found
      p.cutscene :ch41_entering
      p.cutscene :astoria_keeper_vera_reveal   # v2 audit — Vera reveal
      p.cutscene :ch41_guardian_appears
      p.cutscene :ch41_kael_trial
      p.cutscene :ch41_kael_acceptance
      p.cutscene :ch41_trial_complete
      p.cutscene :ch41_kael_moment
      # v3 audit Elena's letters
      p.cutscene :ch41_5_elena_message
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch41_done, true
    end

    e.page :locked do |p|
      p.condition_switch :ch40_done, false
      p.script "pbMessage('The Shadows wait their turn.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Astoria side-quest elders (optional)
  #-----------------------------------------------------------------------------
  m.event 4, "Elder Anya (sidequest)" do |e|
    e.position 6, 9
    e.graphic "NPC Anya", direction: :down
    e.trigger :action

    e.page :sidequests do |p|
      p.condition_switch :ch38_complete, true
      p.script "pbMessage('Anya: Three remembering-tasks, one for each of you. Pick yours when you have a quiet evening.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — To Crown Restoration (Ch42)
  #-----------------------------------------------------------------------------
  m.event 5, "To the Crown Chamber" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch41_done, true
      p.script "pbFadeOutIn { pbWarp(46, 5, 3) }"   # Map 46 = Ch42 Crown Restored
    end
  end
end
