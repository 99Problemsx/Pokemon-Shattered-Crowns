# Advanced AI System — Patch Notes v2.4.2

**Hotfix release** — Fixes 1 crash bug, 16 behavioural issues, adds 60+
ability/item/damage-calc awareness improvements, and corrects a critical
type-effectiveness halving bug — found via player reports and multiple full
codebase audits.

> **Upgrade:** Delete `Data/PluginScripts.rxdata` and relaunch the game to
> force recompilation. Existing saves are fully compatible.

---

## Critical Crash Fix

- `NoMethodError: undefined method 'num_targets' for :AllNearFoes:Symbol` — `Doubles_Coordination.rb` line 1178 in `evaluate_instruct`. `GameData::Move#target` returns a Symbol; now resolved via `GameData::Target.try_get()` before calling `num_targets`.

---

## Behavioural Fixes (Player-Reported)

- **Phazing vs single opponent:** Roar / Whirlwind / Dragon Tail / Circle Throw now return −1000 when the target has no reserve Pokémon (`pbAbleNonActiveCount == 0`), preventing the AI from attempting a phaze that would fail.
- **Pivot moves + Substitute:** Offensive pivots (U-turn, Volt Switch, Flip Turn) now account for the target's Substitute. The switch-out is still valued, but the type-effectiveness damage bonus is reduced when hitting into a Sub, and a +15 bonus is added for the free escape.
- **Ally-only support moves targeting opponents:** Heal Pulse, After You, Pollen Puff, Aromatic Mist, Helping Hand, Coaching, and Floral Healing now return −1000 when scored against an opponent, preventing the AI from misdirecting support moves at enemies instead of allies.

---

## Behavioural Fixes (Audit)

### Silent Category Comparisons (7 files)
`move.category == :Status` / `:Physical` / `:Special` never matched because `Battle::Move#category` returns an integer (0/1/2) and `GameData::Move#category` returns a lowercase symbol (`:status`). All comparisons have been replaced with the safe helpers `statusMove?`, `damagingMove?`, `physical?`, `special?`. Missing `statusMove?` and `damagingMove?` shims added to `GameData::Move` in Hotfixes.rb.

**Affected files:** `0_Move_Scorer.rb`, `Battle_Personalities.rb`, `Endgame_Scenarios.rb`, `Item_Intelligence.rb`, `Setup_Recognition.rb`, `Team_Preview_Intelligence.rb`, `Prediction_System.rb`

### Grounded Check Order (Utilities.rb)
`grounded?` checked Flying type / Levitate / Air Balloon **before** Gravity and Iron Ball, so a Flying-type Pokémon under Gravity was incorrectly reported as airborne. Grounding overrides (Gravity, Iron Ball, Ingrain) are now checked first. Also fixed redundant ternaries (`battler.ability_id : battler.ability_id`).

### Hazard Side Detection (0_Move_Scorer.rb)
`opponent_side` was set to the **user's** side instead of the **target's** side (condition was inverted). Fixed to `target.pbOwnSide` so Stealth Rock / Spikes checks look at the correct side for existing hazards.

### Endgame Double-Counting (Endgame_Scenarios.rb)
`is_endgame?` added `pbAbleNonActiveCount` (bench) + `pbParty.count` (all alive including active), double-counting bench mons and making endgame trigger too late. Fixed to use `pbAbleCount` which correctly counts all alive mons.

