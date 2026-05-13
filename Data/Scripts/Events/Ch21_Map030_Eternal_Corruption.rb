#===============================================================================
# Map Events — Eternal Forest Corruption (Ch21)
#===============================================================================
# World Tree assessment. Cult base. Cult machine. First wave. Elena
# fights, captured. Kael's assault. Starter saves. Machine destroyed.
# Too late. Lyra's choice — approaches the tree.
#===============================================================================

MapEvents.define(30) do |m|
  m.event 1, "World Tree" do |e|
    e.position 5, 3
    e.graphic "Object tree", direction: :down
    e.trigger :autorun

    e.page :assess do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch21_world_tree, event_id: 1
      p.cutscene :ch21_assessing_damage
      p.cutscene :ch21_cult_base
      p.cutscene :ch20_ragnar_supplies
      p.cutscene :ch21_cult_machine
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 2, "Cult Wave 1" do |e|
    e.position 7, 6
    e.graphic "NPC Cultist", direction: :right
    e.trigger :event_touch

    e.page :wave do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch21_first_wave, event_id: 2
      p.cutscene :ch21_elena_fights
      p.cutscene :ch21_cult_battle
      p.trainer_battle :CULTIST, "Hand Captain", 1
      p.cutscene :ch21_kaels_assault
      p.command :set_self_switch, 'A', true
    end

    e.page :down do |p|
      p.condition_self_switch 'A', true
      p.graphic "", direction: :down
      p.through true
    end
  end

  m.event 3, "Machine + Lyra Choice" do |e|
    e.position 5, 10
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :machine do |p|
      # Fire after cult wave 1
      p.condition_self_switch 'A', false
      p.condition_self_switch 'B', false
      p.through true
      p.script <<~RUBY.strip
        if $game_self_switches[[30, 2, 'A']]
          pbCutscene(:ch21_elena_captured, event_id: 3)
          pbCutscene(:ch21_starter_saves)
          pbCutscene(:ch21_machine_destroyed)
          pbCutscene(:ch21_too_late)
          pbCutscene(:ch21_lyras_choice)
          pbCutscene(:ch21_kael_pleads)
          pbCutscene(:ch21_lyra_approaches_tree)
          $game_self_switches[[30, 3, 'A']] = true
          $game_switches[:ch21_complete] = true
        end
      RUBY
    end
  end

  m.event 4, "Tree Chamber" do |e|
    e.position 5, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :enter do |p|
      p.condition_switch :ch21_complete, true
      p.script "pbFadeOutIn { pbWarp(31, 5, 3) }"   # Map 31 = Ch22 Xerneas Awakens
    end
  end
end
