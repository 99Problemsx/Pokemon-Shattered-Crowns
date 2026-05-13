#===============================================================================
# Map Events — Forest Path (Ch4 — Strange Pokémon)
#===============================================================================
# Wild Pokémon acting strange. Fleeing creatures. Eerie clearing with
# an ancient tablet. The trio approaches the first town.
#===============================================================================

MapEvents.define(10) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Forest path entry (autorun)
  #-----------------------------------------------------------------------------
  m.event 1, "Forest Entry" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first_entry do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch4_forest_path, event_id: 1
      p.cutscene :ch4_strange_pokemon
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Fleeing Stantler (decorative, runs across path)
  #-----------------------------------------------------------------------------
  m.event 2, "Fleeing Stantler" do |e|
    e.position 8, 6
    e.graphic "Pokemon Stantler", direction: :left
    e.trigger :player_touch

    e.page :sighted do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch4_fleeing_pokemon, event_id: 2
      p.command :set_self_switch, 'A', true
    end

    e.page :gone do |p|
      p.condition_self_switch 'A', true
      p.graphic "", direction: :down
      p.through true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Eerie clearing trigger
  #-----------------------------------------------------------------------------
  m.event 3, "Eerie Clearing" do |e|
    e.position 10, 9
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :enter do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch4_eerie_clearing, event_id: 3
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Ancient tablet (interactable, marks-aware)
  #-----------------------------------------------------------------------------
  m.event 4, "Ancient Tablet" do |e|
    e.position 10, 8
    e.graphic "Object tablet", direction: :down
    e.trigger :action

    e.page :first_read do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch4_ancient_tablet, event_id: 4
      p.cutscene :ch4_tablet_reaction
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch4_tablet_read, true
    end

    e.page :reread do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('The tablet hums faintly when you stand near it. \\\\nThe runes have not been translated in two thousand years.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Pokemon return after tablet (autorun)
  #-----------------------------------------------------------------------------
  m.event 5, "Pokemon Return" do |e|
    e.position 10, 11
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :returning do |p|
      p.condition_switch :ch4_tablet_read, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch4_pokemon_returning, event_id: 5
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — South exit to Verdantia
  #-----------------------------------------------------------------------------
  m.event 6, "To Verdantia" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :ch4_tablet_read, false
      p.script "pbMessage('Something is wrong here. \\\\nWe should investigate that clearing first.')"
    end

    e.page :open do |p|
      p.condition_switch :ch4_tablet_read, true
      p.cutscene :ch4_first_town_arrival, event_id: 6
      p.script "pbFadeOutIn { pbWarp(11, 5, 3) }"   # Map 11 = Verdantia
    end
  end
end
