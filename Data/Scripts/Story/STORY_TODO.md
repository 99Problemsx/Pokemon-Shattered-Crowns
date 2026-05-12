# Pokémon Shattered Crowns — Story TODO

Tracking remaining authoring/integration work after the v2 audit pass.
Everything below assumes the SC Script System (no PBS).

---

## ✅ Done in this audit pass

- **Aurora at Aldric's funeral** — `:ch24_aurora_arrives` (SC_Story_Audit_v2.rb)
- **Hoopa's return** — `:ch47_hoopa_returns` (SC_Story_Audit_v2.rb)
- **Aurora's research reveal** — `:ch15_5_aurora_call` (SC_Story_Audit_v2.rb)
- **Subject Zero arc** — `:ch20_5_lab_discovered` + `:ch20_5_subject_zero` (SC_Story_Audit_v2.rb)
- **Astoria hosts** — Lior, Sela, Orin, Vera-as-Keeper reveal (SC_Story_Audit_v2.rb)
- **Wedding pacing chapters** — `:ch50_5_kael_asks_marcus` + `:ch51_5_families_meet` (SC_Story_Audit_v2.rb)
- **Hoopa cameo at parade** — `:ch49_hoopa_cameo` (SC_Story_Audit_v2.rb)
- **Codex: The Calling** — explains why these three were chosen (entries_sample.rb)
- **Codex: 4 Generals backstories** — Vex / Shade / Dread / Ruin distinct motivations (entries_sample.rb)
- **Codex: Malachar, Hoopa, Subject Zero, First Chosen lineage** (entries_sample.rb)
- **Fate Point grants wired to story beats** — 11 keyed grants, ~14 FP through Main Story (Fate_Point_Events.rb)
- **15 Bond Quests scaffolded** — Lyra x5, Kael x5, Lyra-Kael x5 (Bond_Quests.rb)
- **5 Alternative Endings** — Pure Light, Light, Balance, Dark, Pure Dark (Alternative_Endings.rb)
- **Ending dispatcher** — `:ch34_ending_dispatch` routes by Morality tier (Alternative_Endings.rb)

---

## 🔧 Integration TODO — wire the new cutscenes into the actual map events

The cutscenes are defined. They need event-script calls to fire them. Each
chapter's main event script needs to add lines like:

```ruby
# At the end of the funeral chapter, before Ch25 unlocks:
pbCutscene(:ch24_aurora_arrives)
```

Locations to wire:

| Chapter | New cutscene to call | After which existing scene |
|---|---|---|
| 24 | `:ch24_aurora_arrives` | `:ch24_dad_arrives` |
| 47 | `:ch47_hoopa_returns` | `:ch47_guardians_freed` |
| 15→16 | `:ch15_5_aurora_call` | `:ch15_morning_resolve` |
| 20 | `:ch20_5_lab_discovered` → `:ch20_5_subject_zero` | `:ch20_kael_scouts` (optional side path) |
| 37 | `:ch37_captain_lior_intro` | `:ch37_captain_appears` |
| 39 | `:ch39_keeper_sela_intro` | `:ch39_entrance` |
| 40 | `:ch40_keeper_orin_intro` | `:ch40_temple_interior` |
| 41 | `:ch41_keeper_vera_reveal` | `:ch41_entering` |
| 49 | `:ch49_hoopa_cameo` | `:ch49_medals` |
| 50→51 | `:ch50_5_kael_asks_marcus` | `:ch50_sunset` |
| 51→52 | `:ch51_5_families_meet` | `:ch51_preparations` |
| 34 ending | `:ch34_ending_dispatch` | Replace `:ch34_victory` direct call |

---

## 🟡 Authoring TODO — items the audit identified but didn't fully write

These would be a third audit pass. Listed here so they don't get lost.

### 1. Champion (Elite Four) personalities
`full_story_index.md` lists `champion_fenris`, `champion_valdra`,
`champion_morwen`, `champion_orm` quests. Main_Story.rb only writes
Champion Viktor (Ch29). The four Elite Four members need:
- 1 cutscene each introducing them in Ch29
- A short codex entry each (`FENRIS_PROFILE`, etc.)
- Their actual trainer rosters in `AllTrainers.rb`

