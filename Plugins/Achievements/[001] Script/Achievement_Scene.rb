#===============================================================================
# Achievements System - Main Scene
#   Horizontal scrolling achievement display UI
#   Ported from Spanish v16 script, updated for v21.1
#===============================================================================

#===============================================================================
# AchievementIcon - Individual achievement sprite
#===============================================================================
class AchievementIcon < Sprite
  attr_reader :index

  def initialize(viewport, index, status)
    super(viewport)
    @index = index
    @status = status
    load_bitmap
  end

  def load_bitmap
    folder = "Graphics/Pictures/#{AchievementSettings::GRAPHICS_FOLDER}"
    case @status
    when AchievementSettings::HIDDEN
      path = "#{folder}/#{AchievementSettings::HIDDEN_IMAGE}"
    when AchievementSettings::COMPLETED
      # Try completed version first (e.g., "0c.png"), fallback to normal
      path = "#{folder}/#{@index}c"
      path = "#{folder}/#{@index}" unless pbResolveBitmap(path)
    else
      path = "#{folder}/#{@index}"
    end
    # Fallback to hidden image if specified image doesn't exist
    path = "#{folder}/#{AchievementSettings::HIDDEN_IMAGE}" unless pbResolveBitmap(path)
    self.bitmap = pbBitmap(path)
  end

  def name
    return AchievementSettings::HIDDEN_NAME if @status == AchievementSettings::HIDDEN
    return ACHIEVEMENTS[@index] ? ACHIEVEMENTS[@index][0] : "---"
  end

  def description
    return AchievementSettings::HIDDEN_DESC if @status == AchievementSettings::HIDDEN
    return ACHIEVEMENTS[@index] ? ACHIEVEMENTS[@index][1] : "---"
  end

  def status
    return @status
  end

  def completed?
    return @status == AchievementSettings::COMPLETED
  end
end

