#===============================================================================
# Map Events — Mortality Ruins (Ch25 — Kael's Trial: Face Mira's Ghost)
#===============================================================================
# After funeral. Journey to ruins. Memories surface. Hel/Morwen's
# temptation. Mira's ghost. Mira's message. Letting go. Morwen battle.
# Trial complete. Reunion. Walking forward. Plus full Ch25.5 Kael POV
# side-arc (24 cutscenes — Kael's deepest interior chapter).
#===============================================================================

MapEvents.define(34) do |m|
  m.event 1, "Ruins Approach" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :approach do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch25_after_funeral, event_id: 1
      p.cutscene :ch25_journey_begins
      p.cutscene :ch25_mortality_ruins
      p.cutscene :ch25_entering_ruins
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 2, "Hel's Temptation" do |e|
    e.position 8, 7
    e.graphic "NPC Morwen", direction: :down
    e.trigger :action

    e.page :temptation do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch25_memories_surface, event_id: 2
      p.cutscene :ch25_hel_temptation
      p.cutscene :ch25_the_offer
      p.cutscene :ch25_mira_ghost
      p.cutscene :ch25_mira_message
      p.cutscene :ch25_letting_go
      p.cutscene :ch25_morwen_rage
      p.cutscene :ch25_morwen_battle
      p.script <<~RUBY.strip
        TrainerBattle.start(:CULT_LEADER, "Morwen", 0)
      RUBY
      p.cutscene :ch25_trial_complete
      p.cutscene :ch25_reunion
      p.cutscene :ch25_walking_forward
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch25_morwen_done, true
    end
  end

  m.event 3, "Ch25.5 Kael Interior (POV switch)" do |e|
    e.position 5, 11
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :pov do |p|
      p.condition_switch :ch25_morwen_done, true
      p.condition_self_switch 'A', false
      p.through true
      # Full Ch25.5 chain (24 beats)
      p.cutscene :ch25_5_intro
      p.cutscene :ch25_5_first_corridor
      p.cutscene :ch25_5_first_memory
      p.cutscene :ch25_5_yveltal_first_lesson
      p.cutscene :ch25_5_second_corridor
      p.cutscene :ch25_5_the_fire_approaches
      p.cutscene :ch25_5_fire_memory
      p.cutscene :ch25_5_mira_sacrifice_detailed
      p.cutscene :ch25_5_guilt_manifests
      p.cutscene :ch25_5_facing_shadow_self
      p.cutscene :ch25_5_temptation_deepens
      p.cutscene :ch25_5_almost_falling
      p.cutscene :ch25_5_seeing_truth
      p.cutscene :ch25_5_shadow_evolves
      p.cutscene :ch25_5_morwen_battle
      p.cutscene :ch25_5_real_mira_appears
      p.cutscene :ch25_5_confession
      p.cutscene :ch25_5_forgiveness
      p.cutscene :ch25_5_lyra_acknowledgment
      p.cutscene :ch25_5_letting_go
      p.cutscene :ch25_5_mira_departs
      p.cutscene :ch25_5_yveltal_appears
      p.cutscene :ch25_5_power_accepted
      p.cutscene :ch25_5_ruins_collapse
      p.cutscene :ch25_5_emergence
      p.cutscene :ch25_5_ending
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch25_complete, true
    end
  end

  m.event 4, "Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch25_complete, true
      p.script "pbFadeOutIn { pbWarp(35, 5, 3) }"   # Map 35 = Ch26 Yveltal awakens
    end
  end
end
