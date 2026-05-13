#===============================================================================
# Map Events — Gateway (Ch28 — General Ruin + RAGNAR DIES)
#===============================================================================
# Gateway approach. Dragons appear. Ruin appears + boasts + challenge.
# Dragons attack. Ragnar arrives. Ruin battle. Ruin's dying words.
# Dragon ambush. Ragnar sacrifice. Ragnar dying. Ragnar last words.
# Ragnar death. Mourning. Rage. Gateway opens. Lyra worry. Final
# resolve. Stepping through.
# Plus v3 audit ch28_starter_at_ragnar + v3 audit ch28_mask_remembers +
# v3 audit ch28_choice_at_gate + Ragnar romance death-branch.
# This is the hardest emotional beat in the game.
#===============================================================================

MapEvents.define(37) do |m|
  m.event 1, "Gateway Approach" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :enter do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch28_gateway_approach, event_id: 1
      p.cutscene :ch28_dragons_appear
      p.cutscene :ch28_ruin_appears
      p.cutscene :ch28_ruin_boasts
      p.cutscene :ch28_ruin_challenge
      p.cutscene :ch28_dragons_attack
      p.cutscene :ch28_ragnar_arrives
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 2, "Ruin Battle + Mask Reveal" do |e|
    e.position 7, 6
    e.graphic "NPC Ruin", direction: :down
    e.trigger :action

    e.page :battle do |p|
      p.condition_self_switch 'A', false
      # v3 audit: mask remembers — fires here for emotional setup
      p.cutscene :ch28_mask_remembers
      p.cutscene :ch28_ruin_battle, event_id: 2
      p.script "TrainerBattle.start(:CULTIST, \"Ruin\", 0)"
      p.cutscene :ch28_ruin_dying_words
      p.cutscene :ch28_ruin_regret
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch28_ruin_done, true
      p.script "pbAchievement(:ach_ruin_defeated) rescue nil"
    end

    e.page :gone do |p|
      p.condition_self_switch 'A', true
      p.graphic "", direction: :down
      p.through true
    end
  end

  m.event 3, "The Choice At The Gate" do |e|
    e.position 5, 10
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :sacrifice do |p|
      p.condition_switch :ch28_ruin_done, true
      p.condition_self_switch 'A', false
      p.through true
      # v3 audit: player choice (illusory — Ragnar dies either way)
      p.cutscene :ch28_choice_at_gate
      p.cutscene :ch28_dragon_ambush
      p.cutscene :ch28_ragnar_sacrifice
      p.cutscene :ch28_ragnar_dying
      p.cutscene :ch28_ragnar_last_words
      p.cutscene :ch28_ragnar_death
      # Starter at Ragnar (v3 audit emotional beat)
      p.cutscene :ch28_starter_at_ragnar
      p.cutscene :ch28_mourning
      p.cutscene :ch28_rage
      p.cutscene :ch28_gateway_opens
      p.cutscene :ch28_lyra_worry
      p.cutscene :ch28_final_resolve
      p.cutscene :ch28_stepping_through
      # Ragnar romance branch — fires only if SCRomance was set to :ragnar
      p.script <<~RUBY.strip
        if defined?(SCRomance) && SCRomance.is?(:ragnar)
          GameData::Cutscene.play(:rag_path_ch28_death_branch)
        end
      RUBY
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch28_ragnar_dead, true
      p.command :set_switch, :ch28_complete, true
    end
  end

  m.event 4, "Liberation Op 5 (Gateway Camps — 81 in one night)" do |e|
    e.position 11, 10
    e.graphic "NPC Vesper", direction: :down
    e.trigger :action

    e.page :offer do |p|
      p.condition_switch :ch28_complete, true
      p.condition_switch :sc_verdantia_allied, true
      p.condition_self_switch 'A', false
      p.cutscene :liberation_op_5
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 5, "Step Through" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch28_complete, true
      # Act 3 complete — fate_ragnar_sacrifice fires via on_sc_chapter_completed
      p.script "pbFadeOutIn { pbWarp(38, 5, 3) }"   # Map 38 = Ch29 Championship
    end
  end
end
