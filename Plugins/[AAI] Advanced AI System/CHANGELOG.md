# Advanced AI System — Changelog

Shattered-Crowns-side fixes to the upstream Advanced AI plugin
(originally from eeveeexpo.com/resources/1825/). Current version:
**2.6.1**.

---

## Critical fixes

### AI with an only-move that scored -999/-1000 did nothing on its turn

Reported: an AI opponent whose only move was False Swipe just stood
there each turn. Two interacting issues:

1. **`0_Move_Scorer.rb` returned a flat `-999` for False Swipe in
   trainer battles** (mislabelled "PVP" — this is a single-player game,
   there is no online multiplayer). The special-case was removed
   entirely. False Swipe is a weak 40 BP move that already scores low
   on its own merits; the AI still uses it when it's the best or only
   option, which is correct.

2. **The real bug — `005_AI_ChooseMove.rb#pbChooseMove` registered no
   command when every move score collapsed to the threshold floor.**
   When the AI's only move is hard-penalised (False Swipe's old -999,
   but also Fake Out after turn 1, an only-move that's Disabled /
   Imprisoned / Choice-locked, or every move at 0 PP), `max_score`
   goes negative, every choice's weight `c[3]` becomes 0,
   `total_score` is 0, `pbAIRandom(0)` returns 0, and the weighted-pick
   loop's `next if randNum >= 0` skips *every* choice — no move is
   registered and the turn passes empty.

   Added a structural fallback: if the weighted pick registers nothing,
   force the highest-scored move; if even that can't be registered,
   `pbAutoChooseMove` (Struggle). Guarantees the AI never stands idle,
   and catches **every** hard-penalty-only-move case, not just False
   Swipe.

### Switch moves "succeeded" but no switch actually happened

**The eeveeexpo bug.** U-Turn / Volt Switch / Flip Turn / Parting Shot /
Teleport / Baton Pass would announce the switch on the AI's side, but
the AI's Pokémon stayed in. Root cause: the AI was choosing to switch
*into the same Pokémon already in battle.*

`find_best_switch_advanced` and two related helpers
(`evaluate_better_options`, `evaluate_switch_candidate_detailed`'s
partner-check) iterated the entire party with only `pbCanSwitchIn?`
filtering — and `pbCanSwitchIn?` **does not** exclude the
currently-active battler. On small parties (or when every reserve was
poorly rated), the active slot scored highest and got "picked." The
engine then dutifully called `pbRecallAndReplace(idx, idx)` — the
battler appeared to "switch into itself," the turn was wasted, and the
move's announced effect didn't fire.

Added explicit `next if @battle.pbFindBattler(i, user.index)` guards
at **all three** sites (`Switch_Intelligence.rb:387, 748, 1568`) so
the active Pokémon is now skipped before scoring even begins.

### Reserved ace was permanently stuck in the back

`evaluate_better_options` and `find_best_switch_advanced` had a
matchup-based "ace override" that let the AI use its reserved Pokémon
any time it had a slight matchup advantage — defeating the entire
`ReserveLastPokemon` design. Removed both overrides; the ace is now
strictly reserved until every other party member has fainted *or* the
smart-override threshold (below) is met.

### Smart-override for the reserved ace

When the ace has a *dramatically* better matchup than every alternative
(matchup-score gap ≥ 50), the AI is allowed to send it anyway. Prevents
the AI from holding back its only counter while losing the battle —
e.g. Mega Houndoom vs Psychic/Ice teams. Symmetric in
`evaluate_better_options` and `find_best_switch_advanced`.

### `forceSwitch` move effects now respect AI replacement choice

Whirlwind / Roar / Dragon Tail forcibly switch the opponent, but the AI
was still allowed to choose its replacement freely — which broke
fan-game randomizer challenges where the trainer's order matters.
Switched to the engine's deterministic forced-switch selection path.

---

## Crash fixes

### `NPCTrainer#skill` crash in `pbSetUpSides` override

