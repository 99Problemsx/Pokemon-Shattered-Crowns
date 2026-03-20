# Advanced AI System — Patch Notes v2.4.1

**Hotfix release** — Fixes 8 crash bugs and 3 behavioural issues reported by
players since v2.4.0.

> **Upgrade:** Delete `Data/PluginScripts.rxdata` and relaunch the game to
> force recompilation. Existing saves are fully compatible.

---

## Critical Crash Fixes

- `NameError: uninitialized constant Battle::AI::ItemIntelligence` — `Item_Intelligence.rb` line 588
- `NoMethodError: undefined method 'battler' for Battle::Battler` — `0_Move_Scorer.rb` line 1862
- `NoMethodError: undefined method 'damagingMove?' for GameData::Move` — `Doubles_Coordination.rb` line 2790
- `NameError: uninitialized constant Battle::AI::DoublesCoordination` — `Doubles_Coordination.rb` line 3613
- `NoMethodError: undefined method 'stat_up' for Battle::Move::None` — `Doubles_Coordination.rb` line 144
- `NoMethodError: undefined method 'physicalMove?' for GameData::Move` — `0_Move_Scorer.rb`, `Move_Memory.rb`, `Prediction_System.rb` (4 sites)

---

## Behavioural Fixes

- Toxic / Will-O-Wisp / Thunder Wave no longer score positively against immune types (e.g. Toxic vs Steel/Poison)
- `ReserveLastPokemon` ace is now strictly reserved until all other party members are down
- Reduced excessive switching when no meaningfully better option exists
- Dazzling / Queenly Majesty / Armor Tail now correctly block priority on the entire side in doubles

---

## New Option

- `ENFORCE_SLEEP_CLAUSE` toggle in `0_Settings.rb` (default: `true`)

---

## Upgrade Instructions

1. Replace the `Plugins/[000_AAI] Advanced AI System/` folder with the new version.
2. **Delete `Data/PluginScripts.rxdata`** to force recompilation.
3. Launch the game.
4. Existing saves are fully compatible — no migration needed.
