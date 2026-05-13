#===============================================================================
# Map Events — Cave of Cycles (Ch16 — Bonds Tested: Yveltal accepts Kael)
#===============================================================================
# Cave depths. Kael feels Yveltal. Cave encounter. Seal chamber. Yveltal
# communion. Kael accepts. Seal strengthened. Leaving caves. Marcus's
# Eagle's Watch operative Marcus returns (note: this Marcus is the
# operative, not the dad — see v4 audit). Road to fifth gym + evening
# planning + team moment.
#===============================================================================

MapEvents.define(25) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Cave depths
  #-----------------------------------------------------------------------------
  m.event 1, "Cave Depths" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :enter do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch16_cave_depths, event_id: 1
      p.cutscene :ch16_kael_feels_yveltal
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Cave encounter (wild battle)
  #-----------------------------------------------------------------------------
  m.event 2, "Cave Encounter" do |e|
    e.position 7, 7
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :wild do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch16_cave_encounter, event_id: 2
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Seal chamber + Yveltal communion
  #-----------------------------------------------------------------------------
  m.event 3, "Seal Chamber" do |e|
    e.position 10, 9
    e.graphic "Object altar", direction: :down
    e.trigger :action

    e.page :commune do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch16_seal_chamber, event_id: 3
      p.cutscene :ch16_yveltal_communion
      p.cutscene :ch16_kael_accepts
      p.cutscene :ch16_seal_strengthened
      p.cutscene :ch16_leaving_caves
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch16_yveltal_accepted, true
      p.script "pbAchievement(:ach_second_guardian) rescue nil"
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('The chamber is quiet. Yveltal has gone.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Eagle's Watch Operative (named Marcus — operative, not dad)
  #-----------------------------------------------------------------------------
  m.event 4, "Operative Marcus" do |e|
    e.position 8, 11
    e.graphic "NPC Operative", direction: :down
    e.trigger :action

    e.page :appears do |p|
      p.condition_switch :ch16_yveltal_accepted, true
      p.condition_self_switch 'A', false
      p.cutscene :ch16_marcus_returns, event_id: 4
      p.cutscene :ch16_marcus_warning
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Operative: Champion Marcus says: \\\\nfifth gym, then south. Stay clear of the western road.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Fifth gym + planning
  #-----------------------------------------------------------------------------
  m.event 5, "Fifth Gym (Inés)" do |e|
    e.position 10, 12
    e.graphic "NPC Ines", direction: :down
    e.trigger :action

    e.page :gym do |p|
      p.condition_switch :ch16_yveltal_accepted, true
      p.condition_self_switch 'A', false
      p.cutscene :ch16_road_to_fifth_gym, event_id: 5
      p.cutscene :ch16_fifth_gym
      p.trainer_battle :LEADER_F, "Inés", 0
      p.cutscene :ch16_evening_planning
      p.cutscene :ch16_team_moment
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch16_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — South exit (to Ch17)
  #-----------------------------------------------------------------------------
  m.event 6, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch16_complete, true
      p.script "pbFadeOutIn { pbWarp(26, 5, 3) }"   # Map 26 = Ch17 starter crisis
    end
  end
end
