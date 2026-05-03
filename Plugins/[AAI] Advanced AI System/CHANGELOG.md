# Advanced AI System — Changelog

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

## 2.6 and earlier

See git history.
