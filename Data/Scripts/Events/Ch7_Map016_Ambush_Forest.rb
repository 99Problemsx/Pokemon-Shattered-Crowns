#===============================================================================
# Map Events — Ambush Forest (Ch7 — First Confrontation)
#===============================================================================
# Trap! Cultists ambush, Vex arrives, the Shattered Hand reveals itself,
# cultists retreat. Aftermath: healing + campfire + Lyra's fear + Kael's
# analysis + morning departure. Also fires the ch7_5 civilian shopkeeper
# beat at next-town entry (via switch).
#===============================================================================

MapEvents.define(16) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Forest path entry + journey
  #-----------------------------------------------------------------------------
  m.event 1, "Forest Path" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :enter do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch7_road_to_professor, event_id: 1
      p.cutscene :ch7_forest_journey
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Trap realization (autorun mid-forest)
  #-----------------------------------------------------------------------------
  m.event 2, "Trap Realization" do |e|
    e.position 8, 7
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :trap do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch7_trap_realization, event_id: 2
      p.cutscene :ch7_ambush_begins
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Cultist battle 1
  #-----------------------------------------------------------------------------
  m.event 3, "Cultist Vesh" do |e|
    e.position 6, 9
    e.graphic "NPC Cultist", direction: :right
    e.trigger :event_touch

    e.page :battle do |p|
      p.condition_switch :ch7_ambush_started, true
      p.condition_self_switch 'A', false
      p.cutscene :ch7_cultist_battle, event_id: 3
      p.trainer_battle :CULTIST, "Vesh", 0
      p.command :set_self_switch, 'A', true
    end

    e.page :down do |p|
      p.condition_self_switch 'A', true
      p.graphic "", direction: :down
      p.through true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Ragnar rescue
  #-----------------------------------------------------------------------------
  m.event 4, "Ragnar Rescue" do |e|
    e.position 10, 9
    e.graphic "NPC Ragnar", direction: :left
    e.trigger :autorun

    e.page :rescue do |p|
      # Fires after cultist battle (event 3 SS A)
      p.condition_self_switch 'A', false
      p.through true
      p.script <<~RUBY.strip
        if $game_self_switches[[16, 3, 'A']]
          pbCutscene(:ch7_ragnar_rescue, event_id: 4)
          pbCutscene(:ch7_vex_arrives)
          pbCutscene(:ch7_shattered_hand_attack)
          pbCutscene(:ch7_cultists_retreat)
          $game_self_switches[[16, 4, 'A']] = true
          $game_switches[:ch7_ambush_done] = true
        end
      RUBY
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Aftermath campfire (autorun)
  #-----------------------------------------------------------------------------
  m.event 5, "Aftermath Camp" do |e|
    e.position 5, 12
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :aftermath do |p|
      p.condition_switch :ch7_ambush_done, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch7_aftermath, event_id: 5
      p.cutscene :ch7_healing_pokemon
      p.cutscene :ch7_campfire_setup
      p.cutscene :ch7_lyra_fear
      p.cutscene :ch7_kael_analysis
      p.cutscene :ch7_player_reflection
      p.cutscene :ch7_morning_departure
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch7_complete, true
      p.command :set_switch, :ch7_attack_aftermath, true   # for ch7_5 civilian
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — Exit (to Ch8 Marks-Appear inn)
  #-----------------------------------------------------------------------------
  m.event 6, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :ch7_complete, false
      p.script "pbMessage('Lyra: Rest first.')"
    end

    e.page :open do |p|
      p.condition_switch :ch7_complete, true
      p.script "pbFadeOutIn { pbWarp(17, 5, 3) }"   # Map 17 = Ch8 inn
    end
  end
end
