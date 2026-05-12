#===============================================================================
# POKÉMON SHATTERED CROWNS - MEMORY ALBUM SYSTEM
#===============================================================================
# Auto-saved keepsake system. Records "Memory" entries at key story beats.
# Each entry has:
#   - title          (short)
#   - quote          (a single line of dialogue from the moment)
#   - location       (where it happened)
#   - chapter        (which chapter/arc)
#   - date_caught    (in-game timestamp at unlock)
#   - icon           (optional graphic key)
#   - mood           (:bright, :warm, :somber, :triumph, :grief, :love, :awe)
#
# The album is accessible from the Pause menu or via pbOpenMemoryAlbum.
# Memories are filed by chapter and can be replayed (jumps to the
# associated cutscene via Cutscene Gallery if available).
#===============================================================================


module GameData
  class Memory < ScriptBase
    @memories = {}

    class << self
      attr_accessor :memories
    end

    def self.define(id, &block)
      builder = MemoryBuilder.new(id)
      yield(builder) if block_given?
      @memories[id] = builder.to_data
      SCScripts.log("Registered memory: #{id}") if defined?(SCScripts)
    end

    def self.unlock(id, *args)
      return false unless @memories[id]
      $PokemonGlobal.sc_memories_unlocked ||= []
      return false if $PokemonGlobal.sc_memories_unlocked.include?(id)

      $PokemonGlobal.sc_memories_unlocked << id
      $PokemonGlobal.sc_memory_unlock_times ||= {}
      $PokemonGlobal.sc_memory_unlock_times[id] = pbGetTimeNow rescue Time.now

      # Subtle notification — doesn't interrupt cutscenes
      if defined?(pbBottomRightWindow)
        pbBottomRightWindow(_INTL("Memory saved."))
      else
        echoln "[Memory Album] Unlocked: #{id}" if defined?(echoln)
      end
      true
    end

    def self.unlocked?(id)
      ($PokemonGlobal.sc_memories_unlocked || []).include?(id)
    end

    def self.all_unlocked
      ($PokemonGlobal.sc_memories_unlocked || []).map { |id| @memories[id] }.compact
    end

    def self.by_chapter
      grouped = Hash.new { |h, k| h[k] = [] }
      all_unlocked.each { |mem| grouped[mem[:chapter] || 0] << mem }
      grouped
    end

    def self.count_unlocked
      ($PokemonGlobal.sc_memories_unlocked || []).length
    end

    def self.count_total
      @memories.size
    end
  end


  class MemoryBuilder
    def initialize(id)
      @id = id
      @title = id.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')
      @quote = ""
      @location = ""
      @chapter = nil
      @icon = nil
      @mood = :warm
    end

    def title(t);        @title = t;        end
    def quote(q);        @quote = q;        end
    def location(l);     @location = l;     end
    def chapter(c);      @chapter = c;      end
    def icon(i);         @icon = i;         end
    def mood(m);         @mood = m;         end

    def to_data
      {
        id: @id,
        title: @title,
        quote: @quote,
        location: @location,
        chapter: @chapter,
        icon: @icon,
        mood: @mood
      }
    end
  end
end


#===============================================================================
# Memory definitions — one per major story beat across the 55+ chapters
#===============================================================================

GameData::Memory.define :mem_first_partner do |m|
  m.title    "Your First Partner"
  m.quote    "Hey there, partner. Looks like we're going to be together for a long time."
  m.location "Aldric's Lab, Dawnhaven"
  m.chapter  1
  m.mood     :warm
end

GameData::Memory.define :mem_starter_named do |m|
  m.title    "The Naming"
  m.quote    "That feels right. Welcome to the team."
  m.location "Outside the Lab"
  m.chapter  1
  m.mood     :bright
end

GameData::Memory.define :mem_ragnar_first_battle do |m|
  m.title    "First Rival Battle"
  m.quote    "By the time we reach the Pokémon League... I'll be WAY stronger!"
  m.location "Dawnhaven outskirts"
  m.chapter  1
  m.mood     :bright
end

GameData::Memory.define :mem_meet_lyra do |m|
  m.title    "Meeting Lyra"
  m.quote    "I'm Lyra! And this is Willow. Be nice — she bites."
  m.location "Sunrise Farm"
  m.chapter  2
  m.mood     :bright
end

GameData::Memory.define :mem_meet_kael do |m|
  m.title    "Meeting Kael"
  m.quote    "...I was hungry."
  m.location "Shadowfen Library"
  m.chapter  2
  m.mood     :warm
end

GameData::Memory.define :mem_festival_mask do |m|
  m.title    "The Festival Mask"
  m.quote    "Hands like hers. Same chin too. Take care of it."
  m.location "Thornwood Festival"
  m.chapter  3
  m.mood     :awe
end

GameData::Memory.define :mem_first_badge do |m|
  m.title    "The First Badge"
  m.quote    "I sent two letters to Aldric the same evening. We have been corresponding."
  m.location "Verdantia Gym"
  m.chapter  4
  m.mood     :triumph
