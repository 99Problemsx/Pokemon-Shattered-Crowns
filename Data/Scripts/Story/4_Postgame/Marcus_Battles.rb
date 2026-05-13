#===============================================================================
# POKÉMON SHATTERED CROWNS - POSTGAME: CHAMPION MARCUS CHALLENGE
#===============================================================================
# Player's father Marcus was Asgheim Champion 22 years before the main story.
# He has been the running gag of the family — the man who tells the same
# Charizard-stomach story for a decade — but he is also genuinely strong.
# Post-game, he comes out of retirement for a one-shot challenge.
#
# Three battles, each unlocked by a different condition:
#
#   :MARCUS_ALONE             — Marcus alone, six Pokémon
#                              Unlock: any main-story ending complete
#
#   :MARCUS_AND_AURORA        — Marcus + Aurora doubles
#                              Unlock: Marcus alone defeated +
#                                      all 5 main endings seen
#
#   :MARCUS_CHAMPION_PRIME    — Marcus in his Championship-era kit
#                              (Mega Charizard X, max EVs)
#                              Unlock: Marcus + Aurora defeated +
#                                      bond_lyra_5 + bond_kael_5 completed
#
# All trainer definitions live below — no PBS dependency.
#===============================================================================


#-------------------------------------------------------------------------------
# Trainer Types — make sure the league-veteran types exist
#-------------------------------------------------------------------------------
if defined?(GameData::TrainerType)
  unless GameData::TrainerType.exists?(:CHAMPION_EMERITUS)
    GameData::TrainerType.define :CHAMPION_EMERITUS do |tt|
      tt.name        = "Champion Emeritus"
      tt.gender      = 0
      tt.base_money  = 60
      tt.skill_level = 100
      # Use existing battler graphic; fallback to CHAMPION if asset is absent
      tt.battler     = "CHAMPION"
    end
  end

  unless GameData::TrainerType.exists?(:RESEARCHER_EMERITUS)
    GameData::TrainerType.define :RESEARCHER_EMERITUS do |tt|
      tt.name        = "Researcher Emeritus"
      tt.gender      = 1
      tt.base_money  = 60
      tt.skill_level = 100
      tt.battler     = "SCIENTIST"
    end
  end
end


#-------------------------------------------------------------------------------
# Marcus — Alone (version 0)
#-------------------------------------------------------------------------------
GameData::Trainer.define(:CHAMPION_EMERITUS, "Marcus") do |t|
  t.lose_text "Heh. \\PN — that was your mother's grin you just gave me. Proud of you, kid."
  t.pokemon(:DRAGONITE, 70) do |p|
    p.moves = [:DRAGONDANCE, :OUTRAGE, :EXTREMESPEED, :EARTHQUAKE]
    p.nature = :ADAMANT
    p.ability_index = 2  # Multiscale
    p.item = :LUMBERRY
    p.iv = [31] * 6
    p.ev = [0, 252, 0, 0, 4, 252]
  end
  t.pokemon(:TYRANITAR, 70) do |p|
    p.moves = [:STONEEDGE, :CRUNCH, :EARTHQUAKE, :DRAGONDANCE]
    p.nature = :JOLLY
    p.ability_index = 0  # Sand Stream
    p.item = :ASSAULTVEST
    p.iv = [31] * 6
    p.ev = [0, 252, 0, 0, 4, 252]
  end
  t.pokemon(:SALAMENCE, 70) do |p|
    p.moves = [:DRAGONCLAW, :EARTHQUAKE, :FLAREBLITZ, :ROOST]
    p.nature = :ADAMANT
    p.ability_index = 1  # Intimidate
    p.item = :LIFEORB
    p.iv = [31] * 6
    p.ev = [0, 252, 0, 0, 4, 252]
  end
  t.pokemon(:METAGROSS, 70) do |p|
    p.moves = [:METEORMASH, :ZENHEADBUTT, :BULLETPUNCH, :EARTHQUAKE]
    p.nature = :ADAMANT
    p.ability_index = 0
    p.item = :LEFTOVERS
    p.iv = [31] * 6
    p.ev = [252, 252, 0, 0, 4, 0]
  end
  t.pokemon(:GARCHOMP, 70) do |p|
    p.moves = [:EARTHQUAKE, :DRAGONCLAW, :STONEEDGE, :SWORDSDANCE]
    p.nature = :JOLLY
    p.ability_index = 0
    p.item = :ROCKYHELMET
    p.iv = [31] * 6
    p.ev = [0, 252, 0, 0, 4, 252]
  end
  t.pokemon(:CHARIZARD, 72) do |p|
    p.moves = [:FLAREBLITZ, :EARTHQUAKE, :DRAGONDANCE, :ROOST]
    p.nature = :ADAMANT
    p.ability_index = 0
    p.item = :CHARIZARDITEX
    p.iv = [31] * 6
    p.ev = [0, 252, 0, 0, 4, 252]
  end
