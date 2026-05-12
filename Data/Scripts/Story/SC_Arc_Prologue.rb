#===============================================================================
# POKÉMON SHATTERED CROWNS - NEW ARC: PROLOGUE (Chapter 0)
#===============================================================================
# A playable prologue arc set twenty-two years before the events of the
# main story. The player controls MARCUS — the future Champion, future
# father, future ex-Champion — during the original binding of Hoopa.
#
# This is the seventh New Game option: "Prologue (Marcus's Story)". It
# is roughly 90 minutes of content covering:
#
#   Pro-1  The Letter        — Aldric (young) writes to Marcus + Aurora
#   Pro-2  The Calling       — Marcus and Aurora confirm their marks
#   Pro-3  Recruiting Vex    — the fourth sealer joins (sells him as decent)
#   Pro-4  The Carving       — Aurora carves the festival mask while pregnant
#   Pro-5  The Binding       — Hoopa is sealed, Vex is changed by it
#   Pro-6  The Cost          — Marcus and Aurora come home; Aldric promises
#                              he will track the next generation
#   Pro-7  Twenty-Two Years Later — fade-in to Ch1
#
# Completing the prologue:
#   - Unlocks "Champion's Choice" — Marcus's old Charizard gets a special
#     dialogue when traded into a regular save file
#   - Unlocks the Mask of Heirloom codex pre-emptively
#   - Makes the Ch28 mask-remembers cutscene hit *exponentially* harder
#     because the player CARVED IT THEMSELVES
#   - Marks NG+ runs with the "Knowing" status — future Aurora dialogue
#     subtly acknowledges that the player has seen her younger
#===============================================================================


#===============================================================================
# Pro-1 — The Letter
#-------------------------------------------------------------------------------
GameData::Cutscene.define :pro_1_the_letter do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  scene.camera_tint :sepia, 30

  scene.message "\\ts[]Twenty-two years ago. Dawnhaven Village."
  scene.wait 30

  scene.message "\\i[A young man sat at a kitchen table, polishing a Charizard's pokeball with a cloth that had clearly seen better days.]"
  scene.message "\\i[His name was Marcus. He was nineteen. He had just won the Asgheim Championship for the third year running.]"
  scene.message "\\i[He had a letter in his hand. It was on Aldric's lab letterhead. He had read it three times.]"
  scene.wait 45

  scene.message "\\bMarcus (young)\\b: *to his Charizard, quietly* \\\\nYou know what he wants. I know what he wants."
  scene.message "\\bMarcus\\b: It's the binding. The one he's been talking about all summer."
  scene.message "\\bMarcus\\b: He thinks we're the ones."
  scene.wait 30

  scene.message "\\i[The door opened. A young woman came in carrying a bag of vegetables. \\\\nAurora. Twenty-one. Researcher. The smarter one in the room and they both knew it.]"
  scene.wait 30

  scene.message "\\bAurora (young)\\b: ...you've got *that* face."
  scene.message "\\bMarcus\\b: Aldric wrote."
  scene.message "\\bAurora\\b: *carefully setting the bag down* \\\\nAnd?"
  scene.message "\\bMarcus\\b: He thinks we're the ones. \\\\nFor the binding."
  scene.wait 30

  scene.message "\\bAurora\\b: *long breath* \\\\nI thought we had three more years."
  scene.message "\\bMarcus\\b: So did he. \\\\nThe seal-shape has shifted. He thinks the next *attempt* on it is — soon."
  scene.message "\\bAurora\\b: Soon as in?"
  scene.message "\\bMarcus\\b: This year."
  scene.wait 30

  scene.message "\\bAurora\\b: ...okay. \\\\nGet your boots. \\\\nWe're going to the lab."

  scene.camera_tint :reset, 30
end


