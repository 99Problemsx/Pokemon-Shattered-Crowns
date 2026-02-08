# Kapitel 2: Reunion - Sunrise Farm & Shadowfen (DETAILLIERT)

## Übersicht
- **Orte:** Sunrise Farm → Willowmere → Shadowfen
- **Spielzeit:** ~45-60 Minuten
- **Gym:** Keiner
- **Neue Charaktere:** Lyra, Kael, Großmutter

---

# TEIL 1: SUNRISE FARM - LYRA TREFFEN

---

## Szene 1: `ch2_farm_arrival` - Ankunft auf der Farm
**BGM:** "Pokemon XY - Vaniville Town"

### Ablauf:
1. Kamera schwenkt nach oben (4 Tiles, 3 Geschwindigkeit)
2. Sound: "Cow" (Miltank)
3. Kamera zurücksetzen

### Dialog:
```
\\PN: Das muss der Ort sein.
\\PN: Lyra sagte, ich soll sie hier treffen.
```

### Animationen:
- Kamera schwenkt zu Event LYRA (60 Frames)
- Lyra zeigt ❤️ Emotion
- Lyra springt

---

## Szene 2: `ch2_meet_lyra` - Lyra treffen
**BGM:** "Pokemon XY - Friends Theme"

### Ablauf:
1. Lyra bewegt sich: links×2, runter×1
2. Funkel-Animation (ID: 3) bei Lyra

### Dialog:
```
Lyra: \\PN! Hier drüben!

Lyra: Das ist Willow! Oma hat sie mir geschenkt.
Lyra: Sie ist ein bisschen schüchtern, aber sie ist die Süßeste!
Willow: Vee...

\\PN: Sie ist bezaubernd! Freut mich, dich kennenzulernen, Willow.

Lyra: Hey, hattest du letzte Nacht seltsame Träume?
Lyra: Ich hatte so einen komischen Traum von goldenem Licht...
```

### STORY-CHOICE (falls aktiviert):
**Entscheidung:** `ch2_share_dream`
- Option 1: "Ja, ich auch."
- Option 2: "Nein, nicht wirklich."

**Wenn Ja:**
```
\\PN: Warte... ich auch. Goldenes Licht und zerbrochene Stücke.
Lyra: *Augen weiten sich* Wirklich? Das ist... erstaunlich!
Lyra: Es bedeutet, wir sind irgendwie verbunden!
```

**Wenn Nein:**
```
\\PN: Nein... hab geschlafen wie ein Stein.
Lyra: *enttäuscht* Oh. Nur ich dann?
Lyra: Vielleicht hab ich nur zu viele Beeren vor dem Schlafen gegessen...
```

**Standard-Pfad (ohne Choice):**
```
\\PN: Warte... ich auch. Goldenes Licht und zerbrochene Stücke.
```

---

## Szene 3: `ch2_pokemon_introductions` - Pokémon-Vorstellung
**BGM:** "Pokemon XY - Friends Theme"

### Ablauf:
1. Partner bewegt sich zu WILLOW
2. Partner zeigt ❤️ Emotion
3. Willow springt + ♪ Emotion

### Dialog:
```
Lyra: Aww! Sie sind schon Freunde!
Willow: Vee vee!

\\PN: Sieht so aus, als würden sie sich verstehen.

Lyra: Pokémon sind gute Menschenkenner.
Lyra: Wenn Willow deinen Partner mag...
Lyra: Dann musst du ein guter Mensch sein!

\\PN: *lachend* Hoffe ich doch.
```

### Animationen:
- Willow rennt: rechts×2, hoch
- Partner folgt mit Verzögerung
- Lyra zeigt ❤️ Emotion

---

## Szene 4: `ch2_farm_tour` - Farm-Tour
**BGM:** "Pokemon XY - Route 4"

### Dialog:
```
Lyra: Lass mich dir alles zeigen!

[ERZÄHLER]
Sie führte dich durch die Beerenfelder.
Cheri, Pfirsich, Sinelbeere... jede Sorte.

Lyra: Wir züchten Beeren für die ganze Region!
Lyra: Oma hat diese Farm vor 40 Jahren gegründet.

\\PN: Das ist unglaublich. So friedlich.

Lyra: Ich liebe es hier. Aber...
Lyra: Ich wollte immer schon mehr sehen.

[ERZÄHLER]
Du hast geholfen, Pflanzen zu gießen.
Die Miltank gefüttert.
Ein ausgebüxtes Wooloo gejagt.

Lyra: *lachend* Pass auf vor—

[ERZÄHLER]
Das Wooloo hat dich umgeworfen.

Lyra: —dem da. Sorry!
```

