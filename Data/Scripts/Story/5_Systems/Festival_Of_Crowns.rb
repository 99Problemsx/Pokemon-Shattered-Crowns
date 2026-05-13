#===============================================================================
# POKÉMON SHATTERED CROWNS - FESTIVAL OF CROWNS MINI-GAME
#===============================================================================
# The bible's Ch3 Thornwood Festival currently exists as dialogue-only
# beats: "you went to the strength test", "you watched the contest",
# "you ate festival food." This module makes the festival INTERACTIVE.
#
# Six mini-games, each unlocked at the festival booth:
#   1. Strength Test    — timing-based: hit the bell with your Pokémon's
#                          attack at the right moment
#   2. Pokémon Contest  — three rounds: beauty / coolness / cleverness;
#                          uses team stat values
#   3. Storyteller's Ear — listening puzzle: match four short phrases
#                          to the right myth
#   4. Mask Carver Stall — pick a mask design; previews the Ch28 mask
#                          payoff in miniature
#   5. Fortune Teller    — give a number, get a cryptic line that becomes
#                          relevant at Ch7/Ch12/Ch24 (one of three)
#   6. Festival Dance    — only available if SCRomance is set to :ragnar
#                          (pays off :rag_path_ch3_festival_dance)
#
# Prizes: Festival Tokens, used at the booth shop for cosmetics, rare
# berries, and a one-of-a-kind FESTIVAL_RIBBON for the player's lead
# Pokémon (displays on Trainer Card; cosmetic only).
#===============================================================================


module SCFestival
  def self.tokens
    $PokemonGlobal.sc_festival_tokens || 0
  end

  def self.add_tokens(n)
    $PokemonGlobal.sc_festival_tokens = (tokens + n)
    pbSEPlay('Item Get') rescue nil
    pbMessage(_INTL("Festival Tokens: +{1} (now {2})", n, tokens))
  end

  def self.spend_tokens(n)
    return false if tokens < n
    $PokemonGlobal.sc_festival_tokens = tokens - n
    true
  end

  def self.mark_visited(booth)
    $PokemonGlobal.sc_festival_booths_visited ||= []
    $PokemonGlobal.sc_festival_booths_visited << booth unless $PokemonGlobal.sc_festival_booths_visited.include?(booth)
    if $PokemonGlobal.sc_festival_booths_visited.length >= 5
      pbAchievement(:ach_festival_complete) if defined?(pbAchievement)
    end
  end
end


#-------------------------------------------------------------------------------
# Festival Hub — main entry point
#-------------------------------------------------------------------------------
GameData::Cutscene.define :festival_hub do |scene|
  scene.play_bgm 'Pokemon DPPT - Eterna Forest'

  scene.message "\\i[Thornwood was *alive.* \\\\nBanners. Roasted nuts. Pokémon in tiny costumes. \\\\nA stage at the centre square. Booths along every side street.]"
  scene.message "\\bLyra\\b: Look! Booths! TOKENS! \\\\nMy grandmother used to say if you visited all five booths you'd have a perfect year."
  scene.message "\\bKael\\b: *unimpressed* I will visit *one* booth. I will then sulk in a corner."
  scene.message "\\bLyra\\b: *grinning* Three booths. Final offer."
  scene.message "\\bKael\\b: ...two and I get a corner."
  scene.message "\\bLyra\\b: Deal!"
  scene.wait 30

  scene.script {
    SCFestival.add_tokens(3) unless ($PokemonGlobal.sc_festival_hub_visited rescue false)
    $PokemonGlobal.sc_festival_hub_visited = true if $PokemonGlobal.respond_to?(:sc_festival_hub_visited=)
    pbMessage(_INTL("The festival mayor handed you three starting tokens."))
  }
end


#-------------------------------------------------------------------------------
# 1. Strength Test — timing mini-game
#-------------------------------------------------------------------------------
GameData::Cutscene.define :festival_strength_test do |scene|
  scene.play_bgm 'Pokemon XY - Vaniville Town'
  scene.message "\\bBooth Operator\\b: *muscly, friendly* \\\\nWELCOME to the STRENGTH TEST. \\\\nOne token. Hit the bell. WIN UP TO TEN TOKENS."
  scene.message "\\bBooth Operator\\b: \\\\nYour Pokémon swings. \\\\nI count. \\\\nTiming is *everything,* kid."

  scene.script {
    unless SCFestival.spend_tokens(1)
      pbMessage("\\bBooth Operator\\b: ...come back when you have a token, friend.")
      next
    end

    # Three-shot timing mini-game. Use a simple text-rhythm. Each attempt
    # rolls 1-100 against the player's lead Pokémon's Attack stat.
    starter = $player.party[0]
    next pbMessage("\\bBooth Operator\\b: ...where IS your Pokémon, friend?") unless starter

    pbMessage(_INTL("\\b{1}\\b: *steps up to the lever*", starter.name))
    rolls = 3.times.map { rand(100) + (starter.attack / 8) }
    best = rolls.max

    if best >= 95
      pbMessage("\\bBooth Operator\\b: *bell shatters* \\\\nNO WAY. *NO WAY.* TEN TOKENS!")
      SCFestival.add_tokens(10)
      pbAchievement(:ach_festival_strength_bellbreaker) if defined?(pbAchievement)
    elsif best >= 75
      pbMessage("\\bBooth Operator\\b: \\\\nBig swing! *Five tokens.*")
      SCFestival.add_tokens(5)
    elsif best >= 50
      pbMessage("\\bBooth Operator\\b: \\\\nDecent! Two tokens.")
      SCFestival.add_tokens(2)
    else
      pbMessage("\\bBooth Operator\\b: \\\\nKid, your Pokémon needs lunch. \\\\nThanks for playing.")
    end

    SCFestival.mark_visited(:strength)
  }
