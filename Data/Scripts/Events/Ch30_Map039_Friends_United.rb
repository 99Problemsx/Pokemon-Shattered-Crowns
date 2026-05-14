#===============================================================================
# Map Events — Friends United (Ch30 — Preparing for the Final Battle)
#===============================================================================
# Rift approach. Gathering point. Shards combine. Guardians appear and
# bless. Power flows. Guardian warning. Ready statement. Elena arrives.
# Sisters farewell. Kael shadow moment. Player moment. Final farewell.
#===============================================================================

MapEvents.define(39) do |m|
  m.event 1, "Final Preparation" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :gather do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch30_rift_approach, event_id: 1
      p.cutscene :ch30_gathering_point
      p.cutscene :ch30_shards_combine
      p.cutscene :ch30_guardians_appear
      p.cutscene :ch30_guardian_blessing
      p.cutscene :ch30_power_flows
      p.cutscene :ch30_guardian_warning
      p.cutscene :ch30_ready_statement
      p.cutscene :ch30_elena_arrives
      p.cutscene :ch30_sisters_farewell
      p.cutscene :ch30_kael_shadow_moment
      p.cutscene :ch30_player_moment
      p.cutscene :ch30_final_farewell
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch30_complete, true
    end
  end

  m.event 2, "Step Into Asgaheim" do |e|
    e.position 12, 14
    e.graphic "Object portal", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch30_complete, true
      p.script "pbFadeOutIn { pbWarp(40, 5, 3) }"   # Map 40 = Asgaheim
    end
  end
end
