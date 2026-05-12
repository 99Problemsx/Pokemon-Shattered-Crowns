#===============================================================================
# POKÉMON SHATTERED CROWNS - STORY AUDIT v4: LOGIC FIXES + CIVILIAN POV
#===============================================================================
# Fourth-pass audit fixes. Tackles the remaining logic inconsistencies
# identified in the v3 review, plus adds 4 civilian-POV interludes that
# give the world its sense of scale.
#
#   v4-F1  Starter origin clarified         — Ch1.6 (between starter pick and naming)
#   v4-F2  Mask maker reveal                 — Ch3.5 (mid-festival, ties to Ch28 payoff)
#   v4-F3  Viktor's rapid rise explained     — Ch26.5 codex-style scene
#   v4-F4  Player age + timeline established — Ch9.5 (Aldric explains explicitly)
#   v4-F5  League mobilization shown         — Ch15.7 (Eagle's Watch arc preview)
#
#   v4-C1  Civilian POV: A Verdantia Shopkeeper  — Ch7.5
#   v4-C2  Civilian POV: A Frostfall Mother       — Ch18.5
#   v4-C3  Civilian POV: A Hand Defector          — Ch22.5
#   v4-C4  Civilian POV: Children at the Parade   — Ch49.5
#===============================================================================


#===============================================================================
# v4-F1 — Starter origin clarified
#-------------------------------------------------------------------------------
# Original conflict: Ch1 dad gives "raised her myself from egg" Pokémon AND
# Ch1 Aldric presents "three Pokéballs". Which is the starter?
#
# Resolution: Dad's egg-child is your STARTER. The three at the lab are
# what's offered to OTHER kids on the same morning — including Ragnar (who
# picks his Pikachu from Aldric's three). Player got their starter at
# home; the lab visit is for the Pokédex and the formal trainer's licence.
#
# This cutscene plays right after :ch1_starter_bond and before
# :ch1_5_starter_naming.
#===============================================================================
GameData::Cutscene.define :ch1_6_starter_origin_clarified do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'

  scene.message "\\bProfessor Aldric\\b: A perfect match, of course. \\\\nMarcus told me he would raise this one himself, as a gift."
  scene.message "\\bProfessor Aldric\\b: I keep three Pokéballs here for the *other* young trainers."
  scene.message "\\bProfessor Aldric\\b: You came in already partnered. \\\\nThat is, by the way, *exactly* how your father started."
  scene.wait 30

  scene.message "\\bRagnar\\b: Wait — they didn't pick from the box?"
  scene.message "\\bProfessor Aldric\\b: No, my dear loud boy. They had their partner waiting at home."
  scene.wait 20

  scene.message "\\bRagnar\\b: ...so I get to pick? FOR REAL?"
  scene.message "\\bProfessor Aldric\\b: *smiling* For real, Ragnar."
  scene.message "\\bRagnar\\b: PIKACHU IT IS!!"

  scene.message "\\b\\PN\\b: *to your starter, quietly* He's louder than I remember."
  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *agreement-chirp*", starter.name))
    end
  }
end


#===============================================================================
# v4-F2 — Mask maker reveal
#-------------------------------------------------------------------------------
# Ch28 reveal: the Guardian Mask has "MARCUS" etched inside. The merchant
# said he didn't remember making it. Who DID make it?
#
# Answer: Aurora made it. She was the unofficial fourth member of the
# original Hoopa-sealing party — but she was pregnant when the seal went
# down, so Marcus and Vex did the dangerous work while Aurora carved the
# protective mask and stayed at the edge of the binding circle.
#
# This cutscene seeds the reveal during the festival (Ch3.5), so when
# Ch28 mask-remembers fires the player feels both the surprise AND the
# fairness of a clue they could have noticed.
#===============================================================================
GameData::Cutscene.define :ch3_5_old_carver do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'

  scene.message "\\i[You wandered past the mask merchant's stall a second time. \\\\nAn older woman was unpacking the cart behind it.]"
  scene.wait 30

  scene.message "\\bElderly Woman\\b: *not looking up* You like that one with the silver-etching?"
  scene.message "\\b\\PN\\b: It feels — familiar? I don't know."
  scene.message "\\bElderly Woman\\b: Mhmm. *Familiar.*"
  scene.wait 30

  # The carver was a friend of Aurora's. She doesn't say so. She just looks.
  scene.message "\\bElderly Woman\\b: I knew the carver. Long time ago."
  scene.message "\\bElderly Woman\\b: She told me — once — she made it for a child that wasn't born yet."
  scene.message "\\bElderly Woman\\b: *finally looking at you* Hands like hers. Same chin too. Take care of it."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...do I know you?"
  scene.message "\\bElderly Woman\\b: No, dear. But I knew your mother. \\\\nBefore she was your mother."

  scene.show_emotion :player, :exclamation

  scene.message "\\bLyra\\b: \\PN! Come look at the contest!"

  # Player turns away; when they turn back, the elderly woman is gone.
  scene.script {
    codexDiscover(:MASK_OF_HEIRLOOM) if defined?(codexDiscover)
  }
  scene.message "\\i[When you turned back, the cart was packed up. The woman was gone.]"