end

#-------------------------------------------------------------------------------
# Marcus — with Aurora (version 1, for double-trainer battle)
# Uses a different name so it doesn't collide with the solo definition.
#-------------------------------------------------------------------------------
GameData::Trainer.define(:CHAMPION_EMERITUS, "Marcus", 1) do |t|
  t.lose_text "Aurora — *that* is our kid. Look at them. Look at them go."
  t.pokemon(:CHARIZARD, 72) do |p|
    p.moves = [:FLAREBLITZ, :DRAGONCLAW, :EARTHQUAKE, :PROTECT]
    p.nature = :ADAMANT
    p.item = :CHARIZARDITEX
    p.iv = [31] * 6
  end
  t.pokemon(:METAGROSS, 72) do |p|
    p.moves = [:METEORMASH, :ZENHEADBUTT, :BULLETPUNCH, :PROTECT]
    p.nature = :ADAMANT
    p.item = :LIFEORB
    p.iv = [31] * 6
  end
  t.pokemon(:GARCHOMP, 72) do |p|
    p.moves = [:EARTHQUAKE, :DRAGONCLAW, :ROCKSLIDE, :PROTECT]
    p.nature = :JOLLY
    p.item = :ROCKYHELMET
    p.iv = [31] * 6
  end
  t.pokemon(:DRAGONITE, 72) do |p|
    p.moves = [:DRAGONCLAW, :EXTREMESPEED, :EARTHQUAKE, :PROTECT]
    p.nature = :ADAMANT
    p.item = :LUMBERRY
    p.iv = [31] * 6
  end
end

GameData::Trainer.define(:RESEARCHER_EMERITUS, "Aurora") do |t|
  t.lose_text "Marcus — they got us. Good. They *should* have gotten us."
  t.pokemon(:GARDEVOIR, 72) do |p|
    p.moves = [:MOONBLAST, :PSYCHIC, :THUNDERBOLT, :PROTECT]
    p.nature = :MODEST
    p.item = :GARDEVOIRITE
    p.iv = [31] * 6
  end
  t.pokemon(:ALAKAZAM, 72) do |p|
    p.moves = [:PSYCHIC, :FOCUSBLAST, :SHADOWBALL, :PROTECT]
    p.nature = :TIMID
    p.item = :LIFEORB
    p.iv = [31] * 6
  end
  t.pokemon(:STARMIE, 72) do |p|
    p.moves = [:HYDROPUMP, :ICEBEAM, :PSYCHIC, :PROTECT]
    p.nature = :TIMID
    p.item = :LEFTOVERS
    p.iv = [31] * 6
  end
  t.pokemon(:JIRACHI, 72) do |p|
    p.moves = [:IRONHEAD, :PSYCHIC, :HELPINGHAND, :PROTECT]
    p.nature = :ADAMANT
    p.item = :SAFETYGOGGLES
    p.iv = [31] * 6
  end
end

