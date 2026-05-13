# Advanced AI System — Changelog

This changelog covers every Shattered-Crowns-side fix to the upstream
Advanced AI plugin (originally from eeveeexpo.com/resources/1825/).
Entries below the current version are sorted newest-first.

---

## 2.6.1 — 2026-05-04

### Bug Fixes

- **Fix `NPCTrainer#skill` crash** in `pbSetUpSides` override
  (Team_Preview_Intelligence.rb). The override copied a code path written
  for `Battle::AI::AITrainer` (which has `attr_reader :skill`) into a place
  where the trainer is an `NPCTrainer` (which exposes `skill_level`
  instead). Crashed with `undefined method 'skill' for NPCTrainer` when
  the AI initialised double battles with team-preview enabled. Now uses
  `respond_to?(:skill_level)` and falls back to a sane default.

- **Guard Gen 9 `PBEffects` constants**. `PBEffects::AllySwitch`
  (Doubles_Coordination.rb:1015) and `PBEffects::SupremeOverlord`
  (Combat_Utilities.rb:375) crashed with `uninitialized constant` when
  the Gen 9 Pack plugin wasn't installed. Both call sites now check
  `defined?(PBEffects::X)` first.

- **Crash-safe `GameData` lookups** in scoring code. `GameData::Item.get`
  (Disruption_Moves.rb:243, 324), `GameData::Ability.get`
  (Advanced_Abilities.rb:93), and `GameData::Species.get`
  (Battle_Personalities.rb:104, Win_Conditions.rb:364/365/375/376) raised
  on item/ability/species IDs that no longer exist (after PBS edits,
  save-file leftovers, or third-party plugin uninstalls). Switched to
  `try_get` with nil-safe chaining and sensible fallbacks (default 100
  base speed, skip personality scoring for unknown species).

- **Production debug noise**. `DEBUG_MODE = true` in `0_Settings.rb` and
  two unconditional `echoln` lines at the bottom of `Debug_Menu.rb`
  spammed the console on every game start. `DEBUG_MODE` defaults to
  `false`; the load-time logs are gated on it.

### Notes

- The `.skill` references inside `class Battle::AI` (Core.rb:84, 271, 439)
  are intentional — `@trainer` there is `Battle::AI::AITrainer`, which
  has `attr_reader :skill`. Don't "fix" them.

---

## 2.6 — 2026-04 (Smart Reserve + Sleep/Immunity Audit)

### Bug Fixes

- **Sleep moves into Insomnia / Vital Spirit silently scored positive**
  (`Move_Scorer.rb`). The old `score_status_utility` only applied a
  `-200` penalty when the target had an immunity ability — the rest of
  the move's status-value tier multiplier could *still* push the
  overall score positive, so the AI would happily try to Hypnosis a
  Hypno or Toxic a Steelix. Added comprehensive early failure checks
  (`-1000`) for the full immunity set: **Insomnia, Vital Spirit, Sweet
  Veil, Limber, Water Veil, Immunity, Overcoat, Magma Armor, Safety
  Goggles** (powder moves), **Leaf Guard** (sun-active), and full
  type-immunity coverage (Toxic/Poison-target Poison & Steel, Thunder
  Wave-target Ground, Glare-target Ghost, Will-O-Wisp-target Fire,
  Sleep Powder-target Grass, etc.). After this fix, every status move
  the AI considers actually has a non-zero chance of landing.

- **`ReserveLastPokemon` skill-flag now respected as PE intended**.
  Earlier hotfixes had aggressively stripped the auto-added flag from
  every trainer because the old AAI logic ignored it. Removed the
  stripping; restored the upstream `has_skill_flag?("ReserveLastPokemon")`
  check. The ace (last party slot) is now reserved at skill ≥ 100 as
  designed.

- **Smart-override for the reserved ace**. When the ace has a *dramatically*
  better matchup than every alternative (matchup-score gap ≥ 50), the
  AI is allowed to send it anyway. Prevents the AI from holding back
  its only counter while losing the battle — e.g. Mega Houndoom vs
  Psychic/Ice teams. The override is symmetric in
  `evaluate_better_options` and `find_best_switch_advanced`.