#===============================================================================
# Achievement_Scene - Main UI with horizontal scrolling
#===============================================================================
class Achievement_Scene
  def initialize
    $PokemonGlobal.load_achievements
    @achievements = []
    @index = 0
    @scroll_offset = 0  # How many icons have been scrolled off-screen to the left
    
    create_viewport
    create_background
    create_achievement_icons
    create_selector
    create_text_overlay
    
    update_display
    main_loop
  end

  #-----------------------------------------------------------------------------
  # Setup methods
  #-----------------------------------------------------------------------------
  def create_viewport
    @viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @viewport.z = 99999
    @sprites = {}
  end

  def create_background
    @sprites["background"] = Sprite.new(@viewport)
    folder = "Graphics/Pictures/#{AchievementSettings::GRAPHICS_FOLDER}"
    if AchievementSettings::BACKGROUND
      bg_path = "#{folder}/#{AchievementSettings::BACKGROUND}"
      if pbResolveBitmap(bg_path)
        @sprites["background"].bitmap = pbBitmap(bg_path)
      else
        @sprites["background"].bitmap = pbBitmap("Graphics/Pictures/Common/bg")
      end
    end
  end

  def create_achievement_icons
    total_width = calculate_icons_width
    start_x = (Graphics.width - calculate_visible_width) / 2
    
    $PokemonGlobal.achievements.each_with_index do |status, i|
      icon = AchievementIcon.new(@viewport, i, status)
      
      # Position icons horizontally
      icon.x = start_x + (i * (AchievementSettings::ICON_WIDTH + AchievementSettings::ICON_SPACING))
      icon.y = AchievementSettings::ICON_Y - (AchievementSettings::ICON_HEIGHT / 2)
      icon.z = 10
      
      @achievements.push(icon)
      @sprites["icon_#{i}"] = icon
    end
    
    update_icon_visibility
  end

  def create_selector
    @sprites["selector"] = Sprite.new(@viewport)
    folder = "Graphics/Pictures/#{AchievementSettings::GRAPHICS_FOLDER}"
    sel_path = "#{folder}/#{AchievementSettings::SELECTOR_IMAGE}"
    
    if pbResolveBitmap(sel_path)
      @sprites["selector"].bitmap = pbBitmap(sel_path)
    else
      # Create simple triangle selector if no graphic exists
      bmp = Bitmap.new(24, 16)
      color = Color.new(100, 200, 255)
      # Draw simple triangle pointing up
      8.times do |i|
        bmp.fill_rect(12 - i, i, i * 2, 1, color)
      end
      @sprites["selector"].bitmap = bmp
    end
    @sprites["selector"].z = 20
    update_selector_position
  end

  def create_text_overlay
    # Text overlay for name and description
    @sprites["overlay"] = BitmapSprite.new(Graphics.width, Graphics.height, @viewport)
    @sprites["overlay"].z = 30
    @overlay = @sprites["overlay"].bitmap
    pbSetSystemFont(@overlay)
    
    # Description box background (if exists)
    folder = "Graphics/Pictures/#{AchievementSettings::GRAPHICS_FOLDER}"
    textbox_path = "#{folder}/textbox"
    if pbResolveBitmap(textbox_path)
      @sprites["textbox"] = Sprite.new(@viewport)
      @sprites["textbox"].bitmap = pbBitmap(textbox_path)
      @sprites["textbox"].x = AchievementSettings::DESC_BOX_X
      @sprites["textbox"].y = AchievementSettings::DESC_BOX_Y
      @sprites["textbox"].z = 25
    end
  end

  #-----------------------------------------------------------------------------
  # Calculation helpers
  #-----------------------------------------------------------------------------
  def calculate_icons_width
    count = @achievements.size
    return (count * AchievementSettings::ICON_WIDTH) + ((count - 1) * AchievementSettings::ICON_SPACING)
  end

  def calculate_visible_width
    visible = [AchievementSettings::ICONS_VISIBLE, @achievements.size].min
    return (visible * AchievementSettings::ICON_WIDTH) + ((visible - 1) * AchievementSettings::ICON_SPACING)
  end

  def start_x
    (Graphics.width - calculate_visible_width) / 2
  end

  #-----------------------------------------------------------------------------
  # Update methods
  #-----------------------------------------------------------------------------
  def update_icon_visibility
    return if @achievements.empty?
    
    start_x = self.start_x
    
    @achievements.each_with_index do |icon, i|
      # Calculate position based on scroll offset
      relative_index = i - @scroll_offset
      target_x = start_x + (relative_index * (AchievementSettings::ICON_WIDTH + AchievementSettings::ICON_SPACING))
      
      # Animate smooth scrolling
      icon.x += (target_x - icon.x) * 0.3
      
      # Set visibility based on position
      visible_start = 0
      visible_end = AchievementSettings::ICONS_VISIBLE - 1
      icon.visible = (relative_index >= visible_start && relative_index <= visible_end)
      
      # Dim non-selected icons
      if i == @index
        icon.opacity = 255
      else
        icon.opacity = icon.visible ? 180 : 0
      end
    end
  end

  def update_selector_position
    return if @achievements.empty?
    
    selected = @achievements[@index]
    return unless selected
    
    selector = @sprites["selector"]
    return unless selector && selector.bitmap
    
    # Position selector AROUND the selected icon (centered on it)
    # The selector graphic is assumed to be a frame larger than the icon
    icon_center_x = selected.x + (AchievementSettings::ICON_WIDTH / 2)
    icon_center_y = selected.y + (AchievementSettings::ICON_HEIGHT / 2)
    
    target_x = icon_center_x - (selector.bitmap.width / 2)
    target_y = icon_center_y - (selector.bitmap.height / 2)
    
    # Smooth animation
    selector.x += (target_x - selector.x) * 0.4
    selector.y += (target_y - selector.y) * 0.4
    selector.visible = selected.visible
  end

  def update_display
    update_icon_visibility
    update_selector_position
    draw_texts
  end

  def draw_texts
    return if @achievements.empty?
    
    @overlay.clear
    selected = @achievements[@index]
    return unless selected
    
    # Draw achievement name
    name_color = selected.completed? ? AchievementSettings::TEXT_COMPLETE : AchievementSettings::TEXT_BASE
    name_y = AchievementSettings::DESC_BOX_Y + 4
    
    textpos = [
      [selected.name, AchievementSettings::DESC_BOX_X + 10, name_y, 0, 
       name_color, AchievementSettings::TEXT_SHADOW]
    ]
    pbDrawTextPositions(@overlay, textpos)
    
    # Draw description (wrapped)
    desc_y = name_y + 28
    drawTextEx(@overlay, 
               AchievementSettings::DESC_BOX_X + 10, 
               desc_y,
               AchievementSettings::DESC_BOX_WIDTH - 20,
               2,  # Max lines
               selected.description,
               AchievementSettings::TEXT_BASE,
               AchievementSettings::TEXT_SHADOW)
  end

  #-----------------------------------------------------------------------------
  # Input handling
  #-----------------------------------------------------------------------------
  def main_loop
    loop do
      Graphics.update
      Input.update
      
      # Smooth update animations
      update_icon_visibility
      update_selector_position
      
      # Handle input
      if Input.trigger?(Input::RIGHT)
        move_selection(1)
      elsif Input.trigger?(Input::LEFT)
        move_selection(-1)
      elsif Input.trigger?(Input::B)
        pbPlayCloseMenuSE
        break
      end
    end
    
    dispose
  end

  def move_selection(direction)
    return if @achievements.empty?
    
    old_index = @index
    @index += direction
    
    # Wrap around
    if @index < 0
      @index = @achievements.size - 1
      @scroll_offset = [@achievements.size - AchievementSettings::ICONS_VISIBLE, 0].max
    elsif @index >= @achievements.size
      @index = 0
      @scroll_offset = 0
    else
      # Scroll if selection goes off visible area
      visible_min = @scroll_offset
      visible_max = @scroll_offset + AchievementSettings::ICONS_VISIBLE - 1
      
      if @index < visible_min
        @scroll_offset = @index
      elsif @index > visible_max
        @scroll_offset = @index - AchievementSettings::ICONS_VISIBLE + 1
      end
    end
    
    # Clamp scroll offset
    max_scroll = [@achievements.size - AchievementSettings::ICONS_VISIBLE, 0].max
    @scroll_offset = @scroll_offset.clamp(0, max_scroll)
    
    if old_index != @index
      pbPlayCursorSE
      draw_texts
    end
  end

  #-----------------------------------------------------------------------------
  # Cleanup
  #-----------------------------------------------------------------------------
  def dispose
    pbDisposeSpriteHash(@sprites)
    @overlay.dispose if @overlay && !@overlay.disposed?
    @viewport.dispose if @viewport && !@viewport.disposed?
  end
end
