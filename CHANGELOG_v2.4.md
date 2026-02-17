# Advanced AI System — Changelog v2.4.0

## Summary

Version 2.4.0 is a major stability and coverage release. It fixes several critical
crashes, closes the remaining Gen 1–9 mechanic gaps to **100 % coverage** (247/247),
introduces two entirely new strategy modules (Strategic Awareness, Tactical
Enhancements), adds a companion **Dynamic Difficulty System** plugin, and hardens
every effects-array access path against nil values.

---

## Critical Bug Fixes

### Side / Field-Targeting Moves Scoring 0
Stealth Rock, Spikes, Reflect, Light Screen, Tailwind and all other moves with
`num_targets == 0` were never scored because vanilla Essentials calls
`pbGetMoveScore()` without a target argument.  The scorer's guard clause
(`return 0 unless move && user && target`) rejected them all.

- **Core.rb** — Added fallback target resolution: picks the first non-fainted
  opponent when `target` is `nil`.
- **0_Move_Scorer.rb** — Relaxed guard to `return 0 unless move && user` with
  internal target resolution for nil targets.

### GrassyTerrain PBEffects Crash
`PBEffects::GrassyTerrain` does not exist; Grassy Terrain is a field terrain,
not a battle-side effect.  Protect / Detect scoring crashed when evaluating
passive recovery.

- **0_Move_Scorer.rb** — Changed to
  `@battle.field.terrain == :Grassy && user.battler.affectedByTerrain?`.

### Kernel#pp RGSS Safety
RGSS / mkxp lacks the `pp` standard library.  Any call to `pp` (including AI
debug logging) caused a fatal `NoMethodError`.

- **Core.rb** — Defines `Kernel#pp` as a safe `echoln`-based fallback when the
  native implementation is unavailable.

### SystemStackError Recursion Guard
`Effectiveness.calculate` and `GameData::Type.calculate` could infinitely
recurse in certain type-matchup edge cases.

- **Hotfixes.rb** — Added recursion depth guard (max 10) on both methods;
  falls back to neutral effectiveness on overflow.

### PBDebug.log ArgumentError Crash
`PBDebug.log` was called with 2 arguments `(message, category)`, but Essentials
v21.1 only accepts 1.  Crashed when AI tried to switch with debug mode enabled.

- **Switch_Intelligence.rb** — Fixed all 8 call sites.

### Knock Off vs Unlosable Items
AI gave +100 bonus for using Knock Off against Mega Stones, Z-Crystals and other
unlosable items that cannot actually be removed.

- **0_Move_Scorer.rb** — Added `unlosableItem?` guard so Knock Off score only
  applies to removable items.

### ProtectRate Nil Crash
`user.effects[PBEffects::ProtectRate]` returned `nil` for battlers whose effect
hadn't been initialised yet, causing `nil > 1` → `NoMethodError` every round.

- **0_Move_Scorer.rb** — `score_protect_utility` now uses
  `(protect_rate || 0) > 1` with rescue fallback.

### Status Move Scoring / PP Bug
Status moves were under-scored due to category comparison issues; the PP check
also prevented valid moves from being considered.

- **0_Move_Scorer.rb** — Fixed status-move category comparison
  and zero-PP guard clause.

### Console Log Cleanup
Leftover debug `puts` / `echoln` calls from testing polluted the console output.

- Removed stray console output across multiple files.

---

## Nil-Safe Effects System (Hotfixes.rb)

A new `NilSafeEffects` wrapper replaces raw effects-array access on
**AIBattler**, **ActiveSide** and **ActiveField**.  Any uninitialised
`PBEffects` index now returns `0` (numeric) or `false` (boolean) instead of
`nil`, preventing an entire class of `NoMethodError` crashes site-wide.

---

## New Module — Strategic Awareness (~900 lines)

`4_Battle_Strategy/Strategic_Awareness.rb`

