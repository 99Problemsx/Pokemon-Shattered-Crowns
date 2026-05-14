#===============================================================================
# Map Events — Sanctuary Established (Ch35 — Act 4 finale + post-True Ending)
#===============================================================================
# Escape from Asgaheim. Aftermath. Reunion. Ragnar's grave. Ragnar
# goodbye. Moving forward. Kael's family. Celebration. Memorial. Lyra-
# Kael moment. Guardians farewell. Shards transform (into pendants).
# Future plans. Act 4 end.
# Plus Liberation aftermath report (Ch36.5 — 137 freed).
#===============================================================================

MapEvents.define(42) do |m|
  m.event 1, "Sanctuary Aftermath" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :aftermath do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch35_escape, event_id: 1
      p.cutscene :ch35_aftermath
      p.cutscene :ch35_reunion
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 2, "Ragnar's Grave" do |e|
    e.position 7, 6
    e.graphic "Object headstone", direction: :down
    e.trigger :action

    e.page :grave do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch35_ragnar_grave, event_id: 2
      p.cutscene :ch35_ragnar_goodbye
      p.command :set_self_switch, 'A', true
      # Ragnar romance widowed beat (only if SCRomance = :ragnar)
      p.script <<~RUBY.strip
        if defined?(SCRomance) && SCRomance.is?(:ragnar)
          GameData::Cutscene.play(:rag_path_ch35_widowed)
        end
      RUBY
      # Viktor romance after seal beat
      p.script <<~RUBY.strip
        if defined?(SCRomance) && SCRomance.is?(:viktor)
          GameData::Cutscene.play(:vik_path_ch35_after_seal)
        end
      RUBY
    end

    e.page :idle do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('The cloak draped over the stone has weathered a year of seasons.')"
    end
  end

  m.event 3, "Sanctuary Established (autorun)" do |e|
    e.position 5, 10
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :final do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch35_moving_forward, event_id: 3
      p.cutscene :ch35_kael_family
      p.cutscene :ch35_celebration
      p.cutscene :ch35_memorial
      p.cutscene :ch35_lyra_kael_moment
      p.cutscene :ch35_guardians_farewell
      p.cutscene :ch35_shards_transform
      p.cutscene :ch35_future_plans
      p.cutscene :ch35_act4_end
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch35_complete, true
      # Mark Act 4 chapter complete — fires achievement dispatcher
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Liberation aftermath report (Ch36.5)
  #-----------------------------------------------------------------------------
  m.event 4, "Liberation Aftermath" do |e|
    e.position 9, 11
    e.graphic "NPC Fern", direction: :down
    e.trigger :action

    e.page :report do |p|
      p.condition_switch :ch35_complete, true
      p.condition_self_switch 'A', false
      p.cutscene :ch36_5_liberation_aftermath
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — To Act 5 (Quiet Year + Astoria + Wedding + Final)
  #-----------------------------------------------------------------------------
  m.event 5, "To Act 5" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch35_complete, true
      p.script "pbFadeOutIn { pbWarp(43, 5, 3) }"   # Map 43 = Quiet Year arc
    end
  end
end
