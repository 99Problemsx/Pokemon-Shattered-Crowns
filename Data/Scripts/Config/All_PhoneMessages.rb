#===============================================================================
# Shattered Crowns - Phone Message Definitions
#===============================================================================
# Auto-generated from PBS/phone.txt
# Uses GameData::PhoneContact.define format
#===============================================================================

GameData::PhoneContact.define :Default do |c|
  c.intro "Hello. This is \TN."
  c.intro "Good day, \PN! Hi. This is \TN."
  c.intro "How are you doing? \PN, howdy! This is \TN. Isn't it nice out?"
  c.intro "\PN, good day! It's me, \TN. Got a minute?"
  c.intro "Hello, \PN. This is \TN. How are things?"
  c.intromorning "Good morning, \PN. This is \TN. Did I wake you?"
  c.introafternoon "Good afternoon, \PN! It's \TN here."
  c.introevening "\PN, good evening! Hi. This is \TN."
  c.body "How are your Pokémon doing?\mMy \TP's really energetic. It's a handful!\mOh yeah, I managed to beat a tough \TE.\mI need to make my party stronger."
  c.body "My \TP's looking really awesome. I wish I could show you.\mHey, listen! I almost caught a \TE the other day.\mOh, it was sooooooo close, too!"
  c.body1 "How are your Pokémon doing?\mMy \TP's really energetic. It's a handful!"
  c.body1 "How are your Pokémon doing?\mI always keep my \TP in top shape by going to Pokémon Centers."
  c.body1 "My \TP's looking really awesome. I wish I could show you."
  c.body1 "I dressed my \TP and it looks even cuter than before."
  c.body2 "Oh yeah, I managed to beat a tough \TE.\mI need to make my party stronger."
  c.body2 "You have to hear this! I battled \TE the other day.\mIt was easy! I had a type advantage."
  c.body2 "Hey, listen! I almost caught \TE the other day.\mOh, it was sooooooo close, too!"
  c.body2 "Guess what happened the other day. I missed catching \TE again.\mMaybe I'm not very good at this."
  c.battlerequest "Want to battle? It's not going to be a repeat of the last time we met.\mI'll be waiting for you around \TM."
  c.battlerequest "Do you want to battle? I'm going to win this time!\mI'll be waiting for you around \TM.\mLook for me, OK? My \TP will be expecting you."
end

GameData::PhoneContact.define :CAMPER, "Jeff" do |c|
  c.intro "Hello. This is \TN...\mHow's it going, \PN?"
  c.body1 "My \TP is looking more and more like me. It's getting cuter!"
  c.body2 "And you know? Now we can KO \TE easily.\mI should challenge the Cedolan Gym."
  c.body2 "And you know? We just failed to beat \TE by a tiny margin.\mI'm guessing my Pokémon's levels aren't high enough yet..."
  c.battlerequest "You must be a lot better now, huh?\mHow about showing me your technique in a real battle with me?\mI'll be waiting on \TM."
  c.battleremind "Where are you? Let's have our battle soon!\mI'll be waiting on \TM."
  c.end "See you later!"
end

GameData::PhoneContact.define :PICNICKER, "Susie" do |c|
  c.intro "This is \TN!"
  c.intro "Hi, this is \TN!"
  c.intromorning "This is \TN! Good morning, \PN!"
  c.intromorning "Hi, this is \TN! Good morning, \PN!"
  c.introafternoon "This is \TN! Good afternoon, \PN!"
  c.introafternoon "Hi, this is \TN! Good afternoon, \PN!"
  c.introevening "This is \TN! Good evening, \PN!"
  c.introevening "Hi, this is \TN! Good evening, \PN!"
  c.body1 "My \TP and I are getting more in sync with each other."
  c.body2 "We battled a wild \TE and managed to beat it in a close match.\mWe're getting into the groove!"
  c.body2 "But, you know what? I still haven't caught \TE.\mIt's getting beyond frustrating..."
  c.battlerequest "Would you be my practice partner again sometime?\mI'll be waiting on \TM...\mCould you take it a little easier on me next time?"
  c.battleremind "How soon can I expect to see you?\mDon't forget, \TM!"
  c.end "Bye! Let's chat again!"
end

