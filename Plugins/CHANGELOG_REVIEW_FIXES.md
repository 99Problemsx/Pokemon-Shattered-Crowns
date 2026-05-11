# [SC] Plugin Review — Fix Pack

**Repo:** `99Problemsx/Pokemon-Shattered-Crowns`
**Scope:** 34 [SC] plugins, ~105k LOC custom logic reviewed
**Date:** 2026-05-10

This pack contains fixes for every Critical and High finding plus the
automatable Medium ones from the code review. Drop-in replaces files under
`Plugins/`; nothing else in your repo is touched.

---

## How to apply

1. **Back up** your current `Plugins/` folder (or just rely on git).
2. Extract this ZIP over your repo's `Plugins/` directory, allow overwrites.
3. `git status` to see what changed; `git diff` to review each hunk.
4. Test in-engine: New game → first map → first battle → first evolution.
5. Commit.

Every change is marked in-source with a `SC FIX (review CX)` comment so
you can grep for them later: `grep -rn "SC FIX (review" Plugins/`.

---

## Critical fixes

### C1 — EBDX Battle UI silently wiped Companion Pokemon's evolution hook

**Symptom:** Following Pokémon could desync (wrong sprite, occasionally
invisible) after evolution because EBDX's complete rewrite of
`PokemonEvolutionScene#pbEndScreen` overwrote Companion Pokemon's alias
chain — purely a load-order accident (`Companion Pokemon` < `EBDX` alphabetically).

**Fix:**
- `[SC] EBDX Battle UI/019_SceneEvolution.rb` — EBDX's `pbEndScreen` now
  fires `EventHandlers.trigger(:on_evolution_scene_end, @pokemon)` at the
  end. Any plugin can listen to this regardless of load order.
- `[SC] Companion Pokemon/004_FollowerHooks.rb` — In addition to the
  existing direct alias (kept for non-EBDX setups), Companion Pokemon now
  also listens to `:on_evolution_scene_end` so the follower refresh
  always runs.

### C2 — Level Caps Ex's `pbGainExpOne` is a full Essentials rewrite, breaks other plugins

**Symptom:** Any plugin that hooks `Battle#pbGainExpOne` and loads before
Level Caps Ex (e.g. DBK, AAI) had its modifications silently dropped, because
LCE's alias `__level_caps_pbGainExpOne` was created but never called — the
new method body re-implemented Essentials' formula from scratch.

**Fix:** `[SC] Level Caps Ex/001_Main.rb`
- Added a fast-path: when neither hard-cap-block nor soft-cap-reduction is
  actively needed for the current Pokémon, LCE now delegates to the alias
  chain — which means other plugins' patches stay effective.
- The full-rewrite path is still there for the case where soft-cap EXP
  reduction has to be injected mid-formula (the architectural reason for
  the rewrite). That case is unavoidable without a deeper Essentials hook.
- Added a `return unless pkmn` guard against nil party slots (defensive).

### C3 — `ENABLED` toggles that did nothing

**Symptom:** README said "Master toggle" but flipping `ENABLED = false`
had zero effect because the constant was never checked in code. Two
plugins were affected.

**Fix:**
- `[SC] Quest Journal/001_QuestData.rb` and `002_UI.rb` — all 7 entry
  points (`questStart`, `questComplete`, `questObjective`, `questActive?`,
  `questDone?`, `questFail`, `pbOpenQuestJournal`) now respect
  `QuestJournal::ENABLED`.
- `[SC] Flashback System/001_FlashbackCore.rb` — `pbStartFlashback`,
  `pbEndFlashback`, `pbInFlashback?` all respect `FlashbackSystem::ENABLED`.

### C4 — Per-frame work running in release builds

**Symptom:** Several `on_frame_update` handlers ran 60×/s in production
even though they were debug-only, plus `NPCScheduleEngine.update` allocated
a fresh `Time` object every frame.

**Fix:**
- `[SC] Dynamic Lighting System/[005] Debug_Tools.rb` — `lighting_debug`
  and `quick_add_light` handlers are now wrapped in `if $DEBUG` so they're
  not even registered in release builds (saves the per-frame dispatch).