- **Switch_Intelligence — over-aggressive switching penalty**. Increased
  the "no better option" penalty from `-15` to `-30` so the AI stops
  switching just to switch. Visible improvement: fewer pointless
  pivot-cycles in long matches.

- **Doubles_Coordination NoMethodError**: `GameData::Move` exposes
  `damaging?`, not `damagingMove?` (line 2790).
- **Doubles_Coordination NameError**: `DoublesCoordination` must be
  qualified as `AdvancedAI::DoublesCoordination` inside the `Battle::AI`
  scope (line 3613).
- **Item_Intelligence NameError at skill 85+**: `ItemIntelligence` must
  be qualified as `AdvancedAI::ItemIntelligence` inside `Battle::AI`.

### Move-Scorer Polish

- **Sucker Punch crash**. `score_sucker_punch_risk` was calling `.battler`
  on a `Battle::Battler` (double-unwrap). The target is *already* a
  battler in the new scoring path. Removed the redundant unwrap.
- **Setup-move stat boost crash in doubles**. `Doubles_Coordination`
  referenced `physicalMove?` on `GameData::Move` (which is `physical?`)
  in four places across three files. Switched to the helper API and
  added a `setup_move?` test.
- **Toxic / Will-O-Wisp / Thunder Wave vs immune types** (M-scorer
  follow-up). Even with the upstream immunity fix, three scorers
  (`score_stall_synergy`, `score_role_synergy`, `score_status_utility`)
  were still applying positive bonuses when the target's *primary type*
  was immune. Added type-immunity checks so the bonus only applies
  when the target can actually be statused.

### Doubles

