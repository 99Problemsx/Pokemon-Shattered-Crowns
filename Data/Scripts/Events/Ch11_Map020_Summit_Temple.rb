#===============================================================================
# Map Events — Summit Temple (Ch11 — The First Truth)
#===============================================================================
# Temple interior. Murals: Nidhoggr, Xerneas, Yveltal. Hoopa revelation.
# Seal tablets. Burden of choice. The trio realizes they are the Chosen.
# Temple rumble. Escape tunnel. Mountain escape.
#===============================================================================

MapEvents.define(20) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Temple entrance + interior reveal
  #-----------------------------------------------------------------------------
  m.event 1, "Temple Entrance" do |e|
    e.position 5, 12
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :enter do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch11_temple_entrance, event_id: 1
      p.cutscene :ch11_temple_interior
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — The Murals (chained)
  #-----------------------------------------------------------------------------
  m.event 2, "First Mural" do |e|
    e.position 4, 5
    e.graphic "Object mural", direction: :down
    e.trigger :action

    e.page :read do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch11_first_mural, event_id: 2
      p.cutscene :ch11_nidhoggr_mural
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('The first mural shows three figures standing against a serpent.')"
    end
  end

  m.event 3, "Temple Records" do |e|
    e.position 8, 5
    e.graphic "Object book", direction: :down
    e.trigger :action

    e.page :read do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch11_temple_records, event_id: 3
      p.cutscene :ch11_xerneas_vision
      p.cutscene :ch11_yveltal_vision
      p.cutscene :ch11_hoopa_revelation
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 4, "Seal Tablets" do |e|
    e.position 12, 5
    e.graphic "Object tablet", direction: :down
    e.trigger :action

    e.page :read do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch11_seal_tablets, event_id: 4
      p.cutscene :ch11_burden_of_choice
      p.cutscene :ch11_are_we_chosen
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Temple rumble + escape (autorun after all 3 murals read)
  #-----------------------------------------------------------------------------
  m.event 5, "Temple Rumble" do |e|
    e.position 5, 8
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :rumble do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.script <<~RUBY.strip
        if $game_self_switches[[20, 2, 'A']] && $game_self_switches[[20, 3, 'A']] && $game_self_switches[[20, 4, 'A']]
          pbCutscene(:ch11_temple_rumble, event_id: 5)
          pbCutscene(:ch11_gathering_knowledge)
          pbCutscene(:ch11_escape_tunnel)
          pbCutscene(:ch11_mountain_escape)
          $game_self_switches[[20, 5, 'A']] = true
          $game_switches[:ch11_complete] = true
        end
      RUBY
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — Escape tunnel exit (to Ch12 Shade encounter)
  #-----------------------------------------------------------------------------
  m.event 6, "Escape Exit" do |e|
    e.position 5, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :default do |p|
      p.condition_switch :ch11_complete, true
      p.script "pbFadeOutIn { pbWarp(21, 5, 3) }"   # Map 21 = Ch12 mountain pass
    end
  end
end
