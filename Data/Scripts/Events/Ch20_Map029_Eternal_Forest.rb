#===============================================================================
# Map Events — Eternal Forest Arrival (Ch20 — first signs of corruption)
#===============================================================================
# Forest entry. First signs. Forest beauty. Wildlife fleeing. Cult
# evidence. Kael scouts. Corruption spreads. Rest point. Sisters talk.
# Pokemon watch. Lyra vision. Morning departure. Approach World Tree.
# Cult patrol. Final approach.
# Plus v4 audit Ch20.5 Subject Zero lab + Liberation Op 3.
#===============================================================================

MapEvents.define(29) do |m|
  m.event 1, "Forest Entry" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :enter do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch20_forest_entry, event_id: 1
      p.cutscene :ch20_first_signs
      p.cutscene :ch20_forest_beauty
      p.cutscene :ch20_wildlife_fleeing
      p.cutscene :ch20_cult_evidence
      p.cutscene :ch20_kael_scouts
      p.cutscene :ch20_corruption_spreads
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 2, "Rest Point" do |e|
    e.position 8, 7
    e.graphic "Object campfire", direction: :down
    e.trigger :action

    e.page :rest do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch20_rest_point, event_id: 2
      p.cutscene :ch20_sisters_talk
      p.cutscene :ch20_pokemon_watch
      p.cutscene :ch20_lyra_vision
      p.cutscene :ch20_morning_departure
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch20_rest_done, true
    end
  end

  m.event 3, "Hidden Lab (Subject Zero)" do |e|
    e.position 10, 9
    e.graphic "Object door", direction: :down
    e.trigger :action

    e.page :discovered do |p|
      p.condition_switch :ch20_rest_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch20_5_lab_discovered
      p.cutscene :ch20_5_subject_zero
      p.command :set_self_switch, 'A', true
    end

    e.page :empty do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('The lab is empty. The tube is gone too.')"
    end
  end

  m.event 4, "Liberation Op 3" do |e|
    e.position 11, 9
    e.graphic "NPC Fern", direction: :down
    e.trigger :action

    e.page :offer do |p|
      p.condition_switch :sc_verdantia_allied, true
      p.condition_self_switch 'A', false
      p.cutscene :liberation_op_3
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 5, "World Tree Approach" do |e|
    e.position 5, 12
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :approach do |p|
      p.condition_switch :ch20_rest_done, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch20_approaching_world_tree, event_id: 5
      p.cutscene :ch20_cult_patrol
      p.cutscene :ch20_final_approach
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch20_complete, true
    end
  end

  m.event 6, "Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch20_complete, true
      p.script "pbFadeOutIn { pbWarp(30, 5, 3) }"   # Map 30 = Ch21 corruption
    end
  end
end
