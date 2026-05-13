#===============================================================================
# Map Events — Dawnhaven Village (Ch1)
#===============================================================================
# The walk from home to the lab. Three NPCs greet the player (flavour),
# Ragnar runs in from the side, and a sign points to the lab.
#===============================================================================

MapEvents.define(3) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Old Man (flavour NPC, action only)
  #-----------------------------------------------------------------------------
  m.event 1, "Old Man" do |e|
    e.position 7, 12
    e.graphic "NPC 05", direction: :down
    e.trigger :action

    e.page :greeting do |p|
      p.script "pbMessage('Old Man: Off to get your starter, \\PN? Good luck out there!')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Mother + Daughter pair (flavour)
  #-----------------------------------------------------------------------------
  m.event 2, "Young Girl" do |e|
    e.position 14, 10
    e.graphic "NPC 06", direction: :down
    e.trigger :action

    e.page :greeting do |p|
      p.script "pbMessage('Young Girl: Mommy, mommy! \\PN\\'s gonna be a trainer!')"
    end
  end

  m.event 3, "Mother" do |e|
    e.position 15, 10
    e.graphic "NPC 04", direction: :left
    e.trigger :action

    e.page :greeting do |p|
      p.script "pbMessage('Mother: Maybe someday you will too, dear.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Ragnar runs in (player-touch, autorun first time)
  #-----------------------------------------------------------------------------
  m.event 4, "Ragnar" do |e|
    e.position 11, 8
    e.graphic "NPC Ragnar", direction: :left
    e.trigger :player_touch

    # First encounter — runs the Ragnar-appears cutscene
    e.page :first_meet do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch1_ragnar_appears, event_id: 4
      p.command :set_self_switch, 'A', true
    end

    # After lab visit — Ragnar already left for his journey
    e.page :left_for_journey do |p|
      p.condition_switch :ch1_after_rival_battle, true
      # Hide event by giving it no graphic + through
      p.graphic "", direction: :down
      p.through true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Sign pointing to Aldric's Lab
  #-----------------------------------------------------------------------------
  m.event 5, "Lab Sign" do |e|
    e.position 12, 6
    e.graphic "Object sign", direction: :down
    e.trigger :action

    e.page :sign do |p|
      p.script "pbMessage('\\\\bProfessor Aldric\\'s Lab\\\\b\\\\nFor trainers in search of a partner.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — Lab door (transfers to Map 4)
  #-----------------------------------------------------------------------------
  m.event 6, "Lab Door" do |e|
    e.position 12, 5
    e.graphic "Object door", direction: :up
    e.trigger :player_touch

    e.page :default do |p|
      p.script "pbFadeOutIn { pbWarp(4, 6, 8) }"   # Map 4 = Aldric's Lab
    end
  end

  #-----------------------------------------------------------------------------
  # Event 7 — Route 1 gate (locked until you've got your starter)
  #-----------------------------------------------------------------------------
  m.event 7, "Route 1 Gate" do |e|
    e.position 18, 7
    e.graphic "Object gate", direction: :left
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :ch1_got_starter, false
      p.script "pbMessage('You shouldn\\'t leave without your first Pokémon!')"
    end

    e.page :open do |p|
      p.condition_switch :ch1_got_starter, true
      p.script "pbFadeOutIn { pbWarp(5, 1, 10) }"   # Map 5 = Route 1
    end
  end
end