The Team_Preview_Intelligence override copied a code path written for
`Battle::AI::AITrainer` (which has `attr_reader :skill`) into a place
where the trainer is an `NPCTrainer` (which exposes `skill_level`
instead). Crashed with `undefined method 'skill' for NPCTrainer` when
the AI initialised double battles with team-preview enabled. Now uses
`respond_to?(:skill_level)` with a sane default fallback.

### Gen 9 `PBEffects` constants — uninitialized constant

`PBEffects::AllySwitch` (Doubles_Coordination.rb:1015) and
`PBEffects::SupremeOverlord` (Combat_Utilities.rb:375) crashed with
`uninitialized constant` when the Gen 9 Pack plugin wasn't installed.
Both call sites now check `defined?(PBEffects::X)` first.

### Crash-safe `GameData` lookups in scoring code

`GameData::Item.get` (Disruption_Moves.rb:243, 324),
`GameData::Ability.get` (Advanced_Abilities.rb:93), and
`GameData::Species.get` (Battle_Personalities.rb:104,
Win_Conditions.rb:364/365/375/376) raised on item/ability/species IDs
that no longer exist after PBS edits, save-file leftovers, or
third-party plugin uninstalls. Switched to `try_get` with nil-safe
chaining and sensible fallbacks (default 100 base speed, skip
personality scoring for unknown species).

### Sucker Punch crash in scoring

`score_sucker_punch_risk` was calling `.battler` on a `Battle::Battler`
(double-unwrap). The target is *already* a battler in the new scoring
path. Removed the redundant unwrap.

### Setup-move stat boost crash in doubles

`Doubles_Coordination` referenced `physicalMove?` on `GameData::Move`
(which exposes `physical?`) in four places across three files. Switched
to the correct helper API and added a `setup_move?` test.

### `Doubles_Coordination` NoMethodError + NameError

- Line 2790: `GameData::Move` exposes `damaging?`, not `damagingMove?`.
- Line 3613: `DoublesCoordination` must be qualified as
  `AdvancedAI::DoublesCoordination` inside the `Battle::AI` scope.

### `Item_Intelligence` NameError at skill 85+

