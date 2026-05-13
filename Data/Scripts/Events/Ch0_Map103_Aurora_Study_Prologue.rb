#===============================================================================
# Map Events — Ch0 Prologue: Aurora's Study (22 years ago)
#===============================================================================
# Aurora carves the Heirloom Mask while pregnant. The Carving cutscene
# runs the pbNameEntry prompt — player decides what name is etched
# inside the mask (defaults to "Marcus").
#
# Map ID 103.
#===============================================================================

MapEvents.define(103) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — The Carving Bench (autorun)
  #-----------------------------------------------------------------------------
  m.event 1, "Carving Bench" do |e|
    e.position 5, 5
    e.graphic "Object workbench", direction: :down
    e.trigger :autorun

    e.page :carve do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :pro_4_the_carving, event_id: 1
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :pro_carving_done, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Aurora (sits at the bench during cutscene; idle after)
  #-----------------------------------------------------------------------------
  m.event 2, "Aurora (Young)" do |e|
    e.position 5, 6
    e.graphic "NPC Aurora Young", direction: :up
    e.trigger :action

    e.page :after_carving do |p|
      p.condition_switch :pro_carving_done, true
      p.script "pbMessage('Aurora: The mask is finished. \\\\nIt is yours, my love. \\\\nFor when our child is grown enough.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Walk to Asgaheim Cliffs (binding chamber)
  #-----------------------------------------------------------------------------
  m.event 3, "To the Cliffs" do |e|
    e.position 5, 9
    e.graphic "Object door", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :pro_carving_done, false
      p.script "pbMessage('Marcus: The mask isn\\'t done.')"
    end

    e.page :open do |p|
      p.condition_switch :pro_carving_done, true
      p.script "pbFadeOutIn { pbWarp(104, 8, 12) }"   # Map 104 = Binding Chamber
    end
  end
end
