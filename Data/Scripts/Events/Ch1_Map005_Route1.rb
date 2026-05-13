#===============================================================================
# Map Events — Route 1 (Ch1 → Ch2 bridge)
#===============================================================================
# First wild-encounter zone. The strange-dream cutscene fires after the
# first wild battle. Parents' goodbye scene plays just before exiting
# Dawnhaven on the south path.
#===============================================================================

MapEvents.define(5) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Parents' goodbye trigger (autorun on first entry)
  #-----------------------------------------------------------------------------
  m.event 1, "Parents Goodbye" do |e|
    e.position 5, 2
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first_entry do |p|
      p.condition_self_switch 'A', false
      p.condition_switch :ch1_got_starter, true
      p.through true
      p.cutscene :ch1_parents_goodbye, event_id: 1
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch1_left_dawnhaven, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — First wild battle trigger (autorun after walking forward)
  #-----------------------------------------------------------------------------
  m.event 2, "First Wild Battle" do |e|
    e.position 8, 8
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :first_wild do |p|
      p.condition_self_switch 'A', false
      p.condition_switch :ch1_left_dawnhaven, true
      p.through true
      p.cutscene :ch1_first_wild_battle, event_id: 2
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — The Strange Dream trigger (autorun after the first wild battle)
  #-----------------------------------------------------------------------------
  m.event 3, "Strange Dream" do |e|
    e.position 10, 11
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :dream do |p|
      p.condition_self_switch 'A', false
      p.condition_self_switch 'B', false
      # Fire after Wild Battle event (event 2's self-switch A is set)
      p.through true
      p.script <<~RUBY.strip
        if $game_self_switches[[5, 2, 'A']]
          pbCutscene(:ch1_strange_dream, event_id: 3)
          pbCutscene(:ch1_dream_details)
          $game_self_switches[[5, 3, 'A']] = true
        end
      RUBY
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Wild grass sign
  #-----------------------------------------------------------------------------
  m.event 4, "Trail Sign" do |e|
    e.position 4, 8
    e.graphic "Object sign", direction: :down
    e.trigger :action

    e.page :sign do |p|
      p.script "pbMessage('\\\\bRoute 1\\\\b\\\\nTo Sunrise Farm — south.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Route exit to Sunrise Farm
  #-----------------------------------------------------------------------------
  m.event 5, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :default do |p|
      p.through true
      p.script "pbFadeOutIn { pbWarp(6, 5, 3) }"   # Map 6 = Sunrise Farm
    end
  end
end
