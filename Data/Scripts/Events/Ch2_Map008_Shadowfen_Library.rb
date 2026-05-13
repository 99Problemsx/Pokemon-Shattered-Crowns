#===============================================================================
# Map Events — Shadowfen Library (Ch2 — library exploration)
#===============================================================================
# Old books. Kael's research material. The exploration triggers a few
# small lore beats and unlocks the trio-forming battle outside.
#===============================================================================

MapEvents.define(8) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Old librarian
  #-----------------------------------------------------------------------------
  m.event 1, "Librarian" do |e|
    e.position 4, 5
    e.graphic "NPC 09", direction: :down
    e.trigger :action

    e.page :greeting do |p|
      p.script "pbMessage('Librarian: Quiet, please. The books remember louder than the readers.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Ancient tome (Kael's research book) — autorun first read
  #-----------------------------------------------------------------------------
  m.event 2, "Ancient Tome" do |e|
    e.position 8, 5
    e.graphic "Object book", direction: :down
    e.trigger :action

    e.page :first_read do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch2_library_exploration, event_id: 2
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch2_library_done, true
    end

    e.page :reread do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('The tome\\'s ink is fading. \\\\nKael said it was three centuries old.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Side bookshelf (flavour)
  #-----------------------------------------------------------------------------
  m.event 3, "Side Shelf" do |e|
    e.position 12, 5
    e.graphic "Object bookshelf", direction: :down
    e.trigger :action

    e.page :flavour do |p|
      p.script "pbMessage('A row of children\\'s books about the Three Chosen. \\\\nFrom before the stories were forbidden.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Exit back to Shadowfen
  #-----------------------------------------------------------------------------
  m.event 4, "Library Exit" do |e|
    e.position 5, 12
    e.graphic "Object door", direction: :down
    e.trigger :player_touch

    e.page :default do |p|
      p.script "pbFadeOutIn { pbWarp(7, 8, 8) }"   # Map 7 = Shadowfen exterior
    end
  end
end
