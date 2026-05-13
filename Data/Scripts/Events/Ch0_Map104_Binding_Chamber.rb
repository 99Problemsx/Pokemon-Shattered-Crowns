#===============================================================================
# Map Events — Ch0 Prologue: Asgaheim Cliffs Binding Chamber (22 years ago)
#===============================================================================
# The binding goes wrong for Vex. Marcus survives. Aurora's mask saves
# him. Aldric promises to track the next generation for 22 years. Then
# fade to Ch1.
#
# Map ID 104.
#===============================================================================

MapEvents.define(104) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Trigger zone for the Binding (autorun)
  #-----------------------------------------------------------------------------
  m.event 1, "Binding Circle" do |e|
    e.position 8, 8
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first_entry do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :pro_5_the_binding, event_id: 1
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — After the flash — the Cost (autorun second-stage)
  #-----------------------------------------------------------------------------
  m.event 2, "After the Cost" do |e|
    e.position 8, 8
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :runs_after_binding do |p|
      # Page conditions: binding done (event 1 SS A) + cost cutscene not done yet
      p.condition_self_switch 'B', false
      p.condition_self_switch 'A', false   # this uses event 2's own SS A,
                                            # placeholder — actual condition tracked
                                            # via the global switch below
      p.condition_switch :pro_binding_done, true
      p.through true
      p.cutscene :pro_6_the_cost, event_id: 2
      p.command :set_self_switch, 'B', true
      p.command :set_switch, :pro_cost_done, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Hoopa visual (inside the circle, decorative during binding)
  #-----------------------------------------------------------------------------
  m.event 3, "Hoopa Confined" do |e|
    e.position 8, 6
    e.graphic "Pokemon Hoopa", direction: :down
    e.trigger :action

    e.page :before_binding do |p|
      p.condition_switch :pro_binding_done, false
      p.script "pbMessage('Hoopa: ...what are you doing here, mortals?')"
    end

    e.page :after_binding do |p|
      p.condition_switch :pro_binding_done, true
      # Hoopa sealed — sprite disappears
      p.graphic "", direction: :down
      p.through true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Vex (collapses after binding)
  #-----------------------------------------------------------------------------
  m.event 4, "Vex (Young)" do |e|
    e.position 7, 8
    e.graphic "NPC Vex Young", direction: :down
    e.trigger :action

    e.page :broken do |p|
      p.condition_switch :pro_binding_done, true
      p.condition_switch :pro_cost_done, false
      p.script "pbMessage('Vex: ...the binding is delay. \\\\nThe binding is delay.')"
    end

    e.page :gone do |p|
      p.condition_switch :pro_cost_done, true
      # Vex walked out at the end of pro_6
      p.graphic "", direction: :down
      p.through true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Exit trigger — fires the 22-years-later cut to Ch1
  #-----------------------------------------------------------------------------
  m.event 5, "Time Cut" do |e|
    e.position 8, 11
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :time_cut do |p|
      p.condition_switch :pro_cost_done, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :pro_7_twenty_two_years_later, event_id: 5
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :pro_complete, true
      # The cutscene's own script call hands off to :ch1_wake_up which
      # the player will encounter on map 1.
      p.script "pbFadeOutIn { pbWarp(1, 5, 6) }"   # Map 1 = Ch1 Bedroom
    end
  end
end