end


#===============================================================================
# v4-F3 — Viktor's rapid rise explained
#-------------------------------------------------------------------------------
# Original gap: Ch6 Viktor is a Junior rival with 2 badges. Ch29 Viktor is
# Champion. How? Bible never says.
#
# Resolution: Previous Champion (Sennes Wolffe) was killed in a Hand
# attack between Ch20 and Ch26. Viktor — who had completed the league
# circuit shortly after his Ch6 / Ch16 appearances — challenged for the
# vacant title and won, just before the events of Ch29.
#
# Seeded here as a news-clipping moment around Ch26, BEFORE Viktor reveals
# himself in Ch29 — pays off the rapid rise without being a surprise.
#===============================================================================
GameData::Cutscene.define :ch26_5_champion_news do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'

  scene.message "\\i[The Pokémon Center radio crackled in the background.]"
  scene.wait 20

  scene.message "\\bNewscaster\\b: ...and in the league news today — Viktor Aldermarsh has accepted the Asgheim Champion title."
  scene.message "\\bNewscaster\\b: The unprecedented direct challenge from the seventh-ranked qualifier follows the death of acting Champion Sennes Wolffe in last month's Hand attack on the Stormwatch courthouse."
  scene.message "\\bNewscaster\\b: Champion Aldermarsh, 23, is now the youngest Asgheim Champion in over forty years."
  scene.wait 30

  scene.show_emotion :LYRA, :exclamation
  scene.message "\\bLyra\\b: Viktor? *Our* Viktor?"

  scene.message "\\bKael\\b: ...the same boy who flirted with you in Ravenwatch."
  scene.message "\\bLyra\\b: He didn't *flirt* — he —"
  scene.message "\\bKael\\b: He absolutely flirted."
  scene.wait 30

  scene.message "\\b\\PN\\b: He was always going to make it. \\\\nHe just didn't expect to make it like *that.*"
  scene.message "\\bLyra\\b: *quietly* Sennes Wolffe is dead?"
  scene.message "\\bKael\\b: The Hand kills champions. They mean to leave the world without a head."

  scene.script {
    codexDiscover(:VIKTOR_ALDERMARSH) if defined?(codexDiscover)
  }
end


