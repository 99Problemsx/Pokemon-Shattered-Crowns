# Story Scripts — Layout

Three buckets, by purpose:

```
Data/Scripts/Story/
├─ Main_Story.rb     ← THE narrative file (~28k lines), top-to-bottom in playthrough order
├─ Quests/           ← Quest definitions + interludes + soundtrack mapping
├─ Systems/          ← Engine-side support (always-on mechanics)
├─ Chapters/         ← German chapter design docs (markdown, not loaded)
├─ README.md         ← this file
├─ STORY_OVERVIEW.md ← master tally of what was added per audit
├─ STORY_TODO.md     ← integration TODO (which map-events call what)
└─ Story_Bible.md    ← top-level lore reference
```

The SC Script System loader (`Plugins/[SC] Script System/020_ScriptLoader.rb`,
`load_story_scripts`) uses `Dir.glob('**/*.rb').sort` — so everything
inside this folder is loaded recursively, alphabetically. The single
`Main_Story.rb` at the top loads first; `Quests/` and `Systems/` load
afterwards.

---

## Main_Story.rb — the narrative file

One file, top to bottom, in playthrough order. Sections:

| Part | Content | Source |
|---|---|---|
| **PART 1** | Prologue (Ch0, optional) — Marcus's Story, 22 years before Ch1 | merged in |
| **PART 2** | Main Story Bible (Ch1-55) — canonical 55-chapter spine | bible |
| **PART 3a-c** | Audit v2/v3/v4 additions (Aurora funeral, Hoopa return, grief revisits, civilian POV, etc.) | merged in |
| **PART 4a-e** | Optional side arcs (Verdantia Truth, Liberation, Aldric's Notebooks, Quiet Year, Astoria Expansion) | merged in |
| **PART 5a-d** | Postgame (Hoopa Sanctuary, Marcus battles, NG+, Sequel Hook) | merged in |

Each section starts with a `# PART X — Title` banner. Ctrl+F for
`PART ` to jump between sections, or `# Chapter ` to jump to a bible
chapter. Cutscene names are still globally-unique symbols, so any event
script can call `pbCutscene(:scene_name)` from anywhere.

---

## Quests/ — Quest data + bible support files

Files in this folder are **data definitions**, not narrative reading
material. Quest objectives, reward tables, interludes, soundtrack
mapping.

| File | Contents |
|---|---|
| `Main_Story_Quests.rb`     | Main-story quest definitions matching bible chapters |
| `Side_Quests.rb`            | Side-quest definitions (Joey's Rattata, fossil hunter, etc.) |
| `Interludes.rb`             | Between-chapter interlude scenes |
| `BattleMechanicStory.rb`    | Battle-mechanic tutorial cutscenes |
| `Soundtrack_Mapping.rb`     | BGM → scene assignments |

---

## Systems/ — Engine-side mechanics (always-on)

These files provide the support systems the rest of the content uses.
Load order inside this folder doesn't matter — everything hooks up at
load time and stays inert until called.

| File | System |
|---|---|
| `Achievements.rb`         | ~70 story achievements + dispatcher |
| `Alternative_Endings.rb`  | 5 morality-driven endings + dispatcher |
| `Bond_Quests.rb`          | 15 character-bond quests |
| `Fate_Point_Events.rb`    | Destiny Board ↔ story-beat wiring |
| `Festival_Of_Crowns.rb`   | 6-booth interactive Ch3 festival |
| `Memory_Album.rb`         | Auto-saved keepsake quotes (~50 memories) |
| `Pokedex_Lore.rb`         | 21 Asgheim-mythology Pokédex entries |
| `Romance_Branches.rb`     | 4 optional player romance paths |
| `Trainer_Card_Story.rb`   | Story-snapshot page on the Trainer Card |
| `Wild_Legendaries.rb`     | 8 story-tied legendary encounters |

---

## Looking up a specific scene

- Need a cutscene by chapter? Open `Main_Story.rb`, Ctrl+F `# Chapter N`
- Need an arc by anchor chapter? Open `Main_Story.rb`, Ctrl+F `PART 4`
  (or scroll to `PART 5` for postgame)
- Need a quest definition? `Quests/`
- Need a system / mechanic? `Systems/`
- Need the German design notes? `Chapters/` (markdown docs)

All cutscenes register globally by their symbol name, so map-event
scripts can call them with `pbCutscene(:scene_name)` regardless of
which file the definition lives in.
