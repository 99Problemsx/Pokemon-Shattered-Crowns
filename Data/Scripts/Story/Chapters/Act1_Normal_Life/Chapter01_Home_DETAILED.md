# Kapitel 1: Home - Dawnhaven Village (DETAILLIERT)

## Übersicht
- **Ort:** Dawnhaven Village
- **Spielzeit:** ~30-45 Minuten
- **Gym:** Keiner (Einführungskapitel)
- **BGM:** Pokemon XY - Vaniville Town

---

# VOLLSTÄNDIGER SZENEN-ABLAUF

---

## Szene 1: `ch1_wake_up` - Aufwachen
**Trigger:** Spielstart

### Ablauf:
1. Bildschirm blendet ein
2. BGM: "Pokemon XY - Vaniville Town" startet
3. Warte 60 Frames

### Dialog:
```
Mom: \\PN! Zeit aufzuwachen!
Mom: Professor Aldric wartet im Labor auf dich!
Mom: Heute ist der Tag, an dem du dein erstes Pokémon bekommst!
```

### Animationen:
- Spieler zeigt `!` Emotion
- Spieler dreht sich: hoch → links → rechts → runter
- Spieler zeigt `♪` Emotion

### Weiterer Dialog:
```
\\PN: *gähnend* Endlich...
\\PN: Heute ist der Tag!
```

---

## Szene 2: `ch1_morning_routine` - Morgenroutine

### Ablauf:
1. BGM bleibt gleich

### Dialog:
```
\\PN: (Auf diesen Tag habe ich mein ganzes Leben gewartet.)
\\PN: (Heute... ändert sich alles.)
```

### Animationen:
- Bildschirm blendet aus (30 Frames)
- Sound: "Equip" (Anziehen)
- Warte 30 Frames
- Bildschirm blendet ein (30 Frames)
- "Status Up" Animation beim Spieler (Animation ID: 4)

---

## Szene 3: `ch1_breakfast_with_family` - Familienfrühstück

### Ablauf:
1. Kamera schwenkt nach unten (2 Tiles, 4 Geschwindigkeit)
2. Mom zeigt ❤️ Emotion
3. Dad zeigt ♪ Emotion

### Dialog:
```
Mom (Aurora): Iss auf! Man kann kein Abenteuer mit leerem Magen starten!
Dad (Marcus): Deine Mutter hat recht. Glaub mir.
Dad (Marcus): Das hab ich auf die harte Tour gelernt, in meinen Champion-Tagen.

\\PN: Dad, diese Geschichte hast du schon hundertmal erzählt.

Dad (Marcus): Und ich werd sie noch hundertmal mehr erzählen!
Mom (Aurora): *verdreht die Augen* Na los geht's wieder...

Dad (Marcus): Top Vier, finaler Kampf. Ich war am Verhungern.
Dad (Marcus): Hätte fast verloren, weil mein Magen lauter geknurrt hat als mein Glurak!

Mom (Aurora): So erinnere ich mich nicht dran.
Dad (Marcus): Künstlerische Freiheit, Schatz.

[ERZÄHLER]
Du hast gelacht. Deine Eltern waren verrückt.
Aber du wolltest es nicht anders haben.
```

---

## Szene 4: `ch1_dad_gift` - Vaters Geschenk
**BGM wechselt zu:** "Pokemon XY - Emotion"

### Ablauf:
1. Dad bewegt sich zum Spieler (`step_toward_player`)
2. Sound: "Item Get"
3. Animation ID: 20 bei Dad (Item-Reveal)

### Dialog:
```
Dad (Marcus): \\PN. Bevor du gehst.

[ERZÄHLER - Er zieht einen abgenutzten Pokéball hervor. Seine Hände sind vernarbt. Kampferprobt.]

Dad (Marcus): Das ist das Kind meines ersten Partners.
Dad (Marcus): Hab sie selbst aufgezogen, nachdem das Ei geschlüpft ist.
Dad (Marcus): Sie wollte unbedingt mit dir gehen.

\\PN: Dad... ich kann nicht—

Dad (Marcus): Doch, kannst du. Und wirst du.
Dad (Marcus): Ich war mal Champion. Deine Mutter hat mit mir die Welt gerettet.
Dad (Marcus): Zweimal.

Mom (Aurora): *aus der Küche* Dreimal, wenn du den Hoenn-Zwischenfall mitzählst!

Dad (Marcus): *lächelnd* Worauf ich hinaus will...
Dad (Marcus): Wir werden dich nicht zurückhalten. Das ist DEINE Reise.
Dad (Marcus): Aber wenn du uns brauchst... sind wir da.

Mom (Aurora): Immer.
```

