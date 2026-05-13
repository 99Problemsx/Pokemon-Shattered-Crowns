#===============================================================================
# Map Events — Ashbury City (Ch6 — Rumors of the Shattered Hand)
#===============================================================================
# Cult rumors. Street talk. Ragnar challenges to gym 2. Player explores
# old district, encounters shadow figure, meets Marcus (the trainer
# rival — NOT the player's dad; renamed to Viktor per v2 audit).
# Champion Viktor's introduction beat in Ch6. Liberation Op 1 hint.
#===============================================================================

MapEvents.define(15) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — City arrival + rumors trigger
  #-----------------------------------------------------------------------------
  m.event 1, "City Arrival" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first_entry do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch6_new_city_arrival, event_id: 1
      p.cutscene :ch6_cult_rumors
      p.cutscene :ch6_street_talk
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Ragnar (gym 2 trash-talk)
  #-----------------------------------------------------------------------------
  m.event 2, "Ragnar Gym 2" do |e|
    e.position 7, 5
    e.graphic "NPC Ragnar", direction: :left
    e.trigger :action

    e.page :first_meet do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch6_ragnar_gym2, event_id: 2
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Ragnar: I already have the badge. Catch up, slowpoke!')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Gym 2 (Karel)
  #-----------------------------------------------------------------------------
  m.event 3, "Karel" do |e|
    e.position 11, 6
    e.graphic "NPC Karel", direction: :down
    e.trigger :action

    e.page :pre do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch6_gym2_building, event_id: 3
      p.cutscene :ch6_gym2_prep
      p.cutscene :ch6_gym2_leader_intro
      p.command :set_self_switch, 'A', true
    end

    e.page :gym_door do |p|
      p.condition_self_switch 'A', true
      p.condition_switch :ch6_gym2_done, false
      p.script "pbMessage('Karel: Step inside whenever you\\'re ready, kid!')"
    end

    e.page :idle do |p|
      p.condition_switch :ch6_gym2_done, true
      p.script "pbMessage('Karel: That step-pattern of your starter... I swear I\\'ve seen it before.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Gym 2 door
  #-----------------------------------------------------------------------------
  m.event 4, "Gym 2 Door" do |e|
    e.position 11, 7
    e.graphic "Object door", direction: :up
    e.trigger :player_touch

    e.page :default do |p|
      p.condition_switch :ch6_gym2_done, false
      # Inline gym 2 sequence (no separate map for brevity — battles trigger here)
      p.script <<~RUBY.strip
        pbFadeOutIn {
          pbCutscene(:ch6_gym2_victory)
          TrainerBattle.start(:LEADER_M, "Karel", 0)
          $game_switches[:ch6_gym2_done] = true
        }
      RUBY
    end

    e.page :enter_after do |p|
      p.condition_switch :ch6_gym2_done, true
      p.script "pbMessage('Karel: Come visit me in the studio anytime!')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Being followed cutscene (autorun mid-city)
  #-----------------------------------------------------------------------------
  m.event 5, "Being Followed" do |e|
    e.position 10, 10
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :followed do |p|
      p.condition_switch :ch6_gym2_done, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch6_being_followed, event_id: 5
      p.cutscene :ch6_old_district
      p.cutscene :ch6_shadow_encounter
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — Regrouping + Viktor intro + Champion-news clipping (v4 audit)
  #-----------------------------------------------------------------------------
  m.event 6, "Viktor" do |e|
    e.position 8, 11
    e.graphic "NPC Viktor", direction: :down
    e.trigger :action

    e.page :first_meet do |p|
      p.condition_self_switch 'A', false
      p.condition_switch :ch6_shadow_done, true
      p.cutscene :ch6_regrouping, event_id: 6
      p.cutscene :ch6_viktor_intro
      p.cutscene :ch6_night_thoughts
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Viktor: Catch you in Ravenwatch, cuties.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 7 — Trigger to set ch6_shadow_done switch (autorun after followed)
  #-----------------------------------------------------------------------------
  m.event 7, "Shadow Done" do |e|
    e.position 0, 0
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :set do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.script <<~RUBY.strip
        if $game_self_switches[[15, 5, 'A']]
          $game_switches[:ch6_shadow_done] = true
          $game_self_switches[[15, 7, 'A']] = true
        end
      RUBY
    end
  end

  #-----------------------------------------------------------------------------
  # Event 8 — Departure
  #-----------------------------------------------------------------------------
  m.event 8, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :ch6_gym2_done, false
      p.script "pbMessage('Gym 2 first.')"
    end

    e.page :open do |p|
      p.condition_switch :ch6_gym2_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch6_departure, event_id: 8
      p.command :set_self_switch, 'A', true
      p.script "pbFadeOutIn { pbWarp(16, 5, 3) }"   # Map 16 = Ch7 ambush forest
    end

    e.page :open_later do |p|
      p.condition_self_switch 'A', true
      p.script "pbFadeOutIn { pbWarp(16, 5, 3) }"
    end
  end
end
