#===============================================================================
# POKÉMON SHATTERED CROWNS - STORY AUDIT v2 ADDITIONS
#===============================================================================
# Second-pass audit additions on top of Main_Story.rb. Earlier audit fixes
# (#1-#8) are inlined into Main_Story.rb. This file collects the v2 additions:
#
#  v2-1  Aurora at Aldric's Funeral        — Ch24
#  v2-2  Hoopa's Return                     — Ch47
#  v2-3  Aurora's Research Reveal           — Ch15.5 (between Ch15-16)
#  v2-4  Subject Zero arc — Father's Sin    — Ch20.5 (between Ch20-21)
#  v2-5  Astoria Hosts: Elder Vera + Sea-Captain Lior + Temple Keepers
#                                           — Ch37-Ch41
#  v2-6  Act 5 Pacing — Engagement & Build  — Ch50.5, Ch51.5
#  v2-7  Hoopa Aftermath Sub-Plot           — Ch48 / Ch49 cameo
#
# Plus the Alternative Endings (Light/Dark/Balance) which live in their own
# file (Alternative_Endings.rb) because they're path-divergent.
#===============================================================================


#===============================================================================
# v2-1 — Aurora at Aldric's Funeral (Ch24)
#-------------------------------------------------------------------------------
# Purpose: Marcus alone at the funeral is incongruous — Aurora is a former
#          world-saver who knew Aldric for decades. She is the second former
#          Chosen still alive; she has earned this grief. Without her here,
#          Marcus carries it solo. She arrives quietly, sits with the player.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch24_aurora_arrives do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'

  # TODO: Event Sequence - Aurora at the gate
  # - Aurora walks up the rain-slicked path, no umbrella
  # - Carries a small wreath of pressed flowers from Dawnhaven
  # - Marcus sees her first — silent recognition

  scene.message "\\i[A second figure came up the path. Slower than Marcus had. Steady.]"
  scene.message "\\i[Mom carried a wreath of pressed Dawnhaven flowers — the kind that don't bloom anywhere else.]"
  scene.wait 30

  scene.message "\\bDad Marcus\\b: *quietly* You came."
  scene.message "\\bMom (Aurora)\\b: Of course I came. He was your friend before he was anyone's professor."
  scene.wait 20

  scene.show_emotion :player, :ellipses
  scene.message "\\b\\PN\\b: Mom..."
  scene.message "\\bMom (Aurora)\\b: I know, sweetheart. I know."
  scene.wait 20

  # Aurora's deeper context — she knew Aldric professionally
  scene.message "\\bMom (Aurora)\\b: Aldric and I corresponded every week for thirty years."
  scene.message "\\bMom (Aurora)\\b: He was the one who first found the seal fragments after Marcus and I sealed Hoopa."
  scene.message "\\bMom (Aurora)\\b: He spent the rest of his life making sure the next bearers — \\PN, Lyra, Kael — would have everything they needed."
  scene.wait 30

  scene.message "\\bLyra\\b: *softly* So that's why his lab had so much on us."
  scene.message "\\bKael\\b: He wasn't preparing for us. He was *waiting* for us."
  scene.message "\\bMom (Aurora)\\b: Both. He hoped he wouldn't have to. He prepared in case he did."
  scene.wait 30

  scene.message "\\bMom (Aurora)\\b: I have his notebooks. The ones he didn't trust anywhere else."
  scene.message "\\bMom (Aurora)\\b: When you're ready — not today — come home. I'll show you what he found in the last six months."

  scene.show_emotion :player, :idea
  scene.message "\\b\\PN\\b: ...He knew it was coming."
  scene.message "\\bMom (Aurora)\\b: He hoped he'd be wrong. He wasn't."
end


