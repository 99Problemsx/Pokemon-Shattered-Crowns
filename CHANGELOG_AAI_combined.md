# Advanced AI System — Patch Notes v2.4.2 – v2.4.3

**Major bugfix release** for the [000_AAI] Advanced AI System plugin.  
Over **900 bugs** fixed across **43+ files** spanning all 7 subsystems.

---

## New Shared Helpers

Eight utility methods added to `CombatUtilities` and `SpeedTiers` to replace
hundreds of inconsistent inline calculations across all damage estimators:

- **`resolve_move_type`** — Final move type after -ate abilities, Tera Blast, Weather Ball, Terrain Pulse
- **`scrappy_effectiveness`** — Removes Ghost immunity for Scrappy / Mind's Eye
- **`resolve_move_power`** — Runtime base power for variable-power moves (PBS power=1)
- **`field_modifier`** — Weather, terrain, items (Choice Band/Specs/Life Orb), burn penalty
- **`defender_modifier`** — Assault Vest, Eviolite, Sandstorm Rock SpDef, Snow Ice Def
- **`screen_modifier`** — Reflect, Light Screen, Aurora Veil (bypassed by Infiltrator)
- **`ability_damage_modifier`** — Fur Coat, Ice Scales, Thick Fat, Filter, Multiscale, Tinted Lens, etc.
- **`calculate_effective_speed`** — Stat stages, Choice Scarf, Tailwind, Trick Room, weather abilities

---

## Crash Fixes (~30)

- `num_targets` called on a Symbol — crashed on every multi-target move evaluation
- `Role_Detection.detect_roles` was never defined as a method — entire role system was non-functional
- `.physical?`, `.statusMove?`, `.damaging?` called on `GameData::Move` objects (only exist on `Battle::Move`) — crashed Encore, Sucker Punch, Taunt, Will-O-Wisp scoring, threat assessment, and speed evaluation
- `stat_changes[:SPEED]` TypeError when stat_changes hash didn't exist
- `pkmn.index` NoMethodError in Role Detection for non-battler objects
- `user.battler` double-wrap on already-unwrapped Battler objects — crashed Unburden threat, pinch berry, resist berry, weakness policy, and rocky helmet evaluations
- `Prediction_System.should_double_switch?` called `.type` on `Pokemon::Move` objects — feature completely non-functional
- `Utilities.setup_move?` delegation missing — NoMethodError on every call
- `Utilities.setup_beneficial?` referenced bare constant instead of qualified `Utilities::ALL_SETUP_MOVES`
- `Hotfixes.validate_sanity_check` called undefined `pbCanChooseMove?`
- Multiple nil crashes — fainted Pokémon species data, nil target in item eval, nil move in Custom_Content
- Division by zero in weight-based and speed-ratio moves (Grass Knot, Electro Ball, Gyro Ball)
- `Mega_Intelligence` referenced nonexistent `GameData::Mega` constant
- `DBK_Compat` rescue clause referenced wrong variable
- `Custom_Content.ability_suppressed?` crashed on party Pokemon (no `.effects` method)
- Variable-power moves read as 1 BP causing zero-damage estimates
- `Team_Preview.evaluate_lead_matchup` — nil entries when party smaller than 6
- `Debug_Menu` used `puts` instead of `pbMessage`
- `Learning_System` divide-by-zero in win-rate calculation

---

## Ability Suppression Overhaul (~185 Fixes)

185+ instances of raw `ability_id == :X` converted to `hasActiveAbility?(:X)`,
so the AI properly respects Mold Breaker, Gastro Acid, and Neutralizing Gas.

Affected abilities: Intimidate, Magic Bounce, Prankster, Sturdy, Flash Fire,
Levitate, Water Absorb, Volt Absorb, Unaware, Contrary, Magic Guard, Regenerator,
Disguise, Ice Face, Harvest, Protean/Libero, and many more.

Fixed in: Move Scorer, Switch Intelligence, Prediction System, Doubles Coordination,
Strategic Awareness, Substitute Logic, Tera Intelligence, Field Effects,
Endgame Scenarios, Win Conditions, Weather/Terrain Wars, Battle Personalities

---

## Damage Calculation Overhaul

### Simplified Calculators — Missing Modifiers

Eight simplified damage calculators were missing entire modifier classes.
All updated with shared helpers for consistent results:

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

### Missing Adaptability and Huge Power / Pure Power

Six calculators completely ignored two of the most impactful offensive abilities:

- **Adaptability** (2× STAB instead of 1.5×) — Porygon-Z, Crawdaunt, Mega Lucario had STAB underestimated by 33%
- **Huge Power / Pure Power** (2× Attack) — Azumarill, Medicham, Mawile had physical damage underestimated by 100%

### Missing STAB

