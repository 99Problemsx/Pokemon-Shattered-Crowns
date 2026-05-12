#===============================================================================
# POKÉMON SHATTERED CROWNS - STORY ACHIEVEMENTS
#===============================================================================
# Defines achievement triggers tied to story beats. Uses the existing
# GameData::Achievement.define DSL from 014_Achievement.rb. Achievements
# auto-unlock via the :on_sc_chapter_completed event (same dispatch used
# by Fate Point grants) plus a few direct pbAchievement calls embedded
# in v2/v3 cutscenes.
#
# Categories:
#   :story_main      — gym victories, guardian awakenings, boss defeats
#   :story_endings   — one per ending
#   :story_bond      — Tier 5 bond quest completions
#   :story_hidden    — secrets, cameos, NG+ payoffs
#   :story_battles   — Marcus tiers, hardest fights
#===============================================================================


#-------------------------------------------------------------------------------
# Main story progression — 8 gyms + 6 major boss/guardian beats
#-------------------------------------------------------------------------------

GameData::Achievement.define :ach_first_badge do |a|
  a.name "First Badge"
  a.description "Defeat Fern at Verdantia Gym."
  a.category :story_main
  a.reward_item :POTION, 5
end

GameData::Achievement.define :ach_full_circuit do |a|
  a.name "League Circuit"
  a.description "Defeat all eight Asgheim gym leaders."
  a.category :story_main
  a.reward_item :PPMAX, 1
end

GameData::Achievement.define :ach_mark_awakened do |a|
  a.name "The Mark Reveals Itself"
  a.description "Complete Chapter 8 — the marks appear."
  a.category :story_main
  a.reward_item :REVIVE, 3
end

GameData::Achievement.define :ach_first_guardian do |a|
  a.name "Named by Xerneas"
  a.description "Witness Xerneas naming Lyra (Chapter 14)."
  a.category :story_main
end

GameData::Achievement.define :ach_second_guardian do |a|
  a.name "Accepted by Yveltal"
  a.description "Witness Yveltal accepting Kael (Chapter 16)."
  a.category :story_main
end

GameData::Achievement.define :ach_third_guardian do |a|
  a.name "Heard by Zacian"
  a.description "Be addressed by Zacian for the first time (Chapter 11)."
  a.category :story_main
end

GameData::Achievement.define :ach_shade_defeated do |a|
  a.name "Aldrin's Funeral"
  a.description "Defeat General Shade (Chapter 12)."
  a.category :story_main
  a.reward_item :MAXPOTION, 1
end

GameData::Achievement.define :ach_dread_defeated do |a|
  a.name "Captain Hara's Memory"
  a.description "Defeat General Dread (Chapter 18)."
  a.category :story_main
  a.reward_item :MAXPOTION, 1
end

GameData::Achievement.define :ach_ruin_defeated do |a|
  a.name "She Chose This Freely"
  a.description "Defeat General Ruin (Chapter 28)."
  a.category :story_main
  a.reward_item :FULLRESTORE, 2
end

GameData::Achievement.define :ach_malachar_defeated do |a|
  a.name "The Hand Falls"
  a.description "Defeat Malachar (Chapter 32)."
  a.category :story_main
  a.reward_item :SACREDASH, 1
end

GameData::Achievement.define :ach_nidhoggr_sealed do |a|
  a.name "The Eternal Seal"
  a.description "Seal Nidhoggr (Chapter 34)."
  a.category :story_main
  a.reward_item :MASTERBALL, 1
end


#-------------------------------------------------------------------------------
# Endings — one per Morality tier + Mercy
#-------------------------------------------------------------------------------

GameData::Achievement.define :ach_ending_pure_light do |a|
  a.name "The Cleanest Path"
  a.description "Reach the Pure Light ending."
  a.category :story_endings
end

GameData::Achievement.define :ach_ending_light do |a|
  a.name "Standard Heroic"
  a.description "Reach the Light ending."
  a.category :story_endings
end

GameData::Achievement.define :ach_ending_balance do |a|
  a.name "The Canonical Truth"
  a.description "Reach the Balance ending."
  a.category :story_endings
end

GameData::Achievement.define :ach_ending_dark do |a|
  a.name "Pyrrhic Victory"
  a.description "Reach the Dark ending."
  a.category :story_endings
