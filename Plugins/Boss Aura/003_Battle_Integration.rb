#===============================================================================
# Boss Aura - Battle Integration
# Hooks into the battle system to trigger aura effects automatically
#===============================================================================

#===============================================================================
# Battle start - trigger boss aura if data is set
#===============================================================================
class Battle
  alias boss_aura_pbStartBattle pbStartBattle
  def pbStartBattle
    # Store boss data before battle starts
    @boss_aura_data = BossAura.get_boss_data
    boss_aura_pbStartBattle
  end
  
  # Check if this is a boss battle
  def boss_battle?
    return @boss_aura_data && @boss_aura_data[:enabled]
  end
  
  # Get boss aura data
  def boss_aura_data
    return @boss_aura_data
  end
end

#===============================================================================
# Scene integration - play aura animation and apply stat boosts
#===============================================================================
class Battle::Scene
  alias boss_aura_pbBattleIntroAnimation pbBattleIntroAnimation
  def pbBattleIntroAnimation
    boss_aura_pbBattleIntroAnimation
    
    # Only trigger for wild battles (not trainer battles)
    return if @battle.opponent
    
    # Only trigger if boss data is set
    return if !@battle.boss_battle?
    
    # Only trigger for single wild battles
    return if @battle.pbParty(1).length > 1
    
    # Get the opposing battler (index 1 for single wild battles)
    battler = @battle.battlers[1]
    return if !battler || battler.fainted?
    
    # Get boss data
    boss_data = @battle.boss_aura_data
    stat_boosts = boss_data[:stat_boosts]
    
    # Apply stat boosts and show aura animation
    if stat_boosts && !stat_boosts.empty?
      pbRaiseBossStats(battler, stat_boosts)
    end
    
    # Clear boss data after use
    BossAura.clear_boss_data
  end
  
  #-----------------------------------------------------------------------------
  # Raise boss stats with aura animation
  #-----------------------------------------------------------------------------
  def pbRaiseBossStats(battler, stat_boosts)
    return if !battler || stat_boosts.empty?
    
    # Calculate average boost for message
    total_boost = 0
    stat_count = 0
    stat_name = nil
    
    # Apply each stat boost
    stat_boosts.each do |stat, increment|
      next if !stat || !increment || increment <= 0
      
      # Get stat ID
      stat_id = nil
      begin
        stat_id = GameData::Stat.get(stat).id
      rescue
        next
      end
      
      # Store stat name if only one stat is being boosted
      stat_name = GameData::Stat.get(stat_id).name if stat_boosts.length == 1
      
      # Apply the stat boost
      battler.pbRaiseStatStage(stat_id, increment, battler)
      
      total_boost += increment
      stat_count += 1
    end
    
    return if stat_count == 0
    
    # Play the aura flare animation
    pbBossAuraFlare(battler.index)
    
    # Determine message based on average boost
    avg_boost = total_boost.to_f / stat_count
    message_type = 0
    message_type = 1 if avg_boost >= 2
    message_type = 2 if avg_boost >= 3
    
    messages = [
      _INTL("increased"),
      _INTL("rose sharply"),
      _INTL("increased drastically")
    ]
    
    # Display message (v21.1 syntax)
    stat_text = stat_name ? stat_name : _INTL("stats")
    @battle.pbDisplay(_INTL("{1}'s Aura flared to life!\nIts {2} {3}!", 
                          battler.pbThis, stat_text, messages[message_type]))
  end
end

#===============================================================================
# Battle end - ensure boss data is cleared
#===============================================================================
class Battle
  alias boss_aura_pbEndOfBattle pbEndOfBattle
  def pbEndOfBattle
    BossAura.clear_boss_data
    boss_aura_pbEndOfBattle
  end
end
