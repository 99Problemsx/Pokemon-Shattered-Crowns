#===============================================================================
# Map Events — Postgame Sanctuary Hub (after Ch55 True Ending)
#===============================================================================
# Central postgame hub. Marcus's 3-tier Champion challenge, the Astoria
# remembrance side-quests, Memory Album + Trainer Card story-page
# access, Hoopa's Ring Shop, NG+ entry point, Dex Mode switcher.
# Unlocks once ch55_done is set.
#===============================================================================

MapEvents.define(48) do |m|
  #-----------------------------------------------------------------------------
  # Event 1 — Champion Marcus (3-tier postgame challenge)
  #-----------------------------------------------------------------------------
  m.event 1, "Champion Marcus" do |e|
    e.position 5, 5
    e.graphic "NPC Marcus", direction: :down
    e.trigger :action

    # Tier 1: solo
    e.page :tier1 do |p|
      p.condition_switch :ch55_done, true
      p.condition_self_switch 'A', false
      p.cutscene :postgame_marcus_challenge
      p.command :set_self_switch, 'A', true
    end

    # Tier 2: Marcus + Aurora (after solo beaten + all 5 endings)
    e.page :tier2 do |p|
      p.condition_self_switch 'A', true
      p.condition_self_switch 'B', false
      p.script <<~RUBY.strip
        if $PokemonGlobal.sc_marcus_solo_beaten &&
           ($PokemonGlobal.sc_endings_seen || []).uniq.length >= 5
          GameData::Cutscene.play(:postgame_marcus_aurora)
        else
          pbMessage('Marcus: Beat me solo first, kid. Then come back when you\\'ve seen every road this story can take.')
        end
      RUBY
      p.command :set_self_switch, 'B', true
    end

    # Tier 3: Prime (after Aurora beaten + bond_lyra_5 + bond_kael_5)
    e.page :tier3 do |p|
      p.condition_self_switch 'B', true
      p.condition_self_switch 'C', false
      p.script <<~RUBY.strip
        if $PokemonGlobal.sc_marcus_aurora_beaten &&
           GameData::Quest.completed?(:bond_lyra_5) &&
           GameData::Quest.completed?(:bond_kael_5)
          GameData::Cutscene.play(:postgame_marcus_prime)
        else
          pbMessage('Marcus: One more tier. But finish what you started with Lyra and Kael first.')
        end
      RUBY
      p.command :set_self_switch, 'C', true
    end

    e.page :all_done do |p|
      p.condition_self_switch 'C', true
      p.script "pbMessage('Marcus: That\\'s it, \\PN. You are stronger than I ever was. And now I know.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 2 — Astoria Elder Anya (Anya's Song side-quest)
  #-----------------------------------------------------------------------------
  m.event 2, "Elder Anya" do |e|
    e.position 8, 5
    e.graphic "NPC Anya", direction: :down
    e.trigger :action

    e.page :quest do |p|
      p.condition_switch :ch55_done, true
      p.script <<~RUBY.strip
        if GameData::Quest.completed?(:sq_astoria_anyas_song)
          pbMessage('Anya: The lullaby lives again. Thank you, child.')
        elsif GameData::Quest.active?(:sq_astoria_anyas_song)
          pbMessage('Anya: Come back when you have learned the second verse.')
        else
          GameData::Quest.start(:sq_astoria_anyas_song)
        end
      RUBY
    end
  end

  #-----------------------------------------------------------------------------
  # Event 3 — Astoria Elder Bren (Bren's Carving side-quest)
  #-----------------------------------------------------------------------------
  m.event 3, "Elder Bren" do |e|
    e.position 10, 5
    e.graphic "NPC Bren", direction: :down
    e.trigger :action

    e.page :quest do |p|
      p.condition_switch :ch55_done, true
      p.script <<~RUBY.strip
        if GameData::Quest.completed?(:sq_astoria_brens_carving)
          pbMessage('Bren: Three names carved true. The dead are remembered.')
        elsif GameData::Quest.active?(:sq_astoria_brens_carving)
          pbMessage('Bren: Steady hands, Kael. We have one name left.')
        else
          GameData::Quest.start(:sq_astoria_brens_carving)
        end
      RUBY
    end
  end

  #-----------------------------------------------------------------------------
  # Event 4 — Astoria Elder Coraline (Coraline's Dance side-quest)
  #-----------------------------------------------------------------------------
  m.event 4, "Elder Coraline" do |e|
    e.position 12, 5
    e.graphic "NPC Coraline", direction: :down
    e.trigger :action

    e.page :quest do |p|
      p.condition_switch :ch55_done, true
      p.script <<~RUBY.strip
        if GameData::Quest.completed?(:sq_astoria_coralines_dance)
          pbMessage('Coraline: First dance in forty-three years. You did the line proud.')
        elsif GameData::Quest.active?(:sq_astoria_coralines_dance)
          pbMessage('Coraline: Again. The third step still drags.')
        else
          GameData::Quest.start(:sq_astoria_coralines_dance)
        end
      RUBY
    end
  end

  #-----------------------------------------------------------------------------
  # Event 5 — Hoopa's Ring Shop
  #-----------------------------------------------------------------------------
  m.event 5, "Hoopa's Ring Shop" do |e|
    e.position 5, 8
    e.graphic "Pokemon Hoopa", direction: :down
    e.trigger :action

    e.page :shop do |p|
      p.condition_switch :sc_hoopa_shop_open, true
      p.cutscene :hoopa_shop_open
    end

    e.page :not_yet do |p|
      p.condition_switch :sc_hoopa_shop_open, false
      p.script "pbMessage('Hoopa: ...still building the circle. Come back later, Champion-friend.')"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 6 — Memory Album pedestal
  #-----------------------------------------------------------------------------
  m.event 6, "Memory Album" do |e|
    e.position 8, 8
    e.graphic "Object book", direction: :down
    e.trigger :action

    e.page :open do |p|
      p.condition_switch :ch55_done, true
      p.script "pbOpenMemoryAlbum"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 7 — Trainer Card story-page mirror
  #-----------------------------------------------------------------------------
  m.event 7, "Story Mirror" do |e|
    e.position 10, 8
    e.graphic "Object mirror", direction: :down
    e.trigger :action

    e.page :show do |p|
      p.condition_switch :ch55_done, true
      p.script "pbShowTrainerCardStory"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 8 — Dex Mode switcher
  #-----------------------------------------------------------------------------
  m.event 8, "Dex Mode Stone" do |e|
    e.position 12, 8
    e.graphic "Object orb", direction: :down
    e.trigger :action

    e.page :switch do |p|
      p.script "pbOpenDexModeSelect"
    end
  end

  #-----------------------------------------------------------------------------
  # Event 9 — NG+ portal (gated on at least one ending seen)
  #-----------------------------------------------------------------------------
  m.event 9, "New Game+ Portal" do |e|
    e.position 8, 11
    e.graphic "Object portal", direction: :down
    e.trigger :action

    e.page :ngplus do |p|
      p.condition_switch :ch55_done, true
      p.script <<~RUBY.strip
        if defined?(SCNGPlus) && SCNGPlus.eligible?
          choice = pbMessage(_INTL("Begin a New Game+?\\nCodex, achievements, and Marcus-tier progress carry over."),
                             [_INTL("Begin NG+"), _INTL("Not yet")], 2)
          if choice == 0
            SCNGPlus.start
            pbMessage(_INTL("The road begins again..."))
            # Hand off to the engine's new-game flow
            $scene = pbCallTitle rescue nil
          end
        else
          pbMessage('The portal hums. It needs at least one completed ending to open.')
        end
      RUBY
    end
  end

  #-----------------------------------------------------------------------------
  # Event 10 — Sequel hook trigger (mirrors Ch55 event but accessible
  # from the hub if the player missed it)
  #-----------------------------------------------------------------------------
  m.event 10, "Quill at the Gate" do |e|
    e.position 10, 11
    e.graphic "NPC Quill", direction: :down
    e.trigger :action

    e.page :hook do |p|
      p.condition_switch :ch55_done, true
      p.script <<~RUBY.strip
        if defined?(sc_check_sequel_unlock) && sc_check_sequel_unlock
          if $game_self_switches[[48, 10, 'A']]
            pbMessage('Quill: The ship sails when you\\'re ready, Chosen-elder.')
          else
            pbCutscene(:seq_invitation)
            pbCutscene(:seq_the_messenger)
            pbCutscene(:seq_old_friends)
            pbCutscene(:seq_the_question)
            pbCutscene(:seq_the_promise)
            pbCutscene(:seq_to_be_continued)
            $game_self_switches[[48, 10, 'A']] = true
          end
        else
          pbMessage('A young trainer with a familiar mark waits at the gate... \\\\nbut something is not ready yet. (See all six endings.)')
        end
      RUBY
    end
  end
end
