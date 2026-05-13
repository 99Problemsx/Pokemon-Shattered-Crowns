#===============================================================================
# Map Events — Journey to the Professor (Ch9 — Seeking Answers)
#===============================================================================
# Road south. Campfire confessions. Ragnar splits off. Arrival at the
# lab. Mark examination + Guardian research + history lesson + Summit
# Temple direction + Aldric's gift. Departure with gym 3 prep + Zacian's
# first vision. Plus v3 audit Ch9.5 timeline anchor.
#===============================================================================

MapEvents.define(18) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Journey to lab (autorun on entry)
  #-----------------------------------------------------------------------------
  m.event 1, "Journey" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first_entry do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch9_journey_to_professor, event_id: 1
      p.cutscene :ch9_campfire_confessions
      p.cutscene :ch9_ragnar_splits
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Aldric's Lab door
  #-----------------------------------------------------------------------------
  m.event 2, "Lab Door" do |e|
    e.position 10, 5
    e.graphic "Object door", direction: :up
    e.trigger :player_touch

    e.page :enter do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch9_lab_arrival, event_id: 2
      p.cutscene :ch9_mark_examination
      p.cutscene :ch9_guardian_research
      p.cutscene :ch9_history_lesson
      p.cutscene :ch9_summit_temple_direction
      p.cutscene :ch9_aldric_gift
      p.cutscene :ch9_5_timeline_anchor          # v4 audit
      p.cutscene :ch9_departure
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch9_lab_visited, true
    end

    e.page :revisit do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Aldric: The Summit Temple. South-east, three days hard travel.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Gym 3 prep + Zacian's first vision (autorun mid-journey)
  #-----------------------------------------------------------------------------
  m.event 3, "Pre-Gym 3" do |e|
    e.position 8, 11
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :prep do |p|
      p.condition_switch :ch9_lab_visited, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch9_gym3_prep, event_id: 3
      p.cutscene :ch9_pre_battle_tension
      p.cutscene :ch9_gym3_victory
      p.cutscene :ch9_night_before_mountain
      p.cutscene :ch9_zacian_first_vision
      p.cutscene :ch9_morning_departure
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch9_complete, true
      # Achievement unlock
      p.script "pbAchievement(:ach_third_guardian) rescue nil"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Liberation Op 1 invitation (optional, post-Ch9)
  #-----------------------------------------------------------------------------
  m.event 4, "Liberation Op 1 Caller" do |e|
    e.position 6, 7
    e.graphic "NPC Fern", direction: :down
    e.trigger :action

    e.page :offer do |p|
      p.condition_switch :ch9_complete, true
      p.condition_switch :sc_verdantia_allied, true
      p.condition_self_switch 'A', false
      p.cutscene :liberation_op_1_intro
      p.cutscene :liberation_op_1_raid
      p.cutscene :liberation_op_1_reunion
      p.command :set_self_switch, 'A', true
    end

    e.page :no_alliance do |p|
      p.condition_switch :sc_verdantia_allied, false
      p.script "pbMessage('Fern: ...nothing for you today, traveller.')"
    end

    e.page :done do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Fern: Three families. Thank you, \\PN.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — South exit (to Ch10 mountain path)
  #-----------------------------------------------------------------------------
  m.event 5, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :ch9_complete, false
      p.script "pbMessage('Lyra: One more thing before the mountain.')"
    end

    e.page :open do |p|
      p.condition_switch :ch9_complete, true
      p.script "pbFadeOutIn { pbWarp(19, 5, 3) }"   # Map 19 = Ch10 mountain
    end
  end
end