#===============================================================================
# v2-2 — Hoopa's Return (Ch47, after Arceus's blessing)
#-------------------------------------------------------------------------------
# Purpose: Hoopa is consumed by Nidhoggr in Ch32 and never mentioned again.
#          When Arceus arrives in Ch47 with the power to free the Guardians,
#          freeing Hoopa is the natural matching grace. Closes the Ch11
#          "Hoopa Revelation" through-line.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch47_hoopa_returns do |scene|
  scene.play_bgm 'Pokemon HGSS - Arceus Theme'
  scene.camera_flash 60

  # TODO: Event Sequence - Arceus's second gift
  # - As Arceus prepares to ascend, a ring of golden light forms
  # - From within the seal's collapse, a small figure emerges
  # - Hoopa Confined — small, exhausted, but free

  scene.message "\\bArceus\\b: ONE MORE WAS LOST TO THIS."
  scene.message "\\bArceus\\b: I WILL NOT FORGET MY OWN."
  scene.wait 30

  scene.play_se 'Audio/SE/Mystery Gift'
  scene.camera_flash 40
  scene.wait 20

  # TODO: Event Sequence - Hoopa appears
  # - Small purple-and-gold figure curled into itself
  # - Floating just above the ground
  # - Looking around as if uncertain it's allowed to exist

  scene.message "\\bHoopa\\b: ...is it... over?"
  scene.message "\\bHoopa\\b: ...the dark... it had me..."
  scene.wait 30

  scene.message "\\bArceus\\b: NO LONGER, LITTLE TRICKSTER. NEVER AGAIN."
  scene.message "\\bArceus\\b: YOUR PORTAL-WORK IS NEEDED IN THE NEW WORLD."
  scene.message "\\bArceus\\b: BUT FIRST — REST. AS LONG AS YOU NEED."
  scene.wait 30

  scene.show_emotion :LYRA, :heart
  scene.message "\\bLyra\\b: *kneeling* Hi, Hoopa. It's okay. You're safe."

  scene.message "\\bHoopa\\b: *small voice* ...I remember you. The bright one."
  scene.message "\\bHoopa\\b: You wept when I was taken."
  scene.message "\\bHoopa\\b: I felt it from inside the dark. It... helped."
  scene.wait 30

  scene.message "\\bKael\\b: *unusually quiet* That was a hard thing to live through. Take your time."

  scene.message "\\bHoopa\\b: *looking at \\PN, finally smiling weakly* ...Champion-friend. \\\\nWe'll play tricks again someday. \\\\nWhen I am strong."
  scene.message "\\b\\PN\\b: Whenever you're ready. The world has time now."

  scene.play_se 'Audio/SE/Heal'
  scene.camera_flash 30
  scene.wait 20
end


#===============================================================================
# v2-3 — Aurora's Research Reveal (Ch15.5, between Ch15 and Ch16)
#-------------------------------------------------------------------------------
# Purpose: Aurora is established Ch1 as a former Chosen and active researcher
#          who saved the world "three times." She vanishes from the story
#          until Ch24. This interlude pays off her research credentials — she
#          contacts the player with critical intel about Vex's faction.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch15_5_aurora_call do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  # TODO: Event Sequence - Phone Rings
  # - Player camped overnight on the road to the 4th gym
  # - Phone vibrates — Aurora calling
  # - Sit up, take it where it won't wake the others

  scene.message "\\i[Your phone vibrated softly against your pack. Mom's name on the screen.]"
  scene.wait 20

  scene.message "\\bMom (Aurora)\\b: \\PN. I have something for you."
  scene.message "\\b\\PN\\b: It's the middle of the night, Mom."
  scene.message "\\bMom (Aurora)\\b: I know. That's why I called now. The lab phones are tapped during the day."
  scene.wait 30

  scene.show_emotion :player, :exclamation
  scene.message "\\b\\PN\\b: *whispering* ...what?"

  scene.message "\\bMom (Aurora)\\b: Listen. I've been going through Aldric's correspondence — the encrypted strand. He had a name for the cult General who fought you near Thornwood."
  scene.message "\\bMom (Aurora)\\b: Vex isn't a Hand name. It's a *Champion-League* call sign. Retired. About twenty years ago."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...Vex was Champion League?"
  scene.message "\\bMom (Aurora)\\b: Was. Before he was 'Vex.'\\\\nHe's the reason your father retired. He was the *fourth* sealer. We thought he died at Hoopa's binding. He didn't."
  scene.wait 30

  scene.message "\\bMom (Aurora)\\b: Whatever Hoopa showed him in there — it broke him. He came back wrong. Marcus and I covered it up because we couldn't *prove* it."
  scene.message "\\bMom (Aurora)\\b: He's not just a general. He's the most senior person in the Hand who knows how the original seal was made."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...so when he fights us, he's not improvising. He's *retracing his own work.*"
  scene.message "\\bMom (Aurora)\\b: Yes. And he wants you to fail the same way he did. Don't give him satisfaction."
  scene.wait 20

  scene.message "\\bMom (Aurora)\\b: I love you. Don't tell Lyra and Kael yet — not Kael especially. He's carrying enough."
  scene.message "\\bMom (Aurora)\\b: Sleep, sweetheart. Tomorrow you fight a Gym Leader. I want you sharp."
  scene.message "\\b\\PN\\b: ...Love you, Mom."

  # TODO: Event Sequence - Phone Down
  # - Stare at phone for a long moment
  # - Lie back. Look at the stars
  # - Sleep slow to come
