#===============================================================================
# Crown Shatter — Shatter Field Data
#===============================================================================
# Defines the 18 type-specific Shatter Fields and their effects.
# Each field has:
#   :name        — Display name
#   :type        — The type that gets boosted
#   :boost       — Multiplier for the boosted type (uses Settings default)
#   :weather     — Weather to start (nil if none)
#   :message     — Message displayed when the field activates
#   :end_message — Message displayed when the field ends
#   :effects     — Hash of special per-turn / passive effects
#===============================================================================
module CrownShatter
  #=============================================================================
  # Shatter Field Definitions
  #=============================================================================
  SHATTER_FIELDS = {
    #---------------------------------------------------------------------------
    :NORMAL => {
      name:        "Neutral Field",
      type:        :NORMAL,
      message:     "The battlefield was purged of all distortions!",
      end_message: "The Neutral Field faded.",
      effects:     {
        clear_all_fields: true,    # Removes weather, terrain, screens, hazards
        typeless_moves:   true     # All moves become typeless
      }
    },
    #---------------------------------------------------------------------------
    :FIRE => {
      name:        "Scorched Field",
      type:        :FIRE,
      message:     "The crown fragment erupted — the field is scorched!",
      end_message: "The Scorched Field cooled down.",
      effects:     {
        weaken_type: :ICE,          # Ice moves halved
        chip_damage: { fraction: 16, immune_types: [:FIRE] }
      }
    },
    #---------------------------------------------------------------------------
    :WATER => {
      name:        "Flooded Field",
      type:        :WATER,
      message:     "The crown fragment burst — the field is flooded!",
      end_message: "The Flooded Field drained away.",
      effects:     {
        block_type:  :GROUND,       # Ground moves fail (except vs Flying)
        speed_halve: { immune_types: [:WATER] }
      }
    },
    #---------------------------------------------------------------------------
    :GRASS => {
      name:        "Overgrown Field",
      type:        :GRASS,
      message:     "The crown fragment bloomed — the field is overgrown!",
      end_message: "The Overgrown Field withered.",
      effects:     {
        grounded_heal: { fraction: 8 },  # Grounded mons heal 1/8
        fire_boost:    1.1                # Fire +10% (burning thicket)
      }
    },
    #---------------------------------------------------------------------------
    :ELECTRIC => {
      name:        "Charged Field",
      type:        :ELECTRIC,
      message:     "The crown fragment sparked — the field is charged!",
      end_message: "The Charged Field dissipated.",
      effects:     {
        contact_paralysis: 20,     # 20% paralysis on contact
        ground_boost:      1.2     # Ground +20% (conductor)
      }
    },
    #---------------------------------------------------------------------------
    :ICE => {
      name:        "Frozen Field",
      type:        :ICE,
      message:     "The crown fragment froze — the field is glacial!",
      end_message: "The Frozen Field thawed.",
      effects:     {
        speed_drop_per_turn: { immune_types: [:ICE] },  # -1 Spe/turn
        set_weather:         :Hail
      }
    },
    #---------------------------------------------------------------------------
    :FIGHTING => {
      name:        "Arena Field",
      type:        :FIGHTING,
      message:     "The crown fragment blazed — an arena has formed!",
      end_message: "The Arena Field crumbled.",
      effects:     {
        block_switching: true,     # No switching for either side
        block_priority:  true      # Priority moves disabled
      }
    },
    #---------------------------------------------------------------------------
    :POISON => {
      name:        "Toxic Field",
      type:        :POISON,
      message:     "The crown fragment corroded — the field is toxic!",
      end_message: "The Toxic Field neutralised.",
      effects:     {
        poison_on_entry: true,            # Grounded mons poisoned on switch-in
        poison_heal: { fraction: 16 }     # Poison types heal 1/16/turn
      }
    },
    #---------------------------------------------------------------------------
    :GROUND => {
      name:        "Quake Field",
      type:        :GROUND,
      message:     "The crown fragment cracked — the field is quaking!",
      end_message: "The Quake Field settled.",
      effects:     {
        negate_levitate: true,     # Levitate/Flying immunity negated for Ground
        flinch_chance:   10        # All attacks gain 10% flinch
      }
    },
    #---------------------------------------------------------------------------
    :FLYING => {
      name:        "Gale Field",
      type:        :FLYING,
      message:     "The crown fragment gusted — the field is a gale!",
      end_message: "The Gale Field calmed.",
      effects:     {
        grant_levitate:   true,    # All mons effectively have Levitate
        block_weight_moves: true   # Weight-based moves fail
      }
    },
    #---------------------------------------------------------------------------
    :PSYCHIC => {
      name:        "Warped Field",
      type:        :PSYCHIC,
      message:     "The crown fragment pulsed — the field is warped!",
      end_message: "The Warped Field normalised.",
      effects:     {
        accuracy_drop: 10,         # All moves -10% accuracy
        status_perfect: true       # Status moves can't miss
      }
    },
    #---------------------------------------------------------------------------
    :BUG => {
      name:        "Swarm Field",
      type:        :BUG,
      message:     "The crown fragment hummed — the field is swarming!",
      end_message: "The Swarm Field dispersed.",
      effects:     {
        max_multihit:     true,    # Multi-hit moves always hit max times
        double_hazards:   true     # Entry hazards deal double
      }
    },
    #---------------------------------------------------------------------------
    :ROCK => {
      name:        "Ruin Field",
      type:        :ROCK,
      message:     "The crown fragment shattered — the field is in ruins!",
      end_message: "The Ruin Field cleared.",
      effects:     {
        set_weather:      :Sandstorm,
        accuracy_drop_non: { amount: 1, immune_types: [:ROCK, :GROUND, :STEEL] }
      }
    },
    #---------------------------------------------------------------------------
    :GHOST => {
      name:        "Spirit Field",
      type:        :GHOST,
      message:     "The crown fragment wailed — spirits haunt the field!",
      end_message: "The Spirit Field faded to silence.",
      effects:     {
        normal_hits_ghost: true,   # Normal/Fighting moves hit Ghost types
        haunt_chip:        { fraction: 8 }  # Fainted mons' types deal chip
      }
    },
    #---------------------------------------------------------------------------
    :DRAGON => {
      name:        "Primordial Field",
      type:        :DRAGON,
      message:     "The crown fragment roared — the field is primordial!",
      end_message: "The Primordial Field quieted.",
      effects:     {
        crit_boost:       1,       # All moves gain +1 crit stage
        block_multihit:   true     # Multi-hit moves fail
      }
    },
    #---------------------------------------------------------------------------
    :DARK => {
      name:        "Eclipse Field",
      type:        :DARK,
      message:     "The crown fragment eclipsed — darkness covers the field!",
      end_message: "The Eclipse Field lifted.",
      effects:     {
        strip_boosts_eot: true     # Positive stat changes removed at end of turn
      }
    },
    #---------------------------------------------------------------------------
    :STEEL => {
      name:        "Iron Field",
      type:        :STEEL,
      message:     "The crown fragment hardened — the field is ironclad!",
      end_message: "The Iron Field rusted away.",
      effects:     {
        def_boost_all:    1,       # All mons gain +1 Defense
        block_sound_moves: true    # Sound-based moves fail
      }
    },
    #---------------------------------------------------------------------------
    :FAIRY => {
      name:        "Enchanted Field",
      type:        :FAIRY,
      message:     "The crown fragment shimmered — the field is enchanted!",
      end_message: "The Enchanted Field faded.",
      effects:     {
        invert_stat_drops: true,   # Stat-dropping effects become boosts
        block_type:        :DRAGON # Dragon moves fail
      }
    }
  }

  #=============================================================================
  # Helper Methods
  #=============================================================================
  def self.field_data(type)
    SHATTER_FIELDS[type]
  end

  def self.field_name(type)
    data = SHATTER_FIELDS[type]
    data ? data[:name] : "Unknown Field"
  end

  def self.all_field_types
    SHATTER_FIELDS.keys
  end
end
