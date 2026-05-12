#===============================================================================
# POKÉMON SHATTERED CROWNS - WILD LEGENDARY SYSTEM
#===============================================================================
# Adds 8 wild/roaming legendary encounters scattered through the world,
# each tied to a story beat that justifies their presence in Asgheim or
# Astoria. None of these are the three Guardians (Zacian/Xerneas/Yveltal)
# — those are story-bound. These are the *other* legendaries the world
# has to offer.
#
# Encounter types:
#   :roaming     — wanders 5-7 maps, low encounter rate, must chase
#   :hidden      — fixed location, requires a story flag to access
#   :scripted    — appears at a specific location after a specific event
#
# Encounters:
#   1. Latias/Latios  :roaming   — coastal maps, post-Ch11
#   2. Suicune        :roaming   — northern maps, post-Ch15
#   3. Cobalion       :hidden    — Ironpeak cave, post-Ch16
#   4. Virizion       :hidden    — Eternal Forest, post-Ch22 (Lyra ally)
#   5. Terrakion      :hidden    — Frostfall mountain, post-Ch18
#   6. Keldeo         :scripted  — appears after Cobalion/Virizion/Terrakion all caught
#   7. Reshiram       :scripted  — appears at the Gateway after Ch28 (Ragnar's death)
#   8. Mewtwo         :scripted  — postgame, after Subject Zero is freed
#
# The legendaries are not just stat-checks — most have a small story beat
# attached. Suicune blesses the player. Latias remembers Aurora. Virizion
# trains alongside Lyra for a week.
#===============================================================================


module SCWildLegendary
  @encounters = {}
  @roamer_state = {}

  class << self
    attr_accessor :encounters, :roamer_state
  end

  def self.define(id, &block)
    builder = WildLegendaryBuilder.new(id)
    yield(builder) if block_given?
    @encounters[id] = builder.to_data
  end

  def self.unlock(id)
    return false unless @encounters[id]
    return false if encountered?(id)
    $PokemonGlobal.sc_legendaries_unlocked ||= []
    $PokemonGlobal.sc_legendaries_unlocked << id unless $PokemonGlobal.sc_legendaries_unlocked.include?(id)
    true
  end

  def self.encountered?(id)
    ($PokemonGlobal.sc_legendaries_unlocked || []).include?(id)
  end

  def self.caught!(id)
    return false unless encountered?(id)
    $PokemonGlobal.sc_legendaries_caught ||= []
    $PokemonGlobal.sc_legendaries_caught << id unless $PokemonGlobal.sc_legendaries_caught.include?(id)
    pbAchievement(:ach_legendary_caught) if defined?(pbAchievement)
    if $PokemonGlobal.sc_legendaries_caught.length >= 8
      pbAchievement(:ach_legendary_all) if defined?(pbAchievement)
    end
    true
  end

  def self.caught?(id)
    ($PokemonGlobal.sc_legendaries_caught || []).include?(id)
  end

  # Roamer pulse — call from on_step_taken to update roamer positions
  def self.pulse_roamers
    @encounters.each do |id, data|
      next unless data[:kind] == :roaming
      next unless encountered?(id) && !caught?(id)
      maps = data[:maps] || []
      next if maps.empty?
      @roamer_state[id] ||= maps.sample
      # 1-in-12 chance per step that a roamer relocates
      @roamer_state[id] = maps.sample if rand(12) == 0
    end
  end

  def self.roamer_at?(id, map_id)
    @roamer_state[id] == map_id
  end
end


class WildLegendaryBuilder
  def initialize(id)
    @id = id
    @species = id
    @level = 50
    @kind = :hidden
    @location = ""
    @maps = []
    @unlock_chapter = 1
    @intro_cutscene = nil
    @ally_chance = 0  # If > 0, may join the party after battle without ball
  end

  def species(s);    @species = s;          end
  def level(l);      @level = l;            end
  def kind(k);       @kind = k;             end
  def location(l);   @location = l;         end
  def maps(arr);     @maps = arr;           end
  def unlock_chapter(c); @unlock_chapter = c; end
  def intro_cutscene(c); @intro_cutscene = c; end
  def ally_chance(c);    @ally_chance = c; end

  def to_data
    {
      id: @id, species: @species, level: @level, kind: @kind,
      location: @location, maps: @maps, unlock_chapter: @unlock_chapter,
      intro_cutscene: @intro_cutscene, ally_chance: @ally_chance
    }
  end
