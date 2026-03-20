#-------------------------------------------------------------------------------
# These are used to define what the Follower will say when spoken to under
# specific conditions like Status or Weather or Map names
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Amie Compatibility
#-------------------------------------------------------------------------------
if defined?(PkmnAR)
  EventHandlers.add(:following_pkmn_talk, :amie, proc { |_pkmn, _random_val|
    cmd = pbMessage(_INTL("What would you like to do?"), [
      _INTL("Play"),
      _INTL("Talk"),
      _INTL("Cancel")
    ])
    PkmnAR.show if cmd == 0
    next true if [0, 2].include?(cmd)
  })
end
#-------------------------------------------------------------------------------
# Special Dialogue when statused (expanded with multiple messages per status)
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :status, proc { |pkmn, _random_val|
  case pkmn.status
  when :POISON
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_POISON)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} is shivering with the effects of being poisoned."),
      _INTL("{1} looks really sick from the poison..."),
      _INTL("{1}'s face is pale and it looks unwell."),
      _INTL("{1} is trying to bear with the poison, but it looks rough."),
      _INTL("{1} is swaying a little... The poison must be taking its toll."),
      _INTL("{1} looks at {2} with pained eyes. The poison is clearly hurting."),
      _INTL("{1} stumbled a little. The poison seems to be getting worse...")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
  when :BURN
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1}'s burn looks painful."),
      _INTL("{1} is wincing from its burn..."),
      _INTL("{1} keeps trying to cool down the burn mark."),
      _INTL("{1} seems distressed by the burn on its body."),
      _INTL("{1} is moving gingerly because of the burn."),
      _INTL("The burn on {1} is still glowing red... That must hurt.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
  when :FROZEN
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} seems very cold. It's frozen solid!"),
      _INTL("{1} is completely encased in ice!"),
      _INTL("{1} can barely move... It's frozen stiff!"),
      _INTL("{1} is shaking, trying to break free from the ice."),
      _INTL("{1} looks like an ice sculpture right now..."),
      _INTL("Poor {1}... It's completely frozen and can't move.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
  when :SLEEP
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} seems really tired."),
      _INTL("{1} is fast asleep... Zzz..."),
      _INTL("{1} is snoring softly. It must be having a nice dream."),
      _INTL("{1} is completely knocked out. Must be exhausted."),
      _INTL("{1} is sleeping so peacefully... Better not wake it."),
      _INTL("{1} is mumbling in its sleep... Is it dreaming about battling?"),
      _INTL("{1} is curled up and sleeping soundly.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
  when :PARALYSIS
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} is standing still and twitching."),
      _INTL("{1}'s body is sparking with static... It can't move well."),
      _INTL("{1} is trying to walk, but its legs keep locking up."),
      _INTL("{1} flinched from a jolt of paralysis!"),
      _INTL("{1} looks frustrated that it can't move its body properly."),
      _INTL("{1} is twitching and sparking. The paralysis is really bothering it.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
  end
  next true if pkmn.status != :NONE
})
#-------------------------------------------------------------------------------
# Specific message if the map has the Pokemon Lab metadata flag
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :pokemon_lab, proc { |pkmn, _random_val|
  if $game_map.metadata&.has_flag?("PokemonLab")
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} is touching some kind of switch."),
      _INTL("{1} has a cord in its mouth!"),
      _INTL("{1} seems to want to touch the machinery.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific message if the map name has the players name in it like the
# Player's House
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :player_house, proc { |pkmn, _random_val|
  if $game_map.name.include?($player.name)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} is sniffing around the room."),
      _INTL("{1} noticed {2}'s mom is nearby."),
      _INTL("{1} seems to want to settle down at home.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific message if the map has Pokecenter metadata flag
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :pokemon_center, proc { |pkmn, _random_val|
  if $game_map.metadata&.has_flag?("PokeCenter")
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} looks happy to see the nurse."),
      _INTL("{1} looks a little better just being in the Pokémon Center."),
      _INTL("{1} seems fascinated by the healing machinery."),
      _INTL("{1} looks like it wants to take a nap."),
      _INTL("{1} chirped a greeting at the nurse."),
      _INTL("{1} is watching {2} with a playful gaze."),
      _INTL("{1} seems to be completely at ease."),
      _INTL("{1} is making itself comfortable."),
      _INTL("There's a content expression on {1}'s face.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific message if the map has the Gym metadata flag
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :gym, proc { |pkmn, _random_val|
  if $game_map.metadata&.has_flag?("GymMap")
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} looks eager to battle!"),
      _INTL("{1} is looking at {2} with a determined gleam in its' eye."),
      _INTL("{1} is trying to intimidate the other trainers."),
      _INTL("{1} trusts {2} to come up with a winning strategy."),
      _INTL("{1} is keeping an eye on the gym leader."),
      _INTL("{1} is ready to pick a fight with someone."),
      _INTL("{1} looks like it might be preparing for a big showdown!"),
      _INTL("{1} wants to show off how strong it is!"),
      _INTL("{1} is...doing warm-up exercises?"),
      _INTL("{1} is growling quietly in contemplation...")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific message when the weather is Storm. Pokemon of different types
# have different reactions to the weather.
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :storm_weather, proc { |pkmn, _random_val|
  if :Storm == $game_screen.weather_type
    if pkmn.hasType?(:ELECTRIC)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is staring up at the sky."),
        _INTL("The storm seems to be making {1} excited."),
        _INTL("{1} looked up at the sky and shouted loudly!"),
        _INTL("The storm only seems to be energizing {1}!"),
        _INTL("{1} is happily zapping and jumping in circles!"),
        _INTL("The lightning doesn't bother {1} at all.")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is staring up at the sky."),
        _INTL("The storm seems to be making {1} a bit nervous."),
        _INTL("The lightning startled {1}!"),
        _INTL("The rain doesn't seem to bother {1} much."),
        _INTL("The weather seems to be putting {1} on edge."),
        _INTL("{1} was startled by the lightning and snuggled up to {2}!")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific message when the weather is Snowy. Pokemon of different types
# have different reactions to the weather.
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :snow_weather, proc { |pkmn, _random_val|
  if :Snow == $game_screen.weather_type
    if pkmn.hasType?(:ICE)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is watching the snow fall."),
        _INTL("{1} is thrilled by the snow!"),
        _INTL("{1} is staring up at the sky with a smile."),
        _INTL("The snow seems to have put {1} in a good mood."),
        _INTL("{1} is cheerful because of the cold!")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is watching the snow fall."),
        _INTL("{1} is nipping at the falling snowflakes."),
        _INTL("{1} wants to catch a snowflake in its' mouth."),
        _INTL("{1} is fascinated by the snow."),
        _INTL("{1}'s teeth are chattering!"),
        _INTL("{1} made its body slightly smaller because of the cold...")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific message when the weather is Blizzard. Pokemon of different types
# have different reactions to the weather.
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :blizzard_weather, proc { |pkmn, _random_val|
  if :Blizzard == $game_screen.weather_type
    if pkmn.hasType?(:ICE)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is watching the hail fall."),
        _INTL("{1} isn't bothered at all by the hail."),
        _INTL("{1} is staring up at the sky with a smile."),
        _INTL("The hail seems to have put {1} in a good mood."),
        _INTL("{1} is gnawing on a piece of hailstone.")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is getting pelted by hail!"),
        _INTL("{1} wants to avoid the hail."),
        _INTL("The hail is hitting {1} painfully."),
        _INTL("{1} looks unhappy."),
        _INTL("{1} is shaking like a leaf!")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific message when the weather is Sandstorm. Pokemon of different types
# have different reactions to the weather.
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :sandstorm_weather, proc { |pkmn, _random_val|
  if :Sandstorm == $game_screen.weather_type
    if [:ROCK, :GROUND].any? { |type| pkmn.hasType?(type) }
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is coated in sand."),
        _INTL("The weather doesn't seem to bother {1} at all!"),
        _INTL("The sand can't slow {1} down!"),
        _INTL("{1} is enjoying the weather.")
      ]
    elsif pkmn.hasType?(:STEEL)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is coated in sand, but doesn't seem to mind."),
        _INTL("{1} seems unbothered by the sandstorm."),
        _INTL("The sand doesn't slow {1} down."),
        _INTL("{1} doesn't seem to mind the weather.")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is covered in sand..."),
        _INTL("{1} spat out a mouthful of sand!"),
        _INTL("{1} is squinting through the sandstorm."),
        _INTL("The sand seems to be bothering {1}.")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific message if the map has the Forest metadata flag
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :forest_map, proc { |pkmn, _random_val|
  if $game_map.metadata&.has_flag?("Forest")
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_MUSIC)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    if [:BUG, :GRASS].any? { |type| pkmn.hasType?(type) }
      messages = [
        _INTL("{1} seems highly interested in the trees."),
        _INTL("{1} seems to enjoy the buzzing of the bug Pokémon."),
        _INTL("{1} is jumping around restlessly in the forest.")
      ]
    else
      messages = [
        _INTL("{1} seems highly interested in the trees."),
        _INTL("{1} seems to enjoy the buzzing of the bug Pokémon."),
        _INTL("{1} is jumping around restlessly in the forest."),
        _INTL("{1} is wandering around and listening to the different sounds."),
        _INTL("{1} is munching at the grass."),
        _INTL("{1} is wandering around and enjoying the forest scenery."),
        _INTL("{1} is playing around, plucking bits of grass."),
        _INTL("{1} is staring at the light coming through the trees."),
        _INTL("{1} is playing around with a leaf!"),
        _INTL("{1} seems to be listening to the sound of rustling leaves."),
        _INTL("{1} is standing perfectly still and might be imitating a tree..."),
        _INTL("{1} got tangled in the branches and almost fell down!"),
        _INTL("{1} was surprised when it got hit by a branch!")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific message when the weather is Rainy. Pokemon of different types
# have different reactions to the weather.
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :rainy_weather, proc { |pkmn, _random_val|
  if [:Rain, :HeavyRain].include?($game_screen.weather_type)
    if pkmn.hasType?(:FIRE) || pkmn.hasType?(:GROUND) || pkmn.hasType?(:ROCK)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} seems very upset the weather."),
        _INTL("{1} is shivering..."),
        _INTL("{1} doesn't seem to like being all wet..."),
        _INTL("{1} keeps trying to shake itself dry..."),
        _INTL("{1} moved closer to {2} for comfort."),
        _INTL("{1} is looking up at the sky and scowling."),
        _INTL("{1} seems to be having difficulty moving its body.")
      ]
    elsif pkmn.hasType?(:WATER) || pkmn.hasType?(:GRASS)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} seems to be enjoying the weather."),
        _INTL("{1} seems to be happy about the rain!"),
        _INTL("{1} seems to be very surprised that it's raining!"),
        _INTL("{1} beamed happily at {2}!"),
        _INTL("{1} is gazing up at the rainclouds."),
        _INTL("Raindrops keep falling on {1}."),
        _INTL("{1} is looking up with its mouth gaping open.")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is staring up at the sky."),
        _INTL("{1} looks a bit surprised to see rain."),
        _INTL("{1} keeps trying to shake itself dry."),
        _INTL("The rain doesn't seem to bother {1} much."),
        _INTL("{1} is playing in a puddle!"),
        _INTL("{1} is slipping in the water and almost fell over!")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific message if the map has Beach metadata flag
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :beach_map, proc { |pkmn, _random_val|
  if $game_map.metadata&.has_flag?("Beach")
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} seems to be enjoying the scenery."),
      _INTL("{1} seems to enjoy the sound of the waves moving the sand."),
      _INTL("{1} looks like it wants to swim!"),
      _INTL("{1} can barely look away from the ocean."),
      _INTL("{1} is staring longingly at the water."),
      _INTL("{1} keeps trying to shove {2} towards the water."),
      _INTL("{1} is excited to be looking at the sea!"),
      _INTL("{1} is happily watching the waves!"),
      _INTL("{1} is playing on the sand!"),
      _INTL("{1} is staring at {2}'s footprints in the sand."),
      _INTL("{1} is rolling around in the sand.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific message when the weather is Sunny. Pokemon of different types
# have different reactions to the weather.
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :sunny_weather, proc { |pkmn, _random_val|
  if :Sun == $game_screen.weather_type
    if pkmn.hasType?(:GRASS)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} seems pleased to be out in the sunshine."),
        _INTL("{1} is soaking up the sunshine."),
        _INTL("The bright sunlight doesn't seem to bother {1} at all."),
        _INTL("{1} sent a ring-shaped cloud of spores into the air!"),
        _INTL("{1} is stretched out its body and is relaxing in the sunshine."),
        _INTL("{1} is giving off a floral scent.")
      ]
    elsif pkmn.hasType?(:FIRE)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} seems to be happy about the great weather!"),
        _INTL("The bright sunlight doesn't seem to bother {1} at all."),
        _INTL("{1} looks thrilled by the sunshine!"),
        _INTL("{1} blew out a fireball."),
        _INTL("{1} is breathing out fire!"),
        _INTL("{1} is hot and cheerful!")
      ]
    elsif pkmn.hasType?(:DARK)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is glaring up at the sky."),
        _INTL("{1} seems personally offended by the sunshine."),
        _INTL("The bright sunshine seems to bothering {1}."),
        _INTL("{1} looks upset for some reason."),
        _INTL("{1} is trying to stay in {2}'s shadow."),
        _INTL("{1} keeps looking for shelter from the sunlight.")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is squinting in the bright sunshine."),
        _INTL("{1} is starting to sweat."),
        _INTL("{1} seems a little uncomfortable in this weather."),
        _INTL("{1} looks a little overheated."),
        _INTL("{1} seems very hot..."),
        _INTL("{1} shielded its vision against the sparkling light!")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------# Low HP Warning - Pokemon reacts when its health is critically low
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :low_hp, proc { |pkmn, _random_val|
  if pkmn.hp > 0 && pkmn.hp <= (pkmn.totalhp / 4.0)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} looks like it's about to collapse..."),
      _INTL("{1} is panting heavily. It's badly injured!"),
      _INTL("{1} is barely holding on... It needs healing soon!"),
      _INTL("{1} is wobbling unsteadily. Its injuries are serious."),
      _INTL("{1} looks exhausted and beaten up. Maybe visit a Pokémon Center?"),
      _INTL("{1} is trying to stay upright, but it's clearly struggling."),
      _INTL("{1} whimpered softly... It looks like it's in real pain."),
      _INTL("{1} is looking at {2} with worried eyes. It needs help!")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Friendship-dependent dialogue - reacts based on bond strength
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :friendship, proc { |pkmn, _random_val|
  # Only trigger sometimes (30% chance) to keep it fresh
  next false if rand(100) >= 30
  happiness = pkmn.happiness
  if happiness >= 220
    # Very high friendship
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HEART)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} is looking at {2} with absolute adoration!"),
      _INTL("{1} pressed itself against {2} lovingly!"),
      _INTL("{1} looks incredibly happy just being with {2}!"),
      _INTL("{1} practically glows with happiness around {2}!"),
      _INTL("{1} nuzzled up against {2}'s hand affectionately."),
      _INTL("{1} seems like it would do anything for {2}!"),
      _INTL("{1} chirped happily and did a little spin for {2}!"),
      _INTL("{1} seems to trust {2} completely."),
      _INTL("{1} and {2} seem to share an unbreakable bond!"),
      _INTL("{1} looks content and peaceful by {2}'s side.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  elsif happiness <= 50
    # Very low friendship
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} doesn't seem to like {2} very much..."),
      _INTL("{1} turned away coldly."),
      _INTL("{1} looks at {2} with distrust."),
      _INTL("{1} seems wary and keeps its distance."),
      _INTL("{1} doesn't look like it wants to be petted."),
      _INTL("{1} growled quietly when {2} reached out."),
      _INTL("{1} is ignoring {2} and looking the other way."),
      _INTL("{1} seems unhappy about something...")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific message if the map has the Cave metadata flag or map name
# includes "Cave", "Tunnel", "Cavern", or "Mine"
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :cave_map, proc { |pkmn, _random_val|
  is_cave = $game_map.metadata&.has_flag?("Cave") ||
            $game_map.metadata&.has_flag?("Dungeon") ||
            ["Cave", "Tunnel", "Cavern", "Mine", "Grotto"].any? { |w| $game_map.name.include?(w) }
  if is_cave
    if [:ROCK, :GROUND, :STEEL].any? { |type| pkmn.hasType?(type) }
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} seems right at home in this cave!"),
        _INTL("{1} is examining the rock walls with interest."),
        _INTL("{1} picked up a small pebble and seems fascinated by it."),
        _INTL("{1} is sniffing the mineral-rich walls enthusiastically."),
        _INTL("{1} looks thrilled to be underground!"),
        _INTL("{1} found a shiny rock and is showing it to {2}!")
      ]
    elsif [:GHOST, :DARK].any? { |type| pkmn.hasType?(type) }
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_MUSIC)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} seems to feel comfortable in the darkness."),
        _INTL("{1}'s eyes are glowing faintly in the dark cave."),
        _INTL("{1} is moving through the shadows effortlessly."),
        _INTL("{1} seems energized by the darkness of the cave."),
        _INTL("{1} is practically invisible in the cave's shadows..."),
        _INTL("{1} seems to be enjoying the spooky atmosphere.")
      ]
    elsif pkmn.hasType?(:FIRE)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1}'s body is lighting up the cave around it!"),
        _INTL("{1} is providing a warm glow to guide the way."),
        _INTL("{1}'s flames are casting dancing shadows on the walls."),
        _INTL("{1} seems proud to be lighting the path for {2}.")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} seems a bit nervous in the dark cave."),
        _INTL("{1} is staying close to {2} in the darkness."),
        _INTL("{1}'s footsteps are echoing off the cave walls."),
        _INTL("{1} just bumped into a stalagmite!"),
        _INTL("{1} seems startled by the echoes bouncing around."),
        _INTL("{1} tripped on a rock in the dim light!"),
        _INTL("{1} is peering cautiously into the dark tunnels."),
        _INTL("{1} seems unsettled by the dripping water echoing nearby."),
        _INTL("{1} is staying very close to {2}. The cave makes it uneasy."),
        _INTL("{1} squeaked when something moved in the shadows!")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Night-time specific dialogue (between 8 PM and 5 AM)
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :nighttime, proc { |pkmn, _random_val|
  # Only trigger at night on outdoor maps
  if PBDayNight.isNight? && $game_map.metadata&.outdoor_map
    # Only trigger 40% of the time to not override everything
    next false if rand(100) >= 40
    if [:DARK, :GHOST].any? { |type| pkmn.hasType?(type) }
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} seems to come alive at night!"),
        _INTL("{1} is practically glowing with energy in the moonlight."),
        _INTL("{1} seems most at home under the night sky."),
        _INTL("{1} is prowling around excitedly in the darkness."),
        _INTL("{1} is basking in the moonlight with a content expression."),
        _INTL("The night seems to invigorate {1}!")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is looking up at the stars curiously."),
        _INTL("{1} seems a bit sleepy. It's getting late..."),
        _INTL("{1} is yawning. It must be past its bedtime."),
        _INTL("{1} is squinting in the darkness."),
        _INTL("{1} is staying extra close to {2} in the dark."),
        _INTL("{1} was startled by a noise in the dark!"),
        _INTL("{1} is gazing at the moon with wide eyes."),
        _INTL("{1} seems fascinated by the fireflies flickering nearby."),
        _INTL("{1} stumbled over something in the dark!"),
        _INTL("{1} let out a big yawn. Time for bed soon?"),
        _INTL("{1} is blinking sleepily but trying to stay alert for {2}.")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Morning-time specific dialogue (between 5 AM and 10 AM)
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :morning, proc { |pkmn, _random_val|
  if PBDayNight.isMorning? && $game_map.metadata&.outdoor_map
    next false if rand(100) >= 30
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} stretched its body in the morning light!"),
      _INTL("{1} seems refreshed by the cool morning air."),
      _INTL("{1} took a deep breath of the crisp morning air!"),
      _INTL("{1} is watching the sunrise with a peaceful expression."),
      _INTL("{1} seems energized and ready for a new day!"),
      _INTL("{1} is still waking up... It keeps blinking sleepily."),
      _INTL("{1} yawned and rubbed its eyes. Good morning, {1}!"),
      _INTL("The morning dew is glistening on {1}'s body.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific messages for inside towns/cities
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :town_map, proc { |pkmn, _random_val|
  is_town = $game_map.metadata&.has_flag?("Town") ||
            $game_map.metadata&.has_flag?("City") ||
            ["Town", "City", "Village"].any? { |w| $game_map.name.include?(w) }
  if is_town
    next false if rand(100) >= 35
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1} is looking around the town with curiosity!"),
      _INTL("{1} seems fascinated by all the people walking around."),
      _INTL("{1} noticed a shop and seems interested in what's inside!"),
      _INTL("{1} is enjoying the lively atmosphere of the town."),
      _INTL("{1} is watching the other Pokémon walking with their trainers."),
      _INTL("{1} got distracted by a delicious smell from somewhere nearby..."),
      _INTL("{1} is looking at the buildings with wide eyes."),
      _INTL("{1} seems to be enjoying the buzz of town life!"),
      _INTL("{1} perked up when it heard music playing from a nearby building."),
      _INTL("{1} is trotting along happily on the cobblestone path."),
      _INTL("{1} seems to like watching the townspeople go about their day."),
      _INTL("A child waved at {1} and it chirped back happily!"),
      _INTL("{1} is sniffing the air... Something smells delicious nearby."),
      _INTL("{1} stopped to look at its reflection in a shop window!")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific messages for mountain or high-altitude maps
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :mountain_map, proc { |pkmn, _random_val|
  is_mountain = $game_map.metadata&.has_flag?("Mountain") ||
                ["Mountain", "Peak", "Summit", "Cliff", "Ridge"].any? { |w| $game_map.name.include?(w) }
  if is_mountain
    if pkmn.hasType?(:FLYING)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is soaring happily on the mountain updrafts!"),
        _INTL("{1} seems to love being this high up!"),
        _INTL("{1} spread its wings wide and is enjoying the view!"),
        _INTL("{1} looks like it wants to take off and fly from the summit!")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is panting from the steep climb..."),
        _INTL("{1} looked down from the cliff and got a little dizzy!"),
        _INTL("{1} is amazed by the view from up here!"),
        _INTL("{1} seems a bit nervous about the height."),
        _INTL("{1} is being careful not to slip on the rocky path."),
        _INTL("{1} is braving the thin mountain air alongside {2}!"),
        _INTL("The wind is strong up here! {1} is holding its ground firmly."),
        _INTL("{1} is impressed by how far it can see from this height!")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Specific messages near water / lakes / rivers
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :lake_map, proc { |pkmn, _random_val|
  is_water_area = $game_map.metadata&.has_flag?("Lake") ||
                  ["Lake", "River", "Pond", "Falls", "Waterfall", "Harbor", "Port", "Dock"].any? { |w| $game_map.name.include?(w) }
  if is_water_area
    if pkmn.hasType?(:WATER)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is splashing around excitedly near the water!"),
        _INTL("{1} dove right into the water and is swimming in circles!"),
        _INTL("{1} looks totally at home near the water."),
        _INTL("{1} is happily watching the water shimmer."),
        _INTL("{1} keeps looking at the water longingly. It wants to jump in!")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_MUSIC)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
      messages = [
        _INTL("{1} is watching the water ripple peacefully."),
        _INTL("{1} dipped a toe into the water and shivered!"),
        _INTL("{1} seems relaxed by the sound of flowing water."),
        _INTL("{1} is watching fish Pokémon swim beneath the surface."),
        _INTL("{1} is staring at its own reflection in the water."),
        _INTL("{1} is enjoying the cool breeze coming off the water."),
        _INTL("{1} almost fell in the water! That was close!")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Fog weather dialogue
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :fog_weather, proc { |pkmn, _random_val|
  if :Fog == $game_screen.weather_type
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    if pkmn.hasType?(:GHOST) || pkmn.hasType?(:FAIRY)
      messages = [
        _INTL("{1} seems to enjoy the foggy atmosphere."),
        _INTL("{1} is dancing playfully through the fog."),
        _INTL("{1} keeps appearing and disappearing in the mist!"),
        _INTL("{1} seems right at home in this eerie fog."),
        _INTL("The fog seems to swirl around {1} mysteriously.")
      ]
    else
      messages = [
        _INTL("{1} can barely see through the thick fog!"),
        _INTL("{1} is sticking very close to {2}. It can't see well in this fog."),
        _INTL("{1} bumped into something in the fog!"),
        _INTL("{1} seems disoriented by the dense fog."),
        _INTL("{1} is peering through the fog nervously."),
        _INTL("{1} nearly walked right past {2} in this fog!"),
        _INTL("{1} seems a bit creeped out by the fog...")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------
# Shiny-specific dialogue - special reaction for shiny Pokémon
#-------------------------------------------------------------------------------
EventHandlers.add(:following_pkmn_talk, :shiny_pokemon, proc { |pkmn, _random_val|
  if pkmn.shiny?
    # Only trigger 15% of the time so it's a subtle flavour
    next false if rand(100) >= 15
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20])
    messages = [
      _INTL("{1}'s unusual coloring is drawing attention from passersby!"),
      _INTL("{1}'s body sparkled for a brief moment in the light!"),
      _INTL("{1} seems to glow with a special radiance!"),
      _INTL("A trainer passing by noticed {1}'s rare coloring and looked amazed!"),
      _INTL("{1}'s unique colors shimmer beautifully!"),
      _INTL("{1} seems proud of its unusual appearance!"),
      _INTL("{1} sparkled! Its rare coloring really stands out.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $player.name))
    next true
  end
})
#-------------------------------------------------------------------------------