end


#===============================================================================
# v2-4 — Subject Zero arc (Ch20.5, between Eternal Forest beats)
#-------------------------------------------------------------------------------
# Purpose: PBS defines [SCIENTIST,Subject Zero] with a Mewtwo and the line
#          "Father... forgive... me..." — clearly a planned story Pokemon
#          not wired into the bible. This adds a side-cutscene where the
#          Hand's lab outpost in the Eternal Forest is revealed to be
#          something darker: an attempt to make a Chosen-killing weapon.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch20_5_lab_discovered do |scene|
  scene.play_bgm 'Pokemon BW - Plasma Frigate'

  # TODO: Event Sequence - Lab Reveal
  # - Kael scouts ahead, finds a hidden door in the forest's south
  # - Steel door, painted over with bark camouflage
  # - Inside: an abandoned research bunker

  scene.message "\\bKael\\b: \\PN. South side. There's a door in the bark."
  scene.message "\\bLyra\\b: A door? In a *tree*?"
  scene.message "\\bElena\\b: That tree's two hundred years old. The door is new."
  scene.wait 30

  scene.message "\\b\\PN\\b: Then someone made it recently. Inside?"
  scene.message "\\bKael\\b: Empty. Mostly. But not abandoned long."

  # TODO: Event Sequence - Enter Bunker
  scene.fade_out 30
  scene.wait 30
  scene.fade_in 30
  scene.camera_tint :dark, 20

  scene.message "\\i[Underground. Concrete walls. A row of stasis tubes, all empty but one.]"
  scene.wait 30

  scene.message "\\bLyra\\b: ...is that a *Pokemon* in there?"
  scene.message "\\bElena\\b: Mewtwo. *Genetically restructured* Mewtwo."
  scene.message "\\bElena\\b: The plate on the tube says... Subject Zero."
  scene.wait 30

  scene.message "\\bKael\\b: They were building a weapon to kill us."
  scene.message "\\bKael\\b: A psychic strong enough to break a Chosen's bond with their Guardian."

  scene.message "\\b\\PN\\b: ...why is it shut down?"
  scene.message "\\bElena\\b: It *isn't.* The tube's still running. The subject is dormant. Waiting."
end