end


#===============================================================================
# Encounter definitions
#===============================================================================

SCWildLegendary.define(:legendary_latias) do |l|
  l.species :LATIAS
  l.level 55
  l.kind :roaming
  l.location "Coastal Asgheim"
  l.maps [15, 16, 17, 24, 25]  # Adjust to actual coastal map IDs
  l.unlock_chapter 11
  l.intro_cutscene :legendary_latias_intro
end

SCWildLegendary.define(:legendary_suicune) do |l|
  l.species :SUICUNE
  l.level 60
  l.kind :roaming
  l.location "Northern Asgheim"
  l.maps [40, 41, 42, 43, 44, 45]  # Adjust
  l.unlock_chapter 15
  l.intro_cutscene :legendary_suicune_intro
end

SCWildLegendary.define(:legendary_cobalion) do |l|
  l.species :COBALION
  l.level 60
  l.kind :hidden
  l.location "Ironpeak Hidden Cave"
  l.unlock_chapter 16
  l.intro_cutscene :legendary_cobalion_intro
end

SCWildLegendary.define(:legendary_virizion) do |l|
  l.species :VIRIZION
  l.level 60
  l.kind :hidden
  l.location "Eternal Forest, Heart-of-Asgheim Grove"
  l.unlock_chapter 22
  l.intro_cutscene :legendary_virizion_intro
end

SCWildLegendary.define(:legendary_terrakion) do |l|
  l.species :TERRAKION
  l.level 60
  l.kind :hidden
  l.location "Frostfall High Peak"
  l.unlock_chapter 18
  l.intro_cutscene :legendary_terrakion_intro
end

SCWildLegendary.define(:legendary_keldeo) do |l|
  l.species :KELDEO
  l.level 65
  l.kind :scripted
  l.location "Trio Sanctum (after all 3 swords caught)"
  l.unlock_chapter 25
  l.intro_cutscene :legendary_keldeo_intro
end

SCWildLegendary.define(:legendary_reshiram) do |l|
  l.species :RESHIRAM
  l.level 70
  l.kind :scripted
  l.location "The Gateway"
  l.unlock_chapter 28
  l.intro_cutscene :legendary_reshiram_intro
end

SCWildLegendary.define(:legendary_mewtwo) do |l|
  l.species :MEWTWO
  l.level 80
  l.kind :scripted
  l.location "Astoria Hidden Caldera (postgame)"
  l.unlock_chapter 47
  l.intro_cutscene :legendary_mewtwo_intro
  l.ally_chance 100  # Mewtwo (Subject Zero) joins willingly, no ball needed
end


#===============================================================================
# Intro cutscenes — each legendary has a small story moment
#===============================================================================

GameData::Cutscene.define :legendary_latias_intro do |scene|
  scene.play_bgm 'Pokemon ORAS - Eon Theme'
  scene.message "\\i[A flash of red and white in the air above the coast.]"
  scene.message "\\i[The Latias paused — only for a heartbeat — and looked directly at you.]"
  scene.message "\\bLatias\\b: *thought-projection, softly* \\\\n...you have her eyes."
  scene.message "\\b\\PN\\b: ...whose?"
  scene.message "\\bLatias\\b: \\\\nThe carver. She was kind to me, once. Tell her — when you see her — that the eon-line remembers."
  scene.message "\\i[Then it was gone.]"
  scene.script {
    scMemory(:mem_legendary_latias) if defined?(scMemory)
  }
end

GameData::Cutscene.define :legendary_suicune_intro do |scene|
  scene.play_bgm 'Pokemon HGSS - Suicune Theme'
  scene.message "\\i[The lake's surface broke. A blue-maned shape rose, weightless, then settled on the water as if standing on stone.]"
  scene.message "\\bSuicune\\b: *level, weighing* \\\\nChosen of Valor. You drink from the wells of the wounded. I am the well-mender."
  scene.message "\\b\\PN\\b: ...you bless the water?"
  scene.message "\\bSuicune\\b: \\\\nI bless the *worthy* water. \\\\nI watched your road from Verdantia. \\\\nYou are worthy. \\\\nI will run beside you for a season."
  scene.message "\\i[Then it bolted north. You would see it again. Not yet.]"
  scene.script {
    scMemory(:mem_legendary_suicune) if defined?(scMemory)
  }
