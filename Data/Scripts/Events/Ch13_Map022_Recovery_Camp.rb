#===============================================================================
# Map Events — Recovery Camp (Ch13 — Growing Bonds)
#===============================================================================
# Recovery + Ragnar rematch + training montage + Lyra-Kael moment.
# Plus bond_kael_3 (About Mira) optional. Quiet, character-heavy chapter.
#===============================================================================

MapEvents.define(22) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Camp setup
  #-----------------------------------------------------------------------------
  m.event 1, "Camp Setup" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :setup do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch13_recovery_camp, event_id: 1
      p.cutscene :ch13_first_night
      p.cutscene :ch13_morning_tablets
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Ragnar rematch
  #-----------------------------------------------------------------------------
  m.event 2, "Ragnar Rematch" do |e|
    e.position 7, 6
    e.graphic "NPC Ragnar", direction: :left
    e.trigger :action

    e.page :rematch do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch13_ragnar_rematch, event_id: 2
      p.trainer_battle :RIVAL, "Ragnar", 2
      p.cutscene :ch13_ragnar_after_battle
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Ragnar: Catch you at the next gym, \\PN!')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Training montage trigger
  #-----------------------------------------------------------------------------
  m.event 3, "Training" do |e|
    e.position 10, 7
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :montage do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch13_training_montage, event_id: 3
      p.cutscene :ch13_kael_trains_player
      p.cutscene :ch13_lyra_helps_player
      p.cutscene :ch13_pokemon_bonding
      p.cutscene :ch13_lyra_kael_moment
      p.cutscene :ch13_kael_opens_up
      p.cutscene :ch13_player_watching
      p.cutscene :ch13_mark_practice
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch13_training_done, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Bond Quest 3 (Kael about Mira, optional)
  #-----------------------------------------------------------------------------
  m.event 4, "Kael (About Mira)" do |e|
    e.position 6, 9
    e.graphic "NPC Kael", direction: :down
    e.trigger :action

    e.page :offer do |p|
      p.condition_switch :ch13_training_done, true
      p.condition_self_switch 'A', false
      p.script "pbQuest(:start, :bond_kael_3)"
      p.script "pbMessage('Kael: Sit down. \\\\nI haven\\'t told this to anyone yet.')"
      p.script "pbQuest(:complete, :bond_kael_3) rescue nil"
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Kael: Thanks for listening.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Sunset reflection + departure prep
  #-----------------------------------------------------------------------------
  m.event 5, "Sunset Reflection" do |e|
    e.position 5, 12
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :sunset do |p|
      p.condition_switch :ch13_training_done, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch13_sunset_reflection, event_id: 5
      p.cutscene :ch13_night_conversation
      p.cutscene :ch13_departure_preparations
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch13_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — South exit (to Ch14 Eternal Forest approach)
  #-----------------------------------------------------------------------------
  m.event 6, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch13_complete, true
      p.script "pbFadeOutIn { pbWarp(23, 5, 3) }"   # Map 23 = Ch14 Xerneas
    end
  end
end