---

## Szene 5: `ch2_lyra_backstory` - Lyras Geschichte
**BGM:** "Pokemon XY - Route 4"

### Ablauf:
1. Sepia-Farbton (120 Frames) - Nachmittag/Goldene Stunde
2. Lyra bewegt sich: links×2
3. Spieler bewegt sich: links×2
4. Beide drehen sich nach unten

### Dialog:
```
Lyra: Ich habe diese Farm immer geliebt.
Lyra: Meine Eltern... sie sind immer unterwegs wegen der Arbeit.
Lyra: Aber Oma ist immer hier.

\\PN: Das klingt schön. Ein richtiges Zuhause.

Lyra: Ja! Und jetzt mit Willow bin ich nie allein.
Willow: Vee vee!

Lyra: Ich will mal Pokémon-Krankenschwester werden.
Lyra: Allen verletzten Pokémon helfen, die ich kann.

\\PN: Das ist ein wundervoller Traum.

Lyra: Was ist mit dir? Was willst du werden?

\\PN: Ehrlich gesagt? Ich will einfach erkunden.
\\PN: Alles sehen, was die Welt zu bieten hat.

Lyra: Dann lass uns zusammen Abenteuer erleben!
```

---

## Szene 6: `ch2_lyra_sister_mention` - Lyras Schwester
**BGM:** "Pokemon XY - Emotion"

### Dialog:
```
Lyra: Oh! Ich sollte dir von meiner Schwester erzählen!
Lyra: Sie heißt Elena. Sie ist unglaublich.

\\PN: Wo ist sie?

Lyra: Auf Reisen, wie meine Eltern.
Lyra: Sie ist Forscherin. Studiert alte Legenden.

Lyra: *stolz* Sie schickt mir Briefe von überall!
Lyra: Der Ewige Wald. Die Kronenberge.
Lyra: Sie hat alles gesehen.

\\PN: Sie klingt mutig.

Lyra: Ist sie! Ich will genau wie sie werden.
Lyra: Vielleicht treffen wir sie auf unserer Reise!

[ERZÄHLER - Vorausdeutung]
(Du wusstest nicht, wie wichtig dieses Treffen werden würde.)
```

---

## Szene 7: `ch2_sunset_talk` - Sonnenuntergangsgespräch
**BGM:** "Pokemon XY - Emotion"

### Ablauf:
1. Sonnenuntergangs-Farbton (120 Frames)
2. Kamera schwenkt nach oben (2 Tiles, 5 Geschwindigkeit)
3. Lyra + Spieler drehen sich nach oben

### Dialog:
```
Lyra: Wunderschön, oder?
\\PN: Ja... wirklich wunderschön.

Lyra: Meine Eltern haben früher Sonnenuntergänge mit mir geschaut.
Lyra: Bevor sie die ganze Zeit angefangen haben zu reisen.

\\PN: Vermisst du sie?

Lyra: *leise* Jeden Tag.
Lyra: Aber Oma sagt, sie machen wichtige Arbeit.
Lyra: Forschung, die allen helfen könnte.

\\PN: Mein Dad war mal Champion.
\\PN: Er und meine Mom gehen manchmal noch auf Abenteuer.

Lyra: Das ist so cool! Champion-Eltern!
Lyra: Kein Wunder, dass du erkunden willst!
```

---

## Szene 8: `ch2_grandmother_warning` - Großmutters Warnung
**BGM:** "Pokemon RSE - Dewford Town"

### Ablauf:
1. Farbton zurücksetzen (60 Frames)
2. Kamera schwenkt zu Event GRANDMOTHER (60 Frames)
3. Großmutter bewegt sich: 1 Schritt runter