Suggested concept (matches the audit recommendation of seeding ex-Champion
Marcus's old league teammates):
- **Fenris** — Marcus's old training partner, Fire specialist
- **Valdra** — Aurora's contemporary, Dragon specialist
- **Morwen** — *Lady Morwen* from Ch25; same character, post-redemption
- **Orm** — Captain Lior's nephew (further Astoria-line connection)

### 2. Trainer-side Marek (the Hand sympathizer)
The original Ch6 "next Champion Marcus" was already renamed to Viktor.
The audit identified that Viktor's arc is good as written. **No further
work needed here** — flagging only because the original audit report
suggested a cult-sympathizer character, which we've effectively
absorbed into General Vex's backstory in the codex.

### 3. Side Story: Lyra's Farm
Story index lists `sq_lyra_farm_visit`. Not yet written. Concept:
- Available after Ch17 (player recovery from starter crisis)
- Takes player to Sunrise Farm for a day
- Berry-picking, helping Grandmother, hearing about Lyra as a child
- Reward: Sunrise Berry (custom, +friendship), small FP grant

### 4. Side Story: Kael's Orphanage
Story index lists `sq_kael_orphanage`. Tied to `bond_kael_4` (which IS
scaffolded). The deeper side-story would:
- Visit at a different chapter than bond_kael_4
- Battle the kids' protective Houndoom in earnest (not play-fight)
- Help Hilde rebuild after a Hand raid
- Reward: Houndoominite (Mega Stone), heavy friendship boost

### 5. Astoria region content beyond hosts
The hosts (Lior, Sela, Orin, Vera) are introduced. Astoria still needs:
- 2-3 wild encounter tables for Astoria-exclusive Pokémon
- A small overworld map (currently appears only as a destination, no
  exploration)
- Side quests for the Astoria-line refugees (~7 NPCs per codex)

### 6. New Game+ scaffolding
`Alternative_Endings.rb` sets `$PokemonGlobal.sc_bad_ending_seen` and
`sc_endings_seen` arrays — but no NG+ flow reads them yet. Add:
- A title-screen check for completed endings
- An NG+ option that unlocks at the title screen after first clear
- Special dialogue lines when re-meeting key characters with NG+ knowledge

### 7. Bond Quest cutscenes
Each of the 15 bond quests has objectives but no narrative cutscene.
Recommend writing one short cutscene per tier-5 quest (Lyra 5, Kael 5,
Lyra-Kael 5) since those are the emotional payoff. Lower tiers can stay
text-only if budget is tight.

### 8. Lore Codex registration
The `Plugins/[SC] Lore Codex/Data/entries_sample.rb` file is *sample*
content. To make codex entries actually unlock in-game, an event script
needs to call `codexDiscover(:THE_CALLING)` etc. Wire each entry to a
plausible discovery moment — most will fit naturally inside existing
cutscenes via `scene.script { codexDiscover(:KEY) }`.

### 9. Fate-Point trigger smoke test
The dispatcher in `Fate_Point_Events.rb` listens for
`:on_sc_chapter_completed` which is *triggered* by the aliased
`GameData::Chapter.complete`. Verify in-engine that:
- Chapter.complete is actually called from each chapter's terminal cutscene
- The aliased event fires
- pbEarnFatePoints triggers the message + sound

### 10. Aldric's hidden notebooks
`:ch24_aurora_arrives` ends with Aurora offering "Aldric's notebooks
when you're ready." This is foreshadowing — there should be a follow-up
cutscene `:ch25_aurora_notebooks` (or similar) where the player actually
visits Aurora and reads them. Not yet written.

---

## 🎲 Long-shot / nice-to-have

- **Marcus's old rival Champion run** — Post-game tournament where the
  ex-Champion Marcus comes out of retirement for a one-shot battle.
  Would be a great final challenge tied to Trainer Rematch system.
- **Bad-ending NG+ "Mercy from the Throne"** — Hinted in
  `Alternative_Endings.rb`. Would be a hidden 6th ending unlocked only
  by playing through Pure Dark first.
- **Hoopa shop** — Post-game, Hoopa runs a "Ring Item Shop" where rare
  hold items can be requested through their portal magic. Pays off
  Hoopa's promise of "we'll play tricks again someday."
- **Subject Zero post-game encounter** — Mewtwo can be found in the wild
  in a hidden Astoria location after the main story. Battles you, talks
  to Lyra, then offers itself to be caught (if treated kindly).

---

*This file is hand-curated. When you tick items off, please delete them
from the "Authoring TODO" section so the doc stays usable.*
