# Advanced AI System — Patch Notes v2.4.3

**Comprehensive bugfix release** for the [000_AAI] Advanced AI System plugin.  
Over **550 bugs** fixed across **35+ files** spanning all 7 subsystems.

---

## New Shared Helpers

Eight new utility methods added to `CombatUtilities` (plus `SpeedTiers`) to
replace hundreds of inconsistent inline calculations:

- **`resolve_move_type`** — Final move type (-ate abilities, Tera Blast, Weather Ball, Terrain Pulse)
- **`scrappy_effectiveness`** — Removes Ghost immunity for Scrappy / Mind's Eye
- **`resolve_move_power`** — Actual base power for variable-power moves (PBS power=1)
- **`field_modifier`** — Weather, terrain, items (Choice Band/Specs/Life Orb), burn
- **`defender_modifier`** — Assault Vest, Eviolite, Sandstorm Rock SpDef, Snow Ice Def
- **`screen_modifier`** — Reflect, Light Screen, Aurora Veil (bypassed by Infiltrator)
- **`ability_damage_modifier`** — Fur Coat, Ice Scales, Thick Fat, Filter, Multiscale, Tinted Lens, etc.
- **`calculate_effective_speed`** — Stat stages, Choice Scarf, Tailwind, Trick Room, weather abilities

---

## Crash Fixes (18)

- `Doubles_Coordination.evaluate_partner_synergy` — nil `@pokemon` when partner fainted
- `Doubles_Coordination.estimate_combined_damage` — nil `type1` on stale target
- `Dynamax_Intelligence.best_max_move_for` — nil Max Move for non-damaging moves
- `Utilities.type_mod` — stack overflow when both types identical
- Multiple files — `type1`/`type2` on nil species data for fainted Pokémon
- `Hotfixes.validate_sanity_check` — called undefined `pbCanChooseMove?`
- `DBK_Compat` — rescue clause referenced wrong variable
- Variable-power moves — division by zero (Grass Knot, Low Kick, Electro Ball, Gyro Ball)
- `Custom_Content` — `move.type` on nil move object
- `Team_Preview.evaluate_lead_matchup` — nil entries when party < 6
- `Debug_Menu` — used `puts` instead of `pbMessage`
- `Advanced_Items.evaluate_item_play` — nil target for item move
- `Mega_Intelligence` — referenced nonexistent `GameData::Mega` constant

---

## Ability Suppression Overhaul (~185 Fixes)

**185+ instances** of raw `ability_id == :X` converted to `hasActiveAbility?(:X)`,
so the AI properly respects Mold Breaker, Gastro Acid, and Neutralizing Gas.

Affected abilities include: Intimidate, Magic Bounce, Prankster, Sturdy, Flash Fire,
Levitate, Water Absorb, Volt Absorb, Unaware, Contrary, Magic Guard, Regenerator,
Disguise, Ice Face, Harvest, Protean/Libero, and many more.

Fixed in: Move Scorer, Switch Intelligence, Prediction System, Doubles Coordination,
Strategic Awareness, Substitute Logic, Tera Intelligence, Field Effects,
Endgame Scenarios, Win Conditions, Weather/Terrain Wars, Battle Personalities

---

## Damage Calculation Overhaul

### Missing Modifiers in Simplified Calculators

Eight simplified damage calcs were missing entire modifier classes.
All updated with the new shared helpers:

| Method | File |
|--------|------|
| `estimate_damage` | Combat_Utilities.rb |
| `estimate_move_damage` | Substitute_Logic.rb |
| `max_known_damage` | Move_Memory.rb |
| `calculate_predicted_damage` | Prediction_System.rb |
| `estimate_damage_percent` | Pivot_Moves.rb |
| `calculate_rough_damage` | Endgame_Scenarios.rb |
| `estimate_damage_percent` | Win_Conditions.rb |
| `calculate_incoming_damage` | Switch_Intelligence.rb |

Each now includes: field modifiers, defender modifiers, screens, Parental Bond,
and ability-based damage modifiers.

### Missing Adaptability and Huge Power/Pure Power

Six simplified damage calculators completely ignored two of the most impactful
offensive abilities:

- **Adaptability** (2× STAB instead of 1.5×) — Pokémon like Porygon-Z, Crawdaunt,
  and Mega Lucario had their STAB damage underestimated by 33%
- **Huge Power / Pure Power** (2× physical Attack) — Azumarill, Medicham, and
  Mawile had their physical damage underestimated by 100%

Fixed in: Combat_Utilities, Substitute_Logic, Move_Memory, Prediction_System,
Strategic_Awareness, Switch_Intelligence

### Missing STAB

Several calcs had no STAB at all (Pivot_Moves, Win_Conditions, Move_Memory)
or applied STAB based on unresolved move type (wrong for -ate abilities).

### Weather Ball / Terrain Pulse

Terrain Pulse in `calculate_rough_damage` doubled BP on terrain but never
changed type from Normal. Fixed to match Weather Ball pattern.