end

GameData::Cutscene.define :legendary_cobalion_intro do |scene|
  scene.play_bgm 'Pokemon BW - Battle! Cobalion'
  scene.message "\\i[Deep in the Ironpeak Hidden Cave, a steel-blue figure stood at the centre of an old training ring carved into the rock.]"
  scene.message "\\bCobalion\\b: \\\\nYou are the first Chosen of Valor to find this place in a hundred years."
  scene.message "\\bCobalion\\b: \\\\nMy line trains those who would lead without dominating. \\\\nProve you would lead. Then we will speak of leading together."
  scene.script {
    scMemory(:mem_legendary_cobalion) if defined?(scMemory)
  }
end

GameData::Cutscene.define :legendary_virizion_intro do |scene|
  scene.play_bgm 'Pokemon BW - Battle! Virizion'
  scene.message "\\i[The Heart-of-Asgheim grove was deeper than Fern's sprig had suggested. \\\\nAt its centre, a green-and-pink figure stepped from between two trees.]"
  scene.message "\\bVirizion\\b: *to Lyra, not \\PN* \\\\nLittle sister of Xerneas. \\\\nYou have been called and you have answered. \\\\nWill you let me train at your side for a week?"
  scene.message "\\bLyra\\b: *startled but pleased* \\\\n...yes. Of course."
  scene.message "\\bVirizion\\b: \\\\nGood. Begin where you stand. \\\\nWe will work."
  scene.script {
    scMemory(:mem_legendary_virizion) if defined?(scMemory)
  }
end

GameData::Cutscene.define :legendary_terrakion_intro do |scene|
  scene.play_bgm 'Pokemon BW - Battle! Terrakion'
  scene.message "\\i[On the high peak above Frostfall, a stone-coloured figure pawed the ground impatient.]"
  scene.message "\\bTerrakion\\b: \\\\nThe slaughterhouse-cellar. The thirty-four. The six."
  scene.message "\\bTerrakion\\b: \\\\nMy line stands for those without trainers to defend them. \\\\nYou stood for them when no one asked you to. \\\\nFight me, Chosen, and I will know if you stood *truly.*"
  scene.script {
    scMemory(:mem_legendary_terrakion) if defined?(scMemory)
  }
end

GameData::Cutscene.define :legendary_keldeo_intro do |scene|
  scene.play_bgm 'Pokemon BW - Battle! Keldeo'
  scene.message "\\i[All three of the Swords-of-Justice were with you. \\\\nA young fourth came out of the mist. Not yet sworn. Not yet sure.]"
  scene.message "\\bKeldeo\\b: \\\\n...they spoke of you to me. \\\\nI was supposed to be ready before I met you. \\\\nI am not ready."
  scene.message "\\b\\PN\\b: \\\\nNeither was I when I started."
  scene.message "\\bKeldeo\\b: *small smile* \\\\nThen perhaps I am ready *enough.*"
  scene.script {
    scMemory(:mem_legendary_keldeo) if defined?(scMemory)
  }
end

GameData::Cutscene.define :legendary_reshiram_intro do |scene|
  scene.play_bgm 'Pokemon BW - Battle! Reshiram'
  scene.message "\\i[At the Gateway, where the arch had fallen, white fire kindled in the air.]"
  scene.message "\\i[A dragon of pure truth-flame descended, mourning posture, wings folded.]"
  scene.message "\\bReshiram\\b: \\\\nThe red-haired boy died here. \\\\nThe truth he chose was the truth of *standing in.* \\\\nI come to honour him."
  scene.message "\\b\\PN\\b: *quiet* ...Ragnar would have lost his MIND at meeting you."
  scene.message "\\bReshiram\\b: *with great gentleness* \\\\nThen *meet me for him,* Chosen. \\\\nCarry me into the Asgaheim fight as one carries a friend."
  scene.script {
    scMemory(:mem_legendary_reshiram) if defined?(scMemory)
  }
end

