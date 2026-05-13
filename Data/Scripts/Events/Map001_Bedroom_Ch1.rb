#===============================================================================
# Map Events — Dawnhaven Bedroom (Ch1)
#===============================================================================
# Player wakes up here. Two events:
#   - The bed (action triggers ch1_wake_up the FIRST time only)
#   - The downstairs door (transfers to Ch1 kitchen)
#
# Map ID 1 is the bedroom; adjust if your map IDs differ.
#===============================================================================

MapEvents.define(1) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — The Bed (autorun first time, then becomes decorative)
  #-----------------------------------------------------------------------------
  m.event 1, "Bed" do |e|
    e.position 4, 6
    e.graphic "Object bed", direction: :down
    e.trigger :autorun   # fires immediately on map load — only Page 1

    # Page 1: first wake-up — autorun once
    e.page :wake_up do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch1_wake_up, event_id: 1
      p.command :set_self_switch, 'A', true
    end

    # Page 2: after wake-up — bed becomes inert
    e.page :idle do |p|
      p.condition_self_switch 'A', true
      # Empty: bed has no further interaction
      p.trigger :action
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Door downstairs (transfers to Ch1 kitchen)
  #-----------------------------------------------------------------------------
  m.event 2, "Door" do |e|
    e.position 10, 8
    e.graphic "Object door", direction: :up
    e.trigger :player_touch

    e.page :default do |p|
      # Door is always usable.
      p.script "pbCutscene(:ch1_morning_routine, event_id: 2)"
      p.command :set_self_switch, 'A', true
    end

    e.page :after_routine do |p|
      p.condition_self_switch 'A', true
      # Subsequent times — just transfer without the cutscene.
      p.script "pbFadeOutIn { pbWarp(2, 8, 4) }"  # Map 2 (kitchen), tile (8,4)
    end
  end
end