| Feature | Description |
|---|---|
| Opponent Archetype Recognition | Classifies teams as Hyper Offense, Balance, Stall, etc. based on stat spreads and moveset composition |
| Win Condition Counter-Play | Identifies the opponent's win condition and scores counter-measures higher |
| Dynamic Win Condition Shifting | Re-evaluates the AI's own win condition as the battle progresses |
| Coverage Gap Mapping | Detects unresisted type combinations the AI cannot answer |
| Health Trajectory Tracking | Monitors HP trends to predict whether a battle is trending in the AI's favour |
| Threat Persistence | Tracks which opposing Pokémon have been most dangerous over multiple turns |
| Proactive Sacking | Identifies expendable Pokémon that can be sacrificed to preserve the win condition |
| Defensive Core Recognition | Detects complementary defensive pairs (e.g. Blissey + Skarmory) and adjusts lure tactics |

---

## New Module — Tactical Enhancements (~1 000 lines)

`4_Battle_Strategy/Tactical_Enhancements.rb`

21 modular scoring methods wired into the Core.rb pipeline for skill ≥ 50.
Key features include:

- **Magic Bounce / Good as Gold** early-exit penalties (−1 000 / −200 for
  blocked status moves)
- **Mold Breaker family** bonus vs Ice Scales (+20), Tera Shell (+25),
  Seed Sower (+10) — includes Gen 9 Mycelium Might
- Multi-turn move planning, item-aware pivoting, doubles-specific adjustments
- Stall-detection heuristics and anti-stall escalation

---

## Gen 1–9 Coverage: 89.9 % → 100 %

The audit identified 25 missing symbols across moves, abilities and items.
All 25 have been implemented:

### Moves

| Move | File | What it does |
|---|---|---|
| **Heavy Slam / Heat Crash** | 0_Move_Scorer.rb | Weight-ratio → 40–120 BP calculation |
| **Low Kick / Grass Knot** | 0_Move_Scorer.rb | Target-weight thresholds → 20–120 BP |
| **Terrain Pulse** | 0_Move_Scorer.rb, Field_Effects.rb | 2× BP + type change in active terrain |
| **Topsy-Turvy** | 0_Move_Scorer.rb | +80 vs setup, −40 if would invert drops |
| **Armor Cannon** | 0_Move_Scorer.rb | Def / SpDef drop cost penalty (−10) |
| **Bitter Blade** | 0_Move_Scorer.rb | Drain bonus (+15) when user < 70 % HP |
| **Hydro Steam** | 0_Move_Scorer.rb | 1.5× BP in Sun / Harsh Sun instead of penalty |
| **Psyblade** | 0_Move_Scorer.rb | 1.5× BP in Electric Terrain |
| **Pledge Combos** | 0_Move_Scorer.rb | Fire + Grass → Sea of Fire, Water + Fire → Rainbow, Grass + Water → Swamp; 150 BP |
| **Fusion Flare / Bolt** | 0_Move_Scorer.rb | 2× power when partner used complement move |
| **Ruination** | 0_Move_Scorer.rb | Fixed 50 % current-HP damage scoring |

### Abilities

| Ability | Files | What it does |
|---|---|---|
| **As One (Glastrier)** | Custom_Content, Utilities, Threat_Assessment, Advanced_Abilities | 2.5× weight, +1.2 threat, 1.9 snowball |
| **As One (Spectrier)** | Custom_Content, Utilities, Threat_Assessment, Advanced_Abilities | 2.5× weight, +1.2 threat, 1.9 snowball |
| **Mind's Eye** | Custom_Content, Utilities, Threat_Assessment | 1.5× weight, +0.5 threat, Scrappy + accuracy bypass in damage calc |
| **Seed Sower** | Custom_Content, Utilities, Threat_Assessment, Tactical_Enhancements | −1.0 defensive weight, +0.4 threat, Mold Breaker bypass (+10) |
| **Zero to Hero** | Custom_Content, Utilities | 2.5× weight (Hero-form Palafin) |
| **Ice Scales** | Custom_Content, Utilities, Tactical_Enhancements | −2.5 defensive weight, 0.5× special modifier, Mold Breaker bypass (+20) |
| **Tera Shell** | Custom_Content, Tactical_Enhancements | 0.5× all moves at full HP, Mold Breaker bypass (+25) |
| **Stamina** | Utilities | Gen 9 defensive ability dictionary |
| **Weak Armor** | Utilities | Gen 9 defensive ability dictionary |
| **Anger Shell** | Utilities | Gen 9 offensive ability dictionary |
| **Electromorphosis** | Utilities | Gen 9 offensive ability dictionary |
| **Wind Power** | Utilities | Gen 9 offensive ability dictionary |
| **Toxic Boost / Flare Boost** | Utilities | Gen 9 offensive ability dictionary |
| **Cotton Down** | Utilities | Gen 9 defensive ability dictionary |
| **Embody Aspect** | Utilities | Gen 9 offensive ability dictionary |

