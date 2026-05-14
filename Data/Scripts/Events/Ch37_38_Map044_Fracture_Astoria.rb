#===============================================================================
# Map Events — The Fracture + Astoria Arrival (Ch37 + Ch38)
#===============================================================================
# Cracks in reality. Void creatures. Refugees. Port town. Captain Lior.
# Sea voyage. Astoria sighted + landing. Then Ch38: ancient forest,
# ruins, temple, Elder Vera, crown explanation, temple locations.
# Plus v2 audit Captain Lior intro + Astoria expansion NPCs.
#===============================================================================

MapEvents.define(44) do |m|
  m.event 1, "The Fracture" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :fracture do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch37_intro, event_id: 1
      p.cutscene :ch37_first_fracture
      p.cutscene :ch37_void_creature
      p.cutscene :ch37_void_battle
      p.cutscene :ch37_refugees
      p.cutscene :ch37_port_town
      p.cutscene :ch37_captain_appears
      p.cutscene :ch37_captain_lior_intro       # v2 audit
      p.cutscene :ch37_boarding
      p.cutscene :ch37_at_sea
      p.cutscene :ch37_storm
      p.cutscene :ch37_sea_guardian
      p.cutscene :ch37_astoria_sighted
      p.cutscene :ch37_landing
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 2, "Astoria + Marrowport" do |e|
    e.position 7, 6
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :ch38 do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch38_intro, event_id: 2
      p.cutscene :ch38_ancient_forest
      p.cutscene :ch38_wild_battle
      p.cutscene :ch38_ruins_spotted
      p.cutscene :ch38_temple_approach
      p.cutscene :ch38_elder_speaks
      p.cutscene :ch38_crown_explanation
      p.cutscene :ch38_temple_locations
      p.cutscene :ch38_warning
      p.cutscene :ch38_rest
      p.cutscene :ch38_dream
      p.cutscene :ch38_departure
      # Astoria expansion NPCs
      p.cutscene :astoria_marrowport_arrival
      p.cutscene :astoria_maris_intro
      p.cutscene :astoria_daro_intro
      p.cutscene :astoria_three_elders
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch38_complete, true
    end
  end

  m.event 3, "Maris (Port Master)" do |e|
    e.position 4, 8
    e.graphic "NPC Maris", direction: :down
    e.trigger :action

    e.page :idle do |p|
      p.condition_switch :ch38_complete, true
      p.script "pbMessage('Maris: Be kind to the refugees, Chosen. They walked further than you flew.')"
    end
  end

  m.event 4, "Iola (Library Keeper — Vex notebook)" do |e|
    e.position 9, 8
    e.graphic "NPC Iola", direction: :down
    e.trigger :action

    e.page :library do |p|
      p.condition_switch :ch38_complete, true
      p.condition_self_switch 'A', false
      p.cutscene :astoria_library_keeper
      p.cutscene :astoria_vex_notebook
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Iola: We all miss him, dear.')"
    end
  end

  m.event 5, "To the Temples" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch38_complete, true
      p.script "pbFadeOutIn { pbWarp(45, 5, 3) }"   # Map 45 = Temple of Stars
    end
  end
end
