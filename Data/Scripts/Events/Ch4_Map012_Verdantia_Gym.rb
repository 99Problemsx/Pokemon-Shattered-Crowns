#===============================================================================
# Map Events — Verdantia Gym Interior (Ch4 — Gym Leader Fern fight)
#===============================================================================

MapEvents.define(12) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Gym Trainer 1 (Bug Catcher Tier 1)
  #-----------------------------------------------------------------------------
  m.event 1, "Gym Trainer Yara" do |e|
    e.position 4, 6
    e.graphic "NPC Bug Catcher", direction: :down
    e.trigger :event_touch

    e.page :battle do |p|
      p.condition_self_switch 'A', false
      p.trainer_battle :BUGCATCHER, "Yara", 0
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Yara: Fern\\'s strategy is patience. Don\\'t rush her.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Gym Trainer 2 (Picnicker Tier 1)
  #-----------------------------------------------------------------------------
  m.event 2, "Gym Trainer Pell" do |e|
    e.position 8, 6
    e.graphic "NPC Picnicker", direction: :down
    e.trigger :event_touch

    e.page :battle do |p|
      p.condition_self_switch 'A', false
      p.trainer_battle :PICNICKER, "Pell", 0
      p.command :set_self_switch, 'A', true
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Pell: Good match!')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Gym Leader Fern (boss)
  #-----------------------------------------------------------------------------
  m.event 3, "Gym Leader Fern" do |e|
    e.position 6, 3
    e.graphic "NPC Fern", direction: :down
    e.trigger :action

    e.page :pre_battle do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch4_gym_battle, event_id: 3
      p.trainer_battle :LEADER_F, "Fern", 0
      p.cutscene :ch4_gym1_victory
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch4_gym1_done, true
      # First badge achievement
      p.script "pbAchievement(:ach_first_badge) rescue nil"
    end

    e.page :post_battle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('Fern: Come back to the greenhouse when you\\'re ready, \\PN.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Exit
  #-----------------------------------------------------------------------------
  m.event 4, "Gym Exit" do |e|
    e.position 5, 12
    e.graphic "Object door", direction: :down
    e.trigger :player_touch

    e.page :default do |p|
      p.script "pbFadeOutIn { pbWarp(11, 10, 8) }"   # Map 11 = Verdantia exterior
    end
  end
end
