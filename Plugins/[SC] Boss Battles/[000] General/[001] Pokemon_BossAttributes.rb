#===============================================================================
# Boss Battles — Pokemon-level Boss Attributes
#===============================================================================
class Pokemon
  attr_accessor :passive_ability, :boss_pokemon

  #-----------------------------------------------------------------------------
  # Nil-safe getters for save compatibility.
  #-----------------------------------------------------------------------------
  def passive_ability
    return @passive_ability
  end

  def boss_pokemon
    return @boss_pokemon || false
  end

  #-----------------------------------------------------------------------------
  # Calculate number of shields based on level, BST, and legendary status.
  #-----------------------------------------------------------------------------
  def boss_shield_count
    count = Settings::BOSS_BASE_SHIELDS
    count += 1 if self.level >= Settings::BOSS_HIGH_LEVEL_THRESH
    bst = 0
    species_data.base_stats.each_value { |v| bst += v }
    count += 1 if bst >= Settings::BOSS_HIGH_BST_THRESH
    if species_data.has_flag?("Legendary") || species_data.has_flag?("Mythical")
      count += 1
    end
    return count
  end

  #-----------------------------------------------------------------------------
  # Returns true if this Pokemon should automatically be a boss.
  #-----------------------------------------------------------------------------
  def auto_boss?
    return false if !Settings::BOSS_AUTO_LEGENDARY
    return species_data.has_flag?("Legendary") || species_data.has_flag?("Mythical")
  end
end