`ItemIntelligence` must be qualified as `AdvancedAI::ItemIntelligence`
inside `Battle::AI`. Without the namespace, the constant lookup hit
`Battle::AI::ItemIntelligence` (which doesn't exist) and crashed.

### Production debug noise

`DEBUG_MODE = true` in `0_Settings.rb` and two unconditional `echoln`
lines at the bottom of `Debug_Menu.rb` spammed the console on every
game start. `DEBUG_MODE` now defaults to `false`; the load-time logs
are gated on it.

---

## Scoring fixes

### Sleep / status moves into immune abilities silently scored positive

The old `score_status_utility` only applied a `-200` penalty when the
target had an immunity ability — the rest of the move's status-value
tier multiplier could *still* push the overall score positive. The AI
would happily try to Hypnosis a Hypno or Toxic a Steelix.

Added comprehensive early failure checks (`-1000`) for the full
immunity set:

- **Sleep**: Insomnia, Vital Spirit, Sweet Veil
- **Paralysis**: Limber
- **Burn**: Water Veil
- **Poison**: Immunity
- **Powder**: Overcoat, Safety Goggles
- **Sun**: Magma Armor (frozen), Leaf Guard (status-active)
- **Type immunities**: Toxic/Poison-target Poison & Steel, Thunder
  Wave-target Ground, Glare-target Ghost, Will-O-Wisp-target Fire,
  Sleep Powder-target Grass, etc.

After this fix, every status move the AI considers actually has a
non-zero chance of landing.

### Status-move scorers still bypassed type immunity

Even after the upstream immunity fix, three scorers
(`score_stall_synergy`, `score_role_synergy`, `score_status_utility`)
applied positive bonuses when the target's *primary type* was immune.
Added type-immunity checks so Toxic / Will-O-Wisp / Thunder Wave bonuses
only apply when the target can actually be statused.

### Over-aggressive switching penalty

Increased the "no better option" penalty in `Switch_Intelligence` from
`-15` to `-30` so the AI stops switching just to switch. Visible
improvement: fewer pointless pivot-cycles in long matches.

### Priority-blocking abilities check ally targets too

Upstream's check for Dazzling / Queenly Majesty / Armor Tail only
looked at the primary target — in doubles the *target's ally* also
matters. Now uses `allSameSideBattlers`. Also fixes the foe's powered-up
priority move ignoring a defending ally's Dazzling.

### Smarter type-disadvantage scoring

`evaluate_type_disadvantage` now considers the foe's *last used move*
alongside its STAB types. Catches scenarios like a Greninja that just
used Ice Beam — pure STAB analysis would say "fine, send Garchomp,"
but the just-revealed Ice coverage says "absolutely not."

### Stat-stage evaluation

`evaluate_stat_stages` now factors all six stages, not just Atk/SpAtk.
Defensive drops below `-2` now trigger the AI to consider switching out
(was previously only triggered by offensive drops).

### Hazard awareness on replacements

`rate_replacement_pokemon` now calculates Stealth Rock / Spikes /
Toxic Spikes / Sticky Web damage and applies a proportional matchup
penalty. Hazardous switches are now reliably rated below safe ones.

### `ReserveLastPokemon` skill-flag — restored intended behaviour

Earlier hotfixes had aggressively stripped the auto-added flag from
every trainer because the old AAI logic ignored it. Removed the
stripping; restored the upstream `has_skill_flag?("ReserveLastPokemon")`
check. The ace (last party slot) is now reserved at skill ≥ 100 as
designed — with the smart-override above when the ace is the clear
best counter.

---

## New settings

| Constant | Default | Purpose |
|---|---|---|
| `ENFORCE_SLEEP_CLAUSE` | `true` | Gates `Sleep_Clause.rb#would_violate_sleep_clause?` so users can disable Smogon-style sleep clause for custom rulesets. |
| `DEBUG_SWITCH_INTELLIGENCE` | `false` | Prints the full switch-scoring breakdown to the console. Invaluable for debugging team-specific behaviour on user reports. Replaces the half-dozen inline `if debug` blocks scattered through `Switch_Intelligence.rb`. |
| `RESERVE_OVERRIDE_THRESHOLD` | `50` | Matchup-score gap above which the smart-override allows the reserved ace to be sent before all other party members are down. |
| `DEBUG_MODE` | `false` (was `true`) | Plugin-wide debug logging. |

---

## Display polish

### 6100 % damage display fix

Two layered `*100` multipliers caused the debug echoln to print
`0.61 * 100 * 100 = 6100 %` when the preview damage was 61 %. Removed
the inner multiplication.

---

## Notes for future maintainers

- **Don't "fix" the `.skill` references** inside `class Battle::AI`
  (`Core.rb:84, 271, 439`). `@trainer` there is `Battle::AI::AITrainer`,
  which has `attr_reader :skill`. The crash fix above only applies to
  the `NPCTrainer` path inside the Team_Preview override.

- **Three `pbFindBattler` skip-active guards** exist in
  `Switch_Intelligence.rb` (387, 748, 1568). All three are necessary
  — they protect different code paths. Don't dedupe without verifying
  each call site.

- **`ReserveLastPokemon` is a trainer skill flag**, not a global
  toggle. The plugin respects it when present. The smart-override
  threshold lives in `0_Settings.rb` as `RESERVE_OVERRIDE_THRESHOLD`.

- **`ENFORCE_SLEEP_CLAUSE`** only affects the AI's decision to *use*
  sleep moves. The engine still tracks sleep counts via the standard
  Essentials system regardless.

- The plugin folder was previously named `[000_AAI]` before being
  renamed to `[AAI]`. For pre-rename history:

  ```
  git log --all --oneline -- "Plugins/[000_AAI]*"
  ```
