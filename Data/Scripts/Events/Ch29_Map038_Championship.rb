#===============================================================================
# Map Events — The Championship (Ch29 — Pokemon League)
#===============================================================================
# League arrival. Ragnar memory. League entrance. Elite Four (4
# battles). Pre-champion moment. Starter final evolution. Elite Four
# complete. Champion reveal. Viktor remembers. Champion battle.
# Championship victory. Sky darkens. Portal opens. Champion orders.
# Plus Viktor romance branch.
#===============================================================================

MapEvents.define(38) do |m|
  m.event 1, "League Arrival" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :enter do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch29_league_arrival, event_id: 1
      p.cutscene :ch29_ragnar_memory
      p.cutscene :ch29_league_entrance
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 2, "Elite Four" do |e|
    e.position 6, 6
    e.graphic "NPC Elite Four", direction: :down
    e.trigger :action

    e.page :sequence do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch29_first_elite, event_id: 2
      p.trainer_battle :ELITEFOUR, "Fenris", 0
      p.cutscene :ch29_second_elite
      p.trainer_battle :ELITEFOUR, "Valdra", 0
      p.cutscene :ch29_third_elite
      p.trainer_battle :ELITEFOUR, "Morwen", 0
      p.cutscene :ch29_fourth_elite
      p.trainer_battle :ELITEFOUR, "Orm", 0
      p.cutscene :ch29_pre_champion_moment
      p.cutscene :ch29_starter_final_evolution
      p.cutscene :ch29_elite_four_complete
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch29_elite_done, true
    end
  end

  m.event 3, "Champion Viktor" do |e|
    e.position 6, 8
    e.graphic "NPC Viktor", direction: :down
    e.trigger :action

    e.page :battle do |p|
      p.condition_switch :ch29_elite_done, true
      p.condition_self_switch 'A', false
      # Viktor romance pre-battle aside (if SCRomance = :viktor)
      p.cutscene :vik_path_ch29_championship_aside
      p.cutscene :ch29_champion_reveal, event_id: 3
      p.cutscene :ch29_viktor_remembers
      p.cutscene :ch29_champion_battle
      p.trainer_battle :CHAMPION, "Viktor", 0
      p.cutscene :ch29_championship_victory
      p.cutscene :ch29_sky_darkens
      p.cutscene :ch29_portal_opens
      p.cutscene :ch29_champion_orders
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch29_complete, true
    end
  end

  m.event 4, "Portal" do |e|
    e.position 12, 14
    e.graphic "Object portal", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch29_complete, true
      p.script "pbFadeOutIn { pbWarp(39, 5, 3) }"   # Map 39 = Ch30 Friends United
    end
  end
end