### Items

| Item | File | What it does |
|---|---|---|
| **Light Ball** | Item_Intelligence | 2.0× damage for Pikachu; +0.8 threat |
| **Thick Club** | Item_Intelligence | 2.0× physical for Cubone / Marowak; +0.8 threat |
| **Shed Shell** | Item_Intelligence, 0_Move_Scorer | `has_shed_shell?` helper; trapping moves −30 vs holder; −0.2 threat |
| **Ability Shield** | Item_Intelligence | −40 for ability-changing moves vs holder; −0.3 threat |
| **Power Herb** | Item_Intelligence | Two-turn move bonus |
| **White Herb** | Item_Intelligence | Stat-drop recovery bonus |
| **Booster Energy** | Item_Intelligence | Paradox Pokémon stat boost scoring |

---

## New Companion Plugin — Dynamic Difficulty System v1.3.0

`Plugins/[SC] Dynamic Difficulty System/` — 8 files, requires Advanced AI System.

Automatically adjusts AI difficulty based on player performance across battles.
**New in v1.3.0:** Pool-Based Team Building — the AI assembles entirely new teams
from curated species pools that match each trainer's class theme.

| File | Purpose |
|---|---|
| **Settings.rb** | Config constants, score boundaries, tier thresholds, trainer weights, badge caps, team scaling tables, species pools |
| **DDS_PerformanceTracker.rb** | Tracks wins / losses, streaks, dominance metrics, rolling history, level scaling, oscillation damping |
| **DDS_TierEngine.rb** | Maps score → AI tier override via `$game_variables[100]`; badge-based tier cap; public script API |
| **DDS_BattleHooks.rb** | Hooks `pbStartBattle` (build + scale) and `pbEndOfBattle` (record + clear); extracts level & trainer-class data |
| **DDS_TeamBuilder.rb** | **NEW** — Pool-based team builder: assembles teams from species pools per trainer class, tier, and progression |
| **DDS_TeamScaler.rb** | Adaptive team scaling: levels, IVs, EVs, natures, items per tier |
| **DDS_OptionsMenu.rb** | Adds "Dynamic Difficulty" On / Off toggle to the Enhanced Options Menu |

### v1.1.0 Bug Fixes

- **Every battle counted as a loss** — `BattleHooks` returned `:result => :win`
  but the tracker read `:won` (boolean). Fixed key to `:won => true/false`.
- **Opponent stats never read** — `BattleHooks` sent `:opp_fainted` / `:opp_total`
  but the tracker expected `:opponent_fainted` / `:opponent_total`. Dominance
  always fell back to defaults. Fixed to consistent key names.
- **Old save crash** — Loading a pre-DDS save caused `nil` for
  `$PokemonSystem.dynamic_difficulty`. Added nil-safe reader that defaults to ON.

### v1.1.0 New Features

- **Grace Period** (`GRACE_PERIOD = 5`) — First 5 trainer battles are tracked but
  don't change the score, giving the player time to settle in.
- **Trainer Class Weighting** — Score delta is scaled by opponent type.
  Losing to a Gym Leader (0.6×) hurts less than losing to a Youngster (1.3×).
  Configurable via `TRAINER_CLASS_WEIGHTS` hash.
- **Level Difference Scaling** — Dominance bonus is reduced to 30 % when the
  average level gap exceeds 10. Stomping under-levelled trainers won't inflate
  your score; losing to over-levelled ones won't tank it.
- **Badge-Based Tier Cap** — Max AI tier is limited by badge count:
  0–1 badges → max Mid, 2–3 badges → max Pro, 4+ → uncapped.
  Prevents Extreme AI before the player has a full team.
- **Oscillation Damping** — When the last 6 battles alternate W-L-W-L, the score
  delta is halved to prevent score ping-pong.
- **Script API** — Event scripters can now call:
  - `DynamicDifficulty.score` — current score
  - `DynamicDifficulty.current_tier` — tier label string
  - `DynamicDifficulty.win_rate` — recent win rate
  - `DynamicDifficulty.pause!` / `DynamicDifficulty.resume!` — freeze/unfreeze during cutscenes
  - `DynamicDifficulty.set_score(value)` — force a specific score
  - `DynamicDifficulty.reset!` — full reset
  - `DynamicDifficulty.summary` — one-line debug string

