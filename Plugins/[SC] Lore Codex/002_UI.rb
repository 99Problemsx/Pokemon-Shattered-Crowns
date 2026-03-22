#===============================================================================
# [SC] Lore Codex - UI Scene
#===============================================================================

class CodexScene
  def initialize
    @viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @viewport.z = 99999
    @sprites = {}
    @category_index = 0
    @entry_index = 0
    @categories = LoreCodex::CATEGORIES.keys
    @mode = :category  # :category or :entry
  end

  def pbStartScene
    @sprites["bg"] = IconSprite.new(0, 0, @viewport)
    bg_path = "Graphics/Pictures/#{LoreCodex::GRAPHICS_FOLDER}/bg"
    @sprites["bg"].setBitmap(bg_path) if pbResolveBitmap(bg_path)

    @sprites["overlay"] = BitmapSprite.new(Graphics.width, Graphics.height, @viewport)
    pbSetSystemFont(@sprites["overlay"].bitmap)

    draw_categories
  end

  def draw_categories
    overlay = @sprites["overlay"].bitmap
    overlay.clear

    # Title
    pbDrawTextPositions(overlay, [
      ["Lore Codex", Graphics.width / 2, 8, 2,
       LoreCodex::TEXT_TITLE, LoreCodex::TEXT_SHADOW]
    ])

    # Completion
    pct = pbCodex.completion_percent
    pbDrawTextPositions(overlay, [
      [_INTL("{1}% Complete", pct), Graphics.width / 2, 40, 2,
       LoreCodex::TEXT_BASE, LoreCodex::TEXT_SHADOW]
    ])

    # Category list
    y = 80
    @categories.each_with_index do |cat_id, i|
      cat = LoreCodex::CATEGORIES[cat_id]
      found = CodexRegistry.by_category(cat_id).keys.count { |id| pbCodex.discovered?(id) }
      total = CodexRegistry.by_category(cat_id).count
      color = i == @category_index ? cat[:color] : LoreCodex::TEXT_BASE
      shadow = LoreCodex::TEXT_SHADOW

      pbDrawTextPositions(overlay, [
        [i == @category_index ? "▸ " : "  ", 30, y, 0, color, shadow],
        [cat[:name], 60, y, 0, color, shadow],
        [_INTL("{1}/{2}", found, total), Graphics.width - 40, y, 1, color, shadow]
      ])
      y += 32
    end

    # Instructions
    pbDrawTextPositions(overlay, [
      [_INTL("Z: Open   X: Back"), Graphics.width / 2, Graphics.height - 30, 2,
       LoreCodex::TEXT_LOCKED, LoreCodex::TEXT_SHADOW]
    ])
  end

  def draw_entries
    overlay = @sprites["overlay"].bitmap
    overlay.clear
    cat_id = @categories[@category_index]
    cat = LoreCodex::CATEGORIES[cat_id]
    entries = CodexRegistry.by_category(cat_id).values

    # Category header
    pbDrawTextPositions(overlay, [
      [cat[:name], Graphics.width / 2, 8, 2, cat[:color], LoreCodex::TEXT_SHADOW]
    ])

    if entries.empty?
      pbDrawTextPositions(overlay, [
        [_INTL("No entries yet."), Graphics.width / 2, 100, 2,
         LoreCodex::TEXT_LOCKED, LoreCodex::TEXT_SHADOW]
      ])
      return
    end

    # Scrollable entry list (show up to 10)
    start_idx = [0, @entry_index - 4].max
    end_idx = [entries.length - 1, start_idx + 9].min

    y = 48
    (start_idx..end_idx).each do |i|
      entry = entries[i]
      discovered = pbCodex.discovered?(entry.id)
      title = discovered ? entry.title : entry.hidden_title
      color = i == @entry_index ? LoreCodex::TEXT_TITLE : (discovered ? LoreCodex::TEXT_BASE : LoreCodex::TEXT_LOCKED)

      pbDrawTextPositions(overlay, [
        [i == @entry_index ? "▸ " : "  ", 20, y, 0, color, LoreCodex::TEXT_SHADOW],
        [title, 50, y, 0, color, LoreCodex::TEXT_SHADOW]
      ])
      y += 28
    end

    # Selected entry detail (if discovered)
    entry = entries[@entry_index]
    if entry && pbCodex.discovered?(entry.id)
      # Draw text box at bottom
      box_y = Graphics.height - 120
      overlay.fill_rect(10, box_y, Graphics.width - 20, 110, Color.new(0, 0, 0, 160))
      drawTextEx(overlay, 20, box_y + 8, Graphics.width - 40, 4,
                 entry.text, LoreCodex::TEXT_BASE, LoreCodex::TEXT_SHADOW)
    end
  end

  def pbMain
    loop do
      Graphics.update
      Input.update
      pbUpdateSpriteHash(@sprites)

      case @mode
      when :category
        if Input.trigger?(Input::DOWN)
          @category_index = (@category_index + 1) % @categories.length
          pbPlayCursorSE
          draw_categories
        elsif Input.trigger?(Input::UP)
          @category_index = (@category_index - 1) % @categories.length
          pbPlayCursorSE
          draw_categories
        elsif Input.trigger?(Input::USE)
          @mode = :entry
          @entry_index = 0
          pbPlayDecisionSE
          draw_entries
        elsif Input.trigger?(Input::BACK)
          pbPlayCancelSE
          break
        end
      when :entry
        entries = CodexRegistry.by_category(@categories[@category_index]).values
        if Input.trigger?(Input::DOWN) && !entries.empty?
          @entry_index = (@entry_index + 1) % entries.length
          pbPlayCursorSE
          draw_entries
        elsif Input.trigger?(Input::UP) && !entries.empty?
          @entry_index = (@entry_index - 1) % entries.length
          pbPlayCursorSE
          draw_entries
        elsif Input.trigger?(Input::BACK)
          @mode = :category
          pbPlayCancelSE
          draw_categories
        end
      end
    end
  end

  def pbEndScene
    pbDisposeSpriteHash(@sprites)
    @viewport.dispose
  end
end

class CodexScreen
  def initialize(scene)
    @scene = scene
  end

  def pbStartScreen
    @scene.pbStartScene
    @scene.pbMain
    @scene.pbEndScene
  end
end

def pbOpenLoreCodex
  scene = CodexScene.new
  screen = CodexScreen.new(scene)
  screen.pbStartScreen
end
