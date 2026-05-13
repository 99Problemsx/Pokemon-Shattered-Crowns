#===============================================================================
# Map Events — Ch0 Prologue: Marcus's House Kitchen (22 years ago)
#===============================================================================
# Playable prologue map. Player controls a 19-year-old Marcus. The Aldric
# letter scene plays here, then Aurora walks in and they decide to go to
# the lab.
#
# Map ID 100 (reserved range for Prologue-only maps).
#===============================================================================

MapEvents.define(100) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — The Letter (autorun on first entry)
  #-----------------------------------------------------------------------------
  m.event 1, "Aldric's Letter" do |e|
    e.position 0, 0
    e.graphic "", direction: :down   # invisible trigger
    e.trigger :autorun

    e.page :on_entry do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :pro_1_the_letter, event_id: 1
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Marcus's Young Charizard (decoration, talks if examined)
  #-----------------------------------------------------------------------------
  m.event 2, "Young Charizard" do |e|
    e.position 4, 5
    e.graphic "Pokemon Charizard", direction: :down
    e.trigger :action

    e.page :idle do |p|
      p.condition_self_switch 'A', true   # only after letter scene
      p.script "pbMessage('Charizard rumbles low. \\\\nIt already knows something is coming.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Aurora walks in (autorun after letter)
  #-----------------------------------------------------------------------------
  m.event 3, "Aurora (Young)" do |e|
    e.position 8, 5
    e.graphic "NPC Aurora Young", direction: :down
    e.trigger :autorun

    e.page :enters_house do |p|
      # Fire after letter scene ends (event 1 self-switch A), only once
      p.condition_self_switch 'A', false
      p.condition_switch :pro_letter_read, true
      p.through true
      p.script "pbMoveRoute($game_map.events[3], [PBMoveRoute::DOWN] * 4)"
      p.command :set_self_switch, 'A', true
      # Continue into the Calling decision happens at the lab door
    end

    e.page :next_to_marcus do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Aurora: ...get your boots. We\\'re going to the lab.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Front door (transfers to the Prologue lab map)
  #-----------------------------------------------------------------------------
  m.event 4, "Front Door" do |e|
    e.position 10, 9
    e.graphic "Object door", direction: :up
    e.trigger :player_touch

    e.page :unlocked do |p|
      p.condition_self_switch 'A', false
      p.condition_switch :pro_letter_read, true
      # Must have Aurora present (event 3 self-switch A)
      p.script <<~RUBY.strip
        if $game_self_switches[[100, 3, 'A']]
          pbFadeOutIn { pbWarp(101, 6, 8) }   # Map 101 = Aldric's Lab (Prologue)
        else
          pbMessage('Marcus: ...I should wait for Aurora.')
        end
      RUBY
    end
  end
end
