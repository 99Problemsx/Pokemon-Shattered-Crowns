# Advanced AI System — Patch Notes v2.4.3

**Bugfix release** — Fixes 10 logic bugs + a systemic ability-suppression bug
across 12 files found via player reports and three full codebase audits,
plus 25+ additional bugs found in audit round 4, 21 more in audit round 5,
30+ in audit round 6 covering gimmick intelligence dead code, CRASH fix,
ability suppression across 12 files, Intimidate cycling, Ice Face form checks,
and Magic Bounce/Harvest/Ruin ability suppression correctness,
20+ in audit round 7 covering 3 CRASHes, 4 HIGH-severity regressions,
and 14 MEDIUM fixes across 8 files,
18+ in audit round 8 covering 1 CRASH, 4 HIGH, 8 MEDIUM, 5 LOW
across 12 files (Doubles Coord, Team Preview, Win Conditions, Tera Intel,
Field Effects, Weather/Terrain Wars, Sleep Clause, Special Moves, Endgame,
Battle Personalities, Setup Recognition),
and 16 in audit round 9 covering 3 CRASHes, 2 HIGH, 4 MEDIUM, 4 LOW
across 9 files (Advanced Items, Doubles Coord, Dynamax Intel, Core,
Mega Intel, Custom Content, Hotfixes, DBK Compat, Combat Utilities),
and 14 in audit round 10 covering 3 CRASHes, 1 HIGH, 4 MEDIUM, 3 LOW
across 8 files (Utilities, Tactical Enhancements, Switch Intelligence,
Prediction System, Doubles Strategy, Advanced Abilities, Move Scorer, Debug Menu),
and 10 in audit round 11 covering 1 CRASH, 1 HIGH, 5 MEDIUM, 3 LOW
across 4 files (Field Effects, Hotfixes, Dynamax Intelligence, Mega Intelligence),
and 6 in audit round 12 covering 2 MEDIUM, 4 LOW
across 6 files (Disruption Moves, Priority Tiers, Speed Tiers, Learning System,
Endgame Scenarios, PP Tracker),
and 3 in audit round 13 covering 2 MEDIUM, 1 LOW
across 3 files (Win Conditions, Team Preview Intelligence, Special Moves),
and 3 in audit round 14 covering 1 MEDIUM, 2 LOW
across 2 files (Recoil Tracking, Utilities),
and 2 in audit round 15 covering 1 MEDIUM, 1 LOW
across 1 file (Move Scorer),
and 3 in audit round 16 covering 2 MEDIUM, 1 LOW
across 3 files (Move Scorer, Substitute Logic, Utilities),
and 8 in audit round 17 covering 4 MEDIUM, 4 LOW
across 6 files (Tactical Enhancements, Item Intelligence, Move Categories,
Utilities, Doubles Coordination, Recoil Tracking),
and 7 in audit round 18 covering 4 MEDIUM, 3 LOW
across 5 files (Move Categories, Tactical Enhancements, Utilities,
Switch Intelligence, Doubles Coordination),
and 8 in audit round 19 covering 3 MEDIUM, 5 LOW
across 6 files (Field Effects, Weather Terrain Wars, Item Intelligence,
Doubles Coordination, Tactical Enhancements, Move Scorer),
and 6 in audit round 20 covering 3 MEDIUM, 3 LOW
across 4 files (Substitute Logic, Move Categories, Doubles Coordination,
Doubles Strategy),
and 10 in audit round 21 covering 4 MEDIUM, 6 LOW
across 4 files (Doubles Coordination, Tactical Enhancements, Win Conditions,
Disruption Moves),
and 9 in audit round 22 covering 4 MEDIUM, 5 LOW
across 7 files (Role Detection, Strategic Awareness, Tactical Enhancements,
Battle Personalities, Disruption Moves, Doubles Coordination, Move Scorer),
and 10 in audit round 23 covering 4 MEDIUM, 6 LOW
across 7 files (Doubles Coordination, Weather Terrain Wars, Field Effects,
Disruption Moves, Sleep Clause, Learning System, Doubles Strategy),
and 12 in audit round 24 covering 5 MEDIUM, 7 LOW
across 7 files (Disruption Moves, Doubles Coordination, Field Effects,
Weather Terrain Wars, Utilities, Move Scorer, Speed Tiers),
and 5 in audit round 25 covering 3 MEDIUM, 2 LOW
across 1 file (Doubles Coordination),
and 10 in audit round 26 covering 4 MEDIUM, 6 LOW
across 3 files (Custom Content, Win Conditions, Move Scorer),
and 6 in audit round 27 covering 3 MEDIUM, 3 LOW
across 4 files (Field Effects, Custom Content, Battle Personalities, Move Scorer),
and 5 in audit round 28 covering 3 MEDIUM, 2 LOW
across 3 files (Move Scorer, Substitute Logic, Recoil Tracking),
and 4 in audit round 29 covering 2 MEDIUM, 2 LOW
across 2 files (Core, Move Scorer),
and 6 in audit round 30 covering 3 MEDIUM, 3 LOW
across 1 file (Move Scorer),
and 6 in audit round 31 covering 2 MEDIUM, 4 LOW
across 2 files (Utilities, Move Scorer),
and 6 in audit round 32 covering 5 MEDIUM, 1 LOW
across 5 files (Combat Utilities, Move Scorer, Substitute Logic,
Pivot Moves, Win Conditions),
and 6 in audit round 33 covering 4 MEDIUM, 2 LOW
across 3 files (Switch Intelligence, Prediction System, Endgame Scenarios),
and 17 in audit round 34 covering 7 MEDIUM, 10 LOW
across 3 files (Move Scorer, Switch Intelligence, Prediction System),
and 18 in audit round 35 covering 8 MEDIUM, 10 LOW
across 9 files (Move Scorer, Field Effects, Pivot Moves, Substitute Logic,
Speed Tiers, Setup Recognition, Debug Menu, Advanced Items, Dynamax Intelligence),
and 24 in audit round 36 covering 11 MEDIUM, 13 LOW
across 8 files (Move Scorer, Doubles Coordination, Terastallization Intelligence,
Item Intelligence, Custom Content, Field Effects, Utilities, Priority Tiers),
and 28 in audit round 37 covering 10 MEDIUM, 18 LOW
across 10 files (Move Scorer, Move Memory, Strategic Awareness,
Tactical Enhancements, Doubles Coordination, PP Tracker, Learning System,
Pivot Moves, Substitute Logic, Switch Intelligence),
and 12 in audit round 38 covering 7 MEDIUM, 5 LOW
across 3 files (Doubles Coordination, Tactical Enhancements, Win Conditions),
and 10 in audit round 39 covering 4 MEDIUM, 6 LOW
across 2 files (Move Scorer, Field Effects),
and 11 in audit round 40 covering 6 MEDIUM, 5 LOW
across 7 files (Move Memory, Disruption Moves, Threat Assessment, Prediction System,
Switch Intelligence, Pivot Moves, Team Preview Intelligence),
and 9 in audit round 41 covering 4 MEDIUM, 5 LOW
across 5 files (Move Memory, Strategic Awareness, Prediction System, PP Tracker,
Doubles Coordination),
and 4 in audit round 42 covering 2 MEDIUM, 2 LOW
across 4 files (Endgame Scenarios, Prediction System, Switch Intelligence,
Dynamax Intelligence),
and 10 in audit round 43 covering 5 MEDIUM, 5 LOW
across 9 files (Sleep Clause, Tactical Enhancements, Doubles Strategy,
Dynamax Intelligence, Combat Utilities, Move Memory, Substitute Logic,
Prediction System, Recoil Tracking),
and 4 in audit round 44 covering 3 MEDIUM, 1 LOW
across 3 files (Doubles Coordination, Move Scorer, Custom Content),
and 3 in audit round 45 covering 1 MEDIUM, 2 LOW
across 1 file (Doubles Coordination),
and 10 in audit round 46 covering 6 MEDIUM, 4 LOW
across 3 files (Move Scorer, Disruption Moves, Switch Intelligence),
and 8 in audit round 47 covering 5 MEDIUM, 3 LOW
across 5 files (Combat Utilities, Switch Intelligence, Move Scorer,
Win Conditions, Pivot Moves),
and 6 in audit round 48 covering 3 MEDIUM, 3 LOW
across 6 files (Substitute Logic, Endgame Scenarios, Move Memory,
Prediction System, Strategic Awareness, Switch Intelligence),
and 10 in audit round 49 covering 5 HIGH, 4 MEDIUM, 1 LOW
across 4 files (Combat Utilities, Move Scorer, Switch Intelligence,
Substitute Logic, Move Memory),
and 11 in audit round 50 covering 3 HIGH, 8 MEDIUM
across 7 files (Combat Utilities, Substitute Logic, Move Memory,
Prediction System, Pivot Moves, Endgame Scenarios, Win Conditions),
and 8 in audit round 51 covering 2 HIGH, 6 MEDIUM
across 8 files (Combat Utilities, Substitute Logic, Move Memory,
Prediction System, Switch Intelligence, Pivot Moves, Endgame Scenarios,
Win Conditions),
and 15 in audit round 52 covering 4 HIGH, 11 MEDIUM
across 8 files (Combat Utilities, Substitute Logic, Move Memory,
Prediction System, Switch Intelligence, Pivot Moves, Endgame Scenarios,
Win Conditions),
and 17 in audit round 53 covering 5 HIGH, 12 MEDIUM
across 8 files (Combat Utilities, Substitute Logic, Move Memory,
Prediction System, Switch Intelligence, Pivot Moves, Endgame Scenarios,
Win Conditions).

> **Upgrade:** Delete `Data/PluginScripts.rxdata` and relaunch the game to
> force recompilation. Existing saves are fully compatible.

---

## Behavioural Fixes (Player-Reported)

