#===============================================================================
# Map Events — Trail (Ch15 — The Trail Goes Cold + v4 Aurora call)
#===============================================================================
# Leaving farm. Cult trail. Strategic planning. Library research. Travelers.
# Training break. Ragnar five badges. Fourth gym. Night camp. Zacian speaks.
# Approaching caves. Plus v4 audit Ch15.5 Aurora-call + Ch15.7 Eagle's Watch.
#===============================================================================

MapEvents.define(24) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Leaving farm + cult trail
  #-----------------------------------------------------------------------------
  m.event 1, "Leaving Farm" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :leaving do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch15_leaving_farm, event_id: 1
      p.cutscene :ch15_cult_trail
      p.cutscene :ch15_strategic_planning
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Library + travellers
  #-----------------------------------------------------------------------------
  m.event 2, "Library Stop" do |e|
    e.position 7, 6
    e.graphic "Object book", direction: :down
    e.trigger :action

    e.page :read do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch15_library_research, event_id: 2
      p.cutscene :ch15_encounter_travelers
      p.cutscene :ch15_training_break
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Aurora phone call (v4 audit Ch15.5)
  #-----------------------------------------------------------------------------
  m.event 3, "Aurora Call (Phone)" do |e|
    e.position 5, 8
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :phone do |p|
      p.condition_self_switch 'A', false
      p.condition_switch :ch14_complete, true
      p.through true
      p.cutscene :ch15_5_aurora_call, event_id: 3
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Ragnar five badges
  #-----------------------------------------------------------------------------
  m.event 4, "Ragnar Five" do |e|
    e.position 9, 9
    e.graphic "NPC Ragnar", direction: :left
    e.trigger :action

    e.page :appears do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch15_ragnar_five_badges, event_id: 4
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Ragnar: Five badges! I\\'m winning, \\PN!')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Eagle's Watch first sighting (v4 audit Ch15.7)
  #-----------------------------------------------------------------------------
  m.event 5, "Eagle's Watch" do |e|
    e.position 10, 10
    e.graphic "NPC Operative", direction: :down
    e.trigger :player_touch

    e.page :ambush do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch15_7_eagles_watch_first_sighting, event_id: 5
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — Fourth gym + night camp + Zacian speaks
  #-----------------------------------------------------------------------------
  m.event 6, "Fourth Gym" do |e|
    e.position 8, 12
    e.graphic "NPC Sören", direction: :down
    e.trigger :action

    e.page :gym do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch15_fourth_gym, event_id: 6
      p.cutscene :ch15_gym4_battle
      p.trainer_battle :LEADER_M, "Sören", 0
      p.cutscene :ch15_gym4_victory
      p.cutscene :ch15_night_camp
      p.cutscene :ch15_zacian_speaks
      p.cutscene :ch15_morning_resolve
      p.cutscene :ch15_approaching_caves
      p.cutscene :ch15_mystery_deepens
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch15_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 7 — Liberation Op 2 caller (Frostfall slaughterhouse — heavy beat)
  #-----------------------------------------------------------------------------
  m.event 7, "Liberation Op 2" do |e|
    e.position 11, 11
    e.graphic "NPC Fern", direction: :down
    e.trigger :action

    e.page :offer do |p|
      p.condition_switch :ch15_complete, true
      p.condition_switch :sc_verdantia_allied, true
      p.condition_self_switch 'A', false
      p.cutscene :liberation_op_2_intro
      p.cutscene :liberation_op_2_raid
      p.cutscene :liberation_op_2_burial
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 8 — South exit (to Ch16 caves)
  #-----------------------------------------------------------------------------
  m.event 8, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch15_complete, true
      p.script "pbFadeOutIn { pbWarp(25, 5, 3) }"   # Map 25 = Ch16 caves
    end
  end
end
