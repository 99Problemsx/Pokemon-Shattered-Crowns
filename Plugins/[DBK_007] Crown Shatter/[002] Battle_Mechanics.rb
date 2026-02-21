#===============================================================================
# Crown Shatter — PBEffects & Battle Data
#===============================================================================
# Defines new PBEffects constants for the Shatter mechanic and hooks into
# the Battle class initialization + end-of-round processing.
#===============================================================================

#===============================================================================
# New PBEffects Constants
#===============================================================================
module PBEffects
  #-----------------------------------------------------------------------------
  # Field-scope effects (913+)
  #-----------------------------------------------------------------------------
  ShatterField       = 913   # Counter: turns remaining for Shatter Field
  ShatterFieldType   = 914   # Integer: type ID of active Shatter Field (stored as symbol)

  #-----------------------------------------------------------------------------
  # Side-scope effects (833+)
  #-----------------------------------------------------------------------------
  ShatterUsed        = 833   # Boolean: has this side used their Shatter this battle?
end

#===============================================================================
# Register in $DELUXE_PBEFFECTS for DBK compatibility
#===============================================================================
if defined?($DELUXE_PBEFFECTS)
  $DELUXE_PBEFFECTS[:field][:counter] << :ShatterField
  # ShatterFieldType is stored as a symbol, not boolean/counter — tracked manually
end

#===============================================================================
# Initialize effects in Battle::ActiveField
#===============================================================================
class Battle::ActiveField
  alias shatter_initialize initialize
  def initialize
    shatter_initialize
    @effects[PBEffects::ShatterField]     = 0
    @effects[PBEffects::ShatterFieldType] = nil
  end
end

#===============================================================================
# Initialize effects in Battle::ActiveSide
#===============================================================================
class Battle::ActiveSide
  alias shatter_initialize initialize
  def initialize
    shatter_initialize
    @effects[PBEffects::ShatterUsed] = false
  end
end

