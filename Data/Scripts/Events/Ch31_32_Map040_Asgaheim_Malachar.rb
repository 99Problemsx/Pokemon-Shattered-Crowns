#===============================================================================
# Map Events — Asgaheim Inner Sanctum (Ch31 + Ch32 — Malachar & Elena's Sacrifice)
#===============================================================================
# Two-chapter map: arrival in the divine realm through Elena's sacrifice
# and Hoopa being consumed by Nidhoggr. Includes the v3 audit Ch32.5
# Elena POV side-arc (24 cutscenes — second-deepest POV chapter after
# Kael's Ch25.5).
#===============================================================================

MapEvents.define(40) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Asgaheim entry + Ch31 sequence
  #-----------------------------------------------------------------------------
  m.event 1, "Asgaheim Entry" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :ch31 do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch31_asgaheim_entry, event_id: 1
      p.cutscene :ch31_realm_description
      p.cutscene :ch31_corruption_spreads
      p.cutscene :ch31_path_forward
      p.cutscene :ch31_cult_spotted
      p.cutscene :ch31_cult_army
      p.cutscene :ch31_battle_begins
      p.cutscene :ch31_pushing_through
      p.cutscene :ch31_breakthrough
      p.cutscene :ch31_inner_sanctum
      p.cutscene :ch31_hoopa_prison
      p.cutscene :ch31_malachar_reveals
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch31_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Liberation Op 6 (final liberation — pre-Malachar fight)
  #-----------------------------------------------------------------------------
  m.event 2, "Liberation Op 6" do |e|
    e.position 7, 6
    e.graphic "Object cage", direction: :down
    e.trigger :action

    e.page :op do |p|
      p.condition_switch :ch31_complete, true
      p.condition_switch :sc_verdantia_allied, true
      p.condition_self_switch 'A', false
      p.cutscene :liberation_op_6
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Malachar Battle (Ch32 — Elena's Sacrifice)
  #-----------------------------------------------------------------------------
  m.event 3, "Malachar" do |e|
    e.position 6, 9
    e.graphic "NPC Malachar", direction: :down
    e.trigger :action

    e.page :battle do |p|
      p.condition_switch :ch31_complete, true
      p.condition_self_switch 'A', false
      p.cutscene :ch32_elena_captured, event_id: 3
      p.cutscene :ch32_standoff
      p.cutscene :ch32_malachar_monologue
      p.cutscene :ch32_twisted_logic
      p.cutscene :ch32_ritual_begins
      p.cutscene :ch32_elena_decision
      p.cutscene :ch32_elena_sacrifice
      p.cutscene :ch32_falling
      p.cutscene :ch32_lyra_breaks
      p.cutscene :ch32_kael_comforts
      p.cutscene :ch32_lyra_resolve
      p.cutscene :ch32_hoopa_freed
      p.cutscene :ch32_nidhoggr_stirs
      p.cutscene :ch32_hoopa_consumed
      # Malachar battle (uses BOSS_MALACHAR_FINAL midbattle)
      p.script <<~RUBY.strip
        setBattleRule("midbattleScript", :BOSS_MALACHAR_FINAL)
        setBattleRule("databoxStyle", :Boss)
        setBattleRule("battleBGM", "Battle Malachar")
        setBattleRule("canLose")
        TrainerBattle.start(:CULT_LEADER, "Malachar", 0)
      RUBY
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch32_malachar_done, true
      p.script "pbAchievement(:ach_malachar_defeated) rescue nil"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Ch32.5 Elena POV side-arc (autorun after malachar)
  #-----------------------------------------------------------------------------
  m.event 4, "Ch32.5 Elena POV" do |e|
    e.position 5, 12
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :pov do |p|
      p.condition_switch :ch32_malachar_done, true
      p.condition_self_switch 'A', false
      p.through true
      # Full Ch32.5 chain (24 beats — second-deepest POV side-arc)
      p.cutscene :ch32_5_intro
      p.cutscene :ch32_5_lab_work
      p.cutscene :ch32_5_the_decision
      p.cutscene :ch32_5_memories_lyra_child
      p.cutscene :ch32_5_memories_mother_death
      p.cutscene :ch32_5_memories_growing_up
      p.cutscene :ch32_5_seeing_lyra_leave
      p.cutscene :ch32_5_back_to_present
      p.cutscene :ch32_5_letting_herself_be_caught
      p.cutscene :ch32_5_in_captivity
      p.cutscene :ch32_5_seeing_lyra_arrive
      p.cutscene :ch32_5_watching_the_battle
      p.cutscene :ch32_5_the_moment
      p.cutscene :ch32_5_last_look
      p.cutscene :ch32_5_the_charge
      p.cutscene :ch32_5_falling
      p.cutscene :ch32_5_final_thoughts
      p.cutscene :ch32_5_mother_meets
      p.cutscene :ch32_5_watching_from_beyond
      p.cutscene :ch32_5_peace
      p.cutscene :ch32_5_ending
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch32_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — To Final Battle (Ch33-34)
  #-----------------------------------------------------------------------------
  m.event 5, "Final Battle Portal" do |e|
    e.position 12, 14
    e.graphic "Object portal", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch32_complete, true
      p.script "pbFadeOutIn { pbWarp(41, 5, 3) }"   # Map 41 = Ch33-34 Final
    end
  end
end