GameData::Cutscene.define :ch20_5_subject_zero do |scene|
  scene.play_bgm 'Pokemon SWSH - Eternatus Awakens'
  scene.camera_shake 12, 60

  scene.message "\\i[The tube's lights flickered. The glass cracked from the inside out.]"
  scene.wait 30

  scene.message "\\bSubject Zero\\b: ...Father... forgive... me..."
  scene.message "\\bSubject Zero\\b: *his voice in your minds at once*"
  scene.wait 30

  scene.message "\\bLyra\\b: *hands to her temples* He's projecting — he's *asking* something —"
  scene.message "\\bSubject Zero\\b: ...let me... finish... what they made me for..."
  scene.message "\\bSubject Zero\\b: *or* ...end me. Before they wake me right."
  scene.wait 30

  scene.message "\\b\\PN\\b: We don't kill anything. Not here."
  scene.message "\\bKael\\b: Then we *unmake* him another way. Free him from what they wrote into him."
  scene.wait 30

  scene.message "\\bSubject Zero\\b: *to Kael, recognizing him* ...you smell of cycles. Of endings."
  scene.message "\\bSubject Zero\\b: ...you understand. *Help me find an ending I chose.*"

  # The actual battle — Subject Zero asks to be tested. If the player wins,
  # the Pokemon is freed from its conditioning and disappears into the forest.
  scene.message "\\bKael\\b: He wants a duel. Real one. So he can choose how this ends."
  scene.message "\\b\\PN\\b: Then we give him one."

  scene.trainer_battle :SCIENTIST, "Subject Zero", 0

  scene.message "\\bSubject Zero\\b: *kneeling — peaceful* ...you fight clean. Not like them."
  scene.message "\\bSubject Zero\\b: ...the leash is gone. I feel it. *Gone.*"
  scene.wait 30

  scene.message "\\bSubject Zero\\b: I will go where they cannot find me. Tell the bright one — Lyra —"
  scene.message "\\bSubject Zero\\b: — thank her for the question she just thought. \\\\n*Yes. I want to live.*"

  scene.play_se 'Audio/SE/Teleport'
  scene.camera_flash 30
  # TODO: Event Sequence - Mewtwo Departs
  # - Mewtwo's form blurs, displaces, gone
  # - Tube collapses in on itself, harmless

  scene.message "\\bLyra\\b: ...did he just *read my mind* and answer the question I didn't ask out loud?"
  scene.message "\\bKael\\b: He did."
  scene.message "\\bElena\\b: We're going to find him again, aren't we?"
  scene.message "\\b\\PN\\b: Hopefully on a day he's resting. Not running."
end


#===============================================================================
# v2-5 — Astoria Hosts (Ch37-Ch41)
#-------------------------------------------------------------------------------
# Purpose: Act 5 takes the party to Astoria, the "Forgotten Region," for the
#          Crown Restoration arc. The bible names only "Elder Vera." Three more
#          named hosts give the region texture without bloating the chapter
#          count: a sea-captain who ferries the party in, and two of the three
#          Temple Keepers (the third is Vera herself in disguise — payoff in
#          Ch42 when Vera reveals she IS one of the original First Chosen).
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch37_captain_lior_intro do |scene|
  scene.play_bgm 'Pokemon XY - Couriway Town'

  # TODO: Event Sequence - Port at Dusk
  # - Old sea-captain, weathered, lone eye, scar across the bridge of his nose
  # - Standing on a small ferry that shouldn't be able to make ocean crossings
  # - Pendant around his neck: a piece of the same crystal as Astoria's seal

  scene.message "\\bLior\\b: You'd be the three with the marks, then."
  scene.message "\\bLior\\b: Name's Lior. I'm the only one who still knows the way to Astoria."
  scene.wait 30

  scene.message "\\bLyra\\b: How do you *know* about the marks?"
  scene.message "\\bLior\\b: My great-grandfather sealed Nidhoggr the first time. The Chosen of Tides."
  scene.message "\\bLior\\b: His mark was on his collarbone. I have a smaller one, in the same place. Half-faded."
  scene.wait 30

  scene.message "\\bKael\\b: A descendant of a First Chosen."
  scene.message "\\bLior\\b: One of seven still alive. We don't tell anyone. The Hand's been hunting the line for forty years."
  scene.wait 30

  scene.message "\\b\\PN\\b: Why ferry us, then? It puts you on their list."
  scene.message "\\bLior\\b: *patient* Because if you fail, I'm on their list anyway."
  scene.message "\\bLior\\b: At least this way I get to choose how I matter."

  scene.message "\\bLior\\b: Get aboard. We sail at the second tide. Astoria's not on any map you'll have seen."
end

GameData::Cutscene.define :ch39_keeper_sela_intro do |scene|
  scene.play_bgm 'Pokemon XY - Frost Cavern'

  # Temple of Stars — first temple, in the high cliffs
  # TODO: Event Sequence - Sela Approaches
  # - Young woman, maybe 20, robes the color of deep night
  # - Carries a long-handled brass mirror used to read the temple's stars

  scene.message "\\bSela\\b: You came. The constellation knew you would."
  scene.message "\\bSela\\b: I'm Sela, Keeper of the Temple of Stars. I've been waiting for someone who carried a steel-blue mark."
  scene.wait 30

  scene.show_emotion :player, :exclamation
  scene.message "\\b\\PN\\b: You knew the color?"
  scene.message "\\bSela\\b: The mural in the inner sanctum told me. It's been there for a thousand years."
  scene.wait 30

  scene.message "\\bSela\\b: Three things you need before the trial:\\\\n\\\\n• Your starter has to walk in with you. The Stars don't trust handlers without their first bond.\\\\n• Don't lie when the Stars ask. They already know.\\\\n• If you see a fourth star — you're not done. Look harder."

  scene.message "\\bKael\\b: ...a fourth star. What does that mean?"
  scene.message "\\bSela\\b: It means it's *your* trial, not mine. I can guide you in. I can't translate what it shows you."