#===============================================================================
# Pro-2 — The Calling
#-------------------------------------------------------------------------------
GameData::Cutscene.define :pro_2_calling do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'

  scene.message "\\i[Aldric's lab. Younger than \\PN had ever known him. Hair still mostly dark. Eyes still kind.]"
  scene.wait 30

  scene.message "\\bAldric (young)\\b: I am thirty-one years old. \\\\nI am asking two of my closest friends, who are nineteen and twenty-one, to attempt a binding that has killed eight people in recorded history."
  scene.message "\\bAldric\\b: I would like to apologize before I make the request."
  scene.wait 30

  scene.message "\\bMarcus\\b: Don't. \\\\nWe'd be coming whether or not you asked. \\\\nYou know that."
  scene.message "\\bAldric\\b: I do. \\\\nThat is, in fact, the part I am apologizing for."
  scene.wait 30

  # Aurora reveals she's pregnant — the audience already knows because of
  # the v4-F2 codex entry. Marcus does NOT know yet.
  scene.message "\\bAurora\\b: ...Aldric. \\\\nBefore we go further."
  scene.message "\\bAurora\\b: Marcus."
  scene.message "\\bMarcus\\b: ...yeah?"
  scene.message "\\bAurora\\b: *steady* I'm pregnant."
  scene.wait 60

  scene.show_emotion :MARCUS, :exclamation
  scene.message "\\bMarcus\\b: ...what?"
  scene.message "\\bAurora\\b: *small smile* Eight weeks. \\\\nI was going to tell you at the harvest festival. \\\\nNow seems important."
  scene.wait 30

  scene.message "\\bAldric\\b: *quietly* ...Aurora. \\\\nThis changes the binding plan."
  scene.message "\\bAurora\\b: I *know.* \\\\nWhich is why I'm telling you both *now.* \\\\nI cannot stand at the binding circle. \\\\nI can do something else."

  # Aurora's plan: she carves the protective mask, Marcus and Vex do the
  # dangerous work, she stays at the edge to coordinate.
  scene.message "\\bAurora\\b: I will carve the protection. \\\\nThe seal-mask. \\\\nI have been studying the runes for years and I am the most qualified of any of us to do this part."
  scene.message "\\bAurora\\b: We need a third for the binding circle. \\\\nWhoever it is, *I* will keep them on plan."
  scene.wait 30

  scene.message "\\bMarcus\\b: ...all right. \\\\nWho's the third?"
  scene.message "\\bAldric\\b: There's a researcher visiting from Hoenn. \\\\nVex Calderon. Twenty-five, decorated, *smart.* \\\\nHe volunteered."

  scene.script {
    codexDiscover(:AURORA_YOUNG) if defined?(codexDiscover)
  }
end


#===============================================================================
# Pro-3 — Recruiting Vex
#-------------------------------------------------------------------------------
GameData::Cutscene.define :pro_3_recruiting_vex do |scene|
  scene.play_bgm 'Pokemon XY - Couriway Town'

  scene.message "\\i[The Verdantia inn. \\\\nVex Calderon, twenty-five, was three glasses of wine in and *good company.*]"
  scene.message "\\i[This is — and the player must understand this — what makes the binding tragedy real. \\\\nVex was a *good person.* The Hand wasn't born evil. The Hand was *broken.*]"
  scene.wait 45

  scene.message "\\bVex (young)\\b: All right, Champion. *Pitch me.*"
  scene.message "\\bMarcus\\b: It's a binding. It's dangerous. We've lost eight people in recorded history."
  scene.message "\\bVex\\b: ...go on."
  scene.message "\\bMarcus\\b: And it might let us *win.* \\\\nIf Aldric is right about the seal-shape — and Aldric is right about *most things* — \\\\nwe can buy the world a thousand quiet years."
  scene.wait 30

  scene.message "\\bVex\\b: A thousand quiet years."
  scene.message "\\bVex\\b: *grinning* For a researcher, Champion, that is *catnip.* \\\\nYou *know* I'm coming."
  scene.message "\\bVex\\b: I want to see Aldric's working. I want to make sure the math is right."
  scene.message "\\bVex\\b: I want to *help.*"
  scene.wait 45

  # Vex meets Aurora — they get along immediately. This is the part that
  # makes the player root for the trio. Then, knowing what happens, hurt.
  scene.message "\\bAurora\\b: Vex. Aurora. \\\\nI'm carving the mask. \\\\nYou're standing where I would be standing."
  scene.message "\\bVex\\b: *taking her hand, very serious* I will not let your husband fall. \\\\nThat is a *promise.*"
  scene.message "\\bAurora\\b: I will hold you to it."
  scene.wait 30

  scene.message "\\bMarcus\\b: *aside, to Vex* ...thank you."
  scene.message "\\bVex\\b: *to Marcus* \\\\nA thousand quiet years for the kid she's carrying, Champion. \\\\nFor *that* — yes. \\\\nAlways yes."

  scene.script {
    codexDiscover(:VEX_BEFORE) if defined?(codexDiscover)
  }
