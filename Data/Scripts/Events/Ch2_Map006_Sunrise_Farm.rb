#===============================================================================
# Map Events — Sunrise Farm (Ch2)
#===============================================================================
# Meeting Lyra. Pokemon introductions. Lyra's grandmother gives her the
# pendant. Farm tour. Sunset talk. Departure to Shadowfen.
#===============================================================================

MapEvents.define(6) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Farm arrival trigger (autorun on entry)
  #-----------------------------------------------------------------------------
  m.event 1, "Farm Arrival" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first_entry do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch2_farm_arrival, event_id: 1
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Lyra at the well
  #-----------------------------------------------------------------------------
  m.event 2, "Lyra" do |e|
    e.position 7, 5
    e.graphic "NPC Lyra", direction: :down
    e.trigger :action

    # First meeting — autorun chain
    e.page :first_meet do |p|
      p.condition_self_switch 'A', false
      p.condition_switch :ch1_left_dawnhaven, true
      p.trigger :autorun
      p.cutscene :ch2_meet_lyra, event_id: 2
      p.cutscene :ch2_pokemon_introductions
      p.cutscene :ch2_farm_tour
      p.cutscene :ch2_lyra_backstory
      p.cutscene :ch2_lyra_sister_mention
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch2_met_lyra, true
    end

    # Action after meeting
    e.page :after_meet do |p|
      p.condition_self_switch 'A', true
      p.condition_switch :ch2_pendant_given, false
      p.script "pbMessage('Lyra: Grandma\\'s baking. \\\\nShe wants to talk to me before we leave.')"
    end

    # After grandma scene
    e.page :ready_to_leave do |p|
      p.condition_switch :ch2_pendant_given, true
      p.script "pbMessage('Lyra: Let\\'s head for Shadowfen when you\\'re ready, \\PN.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Grandmother (gives Lyra the pendant)
  #-----------------------------------------------------------------------------
  m.event 3, "Lyra's Grandmother" do |e|
    e.position 10, 5
    e.graphic "NPC Grandmother", direction: :down
    e.trigger :action

    e.page :pendant do |p|
      p.condition_switch :ch2_met_lyra, true
      p.condition_self_switch 'A', false
      p.cutscene :ch2_grandmother_warning, event_id: 3
      p.cutscene :ch2_grandmother_stories
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch2_pendant_given, true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Grandmother: Take care of my granddaughter, \\PN.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Sunset talk trigger (autorun late in the day)
  #-----------------------------------------------------------------------------
  m.event 4, "Sunset" do |e|
    e.position 8, 8
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :sunset_scene do |p|
      p.condition_switch :ch2_pendant_given, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch2_sunset_talk, event_id: 4
      p.cutscene :ch2_shared_dream
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch2_sunset_done, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Departure trigger at the south gate
  #-----------------------------------------------------------------------------
  m.event 5, "South Gate" do |e|
    e.position 12, 14
    e.graphic "Object gate", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :ch2_sunset_done, false
      p.script "pbMessage('Better stay until evening.')"
    end

    e.page :departure do |p|
      p.condition_switch :ch2_sunset_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch2_departure_farm, event_id: 5
      p.cutscene :ch2_road_to_shadowfen
      p.command :set_self_switch, 'A', true
      p.script "pbFadeOutIn { pbWarp(7, 5, 3) }"   # Map 7 = Shadowfen
    end

    e.page :open do |p|
      p.condition_self_switch 'A', true
      p.script "pbFadeOutIn { pbWarp(7, 5, 3) }"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — Willow's Eevee (Lyra's partner — flavour interaction)
  #-----------------------------------------------------------------------------
  m.event 6, "Willow (Eevee)" do |e|
    e.position 6, 6
    e.graphic "Pokemon Eevee", direction: :down
    e.trigger :action

    e.page :greet do |p|
      p.condition_switch :ch2_met_lyra, true
      p.script "pbMessage('Willow rubs against your leg. \\\\nThe Eevee approves.')"
    end
  end
end