end

GameData::Cutscene.define :ch40_keeper_orin_intro do |scene|
  scene.play_bgm 'Pokemon XY - Ambrette Town'

  # Temple of Tides — second temple, submerged
  # TODO: Event Sequence - Orin Below the Surface
  # - Older man, late 50s, hair the color of seafoam
  # - Stands waist-deep in a saltwater pool inside a rock chamber
  # - Speaks slowly, with long pauses

  scene.message "\\bOrin\\b: Lyra. The bright one. Your guardian *thrives* on water."
  scene.message "\\bOrin\\b: I am Orin. I keep the Tides Temple. I have... a question for you, before the trial."
  scene.wait 30

  scene.message "\\bLyra\\b: Ask."
  scene.message "\\bOrin\\b: When Xerneas gave you its power — did it ask, or did it *give*?"
  scene.message "\\bLyra\\b: ...it *gave*. There wasn't time to ask."
  scene.message "\\bOrin\\b: Then the Tides will ask. Be ready. The answer changes what fragment is given to you."
  scene.wait 30

  scene.message "\\b\\PN\\b: That sounds like the trial branches."
  scene.message "\\bOrin\\b: *nodding* The Crown listens to the trial. The Crown will know what was chosen. The Crown is *patient.*"

  scene.message "\\bOrin\\b: Go in. The water remembers everything the surface forgets."
end

GameData::Cutscene.define :ch41_keeper_vera_reveal do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'

  # Temple of Shadows — third temple, in the deep
  # Vera is the Keeper here too — same person as Elder Vera
  # TODO: Event Sequence - The Reveal
  # - Kael steps into Shadows Temple alone for his trial
  # - Vera waits inside — not at the door this time, but at the heart

  scene.message "\\bKael\\b: ...Elder Vera. You're here too."
  scene.message "\\bVera\\b: I *am* the Keeper of Shadows. I am also the Elder. They are the same office."
  scene.wait 30

  scene.message "\\bVera\\b: There were three of us originally. Lior is the last male line. I am the last of mine. The third — the line of Yveltal-the-First — is *you.*"
  scene.message "\\bKael\\b: ...I'm a *descendant*?"
  scene.message "\\bVera\\b: Of the Chosen of Cycles. The one who sealed Nidhoggr the first time, on this very floor. Your orphanage records say you were 'found.' That was kind. The truth is: you were *brought.* Smuggled out as an infant when the Hand started killing the lines."
  scene.wait 30

  scene.message "\\bKael\\b: *very quietly* ...does Lyra know?"
  scene.message "\\bVera\\b: She suspects. Your starter knew the moment you both crossed our threshold."
  scene.wait 30

  scene.message "\\bVera\\b: The trial of Shadows is not a fight, Kael. It is a *question.* You may bring the answer back to us, or you may stay below with it. The Crown will accept either."
  scene.message "\\bKael\\b: ...I'll bring it back."
  scene.message "\\bVera\\b: I hope so. The world needs you above the surface."
end