#-------------------------------------------------------------------------------
# Marcus — Championship-era prime (version 2, hardest tier)
#-------------------------------------------------------------------------------
GameData::Trainer.define(:CHAMPION_EMERITUS, "Marcus", 2) do |t|
  t.lose_text "*panting, laughing* All right. ALL RIGHT. You're better than I ever was. \\\\nDon't tell your mother I said that."
  # Level 80, max EVs, Mega ace, no held-item duplicates
  t.pokemon(:DRAGONITE, 80) do |p|
    p.moves = [:DRAGONDANCE, :OUTRAGE, :EXTREMESPEED, :EARTHQUAKE]
    p.nature = :ADAMANT
    p.ability_index = 2
    p.item = :LUMBERRY
    p.iv = [31] * 6
    p.ev = [0, 252, 0, 0, 4, 252]
  end
  t.pokemon(:TYRANITAR, 80) do |p|
    p.moves = [:STONEEDGE, :CRUNCH, :EARTHQUAKE, :ICEPUNCH]
    p.nature = :ADAMANT
    p.ability_index = 0
    p.item = :CHOICEBAND
    p.iv = [31] * 6
    p.ev = [0, 252, 0, 0, 4, 252]
  end
  t.pokemon(:SALAMENCE, 80) do |p|
    p.moves = [:DRAGONCLAW, :EARTHQUAKE, :FLAREBLITZ, :ROOST]
    p.nature = :ADAMANT
    p.ability_index = 1
    p.item = :LIFEORB
    p.iv = [31] * 6
    p.ev = [0, 252, 0, 0, 4, 252]
  end
  t.pokemon(:METAGROSS, 80) do |p|
    p.moves = [:METEORMASH, :ZENHEADBUTT, :BULLETPUNCH, :HAMMERARM]
    p.nature = :ADAMANT
    p.ability_index = 0
    p.item = :ASSAULTVEST
    p.iv = [31] * 6
    p.ev = [252, 252, 0, 0, 4, 0]
  end
  t.pokemon(:GARCHOMP, 80) do |p|
    p.moves = [:EARTHQUAKE, :DRAGONCLAW, :STONEEDGE, :SWORDSDANCE]
    p.nature = :JOLLY
    p.ability_index = 0
    p.item = :ROCKYHELMET
    p.iv = [31] * 6
    p.ev = [0, 252, 0, 0, 4, 252]
  end
  t.pokemon(:CHARIZARD, 82) do |p|
    p.moves = [:FLAREBLITZ, :EARTHQUAKE, :DRAGONDANCE, :ROOST]
    p.nature = :ADAMANT
    p.ability_index = 0
    p.item = :CHARIZARDITEX
    p.iv = [31] * 6
    p.ev = [0, 252, 0, 0, 4, 252]
  end
end


#===============================================================================
# Postgame cutscene — challenge the old Champion
#-------------------------------------------------------------------------------
GameData::Cutscene.define :postgame_marcus_challenge do |scene|
  scene.play_bgm 'Pokemon XY - Anistar City'

  scene.message "\\i[Dad was on the porch sharpening an old Pokéball. He hadn't done that since you were small.]"
  scene.wait 20

  scene.message "\\bDad Marcus\\b: Sit a minute, kid."
  scene.message "\\bDad Marcus\\b: I want to ask you something I've never asked before."
  scene.message "\\bDad Marcus\\b: ...are you going to be the one who beats me?"
  scene.wait 30

  scene.show_emotion :player, :exclamation
  scene.message "\\b\\PN\\b: ...you want to battle?"
  scene.message "\\bDad Marcus\\b: I want to *know.* I've watched you come up. Three years now. I've never been your opponent."
  scene.message "\\bDad Marcus\\b: One fight. No badges. No stakes. Just so I can tell my Dragonite he met the next one."
  scene.wait 30

  scene.choice ["Of course, Dad.", "Take it seriously?", "Not today."] do |result|
    case result
    when 0  # Of course
      pbMessage("\\b\\PN\\b: Of course, Dad.")
      pbMessage("\\bDad Marcus\\b: Then let's not waste the afternoon.")
      GameData::Cutscene.play(:postgame_marcus_battle)
    when 1  # Take it seriously
      pbMessage("\\b\\PN\\b: ...take it seriously?")
      pbMessage("\\bDad Marcus\\b: *smiling* I have *been* taking it seriously since you were eight.")
      pbMessage("\\bDad Marcus\\b: Today I'm just doing it in front of you.")
      GameData::Cutscene.play(:postgame_marcus_battle)
    when 2  # Not today
      pbMessage("\\b\\PN\\b: Not today, Dad. Soon.")
      pbMessage("\\bDad Marcus\\b: *nodding* Whenever. I'm not going anywhere.")
    end
  end
end

GameData::Cutscene.define :postgame_marcus_battle do |scene|
  scene.play_bgm 'Pokemon XY - Champion Battle'
  scene.heal_party

  scene.trainer_battle :CHAMPION_EMERITUS, "Marcus", 0 do |won|
    if won
      scene.script {
        $PokemonGlobal.sc_marcus_solo_beaten = true
        pbMessage("\\bDad Marcus\\b: Heh. Knew it. \\\\nLet me catch my breath.")
        pbMessage("\\bDad Marcus\\b: ...if you ever want a real one — with your mother in the corner — I will fight you again. I owe you that much.")
        pbMessage("\\bDad Marcus\\b: *quiet* Proud of you, kid.")
        scFateGrant(:fate_beat_dad, 2, "Surpassed the Champion") if defined?(scFateGrant)
        pbAchievement(:ach_beat_marcus_solo) if defined?(pbAchievement)
      }
    else
      scene.script {
        pbMessage("\\bDad Marcus\\b: *laughing, helping you up* All right. *Now* I know what to work on with you.")
        pbMessage("\\bDad Marcus\\b: Come back when you're ready. I'm not going anywhere.")
      }
    end
  end
