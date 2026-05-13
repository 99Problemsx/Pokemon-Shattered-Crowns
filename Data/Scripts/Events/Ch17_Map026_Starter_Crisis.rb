#===============================================================================
# Map Events — Starter Crisis (Ch17 — Your Starter Nearly Dies)
#===============================================================================
# Peaceful path → shadow warning → ambush → starter sacrifice → rage
# awakening → Pokemon Center → waiting room → news → reunion → recovery
# → starter glowing + first evolution. Plus v3 audit ch17_starter_promise
# beat in the recovery room.
# Plus Liberation Op 2 closure (Frostfall) here for Ragnar romance Path.
#===============================================================================

MapEvents.define(26) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Peaceful path
  #-----------------------------------------------------------------------------
  m.event 1, "Peaceful Path" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :enter do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch17_peaceful_path, event_id: 1
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Shadow warning + ambush
  #-----------------------------------------------------------------------------
  m.event 2, "Ambush" do |e|
    e.position 8, 7
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :ambush do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch17_shadow_warning, event_id: 2
      p.cutscene :ch17_ambush_begins
      p.cutscene :ch17_battle_overwhelmed
      p.cutscene :ch17_starter_sacrifice
      p.cutscene :ch17_rage_awakening
      p.cutscene :ch17_desperate_rush
      p.cutscene :ch17_ragnar_appears
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch17_starter_sacrificed, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Pokemon Center + recovery (autorun on entry)
  #-----------------------------------------------------------------------------
  m.event 3, "Pokemon Center" do |e|
    e.position 5, 11
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :recovery do |p|
      p.condition_switch :ch17_starter_sacrificed, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch17_pokemon_center, event_id: 3
      p.cutscene :ch17_waiting_room
      p.cutscene :ch17_kaels_vigil
      p.cutscene :ch17_the_news
      p.cutscene :ch17_reunion
      p.cutscene :ch17_recovery_begins
      p.cutscene :ch17_starter_promise           # v3 audit beat
      p.cutscene :ch17_partners_bond
      p.cutscene :ch17_team_support
      p.cutscene :ch17_first_steps
      p.cutscene :ch17_new_resolve
      p.cutscene :ch17_ragnar_learns_truth
      p.cutscene :ch17_bond_strengthened
      p.cutscene :ch17_starter_glowing
      p.cutscene :ch17_starter_first_evolution
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch17_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Ragnar romance Ch17 confession (only if romance = :ragnar)
  #-----------------------------------------------------------------------------
  m.event 4, "Ragnar Bedside" do |e|
    e.position 7, 11
    e.graphic "NPC Ragnar", direction: :down
    e.trigger :action

    e.page :romance_confession do |p|
      p.condition_switch :ch17_complete, true
      p.condition_self_switch 'A', false
      p.cutscene :rag_path_ch17_recovery_visit
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Ragnar: I\\'m staying the whole way, \\PN.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — South exit (to Ch18 General Dread)
  #-----------------------------------------------------------------------------
  m.event 5, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch17_complete, true
      p.script "pbFadeOutIn { pbWarp(27, 5, 3) }"   # Map 27 = Ch18 Dread
    end
  end
end
