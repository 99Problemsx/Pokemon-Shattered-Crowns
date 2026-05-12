#===============================================================================
# POKÉMON SHATTERED CROWNS - NEW ARC: HOOPA'S SANCTUARY
#===============================================================================
# A 5-scene postgame arc set after Ch47 (Arceus's blessing) but before
# Ch48 (Return Home). When Arceus restored Hoopa, Hoopa was free —
# but powerless and frightened. This arc covers the year Hoopa spent
# rebuilding its strength at the Sanctuary, learning what trust looks
# like outside a cage.
#
# Beats:
#   :hoopa_first_day        First night at the Sanctuary — Hoopa hides
#   :hoopa_first_ring       Hoopa makes its first portal in months
#   :hoopa_chooses_lyra     Hoopa picks Lyra as caretaker
#   :hoopa_first_request    Hoopa asks for one specific thing
#   :hoopa_sanctuary_opens  Hoopa's Ring Shop opens to the public
#
# This arc also unlocks the postgame Hoopa Ring Shop — a portal-based
# rare-item dispenser that pays off Hoopa's promise of "we'll play
# tricks again someday."
#===============================================================================


GameData::Cutscene.define :hoopa_first_day do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'

  scene.message "\\ts[]The First Day."
  scene.wait 20

  scene.message "\\i[Hoopa had been at the Sanctuary for six hours. \\\\nIt had not come out of the linen cupboard.]"
  scene.message "\\i[Lyra sat on the floor outside the cupboard with a book and tea, not looking at it. Reading aloud sometimes. Not all the time.]"
  scene.wait 30

  scene.message "\\bLyra\\b: *to the cupboard, not loud* The book is called *The Travelling Companion.* \\\\nIt's about a Wartortle who gets lost and finds its way home. \\\\nIt isn't a sad book. I checked."
  scene.wait 30

  scene.message "\\i[A small purple ear appeared at the edge of the cupboard door. \\\\nThen retreated.]"
  scene.wait 30

  scene.message "\\bLyra\\b: *patient* I won't reach in. I won't try. \\\\nI'll read to you. That's the only thing I'll do."

  scene.message "\\i[Two hours of reading. \\\\nAt the end, Hoopa was sitting just inside the cupboard, against the doorframe. Eyes closed. Listening.]"

  scene.message "\\bLyra\\b: *whispering, when the book is done* You're allowed to come out whenever you want. \\\\nYou're also allowed to stay in the cupboard. \\\\nBoth are fine."

  scene.script {
    $PokemonGlobal.sc_hoopa_recovery_day = 1
  }
end


GameData::Cutscene.define :hoopa_first_ring do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "\\ts[]Day Forty-One. The First Ring."
  scene.wait 30

  scene.message "\\i[Hoopa had been out of the cupboard for two weeks now. It mostly lived on the windowsill in the kitchen.]"
  scene.message "\\i[Today, Hoopa was floating cross-legged on the kitchen table. Lyra was making bread.]"
  scene.wait 30

  scene.message "\\bHoopa\\b: *carefully, not looking up* ...the salt is in the high cupboard."
  scene.message "\\bLyra\\b: *not turning around* It is. \\\\nI can get it in a minute."
  scene.wait 30

  scene.message "\\bHoopa\\b: ...I could —"
  scene.message "\\bLyra\\b: *gentle* Only if you want to."
  scene.wait 30

  # Hoopa makes its first ring portal since being freed
  scene.message "\\i[A tiny purple ring opened beside the kitchen table. \\\\nA second ring appeared at the high cupboard. \\\\nThe salt floated through.]"
  scene.message "\\i[The rings closed. \\\\nHoopa looked very surprised at itself.]"
  scene.wait 45

  scene.message "\\bHoopa\\b: ...oh."
  scene.message "\\bLyra\\b: *still kneading dough, very normal* Thank you, Hoopa. \\\\nThe bread is going to be much better with salt in it."
  scene.message "\\bHoopa\\b: ...I did a ring."
  scene.message "\\bLyra\\b: You did a *small kindness.* \\\\nThe ring was just how the kindness happened."
  scene.wait 30

  scene.message "\\bHoopa\\b: *whispering, mostly to itself* ...okay. \\\\nOkay. That's allowed too."

  scene.script {
    pbAchievement(:ach_hoopa_first_ring) if defined?(pbAchievement)
  }
end