#===============================================================================
# Battle class — Core Crown Shatter Logic
#===============================================================================
class Battle
  attr_accessor :crown_shatter  # Tracking array: [side][owner] = -1 / idxBattler / -2

  #=============================================================================
  # Initialize
  #=============================================================================
  alias shatter_initialize initialize
  def initialize(*args)
    shatter_initialize(*args)
    @crown_shatter = [
      [-1] * (@player ? @player.length : 1),
      [-1] * (@opponent ? @opponent.length : 1)
    ]
  end

  #=============================================================================
  # Eligibility — Can this battler Shatter?
  #=============================================================================
  def pbCanShatter?(idxBattler)
    return false if $game_switches[Settings::NO_CROWN_SHATTER]
    battler = @battlers[idxBattler]
    return false if !battler || battler.fainted?
    return false if battler.effects[PBEffects::SkyDrop] >= 0
    # Must have enough HP to survive the cost
    hp_cost = (battler.totalhp * Settings::SHATTER_HP_COST).ceil
    return false if battler.hp <= hp_cost
    # One Shatter per side per battle
    side = battler.idxOwnSide
    return false if @sides[side].effects[PBEffects::ShatterUsed]
    # Check tracking array
    owner = pbGetOwnerIndexFromBattlerIndex(idxBattler)
    return @crown_shatter[side][owner] == -1
  end

  #=============================================================================
  # Registration
  #=============================================================================
  def pbRegisterShatter(idxBattler)
    side  = @battlers[idxBattler].idxOwnSide
    owner = pbGetOwnerIndexFromBattlerIndex(idxBattler)
    @crown_shatter[side][owner] = idxBattler
  end

  def pbUnregisterShatter(idxBattler)
    side  = @battlers[idxBattler].idxOwnSide
    owner = pbGetOwnerIndexFromBattlerIndex(idxBattler)
    @crown_shatter[side][owner] = -1
  end

  def pbToggleRegisteredShatter(idxBattler)
    side  = @battlers[idxBattler].idxOwnSide
    owner = pbGetOwnerIndexFromBattlerIndex(idxBattler)
    if @crown_shatter[side][owner] == idxBattler
      @crown_shatter[side][owner] = -1
    else
      @crown_shatter[side][owner] = idxBattler
    end
  end

  def pbRegisteredShatter?(idxBattler)
    side  = @battlers[idxBattler].idxOwnSide
    owner = pbGetOwnerIndexFromBattlerIndex(idxBattler)
    return @crown_shatter[side][owner] == idxBattler
  end

  #=============================================================================
  # Execution — Perform the Shatter
  #=============================================================================
  def pbCrownShatter(idxBattler)
    battler = @battlers[idxBattler]
    return if !battler || battler.fainted?
    shatter_type = battler.pokemon.types[0]  # Primary type
    shatter_type = :NORMAL if !shatter_type || !CrownShatter::SHATTER_FIELDS[shatter_type]
    field_data = CrownShatter::SHATTER_FIELDS[shatter_type]
    return unless field_data
    # Midbattle trigger: Before
    pbDeluxeTriggers(idxBattler, nil, "BeforeCrownShatter", battler.species, shatter_type) if respond_to?(:pbDeluxeTriggers)
    # Hide substitute for animation
    @scene.pbAnimateSubstitute(idxBattler, :hide) if @scene.respond_to?(:pbAnimateSubstitute)
    # Pay HP cost
    hp_cost = (battler.totalhp * Settings::SHATTER_HP_COST).ceil
    battler.pbReduceHP(hp_cost, false)
    pbDisplay(_INTL("{1} shattered a crown fragment!", battler.pbThis))
    # Play animation
    pbAnimateCrownShatter(battler, shatter_type) if Settings::SHATTER_ANIMATION
    # Handle Normal field: clear everything first
    if shatter_type == :NORMAL
      pbClearAllFieldEffects
    end
    # Set the Shatter Field
    @field.effects[PBEffects::ShatterField]     = Settings::SHATTER_FIELD_DURATION
    @field.effects[PBEffects::ShatterFieldType] = shatter_type
    pbDisplay(_INTL(field_data[:message]))
    # Apply immediate effects (weather, stat changes, etc.)
    apply_shatter_immediate_effects(shatter_type, field_data, idxBattler)
    # Mark as used
    side  = battler.idxOwnSide
    owner = pbGetOwnerIndexFromBattlerIndex(idxBattler)
    @crown_shatter[side][owner] = -2
    @sides[side].effects[PBEffects::ShatterUsed] = true
    # Re-show substitute
    @scene.pbAnimateSubstitute(idxBattler, :show) if @scene.respond_to?(:pbAnimateSubstitute)
    # Midbattle trigger: After
    pbDeluxeTriggers(idxBattler, nil, "AfterCrownShatter", battler.species, shatter_type) if respond_to?(:pbDeluxeTriggers)
  end

  #=============================================================================
  # Animation (placeholder — uses common animation or custom)
  #=============================================================================
  def pbAnimateCrownShatter(battler, type)
    if @scene.respond_to?(:pbAnimation)
      # Try to use a custom common animation named "CrownShatter"
      anim_id = GameData::Animation.try_get(:CROWN_SHATTER)&.id rescue nil
      if anim_id
        @scene.pbAnimation(anim_id, battler, battler)
      else
        # Fallback: brief flash
        @scene.pbAnimation(:NONE, battler, battler) rescue nil
      end
    end
  end

  #=============================================================================
  # Clear all active field effects (Normal Shatter)
  #=============================================================================
  def pbClearAllFieldEffects
    # Clear weather
    @field.weather  = :None
    @field.weatherDuration = 0
    pbDisplay(_INTL("All weather was cleared!"))
    # Clear terrain
    if @field.terrain != :None
      @field.terrain = :None
      @field.terrainDuration = 0
      pbDisplay(_INTL("All terrain was cleared!"))
    end
    # Clear field-scope effects
    @field.effects.each_with_index do |val, i|
      next if i == PBEffects::ShatterField || i == PBEffects::ShatterFieldType
      if val.is_a?(Integer) && val > 0
        @field.effects[i] = 0
      elsif val == true
        @field.effects[i] = false
      end
    end
    # Clear side effects (screens, hazards) for BOTH sides
    2.times do |side|
      [PBEffects::Reflect, PBEffects::LightScreen, PBEffects::AuroraVeil,
       PBEffects::Safeguard, PBEffects::Mist, PBEffects::Tailwind,
       PBEffects::StealthRock, PBEffects::StickyWeb].each do |eff|
        next unless @sides[side].effects[eff]
        if @sides[side].effects[eff].is_a?(Integer)
          @sides[side].effects[eff] = 0
        else
          @sides[side].effects[eff] = false
        end
      end
      # Clear Spikes + Toxic Spikes
      @sides[side].effects[PBEffects::Spikes]      = 0 if @sides[side].effects[PBEffects::Spikes]
      @sides[side].effects[PBEffects::ToxicSpikes]  = 0 if @sides[side].effects[PBEffects::ToxicSpikes]
    end
    pbDisplay(_INTL("All field distortions were purged!"))
  end

  #=============================================================================
  # Apply immediate effects on Shatter activation
  #=============================================================================
  def apply_shatter_immediate_effects(type, field_data, idxBattler)
    effects = field_data[:effects]
    return unless effects
    # Weather
    if effects[:set_weather]
      weather_sym = effects[:set_weather]
      case weather_sym
      when :Hail
        pbStartWeather(nil, :Hail, true)
      when :Sandstorm
        pbStartWeather(nil, :Sandstorm, true)
      when :Sun
        pbStartWeather(nil, :Sun, true)
      when :Rain
        pbStartWeather(nil, :Rain, true)
      end
    end
    # Steel Field: +1 Def to all
    if effects[:def_boost_all]
      allBattlers.each do |b|
        next if b.fainted?
        b.pbRaiseStatStage(:DEFENSE, effects[:def_boost_all], b, true) rescue nil
      end
    end
    # Rock/Ruin Field: -1 accuracy to non-immune types
    if effects[:accuracy_drop_non]
      immune = effects[:accuracy_drop_non][:immune_types] || []
      allBattlers.each do |b|
        next if b.fainted?
        next if b.pbTypes(true).any? { |t| immune.include?(t) }
        b.pbLowerStatStage(:ACCURACY, effects[:accuracy_drop_non][:amount], b, true) rescue nil
      end
    end
  end

  #=============================================================================
  # End-of-Round: Shatter Field Countdown & Per-Turn Effects
  #=============================================================================
  alias shatter_pbEndOfRoundPhase pbEndOfRoundPhase
  def pbEndOfRoundPhase
    ret = shatter_pbEndOfRoundPhase
    pbShatterEndOfRound if @field.effects[PBEffects::ShatterField] > 0
    return ret
  end

  def pbShatterEndOfRound
    shatter_type = @field.effects[PBEffects::ShatterFieldType]
    field_data = CrownShatter::SHATTER_FIELDS[shatter_type]
    return unless field_data
    effects = field_data[:effects] || {}
    #---------------------------------------------------------------------------
    # Per-Turn Effects
    #---------------------------------------------------------------------------
    # Chip damage (Fire: Scorched Field)
    if effects[:chip_damage]
      fraction    = effects[:chip_damage][:fraction] || 16
      immune_types = effects[:chip_damage][:immune_types] || []
      allBattlers.each do |b|
        next if b.fainted?
        next if b.pbTypes(true).any? { |t| immune_types.include?(t) }
        damage = [b.totalhp / fraction, 1].max
        b.pbReduceHP(damage, false)
        pbDisplay(_INTL("{1} is hurt by the {2}!", b.pbThis, field_data[:name]))
        b.pbFaint if b.fainted?
      end
    end
    # Grounded heal (Grass: Overgrown Field)
    if effects[:grounded_heal]
      fraction = effects[:grounded_heal][:fraction] || 8
      allBattlers.each do |b|
        next if b.fainted?
        next unless b.affectedByTerrain?  # grounded check
        next if b.hp == b.totalhp
        heal = [b.totalhp / fraction, 1].max
        b.pbRecoverHP(heal, false)
        pbDisplay(_INTL("{1} recovered health from the {2}!", b.pbThis, field_data[:name]))
      end
    end
    # Poison heal (Poison: Toxic Field)
    if effects[:poison_heal]
      fraction = effects[:poison_heal][:fraction] || 16
      allBattlers.each do |b|
        next if b.fainted?
        next unless b.pbHasType?(:POISON)
        next if b.hp == b.totalhp
        heal = [b.totalhp / fraction, 1].max
        b.pbRecoverHP(heal, false)
        pbDisplay(_INTL("{1} absorbed toxins from the {2}!", b.pbThis, field_data[:name]))
      end
    end
    # Speed drop per turn (Ice: Frozen Field)
    if effects[:speed_drop_per_turn]
      immune_types = effects[:speed_drop_per_turn][:immune_types] || []
      allBattlers.each do |b|
        next if b.fainted?
        next if b.pbTypes(true).any? { |t| immune_types.include?(t) }
        b.pbLowerStatStage(:SPEED, 1, b, true) rescue nil
      end
    end
    # Strip boosts at end of turn (Dark: Eclipse Field)
    if effects[:strip_boosts_eot]
      allBattlers.each do |b|
        next if b.fainted?
        had_boosts = false
        GameData::Stat.each_battle do |s|
          if b.stages[s.id] && b.stages[s.id] > 0
            b.stages[s.id] = 0
            had_boosts = true
          end
        end
        pbDisplay(_INTL("{1}'s stat boosts were eclipsed!", b.pbThis)) if had_boosts
      end
    end
    # Haunt chip (Ghost: Spirit Field — fainted mons deal chip based on their types)
    if effects[:haunt_chip]
      fraction = effects[:haunt_chip][:fraction] || 8
      fainted_types = []
      allBattlers.each do |b|
        next unless b.fainted?
        fainted_types.concat(b.pokemon.types) if b.pokemon
      end
      fainted_types.uniq!
      if fainted_types.length > 0
        allBattlers.each do |b|
          next if b.fainted?
          damage = [b.totalhp / fraction, 1].max
          b.pbReduceHP(damage, false)
          pbDisplay(_INTL("{1} is haunted by lingering spirits!", b.pbThis))
          b.pbFaint if b.fainted?
        end
      end
    end
    #---------------------------------------------------------------------------
    # Countdown
    #---------------------------------------------------------------------------
    @field.effects[PBEffects::ShatterField] -= 1
    if @field.effects[PBEffects::ShatterField] <= 0
      @field.effects[PBEffects::ShatterField]     = 0
      @field.effects[PBEffects::ShatterFieldType] = nil
      pbDisplay(_INTL(field_data[:end_message]))
    end
  end

  #=============================================================================
  # Query: Is a Shatter Field active?
  #=============================================================================
  def shatterFieldActive?
    @field.effects[PBEffects::ShatterField] > 0
  end

  def shatterFieldType
    @field.effects[PBEffects::ShatterFieldType]
  end
end
