#===============================================================================
# POKÉMON SHATTERED CROWNS - NEW ARC: THE QUIET YEAR
#===============================================================================
# A 6-scene arc covering the year between Ch35 (Main Story end / Sanctuary
# established) and Ch37 (Fracture / Astoria journey begins). This is the
# bible's largest pacing gap — currently a literal "one year passes" cut.
#
# The Quiet Year arc gives the trio (and the player) room to exist as
# people, not just heroes. Each character gets a season-themed scene:
#
#   Spring  :qy_spring_seeds         Lyra plants the first Sanctuary garden
#   Summer  :qy_summer_apprentice    Kael takes on his first orphanage kid
#   Autumn  :qy_autumn_visit         \Player visits old gym leaders
#   Winter  :qy_winter_letter        The trio writes letters they don't send
#   Spring2 :qy_spring_engagement    Kael proposes to Lyra (in private)
#   Cap     :qy_cap_pendant_pulses   The pendant warning that ends the year
#
# This arc fundamentally changes the Wedding (Ch52) pacing — by the time
# Lyra and Kael marry, they have been together publicly for years rather
# than weeks. The bible's wedding now lands as a culmination, not a rush.
#===============================================================================


GameData::Cutscene.define :qy_spring_seeds do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'
  scene.camera_tint :sepia, 30

  scene.message "\\ts[]Spring. The First Sanctuary Garden."
  scene.wait 30

  scene.message "\\i[Lyra was on her knees in the dirt with three pots of Heart-of-Asgheim and a packet of Sitrus seeds.]"
  scene.message "\\i[The Sanctuary's east field was a sloped patch of green that hadn't been touched since the Hand burned the old farmhouse here in Ch20.]"
  scene.wait 30

  scene.message "\\bLyra\\b: *to herself, brushing soil off her knees* All right. \\\\nLet's see if the war left any seeds in the ground that still know how to grow."
  scene.wait 20

  # Willow sits beside her, watching. The freed Pidgeot from Op 1 lands
  # on a fencepost. The Sanctuary is *populated* now.
  scene.message "\\i[Willow lay down in the row beside her. \\\\nThe Pidgeot from Op 1 — Scout — landed on the fence and watched.]"
  scene.message "\\i[The Gallade sat with its back against the oak at the field's edge, arms crossed, eyes closed, present.]"
  scene.wait 30

  scene.message "\\bLyra\\b: *to nobody* I'd like to grow something that wasn't a fight."
  scene.message "\\bLyra\\b: *small smile* I'd like to do it next to everyone I love."
  scene.wait 30

  scene.message "\\bGallade\\b: *thought-projection, dry* \\\\nThe sprig grows faster when it is sung to."
  scene.message "\\bLyra\\b: ...is that a fact or a joke?"
  scene.message "\\bGallade\\b: *eyes still closed* Both."

  scene.camera_tint :reset, 30
end


GameData::Cutscene.define :qy_summer_apprentice do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "\\ts[]Summer. The Orphanage Kid."
  scene.wait 30

  scene.message "\\i[Kael was at the Asgheim Orphanage for what Hilde had told him would be a 'short visit.' \\\\nIt had been three days. Kael was beginning to suspect he had been outmaneuvered.]"
  scene.wait 30

  scene.message "\\bHilde\\b: Kael. This is Mira."
  scene.message "\\bKael\\b: *eyes going very still* ...Mira."
  scene.wait 30

  scene.message "\\bHilde\\b: We named her after — \\\\nWell. You know who we named her after."
  scene.message "\\bHilde\\b: She is eight. She has no parents. She picked a Pawniard for a partner two months ago and the partner picked her right back."
  scene.message "\\bHilde\\b: She wants you to teach her how to be a trainer. \\\\nShe does not want anyone else to do it."
  scene.wait 30

  # The kid steps forward. She is *exactly* the height his Mira was when
  # Mira died. He's standing very still.
  scene.message "\\bMira (the new one)\\b: *to Kael, very serious* Kael. \\\\nI am told you are scary."
  scene.message "\\bKael\\b: *not breathing properly* ...sometimes."
  scene.message "\\bMira\\b: That's *fine.* I am scary too."
  scene.message "\\bMira\\b: Pawniard. Sit. Show him."
  scene.wait 30

  scene.message "\\i[The Pawniard saluted. Kael did not laugh. \\\\nKael had not been able to laugh in three days. He was about to be able to laugh.]"
  scene.message "\\bKael\\b: *softly* ...all right, Mira. Bring your Pawniard. Let's start with stance."

  # Hilde, in the doorway, allowing herself a small breath of relief.
  scene.message "\\bHilde\\b: *to Lyra over the phone later that night* He'll be home in a month. \\\\nNot before."
  scene.message "\\bLyra\\b: *grinning into her tea* Good. \\\\nHe needs a month."
end


