#===============================================================================
# Map Events — Confession Night (Ch27 — The Night Before)
#===============================================================================
# Last night. Ragnar call. Fire talk. Player walks away. Confession +
# scene. Willow senses. Willow evolves. Under stars. Player returns +
# reflection. Thinking of home. Dawn arrives. Gathering gear. Team
# united. Plus Romance Branches (solo / Viktor / Sera / Ragnar) and
# Bond Quest tier-5 trios (lyra_5, kael_5, lyra_kael_5).
#===============================================================================

MapEvents.define(36) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Last night setup
  #-----------------------------------------------------------------------------
  m.event 1, "Last Night" do |e|
    e.position 5, 3
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :first do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch27_last_night, event_id: 1
      p.cutscene :ch27_ragnar_call
      p.cutscene :ch27_fire_talk
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Bond Quest tier-5 trio (only firable if tiers 1-4 done)
  #-----------------------------------------------------------------------------
  m.event 2, "Bond Lyra 5" do |e|
    e.position 7, 6
    e.graphic "NPC Lyra", direction: :down
    e.trigger :action

    e.page :tier5 do |p|
      p.condition_self_switch 'A', false
      # Soft-check the prior tiers via the SC quest system
      p.script <<~RUBY.strip
        if [:bond_lyra_1, :bond_lyra_2, :bond_lyra_3, :bond_lyra_4].all? { |q| GameData::Quest.completed?(q) }
          GameData::Quest.start(:bond_lyra_5)
          pbMessage('Lyra: Thanks for the blanket. \\\\nStay a minute, please.')
          GameData::Quest.complete(:bond_lyra_5) rescue nil
        else
          pbMessage('Lyra: Maybe another night.')
        end
      RUBY
      p.command :set_self_switch, 'A', true
    end
  end

  m.event 3, "Bond Kael 5" do |e|
    e.position 9, 6
    e.graphic "NPC Kael", direction: :down
    e.trigger :action

    e.page :tier5 do |p|
      p.condition_self_switch 'A', false
      p.script <<~RUBY.strip
        if [:bond_kael_1, :bond_kael_2, :bond_kael_3, :bond_kael_4].all? { |q| GameData::Quest.completed?(q) }
          GameData::Quest.start(:bond_kael_5)
          pbMessage('Kael: Help me rehearse the words. \\\\nI\\'ve never said them out loud before.')
          GameData::Quest.complete(:bond_kael_5) rescue nil
        else
          pbMessage('Kael: ...Maybe later.')
        end
      RUBY
      p.command :set_self_switch, 'A', true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Confession + Willow evolves (autorun)
  #-----------------------------------------------------------------------------
  m.event 4, "Confession" do |e|
    e.position 5, 9
    e.graphic "", direction: :down
    e.trigger :autorun

    e.page :confess do |p|
      p.condition_self_switch 'A', false
      p.through true
      p.cutscene :ch27_player_walks_away, event_id: 4
      p.cutscene :ch27_confession
      p.cutscene :ch27_confession_scene
      p.cutscene :ch27_willow_senses
      p.cutscene :ch27_willow_evolves
      p.cutscene :ch27_under_stars
      p.cutscene :ch27_player_returns
      p.cutscene :ch27_player_reflection
      p.cutscene :ch27_thinking_of_home
      p.cutscene :ch27_dawn_arrives
      p.cutscene :ch27_gathering_gear
      p.cutscene :ch27_team_united
      # Bond_Lyra_Kael_5 quest if prereqs done
      p.script <<~RUBY.strip
        if defined?(GameData::Quest) &&
           [:bond_lyra_kael_1, :bond_lyra_kael_2, :bond_lyra_kael_3, :bond_lyra_kael_4].all? { |q| GameData::Quest.completed?(q) }
          GameData::Quest.start(:bond_lyra_kael_5)
          GameData::Quest.complete(:bond_lyra_kael_5) rescue nil
        end
      RUBY
      # Solo romance path beat
      p.cutscene :solo_path_ch27_witness_only
      p.command :set_self_switch, 'A', true
      p.command :set_switch, :ch27_complete, true
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Exit (to Gateway / Ch28 Ragnar's sacrifice)
  #-----------------------------------------------------------------------------
  m.event 5, "Gateway Path" do |e|
    e.position 12, 14
    e.graphic "", direction: :down
    e.trigger :player_touch

    e.page :open do |p|
      p.condition_switch :ch27_complete, true
      p.script "pbFadeOutIn { pbWarp(37, 5, 3) }"   # Map 37 = Ch28 Gateway
    end
  end
end