#===============================================================================
# v4-F4 — Player age + timeline established
#-------------------------------------------------------------------------------
# Original gap: How old is the player? How much time passes between Ch1
# and Ch52 (wedding)?
#
# Resolution: Player is 16 at start (legal trainer-licence age in Asgheim).
# Main story spans roughly 18 months. Wedding is 4 years after sealing —
# player is 21 when they witness it.
#
# Aldric explicitly states this during the Ch9 lab visit; gives him a
# moment of grandfatherly fondness before the death-by-Hand in Ch24.
#===============================================================================
GameData::Cutscene.define :ch9_5_timeline_anchor do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  # TODO: Event Sequence - At Aldric's Lab
  # - Player flipping through Aldric's research notes
  # - Aldric watching from the doorway

  scene.message "\\bProfessor Aldric\\b: How old are you now, \\PN?"
  scene.message "\\b\\PN\\b: Sixteen last spring."
  scene.wait 20

  scene.message "\\bProfessor Aldric\\b: Sixteen. I was sixteen when I started my masters research."
  scene.message "\\bProfessor Aldric\\b: Your father was sixteen when he beat the previous Champion."
  scene.message "\\bProfessor Aldric\\b: *gentle* That generation does a great deal of work between sixteen and twenty."
  scene.wait 30

  scene.message "\\bProfessor Aldric\\b: You will have two years of this fight before the first ending."
  scene.message "\\bProfessor Aldric\\b: Three or four years until you are someone like your mother."
  scene.message "\\bProfessor Aldric\\b: Until then — eat regularly. Sleep when you can. \\\\nDon't apologize for being scared."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...are *you* scared, Professor?"
  scene.message "\\bProfessor Aldric\\b: *quiet smile* Constantly, \\PN. Constantly."
  scene.message "\\bProfessor Aldric\\b: That is what makes the work mean anything."

  scene.script {
    codexDiscover(:TIMELINE_ANCHOR) if defined?(codexDiscover)
  }
end


#===============================================================================
# v4-F5 — League mobilization shown ("Eagle's Watch")
#-------------------------------------------------------------------------------
# Original gap: Marcus in Ch24 says he'll "mobilize the League". The
# League is never seen acting. Where's the army?
#
# Resolution: The League formed the Eagle's Watch — a private response
# force led by Marcus, with ex-Champion advisors and Tarquin's Dragon
# Riders attached. They aren't on the front line because the Hand
# specifically targets institutions; the Watch operates from the
# shadows, evacuating civilians and intercepting Hand convoys. The
# Chosen meet two Watch operatives during the late game.
#===============================================================================
GameData::Cutscene.define :ch15_7_eagles_watch_first_sighting do |scene|
  scene.play_bgm 'Pokemon XY - Lysandre Theme'

  # TODO: Event Sequence - Road Ambush, Unexpected Help
  # - Hand patrol blocks the road
  # - Player prepares to fight
  # - Three figures in slate-grey cloaks emerge from the woods, take down
  #   the patrol before the Chosen can swing

  scene.message "\\i[The cult patrol turned to fight you. You drew your starter's ball.]"
  scene.message "\\i[Then the woods went quiet — and three slate-cloaked figures came down the slope at a run.]"
  scene.wait 30

  scene.message "\\b[Eagle's Watch Operative]\\b: *to the patrol* Down. Now."
  scene.message "\\i[The patrol was down in under a minute. Their starter's pokeball was barely in their hand.]"
  scene.wait 30

  scene.message "\\b[Operative Vesper]\\b: Chosen. We were tracking the patrol when we heard your fight."
  scene.message "\\bLyra\\b: ...you were *tracking* them? \\\\nWho ARE you?"
  scene.message "\\b[Operative Vesper]\\b: Eagle's Watch. Champion Marcus's response force. *He sends his love.*"
  scene.wait 30

  scene.message "\\b\\PN\\b: Dad has an *army.*"
  scene.message "\\b[Operative Vesper]\\b: Not an army. *A net.* We catch what the gym leaders can't. There are eighty of us in the field right now."
  scene.message "\\b[Operative Vesper]\\b: We can't fight the Generals — that has to be you. But we can keep the Hand from owning the roads."
  scene.wait 30

  scene.message "\\bKael\\b: Then we never travel alone again."
  scene.message "\\b[Operative Vesper]\\b: Exactly the spirit. \\\\nKeep moving, Chosen. We'll keep your route clean as far as Frostfall."

  scene.script {
    codexDiscover(:EAGLES_WATCH) if defined?(codexDiscover)
    scFateGrant(:fate_meet_watch, 1, "Met the Eagle's Watch") if defined?(scFateGrant)
  }
end