end


#-------------------------------------------------------------------------------
# 2. Pokémon Contest — three rounds based on team stats
#-------------------------------------------------------------------------------
GameData::Cutscene.define :festival_contest do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'
  scene.message "\\bContest Host\\b: Welcome to the THORNWOOD CONTEST. \\\\nThree rounds: Beauty, Coolness, Cleverness. \\\\nOne token to enter. Win tokens by impressing the judges."

  scene.script {
    unless SCFestival.spend_tokens(1)
      pbMessage("\\bContest Host\\b: One token, my dear. Just one.")
      next
    end

    party = $player.party.reject { |p| p.egg? || p.fainted? }
    next pbMessage("\\bContest Host\\b: A team is required, my dear.") if party.empty?

    pick_idx = pbChoosePokemon(_INTL("Which Pokemon will compete?"), 1)
    next if pick_idx < 0
    competitor = $player.party[pick_idx]

    score = 0
    pbMessage(_INTL("\\bContest Host\\b: Round 1: BEAUTY."))
    beauty = competitor.happiness + competitor.spdef
    pbMessage(_INTL("\\b{1}\\b strikes a pose! Beauty score: {2}.", competitor.name, beauty))
    score += beauty

    pbMessage(_INTL("\\bContest Host\\b: Round 2: COOLNESS."))
    coolness = competitor.attack + (competitor.shiny? ? 100 : 0)
    pbMessage(_INTL("\\b{1}\\b plays it cool. Coolness score: {2}.", competitor.name, coolness))
    score += coolness

    pbMessage(_INTL("\\bContest Host\\b: Round 3: CLEVERNESS."))
    cleverness = competitor.spatk + competitor.speed / 2
    pbMessage(_INTL("\\b{1}\\b thinks fast. Cleverness score: {2}.", competitor.name, cleverness))
    score += cleverness

    pbMessage(_INTL("\\bContest Host\\b: TOTAL: {1}!", score))
    if score >= 600
      pbMessage("\\bContest Host\\b: GRAND CHAMPION. Eight tokens AND the FESTIVAL RIBBON.")
      SCFestival.add_tokens(8)
      pbReceiveItem(:FESTIVALRIBBON, 1) rescue nil
      pbAchievement(:ach_festival_grand_champion) if defined?(pbAchievement)
    elsif score >= 400
      pbMessage("\\bContest Host\\b: Wonderful! Four tokens.")
      SCFestival.add_tokens(4)
    elsif score >= 200
      pbMessage("\\bContest Host\\b: A respectable showing. Two tokens.")
      SCFestival.add_tokens(2)
    else
      pbMessage("\\bContest Host\\b: ...keep practising, my dear.")
    end

    SCFestival.mark_visited(:contest)
  }
end


#-------------------------------------------------------------------------------
# 3. Storyteller's Ear — listening puzzle
#-------------------------------------------------------------------------------
GameData::Cutscene.define :festival_storyteller do |scene|
  scene.play_bgm 'Pokemon XY - Couriway Town'
  scene.message "\\bStoryteller\\b: \\\\nFour phrases. Four myths. Match them. Win three tokens. One token to play."

  scene.script {
    unless SCFestival.spend_tokens(1)
      pbMessage("\\bStoryteller\\b: One token, friend.")
      next
    end

    phrases = [
      "Three mortals are bound to the guardians",
      "The world serpent existed before time",
      "To shatter one's crown is to bleed",
      "The seal in Astoria was forged in the heart"
    ]

    myths = [
      "The Three Chosen",
      "Nidhoggr's Origin",
      "Crown Shatter Myth",
      "The Eternal Seal"
    ]

    correct = 0
    phrases.each_with_index do |phrase, i|
      pbMessage(_INTL("\\bPhrase {1}:\\b \"{2}\"", i + 1, phrase))
      pick = pbShowCommands(nil, myths, -1)
      correct += 1 if pick == i
    end

    if correct == 4
      pbMessage("\\bStoryteller\\b: PERFECT EAR. Three tokens plus a bonus.")
      SCFestival.add_tokens(5)
      pbAchievement(:ach_festival_storyteller_perfect) if defined?(pbAchievement)
    elsif correct >= 2
      pbMessage(_INTL("\\bStoryteller\\b: {1} of 4 — well listened. Two tokens.", correct))
      SCFestival.add_tokens(2)
    else
      pbMessage("\\bStoryteller\\b: ...listen harder next time, friend.")
    end

    SCFestival.mark_visited(:storyteller)
  }
