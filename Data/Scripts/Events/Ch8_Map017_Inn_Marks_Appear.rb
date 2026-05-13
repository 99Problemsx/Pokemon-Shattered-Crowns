#===============================================================================
# Map Events — Inn (Ch8 — The Marks Appear, closes Act 1)
#===============================================================================
# Peaceful night → dream → marks appear → waking panic → friends have
# marks → Ragnar worried → comparing → mark meanings → marks react →
# pokemon reactions → Kael's memory → Lyra's hope → player resolve →
# departure. Plus Ch8.5 Kael's Nightmare side-arc as optional follow-up.
#
# Also fires v3 audit starter-sense cutscene first (the starter detects
# the marks before they visibly appear).
#===============================================================================

MapEvents.define(17) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Inn arrival + peaceful night
  #-----------------------------------------------------------------------------
  m.event 1, "Inn Arrival" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first_entry do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch8_peaceful_night, event_id: 1
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Sleeping in the bed (the marks dream)
  #-----------------------------------------------------------------------------
  m.event 2, "Inn Bed" do |e|
    e.position 4, 6
    e.graphic "Object bed", direction: :down
    e.trigger :action

    e.page :sleep do |p|
      p.condition_self_switch 'A', false
      # Starter's pre-mark sensing (v3 audit beat) fires first
      p.cutscene :ch8_starter_senses, event_id: 2
      p.cutscene :ch8_dream_begins
      p.cutscene :ch8_marks_appear
      p.cutscene :ch8_waking_panic
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch8_marks_visible, true
    end

    e.page :slept do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('The mark on your wrist hasn\\'t faded.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Lyra and Kael with marks (autorun after dream)
  #-----------------------------------------------------------------------------
  m.event 3, "Friends Marked" do |e|
    e.position 6, 6
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :compare do |p|
      p.condition_switch :ch8_marks_visible, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch8_friends_have_marks, event_id: 3
      p.cutscene :ch8_ragnar_worried
      p.cutscene :ch8_comparing_marks
      p.cutscene :ch8_mark_meanings
      p.cutscene :ch8_marks_react
      p.cutscene :ch8_pokemon_reactions
      p.cutscene :ch8_kael_memory
      p.cutscene :ch8_lyra_hope
      p.cutscene :ch8_player_determination
      p.cutscene :ch8_decision_to_continue
      p.cutscene :ch8_marks_bond
      p.cutscene :ch8_departure_scene
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch8_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Ch8.5 Kael's Nightmare (optional, fires later that night)
  #-----------------------------------------------------------------------------
  m.event 4, "Kael Nightmare" do |e|
    e.position 8, 6
    e.graphic "NPC Kael", direction: :left
    e.trigger :action

    e.page :ch85_offer do |p|
      p.condition_switch :ch8_complete, true
      p.condition_self_switch 'A', false
      p.cutscene :ch8_5_intro, event_id: 4
      p.cutscene :ch8_5_cant_sleep
      p.cutscene :ch8_5_memory_begins
      p.cutscene :ch8_5_mira_found
      p.cutscene :ch8_5_the_push
      p.cutscene :ch8_5_aftermath
      p.cutscene :ch8_5_finding_shadow
      p.cutscene :ch8_5_shadow_bond
      p.cutscene :ch8_5_back_to_present
      p.cutscene :ch8_5_yveltal_first_whisper
      p.cutscene :ch8_5_fire_truth_teased
      p.cutscene :ch8_5_lyra_wakes
      p.cutscene :ch8_5_almost_opening_up
      p.cutscene :ch8_5_lyra_stays
      p.cutscene :ch8_5_pn_joins
      p.cutscene :ch8_5_watching_dawn
      p.cutscene :ch8_5_resolution
      p.cutscene :ch8_5_ending
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Kael: Thanks for staying up. \\\\nI haven\\'t told anyone that. About Mira.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Inn keeper
  #-----------------------------------------------------------------------------
  m.event 5, "Innkeeper" do |e|
    e.position 9, 4
    e.graphic "NPC 08", direction: :down
    e.trigger :action

    e.page :flavour do |p|
      p.script "pbMessage('Innkeeper: Long road south. Stay as long as you need.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — Departure (to Act 2 — Ch9 Professor's lab travel)
  #-----------------------------------------------------------------------------
  m.event 6, "South Exit" do |e|
    e.position 12, 14
    e.graphic "Object door", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :ch8_complete, false
      p.script "pbMessage('We need to sleep first.')"
    end

    e.page :open do |p|
      p.condition_switch :ch8_complete, true
      # Chapter 8 closure achievement
      p.script "pbAchievement(:ach_mark_awakened) rescue nil"
      p.script "pbFadeOutIn { pbWarp(18, 5, 3) }"   # Map 18 = Ch9 road
    end
  end
end
