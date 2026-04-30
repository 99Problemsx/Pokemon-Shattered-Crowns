#===============================================================================
#  [SC] EBDX Battle UI — Bag Window
#  Ported from Elite Battle DX for Pokémon Essentials v21.1
#  Standalone plugin — no EBDX dependency required.
#===============================================================================

class BagWindowEBDX
  attr_reader   :index, :ret, :finished
  attr_accessor :sprites

  #-----------------------------------------------------------------------------
  #  class inspector
  #-----------------------------------------------------------------------------
  def inspect
    str = self.to_s.chop
    str << format(' pocket: %s,', @index)
    str << format(' page: %s,', @page)
    str << format(' item: %s>', @item)
    return str
  end

  #-----------------------------------------------------------------------------
  #  hide bag UI and display scene message
  #-----------------------------------------------------------------------------
  def pbDisplayMessage(msg)
    self.visible = false
    @scene.pbDisplayMessage(msg)
    @scene.pbHideWindow if @scene.respond_to?(:pbHideWindow)
    self.visible = true
  end
  def pbDisplay(msg); self.pbDisplayMessage(msg); end

  #-----------------------------------------------------------------------------
  #  configure graphic paths
  #-----------------------------------------------------------------------------
  def applyMetrics
    @cmdImg     = "itemContainer"
    @lastImg    = "last"
    @backImg    = "back"
    @frameImg   = "itemFrame"
    @selImg     = "cmdSel"
    @shadeImg   = "shade"
    @nameImg    = "itemName"
    @confirmImg = "itemConfirm"
    @cancelImg  = "itemCancel"
    @iconsImg   = "pocketIcons"
  end

  #-----------------------------------------------------------------------------
  #  construct Bag UI
  #-----------------------------------------------------------------------------
  def initialize(scene, viewport)
    @scene    = scene
    $lastUsed = 0 if $lastUsed.nil? || ($lastUsed != 0 && !$lastUsed.is_a?(Symbol))
    @lastUsed = $lastUsed
    @index    = 0; @oldindex = -1; @item = 0; @olditem = -1
    @finished = false
    @disposed = true
    @page     = -1; @selPocket = 0
    @ret      = nil; @path = EBDXBattleUI::GRAPHICS_PATH
    @baseColor   = Color.new(96, 96, 96)
    @shadowColor = nil
    # configure viewport
    @viewport = Viewport.new(0, 0, viewport.rect.width, viewport.rect.height)
    @viewport.z = viewport.z + 5
    # load bitmaps
    self.applyMetrics
    # configure initial sprites
    @sprites = {}
    @items   = {}
    @sprites["back"] = Sprite.new(@viewport)
    bmp = pbBitmap(@path + @shadeImg)
    @sprites["back"].bitmap = Bitmap.new(@viewport.rect.width, @viewport.rect.height)
    @sprites["back"].bitmap.stretch_blt(@sprites["back"].bitmap.rect, bmp, bmp.rect)
    @sprites["back"].opacity = 0
    @sprites["back"].z = 99998
    # set up selector sprite
    @sprites["sel"] = EBDXBag_SelectorSprite.new(@viewport, 4)
    @sprites["sel"].filename = @path + @selImg
    @sprites["sel"].z = 99999
    # item name sprite
    bmp = pbBitmap(@path + @nameImg)
    @sprites["name"] = Sprite.new(@viewport)
    @sprites["name"].bitmap = Bitmap.new((bmp.width * 1.2).to_i, bmp.height)
    pbSetSystemFont(@sprites["name"].bitmap)
    @sprites["name"].x = -@sprites["name"].bitmap.width - @sprites["name"].bitmap.width % 10
    @sprites["name"].y = @viewport.rect.height - 56
    bmp.dispose
    # pocket bitmap
    pbmp = pbBitmap(@path + @cmdImg)
    ibmp = pbBitmap(@path + @iconsImg)
    # item pocket buttons (4 pockets: Medicine, Pokéballs, Berries, Battle Items)
    for i in 0...4
      @sprites["pocket#{i}"] = Sprite.new(@viewport)
      @sprites["pocket#{i}"].bitmap = Bitmap.new(pbmp.width, pbmp.height / 4)
      @sprites["pocket#{i}"].bitmap.blt(0, 0, pbmp, Rect.new(0, (pbmp.height / 4) * i, pbmp.width, pbmp.height / 4))
      @sprites["pocket#{i}"].bitmap.blt(
        (pbmp.width - ibmp.width) / 2,
        (pbmp.height / 4 - ibmp.height / 4) / 2,
        ibmp,
        Rect.new(0, (ibmp.height / 4) * i, ibmp.width, ibmp.height / 4)
      )
      @sprites["pocket#{i}"].ox = @sprites["pocket#{i}"].bitmap.width / 2
      @sprites["pocket#{i}"].oy = @sprites["pocket#{i}"].bitmap.height / 2
      @sprites["pocket#{i}"].x = ((i % 2) * 2 + 1) * @viewport.rect.width / 4 +
                                  ((i % 2 == 0) ? -1 : 1) * (@viewport.rect.width / 2 - 8)
      @sprites["pocket#{i}"].y = ((i / 2) * 2 + 2) * @viewport.rect.height / 8 + (i % 2) * 42
    end
    pbmp.dispose
    ibmp.dispose
    # last used item sprite
    @sprites["pocket4"] = Sprite.new(@viewport)
    bmp = pbBitmap(@path + @lastImg)
    @sprites["pocket4"].bitmap = Bitmap.new(bmp.width, bmp.height / 2)
    pbSetSystemFont(@sprites["pocket4"].bitmap)
    @sprites["pocket4"].x  = 24
    @sprites["pocket4"].ey = @viewport.rect.height - 62
    @sprites["pocket4"].y  = @sprites["pocket4"].ey + 80
    bmp.dispose
    self.refresh(true)
    # back button sprite
    @sprites["pocket5"] = Sprite.new(@viewport)
    @sprites["pocket5"].bitmap = pbBitmap(@path + @backImg)
    @sprites["pocket5"].x  = @viewport.rect.width - @sprites["pocket5"].bitmap.width - 16
    @sprites["pocket5"].ey = @viewport.rect.height - 60
    @sprites["pocket5"].y  = @sprites["pocket4"].ey + 80
    @sprites["pocket5"].z  = 5
    # confirmation buttons
    @sprites["confirm"] = Sprite.new(@viewport)
    bmp = pbBitmap(@path + @confirmImg)
    @sprites["confirm"].bitmap = Bitmap.new(bmp.width, bmp.height)
    pbSetSmallFont(@sprites["confirm"].bitmap)
    bmp.dispose
    @sprites["confirm"].ox = @sprites["confirm"].bitmap.width / 2
    @sprites["confirm"].oy = @sprites["confirm"].bitmap.height / 2
    @sprites["confirm"].x  = @viewport.rect.width / 2 - @viewport.rect.width + @viewport.rect.width % 8
    @sprites["cancel"] = Sprite.new(@viewport)
    @sprites["cancel"].bitmap = pbBitmap(@path + @cancelImg)
    @sprites["cancel"].ox = @sprites["cancel"].bitmap.width / 2
    @sprites["cancel"].oy = @sprites["cancel"].bitmap.height / 2
    @sprites["cancel"].x  = @viewport.rect.width / 2 - @viewport.rect.width + @viewport.rect.width % 8
    # calculate y values for the confirm/cancel buttons
    maxh = @sprites["confirm"].bitmap.height + @sprites["cancel"].bitmap.height + 8
    @sprites["confirm"].y = (@viewport.rect.height - maxh) / 2 + @sprites["confirm"].oy
    @sprites["cancel"].y  = (@viewport.rect.height - maxh) / 2 + maxh - @sprites["cancel"].oy
    # initial target
    @sprites["sel"].target(@sprites["pocket#{@oldindex}"])
    @disposed = false
  end

  #-----------------------------------------------------------------------------
  #  dispose of the current UI
  #-----------------------------------------------------------------------------
  def dispose
    keys = ["back", "sel", "name", "confirm", "cancel"]
    for i in 0..5
      keys.push("pocket#{i}")
    end
    for key in keys
      @sprites[key].dispose if @sprites[key]
    end
    pbDisposeSpriteHash(@items)
    @viewport.dispose if @viewport && !@viewport.disposed?
    @disposed = true
  end
  def disposed?; return @disposed; end

  #-----------------------------------------------------------------------------
  #  merge required pockets
  #  Safely accesses bag pockets — repairs Integer item IDs if needed,
  #  then merges all valid items into a flat list.
  #-----------------------------------------------------------------------------
  def checkPockets
    @mergedPockets = []
    # Repair any Integer IDs left over from the OpenStruct .id bug
    EBDXBag_Helpers.repairBagIntegerIds
    # Try $bag.pockets first (calls rearrange). If rearrange crashes on
    # Integer item IDs, fall back to the raw internal array.
    pockets = nil
    begin
      pockets = $bag.pockets
    rescue
      pockets = $bag.instance_variable_get(:@pockets) rescue nil
    end
    return if pockets.nil?
    pockets.each do |pocket|
      next if pocket.nil?
      pocket.each do |item|
        begin
          next if item.nil? || item.length == 0
          id = item[0]
          # Resolve any remaining Integer IDs on the fly
          if id.is_a?(Integer)
            resolved = EBDXBag_Helpers.resolveItemId(id)
            next unless resolved
            item[0] = resolved
            id = resolved
          end
          next unless id.is_a?(Symbol) || id.is_a?(String)
          @mergedPockets.push(item)
        rescue
          next
        end
      end
    end
  end

  #-----------------------------------------------------------------------------
  #  draw content of selected pocket
  #-----------------------------------------------------------------------------
  def drawPocket(pocket, index)
    @pocket    = []
    @pgtrigger = false
    # get a list of all the items
    self.checkPockets
    for item in @mergedPockets
      next if item.nil? || item.length == 0 || !EBDXBag_Helpers.validItem?(item[0])
      next unless EBDXBag_Helpers.usableInBattle?(item[0])
      case index
      when 0 # Medicine
        @pocket.push([item[0], item[1]]) if EBDXBag_Helpers.isMedicine?(item[0])
      when 1 # Pokéballs
        @pocket.push([item[0], item[1]]) if EBDXBag_Helpers.isPokeBall?(item[0])
      when 2 # Berries
        @pocket.push([item[0], item[1]]) if EBDXBag_Helpers.isBerry?(item[0])
      when 3 # Battle Items
        @pocket.push([item[0], item[1]]) if EBDXBag_Helpers.isBattleItem?(item[0])
      end
    end
    # show message if pocket is empty
    if @pocket.length < 1
      pbDisplayMessage(_INTL("You have no usable items in this pocket."))
      return
    end
    # configure variables
    @xpos  = []
    @pages = @pocket.length / 6
    @pages += 1 if @pocket.length % 6 > 0
    @page    = 0; @item = 0; @olditem = 0
    @back    = false
    @selPocket = pocket
    # dispose sprites if already existing
    pbDisposeSpriteHash(@items)
    @pname = Settings.bag_pocket_names[pocket - 1]
    x = 0; y = 0
    # pocket bitmap
    pbmp = pbBitmap(@path + @cmdImg)
    ibmp = pbBitmap(@path + @frameImg)
    for i in 0...@pocket.length
      @items["#{i}"] = Sprite.new(@viewport)
      @items["#{i}"].bitmap = Bitmap.new(pbmp.width, pbmp.height / 4)
      @items["#{i}"].bitmap.blt(0, 0, pbmp, Rect.new(0, (pbmp.height / 4) * @index, pbmp.width, pbmp.height / 4))
      @items["#{i}"].bitmap.blt(
        (pbmp.width - ibmp.width) / 2,
        (pbmp.height / 4 - ibmp.height) / 2,
        ibmp, ibmp.rect
      )
      pbSetSystemFont(@items["#{i}"].bitmap)
      icon = pbBitmap(GameData::Item.icon_filename(@pocket[i][0]))
      @items["#{i}"].bitmap.blt(
        pbmp.width - icon.width - (pbmp.width - ibmp.width) / 2 - 4,
        (pbmp.height / 4 - icon.height) / 2,
        icon, icon.rect, 164
      )
      icon.dispose
      # draw text
      idata = EBDXBag_Helpers.safeGetItem(@pocket[i][0])
      iname = idata ? (idata.name rescue @pocket[i][0].to_s) : @pocket[i][0].to_s
      text = [
        [iname, pbmp.width / 2 - 15, 2 * pbmp.height / 64, 2, @baseColor, Color.new(0, 0, 0, 32)],
        ["x#{@pocket[i][1]}", pbmp.width / 2 - 12, 8 * pbmp.height / 64, 2, @baseColor, Color.new(0, 0, 0, 32)],
      ]
      pbDrawTextPositions(@items["#{i}"].bitmap, text)
      # center sprite
      @items["#{i}"].ox = @items["#{i}"].bitmap.width / 2
      @items["#{i}"].oy = @items["#{i}"].bitmap.height / 2
      # position items
      @items["#{i}"].x = @viewport.rect.width + (x % 2 == 0 ? 1 : -1) * 8 +
                          (x * 2 + 1) * @viewport.rect.width / 4 + (i / 6) * @viewport.rect.width
      @xpos.push(@items["#{i}"].x - @viewport.rect.width)
      @items["#{i}"].y = (y + 1) * @viewport.rect.height / 5 + (y * 12)
      @items["#{i}"].opacity = 255
      x += 1; y += 1 if x > 1
      x = 0 if x > 1
      y = 0 if y > 2
    end
    pbmp.dispose; ibmp.dispose
    self.name
    @sprites["name"].x = -@sprites["name"].bitmap.width - @sprites["name"].bitmap.width % 10
  end

  #-----------------------------------------------------------------------------
  #  refresh bitmap contents of item name
  #-----------------------------------------------------------------------------
  def name
    @page = @item / 6
    bmp = pbBitmap(@path + @nameImg)
    bitmap = @sprites["name"].bitmap
    bitmap.clear
    bitmap.blt(0, 0, bmp, Rect.new(0, 0, 320, 44))
    text = [
      [@pname, bmp.width / 2, 8, 2, Color.new(255, 255, 255), nil],
      ["#{@page + 1}/#{@pages}", bmp.width, 8, 0, Color.new(255, 255, 255), nil]
    ]
    pbDrawTextPositions(bitmap, text)
    bmp.dispose
  end

  #-----------------------------------------------------------------------------
  #  update item selection menu
  #-----------------------------------------------------------------------------
  def updatePocket
    @page = @item / 6
    for i in 0...@pocket.length
      @items["#{i}"].x -= (@items["#{i}"].x - (@xpos[i] - @page * @viewport.rect.width)) * 0.2
      @items["#{i}"].src_rect.y += 1 if @items["#{i}"].src_rect.y < 0
    end
    @sprites["name"].x += @sprites["name"].bitmap.width / 10 if @sprites["name"].x < -24
    @sprites["pocket5"].src_rect.y += 1 if @sprites["pocket5"].src_rect.y < 0
    # process item selection
    if Input.trigger?(Input::LEFT) && !@back
      if ![0, 2, 4].include?(@item)
        @item -= (@item % 2 == 0) ? 5 : 1
      else
        @item -= 1 if @item < 0
      end
      @item = 0 if @item < 0
    elsif Input.trigger?(Input::RIGHT) && !@back
      if @page < (@pocket.length) / 6
        @item += (@item % 2 == 1) ? 5 : 1
      else
        @item += 1 if @item < @pocket.length - 1
      end
      @item = @pocket.length - 1 if @item > @pocket.length - 1
    elsif Input.trigger?(Input::UP)
      if @back
        @item += 4 if (@item % 6) < 2
        @back = false
      else
        @item -= 2
        if (@item % 6) > 3
          @item += 6
          @back = true
        end
      end
      @item = 0 if @item < 0
      @item = @pocket.length - 1 if @item > @pocket.length - 1
      @sprites["pocket5"].src_rect.y -= 6 if @back
    elsif Input.trigger?(Input::DOWN)
      if @back
        @item -= 4 if (@item % 6) > 3
        @back = false
      else
        @item += 2
        if (@item % 6) < 2
          @item -= 6
          @back = true
        end
        @back = true if @item > @pocket.length - 1
      end
      @item = @pocket.length - 1 if @item > @pocket.length - 1
      @item = 0 if @item < 0
      @sprites["pocket5"].src_rect.y -= 6 if @back
    end
    # confirm or cancel input
    if (@back && Input.trigger?(Input::USE)) || Input.trigger?(Input::BACK)
      pbSEPlay("EBDX/SE_Select3")
      @selPocket = 0
      @page = -1; @oldindex = -1
      @back = false; @doubleback = true
    end
    # refresh selected values if index has changed
    if @item != @olditem
      @olditem = @item
      pbSEPlay("EBDX/SE_Select1")
      @sprites["sel"].target(@back ? @sprites["pocket5"] : @items["#{@item}"])
      @items["#{@item}"].src_rect.y -= 6 if !@back
      self.name
    end
  end

  #-----------------------------------------------------------------------------
  #  close current UI level
  #-----------------------------------------------------------------------------
  def closeCurrent
    @selPocket = 0
    @page = -1
    @back = false
    @ret = nil
    self.refresh
  end

  #-----------------------------------------------------------------------------
  #  show bag UI
  #-----------------------------------------------------------------------------
  def show
    @ret = nil
    self.refresh
    for i in 0...6
      @sprites["pocket#{i}"].opacity = 255 if @sprites["pocket#{i}"]
    end
    @sprites["pocket4"].y = @sprites["pocket4"].ey + 80
    @sprites["pocket5"].y = @sprites["pocket5"].ey + 80
    pbSEPlay("EBDX/SE_Zoom4", 60)
    8.times do
      for i in 0...4
        @sprites["pocket#{i}"].x += ((i % 2 == 0) ? 1 : -1) * @viewport.rect.width / 16
      end
      for i in 4...6
        @sprites["pocket#{i}"].y -= 10 if @sprites["pocket#{i}"]
      end
      @sprites["back"].opacity += 32
      @sprites["sel"].update
      Graphics.update
      Input.update
    end
  end

  #-----------------------------------------------------------------------------
  #  hide bag UI
  #-----------------------------------------------------------------------------
  def hide
    8.times do
      for i in 0...4
        @sprites["pocket#{i}"].x -= ((i % 2 == 0) ? 1 : -1) * @viewport.rect.width / 16
      end
      for i in 4...6
        @sprites["pocket#{i}"].y += 10 if @sprites["pocket#{i}"]
      end
      if @pocket
        for i in 0...@pocket.length
          @items["#{i}"].opacity -= 25.5 if @items["#{i}"]
        end
      end
      @sprites["name"].x -= 48 if @sprites["name"].x > -380
      @sprites["back"].opacity -= 32
      @sprites["sel"].update
      Graphics.update
      Input.update
    end
  end

  #-----------------------------------------------------------------------------
  #  dig into menu to use item
  #-----------------------------------------------------------------------------
  def useItem?
    Input.update
    # render bitmap for item use confirmation
    bitmap = @sprites["confirm"].bitmap
    bitmap.clear
    bmp = pbBitmap(@path + @confirmImg)
    bitmap.blt(0, 0, bmp, bmp.rect)
    icon = pbBitmap(GameData::Item.icon_filename(@ret))
    bitmap.blt(20, 30, icon, icon.rect)
    # draw text
    desc = (EBDXBag_Helpers.safeGetItem(@ret)&.description rescue "") || ""
    drawTextEx(bitmap, 80, 12, 364, 3, desc, @baseColor, Color.new(0, 0, 0, 32))
    # select confirm message as target
    @sprites["sel"].target(@sprites["confirm"])
    # animate in
    8.times do
      @sprites["confirm"].x += @viewport.rect.width / 8
      @sprites["cancel"].x  += @viewport.rect.width / 8
      if @pocket
        for i in 0...@pocket.length
          @items["#{i}"].opacity -= 32 if @items["#{i}"]
        end
      end
      for i in 0...4
        @sprites["pocket#{i}"].opacity -= 64 if @sprites["pocket#{i}"].opacity > 0
      end
      @sprites["pocket4"].y += 10 if @sprites["pocket4"].y < @sprites["pocket4"].ey + 80
      @sprites["pocket5"].y += 10 if @sprites["pocket5"].y < @sprites["pocket5"].ey + 80
      @sprites["name"].x -= @sprites["name"].bitmap.width / 8
      @sprites["sel"].update
      Graphics.update
      Input.update
    end
    # ensure pocket name is off screen
    @sprites["name"].x = -@sprites["name"].bitmap.width
    index = 0; oldindex = 0
    choice = (index == 0) ? "confirm" : "cancel"
    # start the main input loop
    loop do
      @sprites["#{choice}"].src_rect.y += 1 if @sprites["#{choice}"].src_rect.y < 0
      if Input.trigger?(Input::UP)
        index -= 1
        index = 1 if index < 0
        choice = (index == 0) ? "confirm" : "cancel"
      elsif Input.trigger?(Input::DOWN)
        index += 1
        index = 0 if index > 1
        choice = (index == 0) ? "confirm" : "cancel"
      end
      if index != oldindex
        oldindex = index
        pbSEPlay("EBDX/SE_Select1")
        @sprites["#{choice}"].src_rect.y -= 6
        @sprites["sel"].target(@sprites["#{choice}"])
      end
      if Input.trigger?(Input::USE)
        pbSEPlay("EBDX/SE_Select2")
        break
      elsif Input.trigger?(Input::BACK)
        pbPlayCancelSE
        index = 1
        break
      end
      Input.update
      @sprites["sel"].update
      Graphics.update
    end
    # animate exit
    8.times do
      @sprites["confirm"].x -= @viewport.rect.width / 8
      @sprites["cancel"].x  -= @viewport.rect.width / 8
      @sprites["pocket5"].y -= 10 if index > 0
      @sprites["sel"].update
      Graphics.update
      Input.update
    end
    # refresh old UI
    self.refresh
    # return output
    if index > 0
      @ret = nil
      return false
    else
      begin
        @index = 0 if @index == 4 && (@lastUsed == 0 || !@lastUsed.is_a?(Symbol) || EBDXBag_Helpers.getItemIndex(GameData::Item.get(@lastUsed).id) == 0)
      rescue
        @index = 0 if @index == 4
      end
      return true
    end
  end

  #-----------------------------------------------------------------------------
  #  refresh last item use
  #-----------------------------------------------------------------------------
  def refresh(skip = false)
    begin
      last = (@lastUsed != 0 && @lastUsed.is_a?(Symbol)) ? EBDXBag_Helpers.getItemIndex(GameData::Item.get(@lastUsed).id) : 0
    rescue
      last = 0
    end
    i    = last > 0 ? 1 : 0
    name = ""
    begin
      name = GameData::Item.get(@lastUsed).name if last > 0
    rescue
    end
    text = ["", name]
    bmp  = pbBitmap(@path + @lastImg)
    icon = pbBitmap(GameData::Item.icon_filename(last > 0 ? @lastUsed : nil))
    bitmap = @sprites["pocket4"].bitmap
    bitmap.clear
    bitmap.blt(0, 0, bmp, Rect.new(0, i * bmp.height / 2, bmp.width, bmp.height / 2))
    bitmap.blt(28, (bmp.height / 2 - icon.height) / 2 - 2, icon, icon.rect) if last > 0
    icon.dispose
    dtext = [[text[i], bmp.width / 2, 14, 2, @baseColor, Color.new(0, 0, 0, 32)]]
    pbDrawTextPositions(bitmap, dtext)
    bmp.dispose
    @sprites["sel"].target(@sprites["pocket#{@index}"]) unless skip
  end

  #-----------------------------------------------------------------------------
  #  main update function across all levels
  #-----------------------------------------------------------------------------
  def update
    if @selPocket == 0
      self.updateMain
      for i in 0...4
        @sprites["pocket#{i}"].opacity += 51 if @sprites["pocket#{i}"].opacity < 255
      end
      @sprites["back"].opacity += 51 if @sprites["back"].opacity < 255
      @sprites["pocket4"].y -= 8 if @sprites["pocket4"].y > @sprites["pocket4"].ey
      @sprites["pocket5"].y -= 8 if @sprites["pocket5"].y > @sprites["pocket5"].ey
      if @pocket
        for i in 0...@pocket.length
          @items["#{i}"].opacity -= 51 if @items["#{i}"] && @items["#{i}"].opacity > 0
        end
      end
      @sprites["name"].x -= @sprites["name"].bitmap.width / 10 if @sprites["name"].x > -@sprites["name"].bitmap.width
    else
      if Input.trigger?(Input::USE) && !@back
        self.intoPocket
      end
      self.updatePocket
      for i in 0...4
        @sprites["pocket#{i}"].opacity -= 51 if @sprites["pocket#{i}"].opacity > 0
      end
      @sprites["pocket4"].y += 8 if @sprites["pocket4"].y < (@sprites["pocket4"].ey + 80)
      for i in 0...@pocket.length
        @items["#{i}"].opacity += 51 if @items["#{i}"] && @items["#{i}"].opacity < 255
      end
    end
    @sprites["sel"].update
  end

  #-----------------------------------------------------------------------------
  #  update function during item pocket selection
  #-----------------------------------------------------------------------------
  def updateMain
    begin
      last = (@lastUsed != 0 && @lastUsed.is_a?(Symbol)) ? EBDXBag_Helpers.getItemIndex(GameData::Item.get(@lastUsed).id) : 0
    rescue
      last = 0
    end
    if Input.trigger?(Input::LEFT)
      @index -= 1
      @index += 2 if @index % 2 == 1
      @index = 3 if @index == 4 && !(last > 0)
    elsif Input.trigger?(Input::RIGHT)
      @index += 1
      @index -= 2 if @index % 2 == 0
      @index = 2 if @index == 4 && !(last > 0)
    elsif Input.trigger?(Input::UP)
      @index -= 2
      @index += 6 if @index < 0
      @index = 5 if @index == 4 && !(last > 0)
    elsif Input.trigger?(Input::DOWN)
      @index += 2
      @index -= 6 if @index > 5
      @index = 5 if @index == 4 && !(last > 0)
    end
    if @oldindex != @index
      @oldindex = @index
      @sprites["sel"].target(@sprites["pocket#{@index}"])
      @sprites["pocket#{@index}"].src_rect.y -= 6
      pbSEPlay("EBDX/SE_Select1")
    end
    for i in 0...6
      @sprites["pocket#{i}"].src_rect.y += 1 if @sprites["pocket#{i}"] && @sprites["pocket#{i}"].src_rect.y < 0
    end
    @doubleback = false
    @finished   = false
    if Input.trigger?(Input::USE) && !@doubleback && @index < 5
      self.confirm
    elsif (Input.trigger?(Input::BACK) || (Input.trigger?(Input::USE) && @index == 5)) && @selPocket == 0 && !@doubleback
      self.finish
    end
  end

  #-----------------------------------------------------------------------------
  #  finish current bag processing
  #-----------------------------------------------------------------------------
  def finish
    pbSEPlay("EBDX/SE_Select3")
    @finished = true
    Input.update
  end

  #-----------------------------------------------------------------------------
  #  confirm current selection
  #-----------------------------------------------------------------------------
  def confirm
    pbSEPlay("EBDX/SE_Select2")
    if @index < 4
      # Map pocket indices to bag pocket indices
      # PE v21.1 default: 8 pockets
      # [Items, Medicine, Poké Balls, TMs/HMs, Berries, Mail, Battle Items, Key Items]
      # We want: 0=Medicine(2), 1=Pokéballs(3), 2=Berries(5), 3=Battle Items(7)
      cmd = [2, 3, 5, 7]
      cmd = [2, 1, 4, 5] if Settings.bag_pocket_names.length == 6
      self.drawPocket(cmd[@index], @index)
      @sprites["sel"].target(@back ? @sprites["pocket5"] : @items["#{@item}"])
    else
      @selPocket = 0
      @page = -1
      @ret = @lastUsed
      begin
        @lastUsed = 0 if !(@lastUsed.is_a?(Symbol) && $bag.quantity(@lastUsed) > 1)
      rescue
        @lastUsed = 0
      end
    end
  end

  #-----------------------------------------------------------------------------
  #  open selected pocket
  #-----------------------------------------------------------------------------
  def intoPocket
    pbSEPlay("EBDX/SE_Select2")
    @selPocket = 0
    @page      = -1
    @lastUsed  = 0
    @lastUsed  = @pocket[@item][0] if @pocket[@item][1] > 1
    $lastUsed  = @lastUsed
    @ret       = @pocket[@item][0]
  end

  #-----------------------------------------------------------------------------
  #  set visibility of UI
  #-----------------------------------------------------------------------------
  def visible=(val)
    for key in @sprites.keys
      next if key == "back"
      @sprites[key].visible = val
    end
  end

  #-----------------------------------------------------------------------------
  #  clear sel sprite
  #-----------------------------------------------------------------------------
  def clearSel
    @sprites["sel"].bitmap = Bitmap.new(2, 2) if @sprites["sel"]
  end
end
