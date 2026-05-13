#===============================================================================
# Map Events — Forest Shrine (Ch14 — First Guardian Named: Xerneas)
#===============================================================================
# Approach the forest. Wildlife. Ragnar encounter. Forest shrine. Lyra
# meditates. Xerneas's realm. Xerneas named. Seal knowledge + power
# transfer. Lyra awakens. Return journey. Grandmother truth.
# Plus Ch14.5 Lyra's Heritage POV side-arc.
#===============================================================================

MapEvents.define(23) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Forest approach
  #-----------------------------------------------------------------------------
  m.event 1, "Forest Approach" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :enter do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch14_approaching_forest, event_id: 1
      p.cutscene :ch14_forest_wildlife
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Ragnar encounter (mid-forest)
  #-----------------------------------------------------------------------------
  m.event 2, "Ragnar Forest" do |e|
    e.position 8, 6
    e.graphic "NPC Ragnar", direction: :left
    e.trigger :action

    e.page :encounter do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch14_ragnar_encounter, event_id: 2
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Ragnar: I\\'ll see you at the next gym, \\PN.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Forest shrine
  #-----------------------------------------------------------------------------
  m.event 3, "Forest Shrine" do |e|
    e.position 10, 9
    e.graphic "Object shrine", direction: :down
    e.trigger :action

    e.page :shrine do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch14_forest_shrine, event_id: 3
      p.cutscene :ch14_lyra_meditates
      p.cutscene :ch14_xerneas_realm
      p.cutscene :ch14_xerneas_named
      p.cutscene :ch14_seal_knowledge
      p.cutscene :ch14_power_transfer
      p.cutscene :ch14_lyra_awakens
      p.cutscene :ch14_seal_strengthened
      p.cutscene :ch14_aftermath
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch14_xerneas_named, true
      p.script "pbAchievement(:ach_first_guardian) rescue nil"
    end

    e.page :revisit do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('The shrine glows softly. \\\\nXerneas left a mark here that has not faded.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Ch14.5 Lyra's Heritage POV (optional, fires at the farm visit)
  #-----------------------------------------------------------------------------
  m.event 4, "Lyra Heritage Trigger" do |e|
    e.position 5, 12
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :ch145 do |p|
      p.condition_switch :ch14_xerneas_named, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch14_return_journey, event_id: 4
      p.cutscene :ch14_return_to_farm
      p.cutscene :ch14_grandmother_truth
      p.cutscene :ch14_lyra_destiny
      # Ch14.5 chain (all 19 beats)
      p.cutscene :ch14_5_intro
      p.cutscene :ch14_5_crystal_forest
      p.cutscene :ch14_5_xerneas_appears
      p.cutscene :ch14_5_moiras_past
      p.cutscene :ch14_5_moiras_grief
      p.cutscene :ch14_5_the_transformation
      p.cutscene :ch14_5_healing_the_world
      p.cutscene :ch14_5_back_to_lyra
      p.cutscene :ch14_5_why_lyra
      p.cutscene :ch14_5_the_bond
      p.cutscene :ch14_5_seeing_friends
      p.cutscene :ch14_5_thinking_of_elena
      p.cutscene :ch14_5_willow_memory
      p.cutscene :ch14_5_the_power_transfer
      p.cutscene :ch14_5_overwhelmed
      p.cutscene :ch14_5_finding_peace
      p.cutscene :ch14_5_final_wisdom
      p.cutscene :ch14_5_returning
      p.cutscene :ch14_5_waking
      p.cutscene :ch14_5_new_senses
      p.cutscene :ch14_5_ending
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch14_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — South exit (to Ch15 trail)
  #-----------------------------------------------------------------------------
  m.event 5, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch14_complete, true
      p.script "pbFadeOutIn { pbWarp(24, 5, 3) }"   # Map 24 = Ch15 trail
    end
  end
end
