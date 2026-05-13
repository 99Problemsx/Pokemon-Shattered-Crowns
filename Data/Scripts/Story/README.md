# Story Scripts — Folder Layout

The `Data/Scripts/Story/` folder is recursively loaded by the SC Script
System (`Plugins/[SC] Script System/020_ScriptLoader.rb`,
`load_story_scripts`). Files are loaded in **alphabetical order across
the whole tree** — the numbered top-level folders give a clear,
chronological reading + loading sequence:

```
Data/Scripts/Story/
├─ 0_Prologue/          ← Chapter 0  (optional New Game opening)
├─ 1_Bible/             ← Chapter 1-55 (canonical main story, untouched)
├─ 2_Story_Additions/   ← Audit additions woven into bible chapters
├─ 3_Optional_Arcs/     ← Multi-scene side arcs (skippable)
├─ 4_Postgame/          ← Unlocks after main story + sequel hook
├─ 5_Systems/           ← Engine/mechanic-side support (always-on)
├─ Chapters/            ← German chapter design docs (markdown, not loaded)
├─ README.md            ← this file
├─ STORY_OVERVIEW.md    ← master tally of what was added per audit
├─ STORY_TODO.md        ← integration TODO (which map-events call what)
└─ Story_Bible.md       ← top-level lore reference
```

---

## 0_Prologue/ — *Chapter 0 (optional New Game route)*

| File | Contents |
|---|---|
| `Prologue.rb` | 7 cutscenes, ~90 min playable as Marcus 22 years before Ch1. Hoopa binding, Vex's breaking, the mask carved by Aurora. Completing unlocks codex entries that make the Ch28 mask-reveal hit harder. |

---

## 1_Bible/ — *Chapter 1-55 canonical main story*

The original bible. **DO NOT EDIT THESE FILES** to add new content —
use the additions/arcs folders instead so the bible remains the
canonical spine.

| File | Contents |
|---|---|
| `Main_Story.rb`        | 23k lines, 55 chapters, ~600 cutscenes — the spine. |
| `Main_Story_Quests.rb` | Quest definitions for main-story beats. |
| `Side_Quests.rb`       | Bible's existing side-quest list. |
| `Interludes.rb`        | Bible's between-chapter interludes. |
| `BattleMechanicStory.rb` | Battle-mechanic tutorial cutscenes. |
| `Soundtrack_Mapping.rb`  | BGM → scene assignments. |

---

## 2_Story_Additions/ — *Bible-chapter additions from audits*

Single-file additions woven into the bible's existing chapters via new
cutscene names. Each is registered with `GameData::Cutscene.define` and
called from the appropriate map-event in the chapter where it belongs.

| File | What it adds | Anchor chapters |
|---|---|---|
| `Audit_v2.rb` | Aurora at Aldric's funeral, Hoopa returns, Astoria hosts, wedding gap chapters | Ch24, Ch37, Ch39-41, Ch47, Ch50-51 |
| `Audit_v3.rb` | Grief revisits, starter character arc, Guardian voice helper | Ch1.5, Ch8, Ch17, Ch28, Ch33, Ch36.5, Ch41.5, Ch42 |
| `Audit_v4_Fixes.rb` | Logic-error fixes + 4 civilian POV cutscenes | Ch1.6, Ch3.5, Ch7.5, Ch9.5, Ch15.7, Ch18.5, Ch22.5, Ch26.5, Ch49.5 |

---

## 3_Optional_Arcs/ — *Multi-scene side arcs (skippable)*

These are **opt-in arcs** the player can do or skip. Each is anchored
to a specific main-story chapter via the file's naming (`Arc_ChXX_…`).
Players who never trigger the arc still finish the main story
normally; those who do trigger it get significantly more content.

| File | Arc | Length | Anchor |
|---|---|---|---|
| `Arc_Ch04_5_Verdantia_Truth.rb`              | Fern's secret + Lyra's lineage   | 7 scenes  | After Gym 1 |
| `Arc_Ch11_5_to_36_5_Liberation.rb`           | 6 Pokémon liberation operations  | 8 scenes  | Recurring through Acts 2-4 |
| `Arc_Ch24_5_Aldric_Notebooks.rb`             | Aldric's hidden research notebooks | 6 scenes | After funeral |
| `Arc_Ch35_5_Quiet_Year.rb`                   | Year between Sanctuary and Fracture | 6 scenes | Between Ch35 and Ch37 |
| `Arc_Ch37_to_41_Astoria_Expansion.rb`        | 5 NPCs + 3 side-quests + Vex notebook | 6 scenes + 3 quests | Astoria visit |

---

## 4_Postgame/ — *Postgame content (after Ch55 True Ending)*

Unlocked one-by-one after specific main-story milestones.

