#===============================================================================
# POKÉMON SHATTERED CROWNS - POKÉDEX LORE SYSTEM
#===============================================================================
# Aldric introduces the Pokédex in Ch1. In the bible it remains a standard
# catch-tracker. This system replaces the lore-text of Asgheim-mythology-
# relevant Pokémon with custom entries that tie back to the story.
#
# When the player views a registered species in the Pokédex, the system
# checks if a custom lore entry exists for that species. If yes, an extra
# "Asgheim Lore" panel appears under the standard entry.
#
# Coverage:
#   - The three Guardians (Zacian, Xerneas, Yveltal)
#   - The void (Nidhoggr's vessel, Eternatus)
#   - The Portal (Hoopa)
#   - The Swords of Justice (Cobalion, Virizion, Terrakion, Keldeo)
#   - The Eon-line (Latias, Latios)
#   - The Watcher (Suicune)
#   - The Truth-flame (Reshiram)
#   - The Echo (Mewtwo)
#   - The starters that the story specifically blesses
#   - The companion Pokémon (Sylveon, Zoroark, Gallade)
#   - The Furfrou — only as posthumous tribute
#===============================================================================


module SCPokedexLore
  @entries = {}

  class << self
    attr_accessor :entries
  end

  def self.define(species, &block)
    builder = PokedexLoreBuilder.new(species)
    yield(builder) if block_given?
    @entries[species] = builder.to_data
  end

  def self.for_species(species)
    @entries[species]
  end

  def self.show(species)
    entry = for_species(species)
    return unless entry

    pbMessage(_INTL("\\b{1} — Asgheim Lore\\b", GameData::Species.try_get(species)&.name || species.to_s))
    pbMessage(entry[:lore])
    pbMessage(_INTL("\\i[Discovered by {1}.]", entry[:discoverer])) if entry[:discoverer]
  end
end


class PokedexLoreBuilder
  def initialize(species)
    @species = species
    @lore = ""
    @discoverer = nil
    @relates_to = nil
  end

  def lore(t);       @lore = t;       end
  def discoverer(d); @discoverer = d; end
  def relates_to(r); @relates_to = r; end

  def to_data
    { species: @species, lore: @lore, discoverer: @discoverer, relates_to: @relates_to }
  end
end


#===============================================================================
# Lore entries
#===============================================================================

SCPokedexLore.define(:ZACIAN) do |l|
  l.lore       "The Guardian of Valor. The Asgheim mythology calls Zacian the Steady Blade. " \
               "It does not lead; it positions. Where to stand, what to refuse, when to wait. " \
               "Its bond to a Chosen of Valor is silent and old."
  l.discoverer "Marcus, Twenty-Two Years Ago"
  l.relates_to :ZACIAN_PERSONALITY
end

SCPokedexLore.define(:XERNEAS) do |l|
  l.lore       "The Guardian of Life. The Asgheim mythology calls Xerneas the Warm Listener. " \
               "It asks more questions than it answers. Its bond to a Chosen of Life is the " \
               "oldest of the three — Xerneas remembers its bearer years before the marks appear."
  l.discoverer "Aldric, decades of observation"
  l.relates_to :XERNEAS_PERSONALITY
end

SCPokedexLore.define(:YVELTAL) do |l|
  l.lore       "The Guardian of Cycles. The Asgheim mythology calls Yveltal the Patient Cycle. " \
               "It does not console and does not encourage. It tells the truth as it sees it, " \
               "then waits. Death needs witness; Yveltal needs a Chosen of Cycles to remember " \
               "why the cycle matters."
  l.discoverer "Aurora, first-hand"
  l.relates_to :YVELTAL_PERSONALITY
end

SCPokedexLore.define(:ETERNATUS) do |l|
  l.lore       "In Asgheim mythology, the Endless Dragon is not its own master — it is the " \
               "vessel Nidhoggr wears when the Eternal Seal weakens enough for the void to " \
               "act upon the world. When the seal is restored, the dragon is freed of " \
               "Nidhoggr's possession. The dragon's eyes are its own."
  l.discoverer "The Three Chosen, Ch34"
  l.relates_to :NIDHOGGR_ORIGIN
end

