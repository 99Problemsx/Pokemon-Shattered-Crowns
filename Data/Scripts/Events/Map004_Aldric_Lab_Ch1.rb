#===============================================================================
# Map Events — Aldric's Lab (Ch1)
#===============================================================================
# Player and Ragnar both arrive. Aldric talks, presents the three balls,
# player gets their starter from Dad's egg-gift, Ragnar picks his Pikachu
# from the three lab balls. Then the first rival battle outside the lab.
#===============================================================================

MapEvents.define(4) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Professor Aldric
  #-----------------------------------------------------------------------------
  m.event 1, "Professor Aldric" do |e|
    e.position 7, 5
    e.graphic "NPC Aldric", direction: :down
    e.trigger :action

    # First entry — autorun the lab arrival + starter sequence
    e.page :lab_arrival do |p|
      p.condition_self_switch 'A', false
      p.trigger :autorun
      p.cutscene :ch1_lab_arrival, event_id: 1
      p.cutscene :ch1_professor_talk
      p.cutscene :ch1_get_starter
      p.cutscene :ch1_starter_bond
      p.cutscene :ch1_5_starter_naming      # v3 naming prompt
      p.cutscene :ch1_6_starter_origin_clarified  # v4 origin clarification
      p.cutscene :ch1_ragnar_starter
      p.command :set_switch, :ch1_got_starter, true
      p.command :set_switch, :ch1_met_aldric, true
      p.command :set_self_switch, 'A', true
    end

    # Page 2: After starter received — talk dialogue
    e.page :after_starter do |p|
      p.condition_self_switch 'A', true
      p.condition_switch :ch1_received_pokedex, false
      p.cutscene :ch1_receive_pokedex
      p.command :set_switch, :ch1_received_pokedex, true
    end

    # Page 3: After pokedex — fond goodbye line
    e.page :after_pokedex do |p|
      p.condition_switch :ch1_received_pokedex, true
      p.script "pbMessage('Professor Aldric: Take care of her out there, \\PN. I am very proud of you.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Ragnar (waiting at the back of the lab)
  #-----------------------------------------------------------------------------
  m.event 2, "Ragnar" do |e|
    e.position 9, 5
    e.graphic "NPC Ragnar", direction: :left
    e.trigger :action

    e.page :pre_starter do |p|
      p.condition_switch :ch1_got_starter, false
      p.script "pbMessage('Ragnar: HURRY UP, \\PN! Stupid Pikachu is RIGHT THERE!')"
    end

    e.page :post_starter do |p|
      p.condition_switch :ch1_got_starter, true
      p.condition_self_switch 'A', false
      p.script "pbMessage('Ragnar: All right, partner. We meet outside!')"
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Exit door
  #-----------------------------------------------------------------------------
  m.event 3, "Exit" do |e|
    e.position 6, 9
    e.graphic "Object door", direction: :down
    e.trigger :player_touch

    e.page :pre_starter do |p|
      p.condition_switch :ch1_got_starter, false
      p.script "pbMessage('Better not leave without your partner!')"
    end

    e.page :first_battle do |p|
      p.condition_switch :ch1_got_starter, true
      p.condition_self_switch 'A', false
      # Fade out, warp outside, then run the rival battle cutscene
      p.script "pbFadeOutIn { pbWarp(3, 12, 6) }"
      p.cutscene :ch1_first_rival_battle, event_id: 3
      p.cutscene :ch1_after_rival_battle
      p.command :set_switch, :ch1_after_rival_battle, true
      p.command :set_self_switch, 'A', true
    end

    e.page :normal_exit do |p|
      p.condition_self_switch 'A', true
      p.script "pbFadeOutIn { pbWarp(3, 12, 6) }"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Lab assistant (flavour)
  #-----------------------------------------------------------------------------
  m.event 4, "Lab Assistant" do |e|
    e.position 3, 5
    e.graphic "NPC 07", direction: :right
    e.trigger :action

    e.page :greeting do |p|
      p.script "pbMessage('Lab Assistant: Three Pokéballs for three trainers... well, the Professor likes round numbers.')"
    end
  end
end
