#===============================================================================
# Map Events — Dawnhaven Kitchen (Ch1)
#===============================================================================
# Mom + Dad + the front door. Triggers the breakfast cutscene and the
# dad-gift cutscene before letting the player leave.
#===============================================================================

MapEvents.define(2) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Mom (Aurora)
  #-----------------------------------------------------------------------------
  m.event 1, "Mom" do |e|
    e.position 6, 5
    e.graphic "NPC 03", direction: :down
    e.trigger :action

    # Page 1: First entry — autorun the breakfast scene
    e.page :first_visit do |p|
      p.condition_self_switch 'A', false
      p.trigger :autorun
      p.cutscene :ch1_breakfast_with_family, event_id: 1
      p.command :set_self_switch, 'A', true
    end

    # Page 2: After breakfast — short Mom dialogue on action
    e.page :after_breakfast do |p|
      p.condition_self_switch 'A', true
      p.condition_self_switch 'B', false
      p.script "pbMessage('Mom: Don\\'t forget to thank Professor Aldric for me, sweetheart!')"
    end

    # Page 3: After the player has met Professor Aldric (set by Ch1 lab cutscene)
    e.page :after_lab do |p|
      p.condition_switch :ch1_met_aldric, true
      p.script "pbMessage('Mom: He said you have your father\\'s spirit. I knew it.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Dad (Marcus)
  #-----------------------------------------------------------------------------
  m.event 2, "Dad" do |e|
    e.position 8, 5
    e.graphic "NPC 02", direction: :left
    e.trigger :action

    e.page :dad_gift do |p|
      p.condition_self_switch 'A', false
      p.condition_switch :ch1_breakfast_done, true
      p.cutscene :ch1_dad_gift, event_id: 2
      p.command :set_self_switch, 'A', true
    end

    e.page :after_gift do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Dad (Marcus): Take care of her out there, kid.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Front door (transfers to Dawnhaven Village)
  #-----------------------------------------------------------------------------
  m.event 3, "Front Door" do |e|
    e.position 10, 10
    e.graphic "Object door", direction: :up
    e.trigger :player_touch

    e.page :default do |p|
      # Block exit until the player has talked to Mom AND Dad
      p.script <<~RUBY.strip
        if $game_self_switches[[2, 1, 'A']] && $game_self_switches[[2, 2, 'A']]
          pbFadeOutIn { pbWarp(3, 12, 14) }   # Map 3 = Dawnhaven Village
        else
          pbMessage('You shouldn\\'t leave before saying goodbye to your parents.')
        end
      RUBY
    end
  end
end
