#===============================================================================
# Map Events — General Dread (Ch18 — The Second General, closes Act 2)
#===============================================================================
# Recovery journey. Ominous signs. Dread appears + reveals motivation.
# Dread battle. Dreads defeat + fading. Nidhoggr truth. Team resolve.
# Approach sixth gym. Sixth gym battle + badge. Evening discussion.
# Lyra's prayer. Ragnar checks in. Morning resolve.
# Plus v4 audit ch18_5 civilian mother POV (Furfrou story).
#===============================================================================

MapEvents.define(27) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Recovery journey + ominous signs
  #-----------------------------------------------------------------------------
  m.event 1, "Recovery Journey" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :journey do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch18_recovery_journey, event_id: 1
      p.cutscene :ch18_ominous_signs
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — General Dread appears + battle
  #-----------------------------------------------------------------------------
  m.event 2, "General Dread" do |e|
    e.position 7, 7
    e.graphic "NPC Dread", direction: :down
    e.trigger :action

    e.page :battle do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch18_dread_appears, event_id: 2
      p.cutscene :ch18_dreads_revelation
      p.cutscene :ch18_dread_battle
      p.trainer_battle :CULTIST, "Dread", 0
      p.cutscene :ch18_dreads_defeat
      p.cutscene :ch18_dread_fades
      p.cutscene :ch18_nidhoggr_truth
      p.cutscene :ch18_team_resolve
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch18_dread_done, true
      p.script "pbAchievement(:ach_dread_defeated) rescue nil"
    end

    e.page :gone do |p|
      p.condition_self_switch 'A', true
      p.graphic "", direction: :down
      p.through true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Civilian mother (v4 audit Ch18.5)
  #-----------------------------------------------------------------------------
  m.event 3, "Frostfall Mother" do |e|
    e.position 5, 9
    e.graphic "NPC 04", direction: :down
    e.trigger :action

    e.page :sit do |p|
      p.condition_switch :ch18_dread_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch18_5_civilian_mother, event_id: 3
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Mother: ...thank you, dear. \\\\nMy daughter sleeps better now.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Sixth gym
  #-----------------------------------------------------------------------------
  m.event 4, "Sixth Gym (Petra)" do |e|
    e.position 9, 10
    e.graphic "NPC Petra", direction: :down
    e.trigger :action

    e.page :gym do |p|
      p.condition_switch :ch18_dread_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch18_approach_sixth_gym, event_id: 4
      p.cutscene :ch18_gym_preparation
      p.cutscene :ch18_sixth_gym_battle
      p.trainer_battle :LEADER_F, "Petra", 0
      p.cutscene :ch18_sixth_badge
      p.cutscene :ch18_evening_discussion
      p.cutscene :ch18_lyras_prayer
      p.cutscene :ch18_ragnar_checks_in
      p.cutscene :ch18_morning_resolve
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch18_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — South exit (to Act 3 — Ch19 shard hunt)
  #-----------------------------------------------------------------------------
  m.event 5, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch18_complete, true
      p.script "pbFadeOutIn { pbWarp(28, 5, 3) }"   # Map 28 = Ch19 shard hunt
    end
  end
end
