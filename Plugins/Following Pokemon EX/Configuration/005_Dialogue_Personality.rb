#-------------------------------------------------------------------------------
# Type-based personality dialogues
# These give Pokemon type-flavoured reactions that trigger randomly (20% chance)
# making interactions feel more unique per Pokemon type.
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Fire-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :fire_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:FIRE)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} breathed a small puff of smoke into the air."),
      _INTL("{1}'s body temperature feels warmer than usual."),
      _INTL("{1} let out a tiny flame in excitement!"),
      _INTL("The air around {1} shimmers with heat."),
      _INTL("{1} is radiating a comfortable warmth."),
      _INTL("{1} flicked its tail and sparks flew!"),
      _INTL("{1} sneezed and accidentally shot out an ember!"),
      _INTL("{1} is leaving warm footprints wherever it steps.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Water-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :water_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:WATER)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_MUSIC)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} splashed a little water playfully!"),
      _INTL("{1}'s skin is glistening with moisture."),
      _INTL("{1} is looking around for a puddle to splash in."),
      _INTL("{1} squirted a tiny jet of water into the air!"),
      _INTL("{1} seems to be sniffing for nearby water sources."),
      _INTL("{1}'s body gleams with a watery sheen."),
      _INTL("{1} shook itself and sprayed water droplets everywhere!"),
      _INTL("{1} blew a small bubble that floated away in the wind.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Grass-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :grass_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:GRASS)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} released a sweet, floral scent into the air."),
      _INTL("{1} is swaying gently, as if catching a breeze only it can feel."),
      _INTL("{1} stretched its leaves out towards the sunlight."),
      _INTL("A tiny flower seems to have bloomed on {1}!"),
      _INTL("{1} is lightly rustling, like leaves in the wind."),
      _INTL("{1} is giving off a fresh, earthy fragrance."),
      _INTL("{1} scattered some spores into the air! ...It's fine, they're harmless."),
      _INTL("{1} perked up when it felt the sun on its body.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Electric-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :electric_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:ELECTRIC)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_MUSIC)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1}'s cheeks are sparking with electricity!"),
      _INTL("{1} discharged a tiny bolt of static! {2} felt their hair stand up."),
      _INTL("{1} is buzzing with electric energy!"),
      _INTL("You can hear a faint crackling around {1}."),
      _INTL("{1} zapped a nearby blade of grass for fun!"),
      _INTL("{1} is bouncing around with electrifying energy!"),
      _INTL("{1}'s body is giving off a faint glow of electrical charge."),
      _INTL("{1} touched {2} and gave them a tiny static shock!")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Ghost-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :ghost_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:GHOST)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} phased through a wall for a second before coming back!"),
      _INTL("{1} made a spooky face at {2}! ...Just kidding."),
      _INTL("{1}'s eyes are glowing with an eerie light."),
      _INTL("{1} disappeared for a moment! Oh wait, it's right behind {2}..."),
      _INTL("The temperature dropped a little around {1}..."),
      _INTL("{1} is floating slightly off the ground."),
      _INTL("{1} let out an eerie giggle that sent chills down {2}'s spine!"),
      _INTL("{1} is flickering in and out of visibility playfully."),
      _INTL("{1} tried to scare {2} by appearing behind them suddenly!"),
      _INTL("A cold breeze seems to follow wherever {1} goes...")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Dragon-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :dragon_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:DRAGON)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} let out a mighty roar that echoed through the area!"),
      _INTL("{1} is holding its head high with pride."),
      _INTL("{1}'s scales are shimmering with draconic energy."),
      _INTL("{1} stomped the ground and the earth trembled slightly!"),
      _INTL("{1} seems to be filled with an ancient, powerful energy."),
      _INTL("{1} is gazing into the distance with regal composure."),
      _INTL("{1} snorted and a puff of draconic energy escaped its nostrils!"),
      _INTL("The air around {1} crackles with raw draconic power.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Fairy-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :fairy_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:FAIRY)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HEART)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} is surrounded by a faint, sparkling glow!"),
      _INTL("{1} twirled gracefully, leaving a trail of sparkles!"),
      _INTL("{1} is humming a magical little melody."),
      _INTL("Tiny sparkles are floating around {1}."),
      _INTL("{1} touched a flower and it seemed to bloom a little more!"),
      _INTL("{1} is radiating a gentle, magical aura."),
      _INTL("{1} giggled and the air shimmered with fairy dust!"),
      _INTL("{1} is skipping along daintily, leaving glittering footprints.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Fighting-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :fighting_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:FIGHTING)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} is shadow-boxing the air with fierce determination!"),
      _INTL("{1} flexed its muscles proudly!"),
      _INTL("{1} is doing push-ups to stay in shape!"),
      _INTL("{1} punched the air and created a shockwave!"),
      _INTL("{1} is stretching its limbs, ready for any challenge!"),
      _INTL("{1} is practicing its battle stance."),
      _INTL("{1} challenged a nearby rock to a fight... and won!"),
      _INTL("{1} is bursting with fighting spirit!")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Psychic-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :psychic_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:PSYCHIC)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1}'s eyes are glowing with psychic energy!"),
      _INTL("{1} seems to be reading {2}'s mind... What did it learn?"),
      _INTL("A small pebble floated up near {1} before gently settling down."),
      _INTL("{1} is concentrating deeply, emanating a strange aura."),
      _INTL("{1} communicated something telepathically... but {2} couldn't understand."),
      _INTL("{1} levitated a fallen leaf into the air with its mind!"),
      _INTL("{1} seems to sense something that {2} can't perceive."),
      _INTL("{1} predicted that {2} was about to look at it... and was right!")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Ice-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :ice_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:ICE)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_MUSIC)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("The air around {1} is noticeably cooler."),
      _INTL("{1} breathed out a frosty mist!"),
      _INTL("{1} left a trail of tiny ice crystals behind it."),
      _INTL("{1} created a small snowflake in its hand and showed it to {2}!"),
      _INTL("{1}'s body is giving off a refreshing chill."),
      _INTL("{1} froze a small puddle solid just by stepping on it!"),
      _INTL("{1} is cool as ice — literally!"),
      _INTL("Frost is forming on the ground wherever {1} walks.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Normal-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :normal_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 15
  if pkmn.hasType?(:NORMAL) && pkmn.types.length == 1
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} is trotting along contentedly."),
      _INTL("{1} rolled over and wants a belly rub from {2}!"),
      _INTL("{1} yawned loudly and stretched!"),
      _INTL("{1} is sniffing everything in sight!"),
      _INTL("{1} is wagging its tail happily. ...Wait, does it have a tail?"),
      _INTL("{1} gave {2} a friendly nudge!"),
      _INTL("{1} found a comfy spot and is reluctant to move..."),
      _INTL("{1} is just happy to be here with {2}!")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Poison-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :poison_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:POISON)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} oozed a tiny bit of something... Better not touch it."),
      _INTL("{1} is giving off a faintly toxic scent."),
      _INTL("The grass near {1}'s feet seems to be wilting slightly..."),
      _INTL("{1} burped and a small purple cloud came out!"),
      _INTL("{1} seems to be enjoying the smell of something {2} definitely can't."),
      _INTL("{1} licked the ground and seems satisfied. ...Ew."),
      _INTL("{1} is leaving a faint, slimy trail behind it."),
      _INTL("{1} hissed playfully at {2} and stuck out its tongue!")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Steel-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :steel_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:STEEL)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_MUSIC)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1}'s metallic body is gleaming in the light!"),
      _INTL("{1} clanked as it walked. Its body sounds solid!"),
      _INTL("{1} is standing completely still, like an immovable fortress."),
      _INTL("{1}'s surface reflects {2}'s face like a mirror!"),
      _INTL("{1} struck a pose and its body rang like a bell!"),
      _INTL("You can hear a low metallic hum coming from {1}."),
      _INTL("{1} bumped into a rock and the rock cracked! {1} is fine though."),
      _INTL("{1}'s iron body is completely unscathed from the journey.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Bug-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :bug_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:BUG)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_MUSIC)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} is rubbing its front legs together rapidly!"),
      _INTL("{1} is making a pleasant buzzing sound."),
      _INTL("{1} scurried around {2}'s feet at lightning speed!"),
      _INTL("{1} found a leaf and is chewing on it happily."),
      _INTL("{1}'s antennae are twitching curiously."),
      _INTL("{1} climbed up on {2}'s shoulder for a better view!"),
      _INTL("{1} spotted another Bug-type Pokémon and chirped excitedly!"),
      _INTL("{1} spun a small bit of silk and seems proud of it!")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Flying-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :flying_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:FLYING)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} spread its wings wide and caught a breeze!"),
      _INTL("{1} took a short flight in a circle above {2}!"),
      _INTL("{1} is preening its feathers carefully."),
      _INTL("{1} fluttered its wings eagerly, wanting to take off!"),
      _INTL("{1} soared up briefly and did a loop in the air!"),
      _INTL("{1} is riding the air currents gracefully."),
      _INTL("{1} swooped down and landed perfectly next to {2}!"),
      _INTL("{1} ruffled its feathers and chirped at {2} happily!")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Ground-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :ground_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:GROUND)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} stomped and the ground shook a little!"),
      _INTL("{1} is happily digging at the ground."),
      _INTL("{1} burrowed halfway into the dirt before popping back out!"),
      _INTL("{1} seems to draw strength from the earth beneath its feet."),
      _INTL("{1} kicked up some dust playfully!"),
      _INTL("{1} is rolling happily in the dirt."),
      _INTL("{1} sniffed the ground and found... just more ground."),
      _INTL("{1} made a small mound of dirt and seems very proud of it!")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Dark-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :dark_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:DARK)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} is lurking in the shadows, watching everything..."),
      _INTL("{1} gave {2} a mischievous grin."),
      _INTL("{1} seems to prefer staying in the darker areas."),
      _INTL("{1} is plotting something... probably harmless. Probably."),
      _INTL("{1} scared a passerby by appearing from the shadows!"),
      _INTL("{1} is being sneaky and moving silently."),
      _INTL("{1} swiped at the air with a devious look on its face!"),
      _INTL("{1} is keeping watch from the shadows like a bodyguard.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Rock-type personality
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :rock_personality, proc { |pkmn, _random_val|
  next false if rand(100) >= 20
  if pkmn.hasType?(:ROCK)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} is examining a nearby rock with great interest."),
      _INTL("{1} looks completely immovable, like a boulder!"),
      _INTL("{1} picked up a stone and seems to be comparing it to itself."),
      _INTL("{1} is standing as still as a statue."),
      _INTL("{1} headbutted a boulder... The boulder cracked!"),
      _INTL("{1} is tough as stone and twice as stubborn!"),
      _INTL("{1} found a shiny pebble and wants to show {2}!"),
      _INTL("{1} is patiently waiting, steady as a rock.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
