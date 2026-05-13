#===============================================================================
# Map Events — Verdantia Town (Ch4 — first gym + ch4_5 optional arc)
#===============================================================================
# Ragnar appears again. Gym Leader Fern is introduced. After the gym
# battle, the Verdantia Truth side arc (Ch4.5) becomes available.
# Then Fern's warning + evening reflection lead into Ch5.
#===============================================================================

MapEvents.define(11) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Ragnar (returning)
  #-----------------------------------------------------------------------------
  m.event 1, "Ragnar" do |e|
    e.position 6, 5
    e.graphic "NPC Ragnar", direction: :left
    e.trigger :action

    e.page :appears do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch4_ragnar_appears, event_id: 1
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Ragnar: I\\'m doing the gym before you, just so you know!')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Gym Leader Fern (outside the gym, introduces herself)
  #-----------------------------------------------------------------------------
  m.event 2, "Fern" do |e|
    e.position 10, 6
    e.graphic "NPC Fern", direction: :down
    e.trigger :action

    e.page :intro do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch4_gym_leader_intro, event_id: 2
      p.cutscene :ch4_gym1_prep
      p.command :set_self_switch, 'A', true
    end

    # After gym battle — invites trio to greenhouse for Verdantia Truth arc
    e.page :verdantia_invite do |p|
      p.condition_switch :ch4_gym1_done, true
      p.condition_self_switch 'B', false
      p.cutscene :ch4_5_verdantia_invitation
      p.cutscene :ch4_5_greenhouse_tea
      p.cutscene :ch4_5_fern_question
      p.cutscene :ch4_5_astoria_signature
      p.cutscene :ch4_5_lyra_grandmother_call
      p.cutscene :ch4_5_kael_reflects
      p.cutscene :ch4_5_arc_end
      p.command :set_self_switch, 'B', true
    end

    # Post-arc dialogue
    e.page :idle do |p|
      p.condition_self_switch 'B', true
      p.script "pbMessage('Fern: Third ring on the phone. Always the third ring.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Verdantia Gym door
  #-----------------------------------------------------------------------------
  m.event 3, "Gym Door" do |e|
    e.position 10, 7
    e.graphic "Object door", direction: :up
    e.trigger :player_touch

    e.page :open do |p|
      p.script "pbFadeOutIn { pbWarp(12, 5, 9) }"   # Map 12 = Verdantia Gym interior
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Civilian shopkeeper (v4 audit: ch7_5 — placed here in Verdantia
  # because the v4 audit anchors it to Verdantia)
  #-----------------------------------------------------------------------------
  m.event 4, "Verdantia Shopkeeper" do |e|
    e.position 4, 8
    e.graphic "NPC 04", direction: :down
    e.trigger :action

    # Fires after Ch7 cult attack (set via global switch)
    e.page :after_attack do |p|
      p.condition_switch :ch7_attack_aftermath, true
      p.condition_self_switch 'A', false
      p.cutscene :ch7_5_civilian_shopkeeper, event_id: 4
      p.command :set_self_switch, 'A', true
    end

    # Pre-attack flavour
    e.page :flavour do |p|
      p.condition_self_switch 'A', false
      p.script "pbMessage('Shopkeeper: Welcome to Verdantia! Berry pies, fresh daily.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Fern's warning + departure
  #-----------------------------------------------------------------------------
  m.event 5, "Fern Warning" do |e|
    e.position 5, 12
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :warning do |p|
      p.condition_switch :ch4_gym1_done, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch4_fern_warning, event_id: 5
      p.cutscene :ch4_evening_reflection
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch4_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — South exit (to Ironvale / Ch5)
  #-----------------------------------------------------------------------------
  m.event 6, "South Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :locked do |p|
      p.condition_switch :ch4_complete, false
      p.script "pbMessage('First gym first, then south.')"
    end

    e.page :open do |p|
      p.condition_switch :ch4_complete, true
      p.script "pbFadeOutIn { pbWarp(13, 5, 3) }"   # Map 13 = Ironvale
    end
  end
end