end


#-------------------------------------------------------------------------------
# 4. Mask Carver Stall — Ch28 mask payoff foreshadow
#-------------------------------------------------------------------------------
GameData::Cutscene.define :festival_mask_carver do |scene|
  scene.play_bgm 'Pokemon XY - Reflection Cave'
  scene.message "\\bElderly Woman\\b: Ahh. \\\\nLook. \\\\nPick a mask."
  scene.message "\\bElderly Woman\\b: *gestures at the wall* \\\\nOne token. Yours to keep. \\\\nThe right one will recognize you when you wear it."

  scene.script {
    unless SCFestival.spend_tokens(1)
      pbMessage("\\bElderly Woman\\b: ...no token, no mask, friend.")
      next
    end

    pick = pbShowCommands(nil, [
      "The wolf-mask (steel-blue trim)",
      "The deer-mask (gold-rose trim)",
      "The bird-mask (crimson trim)",
      "The silver-etched mask (no animal)"
    ], -1)

    case pick
    when 0
      pbMessage("\\bElderly Woman\\b: \\\\nValor's mask. \\\\nFitting.")
      pbReceiveItem(:WOLFMASK, 1) rescue nil
      scMemory(:mem_festival_wolf_mask) if defined?(scMemory)
    when 1
      pbMessage("\\bElderly Woman\\b: \\\\nLife's mask. \\\\nFitting.")
      pbReceiveItem(:DEERMASK, 1) rescue nil
      scMemory(:mem_festival_deer_mask) if defined?(scMemory)
    when 2
      pbMessage("\\bElderly Woman\\b: \\\\nCycle's mask. \\\\nFitting.")
      pbReceiveItem(:BIRDMASK, 1) rescue nil
      scMemory(:mem_festival_bird_mask) if defined?(scMemory)
    when 3
      pbMessage("\\bElderly Woman\\b: \\\\nHm. \\\\nThat one. \\\\nThat one feels — *familiar* — yes?")
      pbMessage("\\b\\PN\\b: ...it does.")
      pbMessage("\\bElderly Woman\\b: *not looking up* \\\\nTake care of it. \\\\nI did not make it. \\\\nI *kept* it.")
      pbReceiveItem(:HEIRLOOMMASK, 1) rescue nil
      $PokemonGlobal.sc_picked_heirloom_mask = true if $PokemonGlobal.respond_to?(:sc_picked_heirloom_mask=)
      scMemory(:mem_festival_mask) if defined?(scMemory)
      pbAchievement(:ach_festival_heirloom_picked) if defined?(pbAchievement)
    end

    SCFestival.mark_visited(:mask_carver)
  }
end


#-------------------------------------------------------------------------------
# 5. Fortune Teller — gives one of three cryptic lines
#-------------------------------------------------------------------------------
GameData::Cutscene.define :festival_fortune_teller do |scene|
  scene.play_bgm 'Pokemon XY - Frost Cavern'
  scene.message "\\bFortune Teller\\b: \\\\nOne token. \\\\nOne fortune. \\\\nThe coin you give me chooses the truth I tell you."

  scene.script {
    unless SCFestival.spend_tokens(1)
      pbMessage("\\bFortune Teller\\b: ...come back richer in tokens, dear.")
      next
    end

    fortune = case rand(3)
              when 0 then "You will be tested in a forest by a friend you have not yet met. Trust them when they say 'south.'"
              when 1 then "A man in robes will introduce himself. Do not be impressed. The robes are the lie."
              else        "An old man will die at the worst possible time. He chose the time. Do not blame yourself."
              end

    pbMessage(_INTL("\\bFortune Teller\\b: \\\\n{1}", fortune))
    pbMessage("\\bFortune Teller\\b: *winking* \\\\nI keep a copy if you want to reread it later.")

    $PokemonGlobal.sc_festival_fortune ||= []
    $PokemonGlobal.sc_festival_fortune << fortune unless $PokemonGlobal.sc_festival_fortune.include?(fortune)
    SCFestival.mark_visited(:fortune_teller)
  }
end