### Dialog:
```
Großmutter: Du musst \\PN sein.
Großmutter: Lyra hat mir alles über dich erzählt.

\\PN: Freut mich, Sie kennenzulernen, Ma'am.

Großmutter: *mustert dich* Hmm...
Großmutter: Du hast alte Augen für jemanden so Jungen.

\\PN: Ich... habe ich?

Großmutter: Passt aufeinander auf da draußen.
Großmutter: Die Welt verändert sich.
Großmutter: Und irgendetwas sagt mir... du wirst mittendrin sein.

Lyra: Oma! Hör auf, so kryptisch zu sein!
Großmutter: *lacht* Lauft schon, ihr zwei. Habt Spaß.

[ERZÄHLER]
(Seltsam... was meinte sie?)
```

---

## Szene 9: `ch2_grandmother_stories` - Großmutters Geschichten
**BGM:** "Pokemon RSE - Dewford Town"

### Ablauf:
1. Nacht-Farbton (60 Frames)
2. Sound: "Fire" (Lagerfeuer)
3. Charaktere sitzen um Feuer

### Dialog:
```
[ERZÄHLER]
In dieser Nacht erzählte die Großmutter Geschichten am Feuer.

Großmutter: Vor langer Zeit wurde diese Region beschützt.
Großmutter: Von drei großen Wächtern.

Lyra: Die Kronen-Geschichte wieder?
Großmutter: Sie ist wichtig, Kind.

Großmutter: Man sagt, die Wächter schlafen jetzt.
Großmutter: Sie warten auf jene, die würdig sind, sie zu erwecken.

\\PN: Wer wäre würdig?

Großmutter: *mysteriöses Lächeln* Jene mit reinem Herzen.
Großmutter: Jene, die bereit sind, für andere zu opfern.
Großmutter: Jene, die unzerbrechliche Bande schmieden.
```

### Animationen:
- Animation ID: 10 bei FIREPLACE (Feuer)
- Kamera-Blitz orange (255, 100, 0, 50)
- Sound: "Magic"

### [ERZÄHLER]:
```
Das Feuer knisterte.
Für einen Moment hättest du schwören können, Formen in den Flammen zu sehen.
Ein Wolf. Ein Hirsch. Ein großer Vogel.
```

---

## Szene 10: `ch2_shared_dream` - Geteilter Traum
**BGM:** "Pokemon RSE - Sealed Chamber"

### Ablauf:
1. Bildschirm blendet aus
2. Sepia-Farbton (60 Frames)
3. Kamera zeigt LYRA_DREAM + SHADOW_FIGURE

### Dialog (im Traum):
```
[MYSTERIÖS]
'Drei müssen stehen...'
'Gegen die kommende Dunkelheit...'
```

### Nach dem Aufwachen:
1. Farbton zurücksetzen
2. Einblenden (60 Frames)
3. Lyra zeigt `!` Emotion

### Dialog:
```
Lyra: Du hattest den Traum auch, oder?
\\PN: Den gleichen. Mit dir drin.

Lyra: Und jemand anderes...
Lyra: Wer war die dritte Person?
```

---

## Szene 11: `ch2_departure_farm` - Abschied von der Farm
**BGM:** "Pokemon XY - Route 4"

### Ablauf:
1. Einblenden (60 Frames)
2. Sound: "Bird" (Vögel)

### Dialog:
```
Großmutter: Pass auf meine Enkelin auf.
\\PN: Das werde ich. Versprochen.

Lyra: Oma, mach dir keine Sorgen! Ich kann auf mich selbst aufpassen!
Großmutter: Ich weiß, Liebes. Aber es ist schön, Freunde zu haben.
```

### Animationen:
- Großmutter bewegt sich zu Lyra
- Sound: "Item Get"
- Animation ID: 22 bei Lyra (Key-Item)

### Dialog (Geschenk):
```
Großmutter: Das hat deiner Mutter gehört.
Großmutter: Halt es dir nah.

Lyra: *umarmt sie* Ich hab dich lieb, Oma.
Großmutter: Mach mich stolz.
```

---

# TEIL 2: REISE NACH SHADOWFEN

---

## Szene 12: `ch2_ragnar_route` - Ragnar auf der Route
**BGM:** "Pokemon XY - Route 4"

### Ablauf:
1. Kamera schwenkt zu Event RAGNAR (60 Frames)
2. Ragnar zeigt 💤 Emotion (sitzt am Baum)

