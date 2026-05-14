#===============================================================================
# Map Events — Arceus to True Ending (Ch47-Ch55)
#===============================================================================
# The finale stretch. Arceus descends + Hoopa returns + Hoopa's
# Sanctuary recovery arc, return home, heroes' welcome, new beginnings,
# the wedding, final farewells, the road ahead, the true ending, and
# the sequel hook. Nine chapters compressed into one finale map.
#===============================================================================

MapEvents.define(47) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Arceus Descends (Ch47) + Hoopa returns
  #-----------------------------------------------------------------------------
  m.event 1, "Arceus Descends" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :arceus do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch47_intro, event_id: 1
      p.cutscene :ch47_arceus_appears
      p.cutscene :ch47_arceus_speaks
      p.cutscene :ch47_blessing
      p.cutscene :ch47_guardians_freed
      p.cutscene :ch47_hoopa_returns         # v2 audit — Hoopa restored
      p.cutscene :ch47_arceus_farewell
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch47_done, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Hoopa's Sanctuary recovery arc (Ch47.5, postgame-adjacent)
  #-----------------------------------------------------------------------------
  m.event 2, "Hoopa's Recovery" do |e|
    e.position 7, 6
    e.graphic "Pokemon Hoopa", direction: :down
    e.trigger :action

    e.page :recovery do |p|
      p.condition_switch :ch47_done, true
      p.condition_self_switch 'A', false
      p.cutscene :hoopa_first_day
      p.cutscene :hoopa_first_ring
      p.cutscene :hoopa_chooses_lyra
      p.cutscene :hoopa_first_request
      p.cutscene :hoopa_sanctuary_opens
      p.command :set_self_switch, 'A', true
    end

    e.page :shop do |p|
      p.condition_self_switch 'A', true
      p.cutscene :hoopa_shop_open
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Return Home + Heroes' Welcome (Ch48-49)
  #-----------------------------------------------------------------------------
  m.event 3, "Return Home" do |e|
    e.position 9, 8
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :homecoming do |p|
      p.condition_switch :ch47_done, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch48_intro, event_id: 3
      p.cutscene :ch48_astoria_farewell
      p.cutscene :ch48_ship_home
      p.cutscene :ch48_voyage_home
      p.cutscene :ch48_Asgheim_sighted
      p.cutscene :ch48_port_arrival
      p.cutscene :ch48_family_reunion
      # Sera romance arrival branch
      p.script <<~RUBY.strip
        if defined?(SCRomance) && SCRomance.is?(:sera_apprentice)
          GameData::Cutscene.play(:sera_path_ch48_quiet_arrival)
        end
      RUBY
      p.cutscene :ch49_intro
      p.cutscene :ch49_celebration
      p.cutscene :ch49_ceremony
      p.cutscene :ch49_medals
      p.cutscene :ch49_hoopa_cameo            # v2 audit
      p.cutscene :ch49_5_civilian_children    # v4 audit
      p.cutscene :ch49_guardians_reveal
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch49_done, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — New Beginnings + Wedding + Farewells (Ch50-53)
  #-----------------------------------------------------------------------------
  m.event 4, "The Wedding" do |e|
    e.position 6, 11
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :wedding do |p|
      p.condition_switch :ch49_done, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch50_intro, event_id: 4
      p.cutscene :ch50_sanctuary_restored
      p.cutscene :ch50_player_choice
      p.cutscene :ch50_ragnar_visit
      p.cutscene :ch50_moving_forward
      p.cutscene :ch50_sunset
      p.cutscene :ch50_5_kael_asks_marcus     # v2 audit pacing
      p.cutscene :ch51_intro
      p.cutscene :ch51_sanctuary_thriving
      p.cutscene :ch51_player_arrives
      p.cutscene :ch51_special_occasion
      p.cutscene :ch51_5_families_meet        # v2 audit pacing
      p.cutscene :ch51_preparations
      p.cutscene :ch52_intro
      p.cutscene :ch52_ceremony
      p.cutscene :ch52_vows
      p.cutscene :ch52_rings
      p.cutscene :ch52_kiss
      p.cutscene :ch52_celebration
      p.cutscene :ch53_intro
      p.cutscene :ch53_morning
      p.cutscene :ch53_promises
      p.cutscene :ch53_group_hug
      p.cutscene :ch53_departure
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch53_done, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — The Road Ahead + True Ending (Ch54-55) + Sequel Hook
  #-----------------------------------------------------------------------------
  m.event 5, "True Ending" do |e|
    e.position 8, 12
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :true_ending do |p|
      p.condition_switch :ch53_done, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch54_intro, event_id: 5
      p.cutscene :ch54_montage
      p.cutscene :ch54_reunion
      p.cutscene :ch54_legacy
      p.cutscene :ch55_intro
      p.cutscene :ch55_reflection
      p.cutscene :ch55_peace
      p.cutscene :ch55_guardians_speak
      p.cutscene :ch55_final_sunset
      p.cutscene :ch55_ending
      p.cutscene :ch55_credits_montage
      p.cutscene :ch55_true_ending
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch55_done, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — Sequel Hook (only if 5+ endings seen — checked by the arc)
  #-----------------------------------------------------------------------------
  m.event 6, "Sequel Hook" do |e|
    e.position 10, 12
    e.graphic "", direction: :down
    e.trigger :action

    e.page :hook do |p|
      p.condition_switch :ch55_done, true
      p.condition_self_switch 'A', false
      p.script <<~RUBY.strip
        if defined?(sc_check_sequel_unlock) && sc_check_sequel_unlock
          pbCutscene(:seq_invitation)
          pbCutscene(:seq_the_messenger)
          pbCutscene(:seq_old_friends)
          pbCutscene(:seq_the_question)
          pbCutscene(:seq_the_promise)
          pbCutscene(:seq_to_be_continued)
        else
          pbMessage('\\\\i[The Sanctuary is quiet. Some doors only open once you have walked every path.]')
        end
      RUBY
      p.command :set_self_switch, 'A', true
    end
  end
end