end

GameData::Cutscene.define :postgame_marcus_aurora do |scene|
  scene.play_bgm 'Pokemon XY - Champion Battle'
  scene.heal_party

  scene.message "\\bDad Marcus\\b: All right, kid. The real one. *Both* of us."
  scene.message "\\bMom (Aurora)\\b: Don't go easy on us, sweetheart. We won't."

  # Engine-level: a double trainer battle. Pokemon Essentials's
  # pbDoubleTrainerBattle takes two trainer specs.
  scene.script {
    result = pbDoubleTrainerBattle(
      :CHAMPION_EMERITUS, "Marcus", 1,
      :RESEARCHER_EMERITUS, "Aurora", 0
    )
    if result == 1
      $PokemonGlobal.sc_marcus_aurora_beaten = true
      pbMessage("\\bMom (Aurora)\\b: ...Marcus, dear?")
      pbMessage("\\bDad Marcus\\b: Yeah?")
      pbMessage("\\bMom (Aurora)\\b: We are absolutely raising the next league champion.")
      pbMessage("\\bDad Marcus\\b: *grinning* I noticed.")
      scFateGrant(:fate_beat_parents, 2, "Beat both your parents") if defined?(scFateGrant)
      pbAchievement(:ach_beat_marcus_aurora) if defined?(pbAchievement)
    else
      pbMessage("\\bMom (Aurora)\\b: Closer than last time. Much closer.")
      pbMessage("\\bDad Marcus\\b: Come back next week.")
    end
  }
end

GameData::Cutscene.define :postgame_marcus_prime do |scene|
  scene.play_bgm 'Pokemon XY - Final Battle Lysandre'

  scene.message "\\bDad Marcus\\b: One more. Just one. \\\\nThis is what I had when I was Champion."
  scene.message "\\bDad Marcus\\b: Full prime team, full kit. No mercy."
  scene.message "\\bDad Marcus\\b: ...beat me here and we're done. You're the one."

  scene.heal_party
  scene.trainer_battle :CHAMPION_EMERITUS, "Marcus", 2 do |won|
    if won
      scene.script {
        $PokemonGlobal.sc_marcus_prime_beaten = true
        pbMessage("\\bDad Marcus\\b: *long breath* ...that's it."
        )
        pbMessage("\\bDad Marcus\\b: That is *it,* \\PN. \\\\nYou are stronger than I ever was. I needed to know.")
        pbMessage("\\bDad Marcus\\b: *quietly* And now I know.")
        scFateGrant(:fate_beat_prime, 3, "Surpassed your father at his peak") if defined?(scFateGrant)
        pbAchievement(:ach_beat_marcus_prime) if defined?(pbAchievement)
      }
    else
      scene.script {
        pbMessage("\\bDad Marcus\\b: Closer. Come back. \\\\nI'll be ready.")
      }
    end
  end
end


#===============================================================================
# Save flags for the three tier completions
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_marcus_solo_beaten, :sc_marcus_aurora_beaten, :sc_marcus_prime_beaten
end

SaveData.register(:sc_marcus_solo_beaten) do
  ensure_class :TrueClass
  save_value { $PokemonGlobal.sc_marcus_solo_beaten || false }
  load_value { |v| $PokemonGlobal.sc_marcus_solo_beaten = v }
  new_game_value { false }
end

SaveData.register(:sc_marcus_aurora_beaten) do
  ensure_class :TrueClass
  save_value { $PokemonGlobal.sc_marcus_aurora_beaten || false }
  load_value { |v| $PokemonGlobal.sc_marcus_aurora_beaten = v }
  new_game_value { false }
end

SaveData.register(:sc_marcus_prime_beaten) do
  ensure_class :TrueClass
  save_value { $PokemonGlobal.sc_marcus_prime_beaten || false }
  load_value { |v| $PokemonGlobal.sc_marcus_prime_beaten = v }
  new_game_value { false }
end
