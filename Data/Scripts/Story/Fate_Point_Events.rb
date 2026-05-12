#===============================================================================
# POKÉMON SHATTERED CROWNS - FATE POINT TRIGGERS
#===============================================================================
# Wires concrete story beats to Destiny Board fate point grants. Without this,
# pbEarnFatePoints is never called, START_POINTS stays at 0, and the entire
# Destiny Board / perk system is inert.
#
# Budget overview (totals to ~14 FP by end of Main Story, plenty of room for
# Astoria-era perks afterward):
#
#   ACT 1 — Awakening              : 1 FP per Guardian-mark awakening x 3
#   ACT 2 — Trials                 : 1 FP per Guardian-naming x 3
#   ACT 3 — Shards & Sacrifices    : 2 FP for Elena's sacrifice, 2 for Ragnar's
#   ACT 4 — Final Battle           : 1 FP for sealing Nidhoggr
#   ACT 5 — Crown Restoration      : 1 FP per Astoria temple x 3
#
# Each grant is fire-once via a story flag so they can't be re-collected by
# replaying a cutscene during dev / cutscene gallery.
#===============================================================================

module SCFateGrant
  # One-shot grant. Stores the key in $PokemonGlobal.sc_fate_grants_claimed
  # so it can't fire twice across saves.
  def self.once(key, amount, reason)
    $PokemonGlobal.sc_fate_grants_claimed ||= []
    return if $PokemonGlobal.sc_fate_grants_claimed.include?(key)
    $PokemonGlobal.sc_fate_grants_claimed << key
    pbEarnFatePoints(amount, reason) if defined?(pbEarnFatePoints)
  end
end

class PokemonGlobalMetadata
  attr_accessor :sc_fate_grants_claimed
end

SaveData.register(:sc_fate_grants_claimed) do
  ensure_class :Array
  save_value { $PokemonGlobal.sc_fate_grants_claimed ||= [] }
  load_value { |value| $PokemonGlobal.sc_fate_grants_claimed = value }
  new_game_value { [] }
end


#===============================================================================
# EventHandler hooks — fire whenever the named cutscene has played
#-------------------------------------------------------------------------------
# We don't have a generic :on_cutscene_played event, so instead each fate
# grant rides on the cutscene's own logic: the cutscene calls
# SCFateGrant.once(...) at the appropriate moment. For cutscenes that already
# exist in Main_Story.rb, we inject the grants via the EventHandler below
# (fires when a chapter is marked complete).
#===============================================================================
EventHandlers.add(:on_sc_chapter_completed, :sc_fate_point_grants,
  proc { |chapter_id|
    case chapter_id
    # ---- Act 1: marks awaken ----
    when :ch8         # The Marks Appear
      SCFateGrant.once(:fate_mark_awakening_pn,    1, "The mark of Valor awakens")
      SCFateGrant.once(:fate_mark_awakening_lyra,  1, "Lyra's mark awakens")
      SCFateGrant.once(:fate_mark_awakening_kael,  1, "Kael's mark awakens")

    # ---- Act 2: Guardians named ----
    when :ch14        # Xerneas named
      SCFateGrant.once(:fate_guardian_xerneas, 1, "Xerneas is named")
    when :ch16        # Yveltal communion
      SCFateGrant.once(:fate_guardian_yveltal, 1, "Yveltal accepts Kael")
    when :ch11        # Player's first Zacian vision
      SCFateGrant.once(:fate_guardian_zacian,  1, "Zacian's call is heard")

    # ---- Act 3: shards, sacrifices ----
    when :ch22        # Xerneas trial / Lyra's sacrifice
      SCFateGrant.once(:fate_lyra_sacrifice,   1, "Lyra channels Xerneas's power")
    when :ch26        # Yveltal awakens fully
      SCFateGrant.once(:fate_kael_acceptance,  1, "Kael accepts Yveltal")
    when :ch28        # Ragnar's death — biggest non-final grant
      SCFateGrant.once(:fate_ragnar_sacrifice, 2, "Ragnar's sacrifice")
    when :ch32        # Elena's sacrifice
      SCFateGrant.once(:fate_elena_sacrifice,  2, "Elena's sacrifice")

    # ---- Act 4: final battle ----
    when :ch34        # Nidhoggr sealed
      SCFateGrant.once(:fate_seal_nidhoggr,    1, "Nidhoggr is sealed")

    # ---- Act 5: Crown restoration ----
    when :ch39        # Temple of Stars cleared
      SCFateGrant.once(:fate_temple_stars,     1, "The Stars accept you")
    when :ch40        # Temple of Tides cleared
      SCFateGrant.once(:fate_temple_tides,     1, "The Tides answer Lyra")
    when :ch41        # Temple of Shadows cleared
      SCFateGrant.once(:fate_temple_shadows,   1, "Shadows return Kael's name")
    end
  }
)


#===============================================================================
# Convenience helper — call from a cutscene that wants to grant a FP without
# going through chapter-completion (e.g. side-quest beats).
#-------------------------------------------------------------------------------
# Usage in a cutscene:
#   scene.script { scFateGrant(:fate_helped_orphan_kid, 1, "Helped a stranger") }
#-------------------------------------------------------------------------------
def scFateGrant(key, amount, reason)
  SCFateGrant.once(key, amount, reason)
end


#===============================================================================
# Bridge — fire :on_sc_chapter_completed when Chapter.complete is called
# (Chapter.complete already exists in 018_Chapter.rb but has no event hook.)
#===============================================================================
if defined?(GameData::Chapter)
  module GameData
    class Chapter
      class << self
        unless method_defined?(:_sc_fate_complete_orig)
          alias_method :_sc_fate_complete_orig, :complete

          def complete(chapter_id = nil)
            chapter_id ||= current
            result = _sc_fate_complete_orig(chapter_id)
            EventHandlers.trigger(:on_sc_chapter_completed, chapter_id) if defined?(EventHandlers)
            result
          end
        end
      end
    end
  end
end
