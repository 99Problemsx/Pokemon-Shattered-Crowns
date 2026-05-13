#===============================================================================
# Map Events — Mountain Path (Ch10 — to the Summit Temple)
#===============================================================================
# Ragnar surprise! Mountain ascent. Wild encounter. Cave. Campfire bond.
# Lyra opens up. Stargazing. Kael memory flash. Mira memory. Ancient
# shrine. Dangerous crossing. Temple sighted. Lyra guardian sense.
# Entering the temple.
#===============================================================================

MapEvents.define(19) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Ragnar surprise + mountain base
  #-----------------------------------------------------------------------------
  m.event 1, "Mountain Base" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :enter do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch10_ragnar_surprise, event_id: 1
      p.cutscene :ch10_mountain_base
      p.cutscene :ch10_first_ascent
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Wild encounter trigger
  #-----------------------------------------------------------------------------
  m.event 2, "Mountain Wild" do |e|
    e.position 7, 6
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :encounter do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch10_wild_encounter, event_id: 2
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Mountain cave (transfers + campfire)
  #-----------------------------------------------------------------------------
  m.event 3, "Cave Entrance" do |e|
    e.position 10, 7
    e.graphic "Object cave", direction: :up
    e.trigger :player_touch

    e.page :enter do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch10_mountain_cave, event_id: 3
      p.cutscene :ch10_campfire_bond
      p.cutscene :ch10_lyra_opens_up
      p.cutscene :ch10_stargazing
      p.cutscene :ch10_kael_memory_flash
      p.cutscene :ch10_mira_memory
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch10_cave_done, true
    end

    e.page :revisit do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('The campfire ashes are still warm.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Ancient shrine
  #-----------------------------------------------------------------------------
  m.event 4, "Ancient Shrine" do |e|
    e.position 8, 10
    e.graphic "Object shrine", direction: :down
    e.trigger :action

    e.page :read do |p|
      p.condition_switch :ch10_cave_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch10_ancient_shrine, event_id: 4
      p.cutscene :ch10_shrine_inscription
      p.command :set_self_switch, 'A', true
    end

    e.page :reread do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('The shrine inscription reads in three languages, all saying the same thing.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Dangerous crossing + temple sighted
  #-----------------------------------------------------------------------------
  m.event 5, "Dangerous Crossing" do |e|
    e.position 10, 12
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :cross do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch10_dangerous_crossing, event_id: 5
      p.cutscene :ch10_temple_in_sight
      p.cutscene :ch10_lyra_guardian_sense
      p.cutscene :ch10_entering_temple
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch10_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — Temple entrance (transfer to Ch11)
  #-----------------------------------------------------------------------------
  m.event 6, "Temple Entrance" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :default do |p|
      p.condition_switch :ch10_complete, true
      p.script "pbFadeOutIn { pbWarp(20, 5, 12) }"   # Map 20 = Summit Temple
    end
  end
end