#-------------------------------------------------------------------------------
# 6. Festival Dance — only if Ragnar-route active
#-------------------------------------------------------------------------------
GameData::Cutscene.define :festival_dance do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.script {
    unless defined?(SCRomance) && SCRomance.is?(:ragnar)
      pbMessage("\\bMC\\b: \\\\nNext slow song, friend! Come back with a partner.")
      next
    end

    GameData::Cutscene.play(:rag_path_ch3_festival_dance) if defined?(GameData::Cutscene)
    SCFestival.add_tokens(2)
    SCFestival.mark_visited(:dance)
  }
end


#-------------------------------------------------------------------------------
# Festival Token Shop
#-------------------------------------------------------------------------------
GameData::Cutscene.define :festival_token_shop do |scene|
  scene.play_bgm 'Pokemon XY - Friends Theme'
  scene.message "\\bShopkeeper\\b: \\\\nFestival Token shop. \\\\nWhat'll it be?"

  scene.script {
    loop do
      pick = pbShowCommands(nil, [
        _INTL("Sitrus Berry (2 tokens)"),
        _INTL("Lum Berry (3 tokens)"),
        _INTL("PP Up (5 tokens)"),
        _INTL("Festival Hat (1 token, cosmetic)"),
        _INTL("Rare Candy (10 tokens)"),
        _INTL("Master Ball (25 tokens, festival-once)"),
        _INTL("Leave")
      ], 6)

      break if pick == 6 || pick < 0

      cost, item = case pick
                   when 0 then [2,  :SITRUSBERRY]
                   when 1 then [3,  :LUMBERRY]
                   when 2 then [5,  :PPUP]
                   when 3 then [1,  :FESTIVALHAT]
                   when 4 then [10, :RARECANDY]
                   when 5 then [25, :MASTERBALL]
                   end

      if pick == 5 && ($PokemonGlobal.sc_festival_masterball_bought rescue false)
        pbMessage("\\bShopkeeper\\b: Sold out for this festival, friend. Come back next year.")
        next
      end

      if SCFestival.spend_tokens(cost)
        pbReceiveItem(item, 1) rescue nil
        pbMessage(_INTL("Bought {1}!", GameData::Item.try_get(item)&.name || item.to_s))
        $PokemonGlobal.sc_festival_masterball_bought = true if pick == 5
      else
        pbMessage(_INTL("Not enough tokens. You have {1}.", SCFestival.tokens))
      end
    end
  }
end


#===============================================================================
# Memory definitions for festival
#===============================================================================
[
  [:mem_festival_wolf_mask, "Valor Carries the Wolf", "Fitting.",                 "Thornwood Festival", 3, :bright],
  [:mem_festival_deer_mask, "Life Carries the Deer",  "Fitting.",                 "Thornwood Festival", 3, :bright],
  [:mem_festival_bird_mask, "Cycle Carries the Bird", "Fitting.",                 "Thornwood Festival", 3, :bright],
].each do |id, title, quote, location, chapter, mood|
  GameData::Memory.define id do |m|
    m.title    title
    m.quote    quote
    m.location location
    m.chapter  chapter
    m.mood     mood
  end
end


#===============================================================================
# Achievements
#===============================================================================
if defined?(GameData::Achievement)
  GameData::Achievement.define :ach_festival_complete do |a|
    a.name "Five Booths, Perfect Year"
    a.description "Visit five booths at the Festival of Crowns."
    a.category :story_hidden
    a.reward_item :FESTIVALRIBBON, 1
  end
  GameData::Achievement.define :ach_festival_strength_bellbreaker do |a|
    a.name "The Bell Broke"
    a.description "Ring the Strength Test bell hard enough to break it."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_festival_grand_champion do |a|
    a.name "Grand Champion"
    a.description "Win a perfect Contest score (600+)."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_festival_storyteller_perfect do |a|
    a.name "Perfect Ear"
    a.description "Match every phrase to its myth."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_festival_heirloom_picked do |a|
    a.name "It Recognized You"
    a.description "Pick the silver-etched mask at the festival."
    a.category :story_hidden
    a.hidden true
  end
end


#===============================================================================
# Save data
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_festival_tokens, :sc_festival_booths_visited
  attr_accessor :sc_festival_hub_visited, :sc_festival_fortune
  attr_accessor :sc_festival_masterball_bought, :sc_picked_heirloom_mask
end

SaveData.register(:sc_festival_tokens) do
  ensure_class :Integer
  save_value { $PokemonGlobal.sc_festival_tokens || 0 }
  load_value { |v| $PokemonGlobal.sc_festival_tokens = v }
  new_game_value { 0 }
end

SaveData.register(:sc_festival_booths_visited) do
  ensure_class :Array
  save_value { $PokemonGlobal.sc_festival_booths_visited ||= [] }
  load_value { |v| $PokemonGlobal.sc_festival_booths_visited = v }
  new_game_value { [] }
end