### v1.2.0 — Adaptive Team Scaling

New module `DDS_TeamScaler.rb` (~260 lines) dynamically adjusts opponent trainer
teams **before battle** based on the current DDS tier.  Natural tier is never
touched — the game plays exactly as the designer intended.

| Tier | Levels | IVs | EVs | Nature | Items |
|---|---|---|---|---|---|
| **Beginner** | Player avg −3, preserves team gaps | 0–10 | Cleared | Unchanged | Stripped to berry / nothing |
| **Mid** | Player avg −1 | 10–20 | Cleared | Unchanged | Keep existing or basic berry |
| **Natural** | No change | No change | No change | No change | No change |
| **Pro** | Player avg +1 (never lowers) | 25–31 | Role-based 252/252/4 | Role-optimised (power) | Competitive (random from pool) |
| **Extreme** | Player max +2 (never lowers) | 31 (perfect) | Role-based 252/252/4 | Role-optimised (speed) | Best-in-slot for role |

**Role Detection** classifies each mon by base stats:
- Physical / Special Sweeper (high offense + speed)
- Physical / Special Wall (high bulk, low offense)
- Bulky Attacker (high offense, lower speed)
- Balanced (fallback)

**Safeguards:**
- `TEAM_SCALING_ENABLED` master switch (independent of score tracking)
- `SCALING_EXEMPT_TRAINERS` list to protect hand-crafted boss teams
- `SCALING_EXEMPT_SWITCH` game switch for per-event control
- Pro / Extreme never lower a mon below its original level (`only_up: true`)
- Items are diversified across the team (avoids 6× Leftovers)
- All items are existence-checked via `GameData::Item.exists?`

### v1.3.0 — Pool-Based Team Building