end


#===============================================================================
# Pro-4 — The Carving
#-------------------------------------------------------------------------------
GameData::Cutscene.define :pro_4_the_carving do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'

  scene.message "\\ts[]Six weeks later. Aurora's study."
  scene.wait 30

  scene.message "\\i[Aurora was carving the mask. \\\\nThe wood was birch. The runes were eleventh-century Astoria-line, traced from a book Aldric had loaned her.]"
  scene.message "\\i[Inside the mask — where no rune would go — she carved one word. *MARCUS.*]"
  scene.wait 30

  # The player as Aurora actually carves this — it is a small interactive
  # moment. The mask's name is chosen by the player.
  scene.script {
    pbMessage(_INTL("\\bAurora\\b: Whose name will this mask carry?"))
    chosen_name = pbNameEntry(_INTL("Carve a name?"), 10, "Marcus", nil)
    chosen_name = "Marcus" if chosen_name.nil? || chosen_name.empty?
    $PokemonGlobal.sc_prologue_mask_name = chosen_name if $PokemonGlobal.respond_to?(:sc_prologue_mask_name=)
    pbMessage(_INTL("\\i[You carved *{1}* inside the mask. The wood took it cleanly. The runes glowed faintly when you traced them with your thumb.]", chosen_name))
  }
  scene.wait 30

  scene.message "\\bAurora\\b: *to her belly, quietly* \\\\nWhen you wear this one day — and you will — \\\\nyou'll know that I made it for your father, hoping you'd never need it."
  scene.message "\\bAurora\\b: \\\\nI'm sorry it didn't work out that way. \\\\nI'm proud of you anyway."
  scene.wait 45

  # The mask is delivered to a friend at the Thornwood Festival town
  scene.message "\\i[She wrapped the mask in oilcloth and walked it to her friend's stall at the festival town. \\\\nThe friend was an old carver who pretended she had made it herself. \\\\nThis was the kindness Aurora had asked for.]"

  scene.script {
    codexDiscover(:MASK_OF_HEIRLOOM) if defined?(codexDiscover)
    pbAchievement(:ach_pro_carved_mask) if defined?(pbAchievement)
  }
end