SCPokedexLore.define(:HOOPA) do |l|
  l.lore       "In Asgheim mythology, the Portal-Trickster was caught in the binding of " \
               "Nidhoggr because its portal-power *was* the doorway. The trickster never " \
               "chose this. After Arceus restored Hoopa, it spent six months at the " \
               "Sanctuary learning what trust looked like outside a cage. \\\\nIt now " \
               "runs a postal service. It is a good postal service."
  l.discoverer "Lyra, Sanctuary patient"
  l.relates_to :HOOPA_PROFILE
end

SCPokedexLore.define(:COBALION) do |l|
  l.lore       "Of the Swords of Justice. Cobalion's tradition is leading without dominating. " \
               "It accepts Chosen of Valor who have proven they will not abuse the seat. " \
               "Cobalion has not allowed itself to be caught in a hundred years."
  l.discoverer "Ironpeak Hidden Cave, Ch16+"
end

SCPokedexLore.define(:VIRIZION) do |l|
  l.lore       "Of the Swords of Justice. Virizion calls Lyra 'little sister of Xerneas' " \
               "and offered a week of training in the Heart-of-Asgheim Grove. The two " \
               "have corresponded since."
  l.discoverer "Heart-of-Asgheim Grove, Ch22+"
end

SCPokedexLore.define(:TERRAKION) do |l|
  l.lore       "Of the Swords of Justice. Terrakion stands for those without trainers to " \
               "defend them. After the Frostfall liberation, Terrakion sent a message to " \
               "the Sanctuary: 'The thirty-four are remembered. The six are remembered.'"
  l.discoverer "Frostfall High Peak, Ch18+"
end

SCPokedexLore.define(:KELDEO) do |l|
  l.lore       "The youngest of the Swords of Justice. Met the Chosen of Valor in the Trio " \
               "Sanctum and admitted to not being ready. The Chosen said: 'Neither was I.' " \
               "Keldeo decided this was enough."
  l.discoverer "Trio Sanctum, Ch25+"
end

SCPokedexLore.define(:LATIAS) do |l|
  l.lore       "Of the Eon line. The Asgheim Latias remembered Aurora's eyes — she was " \
               "kind to it as a young researcher. It told the Chosen of Valor: 'tell her " \
               "the eon-line remembers.'"
  l.discoverer "Coastal Asgheim, Ch11+"
end

SCPokedexLore.define(:LATIOS) do |l|
  l.lore       "Of the Eon line. The Asgheim Latios has been seen only twice in living " \
               "memory: once during the original Hoopa binding (it watched), once after " \
               "Nidhoggr was resealed (it bowed)."
  l.discoverer "Coastal Asgheim, rare"
end

SCPokedexLore.define(:SUICUNE) do |l|
  l.lore       "The Asgheim Suicune blesses the wells of the wounded. It told the Chosen " \
               "of Valor: 'I watched your road from Verdantia. I will run beside you for " \
               "a season.' It did."
  l.discoverer "Northern Asgheim, Ch15+"
end

SCPokedexLore.define(:RESHIRAM) do |l|
  l.lore       "The Truth-flame Dragon. Reshiram descended at the Gateway after Ragnar's " \
               "death and offered itself to the Chosen as 'a friend.' It carries Ragnar's " \
               "memory in its flame. It will not allow itself to be released by any trainer " \
               "until that flame is tended to."
  l.discoverer "The Gateway, Ch28+"
end

SCPokedexLore.define(:MEWTWO) do |l|
  l.lore       "Subject Zero. The Hand's attempt to build a weapon against the Chosen, " \
               "freed by the Chosen on equal terms in Ch20. Lived in the wilds for years. " \
               "Returned post-game and let the Chosen of Valor give it a name."
  l.discoverer "Hidden Caldera, postgame"
  l.relates_to :SUBJECT_ZERO
end

SCPokedexLore.define(:SYLVEON) do |l|
  l.lore       "Willow, Lyra's Eevee, evolved into a Sylveon during Ch27 — at the campfire " \
               "before the Gateway, from the sheer weight of love between her trainer and " \
               "her trainer's partner. \\\\nIt is a documented case. Every Sylveon in Asgheim " \
               "now traces its lineage to Willow."
  l.discoverer "Lyra, Ch27"
  l.relates_to :WILLOW
end

