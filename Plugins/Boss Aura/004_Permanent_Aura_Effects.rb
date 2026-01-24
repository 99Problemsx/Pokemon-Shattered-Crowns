#===============================================================================
# Boss Aura - Permanent Visual Effects (EBDX Exact Implementation)
# Persistent aura effects that remain active throughout the battle
# Ported from EBDX DynamicPokemonSprite.chargedUpdate
#===============================================================================

class Battle::Scene
  #-----------------------------------------------------------------------------
  # Initialize boss aura sprites for a battler (EBDX style)
  #-----------------------------------------------------------------------------
  def pbInitializeBossAura(idxBattler)
    return if !@battle.battlers[idxBattler]
    
    # Get battler sprite
    battlerSprite = @sprites["pokemon_#{idxBattler}"]
    return if !battlerSprite
    
    # Initialize aura sprite hash
    @bossAuraSprites ||= {}
    @bossAuraSprites[idxBattler] ||= {}
    
    # Create charged particle sprites (12 particles like EBDX)
    for i in 0...12
      key = "c#{i}"
      @bossAuraSprites[idxBattler][key] = Sprite.new(@viewport)
      
      # Load charged particle bitmap (EBDX ebCharged)
      bmp = AnimatedBitmap.new("Graphics/Battle animations/AURAFLARE/ebCharged")
      @bossAuraSprites[idxBattler][key].bitmap = bmp.bitmap
      
      if @bossAuraSprites[idxBattler][key].bitmap
        # EBDX uses 4 frames in sprite sheet
        @bossAuraSprites[idxBattler][key].ox = @bossAuraSprites[idxBattler][key].bitmap.width / 8
        @bossAuraSprites[idxBattler][key].oy = @bossAuraSprites[idxBattler][key].bitmap.height
        @bossAuraSprites[idxBattler][key].src_rect.set(0, 0, @bossAuraSprites[idxBattler][key].bitmap.width / 4, @bossAuraSprites[idxBattler][key].bitmap.height)
      end
      
      @bossAuraSprites[idxBattler][key].z = battlerSprite.z
      @bossAuraSprites[idxBattler][key].opacity = 0
      @bossAuraSprites[idxBattler][key].visible = false
    end
    
    # Apply permanent red tint to battler (EBDX style)
    @bossAuraSprites[idxBattler][:charged] = true
    @bossAuraSprites[idxBattler][:frame] = 0
    @bossAuraSprites[idxBattler][:pulse] = 8.0
    @bossAuraSprites[idxBattler][:k] = 1
  end
  
  #-----------------------------------------------------------------------------
  # Update boss aura sprites (EBDX chargedUpdate exact port)
  #-----------------------------------------------------------------------------
  def pbUpdateBossAura
    return if !@bossAuraSprites
    
    @bossAuraSprites.each do |idxBattler, sprites|
      battler = @battle.battlers[idxBattler]
      battlerSprite = @sprites["pokemon_#{idxBattler}"]
      
      # Hide aura if Pokemon fainted or sprite missing
      if !battler || battler.fainted? || !battlerSprite || !battlerSprite.bitmap
        # Hide all particles
        for i in 0...12
          key = "c#{i}"
          sprites[key].visible = false if sprites[key]
        end
        # Remove red tint
        battlerSprite.color = Color.new(0, 0, 0, 0) if battlerSprite
        next
      end
      
      # Update frame counter
      sprites[:frame] ||= 0
      sprites[:frame] += 1
      
      # Delta for frame rate (EBDX uses Graphics.frame_rate/40.0)
      delta = Graphics.frame_rate / 40.0
      
      # Update pulse for color effect (EBDX style)
      sprites[:pulse] ||= 8.0
      sprites[:k] ||= 1
      sprites[:pulse] += sprites[:k] / delta
      sprites[:k] *= -1 if sprites[:pulse] >= 128 || sprites[:pulse] <= 8
      
      # Apply red color overlay (EBDX charged color)
      battlerSprite.color = Color.new(221, 68, 92, sprites[:pulse])
      
      # Animate charged particles (EBDX chargedUpdate logic)
      for i in 0...12
        key = "c#{i}"
        next if !sprites[key]
        next if i > sprites[:frame] * delta / 16
        
        sprites[key].visible = true
        
        # Reset particle when opacity reaches 0 (EBDX logic)
        if sprites[key].opacity <= 0
          # Random position within sprite bounds
          # FIX: Ensure width/height are converted to integer for rand()
          width_range = (battlerSprite.bitmap.width * battlerSprite.zoom_x).to_i
          height_range = (battlerSprite.bitmap.height * 0.8 * battlerSprite.zoom_y).to_i
          
          # Safety check for rand(0)
          width_range = 1 if width_range < 1
          height_range = 1 if height_range < 1
          
          x = battlerSprite.x - battlerSprite.ox * battlerSprite.zoom_x + rand(width_range)
          y = battlerSprite.y - battlerSprite.oy * 0.7 * battlerSprite.zoom_y + rand(height_range)
          
          sprites[key].x = x
          sprites[key].y = y
          sprites[key].z = (rand(2) == 0) ? battlerSprite.z - 1 : battlerSprite.z + 1
          
          # Random frame from sprite sheet (4 frames)
          sprites[key].src_rect.x = rand(4) * sprites[key].bitmap.width / 4
          
          sprites[key].zoom_y = 0.6 * battlerSprite.zoom_y
          sprites[key].zoom_x = battlerSprite.zoom_x
          sprites[key].opacity = 166 + rand(90)
          sprites[key].mirror = (x < battlerSprite.x) ? false : true
        end
        
        # Animate particle (EBDX logic)
        sprites[key].zoom_y += 0.1 * battlerSprite.zoom_y / delta
        sprites[key].opacity -= 16 / delta
      end
    end
  end
  
  #-----------------------------------------------------------------------------
  # Dispose boss aura sprites for a battler
  #-----------------------------------------------------------------------------
  def pbDisposeBossAura(idxBattler = nil)
    return if !@bossAuraSprites
    
    if idxBattler.nil?
      # Dispose all boss aura sprites
      @bossAuraSprites.each do |idx, sprites|
        sprites.each do |key, sprite|
          next if !sprite.is_a?(Sprite)
          sprite.dispose if sprite && !sprite.disposed?
        end
      end
      @bossAuraSprites.clear
      
      # Remove red tint from all battlers
      @battle.battlers.each_with_index do |battler, i|
        next if !battler
        battlerSprite = @sprites["pokemon_#{i}"]
        battlerSprite.color = Color.new(0, 0, 0, 0) if battlerSprite
      end
    else
      # Dispose specific battler's aura
      return if !@bossAuraSprites[idxBattler]
      
      @bossAuraSprites[idxBattler].each do |key, sprite|
        next if !sprite.is_a?(Sprite)
        sprite.dispose if sprite && !sprite.disposed?
      end
      @bossAuraSprites.delete(idxBattler)
      
      # Remove red tint
      battlerSprite = @sprites["pokemon_#{idxBattler}"]
      battlerSprite.color = Color.new(0, 0, 0, 0) if battlerSprite
    end
  end
end

#===============================================================================
# Hook into battle scene update loop
#===============================================================================
class Battle::Scene
  alias boss_aura_pbUpdate pbUpdate
  def pbUpdate(cw = nil)
    boss_aura_pbUpdate(cw)
    pbUpdateBossAura if @bossAuraSprites
  end
end

#===============================================================================
# Hook into battle end to cleanup aura sprites
#===============================================================================
class Battle::Scene
  alias boss_aura_pbEndBattle pbEndBattle
  def pbEndBattle(_result)
    pbDisposeBossAura
    boss_aura_pbEndBattle(_result)
  end
end