end

GameData::Memory.define :mem_first_attack do |m|
  m.title    "The First Cult Attack"
  m.quote    "The master wishes to see your potential."
  m.location "Road from Ironvale"
  m.chapter  7
  m.mood     :somber
end

GameData::Memory.define :mem_marks_appear do |m|
  m.title    "The Marks Appear"
  m.quote    "It looks like — light. Under my skin."
  m.location "Inn, Ironvale Border"
  m.chapter  8
  m.mood     :awe
end

GameData::Memory.define :mem_aldric_warning do |m|
  m.title    "Aldric's Counsel"
  m.quote    "Eat regularly. Sleep when you can. Don't apologize for being scared."
  m.location "Aldric's Lab"
  m.chapter  9
  m.mood     :warm
end

GameData::Memory.define :mem_summit_temple do |m|
  m.title    "The Summit Temple"
  m.quote    "We are the Three Chosen. We bind. We seal."
  m.location "Summit Temple"
  m.chapter  11
  m.mood     :awe
end

GameData::Memory.define :mem_general_shade do |m|
  m.title    "Aldrin's Funeral"
  m.quote    "When you fight Shade, fight Aldrin first."
  m.location "Mountain Pass"
  m.chapter  12
  m.mood     :somber
end

GameData::Memory.define :mem_xerneas_named do |m|
  m.title    "Xerneas, Named"
  m.quote    "I do not need a name. But yours, child, is Lyra."
  m.location "Eternal Forest"
  m.chapter  14
  m.mood     :awe
end

GameData::Memory.define :mem_eagles_watch do |m|
  m.title    "The Eagle's Watch"
  m.quote    "Champion Marcus sends his love."
  m.location "Road outside Frostfall"
  m.chapter  15
  m.mood     :triumph
end

GameData::Memory.define :mem_yveltal_communion do |m|
  m.title    "Yveltal Accepts"
  m.quote    "Death needs witness. Witness, Kael."
  m.location "Cave of Cycles"
  m.chapter  16
  m.mood     :awe
end

GameData::Memory.define :mem_starter_promise do |m|
  m.title    "The Promise"
  m.quote    "If you ever do that again I will end you myself."
  m.location "Frostfall Pokémon Center"
  m.chapter  17
  m.mood     :grief
end

GameData::Memory.define :mem_civilian_mother do |m|
  m.title    "The Furfrou Story"
  m.quote    "I will give her the best story. I promise."
  m.location "Frostfall Pokémon Center"
  m.chapter  18
  m.mood     :grief
end

GameData::Memory.define :mem_general_dread do |m|
  m.title    "Captain Hara"
  m.quote    "You will be betrayed too, the way I was."
  m.location "Frostfall Crossing"
  m.chapter  18
  m.mood     :somber
end

GameData::Memory.define :mem_elena_meeting do |m|
  m.title    "Lyra's Sister"
  m.quote    "Little sis! You've grown so much!"
  m.location "Eternal Forest border"
  m.chapter  19
  m.mood     :warm
end

GameData::Memory.define :mem_subject_zero do |m|
  m.title    "Subject Zero"
  m.quote    "Help me find an ending I chose."
  m.location "Hidden Lab"
  m.chapter  20
  m.mood     :awe
end

GameData::Memory.define :mem_aldric_dies do |m|
  m.title    "Aldric"
  m.quote    "You have his spirit."
  m.location "Lab Ruins"
  m.chapter  24
  m.mood     :grief
end

GameData::Memory.define :mem_aurora_funeral do |m|
  m.title    "Mom at the Grave"
  m.quote    "Aldric and I corresponded every week for thirty years."
  m.location "Aldric's Funeral"
  m.chapter  24
  m.mood     :grief
end

GameData::Memory.define :mem_marcus_letter do |m|
  m.title    "Marcus's Letter"
  m.quote    "Make them pay. For Aldric. For all of us."
  m.location "Dawnhaven"
  m.chapter  24
  m.mood     :somber
end

GameData::Memory.define :mem_aldric_last_letter do |m|
  m.title    "Aldric's Last Letter"
  m.quote    "Mourn me by getting larger. Love each other louder. Go together. Go."
  m.location "Camp by the fire"
  m.chapter  33
  m.mood     :grief
end

GameData::Memory.define :mem_confession do |m|
  m.title    "The Confession"
  m.quote    "I've wanted this for so long."
  m.location "Camp before the Gateway"
  m.chapter  27
  m.mood     :love
end

GameData::Memory.define :mem_willow_evolves do |m|
  m.title    "Willow Becomes"
  m.quote    "She evolved from all the love we share."
  m.location "Camp before the Gateway"
  m.chapter  27
  m.mood     :love
end

GameData::Memory.define :mem_ragnar_dies do |m|
  m.title    "Ragnar"
  m.quote    "I'll be at the League, waiting."
  m.location "The Gateway"
  m.chapter  28
  m.mood     :grief
end