#===============================================================================
# v2-6 — Act 5 Pacing: the gap between Sanctuary (Ch36) and Wedding (Ch52)
#-------------------------------------------------------------------------------
# Purpose: The bible jumps from "One year later, Sanctuary thriving" (Ch36) to
#          Astoria-and-Distortion-World back to Wedding (Ch52). The proposal,
#          the engagement, the families meeting — none of it is on the page.
#          Two interludes fill the gap so the Wedding lands earned.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch50_5_kael_asks_marcus do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'

  # TODO: Event Sequence - At the Sanctuary
  # - Marcus visiting the Sanctuary for the first time
  # - Kael waiting on the porch, looking like he might throw up
  # - Shadow (Kael's Zoroark) sitting protectively beside him

  scene.message "\\bKael\\b: ...Mr. Marcus. May I speak with you. Outside."

  scene.message "\\bDad Marcus\\b: *amused* Mr. Marcus. \\\\nGo on, son. I won't bite."
  scene.wait 30

  scene.message "\\bKael\\b: *audibly breathing in* I want to marry Lyra. \\\\nHer parents have given their blessing. Her sister... won't see it, but she would have. I think she did."
  scene.message "\\bKael\\b: I came to you not because I need permission — Lyra and I already agreed — but because you stood at my side when I had no father. \\\\nIt was a debt I never paid. I would like you to be at this wedding instead."
  scene.wait 45

  scene.message "\\bDad Marcus\\b: *taking a long moment* ..."
  scene.message "\\bDad Marcus\\b: When my father met Aurora's father, he asked the same question. Aurora's father asked him three things. I'm going to ask you two."
  scene.wait 30

  scene.message "\\bDad Marcus\\b: Will you put her above the Guardian?"
  scene.message "\\bKael\\b: Always."
  scene.message "\\bDad Marcus\\b: Will you let her put *you* above herself, when she tries?"
  scene.message "\\bKael\\b: ...I will learn how."
  scene.wait 45

  scene.message "\\bDad Marcus\\b: *clapping a hand on his shoulder* Then sit down before you fall over. I'll get Aurora."
  scene.message "\\bDad Marcus\\b: She's going to cry. Be ready."
end

GameData::Cutscene.define :ch51_5_families_meet do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  # TODO: Event Sequence - Both Families Gathered
  # - Marcus + Aurora, Lyra's parents (named here for first time),
  #   Player (best-person), Kael's adoptive orphanage mother (Hilde),
  #   plus all the kids from the orphanage who consider Kael a brother

  scene.message "\\i[The Sanctuary's main hall was warmer than it had ever been.]"
  scene.message "\\i[Both families. The orphanage. Friends from the road. The Guardians, attending as guests.]"
  scene.wait 30

  scene.message "\\bMrs. Calliope (Lyra's mother)\\b: I always told her — when you find the quiet one who stands his ground, you keep him."
  scene.message "\\bMr. Hadrian (Lyra's father)\\b: She wasn't listening. *Now* she's listening."
  scene.message "\\bLyra\\b: *blushing furiously* Dad."
  scene.wait 30

  scene.message "\\bHilde (Kael's orphanage mother)\\b: He was the most stubborn child I ever raised. The most loyal too."
  scene.message "\\bHilde\\b: *to Lyra* He'll never tell you he loves you in front of people. So I'll tell you he does, every day, in front of me, for the last six months. *Constantly.*"
  scene.message "\\bKael\\b: *quietly mortified* Mom."
  scene.message "\\bHilde\\b: *unrepentant* You called me Mom. That counts as evidence."
  scene.wait 30

  scene.show_emotion :LYRA, :heart
  scene.show_emotion :KAEL, :ellipses

  scene.message "\\bMom (Aurora)\\b: *to Mrs. Calliope, quietly* They're going to be alright."
  scene.message "\\bMrs. Calliope\\b: *also quietly* They already are. They were the moment they sat down at the same fire."

  scene.message "\\bDad Marcus\\b: *raising a glass* To the road behind. To the road ahead. And to two kids who learned to walk it together."
  scene.message "\\b\\PN\\b: *raising a glass* To family. The kind you're born to and the kind you find."
end