GameData::Cutscene.define :legendary_mewtwo_intro do |scene|
  scene.play_bgm 'Pokemon SWSH - Mewtwo Theme'
  scene.message "\\i[A hidden caldera south of Astoria. \\\\nA pale figure sat on a high stone, watching the sunset.]"
  scene.message "\\bMewtwo\\b: \\\\n...you came."
  scene.message "\\bMewtwo\\b: \\\\nI knew you would come. \\\\nI have been resting. I am ready."
  scene.message "\\b\\PN\\b: \\\\n...Subject Zero?"
  scene.message "\\bMewtwo\\b: \\\\nThat is not my name. \\\\nI did not give myself a name. \\\\nI thought — if you came — I would let you give me one."
  scene.choice [
    "I'll let you choose your own.",
    "Try one I picked.",
    "Stay as you are."
  ] do |result|
    case result
    when 0
      pbMessage("\\bMewtwo\\b: \\\\n*long pause* \\\\nAtlas. \\\\nI think — Atlas.")
      pbMessage("\\b\\PN\\b: \\\\nThat's a good name.")
    when 1
      name = pbNameEntry(_INTL("Name this Mewtwo:"), 10, "Atlas", nil)
      pbMessage(_INTL("\\bMewtwo\\b: \\\\n{1}. \\\\nYes. \\\\nThat suits.", name || "Atlas"))
    when 2
      pbMessage("\\bMewtwo\\b: \\\\nAs I am. \\\\nThank you for not naming the unfinished thing.")
    end
  end
  scene.script {
    scMemory(:mem_legendary_mewtwo) if defined?(scMemory)
    # Subject Zero is freely caught — no battle
    pbAddPokemon(:MEWTWO, 80) if rand(100) < 100  # always succeeds
  }
end


#===============================================================================
# Step handler — pulse the roamers
#===============================================================================
EventHandlers.add(:on_player_step_taken, :sc_legendary_roamer_pulse,
  proc {
    SCWildLegendary.pulse_roamers
  }
)


#===============================================================================
# Memory entries for legendaries
#===============================================================================
[
  [:mem_legendary_latias,    "The Eon Greeting",   "...you have her eyes.",
                              "Coastal Asgheim", 11, :awe],
  [:mem_legendary_suicune,   "Run Beside Me",      "I will run beside you for a season.",
                              "Lake of the North", 15, :awe],
  [:mem_legendary_cobalion,  "Lead Without Dominating", "First Chosen of Valor in a hundred years.",
                              "Ironpeak Hidden Cave", 16, :awe],
  [:mem_legendary_virizion,  "Little Sister of Xerneas", "I will train at your side for a week.",
                              "Heart-of-Asgheim Grove", 22, :love],
  [:mem_legendary_terrakion, "Those Without Trainers", "You stood for them when no one asked you to.",
                              "Frostfall High Peak", 18, :triumph],
  [:mem_legendary_keldeo,    "Ready Enough",        "Perhaps I am ready enough.",
                              "Trio Sanctum", 25, :warm],
  [:mem_legendary_reshiram,  "Meet Me For Him",     "Carry me into the Asgaheim fight as one carries a friend.",
                              "The Gateway", 28, :grief],
  [:mem_legendary_mewtwo,    "I Did Not Give Myself a Name", "I thought — if you came — I would let you give me one.",
                              "Hidden Caldera", 47, :love],
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
  GameData::Achievement.define :ach_legendary_caught do |a|
    a.name "First Legend"
    a.description "Catch any wild legendary."
    a.category :story_hidden
  end
  GameData::Achievement.define :ach_legendary_all do |a|
    a.name "Eight Names"
    a.description "Catch all eight wild legendaries."
    a.category :story_hidden
    a.hidden true
    a.reward_item :MASTERBALL, 3
  end
end


#===============================================================================
# Save data
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_legendaries_unlocked, :sc_legendaries_caught
end

SaveData.register(:sc_legendaries_unlocked) do
  ensure_class :Array
  save_value { $PokemonGlobal.sc_legendaries_unlocked ||= [] }
  load_value { |v| $PokemonGlobal.sc_legendaries_unlocked = v }
  new_game_value { [] }
end

SaveData.register(:sc_legendaries_caught) do
  ensure_class :Array
  save_value { $PokemonGlobal.sc_legendaries_caught ||= [] }
  load_value { |v| $PokemonGlobal.sc_legendaries_caught = v }
  new_game_value { [] }
end
