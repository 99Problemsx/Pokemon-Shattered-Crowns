#===============================================================================
# Challenge Modes - Trainer Scaling Integration
# Automatically makes trainers harder when challenge modes are active
#===============================================================================

module ChallengeModes
  # Configuration for trainer scaling
  TRAINER_SCALING = {
    # Level boost when challenge modes are active
    :level_boost => 2,

    # Chance to add extra Pokemon to trainer parties (0-100)
    :extra_pokemon_chance => 40,

    # Chance to upgrade Pokemon to evolved forms (0-100)
    :evolution_upgrade_chance => 30,

    # Give trainers better items
    :better_items => true,

    # Improve IVs for trainer Pokemon
    :improved_ivs => true,

    # Add held items to trainer Pokemon
    :held_items => true,

    # Print scaling info to the console (every trainer battle).
    # Off by default — only useful while debugging this file.
    :debug_log => false
  }
end

#===============================================================================
# Hook into Battle initialization to scale trainer parties
#===============================================================================
class Battle
  alias challenge_scaling_initialize initialize unless method_defined?(:challenge_scaling_initialize)
  
  def initialize(*args)
    challenge_scaling_initialize(*args)
    
    # Only scale if TRAINER_SCALING rule is active
    return unless ChallengeModes.on?(:TRAINER_SCALING)
    
    # Apply scaling to opponent trainers
    if @opponent && @opponent.is_a?(Array)
      @opponent.each_with_index do |trainer, i|
        next unless trainer
        scale_trainer_party(trainer) if trainer.party
      end
    elsif @opponent
      scale_trainer_party(@opponent) if @opponent.party
    end
  end
  
  private
  
  def scale_trainer_party(trainer)
    return unless trainer
    debug = ChallengeModes::TRAINER_SCALING[:debug_log]

    echoln "[Challenge Modes] Scaling trainer: #{trainer.name}" if debug

    # Deep-copy the party so scaling does not mutate cached Trainer objects
    # (e.g. Rematch / NPCTrainer cache). Without this, every battle compounds
    # +level_boost levels, +IV bumps and extra Pokemon onto the same objects.
    trainer.party.replace(Marshal.load(Marshal.dump(trainer.party)))

    scaled_party = []
    trainer.party.each do |pkmn|
      next unless pkmn

      # Apply level boost
      if ChallengeModes::TRAINER_SCALING[:level_boost] > 0
        old_level = pkmn.level
        new_level = (old_level + ChallengeModes::TRAINER_SCALING[:level_boost]).clamp(1, 100)
        pkmn.level = new_level
        pkmn.calc_stats
        echoln "[Challenge Modes]   #{pkmn.name}: Lv.#{old_level} -> Lv.#{new_level}" if debug
      end

      # Try to evolve Pokemon
      if rand(100) < ChallengeModes::TRAINER_SCALING[:evolution_upgrade_chance]
        evolved = try_evolve_trainer_pokemon(pkmn)
        echoln "[Challenge Modes]   #{pkmn.name} evolved to #{evolved.name}" if debug && evolved != pkmn
      end

      # Improve IVs
      if ChallengeModes::TRAINER_SCALING[:improved_ivs]
        GameData::Stat.each_main do |s|
          pkmn.iv[s.id] = 25 if pkmn.iv[s.id] < 25
        end
        pkmn.calc_stats
      end

      # Add held item if none
      if ChallengeModes::TRAINER_SCALING[:held_items] && !pkmn.item
        item = suggest_held_item_for_pokemon(pkmn)
        if item
          pkmn.item = item
          if debug
            data = GameData::Item.try_get(item)
            echoln "[Challenge Modes]   #{pkmn.name} given #{data ? data.name : item}"
          end
        end
      end

      scaled_party << pkmn
    end

    # Chance to add extra Pokemon
    if scaled_party.length < 6 && rand(100) < ChallengeModes::TRAINER_SCALING[:extra_pokemon_chance]
      extra_pkmn = generate_extra_trainer_pokemon(scaled_party)
      if extra_pkmn
        scaled_party << extra_pkmn
        echoln "[Challenge Modes]   Added extra Pokemon: #{extra_pkmn.name} Lv.#{extra_pkmn.level}" if debug
      end
    end

    # Assign the scaled party back to the trainer
    trainer.party.replace(scaled_party)

    # Better items for trainer
    if ChallengeModes::TRAINER_SCALING[:better_items]
      upgrade_trainer_items(trainer)
    end
  end
  
  def try_evolve_trainer_pokemon(pkmn)
    species_data = GameData::Species.try_get(pkmn.species)
    return pkmn unless species_data
    evolutions = species_data.get_evolutions
    return pkmn if evolutions.empty?
    
    # Get first evolution that doesn't require special conditions
    evolutions.each do |evo|
      method = evo[1]
      # Only evolve via level-up methods
      if method == :Level || method == :LevelMale || method == :LevelFemale || 
         method == :Ninjask || method == :Shedinja
        original_level = pkmn.level  # Save level before species change
        pkmn.species = evo[0]
        pkmn.level = original_level  # Restore level (species= nils @level, causing growth-rate mismatch)
        pkmn.calc_stats
        return pkmn
      end
    end
    
    pkmn
  end
  
  def suggest_held_item_for_pokemon(pkmn)
    species_data = GameData::Species.try_get(pkmn.species)
    return :SITRUSBERRY unless species_data

    # Type-based items
    case species_data.types.first
    when :FIRE then :CHARCOAL
    when :WATER then :MYSTICWATER
    when :GRASS then :MIRACLESEED
    when :ELECTRIC then :MAGNET
    when :PSYCHIC then :TWISTEDSPOON
    when :FIGHTING then :BLACKBELT
    when :DARK then :BLACKGLASSES
    when :DRAGON then :DRAGONFANG
    when :GHOST then :SPELLTAG
    when :POISON then :POISONBARB
    when :ICE then :NEVERMELTICE
    when :BUG then :SILVERPOWDER
    when :ROCK then :HARDSTONE
    when :GROUND then :SOFTSAND
    when :STEEL then :METALCOAT
    when :FLYING then :SHARPBEAK
    when :FAIRY then :PIXIEPLATE
    else :SITRUSBERRY
    end
  end
  
  def generate_extra_trainer_pokemon(party)
    return nil if party.empty?
    
    # Base on strongest Pokemon in party
    strongest = party.max_by { |p| p.level }
    return nil unless strongest
    
    # Get a similar species (same type preferred)
    species_data = GameData::Species.try_get(strongest.species)
    return nil unless species_data
    possible_species = []
    
    GameData::Species.each do |sp|
      next if sp.form != 0
      next if sp.mega_stone || sp.mega_move
      next if sp.species == strongest.species
      
      # Prefer same type
      if (sp.types & species_data.types).any?
        possible_species << sp.species
      end
    end
    
    # Fallback to any species
    possible_species = [:PIDGEY, :RATTATA, :ZIGZAGOON, :LILLIPUP, :PATRAT] if possible_species.empty?
    
    new_species = possible_species.sample
    new_level = [strongest.level - rand(1..3), 1].max
    
    pkmn = Pokemon.new(new_species, new_level)
    pkmn.item = suggest_held_item_for_pokemon(pkmn)
    pkmn.reset_moves
    
    # Set IVs
    GameData::Stat.each_main { |s| pkmn.iv[s.id] = 20 }
    pkmn.calc_stats
    
    pkmn
  end
  
  def upgrade_trainer_items(trainer)
    return unless trainer.items
    
    upgraded_items = []
    trainer.items.each do |item|
      upgraded = case item
      when :POTION then :SUPERPOTION
      when :SUPERPOTION then :HYPERPOTION
      when :HYPERPOTION then :FULLRESTORE
      when :REVIVE then :MAXREVIVE
      else item
      end
      upgraded_items << upgraded
    end
    
    # Add extra Full Restore if they have less than 2 items
    upgraded_items << :FULLRESTORE if upgraded_items.length < 2
    
    trainer.items = upgraded_items
    echoln "[Challenge Modes]   Upgraded trainer items: #{upgraded_items.inspect}" if ChallengeModes::TRAINER_SCALING[:debug_log]
  end
end