GameData::Memory.define :mem_starter_at_ragnar do |m|
  m.title    "Standing"
  m.quote    "I know you're here. I know."
  m.location "The Gateway, after"
  m.chapter  28
  m.mood     :grief
end

GameData::Memory.define :mem_elena_dies do |m|
  m.title    "Elena's Choice"
  m.quote    "She picked me by not picking herself."
  m.location "Asgaheim Sanctum"
  m.chapter  32
  m.mood     :grief
end

GameData::Memory.define :mem_seal_nidhoggr do |m|
  m.title    "The Seal"
  m.quote    "Every crown shatters. Every seal frays. You only quicken what was always coming."
  m.location "Asgaheim Throne"
  m.chapter  34
  m.mood     :triumph
end

GameData::Memory.define :mem_eternatus_freed do |m|
  m.title    "The Dragon's Eyes Are Its Own"
  m.quote    "...the dark drains away."
  m.location "Asgaheim Throne, after"
  m.chapter  34
  m.mood     :awe
end

GameData::Memory.define :mem_marcus_at_grave do |m|
  m.title    "The Anniversary"
  m.quote    "He was easy to love."
  m.location "League Road"
  m.chapter  36
  m.mood     :grief
end

GameData::Memory.define :mem_engagement do |m|
  m.title    "The Question"
  m.quote    "Yes. That was always the answer."
  m.location "Sanctuary East-Field Hill"
  m.chapter  36
  m.mood     :love
end

GameData::Memory.define :mem_hoopa_returns do |m|
  m.title    "Hoopa Returns"
  m.quote    "...hello, world. I missed you very much."
  m.location "Distortion's Edge"
  m.chapter  47
  m.mood     :love
end

GameData::Memory.define :mem_wedding do |m|
  m.title    "The Wedding"
  m.quote    "I now pronounce you partners for life."
  m.location "Sanctuary"
  m.chapter  52
  m.mood     :love
end

GameData::Memory.define :mem_final_sunset do |m|
  m.title    "The Final Sunset"
  m.quote    "Always."
  m.location "Sanctuary Hilltop, decades later"
  m.chapter  55
  m.mood     :love
end


#===============================================================================
# UI - simple text-mode album viewer (replace with proper UI later if desired)
#===============================================================================
def pbOpenMemoryAlbum
  unlocked = GameData::Memory.all_unlocked
  if unlocked.empty?
    pbMessage(_INTL("Your album is empty for now."))
    return
  end

  total = GameData::Memory.count_total
  pbMessage(_INTL("\\bMemory Album\\b — {1} of {2} unlocked", unlocked.length, total))

  by_chapter = GameData::Memory.by_chapter
  chapter_keys = by_chapter.keys.sort

  loop do
    chapter_choices = chapter_keys.map { |c| _INTL("Chapter {1} ({2})", c, by_chapter[c].length) }
    chapter_choices << _INTL("Close Album")
    pick = pbShowCommands(nil, chapter_choices, chapter_choices.length - 1)
    break if pick == chapter_choices.length - 1 || pick < 0

    chapter = chapter_keys[pick]
    pbShowMemoryChapter(chapter, by_chapter[chapter])
  end
end

def pbShowMemoryChapter(chapter, memories)
  loop do
    titles = memories.map { |m| m[:title] }
    titles << _INTL("Back")
    pick = pbShowCommands(nil, titles, titles.length - 1)
    break if pick == titles.length - 1 || pick < 0

    mem = memories[pick]
    pbShowMemoryDetail(mem)
  end
end

def pbShowMemoryDetail(mem)
  pbMessage(_INTL("\\b{1}\\b", mem[:title]))
  pbMessage(_INTL("\\i[\"{1}\"]", mem[:quote]))
  pbMessage(_INTL("— {1}, Chapter {2}", mem[:location], mem[:chapter]))
end


#===============================================================================
# Hooks: Auto-unlock memories from existing cutscenes
#-------------------------------------------------------------------------------
# Each major story cutscene calls scMemory(:KEY) at its emotional beat.
# This helper centralizes that.
#===============================================================================
def scMemory(memory_id)
  GameData::Memory.unlock(memory_id) if defined?(GameData::Memory)
end


# Builder extension so cutscenes can call scene.memory :key
if defined?(GameData::CutsceneBuilder)
  module GameData
    class CutsceneBuilder
      def memory(memory_id)
        @steps << { type: :script, block: proc { scMemory(memory_id) } }
      end
    end
  end
end


#===============================================================================
# Save data
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_memories_unlocked, :sc_memory_unlock_times
end

SaveData.register(:sc_memories_unlocked) do
  ensure_class :Array
  save_value { $PokemonGlobal.sc_memories_unlocked ||= [] }
  load_value { |v| $PokemonGlobal.sc_memories_unlocked = v }
  new_game_value { [] }
end

SaveData.register(:sc_memory_unlock_times) do
  ensure_class :Hash
  save_value { $PokemonGlobal.sc_memory_unlock_times ||= {} }
  load_value { |v| $PokemonGlobal.sc_memory_unlock_times = v }
  new_game_value { {} }
end
