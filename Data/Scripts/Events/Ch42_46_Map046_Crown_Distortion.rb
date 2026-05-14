#===============================================================================
# Map Events — Crown Restored + Distortion World (Ch42-Ch46)
#===============================================================================
# Crown restoration, Giratina's warning, the Distortion World, the seal
# breaks, the ultimate battle, Giratina's sacrifice. Five chapters
# compressed onto one map sequence.
#===============================================================================

MapEvents.define(46) do |m|
  m.event 1, "Crown Restored (Ch42)" do |e|
    e.position 5, 3
    e.graphic "Object crown", direction: :down
    e.trigger :autorun

    e.page :restore do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch42_intro, event_id: 1
      p.cutscene :ch42_elder_greets
      p.cutscene :ch42_ritual_prep
      p.cutscene :ch42_restoring
      p.cutscene :ch42_crown_forms
      p.cutscene :ch42_crown_power
      p.cutscene :ch42_giratina_warning
      p.cutscene :ch42_giratina_appears
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 2, "Giratina's Warning (Ch43)" do |e|
    e.position 7, 6
    e.graphic "Pokemon Giratina", direction: :down
    e.trigger :action

    e.page :warning do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch43_intro, event_id: 2
      p.cutscene :ch43_explanation
      p.cutscene :ch43_plea
      p.cutscene :ch43_portal_opens
      p.cutscene :ch43_farewell
      p.cutscene :ch43_entering
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch43_done, true
    end
  end

  m.event 3, "The Distortion World (Ch44)" do |e|
    e.position 9, 8
    e.graphic "Object portal", direction: :down
    e.trigger :action

    e.page :distortion do |p|
      p.condition_switch :ch43_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch44_intro, event_id: 3
      p.cutscene :ch44_disorientation
      p.cutscene :ch44_traversing
      p.cutscene :ch44_void_walkers
      p.cutscene :ch44_void_battle
      p.cutscene :ch44_approaching_prison
      p.cutscene :ch44_prison_reached
      # Sera-apprentice romance branch (Anuk in Distortion World)
      p.script <<~RUBY.strip
        if defined?(SCRomance) && SCRomance.is?(:sera_apprentice)
          GameData::Cutscene.play(:sera_path_ch44_distortion_help)
        end
      RUBY
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch44_done, true
    end
  end

  m.event 4, "The Seal Breaks + Ultimate Battle (Ch45-46)" do |e|
    e.position 6, 11
    e.graphic "", direction: :down
    e.trigger :action

    e.page :final do |p|
      p.condition_switch :ch44_done, true
      p.condition_self_switch 'A', false
      p.cutscene :ch45_intro, event_id: 4
      p.cutscene :ch45_nidhoggr_speaks
      p.cutscene :ch45_guardians_appear
      p.cutscene :ch45_battle_begins
      p.cutscene :ch45_first_battle
      p.cutscene :ch45_nidhoggr_transforms
      p.cutscene :ch45_desperate
      p.cutscene :ch45_giratina_arrives
      p.cutscene :ch45_crown_complete
      p.cutscene :ch46_intro
      p.cutscene :ch46_final_clash
      p.cutscene :ch46_nidhoggr_battle
      p.script <<~RUBY.strip
        setBattleRule("databoxStyle", :Boss)
        setBattleRule("canLose")
        TrainerBattle.start(:CULT_LEADER, "Malachar Reborn", 0)
      RUBY
      p.cutscene :ch46_nidhoggr_weakening
      p.cutscene :ch46_eternal_seal
      p.cutscene :ch46_seal_complete
      p.cutscene :ch46_giratina_sacrifice
      p.cutscene :ch46_victory
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch46_complete, true
    end
  end

  m.event 5, "Arceus Descends (to Ch47)" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch46_complete, true
      p.script "pbFadeOutIn { pbWarp(47, 5, 3) }"   # Map 47 = Ch47 Arceus + Hoopa
    end
  end
end
