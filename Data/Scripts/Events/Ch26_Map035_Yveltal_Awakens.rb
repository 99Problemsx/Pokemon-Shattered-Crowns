#===============================================================================
# Map Events — Yveltal Awakens (Ch26 — Kael's full acceptance)
#===============================================================================
# Kael reflection. Lyra approach. Ragnar video. Player watches. Yveltal
# awakens. Yveltal speaks. Entropy shard. Yveltal warning. Shadow
# glowing. Shadow battle flashback. Shadow evolves. Yveltal departs.
# Three shards. Planning next. Camp setup. Evening talk.
# Plus v4 audit Ch26.5 Champion Viktor news clip.
#===============================================================================

MapEvents.define(35) do |m|
  m.event 1, "Kael Reflection" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :reflection do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch26_kael_reflection, event_id: 1
      p.cutscene :ch26_lyra_approach
      p.cutscene :ch26_ragnar_video
      p.cutscene :ch26_player_watches
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 2, "Yveltal Awakens" do |e|
    e.position 7, 6
    e.graphic "Object altar", direction: :down
    e.trigger :action

    e.page :awakens do |p|
      p.condition_self_switch 'A', false
      p.cutscene :ch26_yveltal_awakens, event_id: 2
      p.cutscene :ch26_yveltal_speaks
      p.cutscene :ch26_entropy_shard
      p.cutscene :ch26_yveltal_warning
      p.cutscene :ch26_shadow_glowing
      p.cutscene :ch26_shadow_battle_flashback
      p.cutscene :ch26_shadow_evolves
      p.cutscene :ch26_yveltal_departs
      p.cutscene :ch26_three_shards
      p.cutscene :ch26_planning_next
      p.cutscene :ch26_camp_setup
      p.cutscene :ch26_evening_talk
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch26_complete, true
      p.script "pbAchievement(:ach_second_guardian) rescue nil"
    end
  end

  m.event 3, "Champion Viktor News (v4 Ch26.5)" do |e|
    e.position 8, 8
    e.graphic "Object radio", direction: :down
    e.trigger :action

    e.page :news do |p|
      p.condition_switch :ch26_complete, true
      p.condition_self_switch 'A', false
      p.cutscene :ch26_5_champion_news
      p.command :set_self_switch, 'A', true
    end

    e.page :replay do |p|
      p.condition_self_switch 'A', true
      p.script "pbMessage('The radio is silent now.')"
    end
  end

  m.event 4, "Exit" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch26_complete, true
      p.script "pbFadeOutIn { pbWarp(36, 5, 3) }"   # Map 36 = Ch27 Confession
    end
  end
end