GameData::Cutscene.define :qy_autumn_visit do |scene|
  scene.play_bgm 'Pokemon XY - Route Theme'

  scene.message "\\ts[]Autumn. The Gym Leader Circuit."
  scene.wait 30

  scene.message "\\i[You spent autumn on the road alone — by choice. \\\\nNo Lyra. No Kael. Your starter, your team, and a year's worth of gym-leader phone numbers Fern had given you.]"
  scene.wait 30

  scene.message "\\b\\PN\\b: *to your starter* This isn't a victory tour. \\\\nIt is *checking in.* Different thing."

  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *agreement-chirp, road-ready*", starter.name))
    end
  }
  scene.wait 30

  # Quick montage of three visits
  scene.message "\\i[FERN — Verdantia.]"
  scene.message "\\bFern\\b: *handing you tea, again* The greenhouse is open at all hours. \\\\nIf you ever need a quiet room and four walls, this one is yours."
  scene.wait 30

  scene.message "\\i[KESTRA — Ironpeak.]"
  scene.message "\\bKestra\\b: I wrote a letter for my brother. \\\\nI couldn't make myself send it. \\\\nWill you carry it to his grave for me?"
  scene.message "\\b\\PN\\b: ...yes."
  scene.message "\\bKestra\\b: *with both hands* He was loved. He was *loved.*"
  scene.wait 30

  scene.message "\\i[VALA — Evershade Grove.]"
  scene.message "\\bVala\\b: \\PN. \\\\nI never told you this. \\\\nMy nephew was a recruit. Hand-side. I never told anyone."
  scene.message "\\bVala\\b: He died in the Frostfall raid. *Your* Frostfall raid. \\\\nI'm not angry. I want you to know I am *not angry.*"
  scene.message "\\bVala\\b: He chose his side. \\\\nYou freed thirty-four. \\\\nThat is the order of operations I am at peace with."
  scene.wait 30

  scene.message "\\b\\PN\\b: ...thank you, Vala. \\\\nThat wasn't a kindness I expected."
  scene.message "\\bVala\\b: *not soft* It wasn't a kindness. It was *the truth.*"

  scene.script {
    pbAchievement(:ach_quiet_year_visits) if defined?(pbAchievement)
    scFateGrant(:fate_quiet_year_visits, 1, "Listened to the people the war hurt") if defined?(scFateGrant)
  }
end


GameData::Cutscene.define :qy_winter_letter do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'
  scene.camera_tint :night, 30

  scene.message "\\ts[]Winter. The Letters You Don't Send."
  scene.wait 30

  scene.message "\\i[At the Sanctuary, the three of you sat in the great-room with three identical small notebooks. \\\\nLyra had bought them at the Verdantia stationer.]"
  scene.message "\\i[Lyra had explained the rules. You write a letter you cannot send. To anyone. Living or dead.]"
  scene.wait 30

  # Each character writes their own letter. The player sees them composed.
  scene.message "\\i[Lyra wrote to Elena. \\\\nKael wrote to the first Mira. \\\\nYou wrote to Ragnar.]"
  scene.message "\\i[Nobody read aloud. The letters went into a small wooden box on the mantel. \\\\nLyra called it 'the box for the loud love.' \\\\nIt was, slightly, a joke. \\\\nIt was, mostly, not.]"
  scene.wait 30

  # Player's choice — what did they say in their letter
  scene.choice [
    "I told Ragnar I beat Viktor for him.",
    "I told Ragnar I miss him.",
    "I told Ragnar I'm taking my time."
  ] do |result|
    case result
    when 0
      pbMessage("\\b\\PN\\b: *to nobody, putting the letter in the box* He'd want to know I beat Viktor. \\\\nNot ranked. Just for him.")
    when 1
      pbMessage("\\b\\PN\\b: *to nobody* I told him I miss him. \\\\nThat was the whole letter. *I miss you, you loud bastard.* Two pages.")
    when 2
      pbMessage("\\b\\PN\\b: *to nobody* I told him I'm taking my time. \\\\nThat I'm not rushing to be a hero now that he isn't here. \\\\nThat I think he'd be okay with that.")
    end
  end

  scene.message "\\i[Outside, snow. \\\\nInside, three young adults and a box.]"
  scene.message "\\i[It was the calmest any of you had been in a year.]"
  scene.camera_tint :reset, 30
end