Several calcs had no STAB at all or applied STAB based on unresolved move type
(wrong for -ate abilities). Pivot_Moves, Win_Conditions, and Move_Memory affected.

### Move Scorer Ability/Item Awareness (60+)

60+ competitive abilities and items were completely missing from the damage
calculation and scoring logic:

- **Offensive abilities**: Pixilate/Aerilate/Refrigerate/Galvanize, Protean/Libero, Sheer Force, Tough Claws, Strong Jaw, Iron Fist, Technician, Mega Launcher, Reckless, Analytic, Tinted Lens, Neuroforce, Solar Power, Sand Force
- **Defensive abilities**: Fur Coat, Filter/Solid Rock/Prism Armor, Multiscale/Shadow Shield, Ice Scales, Thick Fat, Heatproof, Marvel Scale, Mirror Armor, Natural Cure
- **Damage multipliers**: Water Bubble (2× Water, 0.5× Fire taken), Steelworker, Parental Bond, Aura abilities (Dark/Fairy)
- **Items**: Choice Band/Specs damage scaling, Life Orb, Assault Vest, Expert Belt, type-boosting items, Sharpness, Rocky Payload, Flash Fire boost
- **Status immunity**: Limber, Water Veil, Insomnia, Vital Spirit, Magma Armor, Oblivious, Own Tempo, Pastel Veil

### Weather Ball / Terrain Pulse

Terrain Pulse doubled BP on terrain but never changed type from Normal.
Fixed to match Weather Ball pattern.

---

## Type System Fixes

### Type Effectiveness Halved Globally (8 Locations)

`/NORMAL_EFFECTIVE` instead of `/NORMAL_EFFECTIVE_MULTIPLIER` — all damage
effectiveness was halved across 6 files. Every SE move showed half the actual bonus.

### Type Effectiveness Squaring (12+ Fixes)

Effectiveness calculated against `type1` and `type2` separately then multiplied —
squaring the result for single-type Pokémon (2× became 4×, 0.5× became 0.25×).

Fixed in: Prediction System, Substitute Logic, Move Scorer, Strategic Awareness, Win Conditions

### Type Resolution (50+ Fixes)

50+ call sites used raw `move.type` without -ate abilities, Tera Blast,
Weather Ball, or Terrain Pulse. All replaced with `resolve_move_type`.

### Tera Type Support (~25 Locations)

`.types[]` array access replaced with `.pbTypes(true)` across 8 files so the AI
reads the Pokémon's Tera type when Terastallized instead of the original types.

### Scrappy / Mind's Eye (10+ Fixes)

Normal/Fighting moves always showed 0× vs Ghost even with Scrappy or Mind's Eye.
Fixed with `scrappy_effectiveness` wrapper across 10+ effectiveness call sites.

---

## Weather & Snow Compatibility

### Gen 9 Snow Weather (40+ Fixes)

Massive sweep replacing `:Hail` with `:Snow` or adding Snow support throughout:

- Snow Warning, Slush Rush, Ice Body, Snow Cloak now recognized under Snow weather
- Snowscape and Chilly Reception correctly set Snow (not Hail)
- Aurora Veil and Blizzard accuracy work in both Hail and Snow
- Snow chip damage and immunity checks updated
- Weather synergy, archetype detection, and extender items all updated
- Affected: Weather_Terrain_Wars, Field_Effects, Strategic_Awareness, Switch_Intelligence,
  Doubles_Coordination, Custom_Content, Item_Intelligence, Team_Preview, Priority_Tiers

### Cloud Nine / Air Lock Bypass (12 Locations)

12 weather-dependent calculations across 7 files never checked for Cloud Nine or
Air Lock — weather bonuses applied even when suppressed.

### Weather Symbol Mismatches

`:Sand`/`:Snow` used instead of `:Sandstorm`/`:Hail` — weather-dependent scoring
was completely dead for Sandstorm and Hail/Snow conditions.

### Extreme Weather

Sunny Day scored positively under Harsh Sun (move fails). Water/Fire moves scored
as merely weak under primal weather instead of completely failing (−200).

### Terrain Logic Fixes

- Electric Terrain sleep immunity only covered 2 moves — expanded to all sleep moves, added grounded check
- Psychic Terrain priority block applied against airborne targets (should only block vs grounded)
- Misty Terrain Dragon penalty applied against airborne targets
- Misty Terrain penalized ALL status moves (Swords Dance, Stealth Rock) instead of only status-condition moves
- Terrain checks used `!= :None` instead of `!= nil` — always true, inflating scores

---

## Speed and Trick Room (22+ Fixes)

22+ raw `.speed` comparisons replaced with `calculate_effective_speed`,
covering: Trick Room, stat stages, Choice Scarf, paralysis, Tailwind,
Swift Swim, Chlorophyll, Sand Rush, Slush Rush, Surge Surfer, Unburden.

