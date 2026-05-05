# [SC] Level Caps Ex — Changelog

## 2.5.1 — 2026-05-04

### Bug Fixes (user-reported)

- **Hard cap silently blocked Exp Share / Exp All for the whole party
  when the lead was at the cap.** The `pbGainExp` override mutated
  `b.participants` to remove at-cap participants. If the lead was the
  only participant, that list became empty, and Essentials' base
  `pbGainExp` then short-circuited the entire defeated battler with
  `next if b.participants.length == 0`. Result: nobody — not the
  benched Pokemon below the cap, not Exp Share holders, not Exp All
  recipients — gained anything. The destructive override has been
  removed; per-Pokemon enforcement now lives entirely in
  `pbGainExpOne`. Reported by @bassplayer.

- **Obedience Cap (mode 3) never fired once the player had all gym
  badges.** Essentials' base `pbObedienceCheck?` short-circuits to
  "obey" when you've earned the relevant badge for the Pokemon's
  level, and our override returned that result early — skipping the
  level-cap obedience check entirely. The override now runs the
  cap-based check even when the base check returned obey, so an
  overlevel Pokemon disobeys regardless of badge count. Reported by
  @Kinetic1000.

- **Soft / EXP Cap (mode 2) clamped the level like a hard cap.** The
  `Pokemon#level=` setter applied its clamp for both `hard_cap?` and
  `soft_cap?`, which meant a Pokemon couldn't actually cross the cap
  in mode 2 — turning it into a slower hard cap. Per the docs, mode 2
  is supposed to allow overlevel with reduced EXP gain. The clamp now
  fires only for hard cap.

### New

- **`SHARED_EXP_RESPECTS_CAP` config option** (default `true`). When
  set, Pokemon at or above the cap won't receive any Exp Share / Exp
  All gains in soft cap (mode 2) or obedience cap (mode 3) either —
  not just hard cap. Direct participation still goes through the
  mode-specific behaviour. Hard cap was always like this; this just
  extends the same UX to the other two modes.

### Misc

- **Banked EXP is paid out on any cap increase**, not just badge
  auto-cap. `Game_Variables#[]=` now triggers `award_stored_exp`
  whenever `LEVEL_CAP_VARIABLE` rises, so a story-driven cap raise
  via `$game_variables[198] = N` in an event script no longer
  swallows the piggy bank.
- Version strings synchronised across `meta.txt`, README, and the
  in-file headers (was 2.5.0 / 2.3.2 / 2.4.0 in three different
  places).
- Config doc comment updated — `EXP_STORAGE_ENABLED` does NOT need
  a separate Game Variable; storage lives in `$PokemonGlobal`.

## 2.5.0 and earlier

See git history.
