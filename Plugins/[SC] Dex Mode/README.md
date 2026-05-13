# Shattered Crowns Dex Mode

**Version:** 1.0.0
**Essentials:** v21.1
**Author:** Nononever

Lets the player choose between two ways to play Shattered Crowns:

| Mode | Species | When to pick |
|---|---|---|
| **SC Limited** | ~430 hand-curated species (Gen 1-9 themed to story) | First playthrough; immersive curated world |
| **Full Dex** | All registered species (~1000+) | Completionist runs, second playthrough, bring-your-favourite |

The choice is set once at new-game start (cutscene prompt), persists
in the save, and can be changed anytime from the pause menu via
`pbOpenDexModeSelect`.

---

## How it works

### Encounter filter (`003_Encounter_Filter.rb`)
Hooks `PokemonEncounters#choose_wild_pokemon`. When SC_LIMITED is
active and the roll produces an out-of-dex species, the plugin applies
`OUT_OF_DEX_POLICY` (default `:REROLL`, falls back to `:SUBSTITUTE`).
- **`:REROLL`** — re-rolls the encounter table up to `MAX_REROLLS` times before giving up
- **`:SUBSTITUTE`** — replaces the species with the in-dex species closest in BST + primary type
- **`:ALLOW`** — lets the out-of-dex species through (effectively disables filtering for that case)

### Trainer filter (`004_Trainer_Filter.rb`)
Hooks `NPCTrainer#initialize` to optionally substitute out-of-dex
Pokémon on trainer rosters. **Defaults to `:ALLOW`** because:
1. Story trainers (Generals, Champion, Chosen) use only in-dex species
2. Ordinary trainers are hand-authored — their teams are part of the flavour

If you tighten `TRAINER_POLICY = :SUBSTITUTE`, the `EXEMPT_TRAINER_TYPES`
list in `004_Trainer_Filter.rb` still preserves story-critical trainers
verbatim. Add custom trainer types there if you need to.

### Pokédex UI (`006_Pokedex_UI_Hook.rb`)
In SC_LIMITED with `HIDE_OUT_OF_DEX_IN_POKEDEX = true`, the Pokédex
skips slots for species not in the curated list. The total / seen /
owned counts are recalculated against the curated list size, so
completion % is achievable.

Out-of-dex species the player has *already caught* (e.g. switched
from FULL_DEX -> SC_LIMITED mid-save) still display.

### Roaming legendaries (`003_Encounter_Filter.rb` tail)
Defensive hook on `SCWildLegendaries.can_spawn?` so a future roamer
that isn't on the curated list won't appear in SC_LIMITED. The eight
shipped story roamers are all already in the list.

---

## File layout

```
Plugins/[SC] Dex Mode/
  meta.txt
  000_Config.rb           ← all settings + policies
  001_DexModeCore.rb      ← state + substitute() helper + save flag
  002_SC_Limited_Dex.rb   ← the curated ~430-species list
  003_Encounter_Filter.rb ← wild-encounter hook
  004_Trainer_Filter.rb   ← trainer-roster hook (+ EXEMPT_TRAINER_TYPES)
  005_Mode_Select.rb      ← UI cutscene + pbOpenDexModeSelect
  006_Pokedex_UI_Hook.rb  ← Pokédex visibility filter
  README.md
```

---

## Configuration knobs (`000_Config.rb`)

| Constant | Default | What it does |
|---|---|---|
| `ENABLED` | `true` | Master switch. Set to false to disable the whole plugin. |
| `DEFAULT_MODE` | `:SC_LIMITED` | Mode used until the player picks (or if `PROMPT_AT_START = false`). |
| `PROMPT_AT_START` | `true` | Show the mode-select cutscene at new-game start. |
| `OUT_OF_DEX_POLICY` | `:REROLL` | What to do with wild rolls that hit out-of-dex species. |
| `MAX_REROLLS` | `4` | How many times to re-roll before falling back to substitute. |
| `TRAINER_POLICY` | `:ALLOW` | What to do with trainer rosters that include out-of-dex species. |
| `HIDE_OUT_OF_DEX_IN_POKEDEX` | `true` | Skip unseen out-of-dex slots in the dex UI. |
| `DEBUG_MODE` | `$DEBUG` | Log every substitution to the console. |

---

## The curated list (`002_SC_Limited_Dex.rb`)

The ~430-species list is built from:

- **`STORY_MANDATORY`** — every species used by a named story trainer + the three Guardian lines + all key legendaries + the Astoria/Spirit-Realm encounter pools defined in the story arcs.
- **`STARTER_LINES`** — every Gen 1-9 starter line, all three stages.
- **`GEN1` through `GEN9`** — themed selections biased toward nordic mythology / dragons / ghosts / ancient (fossil) / steel knights.

The list is concatenated, deduplicated, and auto-filtered at load time
through `GameData::Species.exists?` — species that aren't registered in
this project's PBS are silently dropped. This means the plugin grace-
fully degrades on installations missing later-gen species without
crashing.

To customize: edit `002_SC_Limited_Dex.rb` and add/remove symbols. The
final list is the union of all constant arrays minus unknowns.

---

## Public API

```ruby
DexMode.current                  # => :SC_LIMITED or :FULL_DEX
DexMode.limited?
DexMode.full?
DexMode.in_dex?(:CHARIZARD)      # => true / false
DexMode.set(:FULL_DEX)
DexMode.species_list             # => Array of Symbols active in current mode
DexMode.substitute(:UNKNOWN)     # => in-dex Symbol with closest BST+type match

SCLimitedDex.species             # => the curated list (filtered to existing species)
SCLimitedDex.count
SCLimitedDex.include?(:GRENINJA)

# Event-script helpers
pbOpenDexModeSelect              # opens the mode-select menu
pbShowDexModeInfo                # explains the two modes
pbDexCompletionSummary           # prints current-mode dex completion stats
pbCutscene(:sc_dex_mode_prompt)  # fires the new-game-start prompt
```

---

## Integration

Add this line to your new-game intro event (after `:ch1_wake_up` and
before `:ch1_starter_bond`):

```ruby
pbCutscene(:sc_dex_mode_prompt)
```

That's the whole hookup. The rest is automatic.

For a pause-menu entry, add to your custom menu plugin:

```ruby
MenuHandlers.add(:pause_menu, :dex_mode_select, {
  "name"   => _INTL("Dex Mode"),
  "order"  => 70,
  "effect" => proc { pbOpenDexModeSelect }
})
```

---

## Compatibility

- **Companion Battles** — Lyra and Kael's rosters stay canonical.
- **Wild Legendaries** — defensive `can_spawn?` filter; story roamers are all on the curated list already.
- **Bond Quests / Fate Points / Achievements** — untouched. Story-side hooks fire in both modes.
- **NG+** — the chosen mode is carried over in the snapshot (extend `SCNGPlus::CARRY_OVER_KEYS` with `:sc_dex_mode` if you want NG+ to start in the same mode as the prior run).
