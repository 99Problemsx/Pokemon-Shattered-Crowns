#===============================================================================
# Map Events — Xerneas Awakens (Ch22 — Lyra's Sacrifice chapter)
#===============================================================================
# Light explosion. Lyra's vision. Xerneas's trial. Power flows. Ragnar
# visits. Kael watches. Lyra collapses. Xerneas speaks. Growth shard.
# Kael carries Lyra. Station. Kael stays. Kael's confession. Lyra
# recovers. Recovery talk. Forest healed.
#===============================================================================

MapEvents.define(31) do |m|
  m.event 1, "Xerneas Trial" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :trial do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch22_light_explosion, event_id: 1
      p.cutscene :ch22_lyras_vision
      p.cutscene :ch22_xerneas_trial
      p.cutscene :ch22_power_flows
      p.cutscene :ch22_ragnar_visits
      p.cutscene :ch22_kael_watches
      p.cutscene :ch22_lyra_collapses
      p.cutscene :ch22_xerneas_speaks
      p.cutscene :ch22_growth_shard
      p.cutscene :ch22_kael_carries_lyra
      p.cutscene :ch22_at_the_station
      p.cutscene :ch22_kael_stays
      p.cutscene :ch22_kaels_confession
      p.cutscene :ch22_lyra_recovers
      p.cutscene :ch22_recovery_talk
      p.cutscene :ch22_forest_healed
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch22_complete, true
      # fate_lyra_sacrifice fires via :on_sc_chapter_completed
    end
  end

  m.event 2, "Civilian Defector (Telmer — v4 audit Ch22.5)" do |e|
    e.position 7, 8
    e.graphic "NPC Telmer", direction: :down
    e.trigger :action

    e.page :defect do |p|
      p.condition_switch :ch22_complete, true
      p.condition_self_switch 'A', false
      p.cutscene :ch22_5_civilian_defector, event_id: 2
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Telmer: I am working with Fern now. \\\\nThank you, Chosen.')"
    end
  end

  m.event 3, "Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch22_complete, true
      p.script "pbFadeOutIn { pbWarp(32, 5, 3) }"   # Map 32 = Ch23 Yveltal trial
    end
  end
end
