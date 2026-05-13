#===============================================================================
# Map Events — Ch0 Prologue: Verdantia Inn (22 years ago)
#===============================================================================
# Marcus recruits Vex Calderon. The Recruiting Vex cutscene plays at
# Vex's table.
#
# Map ID 102.
#===============================================================================

MapEvents.define(102) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Vex (Young) at the bar table
  #-----------------------------------------------------------------------------
  m.event 1, "Vex (Young)" do |e|
    e.position 5, 5
    e.graphic "NPC Vex Young", direction: :down
    e.trigger :action

    e.page :pitch do |p|
      p.condition_self_switch 'A', false
      p.cutscene :pro_3_recruiting_vex, event_id: 1
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :pro_recruited_vex, true
    end

    e.page :after_recruit do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Vex: I will be ready when you are, Champion. \\\\nGo see your wife.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Innkeeper (flavour)
  #-----------------------------------------------------------------------------
  m.event 2, "Innkeeper" do |e|
    e.position 2, 3
    e.graphic "NPC 08", direction: :down
    e.trigger :action

    e.page :greeting do |p|
      p.script "pbMessage('Innkeeper: Champion Marcus! On the house. Always on the house.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Return path (to Aurora's study / next prologue beat)
  #-----------------------------------------------------------------------------
  m.event 3, "Return to Dawnhaven" do |e|
    e.position 5, 9
    e.graphic "Object door", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :pro_recruited_vex, false
      p.script "pbMessage('Marcus: I haven\\'t spoken to Vex yet.')"
    end

    e.page :open do |p|
      p.condition_switch :pro_recruited_vex, true
      p.script "pbFadeOutIn { pbWarp(103, 5, 8) }"   # Map 103 = Aurora's Study
    end
  end
end