#===============================================================================
# Pro-5 — The Binding
#-------------------------------------------------------------------------------
GameData::Cutscene.define :pro_5_the_binding do |scene|
  scene.play_bgm 'Pokemon XY - Final Battle Lysandre'
  scene.camera_shake 12, 60

  scene.message "\\ts[]The Binding."
  scene.wait 30

  scene.message "\\i[A chamber under the Asgaheim cliffs. \\\\nAurora at the circle's edge, mask in her lap. \\\\nAldric at the south point with the chant. \\\\nMarcus and Vex at the north and east points, hands on the seal-stones.]"
  scene.message "\\i[Hoopa was at the centre. Curious. Frightened. Bound by older magic than the trio understood.]"
  scene.wait 60

  scene.message "\\bHoopa (Confined, young)\\b: ...what are you *doing?*"
  scene.message "\\bAldric\\b: Sealing the path you would otherwise be forced to be. \\\\nLittle one. \\\\nI am sorry."
  scene.wait 30

  scene.message "\\bHoopa\\b: ...if you put me in the seal, the Hand cannot come through me?"
  scene.message "\\bAldric\\b: That is correct."
  scene.message "\\bHoopa\\b: ...then please continue."
  scene.wait 30

  # The binding-flash happens. Marcus is fine. Vex is shown the futures.
  scene.message "\\bAldric\\b: *raising arms* \\\\n*Bind.*"

  scene.camera_flash 80
  scene.camera_shake 25, 100
  scene.wait 60

  # The flash — Hoopa sees Vex what the cycle looks like. Vex breaks.
  scene.message "\\bVex\\b: *eyes wide, voice changing* \\\\n...I see. \\\\nI see *all* of it."
  scene.message "\\bVex\\b: \\\\nIt comes back. \\\\nIt comes back *every* thousand years."
  scene.message "\\bVex\\b: \\\\nAll we are doing is *stalling.*"
  scene.wait 60

  scene.message "\\bMarcus\\b: *catching him as he stumbles* \\\\nVex. Vex. Stay with us. The binding is *holding* —"
  scene.message "\\bVex\\b: *quietly, far away* \\\\nThe binding is *delay.* \\\\nThe binding is *delay.* \\\\nThe binding is —"
  scene.wait 30

  scene.message "\\bAurora\\b: \\\\nVex. \\\\nLook at me."

  # The save: Aurora's protective mask saved Marcus and Aldric from the
  # full flash. It did not protect Vex, who was outside the runed circle.
  # This is the truth Vex never recovered from.
  scene.message "\\bVex\\b: *focusing on her, almost normal* \\\\n...your mask saved them. \\\\nYour mask did not save *me.*"
  scene.message "\\bVex\\b: *small, almost confused* \\\\n...I should have stood inside the runes."
  scene.message "\\bAurora\\b: \\\\nI am so sorry, Vex. \\\\nI am *so* sorry."
  scene.wait 60

  scene.message "\\bHoopa\\b: *from inside the seal, small voice* \\\\n...he will not forgive you. \\\\nI am sorry."

  scene.camera_shake 0, 0
end


#===============================================================================
# Pro-6 — The Cost
#-------------------------------------------------------------------------------
GameData::Cutscene.define :pro_6_the_cost do |scene|
  scene.play_bgm 'Pokemon XY - Sad Theme'
  scene.camera_tint :sepia, 30

  scene.message "\\i[A week after the binding. The lab kitchen.]"
  scene.message "\\i[Vex was on a chair by the window. He had not spoken in three days. He had not slept in five.]"
  scene.wait 30

  scene.message "\\bMarcus\\b: *to Aurora, low* \\\\nHe's not — he's not coming back."
  scene.message "\\bAurora\\b: *low, certain* \\\\nNo. He isn't."
  scene.wait 30

  scene.message "\\bAldric\\b: *appearing in the doorway* \\\\nMarcus. Aurora."
  scene.message "\\bAldric\\b: ...I have looked at the seal-shape every morning since the binding. \\\\nIt is holding. \\\\nIt will hold for *roughly* twenty-two years."
  scene.message "\\bAldric\\b: After that — \\\\nthere will be a new generation. \\\\nThree of them this time. The seal-shape has *braided.*"
  scene.wait 30

  scene.message "\\bMarcus\\b: ...three."
  scene.message "\\bAldric\\b: Three Chosen. \\\\nOne of them — *almost certainly* — will be your child, Aurora."
  scene.message "\\bAurora\\b: *hand on her belly* ...okay."
  scene.message "\\bAurora\\b: *to Aldric, steady* \\\\nThen *teach the next three* what we should have known. \\\\nGive them every year I cannot give them. \\\\nI will help. We both will. We will *raise* this one to know the shape of the road they'll walk."
  scene.wait 45

  scene.message "\\bAldric\\b: \\\\nI will spend the rest of my life on this work. \\\\nI promise."
  scene.message "\\bMarcus\\b: We know you will, old friend."

  # Vex stands up. Walks out. Doesn't come back.
  scene.message "\\i[Vex stood up. He didn't speak. He walked out the kitchen door and into the yard and did not stop walking.]"
  scene.message "\\i[He would not be seen again — by name — for twenty-two years.]"
  scene.wait 60

  scene.camera_tint :reset, 30

  scene.script {
    pbAchievement(:ach_pro_completed) if defined?(pbAchievement)
  }
end