end

GameData::Achievement.define :ach_ending_pure_dark do |a|
  a.name "The Silent Throne"
  a.description "Reach the Pure Dark ending."
  a.category :story_endings
  a.hidden true
end

GameData::Achievement.define :ach_ending_mercy do |a|
  a.name "Mercy from the Throne"
  a.description "Refuse Nidhoggr's offer on a New Game+ run after seeing the Pure Dark ending."
  a.category :story_endings
  a.hidden true
  a.reward_item :MASTERBALL, 1
end

GameData::Achievement.define :ach_all_endings do |a|
  a.name "Every Path Walked"
  a.description "Witness all six endings."
  a.category :story_endings
  a.hidden true
end


#-------------------------------------------------------------------------------
# Bond — five Tier-5 quests completed
#-------------------------------------------------------------------------------

GameData::Achievement.define :ach_bond_lyra_complete do |a|
  a.name "Lyra's Constant"
  a.description "Complete all five Lyra bond quests."
  a.category :story_bond
end

GameData::Achievement.define :ach_bond_kael_complete do |a|
  a.name "Kael's Witness"
  a.description "Complete all five Kael bond quests."
  a.category :story_bond
end

GameData::Achievement.define :ach_bond_lyra_kael_complete do |a|
  a.name "The Best Best-Person"
  a.description "Complete all five Lyra-Kael bond quests."
  a.category :story_bond
end


#-------------------------------------------------------------------------------
# Marcus postgame battles
#-------------------------------------------------------------------------------

GameData::Achievement.define :ach_beat_marcus_solo do |a|
  a.name "Stronger Than I Ever Was"
  a.description "Defeat Marcus in the postgame challenge."
  a.category :story_battles
end

GameData::Achievement.define :ach_beat_marcus_aurora do |a|
  a.name "The Next Champion"
  a.description "Defeat Marcus + Aurora in a tag battle."
  a.category :story_battles
  a.reward_item :LUCKYEGG, 1
end

GameData::Achievement.define :ach_beat_marcus_prime do |a|
  a.name "Surpassed the Champion"
  a.description "Defeat Marcus in his Championship-era prime kit."
  a.category :story_battles
  a.hidden true
  a.reward_item :SACREDASH, 3
end


#-------------------------------------------------------------------------------
# Hidden / secret achievements
#-------------------------------------------------------------------------------

GameData::Achievement.define :ach_hoopa_befriended do |a|
  a.name "Trickster's Promise"
  a.description "Witness Hoopa's return."
  a.category :story_hidden
  a.hidden true
end

GameData::Achievement.define :ach_subject_zero_freed do |a|
  a.name "He Wanted to Live"
  a.description "Free Subject Zero in the Eternal Forest lab."
  a.category :story_hidden
  a.hidden true
end

GameData::Achievement.define :ach_vera_revealed do |a|
  a.name "Last of the Cycles Line"
  a.description "Discover Kael's true heritage in the Temple of Shadows."
  a.category :story_hidden
  a.hidden true
end

GameData::Achievement.define :ach_ragnar_anniversary do |a|
  a.name "One Year On"
  a.description "Visit Ragnar's grave on the anniversary of his death."
  a.category :story_hidden
  a.hidden true
end

GameData::Achievement.define :ach_elenas_letters do |a|
  a.name "She Chose You"
  a.description "Find Elena's hidden letters in Astoria."
  a.category :story_hidden
  a.hidden true
end

GameData::Achievement.define :ach_starter_final_evo do |a|
  a.name "Together"
  a.description "Trigger your starter's final evolution at the Crown's restoration."
  a.category :story_hidden
end

GameData::Achievement.define :ach_ngplus_starts do |a|
  a.name "The Road Begins Again"
  a.description "Begin a New Game+ run."
  a.category :story_hidden
end

GameData::Achievement.define :ach_full_codex do |a|
  a.name "Loremaster"
  a.description "Discover every Lore Codex entry."
  a.category :story_hidden
  a.target 40  # Adjust to total entries once final count is locked
end