New module `DDS_TeamBuilder.rb` (~300 lines) assembles entirely new opponent
teams from curated species pools before battle.  Unlike TeamScaler (which
adjusts existing teams' stats), TeamBuilder **replaces the entire party** with
Pokémon drawn from pools that match the trainer's class theme.

**How it works:**
1. Each trainer class maps to a pool group (e.g. `:HIKER` → `:rock_ground`,
   `:LASS` → `:fairy_cute`, `:TEAMROCKET_M` → `:poison_dark`).
2. Badge count determines the progression stage (`:early` / `:mid` / `:late`).
3. The builder picks species from the matching pool with **type diversity** —
   avoids stacking 3+ Pokémon of the same type.
4. Team size scales with both tier and progression:

| Tier | Early | Mid | Late |
|---|---|---|---|
| Beginner | 1–2 | 2–3 | 2–3 |
| Mid | 2–3 | 2–3 | 3–4 |
| Pro | 2–3 | 3–4 | 4–5 |
| Extreme | 3–4 | 4–5 | 5–6 |

5. Pokémon are created at the player's party average level (±2 variance).
6. Moves come from the species' level-up learnset via `reset_moves`.
7. **Pro/Extreme** supplement with STAB tutor moves (strongest by base power)
   and Extreme adds a high-power coverage move.
8. `TeamScaler` then runs its full pipeline on the built team (IVs/EVs/nature/items).

**15 species pool groups** covering all 40+ generic trainer classes:
`normal`, `fairy_cute`, `bug`, `rock_ground`, `flying`, `water`,
`water_fighting`, `fighting`, `psychic`, `ghost`, `dark_fire`,
`electric_steel`, `grass`, `poison_dark`, `dark_psychic`,
`mixed_strong`, `mixed_balanced`

**Safeguards:**
- `TEAM_BUILDING_ENABLED` master switch
- `BUILDING_EXEMPT_TRAINERS` — all gym leaders, E4, champion, rivals, story
  bosses, and companions are exempt by default
- `BUILDING_EXEMPT_SWITCH` — per-event game switch
- Natural tier never triggers building (original teams preserved)
- Species existence is validated via `GameData::Species.exists?`

### How it works

1. **Before** each trainer battle → `TierEngine.apply_override` writes
   `$game_variables[100]` based on the player's performance score.
2. **Team Building** → `TeamBuilder.build_team` replaces the opponent's party
   with Pokémon from species pools matching the trainer class + progression.
3. **Team Scaling** → `TeamScaler.scale_team` adjusts the built (or original)
   team's IVs, EVs, natures, and items to match the current tier.
4. **During** the battle → AAI reads the variable and selects the matching
   skill tier (Beginner / Mid / Natural / Pro / Extreme).
5. **After** the battle → `PerformanceTracker.record_battle` updates the score
   (base ± streak ± dominance × level-scale × trainer-weight − decay) and
   clears the override.
6. Event-scripted boss fights that set the variable themselves are
   respected (`RESPECT_EVENT_OVERRIDE`).
7. The player can toggle the system from the Options menu at any time.

### Tier Mapping (default thresholds)

| Score Range | Tier | Override |
|---|---|---|
| ≤ −20 | Beginner | 1 |
| −19 … −5 | Mid | 2 |
| −4 … 15 | Natural | none |
| 16 … 35 | Pro | 3 |
| > 35 | Extreme | 4 |

---

## File Overview (48 files, ~23 000+ lines)

```
[000_AAI] Advanced AI System/
├── 1_Core/
│   ├── 0_Settings.rb
│   ├── Combat_Utilities.rb
│   ├── Core.rb
│   ├── Debug_Menu.rb
│   └── Utilities.rb
├── 2_Move_Intelligence/
│   ├── 0_Move_Scorer.rb
│   ├── Disruption_Moves.rb
│   ├── Move_Categories.rb
│   ├── Move_Memory.rb
│   └── Special_Moves.rb
├── 3_Combat_Mechanics/
│   ├── Advanced_Abilities.rb
│   ├── Critical_Hits.rb
│   ├── Field_Effects.rb
│   ├── Hazard_Control.rb
│   ├── PP_Tracker.rb
│   ├── Recoil_Tracking.rb
│   ├── Sleep_Clause.rb
│   ├── Substitute_Logic.rb
│   └── Weather_Terrain_Wars.rb
├── 4_Battle_Strategy/
│   ├── Advanced_Items.rb
│   ├── Item_Intelligence.rb
│   ├── Learning_System.rb
│   ├── Prediction_System.rb
│   ├── Role_Detection.rb
│   ├── Setup_Recognition.rb
│   ├── Strategic_Awareness.rb      ← NEW
│   ├── Switch_Intelligence.rb
│   ├── Tactical_Enhancements.rb    ← NEW
│   ├── Team_Preview_Intelligence.rb
│   └── Threat_Assessment.rb
├── 5_Format_Specific/
│   ├── Doubles_Coordination.rb
│   ├── Doubles_Strategy.rb
│   ├── Pivot_Moves.rb
│   ├── Priority_Tiers.rb
│   └── Speed_Tiers.rb
├── 6_Meta_Mechanics/
│   ├── Battle_Personalities.rb
│   ├── Dynamax_Intelligence.rb
│   ├── Endgame_Scenarios.rb
│   ├── Mega_Intelligence.rb
│   ├── Terastallization_Intelligence.rb
│   ├── Win_Conditions.rb
│   └── ZMove_Intelligence.rb
├── 7_Integration/
│   ├── Console_Fix.rb
│   ├── Custom_Content.rb
│   ├── DBK_Compatibility.rb
│   ├── Debug_Replacement.rb
│   ├── Hotfixes.rb
│   └── Mechanics_Hooks.rb
├── AUDIT_REPORT.md
└── meta.txt
```

---

## Compatibility

- **Pokémon Essentials** v21.1
- **Deluxe Battle Kit** (optional — Wonder Launcher, Terastallization, Dynamax)
- **Enhanced Options Menu** (used by DDS toggle)
- **Generation 9 Pack Scripts** (fully integrated)
- Existing saves are compatible; no save-data migration needed
  (DDS data is created automatically on first load).

---

## Upgrade Notes

> **Delete the old plugin folder completely before installing this version.**

1. Remove `Plugins/[000_AAI] Advanced AI System/` entirely.
2. Drop in the new `[000_AAI] Advanced AI System/` folder.
3. (Optional) Drop in `[SC] Dynamic Difficulty System/` for adaptive difficulty.
4. Delete `Data/PluginScripts.rxdata` to force recompilation.
5. Launch the game.