#===============================================================================
# v4-C1 — Civilian POV: A Verdantia Shopkeeper (Ch7.5)
#-------------------------------------------------------------------------------
# Right after the cult attack in Ch7. A shopkeeper near the attack site
# is cleaning up. Player passes through. No fight. Just witness.
#===============================================================================
GameData::Cutscene.define :ch7_5_civilian_shopkeeper do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_tint :sepia, 30

  scene.message "\\i[The shop's window had been broken. The owner was sweeping glass into a dustpan with her granddaughter holding the door open.]"
  scene.wait 30

  scene.message "\\bShopkeeper\\b: Help with this side? Mind your fingers."
  scene.message "\\b\\PN\\b: ...sure."

  # Player kneels, helps clear glass
  scene.message "\\bShopkeeper\\b: They didn't take anything, you know. \\\\nThey weren't here to take anything. They just wanted us to know they *could.*"
  scene.wait 30

  scene.message "\\bGranddaughter\\b: Grandma's been making the same berry pies for forty years. \\\\nShe wasn't going to let them stop her."
  scene.message "\\bShopkeeper\\b: *quietly* I was going to. \\\\nFor a minute. After they left."
  scene.message "\\bShopkeeper\\b: Then this one made me eggs."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...thank you. For staying open."
  scene.message "\\bShopkeeper\\b: Mhmm. *Buy a pie before you go.* My granddaughter made the crust."

  scene.message "\\i[You bought a pie. The granddaughter beamed.]"
  scene.message "\\i[On the way out, you noticed the shopkeeper had hung a small steel-blue ribbon in the window. \\\\nIt was the colour of your mark.]"

  scene.script {
    pbReceiveItem(:ORANBERRY, 5) rescue nil
    codexDiscover(:CIVILIAN_WITNESSES) if defined?(codexDiscover)
    relChange(:VERDANTIA_FOLK, 5) if defined?(relChange)
  }
  scene.camera_tint :reset, 30
end


#===============================================================================
# v4-C2 — Civilian POV: A Frostfall Mother (Ch18.5)
#-------------------------------------------------------------------------------
# After General Dread's fight in Ch18. The player is recovering at the
# Frostfall Pokémon Centre. A woman with two children waits in the
# lobby. The youngest is crying.
#===============================================================================
GameData::Cutscene.define :ch18_5_civilian_mother do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'

  scene.message "\\i[A young woman sat across from you in the centre lobby. Her son was asleep. Her daughter was crying very quietly into her sleeve.]"
  scene.wait 30

  scene.message "\\bMother\\b: I'm sorry — she'll stop in a minute. \\\\nShe's been quiet for hours."
  scene.message "\\b\\PN\\b: ...it's okay. Take your time."

  # Lyra moves over and sits beside the daughter without saying anything.
  # Just close enough.
  scene.show_emotion :LYRA, :heart
  scene.wait 30

  scene.message "\\bMother\\b: We came up from Stormwatch. The Hand burned our block. The whole row."
  scene.message "\\bMother\\b: We had a Pokémon, an old Furfrou — \\\\nshe held them back at the door long enough for us to get out the kitchen window."
  scene.message "\\bMother\\b: She didn't come out after us."
  scene.wait 30

  # The daughter speaks for the first time, very quietly, to Lyra
  scene.message "\\bDaughter\\b: *small* Are you the bright lady? The one with the mark?"
  scene.message "\\bLyra\\b: *softly* I'm Lyra. Yes. I have a mark."
  scene.message "\\bDaughter\\b: ...will you give my Furfrou a good story?"

  scene.show_emotion :LYRA, :ellipses
  scene.message "\\bLyra\\b: *kneeling* I will give her the best story. \\\\nI promise. Every time I tell it, your Furfrou will be the bravest one in it."
  scene.wait 45

  scene.message "\\bMother\\b: *to \\PN* ...we're sorry to bother you. I know you have larger work."
  scene.message "\\b\\PN\\b: ...no. \\\\n*This* is the work. \\\\nThis is exactly the work."

  scene.script {
    codexDiscover(:CIVILIAN_WITNESSES) if defined?(codexDiscover)
    scFateGrant(:fate_witness_civilian, 1, "Sat with a survivor") if defined?(scFateGrant)
  }
end