#===============================================================================
# Event-handler dispatcher — fire achievements on :on_sc_chapter_completed
#===============================================================================
EventHandlers.add(:on_sc_chapter_completed, :sc_story_achievement_grants,
  proc { |chapter_id|
    next unless defined?(pbAchievement)

    case chapter_id
    when :ch4  then pbAchievement(:ach_first_badge)
    when :ch8  then pbAchievement(:ach_mark_awakened)
    when :ch11 then pbAchievement(:ach_third_guardian)
    when :ch12 then pbAchievement(:ach_shade_defeated)
    when :ch14 then pbAchievement(:ach_first_guardian)
    when :ch16 then pbAchievement(:ach_second_guardian)
    when :ch18 then pbAchievement(:ach_dread_defeated)
    when :ch23
      # Eighth gym victory closes Ch23. Award full-circuit.
      pbAchievement(:ach_full_circuit)
    when :ch28 then pbAchievement(:ach_ruin_defeated)
    when :ch32 then pbAchievement(:ach_malachar_defeated)
    when :ch34
      pbAchievement(:ach_nidhoggr_sealed)
      # Ending-tier achievement: Alternative_Endings.rb records the tier in
      # sc_endings_seen at Ch34 completion — read the last entry here.
      last = $PokemonGlobal.sc_endings_seen&.last
      case last
      when :PURE_LIGHT then pbAchievement(:ach_ending_pure_light)
      when :LIGHT      then pbAchievement(:ach_ending_light)
      when :NEUTRAL    then pbAchievement(:ach_ending_balance)
      when :DARK       then pbAchievement(:ach_ending_dark)
      when :PURE_DARK  then pbAchievement(:ach_ending_pure_dark)
      end

      # "Every Path Walked" — all six endings (5 morality + Mercy)
      tiers = $PokemonGlobal.sc_endings_seen || []
      if (tiers & [:PURE_LIGHT, :LIGHT, :NEUTRAL, :DARK, :PURE_DARK, :MERCY]).length >= 6
        pbAchievement(:ach_all_endings)
      end
    end
  }
)


#===============================================================================
# Bond-quest completion → achievements
#-------------------------------------------------------------------------------
# QuestSystem doesn't ship a public :on_quest_completed event, so we ride on
# the Tier-5 quest's on_complete callback. The bond quests in Bond_Quests.rb
# already call _sc_bond_reward which we extend here for the achievement
# threshold check.
#===============================================================================
if defined?(GameData::Quest)
  module GameData
    class Quest
      class << self
        unless method_defined?(:_sc_ach_complete_orig)
          alias_method :_sc_ach_complete_orig, :complete

          def complete(quest_id)
            result = _sc_ach_complete_orig(quest_id)
            return result unless result

            # Check bond-line completion bundles
            if [:bond_lyra_1, :bond_lyra_2, :bond_lyra_3, :bond_lyra_4, :bond_lyra_5].all? { |q| completed?(q) }
              pbAchievement(:ach_bond_lyra_complete) if defined?(pbAchievement)
            end
            if [:bond_kael_1, :bond_kael_2, :bond_kael_3, :bond_kael_4, :bond_kael_5].all? { |q| completed?(q) }
              pbAchievement(:ach_bond_kael_complete) if defined?(pbAchievement)
            end
            if [:bond_lyra_kael_1, :bond_lyra_kael_2, :bond_lyra_kael_3,
                :bond_lyra_kael_4, :bond_lyra_kael_5].all? { |q| completed?(q) }
              pbAchievement(:ach_bond_lyra_kael_complete) if defined?(pbAchievement)
            end

            result
          end
        end
      end
    end
  end
end


#===============================================================================
# Codex full-completion tracker
#-------------------------------------------------------------------------------
# Each codexDiscover bumps add_progress for the Loremaster achievement.
# Wraps the existing global helper (defined in CodexData.rb) without
# changing its return value.
#===============================================================================
if defined?(codexDiscover)
  alias _sc_ach_orig_codex_discover codexDiscover unless defined?(_sc_ach_orig_codex_discover)

  def codexDiscover(entry_id)
    result = _sc_ach_orig_codex_discover(entry_id)
    if result && defined?(GameData::Achievement)
      GameData::Achievement.add_progress(:ach_full_codex, 1)
    end
    result
  end
end