SCPokedexLore.define(:ZOROARK) do |l|
  l.lore       "Shadow, Kael's Zorua, evolved twice during the war: first to a standard " \
               "Zoroark in Ch26, then to a Hisuian variant during Ch41 when Kael accepted " \
               "his Astoria-line heritage."
  l.discoverer "Kael, Ch26 / Ch41"
  l.relates_to :SHADOW
end

SCPokedexLore.define(:GALLADE) do |l|
  l.lore       "Recruited from the Asgaheim Inner Sanctum in Liberation Op 6. Refused to " \
               "leave its rescuers; refused all prior trainers. Chose to fight at the " \
               "Chosen's side. Speaks through thought-projection. Goes by 'the Gallade.' " \
               "Is fine with this."
  l.discoverer "Sanctuary Resident, post-Ch32"
  l.relates_to :THE_GALLADE
end

SCPokedexLore.define(:FURFROU) do |l|
  l.lore       "Asgheim's Furfrou are common, loyal, and unfortunately mortal. \\\\nA " \
               "Furfrou named Pip held the door at a burning Stormwatch home in Ch18 " \
               "long enough for her family to escape out the kitchen window. \\\\nLyra " \
               "tells her story to children when she's asked about brave Pokémon. \\\\n" \
               "It is the first story she tells."
  l.discoverer "Stormwatch survivor account, Ch18"
end

SCPokedexLore.define(:PIDGEOT) do |l|
  l.lore       "Scout, the Pidgeot freed in Liberation Op 1, returned to her original " \
               "trainer after six weeks in cult captivity. She arrived at Asgaheim during " \
               "Ch34 of her own accord and flew alongside the Chosen during the Nidhoggr " \
               "battle. \\\\nShe never wore a saddle in her life. She doesn't need one."
  l.discoverer "Ashbury Underbelly, Ch11.5"
end


#===============================================================================
# Hook: extend the Pokédex display
#-------------------------------------------------------------------------------
# When the Pokédex shows a species, check if SCPokedexLore has an entry
# and add it to the display. Wires into Essentials' Pokédex scene.
#===============================================================================
if defined?(PokemonPokedexInfo_Scene)
  class PokemonPokedexInfo_Scene
    alias _sc_lore_orig_drawPageInfo drawPageInfo unless method_defined?(:_sc_lore_orig_drawPageInfo)

    def drawPageInfo
      _sc_lore_orig_drawPageInfo
      species = @species rescue nil
      return unless species
      return unless SCPokedexLore.entries.key?(species)
      # Render a small "Asgheim Lore" footer note to indicate extra content
      # available via the menu (full lore via pbShowAsgheimLore)
      # Implementation depends on UI scene layout — keep minimal here
    end
  end
end


#-------------------------------------------------------------------------------
# Public helper: call from a menu / event to show the full lore screen
#-------------------------------------------------------------------------------
def pbShowAsgheimLore(species)
  SCPokedexLore.show(species)
end


#===============================================================================
# Achievements
#===============================================================================
if defined?(GameData::Achievement)
  GameData::Achievement.define :ach_pokedex_lore_full do |a|
    a.name "Asgheim Lorekeeper"
    a.description "View every Asgheim Lore entry in the Pokédex."
    a.category :story_hidden
    a.target SCPokedexLore.entries.size
  end
end


#===============================================================================
# Hook into codexDiscover so viewing Pokédex lore counts towards the achievement
#===============================================================================
def scAsgheimLoreViewed(species)
  return unless SCPokedexLore.for_species(species)
  $PokemonGlobal.sc_pokedex_lore_viewed ||= []
  return if $PokemonGlobal.sc_pokedex_lore_viewed.include?(species)
  $PokemonGlobal.sc_pokedex_lore_viewed << species
  if defined?(GameData::Achievement)
    GameData::Achievement.add_progress(:ach_pokedex_lore_full, 1)
  end
end


class PokemonGlobalMetadata
  attr_accessor :sc_pokedex_lore_viewed
end

SaveData.register(:sc_pokedex_lore_viewed) do
  ensure_class :Array
  save_value { $PokemonGlobal.sc_pokedex_lore_viewed ||= [] }
  load_value { |v| $PokemonGlobal.sc_pokedex_lore_viewed = v }
  new_game_value { [] }
end