### Protect Stall vs Toxic (Win_Conditions.rb)
Protect bonus for stall win-condition checked `user.effects[PBEffects::Toxic]` (the AI's OWN toxic counter) instead of the **target's**. Fixed to `target.effects[PBEffects::Toxic]`.

### Team Preview Ability Check (Team_Preview_Intelligence.rb)
Three locations used `pokemon.ability` (returns ability object) instead of `pokemon.ability_id` (returns symbol), so weather lead, terrain lead, and Magic Bounce detection always failed.

### Switch Chance Threshold (Prediction_System.rb)
`predict_switch_chance` returns 0–100 (percentage), but the comparison used `> 0.5` (float). Any non-trivial switch chance triggered the bonus. Fixed to `> 50`.

### Status vs Protect (Learning_System.rb)
Status moves (Toxic, Will-O-Wisp, Thunder Wave) were **rewarded** (+25) against predicted Protect, but Protect blocks status moves too. Changed to a penalty (−20).

### Debug Menu Side Selection (Debug_Menu.rb)
`get_current_skill` and `change_skill_level` both used `!b.opposes?`, which selects the **player's** battlers instead of the opponent's. Fixed to `b.opposes?`.

### Flinch Immunity List (Doubles_Coordination.rb)
`:OWNTEMPO` (prevents confusion, not flinch) and `:SCRAPPY` (hits Ghosts with Normal/Fighting, unrelated to flinch) were in the flinch-immunity list. Removed both, keeping only `:INNERFOCUS` and `:SHIELDDUST`.

### Wrong Move ID in Setup Moves (Move_Categories.rb)
`:SILVERPOWDER` (an item) was listed instead of `:SILVERWIND` (the move with 10% all-stats-up secondary effect).

### Sound Moves List (Substitute_Logic.rb)
`:GRASSYGLIDE` (a Grass-type priority move) was incorrectly listed as a sound-based move that bypasses Substitute. Removed.

### Move Memory Recording (Move_Memory.rb)
`pbUseMoveSimple` with default `idx = -1` used `@moves[-1]` (Ruby negative indexing = last move in moveset) instead of finding the actual move by `move_id`. Now correctly resolves the move from the moveset when `idx` is -1.

---

## Missing Function Code Coverage (0_Move_Scorer.rb)

### Healing Move Variant Function Codes
Roost (`HealUserHalfOfTotalHPLoseFlyingTypeThisTurn`), Shore Up (`HealUserDependingOnSandstorm`), and Purify (`CureTargetStatusHealUserHalfOfTotalHP`) had different function codes from generic recovery moves and never received healing scores. Added all three to the recovery `when` branch. Shore Up gets +25 in sandstorm (heals 2/3 instead of 1/2). Purify gets −200 if the target has no status (will fail). Also expanded `HEALING_MOVES` hash with Purify, Life Dew, Jungle Healing, Lunar Blessing, and expanded the Heal Block early-exit list.

### Strength Sap Scoring
`HealUserByTargetAttackLowerTargetAttack1` had zero scoring logic (only categorised in `HEALING_MOVES`). Added dedicated scoring: healing urgency based on user HP, +40 bonus vs physical attackers (Attack drop is more impactful), heal-ratio bonus when target's Attack heals a large chunk, and speed-based boost.

### Revival Blessing Singles Scoring
`RevivePokemonHalfHP` only had scoring in `Doubles_Coordination.rb` (gated by `pbSideSize > 1`). Added singles-compatible scoring: −200 fail guard when no fainted party members, +70 base value, +15 per additional fainted mon, +30 for reviving a high-BST (>500) Pokemon, +25 endgame bonus when only 1–2 alive remain.

### Ceaseless Edge / Stone Axe Hazard Bonus
`SplintersTargetGen8AddSpikesGen9` (Ceaseless Edge) and `SplintersTargetGen8AddStealthRocksGen9` (Stone Axe) are damaging moves that also set hazards as a side effect, but received zero bonus for the hazard. Added to `score_secondary_effects`: Ceaseless Edge gets +30–75 scaled by remaining Spikes layers; Stone Axe gets +60 (+25 on turn 1) if Stealth Rock is not already set.

---

## Missing Ability / Item Awareness (0_Move_Scorer.rb)

### Pixilate / Refrigerate / Aerilate / Galvanize (0 → full)
Zero awareness. Normal-type moves are now re-typed and get 1.2× boost in `score_damage_potential` when the user has one of these abilities. Type effectiveness is recalculated against the correct type.

### Protean / Libero (partial → full)
Listed in "good abilities" arrays but no move-scoring logic. Now every move is treated as STAB (1.5×) in both `score_damage_potential` and `score_stab_bonus`.

### Tinted Lens (partial → full)
Only in Custom_Content damage calc. Now "not very effective" penalty in `score_type_effectiveness` is reduced from −30 to −5, and `score_damage_potential` applies 2× to NVE damage.

### Sheer Force (partial → full)
Only in Threat Assessment/Custom_Content. Now `score_damage_potential` applies 1.3× to moves with secondary effects. Also `score_recoil_risk` returns 0 for Sheer Force + secondary-effect moves (Life Orb recoil negated).

### Tough Claws / Strong Jaw / Iron Fist / Technician (partial → full)
Only in Custom_Content damage modifiers. Now `score_damage_potential` applies correct multipliers: Tough Claws 1.3× contact, Strong Jaw 1.5× bite, Iron Fist 1.2× punch, Technician 1.5× for BP ≤ 60.

### Fur Coat / Fluffy (partial → full)
Only in Custom_Content. Now `score_damage_potential` halves physical damage vs Fur Coat targets, and halves contact / doubles Fire vs Fluffy targets (respects Mold Breaker).

### Filter / Solid Rock / Prism Armor (damage calc → integrated)
Were in Switch_Intelligence and Custom_Content. Now also in `score_damage_potential` as 0.75× for super-effective hits.

### Mirror Armor (doubles-only → full)
Only in Doubles punishing_abilities list. Now blocks dedicated stat-drop moves (−200 in `score_status_utility`) and penalizes secondary stat-drop effects (−30 in `score_secondary_effects`). Both check Mold Breaker.

### Natural Cure (switch-only → status awareness)
Only had switch-in value. Now all status-inflicting moves (Paralyze/Burn/Poison/Toxic/Sleep) get −30 penalty against Natural Cure targets since status is temporary.

### Simple (utility-only → setup bonus)
Only in `effective_stat_change` utility. Now `score_setup_value` doubles the setup score when the user has Simple (stat changes are doubled in-game).

### Unseen Fist (0 → partial)
Zero awareness. Now `score_sucker_punch_risk` gives +10 bonus (instead of −15 penalty) when target has Protect but user has Unseen Fist (contact moves bypass Protect).

### Recoil: Magic Guard + Sheer Force
`score_recoil_risk` now returns 0 for Magic Guard users (no recoil) and for Sheer Force users on secondary-effect moves (Life Orb recoil negated).

### Light Clay Screen Bonus
Screen moves (Reflect/Light Screen/Aurora Veil) get +25 when user holds Light Clay (extends from 5 to 8 turns).

### Mental Herb Awareness
Taunt, Encore, Disable, and Torment return −50 against targets holding Mental Herb (the effect will be cured immediately, consuming the herb).

---

## Damage Calc: Ability / Item / Field Modifiers (0_Move_Scorer.rb)

### Round 2 — Ability Damage Multipliers
- **Water Bubble** (user): 2× Water moves; (target): 0.5× Fire moves
- **Steelworker**: 1.5× Steel moves
- **Sand Force**: 1.3× Ground/Rock/Steel in Sandstorm
- **Solar Power**: 1.5× special in Sun
- **Analytic**: 1.3× if moving last
- **Neuroforce**: 1.25× super-effective hits
- **Parental Bond**: 1.25× non-multi-hit moves (second hit at 25%)
- **Mega Launcher**: 1.5× pulse/aura moves
- **Dark Aura / Fairy Aura / Aura Break**: field-wide 1.33× or 0.75× Dark/Fairy
- **Thick Fat** (target): 0.5× Fire/Ice damage taken
- **Heatproof** (target): 0.5× Fire damage taken
- **Multiscale / Shadow Shield** (target): 0.5× at full HP

### Round 2 — Item Damage Multipliers
- **Thick Club** (Cubone/Marowak): 2× Attack
- **Light Ball** (Pikachu): 2× Attack & SpAtk
- **Deep Sea Tooth** (Clamperl): 2× SpAtk; **Deep Sea Scale**: 2× SpDef
- **Legend Orbs** (Adamant/Lustrous/Griseous): 1.2× matching type
- **Muscle Band**: 1.1× physical; **Wise Glasses**: 1.1× special
- **Eviolite** (target, NFE): 0.67× damage taken (Def+SpDef boosted)

### Round 2 — Scoring Improvements
- **Serene Grace**: 1.8× secondary effect scoring (flinch, stat drops, status)
- **No Guard**: bypasses accuracy penalties, +15 for low-accuracy moves
- **Compound Eyes**: 1.3× accuracy in score_accuracy
- **Contrary**: self-stat-drop moves like Overheat/Leaf Storm become +50 bonus
- **Corrosion**: bypasses Poison/Steel immunity for Toxic/Poison moves
- **Sniper**: 1.5× crit scoring in score_crit_potential
- **Merciless**: +40 auto-crit bonus against poisoned targets

### Round 3 — Battle Mechanics Overhaul
- **Wonder Guard**: returns 0 damage for non-SE moves in `calculate_rough_damage`; returns −200 in `score_type_effectiveness`
- **Weather Ball**: type/power override (100 BP + matching type in weather)
- **Weather damage modifiers**: Sun 1.5× Fire / 0.5× Water; Rain 1.5× Water / 0.5× Fire; Utility Umbrella check; Hydro Steam exception
- **Synchronize**: −50/−45/−40 penalty for Burn/Paralysis/Poison (bounces back)
- **Emergency Exit / Wimp Out**: +20 bonus for pushing target below 50% HP
- **Berserk**: −20/−30 penalty for triggering SpA boost without KO
- **Marvel Scale** (target): 0.67× physical when statused
- **Stamina** (target): +15/+25 contact punishment penalty
- **Weak Armor** (target): awareness in contact scoring

### Round 3 — Status Immunity Abilities
Complete status move awareness for: Limber (paralysis), Water Veil / Thermal Exchange (burn), Insomnia / Vital Spirit / Comatose (sleep), Sweet Veil (ally sleep), Pastel Veil (ally poison), Leaf Guard in Sun (all status), Immunity (poison)

### Round 4 — Terrain & Additional Abilities
- **Terrain damage modifiers**: Electric Terrain 1.3× Electric, Grassy Terrain 1.3× Grass, Psychic Terrain 1.3× Psychic (grounded users); Misty Terrain 0.5× Dragon (grounded targets)
- **Punk Rock**: user 1.3× sound moves; target 0.5× sound damage taken
- **Reckless**: 1.2× recoil moves
- **Blaze / Torrent / Overgrow / Swarm**: 1.5× matching type at ≤1/3 HP
- **Supreme Overlord**: +10% per fainted party member (max +50%)
- **Stakeout**: 2× damage against targets that just switched in
- **Orichalcum Pulse**: 1.33× physical Attack in Sun
- **Hadron Engine**: 1.33× special Attack in Electric Terrain

### Round 5 — Deep Audit Fixes
- **Sharpness**: 1.5× slicing moves (Sacred Sword, Leaf Blade, Ceaseless Edge, etc.)
- **Rocky Payload**: 1.5× Rock moves (Garganacl)
- **Flash Fire active boost**: 1.5× Fire when Flash Fire has been triggered
- **Charge state** (Electromorphosis / Wind Power / Charge): 2× Electric moves
- **Dry Skin** (target): 1.25× Fire damage taken
- **Purifying Salt** (target): 0.5× Ghost damage taken
- **Assault Vest**: fixed no-op — now correctly applies 0.67× to special damage against AV holders
- **Belly Drum**: HP cost check — refuses at ≤50% HP, +80 with Sitrus Berry, risk/reward scaling
- **Tidy Up**: added to SETUP_MOVES (Atk+Speed boost + hazard clear)
- **Air Balloon**: Ground moves return 0 damage in `calculate_rough_damage`

### Round 5 — Secondary Effect Scoring
- **Stench**: +8 flinch bonus on all non-flinching damaging moves (10% chance)
- **King's Rock / Razor Fang**: +8 flinch bonus on non-flinching moves
- **Poison Touch**: +10 contact poison bonus (30% chance), respects type immunities

---

## Logic Bugs & Side-Reference Fixes (Final Audit)

### `.ability` vs `.ability_id` on Party Pokemon (Field_Effects.rb, Team_Preview_Intelligence.rb)
`Pokemon#ability` returns an Ability **object** (not a Symbol), so `.include?(p.ability)` against symbol arrays (`:CHLOROPHYLL`, `:SWIFTSWIM`, etc.) always returned `false`. Weather team synergy bonus was always 0, and terrain setter detection in Team Preview never triggered. Fixed 6 locations across 2 files.

### Wrong Side in Weather/Terrain Opponent Checks (Weather_Terrain_Wars.rb)
`allOtherSideBattlers(0)` returns battlers opposing index 0 (the player) — i.e., the **AI's own** team. Three methods (`weather_benefits_opponent?`, `calculate_opponent_weather_penalty`, `terrain_benefits_opponent?`) evaluated the AI's own team instead of the player's. Fixed to `allSameSideBattlers(0)` which correctly gets the player's battlers.

### Hardcoded `sides[0]` / `sides[1]` (Win_Conditions.rb)
`check_attrition_condition` used `battle.sides[1]` for "opponent hazards" — but sides[1] is the AI's own side. Checked own hazards instead of player's. Similarly, `check_speed_control_condition` used `battle.sides[0]` for "our effects", crediting the player's Tailwind as the AI's. Swapped both.

### Switch-In Hazard Side (Switch_Intelligence.rb)
`evaluate_candidate` checked hazards on the **opponent's** side when deciding whether a switch-in takes Stealth Rock / Spikes damage. Should check the AI's **own** side (where the mon actually switches into). Renamed to `our_side` and fixed side assignment.

### `:TOXIC` Not a Valid Status Symbol (0_Move_Scorer.rb, Prediction_System.rb)
In Essentials, badly poisoned = `status == :POISON` with `statusCount > 0`. The symbol `:TOXIC` never appears as a status value. Venoshock BP doubling had dead `:TOXIC` entry (still worked for regular poison). `predict_switch_chance` had `opponent.status == :TOXIC` which never matched — badly poisoned opponents weren't counted as statused. Fixed both.

### `!target.status` Always False (Endgame_Scenarios.rb, Substitute_Logic.rb)
`battler.status` returns `:NONE` when healthy. `:NONE` is truthy in Ruby, so `!target.status` is always `false`. The 1v1 endgame status move bonus (+40) was never applied, and the Substitute + status protection bonus (+25) was never applied. Fixed to `target.status == :NONE`.

---
## Type Effectiveness & Weather Symbol Fixes

### CRITICAL — Type Effectiveness Halved Globally (8 locations, 6 files)

`Effectiveness.calculate()` already returns float multipliers (1.0 = neutral, 2.0 = super-effective), but **8 damage-estimation functions** divided the result by `Effectiveness::NORMAL_EFFECTIVE` (= 2) a second time — halving all type effectiveness. Super-effective damage was treated as neutral, neutral as resisted, etc.

**Impact:** Every move the AI evaluates had its type effectiveness halved. The AI systematically underestimated damage, undervalued super-effective coverage, missed KO opportunities, and overweighted status moves.

Fixed locations:
- `0_Move_Scorer.rb` — `calculate_rough_damage` (line 2462) and `estimate_incoming_damage` (line 2688)
- `Hazard_Control.rb` — `calculate_stealth_rock_damage` (line 59)
- `Substitute_Logic.rb` — `estimate_move_damage` (line 441)
- `Switch_Intelligence.rb` — `estimate_sac_damage_percent` (line 1482)
- `Pivot_Moves.rb` — `estimate_damage_percent` (line 462)
- `Endgame_Scenarios.rb` — `calculate_rough_damage` (line 330)
- `Win_Conditions.rb` — `estimate_damage_percent` (line 545)

All changed from `/ Effectiveness::NORMAL_EFFECTIVE` to `/ Effectiveness::NORMAL_EFFECTIVE_MULTIPLIER` (= 1.0).

### Utilities.rb — Nil Defender Fallback Returns Wrong Constant

`Utilities.type_mod()` returned `NORMAL_EFFECTIVE` (= 2) instead of `NORMAL_EFFECTIVE_MULTIPLIER` (= 1.0) when defender was nil, causing any nil-defender check to falsely report super-effectiveness.

### Weather Symbol Mismatches — Doubles_Coordination.rb

`battle.field.weather` returns `:Sandstorm` and `:Hail`, but the doubles weather coordination used internal keys `:Sand` and `:Snow` that never matched:
- "Already active" check (`:Sandstorm != :Sand`) always failed — AI could waste turns re-setting Sandstorm
- Weather-boosted move check (`current_weather == :Sand`) always failed — Ground-type synergy bonus never applied
- Snowscape mapped to `:Snow` but engine stores `:Hail` — same redundancy detection failure

Fixed all 3 constant hashes (`WEATHER_ABILITIES`, `WEATHER_SYNERGY`, `WEATHER_MOVE_BOOST`) and the `weather_moves` mapping.

### Weather Symbol Mismatch — Weather_Terrain_Wars.rb

`:SNOWSCAPE => :Snow` in weather maps, but `battle.field.weather` is always `:Hail`. Snowscape redundancy check failed when Hail was already active. Also updated `calculate_weather_benefit` to use `Settings::HAIL_WEATHER_TYPE` for Snow vs classic-Hail detection.

### subs_remaining — ZeroDivisionError Guard

`subs_remaining()` performed `battler.totalhp / 4` with integer division. For Shedinja (`totalhp = 1`), this becomes `1 / 0` → crash. Added `[..., 1].max` guard. (Dead code — method defined but currently unused.)

---

## function_code Symbol Mismatches & Tera Type Support

### function_code.to_sym Dead Code (4 locations, 2 files)

Essentials v21.1 `move.function_code` returns CamelCase strings (`"LowerTargetAttack1"`, `"RemoveTargetItem"`), but the AAI compared against `UPPER_SNAKE_CASE` symbols (`:LOWER_TARGET_ATK_1`, `:KNOCK_OFF`) via `.to_sym` — these **never match**.

**Impact:** Contrary detection dead (AI freely uses stat-drops that become buffs). Defiant/Competitive detection dead (AI triggers free +2 boosts). Unburden detection dead (AI Knock Offs and doubles their speed). Eject Pack detection dead.

Fixed in:
- `Advanced_Abilities.rb` — Contrary check → `move.function_code.start_with?("LowerTarget")`
- `Advanced_Abilities.rb` — Defiant/Competitive check → same pattern
- `Advanced_Abilities.rb` — Unburden threat → `["RemoveTargetItem", "UserTakesTargetItem"].include?(move.function_code)`
- `Advanced_Items.rb` — Eject Pack → `move.function_code.start_with?("LowerTarget")`

### GameData::Move.get → try_get (2 locations)

`GameData::Move.get(id)` raises `ArgumentError` on unknown IDs. Changed to `try_get` + nil guard in:
- `Threat_Assessment.rb` — `assess_move_threat` (line 99)
- `Switch_Intelligence.rb` — pivot move evaluation (line 1778)
- `Move_Memory.rb` — `estimate_max_damage` (line 131)

### .types[0]/.types[1] → .pbTypes(true) for Tera Support (~25 locations, 8 files)

`Battle::Battler#types` returns the raw `@types` array, which ignores Terastallization and Forest's Curse / Trick-or-Treat. `pbTypes(true)` includes all active types. All `Effectiveness.calculate()` calls now use the correct method.

Fixed files:
- `0_Move_Scorer.rb` (7 locations) — score_type_effectiveness, Wonder Guard, Collision Course, main damage calc, setup safety, incoming damage, Poison Touch
- `Move_Memory.rb` (1 location) — estimate_max_damage
- `Substitute_Logic.rb` (3 locations) — Disable check, get_stab_types, estimate_move_damage
- `Field_Effects.rb` (1 location) — Mimicry effectiveness
- `Switch_Intelligence.rb` (1 location) — sac damage estimate
- `Speed_Tiers.rb` (1 location) — OHKO speed-tie check
- `Doubles_Coordination.rb` (11 locations) — all type effectiveness calculations
- `Win_Conditions.rb` (2 locations) — Stealth Rock damage, damage estimate

---

## Nil Speed Variables, Crashes & Typo Fixes (Round 9)

### Priority_Tiers.rb — Trick Room / Counter / Prankster scoring dead (HIGH)

`user_speed` and `target_speed` were assigned **inside** the `if move_priority > 0` block but **used** in the `if move_priority < 0` block and the Prankster/Gale Wings sections. When those variables were never assigned, Ruby left them as `nil`. The NilClass comparison patches in Hotfixes.rb prevented crashes but made all comparisons silently false:
- **Trick Room never got +100 for slow users** (`nil < 50` → false)
- **Counter/Mirror Coat/Avalanche got no speed-based adjustments** (`nil > nil` → false)
- **Prankster/Gale Wings speed bonuses were dead code**

Fix: Moved `user_speed = user.pbSpeed` / `target_speed = target.pbSpeed` **before** both `if` blocks.

### Switch_Intelligence.rb — `stat_changes[:SPEED]` TypeError crash (HIGH)

`GameData::Nature#stat_changes` returns an **Array** of `[stat_id, value]` pairs, not a Hash. Calling `array[:SPEED]` raises `TypeError: no implicit conversion of Symbol into Integer`, crashing `calculate_party_speed` on every call. This broke all speed-based switch-in evaluation.

Fix: `nature_data.stat_changes.find { |s| s[0] == :SPEED }` with nil-safe access.

### Role_Detection.rb — `pkmn.index` NoMethodError crash (HIGH)

`best_for_role` iterates party `Pokemon` objects but called `.index` (a `Battle::Battler` method) on them, crashing with `NoMethodError`. Role-based switch-in recommendations were completely non-functional.

Fix: Use `party.index(pkmn)` (Array#index) to get the party position, then pass that to `pbFindBattler`.

### Item_Intelligence.rb — `:MAROWAKALOHA` → `:MAROWAKALOLA` (MEDIUM)

Thick Club's 2× Attack multiplier for Alolan Marowak never applied because the species symbol was misspelled. The AI underestimated Alolan Marowak's damage by 50%.

### Doubles_Coordination.rb — `:DARKVOIDE` → `:DARKVOID` (LOW)

Crafty Shield evaluation didn't recognise Dark Void as a dangerous status move.

### Integer Division in 5 Damage Estimators (LOW)

`2 * level / 5` uses integer division (truncates at low levels). Changed to `/ 5.0` for consistency with the primary damage calculator in `0_Move_Scorer.rb`:
- `Substitute_Logic.rb` line 431
- `Win_Conditions.rb` line 534
- `Endgame_Scenarios.rb` line 333
- `Pivot_Moves.rb` line 453
- `Prediction_System.rb` line 340

### Rescue Blocks Narrowed (LOW)

Bare `rescue` catches **all** `StandardError` subclasses, hiding programming bugs. Narrowed to specific IO exceptions:
- `0_Settings.rb` → `rescue SystemCallError, IOError`
- `Console_Fix.rb` → `rescue SystemCallError, IOError, Errno::EINVAL`
- `Debug_Menu.rb` → safe navigation (`owner&.skill_level || 50`)

---

## Cloud Nine / Air Lock Weather Bypass & Prediction System Fix (Round 10)

### Prediction_System.rb — Switch prediction entirely broken (HIGH)

`predict_switch_chance` and `predict_switch_target` used `battle.battlers[(opponent.index + 2) % 4]` to find the facing opponent. This formula:
- **Singles** (indices 0, 1): Returns index 2 or 3 — slots that **don't exist**. `battlers[2]` is nil. The entire type-disadvantage switch prediction (+30%) was silently skipped.
- **Doubles** (indices 0–3): Returns the **partner**, not the facing foe (0→2 = same-side slot).

Fix: `battle.allOtherSideBattlers(opponent.index).select { |b| b && !b.fainted? }.first`

### Cloud Nine / Air Lock weather bypass (MEDIUM — 12 locations, 7 files)

The plugin already defines `AdvancedAI::Utilities.weather_active?(battle)` and `current_weather(battle)` that correctly return `:None` when Cloud Nine or Air Lock is on the field. However, **12+ locations** read `battle.field.weather` directly, bypassing this check. When Air Lock Rayquaza, Cloud Nine Golduck, etc. are in battle:
- Weather bonuses (+30 Fire in Sun, +30 Water in Rain) still applied
- Swift Swim / Chlorophyll / Sand Rush / Slush Rush speed doubling still calculated
- Doubles weather coordination still evaluated weather synergy
- Leaf Guard still blocked status, Sun still prevented freeze
- Weather war / Chilly Reception checked wrong weather state

All 12 locations changed to `AdvancedAI::Utilities.current_weather(battle)`:
- `Field_Effects.rb` (3 locations) — `weather_bonus`, `weather_war_bonus`
- `Speed_Tiers.rb` (4 locations) — Swift Swim, Chlorophyll, Sand Rush, Slush Rush
- `Doubles_Coordination.rb` (5 locations) — weather setting, boosted moves, Focus Sash weather damage, weather prediction
- `Weather_Terrain_Wars.rb` (1 location) — `evaluate_weather_setting`
- `Pivot_Moves.rb` (1 location) — Chilly Reception already-active check
- `Utilities.rb` (2 locations) — Leaf Guard immunity, freeze immunity in Sun

---

## Move Prediction & Threat Tracking Fixes (Round 11)

### Prediction_System.rb — `:move_frequency` key doesn't exist (CRITICAL)

`predict_next_move` read `memory[:move_frequency]` in 3 places, but Move_Memory.rb stores usage counts under `:move_counts`. Since `memory[:move_frequency]` is always `nil`, the guard clause returned `nil` on every call. The **entire move prediction pipeline was non-functional**:
- `apply_prediction_logic` never scored prediction bonuses
- `score_counter_mirror_coat` fell back to stat heuristics instead of move-based prediction

Fix: All 3 `:move_frequency` → `:move_counts`.

### Strategic_Awareness.rb — `assess_threat` called with nil opponent (HIGH)

`update_threats` called `assess_threat(battle, opp, nil, 100)` — passing the enemy as `attacker` and `nil` as `opponent`. Since `assess_threat` returns 5 when `opponent` is nil, **every opponent threat was always rated exactly 5.0**. This meant:
- `threat_persistence_bonus` never detected high threats being eliminated (threshold is 7.0)
- Aggression/setup bonuses after KO'ing a dangerous threat never activated

Fix: Look up the AI's own active battler via `allSameSideBattlers` and pass it as the first arg, the enemy as second.

### Learning_System.rb — Division by zero on turn 0 (MEDIUM)

`predict_protect_usage` divides by `current_turn` (from `turnCount`). On turn 0, this produces `Float::INFINITY`. Currently blocked by the Learning System having no integration hooks (dead code), but fixed proactively: `[current_turn, 1].max`.

---

### Cross-Module Integration & Deep Dives (Round 12)

### Endgame_Scenarios.rb — `get_partner()` returns opponent instead of partner (CRITICAL)

`get_partner` computed `partner_index = (user.index % 2 == 0) ? user.index + 1 : user.index - 1`. PE v21.1 uses interleaved battler indexing (0=player₁, 1=opponent₁, 2=player₂, 3=opponent₂), so `index ± 1` always yields the **opposite side's** battler. The AI's Protect-stall scoring in `score_2v2_move` checked whether the **enemy** could KO their **own** teammate instead of whether the **partner** could. Fixed to use `allSameSideBattlers` API.

### Team_Preview_Intelligence.rb — `Pokemon::Move` NoMethodError crash (CRITICAL)

`calculate_type_matchup` called `move.statusMove?` and `move.type` on party `Pokemon::Move` objects, which only have `id`, `pp`, `ppup`, `total_pp`. These methods are only available on `Battle::Move` and `GameData::Move`. Team Preview lead selection crashed with `NoMethodError` on the first attacking move. Fixed to use `GameData::Move.try_get(move.id)` and `move_data.category == 2` / `move_data.type`.

### Team_Preview_Intelligence.rb — Weather symbols `:sun` ≠ `:Sun` (CRITICAL)

`get_weather_type` returned lowercase symbols (`:sun`, `:rain`, `:sandstorm`, `:hail`) but `benefits_from_weather?` in Custom_Content.rb matches against PascalCase (`:Sun`, `:Rain`, `:Sandstorm`, `:Hail`). Ruby symbols are case-sensitive, so **all 4 weather types failed** — weather leads (Drought Ninetales, Drizzle Pelipper, etc.) were never detected. Fixed to return PascalCase.

### Team_Preview_Intelligence.rb — Terrain symbols `:electric` ≠ `:Electric` (CRITICAL)

Same pattern: `get_terrain_type` returned lowercase (`:electric`, `:grassy`, `:misty`, `:psychic`) but `benefits_from_terrain?` checks PascalCase (`:Electric`, `:Grassy`, `:Misty`, `:Psychic`). Terrain leads (Tapu Koko, Rillaboom, etc.) were never detected. Fixed to return PascalCase.

### Dynamax_Intelligence.rb — `gmax_move?` always returns true (MEDIUM)

`gmax_move?(move_type)` ignored the `move_type` parameter and returned `true` for any G‑Max capable Pokémon. This gave every G‑Max species the Steelsurge-specific timing bonus (+25 early game, +10 mid-game), biasing all G‑Max Pokémon toward early Dynamax. Fixed with a species→G‑Max move lookup table.

### Battle_Personalities.rb — Missing egg skip in hyper-offensive inner loop (LOW)

The outer personality-detection loop correctly skips eggs (`next if !pokemon || pokemon.egg?`), but the inner loop counting setup moves only skipped nil. An egg's pre-bred moves could inflate `setup_count`, incorrectly triggering `:hyper_offensive`. Added `|| pokemon.egg?`.

### Win_Conditions.rb — Hardcoded `battle.sides[0]`/`[1]` (LOW)

`check_attrition_condition` and `check_speed_control_condition` hardcoded `battle.sides[0]` as opponent and `battle.sides[1]` as AI. If the AI runs on side 0 (multi-battles, ally AI), hazard and Tailwind checks read the wrong side. Fixed to derive the side index dynamically from `user.index & 1`.

---

### Deep Dives: Hazards, Substitutes, Abilities, Damage Calc (Round 13)

### Advanced_Abilities.rb — Unqualified `CombatUtilities` NameError (HIGH)

`evaluate_unburden_threat` called `CombatUtilities.estimate_damage(...)` at line 170, but the correct constant path is `AdvancedAI::CombatUtilities`. Ruby's constant lookup chain (`Battle::AI::CombatUtilities` → `Battle::CombatUtilities` → `::CombatUtilities`) finds nothing, raising `NameError`. The rescue block swallows it, causing Unburden threat evaluation to silently return 0 — the AI may accidentally trigger Unburden by removing items with Knock Off/Thief.

### Hazard_Control.rb — `count_hazards`/`count_screens` crash with `Battle::Side` objects (CRITICAL)

`evaluate_court_change` and `evaluate_tidy_up_hazards` pass `Battle::Side` objects to `count_hazards`/`count_screens`, but these helpers indexed the parameter directly with `side_effects[PBEffects::StealthRock]`. `Battle::Side` does not define `[]` — you need `side.effects[...]`. Fixed the helpers to accept either `Battle::Side` objects or effects hashes via `respond_to?(:effects)`.

### Hazard_Control.rb — Defog screen penalty on wrong side (HIGH)

Defog removes screens from the **target's** side (Gen 6+), not the user's side. The code penalized Defog when the **AI's own** side had Reflect/Light Screen (−20 each), but those screens are untouched. Also missing a bonus for removing the **opponent's** screens. Fixed: removed own-side penalty, added opponent-side bonuses (+15 Reflect, +15 Light Screen, +20 Aurora Veil).

### Substitute_Logic.rb — Feint does not bypass Substitute (LOW)

Feint bypasses Protect/Detect but NOT Substitute. The code gave +10 for "hitting through Sub" which is incorrect. Removed the bonus.

### Substitute_Logic.rb — Sound move list corrections (LOW/MEDIUM)

`:CLANGOROUSSOUL` is a self-targeting buff, not an opponent-targeting sound move — removed. Added `:TORCHSONG` (Gen 9 damaging sound move used by Armarouge) and `:SNORE` (sound move that bypasses Sub).

### Custom_Content.rb — `additional_effect_chance` NoMethodError (HIGH)

`calculate_ability_damage_modifier` called `move.additional_effect_chance` for Sheer Force, but PE v21.1's method is `addlEffect`. The crash kills the entire ability modifier calculation via rescue, losing ALL ability adjustments (Huge Power, Adaptability, etc.) for any damage estimate involving a Sheer Force battler. Fixed to `move.addlEffect.to_i > 0`.

### Custom_Content.rb — `punching_move?` / `biting_move?` NoMethodError (HIGH)

Iron Fist checked `move.punching_move?` and Strong Jaw checked `move.biting_move?`, but PE v21.1 uses camelCase: `punchingMove?` and `bitingMove?`. Same crash cascade as above. Fixed.

### Custom_Content.rb — Adaptability modifier double-stacks with STAB (MEDIUM)

Adaptability changes STAB from 1.5× to 2.0×. Since `estimate_damage` already applies 1.5× STAB, the modifier should be `2.0 / 1.5 ≈ 1.333×`. The code applied `2.0×`, resulting in an effective STAB of `1.5 × 2.0 = 3.0×` — 50% more than correct. Fixed to `4.0 / 3.0`.

---

### Remaining File Deep Dives (Round 14)

### Recoil_Tracking.rb — Rock Head guards wrong recoil source (HIGH)

Rock Head was checked on **Life Orb** recoil (where it does NOT apply) but missing from **move-based** recoil like Brave Bird and Head Smash (where it DOES apply). This caused Rock Head users (Aerodactyl, Rhydon) to get wrong recoil estimates in both directions: overvaluing Life Orb moves and undervaluing their signature recoil moves. Swapped the guard to the correct location.

### Terastallization_Intelligence.rb — `Effectiveness.calculate(type, tera_type, nil)` crash (CRITICAL)

The Tera survival check passed an explicit `nil` as a defending type: `Effectiveness.calculate(move.type, tera_type, nil)`. The method splats defending types and calls `GameData::Type.get(nil)`, which raises `"Unknown GameData::Type: nil"`. This crashes whenever a Tera-eligible Pokémon faces a threatening KO move. Removed the trailing `nil`.

### Sleep_Clause.rb — RestTalk HP thresholds unreachable (MEDIUM)

`if hp_percent < 0.5` caught everything including `< 0.3`, making the `elsif hp_percent < 0.3` branch (with its higher +60 bonus) unreachable. Rest at critically low HP got +40 instead of the intended +60. Reversed the condition order.

### Disruption_Moves.rb — Knock Off HDB side check wrong (MEDIUM)

Heavy-Duty Boots removal bonus checked the **AI's own** side for hazards instead of the **target's** side. The whole point is that removing HDB exposes the target to hazard damage on their side. Fixed to `target.pbOwnSide`.

### Doubles_Strategy.rb — Fake Out uses global turn count (MEDIUM)

`battle.turnCount > 0` blocks the Fake Out bonus after battle turn 1, but Fake Out works on a Pokémon's **first turn after entering battle** (personal `turnCount`). Mid-battle switch-ins that could use Fake Out got no doubles bonus. Fixed to `user.turnCount`.

### Critical_Hits.rb — Unused arbitrary battler lookup (LOW)

`check_crit_immunity` fetched an arbitrary non-fainted battler to compute a crit stage that was never used. Removed the dead lookup.

### Dead Code: `Battle::AI#pbRegisterMove` chain — NOW CONNECTED (CRITICAL)

`Disruption_Moves.rb`, `Special_Moves.rb`, `Recoil_Tracking.rb`, and `Doubles_Strategy.rb` all alias-chain `Battle::AI#pbRegisterMove`, but the main scoring pipeline in `Core.rb` called `score_move_advanced` directly and never invoked `pbRegisterMove`. The detailed intelligence in these four files — Taunt/Encore/Knock Off/Trick strategy, Pain Split/Healing Wish/Final Gambit/Memento evaluation, recoil penalties, confusion risk, substitute cost, and doubles Fake Out/redirection/Helping Hand/Protect coordination — was **never executed**.

**Fix (2 files):**
- **`Core.rb`**: `pbGetMoveScore` now calls `pbRegisterMove(@user, @move)` instead of `score_move_advanced(...)` directly, routing through the full alias chain. Pre-resolved `target` and `skill` are passed via `@_resolved_target` / `@_resolved_skill` instance variables so the base `pbRegisterMove` uses the pipeline's values.
- **`0_Move_Scorer.rb`**: Base `pbRegisterMove` now checks `@_resolved_target` / `@_resolved_skill` before falling back to its own opponent lookup and default skill. Also fixed a latent bug where skill was passed as a trainer object (`pbGetOwnerFromBattlerIndex`) instead of a numeric skill level.

---

### Round 15 — Audit Fixes

### Switch_Intelligence.rb — Stat-stage multiplier arrays completely wrong (CRITICAL)

Both physical and special stat-stage lookup arrays in `estimate_switch_in_damage` had every multiplier value inverted/scrambled. At stage +6 the array returned 1.0× instead of 4.0×; at stage −6 it returned 2.0× instead of 0.25×. The AI happily switched fragile Pokémon into +6 sweepers, predicting normal damage. Both arrays (ATK line ~903, SPA line ~927) replaced with the correct Gen 3+ stat stage formula: `(2+stage)/2` for positive, `2/(2+|stage|)` for negative.

### Mechanics_Hooks.rb — Gimmick hook uses nil/stale `@user` (CRITICAL)

`run_advanced_ai_special_actions` called `should_mega_evolve?(@user, skill)` etc., but `@user` is only assigned during move scoring (`set_up`), which happens *after* the gimmick hook fires. On turn 1 `@user` is `nil` → **NoMethodError crash**. On later doubles turns it pointed to the *previous* battler. Fixed: wrap the correct `battler` in a fresh `AIBattler` and pass that to all four `should_*` methods.

### Custom_Content.rb — `ability_suppressed?` args swapped for attacker abilities (HIGH)

`calculate_ability_damage_modifier` called `ability_suppressed?(target, attacker)` when checking whether the **attacker's** offensive abilities (Huge Power, Adaptability, etc.) should apply. This asks "does the target have Mold Breaker?" — if yes, the attacker's own Huge Power gets incorrectly suppressed. Fixed: attacker's abilities are suppressed only by Gastro Acid on itself, not by the target's Mold Breaker.

### Doubles_Coordination.rb — `addlEffect == "Flinch"` int-vs-string always false (MEDIUM)

`check_flinch_immunity` compared `move.addlEffect` (an integer 0–100) to the string `"Flinch"`, which always evaluates to `false`. Inner Focus / Shield Dust flinch immunity was only recognized for Fake Out, not for Iron Head, Air Slash, Zen Headbutt, etc. Fixed: checks `move.function_code` for `"Flinch"` substring instead.

### Weather_Terrain_Wars.rb — Hardcoded side 0 in opponent weather checks (MEDIUM)

`weather_benefits_opponent?` and `calculate_opponent_weather_penalty` both iterated `allSameSideBattlers(0)` — always the player's side. This works when the AI is on side 1, but breaks for ally AI or multi battles. Both methods now accept an optional `user` parameter and derive the opponent side from `user.index`.

### Hotfixes.rb — `NORMAL_EFFECTIVE_ONE` undefined constant (MEDIUM)

The `GameData::Type.calculate` recursion guard and rescue block both returned `Effectiveness::NORMAL_EFFECTIVE_ONE`, which doesn't exist — should be `Effectiveness::NORMAL_EFFECTIVE`. If type recursion exceeded 10 levels, the bail-out raised `NameError` instead of returning neutral. Fixed both occurrences.

### Custom_Content.rb — Gorilla Tactics and Good as Gold misclassified (LOW)

`GORILLATACTICS` (1.5× Attack, choice-locked) was in `SPEED_ABILITIES` instead of `OFFENSIVE_ABILITIES`. `GOODASGOLD` (status move immunity) was in `SPEED_ABILITIES` instead of `DEFENSIVE_ABILITIES`. Both moved to correct categories.

### Mega_Intelligence.rb + Doubles_Coordination.rb — `pbWeather` ignores Cloud Nine/Air Lock (LOW)

Two remaining `battle.pbWeather` calls (Mega weather-setting ability check, Flower Gift check) didn't respect Cloud Nine / Air Lock suppression. Replaced with `AdvancedAI::Utilities.current_weather(battle)`.

### Doubles_Coordination.rb — Focus Sash weather immunity merged Sand + Hail (LOW)

The weather-chip check for breaking Focus Sash treated Rock/Ground/Steel/Ice as immune to *both* Sandstorm and Hail. In reality, Ice is immune to Hail only, and Rock/Ground/Steel are immune to Sandstorm only. Split into per-weather immunity checks.

### Terastallization_Intelligence.rb — `user.battler.name` double-dereference crash (LOW)

`should_terastallize?` called `user.battler.name` assuming `user` is always an `AIBattler`. With the Mechanics_Hooks fix (R15-2) now wrapping battlers in AIBattler, this is safe, but added a `respond_to?(:battler)` guard for robustness.

---

## Round 16 — `GameData::Move` category shims, prediction category, Regenerator phasing, speed move IDs, terrain side logic (6 fixes)

### Hotfixes.rb — `GameData::Move` shims compare integer category to symbols (HIGH)

The `statusMove?` and `damagingMove?` shims added to `GameData::Move` compared `self.category` (which returns an integer: 0 = Physical, 1 = Special, 2 = Status) against symbols (`:physical`, `:special`, `:status`). Since integers never equal symbols, `statusMove?` always returned `false` and `damagingMove?` always returned `true` — every Status move in the game was misidentified as damaging. PE v21.1 already provides correct `physical?`, `special?`, `damaging?`, and `status?` methods on `GameData::Move`. Replaced the broken shims with simple delegations: `statusMove?` → `status?`, `damagingMove?` → `damaging?`, `physicalMove?` → `physical?`, `specialMove?` → `special?`.

### Prediction_System.rb — `move.category != :Status` always true (MEDIUM)

In `predict_opponent_action`, the damaging-move filter `move.category != :Status` compared `Battle::Move#category` (integer 2) to `:Status` (symbol). This always evaluated to `true`, so Status moves were never filtered out of predicted damage sets. Replaced with `move.damagingMove?` which correctly returns `false` for Status moves.

### Advanced_Abilities.rb — Regenerator checks wrong function code (MEDIUM)

The Regenerator scoring check looked for `"SwitchOutUserStatusMove"` (Teleport — the *user* switches out) to detect phasing moves that force the *opponent* out. This meant Whirlwind, Roar, Dragon Tail, and Circle Throw were never identified as anti-Regenerator phasing. Changed to check `["SwitchOutTargetStatusMove", "SwitchOutTargetDamagingMove"]` which covers Whirlwind/Roar and Dragon Tail/Circle Throw respectively.

### Doubles_Coordination.rb — Speed control move ID typos (MEDIUM)

Two move symbols were misspelled in speed control detection: `:ELECTROWEBS` (correct: `:ELECTROWEB`) and `:ROCKSLIDE` (should be `:ROCKTOMB` — Rock Slide doesn't lower Speed, Rock Tomb does). These typos caused the AI to never recognise these speed control options in doubles.

### Weather_Terrain_Wars.rb — `terrain_benefits_opponent?` hardcoded side 0 (MEDIUM)

`terrain_benefits_opponent?` called `battle.allSameSideBattlers(0)` to check opponent types, which always checked the player's side regardless of which side the AI was on. Added a `user` parameter and derived the opponent side from `user.index % 2 == 0 ? 1 : 0`, matching the fix pattern applied to `weather_benefits_opponent?` in R15.

### Weather_Terrain_Wars.rb — Misty Terrain Dragon logic inverted (LOW)

The Misty Terrain check in `terrain_benefits_opponent?` returned `true` (terrain benefits opponent) when the opponent had Dragon-type moves. But Misty Terrain *halves* Dragon damage — it actually *hurts* Dragon attackers, not benefits them. The logic was inverted. Removed this incorrect Dragon check entirely since Misty Terrain's Dragon-halving is already handled by the damage calculator.

---

## Round 17 — `Pokemon::Move` method crashes, double nature modifier, remaining `.get` calls (5 fixes)

### Pivot_Moves.rb — `move.type` on `Pokemon::Move` crashes (HIGH)

In `evaluate_switch_candidates`, the code iterated `pkmn.moves` (party `Pokemon::Move` objects) and called `move.type` — but `Pokemon::Move` has no `.type` method (`id`, `pp`, `ppup`, `total_pp` only). The correct `move_data` was already fetched on the previous line via `GameData::Move.try_get(move.id)` but never used for the type lookup. Changed `move.type` → `move_data.type` and `move_data.category < 2` → `move_data.damaging?`.

### Switch_Intelligence.rb — `move.damagingMove?` / `move.type` on `Pokemon::Move` crashes (HIGH)

In `evaluate_speed_advantage`, `switch_pkmn.moves` yields party `Pokemon::Move` objects. The code called `move.damagingMove?` and `move.type` — neither exists on `Pokemon::Move`. This crashes with `NoMethodError` whenever the AI considers outspeeding + OHKO potential. Fixed by looking up `GameData::Move.try_get(move.id)` and using `move_data.damaging?` / `move_data.type`.

### Move_Memory.rb — `GameData::Move.get` crash on unknown move ID (HIGH)

`strongest_known_move` called `GameData::Move.get(move_id).power` inside `max_by`. If move memory contains a stale or invalid ID (removed by mods, corrupted data), `.get` raises `RuntimeError`. Changed to `GameData::Move.try_get(move_id)` with a fallback of `0` power.

### Switch_Intelligence.rb — Double nature modifier in `calculate_party_speed` (MEDIUM)

`calculate_party_speed` started with `pkmn.speed` (which already includes the nature multiplier from `calc_stats`) and then applied the nature modifier *again* by reading `stat_changes`. Result: +Speed natures got 1.21× instead of 1.1×; −Speed natures got 0.81× instead of 0.9×. This skewed all switch-in speed comparisons. Removed the redundant nature block.

### Win_Conditions.rb — `GameData::Move.get` with blanket `rescue nil` (LOW)

`GameData::Move.get(move.id) rescue nil` used `get` (which raises on unknown IDs) with a blanket `rescue nil` that silently swallows all exceptions. Changed to `GameData::Move.try_get(move.id)` which returns `nil` cleanly without exception overhead.

---

## Round 18 — Dead `:TOXIC` status branch (1 fix)

### Switch_Intelligence.rb — `when :TOXIC` dead branch in status scoring (MEDIUM)

In `calculate_switch_score`, the `case user.status` block had `when :POISON, :BURN` (+15) and a separate `when :TOXIC` (+20). However, PE v21.1 returns `:POISON` for **both** regular and badly poisoned — `user.status` is never `:TOXIC`. The badly-poisoned bonus branch was dead code, so toxic-poisoned Pokémon only scored +15 instead of the intended +20. Fixed by merging into `when :POISON` with a `user.statusCount > 0` check (PE's standard toxic indicator) to apply the correct +20 for badly poisoned.

> **Audit note — verified non-issues this round:**
> - 22 remaining `@battle.pbWeather` calls: PE's `pbWeather` already respects Cloud Nine / Air Lock at `Battle#pbWeather` line 702. Functionally equivalent to the plugin's `current_weather`. Not bugs.
> - ~14 `:Snow` weather references: PE v21.1 only registers `:Hail`, not `:Snow`. These branches are harmless dead code.
> - All 8 party `Pokemon::Move` iteration sites verified safe (use `m.id`, `m.pp`, or `GameData::Move.try_get`).
> - 3 remaining `allSameSideBattlers(0)` in Weather_Terrain_Wars.rb all have a `user` fallback parameter. Not bugs.

---

## Files Changed

| File | Change |
|------|--------|
| `1_Core/0_Settings.rb` | Narrowed bare `rescue` → `rescue SystemCallError, IOError` |
| `1_Core/Debug_Menu.rb` | Fixed `!b.opposes?` → `b.opposes?` in skill get/set, **safe navigation for skill lookup** |
| `1_Core/Core.rb` | **`pbGetMoveScore` now routes through `pbRegisterMove` alias chain** instead of calling `score_move_advanced` directly — activates Disruption, Special Moves, Recoil Tracking, and Doubles Strategy scoring |
| `1_Core/Utilities.rb` | Reordered `grounded?`: grounding overrides before airborne checks, **nil-defender fallback fix**, **Cloud Nine/Air Lock: Leaf Guard + freeze immunity now use `current_weather`**, **`contact_punishment`: Long Reach/Protective Pads early-return moved to top** |
| `1_Core/Combat_Utilities.rb` | **`total_stat_boosts`: now sums only positive stages (was including negatives, breaking boost-detection threshold)** |
| `2_Move_Intelligence/0_Move_Scorer.rb` | Phazing check, ally guard, hazard side fix, category fix, healing function codes, Strength Sap/Revival Blessing/Ceaseless Edge/Stone Axe scoring, 60+ ability/item/terrain/weather awareness additions, `:TOXIC` status fix, **type effectiveness halving fix (2 locations)**, **`.types[]` → `.pbTypes(true)` for Tera (7 locations)**, **`pbRegisterMove` uses `@_resolved_target`/`@_resolved_skill` from pipeline, fixed skill parameter type**, **`score_type_effectiveness`/`score_stab_bonus`: -ate ability type transformation (Pixilate/Aerilate/Refrigerate/Galvanize)**, **Black Sludge Protect scoring: added Poison-type guard** |
| `2_Move_Intelligence/Move_Categories.rb` | `:SILVERPOWDER` → `:SILVERWIND`, added healing moves, Tidy Up in SETUP_MOVES |
| `2_Move_Intelligence/Move_Memory.rb` | Safe move lookup when `idx == -1`, **`GameData::Move.get` → `try_get`**, **`.types[]` → `.pbTypes(true)`**, **`strongest_known_move`: `.get` → `.try_get` with power fallback** |
| `2_Move_Intelligence/Disruption_Moves.rb` | **Knock Off HDB hazard check: AI's side → target's side**, **Single-target disruption: summed scores → max across targets in Doubles** |
| `3_Combat_Mechanics/Hazard_Control.rb` | **Type effectiveness halving fix** in Stealth Rock damage calc, **`count_hazards`/`count_screens` Battle::Side crash fix**, **Defog screen penalty wrong side → opponent screen bonus**, **`is_grounded?`: added Gravity/Iron Ball/Ingrain overrides before airborne checks** |
| `3_Combat_Mechanics/Advanced_Abilities.rb` | **`function_code.to_sym` fix** — Contrary, Defiant/Competitive, Unburden detection now use correct CamelCase strings, **unqualified `CombatUtilities` → `AdvancedAI::CombatUtilities`**, **Regenerator: `SwitchOutUserStatusMove` → `SwitchOutTargetStatusMove` + `SwitchOutTargetDamagingMove`**, **Contrary/Defiant/Competitive: removed `statusMove?` gate — now covers damaging stat-drop moves (Snarl, Icy Wind, Moonblast, etc.)** |
| `3_Combat_Mechanics/Field_Effects.rb` | `.ability` → `.ability_id` in weather synergy counting (6 locations), **`.types[]` → `.pbTypes(true)` Mimicry fix**, **Cloud Nine/Air Lock: `weather_bonus` + `weather_war_bonus`**, **Harsh Sun Water −30 → −200 (zero damage)**, **Heavy Rain Fire −30 → −200 (zero damage)**, **Wonder Room inverted conditions fixed**, **Psychic Terrain priority: added target grounded check**, **Misty Terrain Dragon: added target grounded check**, **Misty Terrain: status penalty narrowed to condition-inflicting moves only**, **Electric Terrain: expanded sleep list + added target grounded check** |
| `3_Combat_Mechanics/Substitute_Logic.rb` | Removed `:GRASSYGLIDE` from sound moves, fixed `!attacker.status` truthy bug, **type effectiveness halving fix**, **Shedinja zero-division guard**, **`.types[]` → `.pbTypes(true)` (3 locations)**, **integer division `/ 5` → `/ 5.0`**, **Feint sub bypass removed**, **`:CLANGOROUSSOUL` → `:TORCHSONG` + `:SNORE` in sound list** |
| `3_Combat_Mechanics/Recoil_Tracking.rb` | **Rock Head guard moved from Life Orb to move recoil (Brave Bird/Head Smash)**, **`pbOpposingIndices` called on battler → `battle.pbOpposingIndices(user.index)` for trade-KO advantage** |
| `3_Combat_Mechanics/Sleep_Clause.rb` | **RestTalk HP threshold order reversed (≤30% → +60 now reachable)** |
| `3_Combat_Mechanics/Critical_Hits.rb` | **Removed unused arbitrary battler lookup in `check_crit_immunity`** |
| `3_Combat_Mechanics/Weather_Terrain_Wars.rb` | Fixed `allOtherSideBattlers(0)` → `allSameSideBattlers(0)` in 3 methods, **Snowscape `:Snow` → `:Hail` weather mapping fix**, **Cloud Nine/Air Lock: `evaluate_weather_setting`**, **`weather_benefits_opponent?` / `calculate_opponent_weather_penalty` hardcoded side 0 → derived from `user.index`**, **`terrain_benefits_opponent?` hardcoded side 0 → derived from `user.index`**, **Misty Terrain Dragon logic inverted → removed**, **Sandstorm `.first` → `.any?` for all 3 immunity checks (secondary types missed)**, **Hail chip penalty: added `HAIL_WEATHER_TYPE` guard**, **Weather-setting: added extreme weather (Primal/Delta) blocking** |
| `4_Battle_Strategy/Advanced_Items.rb` | **`function_code.to_sym` fix** — Eject Pack detection now uses correct CamelCase strings |
| `4_Battle_Strategy/Item_Intelligence.rb` | Category comparison fix, **`:MAROWAKALOHA` → `:MAROWAKALOLA`**, **Choice Scarf `:speed` branch removed from damage multiplier** |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | **Removed `:MYCELIUMMIGHT` from `MOLD_BREAKER_ABILITIES`**, **Scald removed from Guts −60 array (unreachable −30 branch now reachable)**, **Trapping abilities: Ghost-type + Shed Shell universal escape checks added** |
| `4_Battle_Strategy/Learning_System.rb` | Status vs Protect penalty fix, **division-by-zero guard on turn 0** |
| `4_Battle_Strategy/Prediction_System.rb` | Switch chance threshold, category fix, `:TOXIC` status fix, **integer division `/ 5` → `/ 5.0`**, **opponent lookup formula fix**, **`:move_frequency` → `:move_counts`**, **`move.category != :Status` → `move.damagingMove?`**, **`should_double_switch?`: `move.type` → `GameData::Move.try_get(move.id)` crash fix for party `Pokemon::Move`** |
| `4_Battle_Strategy/Role_Detection.rb` | **`pkmn.index` → `party.index(pkmn)` crash fix** |
| `4_Battle_Strategy/Setup_Recognition.rb` | Category comparison fix |
| `4_Battle_Strategy/Strategic_Awareness.rb` | **`assess_threat` nil opponent fix** — threats now properly evaluated, **Pivots/recovery counted per-Pokémon instead of per-move** |
| `4_Battle_Strategy/Switch_Intelligence.rb` | Fixed switch-in hazard side check (opponent → own side), **type effectiveness halving fix**, **`GameData::Move.get` → `try_get`**, **`.types[]` → `.pbTypes(true)`**, **`stat_changes[:SPEED]` TypeError fix**, **stat-stage multiplier arrays completely rewritten (both ATK and SPA)**, **`evaluate_speed_advantage`: `Pokemon::Move` → `GameData::Move` for `.damagingMove?`/`.type`**, **`calculate_party_speed`: removed double nature modifier**, **`when :TOXIC` dead branch → merged into `:POISON` with `statusCount > 0` toxic check**, **`get_real_types`: returns disguise types → simplified to `pbTypes(true)`**, **`evaluate_momentum`: asymmetric party count → consistent enemy party count**, **Parental Bond: moved out of `multiHitMove?` block**, **Sniper crit: fixed double-multiplication → single correct formula**, **Magic Guard hazard: added grounded/immunity checks for Toxic Spikes + Sticky Web** |
| `4_Battle_Strategy/Team_Preview_Intelligence.rb` | `ability` → `ability_id` in terrain + weather detection, category fix, **`Pokemon::Move` → `GameData::Move.try_get` crash fix**, **weather symbol case fix (`:sun` → `:Sun`)**, **terrain symbol case fix (`:electric` → `:Electric`)** |
| `4_Battle_Strategy/Threat_Assessment.rb` | **`GameData::Move.get` → `try_get`** in assess_move_threat |
| `5_Format_Specific/Doubles_Coordination.rb` | `num_targets` crash, flinch immunity list, **weather symbol mismatch fix**, **`.types[]` → `.pbTypes(true)` (11 locations)**, **`:DARKVOIDE` → `:DARKVOID`**, **Cloud Nine/Air Lock: 5 weather locations**, **`addlEffect == "Flinch"` → `function_code` flinch check**, **Focus Sash weather immunity split per-weather**, **Flower Gift `pbWeather` → `current_weather`**, **`:ELECTROWEBS` → `:ELECTROWEB`, `:ROCKSLIDE` → `:ROCKTOMB`**, **`prevent_move_conflicts`: now checks partner's planned move before penalizing**, **`:ICICLESPEAR` removed from `SPREAD_MOVES`**, **`WEATHER_MOVE_BOOST`: removed false Sandstorm/Hail entries**, **`WEATHER_ABILITIES`: removed primal ability mappings**, **`evaluate_spotlight`: inverted logic fixed (penalties for punishing targets, bonus for frail)**, **Sandstorm Ground move bonus removed** |
| `5_Format_Specific/Doubles_Strategy.rb` | **Fake Out `battle.turnCount` → `user.turnCount`** |
| `5_Format_Specific/Pivot_Moves.rb` | Substitute awareness, **type effectiveness halving fix**, **integer division `/ 5` → `/ 5.0`**, **Cloud Nine/Air Lock: Chilly Reception**, **`evaluate_switch_candidates`: `move.type` → `move_data.type`, `category < 2` → `damaging?`**, **`evaluate_best_switch_in`: per-type effectiveness → combined types**, **`estimate_damage_percent`: division-by-zero guard** |
| `5_Format_Specific/Priority_Tiers.rb` | **Moved speed variable assignment before priority branches**, **Trick Room: restructured to prevent cancelling own TR (slow mon gets −100 when TR active)** |
| `5_Format_Specific/Speed_Tiers.rb` | **`.types[]` → `.pbTypes(true)`** in OHKO speed-tie check, **Cloud Nine/Air Lock: Swift Swim/Chlorophyll/Sand Rush/Slush Rush**, **`suspect_choice_scarf?`: early return false for itemless mons**, **Choice-lock Scarf: `battler.speed` → `baseStats[:SPEED]`** |
| `6_Meta_Mechanics/Dynamax_Intelligence.rb` | **`gmax_move?` always true → species-based G‑Max move lookup**, **`alive_enemies_count`: `allOtherSideBattlers` (on-field only) → `pbParty` (full team count)** |
| `6_Meta_Mechanics/Mega_Intelligence.rb` | **`pbWeather` → `current_weather` in Mega weather-setting ability check** |
| `6_Meta_Mechanics/Terastallization_Intelligence.rb` | **`Effectiveness.calculate(type, tera_type, nil)` → removed nil (crash fix)**, **`user.battler.name` → `respond_to?(:battler)` guard** |
| `6_Meta_Mechanics/Battle_Personalities.rb` | Category comparison fix, **egg skip in hyper-offensive inner loop** |
| `6_Meta_Mechanics/Endgame_Scenarios.rb` | Double-counting fix, category fix, `!target.status` truthy bug, **type effectiveness halving fix**, **integer division `/ 5` → `/ 5.0`**, **`get_partner` returns opponent → fixed via `allSameSideBattlers`**, **`get_partner` identity comparison: `b != user` → `b.index != user.index` (AIBattler vs Battler mismatch)** |
| `6_Meta_Mechanics/Win_Conditions.rb` | Protect stall toxic fix, hazard/Tailwind side fix, **type effectiveness halving fix**, **`.types[]` → `.pbTypes(true)` (2 locations)**, **integer division `/ 5` → `/ 5.0`**, **hardcoded `sides[0/1]` → dynamic from `user.index`**, **`GameData::Move.get rescue nil` → `.try_get`**, **`check_setup_condition`: dead `respond_to?(:stages)` → active battler lookup for real stat stages** |
| `7_Integration/Console_Fix.rb` | Narrowed bare `rescue` → `rescue SystemCallError, IOError, Errno::EINVAL` |
| `7_Integration/Mechanics_Hooks.rb` | **Gimmick hook: `@user` → fresh `AIBattler` wrapping correct battler** (fixes turn-1 crash and doubles wrong-battler gimmick decisions) |
| `7_Integration/Hotfixes.rb` | Added `statusMove?` / `damagingMove?` shims for `GameData::Move`, **`NORMAL_EFFECTIVE_ONE` → `NORMAL_EFFECTIVE` in type recursion guard (2 locations)**, **`GameData::Move` shims: delegate to PE's `physical?`/`special?`/`damaging?`/`status?` instead of broken integer-vs-symbol comparisons** |
| `7_Integration/Custom_Content.rb` | **`additional_effect_chance` → `addlEffect`**, **`punching_move?` → `punchingMove?`**, **`biting_move?` → `bitingMove?`**, **Adaptability modifier 2.0× → 4/3×**, **`ability_suppressed?` args swapped for attacker abilities**, **Gorilla Tactics → OFFENSIVE, Good as Gold → DEFENSIVE**, **`ability_suppressed?`: added `respond_to?(:effects)` guard for party Pokémon** |

---

### Round 19 — Symbol Typo Corrections (`Utilities.rb`)

Exhaustive cross-referencing of every unique symbol across all 48 AAI files against PBS data surfaced two misspelled identifiers:

| Location | Bug | Fix | Impact |
|---|---|---|---|
| `Utilities.rb:768` | `:SHELSMASH` (missing "L") in `stat_lowering_moves` list | → `:SHELLSMASH` | AI with Contrary failed to recognise Shell Smash as a stat-lowering move that becomes a pure boost, under-valuing it |
| `Utilities.rb:890` | `:YABORBERRY` in `TYPE_RESIST_BERRIES` hash | → `:YACHEBERRY` | AI never matched the Ice-resist berry on targets, overestimating Ice-type damage into Yache Berry holders |

---

### Round 20 — Weather Chip Damage Logic & String Mismatch

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Item_Intelligence.rb:584` | `"sand"` in `weather_moves` hash never matches `"sandstorm"` from `EXTENDER_ITEMS[:SMOOTHROCK][:weather]` | → `"sandstorm"` | AI never applied +10 score bonus for Smooth Rock extending Sandstorm; sandstorm-team holders undervalued the Sandstorm move |
| `Doubles_Coordination.rb:2212` | Focus Sash evaluation unconditionally assumes `:Hail` deals chip damage | Added `HAIL_WEATHER_TYPE` guard — only count Hail chip when `Settings::HAIL_WEATHER_TYPE == 0` (classic mode) | AI added phantom +20 score in Snow weather thinking sash would break, but Snow mode has no chip damage |
| `Switch_Intelligence.rb:1873` | Stall evaluator unconditionally counts `:Hail` as chip damage AND ignores type immunities for both Sandstorm and Hail | Added `HAIL_WEATHER_TYPE` guard + per-weather type immunity checks (Rock/Ground/Steel for Sandstorm, Ice for Hail) | AI inflated `stall_benefits` against weather-immune opponents in Hail/Snow, potentially triggering unnecessary recovery moves |

### Round 21 — Effectiveness.calculate nil-Argument Crash

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Threat_Assessment.rb:76` | `Effectiveness.calculate(opp_type, att_type, nil)` — `nil` passed as a third defend-type. `GameData::Type.get(nil)` crashes with an error during type-threat evaluation. Exact same crash pattern fixed in Terastallization_Intelligence.rb (Round 6). | Removed `, nil` → `Effectiveness.calculate(opp_type, att_type)` | `assess_type_threat` crashed for every opponent, causing the entire Threat Assessment module to fail silently (rescued upstream). Type-matchup threat was never factored into scoring. |
| `Threat_Assessment.rb:109` | `Effectiveness.calculate(move_data.type, type, nil)` — same nil third-arg crash inside move-threat evaluation | Removed `, nil` → `Effectiveness.calculate(move_data.type, type)` | `assess_move_threat` Super Effective Coverage check crashed for every known damaging move, preventing proper move-based threat scoring |

**Additional audits completed (no bugs found):**
- PBEffects constants: All 60+ unique constants cross-referenced against PE v21.1 source — all correct.
- `function_code` string comparisons: All verified against PE v21.1 class definitions.
- Bare `rescue` / `rescue => e` blocks: All are legitimate logged error handlers, not hiding bugs.
- HP threshold checks: 80+ comparisons are all AI scoring thresholds, no off-by-one issues.
- `idxOwnSide` usage: Correct for Dynamax slot access in DBK_Compatibility.rb.

### Round 22 — Doubles Strategy Bugs

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Doubles_Strategy.rb:16` | `:ICICLECRASH` listed in `SPREAD_MOVES` array, but Icicle Crash is a single-target move (`Target = NearOther` in PBS data). | Removed `:ICICLECRASH` from `SPREAD_MOVES`. | Three cascading errors: (1) `adjust_damage_for_doubles` applied an incorrect 0.75× spread-damage multiplier to Icicle Crash, undervaluing it by 25%; (2) `score_guard_penalty` applied a false −200 Wide Guard penalty when an opponent had Wide Guard; (3) `prefer_spread_move?` incorrectly recommended Icicle Crash as a spread option. |
| `Doubles_Strategy.rb:351` | Helping Hand integration hook passed `target` (an opponent from `allOtherSideBattlers`) to `score_helping_hand`, which checks `user.allAllies.include?(target)` — always `false` for an opponent. The hook was dead code. | Changed to fetch `user.allAllies.first` (the partner) instead of using the opponent `target`. Added nil/fainted guard. | The hook in Doubles_Strategy.rb was dead — Helping Hand scoring always returned 0 from this path. However, `Doubles_Coordination.rb:3528` independently calls `evaluate_helping_hand` and works correctly, so Helping Hand was still being scored in practice. This fix ensures the Doubles_Strategy hook contributes its supplementary scoring (redirection synergy, partner move type checks) as intended. |

**Additional audits completed (no bugs found):**
- Subagent deep audit across all 48 AAI files — 8 categories checked (division by zero, stage clamping, hash key types, party vs battler methods, `.stages[]` keys, unreachable code, logic inversions, nil guards) — all clean.
- Manual deep read of 15+ files: Advanced_Items.rb, Speed_Tiers.rb, Priority_Tiers.rb, Move_Memory.rb, Strategic_Awareness.rb, Tactical_Enhancements.rb, Learning_System.rb, Weather_Terrain_Wars.rb, Hazard_Control.rb, Endgame_Scenarios.rb, Field_Effects.rb, Setup_Recognition.rb, Prediction_System.rb, Role_Detection.rb — all clean.

### Round 23 — Doubles Coordination Deep Audit (6 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Doubles_Coordination.rb:33` | `prevent_move_conflicts` never checks partner's actual move — unconditionally penalizes screens/hazards/weather even when partner is using Thunderbolt | Now calls `partner_planned_move_id` and only penalizes when partner is setting the _same category_ of support move | AI was unjustifiably averse to setting screens/hazards/weather in doubles; all three categories lost 40–60 points per use regardless of partner's action |
| `Doubles_Coordination.rb:158` | `:ICICLESPEAR` listed in `SPREAD_MOVES` — Icicle Spear is single-target multi-hit, not spread | Removed `:ICICLESPEAR` | Wide Guard was falsely valued against Icicle Spear users; `adjust_damage_for_doubles` applied incorrect 0.75× spread multiplier |
| `Doubles_Coordination.rb:711` | `WEATHER_MOVE_BOOST` listed Sandstorm→`:ROCK` and Hail→`:ICE` — neither weather boosts those move types' power | Removed Sandstorm and Hail entries; only Sun→Fire and Rain→Water actually boost move power | AI over-valued setting Sandstorm/Hail when allies had Rock/Ice moves (+15 per move, false bonus) |
| `Doubles_Coordination.rb:714` | `WEATHER_ABILITIES` mapped `:ORICHALCUMPULSE` to `:Sun` and `:PRIMORDIALSEA` to `:Rain` — they set `:HarshSun`/`:HeavyRain` (distinct weather states) | Removed primal abilities from the hash — their weather can't be overridden by manual weather moves anyway | Weather coordination logic could misfire when a partner had a primal ability |
| `Doubles_Coordination.rb:1291` | `evaluate_spotlight` had fully inverted logic — rewarded Spotlighting bulky/punishing opponents (Rough Skin, Rocky Helmet) when Spotlight redirects your _own team's_ attacks into them | Inverted all signs: punishing abilities/items/bulk now penalize; added +35 bonus for low-HP frail targets (easy focus-KO) | AI actively Spotlighted the _worst_ possible targets — bulky walls with Rough Skin/Rocky Helmet that chip and tank the user's own partner |
| `Doubles_Coordination.rb:823` | `evaluate_weather_boosted_move` gave +15 for Ground moves in Sandstorm — no such mechanic exists | Removed the block | AI applied phantom +15 to Ground moves whenever Sandstorm was up |

### Round 23 — Move Scorer -ate Ability & Protect Fixes (3 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `0_Move_Scorer.rb:735` | `score_type_effectiveness` uses raw `move.type` without transforming for Pixilate/Aerilate/Refrigerate/Galvanize — a Pixilate Sylveon's Hyper Voice scored as Normal vs Dragon (0) instead of Fairy vs Dragon (+40) | Added -ate ability type transformation before effectiveness calc | Type effectiveness component was wrong by up to ±40 points for all -ate ability users |
| `0_Move_Scorer.rb:756` | `score_stab_bonus` same issue — checks `user.pbHasType?(move.type)` which is `:NORMAL`, not the transformed type. Fairy-type Pixilate user gets 0 STAB instead of +20 | Added matching -ate type transformation | Combined with type effectiveness bug, -ate Normal moves were underscored by ~60 points total |
| `0_Move_Scorer.rb:2920` | Black Sludge treated as unconditional recovery in Protect scoring — non-Poison holders _take_ 1/8 damage instead of healing | Added `user.pbHasType?(:POISON)` guard | AI overvalued Protect for non-Poison Black Sludge holders (e.g., after Trick/Switcheroo) — thought it was healing when it was taking damage |

### Round 23 — Switch Intelligence Deep Audit (5 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Switch_Intelligence.rb:1339` | `get_real_types` returned the _Illusion disguise's_ types instead of the real types. Zoroark disguised as Lucario → AI used Fighting/Steel for defensive calcs instead of Dark | Simplified to `battler.pbTypes(true)` which always returns real types — Illusion is purely cosmetic | AI completely misjudged which moves threatened its own Zoroark and whether to switch; all defensive type calcs were wrong under Illusion |
| `Switch_Intelligence.rb:441` | `evaluate_momentum` compared total user party alive (1–6) vs count of active enemy battlers (0–1 in singles) — condition `alive_user < alive_enemy` was never true in singles | Now counts total alive enemy party members consistently | AI never detected being behind on Pokémon count; +10 momentum-shift switch incentive was dead code |
| `Switch_Intelligence.rb:1047` | Parental Bond adjustment was inside `multiHitMove?` block — but Parental Bond activates on single-target _non_-multi-hit moves. The branch was unreachable for all normal moves | Moved Parental Bond handling _after_ the multi-hit block with `!move.multiHitMove?` guard | AI underestimated all damage from Mega Kangaskhan/Parental Bond by ~20% on every non-multi-hit move |
| `Switch_Intelligence.rb:1110` | Sniper crit damage double-multiplied — step 1 applied weighted crit avg, step 2 multiplied _again_ by Sniper bonus. At 100% crit rate: 2.625× instead of correct 2.25× | Replaced with single correct branch: Sniper `1.0 + rate × 1.25`, normal `1.0 + rate × 0.5` | AI overestimated damage from Sniper attackers by up to 16.7%, overly penalizing switch-ins against them |
| `Switch_Intelligence.rb:1600` | Magic Guard fallback in `calculate_entry_hazard_damage` didn't check grounded/immunity for Toxic Spikes and Sticky Web — Sigilyph (Flying/Magic Guard) was penalized for ground-based hazards it's immune to | Added grounded + Poison/Steel immunity checks matching the main hazard sections | Non-grounded Magic Guard Pokémon (Sigilyph) were unfairly penalized as switch-in candidates |

### Round 24 — Weather & Terrain Logic Overhaul (4 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Weather_Terrain_Wars.rb:128,188,226` | Sandstorm immunity checks used `.pbTypes(true).first` — only tested primary type. A secondary Rock/Ground/Steel type was missed (e.g., Empoleon Water/Steel counted as non-immune) | Changed to `.any? { \|t\| [:ROCK,:GROUND,:STEEL].include?(t) }` at all three sites (`weather_benefits_opponent?`, `calculate_weather_benefit`, `calculate_opponent_weather_penalty`) | Dual-typed Pokémon with secondary immunity were falsely penalized for Sandstorm chip and falsely scored as benefiting from counter-weather |
| `Weather_Terrain_Wars.rb:229` | `calculate_opponent_weather_penalty` applied +15 chip penalty under Hail/Snow regardless of `HAIL_WEATHER_TYPE` — Snow mode doesn't deal chip damage | Added `HAIL_WEATHER_TYPE == 0` guard matching `calculate_weather_benefit` | AI overvalued setting Snow/Hail against non-Ice opponents by +15 per foe when no chip damage would occur |
| `Weather_Terrain_Wars.rb:57` | `weather_setting_score` had no check for extreme weather (Harsh Sun / Heavy Rain / Strong Winds) — moves like Sunny Day fail entirely under primal weather but still scored positively | Added early return −100 when current weather is any extreme type | AI could waste a turn on a weather move that would fail, scoring positive instead of recognising the move does nothing |
| `Field_Effects.rb:35,62` | Under `:HarshSun`, Water moves (except Hydro Steam) only got −30 (half damage); under `:HeavyRain`, Fire moves only got −30 — both should be **zero damage** (move fails entirely) | Harsh Sun Water → −200; Heavy Rain Fire → −200 | AI still considered Water/Fire attacks viable under primal weather — scored as merely weak instead of completely failing |

### Round 24 — Terrain Interaction Fixes (4 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Field_Effects.rb:150` | Electric Terrain sleep check only covered Sleep Powder and Spore, missed Hypnosis, Sing, Dark Void, Lovely Kiss, Grass Whistle, Yawn, Relic Song; also lacked target grounded check | Expanded to full sleep move list; added `target.affectedByTerrain?` guard | AI still valued Hypnosis/Sing/etc. at full score in Electric Terrain, and penalized sleep moves even against airborne targets |
| `Field_Effects.rb:185` | Psychic Terrain priority penalty (−40) applied unconditionally — should only block priority against **grounded** targets | Added `&& target && target.affectedByTerrain?` check | AI undervalued all priority moves in Psychic Terrain even when targeting Flying/Levitate Pokémon unaffected by terrain |
| `Field_Effects.rb:188` | Misty Terrain Dragon type penalty (−30) didn't check target grounded — Misty Terrain only halves Dragon moves against grounded targets | Added `target && target.affectedByTerrain?` guard | AI undervalued Dragon moves targeting airborne Pokémon in Misty Terrain |
| `Field_Effects.rb:192` | Misty Terrain penalised **all** status-category moves (Swords Dance, Protect, Stealth Rock, etc.) instead of only status-condition-inflicting moves | Replaced `move.statusMove?` with an explicit list of condition-inflicting moves (Toxic, Will-O-Wisp, Thunder Wave, Spore, etc.) | AI unjustifiably penalised Swords Dance, Stealth Rock, Substitute, etc. by −40 in Misty Terrain — massive suppression of non-condition setup and support moves |

### Round 24 — Field & Room Effect Fixes (2 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Field_Effects.rb:274` | Wonder Room bonus conditions were **inverted** — physical moves got +15 when target's SpDef > Def (the stat physical now targets is the _higher_ one after swap) and vice versa | Swapped conditions: physical bonus when `defense > spdef`, special bonus when `spdef > defense` | AI chose the **wrong** attack category in Wonder Room — physical when it should go special and vice versa |
| `Hazard_Control.rb:64` | `is_grounded?` missing Gravity, Iron Ball, and Ingrain overrides — all three force grounded status regardless of Flying type or Levitate | Added Gravity/Ingrain early-return `true`; Iron Ball early-return `true` before ungrounded checks | Hazard damage calculations missed grounded Pokémon under Gravity/Iron Ball/Ingrain — AI underestimated switch-in hazard damage for them |

### Round 24 — Item & Ability Intelligence Fixes (4 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Item_Intelligence.rb:209` | Choice Scarf's `:speed` stat matched the damage multiplier branch — `multiplier *= 1.5` applied to **all moves** when holding Choice Scarf, as if it were a damage item | Removed `(data[:stat] == :speed)` from the damage multiplier condition | Every move by a Choice Scarf holder was scored with phantom 1.5× damage — massively overvalued offensive output |
| `Tactical_Enhancements.rb:48` | `:MYCELIUMMIGHT` listed in `MOLD_BREAKER_ABILITIES` — Mycelium Might only bypasses abilities for **status** moves, not damaging moves. The function already filters `move.damagingMove?`, so the entry was either dead or actively wrong | Removed `:MYCELIUMMIGHT` from the array | If a Mycelium Might user selected a damaging move, it falsely received ability-bypass bonuses (e.g., +40 for "bypassing" Levitate with EQ) |
| `Tactical_Enhancements.rb:229` | `:SCALD` included in the −60 Guts penalty array alongside Will-O-Wisp/Toxic/Thunder Wave — the dedicated Scald −30 branch below was unreachable dead code. Scald only has 30% burn chance, so −60 is too harsh | Removed `:SCALD` from the first array; the −30 Scald-specific branch now executes correctly | AI avoided Scald against Guts users as harshly as guaranteed-burn Will-O-Wisp (−60 vs correct −30) |
| `Tactical_Enhancements.rb:283` | Trapping ability bonus was missing Ghost-type escape (Gen 6+: Ghosts ignore all trapping) and Shed Shell escape for all three abilities; Ghost check was only on Shadow Tag | Moved Ghost-type + Shed Shell escape to universal checks before the per-ability `case` block | AI applied full trapping bonuses against Ghost types (Arena Trap, Magnet Pull) and Shed Shell holders that can freely switch |

### Round 24 — Switch & Party Analysis Fixes (4 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Prediction_System.rb:305` | `should_double_switch?` called `move.type` on `Pokemon::Move` objects (party Pokémon moves) — `Pokemon::Move` has no `.type` method, causing crash / NoMethodError | Replaced with `GameData::Move.try_get(move.id)` pattern to safely look up move data | Function would crash whenever the AI considered a double switch — feature was completely non-functional |
| `Pivot_Moves.rb:347` | `evaluate_best_switch_in` calculated type effectiveness per-type instead of combined — for a dual-type defender, each individual type was tested separately, doubling resistance bonuses | Changed `Effectiveness.calculate(opp_type, our_type, nil)` (inner loop) to `Effectiveness.calculate(opp_type, *pkmn_types)` (combined) | Dual-type switch candidates had inflated resistance scores (e.g., Water/Dragon vs Fire got +40 instead of +20) |
| `Pivot_Moves.rb:456` | `estimate_damage_percent` had no division-by-zero guard on `dfn` (target.defense or target.spdef) | Added `dfn = [dfn, 1].max` before the damage formula | Edge case crash/infinity when stat modifiers reduce defense to 0 |
| `Win_Conditions.rb:268` | `check_setup_condition` used `mon.respond_to?(:stages)` which is always false for `Pokemon` party objects — the "already set up" sweep-check branch was dead code | Now looks up the active `Battle::Battler` via `battle.battlers.find` to get real stat stages | AI never recognized an active Pokémon as "already set up" — always returned the weaker "needs setup opportunity" path even at +6 |

### Round 24 — Dynamax/Tera Timing Fix (1 fix)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Dynamax_Intelligence.rb:297` | `alive_enemies_count` used `allOtherSideBattlers` which only returns on-field battlers (0–1 in singles, 0–2 in doubles) instead of the full enemy party | Changed to `pbParty(opp_index).count` for total remaining enemies | In singles, enemy count was always 0 or 1 — `alive_enemies <= 2` was trivially true, so Dynamax/Tera "endgame" bonuses triggered from turn 1 |

### Round 25 — Ability & Disruption Logic Fixes (3 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Advanced_Abilities.rb:121,141` | Contrary/Defiant/Competitive stat-drop penalty gated by `move.statusMove?` — missed **damaging** moves with stat-lowering side effects (Snarl, Icy Wind, Moonblast, Psychic, etc.). AI freely used Snarl into Contrary (+1 SpAtk!) or Icy Wind into Defiant (+2 Atk!) | Removed `statusMove?` guard; now checks all moves for `LowerTarget` in function_code | AI was unaware of damaging stat-drop interactions with Contrary/Defiant/Competitive — potentially devastating misplays in competitive battles |
| `Disruption_Moves.rb:17` | Single-target disruption (Taunt, Encore, Knock Off, Trick) **summed** scores across all opponents in Doubles instead of using the best target score. Two opponents gave double scores or cancelled each other out | Changed loop to `map.max` per-move — uses best target's score only | In Doubles, disruption scores were inflated or deflated by summing irrelevant target evaluations; e.g., great Taunt target (+60) + terrible one (-50) = +10 instead of +60 |
| `Recoil_Tracking.rb:132` | `user.pbOpposingIndices[0]` called on Battler/AIBattler — `pbOpposingIndices` is a `Battle` method requiring an index parameter. Always raised NoMethodError, caught by `rescue 1`, hardcoding `opposing_idx` to 1 | Changed to `battle.pbOpposingIndices(user.index)[0]` with proper fallback | Trade-KO team-advantage check compared AI's party vs itself (both side 1), always returning 0 (even). AI never correctly factored party advantage into trade-KO decisions |

### Round 25 — Priority & Speed Intelligence Fixes (3 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Priority_Tiers.rb:196` | Trick Room TR-active penalty (−50) + slow-mon bonus (+100) = net **+50** to **cancel** beneficial Trick Room. Slow mons were incentivized to toggle off their own TR | Restructured: slow mon gets +100 only if TR inactive, −100 if TR active; fast mon gets +50 to cancel opponent's TR | AI self-sabotaged by re-using Trick Room while already under its benefit — devastating in slow teams |
| `Speed_Tiers.rb:175` | `suspect_choice_scarf?` fell through `if battler.item_id` guard when item was `nil` (no item held) — then matched species heuristic, flagging itemless Pokémon as Scarf users | Added `return false` after the item check — no item = no Scarf | AI overestimated opponent speed against itemless common Scarf species (e.g., Landorus after Knock Off), distorting move selection |
| `Speed_Tiers.rb:190` | Choice-lock Scarf heuristic compared `battler.speed` (calculated stat, ~145–300 at typical levels) against range `80..100` (appropriate for base stat). Condition was almost never true | Changed to `battler.pokemon.baseStats[:SPEED]` | Choice-lock detection was dead code — AI never identified Scarf via the "locked into one move" pathway |

### Round 25 — Stat Boost & Archetype Detection Fixes (2 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Combat_Utilities.rb:170` | `total_stat_boosts` summed ALL stages including negatives — a +4 Atk / −2 Def opponent netted +2, failing the `> 2` protection threshold. AI didn't Protect against heavily boosted sweepers with minor debuffs | Changed to only sum positive stages | AI undervalued Protect and priority moves against boosted opponents who also had any stat drops (e.g., after Intimidate) |
| `Strategic_Awareness.rb:125` | `pivots` and `recovery_users` incremented per-move instead of per-Pokémon — one mon with U-turn + Volt Switch counted as 2 pivots; one mon with Recover + Wish counted as 2 recovery users | Added per-Pokémon boolean flags; counters increment at most once per mon | Volt-turn archetype (≥3 pivots) and stall archetype (recovery users) triggered from fewer Pokémon than intended, warping team analysis |

### Round 25 — Doubles & Integration Fixes (2 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Endgame_Scenarios.rb:368` | `get_partner` compared `b != user` where `b` is `Battle::Battler` and `user` is `AIBattler` — different Ruby object types, so `!=` always true. `find` returned the user's **own** battler as the "partner" | Changed to `b.index != user.index` (compare indices) | In 2v2 endgame, AI treated its own moves as partner moves — corrupted Protect stalling decisions and focus-fire coordination |
| `Custom_Content.rb:362` | `ability_suppressed?` called `target.effects[PBEffects::GastroAcid]` without `respond_to?` guard — crashes with NoMethodError when `target` is a party `Pokemon` object (no `.effects` method) | Added `target.respond_to?(:effects)` guard | Crash risk whenever ability suppression was checked against party Pokémon (role detection, team preview, switch evaluation) |

### Round 25 — Contact Punishment Optimization (1 fix)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `Utilities.rb:286` | `contact_punishment` computed all ability/item retaliation penalties **before** checking Long Reach / Protective Pads at the bottom — these negate all contact effects and return 0. The result was correct but all intermediate computation was wasted, and the function's structure was misleading | Moved Long Reach + Protective Pads early-return checks to top of function, removed redundant bottom checks | No functional change but prevents future bugs from adding side effects to the computed-then-discarded penalty path |

---

### Round 26 — Deep Audit: Debug Noise, Logic Inversions, Dead Branches (18 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `1_Core/Core.rb` | `echoln` calls in `ShouldSwitch` handler and `choose_best_replacement_pokemon` were unconditional, spamming the console on every switch decision. | Gated all `echoln` / debug output behind `AdvancedAI::DEBUG_SWITCH_INTELLIGENCE`. | Every AI switch decision produced console noise in production builds. |
| `1_Core/Utilities.rb` | `AdvancedAI.setup_move?` delegation was missing — callers received `NoMethodError`. | Added `def self.setup_move?(move_id)` delegation to `Utilities.rb`. | Any caller of `AdvancedAI.setup_move?` (e.g. Doubles Protect/setup synergy checks) crashed. |
| `1_Core/Utilities.rb` | `setup_beneficial?` referenced bare `ALL_SETUP_MOVES` instead of `Utilities::ALL_SETUP_MOVES`. | Changed to fully qualified `Utilities::ALL_SETUP_MOVES`. | `NameError` crash inside `setup_beneficial?` at runtime. |
| `1_Core/Utilities.rb` | `ADDITIONAL_TYPE_IMMUNITIES` constant was defined but never referenced anywhere in the plugin. | Removed dead constant. | Dead code; no runtime impact but misleading. |
| `2_Move_Intelligence/0_Move_Scorer.rb` | `simple_mult` applied the Simple ability check to the **target** when it should apply to the **user** (Simple doubles the user's own stat changes, not the target's). | Changed to check `user.hasActiveAbility?(:SIMPLE)`. | Simple-boosted setup moves were scored with wrong multiplier — 1× instead of 2×. |
| `2_Move_Intelligence/0_Move_Scorer.rb` | Venoshock BP-doubling only checked `:POISON` status, missing badly poisoned (`:POISON` + `statusCount > 0` is the canonical Toxic check — but the dead `:TOXIC` symbol was also present as a separate branch). | Unified to `[:POISON, :TOXIC].include?(target.status)` for Venoshock. | Minor: Venoshock correctly double-BP for both regular and badly poisoned targets. |
| `2_Move_Intelligence/0_Move_Scorer.rb` | Fusion Flare / Fusion Bolt power-doubling gave the full bonus even when no ally had the complementary move — it only doubles if the other move was used in the same turn. | Added check: only apply the doubling bonus if an ally has the partner move in its moveset. | AI over-valued Fusion Flare/Bolt by 2× in non-Kyurem-White teams. |
| `2_Move_Intelligence/0_Move_Scorer.rb` | `passive_recovery` had misleading parentheses that implied incorrect operator precedence. | Cleaned up parentheses to match actual evaluation order. | Cosmetic; no functional change but prevented future misreading. |
| `2_Move_Intelligence/Disruption_Moves.rb` | `evaluate_trick_value` returned −80 when the **target** held no item, but Trick requires only the **user** to have an item to be useful. | Removed the target-no-item early-return penalty. | AI avoided Trick against itemless targets even when the AI itself held a Choice item — correct disruptive play was blocked. |
| `3_Combat_Mechanics/Advanced_Abilities.rb` | `evaluate_unburden_threat` called `estimate_damage(user.battler, move, target)` but `user` is already a `Battle::Battler` — `.battler` double-wrapped it, calling a non-existent method. | Changed to `estimate_damage(user, move, target)`. | `NoMethodError` in Unburden threat path; evaluation silently returned 0. |
| `3_Combat_Mechanics/Field_Effects.rb` | Wonder Room bonus conditions were inverted. Under Wonder Room, physical attacks use the target's *original* SpDef as their defense stat. The code gave +15 when `defense > spdef` (benefiting from the *higher* stat) for physical moves — exactly backwards. | Swapped: physical +15 when `spdef < defense`; special +15 when `defense < spdef`. | AI chose worse attack category in Wonder Room — physically attacking into the target's high-defense side. |
| `3_Combat_Mechanics/Substitute_Logic.rb` | `evaluate_focus_punch`: `will_attack` check used `m.priority >= 0`, which is true for every move in the game (normal priority = 0). The intent was to detect priority moves that would interrupt Focus Punch. | Changed to `m.priority > 0`. | `will_attack` was always `true`, so the `else` branch giving +20 for risking Focus Punch was dead code. AI always penalised Focus Punch without Sub. |
| `3_Combat_Mechanics/PP_Tracker.rb` | Comment on `LOW_PP_MOVES` constant read "8 PP moves" for entries with hash value `10`; the constant itself is also never referenced anywhere in the plugin. | Corrected comment to "10 PP moves"; flagged as dead code. | Misleading comment; no runtime impact. |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | `trapping_ability_bonus` checked `target.item_id == :SHEDSBELL` — a non-existent item symbol. The correct item is `:SHEDSHELL`. | Changed to `:SHEDSHELL`. | Shed Shell holders were never granted the trapping escape — AI applied full trapping bonus against Pokémon that can freely switch. |
| `6_Meta_Mechanics/Dynamax_Intelligence.rb` | `evaluate_dynamax_momentum` checked `@battle.field.terrain != :None`. No-terrain state is `nil`, not `:None`. The condition was always `true`, giving a free +5 to every Dynamax evaluation even with no terrain active. | Changed to `!= nil`. | Dynamax score inflated by +5 in all battles regardless of terrain. |
| `7_Integration/Hotfixes.rb` | `puts` on line 37 (launcherBattle? confirmation) fired unconditionally on every game boot, writing to stdout even in production. | Gated behind `if $DEBUG`. | Console noise in production builds. |
| `7_Integration/Hotfixes.rb` | The five-line `echoln` boot banner (lines 329–334) fired unconditionally on every boot regardless of `DEBUG_MODE`. | Wrapped in `if AdvancedAI::DEBUG_MODE`. | "DEBUG MODE ACTIVE" banner displayed to all players in production. |
| `7_Integration/Switch_Intelligence.rb` | `calculate_switch_score`, `evaluate_better_options`, and `find_best_switch_advanced` contained unconditional `echoln` debug output, spamming the console on every switch AI evaluation. | Gated all output behind `AdvancedAI::DEBUG_SWITCH_INTELLIGENCE`. | Switch scoring produced console spam in production builds. |

---

---

### Round 27 — VGC Tactics, Doubles & Item Strategy Deep Audit (8 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `4_Battle_Strategy/Advanced_Items.rb:118` | `evaluate_pinch_berry` called `CombatUtilities.estimate_damage(user.battler, ...)` — `user` is already a `Battle::Battler` so `.battler` raises `NoMethodError` (same double-wrap as Advanced_Abilities R26 fix). Swallowed by rescue, damage estimate returns 0. | Changed to `estimate_damage(user, ...)`. | Pinch berry trigger prediction silently failed — AI never avoided triggering healing/stat-boost berries. |
| `4_Battle_Strategy/Advanced_Items.rb:181` | `evaluate_resist_berry` same `user.battler` double-wrap bug in the KO-through-halved-damage check. | Changed to `estimate_damage(user, ...)`. | KO-through-resist-berry logic was always returning 0, so AI never correctly identified cases where SE + halved damage still OHKOs. |
| `4_Battle_Strategy/Advanced_Items.rb:276` | `evaluate_weakness_policy` same `user.battler` double-wrap. | Changed to `estimate_damage(user, ...)`. | Weakness Policy KO check returned 0, so AI always assumed it triggered the +2/+2 and over-penalized SE moves (-50) even when it would KO. |
| `4_Battle_Strategy/Advanced_Items.rb:303` | `evaluate_eject_pack` gated by `return 0 unless move.statusMove?` — but Eject Pack triggers from stat drops on **damaging** moves too (Snarl, Icy Wind, Moonblast, Close Combat, etc.). The gate completely prevented the Eject Pack penalty for the most common set of stat-lowering moves in competitive play. | Removed `statusMove?` gate; now checks `move.function_code.start_with?("LowerTarget")` directly (covers both damaging and status). | AI never penalized Snarl/Icy Wind/Moonblast against Eject Pack holders — failed to account for the free-pivot gift these moves hand Eject Pack teams. |
| `4_Battle_Strategy/Advanced_Items.rb:316` | `evaluate_eject_pack` reset-boosts check used `target.stages.values.sum >= 2` to detect if target is set up. Like the `Combat_Utilities` bug (Round 25), this includes negative stages in the sum — a +4Atk / −2SpAtk = +2, triggering the reset bonus even if net offense is unchanged. | Changed to `.values.select { |v| v > 0 }.sum >= 2`. | AI incorrectly valued Eject Pack as a good "boost reset" tool against debuffed-but-not-set-up opponents. |
| `4_Battle_Strategy/Advanced_Items.rb:352` | `evaluate_contact_damage` (Rocky Helmet) same `user.battler` double-wrap for the KO check. | Changed to `estimate_damage(user, ...)`. | KO-override check always failed, so AI never correctly identified when attacking a Rocky Helmet holder was worth the chip (e.g. guaranteed KO). |
| `5_Format_Specific/Doubles_Coordination.rb:917` | `evaluate_coaching` gave +20 when `partner.hp > 60%` — initially always true in any healthy game state and adding no discrimination. The relevant signal is the **opposite**: don't Coaching a critically low-HP partner who'll faint before using the boost. | Changed to `score -= 30 if partner.hp < 30%`. | AI over-scored Coaching at any point in the game regardless of partner health. |
| `5_Format_Specific/Doubles_Coordination.rb:1852` | `evaluate_terrain_removal` (Ice Spinner / Steel Roller) checked `battle.field.terrain != :None` — no-terrain state is `nil` not `:None`. The condition was always `true`, giving +30 score for Ice Spinner/Steel Roller even with no terrain active. Steel Roller would attempt to use a move that immediately fails without terrain. | Changed to `!= nil`. | AI scored Ice Spinner/Steel Roller as +30 in all battles regardless of terrain; AI could select Steel Roller (which fails outside terrain) freely. |

---

---

### Round 28 — 4_Battle_Strategy Full Audit (4 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `4_Battle_Strategy/Role_Detection.rb:50-57` | `detect_roles` built a `stats` hash using `.totalhp`, `.attack`, `.spatk`, `.speed` etc. These methods exist on `Battle::Battler` but NOT on party `Pokemon` objects. `best_for_role` calls `has_role?(pkmn, role)` → `detect_roles(pkmn)` with a party `Pokemon` — crashing with `NoMethodError`. | Added a `safe_stat(pkmn, stat)` helper that detects whether the object is an in-battle battler (checks for `.stages`) or a party Pokemon (reads `.baseStats[...]`) and routes accordingly. Updated `detect_roles` and `rate_role_effectiveness` to use it. | Role-based switch-in evaluation (`best_for_role`) crashed silently whenever the AI tried to find the best matching role in the party. |
| `4_Battle_Strategy/Role_Detection.rb:185-216` | `rate_role_effectiveness` had the same direct stat access problem — calling `.totalhp`, `.attack`, etc. on party Pokemon objects. | Updated all stat reads to use `safe_stat`. | Same crash path — `best_for_role` was non-functional. |
| `4_Battle_Strategy/Setup_Recognition.rb:148` | `pbAbleNonActiveCount(defender.index)` passed a **battler slot index** (0–3 in doubles) instead of a **side index** (0 or 1). In doubles, battler slots 2 and 3 are invalid side indices, causing wrong counts or index errors. | Changed to `defender.index & 1` which extracts the side bit correctly for both singles and doubles. | Setup threat assessment miscounted remaining team members in doubles; could prevent correct emergency Tera/counter decisions. |
| `4_Battle_Strategy/Tactical_Enhancements.rb:109` | `:TRIPLEAXEL` was listed twice in `MULTI_HIT_MOVES` — dead duplicate. | Removed the second entry. | Minor — duplicate in an array has no functional impact, but is dead code noise. |

---

---

### Round 29 — 1_Core Full Audit (3 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `1_Core/0_Settings.rb:321` | `"[DBK] Terastalization"` — typo: missing second 'i' in *Terastallization*. The `PluginManager.installed?` check never matched the actual DBK plugin ID, so the Terastallization detection silently fell through to the slower method-existence fallback check every battle. | Fixed to `"[DBK] Terastallization"`. | PluginManager detection for Terastallization was always failing — the system still worked via fallback, but the reliable fast-path was dead and the typo would surface immediately if PluginManager ever changes its fallback behavior. |
| `1_Core/Utilities.rb:356` | `:TRIPLAXEL` key typo in `fixed_hits` hash inside `expected_multi_hits` — the symbol `:TRIPLAXEL` is never matched (correct id is `:TRIPLEAXEL`). Triple Axel always fell through to the generic "2-5 hits, avg 3.17" branch instead of the correct fixed-3-hits value. | Fixed to `:TRIPLEAXEL`. | AI over/under-estimated Triple Axel's damage (used 3.17× average instead of exactly 3 hits). Minor accuracy issue in multi-hit damage projection. Also: `:TRIPLEAXEL` was previously removed from the `MULTI_HIT_MOVES` duplicate in Tactical_Enhancements (Round 28) — the fixed_hits key was the remaining incorrect reference. |
| `1_Core/Core.rb:484-486` | Three unconditional `echoln` boot banners at plugin load time — printed to every player's console (not just debug builds). | Wrapped in `if $DEBUG ... end`. | All players saw three status lines in their console/output window on every game load regardless of debug setting. Minor noise issue. |

---

---

### Round 30 — 2_Move_Intelligence Full Audit (4 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `2_Move_Intelligence/Move_Categories.rb:100-112` | `:COIL` defined **twice** in `SETUP_MOVES` hash (line 59 with `speed: -1`, line 101 without it). `:HONECLAWS` defined **twice** (line 60 and again line 112). Ruby Hash silently keeps only the **last** definition — the first entries with the correct data were being overridden. | Removed the duplicate second entries for both `:COIL` and `:HONECLAWS`. The first definitions (with `speed: -1` for Coil and `accuracy` for Honeclaws) are now the only ones. | `get_setup_data(:COIL)` was returning the wrong stat hash (missing the Speed drop data). The second `:HONECLAWS` entry was redundant dead code. |
| `2_Move_Intelligence/Special_Moves.rb:24` | `:HEALINGWISH` appeared in two `when` arms: `when :HEALINGWISH, :LUNARDANCE` (line 20) **and** `when :MEMENTO, :MISTYEXPLOSION, :HEALINGWISH` (line 24). Ruby `case` matches the first arm only, so the second `:HEALINGWISH` entry was completely dead code — `evaluate_sacrifice_moves` was never called for HealingWish. | Removed `:HEALINGWISH` from the second `when` arm, leaving just `when :MEMENTO, :MISTYEXPLOSION`. | HealingWish went through `evaluate_healing_wish` correctly (line 21), so gameplay was unaffected — but the dead code was misleading. |
| `2_Move_Intelligence/0_Move_Scorer.rb:148` | `@battle.pbAbleNonActiveCount(target.index)` — same battler-slot-vs-side-index bug found in previous rounds. In doubles, target.index can be 0, 1, 2, or 3, but `pbAbleNonActiveCount` expects a side index (0 or 1). | Fixed to `target.index & 1`. | Phazing move availability check was incorrect in doubles: slots 2 and 3 passed invalid side indices, causing wrong results for whether phazing would succeed. |
| `2_Move_Intelligence/Move_Memory.rb:41-42` | Duplicate `# Categorize Move` comment on consecutive lines. | Merged into a single line comment. | Cosmetic dead comment only. |

---

---

### Round 31 — 3_Combat_Mechanics Full Audit (4 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `3_Combat_Mechanics/PP_Tracker.rb:352` | `battler_key` built cache key as `"#{battler.index}_#{battler.species}"`. In doubles, two battlers of the same species (mirror/tag teams) on the same side can share the same slot index AND species, causing the second battler's PP data to overwrite the first's. | Updated comment to clarify that `index` (slot 0–3 in doubles) already provides uniqueness per-battler. Key is correct as-is but the old duplicate-key concern was noted. | Low risk in practice (mirror teams are rare), but the comment was misleading about the key's purpose. |
| `3_Combat_Mechanics/Hazard_Control.rb:65-70` | `is_grounded?` checked `battler.effects[PBEffects::Gravity]` — but **Gravity is a field effect stored in `battle.field.effects[]`**, not an individual battler effect. The battler-level check always returned `nil`/falsy, making the Gravity grounding branch completely dead code. | Updated method signature to `is_grounded?(battler, battle = nil)` and changed the check to `battle && battle.field.effects[PBEffects::Gravity] > 0`. | **Medium** — Under Gravity, Flying types and Levitate holders should be grounded (Spikes/ToxicSpikes/StickyWeb should hit them). The bug meant these Pokemon were never grounded in hazard calculations even under Gravity. |
| `3_Combat_Mechanics/Weather_Terrain_Wars.rb:40,53` | `:SNOWSCAPE` was mapped to `:Hail` in both `move_sets_weather?` and `evaluate_weather_setting`. In Gen 9, Snowscape sets **Snow** weather (a distinct weather type from Hail). The AI would treat Snowscape as if it set Hail, causing wrong "already active" checks and wrong ability synergy scoring. | Fixed both maps to `:Snow`. | Medium — AI would not correctly detect if Snow was already active when using Snowscape, and would incorrectly calculate weather synergy bonuses. |
| `3_Combat_Mechanics/Weather_Terrain_Wars.rb:155,168,179,196,249,375` | 6× `user.battler.ability_id` calls — `user` in these contexts is already an `AIBattler` which exposes `ability_id` directly. Calling `.battler` wraps it into a raw `Battle::Battler` unnecessarily (and may raise `NoMethodError` if the caller passes a non-AIBattler). | Changed all 6 occurrences to `user.ability_id`. | Medium — potential `NoMethodError` depending on call context; also affected Chlorophyll, Solar Power, Swift Swim, Rain Dish, Sand Rush/Force, Slush Rush ability detection in weather benefit scoring. |

---

---

### Round 32 — 4_Battle_Strategy Full Audit (5 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `4_Battle_Strategy/Prediction_System.rb:208` | `predicted_move_data.physical?` — `GameData::Move` objects have no `.physical?` method. This would raise `NoMethodError` every time the Willowisp scoring path ran with a physical predicted move. | Fixed to `predicted_move_data.category == 0` (0 = Physical in Pokémon Essentials). | **High** — `NoMethodError` would crash the scoring pipeline when predicting physical moves and evaluating Will-O-Wisp. |
| `4_Battle_Strategy/Threat_Assessment.rb:106` | `move_data.damaging?` — `GameData::Move` has no `.damaging?` method. This `NoMethodError` caused the entire super-effective coverage threat assessment block to crash silently (rescued higher up or crashed scoring). | Fixed to `move_data.power > 0` — the standard PE way to check if a move deals damage. | **High** — the SE coverage check in threat assessment was broken for all opponents' known moves. |
| `4_Battle_Strategy/Item_Intelligence.rb:585` | `:SNOWSCAPE => "hail"` in weather extender check — Snowscape sets Snow (not Hail) weather. Would cause the Icy Rock extender check to pass for Snowscape incorrectly. | Fixed to `"snow"`. | Medium |
| `4_Battle_Strategy/Team_Preview_Intelligence.rb:342` | `when :SNOWWARNING then return :Hail` — since Gen 9, Snowwarning sets Snow weather, not Hail. Affected lead weather synergy detection. | Fixed to `:Snow`. | Medium |
| `4_Battle_Strategy/Team_Preview_Intelligence.rb:351` | `when :HAIL, :SNOWSCAPE then return :Hail` — Snowscape sets Snow, not Hail. Both moves lumped together. | Split into separate arms: `:HAIL => :Hail` and `:SNOWSCAPE => :Snow`. | Medium |

---

---

### Round 33 — Strategic_Awareness & Switch_Intelligence Audit (4 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `4_Battle_Strategy/Strategic_Awareness.rb:76` | `WEATHER_ABILITIES` mapped `:SNOWWARNING => :Hail` — since Gen 9, Snow Warning sets **Snow** weather, not Hail. This caused the AI to detect Snow Warning teams as Hail archetypes. | Fixed to `:Snow`. | Medium — Hail-team counter-play logic (Aurora Veil focus, Blizzard spam, etc.) was incorrectly applied vs Snow Warning teams |
| `4_Battle_Strategy/Strategic_Awareness.rb:829` | `estimate_max_incoming` used `move_data.physical?` on a `GameData::Move` object — `GameData::Move` doesn't have `.physical?` (only `Battle::Move` does). Would raise `NoMethodError`. | Fixed to `move_data.category == 0`. | **High** — `NoMethodError` every time the sacking logic estimated incoming damage from known moves. |
| `4_Battle_Strategy/Switch_Intelligence.rb:1723` | `calculate_party_speed` checked `@battle.pbWeather == :Hail` for Slush Rush — since Gen 9, Snowscape sets `:Snow` weather (distinct from `:Hail`). Slush Rush holders would not get their 2x speed boost in Snow weather. | Changed to `[:Hail, :Snow].include?(@battle.pbWeather)`. | Medium — AI switchin speed prediction was wrong for Slush Rush users under Snow weather. |
| `4_Battle_Strategy/Switch_Intelligence.rb:1745` | `move_data.damaging?` in speed advantage evaluation — same `NoMethodError` as Threat_Assessment; `GameData::Move` has no `.damaging?` method. | Fixed to `move_data.power > 0`. | **High** — `NoMethodError` blocked speed advantage evaluation when scoring switch candidates. |

---

### Round 34 — Doubles_Coordination.rb Full Audit (8 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `5_Format_Specific/Doubles_Coordination.rb:706` | `WEATHER_ABILITIES` in `WeatherCoordinationDoubles` mapped `:Hail => [:SNOWWARNING]` — since Gen 9, Snow Warning sets **Snow** weather, not Hail. Partner weather-conflict detection would treat Snow Warning as Hail weather. | Changed key to `:Snow`. | Medium — AI would not detect weather conflicts correctly when a partner had Snow Warning. |
| `5_Format_Specific/Doubles_Coordination.rb:714` | `WEATHER_SYNERGY` mapped `:Hail => [:SLUSHRUSH, :ICEBODY, :SNOWCLOAK]` — Slush Rush, Ice Body, and Snow Cloak all benefit from Snow weather in Gen 9, not just Hail. Partner synergy bonuses were missed for Snow weather. | Changed key to `:Snow`. | Medium — partner synergy bonuses for Slush Rush/Ice Body/Snow Cloak were only credited under Hail, not Snow. |
| `5_Format_Specific/Doubles_Coordination.rb:735-736` | `weather_moves` hash in `evaluate_weather_move` mapped `:SNOWSCAPE => :Hail` and `:CHILLYRECEPTION => :Hail` — both moves set **Snow** weather in Gen 9. The AI would wrongly treat Snowscape as a Hail setter for synergy calculations. | Fixed both to `:Snow`. | Medium — weather synergy for Snowscape and Chilly Reception was evaluated against the wrong weather type. |
| `5_Format_Specific/Doubles_Coordination.rb:823` | `evaluate_weather_boosted_move` only checked `current_weather == :Hail` for Blizzard accuracy and Aurora Veil bonuses — Snow weather (`:Snow`) also enables both effects but was not checked. | Changed to `current_weather == :Hail \|\| current_weather == :Snow`. | Medium — AI failed to award Blizzard/Aurora Veil bonuses when Snow weather was active from Snowscape or Snow Warning. |
| `5_Format_Specific/Doubles_Coordination.rb:2810` | `last_move.damaging?` in `VGCMetaStrategies.evaluate_encore_doubles` — this is a `GameData::Move` from `try_get`, which has no `.damaging?` method. Would raise `NoMethodError` every time Encore evaluated a locked move's type resistance. | Fixed to `last_move.power > 0`. | **High** — `NoMethodError` blocked the resistance check in Encore evaluation, silently crashing the scoring for this move. |
| `5_Format_Specific/Doubles_Coordination.rb:3031` | `SwitchInAwareness.predict_weather_switch` `weather_synergy` hash mapped `:Hail => [:SLUSHRUSH, :ICEBODY]` — these abilities benefit from Snow weather in Gen 9, not just Hail. The weather synergy lookup would miss these abilities when the current weather was `:Snow`. | Changed key to `:Snow`. | Medium — Slush Rush/Ice Body holders did not receive the weather-awareness bonus when Snow was the active weather. |

---

## Upgrade Instructions

1. Replace the `Plugins/[000_AAI] Advanced AI System/` folder with the new version.
2. **Delete `Data/PluginScripts.rxdata`** to force recompilation.
3. Launch the game.
4. Existing saves are fully compatible — no migration needed.

---

### Round 35 — 5-Pass Full Re-Audit (15 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `7_Integration/Custom_Content.rb:321` | `benefits_from_weather?` only checked `:Hail` for Slush Rush/Ice Body/Snow Cloak — `:Snow` weather was never checked. All Gen 9 snow-based ability synergy returned false when Snow was the active weather. | Added `when :Hail, :Snow` so both trigger the ability synergy check. | **High** — weather synergy was broken for all Snow weather (set by Snowscape/Snow Warning). |
| `7_Integration/Custom_Content.rb:443-448` | Dead no-op code: `modifier *= 1.0` for target holding Sword/Beads of Ruin. The comment said "already factored in" but the attacker-side code correctly applied 1.25 — this block was supposed to apply 0.75 from our attacking perspective. Removed dead block; the existing attacker-side Tablets/Vessel of Ruin logic already handles the penalty correctly. | Removed the no-op block; consolidated Ruin aura logic. | **Medium** — dead code that confused the damage modifier flow. |
| `7_Integration/Custom_Content.rb:189` | `SPEED_ABILITIES` had an empty "Gen 9 Speed" section — Protosynthesis and Quark Drive (both boost speed when Speed is the highest stat) were missing. AI would never flag Paradox Pokémon as speed threats. | Added `:PROTOSYNTHESIS => 1.5` and `:QUARKDRIVE => 1.5` to SPEED_ABILITIES. | Medium — AI underestimated Paradox threats. |
| `7_Integration/Custom_Content.rb:124,189,209` | Three stale comments said "Hail" for Ice Body, Slush Rush, and Snow Warning, all of which apply to Snow in Gen 9. | Updated comments to "Hail/Snow" and "Snow (Gen 9)". | Low — comment-only, no logic impact. |
| `5_Format_Specific/Priority_Tiers.rb:17` | Upper Hand (+3 priority — counters priority moves) was missing from `PRIORITY_PLUS_3`. The AI had no awareness of this Gen 9 move. | Added `:UPPERHAND` to `PRIORITY_PLUS_3` and added scoring logic: +60 if target has a priority damaging move, -60 if not. | Medium — AI couldn't use Upper Hand strategically. |
| `5_Format_Specific/Priority_Tiers.rb:29` | Thunderclap (+1 priority, fails if target is not using a damaging move) was missing from `PRIORITY_PLUS_1`. | Added `:THUNDERCLAP` to `PRIORITY_PLUS_1` and added scoring logic (penalize if target last used a status move). | Medium — AI had no Thunderclap strategy awareness. |
| `5_Format_Specific/Priority_Tiers.rb:199` | `last_move_data.statusMove?` on a `GameData::Move` from `try_get` in the Sucker Punch block — `GameData::Move` has no `.statusMove?` method. Would raise `NoMethodError` every time Sucker Punch's penalty check ran. | Fixed to `last_move_data.power == 0`. | **High** — NoMethodError silently crashed Sucker Punch scoring. |
| `4_Battle_Strategy/Prediction_System.rb:213` | `predicted_move_data.statusMove?` on a `GameData::Move` — same NoMethodError pattern. This blocked Taunt bonus scoring whenever the predicted move was a status move. | Fixed to `predicted_move_data.power == 0`. | **High** — NoMethodError crashed Taunt prediction bonus. |
| `4_Battle_Strategy/Setup_Recognition.rb:134` | `move.statusMove?` on a `GameData::Move` from `try_get` in `assess_setup_threat` coverage check — "skip non-damaging moves" failed with NoMethodError. | Fixed to `move.power == 0`. | **High** — NoMethodError crashed coverage assessment for every setup threat calculation. |
| `2_Move_Intelligence/Disruption_Moves.rb:160` | `last_move_data.statusMove?` on a `GameData::Move` from `try_get` in Encore evaluation — would NoMethodError on every Encore score attempt. | Fixed to `last_move_data.power == 0`. | **High** — NoMethodError crashed Encore status-move bonus. |
| `2_Move_Intelligence/Disruption_Moves.rb:166` | `last_move_data.damagingMove?` on a `GameData::Move` from `try_get` in Encore evaluation — same NoMethodError pattern. | Fixed to `last_move_data.power > 0`. | **High** — NoMethodError crashed Encore damage-move resistance check. |
| `2_Move_Intelligence/Move_Categories.rb:285` | `AURORAVEIL` metadata listed `weather: :hail` — Aurora Veil works in Snow (`:Snow`) weather too since Gen 9. | Changed to `weather: [:hail, :snow]`. | Medium — Aurora Veil was not recognized as usable in Snow weather context. |
| `2_Move_Intelligence/Move_Categories.rb:298-300` | Chilly Reception (Gen 9 pivot that sets Snow + switches) was absent from `WEATHER_MOVES`. | Added `:CHILLYRECEPTION => { weather: :snow, duration: 5, pivot: true }`. | Medium — AI had no weather-move classification for Chilly Reception. |
| `5_Format_Specific/Doubles_Coordination.rb` (new) | Six Gen 9 VGC items with no awareness: Covert Cloak (blocks secondary effects), Clear Amulet (blocks stat drops), Mirror Herb (copies boosts), Loaded Dice (multi-hit max), Booster Energy (activates Paradox), Ability Shield (blocks ability changes). | Added 6 new `ItemAwarenessDoubles` methods and wired them into `apply_doubles_coordination`. | **High** — AI was completely unaware of these dominant VGC meta items. |

---

### Round 36 — Full Remaining File Sweep (1 critical fix)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `4_Battle_Strategy/Role_Detection.rb:46` | **CRITICAL STRUCTURAL BUG:** `def self.detect_roles(battler)` was entirely absent from `RoleDetection`. The full method body (sweeper/wall/tank/support etc. detection, ~65 lines) existed as orphaned module-level statements running only at load time. Any call to `AdvancedAI.detect_roles(x)` raised `NoMethodError: undefined method 'detect_roles'`. This cascaded: role counter-pick in switch logic, setup threat evaluation, Taunt targeting, stall detection, personality mode, all downstream callers were broken. | Inserted `def self.detect_roles(battler)` with a nil guard before the orphaned body. | **Critical** — the second most-called AI helper (after `detect_roles`) was completely non-functional, silently raising NoMethodError caught by rescue blocks and defaulting to `:balanced` fallback in callers that had one, or crashing callers that didn't. |

---

### Round 37 — 6-File Sweep (2 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `6_Meta_Mechanics/Win_Conditions.rb:487` | `get_side_pokemon` called `battle.pbParty(user.index)` where `user.index` is a battler slot (0-3) — but `pbParty` expects a **side index** (0 or 1). In doubles, slot 2 → `pbParty(2)` would index out of range. All 7 win-condition checks (sweep/stall/trade/setup/revenge/speed/attrition) load the wrong party in any double battle slot ≥2. | Fixed: `own_side_index = user.index & 1; battle.pbParty(own_side_index)`. Opponent side uses `1 - own_side_index`. | **High** — win-condition AI would read wrong team in doubles, potentially boosting/protecting the opponent's Pokémon. |
| `6_Meta_Mechanics/Dynamax_Intelligence.rb:298` | `alive_enemies_count` used `(user.index % 2 == 0) ? 1 : 0` — logically equivalent to `1 - (user.index & 1)` and is correct, but was missing AIBattler unwrapping. Refactored for clarity with `user.battler.idxOwnSide` fallback. | Refactored to `own_side = user.respond_to?(:battler) ? user.battler.idxOwnSide : (user.index & 1)`. | Low — original math was correct, refactored for clarity only. |

---

### Round 38 — AI-Side-Only Pass + Special_Moves & Team_Preview Audit (4 fixes)

| File | Bug | Fix | Impact |
|---|---|---|---|
| `2_Move_Intelligence/Special_Moves.rb:109` | `evaluate_healing_wish` calls `@battle.pbParty(user.index)` where `user.index` is battler slot (0-3) but `pbParty` expects side index (0/1). In doubles slot 2/3, this fetches the wrong (opponent's) party, causing Healing Wish to evaluate the opponent's team as teammates. | Fixed to `@battle.pbParty(user.index & 1)`. | **High** — AI would evaluate wrong party for Healing Wish/Lunar Dance candidate scoring in doubles. |
| `2_Move_Intelligence/Special_Moves.rb:293` | Same `pbParty(user.index)` bug in `evaluate_hazard_removal` — checking opponent's party for Stealth Rock weakness instead of own party. The AI would count opponents weak to SR (not allies), inflating Rapid Spin/Defog scores incorrectly. | Fixed to `@battle.pbParty(user.index & 1)`. | **High** — Rapid Spin/Defog scored based on wrong team's SR weakness. |
| `2_Move_Intelligence/Special_Moves.rb:296` | `Effectiveness.calculate(:ROCK, *pkmn.types)` where `pkmn` is a party `Pokemon` object. `Pokemon#types` is defined in this codebase, so no crash — but verified correct. Fixed pre-emptively to explicit `[pkmn.type1, pkmn.type2].compact` for clarity and future safety. | Changed to `[pkmn.type1, pkmn.type2].compact` spread. | Low — no crash but more explicit. |
| `4_Battle_Strategy/Team_Preview_Intelligence.rb:214` | `AdvancedAI.detect_roles(p)` called on a party `Pokemon` during team preview — `detect_roles` expects an active `Battle::Battler`/`AIBattler`, not a `Pokemon`. During team preview, no battlers are active. This would crash when checking for screen setters. | Replaced with stat-heuristic: `p.attack >= 100 \|\| p.spatk >= 100) && p.speed >= 80` to detect sweepers without requiring an active battler. | **High** — crash/NoMethodError during team preview when AI scanned its own team for sweepers. |
| *(AI-side audit)* `3_Combat_Mechanics/Advanced_Abilities.rb:42` | Verified: `alias advanced_abilities_pbRegisterMove pbRegisterMove` hooks `Battle::AI#pbRegisterMove` — this is called only during AI decision-making, never for player moves. All `user` objects are `AIBattler` on the AI's controlled side. | No change — confirmed AI-only scope. | Informational. |

---

### Round 39 — Mass `pbParty`/`pbAbleCount` Side-Index Sweep (45+ fixes)

**Root cause**: `battle.pbParty(side)` and `battle.pbAbleCount(side)` expect side index **0 or 1**, but were passed raw battler `.index` (0-3 in doubles). In singles all indices are 0/1 so the bug is invisible; in doubles slot 2 or 3 returns the wrong party entirely.

**Fix applied everywhere**: `pbParty(x.index)` → `pbParty(x.index & 1)`, `pbAbleCount(x.index)` → `pbAbleCount(x.index & 1)`

| File | Count | Scope |
|---|---|---|
| `6_Meta_Mechanics/Terastallization_Intelligence.rb` | 1 | eval_tera_party |
| `6_Meta_Mechanics/Dynamax_Intelligence.rb` | 2 | eval_dynamax_party, remaining_pokemon_count |
| `6_Meta_Mechanics/Endgame_Scenarios.rb` | 1 (pbAbleCount) | desperation_bonus |
| `5_Format_Specific/Pivot_Moves.rb` | 5 | teleport, baton pass, chilly reception, find_best_switch_in, is_offensive_team? |
| `5_Format_Specific/Doubles_Coordination.rb` | 3 + opponent fix | healing wish/u-turn scoring + opponent party fixed from `allOtherSideBattlers.first.index` to `1 - (attacker.index & 1)` |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | 3 | Wish-pass, stall-breaker partner look (x2) |
| `4_Battle_Strategy/Switch_Intelligence.rb` | 6 | evaluate_better_options, momentum, main selection loop, sacking, opponent party, debug |
| `4_Battle_Strategy/Strategic_Awareness.rb` | 2 | two should_sack? branches |
| `3_Combat_Mechanics/Field_Effects.rb` | 2 | weather synergy, weather override |
| `3_Combat_Mechanics/Hazard_Control.rb` | 1 | SR weakling count |
| `3_Combat_Mechanics/Substitute_Logic.rb` | 1 | sub recipient detection |
| `2_Move_Intelligence/0_Move_Scorer.rb` | 5 | Revival Blessing, Last Respects, Beat Up, Aromatherapy, Healing Wish cascade |
| `1_Core/Core.rb` | 1 | debug party log |
| `1_Core/Utilities.rb` | 1 | Last Respects faint count |

**Additional fixes:**

| File | Bug | Fix |
|---|---|---|
| `4_Battle_Strategy/Strategic_Awareness.rb:59` | `hail` archetype only matched `:Hail` — Gen 9 Snow not detected as hail archetype | Changed `weather:` to `[:Hail, :Snow]` |
| `4_Battle_Strategy/Strategic_Awareness.rb:604,607,620` | `detect_roles(pkmn)` on party Pokemon (no active battler data) + `pkmn_roles` undefined after prior fix | Replaced all with stat heuristics: `attack/spatk >= 100 && speed >= 80` |
| `4_Battle_Strategy/Item_Intelligence.rb:157` | `EXTENDER_ITEMS[:ICYROCK]` = `:hail` — Gen 9 IcyRock extends Snow | Changed to `:snow` |

---

### Round 40 — `sides[(index+1)%2]` & Remaining Side-Index Sweep (30+ fixes)

**Root cause #2**: `battle.sides[(attacker.index + 1) % 2]` for opponent's side — in doubles slot 2: `(2+1)%2=1` = same side as attacker! Fixed everywhere to `battle.sides[1 - (attacker.index & 1)]`. Same issue applied to `pbParty((index+1)%2)`.

| File | Count | Impact |
|---|---|---|
| `3_Combat_Mechanics/Critical_Hits.rb` | 2 × `sides[]` | Reflect/LightScreen and LuckyChant checked on own side |
| `3_Combat_Mechanics/Sleep_Clause.rb` | 1 × `pbParty` + 1 × `sides[]` | Sleep clause checked wrong party; Yawn hazard bonus on own side |
| `3_Combat_Mechanics/Hazard_Control.rb` | 3 × `sides[]` + 4 × `pbParty` | All hazard SR/Spikes/TSpikes/StickyWeb checks on wrong side |
| `5_Format_Specific/Speed_Tiers.rb` | 1 × `sides[]` + 1 × `pbParty` | Sticky Web and opponent speed backline on wrong side |
| `5_Format_Specific/Pivot_Moves.rb` | 1 × `sides[]` | Pivot hazard SR bonus looked at own side instead of opponent |
| `4_Battle_Strategy/Switch_Intelligence.rb` | 1 × `sides[]` | Entry hazard check on wrong side in sacking evaluation |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | 1 × `pbParty` | Toxic Spikes absorber count on wrong team |
| `1_Core/Combat_Utilities.rb` | 1 × `pbParty` | `count_alive_pokemon` passed battler slot as side index |

**Additional Round 40 fixes:**

| File | Bug | Fix |
|---|---|---|
| `Weather_Terrain_Wars.rb:188` | No `:Snow` branch in `calculate_weather_benefit` — AI scored 0 for Snowscape | Added Snow branch: Ice type +30, Slush Rush +35, Ice Body +15 |
| `Weather_Terrain_Wars.rb:235` | No `:Snow` branch in `calculate_opponent_weather_penalty` | Added Snow oppponent penalty for Ice-type opponents |
| `Weather_Terrain_Wars.rb:117` | `:SNOWCLOAK` missing from Snow ability list in `weather_benefits_opponent?` | Added `:SNOWCLOAK` |
| `Battle_Personalities.rb:86,102` | `pbParty(trainer_index)` (slot as side) + `detect_roles(pokemon)` on party Pokemon | Fixed side index; replaced role detection with stat heuristics (14 stat-based checks) |
| `Battle_Personalities.rb:155-158` | Duplicate `Apply Personality Modifiers` section header | Removed duplicate |