Additional fixes:
- Nil speed variables made Trick Room and Prankster scoring completely dead
- Trick Room scoring self-sabotaged — slow Pokémon were incentivized to cancel their own TR
- Choice Scarf suspect heuristic compared calculated stat (~200) against base stat range (80–100) — always false
- Choice-lock detection was entirely non-functional
- Itemless Pokémon falsely flagged as Scarf users after species heuristic match

---

## Variable-Power Moves (40+ Fixes)

Moves with PBS `Power=1` (Eruption, Water Spout, Flail, Reversal, Electro Ball,
Gyro Ball, Low Kick, Heavy Slam, Stored Power, etc.) estimated at 1 BP.
All updated with `resolve_move_power` using actual runtime formulas.

---

## Move List Completeness (60+ Fixes)

Hardcoded move lists expanded significantly:

- **Setup moves** (~8 → 25+) — Calm Mind, Nasty Plot, Quiver Dance, Shell Smash, Geomancy, Victory Dance, etc.
- **Pivot moves** (~3 → 8+) — Flip Turn, Chilly Reception, Shed Tail, Teleport
- **Protect variants** (~2 → 10+) — King's Shield, Spiky Shield, Baneful Bunker, Obstruct, Silk Trap, Burning Bulwark
- **Recovery moves** (~4 → 18+) — Strength Sap, Shore Up, Giga Drain, Leech Life, Oblivion Wing
- **Sound moves** (~5 → 25+) — Torch Song, Alluring Voice, Psychic Noise, Boomburst, Overdrive
- **Entry hazards** (~2 → 5) — Toxic Spikes, Sticky Web, Ceaseless Edge
- **Spread moves** (~12 → 40+) — Make It Rain, Scorching Sands, Lava Plume, Discharge
- **Weight-based** (missing → complete) — Heavy Slam, Heat Crash, Low Kick, Grass Knot

Also fixed `:SWORDSDANCE` vs `:SWORDS_DANCE` format mismatches.

### Missing Function Code Coverage

Roost, Shore Up, and Purify had no AI scoring logic.
Strength Sap, Revival Blessing, and Ceaseless Edge/Stone Axe were also unscored.

### function_code Symbol Mismatches (4 Locations)

`UPPER_SNAKE_CASE` compared against `CamelCase` function codes — 4 entire move
categories had dead scoring branches.

---

## Side-Index Bugs — Doubles (75+ Fixes)

### `pbParty` / `pbAbleCount` Wrong Index (45+)

`battle.pbParty(battler.index)` and `pbAbleCount(battler.index)` expect a
**side index** (0 or 1), but were passed raw battler slot indices (0–3 in doubles).
Slots 2 and 3 returned the wrong team's party. Fixed across 14 files.

### `sides[]` Operator Bug (30+)

`battle.sides[(index + 1) % 2]` for the opponent's side — in doubles slot 2:
`(2+1)%2 = 1` = same side as attacker. Fixed to `sides[1 - (index & 1)]`.

Affected: hazard checks, Reflect/Light Screen, Sleep Clause, Sticky Web,
pivot hazard bonus, sacking evaluation, Toxic Spikes absorber count.

### Other Doubles Fixes

- Icicle Crash and Icicle Spear incorrectly listed as spread moves
- Sandstorm and Hail falsely boosted Rock/Ice move power (no such mechanic)
- Helping Hand hook targeted opponents instead of partner — dead code
- Spotlight scoring completely inverted — rewarded Spotlighting bulky opponents
- Prevent_move_conflicts unconditionally penalized screens/hazards/weather regardless of partner's move
- Coaching scored identically at all HP levels
- Disruption moves summed scores across all opponents instead of using best target
- Partner synergy crashed when partner fainted (nil `@pokemon`)
- Spread move lists missed partner-hitting side effects
- Combined damage calcs crashed on stale target references after KOs
- `evaluate_momentum` compared party alive (1–6) vs active battlers (0–1) — never true in singles
- Parental Bond adjustment was inside multiHitMove block — unreachable for normal moves

---

## Switch Intelligence Fixes

- Switch prediction entirely broken — wrong battler index formula
- `assess_threat` always rated 5.0 (nil opponent reference)
- `get_partner` compared different object types — always returned user's own battler as partner
- Stat-stage multiplier arrays completely wrong (incorrect values at every index)
- Zoroark's `get_real_types` returned Illusion disguise types instead of real types
- Sniper crit damage double-multiplied — 2.625× instead of correct 2.25× at 100% crit rate
- Magic Guard hazard calc didn't check Flying/immunity for Toxic Spikes and Sticky Web
- Double nature modifier in `calculate_party_speed`
- Role-based switch-in crashed on party Pokemon objects (no battler stats)
- `evaluate_better_options` and main selection loop used wrong party indices in doubles
- `Win_Conditions.check_setup_condition` used `respond_to?(:stages)` — always false for party objects

