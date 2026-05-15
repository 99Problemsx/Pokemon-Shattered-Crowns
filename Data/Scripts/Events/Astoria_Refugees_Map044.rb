#===============================================================================
# Map Events — Astoria Refugee Quarter (Map 44 extension)
#===============================================================================
# Seven refugee NPCs placed on Map 44 (Fracture). Each runs one of the
# astoria_sq_* side quests defined in Astoria_Refugee_Quests.rb. Available
# after :ch38_complete switch (Astoria arc unlocked).
#===============================================================================

MapEvents.define(44) do |m|
  # All seven only appear once Ch38 has been completed.
  guard = :ch38_complete

  #-----------------------------------------------------------------------------
  # Event 10 — Elder Anya
  #-----------------------------------------------------------------------------
  m.event 10, "Elder Anya" do |e|
    e.position 16, 12
    e.graphic "NPC Anya", direction: :down
    e.trigger :action

    e.page :intro do |p|
      p.condition_switch guard, true
      p.condition_switch :sq_anya_started, false
      p.cutscene :sq_astoria_anya_intro
      p.command :set_switch, :sq_anya_started, true
    end

    e.page :active do |p|
      p.condition_switch :sq_anya_started, true
      p.condition_switch :sq_anya_done, false
      p.script "pbMessage('Anya: Three small things. Take your time.')"
    end

    e.page :complete do |p|
      p.condition_switch :sq_anya_done, true
      p.script "pbMessage('Anya: My nights are quiet again. Thank you, child.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 11 — Kell the Net-mender
  #-----------------------------------------------------------------------------
  m.event 11, "Kell" do |e|
    e.position 8, 18
    e.graphic "NPC Kell", direction: :down
    e.trigger :action

    e.page :intro do |p|
      p.condition_switch guard, true
      p.condition_switch :sq_kell_started, false
      p.cutscene :sq_astoria_kell_intro
      p.command :set_switch, :sq_kell_started, true
    end

    e.page :complete do |p|
      p.condition_switch :sq_kell_done, true
      p.script "pbMessage('Kell: *holding the carving close* My sister lives on in this. Thank you.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 12 — Vora the Salt-singer
  #-----------------------------------------------------------------------------
  m.event 12, "Vora" do |e|
    e.position 14, 8
    e.graphic "NPC Vora", direction: :down
    e.trigger :action

    e.page :intro do |p|
      p.condition_switch guard, true
      p.condition_switch :sq_vora_started, false
      p.cutscene :sq_astoria_vora_intro
      p.command :set_switch, :sq_vora_started, true
    end

    e.page :complete do |p|
      p.condition_switch :sq_vora_done, true
      p.script "pbMessage('Vora: *humming the full song now* — Mother would be proud. Thank you.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 13 — Tobin the Boatwright
  #-----------------------------------------------------------------------------
  m.event 13, "Tobin" do |e|
    e.position 6, 22
    e.graphic "NPC Tobin", direction: :left
    e.trigger :action

    e.page :intro do |p|
      p.condition_switch guard, true
      p.condition_switch :sq_tobin_started, false
      p.cutscene :sq_astoria_tobin_intro
      p.command :set_switch, :sq_tobin_started, true
    end

    e.page :complete do |p|
      p.condition_switch :sq_tobin_done, true
      p.script "pbMessage('Tobin: The boat sails next moon. You should come. Bring your friends.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 14 — Mira the Child
  #-----------------------------------------------------------------------------
  m.event 14, "Mira" do |e|
    e.position 18, 10
    e.graphic "NPC Child Mira", direction: :down
    e.trigger :action

    e.page :intro do |p|
      p.condition_switch guard, true
      p.condition_switch :sq_mira_started, false
      p.cutscene :sq_astoria_mira_intro
      p.command :set_switch, :sq_mira_started, true
    end

    e.page :complete do |p|
      p.condition_switch :sq_mira_done, true
      p.script "pbMessage('Mira: *Buizel curled in her lap, asleep* — She is okay. She is okay. Thank you, thank you.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 15 — Old Halvor
  #-----------------------------------------------------------------------------
  m.event 15, "Old Halvor" do |e|
    e.position 22, 6
    e.graphic "NPC Old Man", direction: :down
    e.trigger :action

    e.page :intro do |p|
      p.condition_switch guard, true
      p.condition_switch :sq_halvor_started, false
      p.cutscene :sq_astoria_halvor_intro
      p.command :set_switch, :sq_halvor_started, true
    end

    e.page :complete do |p|
      p.condition_switch :sq_halvor_done, true
      p.script "pbMessage('Old Halvor: *nodding slowly* You have the old hands. The nests are yours to find.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 16 — The Three Sisters quest (Sela kicks it off)
  #-----------------------------------------------------------------------------
  m.event 16, "Three Sisters Quest Board" do |e|
    e.position 12, 14
    e.graphic "Object notice board", direction: :down
    e.trigger :action

    e.page :intro do |p|
      p.condition_switch guard, true
      p.condition_switch :sq_three_sisters_started, false
      p.cutscene :sq_astoria_sisters_intro
      p.command :set_switch, :sq_three_sisters_started, true
    end

    e.page :complete do |p|
      p.condition_switch :sq_three_sisters_done, true
      p.script "pbMessage('A faded notice still hangs — \"Lia, Bryn, Ase reunited. The Tavern bought their first round.\"')"
    end
  end
end