#===============================================================================
# Pro-7 — Twenty-two years later
#-------------------------------------------------------------------------------
GameData::Cutscene.define :pro_7_twenty_two_years_later do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'

  scene.fade_out 60
  scene.wait 60

  scene.message "\\ts[]Twenty-two years later."
  scene.wait 60

  scene.fade_in 60

  scene.message "\\i[A young person is asleep in a bed in Dawnhaven Village. \\\\nThe morning sun lives up to the town's name. \\\\nMom is calling. \\\\nDad is polishing an old Pokéball.]"
  scene.message "\\i[They are about to wake up.]"
  scene.message "\\i[Their starter is in a small box in the back room — waiting.]"
  scene.wait 45

  scene.message "\\i[Marcus and Aurora kept their promise. \\\\nAldric kept his.]"
  scene.message "\\i[Now everything they prepared for begins.]"
  scene.wait 30

  # Cross-fade to Ch1
  scene.fade_out 90
  scene.script {
    GameData::Chapter.complete(:pro_arc) if defined?(GameData::Chapter)
    $PokemonGlobal.sc_prologue_completed = true if $PokemonGlobal.respond_to?(:sc_prologue_completed=)
    pbAchievement(:ach_pro_full) if defined?(pbAchievement)

    # If the player came from a New Game flow that *started* with the
    # prologue, hand off directly into :ch1_wake_up.
    if $game_switches[:sc_prologue_route] && defined?(GameData::Cutscene)
      GameData::Cutscene.play(:ch1_wake_up)
    end
  }
end


#===============================================================================
# Codex
#===============================================================================
if defined?(CodexRegistry)
  CodexRegistry.add(:AURORA_YOUNG,
    title:    "Aurora — Twenty-Two Years Ago",
    category: :CHARACTERS,
    text:     "Twenty-one years old, eight weeks pregnant, the most " \
              "qualified rune-carver in the binding party. Aurora's " \
              "mask saved Marcus and Aldric from the binding-flash. It " \
              "did not save Vex, who stood outside the runed circle. " \
              "She has never forgiven herself for the geometry of that " \
              "moment. Marcus has spent twenty-two years trying to " \
              "convince her there was no other plan."
  )

  CodexRegistry.add(:VEX_BEFORE,
    title:    "Vex — Before",
    category: :CHARACTERS,
    text:     "Twenty-five years old, Hoenn-trained, decorated researcher, " \
              "good company over a drink. Volunteered for the Hoopa " \
              "binding without hesitation. Promised Aurora he would not " \
              "let her husband fall. \\\\nThe binding-flash did not kill " \
              "him. It showed him what Hoopa was being shown — the next " \
              "cycle, and the one after, and the heat-death of the seal " \
              "system after a million quiet years. \\\\nHe walked out of " \
              "the lab kitchen seven days later and was not seen again " \
              "by his name for twenty-two years."
  )
end


#===============================================================================
# Achievements
#===============================================================================
if defined?(GameData::Achievement)
  GameData::Achievement.define :ach_pro_carved_mask do |a|
    a.name "The Carver's Hand"
    a.description "Carve the Heirloom Mask as Aurora."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_pro_completed do |a|
    a.name "Twenty-Two Years"
    a.description "Complete the Prologue (Marcus's Story)."
    a.category :story_hidden
    a.reward_item :RARECANDY, 5
  end
  GameData::Achievement.define :ach_pro_full do |a|
    a.name "The First Sealer"
    a.description "Watch the time-cut to Ch1. The road begins again."
    a.category :story_hidden
    a.hidden true
  end
end


#===============================================================================
# Save flags
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_prologue_completed, :sc_prologue_mask_name
end

SaveData.register(:sc_prologue_completed) do
  ensure_class :TrueClass
  save_value { $PokemonGlobal.sc_prologue_completed || false }
  load_value { |v| $PokemonGlobal.sc_prologue_completed = v }
  new_game_value { false }
end

SaveData.register(:sc_prologue_mask_name) do
  ensure_class :String
  save_value { $PokemonGlobal.sc_prologue_mask_name || "Marcus" }
  load_value { |v| $PokemonGlobal.sc_prologue_mask_name = v }
  new_game_value { "Marcus" }
end
