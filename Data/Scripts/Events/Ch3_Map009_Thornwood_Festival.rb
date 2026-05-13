#===============================================================================
# Map Events — Thornwood Festival (Ch3)
#===============================================================================
# Festival of Crowns! Six interactive booths (Strength Test, Contest,
# Storyteller, Mask Carver, Fortune Teller, Festival Dance). Plus the
# storyteller's prophecy + hooded figures + Ragnar appears + dance +
# fireworks + shadow stalker + departure.
#
# Uses [SC] Dex Mode Festival mini-game module (see
# Data/Scripts/Story/Systems/Festival_Of_Crowns.rb for cutscene defs).
#===============================================================================

MapEvents.define(9) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Festival arrival (autorun on entry)
  #-----------------------------------------------------------------------------
  m.event 1, "Festival Arrival" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first_entry do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch3_road_to_thornwood, event_id: 1
      p.cutscene :ch3_thornwood_entrance
      p.cutscene :ch3_festival_arrival
      p.cutscene :festival_hub                      # mini-game intro (gives 3 tokens)
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Strength Test booth (mini-game)
  #-----------------------------------------------------------------------------
  m.event 2, "Strength Test" do |e|
    e.position 4, 6
    e.graphic "NPC Strongman", direction: :down
    e.trigger :action

    e.page :booth do |p|
      p.cutscene :festival_strength_test
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Contest booth
  #-----------------------------------------------------------------------------
  m.event 3, "Pokemon Contest" do |e|
    e.position 6, 6
    e.graphic "NPC Beauty", direction: :down
    e.trigger :action

    e.page :booth do |p|
      p.cutscene :festival_contest
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Storyteller booth (also fires prophecy + hooded figures)
  #-----------------------------------------------------------------------------
  m.event 4, "Storyteller" do |e|
    e.position 8, 6
    e.graphic "NPC Storyteller", direction: :down
    e.trigger :action

    # First action — runs both the mini-game and the prophecy beat
    e.page :first_visit do |p|
      p.condition_self_switch 'A', false
      p.cutscene :festival_storyteller
      p.cutscene :ch3_festival_story
      p.cutscene :ch3_storyteller_prophecy
      p.cutscene :ch3_hooded_figures
      p.command :set_self_switch, 'A', true
    end

    # Subsequent visits — just the mini-game
    e.page :replay do |p|
      p.condition_self_switch 'A', true
      p.cutscene :festival_storyteller
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Mask Carver stall (festival mini-game; v4-F2 setup)
  #-----------------------------------------------------------------------------
  m.event 5, "Mask Carver" do |e|
    e.position 10, 6
    e.graphic "NPC Elderly Woman", direction: :down
    e.trigger :action

    # First visit also fires v4 audit cutscene ch3_5_old_carver
    e.page :first_visit do |p|
      p.condition_self_switch 'A', false
      p.cutscene :festival_mask_carver
      p.cutscene :ch3_5_old_carver               # v4 audit logic-fix
      p.command :set_self_switch, 'A', true
    end

    e.page :replay do |p|
      p.condition_self_switch 'A', true
      p.cutscene :festival_mask_carver
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — Fortune Teller
  #-----------------------------------------------------------------------------
  m.event 6, "Fortune Teller" do |e|
    e.position 12, 6
    e.graphic "NPC Fortune Teller", direction: :down
    e.trigger :action

    e.page :booth do |p|
      p.cutscene :festival_fortune_teller
    end
  end

  #-----------------------------------------------------------------------------
  # Event 7 — Dance floor (Ragnar romance branch only)
  #-----------------------------------------------------------------------------
  m.event 7, "Dance Floor" do |e|
    e.position 14, 6
    e.graphic "NPC Dancer", direction: :down
    e.trigger :action

    e.page :dance do |p|
      p.cutscene :festival_dance
    end
  end

  #-----------------------------------------------------------------------------
  # Event 8 — Ragnar appears (autorun, mid-festival)
  #-----------------------------------------------------------------------------
  m.event 8, "Ragnar at Festival" do |e|
    e.position 8, 9
    e.graphic "NPC Ragnar", direction: :left
    e.trigger :player_touch

    e.page :appears do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch3_ragnar_festival, event_id: 8
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Ragnar: Catch you in the next town, \\PN! \\\\nDon\\'t lose to anyone before me.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 9 — Festival night sequence (autorun late)
  #-----------------------------------------------------------------------------
  m.event 9, "Festival Night" do |e|
    e.position 5, 12
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :night do |p|
      # Conditions: spoken to Ragnar (event 8 SS A) and Storyteller (event 4 SS A)
      p.condition_self_switch 'A', false
      p.through true
      p.script <<~RUBY.strip
        if $game_self_switches[[9, 8, 'A']] && $game_self_switches[[9, 4, 'A']]
          pbCutscene(:ch3_dance_festival, event_id: 9)
          pbCutscene(:ch3_firework_setup)
          pbCutscene(:ch3_festival_night)
          pbCutscene(:ch3_shared_dream_again)
          pbCutscene(:ch3_shadow_stalker)
          pbCutscene(:ch3_morning_after)
          $game_self_switches[[9, 9, 'A']] = true
          $game_switches[:dummy] = $game_switches[:dummy]   # touch
        end
      RUBY
      p.command :set_switch, :ch3_festival_done, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 10 — South exit (post-festival)
  #-----------------------------------------------------------------------------
  m.event 10, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :ch3_festival_done, false
      p.script "pbMessage('The festival isn\\'t over yet.')"
    end

    e.page :departure do |p|
      p.condition_switch :ch3_festival_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch3_departure_gift, event_id: 10
      p.command :set_self_switch, 'A', true
      p.script "pbFadeOutIn { pbWarp(10, 5, 3) }"   # Map 10 = first-signs zone
    end

    e.page :open do |p|
      p.condition_self_switch 'A', true
      p.script "pbFadeOutIn { pbWarp(10, 5, 3) }"
    end
  end
end
