# Challenge Modes — Changelog

## 2.3.0 — 2026-05-05

### Bug Fixes

- **`pbUseItemOnPokemon` signature crash** (Item Restrictions). The
  override declared `(item, battler, scene)` but the real Battle method
  in PE v21.1 is `(item, idxParty, userBattler)`. Calling `scene.pbDisplay`
  on a Battler crashed at the first item use during a battle while
  `ITEM_RESTRICTIONS` was active. Signature corrected; messages now go
  through `Battle#pbDisplay`.

- **Permafaint REVIVE bypass**. Item Restrictions used
  `ItemHandlers::CanUseInBattle.copy(:battle_items, :REVIVE/:MAXREVIVE/...)`
  which silently overwrote Permafaint's "you can't revive a perma-fainted
  Pokemon" handler. With both rules active you could resurrect a
  perma-fainted Pokemon mid-battle. The new wrapper reads any existing
  handler and chains to it, so Permafaint's guard runs after the
  Item Restrictions check.

- **`:on_pokemon_center_heal` fired on blocked heals** (Script System
  EventBridge). When `NO_POKEMON_CENTER` or `LIMITED_HEALING` returned
  `false` from `pbPokeCenterPC`, the bridge still triggered
  `:on_pokemon_center_heal`. Downstream listeners (Affection happiness
  gain, Companion reaction) thought a heal happened. Bridge now skips
  the event when the inner call returned `false`.

- **`GameData::*.get` → `try_get` everywhere**. Same pattern fixed in AAI,
  Companion, and Level Caps Ex. Touched files: `001_Main Module.rb`,
  `003_Start and End.rb`, `005_Capture Rules.rb`,
  `007_Monotype_and_Randomizer.rb`, `012_Hardcore_Mode.rb`,
  `013_Trainer_Scaling.rb`, `015_No_Legendaries.rb`,
  `017_Species_Clause.rb`, `018_Item_Restrictions.rb`. Removed/modded PBS
  entries no longer crash these modes.

### Hygiene

- Removed the load-time `puts` blocks in `017_Species_Clause.rb` and
  `018_Item_Restrictions.rb`. They were gated on `ChallengeModes.running?`
  which is always `false` at file-load time, so the blocks were dead
  code that also bypassed the standard `echoln` helper.
- `puts "Healing counter reset"` removed from `016_Limited_Healing.rb`.
- Trainer Scaling now gates its `echoln`s on a new `:debug_log` flag
  (default `false`). It used to print a wall of scaling info on every
  trainer battle.

### New Modes

Seven additional rules. All seven count as "special modes" — they don't
auto-add `GAME_OVER_WHITEOUT` to the rule set when picked.

| Rule | Effect |
|------|--------|
| **No EXP** | Player Pokemon never gain EXP. Levels are locked at the level you caught/received them. Rare Candies and EXP Candies also blocked. EVs are blocked too (they're a stat-progression mechanic; comment out the `pbGainEVsOne` alias in `020_No_Exp.rb` if you want them). |
| **No Healing Items** | Potions, Revives, status cures, healing berries, EXP/Rare Candies all blocked in battle and on the field. TMs, evolution stones, key items still work. |
| **Cage Match** | Active party capped at 3 (configurable via `CAGE_MATCH_PARTY_SIZE`). Catches over the cap go to the PC. PC withdraws aren't blocked. |
| **Banned Type** | Pick one type at challenge start. Pokemon of that type can't be caught, received, or sent into battle. Inverse of Monotype. |
| **No Buy** | Pokémon Marts are closed. No buying or selling — every item must be found, earned, or given. |
| **Solo Run** | Active party capped at 1. Same enforcement as Cage Match but stricter, with its own toggle so it shows up in rule lookups. |
| **Eggs Only (Wonderlocke)** | Every caught/received Pokemon's species is rerolled to a random one of similar BST (default ±60). Level/IVs/EVs/nature stay; moves and ability are reset to species defaults. Excludes legendaries and megas. |

### Misc

- `meta.txt` version 2.2.1 → 2.3.0; placeholder Rickroll URL replaced
  with the project repo.

## 2.2.1 and earlier

See git history.