- `[SC] Dynamic Lighting System/[006] Night_Tilesets.rb` — same for
  `night_tileset_debug`.
- `[SC] NPC Schedules/[002] Schedule_Engine.rb`:
  - Added `PATROL_FRAME_INTERVAL = 6` frame throttle — patrol logic runs
    ~10×/s instead of 60×/s (visually indistinguishable).
  - `pbGetTimeNow.hour` is now allocated once and passed to
    `update_patrol_routes(hour)` instead of being re-called.
  - Added `return if npcs.empty?` early-out before the per-NPC loop.

---

## High fixes

### H1 — Stale ZIP backups checked into Plugins/

**Removed:**
- `Plugins/[AAI] Advanced AI System.zip`
- `Plugins/[AAI] Advanced AI System (pre).zip`
- `Plugins/[AAI] Advanced AI System 2.6 pre.zip`
- `Plugins/[SC] Companion Pokemon.zip`
- `Plugins/[SC] Healing Vial.zip`
- `Plugins/[SC] Pokemon Affection.zip`

Saves ~950 KB. **Action for you:** also add `Plugins/*.zip` and
`Plugins/**/*.zip` to your `.gitignore` so they don't come back.

### H2 — Crown Shatter coupled to DDS via magic number

**Symptom:** `$game_variables[100]` hardcoded as the DDS tier read.
Changing DDS's tier variable in settings would silently break Shatter AI.

**Fix:** `[SC] Crown Shatter/[007] Shatter_Intelligence.rb`
- Reads `DynamicDifficulty.current_tier` (or `TierEngine.effective_tier`)
  via the proper API when DDS is loaded.
- Falls back to `$game_variables[100]` only if neither API is reachable,
  preserving save-compat.

### H3 — `meta.txt` inconsistencies across [SC] plugins

**Fixed:**
- `[SC] Healing Vial/meta.txt`, `[SC] Raid Battles Hotfixes/meta.txt` —
  removed nonsensical `Website = no` lines.
- `[SC] Level Caps Ex/meta.txt` — normalized `Requires` comma spacing.
- `[SC] Dynamic Difficulty System/meta.txt` — `Requires` now has explicit
  min-version: `Advanced AI System,2.6` (was unversioned).