#===============================================================================
# v2-7 — Hoopa Cameo at Heroes' Welcome (Ch49)
#-------------------------------------------------------------------------------
# Purpose: Hoopa returns in Ch47. The world doesn't know. The Heroes' Welcome
#          parade in Ch49 is where the public meets the *full* truth of what
#          was saved. Hoopa popping into the parade to bow to Lyra is the
#          payoff that lets the public understand: this wasn't just monsters
#          and battles. A small thing was hurt and was made whole.
#-------------------------------------------------------------------------------
GameData::Cutscene.define :ch49_hoopa_cameo do |scene|
  scene.play_bgm 'Pokemon HGSS - Goldenrod City'

  # TODO: Event Sequence - Parade Pause
  # - Mid-parade, a small purple ring opens above the crowd
  # - Hoopa drops through, lands on Lyra's shoulder
  # - Crowd goes absolutely silent

  scene.message "\\i[A purple ring opened above the crowd. Small. Quiet. Tentative.]"
  scene.wait 20
  scene.play_se 'Audio/SE/Mystery Gift'

  scene.message "\\bHoopa\\b: *small voice* ...is this allowed?"
  scene.message "\\bLyra\\b: *delighted* You came!"
  scene.wait 30

  scene.message "\\bHoopa\\b: I wanted to see the bright one wear flowers. The other Pokemon told me you were wearing flowers today."
  scene.message "\\bHoopa\\b: *to the crowd, the smallest bow* ...hello, world. I missed you very much."
  scene.wait 30

  scene.message "\\i[The crowd absolutely lost it. Cheers, tears, parents holding children up to see.]"
  scene.message "\\i[Hoopa, for the first time since Ch11, *laughed.*]"

  scene.show_emotion :LYRA, :heart
  scene.show_emotion :KAEL, :ellipses
  scene.show_emotion :player, :music

  scene.message "\\bMom (Aurora)\\b: *to Marcus, quietly* We sealed him. They brought him *back.*"
  scene.message "\\bDad Marcus\\b: That was always the difference, love. We sealed. They saved."
end


#===============================================================================
# Hook the additions into existing chapter dispatchers (where applicable)
#-------------------------------------------------------------------------------
# Where existing chapter cutscenes already exist (e.g. :ch24_dad_arrives,
# :ch47_blessing, :ch24_funeral), the v2 additions are designed to play
# adjacent — call them from your event scripts in the right order:
#
#   Ch24 sequence (recommended):
#     :ch24_lab_destroyed → :ch24_finding_professor → :ch24_professors_words
#     → :ch24_final_message → :ch24_elm_death → :ch24_grief
#     → :ch24_players_rage → :ch24_leaving_lab → :ch24_dad_arrives
#     → :ch24_aurora_arrives        ←── NEW v2-1
#     → :ch24_funeral → :ch24_new_resolve → :ch24_hidden_research
#
#   Ch47 sequence (recommended):
#     :ch47_intro → :ch47_arceus_appears → :ch47_arceus_speaks
#     → :ch47_blessing → :ch47_guardians_freed
#     → :ch47_hoopa_returns           ←── NEW v2-2
#     → :ch47_arceus_farewell
#
#   Ch15-16 transition:
#     :ch15_morning_resolve → :ch15_5_aurora_call  ←── NEW v2-3
#     → :ch15_approaching_caves → :ch16_cave_depths
#
#   Ch20-21 transition (optional side path):
#     :ch20_kael_scouts → :ch20_5_lab_discovered    ←── NEW v2-4a
#     → :ch20_5_subject_zero                       ←── NEW v2-4b
#     → :ch20_corruption_spreads → ...
#
#   Ch37 (Astoria arrival):
#     :ch37_intro → :ch37_first_fracture → :ch37_void_creature
#     → :ch37_void_battle → :ch37_refugees → :ch37_port_town
#     → :ch37_captain_appears → :ch37_captain_lior_intro  ←── NEW v2-5a
#     → :ch37_boarding → ...
#
#   Ch39/40/41 (Temple Keepers):
#     :ch39_temple_found → :ch39_entrance → :ch39_keeper_sela_intro  ←── NEW v2-5b
#     → :ch39_interior → ...
#     :ch40_temple_interior → :ch40_keeper_orin_intro                ←── NEW v2-5c
#     → :ch40_guardian_appears → ...
#     :ch41_entering → :ch41_keeper_vera_reveal                      ←── NEW v2-5d
#     → :ch41_guardian_appears → ...
#
#   Ch50.5 + Ch51.5 (between Sanctuary and Wedding):
#     :ch50_sunset → :ch50_5_kael_asks_marcus  ←── NEW v2-6a
#     → :ch51_intro → :ch51_5_families_meet     ←── NEW v2-6b
#     → :ch51_preparations → :ch52_intro
#
#   Ch49 (Heroes' Welcome):
#     :ch49_ceremony → :ch49_medals → :ch49_hoopa_cameo  ←── NEW v2-7
#     → :ch49_guardians_reveal
#===============================================================================
