#===============================================================================
# Map Events — Yveltal's Trial (Ch23 — Champion of Balance)
#===============================================================================
# Lyra awakes. Recovery days. Elena farewell. Path to Yveltal. Mountain
# ascent. Ragnar message. Yveltal appears. Yveltal trial (love question
# + Mira vision + advice). Trial complete. Third shard. Friends reunite.
# Eighth gym approach + battle.
#===============================================================================

MapEvents.define(32) do |m|
  m.event 1, "Yveltal Trial" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :trial do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch23_lyra_awakes, event_id: 1
      p.cutscene :ch23_recovery_days
      p.cutscene :ch23_elena_farewell
      p.cutscene :ch23_path_to_yveltal
      p.cutscene :ch23_mountain_ascent
      p.cutscene :ch24_ragnar_message
      p.cutscene :ch23_yveltal_appears
      p.cutscene :ch23_yveltal_trial
      p.cutscene :ch23_love_question
      p.cutscene :ch23_mira_vision
      p.cutscene :ch23_mira_advice
      p.cutscene :ch23_trial_complete
      p.cutscene :ch23_third_shard
      p.cutscene :ch23_friends_reunite
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch23_yveltal_trial_done, true
    end
  end

  m.event 2, "Eighth Gym (Vala)" do |e|
    e.position 8, 8
    e.graphic "NPC Vala", direction: :down
    e.trigger :action

    e.page :gym do |p|
      p.condition_switch :ch23_yveltal_trial_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch23_eighth_gym_approach, event_id: 2
      p.cutscene :ch23_eighth_gym
      p.trainer_battle :GYMLEADER, "Vala", 0
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch23_complete, true
      # Full circuit achievement
      p.script "pbAchievement(:ach_full_circuit) rescue nil"
    end
  end

  m.event 3, "Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch23_complete, true
      p.script "pbFadeOutIn { pbWarp(33, 5, 3) }"   # Map 33 = Ch24 Aldric dies
    end
  end
end