GameData::Cutscene.define :hoopa_chooses_lyra do |scene|
  scene.play_bgm 'Pokemon XY - Emotion'

  scene.message "\\ts[]Day Seventy. The Choice."
  scene.wait 30

  scene.message "\\i[Kael, Lyra, and you were all in the kitchen one morning when Hoopa floated in. \\\\nIt looked at each of you, evaluating.]"
  scene.wait 30

  scene.message "\\bHoopa\\b: *very serious* I have made a decision."
  scene.message "\\bKael\\b: ...okay."
  scene.message "\\bHoopa\\b: I would like a caretaker. \\\\nSomeone whose pocket I am allowed to live in when I need to. \\\\nI have decided this should be the bright one."
  scene.wait 30

  scene.message "\\bLyra\\b: ...me?"
  scene.message "\\bHoopa\\b: \\\\nYou wept when I was taken. \\\\nYou read me a story when I was scared. \\\\nYou taught me a ring was a small kindness."
  scene.message "\\bHoopa\\b: \\\\nThese are my requirements. \\\\nYou meet all of them."
  scene.wait 30

  # Lyra crouches down to Hoopa's level — meet it where it is
  scene.message "\\bLyra\\b: *crouching* I'd be honoured, Hoopa. \\\\nWill you fit in this pocket?"
  scene.message "\\i[She held out a coat pocket. Hoopa investigated with great gravity. Decided it was acceptable. Climbed in.]"
  scene.wait 30

  scene.message "\\bKael\\b: *to \\Player, low* ...we are going to find Hoopa pocket-feathers all over the Sanctuary for the rest of our lives."
  scene.message "\\b\\PN\\b: *to Kael, low* I think that is what 'family' technically means."

  scene.message "\\bHoopa\\b: *from the pocket, muffled* I HEARD THAT."

  scene.script {
    pbAchievement(:ach_hoopa_caretaker) if defined?(pbAchievement)
  }
end


GameData::Cutscene.define :hoopa_first_request do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'

  scene.message "\\ts[]Day One Hundred and Eight."
  scene.wait 30

  scene.message "\\bHoopa\\b: *from the pocket* I would like to ask for something."
  scene.message "\\bLyra\\b: Of course."
  scene.wait 20

  scene.message "\\bHoopa\\b: I would like to *help.*"
  scene.message "\\bHoopa\\b: I made portals for the Hand for a *long* time. \\\\nI would like to make a portal that *helps* someone for the first time."
  scene.wait 30

  scene.message "\\bLyra\\b: ...do you have someone in mind?"
  scene.message "\\bHoopa\\b: Yes. \\\\nThere is a child in Stormwatch who has been trying to send a letter to her grandmother in Hearthstone for two months. \\\\nThe roads between are still bad. The post never arrives."
  scene.message "\\bHoopa\\b: \\\\nI would like to take her letter."
  scene.wait 30

  scene.message "\\b\\PN\\b: *quietly* That's how it starts."
  scene.message "\\bHoopa\\b: *with great dignity* \\\\nYes. \\\\nThis is how it *starts.*"

  scene.script {
    pbAchievement(:ach_hoopa_first_help) if defined?(pbAchievement)
    scFateGrant(:fate_hoopa_helping, 1, "Hoopa's first ring of mercy") if defined?(scFateGrant)
  }
end


GameData::Cutscene.define :hoopa_sanctuary_opens do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'

  scene.message "\\ts[]Day One Hundred and Eighty."
  scene.wait 30

  scene.message "\\i[The Sanctuary's east annex had become a postal hall. \\\\nThree rings, always-open. \\\\nLetters in. Letters out. \\\\nHoopa floated in the centre, sorting mail with portal-fingers, *happy.*]"
  scene.wait 30

  scene.message "\\bHoopa\\b: *to a waiting child* Yes! \\\\nYour letter to your grandmother in Hearthstone. \\\\nShe will read it in fourteen seconds."
  scene.message "\\bChild\\b: *awe* ...fourteen *seconds*?"
  scene.message "\\bHoopa\\b: I am *fast.* \\\\nAlso, here is your grandmother's reply, which I made her write while I was there."
  scene.wait 30

  # The Hoopa Ring Shop opens
  scene.message "\\bHoopa\\b: *to \\Player and Lyra* \\\\nAlso! \\\\nI have decided to open a *trick shop.* \\\\nFor rare hold items. \\\\nI portal in things I think people should have, and they trade me for things I think other people should have."
  scene.message "\\bHoopa\\b: \\\\nI keep nothing. \\\\nIt is a *circle.*"
  scene.wait 30

  scene.message "\\bLyra\\b: *delighted* Are you telling me you started a business?"
  scene.message "\\bHoopa\\b: I started a *circle.* \\\\nBusinesses keep things. \\\\nMy circle does not keep things."
  scene.wait 30

  scene.message "\\b\\PN\\b: That's a wonderful tax problem you've created for the Sanctuary."
  scene.message "\\bHoopa\\b: ...I do not know what tax is."
  scene.message "\\bKael\\b: *appearing in the doorway with a clipboard* Hoopa. We are going to *learn.*"

  scene.script {
    # Unlock the postgame Hoopa Ring Shop
    $PokemonGlobal.sc_hoopa_shop_open = true if $PokemonGlobal.respond_to?(:sc_hoopa_shop_open=)
    pbAchievement(:ach_hoopa_shop) if defined?(pbAchievement)
    scFateGrant(:fate_hoopa_shop, 1, "Hoopa's Ring Shop opens") if defined?(scFateGrant)
    GameData::Chapter.complete(:ch47_5) if defined?(GameData::Chapter)
  }
end