GameData::Cutscene.define :qy_spring_engagement do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'

  scene.message "\\ts[]Spring, again. The Question."
  scene.wait 30

  scene.message "\\i[Kael had been agitated for two weeks. \\\\nNot in the old way, not the Yveltal-drift way — Aurora's monitor was clean, his pupils were sharp, he had been dreaming. \\\\nHe was just *agitated.*]"
  scene.wait 30

  scene.message "\\b\\PN\\b: *to your starter, watching Kael pace* He's going to ask her."
  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *agreement-chirp, knowing*", starter.name))
    end
  }
  scene.message "\\b\\PN\\b: Yeah. *Today,* I think."
  scene.wait 30

  # Player witnesses from a distance — Lyra and Kael on the east-field hill
  scene.message "\\i[Lyra came up the path with the morning's basket of Heart-of-Asgheim sprigs to dry.]"
  scene.message "\\i[Kael was already on the hill. He had a small box. He had been holding it for forty minutes.]"
  scene.wait 30

  scene.message "\\bKael\\b: *not looking up* Lyra."
  scene.message "\\bLyra\\b: *setting the basket down very carefully* ...okay. \\\\nOkay. Tell me what you came up here to say."
  scene.message "\\bKael\\b: *finally looking up* \\\\nI walked four hundred kilometers carrying you because I didn't want to ask anyone else for help. \\\\nI think — I think I would like to do that *forever.* \\\\nI think I would like that to be the *rest* of my work."
  scene.wait 30

  scene.message "\\bKael\\b: *opening the box* \\\\nLyra. Will you —"
  scene.message "\\bLyra\\b: *small, certain* Yes."
  scene.message "\\bKael\\b: I hadn't finished the *sentence.*"
  scene.message "\\bLyra\\b: I know what the sentence is. \\\\nYes. \\\\nFinish the sentence, please."
  scene.wait 30

  scene.message "\\bKael\\b: *quietly, perfectly* Will you marry me."
  scene.message "\\bLyra\\b: *still smiling* Yes. \\\\nThat was always the answer."
  scene.wait 45

  # Player has been watching from the porch with their starter
  scene.message "\\b\\PN\\b: *to your starter, very softly* Don't ruin it."
  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *softest possible agreement-chirp, but ear-flicks visible*", starter.name))
    end
  }
  scene.wait 30

  scene.message "\\b\\PN\\b: They'll tell us in their own time."
  scene.message "\\b\\PN\\b: *tearful, smiling* About time."

  scene.script {
    pbAchievement(:ach_engagement_witnessed) if defined?(pbAchievement)
    scFateGrant(:fate_engagement, 2, "Witnessed the proposal") if defined?(scFateGrant)
    $PokemonGlobal.sc_engagement_announced = true if $PokemonGlobal.respond_to?(:sc_engagement_announced=)
  }
end


GameData::Cutscene.define :qy_cap_pendant_pulses do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'

  scene.message "\\ts[]Late Spring. The Pendant."
  scene.wait 30

  scene.message "\\i[You were on the porch. \\\\nLyra and Kael had just told everyone at dinner. \\\\nThe whole Sanctuary was buzzing. Hoopa hadn't returned yet — that came later — but every freed Pokémon at the residence had appeared on the lawn within five minutes of the announcement.]"
  scene.wait 30

  scene.message "\\i[Then your pendant pulsed.]"
  scene.wait 20

  scene.message "\\b\\PN\\b: *quietly, to yourself* ...no. Not yet. \\\\nNot tonight."
  scene.message "\\i[The pendant pulsed again. Insistent. Cold.]"
  scene.wait 30

  scene.message "\\bZacian\\b: *in your head* \\\\nA fracture. East coast. Tomorrow morning. \\\\nIt isn't urgent enough to ruin tonight, but I owed you the warning."
  scene.script { sc_guardian_say(:ZACIAN, "It is the second war beginning. Sleep first. Tell them in the morning.") if defined?(sc_guardian_say) }
  scene.wait 30

  scene.message "\\b\\PN\\b: *closing your hand around the pendant* ...okay."
  scene.message "\\b\\PN\\b: *to your starter, who has come to sit next to you on the porch* \\\\nWe'll let them have tonight. \\\\nIn the morning, we go."

  scene.script {
    starter = $player.party[0]
    if starter
      pbMessage(_INTL("\\b{1}\\b: *very low, very ready*", starter.name))
    end
  }
  scene.wait 30

  scene.message "\\i[Inside, Lyra was laughing. Kael, of all people, was laughing too.]"
  scene.message "\\i[You watched them through the window for a long moment.]"
  scene.message "\\i[Then you went in to dance.]"

  # Hand-off to Ch37 (The Fracture)
  scene.script {
    GameData::Chapter.complete(:ch35_5) if defined?(GameData::Chapter)
    pbAchievement(:ach_quiet_year_complete) if defined?(pbAchievement)
  }
end


#===============================================================================
# Achievements
#===============================================================================
if defined?(GameData::Achievement)
  GameData::Achievement.define :ach_quiet_year_visits do |a|
    a.name "Listened"
    a.description "Visit Fern, Kestra, and Vala during the Quiet Year."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_engagement_witnessed do |a|
    a.name "Best Best-Person"
    a.description "Witness Kael propose to Lyra without ruining it."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_quiet_year_complete do |a|
    a.name "The Year of Loud Love"
    a.description "Complete the Quiet Year arc."
    a.category :story_hidden
    a.reward_item :MAXREVIVE, 2
  end
end


#===============================================================================
# Save flags
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_engagement_announced
end

SaveData.register(:sc_engagement_announced) do
  ensure_class :TrueClass
  save_value { $PokemonGlobal.sc_engagement_announced || false }
  load_value { |v| $PokemonGlobal.sc_engagement_announced = v }
  new_game_value { false }
end