### Animationen:
- Mom bewegt sich zum Spieler
- Alle drei zeigen ❤️ Emotion (Umarmungsszene)

---

## Szene 5: `ch1_walk_to_lab` - Weg durch das Dorf

### Ablauf:
1. Kamera schwenkt nach oben (5 Tiles, 2 Geschwindigkeit)
2. Warte 60 Frames
3. Kamera zurücksetzen

### Dialog:
```
Alter Mann: Auf zum Starter holen, \\PN?
Alter Mann: Viel Glück da draußen!

Kleines Mädchen: Mama, Mama! \\PN wird Trainer!
Mutter: Vielleicht wirst du auch mal einer, Schatz.
```

---

## Szene 6: `ch1_village_memories` - Dorferinnerungen

### Ablauf:
1. Kamera schwenkt nach rechts (3 Tiles)
2. Sound: "Splash" (Teich)
3. Kamera schwenkt nach unten (3 Tiles)
4. Sound: "Sheep" (Mareep/Wooloo)
5. Kamera zurücksetzen

### Dialog:
```
\\PN: (Ich werde diesen Ort vermissen...)

[ERZÄHLER]
Aber die Welt rief.
Und du konntest sie nicht länger ignorieren.
```

---

## Szene 7: `ch1_ragnar_appears` - Ragnar erscheint
**BGM wechselt zu:** "Pokemon BW - Rival Theme"

### Ablauf:
1. Spieler zeigt `!` Emotion
2. Spieler dreht sich zu Event RAGNAR
3. Ragnar bewegt sich: 3 Schritte + Sprung (Geschwindigkeit 5)

### Dialog:
```
Ragnar: YO! \\PN! WARTE!

Ragnar: *keuchend* Du wolltest doch nicht... ohne mich... losgehen!

\\PN: Ich wollte nur einen Vorsprung holen.

Ragnar: HA! Typisch \\PN!
Ragnar: Immer versuchen, Erster zu sein!
Ragnar: Aber NICHT HEUTE!
```

### Animationen:
- Ragnar zeigt `💡` Emotion
- Ragnar springt

### Weiterer Dialog:
```
Ragnar: Lass uns ZUSAMMEN unsere Starter holen!
Ragnar: Und dann besiege ich dich in unserem ersten Kampf!

\\PN: Das werden wir ja sehen.
```

---

## Szene 8: `ch1_lab_arrival` - Labor-Ankunft
**BGM wechselt zu:** "Pokemon DPPT - Professor Rowan"

### Ablauf:
1. Bildschirm blendet aus/ein (Ortwechsel)
2. Kamera schwenkt nach oben (2 Tiles)
3. Animation ID: 15 bei CENTRAL_MACHINE (Leuchten)

### Dialog:
```
Ragnar: Whoa... so cool...

Professor Aldric: Ah! Pünktlich auf die Minute!
Professor Aldric: Ihr beide! Kommt rein, kommt rein!
```

### Animationen:
- Professor dreht sich nach unten
- Professor zeigt ♪ Emotion

---

## Szene 9: `ch1_professor_talk` - Professors Rede

### Dialog:
```
Professor Aldric: Bevor wir anfangen...
Professor Aldric: Ich möchte, dass ihr etwas versteht.

Professor Aldric: Ein Trainer zu sein bedeutet nicht nur Kämpfe.
Professor Aldric: Es geht um Partnerschaft. Vertrauen. Freundschaft.

Professor Aldric: Euer Pokémon wird euer Gefährte sein.
Professor Aldric: In guten wie in schlechten Zeiten.
Professor Aldric: Behandelt sie mit Respekt.

\\PN: Ich verstehe, Professor.

Professor Aldric: *nickend* Gut.
Professor Aldric: Dein Vater hat das auch verstanden.
Professor Aldric: Du hast seinen Geist.
```