### Dialog:
```
\\PN: Ragnar? Du bist schon vor mir hier?

Ragnar: Klar! Ich hab nonstop trainiert!
Ragnar: Schon zwei neue Partner gefangen!

Ragnar: Wie viele hast DU gefangen?

\\PN: Ich... nehme mir Zeit.

Ragnar: HA! Typisch Grübler!
Ragnar: Immer alles überdenken!

[ERZÄHLER]
Sein Pikachu funkelte spielerisch deinen Starter an.

Ragnar: Keine Sorge, ich warte auf dich bei der ersten Arena!
Ragnar: Damit ich sehen kann, wie du versuchst aufzuholen!

[ERZÄHLER]
Er rannte lachend davon.
Manche Dinge ändern sich nie.
```

---

## Szene 13: `ch2_road_to_shadowfen` - Weg nach Shadowfen
**BGM:** "Pokemon XY - Route 4"

### Dialog:
```
Lyra: Ich hab gehört, dass noch jemand in Shadowfen ist.
Lyra: Ein anderer Trainer in unserem Alter.

\\PN: Freund von dir?

Lyra: Nicht direkt... wir haben Briefe ausgetauscht.
Lyra: Er ist... intensiv.

\\PN: Intensiv wie?

Lyra: Du wirst schon sehen.
```

---

## Szene 14: `ch2_shadowfen_arrival` - Ankunft in Shadowfen
**BGM:** "Pokemon RSE - Abandoned Ship"

### Dialog:
```
Lyra: *zittert* Dieser Ort ist gruselig...
Willow: Vee...

\\PN: Bleib nah. Wir wissen nicht, was da draußen ist.

[ERZÄHLER]
Nebel wälzte sich zwischen den Bäumen.
Etwas bewegte sich in den Schatten.
Aber es griff nicht an. Es... beobachtete nur.

Lyra: Die Bibliotheksruinen sollten gleich voraus sein.
Lyra: Da sagte Kael, er würde sein.
```

---

# TEIL 3: KAEL TREFFEN

---

## Szene 15: `ch2_meet_kael` - Kael begegnen

### Dialog:
```
[ERZÄHLER]
Ihr seid durch Willowmere und nach Shadowfen gereist.
Das Sumpfdorf war unheimlich, aber dahinter lagen die alten Bibliotheksruinen.
Ihr habt Kael dort gefunden, allein lesend. Ein Zorua zu seinen Füßen.

Kael: ...Ihr seid spät.
Lyra: Schön dich auch zu sehen, Grummelkopf!
Kael: ...

Kael: Ich habe gehört, ihr hattet beide seltsame Träume.
Kael: Ich auch. Den gleichen.
Kael: Das ist... statistisch unwahrscheinlich.

\\PN: Drei von uns haben den exakt gleichen Traum? Das ist kein Zufall.
\\PN: Da passiert etwas.
```

---

## Szene 16: `ch2_kael_introduction` - Kael-Vorstellung
**BGM:** "Pokemon RSE - Abandoned Ship"

### Dialog:
```
[ERZÄHLER]
Kael war anders als Lyra.
Kalt, wo sie warm war. Still, wo sie laut war.

Lyra: Kael, das ist \\PN!
Kael: Ich weiß. Du hast sie in deinen Briefen erwähnt.

\\PN: Freut mich.
Kael: Hmm.

[ERZÄHLER]
Shadow umkreiste dich misstrauisch.
Dann schien sie sich zu entspannen.

Kael: Shadow billigt dich. Das ist... selten.
Lyra: Siehst du? \\PN ist toll!

Kael: Das werden wir sehen.
```

---

## Szene 17: `ch2_kael_backstory` - Kaels Geschichte
**BGM:** "Pokemon RSE - Abandoned Ship"

### Dialog:
```
Lyra: Also woher kommst du, Kael?
Kael: Nirgendwoher.

Lyra: Jeder kommt irgendwoher!
Kael: Ich bin in einem Waisenhaus aufgewachsen. Es ist abgebrannt.
Kael: Bitte. Zufrieden?

Lyra: Oh... es tut mir leid, ich wollte nicht—
Kael: Lass es. Ich brauche kein Mitleid.

[ERZÄHLER]
Shadow rieb sich an Kaels Bein.

Kael: Shadow war auch dort. Wir sind zusammen entkommen.
Kael: Sie ist alles, was ich brauche.

Shadow: Zor...

\\PN: Naja, jetzt hast du uns auch.
Kael: ...Wir werden sehen.
```