---

## Type Resolution Sweep (50+ Fixes)

50+ call sites used raw `move.type` without accounting for -ate abilities,
Tera Blast, Weather Ball, or Terrain Pulse. All replaced with
`CombatUtilities.resolve_move_type`.

Affected: type effectiveness scoring, STAB, coverage analysis,
type-absorbing ability checks, switch-in threat assessment, Tera evaluation

---

## Type Effectiveness Squaring (12+ Fixes)

Multiple files calculated effectiveness against `type1` and `type2` separately
then multiplied — squaring the result for single-type Pokémon (2× became 4×,
0.5× became 0.25×). Fixed with single `Effectiveness.calculate` calls.

Fixed in: Prediction System, Substitute Logic, Move Scorer, Strategic Awareness,
Win Conditions

---

## Move List Completeness (60+ Fixes)

Hardcoded move lists were incomplete. Each expanded significantly:

- **Setup moves** (~8 → 25+) — Added Calm Mind, Nasty Plot, Quiver Dance, Shell Smash, Geomancy, Victory Dance, etc.
- **Pivot moves** (~3 → 8+) — Added Flip Turn, Chilly Reception, Shed Tail, Teleport
- **Protect variants** (~2 → 10+) — Added King's Shield, Spiky Shield, Baneful Bunker, Obstruct, Silk Trap, Burning Bulwark
- **Recovery moves** (~4 → 18+) — Added Strength Sap, Shore Up, Giga Drain, Leech Life, Oblivion Wing, etc.
- **Sound moves** (~5 → 25+) — Added Torch Song, Alluring Voice, Psychic Noise, Boomburst, Overdrive
- **Entry hazards** (~2 → 5) — Added Toxic Spikes, Sticky Web, Ceaseless Edge
- **Spread moves** (~12 → 40+) — Added Make It Rain, Scorching Sands, Lava Plume, Discharge, etc.
- **Weight-based** (missing → complete) — Heavy Slam, Heat Crash, Low Kick, Grass Knot

Also fixed `:SWORDSDANCE` vs `:SWORDS_DANCE` format mismatches.

---

## Speed and Trick Room (22+ Fixes)

22+ raw `.speed` comparisons replaced with `SpeedTiers.calculate_effective_speed`,
which handles Trick Room, stat stages, Choice Scarf, paralysis, Tailwind,
Swift Swim, Chlorophyll, Sand Rush, Slush Rush, Surge Surfer, and Unburden.

Fixed in: Switch Intelligence, Prediction System, Endgame Scenarios,
Doubles Coordination, Strategic Awareness, Pivot Moves

---

## Variable-Power Moves (40+ Fixes)

Moves with PBS `Power=1` (Eruption, Water Spout, Flail, Reversal, Electro Ball,
Gyro Ball, Low Kick, Heavy Slam, Stored Power, etc.) were estimated as 1 BP.
All updated to use `resolve_move_power` with actual runtime formulas.

Division-by-zero guards added for weight-based and speed-ratio moves.

---

## Scrappy / Mind's Eye (10+ Fixes)

All `Effectiveness.calculate` calls used the raw type chart — Normal/Fighting
always showed 0× vs Ghost even with Scrappy or Mind's Eye. The AI refused to
select these moves entirely.

Fixed with `scrappy_effectiveness` wrapper across all 10+ effectiveness call sites.

---

## Gimmick Intelligence Fixes

- **Mega_Intelligence** — Scoring methods returned early before reaching analysis logic
- **Dynamax_Intelligence** — Benefit scores were calculated but never applied
- **Dynamax_Intelligence** — Z-Move scoring referenced wrong constant names
- **Tera_Intelligence** — Type evaluation used raw move types instead of resolved types

---

## Doubles-Specific Fixes

- **Partner synergy** — Fainted partner no longer crashes evaluation
- **Spread moves** — Incomplete lists ignored partner-hitting side effects
- **Combined damage** — Stale target references after KOs no longer crash
- **Speed tiers** — Trick Room inversion now considered for turn-order

---

## Other Notable Fixes

- **Intimidate cycling** — No longer infinite-loops vs Competitive/Defiant/Clear Body
- **Ice Face** — Form check used wrong constant; Eiscue always appeared Ice Face
- **Magic Bounce** — Reflected status moves were double-counted in scoring
- **Harvest** — Treated as guaranteed instead of 50% (100% in Sun)
- **Ruin abilities** — Used `ability_id` instead of `hasActiveAbility?`
- **Sleep Clause** — Sleep moves still scored positively when clause active
- **Battle Personalities** — Score adjustments applied to wrong move indices after sorting

---

## Upgrade Instructions

1. **Back up** your existing `Plugins/[000_AAI] Advanced AI System/` folder
2. Replace the entire plugin folder with the updated version
3. Delete any cached data in `Data/` that the AI system may have written
4. Launch the game — compiled scripts will regenerate automatically

No PBS changes required. No save-file migration needed.