---

## Move Prediction & Learning

- Move prediction entirely non-functional — `:move_frequency` key never matched `:move_counts`
- Move memory category tracking used wrong predicted category
- Regenerator detection used wrong function code
- `GameData::Move` shim fixes for compatibility

---

## Item & Ability Intelligence

- Choice Scarf applied 1.5× **damage** multiplier to all moves (should only boost speed)
- Eject Pack only checked status moves — missed Snarl, Icy Wind, Moonblast stat drops
- Eject Pack boost-reset included negative stages in sum
- Black Sludge treated as recovery for non-Poison holders during Protect (it deals damage)
- Scald penalized as harshly as Will-O-Wisp against Guts users (−60 vs correct −30)
- Ghost-type trapping escape missing from Arena Trap and Magnet Pull
- Shed Shell escape check had symbol typo (`:SHEDSBELL` instead of `:SHEDSHELL`)
- Mycelium Might listed as Mold Breaker variant (only bypasses abilities for status moves)
- Contact punishment computed all penalties before Long Reach / Protective Pads early-return

### Gen 9 VGC Item Awareness

Six dominant VGC items had no AI awareness:
Covert Cloak, Clear Amulet, Mirror Herb, Loaded Dice, Booster Energy, Ability Shield

---

## Ability Interaction Fixes

- Contrary/Defiant/Competitive only checked status moves — missed damaging moves with stat drops (Snarl, Icy Wind, Moonblast)
- Simple ability check applied to target instead of user for setup moves
- Adaptability double-stacked in Custom_Content damage calc
- Venoshock only checked regular poison, missed badly poisoned
- Fusion Flare/Bolt gave power bonus without requiring ally to have the partner move
- Recoil Tracking checked Rock Head on wrong battler location
- `ability_suppressed?` had arguments swapped in Custom_Content

---

## Gimmick Intelligence Fixes

- **Mega_Intelligence** — Scoring methods returned early before reaching analysis logic
- **Dynamax_Intelligence** — Benefit scores calculated but never applied; Z-Move scoring referenced wrong constants
- **Dynamax_Intelligence** — Endgame bonuses triggered from turn 1 (enemy count always ≤ 2 in singles)
- **Dynamax_Intelligence** — `gmax_move` check always returned true
- **Tera_Intelligence** — Type evaluation used raw move types instead of resolved types
- **Mechanics_Hooks** — Gimmick hook crashed on nil/stale `@user` reference
- **Terastallization plugin ID** had a typo — PluginManager detection always failed

---

## Logic & Behavioral Fixes

- Phazing moves still attempted with only 1 target available
- Pivot moves tried to switch behind a Substitute
- Ally-only moves selected when no ally present
- Grounded check order wrong — Gravity, Iron Ball, and Ingrain overrides added
- Hazard detection checked wrong side
- Endgame double-counting opponent threats
- Protect stall scored against wrong target
- Team Preview ability checks on non-battler objects
- Switch chance threshold too aggressive
- Flinch immunity not checked before scoring flinch moves
- Sound move barrier bypass unchecked
- Focus Punch penalty always applied — `priority >= 0` matched every move instead of `> 0`
- Wonder Room attack category bonus completely inverted
- `total_stat_boosts` summed negatives — boosted sweepers with minor debuffs looked unboosted
- `pivots` and `recovery_users` counted per-move instead of per-Pokémon
- `pbAbleNonActiveCount` passed battler slot instead of side index
- `Trick` penalized when target had no item (irrelevant — user's item is what matters)
- Opposing indices called on Battler instead of Battle — trade-KO logic compared AI vs itself
- Setup data for Coil and Hone Claws overwritten by duplicate hash entries
- Dead `:TOXIC` status branch (not a valid status symbol in PE)

---

## Dead Code Connected

- `pbRegisterMove` hook chain was never executed — 4 files of intelligence (Mega, Dynamax, Tera, Mechanics_Hooks) were completely disconnected. Now properly wired.
- `detect_roles` method body existed as orphaned module-level code — never callable. Wrapped in proper method definition.

---

## Debug & Production Cleanup

- Unconditional `echoln` and `puts` calls in Core, Switch_Intelligence, and Hotfixes removed from production builds
- Boot banners gated behind debug flags
- Console spam on every switch decision eliminated

---

## Upgrade Instructions

1. **Back up** your existing `Plugins/[000_AAI] Advanced AI System/` folder
2. Replace the entire plugin folder with the updated version
3. **Delete `Data/PluginScripts.rxdata`** to force recompilation
4. Launch the game — scripts will regenerate automatically

No PBS changes required. Existing saves are fully compatible.