- **Priority-blocking abilities check ally targets too**. Upstream's
  check for Dazzling / Queenly Majesty / Armor Tail only looked at the
  primary target — in doubles the *target's ally* also matters. Now
  uses `allSameSideBattlers` (also fixes the foe's powered-up move
  ignoring a defending ally's Dazzling).

### New Settings

- **`ENFORCE_SLEEP_CLAUSE` toggle** in `0_Settings.rb` (default `true`).
  `Sleep_Clause.rb`'s `would_violate_sleep_clause?` is now gated on
  the new toggle so users can disable Smogon-style sleep clause if
  they're running custom rules.

### Display

- **6100 % damage display fix**. Two layered `*100` multipliers caused
  the debug echoln to print `0.61 * 100 * 100 = 6100 %` when the
  preview damage was 61 %. Removed the inner multiplication.

---

## 2.5 — 2026-03 (Switch Intelligence Foundation)

This is the version most users will notice — the bulk of the work
the user-facing "Switch Intelligence" advertises was either rewritten
or stabilized here, including the bug that's been most-reported on the
eeveeexpo thread.

### Bug Fixes

- **Switch moves (U-Turn / Volt Switch / Flip Turn / Parting Shot /
  Teleport / Baton Pass) sometimes "succeeded" but no switch
  happened — the AI was trying to switch *into the same Pokémon
  already in battle.*** Root cause: `find_best_switch_advanced` and
  two related helpers (`evaluate_better_options`,
  `evaluate_switch_candidate_detailed` partner-check) iterated the
  whole party with only `pbCanSwitchIn?` filtering, which **does not**
  exclude the currently-active battler. On a small party (or when
  every reserve was poorly rated), the active slot was the
  highest-scored "candidate" and got picked again — the engine then
  dutifully called `pbRecallAndReplace(idx, idx)` and the battler
  appeared to "switch into itself," wasting the turn and the move.
  Added explicit `next if @battle.pbFindBattler(i, user.index)`
  guards at all three sites (Switch_Intelligence.rb:387, 748, 1568)
  so the active Pokémon is now skipped before scoring even begins.
  This is the fix for the eeveeexpo report
  *"when switch moves are used by the opponent, no switch happens"*.

- **Ace was permanently stuck in the back even when nothing else
  could fight**. `evaluate_better_options` and `find_best_switch_advanced`
  had a matchup-based "ace override" that let the AI use its reserved
  Pokémon any time it had a slight matchup advantage — that defeated
  the entire `ReserveLastPokemon` design. Removed both overrides; the
  ace is now strictly reserved until every other party member has
  fainted *or* the smart-override threshold (added in 2.6) is met.

- **`forceSwitch` move effects now respect AI replacement choice**.
  Whirlwind / Roar / Dragon Tail forcibly switch the opponent — but
  the AI was still allowed to choose its replacement freely, which
  broke fan-game randomizer challenges where the trainer's order
  matters. Switched to the engine's deterministic forced-switch
  selection path.

- **DEBUG_SWITCH_INTELLIGENCE constant** added (`0_Settings.rb`). Off
  by default. Turning it on prints the full switch-scoring breakdown
  to the console — invaluable for debugging team-specific behaviour
  on user reports. Replaces the half-dozen inline `if debug` blocks
  that were scattered through `Switch_Intelligence.rb`.

### Improvements

- **Smarter type-disadvantage scoring**. `evaluate_type_disadvantage`
  now considers the foe's *last used move* alongside its STAB types —
  catches things like a Greninja that just used Ice Beam, where pure
  STAB analysis would say "fine, send Garchomp" but the just-revealed
  Ice coverage says "absolutely not."
- **Stat-stage evaluation**. `evaluate_stat_stages` now factors all
  six stages, not just Atk/SpAtk. Defensive drops below -2 now trigger
  the AI to consider switching out (was previously only triggered by
  offensive drops).
- **Hazard awareness**. `rate_replacement_pokemon` now calculates
  Stealth Rock / Spikes / Toxic Spikes / Sticky Web damage and
  applies a proportional matchup penalty. Hazardous switches are now
  reliably rated below safe ones.

---

## 2.4 — 2026-02 (Doubles Coordination Hardening)

### Bug Fixes

- **`Doubles_Coordination.rb` ally-switch detection broke when the ally
  had already fainted earlier in the round**. The check at
  `pbChooseToSwitchOut` iterated `allSameSideBattlers` and called
  `@battle.choices[b.index]` without a `next if b.fainted?` guard. On
  the first turn after a faint, `choices[]` could contain stale data
  for the fainted slot — leading the AI to think its ally was about
  to switch out, then declining to switch itself, then standing still
  while the ally's slot was empty.

- **`Item_Intelligence.rb` at skill ≥ 85** raised
  `uninitialized constant Battle::AI::ItemIntelligence`. Module
  reference resolved to the wrong namespace; qualified as
  `AdvancedAI::ItemIntelligence` and the issue cleared.

- **`Strategic_Awareness.rb`** crashed during the AI's first turn of
  long battles because `@user.lastMoveUsed` could be `nil`. Added a
  nil-guard. Also made the "if foe is at high HP, weigh longer-fight
  scoring more" branch require both fighters to have ≥ 50 % HP, not
  just the foe.

### Performance

- **Move-scorer prediction-advantage cache**. `evaluate_prediction_advantage`
  was being recomputed for every candidate move every turn — `O(moves²)`.
  Memoized per-turn at `initialize_switch_caches`. Visible CPU drop in
  full doubles with 4 trained AI opponents.

---

## 2.3 — 2026-01-07 (Big Switch Intelligence push)

The headline release where Switch_Intelligence was effectively rewritten
to use scored candidate evaluation instead of upstream's binary
heuristics. Many of the smaller follow-up fixes above are corrections
to bugs introduced here.

### Major

- **New `Switch_Intelligence.rb` architecture**. Upstream's
  `should_switch?` was a binary good/bad heuristic and `find_best_switch`
  was first-found-good-enough. Replaced with:
  - `should_switch_advanced?` — calls `calculate_switch_score` returning
    a continuous value
  - `calculate_switch_score` decomposes into named sub-scorers:
    `evaluate_type_disadvantage`, `evaluate_survival_concerns`,
    `evaluate_stat_stages`, `evaluate_better_options`, `evaluate_momentum`,
    `evaluate_prediction_advantage`
  - `find_best_switch_advanced` returns the *best-scored* replacement,
    not the first plausible one. Same for `evaluate_better_options`.

- **`evaluate_sacrifice_value`**. New scorer for "should I let the
  current battler take a hit so a fresh switch comes in clean?" — the
  AI now considers planned sacrifices instead of always trying to
  preserve current HP.

- **`Pivot_Moves.rb` module**. Dedicated scorer for U-Turn / Volt
  Switch / Flip Turn / Parting Shot / Teleport / Baton Pass:
  `evaluate_pivot`, `evaluate_offensive_pivot`, `evaluate_defensive_pivot`,
  `evaluate_slow_pivot`, `pivot_vs_attack`. Pivot moves now compete
  with regular attacks on equal scoring footing, biased by intent.

- **`Team_Preview_Intelligence.rb`** override for lead selection in
  team-preview formats. Picks the lead based on:
  - Type matchup against the predicted opposing lead
  - Speed control (does the lead outspeed?)
  - Setup opportunity (Webs / SR / sun / rain leads, etc.)
  - Reserve-the-ace rule respected even at preview-time

### Bug Fixes (in the same release)

- Numerous upstream NoMethodErrors caused by `damagingMove?` vs `damaging?`
- `physicalMove?`/`specialMove?` API standardization
- Powder-immunity for Grass types (Sleep Powder, Spore, etc.)
- ParalyzeTarget: Electric-move-only Ground immunity check
- Several `score_status_utility` immunity edge cases

---

## 2.2 — 2025-12 (Compatibility audit)

Smaller release; primarily compatibility patches for the SC plugin pack
and engine-side trainer-system refactors.

- **`Battle::Peer` rename support**. v21.1 of Pokémon Essentials uses
  `class Battle::Peer` rather than the older `module Battle::BattlePeer`.
  All AAI hooks updated.
- **`pbStorePokemon(player, pkmn)` signature**. The two-arg form is now
  the standard; aliased AAI hooks updated.
- **`AdvancedAI::DEBUG_MODE` namespace**. Was previously a top-level
  `$AAI_DEBUG`. Moved under the plugin's module.

---

## 2.1 and earlier

The first SC-side fork of the upstream Advanced AI plugin. Versions
prior to 2.1 are not exhaustively documented because the modifications
were small and incremental — mainly:

- Original eeveeexpo upload integrated into the plugin folder
- Settings namespaced under `AdvancedAI::`
- Initial Sleep Clause / OHKO / Endless-Battle prevention hooks
- DBK Battle Kit compatibility (don't shadow DBK's own move-scoring)
- First-pass crash fixes (try_get, defined?, nil-safe chains)

For anything before 2.1, run:

```bash
git log --all --oneline -- "Plugins/[AAI]*" "Plugins/[000_AAI]*"
```

(the plugin lived under `[000_AAI]` before being renamed to `[AAI]`).

---

## Notes for future maintainers

- The `.skill` references inside `class Battle::AI` (`Core.rb:84, 271,
  439`) are intentional — `@trainer` there is `Battle::AI::AITrainer`,
  which has `attr_reader :skill`. Don't "fix" them.
- The `pbFindBattler(i, user.index)` skip-active-Pokémon guard exists in
  three places in `Switch_Intelligence.rb` (387, 748, 1568). All three
  are necessary — they protect different code paths. Don't dedupe without
  verifying.
- `ReserveLastPokemon` is a **trainer skill flag**, not a global toggle.
  The plugin respects it when present. The smart-override threshold
  (matchup score gap ≥ 50) is configurable in `0_Settings.rb` as
  `RESERVE_OVERRIDE_THRESHOLD`.
- The Sleep Clause toggle (`ENFORCE_SLEEP_CLAUSE`) only affects the AI's
  decision to *use* sleep moves. The engine still tracks sleep counts
  via the standard Essentials system.
