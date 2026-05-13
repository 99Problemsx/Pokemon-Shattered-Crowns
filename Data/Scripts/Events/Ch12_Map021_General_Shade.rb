#===============================================================================
# Map Events — Mountain Pass (Ch12 — General Shade First Confrontation)
#===============================================================================
# Surrounded. Shade reveal + backstory. Battle. Kael's rage, Lyra's
# shield, player's breakthrough. Shade lets them go. Escape run. Night
# watch. Ragnar in town. Dawn departure.
#===============================================================================

MapEvents.define(21) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Surrounded (autorun on entry)
  #-----------------------------------------------------------------------------
  m.event 1, "Surrounded" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first_entry do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch12_surrounded, event_id: 1
      p.cutscene :ch12_shade_reveal
      p.cutscene :ch12_shade_backstory
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Shade battle
  #-----------------------------------------------------------------------------
  m.event 2, "General Shade" do |e|
    e.position 6, 6
    e.graphic "NPC Shade", direction: :down
    e.trigger :action

    e.page :battle do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch12_battle_begins, event_id: 2
      p.cutscene :ch12_kael_rage
      p.cutscene :ch12_lyra_shield
      p.cutscene :ch12_player_breakthrough
      p.script <<~RUBY.strip
        setBattleRule("midbattleScript", :BOSS_GENERAL_SHADE)
        setBattleRule("databoxStyle", :Boss)
        setBattleRule("canLose")
        TrainerBattle.start(:CULTIST, "Shade", 0)
      RUBY
      p.cutscene :ch12_shade_lets_them_go
      p.cutscene :ch12_escape_run
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch12_shade_done, true
      p.script "pbAchievement(:ach_shade_defeated) rescue nil"
    end

    e.page :gone do |p|
      p.condition_self_switch 'A', true
      p.graphic "", direction: :down
      p.through true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Catching breath + aftermath
  #-----------------------------------------------------------------------------
  m.event 3, "Catching Breath" do |e|
    e.position 10, 9
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :aftermath do |p|
      p.condition_switch :ch12_shade_done, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch12_catching_breath, event_id: 3
      p.cutscene :ch12_what_we_learned
      p.cutscene :ch12_shade_aftermath
      p.cutscene :ch12_night_watch
      p.cutscene :ch12_ragnar_town
      p.cutscene :ch12_dawn_departure
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch12_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — South exit (to Ch13 recovery camp)
  #-----------------------------------------------------------------------------
  m.event 4, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch12_complete, true
      p.script "pbFadeOutIn { pbWarp(22, 5, 3) }"   # Map 22 = Ch13 recovery camp
    end
  end
end
