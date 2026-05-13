#===============================================================================
# Map Events — Ch0 Prologue: Aldric's Lab (22 years ago)
#===============================================================================
# Aldric (younger), Marcus, Aurora discuss the binding. Aurora reveals
# she's pregnant. Aldric introduces Vex as the fourth sealer.
#
# Map ID 101.
#===============================================================================

MapEvents.define(101) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Aldric (Young)
  #-----------------------------------------------------------------------------
  m.event 1, "Aldric (Young)" do |e|
    e.position 6, 5
    e.graphic "NPC Aldric Young", direction: :down
    e.trigger :autorun

    # First entry: the Calling cutscene runs
    e.page :first_entry do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :pro_2_calling, event_id: 1
      p.command :set_self_switch, 'A', true
    end

    # After calling — Aldric remains here for the next visit
    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.condition_switch :pro_recruited_vex, false
      p.script "pbMessage('Aldric: Find Vex in Verdantia. Don\\'t leave without him.')"
    end

    e.page :after_recruit do |p|
      p.condition_switch :pro_recruited_vex, true
      p.condition_switch :pro_carving_done, false
      p.script "pbMessage('Aldric: Aurora is at her study. The mask must be carved before the binding.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Aurora (after Marcus learns she's pregnant)
  #-----------------------------------------------------------------------------
  m.event 2, "Aurora (Young)" do |e|
    e.position 8, 5
    e.graphic "NPC Aurora Young", direction: :down
    e.trigger :action

    e.page :after_calling do |p|
      p.condition_switch :pro_calling_done, true
      p.script "pbMessage('Aurora: I will see you at home. Carving will take a few weeks.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Exit toward Verdantia (locked until Calling cutscene played)
  #-----------------------------------------------------------------------------
  m.event 3, "Path to Verdantia" do |e|
    e.position 6, 9
    e.graphic "Object door", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :pro_calling_done, false
      p.script "pbMessage('Aldric: Speak with me first, my friend.')"
    end

    e.page :open do |p|
      p.condition_switch :pro_calling_done, true
      p.script "pbFadeOutIn { pbWarp(102, 5, 8) }"   # Map 102 = Verdantia Inn
    end
  end
end