---

## Szene 10: `ch1_get_starter` - Starter wählen

### Dialog:
```
Professor Aldric: Ah, \\PN! Perfektes Timing!
Professor Aldric: Ich habe drei Pokémon hier, jedes einzelne besonders.
Professor Aldric: Wähle weise - dieser Partner wird für immer bei dir sein.
```

**→ SPIELER WÄHLT STARTER (via Map-Event)**

---

## Szene 11: `ch1_starter_bond` - Starter-Bindung
**BGM wechselt zu:** "Pokemon XY - Friends Theme"

### Ablauf:
1. Sound: "Ball Open"
2. Kamera-Blitz (10 Frames)
3. Animation ID: 40 beim Spieler (Pokémon erhalten)
4. Pokémon-Ruf abspielen

### Dialog:
```
\\PN: Hey, Partner.
\\PN: Sieht aus, als wären wir jetzt lange Zeit zusammen.
```

### Animationen:
- Starter springt
- Starter zeigt ❤️ Emotion

### Weiterer Dialog:
```
Professor Aldric: *lächelnd* Eine perfekte Kombination.
Professor Aldric: Ich wusste es.
```

### Abschluss:
- Kamera-Blitz warmfarbig (255, 255, 200, 100)

---

## Szene 12: `ch1_ragnar_starter` - Ragnars Starter
**BGM wechselt zu:** "Pokemon BW - Rival Theme"

### Ablauf:
1. Ragnar springt 2x
2. Ragnar zeigt `!` Emotion

### Dialog:
```
Ragnar: Okay, ich bin dran! ICH BIN DRAN!
Ragnar: Diesen hier! Ich kann es spüren!
```

### Animationen:
- Sound: "Ball Open"
- Kamera-Blitz
- Animation ID: 40 bei Ragnar
- Pikachu-Ruf
- Funken-Animation (ID: 3)

### Weiterer Dialog:
```
Ragnar: PERFEKT! Ein Pikachu!
Ragnar: Wir werden UNAUFHALTSAM sein!

Pikachu: Pika!
```

### Animationen:
- Pikachu springt
- Beide zeigen ❤️ Emotion

### Abschluss-Dialog:
```
Professor Aldric: *schmunzelnd* Zwei ausgezeichnete Paare.
Professor Aldric: Ich erwarte Großes von euch beiden.
```

---

## Szene 13: `ch1_first_rival_battle` - Erster Rivalen-Kampf
**BGM wechselt zu:** "Pokemon RSE - Rival Battle"

### Ablauf:
1. Ragnar dreht sich zum Spieler
2. Ragnar zeigt `!` Emotion
3. Ragnar springt

### Dialog:
```
Ragnar: Hey \\PN!
Ragnar: Wir haben jetzt unsere Partner...
Ragnar: Also gibt's nur EINE Sache zu tun!

\\PN: Du willst jetzt schon kämpfen?

Ragnar: NATÜRLICH!
Ragnar: Wir haben unser ganzes Leben darauf gewartet!
Ragnar: Wer zuerst gewinnt, hat den Vorteil!

Pikachu: Pika pika!
```

### Animationen:
- Starter-Ruf
- Animation ID: 1 beim Spieler

### Abschluss-Dialog:
```
\\PN: Du hast es so gewollt, Ragnar.
```

**→ TRAINER-KAMPF: scene.trainer_battle :RIVAL, "Ragnar", 0**

---

## Szene 14: `ch1_after_rival_battle` - Nach dem Kampf
**BGM wechselt zu:** "Pokemon XY - Friends Theme"

### Dialog:
```
Ragnar: *lachend* Mann, das war GENIAL!
Ragnar: Egal ob gewonnen oder verloren, das war unser erster richtiger Kampf!

\\PN: War ein guter Kampf.

Ragnar: Das ist erst der Anfang, \\PN!
Ragnar: Bis wir die Pokémon-Liga erreichen...
Ragnar: Werde ich VIEL stärker sein!

\\PN: Das werden wir ja sehen.

Ragnar: *grinsend* So gefällt mir das!
Ragnar: Bis später, Rivale!
```