- `[SC] Rune Forging/meta.txt` — `Requires` now `Shattered Crowns Rune System,1.0`.
- All [SC] meta.txt files now end with a trailing newline (one previously
  didn't, which could cause parse issues when concatenated).

### H4 — Crown Shatter had two `[010]` prefixed files

**Renamed:** `[SC] Crown Shatter/[010] Debug_Compatibility.rb` →
`[011] Debug_Compatibility.rb` so load order is unambiguous across filesystems.

### H5 — `Game_Character#passable?` hot-path optimization

**Symptom:** This override runs every time *any* event checks if it can
move to a tile. With pathfinding NPCs, it can fire dozens of times per
step. The old version did `CompanionFollower.active?` and config-flag
work before bailing on the cheaper `ret` check.

**Fix:** `[SC] Companion Pokemon/003_FollowerCore.rb`
Re-ordered the early-out chain so the cheapest checks bail first:
1. `ret == false` (original passability already denied)
2. `IMPASSABLE_FOLLOWER` config flag off
3. Caller is self/follower
4. Finally: `active?` + the `each_follower` iteration

---

## Medium fixes

### M1 — Bare `rescue` statements catching too much

Bare `rescue` catches `StandardError` but also surprising exceptions like
`Interrupt` (Ctrl+C) and `SystemExit`. Scoped them all to `StandardError`
explicitly — 32 places total:

- `[SC] EBDX Battle UI` (22 lines across 8 files)
- `[SC] Companion Pokemon/006_ReactionCore.rb` (4)
- `[SC] Script System` (5 across 4 files)
- `[SC] Trainer Card Ex/001_CardCore.rb` (1)

### M2 — Missing `unless method_defined?` guards on aliases

Without the guard, F12 script reload during dev grows the alias chain
unbounded → eventual `SystemStackError`. Added guards to all 129 bare
aliases across 36 files in [SC] plugins. Inside `class`/`module` blocks
the guard is `unless method_defined?(:name)`; at top-level (global
function aliases), it's `unless defined?(name)`.

### M7 — Debug `puts` left in production code

Replaced `puts "..."` with `echoln "..."` in 6 places:
- `[SC] Raid Battles Hotfixes/[001] Z-Crystal Compatibility.rb` — "Hotfix loaded" log
- `[SC] Raid Battles Hotfixes/[008] Ditto Raid Fix.rb` — same
- `[SC] Raid Battles Hotfixes/[013] Online Raid Loading Fix.rb` — same
- `[SC] Script System/005_Cutscene.rb` — 3 lines of cutscene tracing

`echoln` writes to `Data/debuglog.txt` only when `$DEBUG`, so release
builds are clean.

### M9 — Dynamic Difficulty TeamBuilder double clear/push

`DDS_TeamBuilder.rb#build_team` cleared and re-pushed both `pbParty(1)`
and `trainer_obj.party` separately, even when they're the same array
internally. Switched to `Array#replace` (in-place swap) and added an
`equal?` check before the second replace.

---

## Verified-OK findings (no fix needed, just documented for confidence)

These were initially flagged by static analysis as conflicts but turned
out to be properly chained / intentional:

| Method | Plugins | Verdict |
|---|---|---|
| `Game_Temp#add_battle_rule` | Boss Battles + Crown Shatter | both alias-chained ✅ |
| `Pokemon#add_affection` | Companion Pokemon (shim) + Pokemon Affection (real) | intentional shim pattern, `unless method_defined?` guard ✅ |
| `Battle::Scene#pbFrameUpdate` | EBDX + Script System | both alias-chained ✅ (guards added in M2) |
| `Battle::Battler#pbSpeed` | Ancestral Weapons + Crown Shatter | both alias-chained, effects stack ✅ |
| `Game.start_new` | Level Caps Ex + Script System | both alias-chained ✅ |

`PokemonGlobalMetadata` is reopened by 23 plugins — verified zero name
collisions on `attr_accessor`s. Save data is healthy.

---

## NOT fixed in this pack (intentionally — needs your call)

### H6 — Custom top-level globals

Six plugins use top-level `$globals` instead of `$PokemonGlobal` /
module constants:

- `$BattleMetrics` — Battle Rewards Ex
- `$DynamicDifficultyData` — Dynamic Difficulty System
- `$__sc_follower_height_cache` — Companion Pokemon (already prefixed, low priority)
- `$lastUsed` — EBDX Battle UI (inherited from upstream EBDX)
- `$raid_reward_screen_data` — Raid Battles Hotfixes
- `$sun_switch` — Visual Effects

Refactoring these requires touching multiple files per plugin with
careful save-compat. Not safe to auto-batch — leaving as design choice
unless you ask for a targeted PR.

### M3 — `EBDX Battle UI/012_MoveAnimations.rb` is 41,847 lines

Auto-generated EBDX port. Tree-shaking unused moves would save Ruby
parse-time at game startup but requires knowing which moves your dex
actually uses. Out of scope for an automated fix.

### Low priority items

The L1-L7 stylistic items from the review (naming convention
inconsistency, O(n) affection level lookup with 5 items, etc.) aren't
real bugs. Address as wanted.

---

## TODO for you after applying

1. **Verify the C1 fix in-engine.** Catch a Pokémon, give it the follower
   slot, level it past evolution. Follower should refresh cleanly.
2. **Add `Plugins/*.zip` to `.gitignore`** so backups stay out.
3. **Test C2.** If you use AAI or DBK and they hook `pbGainExpOne`, their
   modifications should now actually apply. Easy check: enable an EXP
   booster effect from AAI/DBK; you should see boosted EXP at any level
   below the cap.
4. **Toggle `Quest Journal::ENABLED = false`** as smoke test — opening
   the journal should now no-op cleanly.
5. **Optional `$DEBUG` audit.** Now that lighting debug handlers are
   $DEBUG-gated, make sure your release build actually has `$DEBUG = false`
   (check `Main.rb` / your project's release config).

---

Grep tag: `SC FIX (review` — finds every single change made by this pack.