| File | What it adds | Unlock |
|---|---|---|
| `Marcus_Battles.rb`            | 3-tier postgame Champion battle (Marcus solo / +Aurora / Prime) | Any ending complete |
| `Arc_Ch47_5_Hoopa_Sanctuary.rb` | Hoopa's six-month recovery + Ring Shop                          | After Ch47 |
| `NG_Plus.rb`                   | Carry-over + hidden 6th ending "Mercy from the Throne"          | After first ending |
| `Arc_Ch55_5_Sequel_Hook.rb`    | Quill, Joa, Bel — next-generation Chosen — TO BE CONTINUED      | After True Ending + 5 endings seen |

---

## 5_Systems/ — *Always-on engine/mechanic support*

These files don't add cutscenes the player triggers directly — they
provide the underlying systems the rest of the content uses. Load order
inside this folder doesn't matter; everything inside Systems hooks up
on load and stays inert until called.

| File | System |
|---|---|
| `Achievements.rb`         | ~70 story achievements, dispatcher on `:on_sc_chapter_completed` |
| `Alternative_Endings.rb`  | 5 morality-driven endings + dispatcher |
| `Bond_Quests.rb`          | 15 character-bond quests (Lyra×5, Kael×5, L+K×5) |
| `Fate_Point_Events.rb`    | Destiny Board ↔ story-beat wiring; aliases `Chapter.complete` |
| `Festival_Of_Crowns.rb`   | 6-booth interactive festival (replaces Ch3 dialog-only beats) |
| `Memory_Album.rb`         | Auto-saved keepsake quotes; ~50 memories pre-populated |
| `Pokedex_Lore.rb`         | 21 Asgheim-mythology Pokédex entries |
| `Romance_Branches.rb`     | 4 optional player romance paths (solo / Ragnar / Viktor / Anuk) |
| `Trainer_Card_Story.rb`   | Story-snapshot page on the Trainer Card |
| `Wild_Legendaries.rb`     | 8 story-tied legendary encounters with roaming logic |

---

## Reading order for an author

If you want to read the entire story in narrative order:

1. **`0_Prologue/Prologue.rb`** — Marcus's story, 22 years before Ch1
2. **`1_Bible/Main_Story.rb`** Chapters 1-55 in order
3. As you read each chapter, **check `2_Story_Additions/`** for any
   audit cutscenes anchored to that chapter and read them inline
4. At chapter break-points, **check `3_Optional_Arcs/`** for any arc
   anchored to that chapter (filename has `ChXX`)
5. After Ch55, the **`4_Postgame/`** files apply

For maintenance / lookup of "what runs when":
- File names in `3_Optional_Arcs/` and `4_Postgame/` include the
  chapter anchor (e.g. `Arc_Ch24_5_Aldric_Notebooks.rb`)
- `STORY_OVERVIEW.md` has a full chapter-by-chapter table
- `STORY_TODO.md` lists which map-event needs to call which cutscene

---

## Load order summary (alphabetical recursive)

```
0_Prologue/Prologue.rb
1_Bible/BattleMechanicStory.rb
1_Bible/Interludes.rb
1_Bible/Main_Story.rb                    ← biggest file, defines all bible cutscenes
1_Bible/Main_Story_Quests.rb
1_Bible/Side_Quests.rb
1_Bible/Soundtrack_Mapping.rb
2_Story_Additions/Audit_v2.rb
2_Story_Additions/Audit_v3.rb
2_Story_Additions/Audit_v4_Fixes.rb
3_Optional_Arcs/Arc_Ch04_5_Verdantia_Truth.rb
3_Optional_Arcs/Arc_Ch11_5_to_36_5_Liberation.rb
3_Optional_Arcs/Arc_Ch24_5_Aldric_Notebooks.rb
3_Optional_Arcs/Arc_Ch35_5_Quiet_Year.rb
3_Optional_Arcs/Arc_Ch37_to_41_Astoria_Expansion.rb
4_Postgame/Arc_Ch47_5_Hoopa_Sanctuary.rb
4_Postgame/Arc_Ch55_5_Sequel_Hook.rb
4_Postgame/Marcus_Battles.rb
4_Postgame/NG_Plus.rb
5_Systems/Achievements.rb
5_Systems/Alternative_Endings.rb
5_Systems/Bond_Quests.rb
5_Systems/Fate_Point_Events.rb
5_Systems/Festival_Of_Crowns.rb
5_Systems/Memory_Album.rb
5_Systems/Pokedex_Lore.rb
5_Systems/Romance_Branches.rb
5_Systems/Trainer_Card_Story.rb
5_Systems/Wild_Legendaries.rb
```

All files use `Cutscene.define / Quest.define / Memory.define /
Achievement.define / CodexRegistry.add` which register at load time but
don't execute scene content until called — so load order between
content folders doesn't break anything as long as the SC Script System
plugin (which defines the DSLs) loads first.