### Animationen:
- Ragnar bewegt sich: rechts×3, hoch×3 (Geschwindigkeit 5)
- Event RAGNAR wird entfernt

### Abschluss-Dialog:
```
\\PN: (Der gute alte Ragnar...)
\\PN: (Aber ich würde es nicht anders wollen.)
```

---

## Szene 15: `ch1_receive_pokedex` - Pokédex erhalten
**BGM wechselt zu:** "Pokemon DPPT - Professor Rowan"

### Ablauf:
1. Sound: "Item Get"
2. Animation ID: 22 beim Spieler (Key-Item)

### Dialog:
```
Professor Aldric: Noch eine Sache, bevor du gehst.
Professor Aldric: Das ist der Pokédex.
Professor Aldric: Er zeichnet Daten über jedes Pokémon auf, das du triffst.
Professor Aldric: Ich wäre dir dankbar, wenn du helfen würdest, ihn zu vervollständigen.

\\PN: Überlassen Sie das mir, Professor!

Professor Aldric: Ich gebe dir auch diese Pokébälle.
Professor Aldric: Benutze sie, um wilde Pokémon zu fangen.

[SYSTEM]
Du hast 5 Pokébälle erhalten!

Professor Aldric: Jetzt geh, \\PN.
Professor Aldric: Dein Abenteuer wartet!
```

---

## Szene 16: `ch1_parents_goodbye` - Eltern-Abschied
**BGM wechselt zu:** "Pokemon XY - Emotion"

### Ablauf:
1. Kamera schwenkt zu Event PARENTS_GATE (60 Frames)
2. Mom zeigt ❤️ Emotion

### Dialog:
```
Mom (Aurora): Ich hab Vorräte eingepackt.
Mom (Aurora): Tränke, Beeren, und meine Feldnotizen über lokale Pokémon.

Dad (Marcus): Und ich hab ein paar Kampftipps reingelegt.
Dad (Marcus): Hab als Champion einiges gelernt.

\\PN: Ihr beide seid die Besten.

Mom (Aurora): *umarmt dich* Wir sind jetzt schon stolz auf dich.
Dad (Marcus): *schließt sich an* Zeig ihnen, was unser Kind drauf hat.

Mom (Aurora): Und denk dran...
Dad (Marcus): Wenn du uns brauchst...
Beide: Sind wir da.

Ragnar: *winkt von der Straße* BIS ZUR ARENA, \\PN!
Ragnar: LASS MICH NICHT WARTEN!

Dad (Marcus): *schmunzelt* Der Junge hat Energie.
Mom (Aurora): Gut. \\PN braucht einen Rivalen zum Anspornen.
```

### Animationen:
- Spieler bewegt sich: 3 Schritte runter
- Bildschirm blendet aus (60 Frames)

---

## Szene 17: `ch1_first_wild_battle` - Erster Wildkampf
**BGM wechselt zu:** "Pokemon XY - Wild Battle"

### Ablauf:
1. Sound: "Jump Small" (Rascheln)
2. Spieler zeigt `!` Emotion
3. Animation ID: 1 bei RATTATA
4. Rattata-Ruf

### Dialog:
```
\\PN: Das ist es! Unser erster Kampf!
\\PN: Los geht's, Partner!
```

### Animationen:
- Animation ID: 1 beim Spieler
- Kamera wackelt (2, 20)

### Nach-Kampf-Dialog:
```
Sieg!

\\PN: Super gemacht! Du bist fantastisch!

[ERZÄHLER]
Dein Starter blähte sich stolz auf.

Das war erst der Anfang.
Aber es fühlte sich an wie der Start von etwas Unglaublichem.
```

---

## Szene 18: `ch1_strange_dream` - Seltsamer Traum
**BGM wechselt zu:** "Pokemon RSE - Sealed Chamber"

