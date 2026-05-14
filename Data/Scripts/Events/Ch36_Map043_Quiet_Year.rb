#===============================================================================
# Map Events — The Quiet Year (Ch35.5/36 — Act 5 opening)
#===============================================================================
# The year between the Sanctuary and the Fracture. Four seasonal beats,
# the engagement, the pendant warning that ends the year. Then Ch36
# proper (one year later, pendant warning, departure).
#===============================================================================

MapEvents.define(43) do |m|
  m.event 1, "Quiet Year" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :year do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :qy_spring_seeds, event_id: 1
      p.cutscene :qy_summer_apprentice
      p.cutscene :qy_autumn_visit
      p.cutscene :qy_winter_letter
      p.cutscene :qy_spring_engagement
      p.cutscene :qy_cap_pendant_pulses
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :qy_complete, true
    end
  end

  m.event 2, "Ch36 One Year Later" do |e|
    e.position 7, 6
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :ch36 do |p|
      p.condition_switch :qy_complete, true
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch36_intro, event_id: 2
      p.cutscene :ch36_peaceful_morning
      p.cutscene :ch36_breakfast
      p.cutscene :ch36_letter_arrives
      p.cutscene :ch36_pendant_warning
      p.cutscene :ch36_vision
      p.cutscene :ch36_parents_worry
      p.cutscene :ch36_departure
      p.cutscene :ch36_sanctuary_arrival
      p.cutscene :ch36_reunion
      p.cutscene :ch36_plan
      p.cutscene :ch36_preparing
      p.cutscene :ch36_night_vision
      p.cutscene :ch36_morning_resolve
      # v3 audit Ragnar anniversary
      p.cutscene :ch36_5_ragnar_one_year
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch36_complete, true
    end
  end

  m.event 3, "Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch36_complete, true
      p.script "pbFadeOutIn { pbWarp(44, 5, 3) }"   # Map 44 = Ch37 Fracture
    end
  end
end
