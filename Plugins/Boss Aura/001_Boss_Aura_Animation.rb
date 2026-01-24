#===============================================================================
# Boss Aura - AURAFLARE Common Animation
# Adapted from Elite Battle DX for standard Pokemon Essentials
# COMPLETE EBDX PORT with all features
#===============================================================================

# Register the AURAFLARE common animation
Battle::Scene::USE_ABILITY_SPLASH = true if !defined?(Battle::Scene::USE_ABILITY_SPLASH)

class Battle::Scene
  #-----------------------------------------------------------------------------
  # Helper method for random circle coordinates (from EBDX)
  #-----------------------------------------------------------------------------
  def randCircleCord(radius)
    angle = rand(360) * Math::PI / 180
    r = radius * Math.sqrt(rand)
    x = r * Math.cos(angle)
    y = r * Math.sin(angle)
    return x.to_i, y.to_i
  end
  
  #-----------------------------------------------------------------------------
  # Play the Aura Flare animation for a battler
  #-----------------------------------------------------------------------------
  def pbBossAuraFlare(idxBattler)
    battler = @battle.battlers[idxBattler]
    return if !battler || battler.fainted?
    
    # Get battler sprite
    battlerSprite = @sprites["pokemon_#{idxBattler}"]
    return if !battlerSprite
    
    # Hide databoxes during animation (using DBK method)
    pbToggleDataboxes if self.respond_to?(:pbToggleDataboxes)
    
    # Initialize sprite hash for animation elements
    fp = {}
    
    # Get center position of the battler sprite
    cx = battlerSprite.x
    cy = battlerSprite.y - (battlerSprite.bitmap.height / 2) if battlerSprite.bitmap
    cy ||= battlerSprite.y
    
    # Scale factor based on battler sprite
    factor = battlerSprite.zoom_x || 1.0
    
    #---------------------------------------------------------------------------
    # Particle initialization
    #---------------------------------------------------------------------------
    for i in 0...16
      fp["c#{i}"] = Sprite.new(@viewport)
      fp["c#{i}"].z = battlerSprite.z + 10
      bmp = AnimatedBitmap.new("Graphics/Battle animations/AURAFLARE/ebMega#{sprintf("%03d", rand(4) + 1)}")
      fp["c#{i}"].bitmap = bmp.bitmap
      if fp["c#{i}"].bitmap
        fp["c#{i}"].ox = fp["c#{i}"].bitmap.width / 2
        fp["c#{i}"].oy = fp["c#{i}"].bitmap.height / 2
      end
      fp["c#{i}"].opacity = 0
    end
    
    #---------------------------------------------------------------------------
    # Ray initialization
    #---------------------------------------------------------------------------
    rangle = []
    for i in 0...8
      rangle.push((360 / 8) * i + 15)
    end
    
    for j in 0...8
      fp["r#{j}"] = Sprite.new(@viewport)
      bmp = AnimatedBitmap.new("Graphics/Battle animations/AURAFLARE/ebMega005")
      fp["r#{j}"].bitmap = bmp.bitmap
      fp["r#{j}"].ox = 0
      fp["r#{j}"].color = Color.new(186, 86, 102)
      if fp["r#{j}"].bitmap
        fp["r#{j}"].oy = fp["r#{j}"].bitmap.height / 2
      end
      fp["r#{j}"].opacity = 0
      fp["r#{j}"].zoom_x = 0
      fp["r#{j}"].zoom_y = 0
      fp["r#{j}"].x = cx
      fp["r#{j}"].y = cy
      a = rand(rangle.length)
      fp["r#{j}"].angle = rangle[a]
      fp["r#{j}"].z = battlerSprite.z + 2
      rangle.delete_at(a)
    end
    
    #---------------------------------------------------------------------------
    # Ripple initialization
    #---------------------------------------------------------------------------
    for j in 0...3
      fp["v#{j}"] = Sprite.new(@viewport)
      bmp = AnimatedBitmap.new("Graphics/Battle animations/AURAFLARE/ebMega006")
      fp["v#{j}"].bitmap = bmp.bitmap
      if fp["v#{j}"].bitmap
        fp["v#{j}"].ox = fp["v#{j}"].bitmap.width / 2
        fp["v#{j}"].oy = fp["v#{j}"].bitmap.height / 2
      end
      fp["v#{j}"].x = cx
      fp["v#{j}"].y = cy
      fp["v#{j}"].opacity = 0
      fp["v#{j}"].zoom_x = 2 * factor
      fp["v#{j}"].zoom_y = 2 * factor
      fp["v#{j}"].z = battlerSprite.z + 1
      fp["v#{j}"].color = Color.new(186, 86, 102)
    end
    
    #---------------------------------------------------------------------------
    # Main animation loop
    #---------------------------------------------------------------------------
    pbSEPlay("Anim/Harden", 120)
    battlerSprite.color = Color.new(221, 68, 92, 0)
    
    for i in 0...104
      battlerSprite.color.alpha += 8 if battlerSprite.color.alpha < 255
      
      # Particle animation
      for j in 0...16
        next if j > (i / 8)
        if fp["c#{j}"].opacity == 0 && i < 72
          fp["c#{j}"].opacity = 255
          # Random circular position using EBDX method (EXACT EBDX FORMULA)
          x, y = randCircleCord(96 * factor)
          fp["c#{j}"].x = cx - 96 * factor + x
          fp["c#{j}"].y = cy - 96 * factor + y
        end
        # Move towards center
        x0 = fp["c#{j}"].x
        y0 = fp["c#{j}"].y
        fp["c#{j}"].x += (cx - x0) * 0.1
        fp["c#{j}"].y += (cy - y0) * 0.1
        fp["c#{j}"].opacity -= 16 if fp["c#{j}"].opacity > 0
      end
      
      # Ray animation
      for j in 0...8
        if fp["r#{j}"].opacity == 0 && j <= (i % 128) / 16 && i < 96
          fp["r#{j}"].opacity = 255
          fp["r#{j}"].zoom_x = 0
          fp["r#{j}"].zoom_y = 0
        end
        fp["r#{j}"].opacity -= 4 if fp["r#{j}"].opacity > 0
        fp["r#{j}"].zoom_x += 0.05
        fp["r#{j}"].zoom_y += 0.05
      end
      
      # Sound effects
      pbSEPlay("Anim/Twine", 80) if i == 40
      pbSEPlay("Anim/Refresh") if i == 56
      
      # Ripple animation
      if i >= 24
        for j in 0...3
          next if j > (i - 32) / 12
          next if fp["v#{j}"].zoom_x <= 0
          
          # EBDX uses toggle variable
          if fp["v#{j}"].zoom_x < 1.6 * factor
            fp["v#{j}"].opacity -= 3.2 if fp["v#{j}"].opacity > 0
          else
            fp["v#{j}"].opacity += 16 if fp["v#{j}"].opacity < 255
          end
          fp["v#{j}"].zoom_x -= 0.05
          fp["v#{j}"].zoom_y -= 0.05
        end
      end
      
      pbUpdate
    end
    
    #---------------------------------------------------------------------------
    # Flash effect
    #---------------------------------------------------------------------------
    @viewport.color = Color.new(255, 255, 255, 255)
    battlerSprite.color.alpha = 0
    
    # Dispose animation sprites
    fp.each_value { |sprite| sprite.dispose if sprite && !sprite.disposed? }
    fp.clear
    
    #---------------------------------------------------------------------------
    # Impact animation
    #---------------------------------------------------------------------------
    fp["impact"] = Sprite.new(@viewport)
    bmp = AnimatedBitmap.new("Graphics/Battle animations/AURAFLARE/impact")
    fp["impact"].bitmap = bmp.bitmap
    if fp["impact"].bitmap
      fp["impact"].ox = fp["impact"].bitmap.width / 2
      fp["impact"].oy = fp["impact"].bitmap.height / 2
    end
    fp["impact"].x = Graphics.width / 2
    fp["impact"].y = Graphics.height / 2
    fp["impact"].z = 999
    fp["impact"].opacity = 0
    
    # Play battler cry
    battler.pokemon.play_cry if battler.pokemon
    
    # Initialize permanent aura effects during impact for simultaneous timing
    pbInitializeBossAura(idxBattler) if self.respond_to?(:pbInitializeBossAura)
    
    k = -2
    for i in 0...24
      fp["impact"].opacity += 64 if fp["impact"].opacity < 255
      fp["impact"].angle += 180 if i % 4 == 0
      fp["impact"].mirror = !fp["impact"].mirror if i % 4 == 2
      k *= -1 if i % 4 == 0
      @viewport.color.alpha -= 16 if i > 1 && @viewport.color.alpha > 0
      
      # Screen shake effect
      @sprites["battle_bg"].x = k if @sprites["battle_bg"]
      battlerSprite.x = cx + k
      
      pbUpdate
    end
    
    for i in 0...16
      fp["impact"].opacity -= 64 if fp["impact"].opacity > 0
      fp["impact"].angle += 180 if i % 4 == 0
      fp["impact"].mirror = !fp["impact"].mirror if i % 4 == 2
      pbUpdate
    end
    
    #---------------------------------------------------------------------------
    # Cleanup
    #---------------------------------------------------------------------------
    @sprites["battle_bg"].x = 0 if @sprites["battle_bg"]
    battlerSprite.x = cx
    @viewport.color = Color.new(0, 0, 0, 0)
    
    fp["impact"].dispose if fp["impact"] && !fp["impact"].disposed?
    
    # Show databoxes again (using DBK method)
    pbToggleDataboxes(true) if self.respond_to?(:pbToggleDataboxes)
  end
end