### Ablauf:
1. Bildschirm blendet aus
2. Sepia-Farbton (60 Frames)
3. Sound: "Magic"
4. Kamera-Blitz (30 Frames)

### Dialog:
```
[MYSTERIÖS - langsamer Text]
'Bald...'
```

### Abschluss:
- Bildschirm blendet ein

---

## Szene 19: `ch1_dream_details` - Traum-Details

### Ablauf:
1. Kamera wackelt leicht (1, 60)
2. Sound: "Roar"

### Dialog:
```
\\PN: (Was bedeutet das?)
```

### Animationen:
- Partner zeigt ❤️ Emotion

### Abschluss-Dialog:
```
\\PN: *streichelt* Ist schon gut, Kumpel.
\\PN: Wahrscheinlich nur ein komischer Traum.

[ERZÄHLER]
Aber irgendwie... glaubtest du das nicht.
```

---

## Szene 20: `ch1_route_exploration` - Routen-Erkundung
**BGM wechselt zu:** "Pokemon XY - Route 4"

### Ablauf:
1. Kamera schwenkt nach rechts (5, 2)
2. Warte 60 Frames
3. Kamera zurücksetzen

### Dialog:
```
\\PN: Die Welt ist so groß...
\\PN: Ich kann es kaum erwarten, alles zu sehen.
```

### Animationen:
- Partner springt
- Partner bewegt sich: rechts×2

### Abschluss:
- Kamera schwenkt nach oben (3 Tiles)

---

# WICHTIGE CHARAKTERE

| NPC | Rolle | Details |
|-----|-------|---------|
| **Mom (Aurora)** | Mutter | Ehemalige Abenteurerin, hat mit Marcus 3x die Welt gerettet |
| **Dad (Marcus)** | Vater | Ehemaliger Champion, gibt spezielles Pokémon |
| **Professor Aldric** | Forscher | Kennt Marcus, gibt Starter + Pokédex |
| **Ragnar** | Rivale | Kindheitsfreund, wählt Pikachu, nennt Spieler "Broody" |

---

# STORY-FORESHADOWING

1. **"Dreimal, wenn du den Hoenn-Zwischenfall mitzählst"** → Eltern haben Erfahrung mit legendären Bedrohungen
2. **Zerbrochene Krone im Traum** → Die Shattered Crowns (Hauptstory)
3. **"Drei Figuren gegen die Dunkelheit"** → Spieler, Lyra, Kael
4. **"Bald..."** → Hoopas Erwachen naht
5. **Vaters Pokémon** → Besondere Herkunft, könnte später wichtig sein

---

# BOSS-KAMPF

## Ragnar (Erstes Treffen)
**Trainer-ID:** :RIVAL, "Ragnar", 0

| Pokémon | Level | Typische Moves |
|---------|-------|----------------|
| Pikachu | 5 | Donnerschock, Ruckzuckhieb |

**Schwierigkeit:** Tutorial - sehr leicht
**Tipp:** Spieler kann nicht verlieren (Story geht weiter)

---

# TECHNISCHE DETAILS

## Verwendete BGM:
- `Pokemon XY - Vaniville Town` (Dorf)
- `Pokemon XY - Emotion` (emotionale Szenen)
- `Pokemon BW - Rival Theme` (Ragnar)
- `Pokemon DPPT - Professor Rowan` (Labor)
- `Pokemon XY - Friends Theme` (Freundschaft)
- `Pokemon RSE - Rival Battle` (Kampf)
- `Pokemon RSE - Sealed Chamber` (Traum)
- `Pokemon XY - Route 4` (Route)

## Verwendete SE:
- `Equip` - Umziehen
- `Item Get` - Item erhalten
- `Ball Open` - Pokéball öffnen
- `Jump Small` - Gras raschelt
- `Splash` - Teich
- `Sheep` - Mareep/Wooloo
- `Magic` - Mystisches
- `Roar` - Brüllen im Traum

## Animation-IDs:
- 1 = Battle/Attack
- 3 = Sparkle/Electric
- 4 = Status Up
- 15 = Machine Glow
- 20 = Item Reveal
- 22 = Key Item Get
- 40 = Receive Pokemon