### Defense-Lowering Moves Checked Wrong Stats (0_Move_Scorer.rb)
`LowerTargetDefense` moves gave a +25 score bonus when `user.attack > user.spatk` (the **user's** offensive stats) instead of checking the **target's** defensive stats. Similarly, `LowerTargetSpDef` checked `user.spatk > user.attack`. Fixed:

- `LowerTargetDefense`: now checks `target.defense > target.spdef` — bonus for lowering the stat the target relies on more
- `LowerTargetSpDef`: now checks `target.spdef > target.defense`

### Setup Move Boost Extraction — Wrong Digit Picked (0_Move_Scorer.rb)
`move.function_code.scan(/\d+/).last.to_i` extracted the **last** number from function code strings. For moves like Growth (`RaiseUserAtkSpAtk1Or2InSun`), this returned `2` (the sun bonus) instead of `1` (the base boost), making the AI always overvalue Growth as a +2 move regardless of weather. Fixed to use `.first.to_i` which correctly extracts the base boost amount.

### Growth Sun-Awareness (Move_Categories.rb + 0_Move_Scorer.rb)
Growth's `SETUP_MOVES` entry had no weather-conditional data. Added `sun_stages: 2` to the definition, and the scorer now checks for active Sun/HarshSun weather before using the boosted stage count. Growth is now correctly valued as +1 normally and +2 in sun.

---

## Behavioural Fixes (Audit — Round 1)

### OHKO Estimate Always Used Physical Stats (Switch_Intelligence.rb)
The "should I switch out?" OHKO danger check always used `target.attack` and `user.defense` for damage estimation, even when the incoming move is **special**. A fast special attacker (e.g., Alakazam with Psychic) would be evaluated using its low Attack stat, making the AI dramatically underestimate the threat. Fixed to check `move.physicalMove?` and use the correct atk/def pair.

### Single-Target Moves Summed Scores Across All Opponents (Special_Moves.rb)
Four single-target move evaluators (`evaluate_pain_split`, `evaluate_final_gambit`, Memento section, `evaluate_endeavor`) iterated all opponents and **accumulated** score adjustments. In doubles, if Pain Split was +80 against one opponent and −40 against the other, the total was +40 instead of the correct +80 (best target). Refactored all four to use `targets.map { ... }.max` pattern matching the existing Disruption_Moves.rb convention.

### Snow Cloak Missing from :Snow Weather (Weather_Terrain_Wars.rb)
`weather_activates_ability?` included `:SNOWCLOAK` for `:Hail` but not for `:Snow`. Snow Cloak functions identically in both weathers. Added to the Snow list.

### Weather Benefit Calculator Missing Abilities (Weather_Terrain_Wars.rb)
`calculate_weather_benefit` was missing weather-activated abilities for all 5 weather types compared to its sibling methods:

| Weather   | Was missing              |
|-----------|--------------------------|
| Sun       | `:FLOWERGIFT`           |
| Rain      | `:DRYSKIN`              |
| Sandstorm | `:SANDVEIL`             |
| Hail      | `:ICEBODY`, `:SNOWCLOAK`|
| Snow      | `:SNOWCLOAK`            |

All added with appropriate benefit values.

---

## Behavioural Fixes (Audit — Round 2)

### Tablets of Ruin Modifier Applied Twice (Custom_Content.rb)
`apply_ability_modifier` had an incomplete refactoring that left a duplicate `TABLETSOFRUIN` check. The first block (inside an `attacker.respond_to?` guard) applied `modifier *= 0.75`, then the main block applied it again, resulting in `0.5625x` (43.75% reduction) instead of the correct `0.75x` (25% reduction). Removed the duplicate block.

### Endgame OHKO + 2HKO Bonuses Stacking (Endgame_Scenarios.rb)
`score_1v1_move` used two independent `if` checks for KO (+100) and 2HKO (+50). Any move that can OHKO also passes the 2HKO check, so the score was always +150 instead of +100 for KO moves. Changed to `if`/`elsif` so only the highest applicable bonus applies.

### Prankster Bonus Ignored Dark-Type Immunity (0_Move_Scorer.rb)
`score_prankster_bonus` added +40–65 score to status moves when the user had Prankster, but never checked the target's type. Prankster-boosted status moves always fail against Dark-type targets (Gen 7+ mechanic). Added a Dark-type check that returns 0 when the target is Dark-type, and updated the method signature to accept `target`.

---

## Systemic Fix — Ability Suppression (Audit — Round 3)

### All `ability_id` Checks Replaced with `hasActiveAbility?` (113 locations, 12 files)

The entire codebase used `.ability_id` (raw symbol lookup) to check abilities. This returns the ability's internal name **even when the ability is suppressed** by Gastro Acid, Neutralizing Gas, or similar effects. The correct API is `.hasActiveAbility?(:SYMBOL)`, which returns `false` when the ability is inactive.

**Impact:** Every ability-based AI decision — damage modifiers, type immunities, status immunities, speed calculations, weather checks, move scoring — now correctly ignores suppressed abilities. This affects ~50 unique abilities across all scoring paths.

**Files fixed:**

| File | Key abilities affected |
|------|----------------------|
| `0_Move_Scorer.rb` (57 in `calculate_rough_damage` + 56 outside) | Huge Power, Adaptability, Pixilate/-ate, Wonder Guard, Unaware, Guts, Sheer Force, Tinted Lens, Filter/Solid Rock, Multiscale, Punk Rock, Pinch abilities, Protean/Libero, Sniper, Merciless, No Guard, Compound Eyes, Magic Guard, Shield Dust, Serene Grace, Poison Touch, Stench, Inner Focus, Clear Body/Mirror Armor, Natural Cure, Synchronize, Simple, Emergency Exit, Berserk, Sticky Hold, Moody, Opportunist, all status immunities (Limber, Leaf Guard, Water Bubble, Water Veil, Immunity, Pastel Veil, Insomnia, Sweet Veil, Corrosion, Overcoat, Own Tempo) |
| `Utilities.rb` | Air Lock / Cloud Nine (weather nullification) |
| `Priority_Tiers.rb` | Queenly Majesty, Dazzling, Armor Tail, Psychic Surge (priority blockers) |
| `Speed_Tiers.rb` | Swift Swim, Chlorophyll, Sand Rush, Slush Rush, Unburden, Quick Feet, Slow Start |
| `Sleep_Clause.rb` | Vital Spirit, Insomnia, Sweet Veil, Comatose, Overcoat, Magic Bounce |
| `PP_Tracker.rb` | Pressure (4 locations) |
| `Substitute_Logic.rb` | Infiltrator, Skill Link, Parental Bond, Soundproof |
| `Field_Effects.rb` | Levitate (Gravity interaction) |
| `Hazard_Control.rb` | Levitate (grounded check) |

---

## Behavioural Fixes (Audit — Round 4)

### HIGH Priority

#### Facade Burn Penalty Not Bypassed (0_Move_Scorer.rb)
Since Gen 5, Facade ignores the burn attack reduction. The AI's `calculate_rough_damage` applied `burn_mod = 0.5` to **all** physical moves when burned, including Facade. A burned Pokemon using Facade was undervalued by **2x** — the exact scenario where it should be strongest. Added Facade exception: `burn_mod = 1.0` when move is Facade.

#### Aurora Veil Scored Without Hail/Snow (0_Move_Scorer.rb)
Aurora Veil **fails outright** if weather is not Hail or Snow, but the early failure check only blocked it when already active. The AI could waste a turn using a move that will 100% fail. Added weather check below the existing "already active" guard.

#### Sheer Force Wrongly Negated Inherent Recoil (0_Move_Scorer.rb)
`score_recoil_risk` returned 0 for Sheer Force users with secondary-effect moves, but `recoilMove?` only fires for inherent recoil moves (Flare Blitz, Head Smash). Sheer Force only negates **Life Orb** recoil, not inherent move recoil. A Sheer Force Darmanitan with Flare Blitz was shown as taking 0 recoil. Removed the incorrect check and added Rock Head (which does negate inherent recoil).

#### Pain Split Used HP Percentages Instead of Raw HP (Special_Moves.rb)
Pain Split averages **raw HP values**, not percentages. A 50/100 user vs 200/400 target both show as 50%, but Pain Split averages to 125 HP — a 75 HP gain for the user. The AI saw equal percentages and scored it as "minimal benefit (+10)". Rewrote to compute `user_gain_pct = (avg_raw - user.hp) / user.totalhp` to properly detect healing value.

#### Confusion Self-Hit Chance Was 50% Instead of 33% (Recoil_Tracking.rb)
`CONFUSION_CHANCE = 0.50` used the Gen VI value. Since Gen VII, confusion self-hit chance is 33%. The AI overestimated confusion risk by 50%, making it avoid confusing strategies and overvalue Clear Smog.

#### Gravity Grounding Check Was Dead Code (Hazard_Control.rb)
`is_grounded?` accepted an optional `battle` parameter for Gravity checking, but **no caller passed it**. The Gravity check was unreachable dead code, meaning Gravity didn't affect hazard damage calculations. Fixed `calculate_hazard_damage` and `evaluate_boots_vs_hazards` to pass the battle reference.

### MEDIUM Priority

#### Mycelium Might Treated as Universal Ability-Ignorer (Utilities.rb)
Mycelium Might was in the `ABILITY_IGNORING` array alongside Mold Breaker/Teravolt/Turboblaze, making `ignores_ability?` return true for ALL moves. Mycelium Might only ignores abilities on **status moves**. Removed from the constant array and added conditional logic with an optional `move` parameter.

#### Safety Goggles Blocked All Sleep (Utilities.rb)
`status_immune?` returned true for Safety Goggles against **any** sleep move. Safety Goggles only blocks powder/spore moves (Spore, Sleep Powder), not Hypnosis, Sing, Dark Void, etc. Added powder-move check gating the Safety Goggles immunity.

#### Grass Powder Immunity Used Wrong Move Reference (Utilities.rb)
The Grass-type powder immunity checked `attacker.lastMoveUsed` (the **previous** move) instead of the current move being scored. During scoring, `lastMoveUsed` could be anything — the powder check never matched. Added `move` parameter to `status_immune?` for proper identification. Also removed Stun Spore from the sleep immunity list (it causes Paralysis).

#### SmackDown/Thousand Arrows Grounding Missing (Utilities.rb + Hazard_Control.rb)
Neither `grounded?` nor `is_grounded?` checked `PBEffects::SmackDown`, which grounds Flying-types and Levitate users after being hit by SmackDown or Thousand Arrows. Added the check to both methods.

#### Debug force_personality Targeted Player's Pokemon (Debug_Menu.rb)
`force_personality` iterated battlers with `!b.opposes?` (player's Pokemon) instead of `b.opposes?` (AI's Pokemon). Setting an AI personality would modify the player's battlers, not the AI's.

#### Encore Setup + Status Scores Double-Counted (Disruption_Moves.rb)
Encore gave +80 for locking into setup moves AND +50 for locking into any status move. Setup moves are status moves, so locking into Swords Dance gave +130 instead of +80. Changed to `elsif` for mutual exclusion.

#### Defog Opponent-Side Penalty Missing Hazards (Special_Moves.rb)
Defog's penalty for removing the opponent's own hazards only counted Stealth Rock and Spikes. Toxic Spikes and Sticky Web were ignored, undervaluing the downside of using Defog when the opponent had those hazards set.

#### Protosynthesis Missing from Sun Ability Activations (Weather_Terrain_Wars.rb)
`weather_activates_ability?` didn't include Protosynthesis for Sun weather. Paradox Pokemon with Protosynthesis weren't getting the terrain synergy bonus when evaluating weather moves.

#### Quark Drive Missing from Electric Terrain Activations (Weather_Terrain_Wars.rb)
`terrain_activates_ability?` didn't include Quark Drive for Electric Terrain. Same issue as above for Electric Terrain paradox Pokemon.

#### Magic Guard Incorrectly Negated Belly Drum Cost (Recoil_Tracking.rb)
`calculate_recoil_damage` zeroed out ALL self-damage for Magic Guard users, including Belly Drum's 50% HP cost. Belly Drum is a direct HP payment that Magic Guard does **not** prevent. Fixed to preserve Belly Drum cost while zeroing other recoil.

#### Battle Armor/Shell Armor Not Bypassed by Mold Breaker (0_Move_Scorer.rb)
`score_crit_potential` unconditionally returned 0 for Battle Armor/Shell Armor targets. These abilities are on the Mold Breaker bypass list — a Mold Breaker user **can** land crits. Added `ignores_ability?` guard.

#### Electric Terrain Sleep Immunity Missing (0_Move_Scorer.rb)
The status move early-failure block checked Misty Terrain for all status prevention and Safeguard, but not Electric Terrain for sleep prevention. Sleep moves against grounded targets on Electric Terrain would fail but the AI didn't know.

#### Purify Gave +20 for Curing Opponent's Status (0_Move_Scorer.rb)
Purify cures the **target's** status to heal the user. The +20 bonus treated removing the opponent's burn/paralysis/poison as beneficial. Replaced with a -30 penalty (losing enemy status is bad) with extra penalties for restoring physical attackers from burn and removing poison chip damage.

#### Secondary Stat-Drop Scoring Hit Non-Damaging Moves (0_Move_Scorer.rb)
`score_secondary_effects` matched `LowerTarget` function codes for secondary stat-drop processing, but this matched **primary** status moves like Growl and Scary Face too. Caused double-counting with `score_status_utility` and incorrect Serene Grace/Covert Cloak interactions. Added `move.damagingMove?` guard.

### LOW Priority

#### Stench/King's Rock Flinch on Non-Damaging Moves (0_Move_Scorer.rb)
Stench and King's Rock/Razor Fang only grant flinch chance on **damaging** moves. The code gave +8 flinch bonus to status moves on these holders. Added `move.damagingMove?` check.

#### Topsy-Turvy Debug Factor Tracked Wrong Value (0_Move_Scorer.rb)
`factors["Topsy-Turvy"]` stored the entire accumulated `base_score` instead of just the Topsy-Turvy delta, making debug output misleading.

#### Baneful Bunker in Misty Terrain Status List (Field_Effects.rb)
Baneful Bunker was listed as a status-inflicting move for Misty Terrain penalty calculations. Baneful Bunker is a Protect variant that poisons on contact — it's not a status move that gets blocked by Misty Terrain.

#### Defend Order Missing Special Defense (Move_Categories.rb)
Defend Order raises both Defense AND Special Defense by 1 stage, but `SETUP_MOVES` only listed `stat: :defense`. Changed to `stat: :defense_spdef`.

#### SPREAD_MOVES Contained Single-Target Moves (Move_Categories.rb)
The list included Razor Leaf, Icicle Spear, Screech, Sand Attack, Smokescreen, Confuse Ray, Supersonic, and Lovely Kiss — all single-target moves. Removed them.

#### PRIORITY_MOVES Hardcoded Prankster Status Moves (Move_Categories.rb)
Prankster status moves (Thunder Wave, Will-O-Wisp, Spore, etc.) were in the `PRIORITY_MOVES` array unconditionally. They only get +1 priority from the Prankster ability. Separated into `PRANKSTER_PRIORITY_MOVES` constant.

### Systemic Fix — Ability Suppression Extension

#### Remaining `ability_id` References Converted (Field_Effects.rb + Doubles_Coordination.rb)
Round 3 converted 113 references across 12 files. Round 4 found and converted:
- **19 references** in `Field_Effects.rb` (weather/terrain ability synergy, Mimicry, evasion abilities)
- **53 references** in `Doubles_Coordination.rb` (partner abilities, weather synergy, terrain coordination, Intimidate, Commander, Wind Rider, Steam Engine, Anger Point, Hospitality, Prankster, Friend Guard, Telepathy, Neutralizing Gas, and more)

Total across all rounds: **185 `ability_id` → `hasActiveAbility?` conversions**. Zero `ability_id` references remain in the plugin.

---

## Files Changed (Round 4)

| File | Changes |
|------|---------|
| `2_Move_Intelligence/0_Move_Scorer.rb` | Facade burn bypass, Aurora Veil weather check, Sheer Force/Rock Head recoil, Electric Terrain sleep, Purify penalty, Battle Armor Mold Breaker, secondary stat-drop guard, Stench/King's Rock damaging check, Topsy-Turvy debug |
| `2_Move_Intelligence/Special_Moves.rb` | Pain Split raw HP, Defog ToxicSpikes/StickyWeb |
| `2_Move_Intelligence/Move_Categories.rb` | Defend Order SpDef, SPREAD_MOVES cleanup, PRIORITY_MOVES/PRANKSTER split |
| `2_Move_Intelligence/Disruption_Moves.rb` | Encore setup/status elsif |
| `3_Combat_Mechanics/Recoil_Tracking.rb` | Confusion 0.33, Magic Guard Belly Drum exception |
| `3_Combat_Mechanics/Hazard_Control.rb` | Gravity battle pass-through, SmackDown grounding |
| `3_Combat_Mechanics/Weather_Terrain_Wars.rb` | Protosynthesis Sun, Quark Drive Electric |
| `3_Combat_Mechanics/Field_Effects.rb` | 19 ability_id→hasActiveAbility?, Baneful Bunker removal |
| `1_Core/Utilities.rb` | Mycelium Might conditional, Safety Goggles powder-only, Grass powder move param, SmackDown grounding |
| `1_Core/Debug_Menu.rb` | force_personality targets AI battlers |
| `5_Format_Specific/Doubles_Coordination.rb` | 53 ability_id→hasActiveAbility? conversions |

---

## Behavioural Fixes (Audit — Round 5)

### Win_Conditions Nil Crash — Operator Precedence (Win_Conditions.rb)
`check_setup_condition` parsed `mon_stages = active_battler && active_battler.respond_to?(:stages) ? active_battler.stages : {}` — Ruby's ternary `?:` has lower precedence than `&&`, so when the party mon wasn't on the field, `active_battler` was `nil` and `mon_stages = nil`. The next line `nil[:ATTACK]` crashed with `NoMethodError`. Fixed with explicit parentheses.

### Move Memory Hooks Wrong Method + Default Changed (Move_Memory.rb)
Two bugs: (1) `specialUsage` default parameter was changed from `true` to `false`, breaking accuracy-skip for Metronome/Mirror Move/Future Sight. (2) Only `pbUseMoveSimple` was hooked — regular battle moves go through `pbUseMove`, so Move Memory never recorded normal moves. Added `pbUseMove` hook and restored `specialUsage = true` default. Also added fallback for out-of-moveset moves (Metronome rolls).

### Setup_Recognition.recently_setup? Dead Code (Setup_Recognition.rb)
`feature_enabled?(:setup, battle.pbSideSize(0))` passed side size (1 or 2) as the skill level. Since the threshold is 55, `1 >= 55` is always false — `recently_setup?` never returned true. Fixed to pass skill level 100.

### Switch Stat Boost Penalty Inverted by Negatives (Switch_Intelligence.rb)
Switch penalty for wasting setup used `user.stages.values.sum`, including negatives. With Attack +1 and Speed −3, sum = −2, `malus = -20`, and `score -= -20` added +20 to switch score instead of penalizing. Fixed to sum only positive stages.

### Team Preview Type Effectiveness Double-Counted for Single-Type Pokemon (Team_Preview_Intelligence.rb)
`Effectiveness.calculate(type, defender.type1, defender.type2)` — for single-type Pokemon, type1 == type2, so effectiveness was squared (2× became 4×). Fixed with `*[type1, type2].uniq`. Also fixed initial `total_multiplier = 1.0` → `0.0` (was biasing all averages upward by `1/move_count`).

### Threat Assessment Checked Types Individually Instead of Combined (Threat_Assessment.rb)
`assess_type_threat` checked each opponent STAB type against each individual defender type separately, then summed. Fire vs Bug/Steel gave +1.0 + +1.0 = +2.0 instead of checking Fire vs (Bug, Steel) = 4× SE → +1.0 once. Same issue in `assess_move_threat`. Fixed both to use `Effectiveness.calculate(type, *combined_types)`.

### Snow/Hail Archetype Never Detected (Strategic_Awareness.rb)
`SNOWWARNING` mapped to `:Snow` in weather setters, but the scoring loop only checked `:Hail`. Hail abusers also populated `:Hail` key while setters used `:Snow`. Unified both to `:Snow` key and updated scoring loop to check `[:Rain, :Sun, :Sandstorm, :Snow]`.

### Contact Damage Evaluation Missed Rough Skin (Advanced_Items.rb)
Contact damage penalty only checked Rocky Helmet and Iron Barbs. Rough Skin (Garchomp, Sharpedo) deals the same 1/8 HP on contact but was ignored. Fixed to include `hasActiveAbility?(:ROUGHSKIN)`.

### Dynamax Sweep Score Always +24 (Dynamax_Intelligence.rb)
`max_moves_with_boosts` block always returned `true` (stub comment "Simplified"). Every 4-move Pokemon got +24 regardless of Max Move quality. Fixed to only count moves whose types correspond to Max Moves that grant offensive/speed boosts.

### OHKO Moves Got +80 Without Immunity Checks (Endgame_Scenarios.rb)
Endgame 1v1 OHKO scoring gave unconditional +80. Now checks Sturdy at full HP, level comparison (OHKO fails if target level > user level), Fissure vs Flying/Levitate, and Sheer Cold vs Ice-type before awarding the bonus.

### Hazard FATAL Check Used Max HP Instead of Current HP (Switch_Intelligence.rb)
`hazard_damage >= 1.0` only triggered at 100% max HP hazard damage. A Pokemon at 40% switching into 50% hazard damage would faint but the FATAL flag never set. Fixed to compare against `switch_pkmn.hp / switch_pkmn.totalhp`.

### Battle Personality Detection Used Calculated Stats (Battle_Personalities.rb)
`pokemon.speed`, `pokemon.attack`, etc. return calculated stats (including level, EVs, nature) but thresholds (100, 80, 130) were designed for base stats. At level 100, virtually everything classified as "fast" and "offensive". Fixed to use `GameData::Species.get(species).base_stats`.

### Win_Conditions Speed Heuristics Used Calculated Stats (Win_Conditions.rb)
`m.speed < 80` and `m.speed >= 100` comparisons for Trick Room detection and speed advantage used calculated stats. At high levels, almost no Pokemon has calculated speed < 80, making Trick Room benefit detection useless. Fixed to use species base stats.

### Multi-Role Abilities Returned Wrong Threat Value (Custom_Content.rb)
`get_ability_threat` used first-match-wins across category tables. Motor Drive was in both DEFENSIVE (-1.8) and SPEED (1.5), but only returned -1.8. Protosynthesis was in OFFENSIVE (1.8) and SPEED (1.5) but only returned 1.8. Fixed to sum across all matching categories.

### Assault Vest Check Applied to Target Instead of User (Item_Intelligence.rb)
`blocks_status_moves?` checked the **target's** Assault Vest, but Assault Vest prevents the **holder** from using status moves — it doesn't block incoming status. The AI was incorrectly penalizing status moves aimed at Assault Vest holders. Fixed to check the user (AI's own Pokemon).

### Knock Off/Trick Missing Sticky Hold Immunity (Disruption_Moves.rb)
Knock Off and Trick/Switcheroo had no checks for Sticky Hold. With Sticky Hold, Knock Off can't remove the item (only 1.5× damage boost applies) and Trick completely fails. Added guards for both. Also fixed Knock Off returning 0 for unlosable items — 1.5× damage boost still applies, now returns +20.

### Parting Shot Accumulated Score Across All Opponents (Pivot_Moves.rb)
Parting Shot targets one opponent but the evaluation looped all opponents and accumulated. In doubles, bonuses and penalties were double-counted. Also used `ability_id` for Clear Body check. Refactored to evaluate each opponent individually and take the best. Fixed ability check to `hasActiveAbility?`.

### Doubles Moves Scored Twice via Two Independent Hooks (Doubles_Strategy.rb × Doubles_Coordination.rb)
Helping Hand, Fake Out, Follow Me, and Protect were scored in both `Doubles_Strategy.pbRegisterMove` (Path 1) and `Doubles_Coordination.apply_doubles_coordination` (Path 2). Fake Out could reach +315 combined, Helping Hand +195. Removed duplicate scoring from Doubles_Strategy's `pbRegisterMove` — Doubles_Coordination handles all these moves.

### Tera STAB Not Considered in Move Scoring (0_Move_Scorer.rb)
When Terastallization was registered (before move selection), `score_stab_bonus` still used pre-Tera types. A Fire/Fighting Pokemon Tera-ing to Water would score Fire Blast (+20 STAB) over Surf (+0). Fixed to check `pbRegisteredTerastallize?` and weight Tera type STAB accordingly (double STAB +25 when Tera matches original type, new STAB +20 otherwise).

### 16 More ability_id→hasActiveAbility? Conversions (Weather_Terrain_Wars.rb)
`weather_benefits_opponent?`, `calculate_weather_benefit` (9 checks), `weather_activates_ability?`, and `terrain_activates_ability?` all used raw `ability_id` which ignores Gastro Acid/Neutralizing Gas suppression. Converted all 16 to `hasActiveAbility?`.

---

## Summary — Round 5

| File | Changes |
|------|---------|
| `6_Meta_Mechanics/Win_Conditions.rb` | Nil crash fix (operator precedence), speed heuristics use base stats |
| `2_Move_Intelligence/Move_Memory.rb` | specialUsage default, pbUseMove hook, out-of-moveset fallback |
| `4_Battle_Strategy/Setup_Recognition.rb` | recently_setup? skill level parameter |
| `4_Battle_Strategy/Switch_Intelligence.rb` | Positive-only boost penalty, hazard FATAL vs current HP |
| `4_Battle_Strategy/Team_Preview_Intelligence.rb` | Single-type double-count, initial value bias |
| `4_Battle_Strategy/Threat_Assessment.rb` | Combined type effectiveness checks (2 methods) |
| `4_Battle_Strategy/Strategic_Awareness.rb` | Snow/Hail key unification |
| `4_Battle_Strategy/Advanced_Items.rb` | Rough Skin contact damage |
| `6_Meta_Mechanics/Dynamax_Intelligence.rb` | Max Move boost type filtering |
| `6_Meta_Mechanics/Endgame_Scenarios.rb` | OHKO immunity checks |
| `6_Meta_Mechanics/Battle_Personalities.rb` | Base stats for personality detection |
| `7_Integration/Custom_Content.rb` | Multi-role ability threat summation |
| `4_Battle_Strategy/Item_Intelligence.rb` | Assault Vest user vs target |
| `2_Move_Intelligence/Disruption_Moves.rb` | Sticky Hold + Knock Off unlosable damage boost |
| `5_Format_Specific/Pivot_Moves.rb` | Parting Shot best-of + hasActiveAbility? |
| `5_Format_Specific/Doubles_Strategy.rb` | Removed duplicate Helping Hand/Fake Out/Follow Me/Protect scoring |
| `2_Move_Intelligence/0_Move_Scorer.rb` | Tera-aware STAB scoring |
| `3_Combat_Mechanics/Weather_Terrain_Wars.rb` | 16 ability_id→hasActiveAbility? conversions |
---

## Audit Round 6 — Architecture + Deep ability_id Sweep (12 files, ~30 fixes)

### CRITICAL: Gimmick Intelligence Dead Code (Mechanics_Hooks.rb)
`pbRegisterEnemySpecialAction` was defined via `if/else` compile-time check:
if `Battle::AI.method_defined?(:pbRegisterEnemySpecialAction)` → alias + wrap,
else → define from scratch. Since `[DBK_000]` loads **after** `[000_AAI]`
alphabetically, DBK's own definition **overwrote** the AAI method entirely,
making all Mega/Z-Move/Dynamax/Tera intelligence dead code. Restructured
using `Module#prepend` — `AAI_GimmickHook` is prepended to `Battle::AI` so
it survives any later overwrite via Ruby MRO. Also fixed stale `@trainer`
reference (now uses `@battle.pbGetOwnerFromBattlerIndex`).

### CRASH: Role_Detection.rb — `pkmn.calcHP` Called With 0 Args
`safe_stat` called `pkmn.calcHP` which requires 4 arguments (level, base, IV, EV).
Replaced with `pkmn.totalhp` which returns the already-computed value.

### Prediction_System.rb — Status Move Misdetection
`predicted_move_data.power == 0` misclassified moves like Counter, Mirror Coat,
and Seismic Toss (power=0 but damaging) as status moves. Fixed to
`predicted_move_data.category == 2` (the actual status category flag).
Also added `pbFindBattler` filter in doubles to prevent scoring partners as threats.

### Critical_Hits.rb — Kowtow Cleave False Always-Crit
Kowtow Cleave (100% accuracy, never misses) received `+35` "always crit" bonus,
treating it as a guaranteed critical hit when it isn't. Reduced to `+15` conditional
on high crit-ratio moves only. Also added nil guards on `move` in
`evaluate_focus_energy` and `check_lucky_chant`.

### Item_Intelligence.rb — Wrong Memory Item Names
`BURNINGMEMORY`, `GRASSYMEMORY`, `ICYMEMORY` don't exist in Essentials.
Fixed to `FIREMEMORY`, `GRASSMEMORY`, `ICEMEMORY`. Also fixed Icy Rock
weather key `"hail"` → `"snow"` (Gen 9), and increased Assault Vest
status move penalty from -30 to -200 (move literally fails). Added
`respond_to?(:effects)` guard on `choice_locked?` and `hasActiveItem?`
for `blocks_status_moves?`.

### Core.rb — Wild AI Bypass Not Checked in Switch Logic
`ShouldSwitch` and `choose_best_replacement_pokemon` didn't check
`ENABLE_WILD_POKEMON_AI`, running advanced AI on wild Pokemon.
Added early-return guard for `battle.wildBattle? && !ENABLE_WILD_POKEMON_AI`.

### Role_Detection.rb — Raw `battler.speed` Access
`has_lead_moves?` accessed `battler.speed` directly which may not exist on
party Pokemon. Changed to `safe_stat(battler, :speed)`.

### Advanced_Abilities.rb — Intimidate + Baton Pass Illogical Check
Code penalized Intimidate if the user also knew Baton Pass, reasoning the
switch-out would trigger Intimidate. But Intimidate fires on switch-IN,
not switch-OUT. Removed the illogical bonus. Also fixed Regenerator doubles
penalty to check only the first target instead of all opponents.

### Tactical_Enhancements.rb — Intimidate Cycle Aborts on Immune Opponent
`return 0` for Clear Body / White Smoke / Full Metal Body aborted the entire
Intimidate cycle evaluation if ANY opponent had these abilities. Changed to
`next` so the loop skips that opponent but still evaluates others.

### Tactical_Enhancements.rb — Ice Face Special Move Bonus When Broken
`+10` for special moves against Ice Face applied regardless of form. Now gated
behind `form == 0` (Ice Face active) — no bonus when form is already broken.

### Custom_Content.rb — Ruin/Toxic/Flare Boost Ignored Suppression
`calculate_ability_damage_modifier` applied Sword of Ruin, Beads of Ruin,
Toxic Boost, and Flare Boost modifiers without checking if the attacker's
ability was suppressed by Gastro Acid. Now gated behind `!attacker_suppressed`.
Tablets of Ruin and Vessel of Ruin now gated behind `!ability_suppressed?`.

### Massive ability_id → hasActiveAbility? Conversion (12 files, ~60 refs)
Converted all remaining active-battler `ability_id` reads to use
`hasActiveAbility?` which correctly returns `false` when suppressed by
Gastro Acid or Neutralizing Gas. Files affected:

| File | Conversions |
|------|------------|
| `1_Core/Utilities.rb` | ~30 refs + new `ability_active?` helper method |
| `3_Combat_Mechanics/Advanced_Abilities.rb` | 17 refs (hash-find pattern) |
| `3_Combat_Mechanics/Critical_Hits.rb` | 7 refs (SUPERLUCK, SNIPER, crit_immune) |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | 15 refs (Magic Bounce through Booster Energy) |
| `4_Battle_Strategy/Item_Intelligence.rb` | 3 refs (Mummy, critical abilities, Paradox) |
| `4_Battle_Strategy/Advanced_Items.rb` | 1 ref (Gluttony pinch berry threshold) |
| `4_Battle_Strategy/Threat_Assessment.rb` | 2 refs (opponent + attacker ability) |
| `4_Battle_Strategy/Switch_Intelligence.rb` | 1 ref (Adaptability STAB) |
| `5_Format_Specific/Doubles_Strategy.rb` | 1 ref (redirection abilities) |
| `6_Meta_Mechanics/Mega_Intelligence.rb` | 1 ref (pre-Mega ability read) |
| `7_Integration/Custom_Content.rb` | 5 refs (weather, terrain, ignores, damage mod) |

### Files Modified in Round 6

| File | Changes |
|------|---------|
| `1_Core/Utilities.rb` | ability_active? helper, ~30 ability_id conversions, Contrary, Zen Mode, Power Construct |
| `1_Core/Core.rb` | Wild AI bypass in ShouldSwitch + choose_best_replacement |
| `1_Core/Role_Detection.rb` | CRASH fix calcHP→totalhp, speed safe_stat |
| `2_Move_Intelligence/Prediction_System.rb` | Status detection, doubles filter |
| `3_Combat_Mechanics/Critical_Hits.rb` | Nil guards, Kowtow Cleave, 7 ability_id |
| `3_Combat_Mechanics/Advanced_Abilities.rb` | 17 ability_id, Intimidate+BP, Regenerator |
| `3_Combat_Mechanics/Mechanics_Hooks.rb` | Module#prepend restructure, stale trainer |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | 15 ability_id, Intimidate cycle next, Ice Face form |
| `4_Battle_Strategy/Item_Intelligence.rb` | Memory names, Hail→snow, AV -200, 3 ability_id |
| `4_Battle_Strategy/Advanced_Items.rb` | Gluttony ability_id |
| `4_Battle_Strategy/Threat_Assessment.rb` | 2 ability_id conversions |
| `4_Battle_Strategy/Switch_Intelligence.rb` | Adaptability ability_id |
| `5_Format_Specific/Doubles_Strategy.rb` | Redirection ability_id |
| `6_Meta_Mechanics/Mega_Intelligence.rb` | Pre-Mega ability_id |
| `7_Integration/Custom_Content.rb` | 5 ability_id, Ruin/Boost suppression gates |

---

## Round 7 — Deep Audit: Disruption, Hazard, Move Scorer, Pivot, Switch, Strategy, Speed

### CRASH-Level Fixes (3)

| Bug | File | Detail |
|-----|------|--------|
| Orphan `end` before `elsif` | `2_Move_Intelligence/Disruption_Moves.rb` | Syntax error prevented entire file from loading — all Taunt/Encore/Knock Off/Trick scoring was dead code |
| `Effectiveness::SUPER_EFFECTIVE_ONE` undefined | `3_Combat_Mechanics/Hazard_Control.rb` | NameError on any Stealth Rock or Defog evaluation (2 call sites) |
| Unbalanced `)` in `passive_recovery` | `2_Move_Intelligence/0_Move_Scorer.rb` | SyntaxError in `score_protect_utility` — Protect/Detect scoring always crashed |

### HIGH-Severity Fixes (4)

| Bug | File | Detail |
|-----|------|--------|
| Damaging moves in `status_moves` hash | `0_Move_Scorer.rb` | Scald, Flare Blitz, Sacred Fire, Body Slam, Zap Cannon, Nuzzle, Poison Fang all got -1000 against statused targets — AI refused primary STAB attacks |
| `type1`/`type2` squaring effectiveness | `Hazard_Control.rb` | Single-typed Pokémon (e.g. Charizard) appeared 4× weak to Rock instead of 2× — `type2` returns `types[0]` when no second type. Fixed to `*pkmn.types` splat |
| `NORMAL_EFFECTIVE` int vs float multiplier | `Pivot_Moves.rb` | `Effectiveness::NORMAL_EFFECTIVE` (int 2) compared against `calculate()` float 1.0 — neutral moves never counted as damage for Teleport evaluation |
| `attacker_ability` one-ability probe (R6 regression) | `Switch_Intelligence.rb` | Round 6 conversion to `hasActiveAbility?(:ADAPTABILITY) ? :ADAPTABILITY : nil` broke 8+ ability damage modifiers (Guts, Huge Power, Solar Power, Skill Link, etc.). Reverted to `ability_id` |

### MEDIUM-Severity Fixes (14)

| # | Bug | File | Detail |
|---|-----|------|--------|
| 1 | Defog penalty missing ToxicSpikes/StickyWeb | `Hazard_Control.rb` | Defog deducted for opponent's StealthRock and Spikes but NOT ToxicSpikes or StickyWeb — undervalued removing own hazards vs losing opponent's |
| 2 | `is_grounded?` API wrapper drops `battle` param | `Hazard_Control.rb` | Wrapper `is_grounded?(battler)` never passed `battle` to inner method — Gravity field effect was always ignored |
| 3 | Toxic/Poison double-count in stall penalty | `Switch_Intelligence.rb` | `poisoned?` returns true for both Poison and Toxic, so Toxic target added +15 AND +20 = +35 instead of just +20. Changed to if/elsif |
| 4 | Terrain boosts without grounded check | `Switch_Intelligence.rb` | Electric/Grassy/Psychic terrain boosts applied to airborne attackers (Levitate, Flying, Air Balloon). Added `is_grounded?` gate |
| 5 | Missing `:PROTOSYNTHESIS` in `SUN_ABUSERS` | `Strategic_Awareness.rb` | Paradox Pokémon with Protosynthesis not counted as sun-team members — archetype detection missed them |
| 6 | `resists_stab <= 1.0` counts neutral as handling | `Strategic_Awareness.rb` | Critical Pokémon detection was never triggered because neutral matchups (1.0) counted as "handling" — changed to `< 1.0` |
| 7 | `estimate_max_incoming` ignores STAB | `Strategic_Awareness.rb` | Estimated incoming damage ~33% too low for STAB moves — added 1.5× STAB multiplier |
| 8 | Heal Block missing Strength Sap + Floral Healing | `0_Move_Scorer.rb` | AI would attempt these moves while Heal-Blocked, wasting a turn |
| 9 | Stun Spore missing Overcoat/Safety Goggles check | `0_Move_Scorer.rb` | ParalyzeTarget handler checked Grass-type immunity but not Overcoat ability or Safety Goggles item |
| 10 | Sleep Powder/Spore missing Overcoat/Safety Goggles | `0_Move_Scorer.rb` | SleepTarget handler checked Grass-type but not Overcoat/Safety Goggles — AI burned turns on immune targets |
| 11 | PoisonPowder missing all powder immunities | `0_Move_Scorer.rb` | PoisonTarget handler had NO powder-specific checks — Grass-type, Overcoat, Safety Goggles all missing for PoisonPowder |
| 12 | Wall stat symbol case mismatch | `0_Move_Scorer.rb` | Compared `setup_data[:stat]` against `:DEFENSE`/`:SPECIAL_DEFENSE` but SETUP_MOVES hash uses `:defense`/`:spdef` — defensive setup always penalized for walls |
| 13 | `in_same_speed_tier?` uses computed stat | `Speed_Tiers.rb` | Passed `battler.speed` (computed ~200-400) to tiers designed for base speed (25-200) — everything classified as `:ultra_fast`. Now uses `baseStats[:SPEED]` |
| 14 | `get_speed_tier` API wrapper same issue | `Speed_Tiers.rb` | API wrapper `AdvancedAI.get_speed_tier(battler)` also passed computed stat — fixed to extract base speed |

### Files Modified in Round 7

| File | Changes |
|------|--------|
| `2_Move_Intelligence/Disruption_Moves.rb` | CRASH: removed orphan `end` before `elsif` |
| `2_Move_Intelligence/0_Move_Scorer.rb` | CRASH: passive_recovery parens, HIGH: removed 7 damaging moves from status hash, MEDIUM: Heal Block +2 moves, 3× powder Overcoat/Goggles, wall stat symbols |
| `3_Combat_Mechanics/Hazard_Control.rb` | CRASH: SUPER_EFFECTIVE_ONE ×2, HIGH: type1/type2 ×2, MEDIUM: Defog ToxicSpikes/StickyWeb, is_grounded? battle param |
| `4_Battle_Strategy/Switch_Intelligence.rb` | HIGH: attacker_ability revert, MEDIUM: toxic double-count, terrain grounded check |
| `4_Battle_Strategy/Strategic_Awareness.rb` | MEDIUM: PROTOSYNTHESIS in SUN_ABUSERS, resists_stab threshold, STAB in estimate_max_incoming |
| `5_Format_Specific/Pivot_Moves.rb` | HIGH: NORMAL_EFFECTIVE → NORMAL_EFFECTIVE_MULTIPLIER |
| `5_Format_Specific/Speed_Tiers.rb` | MEDIUM: in_same_speed_tier? + API wrapper use baseStats[:SPEED] |

---

## Round 8 — Deep Audit: Field Effects, Weather, Sleep, Win Conditions, Tera, Doubles, Team Preview

### CRASH-Level Fixes (1)

| Bug | File | Detail |
|-----|------|--------|
| `calculate_one` raw int misuse in joint target selection | `5_Format_Specific/Doubles_Coordination.rb` | `Effectiveness.calculate_one()` returns raw ints (neutral=2). Code multiplied them starting from `1.0` then checked `> 1.0` — every neutral hit was falsely treated as super effective (+10 undeserved). Also missing `pbTypes(true)` arg. Fixed to use `Effectiveness.calculate` + `super_effective?` |

### HIGH-Severity Fixes (4)

| Bug | File | Detail |
|-----|------|--------|
| `type1`/`type2` squares effectiveness in SR scoring | `Win_Conditions.rb` | `[opp.type1, opp.type2].compact` doubled weakness for mono-typed mons in attrition win condition. Fixed to `opp.types` |
| `type1`/`type2` squares effectiveness in `estimate_damage_percent` | `Win_Conditions.rb` | Same pattern used in ALL win condition damage estimates — sweep, revenge, setup, priority KO all corrupted. Also divided by `NORMAL_EFFECTIVE_MULTIPLIER` (1.0, no-op) instead of `NORMAL_EFFECTIVE` (2). Fixed both |
| `NORMAL_EFFECTIVE` (int 2) vs float in Tera neutralize | `Terastallization_Intelligence.rb` | `tera_mod == Effectiveness::NORMAL_EFFECTIVE` was `1.0 == 2` → always false. The +15 "Neutralizes Weakness" Tera bonus never fired. Fixed to `NORMAL_EFFECTIVE_MULTIPLIER` |
| `type1`/`type2` in `evaluate_type_matchup` lead scoring | `Team_Preview_Intelligence.rb` | `[defender.type1, defender.type2].uniq` + division by `NORMAL_EFFECTIVE_MULTIPLIER` (1.0) made all neutral matchups rate as 2.0 instead of 1.0 — lead selection meaningless. Fixed to `defender.types` + divide by `NORMAL_EFFECTIVE` (2) |

### MEDIUM-Severity Fixes (8)

| # | Bug | File | Detail |
|---|-----|------|--------|
| 1 | `type1`/`type2` in hazard removal Rock check | `Special_Moves.rb` | Mono-typed party mons appeared 4× weak to Rock instead of 2×. Fixed to `*pkmn.types` |
| 2 | Sturdy OHKO immunity wrongly gated on full HP | `Endgame_Scenarios.rb` | Sturdy grants unconditional OHKO immunity regardless of HP. Code required `target.hp == target.totalhp` (that's Focus Sash behavior). Removed HP gate |
| 3 | Snow/Hail conflated in weather bonus | `Field_Effects.rb` | `when :Hail, :Snow` treated both identically. Snow has no chip damage and gives Ice-types ×1.5 Defense. Split into separate branches with correct Gen 9 mechanics |
| 4 | Mimicry keeps secondary type | `Field_Effects.rb` | Mimicry replaces ALL types, not just primary. Code kept `target_types[1..-1]`. Fixed to pure single-type `[actual_type]` |
| 5 | Grassy Terrain EQ penalty missing Bulldoze + Drain Punch unearned bonus | `Field_Effects.rb` | Bulldoze also halved by Grassy Terrain but was missing. Drain Punch (Fighting) got +15 for Grassy Terrain it doesn't benefit from. Added Bulldoze, removed Drain Punch, added grounded check |
| 6 | Snow erroneously penalizes non-Ice users | `Weather_Terrain_Wars.rb` | `benefit -= 5` for non-Ice Snow users — Gen 9 Snow deals no chip damage. Removed false penalty |
| 7 | Negative opponent weather penalty silently discarded | `Weather_Terrain_Wars.rb` | Setting Snow when opponent has Ice-types returned negative penalty, but caller only applied `> 0`. Changed to `!= 0` so opponent benefits are properly penalized |
| 8 | `is_rest_sleep?` false positives allow clause violations | `Sleep_Clause.rb` | Matched `statusCount == 2 \|\| 3` but normal sleep also uses 2-3. Narrowed to `== 3` only (Rest's initial value). Also removed Yawn from `evaluate_sleep_move` — was double-scored (-100 + +30 from dedicated `evaluate_yawn`) |

### LOW-Severity Fixes (5)

| # | Bug | File | Detail |
|---|-----|------|--------|
| 1 | Terrain guard doesn't filter `:None` | `Field_Effects.rb` | `battle.field.terrain` is `:None` (truthy) when inactive, not `nil`. Added `:None` check |
| 2 | Gravity OHKO accuracy overestimate | `Field_Effects.rb` | Comment said "100% accuracy" but Gravity gives ×5/3 (30%→50%). Reduced bonus from +40 to +25, added bonus for Focus Blast/Thunder/Blizzard etc. |
| 3 | Fainted Pokémon counted in Baton Pass chain | `Setup_Recognition.rb` | Dead mons with BP still counted → false-positive chain detection → wasted phaze moves. Added `pokemon.fainted?` filter |
| 4 | Missing nil guard on move in setup_count | `Battle_Personalities.rb` | Inconsistent with rest of file which guards `m &&` before accessing `.id` |
| 5 | `coverage_bonus` config dead (no consumer) | `Battle_Personalities.rb` | Annotated as design-only; consumer needs target context unavailable in `apply_personality` |

### Files Modified in Round 8

| File | Changes |
|------|--------|
| `2_Move_Intelligence/Special_Moves.rb` | MEDIUM: type1/type2 → pkmn.types for SR weakness check |
| `3_Combat_Mechanics/Field_Effects.rb` | MEDIUM: Snow/Hail split, Mimicry single-type, Grassy EQ+Bulldoze, LOW: terrain :None guard, Gravity accuracy |
| `3_Combat_Mechanics/Weather_Terrain_Wars.rb` | MEDIUM: Snow chip removed, opponent penalty sign fix |
| `3_Combat_Mechanics/Sleep_Clause.rb` | MEDIUM: is_rest_sleep narrowed, Yawn removed from sleep_moves |
| `4_Battle_Strategy/Team_Preview_Intelligence.rb` | HIGH: types + NORMAL_EFFECTIVE divisor |
| `4_Battle_Strategy/Setup_Recognition.rb` | LOW: fainted filter in baton_pass_chain? |
| `5_Format_Specific/Doubles_Coordination.rb` | CRASH: calculate_one → calculate + super_effective? |
| `6_Meta_Mechanics/Win_Conditions.rb` | HIGH: type1/type2 ×2, NORMAL_EFFECTIVE_MULTIPLIER → NORMAL_EFFECTIVE |
| `6_Meta_Mechanics/Terastallization_Intelligence.rb` | HIGH: NORMAL_EFFECTIVE → NORMAL_EFFECTIVE_MULTIPLIER |
| `6_Meta_Mechanics/Endgame_Scenarios.rb` | MEDIUM: Sturdy HP gate removed |
| `6_Meta_Mechanics/Battle_Personalities.rb` | LOW: move nil guard, coverage_bonus annotated |

---

## Audit Round 9 — Core, Dynamax, Integration & Cross-File

### CRASH Fixes
| Bug | File(s) | Detail |
|-----|---------|--------|
| `CombatUtilities` namespace unresolved | `Advanced_Items.rb` (×4), `Doubles_Coordination.rb` (×1) | `CombatUtilities.estimate_damage(...)` inside `class Battle::AI` context raises `NameError` — Ruby can't find `CombatUtilities` without `AdvancedAI::` prefix. 4 sites in Advanced_Items silently killed all item-aware damage estimation; 1 site in Doubles_Coord was masked by `rescue 0` (damage always evaluated as 0%) |
| `PBEffects::Gmaxsteelsurge` doesn't exist | `Dynamax_Intelligence.rb` | Correct constant is `PBEffects::Steelsurge` (defined by DBK_005). Would crash with `NameError` when G-Max Steelsurge scoring runs (previously masked by `gmax_move?` always returning false) |

### HIGH Fixes
| Bug | File | Detail |
|-----|------|--------|
| `gmax_move?` / `gmax?` checks current state, not capability | `Dynamax_Intelligence.rb` | `gmax_move?` gated on `gmax?` which DBK overrides to check "is currently G-Maxed" (always false before Dynamaxing). Changed to `gmax_factor?` (capability check). All G-Max scoring bonuses (+25 Steelsurge timing, +10 offensive, +10 momentum) were permanently dead |
| `user.gmax?` in offensive eval same issue | `Dynamax_Intelligence.rb` | Line 131 `score += 10 if user.gmax?` → `user.gmax_factor?`. Added `gmax_factor?` delegation to AIBattler |

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| Wild Pokemon switch skill hardcoded to 100 | `Core.rb` (×2 sites) | `ai.trainer&.skill \|\| 100` defaults to max skill for wild Pokemon instead of `WILD_POKEMON_SKILL_LEVEL`. Switch intelligence and replacement selection now respect the configured wild skill level |
| Mega weather redundancy misses Sand/Snow | `Mega_Intelligence.rb` | Only checked Sun/Drought and Rain/Drizzle. Added Sandstorm/Sand Stream and Snow+Hail/Snow Warning. AI was giving +25 for "new weather" when Mega's ability was redundant with existing weather |
| Sword/Beads of Ruin multiplier wrong | `Custom_Content.rb` | Used `1.25` but 25% defense reduction → `1/0.75 = 4/3 ≈ 1.333`. AI undervalued Chien-Pao/Chi-Yu damage by ~6.7% per calculation |
| Ability suppression ignores Neutralizing Gas | `Custom_Content.rb` | Only checked `PBEffects::GastroAcid` manually. Now uses `hasActiveAbility?` which handles all suppression (Gastro Acid, Neutralizing Gas, etc.) |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| `GameData::Type.calculate` recursion guard returns int 2 | `Hotfixes.rb` | Returned `NORMAL_EFFECTIVE` (int 2) instead of `NORMAL_EFFECTIVE_MULTIPLIER` (float 1.0) in recursion/error bailout. Callers expecting float would get 2× |
| `pbCanDynamax?` returns true when @dynamax nil | `DBK_Compatibility.rb` | If Dynamax isn't initialized, fallback was `return true` → could allow Dynamax in non-Dynamax battles. Changed to `return false` |
| `team_advantage` returns 0 for extinct side | `Combat_Utilities.rb` | When one side has 0 alive Pokemon, returned 0 ("even"). Now returns -1 (losing) or +1 (winning) correctly |
| `Battle::Battler#dynamax?` returned `dynamax_able?` | `Dynamax_Intelligence.rb` | Pre-DBK fallback used eligibility check instead of actual state. Fixed to `@pokemon&.dynamax?`. Also fixed `gmax?` fallback to `@pokemon&.gmax?` |

### Files Modified (Round 9)
| File | Changes |
|------|--------|
| `4_Battle_Strategy/Advanced_Items.rb` | CRASH: AdvancedAI::CombatUtilities namespace (×4 sites) |
| `5_Format_Specific/Doubles_Coordination.rb` | CRASH: AdvancedAI::CombatUtilities namespace |
| `6_Meta_Mechanics/Dynamax_Intelligence.rb` | CRASH + HIGH ×2 + LOW: Steelsurge constant, gmax capability vs state, AIBattler gmax_factor? delegation, Battler state methods |
| `1_Core/Core.rb` | MEDIUM: Wild Pokemon skill level (×2 sites) |
| `6_Meta_Mechanics/Mega_Intelligence.rb` | MEDIUM: Weather redundancy for Sand/Snow |
| `7_Integration/Custom_Content.rb` | MEDIUM ×2: Ruin multiplier 4/3, Neutralizing Gas suppression |
| `7_Integration/Hotfixes.rb` | LOW: NORMAL_EFFECTIVE → NORMAL_EFFECTIVE_MULTIPLIER (×2) |
| `7_Integration/DBK_Compatibility.rb` | LOW: pbCanDynamax? false when @dynamax nil |
| `1_Core/Combat_Utilities.rb` | LOW: team_advantage extinct side handling |

---

## Audit Round 10 — Deep Re-Audit + Remaining Files

### CRASH Fixes
| Bug | File(s) | Detail |
|-----|---------|--------|
| `type_mod` passes nil type for single-typed Pokemon | `Utilities.rb` | `pbTypes(true)` returns 1-element array → `types[1]` = nil → `Effectiveness.calculate(type, :WATER, nil)` → `GameData::Type.get(nil)` → `ArgumentError`. Fixed to use splat `*types` instead of `t1, t2`. This was the ROOT CAUSE silently killing type effectiveness for ~40% of Pokemon (all mono-typed) across every caller |
| `target_ability` undefined in `multiscale_awareness` | `Tactical_Enhancements.rb` | `target_ability` was defined in `mold_breaker_bonus` but referenced in `multiscale_awareness` → `NameError`. Since `tactical_score` wraps all calls in one `begin/rescue`, this killed ALL ~15 remaining tactical bonuses (Magic Bounce, Sturdy, Sash, Guts, Disguise, etc.) whenever target had Multiscale/Shadow Shield at full HP |
| `skill_level=` writer doesn't exist on Trainer | `Debug_Menu.rb` | `Trainer#skill_level` is read-only (delegates to `GameData::TrainerType`). Debug menu crashed on skill change. Fixed to use `instance_variable_set` fallback |

### HIGH Fixes
| Bug | File | Detail |
|-----|------|--------|
| `has_skill_flag?` on non-AITrainer | `Switch_Intelligence.rb` | `pbGetOwnerFromBattlerIndex` returns `NPCTrainer`/`Player` (lacks `has_skill_flag?`). Truthy non-nil passes the nil guard → `NoMethodError`. Added `respond_to?` check |

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| `can_ko_opponent?` flattens 4x SE to 2x | `Switch_Intelligence.rb` (×2 sites) | Ternary collapsed all SE to 2.0 and NVE to 0.5, losing 4x/0.25x resolution. Dragonite 4x weak to Ice Beam estimated at 2x → AI thought it couldn’t KO and switched out. Fixed to use raw float multiplier from `calculate()` |
| Resistance bonus gated behind `damagingMove?` | `Prediction_System.rb` | “We resist the predicted attack” +25 only applied to damaging move evaluations. Setup/status moves (Swords Dance, Will-O-Wisp) unfairly penalized when user resists incoming hit. Removed the damagingMove? gate |
| Missing Protect variants in coordination | `Doubles_Strategy.rb` | Missing `:OBSTRUCT`, `:SILKTRAP`, `:BURNINGBULWARK` from partner-Protect detection. Both partners could Protect simultaneously without penalty |
| Endeavor false-positive on LowerTarget check | `Advanced_Abilities.rb` (×2 sites) | `include?("LowerTarget")` matched `LowerTargetHPToUserHP` (Endeavor). Endeavor incorrectly penalized -50 vs Contrary and -40 vs Defiant/Competitive. Added `!include?("LowerTargetHP")` exclusion |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| `score_choice_prelock` type fallback + manual multiplication | `0_Move_Scorer.rb` | `[type1, type2].compact` duplicate + manual `calculate_one` multiplication. Fixed to `Effectiveness.calculate(*types)` with proper `NORMAL_EFFECTIVE_MULTIPLIER` comparison |
| `score_trapping_moves` type fallback | `0_Move_Scorer.rb` | `[type1, type2].compact` → `pbTypes(true)` with `.types` fallback |
| `score_ghost_curse` type fallback | `0_Move_Scorer.rb` | Same pattern → `pbTypes(true)` with `.types` fallback |
| Dead variable in `grounded?` | `Utilities.rb` | Unused `ability` assignment before `ability_active?` call. Removed dead code |
| `const_set` warning spam in debug toggles | `Debug_Menu.rb` | `remove_const` + `const_set` instead of direct reassignment (×3 toggles) |

### Files Modified (Round 10)
| File | Changes |
|------|--------|
| `1_Core/Utilities.rb` | CRASH: type_mod splat fix + LOW: dead variable |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | CRASH: target_ability + MEDIUM: damagingMove? gate |
| `4_Battle_Strategy/Switch_Intelligence.rb` | HIGH: respond_to? guard + MEDIUM: 4x effectiveness (×2) |
| `4_Battle_Strategy/Prediction_System.rb` | MEDIUM: resistance bonus ungated |
| `5_Format_Specific/Doubles_Strategy.rb` | MEDIUM: Protect variants |
| `3_Combat_Mechanics/Advanced_Abilities.rb` | MEDIUM: Endeavor exclusion (×2 sites) |
| `2_Move_Intelligence/0_Move_Scorer.rb` | LOW: type fallback fixes (×3 sites) |
| `1_Core/Debug_Menu.rb` | CRASH: skill_level setter + LOW: const toggle warnings |

---

## Audit Round 11 — Deep Re-Audit: Field Effects, Hotfixes, Dynamax, Mega

### CRASH Fixes
| Bug | File(s) | Detail |
|-----|---------|--------|
| `GameData::Type.calculate` wrapper calls non-existent alias | `Hotfixes.rb` | `method_defined?(:calculate)` is false for `GameData::Type` (only `Effectiveness` has `calculate`). The conditional alias was skipped but `def calculate` was still defined — calling `original_type_calculate` inside → `NoMethodError` → caught by rescue → returns `NORMAL_EFFECTIVE_MULTIPLIER`. Entire recursion guard was dead code. Fixed by wrapping the entire method definition inside the `if method_defined?` block |

### HIGH Fixes
| Bug | File | Detail |
|-----|------|--------|
| `user.pokemon.getMegaForm` nil dereference | `Mega_Intelligence.rb` | `user.pokemon` can return nil on fainted slots or during initialization. `nil.getMegaForm` → `NoMethodError`. Added `respond_to?` guard + safe navigation (`&.getMegaForm \|\| 0`) |

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| Protosynthesis +25/+40 fires with Booster Energy in *any* weather | `Field_Effects.rb` | `weather_bonus` gave Protosynthesis users bonus in Rain, Sand, Snow when holding Booster Energy. Booster Energy activation is weather-independent → should not inflate weather score. Removed `\|\| user.item_id == :BOOSTERENERGY` |
| Quark Drive +25/+40 fires with Booster Energy in *any* terrain | `Field_Effects.rb` | Mirror of above in `terrain_bonus`. Removed Booster Energy condition |
| Paradox target penalties in wrong methods (swapped) | `Field_Effects.rb` | Quark Drive (Electric Terrain ability) target penalty was in `weather_bonus`; Protosynthesis (Sun ability) target penalty was in `terrain_bonus`. Moved each to the correct method and gated on actual field condition |
| Sand chip damage ignores Magic Guard / Overcoat / Safety Goggles | `Field_Effects.rb` | Only type-based immunity checked. Pokemon with Magic Guard, Overcoat, or Safety Goggles are immune to weather chip but AI still counted +10 bonus. Added ability/item immunity checks |
| Party Dynamax comparison uses staged stats vs base stats | `Dynamax_Intelligence.rb` | `pkmn.attack > user.attack` compared party Pokemon base stat against in-battle staged stat. At +2 Attack, no party member looks "better" → AI over-favors current Dynamax user. Fixed to compare `user.pokemon.attack` (base stats) |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| `remaining_pokemon_count` counts eggs as alive | `Dynamax_Intelligence.rb` | Eggs satisfy `!p.fainted?`, inflating count → affects Dynamax timing thresholds. Added `!p.egg?` |
| `alive_enemies_count` counts eggs as alive | `Dynamax_Intelligence.rb` | Same pattern on opponent side. Added `!p.egg?` |
| G-Max Tartness species list includes Appletun | `Dynamax_Intelligence.rb` | Appletun's G-Max move is Sweetness, not Tartness. Removed Appletun from TARTNESS list |

### Files Modified (Round 11)
| File | Changes |
|------|--------|
| `3_Combat_Mechanics/Field_Effects.rb` | MEDIUM: Protosynthesis Booster Energy + Quark Drive Booster Energy + swapped target penalties + Sand chip immunities |
| `7_Integration/Hotfixes.rb` | CRASH: dead GameData::Type.calculate wrapper |
| `6_Meta_Mechanics/Dynamax_Intelligence.rb` | MEDIUM: staged stats comparison + LOW: egg exclusion (×2) + LOW: Tartness species |
| `6_Meta_Mechanics/Mega_Intelligence.rb` | HIGH: getMegaForm nil guard |

---

## Audit Round 12 — Deep Audit: Disruption, Priority, Speed, Learning, Endgame, PP

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| Encore gives +80 for locking opponent into setup moves regardless of boost stages | `Disruption_Moves.rb` | `evaluate_encore_value` unconditionally awarded +80 for Encoring Swords Dance / Nasty Plot / etc. If opponent was at +0 Attack, Encore lets them freely boost to +6 and sweep. Now checks `target.stages` — +80 only at +5/+6 (near max), +50 with phaze move available at +3/+4, -20 at +3/+4 without phaze, -40 at +0 to +2. Counter-setup bonus only fires when opponent is capped |
| Priority tier constants have wrong priority levels | `Priority_Tiers.rb` | `PRIORITY_PLUS_4` contained Helping Hand (actually +5 in all gens). `PRIORITY_PLUS_3` contained Protect variants (King's Shield, Spiky Shield, Baneful Bunker, Obstruct) + Magic Coat + Snatch which are all +4. Created `PRIORITY_PLUS_5` for Helping Hand. Moved protection moves to `PRIORITY_PLUS_4`. Added missing Protect, Detect, Silk Trap, Burning Bulwark. Placed Fake Out, Quick Guard, Wide Guard, Crafty Shield in `PRIORITY_PLUS_3`. Note: `get_priority_tier` uses `move.priority` directly so scoring was unaffected, but constant-based lookups were wrong |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| `calculate_effective_speed` missing Protosynthesis / Quark Drive / Surge Surfer | `Speed_Tiers.rb` | Gen 9 Paradox Pokemon speed boosts not accounted for. Protosynthesis (Sun) and Quark Drive (Electric Terrain) give 1.5× Speed when Speed is the Pokemon's highest base stat. Surge Surfer (Alolan Raichu) gives 2× in Electric Terrain. All three now included in the abilities section |
| `@current_battle` nil crash in `record_action` / `predict_protect_usage` | `Learning_System.rb` | Module instance variable `@current_battle` is nil until `reset_learning_data` is called. No integration hook calls `reset_learning_data` at battle start, so if `record_action` or `predict_protect_usage` is invoked (e.g. from external scripts), `@current_battle.turnCount` → `NoMethodError`. Added nil guards in both methods |
| OHKO move scoring doesn't check Focus Sash | `Endgame_Scenarios.rb` | `score_1v1_move` gave +80 for OHKO moves checking Sturdy / level / type immunity but not Focus Sash. A full-HP target holding Focus Sash survives any OHKO move with 1 HP, wasting the turn. Added `target.item_id == :FOCUSSASH` check when target is at full HP |
| `LOW_PP_MOVES` hash has wrong PP values and misleading comment | `PP_Tracker.rb` | Comment said "# 8 PP moves" but listed Earthquake (10 PP), Ice Beam (10 PP), etc. Dragon Pulse (10 PP) and Petal Blizzard (10 PP) were listed under "5 PP moves". Fixed PP groupings, corrected comment to "# 10 PP moves", added note that hash is reference data (dynamic `is_low_pp_move?` is authoritative) |

### Files Modified (Round 12)
| File | Changes |
|------|---------|
| `2_Move_Intelligence/Disruption_Moves.rb` | MEDIUM: Encore stage-aware scoring |
| `5_Format_Specific/Priority_Tiers.rb` | MEDIUM: Priority tier constant corrections |
| `5_Format_Specific/Speed_Tiers.rb` | LOW: Protosynthesis + Quark Drive + Surge Surfer |
| `4_Battle_Strategy/Learning_System.rb` | LOW: @current_battle nil guards |
| `6_Meta_Mechanics/Endgame_Scenarios.rb` | LOW: OHKO Focus Sash check |
| `3_Combat_Mechanics/PP_Tracker.rb` | LOW: PP hash value/comment corrections |

---

## Audit Round 13 — Cross-Cutting Analysis: Effectiveness Divisors, Status Mechanics

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| Type effectiveness halved in Win Conditions damage estimates | `Win_Conditions.rb` | `estimate_damage_percent` divided `type_mod` by `Effectiveness::NORMAL_EFFECTIVE` (= 2) instead of `Effectiveness::NORMAL_EFFECTIVE_MULTIPLIER` (= 1.0). Since `Effectiveness.calculate` already returns float multipliers (2.0 = SE, 1.0 = NE, 0.5 = NVE), dividing by 2 halved the type modifier — SE became 1.0 (neutral), NVE became 0.25. All endgame win-condition damage estimates were systematically wrong |
| Type matchup scores halved in Team Preview selection | `Team_Preview_Intelligence.rb` | `calculate_type_matchup` had the same `NORMAL_EFFECTIVE` divisor bug. Every move's type matchup was halved, making SE moves appear neutral and neutral moves appear NVE. Team preview lead selection and type-matchup rankings were distorted. Also fixed misleading comment that said "raw effectiveness int" (it's already a float multiplier) |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| Healing Wish status-cure bonus only counted for Lunar Dance | `Special_Moves.rb` | `evaluate_healing_wish` counted `valuable_teammates` (status'd party members) only when `move.id == :LUNARDANCE`. Both Healing Wish and Lunar Dance cure status conditions since Gen 5. AI undervalued Healing Wish by +30 when team had status'd Pokemon. Removed the Lunar Dance gate on the counter; applied the +30 bonus to both moves. Added separate +10 for Lunar Dance's unique PP restoration |

### Files Modified (Round 13)
| File | Changes |
|------|---------|
| `6_Meta_Mechanics/Win_Conditions.rb` | MEDIUM: Effectiveness divisor fix |
| `4_Battle_Strategy/Team_Preview_Intelligence.rb` | MEDIUM: Effectiveness divisor fix + comment |
| `2_Move_Intelligence/Special_Moves.rb` | LOW: Healing Wish status-cure scoring |

---

## Audit Round 14 — Recoil Move Coverage & Move Classification

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| Wave Crash missing from `RECOIL_MOVES` hash | `Recoil_Tracking.rb` | Wave Crash (120 BP Water, 1/3 recoil) was absent from the `RECOIL_MOVES` lookup table. The module's `calculate_recoil_damage`, `score_recoil_penalty`, and KO-trade-off logic only fire for moves in this hash. Result: AI skipped all sophisticated recoil analysis (team-advantage weighting, self-KO check, Rock Head exemption path) for every Wave Crash user — Palafin (Hero), Quaquaval, Dondozo, Basculin, Basculegion. Added `:WAVECRASH => { type: :dealt, percent: 0.33 }` |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| Head Charge missing from `RECOIL_MOVES` hash | `Recoil_Tracking.rb` | Same class of bug — Head Charge (120 BP Normal, 1/4 recoil, Bouffalant signature) was absent. Added `:HEADCHARGE => { type: :dealt, percent: 0.25 }` |
| Head Charge misclassified as stat-lowering move | `Utilities.rb` | `setup_beneficial?` listed `:HEADCHARGE` in `stat_lowering_moves` alongside Overheat, Draco Meteor, Close Combat, etc. Head Charge is a pure recoil move with zero stat side effects. With Contrary active the AI would flag it as "stat-lowering = beneficial" but since there are no stat changes to invert, the misclassification is harmless in practice. Removed from the array for correctness |

### Files Modified (Round 14)
| File | Changes |
|------|---------|
| `3_Combat_Mechanics/Recoil_Tracking.rb` | MEDIUM: Added Wave Crash; LOW: Added Head Charge |
| `1_Core/Utilities.rb` | LOW: Removed Head Charge from stat_lowering_moves |

---

## Audit Round 15 — Iron Fist Coverage & Dead Code Cleanup

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| Iron Fist punch moves list missing 5 moves | `0_Move_Scorer.rb` | `calculate_rough_damage` uses a hardcoded `punch_moves` array for the Iron Fist 1.2× damage modifier. The array was missing 5 PBS-confirmed punching moves: `:DOUBLEIRONBASH` (Melmetal signature, 60 BP Steel, 2-hit), `:ICEHAMMER` (Crabominable, 100 BP Ice), `:JETPUNCH` (Palafin, 60 BP Water, +1 priority), `:PLASMAFISTS` (Zeraora, 100 BP Electric), and `:HEADLONGRUSH` (Ursaluna, 120 BP Ground). Impact: AI underestimated damage by 20% for any Iron Fist user with these moves. Most significant for **Melmetal** (Iron Fist + Double Iron Bash is its core set) and **Crabominable** (Iron Fist + Ice Hammer). All 5 added to the array |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| Close Combat in status move exception list (dead code) | `0_Move_Scorer.rb` | `score_role_synergy` wallbreaker section had `![:SWORDSDANCE, :NASTYPLOT, :CLOSECOMBAT].include?(move_id)` to exempt certain moves from a status move penalty. Close Combat is a 120 BP Fighting damaging move (not a status move), so the enclosing `move.statusMove?` guard already excludes it — the exception never triggers. Removed `:CLOSECOMBAT` from the list for correctness |

### Files Modified (Round 15)
| File | Changes |
|------|---------|
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: Added 5 missing punching moves to Iron Fist array; LOW: Removed dead `:CLOSECOMBAT` from wallbreaker status exception list |

---

## Audit Round 16 — Contrary Coverage & Sound Move Completeness

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| Contrary `contrary_boost_moves` missing 6 self-stat-dropping moves | `0_Move_Scorer.rb` | The array at the Contrary check only listed 10 of 16 moves whose self-inflicted stat drops become boosts under Contrary. Missing: `:HEADLONGRUSH` (120 BP Ground, −1 Def/SpDef like Close Combat), `:ICEHAMMER` (100 BP Ice, −1 Speed like Hammer Arm), `:SPINOUT` (100 BP Steel, −2 Speed), `:CLANGINGSCALES` (110 BP Dragon, −1 Def), `:DRAGONASCENT` (120 BP Flying, −1 Def/SpDef), `:HYPERSPACEFURY` (100 BP Dark, −1 Def). Impact: AI with Contrary missed the +50 score bonus for these moves, undervaluing them despite the stat drops becoming free boosts. All 6 added |
| Sound move list missing 3 damaging sound moves in Substitute bypass | `Substitute_Logic.rb` | `score_move_vs_substitute` uses a hardcoded `sound_moves` array to detect moves that bypass Substitute (+60 bypass bonus). Missing 3 damaging sound moves: `:EERIESPELL` (80 BP Psychic, drains PP), `:ALLURINGVOICE` (80 BP Fairy, Gen 9), `:PSYCHICNOISE` (75 BP Psychic, Gen 9, blocks healing). Impact: AI wouldn't get the +60 Sub bypass bonus when using these moves against a Substitute, potentially preferring weaker moves that hit the Sub instead |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| `SOUND_MOVES` fallback constant missing 3 sound moves | `Utilities.rb` | The `SOUND_MOVES` array (fallback for `soundproof_immune?` when `soundMove?` method unavailable) was missing `:HOWL`, `:ALLURINGVOICE`, and `:PSYCHICNOISE`. These are PBS-confirmed Sound-flagged moves. Added all 3 and re-sorted alphabetically for maintainability. Impact: Minor — primary check uses the built-in `soundMove?` method from PBS flags; this fallback only fires if the method raises |

### Files Modified (Round 16)
| File | Changes |
|------|---------|
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: Added 6 missing self-stat-drop moves to Contrary boost list |
| `3_Combat_Mechanics/Substitute_Logic.rb` | MEDIUM: Added 3 missing damaging sound moves to Substitute bypass detection |
| `1_Core/Utilities.rb` | LOW: Added 3 missing sound moves to SOUND_MOVES fallback constant |

---

## Audit Round 17 — Move Flag Cross-Reference & Hardcoded List Completeness

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| `SELF_DROP_MOVES` missing 9 self-stat-dropping moves for White Herb bonus | `Tactical_Enhancements.rb` | The `SELF_DROP_MOVES` constant and `white_herb_bonus` scoring method only covered 10 of 19 moves whose self-inflicted stat drops trigger White Herb consumption. Missing: `:HEADLONGRUSH` (−1 Def/SpDef), `:ARMORCANNON` (−1 Def/SpDef), `:DRAGONASCENT` (−1 Def/SpDef), `:HAMMERARM` (−1 Speed), `:ICEHAMMER` (−1 Speed), `:CLANGINGSCALES` (−1 Def), `:HYPERSPACEFURY` (−1 Def), `:MAKEITRAIN` (−1 SpAtk), `:SPINOUT` (−2 Speed). Added all 9 to constant and added new `when` branches with appropriate bonus values |
| `stat_drop_moves` for White Herb scoring also incomplete | `Item_Intelligence.rb` | Parallel `stat_drop_moves` local array used in White Herb item scoring had the same 9 missing self-stat-drop moves. Synchronised with Tactical_Enhancements.rb |
| `RECOVERY_MOVES` drain section missing 4 drain moves | `Move_Categories.rb` | The drain moves sub-section of `RECOVERY_MOVES` was missing Horn Leech (50% heal), Bitter Blade (50% heal, Gen 9), Matcha Gotcha (50% heal, spread, Gen 9), and Dream Eater (50% heal, sleep-conditional). AI would not recognise these as HP-recovery options when evaluating healing potential |
| `BALL_BOMB_MOVES` missing 3 Bulletproof-immune moves | `Utilities.rb` | The `BALL_BOMB_MOVES` constant for Bulletproof immunity was missing `:SEARINGSHOT` (Victini signature, 100 BP Fire), `:ROCKBLAST` (25 BP ×2-5 Rock, added to Bulletproof in Gen 9), and `:SYRUPBOMB` (Gen 9, 60 BP Grass). AI would not detect Bulletproof immunity for these moves, wasting turns |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| `HEALING_MOVES` (Triage priority) missing 2 Gen 9 drain moves | `Utilities.rb` | The `HEALING_MOVES` array used for Triage ability priority detection was missing `:BITTERBLADE` and `:MATCHAGOTCHA`. AI would not recognise these as Triage-boosted priority moves |
| Wind Rider `wind_moves` has wrong move name + missing move | `Doubles_Coordination.rb` | The `wind_moves` array in `check_ability_synergy` had `:WILDSTORMWIND` (does not exist) instead of `:WILDBOLTSTORM`, and was missing `:SANDSEARSTORM` (Gen 9). The typo meant Wild Boltstorm would never match, losing the +45 partner synergy bonus |
| `RECOIL_MOVES` missing Light of Ruin and Fillet Away | `Recoil_Tracking.rb` | `:LIGHTOFRUIN` (140 BP Fairy, 50% damage recoil — same tier as Head Smash) and `:FILLETAWAY` (50% max HP self-cost, same as Belly Drum) were both absent. AI would not factor in self-damage when these moves were used, overvaluing them or miscalculating KO risk |
| `powder_moves` array has duplicate, invalid entry, and missing move | `Utilities.rb` | The `powder_moves` local array had `:SLEEPPOWDER` listed twice (duplicate), included `:POWDERTRICK` (does not exist as a move), and was missing `:MAGICPOWDER` (Psychic-type powder move). Fixed: removed duplicate, replaced invalid entry with `:MAGICPOWDER` |

### Files Modified (Round 17)
| File | Changes |
|------|---------|
| `4_Battle_Strategy/Tactical_Enhancements.rb` | MEDIUM: Added 9 missing self-stat-drop moves to `SELF_DROP_MOVES` constant and `white_herb_bonus` scoring |
| `2_Move_Intelligence/Item_Intelligence.rb` | MEDIUM: Added 9 missing self-stat-drop moves to `stat_drop_moves` array for White Herb scoring |
| `3_Combat_Mechanics/Move_Categories.rb` | MEDIUM: Added 4 missing drain moves to `RECOVERY_MOVES` hash |
| `1_Core/Utilities.rb` | MEDIUM: Added 3 missing Bulletproof moves to `BALL_BOMB_MOVES`; LOW: Added 2 Gen 9 drain moves to `HEALING_MOVES`; LOW: Fixed `powder_moves` (removed duplicate, invalid entry, added Magic Powder) |
| `5_Format_Specific/Doubles_Coordination.rb` | LOW: Fixed `:WILDSTORMWIND` → `:WILDBOLTSTORM` typo and added `:SANDSEARSTORM` to Wind Rider synergy |
| `3_Combat_Mechanics/Recoil_Tracking.rb` | LOW: Added Light of Ruin and Fillet Away to `RECOIL_MOVES` |

---

## Audit Round 18 — Multi-Hit, Setup, Spread & Type Immunity Cross-Reference

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| `SETUP_MOVES` hash missing 7 Gen 9 / vanilla setup moves | `Move_Categories.rb` | The authoritative `SETUP_MOVES` hash (used by `AdvancedAI.setup_move?` since Move_Categories loads after Utilities and redefines the method) was missing: `:FILLETAWAY` (+2 Atk/SpAtk/Speed, 50% HP cost), `:TAKEHEART` (+1 SpAtk/SpDef, cures status), `:TORCHSONG` (+1 SpAtk, damaging), `:CLANGOROUSSOUL` (+1 all, 33% HP cost), `:WORKUP` (+1 Atk/SpAtk), `:COSMICPOWER` (+1 Def/SpDef), `:SHELTER` (+2 Def). Impact: All callers of `AdvancedAI.setup_move?` (30+ call sites across 15 files) would not recognise these 7 moves as setup, skipping setup bonuses, Taunt/Encore priorities, and personality-based scoring adjustments |
| `MULTI_HIT_MOVES` missing 9 multi-hit moves for Sturdy/Sash bypass | `Tactical_Enhancements.rb` | The `MULTI_HIT_MOVES` constant used for Sturdy awareness (+40) and Focus Sash bypass (+30) was missing: `:DUALCHOP` (2 hits), `:DOUBLESLAP` (2-5 hits), `:GEARGRIND` (2 hits), `:BONEMERANG` (2 hits), `:DRAGONDARTS` (2 hits), `:DOUBLEIRONBASH` (2 hits), `:TRIPLEDIVE` (3 hits, Gen 9), `:TWINBEAM` (2 hits, Gen 9), `:TACHYONCUTTER` (2 hits, Gen 9). AI would not prefer these moves against Sturdy/Sash targets |
| `spread_move?` fallback misses `AllNearOthers` target type | `Move_Categories.rb` | The `spread_move?` method's fallback check (`move.target == :AllNearFoes`) only detected one of the two spread-targeting types. Moves targeting `:AllNearOthers` (Earthquake, Surf, Discharge, Lava Plume, Explosion, etc.) would fail the fallback check if not in the hardcoded list. Fixed to check both `:AllNearFoes` and `:AllNearOthers` |
| Switch damage calc missing Well-Baked Body and Earth Eater type immunities | `Switch_Intelligence.rb` | The type-absorbing ability immunity checks for switch-in damage estimation were missing `:WELLBAKEDBODY` (Fire immunity, Gen 9) and `:EARTHEATER` (Ground immunity, Gen 9). AI would estimate non-zero damage from Fire moves against Well-Baked Body holders and Ground moves against Earth Eater holders when calculating switch-in viability |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| `fixed_hits` hash missing 7 fixed-count multi-hit moves | `Utilities.rb` | The `expected_multi_hits` method's `fixed_hits` lookup was missing: `:DUALWINGBEAT` (2), `:DUALCHOP` (2), `:GEARGRIND` (2), `:TACHYONCUTTER` (2), `:TRIPLEDIVE` (3), `:DOUBLEKICK` (2), `:TWINEEDLE` (2). These moves would fall through to the default 3.17 expected hits instead of their correct fixed counts, inflating damage estimates |
| Mold Breaker `BYPASSED_ABILITIES` missing Well-Baked Body and Earth Eater | `Tactical_Enhancements.rb` | The `BYPASSED_ABILITIES` constant and `mold_breaker_bonus` scoring `when` branch were missing `:WELLBAKEDBODY` and `:EARTHEATER`. AI with Mold Breaker variants wouldn't get the +35 bonus for bypassing these Gen 9 type-absorbing abilities |
| Doubles Wind Rider `wind_moves` already fixed in R17 but Mold Breaker list needed update | `Tactical_Enhancements.rb` | Combined with the BYPASSED_ABILITIES fix above — the `when` branch for type-absorbing abilities now includes both Gen 9 abilities |

### Files Modified (Round 18)
| File | Changes |
|------|---------|
| `2_Move_Intelligence/Move_Categories.rb` | MEDIUM: Added 7 missing setup moves to `SETUP_MOVES` hash (Fillet Away, Take Heart, Torch Song, Clangorour Soul, Work Up, Cosmic Power, Shelter); MEDIUM: Fixed `spread_move?` fallback to include `:AllNearOthers` target type |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | MEDIUM: Added 9 missing multi-hit moves to `MULTI_HIT_MOVES`; LOW: Added Well-Baked Body and Earth Eater to `BYPASSED_ABILITIES` constant and Mold Breaker scoring |
| `1_Core/Utilities.rb` | LOW: Added 7 missing fixed-count multi-hit moves to `fixed_hits` hash |
| `4_Battle_Strategy/Switch_Intelligence.rb` | MEDIUM: Added Well-Baked Body (Fire) and Earth Eater (Ground) type immunity checks |

---

## Audit Round 19 — Weather Consistency, Trapping & Combo Completeness

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| `weather_moves` missing Chilly Reception in Field_Effects | `Field_Effects.rb` | The weather evaluation `weather_moves` hash was missing `:CHILLYRECEPTION => [:Snow]`. AI wouldn't detect that Snow is already active when evaluating Chilly Reception, missing the -50 "already have this weather" penalty and other weather scoring logic |
| `weather_moves` + `weather_map` missing Chilly Reception in Weather_Terrain_Wars (2 places) | `Weather_Terrain_Wars.rb` | Both `move_sets_weather?` and `evaluate_weather_setting` hashes were missing `:CHILLYRECEPTION => :Snow`. AI wouldn't recognize Chilly Reception as a weather-setting move, skipping all weather war evaluation (counter-weather, offensive weather, team benefit scoring) |
| EARTHQUAKE `CLASSIC_COMBOS` missing Earth Eater partner synergy | `Doubles_Coordination.rb` | The Doubles `CLASSIC_COMBOS` table had `EARTHQUAKE => [:LEVITATE, :FLYINGTYPE, :AIRBALLOON, :TELEKINESIS]` but was missing `:EARTHEATER` (Gen 9 ability that heals 25% from Ground moves). AI wouldn't recognize Earthquake + Earth Eater partner as a valid combo (+45 bonus), despite it being the same pattern as Surf + Water Absorb |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| `weather_moves` missing Chilly Reception in Item_Intelligence | `Item_Intelligence.rb` | Weather extender item scoring (Icy Rock for snow) was missing `:CHILLYRECEPTION => "snow"`. AI wouldn't apply the +10 bonus for Icy Rock when using Chilly Reception to set Snow |
| `weather_moves` missing Chilly Reception in Doubles redundancy check | `Doubles_Coordination.rb` | Partner weather redundancy detection (line 45) was missing `:CHILLYRECEPTION`. Two partners both trying to set Snow (one Snowscape, one Chilly Reception) wouldn't get the -20 penalty for redundancy |
| Belly Drum `priority_moves` missing Quick Attack and Accelerock | `Tactical_Enhancements.rb` | The Belly Drum sweep evaluation's local `priority_moves` array (no dynamic fallback) was missing `:QUICKATTACK` and `:ACCELEROCK`. The +50 "Belly Drum + priority = guaranteed sweep" bonus wouldn't apply when the user has these common physical priority moves |
| Perish Trap `trapping_moves` missing 4 trapping moves | `Doubles_Coordination.rb` | The VGC Perish Trap strategy evaluation only had `[:MEANLOOK, :BLOCK, :SPIDERWEB, :SPIRITSHACKLE]`. Added `:ANCHORSHOT`, `:JAWLOCK`, `:THOUSANDWAVES`, `:OCTOLOCK` — all prevent target from escaping, making them valid for Perish Song + trap combos |
| `TRAPPING_MOVES` scoring constant missing Spider Web | `0_Move_Scorer.rb` | The `TRAPPING_MOVES` constant (used for trapping move scoring in singles) had 16 trapping moves but was missing `:SPIDERWEB` (prevents target switching, same effect as Mean Look/Block). Move exists in vanilla PBS |

### Files Modified (Round 19)
| File | Changes |
|------|---------|
| `3_Combat_Mechanics/Field_Effects.rb` | MEDIUM: Added Chilly Reception to `weather_moves` hash |
| `3_Combat_Mechanics/Weather_Terrain_Wars.rb` | MEDIUM: Added Chilly Reception to both `weather_moves` (move_sets_weather?) and `weather_map` (evaluate_weather_setting) |
| `4_Battle_Strategy/Item_Intelligence.rb` | LOW: Added Chilly Reception to weather extender `weather_moves` hash |
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM: Added Earth Eater to EARTHQUAKE `CLASSIC_COMBOS`; LOW: Added Chilly Reception to weather redundancy check; LOW: Added 4 trapping moves to Perish Trap evaluation |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | LOW: Added Quick Attack and Accelerock to Belly Drum `priority_moves` |
| `2_Move_Intelligence/0_Move_Scorer.rb` | LOW: Added Spider Web to `TRAPPING_MOVES` constant |

---

## Audit Round 20 — Sound Moves, Priority & Spread Move Cross-Reference

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| Substitute_Logic `sound_moves` missing 11 sound-flagged status moves | `Substitute_Logic.rb` | The Substitute scoring code had a `sound_moves` list used for two purposes: (1) +60 bonus for sound moves that bypass Substitute, and (2) exempting sound status moves from the -60 "status moves FAIL against Sub" penalty. Missing 11 PBS-verified sound moves: `:GROWL`, `:CONFIDE`, `:NOBLEROAR`, `:PARTINGSHOT`, `:SCREECH`, `:METALSOUND`, `:GRASSWHISTLE`, `:HEALBELL`, `:HOWL`, `:ROAR`, `:CLANGOROUSSOUL`. Without them, these sound-based status moves would incorrectly receive -60 ("fails against Sub") instead of +60 ("bypasses Sub") — a 120-point scoring error |
| Doubles `SPREAD_MOVES` (ProtectiveMovesDoubles) missing Gen 9 + common vanilla spread moves | `Doubles_Coordination.rb` | The `SPREAD_MOVES` constant used for Wide Guard prediction and spread move optimization had no dynamic fallback and was missing: Gen 9 moves (`:SPRINGTIDESTORM`, `:BLEAKWINDSTORM`, `:WILDBOLTSTORM`, `:SANDSEARSTORM`, `:MAKEITRAIN`, `:MATCHAGOTCHA`, `:MORTALSPIN`) plus common vanilla moves (`:ICYWIND`, `:ERUPTION`, `:WATERSPOUT`, `:PETALBLIZZARD`). AI wouldn't predict these as spread moves for Wide Guard scoring or partner protection |
| Doubles_Strategy `SPREAD_MOVES` missing Gen 9 spread moves | `Doubles_Strategy.rb` | The `SPREAD_MOVES` constant used for Wide Guard awareness, spread damage multiplier, and strategic positioning (no dynamic fallback) was missing: `:SPRINGTIDESTORM`, `:BLEAKWINDSTORM`, `:WILDBOLTSTORM`, `:SANDSEARSTORM`, `:MAKEITRAIN`, `:MATCHAGOTCHA`, `:MORTALSPIN`, plus `:HYPERVOICE` and `:DIAMONDSTORM`. AI wouldn't apply the 0.75x spread damage multiplier or Wide Guard adjustments for these moves |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| `PRIORITY_MOVES` missing Thunderclap and Upper Hand (Gen 9) | `Move_Categories.rb` | Added `:THUNDERCLAP` (+1 Priority, fails if target acted) and `:UPPERHAND` (+3 Priority, flinch, fails if target not using priority). While `priority_move?` has a dynamic fallback (`move.priority > 0`), the constant is referenced directly in some contexts |
| Doubles `PRIORITY_MOVES` missing Upper Hand | `Doubles_Coordination.rb` | Quick Guard prediction array (no dynamic fallback) already had `:THUNDERCLAP` but was missing `:UPPERHAND` (+3 Priority). Quick Guard blocks it when used in Grassy Terrain prediction contexts |
| Move_Categories `SPREAD_MOVES` missing 13 common spread moves | `Move_Categories.rb` | While `spread_move?` has a dynamic fallback (fixed in R18), the hardcoded list was missing: `:BOOMBURST`, `:HYPERVOICE`, `:EXPLOSION`, `:SELFDESTRUCT`, `:SLUDGEWAVE`, `:ICYWIND`, `:ERUPTION`, `:WATERSPOUT`, `:PETALBLIZZARD`, `:DIAMONDSTORM`, `:MAGNITUDE`, plus Gen 9 spread moves. Added all for consistency and faster lookups |

### Files Modified (Round 20)
| File | Changes |
|------|---------|
| `3_Combat_Mechanics/Substitute_Logic.rb` | MEDIUM: Added 11 missing sound status moves to Substitute bypass `sound_moves` list |
| `2_Move_Intelligence/Move_Categories.rb` | LOW: Added Thunderclap and Upper Hand to `PRIORITY_MOVES`; LOW: Added 13+ missing spread moves to `SPREAD_MOVES` (Gen 9 + common vanilla) |
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM: Added 7 Gen 9 + 4 vanilla spread moves to `SPREAD_MOVES`; LOW: Added Upper Hand to `PRIORITY_MOVES` |
| `5_Format_Specific/Doubles_Strategy.rb` | MEDIUM: Added 7 Gen 9 + 2 vanilla spread moves to `SPREAD_MOVES` |

---

## Audit Round 21 — Protect Variant & Recovery Move Completeness

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| `evaluate_protect_doubles` missing 3 Gen 8/9 protect variants | `Doubles_Coordination.rb` | The function was gated on `[:PROTECT, :DETECT, :KINGSSHIELD, :SPIKYSHIELD, :BANEFULBUNKER]` — missing `:OBSTRUCT`, `:SILKTRAP`, `:BURNINGBULWARK`. Any Pokémon using these 3 protect variants would have the entire doubles protect evaluation skipped (0 score), missing spread-dodge, partner-setup support, and threat-based Protect bonuses |
| Toxic → Protect stall detection missing 5 protect variants | `Tactical_Enhancements.rb` | The multi-turn plan detection for Toxic stall only checked `:PROTECT`, `:BANEFULBUNKER`, `:SPIKYSHIELD`. Missing `:DETECT`, `:KINGSSHIELD`, `:OBSTRUCT`, `:SILKTRAP`, `:BURNINGBULWARK`. Obstagoon (Toxic + Obstruct) and similar sets would miss the +20 stall plan bonus |
| Win Conditions stall detection missing 4 protect variants | `Win_Conditions.rb` | The stall mon identification check only had `[:PROTECT, :DETECT, :BANEFULBUNKER, :SPIKYSHIELD]` — missing `:KINGSSHIELD`, `:OBSTRUCT`, `:SILKTRAP`, `:BURNINGBULWARK`. Pokémon with Gen 8/9 Protect variants wouldn't get the +15 stall mon score |
| Win Conditions recovery checks missing key recovery moves | `Win_Conditions.rb` | Two separate recovery checks for attrition/stall win conditions were missing common competitive recovery moves. Attrition check (line 164) missed `:SLACKOFF`, `:SHOREUP`, `:STRENGTHSAP`. Stall mon check (line 197) missed `:MORNINGSUN`, `:SHOREUP`, `:STRENGTHSAP`. Slowbro (Slack Off), Palossand (Shore Up), Trevenant (Strength Sap) wouldn't be identified as viable stall/attrition Pokémon |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| Wish + Protect combo detection missing 6 protect variants | `Tactical_Enhancements.rb` | Only checked `:PROTECT` and `:BANEFULBUNKER` for Wish-pass guarantee detection. Missing `:DETECT`, `:SPIKYSHIELD`, `:KINGSSHIELD`, `:OBSTRUCT`, `:SILKTRAP`, `:BURNINGBULWARK`. Umbreon (Wish + Detect) is a classic competitive set that would miss the +10 bonus |
| Trick Room setter Protect missing 5 variants | `Tactical_Enhancements.rb` | TR setter support scoring only checked `PROTECT`, `BANEFULBUNKER`, `SPIKYSHIELD`. Missing `:DETECT`, `:KINGSSHIELD`, `:OBSTRUCT`, `:SILKTRAP`, `:BURNINGBULWARK`. TR setters with alternative protect moves wouldn't get the +15 "Protect while sweeper attacks" bonus |
| Stall mode Protect scoring only checked 2 of 8 variants | `Win_Conditions.rb` | The `:stall` win condition Protect scoring only checked `[:PROTECT, :DETECT]` — missing all 6 other protect variants. Added all 8 to bring inline with canonical `PROTECT_MOVES` hash |
| Stall mode recovery scoring missing 6 recovery moves | `Win_Conditions.rb` | The `:stall` win condition recovery scoring only checked `[:RECOVER, :ROOST, :SOFTBOILED]` — missing `:SLACKOFF`, `:MOONLIGHT`, `:MORNINGSUN`, `:SYNTHESIS`, `:SHOREUP`, `:STRENGTHSAP`. Common stall recovery users like Hippowdon and Slowbro were undervalued |
| Attrition mode recovery scoring missing 5 recovery moves | `Win_Conditions.rb` | The `:attrition` win condition recovery scoring only checked `[:RECOVER, :ROOST, :SOFTBOILED, :SYNTHESIS]` — missing `:SLACKOFF`, `:MOONLIGHT`, `:MORNINGSUN`, `:SHOREUP`, `:STRENGTHSAP` |
| Taunt recovery value check missing 7 recovery moves | `Disruption_Moves.rb` | Taunt evaluation's recovery move list was missing `:SHOREUP`, `:STRENGTHSAP`, `:LIFEDEW`, `:MILKDRINK`, `:HEALORDER`, `:JUNGLEHEALING`, `:LUNARBLESSING`. Taunting a Palossand (Shore Up) or Trevenant (Strength Sap) wouldn't get the +45 "blocks recovery" bonus |

### Files Modified (Round 21)
| File | Changes |
|------|--------|
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM: Added Obstruct, Silk Trap, Burning Bulwark to `evaluate_protect_doubles` gate check |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | MEDIUM: Added 5 protect variants to Toxic stall detection; LOW: Added 6 protect variants to Wish+Protect combo; LOW: Added 5 protect variants to TR setter Protect scoring |
| `6_Meta_Mechanics/Win_Conditions.rb` | MEDIUM: Added 4 protect variants to stall mon detection + 3 recovery moves to attrition check + 3 recovery moves to stall mon check; LOW: Added 6 protect variants to stall Protect scoring; LOW: Added 6 recovery moves to stall recovery scoring; LOW: Added 5 recovery moves to attrition recovery scoring |
| `2_Move_Intelligence/Disruption_Moves.rb` | LOW: Added 7 missing recovery moves to Taunt evaluation's recovery value check |

---

## Audit Round 22 — Pivot Move & Setup Move Cross-Reference

### MEDIUM Fixes
| Bug | File | Detail |
|-----|------|--------|
| `has_pivot_moves?` missing Shed Tail and Chilly Reception | `Role_Detection.rb` | Role detection's pivot move check only had 6 of 8 canonical pivot moves — missing `:SHEDTAIL` and `:CHILLYRECEPTION`. Pokémon with these Gen 9 pivot moves wouldn't be classified as having pivot moves, affecting role detection (Pivot role assignment) |
| Strategic Awareness `PIVOT_MOVES` missing Shed Tail and Chilly Reception | `Strategic_Awareness.rb` | The archetype detection constant used for opponent team analysis was missing `:SHEDTAIL` and `:CHILLYRECEPTION`. Teams running these Gen 9 pivots wouldn't count toward pivot-heavy archetype detection |
| Doubles `partner_is_setting_up?` missing 9 Gen 8/9 setup moves | `Doubles_Coordination.rb` | The check controlling Follow Me/Rage Powder redirect decisions and Helping Hand targeting only had 12 setup moves — missing `:VICTORYDANCE`, `:FILLETAWAY`, `:TIDYUP`, `:NORETREAT`, `:CLANGOROUSSOUL`, `:SHIFTGEAR`, `:COIL`. Redirectors wouldn't protect partners using these Gen 8/9 setup moves |
| Taunt `setup_moves` value check missing 7 Gen 8/9 setup moves | `Disruption_Moves.rb` | The Taunt evaluation's setup value detection (worth +60 score) only had 10 setup moves — missing `:VICTORYDANCE`, `:FILLETAWAY`, `:TIDYUP`, `:SHIFTGEAR`, `:NORETREAT`, `:CLANGOROUSSOUL`, `:GEOMANCY`. Taunting an Espathra (Calm Mind already covered, but not its cousin Geomancy) or Annihilape (Victory Dance) wouldn't get the +60 "blocks setup" bonus |

### LOW Fixes
| Bug | File | Detail |
|-----|------|--------|
| Future Sight `pivot_moves` missing Shed Tail and Chilly Reception | `Tactical_Enhancements.rb` | Future Sight combo detection's pivot check was missing 2 Gen 9 pivots. Users with Shed Tail (creates Sub + switches) or Chilly Reception (sets Snow + switches) wouldn't get the +10 "can pivot out after Future Sight" bonus |
| Battle Personalities `has_u_turn` missing Shed Tail and Chilly Reception | `Battle_Personalities.rb` | Personality detection's pivot check was missing 2 Gen 9 pivots. Pokémon with Shed Tail/Chilly Reception wouldn't be identified as pivot users for personality assignment |
| Quash `setup_moves` missing Gen 9 setup moves | `Doubles_Coordination.rb` | Quash evaluation's setup sweeper detection (worth +35) had only 5 setup moves — added `:CALMMIND`, `:VICTORYDANCE`, `:FILLETAWAY`, `:GEOMANCY`. Missing these meant Quash wouldn't be prioritized against Gen 9 setup sweepers |
| Memento/Lunar Dance setup sweeper check missing Gen 9 setup moves | `Doubles_Coordination.rb` | Party setup sweeper detection for sacrifice moves (Memento etc.) had 6 setup moves — added `:VICTORYDANCE`, `:FILLETAWAY`, `:GEOMANCY`. Party members with these Gen 9 setup moves wouldn't be detected as valuable sacrifice targets |
| Toxic `stall_moves` array incomplete | `0_Move_Scorer.rb` | The Toxic evaluation's stall synergy check ("can stall out Toxic damage") only checked 7 moves — missing all protect variants beyond Protect/Detect and recovery moves beyond Recover/Roost/Softboiled. Expanded to 19 moves including all 8 protect variants and 11 recovery moves |

### Files Modified (Round 22)
| File | Changes |
|------|--------|
| `4_Battle_Strategy/Role_Detection.rb` | MEDIUM: Added Shed Tail and Chilly Reception to pivot move detection |
| `4_Battle_Strategy/Strategic_Awareness.rb` | MEDIUM: Added Shed Tail and Chilly Reception to `PIVOT_MOVES` constant |
| `2_Move_Intelligence/Disruption_Moves.rb` | MEDIUM: Added 7 Gen 8/9 setup moves to Taunt evaluation's setup value check |
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM: Added 9 setup moves to `partner_is_setting_up?`; LOW: Added 4 setup moves to Quash evaluation; LOW: Added 3 setup moves to Memento/sacrifice evaluation |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | LOW: Added Shed Tail and Chilly Reception to Future Sight pivot detection |
| `6_Meta_Mechanics/Battle_Personalities.rb` | LOW: Added Shed Tail and Chilly Reception to personality pivot detection |
| `2_Move_Intelligence/0_Move_Scorer.rb` | LOW: Expanded Toxic `stall_moves` from 7 to 19 entries (all protect variants + recovery moves) |

---

## Audit Round 23 — Weather Ability Consistency & Setup Move Completeness (Remaining Inline Arrays)

**Scope:** Cross-referenced all weather-synergy ability hashes and remaining inline `setup_moves` arrays against canonical constants (Strategic_Awareness `SUN_ABUSERS`/`RAIN_ABUSERS`/etc., Move_Categories `SETUP_MOVES`). Fixed 10 inconsistencies across 7 files.

**Pattern found:** Weather ability hashes in 4 locations were missing abilities that the canonical lists in Strategic_Awareness.rb already had. Additionally, 4 more inline `setup_moves` arrays (Encore, Sleep Clause, Learning System, Fake Out targeting) were still using small subsets despite canonical list having 17+ entries. Doubles_Strategy Fake Out partner check missed Aurora Veil and all setup sweeper moves.

### Bug Details (Round 23)
| Bug | File | Impact |
|-----|------|--------|
| Inline `weather_synergy` hash missing 6 abilities + `:Hail` key | `Doubles_Coordination.rb` | Switch prediction's weather synergy check at line 3131 only had 3 Sun, 3 Rain, 2 Sand, 2 Snow abilities vs canonical 6/4/3/3. Missing `:LEAFGUARD`, `:HARVEST`, `:PROTOSYNTHESIS` for Sun; `:HYDRATION` for Rain; `:SANDVEIL` for Sand; `:SNOWCLOAK`/`:ICEFACE` for Snow. Also no `:Hail` key at all |
| `weather_benefits_opponent?` hash missing Sun/Rain abilities | `Weather_Terrain_Wars.rb` | The opponent weather benefit check at line 118 had only 3 Sun abilities (missing Leaf Guard, Harvest, Protosynthesis) and 3 Rain abilities (missing Hydration). Opponents with these abilities wouldn't be detected as weather beneficiaries |
| `weather_activates_ability?` hash missing Sun/Rain abilities | `Weather_Terrain_Wars.rb` | Second weather hash at line 289 had 4 Sun abilities (missing Leaf Guard, Harvest) and 3 Rain abilities (missing Hydration). User's own weather activation check was incomplete |
| `count_weather_synergy` missing `:PROTOSYNTHESIS` for Sun | `Field_Effects.rb` | Party weather synergy counting for Sun had 5 abilities but missed Protosynthesis — Paradox Pokémon with Protosynthesis wouldn't count toward Sun team synergy |
| `WEATHER_SYNERGY` constant missing `:ICEFACE` from Hail/Snow | `Doubles_Coordination.rb` | The canonical doubles weather synergy constant at line 713 was missing Ice Face (Eiscue's signature ability) from both Hail and Snow entries |
| Encore `setup_moves` only 5 entries — missing 12 | `Disruption_Moves.rb` | Encore evaluation's setup move detection had only Swords Dance, Nasty Plot, Dragon Dance, Shell Smash, Calm Mind. Missing Quiver Dance, Bulk Up, Agility, Rock Polish, Coil + 7 Gen 8/9 moves. Encore wouldn't be valued against these setup moves at any boost stage |
| Sleep Clause `setup_moves` only 8 entries — missing 9 Gen 8/9 | `Sleep_Clause.rb` | Sleep exploitation's "safe to set up while they sleep" check had 8 moves — missing Rock Polish, Coil + 7 Gen 8/9 (Victory Dance, Fillet Away, Tidy Up, Shift Gear, No Retreat, Clangorous Soul, Geomancy). AI wouldn't recognize these as safe setup opportunities during sleep |
| Learning System `is_setup_move?` only 11 entries — missing 9 | `Learning_System.rb` | Pattern learning's setup move classifier had 11 entries — missing Coil, Growth, Work Up + 6 Gen 8/9 (Victory Dance, Fillet Away, Tidy Up, Shift Gear, No Retreat, Clangorous Soul). AI couldn't learn opponent setup patterns for these moves |
| Fake Out `setup_moves` only 4 entries for target prioritization | `Doubles_Coordination.rb` | Fake Out target prioritization (worth +40) only checked Swords Dance, Nasty Plot, Dragon Dance, Shell Smash. Expanded to 17 entries — AI now correctly prioritizes flinching opponents with any setup move |
| Fake Out partner setup check missing Aurora Veil + setup sweepers | `Doubles_Strategy.rb` | Fake Out's partner setup detection (worth +60) only checked Tailwind, Trick Room, Reflect, Light Screen. Missing Aurora Veil and all actual setup sweeper moves — AI wouldn't value Fake Out when partner had Aurora Veil or was a setup sweeper |

### Files Modified (Round 23)
| File | Changes |
|------|--------|
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM: Expanded inline `weather_synergy` from 10→22 abilities + added Hail key; MEDIUM: Added `:ICEFACE` to `WEATHER_SYNERGY` constant Hail/Snow; LOW: Expanded Fake Out `setup_moves` from 4→17 |
| `3_Combat_Mechanics/Weather_Terrain_Wars.rb` | MEDIUM: Added 4 abilities to `weather_benefits_opponent?` hash; LOW: Added 3 abilities to `weather_activates_ability?` hash |
| `3_Combat_Mechanics/Field_Effects.rb` | LOW: Added `:PROTOSYNTHESIS` to Sun synergy in `count_weather_synergy` |
| `2_Move_Intelligence/Disruption_Moves.rb` | MEDIUM: Expanded Encore `setup_moves` from 5→17 |
| `3_Combat_Mechanics/Sleep_Clause.rb` | LOW: Expanded setup_moves from 8→17 for sleep exploitation |
| `4_Battle_Strategy/Learning_System.rb` | LOW: Expanded `is_setup_move?` from 11→20 |
| `5_Format_Specific/Doubles_Strategy.rb` | LOW: Added Aurora Veil + 10 setup sweeper moves to Fake Out partner check |

---

## Audit Round 24 — Ability Array Completeness, Flinch Immunity, Speed Control, Contrary Moves
*Found 12 bugs across 7 files (5 MEDIUM, 7 LOW)*

### Bug Category: Trick/Switcheroo Recovery Detection (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| Trick/Switcheroo `recovery_moves` only 5 entries + includes PROTECT | `Disruption_Moves.rb` | Choice Trick wall-locking detection had only Recover, Roost, Wish, Rest, Protect — Protect is NOT a recovery move, and 11 actual recovery moves missing (Soft-Boiled, Slack Off, Moonlight, Synthesis, Morning Sun, Shore Up, Strength Sap, Life Dew, Milk Drink, Heal Order, Jungle Healing, Lunar Blessing). AI couldn't identify walls to lock with Choice items |

### Bug Category: Terrain Ability Synergy Gaps (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| `TERRAIN_ABILITIES[:Electric]` missing Quark Drive + Hadron Engine | `Doubles_Coordination.rb` | Doubles terrain synergy only detected Surge Surfer for Electric Terrain. Quark Drive (Paradox Pokemon) and Hadron Engine (Iron Valiant) both activate in Electric Terrain — AI wouldn't value Electric Terrain for these Pokemon |

### Bug Category: Weather Ability Array Completeness (MEDIUM + LOW)
| Bug | File | Impact |
|-----|------|--------|
| `count_weather_synergy` Sun party count missing 4 abilities | `Field_Effects.rb` | Sun synergy only counted Chlorophyll, Drought, Solar Power. Missing Leaf Guard, Flower Gift, Harvest, Protosynthesis — undercounted team synergy for weather-setting moves |
| `count_weather_synergy` Rain party count missing 2 abilities | `Field_Effects.rb` | Rain synergy only counted Swift Swim, Drizzle, Rain Dish. Missing Dry Skin, Hydration |
| `count_weather_synergy` Sand party count missing Sand Veil | `Field_Effects.rb` | Sand synergy only counted Sand Rush, Sand Stream, Sand Force. Missing Sand Veil |
| `count_weather_synergy` Hail/Snow missing Snow Cloak + Ice Face | `Field_Effects.rb` | Hail/Snow synergy only counted Slush Rush, Snow Warning, Ice Body. Missing Snow Cloak, Ice Face |
| Hail/Snow opponent benefit check missing Ice Face | `Field_Effects.rb` | Weather war aggression didn't detect Ice Face as benefiting from Hail/Snow |
| Electric Terrain opponent check missing Hadron Engine | `Field_Effects.rb` | Terrain war only checked Surge Surfer + Quark Drive, missing Hadron Engine |
| Grassy Terrain opponent check missing Grass Pelt | `Field_Effects.rb` | Terrain war only checked Grass typing, not Grass Pelt ability |
| `count_weather_synergy` hash missing Ice Face in Hail/Snow | `Field_Effects.rb` | Centralized weather synergy hash for Hail/Snow only had Slush Rush, Ice Body, Snow Cloak |
| `weather_benefits_opponent?` Hail/Snow missing Ice Face | `Weather_Terrain_Wars.rb` | Opponent weather detection didn't check Ice Face for Hail/Snow benefit |
| `weather_activates_ability?` Hail/Snow missing Ice Face | `Weather_Terrain_Wars.rb` | Ability activation detection for Hail/Snow missing Ice Face |
| `calculate_weather_benefit` Sun missing 3 abilities | `Weather_Terrain_Wars.rb` | Sun benefit calculation only checked Chlorophyll, Solar Power, Flower Gift — missing Leaf Guard, Harvest, Protosynthesis |
| `calculate_weather_benefit` Rain missing Hydration | `Weather_Terrain_Wars.rb` | Rain benefit calculation only checked Swift Swim, Rain Dish, Dry Skin — missing Hydration |
| `calculate_weather_benefit` Hail/Snow missing Ice Face | `Weather_Terrain_Wars.rb` | Individual ability benefit checks for Hail/Snow didn't include Ice Face regeneration |
| `terrain_benefits_opponent?` missing ability checks | `Weather_Terrain_Wars.rb` | Electric Terrain only checked move types, not Surge Surfer/Quark Drive/Hadron Engine. Grassy Terrain only checked move types, not Grass Pelt |
| `terrain_activates_ability?` missing Hadron Engine | `Weather_Terrain_Wars.rb` | Electric Terrain ability activation only had Surge Surfer + Quark Drive, missing Hadron Engine |

### Bug Category: Flinch Immunity False Positives (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| Flinch immunity check includes Own Tempo + Oblivious | `0_Move_Scorer.rb` | Flinch bonus calculation skipped targets with Own Tempo (prevents confusion) or Oblivious (prevents Attract/Taunt). Neither prevents flinching — only Inner Focus does. AI would avoid flinching these targets unnecessarily |

### Bug Category: Contrary Stat-Lowering Move Completeness (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| `setup_beneficial?` stat_lowering_moves only 10 entries — missing 8 | `Utilities.rb` | Contrary detection for setup_beneficial? only had 10 self-stat-drop moves. Missing Make It Rain, Headlong Rush, Armor Cannon, Dragon Ascent, Ice Hammer, Spin Out, Clanging Scales, Hyperspace Fury. Contrary Pokemon wouldn't recognize these as beneficial |

### Bug Category: Speed Control Move Gaps (LOW)
| Bug | File | Impact |
|-----|------|--------|
| `SPEED_CONTROL_MOVES` missing Glaciate | `Doubles_Coordination.rb` | Doubles speed control only had 5 moves — missing Glaciate (65 BP Ice spread, 100% lowers Speed). Kyurem's signature move wouldn't get speed control bonus in doubles |
| Speed-drop attack evaluation missing Glaciate, Mud Shot, Drum Beating | `Speed_Tiers.rb` | Speed tier evaluation only had 5 speed-dropping attacks — missing Glaciate, Mud Shot (55 BP Ground), Drum Beating (80 BP Grass, Rillaboom). These moves wouldn't get speed control scoring bonus |

### Files Modified (Round 24)
| File | Changes |
|------|--------|
| `2_Move_Intelligence/Disruption_Moves.rb` | MEDIUM: Trick/Switcheroo recovery_moves expanded from 5→16, removed PROTECT, added 12 actual recovery moves |
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM: TERRAIN_ABILITIES[:Electric] expanded from 1→3 abilities; LOW: SPEED_CONTROL_MOVES added Glaciate |
| `3_Combat_Mechanics/Field_Effects.rb` | MEDIUM: Sun party count 3→7 abilities; Rain 3→5; Sand 3→4; Hail/Snow 3→5; opponent Hail/Snow +Ice Face; terrain Electric +Hadron Engine; terrain Grassy +Grass Pelt; count_weather_synergy Hail/Snow +Ice Face |
| `3_Combat_Mechanics/Weather_Terrain_Wars.rb` | MEDIUM: weather_benefits_opponent? Hail/Snow +Ice Face; weather_activates_ability? Hail/Snow +Ice Face; calculate_weather_benefit Sun +3 abilities, Rain +Hydration, Hail/Snow +Ice Face; terrain_benefits_opponent? Electric +3 abilities, Grassy +Grass Pelt; terrain_activates_ability? +Hadron Engine |
| `1_Core/Utilities.rb` | MEDIUM: stat_lowering_moves expanded from 10→18 for Contrary detection |
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: Removed false-positive flinch immunity for Own Tempo/Oblivious |
| `5_Format_Specific/Speed_Tiers.rb` | LOW: Speed-drop attack evaluation expanded from 5→8 moves |

---

## Audit Round 25 — Wind Moves, Weather/Terrain Setter Detection, Partner Coordination
*Found 5 bugs across 1 file (3 MEDIUM, 2 LOW)*

### Bug Category: Wind Move Array Completeness (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| Wind Rider `wind_moves` missing 7 wind moves | `Doubles_Coordination.rb` | Wind Rider partner synergy only checked Tailwind + 4 Eevee forces (Bleakwind/Springtide/Wildbolt/Sandsear Storm). Missing Icy Wind, Blizzard, Petal Blizzard, Hurricane, Gust, Twister, Fairy Wind — AI wouldn't recognize using these spread wind moves as boosting Wind Rider partner |

### Bug Category: Weather Setter Ability Gaps (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| `WEATHER_ABILITIES` setter constant missing 4 abilities | `Doubles_Coordination.rb` | Weather coordination's setter detection only had Drought/Drizzle/Sand Stream/Snow Warning. Missing Orichalcum Pulse + Desolate Land (Sun), Primordial Sea (Rain), Sand Spit (Sandstorm). AI wouldn't detect weather conflicts when partner has these abilities |

### Bug Category: Terrain Setter + Partner Coordination Gaps (MEDIUM + LOW)
| Bug | File | Impact |
|-----|------|--------|
| `terrain_setters` missing Hadron Engine for Electric | `Doubles_Coordination.rb` | Terrain switch-in awareness only had Electric Surge for Electric Terrain. Missing Hadron Engine — AI wouldn't recognize ally Miraidon/Iron Crown as Electric Terrain setter |
| Electric Terrain partner check missing Quark Drive + Hadron Engine | `Doubles_Coordination.rb` | Terrain coordination only checked Surge Surfer. Partners with Quark Drive (Paradox Pokemon) or Hadron Engine wouldn't get +35 bonus for Electric Terrain setup |
| Grassy Terrain partner check missing Grass Pelt | `Doubles_Coordination.rb` | Grassy Terrain coordination only checked Grass typing, not Grass Pelt ability. Partners with Grass Pelt (Gogoat) wouldn't get terrain bonus |

### Files Modified (Round 25)
| File | Changes |
|------|--------|
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM: Wind moves expanded from 5→12; MEDIUM: WEATHER_ABILITIES expanded with 4 setter abilities; MEDIUM: terrain_setters Electric +Hadron Engine; LOW: Electric Terrain partner +Quark Drive/Hadron Engine; LOW: Grassy Terrain partner +Grass Pelt |

---

## Audit Round 26 — Custom Content Weather Synergy, Win Condition Recovery, Contact Punishment Abilities

**Scope:** Custom_Content.rb weather ability synergy gaps, Win_Conditions.rb incomplete recovery move arrays affecting stall/attrition detection, 0_Move_Scorer.rb contact punishment missing 4 abilities defined in Utilities.rb hash.

**Files Modified:** 3 — Custom_Content.rb, Win_Conditions.rb, 0_Move_Scorer.rb

### Bug Category: Custom Content Weather Synergy Gaps (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| `benefits_from_weather?` Sun missing :HARVEST | `Custom_Content.rb` | All other weather files (Field_Effects, Weather_Terrain_Wars, Strategic_Awareness, Doubles_Coordination) include Harvest in Sun abilities. Custom_Content was the only file missing it — Harvest Pokemon (Tropius, Exeggutor) wouldn't register as Sun beneficiaries |
| `benefits_from_weather?` Hail/Snow had :OVERCOAT instead of :ICEFACE | `Custom_Content.rb` | All other files use ICEFACE for Hail/Snow synergy. Custom_Content uniquely had OVERCOAT (which is just chip damage immunity, not a synergy ability). Eiscue (Ice Face reforms in Hail/Snow) was completely missed |

### Bug Category: Win Conditions Recovery Array Gaps (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| 4 recovery move arrays missing 7 key moves | `Win_Conditions.rb` | Attrition detection, stall detection, and their respective move scoring (4 separate locations) only had 9 recovery moves vs 16 in Disruption_Moves.rb. Missing: WISH (most common defensive recovery), REST (extremely common with Sleep Talk), MILKDRINK, HEALORDER (Recover clones), LIFEDEW, JUNGLEHEALING, LUNARBLESSING (team heals). Stall/attrition win conditions underdetected for teams relying on these moves |

### Bug Category: Contact Punishment Missing Abilities (LOW)
| Bug | File | Impact |
|-----|------|--------|
| `score_contact_punishment` missing Cute Charm | `0_Move_Scorer.rb` | Cute Charm (30% infatuation on contact, opposite gender) was in CONTACT_PUNISH_ABILITIES hash in Utilities.rb but never scored. Opposite-gender contact moves against Cute Charm targets got no penalty |
| `score_contact_punishment` missing Cotton Down | `0_Move_Scorer.rb` | Cotton Down (-1 Speed to all when hit) was in Utilities hash but not scored. AI didn't account for speed loss from contacting Cotton Down targets |
| `score_contact_punishment` missing Electromorphosis | `0_Move_Scorer.rb` | Electromorphosis (gains Charge when hit — doubles next Electric move) was in Utilities hash but not scored. AI didn't penalize activating this dangerous ability on contact |
| `score_contact_punishment` missing Anger Shell | `0_Move_Scorer.rb` | Anger Shell (below 50%: +1 Atk/SpAtk/Speed, -1 Def/SpDef) was in Utilities hash but not scored. AI didn't account for potentially triggering dangerous offensive boosts |

### Files Modified (Round 26)
| File | Changes |
|------|--------|
| `7_Integration/Custom_Content.rb` | MEDIUM: Sun +Harvest; MEDIUM: Hail/Snow Overcoat→Ice Face |

---

## Audit Round 27 — Terrain/Weather Move Scoring & Recovery Array Gaps

**Scope:** Field_Effects.rb terrain/weather move handling, Custom_Content.rb
weather synergy, Battle_Personalities.rb team archetype detection, 0_Move_Scorer.rb
Toxic stall synergy.

**Files Modified:** 4 — Field_Effects.rb, Custom_Content.rb, Battle_Personalities.rb, 0_Move_Scorer.rb

### Bug Category: Terrain-Boosted Moves Missing from Singles Handler (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| Electric Terrain missing Rising Voltage bonus | `Field_Effects.rb` | Rising Voltage doubles power (80→160 BP) when used in Electric Terrain. Psyblade and Terrain Pulse were handled but Rising Voltage was not — AI undervalued one of the strongest terrain-boosted moves. Only handled in Doubles_Coordination.rb, completely absent from singles terrain_bonus |
| Psychic Terrain missing Expanding Force bonus | `Field_Effects.rb` | Expanding Force gets power boost + becomes spread in Psychic Terrain. Only Terrain Pulse was handled for Psychic Terrain — AI missed another key terrain-boosted move. Only handled in Doubles_Coordination.rb |

### Bug Category: Solar Beam/Blade Missing Non-Sun Penalty (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| Solar Beam/Blade no penalty in Rain | `Field_Effects.rb` | Solar Beam/Blade deals HALF damage in Rain (Gen 5+), but the Rain section had no -25 penalty. AI would happily use Solar Beam in Rain at full expected value |
| Solar Beam/Blade no penalty in Sandstorm | `Field_Effects.rb` | Same half-damage mechanic in Sandstorm — missing -25 penalty |
| Solar Beam/Blade no penalty in Hail | `Field_Effects.rb` | Same half-damage mechanic in Hail — missing -25 penalty |
| Solar Beam/Blade no penalty in Snow | `Field_Effects.rb` | Same half-damage mechanic in Snow — missing -25 penalty |

### Bug Category: Weather Synergy Spurious Ability (LOW)
| Bug | File | Impact |
|-----|------|--------|
| Sandstorm `benefits_from_weather?` includes :OVERCOAT | `Custom_Content.rb` | Overcoat only provides immunity to weather chip damage and powder moves — it's a passive immunity, not an active synergy like Sand Rush (2x Speed), Sand Veil (evasion), or Sand Force (30% power boost). Mon with Overcoat doesn't WANT Sandstorm, it just tolerates it. Inflated Sand team synergy detection |

### Bug Category: Recovery Array Gaps in Team Detection & Toxic Stall (LOW)
| Bug | File | Impact |
|-----|------|--------|
| Battle_Personalities recovery array missing 4 moves | `Battle_Personalities.rb` | Wall/stall team archetype detection had 12 recovery moves, missing :REST, :LIFEDEW, :JUNGLEHEALING, :LUNARBLESSING. Pokemon using Rest (extremely common defensive option) weren't detected as walls/stallers for team composition analysis |
| 0_Move_Scorer Toxic stall recovery array missing 5 moves | `0_Move_Scorer.rb` | Toxic synergy scoring checked if user knows stall moves, but recovery list only had 11 entries — missing :MILKDRINK, :HEALORDER, :LIFEDEW, :JUNGLEHEALING, :LUNARBLESSING. Pokemon with these recovery moves didn't get the +40 Toxic stall synergy bonus |

### Files Modified (Round 27)
| File | Changes |
|------|--------|
| `3_Combat_Mechanics/Field_Effects.rb` | MEDIUM: +Rising Voltage in Electric Terrain; MEDIUM: +Expanding Force in Psychic Terrain; MEDIUM: Solar Beam/Blade -25 penalty in Rain/Sand/Hail/Snow (4 weather sections) |
| `7_Integration/Custom_Content.rb` | LOW: Remove :OVERCOAT from Sandstorm synergy |
| `6_Meta_Mechanics/Battle_Personalities.rb` | LOW: Recovery array 12→16 entries (+REST, LIFEDEW, JUNGLEHEALING, LUNARBLESSING) |
| `2_Move_Intelligence/0_Move_Scorer.rb` | LOW: Toxic stall recovery array 11→16 entries (+MILKDRINK, HEALORDER, LIFEDEW, JUNGLEHEALING, LUNARBLESSING) |
| `6_Meta_Mechanics/Win_Conditions.rb` | MEDIUM: 4× recovery arrays expanded 9→16 entries (+Wish, Rest, Milkdrink, Healorder, Lifedew, Junglehealing, Lunarblessing) |
| `2_Move_Intelligence/0_Move_Scorer.rb` | LOW: score_contact_punishment +Cute Charm, +Cotton Down, +Electromorphosis, +Anger Shell |

---

## Audit Round 28 — Accuracy Abilities, Freeze-Dry, Sheer Force + Life Orb, Sound Moves

**Scope:** 0_Move_Scorer.rb accuracy scoring, Recoil_Tracking.rb Life Orb interaction,
Substitute_Logic.rb sound move bypass list, type effectiveness for Freeze-Dry.

**Files Modified:** 3 — 0_Move_Scorer.rb, Recoil_Tracking.rb, Substitute_Logic.rb

### Bug Category: Accuracy Scoring Missing Ability Modifiers (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| Hustle 0.8× accuracy penalty never applied | `0_Move_Scorer.rb` | Hustle reduces physical move accuracy to 80% (0.8× multiplier). The comment in the damage calc said "accuracy penalty handled elsewhere" but it was never applied anywhere. A 100% accuracy physical move under Hustle is really 80% accurate (should get -20 penalty) but got 0 penalty. AI overvalued physical moves for Hustle users like Darumaka, Durant, Delibird |
| Victory Star 1.1× accuracy boost unhandled | `0_Move_Scorer.rb` | Victory Star (Victini's ability) boosts accuracy of all moves by 1.1×. Compound Eyes (1.3×) was handled but Victory Star was completely missing. Moves with 90% accuracy become 99% with Victory Star — AI didn't account for this reduced miss chance |

### Bug Category: Freeze-Dry Type Effectiveness Wrong (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| Freeze-Dry not SE against Water types | `0_Move_Scorer.rb` | Freeze-Dry is an Ice-type move that is ALWAYS super-effective against Water types, regardless of the normal type chart. `Effectiveness.calculate` uses the standard type chart where Ice is NVE against Water. Without a special override, the AI calculated Freeze-Dry as NVE (0.5×) against Water types when it should be SE (2×). Massive 4× miscalculation against pure Water targets. Fixed in both `score_type_effectiveness` and `estimate_damage` |

### Bug Category: Sheer Force + Life Orb Recoil Interaction (LOW)
| Bug | File | Impact |
|-----|------|--------|
| Life Orb recoil not skipped for Sheer Force users | `Recoil_Tracking.rb` | When Sheer Force activates (moves with secondary effects), it negates Life Orb's 10% HP recoil while keeping the 1.3× damage boost. This is a key competitive combo (Nidoking, Conkeldurr, etc.). The AI incorrectly penalized Life Orb recoil for ALL damaging moves regardless of Sheer Force, making it overpenalize Sheer Force + Life Orb Pokemon using secondary-effect moves |

### Bug Category: Substitute Sound Move Bypass List Stale (LOW)
| Bug | File | Impact |
|-----|------|--------|
| Sound moves list missing SCREAM and SHADOWPANIC | `Substitute_Logic.rb` | Inline sound_moves array had 32 entries but canonical SOUND_MOVES in Utilities.rb has 34. Missing :SCREAM and :SHADOWPANIC. These moves would not get the +60 Sub-bypass bonus when opponent has Substitute, and status sound moves wouldn't avoid the -60 "fails against Sub" penalty |

### Files Modified (Round 28)
| File | Changes |
|------|--------|
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: +Hustle 0.8× accuracy penalty in score_accuracy; MEDIUM: +Victory Star 1.1× accuracy boost in score_accuracy; MEDIUM: +Freeze-Dry SE override against Water in score_type_effectiveness and estimate_damage; fixed misleading Hustle comment in damage calc |
| `3_Combat_Mechanics/Recoil_Tracking.rb` | LOW: Skip Life Orb recoil when Sheer Force activates (move has secondary effect) |
| `3_Combat_Mechanics/Substitute_Logic.rb` | LOW: +SCREAM and +SHADOWPANIC to inline sound_moves bypass list (32→34 entries) |

---

## Audit Round 29 — Tera Blast Unhandled, Flinch Ignores Trick Room, Strong Jaw Hardcoded List, Missing AIMove Delegates

**Scope:** 0_Move_Scorer.rb Tera Blast type/category/STAB, flinch speed comparison,
Strong Jaw bite move detection; Core.rb AIMove flag method delegates.

**Files Modified:** 2 — Core.rb, 0_Move_Scorer.rb

### Bug Category: Tera Blast Completely Unhandled (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| Tera Blast scored as base-80 Normal when Terastallized | `0_Move_Scorer.rb` | Zero references to TERABLAST existed across all 43 AAI files. Tera Blast is a Normal-type move that becomes the user's Tera type when Terastallized, and switches to physical if Attack > SpAtk. The AI treated it as a Normal-type special move at all times — NVE vs Rock/Steel, immune vs Ghost, always using SpAtk. A Terastallized Fire-type Tera Blast against a Grass target was scored as a neutral Normal move instead of a 2× super-effective Fire move. Fixed in `score_type_effectiveness`, `score_stab_bonus`, and `calculate_rough_damage` (type override + Atk/SpAtk category swap). Added `get_tera_type_for_move` helper that checks both already-Terastallized users (`.tera?`) and pending-Terastallize (`.pbRegisteredTerastallize?`) |

### Bug Category: Flinch Bonus Ignores Trick Room (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| Flinch bonus uses raw speed without Trick Room check | `0_Move_Scorer.rb` | `score_secondary_effects` flinch scoring used `user.pbSpeed > target.pbSpeed` to determine if the user moves first. Under Trick Room, the slower Pokemon moves first, so a slow Iron Head user in Trick Room would get 0 flinch bonus when it should receive the full bonus. Fixed: checks `@battle.field.effects[PBEffects::TrickRoom] > 0` and inverts the speed comparison accordingly |

### Bug Category: Strong Jaw Uses Stale Hardcoded List (LOW)
| Bug | File | Impact |
|-----|------|--------|
| Strong Jaw bite_moves hardcoded list has 3 mismatches vs PBS | `0_Move_Scorer.rb` | Hardcoded list `[:BITE, :CRUNCH, :FIREFANG, ... :FISHIOUSREND, :JAWLOCK]` had 10 entries but PBS Biting flags show only 9 moves with the flag. FISHIOUSREND has no Biting flag (engine won't boost it) but was in the list — AI overestimated. JAWLOCK has no Biting flag but was in the list — AI overestimated. DRAGONRUSH IS Biting-flagged but was MISSING from the list — AI underestimated Dragon Rush damage for Strong Jaw users. Fixed by replacing the hardcoded list with `move.respond_to?(:bitingMove?) && move.bitingMove?` to match the engine's actual flag check, same pattern used by Custom_Content.rb |

### Bug Category: Missing AIMove Flag Delegates (LOW)
| Bug | File | Impact |
|-----|------|--------|
| AIMove missing delegates for bitingMove?, punchingMove?, slicingMove?, pulseMove? | `Core.rb` | Core.rb defined AIMove delegates for `soundMove?`, `contactMove?`, etc. but was missing `bitingMove?`, `punchingMove?`, `slicingMove?`, and `pulseMove?`. This caused `move.respond_to?(:slicingMove?)` to return false for AIMove objects, meaning the Sharpness 1.5× bonus (line 2397) silently never triggered. Also needed for the Strong Jaw engine-method fix. Added all 4 missing delegates following the existing safe-delegation pattern |

### Files Modified (Round 29)
| File | Changes |
|------|--------|
| `1_Core/Core.rb` | LOW: +bitingMove?, +punchingMove?, +slicingMove?, +pulseMove? AIMove delegates (enables Sharpness and Strong Jaw engine-method checks) |
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: +Tera Blast type/category/STAB handling in score_type_effectiveness, score_stab_bonus, calculate_rough_damage with get_tera_type_for_move helper; MEDIUM: Flinch bonus now Trick Room-aware; LOW: Strong Jaw replaced hardcoded bite_moves list with engine bitingMove? flag check |

---

## Audit Round 30 — Variable Power Estimation, Analytic Trick Room, Hardcoded Ability Lists, Tera Blast Pre-Checks

**Scope:** 0_Move_Scorer.rb damage calculation for variable-power moves, Analytic speed
comparison, Iron Fist / Mega Launcher hardcoded move lists, Wonder Guard / Air Balloon
Tera Blast type resolution.

**Files Modified:** 1 — 0_Move_Scorer.rb

### Bug Category: Variable Power Moves Use Static PBS Power (MEDIUM × 3)
| Bug | File | Impact |
|-----|------|--------|
| Eruption / Water Spout / Dragon Energy use static power=150 | `0_Move_Scorer.rb` | `calculate_rough_damage` used `move.power` which returns the static PBS value (150) regardless of the user's current HP. At 50% HP these moves deal half damage, at 1 HP they deal almost nothing — but the AI always estimated full 150 BP. A 10% HP Typhlosion would estimate Eruption at 150 BP when the real power is ~15 BP, a 10× overestimate. Fixed: power = 150 × user.hp / user.totalhp |
| Flail / Reversal use static power=1 | `0_Move_Scorer.rb` | PBS stores `Power=1` for these moves (engine replaces dynamically). The AI estimated damage using 1 BP — effectively zero damage — even when the user is at 1 HP where these moves reach 200 BP. A Focus Sash Reversal user would score it as a 1 BP move. Fixed: HP-tier lookup table matching engine logic (≤6.25%→200, ≤12.5%→150, ≤25%→100, ≤33.3%→80, ≤50%→40, else→20) |
| Gyro Ball / Electro Ball / Crush Grip / Wring Out use static power=1 or 120 | `0_Move_Scorer.rb` | Gyro Ball (power=1 in PBS) estimated ~0 damage; actual power is 25×target_speed/user_speed capped at 150, making it devastating for slow tanks. Electro Ball (power=1) estimated ~0 damage; actual power scales with speed ratio from 40→150. Crush Grip / Wring Out (power=120) overestimated when target is low HP. Fixed: dynamic formulas matching engine logic for all four |

### Bug Category: Analytic Ignores Trick Room (LOW)
| Bug | File | Impact |
|-----|------|--------|
| Analytic 1.3× bonus checks raw speed | `0_Move_Scorer.rb` | Analytic grants 1.3× power when the user moves last. The check used `user.pbSpeed < target.pbSpeed` without considering Trick Room, which reverses move order. Under Trick Room a fast Analytic user (who now moves last) would miss the bonus, and a slow user (who now moves first) would incorrectly get it. Fixed: Trick Room inverts the speed comparison |

### Bug Category: Iron Fist / Mega Launcher Hardcoded Move Lists (LOW)
| Bug | File | Impact |
|-----|------|--------|
| Iron Fist uses hardcoded 24-entry punch_moves array | `0_Move_Scorer.rb` | Hardcoded list was correct vs current PBS but fragile — any new punching move or PBS flag change would silently desync. Replaced with `move.respond_to?(:punchingMove?) && move.punchingMove?` to match the engine's actual Punching flag check (enabled by R29 AIMove delegate addition) |
| Mega Launcher uses hardcoded 7-entry pulse_moves array | `0_Move_Scorer.rb` | Same issue — hardcoded list replaced with `move.respond_to?(:pulseMove?) && move.pulseMove?` to match the engine's Pulse flag check |

### Bug Category: Wonder Guard / Air Balloon Ignore Tera Blast Type (LOW)
| Bug | File | Impact |
|-----|------|--------|
| Air Balloon ground-immunity check uses move.type for Tera Blast | `0_Move_Scorer.rb` | Air Balloon pre-check in `calculate_rough_damage` returns 0 for Ground moves. It already handled -ate abilities changing Normal→other type, but not Tera Blast. A Terastallized Ground-type user's Tera Blast (actual Ground type) against an Air Balloon holder would NOT return 0 — the AI would estimate positive damage for an attack that actually fails. Fixed: added Tera Blast type override via `get_tera_type_for_move` |
| Wonder Guard SE check uses move.type for Tera Blast | `0_Move_Scorer.rb` | Wonder Guard pre-check returns 0 unless the move is super-effective. It used raw `move.type` (Normal for Tera Blast) which is never SE against anything. A Terastallized Fire-type user's Tera Blast (Fire) against Shedinja (Bug/Ghost, weak to Fire) would be scored as 0 damage instead of dealing super-effective damage. Fixed: added Tera Blast type override before the SE calculation |

### Files Modified (Round 30)
| File | Changes |
|------|--------|
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: +Variable power for Eruption/Water Spout/Dragon Energy (150×HP/MaxHP), Flail/Reversal (HP-tier table, 1→200 BP), Crush Grip/Wring Out (120×target_hp/max_hp), Gyro Ball (25×target_speed/user_speed cap 150), Electro Ball (speed ratio tiers 40→150); LOW: Analytic 1.3× bonus now Trick Room-aware; LOW: Iron Fist replaced 24-entry hardcoded punch_moves list with engine punchingMove? flag; LOW: Mega Launcher replaced 7-entry hardcoded pulse_moves list with engine pulseMove? flag; LOW: Air Balloon + Wonder Guard pre-checks now resolve Tera Blast type via get_tera_type_for_move |

---

## Audit Round 31 — Type Absorption Misses -ate/Tera, Missing Damage Calc Immunity, Trick Room Speed Comparisons

**Scope:** 0_Move_Scorer.rb type-absorbing ability check doesn't resolve effective type
for -ate abilities and Tera Blast, calculate_rough_damage missing type-absorbing immunity
check (all non-main-scorer callers get wrong results), 5 raw speed comparisons not
accounting for Trick Room.

**Files Modified:** 2 — Utilities.rb, 0_Move_Scorer.rb

### Bug Category: Type Absorption Check Ignores Effective Type (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| score_type_absorption_penalty uses move.type without resolving -ate abilities or Tera Blast | `Utilities.rb` + `0_Move_Scorer.rb` | The early type-absorption immunity check at the top of the scoring pipeline used `move.type` directly. For Tera Blast this is always Normal — so a Terastallized Water-type user's Tera Blast (effective type Water) against a Water Absorb target would pass the check (Normal ≠ Water). The AI would then score the move positively when it actually heals the opponent. Similarly, a Galvanize user's Normal move (becomes Electric) against Volt Absorb wouldn't be caught. Fixed: resolve effective type at the call site (applying -ate map and Tera Blast override) and pass it to `score_type_absorption_penalty` via new `override_type` parameter |

### Bug Category: calculate_rough_damage Missing Type-Absorbing Immunity (MEDIUM)
| Bug | File | Impact |
|-----|------|--------|
| calculate_rough_damage has no type-absorbing ability check | `0_Move_Scorer.rb` | `calculate_rough_damage` checks Air Balloon (Ground immunity) and Wonder Guard (non-SE immunity) but has NO check for type-absorbing abilities (Levitate, Water Absorb, Volt Absorb, Flash Fire, Sap Sipper, Earth Eater, etc.). While the main scoring pipeline catches these via the early `score_type_absorption_penalty` call, `calculate_rough_damage` is also called from 10+ other locations: `is_safe_to_setup?`, Doubles coordination, Recoil tracking, Endgame scenarios, Tera/Z-Move intelligence, etc. In those contexts, Ground moves against Levitate targets return positive damage, Water moves against Water Absorb targets return positive damage, etc. A setup decision might think the opponent can 2HKO with Earthquake when the user has Levitate. Fixed: added type-absorbing immunity pre-check (with -ate and Tera Blast type resolution) after the Wonder Guard check, returning 0 for absorbed moves |

### Bug Category: Trick Room-Unaware Speed Comparisons (LOW × 4)
| Bug | File | Impact |
|-----|------|--------|
| Healing move speed bonus ignores Trick Room | `0_Move_Scorer.rb` | Recovery moves (Recover, Roost, Shore Up, Strength Sap) get +30/+20 bonus when `user.pbSpeed > target.pbSpeed` ("faster = heal before getting hit"). Under Trick Room, a slow user actually moves first, so the bonus should be given when the user is slower. Fixed: both healing speed bonuses now check Trick Room and invert the comparison |
| Priority move value ignores Trick Room | `0_Move_Scorer.rb` | Priority scoring gives +40 desperation bonus and +30 general bonus when user is "slower" (target.pbSpeed > user.pbSpeed). Under Trick Room, being slower means moving FIRST, making priority less valuable. The bonuses were awarded when the user already has move-order advantage. Fixed: both priority speed checks now use Trick Room-aware "user is slower" determination |
| is_safe_to_setup speed check ignores Trick Room | `0_Move_Scorer.rb` | `is_safe_to_setup?` returns false when `target.pbSpeed > user.pbSpeed * 1.5` ("opponent outspeeds by 1.5×"). Under Trick Room, a fast opponent actually moves LAST — the user is safe to set up. But this check blocks setup. Conversely, a user with much higher speed in Trick Room moves last and IS vulnerable, but passes the check. Fixed: Trick Room inverts the speed threshold |
| Destiny Bond speed check ignores Trick Room | `0_Move_Scorer.rb` | `score_user_destiny_bond` gives +20 bonus when user is "slower" (opponentattacks into DB) and -10 when "faster" (DB fades). Under Trick Room, being slower means moving first (DB fades before opponent attacks), and being faster means moving last (opponent attacks into DB). Fixed: uses Trick Room-aware "user moves last" check |

### Files Modified (Round 31)
| File | Changes |
|------|--------|
| `1_Core/Utilities.rb` | MEDIUM: `score_type_absorption_penalty` accepts optional `override_type` parameter for resolved effective type; delegate updated to pass through |
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: Main scoring pipeline resolves effective type (-ate abilities + Tera Blast) before calling score_type_absorption_penalty; MEDIUM: +Type-absorbing ability immunity pre-check in calculate_rough_damage (covers all 10+ callers); LOW: Healing speed bonus (×2) now Trick Room-aware; LOW: Priority speed bonus (×2) now Trick Room-aware; LOW: is_safe_to_setup speed threshold now Trick Room-aware; LOW: Destiny Bond speed check now Trick Room-aware |

---

## Audit Round 32 — Secondary Damage Estimators Use Raw move.type / move.power

**Scope:** Five secondary damage estimation functions across the codebase all use raw
`move.type` and `move.power` without resolving -ate abilities (Pixilate, Refrigerate,
Aerilate, Galvanize), Tera Blast type override, or variable-power move fallback.
This means a Pixilate user's Hyper Voice is calculated as Normal-type damage instead
of Fairy, Tera Blast is always Normal, and variable-power moves with PBS power=1
(Gyro Ball, Electro Ball, Flail, Reversal, Crush Grip) produce near-zero estimates.
These functions influence substitute survival checks, pivot-vs-attack decisions,
win condition assessments, item intelligence, recoil tracking, and threat evaluation.
Fixed by adding shared `resolve_move_type` and `resolve_move_power` helpers to
CombatUtilities and updating all five functions to use them.

**Files Modified:** 5 — Combat_Utilities.rb, 0_Move_Scorer.rb, Substitute_Logic.rb, Pivot_Moves.rb, Win_Conditions.rb

### New Shared Helpers (Combat_Utilities.rb)
| Helper | Purpose |
|--------|---------|
| `resolve_move_type(user, move)` | Resolves effective move type considering -ate abilities (Normal → typed) and Tera Blast (Normal → Tera type). Works with both Battler (`hasActiveAbility?`) and Pokemon (`ability_id`) objects |
| `resolve_move_power(move)` | Converts PBS power=1 (engine convention for variable-power moves like Gyro Ball, Electro Ball, Flail, Reversal, Crush Grip) to 60 (same default as engine's `AIMove.base_power`). Passes through power=0 and static power values unchanged |

### Bug Category: Raw move.type in Secondary Damage Estimators (MEDIUM × 5)
| Bug | File | Callers | Impact |
|-----|------|---------|--------|
| `CombatUtilities.estimate_damage` uses raw `move.type` — wrong STAB, wrong effectiveness for -ate/Tera Blast users | `Combat_Utilities.rb` | Advanced_Abilities (×2), Recoil_Tracking, Advanced_Items (×4), Doubles_Coordination | A Pixilate Sylveon's Hyper Voice against a Dragon target calculates at Normal effectiveness (1×) instead of Fairy (2×). Tera Blast is always scored as Normal-type. Affects ability threat evaluation, recoil cost estimates, item value scoring, and doubles damage comparisons |
| `SubstituteLogic.estimate_move_damage` uses raw `move.type` | `Substitute_Logic.rb` | Internal: substitute survival check, opponent max damage loop | Substitute decision-making thinks a Pixilate Hyper Voice does neutral damage instead of super-effective. AI may incorrectly set up a Substitute expecting to survive when it would actually break |
| `WinConditions.estimate_damage_percent` uses raw `move.type` | `Win_Conditions.rb` | best_damaging_move, estimate_max_damage_from, can_sweep?, KO checks (6+ call sites) | Win condition assessments misjudge matchups. KO probability calculations for -ate users are wrong. A Mega Gardevoir (Pixilate) Hyper Voice shows Normal neutral against a Fighting target instead of Fairy super-effective |
| `PivotMoves.estimate_damage_percent` uses raw `move.type` | `Pivot_Moves.rb` | pivot_vs_attack decision | Pivot-vs-attack heuristic underestimates attack value for -ate users, biasing toward unnecessary pivots when attacking would be stronger |
| `MoveScorer.estimate_incoming_damage` uses raw `move.type` for opponent's moves | `0_Move_Scorer.rb` | Item disruption threat assessment | Incoming damage from opponents with -ate abilities is miscalculated, leading to wrong Knock Off / Thief / Trick value scoring |

### Bug Category: Raw move.power (power=1) in Secondary Estimators (LOW)
| Bug | Files | Impact |
|-----|-------|--------|
| All 5 secondary estimators use `move.power` directly — PBS power=1 variable-power moves return near-zero damage | All 5 files above | Gyro Ball, Electro Ball, Flail, Reversal, Crush Grip, and Wring Out have PBS power=1 (engine convention for variable base power). The secondary estimators calculate `(2×lv/5+2) × 1 × atk/def / 50 + 2` ≈ 2-4 damage — essentially zero. This means the AI ignores these moves entirely in substitute checks, pivot decisions, win conditions, and threat assessment. Fixed: `resolve_move_power` converts power=1 → 60 (same as engine default) |

### Files Modified (Round 32)
| File | Changes |
|------|---------|
| `1_Core/Combat_Utilities.rb` | +`resolve_move_type(user, move)` shared helper (handles -ate abilities + Tera Blast for both Battler and Pokemon objects); +`resolve_move_power(move)` shared helper (power=1→60 for variable-power moves); MEDIUM: `estimate_damage` now uses both helpers instead of raw `move.type`/`move.power` |
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: `estimate_incoming_damage` now uses `resolve_move_type`/`resolve_move_power` for opponent's moves |
| `3_Combat_Mechanics/Substitute_Logic.rb` | MEDIUM: `estimate_move_damage` now uses both shared helpers |
| `5_Format_Specific/Pivot_Moves.rb` | MEDIUM: `estimate_damage_percent` now uses both shared helpers |
| `6_Meta_Mechanics/Win_Conditions.rb` | MEDIUM: `estimate_damage_percent` now uses both shared helpers |

---

## Audit Round 33 — More Secondary Damage Estimators Using Raw move.type / move.power

**Scope:** Continuing the R32 pattern, three more files contain damage estimation functions
that use raw `move.type` (missing -ate ability and Tera Blast type override) and/or raw
`move.power` (variable-power moves with PBS power=1 produce near-zero damage). These
functions drive switch decisions, KO checks, sacrifice play evaluation, prediction system
damage forecasting, and endgame scenario assessments.

**Files Modified:** 3 — Switch_Intelligence.rb, Prediction_System.rb, Endgame_Scenarios.rb

### Bug Category: Raw move.type / move.power in Switch Intelligence (MEDIUM × 2, LOW × 1)
| Bug | Function | Impact |
|-----|----------|--------|
| `can_ko_opponent?` uses raw `move.type` and raw `move.power` for both our moves and opponent's counter-check | `can_ko_opponent?` (line ~1362) | The "should I stay or switch?" KO check completely ignores -ate abilities and Tera Blast. A Pixilate Sylveon's Hyper Voice checks as Normal-type neutral against a Fighting target instead of Fairy super-effective. Variable-power moves (Gyro Ball, etc.) with power=1 estimate ~0 damage, never triggering the KO path. The opponent counter-check (`opponent_can_ko_us`) has the same bugs. **MEDIUM** — directly drives staying-vs-switching decisions |
| `estimate_sac_damage_percent` uses raw `move.type` and `move.power` | `estimate_sac_damage_percent` (line ~1500) | Sacrifice play evaluation underestimates damage from -ate moves and ignores variable-power moves entirely. AI may refuse valid sacrifice plays or misjudge sac value. **MEDIUM** — affects sacrifice momentum decisions |
| `estimate_incoming_damage_percent` uses raw `move.power` (type already resolved via pbCalcType) | `estimate_incoming_damage_percent` (line ~1931) | Recovery timing estimates treat Gyro Ball/Electro Ball/etc. as power=1. AI may think recovery is unnecessary when a variable-power move would actually KO. **LOW** — type is already correctly resolved, only power=1 issue |
| `calculate_incoming_damage` uses raw `move.power` (type already resolved via pbCalcType) | `calculate_incoming_damage` (line ~1062) | The most comprehensive switch-in damage calculator (with weather, terrain, items, abilities) still uses raw power for the base damage formula. Variable-power moves produce near-zero estimates in switch-in evaluations. **LOW** — same as above, only power=1 issue |

### Bug Category: Raw move.type / move.power in Prediction System (MEDIUM)
| Bug | Function | Impact |
|-----|----------|--------|
| `calculate_predicted_damage` uses raw `move.type` and `move.power` | `calculate_predicted_damage` (line ~345) | Switch prediction uses this to estimate whether the opponent will attack or switch. For -ate users, all Normal moves calculate at Normal-type effectiveness. Tera Blast is always Normal. Variable-power moves estimate near-zero. This makes the AI misjudge whether the opponent is threatening to KO, leading to wrong switch predictions. **MEDIUM** |

### Bug Category: Raw move.type / move.power in Endgame Scenarios (MEDIUM)
| Bug | Function | Impact |
|-----|----------|--------|
| `calculate_rough_damage` uses raw `move.type` and `move.power` | `calculate_rough_damage` (line ~341) | Endgame 1v1 scenario assessments and `can_2hko?` checks use this function. If a -ate user's best move is a Normal-type Hyper Voice (actually Fairy via Pixilate), the endgame AI doesn't recognize the KO potential. Variable-power moves also produce wrong estimates. **MEDIUM** — directly affects endgame win/loss evaluation |

### Files Modified (Round 33)
| File | Changes |
|------|---------|
| `4_Battle_Strategy/Switch_Intelligence.rb` | MEDIUM: `can_ko_opponent?` now uses `resolve_move_type`/`resolve_move_power` for both user's moves and opponent's counter-check; MEDIUM: `estimate_sac_damage_percent` now uses both helpers; LOW: `estimate_incoming_damage_percent` now uses `resolve_move_power`; LOW: `calculate_incoming_damage` now uses `resolve_move_power` (renamed to `effective_power` to avoid shadowing) |
| `4_Battle_Strategy/Prediction_System.rb` | MEDIUM: `calculate_predicted_damage` now uses `resolve_move_type`/`resolve_move_power` |
| `6_Meta_Mechanics/Endgame_Scenarios.rb` | MEDIUM: `calculate_rough_damage` now uses `resolve_move_type`/`resolve_move_power` |

---

## Behavioural Fixes (Audit — Round 34)

**Theme: Raw `move.type` in type-effectiveness checks — continued sweep**

Rounds 32-33 fixed all **damage estimation** functions to resolve -ate abilities and Tera Blast.
Round 34 discovers the same bug class in **type-effectiveness checks** used for role scoring,
switch intelligence matchup evaluation, and prediction systems. These functions calculate
`Effectiveness.calculate(move.type, ...)` without first resolving -ate abilities (Pixilate,
Refrigerate, Aerilate, Galvanize) or Tera Blast, causing the AI to miscalculate type coverage,
STAB bonuses, threat assessment, and switch decisions for any Pokémon with type-changing abilities.

### Bug 1 — Wonder Guard check missing -ate ability resolution (0_Move_Scorer.rb) — MEDIUM
**Location:** `calculate_rough_damage`, Wonder Guard immunity check (line ~1850)
**Was:** Resolved only Tera Blast type but NOT -ate abilities:
```ruby
check_type = move.type
if move.id == :TERABLAST ...
```
**Now:** Uses `CombatUtilities.resolve_move_type(user, move)` to resolve both -ate and Tera Blast:
```ruby
check_type = AdvancedAI::CombatUtilities.resolve_move_type(user, move)
if move.id == :TERABLAST  # Additional registration check
```
**Impact:** Aerilate + Return against Shedinja (Bug/Ghost): raw Normal type = immune (incorrect);
resolved Flying type = super effective (correct). AI would refuse to attack Shedinja through
Wonder Guard despite having a type-changing ability that makes the move SE.

### Bug 2 — Resist berry uses raw type instead of resolved type (0_Move_Scorer.rb) — MEDIUM
**Location:** `calculate_rough_damage`, resist berry damage modifier (line ~2716)
**Was:** `has_resist_berry?(target, move.type)` — checks the PBS type, not the actual type after -ate.
**Now:** `has_resist_berry?(target, effective_type)` — uses the already-resolved `effective_type` variable.
**Impact:** With Pixilate + Hyper Voice, the code would check for Chilan Berry (Normal resist) instead of
Roseli Berry (Fairy resist). Wrong resist check → wrong damage estimate.

### Bugs 3-7 — Role synergy scoring uses raw move.type (0_Move_Scorer.rb) — LOW ×5
**Location:** `score_role_synergy`, 5 instances for the user's own moves:
- Sweeper coverage effectiveness (line ~3602)
- Tank STAB check (line ~3650)
- Tank coverage effectiveness (line ~3664)
- Wallbreaker coverage effectiveness (line ~3725)
- Wallbreaker STAB check (line ~3729)

**Was:** All used raw `move.type` for `Effectiveness.calculate()` and `user.pbHasType?()`.
**Now:** Resolves type once at function start: `resolved_type = CombatUtilities.resolve_move_type(user, move)`,
then uses `resolved_type` throughout.
**Impact:** A Pixilate Sylveon (Fairy) using Hyper Voice: raw Normal type gives no STAB bonus and
wrong SE calculations; resolved Fairy type correctly matches Sylveon's type for STAB and correct coverage.

### Bugs 8-9 — Pivot role checks opponent's moves with raw type (0_Move_Scorer.rb) — LOW ×2
**Location:** `score_role_synergy`, pivot role section, 2 instances iterating `target.moves`:
- Pivot move encouragement: opponent SE check (line ~3753)
- Non-pivot move discouragement: opponent SE check (line ~3766)

**Was:** `Effectiveness.calculate(t_move.type, *user.pbTypes(true))` — raw type.
**Now:** `CombatUtilities.resolve_move_type(target, t_move)` — resolves opponent's -ate abilities.
**Impact:** If opponent has Refrigerate + Return, the AI wouldn't detect the Ice-type threat,
failing to encourage pivoting out of an unfavorable matchup.

### Bug 10 — Choice pre-lock coverage uses raw type (0_Move_Scorer.rb) — MEDIUM
**Location:** `score_choice_prelock`, coverage evaluation (line ~4011)
**Was:** `Effectiveness.calculate(move.type, *opp_types)` — raw type for lock-in evaluation.
**Now:** Resolves type before coverage check: `choice_resolved_type = CombatUtilities.resolve_move_type(user, move)`.
**Impact:** Choice Scarf Pixilate user locking into Hyper Voice: raw Normal type shows neutral coverage;
resolved Fairy type correctly shows SE/NVE matchups for lock-in decision.

### Bugs 11-13 — Type matchup evaluation uses raw type (Switch_Intelligence.rb) — MEDIUM ×3
**Location:** `evaluate_type_matchup`, 3 sub-sections:
- Offensive threat (opponent → user): `Effectiveness.calculate(move.type, *my_types)` (line ~245)
- Defensive weakness (user → target): `Effectiveness.calculate(move.type, *target.pbTypes)` (line ~256)
- STAB disadvantage (opponent STAB → user): Both `target.pbHasType?(move.type)` and effectiveness (line ~268)

**Was:** All used raw `move.type`.
**Now:** All use `CombatUtilities.resolve_move_type(target/user, move)` as appropriate.
**Impact:** Determines whether the AI should switch or stay. A Pixilate opponent using Hyper Voice
against a Fighting-type: raw Normal = neutral threat; resolved Fairy = SE threat (+20 switch score).
STAB check also fixed: `target.pbHasType?(resolved_type)` correctly identifies STAB for the converted type.

### Bug 14 — Survival concerns OHKO check uses raw type (Switch_Intelligence.rb) — MEDIUM
**Location:** `evaluate_survival_concerns`, faster opponent OHKO danger check (line ~327)
**Was:** `Effectiveness.calculate(move.type, *my_types)` — raw type for OHKO assessment.
**Now:** `CombatUtilities.resolve_move_type(target, move)` — resolved type.
**Impact:** Faster opponent with Aerilate + Return: raw Normal shows neutral damage; resolved Flying
shows SE against Fighting/Bug/Grass, potentially triggering OHKO danger flag and switch decision.

### Bug 15 — Switch-in defensive scoring uses raw type (Switch_Intelligence.rb) — LOW
**Location:** `score_switch_candidate`, defensive type advantage section (line ~657)
**Was:** `Effectiveness.calculate(move.type, *switch_types)` — raw type when evaluating switch-in safety.
**Now:** `CombatUtilities.resolve_move_type(target, move)` — resolved type.
**Impact:** Choosing a switch-in against an opponent with Galvanize: raw Normal shows neutral matchup;
resolved Electric shows correct weaknesses/resistances for the switch candidate.

### Bugs 16-17 — Advantage/disadvantage helpers use raw type (Switch_Intelligence.rb) — LOW ×2
**Location:** `user_has_advantage?` (line ~1317) and `user_has_type_disadvantage?` (line ~1329)
**Was:** Both use raw `move.type` for effectiveness checks.
**Now:** Both resolve type via `CombatUtilities.resolve_move_type(user/target, move)`.
**Impact:** These helpers feed into various switch decision pathways. With -ate abilities, the AI
misjudges whether it has offensive advantage or faces type disadvantage.

### Bug 18 — Switch prediction uses raw type for memory moves (Prediction_System.rb) — MEDIUM
**Location:** `predict_switch_chance`, type disadvantage assessment (line ~36)
**Was:** Uses `GameData::Move.try_get(move_id)` then `move.type` — the PBS static type.
**Now:** `CombatUtilities.resolve_move_type(user, move)` — resolves -ate based on the AI battler's abilities.
**Impact:** AI predicting opponent switch: if AI has Pixilate and used Hyper Voice (remembered in memory),
the raw Normal type won't register as SE against the opponent, under-predicting switch chance.

### Bug 19 — Switch target prediction uses raw type (Prediction_System.rb) — LOW
**Location:** `predict_likely_switch_target`, type matchup scoring (line ~113)
**Was:** `Effectiveness.calculate(move.type, *pokemon.types)` — raw type.
**Now:** `CombatUtilities.resolve_move_type(user, move)` — resolved type.
**Impact:** Predicting which Pokémon the opponent will switch to. Wrong type = wrong matchup assessment
for the predicted switch-in.

### Summary Table (Round 34)
| # | Bug | Severity |
|---|-----|----------|
| 1 | Wonder Guard check missing -ate ability resolution | MEDIUM |
| 2 | Resist berry check uses raw type instead of resolved `effective_type` | MEDIUM |
| 3 | Sweeper coverage uses raw `move.type` | LOW |
| 4 | Tank STAB uses raw `move.type` | LOW |
| 5 | Tank coverage uses raw `move.type` | LOW |
| 6 | Wallbreaker coverage uses raw `move.type` | LOW |
| 7 | Wallbreaker STAB uses raw `move.type` | LOW |
| 8 | Pivot opponent SE check uses raw `t_move.type` | LOW |
| 9 | Pivot non-pivot opponent SE check uses raw `t_move.type` | LOW |
| 10 | Choice pre-lock coverage uses raw `move.type` | MEDIUM |
| 11 | Offensive threat (opponent→user) uses raw `move.type` | MEDIUM |
| 12 | Defensive weakness (user→target) uses raw `move.type` | MEDIUM |
| 13 | STAB disadvantage uses raw `move.type` for both STAB + SE | MEDIUM |
| 14 | OHKO danger check uses raw `move.type` | MEDIUM |
| 15 | Switch-in defensive scoring uses raw `move.type` | LOW |
| 16 | `user_has_advantage?` uses raw `move.type` | LOW |
| 17 | `user_has_type_disadvantage?` uses raw `move.type` | LOW |
| 18 | Switch prediction memory moves use raw PBS type | MEDIUM |
| 19 | Switch target prediction uses raw `move.type` | LOW |

### Files Modified (Round 34)
| File | Changes |
|------|---------|
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: Wonder Guard now resolves -ate abilities via `CombatUtilities.resolve_move_type`; MEDIUM: resist berry check now uses `effective_type` instead of raw `move.type`; LOW×5: `score_role_synergy` resolves type once at top and uses `resolved_type` for sweeper/tank/wallbreaker coverage+STAB; LOW×2: pivot sections resolve opponent move type via `CombatUtilities.resolve_move_type(target, t_move)`; MEDIUM: `score_choice_prelock` resolves type for coverage evaluation |
| `4_Battle_Strategy/Switch_Intelligence.rb` | MEDIUM×3: `evaluate_type_matchup` now resolves types for offensive threat, defensive weakness, and STAB disadvantage checks; MEDIUM: `evaluate_survival_concerns` OHKO danger resolves opponent move type; LOW: `score_switch_candidate` defensive scoring resolves opponent move type; LOW×2: `user_has_advantage?` and `user_has_type_disadvantage?` resolve move types |
| `4_Battle_Strategy/Prediction_System.rb` | MEDIUM: `predict_switch_chance` resolves memory move type; LOW: `predict_likely_switch_target` resolves user move type |

---

## Behavioural Fixes (Audit — Round 35)

**Theme: Raw `move.type` sweep across secondary systems**

Round 35 extends the -ate/Tera Blast type-resolution sweep into 9 more files covering
field effects, pivot logic, item evaluation, Dynamax intelligence, setup safety,
disable/speed-tie decisions, and debug output. Every `Effectiveness.calculate(move.type, ...)`
or `move.type == :TYPE` that feeds a scoring decision now uses
`CombatUtilities.resolve_move_type()` or the already-resolved `effective_type` local.

### 0_Move_Scorer.rb — 3 fixes

| # | Severity | What | Detail |
|---|----------|------|--------|
| 1 | MEDIUM | **Transistor** uses raw `move.type` | `move.type == :ELECTRIC` in `calculate_rough_damage` ability modifiers misses Tera Blast + Electric tera. Changed to `effective_type == :ELECTRIC` (already resolved earlier in the function). |
| 2 | MEDIUM | **Dragon's Maw** uses raw `move.type` | `move.type == :DRAGON` misses Tera Blast + Dragon tera. Changed to `effective_type == :DRAGON`. |
| 3 | MEDIUM | **`is_safe_to_setup?`** raw opponent type | `Effectiveness.calculate(move.type, ...)` iterating opponent moves ignores -ate/Tera Blast — could approve setup against a super-effective attacker. Now resolves via `CombatUtilities.resolve_move_type(target, move)`. |

### Field_Effects.rb — 3 fixes

| # | Severity | What | Detail |
|---|----------|------|--------|
| 4 | MEDIUM | **Electric Terrain** boost misses Galvanize/Tera | `move.type == :ELECTRIC` doesn't detect Normal→Electric via Galvanize or Tera Blast + Electric tera. Now resolves type before comparison. |
| 5 | LOW | **Mimicry** effectiveness uses raw type | `Effectiveness.calculate(move.type, *mimicry_types)` doesn't account for -ate. Now resolves with `CombatUtilities.resolve_move_type(user, move)`. |
| 6 | LOW | **Mimicry STAB** check uses raw type | `move.type == new_type` for "we get STAB from Mimicry" ignores -ate/Tera type changes. Now uses resolved type. |

### Pivot_Moves.rb — 3 fixes

| # | Severity | What | Detail |
|---|----------|------|--------|
| 7 | MEDIUM | **Offensive pivot** effectiveness raw | `evaluate_offensive_pivot` calculates `Effectiveness.calculate(move.type, ...)` without resolving -ate. Now resolves attacker's move type. |
| 8 | LOW | **Choice-locked opponent** type raw | When checking if opponent's locked move is resisted, uses raw `last_move.type` (GameData::Move). Now resolves via `resolve_move_type(target, last_move)`. |
| 9 | LOW | **Pivot vs attack** decision raw | `pivot_vs_attack` calculates `Effectiveness.calculate(attack_move.type, ...)` without resolve. Now uses resolved type. |

### Substitute_Logic.rb — 1 fix

| # | Severity | What | Detail |
|---|----------|------|--------|
| 10 | LOW | **Disable decision** raw type | Checks if opponent's last move is SE against us for Disable scoring — uses raw `last_move.type`. Now resolves via `resolve_move_type(target, last_move)`. |

### Speed_Tiers.rb — 1 fix

| # | Severity | What | Detail |
|---|----------|------|--------|
| 11 | LOW | **Speed tie risk** raw type | `evaluate_speed_tie_risk` checks opponent moves' effectiveness with raw `move.type`. Now resolves via `resolve_move_type(target, move)`. |

### Setup_Recognition.rb — 1 fix

| # | Severity | What | Detail |
|---|----------|------|--------|
| 12 | LOW | **Clear Smog** effectiveness raw | `Utilities.type_mod(move.type, target)` for Clear Smog scoring ignores -ate type changes. Now resolves type first. |

### Debug_Menu.rb — 1 fix

| # | Severity | What | Detail |
|---|----------|------|--------|
| 13 | LOW | **Debug reason** effectiveness raw | `generate_reason` shows SE/NVE based on raw `move.type`. Now resolves for accurate debug output. |

### Advanced_Items.rb — 3 fixes

| # | Severity | What | Detail |
|---|----------|------|--------|
| 14 | MEDIUM | **Resist berry** type match raw | `move.type == resisted_type` fails to detect -ate type matching a resist berry (e.g., Pixilate Normal→Fairy vs Roseli Berry). Now uses resolved type. |
| 15 | MEDIUM | **Resist berry** effectiveness raw | `Effectiveness.calculate(move.type, ...)` inside the berry check also uses raw type. Now uses resolved type. |
| 16 | MEDIUM | **Weakness Policy** effectiveness raw | `Effectiveness.calculate(move.type, ...)` for Weakness Policy trigger detection ignores -ate. A Pixilate user's Fairy-type attack could accidentally trigger WP without AI recognizing it. Now resolves. |

### Dynamax_Intelligence.rb — 2 fixes

| # | Severity | What | Detail |
|---|----------|------|--------|
| 17 | LOW | **Coverage scoring** effectiveness raw | Dynamax coverage evaluation iterates user moves with `Effectiveness.calculate(move.type, ...)`. Now resolves for accurate SE detection. |
| 18 | LOW | **Max Move boost type** raw | `boosting_max_types.include?(move.type)` checks PBS type for Max Move boost potential. An -ate Normal move becomes a different type with a different Max Move effect. Now resolves. |

### Summary Table (Round 35)

| Severity | Count |
|----------|-------|
| MEDIUM   | 8     |
| LOW      | 10    |
| **Total**| **18**|

### Files Modified (Round 35)
| File | Changes |
|------|---------|
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: Transistor uses `effective_type`; MEDIUM: Dragon's Maw uses `effective_type`; MEDIUM: `is_safe_to_setup?` resolves opponent move types |
| `3_Combat_Mechanics/Field_Effects.rb` | MEDIUM: Electric Terrain resolves type for Galvanize/Tera; LOW×2: Mimicry effectiveness and STAB checks resolve type |
| `5_Format_Specific/Pivot_Moves.rb` | MEDIUM: offensive pivot resolves type; LOW×2: choice-lock and pivot-vs-attack resolve type |
| `3_Combat_Mechanics/Substitute_Logic.rb` | LOW: Disable decision resolves opponent's last move type |
| `5_Format_Specific/Speed_Tiers.rb` | LOW: speed tie risk resolves opponent move types |
| `4_Battle_Strategy/Setup_Recognition.rb` | LOW: Clear Smog resolves type for effectiveness |
| `1_Core/Debug_Menu.rb` | LOW: debug reason generation resolves move type |
| `4_Battle_Strategy/Advanced_Items.rb` | MEDIUM×2: resist berry type match and effectiveness resolve type; MEDIUM: Weakness Policy resolves type |
| `6_Meta_Mechanics/Dynamax_Intelligence.rb` | LOW: coverage scoring resolves type; LOW: Max Move boost type check resolves type |

---

## Behavioural Fixes (Audit — Round 36)

**Theme: Final raw `move.type` sweep + Gale Wings Aerilate fix**

Round 36 completes the exhaustive `move.type` → resolved type sweep across the entire AAI codebase.
Every `Effectiveness.calculate(move.type, ...)`, `move.type == :TYPE` comparison feeding a scoring
decision, and ability type-match check now properly resolves -ate abilities (Pixilate/Refrigerate/
Aerilate/Galvanize) and Tera Blast type via `CombatUtilities.resolve_move_type()`.

### 0_Move_Scorer.rb — 1 fix

| # | Severity | What | Detail |
|---|----------|------|--------|
| 1 | MEDIUM | **Collision Course/Electro Drift** SE check raw | `Effectiveness.calculate(move.type, ...)` at line 1951 is BEFORE the main `effective_type` resolution (line 2239), so `effective_type` isn't in scope. Now uses `CombatUtilities.resolve_move_type(user, move)`. |

### Doubles_Coordination.rb — 10 fixes

| # | Severity | What | Detail |
|---|----------|------|--------|
| 2 | MEDIUM | **Spread move partner-hit** effectiveness raw | Line 82: `Effectiveness.calculate(move.type, *partner.pbTypes(true))` — resolved. |
| 3 | MEDIUM | **Fake Out target-threat** check raw | Line 470: `target_move.type` vs partner — resolved via `resolve_move_type(target, target_move)`. |
| 4 | LOW | **Protect partner-spread** check raw | Line 512: `partner_move.type` vs attacker — resolved. |
| 5 | MEDIUM | **Ally Swap threat** assessment raw | Lines 983–984: `opp_move.type` vs partner and attacker — resolved via `resolve_move_type(opp, opp_move)`. |
| 6 | MEDIUM | **Paradox moves** SE check raw | Line 1876: Collision Course/Electro Drift `move.type` vs target — resolved. |
| 7 | MEDIUM | **Weakness Policy abuse** type raw | Line 2297: `move.type` vs partner in WP strategy — resolved. |
| 8 | LOW | **Choice-lock** opponent type raw | Line 2366: `last_move.type` vs attacker — resolved. |
| 9 | LOW | **Encore lock** opponent type raw | Line 2920: `last_move.type` vs attacker for resistance check — resolved. |
| 10 | LOW | **Ally Guard threat** assessment raw | Lines 3011–3012: `opp_move.type` vs partner and attacker — resolved. |
| 11 | LOW | **Target focus** effectiveness raw | Line 3807: `move.type` vs target types — resolved. |

### Terastallization_Intelligence.rb — 3 fixes

| # | Severity | What | Detail |
|---|----------|------|--------|
| 12 | MEDIUM | **Tera offensive synergy** STAB check raw | Line 112: `move.type == tera_type` fails for Pixilate Normal→Fairy when tera is Fairy. Now resolves. |
| 13 | MEDIUM | **Tera defensive coverage** opponent type raw | Lines 134–135: `Effectiveness.calculate(move.type, ...)` for current vs tera mod. Now resolves opponent move type. |
| 14 | LOW | **Tera survival** opponent type raw | Line 212: `Effectiveness.calculate(move.type, tera_type)` for KO avoidance. Now resolves. |

### Item_Intelligence.rb — 2 fixes

| # | Severity | What | Detail |
|---|----------|------|--------|
| 15 | LOW | **Type-Boost Items** check raw | `move.type == TYPE_BOOST_ITEMS[item]` misses -ate type change (e.g., Fairy Feather wouldn't boost a Pixilate Return). Now resolves. |
| 16 | LOW | **Gem bonus** check raw | `has_type_gem?(battler, move.type)` misses -ate. Now resolves type first. |

### Custom_Content.rb — 3 fixes

| # | Severity | What | Detail |
|---|----------|------|--------|
| 17 | MEDIUM | **Adaptability** STAB upgrade raw | `atk_types.include?(move.type)` misses -ate changed type. Adaptability user with Pixilate wouldn't get the 2.0→1.5 STAB upgrade on Normal→Fairy moves. Now resolves. |
| 18 | MEDIUM | **Tinted Lens** effectiveness raw | `Utilities.type_mod(move.type, target)` for NVE double-damage check misses -ate. Now resolves. |
| 19 | LOW | **Filter/Solid Rock/Prism Armor** effectiveness raw | `Utilities.type_mod(move.type, target)` for SE damage reduction. Now resolves. |

### Utilities.rb — 1 fix

| # | Severity | What | Detail |
|---|----------|------|--------|
| 20 | MEDIUM | **Gale Wings** priority detection misses Aerilate | `move.type == :FLYING` in `effective_priority` means a Normal move on an Aerilate+Gale Wings user (e.g., Talonflame with Aerilate hypothetical) doesn't get +1 priority. Now resolves type. |

### Priority_Tiers.rb — 1 fix

| # | Severity | What | Detail |
|---|----------|------|--------|
| 21 | LOW | **Gale Wings scoring** misses Aerilate | Same pattern as Utilities — scoring side doesn't detect Aerilate Normal→Flying. Now resolves and restructures `if` nesting. |

### Field_Effects.rb — 3 fixes (from R35, already counted)

*(No additional Field_Effects changes in R36 — the 3 fixes were applied in R35.)*

### Summary Table (Round 36)

| Severity | Count |
|----------|-------|
| MEDIUM   | 11    |
| LOW      | 13    |
| **Total**| **24**|

### Files Modified (Round 36)
| File | Changes |
|------|---------|
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: Collision Course/Electro Drift uses `resolve_move_type` |
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM×5: spread partner-hit, Fake Out threat, ally swap, paradox moves, WP abuse resolve types; LOW×5: protect spread, choice-lock, encore, ally guard, target focus resolve types |
| `6_Meta_Mechanics/Terastallization_Intelligence.rb` | MEDIUM×2: tera offensive synergy + defensive coverage resolve types; LOW: tera survival resolves type |
| `4_Battle_Strategy/Item_Intelligence.rb` | LOW×2: type-boost items and gem bonus resolve types |
| `7_Integration/Custom_Content.rb` | MEDIUM×2: Adaptability + Tinted Lens resolve types; LOW: Filter/Solid Rock resolves type |
| `1_Core/Utilities.rb` | MEDIUM: Gale Wings `effective_priority` resolves type for Aerilate |
| `5_Format_Specific/Priority_Tiers.rb` | LOW: Gale Wings scoring resolves type + correct nesting |

---

## Behavioural Fixes (Audit — Round 37: Raw `move.power` Sweep)

**Theme:** Variable-power moves (Gyro Ball, Low Kick, Electro Ball, Grass Knot,
Heavy Slam, Heat Crash, etc.) have `power=1` in PBS data. The engine's
`AIMove.base_power` resolves this to 60 for AI purposes, but raw `move.power`
returns the PBS value (1). Every function using `move.power` for thresholds
or damage estimation was treating these powerful moves as having 1 BP — making
the AI misclassify them as "weak" in role scoring, ability awareness, tactical
decisions, and threat tracking. All 28 instances now use
`CombatUtilities.resolve_move_power(move)` instead.

### `calculate_effective_power` Used Raw Power (0_Move_Scorer.rb) — MEDIUM
`bp = move.power` at the start of multi-hit/crit power calculation returned 1
for variable-power moves. This cascaded into `score_damage_potential`, the main
damage scoring path, undervaluing Gyro Ball etc. as 1 BP moves.
**Fix:** `bp = AdvancedAI::CombatUtilities.resolve_move_power(move)`.

### `score_destiny_bond_awareness` Bypassed Variable Resolution (0_Move_Scorer.rb) — MEDIUM
`calculate_rough_damage(move, user, target, move.power)` passed raw `move.power`
as `override_bp`, bypassing the internal variable-power resolution (Gyro Ball,
Low Kick, etc. at lines 1883-1940). For variable-power moves this passed 1 as
the override, making the AI think it couldn't KO and avoiding Destiny Bond when
it should have.
**Fix:** Removed the override parameter — `calculate_rough_damage(move, user, target)`.

### Switch Intelligence Damage Estimation (Switch_Intelligence.rb) — MEDIUM
`base_dmg = move.power` in the SE OHKO check used raw power. Variable-power
moves with power=1 would never trigger the "can OHKO with super-effective"
logic, missing clear KO opportunities.
**Fix:** `base_dmg = AdvancedAI::CombatUtilities.resolve_move_power(move)`.

### Tank Role Scoring Threshold (0_Move_Scorer.rb) — LOW
`move.power >= 80` for tank STAB power bonus. Gyro Ball (power=1) missed the
+10 "prefer solid power" bonus despite often dealing 100+ effective BP.
**Fix:** Uses `resolve_move_power`.

### Support Role Weak Attack Filter (0_Move_Scorer.rb) — LOW
`move.power < 70` deprioritized "weak" attacks for support mons. Variable-power
moves (power=1) incorrectly got -10 penalty.
**Fix:** Uses `resolve_move_power`.

### Wallbreaker Power Thresholds (0_Move_Scorer.rb) — MEDIUM
`move.power >= 100` and `>= 80` for wallbreaker bonuses. Variable-power moves
missed both the +15 and +10 wallbreaker bonuses, making the AI undervalue them
for wallbreaker roles.
**Fix:** Uses `resolve_move_power` with local variable to avoid redundant calls.

### Move Memory Max Power Tracking (Move_Memory.rb) — MEDIUM
`memory[:max_power] = [memory[:max_power], move.power].max` recorded raw PBS
power. A Gyro Ball at power=1 would not update max_power, causing the AI to
underestimate threat level of Pokemon using variable-power moves.
**Fix:** Uses `resolve_move_power`.

### Move Memory Weak Attack Filter (Move_Memory.rb) — LOW
`move.power < 60` flagged variable-power moves as "weak attacks that get
outhealed," giving -10 penalty against healing opponents.
**Fix:** Uses `resolve_move_power`.

### Sweep Adaptation Threshold (Strategic_Awareness.rb) — LOW
`move.power >= 80` in win-con adaptation. Variable-power moves missed +10
when pivoting from failed sweep to aggression.
**Fix:** Uses `resolve_move_power`.

### Health Advantage Aggression (Strategic_Awareness.rb) — LOW
`move.power >= 80` when losing big. Variable-power moves missed +10 aggression
bonus in desperation.
**Fix:** Uses `resolve_move_power`.

### Sack Bonus Heavy Hit (Strategic_Awareness.rb) — LOW
`move.power >= 100` for going-down-swinging bonus. Variable-power moves missed
+20 heavy-hit bonus when being sacked.
**Fix:** Uses `resolve_move_power`.

### Core-Breaking Bonus (Strategic_Awareness.rb) — LOW
`move.power >= 90` for wallbreaking against defensive cores. Variable-power
moves missed +10 core-break bonus.
**Fix:** Uses `resolve_move_power`.

### Sturdy Awareness (Tactical_Enhancements.rb) — MEDIUM
`move.power <= 60` treated variable-power moves (power=1) as "weak chip" to
break Sturdy with +10 bonus. Gyro Ball at effective 150 BP is not a chip move —
it would waste damage on a Sturdy survivor just like any strong move.
**Fix:** Uses `resolve_move_power`.

### Multiscale/Shadow Shield Awareness (Tactical_Enhancements.rb) — MEDIUM
Both `<= 60` and `>= 100` thresholds used raw power. Variable-power moves were
always treated as "chip" (+15) when they could be strong moves wasted at half
damage. Both thresholds now use resolved power.
**Fix:** Uses `resolve_move_power` with local variable.

### Focus Sash Awareness (Tactical_Enhancements.rb) — LOW
`move.power >= 100` check for "too strong for Sash." Variable-power moves never
triggered the -15 penalty even when they could clearly OHKO through Sash.
**Fix:** Uses `resolve_move_power`.

### Disguise Awareness (Tactical_Enhancements.rb) — LOW
Both `<= 60` and `>= 100` thresholds. Variable-power moves always routed to
"use weak move to pop Disguise" (+20) even if they were strong moves being
wasted.
**Fix:** Uses `resolve_move_power` with local variable.

### Ice Face Awareness (Tactical_Enhancements.rb) — LOW
Same pattern as Disguise — both thresholds misclassified variable-power moves.
**Fix:** Uses `resolve_move_power` with local variable.

### Anti-Stall Wallbreaking (Tactical_Enhancements.rb) — LOW
`move.power >= 100` for raw-power anti-stall bonus. Variable-power moves missed
+10 bonus against stall teams.
**Fix:** Uses `resolve_move_power`.

### Instruct Power Scoring (Doubles_Coordination.rb) — MEDIUM
`last_move.power >= 100` and `>= 70` from `GameData::Move.try_get` for Instruct
partner evaluation. Variable-power moves like Gyro Ball scored as power=1,
missing the +50/+30 bonuses — AI would avoid Instructing powerful variable moves.
**Fix:** Uses `resolve_move_power` with local variable.

### Weakness Policy Partner Trigger (Doubles_Coordination.rb) — MEDIUM
`move.power <= 40` and `<= 60` for WP self-trigger on partner. Variable-power
moves (power=1) always got the maximum +80 "weak enough to not KO partner"
score, but Gyro Ball aimed at a slow partner could deal massive damage and KO.
**Fix:** Uses `resolve_move_power` with local variable.

### PP Conservation Importance (PP_Tracker.rb) — LOW
`move.power >= 100` halved the PP conservation penalty for strong moves.
Variable-power moves missed this adjustment, being over-conserved.
**Fix:** Uses `resolve_move_power`.

### Switch Prediction Move Evaluation (Learning_System.rb) — LOW
`move.power >= 90` gave -10 "don't waste strong move on switch." Variable-power
moves never triggered this, so the AI freely spent them on predicted switches.
Minor — actually benefits the AI in many cases, but inconsistent with intent.
**Fix:** Uses `resolve_move_power`.

### Pivot vs Attack Decision (Pivot_Moves.rb) — LOW
`attack_move.power >= 100` for +20 attack score in pivot-or-attack calculation.
Variable-power moves missed this bonus, biasing toward pivoting when attacking
with Gyro Ball etc. would be stronger.
**Fix:** Uses `resolve_move_power`.

### Disable High Power Scoring (Substitute_Logic.rb) — LOW
`last_move.power >= 100` from `GameData::Move.try_get` for Disable scoring of
opponent's high-power moves. Variable-power moves missed the +30 "disable their
strong move" bonus.
**Fix:** Uses `resolve_move_power`.

### Severity Summary (Round 37)
| Severity | Count |
|----------|-------|
| MEDIUM   | 10    |
| LOW      | 18    |
| **Total**| **28**|

### Files Modified (Round 37)
| File | Changes |
|------|---------|
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM×3: calculate_effective_power, destiny_bond override, wallbreaker thresholds; LOW×2: tank STAB power, support weak filter |
| `2_Move_Intelligence/Move_Memory.rb` | MEDIUM: max_power tracking; LOW: weak attack filter |
| `4_Battle_Strategy/Strategic_Awareness.rb` | LOW×4: sweep adaptation, health aggression, sack bonus, core-breaking |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | MEDIUM×3: Sturdy, Multiscale, Focus Sash; LOW×6: Disguise (2), Ice Face (2), anti-stall, Focus Sash |
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM×2: Instruct power, WP partner trigger |
| `3_Combat_Mechanics/PP_Tracker.rb` | LOW: PP conservation importance |
| `4_Battle_Strategy/Learning_System.rb` | LOW: switch prediction move eval |
| `5_Format_Specific/Pivot_Moves.rb` | LOW: pivot vs attack decision |
| `3_Combat_Mechanics/Substitute_Logic.rb` | LOW: Disable high power scoring |
| `4_Battle_Strategy/Switch_Intelligence.rb` | MEDIUM: SE OHKO damage estimation |

---

## Behavioural Fixes (Audit — Round 38: Raw `.speed` Comparison Sweep)

**Theme:** Speed comparisons between active battlers used raw `.speed` (the
unmodified stat) instead of effective speed that accounts for stat stages,
Choice Scarf (+50%), paralysis (halves speed), weather abilities (Swift Swim,
Chlorophyll, Sand Rush, Slush Rush double speed), Tailwind (doubles), Unburden, Quick Feet,
Slow Start, Iron Ball, and other modifiers. This caused the AI to miscalculate
turn order in doubles coordination, setup sweep predictions, and win condition
assessments. A Scarfed mon at 150 base speed would be treated as equal to an
unboosted 150 base, when in reality it has 225 effective speed. All 12 instances
now use `SpeedTiers.calculate_effective_speed(battle, battler)`.

### Tailwind Scoring Outsped Count (Doubles_Coordination.rb) — MEDIUM
`ally.speed < opp.speed` for counting how many allies are outsped when scoring
Tailwind. Ignored Choice Scarf opponents, paralysed allies, stat stage boosts.
A paralysed ally shows raw speed (e.g. 120) which looks fast, but effective
speed is 60 — the AI wouldn't realize Tailwind is desperately needed.
**Fix:** `SpeedTiers.calculate_effective_speed(battle, ally/opp)`.

### Speed Control Attack Outsped Count (Doubles_Coordination.rb) — MEDIUM
`ally.speed < opp.speed` in Icy Wind evaluation. Same raw speed issue — the AI
wouldn't recognize the value of speed control moves when opponents had abilities
like Swift Swim doubling their speed.
**Fix:** `SpeedTiers.calculate_effective_speed(battle, ally/opp)`.

### Helping Hand Partner Faster Check (Doubles_Coordination.rb) — LOW
`partner.speed > opp.speed` checking if partner outspeeds all opponents for
Helping Hand scoring. A Choice Scarf partner or Tailwind-boosted partner would
not get credit for their actual speed advantage.
**Fix:** `SpeedTiers.calculate_effective_speed(battle, partner/opp)`.

### After You Partner Outsped Check (Doubles_Coordination.rb) — LOW
`partner.speed < opp.speed` for After You evaluation. If the partner had a stat
stage boost or was paralysed, the AI couldn't properly evaluate whether After You
was useful.
**Fix:** `SpeedTiers.calculate_effective_speed(battle, partner/opp)`.

### Quash Target Faster Check (Doubles_Coordination.rb) — LOW
`target.speed > ally.speed` checking if Quash target is faster than our allies.
Missed speed modifiers on both sides.
**Fix:** `SpeedTiers.calculate_effective_speed(battle, target/ally)`.

### Max Airstream Outsped Count (Doubles_Coordination.rb) — MEDIUM
`o.speed > a.speed` counting allies outsped for Max Airstream speed boost value.
Didn't account for existing Tailwind, Choice Scarf opponents, or weather
abilities — misvalued the Speed stat boost from Max Airstream.
**Fix:** `SpeedTiers.calculate_effective_speed(battle, o/a)`.

### Fake Out Flinch Chance (Doubles_Coordination.rb) — MEDIUM
`attacker.speed > target.speed` for flinch bonus on attacks. Flinch only matters
if we move first, but raw speed ignores Choice Scarf, paralysis, Tailwind, etc.
A Scarfed opponent who looks slower by raw speed but actually outspeeds would
still get the flinch bonus incorrectly.
**Fix:** `SpeedTiers.calculate_effective_speed(battle, attacker/target)`.

### Shell Smash Outspeed Prediction (Tactical_Enhancements.rb) — MEDIUM
`user.speed * 2` vs `target.speed` for Shell Smash +2 Speed outspeed check.
Used raw speed on both sides, ignoring the user's existing speed modifiers and
the target's Choice Scarf/Tailwind/abilities. A paralysed user's raw speed looks
normal but effective speed is halved — Shell Smash might not be enough.
**Fix:** Uses `calculate_effective_speed` for both sides, applies ×2 to user.

### Dragon Dance/Quiver Dance Outspeed Prediction (Tactical_Enhancements.rb) — MEDIUM
`user.speed * 1.5` vs `target.speed` for +1 Speed outspeed check. Same issues
as Shell Smash — missed all speed modifiers on both sides.
**Fix:** Uses `calculate_effective_speed` for both sides, applies ×1.5 to user.

### Belly Drum Revenge Kill Check (Tactical_Enhancements.rb) — MEDIUM
`target.speed > user.speed` checking if opponent outspeeds post-Belly Drum.
A Scarfed revenge killer would look slower by raw speed but actually outspeeds,
causing the AI to underestimate the revenge kill risk.
**Fix:** Uses `calculate_effective_speed` for both sides.

### Trick Room Setter Followup (Tactical_Enhancements.rb) — LOW
`user.speed` vs `partner.speed` to determine who's the TR setter (faster one)
vs sweeper (slower one). Missed stat stages and abilities — a partner with
+1 Speed boost might look slower by raw stat but actually be the faster one.
**Fix:** Uses `calculate_effective_speed` for both sides.

### Win Condition Sweep Outspeed (Win_Conditions.rb) — LOW
`outspeeds?` used manual stage multiplication on raw `.speed`, missing Choice
Scarf, paralysis, weather abilities, Tailwind, and all other speed modifiers.
Updated to accept optional `battle` parameter and use `SpeedTiers` when available,
with fallback to the original stage-only calculation.
**Fix:** `outspeeds?(mon, opp, battle)` delegates to `SpeedTiers.calculate_effective_speed`.

### Severity Summary (Round 38)
| Severity | Count |
|----------|-------|
| MEDIUM   | 7     |
| LOW      | 5     |
| **Total**| **12**|

### Files Modified (Round 38)
| File | Changes |
|------|---------|
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM×4: Tailwind outsped, speed control outsped, Max Airstream outsped, Fake Out flinch; LOW×3: Helping Hand faster, After You outsped, Quash faster |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | MEDIUM×3: Shell Smash prediction, DD/QD prediction, Belly Drum revenge; LOW: TR setter followup |
| `6_Meta_Mechanics/Win_Conditions.rb` | LOW: outspeeds? now uses SpeedTiers when battle available |

---

## Behavioural Fixes (Audit — Round 39: `calculate_rough_damage` Accuracy Sweep)

**Theme:** The central damage estimation function `calculate_rough_damage` was missing
several significant damage modifiers — screens, terrain-specific move power boosts,
weather defense boosts, and a Technician check that used raw PBS power instead of
the resolved base power. Additionally, Rising Voltage's scoring in Field Effects
checked user grounding instead of target grounding.

### BUG 1 — Technician Used Raw PBS Power Instead of Resolved BP (0_Move_Scorer.rb) — **MEDIUM**
**Problem:** The Technician ability check used `move.baseDamage <= 60` (the PBS value)
instead of the already-resolved `bp` variable. Variable-power moves like Gyro Ball,
Low Kick, Electro Ball, Heavy Slam (all with PBS power=1) would ALWAYS trigger the
1.5x Technician boost regardless of their actual resolved power (often 80-150 BP).
A Technician user's Gyro Ball resolved to 150 BP would get an erroneous 1.5x → 225 BP.

**Fix:** Changed to `bp <= 60 && bp > 0` to use the resolved base power after all
variable-power calculations have been applied.

### BUG 2 — Rising Voltage Power Boost Missing (0_Move_Scorer.rb) — **MEDIUM**
**Problem:** Rising Voltage doubles power (70→140) when the TARGET is grounded in
Electric Terrain. `calculate_rough_damage` handled Psyblade and Terrain Pulse terrain
boosts but not Rising Voltage, underestimating its damage by 2x in Electric Terrain.

**Fix:** Added Rising Voltage 2x power boost in the terrain-specific move section,
checking `target.affectedByTerrain?`.

### BUG 3 — Expanding Force Power Boost Missing (0_Move_Scorer.rb) — **MEDIUM**
**Problem:** Expanding Force gets 1.5x power (80→120) when the USER is grounded in
Psychic Terrain (and becomes a spread move in doubles). `calculate_rough_damage`
didn't account for this, underestimating damage by 50%.

**Fix:** Added Expanding Force 1.5x power boost when user is grounded in Psychic Terrain.

### BUG 4 — Misty Explosion Power Boost Missing (0_Move_Scorer.rb) — **LOW**
**Problem:** Misty Explosion gets 1.5x power (100→150) when the USER is grounded in
Misty Terrain. Not accounted for in `calculate_rough_damage`.

**Fix:** Added Misty Explosion 1.5x power boost when user is grounded in Misty Terrain.

### BUG 5 — Solar Beam/Blade Halved Power in Non-Sun Missing (0_Move_Scorer.rb) — **LOW**
**Problem:** Solar Beam and Solar Blade have their power halved (120→60) when used
in Rain, Heavy Rain, Sandstorm, Hail, or Snow. The damage estimate didn't account
for this, overestimating Solar Beam/Blade damage by 2x in adverse weather.

**Fix:** Added weather check that halves `bp` for Solar Beam/Blade in non-Sun weather.

### BUG 6 — Earthquake/Bulldoze/Magnitude Not Halved in Grassy Terrain (0_Move_Scorer.rb) — **MEDIUM**
**Problem:** In Grassy Terrain, Earthquake, Bulldoze, and Magnitude deal 50% damage
to grounded targets. The terrain_mod section only handled type-based boosts
(Electric/Grass/Psychic 1.3x) and Misty Dragon 0.5x, but not this move-specific
terrain reduction. AI overestimated Earthquake damage by 2x in Grassy Terrain.

**Fix:** Added `terrain_mod *= 0.5` for Earthquake/Bulldoze/Magnitude when target
is grounded in Grassy Terrain.

### BUG 7 — Screens (Reflect/Light Screen/Aurora Veil) Completely Missing (0_Move_Scorer.rb) — **LOW**
**Problem:** `calculate_rough_damage` had no screen handling at all. When the target
has Reflect (physical), Light Screen (special), or Aurora Veil (both) active, damage
is halved in singles (2/3 in doubles). Every damage estimate against a screened
target was overestimated by up to 100%.

**Fix:** Added `screen_mod` section that checks `target.pbOwnSide` for active screens
and applies 0.5 (singles) or 0.67 (doubles) multiplier accordingly. Applied in the
final damage calculation.

### BUG 8 — Sandstorm 1.5x SpDef for Rock-Types Missing (0_Move_Scorer.rb) — **LOW**
**Problem:** In Sandstorm, Rock-type Pokemon receive a 1.5x Special Defense boost.
This was not factored into `calculate_rough_damage`, causing the AI to overestimate
special damage against Rock-types in Sandstorm by ~50%.

**Fix:** Added weather defense check that multiplies `defense` by 1.5 for special
moves when target is Rock-type in Sandstorm.

### BUG 9 — Snow 1.5x Def for Ice-Types Missing (0_Move_Scorer.rb) — **LOW**
**Problem:** In Gen 9, Snow gives Ice-type Pokemon a 1.5x Defense boost. This was
not accounted for, causing the AI to overestimate physical damage against Ice-types
in Snow by ~50%.

**Fix:** Added weather defense check that multiplies `defense` by 1.5 for physical
moves when target is Ice-type in Snow.

### BUG 10 — Rising Voltage Scoring Checked User Grounding Instead of Target (Field_Effects.rb) — **LOW**
**Problem:** In the Electric Terrain scoring section, Rising Voltage's bonus checked
`user.affectedByTerrain?` (whether the USER is grounded). The actual mechanic is
that Rising Voltage doubles power when the TARGET is grounded in Electric Terrain.
This caused incorrect scoring — a levitating user wouldn't get the bonus even if
the target was grounded, and a grounded user would get the bonus even if the target
was floating.

**Fix:** Changed to `target && target.affectedByTerrain?`.

### Severity Summary (Round 39)
| Severity | Count |
|----------|-------|
| MEDIUM   | 4     |
| LOW      | 6     |
| **Total**| **10**|

### Files Modified (Round 39)
| File | Changes |
|------|---------|
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM×4: Technician resolved BP, Rising Voltage 2x, Expanding Force 1.5x, Earthquake/Bulldoze Grassy halved; LOW×5: Misty Explosion 1.5x, Solar Beam/Blade weather halved, Screens missing, Sandstorm SpDef, Snow Def |
| `3_Combat_Mechanics/Field_Effects.rb` | LOW: Rising Voltage user→target grounding |

---

## Behavioural Fixes (Audit — Round 40: Raw `move_data.type` / `m.type` Sweep)

**Theme:** Multiple subsystems used raw `move_data.type` (from PBS data via
`GameData::Move.try_get`) or `m.type` (Battle::Move base type) instead of resolving
through `CombatUtilities.resolve_move_type`. This means -ate abilities (Pixilate,
Aerilate, Refrigerate, Galvanize) that change Normal-type moves to another type were
not accounted for in effectiveness calculations, threat assessments, switch decisions,
damage estimates, and matchup evaluations.

**Impact example:** A Sylveon with Pixilate + Hyper Voice → Fairy-type in battle, but
these systems treated it as Normal-type. A Dragon/Fighting target would wrongly see
no super-effective Fairy threat, the AI wouldn't switch to resist it, Encore scoring
would misjudge the locked move type, etc.

### BUG 1 — Move Memory Damage Estimate Uses Raw Type (Move_Memory.rb) — **MEDIUM**
**Problem:** `max_known_damage` calculated type effectiveness and STAB using
`move_data.type` (PBS type) instead of resolving for -ate abilities. A Pixilate
user's Hyper Voice would be calculated as Normal-type (missing Fairy effectiveness)
and miss Fairy STAB too, causing the AI to underestimate damage by ~2.25x.

**Fix:** Resolve type via `resolve_move_type(attacker, move_data)` for both the
`Effectiveness.calculate` call and the `pbHasType?` STAB check.

### BUG 2 — Encore Scoring Uses Raw Last-Move Type (Disruption_Moves.rb) — **MEDIUM**
**Problem:** Encore scoring checked whether to lock the opponent into a resisted or
super-effective move using `last_move_data.type` (raw PBS type). If the opponent's
last move was a -ate-boosted Normal move (e.g., Pixilate Hyper Voice → Fairy), the
"lock into resisted move" and "don't Encore SE moves" checks both used the wrong type.
Two separate `Effectiveness.calculate` calls were affected.

**Fix:** Computed `encore_resolved_type = resolve_move_type(target, last_move_data)`
once and used it in both effectiveness checks.

### BUG 3 — Threat Assessment Uses Raw Known-Move Type (Threat_Assessment.rb) — **MEDIUM**
**Problem:** `assess_move_threat` used `move_data.type` for opponent's known moves
from memory. An opponent with Pixilate + Hyper Voice would not register as having
Fairy super-effective coverage, underestimating the threat.

**Fix:** Resolve type via `resolve_move_type(opponent, move_data)`.

### BUG 4 — Prediction Double-Switch Coverage Uses Raw Type (Prediction_System.rb) — **LOW**
**Problem:** The double-switch prediction evaluated whether party Pokemon could
threaten a predicted switch-in using raw `move_data.type`. A Pixilate user's Normal
moves wouldn't count as Fairy SE coverage.

**Fix:** Resolve type via `resolve_move_type(pokemon, move_data)`.

### BUG 5 — Prediction Double-Switch Defense Uses Raw Type (Prediction_System.rb) — **LOW**
**Problem:** Same function's defensive check — whether the predicted switch's moves
hit our Pokemon super-effectively — also used raw `move_data.type`.

**Fix:** Resolve type via `resolve_move_type(predicted_switch, move_data)`.

### BUG 6 — Switch Candidate Offensive Matchup Uses Raw Type (Switch_Intelligence.rb) — **MEDIUM**
**Problem:** When evaluating switch candidates, the offensive matchup scoring used
`move_data.type` for party Pokemon's moves. A switch candidate with Galvanize
wouldn't have its Normal moves recognized as Electric coverage.

**Fix:** Resolve type via `resolve_move_type(switch_pkmn, move_data)`.

### BUG 7 — Switch Outspeed+SE Check Uses Raw Type (Switch_Intelligence.rb) — **LOW**
**Problem:** The "can outspeed and hit super-effectively" bonus for switch candidates
used raw `move_data.type`, missing -ate type changes.

**Fix:** Resolve type via `resolve_move_type(switch_pkmn, move_data)`.

### BUG 8 — Pivot Move SE Check Uses Raw Type (Switch_Intelligence.rb) — **LOW**
**Problem:** The pivot move bonus check (U-Turn/Volt Switch/Flip Turn SE) used raw
`move_data.type`. These specific moves aren't Normal-type so -ate doesn't affect
them directly, but fixed for consistency with the resolve pattern.

**Fix:** Resolve type via `resolve_move_type(user, move_data)`.

### BUG 9 — Teleport Can-Damage Check Uses Raw Type (Pivot_Moves.rb) — **MEDIUM**
**Problem:** The Teleport/pivot evaluation's "can we damage opponents?" check used
raw `m.type` from the battler's moves. A Pixilate Hyper Beam user's Normal moves
wouldn't count as damaging (wrong type → might look NVE/immune when it's actually
Fairy-type and super-effective).

**Fix:** Resolve type via `resolve_move_type(attacker, m)`.

### BUG 10 — Switch-In Candidate Threat Check Uses Raw Type (Pivot_Moves.rb) — **MEDIUM**
**Problem:** When finding the best switch-in, `move_data.type` was used to check if
party Pokemon can threaten the opponent. Same -ate issue as other switch evaluations.

**Fix:** Resolve type via `resolve_move_type(pkmn, move_data)`.

### BUG 11 — Team Preview Matchup Uses Raw Type (Team_Preview_Intelligence.rb) — **LOW**
**Problem:** The pre-battle team preview matchup scoring used `move_data.type` for
all Pokemon's moves. Lead selection and team ordering wouldn't account for -ate
ability type changes.

**Fix:** Resolve type via `resolve_move_type(attacker, move_data)`.

### Severity Summary (Round 40)
| Severity | Count |
|----------|-------|
| MEDIUM   | 6     |
| LOW      | 5     |
| **Total**| **11**|

### Files Modified (Round 40)
| File | Changes |
|------|---------|
| `2_Move_Intelligence/Move_Memory.rb` | MEDIUM: Resolve type for damage estimate + STAB |
| `2_Move_Intelligence/Disruption_Moves.rb` | MEDIUM: Encore scoring (2 Effectiveness.calculate calls) |
| `4_Battle_Strategy/Threat_Assessment.rb` | MEDIUM: Known-move SE coverage check |
| `4_Battle_Strategy/Prediction_System.rb` | LOW×2: Double-switch coverage + defense |
| `4_Battle_Strategy/Switch_Intelligence.rb` | MEDIUM: Candidate offensive matchup; LOW×2: Outspeed+SE check, pivot SE check |
| `5_Format_Specific/Pivot_Moves.rb` | MEDIUM×2: Teleport can-damage, switch-in candidate threat |
| `4_Battle_Strategy/Team_Preview_Intelligence.rb` | LOW: Pre-battle matchup |

---

## Behavioural Fixes (Audit — Round 41: Raw `move_data.power` + Remaining `move_data.type` Sweep)

**Theme:** Variable-power moves (Gyro Ball, Low Kick, Electro Ball, etc.) have PBS `power = 1`.
Multiple subsystems used raw `move_data.power` for damage estimates and threshold checks,
making these moves appear near-zero damage. Additionally, a few `move_data.type` raw uses
missed in R40 were caught — effectiveness and STAB calculations invisible to -ate abilities.

### Bug 1 — Move_Memory `max_known_damage` uses raw PBS power (MEDIUM)
**File:** `2_Move_Intelligence/Move_Memory.rb`
**Bug:** `bp = move_data.power` — for variable-power moves, this yields 1 instead of the
engine default 60, causing `max_known_damage` to massively underestimate threat from moves
like Gyro Ball, Low Kick, Electro Ball, Grass Knot, etc.
**Fix:** `bp = CombatUtilities.resolve_move_power(move_data)` — converts `power=1 → 60`.

### Bug 2 — Strategic_Awareness `estimate_max_incoming` triple bug (MEDIUM)
**File:** `4_Battle_Strategy/Strategic_Awareness.rb`
**Bug (a):** `type_effectiveness_against(move_data.type, types)` — raw PBS type, invisible
to -ate abilities (Pixilate Hyper Voice still calculated as Normal).
**Bug (b):** `get_pokemon_types(target).include?(move_data.type)` — STAB check uses raw type,
so -ate-boosted moves miss their STAB bonus in the estimate.
**Bug (c):** `move_data.power * eff * stab` — raw PBS power, variable-power moves yield ~1 damage.
**Fix:** Resolve type via `CombatUtilities.resolve_move_type(target, move_data)`, resolve power
via `CombatUtilities.resolve_move_power(move_data)`, and use resolved type for both effectiveness
and STAB checks.

### Bug 3 — Prediction_System `score_prediction_bonus` raw power threshold (LOW)
**File:** `4_Battle_Strategy/Prediction_System.rb`
**Bug:** `predicted_move_data.power >= 80` — Protect bonus for blocking strong attacks never
triggers for variable-power moves (PBS power=1), even though Gyro Ball could deal 150 BP.
**Fix:** `resolved_power >= 80` after resolving power once at function entry.

### Bug 4 — Prediction_System `score_prediction_bonus` raw type in type_mod (MEDIUM)
**File:** `4_Battle_Strategy/Prediction_System.rb`
**Bug:** `AdvancedAI::Utilities.type_mod(predicted_move_data.type, user)` — uses raw PBS type
for resistance check. If opponent has Pixilate, their Hyper Voice (Normal→Fairy) would still
be evaluated as Normal-type, missing the correct resistance/weakness calculation.
**Fix:** `resolved_type = CombatUtilities.resolve_move_type(target, predicted_move_data)` then
pass `resolved_type` to `type_mod`.

### Bug 5 — Prediction_System OHKO prediction raw power threshold (LOW)
**File:** `4_Battle_Strategy/Prediction_System.rb`
**Bug:** `predicted_move_data.power >= 100` — OHKO prediction (pivot/protect bonus) never
triggers for variable-power moves, even when they can deal massive damage.
**Fix:** `resolved_power >= 100` using the same resolved power from function entry.

### Bug 6 — PP_Tracker Pressure stall raw power threshold (LOW)
**File:** `3_Combat_Mechanics/PP_Tracker.rb`
**Bug:** `move_data.power >= 80` — when evaluating Pressure stall, variable-power moves with
low PP are never recognized as "strong moves running low", reducing Pressure stall scoring.
**Fix:** `CombatUtilities.resolve_move_power(move_data) >= 80`.

### Bug 7 — Doubles_Coordination Wide Guard raw type for partner weakness (MEDIUM)
**File:** `5_Format_Specific/Doubles_Coordination.rb`
**Bug:** `Effectiveness.calculate(move_data.type, *partner.pbTypes(true))` — Wide Guard scoring
checked partner weakness against raw PBS type of predicted spread moves. A Pixilate opponent's
Hyper Voice (Normal→Fairy spread) would check Normal effectiveness instead of Fairy.
**Fix:** Find the opponent who knows the predicted spread move, resolve type through
`CombatUtilities.resolve_move_type(opp, move_data)`, then use resolved type in effectiveness
calculation. Falls back to raw type if no specific opponent is found.

### Severity Summary (Round 41)
| Severity | Count |
|----------|-------|
| MEDIUM   | 4     |
| LOW      | 5     |
| **Total** | **9** |

### Files Modified (Round 41)
| File | Changes |
|------|---------|
| `2_Move_Intelligence/Move_Memory.rb` | MEDIUM: `max_known_damage` raw power → resolved |
| `4_Battle_Strategy/Strategic_Awareness.rb` | MEDIUM: `estimate_max_incoming` triple fix (type + STAB + power) |
| `4_Battle_Strategy/Prediction_System.rb` | MEDIUM: Raw type in `type_mod`; LOW×2: Power thresholds (Protect + OHKO) |
| `3_Combat_Mechanics/PP_Tracker.rb` | LOW: Pressure stall raw power threshold |
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM: Wide Guard partner weakness raw type |

---

## Behavioural Fixes (Audit — Round 42: Missing STAB in Mini-Calculators + Remaining Raw `m.type`)

**Theme:** Two standalone `calculate_rough_damage` / `calculate_predicted_damage` functions
completely omitted the STAB multiplier, underestimating same-type damage by 33%.
Additionally, two remaining raw `m.type` (Battle::Move) usages were found in effectiveness
and type-diversity calculations.

### Bug 1 — Endgame_Scenarios `calculate_rough_damage` missing STAB (MEDIUM)
**File:** `6_Meta_Mechanics/Endgame_Scenarios.rb`
**Bug:** The endgame damage estimator had no STAB multiplier at all. A Gyarados using
Waterfall (Water STAB) would have its damage underestimated by 33%, causing the AI to
incorrectly conclude it can't 2HKO an opponent and miss endgame KO opportunities.
**Fix:** Added STAB check using `pbHasType?` (Battler) with `hasType?` fallback (Pokemon).
Applied 1.5× multiplier when attacker has the move's resolved type.

### Bug 2 — Prediction_System `calculate_predicted_damage` missing STAB (MEDIUM)
**File:** `4_Battle_Strategy/Prediction_System.rb`
**Bug:** The predicted damage function (used for OHKO prediction in `score_prediction_bonus`)
had no STAB multiplier. This directly feeds the "should I Protect/pivot against predicted
OHKO?" logic — underestimating STAB damage means the AI wouldn't react to genuinely
dangerous predictions from same-type attackers.
**Fix:** Added STAB check with `pbHasType?` / `hasType?` fallback and 1.5× multiplier.

### Bug 3 — Switch_Intelligence type disadvantage detection raw `m.type` (LOW)
**File:** `4_Battle_Strategy/Switch_Intelligence.rb`
**Bug:** `Effectiveness.calculate(m.type, *my_types)` used the raw PBS type of the
opponent's Battle::Move. A Pixilate opponent's Hyper Voice (Normal→Fairy) would be
evaluated as Normal-type, potentially missing a super-effective hit against a Fighting-type
user and failing to trigger the switch scoring bonus.
**Fix:** `resolved_m_type = CombatUtilities.resolve_move_type(target, m)` then use
`resolved_m_type` in both the effectiveness calculation and debug log.

### Bug 4 — Dynamax_Intelligence offensive type diversity raw `m.type` (LOW)
**File:** `6_Meta_Mechanics/Dynamax_Intelligence.rb`
**Bug:** `user.moves.map { |m| m.type }.uniq` counted unique move types using raw PBS types.
A Pixilate user's Normal-type moves would be counted as Normal instead of Fairy, understating
type diversity and reducing the Dynamax offensive score bonus.
**Fix:** Map through `CombatUtilities.resolve_move_type(user, m)` before collecting unique types.

### Severity Summary (Round 42)
| Severity | Count |
|----------|-------|
| MEDIUM   | 2     |
| LOW      | 2     |
| **Total** | **4** |

### Files Modified (Round 42)
| File | Changes |
|------|---------|
| `6_Meta_Mechanics/Endgame_Scenarios.rb` | MEDIUM: Added missing STAB to damage calc |
| `4_Battle_Strategy/Prediction_System.rb` | MEDIUM: Added missing STAB to predicted damage |
| `4_Battle_Strategy/Switch_Intelligence.rb` | LOW: Resolve type for disadvantage detection |
| `6_Meta_Mechanics/Dynamax_Intelligence.rb` | LOW: Resolve type for diversity counting |

---

## Audit Round 43 — Variable-Power Move Thresholds & Division-by-Zero Guards

**Theme:** Two systemic patterns — (A) raw `m.power >= N` threshold checks on Battle::Move
objects miss variable-power moves (Gyro Ball, Low Kick, Grass Knot, etc. have `power = 1`
in PBS data), and (B) unguarded division by defense stat in damage calc formulas that could
produce division-by-zero or infinity with extreme stat drops.

### Pattern A — Variable-Power Move Threshold Checks

### Bug 1 — Sleep_Clause Sleep Talk good-move counting raw power (MEDIUM)
**File:** `3_Combat_Mechanics/Sleep_Clause.rb`
**Bug:** `m.power >= 80` used to count "good" moves callable by Sleep Talk. Variable-power
moves like Gyro Ball or Low Kick (power=1 in PBS) would never count as good despite
potentially dealing 120+ BP in practice. A Conkeldurr with Low Kick + Sleep Talk would
get 0 good-move bonus instead of +15.
**Fix:** `AdvancedAI::CombatUtilities.resolve_move_power(m) >= 80` — converts power=1 to
60 (estimated average) so variable-power moves pass reasonable thresholds.

### Bug 2 — Tactical_Enhancements Intimidate physical attacker counting raw power (MEDIUM)
**File:** `4_Battle_Strategy/Tactical_Enhancements.rb`
**Bug:** `m.power && m.power >= 60` counted physical moves to evaluate Intimidate usefulness.
Variable-power physical moves (Low Kick, Gyro Ball, Body Press) have power=1, so opponents
whose main physical damage comes from these moves wouldn't be counted as physical threats,
making Intimidate appear less valuable than it actually is.
**Fix:** `AdvancedAI::CombatUtilities.resolve_move_power(m) >= 60`

### Bug 3 — Doubles_Strategy Helping Hand partner strong-move check raw power (MEDIUM)
**File:** `5_Format_Specific/Doubles_Strategy.rb`
**Bug:** `m.power && m.power >= 80` checked if the partner has a strong attacking move
for Helping Hand evaluation. A partner whose best move is Grass Knot (power=1) wouldn't
get the +60 Helping Hand bonus, reducing coordination with variable-power attackers.
**Fix:** `AdvancedAI::CombatUtilities.resolve_move_power(m) >= 80`

### Bug 4 — Doubles_Strategy Helping Hand user-can-KO check raw power (LOW)
**File:** `5_Format_Specific/Doubles_Strategy.rb`
**Bug:** `m.power && m.power >= 100` checked if the user has strong enough moves to attack
instead of using Helping Hand. Variable-power moves with power=1 would never trigger this
penalty, making the AI slightly over-favor Helping Hand when it should attack directly.
**Fix:** `AdvancedAI::CombatUtilities.resolve_move_power(m) >= 100`

### Bug 5 — Dynamax_Intelligence strong move counting raw power (LOW)
**File:** `6_Meta_Mechanics/Dynamax_Intelligence.rb`
**Bug:** `m.power >= 80` counted strong moves for Dynamax offensive evaluation. Variable-power
moves (which become Max Moves with fixed high BP) wouldn't count, understating the offensive
value of Dynamaxing a Pokémon whose moveset relies on variable-power attacks.
**Fix:** `AdvancedAI::CombatUtilities.resolve_move_power(m) >= 80`

### Pattern B — Missing Division-by-Zero Defense Guards

### Bug 6 — Combat_Utilities `estimate_damage` unguarded defense (MEDIUM)
**File:** `1_Core/Combat_Utilities.rb`
**Bug:** `power * atk / defense / 50` — the core `estimate_damage` utility used by many
callers had no guard against defense=0. While extremely unlikely in practice, a Pokémon at
-6 Defense stages with integer truncation in some edge cases could theoretically produce
zero, causing a crash or infinity result. 11 other damage calcs in the codebase already
had `[defense, 1].max` guards; this one was missed.
**Fix:** `power * atk / [defense, 1].max / 50`

### Bug 7 — Move_Memory `max_known_damage` unguarded defense (MEDIUM)
**File:** `2_Move_Intelligence/Move_Memory.rb`
**Bug:** `bp * atk / defense / 50` in the max known damage estimator had no defense floor.
**Fix:** `bp * atk / [defense, 1].max / 50`

### Bug 8 — Substitute_Logic break-sub damage calc unguarded defense (LOW)
**File:** `3_Combat_Mechanics/Substitute_Logic.rb`
**Bug:** `power * atk / dfn / 50` in the substitute-break damage calculation had no guard.
**Fix:** `power * atk / [dfn, 1].max / 50`

### Bug 9 — Prediction_System `calculate_predicted_damage` unguarded defense (LOW)
**File:** `4_Battle_Strategy/Prediction_System.rb`
**Bug:** `power * attack / defense / 50` in the predicted damage calculator had no guard.
**Fix:** `power * attack / [defense, 1].max / 50`

### Bug 10 — Recoil_Tracking confusion self-hit damage unguarded defense (LOW)
**File:** `3_Combat_Mechanics/Recoil_Tracking.rb`
**Bug:** `CONFUSION_DAMAGE_BP * atk / defense / 50` in the confusion self-hit estimator
had no guard. While this uses the user's own defense stat (unlikely to be 0), consistency
with the rest of the codebase warrants the guard.
**Fix:** `CONFUSION_DAMAGE_BP * atk / [defense, 1].max / 50`

### Severity Summary (Round 43)
| Severity | Count |
|----------|-------|
| MEDIUM   | 5     |
| LOW      | 5     |
| **Total** | **10** |

### Files Modified (Round 43)
| File | Changes |
|------|---------|
| `3_Combat_Mechanics/Sleep_Clause.rb` | MEDIUM: Resolve power for Sleep Talk good-move counting |
| `4_Battle_Strategy/Tactical_Enhancements.rb` | MEDIUM: Resolve power for Intimidate physical threat counting |
| `5_Format_Specific/Doubles_Strategy.rb` | MEDIUM+LOW: Resolve power for Helping Hand partner/user checks |
| `6_Meta_Mechanics/Dynamax_Intelligence.rb` | LOW: Resolve power for Dynamax strong-move counting |
| `1_Core/Combat_Utilities.rb` | MEDIUM: Add defense floor to estimate_damage |
| `2_Move_Intelligence/Move_Memory.rb` | MEDIUM: Add defense floor to max_known_damage |
| `3_Combat_Mechanics/Substitute_Logic.rb` | LOW: Add defense floor to sub-break calc |
| `4_Battle_Strategy/Prediction_System.rb` | LOW: Add defense floor to predicted damage |
| `3_Combat_Mechanics/Recoil_Tracking.rb` | LOW: Add defense floor to confusion self-hit |

---

## Behavioural Fixes (Audit — Round 44)

### Bug 1 — Doubles_Coordination Gravity scoring counts never-miss moves as "low accuracy" (MEDIUM)
**File:** `5_Format_Specific/Doubles_Coordination.rb`
**Bug:** `m.accuracy < 80` in the Gravity low-accuracy scoring block counted never-miss
moves (Aerial Ace, Swift, Aura Sphere, etc.) as low-accuracy because they have
`accuracy=0`, and `0 < 80` is true. This inflated the Gravity score by +15 per ally
that knows any never-miss move, even though Gravity doesn't benefit those moves at all.
**Fix:** `m.accuracy > 0 && m.accuracy < 80` — excludes never-miss moves from the count.

### Bug 2 — Move_Scorer Disable scoring uses raw power on GameData::Move (MEDIUM)
**File:** `2_Move_Intelligence/0_Move_Scorer.rb`
**Bug:** `last_data.power >= 100` and `last_data.power >= 70` in the Disable move scorer
used raw PBS power from `GameData::Move.try_get`. Variable-power moves (Gyro Ball,
Low Kick, Flail, Eruption, etc.) have `power=1` in PBS, so Disabling one of these
would only get +10 (the fallback) instead of the +40 or +25 it deserves based on their
actual effective power.
**Fix:** `resolved_power = AdvancedAI::CombatUtilities.resolve_move_power(last_data)`
then use `resolved_power >= 100` / `resolved_power >= 70` for the threshold checks.

### Bug 3 — Custom_Content Thick Fat raw `move.type` misses Refrigerate Ice (MEDIUM)
**File:** `7_Integration/Custom_Content.rb`
**Bug:** `[:FIRE, :ICE].include?(move.type)` in the Thick Fat defensive ability modifier
used raw PBS type. A Refrigerate user's Normal-type move that becomes Ice-type at
runtime would bypass Thick Fat's 0.5× Ice damage reduction because `move.type` is
still `:NORMAL`. This causes the AI to overestimate damage against Thick Fat Pokemon
when attacking with Refrigerate-converted moves.
**Fix:** `thick_fat_type = AdvancedAI::CombatUtilities.resolve_move_type(attacker, move)`
then `[:FIRE, :ICE].include?(thick_fat_type)`.

### Bug 4 — Custom_Content Fluffy raw `move.type` for Fire check (LOW)
**File:** `7_Integration/Custom_Content.rb`
**Bug:** `move.type == :FIRE` in the Fluffy 2× Fire damage modifier used raw PBS type.
While no current -ate ability converts Normal→Fire, for consistency with the rest of the
codebase (all other type checks in this function use resolved types), this should use
the resolved type.
**Fix:** `fluffy_type = AdvancedAI::CombatUtilities.resolve_move_type(attacker, move)`
then `fluffy_type == :FIRE`.

### Severity Summary (Round 44)
| Severity | Count |
|----------|-------|
| MEDIUM   | 3     |
| LOW      | 1     |
| **Total** | **4** |

### Files Modified (Round 44)
| File | Changes |
|------|---------|
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM: Exclude never-miss (accuracy=0) from Gravity low-accuracy count |
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: Use resolve_move_power for Disable scoring thresholds |
| `7_Integration/Custom_Content.rb` | MEDIUM: Thick Fat uses resolved type for Fire/Ice check |
| `7_Integration/Custom_Content.rb` | LOW: Fluffy uses resolved type for Fire check |

---

## Behavioural Fixes (Audit — Round 45)

### Bug 1 — Doubles_Coordination Tera STAB count uses raw `m.type` instead of resolved type (MEDIUM)
**File:** `5_Format_Specific/Doubles_Coordination.rb`
**Bug:** `attacker.moves.count { |m| m && m.type == tera_type && m.damagingMove? }` in
`evaluate_tera_timing_doubles` counted Tera-matching moves using raw PBS type. If
the attacker has a -ate ability (Pixilate→Fairy, Refrigerate→Ice, Aerilate→Flying,
Galvanize→Electric), their Normal-type moves get converted at runtime. With `m.type`,
the converted moves are missed (e.g., Refrigerate user with Ice tera — Normal→Ice moves
wouldn't count), and unconverted Normal moves might incorrectly count if tera is Normal.
The `Terastallization_Intelligence.rb` equivalent already uses `resolve_move_type`.
**Fix:** `AdvancedAI::CombatUtilities.resolve_move_type(attacker, m) == tera_type`

### Bug 2 — Doubles_Coordination Electric Terrain ally count misses Galvanize (LOW)
**File:** `5_Format_Specific/Doubles_Coordination.rb`
**Bug:** `a.moves.any? { |m| m && m.type == :ELECTRIC && m.damagingMove? }` in the
Electric Terrain evaluation counted allies with Electric moves using raw type. An
ally with Galvanize has Normal-type moves that become Electric at runtime and DO
benefit from Electric Terrain's +30% power boost, but `m.type == :ELECTRIC` misses these.
**Fix:** `AdvancedAI::CombatUtilities.resolve_move_type(a, m) == :ELECTRIC`

### Bug 3 — Doubles_Coordination Soak partner synergy misses Galvanize Electric (LOW)
**File:** `5_Format_Specific/Doubles_Coordination.rb`
**Bug:** `[:GRASS, :ELECTRIC].include?(m.type)` in `evaluate_soak_doubles` checked if
a partner has Grass or Electric coverage to synergize with Soak (which makes target
pure Water-type, weak to both). A partner with Galvanize has Normal→Electric coverage
that would be missed by the raw type check.
**Fix:** `[:GRASS, :ELECTRIC].include?(AdvancedAI::CombatUtilities.resolve_move_type(partner, m))`

### Severity Summary (Round 45)
| Severity | Count |
|----------|-------|
| MEDIUM   | 1     |
| LOW      | 2     |
| **Total** | **3** |

### Files Modified (Round 45)
| File | Changes |
|------|---------|
| `5_Format_Specific/Doubles_Coordination.rb` | MEDIUM: Tera STAB count uses resolved type for -ate accuracy |
| `5_Format_Specific/Doubles_Coordination.rb` | LOW: Electric Terrain ally count uses resolved type for Galvanize |
| `5_Format_Specific/Doubles_Coordination.rb` | LOW: Soak partner synergy uses resolved type for Galvanize Electric |

---

## Audit Round 46 — Trick Room-Unaware Speed Comparisons

**Pattern:** Raw `pbSpeed` comparisons (`target.pbSpeed > user.pbSpeed`) used to
determine who "moves first" without accounting for Trick Room. Under Trick Room,
the slower Pokemon (lower `pbSpeed`) moves first, so all turn-order-sensitive
speed comparisons must be inverted when Trick Room is active. An established
correct pattern already exists at Move_Scorer.rb:1006-1010 but was not used
consistently elsewhere.

### Bug 1 — Move_Scorer Thunder Wave bonus ignores Trick Room (MEDIUM)
**File:** `2_Move_Intelligence/0_Move_Scorer.rb`
**Bug:** `target.pbSpeed > user.pbSpeed` gave +80 bonus for paralyzing "faster"
targets and +30 bonus if user outspeeds after paralysis halves target speed. Under
Trick Room, the higher-speed target actually moves LAST (not a speed threat), and
paralyzing them (halving speed) could make them move FIRST — directly counterproductive.
**Fix:** Added Trick Room check: `target_moves_first = trick_room_active ? (target.pbSpeed < user.pbSpeed) : (target.pbSpeed > user.pbSpeed)` for both the initial bonus and the post-paralysis speed comparison.

### Bug 2 — Move_Scorer LowerTargetSpeed bonus ignores Trick Room (MEDIUM)
**File:** `2_Move_Intelligence/0_Move_Scorer.rb`
**Bug:** `target.pbSpeed > user.pbSpeed` gave +35 for speed-lowering moves when target
is "faster." Under Trick Room, lowering the target's speed makes them move FIRST
(the opposite of the intended effect).
**Fix:** `target_moves_first = tr_active ? (target.pbSpeed < user.pbSpeed) : (target.pbSpeed > user.pbSpeed)`

### Bug 3 — Move_Scorer Gooey/Tangling Hair penalty ignores Trick Room (MEDIUM)
**File:** `2_Move_Intelligence/0_Move_Scorer.rb`
**Bug:** `user.pbSpeed >= target.pbSpeed` applied a +15 penalty for "losing speed
advantage" from Gooey/Tangling Hair contact. Under Trick Room, the user with higher
`pbSpeed` actually moves LAST — getting speed lowered by Gooey would make them FASTER
in Trick Room terms (lower speed = first).
**Fix:** `user_moves_first = tr_active ? (user.pbSpeed < target.pbSpeed) : (user.pbSpeed >= target.pbSpeed)`

### Bug 4 — Move_Scorer Cotton Down penalty ignores Trick Room (LOW)
**File:** `2_Move_Intelligence/0_Move_Scorer.rb`
**Bug:** `user.pbSpeed >= target.pbSpeed` applied a +8 penalty for Cotton Down speed
loss when user is "faster." Same Trick Room inversion issue as Gooey/Tangling Hair.
**Fix:** `user_moves_first = tr_active ? (user.pbSpeed < target.pbSpeed) : (user.pbSpeed >= target.pbSpeed)`

### Bug 5 — Move_Scorer Thunder Wave priority boost ignores Trick Room (MEDIUM)
**File:** `2_Move_Intelligence/0_Move_Scorer.rb`
**Bug:** `target.pbSpeed > user.pbSpeed` in the priority move evaluation gave Thunder
Wave a +180 priority boost for "crippling faster threats." Under Trick Room, the
"faster" target is not a speed threat.
**Fix:** Added TR-aware check before granting priority boost.

### Bug 6 — Disruption_Moves Taunt outspeeds bonus ignores Trick Room (LOW)
**File:** `2_Move_Intelligence/Disruption_Moves.rb`
**Bug:** `user.pbSpeed > target.pbSpeed * 1.3` gave +15 for Taunt when user outspeeds
by 30%+. Under Trick Room, user with higher speed moves LAST, so Taunt wouldn't
land first — the bonus is wrong.
**Fix:** `user_moves_first = tr_active ? (user.pbSpeed < target.pbSpeed * 1.3) : (user.pbSpeed > target.pbSpeed * 1.3)`

### Bug 7 — Switch_Intelligence OHKO danger check ignores Trick Room (MEDIUM)
**File:** `4_Battle_Strategy/Switch_Intelligence.rb`
**Bug:** `target.pbSpeed > user.pbSpeed` identified "faster" opponents as OHKO threats
(they strike first). Under Trick Room, the higher-speed opponent moves LAST and is
not an immediate OHKO threat.
**Fix:** `tr_active ? (target.pbSpeed < user.pbSpeed) : (target.pbSpeed > user.pbSpeed)`

### Bug 8 — Switch_Intelligence "doomed" check ignores Trick Room (LOW)
**File:** `4_Battle_Strategy/Switch_Intelligence.rb`
**Bug:** `target.pbSpeed > current_user.pbSpeed` determined if user is "doomed" (low HP
and opponent outspeeds). Under Trick Room, the higher-speed opponent moves LAST, so
user is not necessarily doomed.
**Fix:** `target_moves_first = tr_active ? (target.pbSpeed < current_user.pbSpeed) : (target.pbSpeed > current_user.pbSpeed)`

### Bug 9 — Switch_Intelligence "can KO first" check ignores Trick Room (MEDIUM)
**File:** `4_Battle_Strategy/Switch_Intelligence.rb`
**Bug:** `user.pbSpeed > target.pbSpeed` determined if user can KO first by being
"faster." Under Trick Room, speed advantage is inverted — the slower Pokemon strikes
first.
**Fix:** `user_moves_first = tr_active ? (user.pbSpeed < target.pbSpeed) : (user.pbSpeed > target.pbSpeed)`

### Bug 10 — Switch_Intelligence sacrifice eval ignores Trick Room (LOW)
**File:** `4_Battle_Strategy/Switch_Intelligence.rb`
**Bug:** `target.pbSpeed > user.pbSpeed` in sacrifice value evaluation checked if
target outspeeds to determine if user is doomed. Under Trick Room, higher speed
doesn't mean moving first.
**Fix:** `target_moves_first = tr_active ? (target.pbSpeed < user.pbSpeed) : (target.pbSpeed > user.pbSpeed)`

### Severity Summary (Round 46)
| Severity | Count |
|----------|-------|
| MEDIUM   | 6     |
| LOW      | 4     |
| **Total** | **10** |

### Files Modified (Round 46)
| File | Changes |
|------|---------|
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: Thunder Wave bonus TR-aware, LowerTargetSpeed TR-aware, Gooey/TanglingHair TR-aware, Thunder Wave priority TR-aware |
| `2_Move_Intelligence/0_Move_Scorer.rb` | LOW: Cotton Down penalty TR-aware |
| `2_Move_Intelligence/Disruption_Moves.rb` | LOW: Taunt outspeeds bonus TR-aware |
| `4_Battle_Strategy/Switch_Intelligence.rb` | MEDIUM: OHKO danger TR-aware, "can KO first" TR-aware |
| `4_Battle_Strategy/Switch_Intelligence.rb` | LOW: "doomed" check TR-aware, sacrifice eval TR-aware |

---

## Audit Round 47 — Missing Ability Multipliers in Simplified Damage Calculations

**Pattern:** The main `calculate_rough_damage` method in Move_Scorer.rb correctly
handles Adaptability (2x STAB instead of 1.5x) and Huge Power/Pure Power (2x Attack
for physical moves). However, 7 other simplified damage calculations across 5 files
used a flat `stab = 1.5` and raw `attacker.attack` without these ability modifiers.
In Pokemon Essentials, `battler.attack` returns the stat after IV/EV/Nature/stages
but does NOT include ability multipliers — those are applied during damage calculation.
Missing Adaptability = 25% damage underestimate; missing Huge Power = 50% underestimate.
For Pokemon like Azumarill, Mega Mawile, Crawdaunt, and Porygon-Z, these cause
incorrect KO threshold calculations, bad switch decisions, and wrong win condition
assessments.

### Bug 1 — Combat_Utilities.estimate_damage missing Adaptability + Huge Power (MEDIUM)
**File:** `1_Core/Combat_Utilities.rb`
**Bug:** Core `estimate_damage` utility used by 8+ callers (Advanced_Abilities,
Recoil_Tracking, Advanced_Items, Doubles_Coordination) calculated STAB as flat 1.5x
and used raw `attacker.attack` without Huge Power/Pure Power 2x multiplier.
**Fix:** Added `stab = 2.0 if stab == 1.5 && attacker.hasActiveAbility?(:ADAPTABILITY)`
and Huge Power/Pure Power `base_damage *= 2` for physical moves.

### Bug 2 — Switch_Intelligence "can KO" check missing Adaptability + Huge Power (MEDIUM)
**File:** `4_Battle_Strategy/Switch_Intelligence.rb`
**Bug:** The KO threshold check (`estimated_damage >= target.hp * 0.85`) used flat
1.5x STAB and raw attack stat. For an Adaptability Crawdaunt or Huge Power Azumarill,
this could incorrectly conclude "can't KO" when the Pokemon actually can.
**Fix:** Added Adaptability STAB boost and Huge Power attack multiplier.

### Bug 3 — Switch_Intelligence opponent KO-back check missing Adaptability + Huge Power (MEDIUM)
**File:** `4_Battle_Strategy/Switch_Intelligence.rb`
**Bug:** The "can opponent KO us back?" check used flat 1.5x and raw attack for the
opponent. Missing these multipliers means underestimating opponent threat — the AI
might stay in when an Adaptability/Huge Power opponent would actually OHKO.
**Fix:** Added `opp_stab = 2.0` for Adaptability and `opp_atk *= 2` for Huge Power.

### Bug 4 — Switch_Intelligence sacrifice damage calc missing Adaptability + Huge Power (MEDIUM)
**File:** `4_Battle_Strategy/Switch_Intelligence.rb`
**Bug:** `estimate_sac_damage_percent` used flat 1.5x STAB and raw attack stat.
For sacrifice value calculations, this underestimates damage from Huge Power/Adaptability
attackers, leading to incorrect "doomed" assessments.
**Fix:** Added Adaptability STAB and Huge Power attack multiplier.

### Bug 5 — Move_Scorer estimate_best_damage missing Adaptability + Huge Power (MEDIUM)
**File:** `2_Move_Intelligence/0_Move_Scorer.rb`
**Bug:** The `estimated_best_damage` helper in Move_Scorer used flat 1.5x STAB and
raw attack. This affects move comparison scoring — moves from Adaptability/Huge Power
users would be systematically undervalued.
**Fix:** Added Adaptability STAB and Huge Power/Pure Power attack modifier.

### Bug 6 — Win_Conditions.estimate_damage_percent missing Adaptability + Huge Power (LOW)
**File:** `6_Meta_Mechanics/Win_Conditions.rb`
**Bug:** Win condition damage estimates used flat 1.5x STAB and raw attack. This
could cause the AI to miss winning positions for Adaptability/Huge Power sweepers.
Used `respond_to?(:hasActiveAbility?)` guard since this function handles both Battler
and Pokemon objects.
**Fix:** Added conditional Adaptability 2.0x STAB and Huge Power attack multiplier.

### Bug 7 — Pivot_Moves.estimate_damage_percent missing Adaptability + Huge Power (LOW)
**File:** `5_Format_Specific/Pivot_Moves.rb`
**Bug:** Pivot decision damage estimates used flat 1.5x and raw attack. This could
cause bad U-turn/Volt Switch decisions against Adaptability/Huge Power threats.
**Fix:** Added Adaptability STAB and Huge Power attack multiplier.

### Bug 8 — Switch_Intelligence "can KO first" Huge Power missing (LOW)
**File:** `4_Battle_Strategy/Switch_Intelligence.rb`
**Bug:** The "can we KO first if faster" damage estimate at the Stay vs Switch
evaluation (separate from Bug 2) also used raw attack stat without Huge Power.
This is the same function that received the Trick Room fix in R46 — now the
damage estimate is also corrected.
**Fix:** Added Huge Power attack multiplier in the damage formula.

### Severity Summary (Round 47)
| Severity | Count |
|----------|-------|
| MEDIUM   | 5     |
| LOW      | 3     |
| **Total** | **8** |

### Files Modified (Round 47)
| File | Changes |
|------|---------|
| `1_Core/Combat_Utilities.rb` | MEDIUM: estimate_damage adds Adaptability STAB + Huge Power/Pure Power multiplier |
| `4_Battle_Strategy/Switch_Intelligence.rb` | MEDIUM: KO check, opponent KO-back, sacrifice eval add Adaptability + Huge Power |
| `4_Battle_Strategy/Switch_Intelligence.rb` | LOW: "can KO first" adds Huge Power multiplier |
| `2_Move_Intelligence/0_Move_Scorer.rb` | MEDIUM: estimate_best_damage adds Adaptability + Huge Power |
| `6_Meta_Mechanics/Win_Conditions.rb` | LOW: estimate_damage_percent adds Adaptability + Huge Power |
| `5_Format_Specific/Pivot_Moves.rb` | LOW: estimate_damage_percent adds Adaptability + Huge Power |

---

## Round 48 — More Missed Adaptability / Huge Power in Simplified Damage Calcs
*Bug count this round: 6 | Running total: ~492*

Round 47 fixed 8 simplified damage calculation functions that were missing
Adaptability (2.0× STAB instead of 1.5×) and Huge Power/Pure Power (2× Attack).
A deeper audit in Round 48 uncovered 6 MORE simplified damage calcs across 6
additional files that were missed. Same root cause: each file had its own inline
damage formula that predated the centralized CombatUtilities.estimate_damage, and
none accounted for these ability multipliers.

### Bug 1 — Substitute_Logic estimate_move_damage missing abilities (MEDIUM)
**File:** `3_Combat_Mechanics/Substitute_Logic.rb`
**Bug:** `estimate_move_damage` used `damage *= 1.5` for STAB without checking
Adaptability, and raw `attacker.attack` without Huge Power/Pure Power. This
function is used to estimate whether a move will break a Substitute, so
underestimating damage from Adaptability/Huge Power users led to incorrect
predictions about Sub durability.
**Fix:** Added Huge Power/Pure Power 2× Attack multiplier for physical moves.
Changed STAB to use ternary: `attacker.hasActiveAbility?(:ADAPTABILITY) ? 2.0 : 1.5`.

### Bug 2 — Endgame_Scenarios calculate_rough_damage missing abilities (MEDIUM)
**File:** `6_Meta_Mechanics/Endgame_Scenarios.rb`
**Bug:** `calculate_rough_damage` used `stab = has_stab ? 1.5 : 1.0` without
Adaptability, and raw attack stat without Huge Power. This function drives
endgame 1v1 and 2v2 winning move detection. Underestimating damage from ability
users caused the AI to miss winning plays in the endgame.
**Fix:** Added respond_to?-safe Adaptability STAB check and Huge Power/Pure
Power attack multiplier.

### Bug 3 — Move_Memory max_known_damage missing abilities (MEDIUM)
**File:** `2_Move_Intelligence/Move_Memory.rb`
**Bug:** `max_known_damage` estimated max damage from a battler's observed moves
but used hardcoded 1.5× STAB and raw attack. For Adaptability users like
Porygon-Z or Crawdaunt, or Huge Power users like Azumarill, max threat
estimates were 25-50% too low.
**Fix:** Added `stab = 2.0 if stab == 1.5 && attacker.hasActiveAbility?(:ADAPTABILITY)`.
Added Huge Power/Pure Power `atk *= 2` for category 0 (physical) moves.

### Bug 4 — Prediction_System calculate_predicted_damage missing abilities (MEDIUM)
**File:** `4_Battle_Strategy/Prediction_System.rb`
**Bug:** `calculate_predicted_damage` used `stab = has_stab ? 1.5 : 1.0`
without Adaptability, and raw attack without Huge Power. This function
determines whether a predicted opponent move will OHKO, triggering pivot/protect
responses. Underpredicting damage meant the AI wouldn't protect or pivot when
it should have.
**Fix:** Added respond_to?-safe Adaptability and Huge Power checks matching
the dual Battler/Pokemon interface pattern used in this function.

### Bug 5 — Strategic_Awareness estimate_max_incoming missing abilities (MEDIUM)
**File:** `4_Battle_Strategy/Strategic_Awareness.rb`
**Bug:** `estimate_max_incoming` estimated maximum incoming damage from an
opponent's known moves using `stab = 1.5` and raw attack stat. Strategic
awareness uses this to identify high-threat opponents and inform switching
decisions. Missing these multipliers made the AI underrate threats from
Adaptability/Huge Power users.
**Fix:** Added Adaptability check via existing `get_ability(target)` helper.
Added Huge Power/Pure Power via `get_ability(target)` for physical moves.

### Bug 6 — Switch_Intelligence estimate_incoming_damage_percent missing abilities (MEDIUM)
**File:** `4_Battle_Strategy/Switch_Intelligence.rb`
**Bug:** `estimate_incoming_damage_percent` (quick damage estimate for
recovery timing) used `STAB_MULTIPLIER` (1.5) without Adaptability, and raw
attack without Huge Power. Note: the main `calculate_incoming_damage` in the
same file already had both fixes from R47 — this was a separate simpler
function used for recovery move timing.
**Fix:** Added `stab = 2.0 if stab == 1.5 && attacker.hasActiveAbility?(:ADAPTABILITY)`.
Added Huge Power/Pure Power `atk *= 2` for physical moves.

### Severity Summary (Round 48)
| Severity | Count |
|----------|-------|
| MEDIUM   | 6     |
| **Total** | **6** |

### Files Modified (Round 48)
| File | Changes |
|------|---------|
| `3_Combat_Mechanics/Substitute_Logic.rb` | MEDIUM: estimate_move_damage adds Adaptability + Huge Power |
| `6_Meta_Mechanics/Endgame_Scenarios.rb` | MEDIUM: calculate_rough_damage adds Adaptability + Huge Power |
| `2_Move_Intelligence/Move_Memory.rb` | MEDIUM: max_known_damage adds Adaptability + Huge Power |
| `4_Battle_Strategy/Prediction_System.rb` | MEDIUM: calculate_predicted_damage adds Adaptability + Huge Power |
| `4_Battle_Strategy/Strategic_Awareness.rb` | MEDIUM: estimate_max_incoming adds Adaptability + Huge Power |
| `4_Battle_Strategy/Switch_Intelligence.rb` | MEDIUM: estimate_incoming_damage_percent adds Adaptability + Huge Power |

---

## Audit Round 49 — Weather Ball / Terrain Pulse Type Resolution + Scrappy/Mind's Eye

**Theme:** The central `resolve_move_type` helper and all inline type‐resolution code
missed Weather Ball and Terrain Pulse type changes. All 80+ callers of `resolve_move_type`
(and all inline copies) evaluated these moves as Normal type regardless of weather or terrain,
causing wrong effectiveness, wrong STAB, wrong coverage, and wrong switch scoring.
Additionally, `Effectiveness.calculate` never accounted for Scrappy/Mind's Eye, treating
Normal/Fighting as always immune to Ghost — the AI would never select these moves vs Ghost.

### Bug 1 — resolve_move_type missing Weather Ball type (HIGH)
**File:** `1_Core/Combat_Utilities.rb`
**Bug:** `resolve_move_type(user, move)` handled -ate abilities and Tera Blast but NOT
Weather Ball. In Rain, Weather Ball should become Water type, but all 80+ callers saw it as
Normal. Damage estimates, STAB, type effectiveness, coverage analysis — all wrong.
**Fix:** Added Weather Ball type resolution: derives `battle` from `user.battle` (Battler
objects), maps weather to type (:Sun→:FIRE, :Rain→:WATER, :Sandstorm→:ROCK, :Hail/:Snow→:ICE).

### Bug 2 — resolve_move_type missing Terrain Pulse type (HIGH)
**File:** `1_Core/Combat_Utilities.rb`
**Bug:** Same function, Terrain Pulse stays Normal regardless of active terrain. A grounded
user on Electric Terrain should get Electric Terrain Pulse, but all callers saw Normal.
**Fix:** Added Terrain Pulse type resolution: checks `battle.field.terrain` and
`user.affectedByTerrain?`, maps terrain to type (:Electric→:ELECTRIC, :Grassy→:GRASS,
:Psychic→:PSYCHIC, :Misty→:FAIRY).

### Bug 3 — Move_Scorer Terrain Pulse BP doubled but type unchanged (HIGH)
**File:** `2_Move_Intelligence/0_Move_Scorer.rb`
**Bug:** In `calculate_rough_damage`, Terrain Pulse correctly doubled BP when user is on
terrain, but `effective_type` was never changed from Normal. The Weather Ball section
(immediately after) correctly changed BOTH type and BP. Terrain Pulse damage was calculated
with doubled BP but Normal type — wrong effectiveness and wrong STAB.
**Fix:** Added type change to match the Weather Ball pattern: Electric→:ELECTRIC,
Grassy→:GRASS, Psychic→:PSYCHIC, Misty→:FAIRY.

### Bug 4 — Scrappy/Mind's Eye: Normal/Fighting always immune to Ghost (HIGH)
**File:** `1_Core/Combat_Utilities.rb` (new helper), `2_Move_Intelligence/0_Move_Scorer.rb`,
`4_Battle_Strategy/Switch_Intelligence.rb`
**Bug:** All `Effectiveness.calculate` calls use the base type chart which shows Normal and
Fighting as 0x against Ghost. The AI scored -200 for these moves and never selected them,
even when the user had Scrappy or Mind's Eye (which remove Ghost immunity). Pokemon like
Kangaskhan (Scrappy) or Ursaluna-Bloodmoon (Mind's Eye) could never use their Normal/Fighting
STAB moves against Ghost types.
**Fix:** Added `CombatUtilities.scrappy_effectiveness(type, user, defender_types)` helper that
wraps `Effectiveness.calculate` and removes Ghost immunity when user has Scrappy/Mind's Eye.
Applied to: `score_type_effectiveness` (move scoring gate), `calculate_rough_damage` (damage
calc), Wonder Guard check, CombatUtilities `estimate_damage`, Switch_Intelligence
`estimate_incoming_damage_percent`.

### Bug 5 — Scrappy missing in Substitute_Logic estimate_move_damage (MEDIUM)
**File:** `3_Combat_Mechanics/Substitute_Logic.rb`
**Bug:** `Effectiveness.calculate` used without Scrappy awareness. A Scrappy Pokemon's
Normal STAB would show 0 damage against Ghost substitute, wrongly predicting no damage.
**Fix:** Replaced with `CombatUtilities.scrappy_effectiveness`.

### Bug 6 — Scrappy missing in Move_Memory max_known_damage (MEDIUM)
**File:** `2_Move_Intelligence/Move_Memory.rb`
**Bug:** Same pattern — opponent's Scrappy Normal/Fighting moves would estimate 0 damage
against our Ghost types, understating threat assessment from remembered moves.
**Fix:** Replaced with `CombatUtilities.scrappy_effectiveness`.

### Bug 7 — Immunity check used inline type resolution missing Weather Ball/Terrain Pulse (MEDIUM)
**File:** `2_Move_Intelligence/0_Move_Scorer.rb`
**Bug:** The type-absorbing ability immunity check (Water Absorb, Volt Absorb, Flash Fire,
etc.) resolved move type inline with only -ate abilities + Tera Blast. Weather Ball in Rain
would check as Normal against Water Absorb instead of Water, missing the absorption check.
**Fix:** Replaced inline resolution with `resolve_move_type(user, move)` which now handles
all type changes.

### Bug 8 — score_type_effectiveness inline type resolution missing Weather Ball/Terrain Pulse (MEDIUM)
**File:** `2_Move_Intelligence/0_Move_Scorer.rb`
**Bug:** `score_type_effectiveness` resolved type inline (only -ate + Tera Blast). Weather Ball
in Sun would score as Normal vs target instead of Fire vs target, giving wrong effectiveness.
**Fix:** Replaced with `resolve_move_type(user, move)`.

### Bug 9 — score_stab_bonus inline type resolution missing Weather Ball/Terrain Pulse (LOW)
**File:** `2_Move_Intelligence/0_Move_Scorer.rb`
**Bug:** STAB calculation used inline type resolution. Weather Ball in Rain wouldn't get Water
STAB even on a Water-type user, because the resolved type was still Normal.
**Fix:** Replaced with `resolve_move_type(user, move)`.

### Bug 10 — Air Balloon check inline type resolution missing Weather Ball/Terrain Pulse (LOW)
**File:** `2_Move_Intelligence/0_Move_Scorer.rb`
**Bug:** Air Balloon Ground immunity check resolved type inline. Only mattered if Weather Ball
or Terrain Pulse could be Ground type (they can't), but the code inconsistency was resolved.
**Fix:** Replaced with `resolve_move_type(user, move)`.

### Severity Summary (Round 49)

| Severity | Count |
|----------|-------|
| HIGH     | 4     |
| MEDIUM   | 4     |
| LOW      | 2     |
| **Total**| **10**|

### Files Modified (Round 49)

| File | Changes |
|------|---------|
| `1_Core/Combat_Utilities.rb` | Added Weather Ball + Terrain Pulse to resolve_move_type; added scrappy_effectiveness helper |
| `2_Move_Intelligence/0_Move_Scorer.rb` | Terrain Pulse type in calculate_rough_damage; scrappy_effectiveness in 3 paths; resolve_move_type in 4 inline sites |
| `4_Battle_Strategy/Switch_Intelligence.rb` | scrappy_effectiveness in estimate_incoming_damage_percent |
| `3_Combat_Mechanics/Substitute_Logic.rb` | scrappy_effectiveness in estimate_move_damage |
| `2_Move_Intelligence/Move_Memory.rb` | scrappy_effectiveness in max_known_damage |

## Audit Round 50 — Missing Weather/Terrain/Item/Burn Modifiers in 7 Simplified Damage Calcs

Round 50 discovered that **7 simplified damage calculation methods** across
7 files were missing weather, terrain, item (Choice Band/Specs/Life Orb),
and burn modifiers — all Tier 1 multipliers (1.3x–1.5x boost or 0.5x reduction).
Switch_Intelligence and Move_Scorer had these modifiers, but the other calcs did not.
Additionally, 4 of these calcs were still using raw `Effectiveness.calculate` without
Scrappy/Mind's Eye awareness (not caught in R49 since those files weren't checked).

A new shared helper `CombatUtilities.field_modifier` was added to centralize
weather/terrain/item/burn calculations, eliminating 7× code duplication.

### Bug 1 (HIGH): CombatUtilities.estimate_damage missing field modifiers
- **File**: `1_Core/Combat_Utilities.rb`
- **Problem**: The centralized `estimate_damage` utility (used by Recoil_Tracking)
  had no weather, terrain, item, or burn modifiers
- **Impact**: Recoil damage estimates wrong by 30–50% when weather/terrain active
  or when attacker holds Choice Band/Specs/Life Orb or is burned
- **Fix**: Added `field_modifier` call with weather, terrain, items, burn

### Bug 2 (HIGH): Substitute_Logic.estimate_move_damage missing field modifiers
- **File**: `3_Combat_Mechanics/Substitute_Logic.rb`
- **Problem**: Sub timing calc had no weather, terrain, item, or burn modifiers
- **Impact**: AI makes bad Substitute decisions — thinks it's safe to sub when
  opponent's rain-boosted Water move would break it, or doesn't sub when
  opponent's weather-nerfed attack can't break it
- **Fix**: Added `field_modifier` call

### Bug 3 (HIGH): Move_Memory.max_known_damage missing field modifiers
- **File**: `2_Move_Intelligence/Move_Memory.rb`
- **Problem**: Remembered-move threat assessment had no field modifiers
- **Impact**: AI misjudges threat from remembered moves by 30–50% in
  weather/terrain-dominant matchups
- **Fix**: Added `field_modifier` call with `is_physical = move_data.category == 0`

### Bug 4 (MEDIUM): Prediction_System.calculate_predicted_damage missing field modifiers + Scrappy
- **File**: `4_Battle_Strategy/Prediction_System.rb`
- **Problem**: Prediction damage calc had neither field modifiers nor
  Scrappy/Mind's Eye effectiveness — used raw `Utilities.type_mod`
- **Impact**: Prediction-based scoring wrong when weather/terrain active;
  Normal/Fighting moves always predicted as 0 damage vs Ghost even with Scrappy
- **Fix**: Replaced `Utilities.type_mod` with `scrappy_effectiveness`;
  added `field_modifier` call

### Bug 5 (MEDIUM): Pivot_Moves.estimate_damage_percent missing field modifiers + Scrappy
- **File**: `5_Format_Specific/Pivot_Moves.rb`
- **Problem**: Pivot-vs-attack decision calc had no field modifiers and used
  raw `Effectiveness.calculate` without Scrappy
- **Impact**: AI makes wrong pivot decisions in weather/terrain;
  Scrappy users always predicted as doing 0 damage to Ghosts
- **Fix**: Replaced `Effectiveness.calculate` with `scrappy_effectiveness`;
  added `field_modifier` call

### Bug 6 (MEDIUM): Endgame_Scenarios.calculate_rough_damage missing field modifiers + Scrappy
- **File**: `6_Meta_Mechanics/Endgame_Scenarios.rb`
- **Problem**: Endgame damage calc used `Utilities.type_mod` (no Scrappy)
  and had no field modifiers
- **Impact**: Wrong endgame decisions when weather/terrain/items matter most
- **Fix**: Replaced `Utilities.type_mod` with `scrappy_effectiveness`;
  added `field_modifier` call

### Bug 7 (MEDIUM): Win_Conditions.estimate_damage_percent missing field modifiers + Scrappy
- **File**: `6_Meta_Mechanics/Win_Conditions.rb`
- **Problem**: Win condition assessment used raw `Effectiveness.calculate`
  (no Scrappy) and had no field modifiers
- **Impact**: Win/loss predictions off by 30–50% in active weather/terrain
- **Fix**: Replaced `Effectiveness.calculate` with `scrappy_effectiveness`;
  added `field_modifier` call

### New Helper: CombatUtilities.field_modifier
- **File**: `1_Core/Combat_Utilities.rb`
- **Purpose**: Centralized weather/terrain/item/burn modifier calculation
- **Parameters**: `(battle, attacker, effective_type, move, is_physical, target)`
- **Handles**:
  - Weather: Sun Fire 1.5x / Water 0.5x, Rain Water 1.5x / Fire 0.5x,
    HarshSun and HeavyRain included
  - Terrain: Electric/Grassy/Psychic 1.3x (grounded attacker),
    Misty Dragon 0.5x (grounded target),
    Grassy Earthquake/Bulldoze/Magnitude 0.5x (grounded target)
  - Items: Choice Band physical 1.5x, Choice Specs special 1.5x, Life Orb 1.3x
  - Burn: Physical halved unless Guts
- **Defensive**: `battle` falls back to `attacker.battle rescue nil`;
  all terrain checks use `respond_to?(:affectedByTerrain?)`

### Severity Summary (Round 50)

| Severity | Count |
|----------|-------|
| HIGH     | 3     |
| MEDIUM   | 4     |
| **Total**| **7** |

(+ 4 Scrappy fixes bundled with the MEDIUM bugs above = 11 individual fixes)

### Files Modified (Round 50)

| File | Changes |
|------|---------|
| `1_Core/Combat_Utilities.rb` | New `field_modifier` helper; added field_modifier call to `estimate_damage` |
| `3_Combat_Mechanics/Substitute_Logic.rb` | Added field_modifier call to `estimate_move_damage` |
| `2_Move_Intelligence/Move_Memory.rb` | Added field_modifier call to `max_known_damage` |
| `4_Battle_Strategy/Prediction_System.rb` | Scrappy effectiveness + field_modifier in `calculate_predicted_damage` |
| `5_Format_Specific/Pivot_Moves.rb` | Scrappy effectiveness + field_modifier in `estimate_damage_percent` |
| `6_Meta_Mechanics/Endgame_Scenarios.rb` | Scrappy effectiveness + field_modifier in `calculate_rough_damage` |
| `6_Meta_Mechanics/Win_Conditions.rb` | Scrappy effectiveness + field_modifier in `estimate_damage_percent` |

## Audit Round 51 — Missing Defender Modifiers (Assault Vest, Eviolite, Weather Defense)

Round 51 discovered that **8 damage estimation methods** were missing
target-side defensive modifiers: Assault Vest (1.5x SpDef on special moves),
Eviolite (1.5x Def/SpDef for NFE Pokemon), and weather defense boosts
(Sandstorm Rock 1.5x SpDef, Snow Ice 1.5x Def). These 33–50% defense
multipliers are not included in stat getters and must be applied explicitly.

Switch_Intelligence had a particularly misleading comment — "Sandstorm boosts
Rock Sp.Def (already in stats for Battler, not party Pokemon)" — but the
defender IS a party Pokemon (switch_pkmn), so the boost was never applied.

A new shared helper `CombatUtilities.defender_modifier` centralizes all
target-side defensive modifiers.

### Bug 1 (HIGH): Switch_Intelligence missing Sandstorm Rock SpDef + Snow Ice Def
- **File**: `4_Battle_Strategy/Switch_Intelligence.rb`
- **Problem**: Comment claimed weather defense was "already in stats" but
  `switch_pkmn` is a party Pokemon — raw stats without weather modifiers
- **Impact**: Switch-in damage estimates off by 33% against Rock-types in
  Sandstorm or Ice-types in Snow — AI switches into threats it shouldn't
- **Fix**: Added Sandstorm Rock SpDef 1.5x and Snow Ice Def 1.5x checks

### Bug 2 (HIGH): 7 simplified calcs missing Assault Vest
- **Files**: Combat_Utilities, Substitute_Logic, Move_Memory,
  Prediction_System, Pivot_Moves, Endgame_Scenarios, Win_Conditions
- **Problem**: None account for Assault Vest's 1.5x SpDef on special moves
- **Impact**: Special damage overestimated by 33% against AV holders (e.g.
  Assault Vest Goodra, Tyranitar) — AI makes wrong sub/pivot/KO decisions
- **Fix**: Added `defender_modifier` call to all 7 calcs

### Bug 3 (MEDIUM): 7 simplified calcs missing Eviolite
- **Files**: Same 7 as Bug 2
- **Problem**: None account for Eviolite's 1.5x Def/SpDef for NFE Pokemon
- **Impact**: Damage overestimated by 33% against Eviolite holders (e.g.
  Eviolite Chansey, Dusclops, Porygon2)
- **Fix**: Included in `defender_modifier` with evolution check

### Bug 4 (MEDIUM): 7 simplified calcs missing Sandstorm Rock SpDef
- **Files**: Same 7 as Bug 2
- **Problem**: Sandstorm gives Rock-types 1.5x SpDef — not in stat getters
- **Impact**: Special damage overestimated by 33% against Rock-types in
  Sandstorm (Tyranitar, Gigalith, etc.)
- **Fix**: Included in `defender_modifier`

### Bug 5 (MEDIUM): 7 simplified calcs missing Snow Ice Def
- **Files**: Same 7 as Bug 2
- **Problem**: Snow (Gen 9) gives Ice-types 1.5x Def — not in stat getters
- **Impact**: Physical damage overestimated by 33% against Ice-types in Snow
- **Fix**: Included in `defender_modifier`

### New Helper: CombatUtilities.defender_modifier
- **File**: `1_Core/Combat_Utilities.rb`
- **Purpose**: Centralized target-side defensive modifier calculation
- **Parameters**: `(battle, target, is_physical)`
- **Handles**:
  - Assault Vest: special damage * 0.67
  - Eviolite: all damage * 0.67 (NFE check via `species_data.get_evolutions`)
  - Sandstorm Rock SpDef: special damage * 0.67
  - Snow Ice Def: physical damage * 0.67
- **Defensive**: All checks use `rescue false` for safe access on both
  Battler and party Pokemon objects

### Severity Summary (Round 51)

| Severity | Count |
|----------|-------|
| HIGH     | 2     |
| MEDIUM   | 6     |
| **Total**| **8** |

### Files Modified (Round 51)

| File | Changes |
|------|------|
| `1_Core/Combat_Utilities.rb` | New `defender_modifier` helper; added defender_modifier to `estimate_damage` |
| `3_Combat_Mechanics/Substitute_Logic.rb` | Added defender_modifier to `estimate_move_damage` |
| `2_Move_Intelligence/Move_Memory.rb` | Added defender_modifier to `max_known_damage` |
| `4_Battle_Strategy/Prediction_System.rb` | Added defender_modifier to `calculate_predicted_damage` |
| `4_Battle_Strategy/Switch_Intelligence.rb` | Added Sandstorm Rock SpDef 1.5x + Snow Ice Def 1.5x |
| `5_Format_Specific/Pivot_Moves.rb` | Added defender_modifier to `estimate_damage_percent` |
| `6_Meta_Mechanics/Endgame_Scenarios.rb` | Added defender_modifier to `calculate_rough_damage` |
| `6_Meta_Mechanics/Win_Conditions.rb` | Added defender_modifier to `estimate_damage_percent` |

---

## Audit Round 52 — Missing Screen Modifiers + Parental Bond in Simplified Damage Calcs

Round 52 discovered that **8 simplified damage calculation methods** across
the AAI system completely ignored **Reflect / Light Screen / Aurora Veil**
screen effects (0.5x damage in singles, 0.67x in doubles), and **7 of those
8 calcs** also lacked **Parental Bond** handling (1.25x — second hit at 25%).
This meant the AI was dramatically over-estimating damage when the opponent
had screens up, and under-estimating damage from Parental Bond users.

### New Shared Helper

**`CombatUtilities.screen_modifier(battle, attacker, target, is_physical)`**

Centralised screen check for all simplified calcs:
- **Reflect**: physical damage halved (singles 0.5x, doubles 0.67x)
- **Light Screen**: special damage halved
- **Aurora Veil**: all damage halved
- **Infiltrator**: bypasses all screens (returns 1.0)
- Handles both Battler targets (`pbOwnSide`) and party-Pokémon targets
  (falls through to `attacker.pbOpposingSide` for Switch_Intelligence)

### Bugs Fixed (15 total)

| # | Severity | File | Bug |
|---|----------|------|-----|
| 1 | **HIGH** | `Combat_Utilities.rb` | `estimate_damage` ignored Reflect/Light Screen/Aurora Veil |
| 2 | **HIGH** | `Switch_Intelligence.rb` | `calculate_incoming_damage` ignored screens — switch-in damage wildly over-estimated behind screens |
| 3 | **MEDIUM** | `Substitute_Logic.rb` | `estimate_move_damage` ignored screens |
| 4 | **MEDIUM** | `Move_Memory.rb` | `max_known_damage` ignored screens |
| 5 | **MEDIUM** | `Prediction_System.rb` | `calculate_predicted_damage` ignored screens |
| 6 | **MEDIUM** | `Pivot_Moves.rb` | `estimate_damage_percent` ignored screens |
| 7 | **MEDIUM** | `Endgame_Scenarios.rb` | `calculate_rough_damage` ignored screens |
| 8 | **MEDIUM** | `Win_Conditions.rb` | `estimate_damage_percent` ignored screens |
| 9 | **HIGH** | `Combat_Utilities.rb` | `estimate_damage` ignored Parental Bond (1.25x) |
| 10 | **HIGH** | `Substitute_Logic.rb` | `estimate_move_damage` ignored Parental Bond |
| 11 | **MEDIUM** | `Move_Memory.rb` | `max_known_damage` ignored Parental Bond |
| 12 | **MEDIUM** | `Prediction_System.rb` | `calculate_predicted_damage` ignored Parental Bond |
| 13 | **MEDIUM** | `Pivot_Moves.rb` | `estimate_damage_percent` ignored Parental Bond |
| 14 | **MEDIUM** | `Endgame_Scenarios.rb` | `calculate_rough_damage` ignored Parental Bond |
| 15 | **MEDIUM** | `Win_Conditions.rb` | `estimate_damage_percent` ignored Parental Bond |

*Note: Switch_Intelligence already had Parental Bond handling (lines 1120–1125).*

### Severity Summary (Round 52)

| Severity | Count |
|----------|-------|
| HIGH | 4 |
| MEDIUM | 11 |
| **Total** | **15** |

### Files Modified (Round 52)

| File | Changes |
|------|------|
| `1_Core/Combat_Utilities.rb` | New `screen_modifier` helper; added screen_modifier + Parental Bond to `estimate_damage` |
| `3_Combat_Mechanics/Substitute_Logic.rb` | Added screen_modifier + Parental Bond to `estimate_move_damage` |
| `2_Move_Intelligence/Move_Memory.rb` | Added screen_modifier + Parental Bond to `max_known_damage` |
| `4_Battle_Strategy/Prediction_System.rb` | Added screen_modifier + Parental Bond to `calculate_predicted_damage` |
| `4_Battle_Strategy/Switch_Intelligence.rb` | Added screen_modifier to `calculate_incoming_damage` |
| `5_Format_Specific/Pivot_Moves.rb` | Added screen_modifier + Parental Bond to `estimate_damage_percent` |
| `6_Meta_Mechanics/Endgame_Scenarios.rb` | Added screen_modifier + Parental Bond to `calculate_rough_damage` |
| `6_Meta_Mechanics/Win_Conditions.rb` | Added screen_modifier + Parental Bond to `estimate_damage_percent` |

---

## Audit Round 53 — Missing Ability Damage Modifiers (Fur Coat, Ice Scales, Multiscale, etc.)

Round 53 discovered that **all 8 simplified damage calculations** completely
ignored defensive abilities like **Fur Coat** (0.5x physical), **Ice Scales**
(0.5x special), **Filter/Solid Rock/Prism Armor** (0.75x SE), **Multiscale/
Shadow Shield** (0.5x at full HP), **Thick Fat** (0.5x Fire/Ice), **Heatproof**
(0.5x Fire), and **Water Bubble** (0.5x Fire on target), plus the offensive
ability **Tinted Lens** (2x NVE damage). Switch_Intelligence had partial
coverage (Thick Fat, Filter, Solid Rock) but was missing 9 of these abilities.

### New Shared Helper

**`CombatUtilities.ability_damage_modifier(attacker, target, effective_type, is_physical, effectiveness)`**

Centralised ability modifier for all simplified calcs:
- **Fur Coat** (target): physical damage ×0.5
- **Ice Scales** (target): special damage ×0.5
- **Thick Fat** (target): Fire/Ice damage ×0.5
- **Heatproof** (target): Fire damage ×0.5
- **Water Bubble** (target): Fire damage ×0.5
- **Filter / Solid Rock / Prism Armor** (target): SE damage ×0.75
- **Multiscale / Shadow Shield** (target): damage ×0.5 at full HP
- **Tinted Lens** (attacker): NVE damage ×2.0
- Handles both Battler (`hasActiveAbility?`) and party Pokémon (`ability_id`)

### Bugs Fixed (17 total)

| # | Severity | File | Bug |
|---|----------|------|-----|
| 1 | **HIGH** | `Combat_Utilities.rb` | `estimate_damage` ignored all defensive/offensive ability modifiers |
| 2 | **HIGH** | `Substitute_Logic.rb` | `estimate_move_damage` ignored all ability modifiers |
| 3 | **HIGH** | `Move_Memory.rb` | `max_known_damage` ignored all ability modifiers |
| 4 | **MEDIUM** | `Prediction_System.rb` | `calculate_predicted_damage` ignored all ability modifiers |
| 5 | **MEDIUM** | `Pivot_Moves.rb` | `estimate_damage_percent` ignored all ability modifiers |
| 6 | **MEDIUM** | `Endgame_Scenarios.rb` | `calculate_rough_damage` ignored all ability modifiers |
| 7 | **MEDIUM** | `Win_Conditions.rb` | `estimate_damage_percent` ignored all ability modifiers |
| 8 | **HIGH** | `Switch_Intelligence.rb` | Missing Prism Armor (0.75x SE) — Necrozma-DW tanked hits incorrectly |
| 9 | **HIGH** | `Switch_Intelligence.rb` | Missing Fur Coat (0.5x physical) — Furfrou/A-Persian doubled bulkiness ignored |
| 10 | **MEDIUM** | `Switch_Intelligence.rb` | Missing Ice Scales (0.5x special) — Frosmoth half-special ignored |
| 11 | **MEDIUM** | `Switch_Intelligence.rb` | Missing Heatproof (0.5x Fire) — Bronzong Fire weakness over-estimated |
| 12 | **MEDIUM** | `Switch_Intelligence.rb` | Missing Water Bubble target (0.5x Fire) |
| 13 | **MEDIUM** | `Switch_Intelligence.rb` | Missing Multiscale/Shadow Shield (0.5x at full HP) — Dragonite switch-in damage wildly over-estimated |
| 14 | **MEDIUM** | `Switch_Intelligence.rb` | Missing Tinted Lens (2x NVE) — resisted damage from Yanmega/Butterfree under-estimated |
| 15 | **MEDIUM** | `Switch_Intelligence.rb` | `attacker_ability` used for Tinted Lens check before being defined — variable was nil, check silently failed |
| 16 | **MEDIUM** | `Switch_Intelligence.rb` | Moved `attacker_ability = attacker.ability_id` assignment before Tinted Lens block |
| 17 | **MEDIUM** | `Switch_Intelligence.rb` | Duplicate `attacker_ability` assignment removed (now defined once, used everywhere) |

### Severity Summary (Round 53)

| Severity | Count |
|----------|-------|
| HIGH | 5 |
| MEDIUM | 12 |
| **Total** | **17** |

### Files Modified (Round 53)

| File | Changes |
|------|------|
| `1_Core/Combat_Utilities.rb` | New `ability_damage_modifier` helper; added to `estimate_damage` |
| `3_Combat_Mechanics/Substitute_Logic.rb` | Added ability_damage_modifier to `estimate_move_damage` |
| `2_Move_Intelligence/Move_Memory.rb` | Added ability_damage_modifier to `max_known_damage` |
| `4_Battle_Strategy/Prediction_System.rb` | Added ability_damage_modifier to `calculate_predicted_damage` |
| `4_Battle_Strategy/Switch_Intelligence.rb` | Added Prism Armor, Fur Coat, Ice Scales, Heatproof, Water Bubble, Multiscale/Shadow Shield, Tinted Lens; fixed `attacker_ability` definition order |
| `5_Format_Specific/Pivot_Moves.rb` | Added ability_damage_modifier to `estimate_damage_percent` |
| `6_Meta_Mechanics/Endgame_Scenarios.rb` | Added ability_damage_modifier to `calculate_rough_damage` |
| `6_Meta_Mechanics/Win_Conditions.rb` | Added ability_damage_modifier to `estimate_damage_percent` |