#===============================================================================
# Hoopa Ring Shop — Postgame rare item dispenser
#-------------------------------------------------------------------------------
# Hoopa "portals in" items from across the world. The player trades
# Sanctuary intake reports (issued by Fern at the Sanctuary front desk
# after every liberation completion) for portal-only rare items.
#
# Items are not consumable by Hoopa; the trade is symbolic. Hoopa wants
# to be sure the item is going to someone who *needs* it.
#===============================================================================
GameData::Cutscene.define :hoopa_shop_open do |scene|
  scene.play_bgm 'Pokemon XY - Pokemon Center'

  scene.message "\\bHoopa\\b: \\PN! \\\\nWelcome to the *circle.* \\\\nWhat would you like to trade today?"
  scene.wait 20

  # Item menu - using the existing Shop system if defined
  scene.script {
    if defined?(GameData::Shop)
      GameData::Shop.open(:hoopa_ring_shop) rescue pbMessage("\\bHoopa\\b: ...the shop is taking a nap. Try again later.")
    else
      pbMessage("\\bHoopa\\b: ...the shop is taking a nap. Try again later.")
    end
  }
end


# Hoopa Ring Shop definition — trades "Sanctuary Tokens" for rare items.
# Sanctuary Tokens are awarded one per completed liberation reunion.
if defined?(GameData::Shop)
  GameData::Shop.define(:hoopa_ring_shop) do |s|
    s.greeting   "Welcome to the circle! What can I find for you today?"
    s.farewell   "Thank you! I will tell the world you said hello!"
    s.currency   :SANCTUARY_TOKEN  # custom currency item
    s.item :CHARIZARDITEX,     1
    s.item :MEWTWONITEX,       1
    s.item :LUCARIONITE,       1
    s.item :GALLADITE,         1
    s.item :METAGROSSITE,      1
    s.item :GARCHOMPITE,       1
    s.item :ABILITYPATCH,      2
    s.item :BOTTLECAP,         1
    s.item :GOLDBOTTLECAP,     3
    s.item :MASTERBALL,        5
    s.item :PPMAX,             2
  end
end


#===============================================================================
# Codex
#===============================================================================
if defined?(CodexRegistry)
  CodexRegistry.add(:HOOPA_RECOVERY,
    title:    "Hoopa's Recovery",
    category: :CHARACTERS,
    text:     "After Arceus restored Hoopa in Ch47, the trickster spent " \
              "six months at the Lyra-Kael Sanctuary learning what trust " \
              "looked like outside a cage. \\\\nFirst day: hid in a linen " \
              "cupboard while Lyra read aloud outside it. \\\\nFirst portal " \
              "(day 41): salt from a high cupboard. \\\\nFirst caretaker " \
              "(day 70): Lyra, by Hoopa's choosing. \\\\nFirst mission " \
              "(day 108): a child's letter to her grandmother. \\\\nFirst " \
              "shop (day 180): the Ring Circle, postage for refugees by " \
              "day, rare-item portal trades for the Chosen by night."
  )

  CodexRegistry.add(:HOOPA_RING_SHOP,
    title:    "Hoopa's Ring Circle",
    category: :HISTORY,
    text:     "A postgame portal-based exchange operated by Hoopa from " \
              "the Sanctuary's east annex. Trades Sanctuary Tokens — " \
              "awarded one-per-liberation-reunion completed during the " \
              "main story — for rare hold items, Mega Stones, and " \
              "miscellaneous treasures Hoopa has portal-imported from " \
              "elsewhere in the world. \\\\nHoopa keeps nothing for itself. " \
              "Hoopa calls this a *circle,* not a *business.* \\\\nKael " \
              "is teaching Hoopa about taxes. It is not going well."
  )
end


#===============================================================================
# Achievements
#===============================================================================
if defined?(GameData::Achievement)
  GameData::Achievement.define :ach_hoopa_first_ring do |a|
    a.name "Small Kindness"
    a.description "Witness Hoopa's first portal since being freed."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_hoopa_caretaker do |a|
    a.name "The Bright One's Pocket"
    a.description "Hoopa picks Lyra as caretaker."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_hoopa_first_help do |a|
    a.name "A Letter Home"
    a.description "Hoopa's first portal of mercy."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_hoopa_shop do |a|
    a.name "The Circle"
    a.description "Open Hoopa's Ring Shop."
    a.category :story_hidden
    a.reward_item :SANCTUARY_TOKEN, 3
  end
end


#===============================================================================
# Save flags
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_hoopa_recovery_day, :sc_hoopa_shop_open
end

SaveData.register(:sc_hoopa_recovery_day) do
  ensure_class :Integer
  save_value { $PokemonGlobal.sc_hoopa_recovery_day || 0 }
  load_value { |v| $PokemonGlobal.sc_hoopa_recovery_day = v }
  new_game_value { 0 }
end

SaveData.register(:sc_hoopa_shop_open) do
  ensure_class :TrueClass
  save_value { $PokemonGlobal.sc_hoopa_shop_open || false }
  load_value { |v| $PokemonGlobal.sc_hoopa_shop_open = v }
  new_game_value { false }
end
