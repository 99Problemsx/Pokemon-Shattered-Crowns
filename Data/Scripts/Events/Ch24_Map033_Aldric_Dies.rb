#===============================================================================
# Map Events — Aldric's Death (Ch24 — The Greatest Loss)
#===============================================================================
# Urgent message. Racing back. Lab destroyed. Finding professor. Final
# message. Grief. Player's rage. Leaving lab. Dad arrives. Funeral
# (with v2 audit ch24_aurora_arrives). New resolve. Hidden research.
# Plus full Ch24.5 Aldric Notebooks side-arc.
#===============================================================================

MapEvents.define(33) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Urgent message + racing back (autorun)
  #-----------------------------------------------------------------------------
  m.event 1, "Urgent Message" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :urgent do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch24_urgent_message, event_id: 1
      p.cutscene :ch24_racing_back
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Lab destroyed + finding professor
  #-----------------------------------------------------------------------------
  m.event 2, "Lab Ruins" do |e|
    e.position 7, 7
    e.graphic "Object debris", direction: :down
    e.trigger :action

    e.page :find do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch24_lab_destroyed, event_id: 2
      p.cutscene :ch24_finding_professor
      p.cutscene :ch24_professors_words
      p.cutscene :ch24_final_message
      p.cutscene :ch24_elm_death
      p.cutscene :ch24_grief
      p.cutscene :ch24_players_rage
      p.cutscene :ch24_leaving_lab
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch24_aldric_dead, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Funeral (Dad + v2 Aurora arrival)
  #-----------------------------------------------------------------------------
  m.event 3, "Funeral" do |e|
    e.position 5, 10
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :funeral do |p|
      p.condition_switch :ch24_aldric_dead, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch24_dad_arrives, event_id: 3
      p.cutscene :ch24_aurora_arrives             # v2 audit
      p.cutscene :ch24_funeral
      p.cutscene :ch24_new_resolve
      p.cutscene :ch24_hidden_research
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch24_funeral_done, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Aldric Notebooks side-arc (Ch24.5)
  #-----------------------------------------------------------------------------
  m.event 4, "Aurora's Study (Notebooks)" do |e|
    e.position 8, 10
    e.graphic "Object door", direction: :up
    e.trigger :action

    e.page :notebooks do |p|
      p.condition_switch :ch24_funeral_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch24_5_home_again
      p.cutscene :ch24_5_the_study
      p.cutscene :ch24_5_the_yveltal_warning
      p.cutscene :ch24_5_the_hidden_lab
      p.cutscene :ch24_5_the_letter
      p.cutscene :ch24_5_dad_downstairs
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch24_complete, true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Aurora: When you\\'re ready, the basement lab is yours to recover.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Liberation Op 4 (Stormwatch, Telmer's atonement)
  #-----------------------------------------------------------------------------
  m.event 5, "Liberation Op 4" do |e|
    e.position 11, 10
    e.graphic "NPC Fern", direction: :down
    e.trigger :action

    e.page :offer do |p|
      p.condition_switch :ch24_complete, true
      p.condition_switch :sc_verdantia_allied, true
      p.condition_self_switch 'A', false
      p.cutscene :liberation_op_4
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — South exit (to Ch25 Mira trial)
  #-----------------------------------------------------------------------------
  m.event 6, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch24_complete, true
      p.script "pbFadeOutIn { pbWarp(34, 5, 3) }"   # Map 34 = Ch25 Mortality Ruins
    end
  end
end