#===============================================================================
# v4-C3 — Civilian POV: A Hand Defector (Ch22.5)
#-------------------------------------------------------------------------------
# A young man approaches the camp at night. Was a Hand recruit. Brings a
# stolen ledger and his old robes folded. Wants out. Doesn't expect to
# be forgiven.
#===============================================================================
GameData::Cutscene.define :ch22_5_civilian_defector do |scene|
  scene.play_bgm 'Pokemon XY - Lysandre Theme'

  # TODO: Event Sequence - Night Approach
  # - Footsteps on the path. Kael's Shadow growls. Lyra puts a hand on its head.

  scene.message "\\i[A young man stepped into the firelight with his hands open. Twenties. Hand-mark on his wrist, half-burnt-out.]"
  scene.wait 30

  scene.message "\\bYoung Man\\b: Please don't fight me. I'm — I'm out. I'm trying to be out."
  scene.message "\\bKael\\b: *quiet, not threatening* You're not out yet. \\\\nSay why."
  scene.wait 30

  scene.message "\\bYoung Man\\b: My name's Telmer. \\\\nThey took me when I was nineteen. They told me my family would be safer if I joined. They lied."
  scene.message "\\bYoung Man\\b: My sister died last month. Hand-side. *Friendly fire.* I was *there.*"
  scene.message "\\bYoung Man\\b: I brought this. A ledger. Cell locations and supply routes."
  scene.message "\\bYoung Man\\b: And these — *pulling out folded grey robes* — so you know I won't go back."
  scene.wait 30

  scene.message "\\bLyra\\b: Telmer. Are you hungry?"
  scene.message "\\bTelmer\\b: ...I don't deserve —"
  scene.message "\\bLyra\\b: That wasn't the question. *Are you hungry.*"
  scene.message "\\bTelmer\\b: ...yes."
  scene.message "\\bLyra\\b: Sit down. Kael will make tea. Talk after."
  scene.wait 30

  scene.message "\\bKael\\b: *not arguing, getting up*"

  # Quietly, eventually, after dinner
  scene.message "\\bTelmer\\b: I can't make this right."
  scene.message "\\b\\PN\\b: We're not asking you to. We're asking you to help us *stop* the next nineteen-year-old."
  scene.message "\\bTelmer\\b: ...okay. \\\\nOkay. Yes."

  scene.script {
    codexDiscover(:HAND_DEFECTORS) if defined?(codexDiscover)
    # The ledger is a real item — gives access to a side-quest line later
    pbReceiveItem(:HAND_LEDGER, 1) rescue nil
    scFateGrant(:fate_defector_welcomed, 2, "Welcomed a defector") if defined?(scFateGrant)
  }
end


#===============================================================================
# v4-C4 — Civilian POV: Children at the Parade (Ch49.5)
#-------------------------------------------------------------------------------
# After the Heroes' Welcome, two children watch the parade end. Asks
# their mom if they could grow up to be a Chosen. Mom's answer is honest.
#===============================================================================
GameData::Cutscene.define :ch49_5_civilian_children do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.camera_tint :sepia, 30

  scene.message "\\i[The parade had ended. You were resting on a bench under an oak. A mother and her two children passed.]"
  scene.wait 30

  scene.message "\\bChild 1\\b: Mama. Can I be a Chosen when I grow up?"
  scene.message "\\bMother\\b: *truthful* The Chosen are made when the world needs them, sweetheart. Not before."
  scene.wait 20

  scene.message "\\bChild 2\\b: But *Lyra* is just a girl from a farm!"
  scene.message "\\bMother\\b: *smiling* She is. And before she was a Chosen she helped an Eevee that nobody else helped."
  scene.message "\\bMother\\b: That's the part you can do without waiting to be Chosen."
  scene.wait 30

  scene.message "\\bChild 1\\b: ...okay. \\\\nWhat about the bright-haired one? The Champion's kid?"
  scene.message "\\bMother\\b: \\PN listened. To everyone. For a very long time. \\\\nThat's the part *anyone* can do, my heart."
  scene.wait 30

  scene.message "\\bChild 1\\b: I can do that."
  scene.message "\\bMother\\b: I know you can, baby. Come on. Apple cart."

  scene.message "\\i[They walked off into the crowd. The youngest waved at you. You didn't think they recognized you.]"
  scene.message "\\i[You waved back anyway.]"

  scene.script {
    codexDiscover(:CIVILIAN_WITNESSES) if defined?(codexDiscover)
  }
  scene.camera_tint :reset, 30
end