---

## Szene 18: `ch2_library_exploration` - Bibliothekserkundung
**BGM:** "Pokemon DPPT - Canalave Library"

### Dialog:
```
[ERZÄHLER]
Die Bibliotheksruinen waren faszinierend.
Alte Bücher. Verblasste Wandbilder. Vergessenes Wissen.

Kael: Ich habe über die Träume geforscht.
Kael: Es gibt Hinweise in alten Texten.

Lyra: Was sagen sie?

Kael: Prophezeiungen. Legenden.
Kael: Etwas über "Auserwählte" und "Wächter".

\\PN: Wie die Festival-Geschichte?

Kael: *überrascht* Du weißt davon?
\\PN: Lyras Großmutter hat es erwähnt.

Kael: Interessant. Die alte Frau weiß mehr, als sie zeigt.
```

---

## Szene 19: `ch2_first_battle_together` - Erster gemeinsamer Kampf
**BGM:** "Pokemon XY - Wild Battle"

### Dialog:
```
[ERZÄHLER]
Als ihr die Bibliothek verließt, blockierten wilde Pokémon euren Weg.
Ein territoriales Nidorino und sein Rudel.

Nidorino: NIDO!

Lyra: Die sehen wütend aus!
Kael: Wir sind auf ihrem Territorium. Geht zurück.

\\PN: Nein. Wir kämpfen zusammen.
\\PN: Das ist es, was Freunde tun.

Kael: ...Gut. Shadow, du bist dran.
Lyra: Los, Willow!

[ERZÄHLER]
Eure drei Pokémon kämpften Seite an Seite.
Trotz der Gefahr fühlte es sich... richtig an.

Lyra: Wir haben es geschafft!
Kael: Du warst nicht nutzlos.
Lyra: War das... ein Kompliment?
Kael: Gewöhn dich nicht dran.
```

---

## Szene 20: `ch2_trio_formed` - Das Trio formiert sich
**BGM:** "Pokemon XY - Friends Theme"

### Dialog:
```
Lyra: Wir sollten zusammenbleiben!
Lyra: Wir sind ein tolles Team!

Kael: Wir kennen uns kaum.

\\PN: Dann lass uns das ändern.
\\PN: Wir haben den gleichen Traum aus einem Grund.
\\PN: Etwas bringt uns zusammen.

Kael: ...Logisch.
Kael: Gut. Wir reisen zusammen. Fürs Erste.

Lyra: *umarmt beide* YAY! Beste Freunde!
Kael: Fass mich nicht an.
Lyra: Zu spät!

[ERZÄHLER]
Und so wurde das Trio geformt.
Drei Trainer. Drei Pokémon. Ein Schicksal.
```

---

# WICHTIGE CHARAKTERE

| NPC | Rolle | Details |
|-----|-------|---------|
| **Lyra** | Begleiterin | Fröhlich, liebevoll, will Pokémon-Nurse werden, Evoli "Willow" |
| **Kael** | Begleiter | Verschlossen, intelligent, Waise, Zorua "Shadow" |
| **Großmutter** | Lyras Oma | Weiß mehr als sie zeigt, erzählt von den Wächtern |
| **Elena** | Lyras Schwester | Forscherin (tritt später auf) |

---

# STORY-FORESHADOWING

1. **"Drei müssen stehen"** → Spieler, Lyra, Kael als die drei Auserwählten
2. **Großmutters Blick** → Sie erkennt das Schicksal in ihnen
3. **Wolf, Hirsch, Vogel im Feuer** → Zacian, Xerneas, Yveltal
4. **Lyras Anhänger** → Gehörte ihrer Mutter, wird später wichtig
5. **"Statistisch unwahrscheinlich"** → Kael erkennt die übernatürliche Verbindung
6. **Elena als Legendenforscherin** → Wird bei der Suche helfen

---

# POKÉMON DES TRIOS

| Trainer | Pokémon | Spitzname | Persönlichkeit |
|---------|---------|-----------|----------------|
| Spieler | Starter | - | Je nach Wahl |
| Lyra | Evoli | Willow | Schüchtern, liebevoll |
| Kael | Zorua | Shadow | Misstrauisch, loyal |
