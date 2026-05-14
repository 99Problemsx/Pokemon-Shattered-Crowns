#===============================================================================
# Map Events — Final Battle: Nidhoggr (Ch33 + Ch34)
#===============================================================================
# Guardians Manifest. Facing Nidhoggr — Eternatus possessed. Two-phase
# fight. Liberation reunion (freed Pokémon arrive). Sealing. Eternatus
# freed. Victory. Asgaheim crumbles.
# The Ch34 ending dispatcher chooses the morality-based ending.
#===============================================================================

MapEvents.define(41) do |m|
  m.event 1, "Guardians Manifest (Ch33)" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :manifest do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch33_facing_nidhoggr, event_id: 1
      p.cutscene :ch33_marks_resonate
      p.cutscene :ch33_shards_activate
      p.cutscene :ch33_zacian_appears
      p.cutscene :ch33_xerneas_appears
      p.cutscene :ch33_yveltal_appears
      p.cutscene :ch33_guardians_together
      p.cutscene :ch33_guardians_manifest
      p.cutscene :ch33_starters_transform
      p.cutscene :ch33_united_speech
      p.cutscene :ch33_charge
      # v3 audit grief revisits
      p.cutscene :ch33_morning_for_aldric
      p.cutscene :ch33_5_aldric_letter_read
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 2, "Nidhoggr Battle (Ch34)" do |e|
    e.position 7, 6
    e.graphic "Pokemon Eternatus", direction: :down
    e.trigger :action

    e.page :battle do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch34_nidhoggr_emerges, event_id: 2
      p.cutscene :ch34_first_clash
      p.cutscene :ch34_nidhoggr_power
      p.cutscene :ch34_nidhoggr_battle
      # First form battle
      p.script <<~RUBY.strip
        setBattleRule("midbattleScript", :BOSS_NIDHOGGR_FINAL)
        setBattleRule("databoxStyle", :Boss)
        setBattleRule("battleBGM", "Battle Nidhoggr")
        setBattleRule("canLose")
        TrainerBattle.start(:CULT_LEADER, "Malachar Reborn", 0)
      RUBY
      p.cutscene :ch34_first_form_defeated
      # Liberation reunion at the eternamax transition
      p.cutscene :ch34_5_liberation_reunion
      p.cutscene :ch34_eternamax
      p.cutscene :ch34_desperate_moment
      p.cutscene :ch34_guardians_surge
      p.cutscene :ch34_crown_forms
      p.cutscene :ch34_final_attack
      p.cutscene :ch34_nidhoggr_sealed
      p.cutscene :ch34_eternatus_freed
      # Starter final evo (v3 audit beat)
      p.cutscene :ch42_starter_final_evo
      p.cutscene :ch34_victory
      p.cutscene :ch34_asgaheim_crumbles
      # Dispatch the ending — Mercy-aware variant fires if NG+ from Pure-Dark
      p.script <<~RUBY.strip
        if defined?(SCNGPlus) && SCNGPlus.bad_ending_seen?
          GameData::Cutscene.play(:ch34_ending_dispatch_with_mercy)
        else
          GameData::Cutscene.play(:ch34_ending_dispatch)
        end
      RUBY
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch34_complete, true
      p.script "pbAchievement(:ach_nidhoggr_sealed) rescue nil"
    end
  end

  m.event 3, "Escape" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch34_complete, true
      p.script "pbFadeOutIn { pbWarp(42, 5, 3) }"   # Map 42 = Ch35 Sanctuary
    end
  end
end
