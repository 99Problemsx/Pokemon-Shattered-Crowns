#===============================================================================
# Map Events — Shard Hunt (Ch19 — Planning + Elena introduction)
#===============================================================================
# Professor briefing, shard explanation, route planning, seventh gym
# (Tarquin), team meal, Pokemon bonding, approach Eternal Forest, Elena
# (Lyra's sister) introduction.
#===============================================================================

MapEvents.define(28) do |m|
  m.event 1, "Shard Briefing" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :briefing do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch19_contacting_professor, event_id: 1
      p.cutscene :ch19_professor_briefing
      p.cutscene :ch19_shard_explanation
      p.cutscene :ch19_route_planning
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 2, "Tarquin (Gym 7)" do |e|
    e.position 9, 6
    e.graphic "NPC Tarquin", direction: :down
    e.trigger :action

    e.page :gym do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch19_journey_to_gym, event_id: 2
      p.cutscene :ch19_seventh_gym_approach
      p.cutscene :ch19_seventh_gym_battle
      p.trainer_battle :GYMLEADER, "Tarquin", 0
      p.cutscene :ch19_seventh_gym_victory
      p.cutscene :ch19_after_gym_planning
      p.cutscene :ch19_team_meal
      p.cutscene :ch19_pokemon_bonding
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch19_gym7_done, true
    end
  end

  m.event 3, "Elena Intro" do |e|
    e.position 10, 11
    e.graphic "NPC Elena", direction: :down
    e.trigger :action

    e.page :meet do |p|
      p.condition_switch :ch19_gym7_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch19_approach_eternal_forest, event_id: 3
      p.cutscene :ch19_elena_intro
      p.cutscene :ch19_elena_warning
      p.cutscene :ch19_elena_and_lyra
      p.cutscene :ch19_ragnar_wants_to_help
      p.cutscene :ch19_preparing_to_enter
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch19_complete, true
    end
  end

  m.event 4, "Forest Entrance" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch19_complete, true
      p.script "pbFadeOutIn { pbWarp(29, 5, 3) }"   # Map 29 = Ch20 Eternal Forest
    end
  end
end
