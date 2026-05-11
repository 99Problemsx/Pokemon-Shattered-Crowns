#===============================================================================
#  [SC] EBDX Battle UI — Compatibility Helpers
#  Shared sprite utilities, bitmap helpers, and item/move helper modules
#  used by both the Battle Bag and the Fight Menu.
#  Self-contained — does not require Luka's Scripting Utilities v4.
#===============================================================================

#===============================================================================
#  Central graphics path — all plugin files reference this constant
#===============================================================================
module EBDXBattleUI
  GRAPHICS_PATH = "Graphics/Plugins/EBDX Battle UI/"
end

#===============================================================================
#  Ensure pbBitmap is available (originally from Luka's v1, not in v4)
#===============================================================================
unless defined?(pbBitmap)
  def pbBitmap(name)
    begin
      dir  = name.split("/")[0...-1].join("/") + "/"
      file = name.split("/")[-1]
      bmp  = RPG::Cache.load_bitmap(dir, file)
    rescue StandardError
      bmp = Bitmap.new(2, 2)
    end
    return bmp
  end
end

#===============================================================================
#  Ensure plain Sprite has ex/ey accessors (LUTS v4 only adds them to Sprites::Base)
#===============================================================================
class ::Sprite
  attr_accessor :ex, :ey unless method_defined?(:ey)
end

#===============================================================================
#  Animated sprite sheet — Battle Bag variant (supports vertical sheets)
#===============================================================================
class EBDXBag_SpriteSheet < Sprite
  attr_accessor :speed

  def initialize(viewport, frames = 1)
    @frames   = frames
    @speed    = 1
    @curFrame = 0
    @vertical = false
    super(viewport)
  end

  def setBitmap(file, vertical = false)
    self.bitmap = file.is_a?(Bitmap) ? file : pbBitmap(file)
    @vertical = vertical
    if @vertical
      self.src_rect.height /= @frames
    else
      self.src_rect.width /= @frames
    end
  end

  def update
    return if !self.bitmap
    target = (Graphics.frame_rate / 40.0)
    if @curFrame >= (@speed * target)
      if @vertical
        self.src_rect.y += self.src_rect.height
        self.src_rect.y = 0 if self.src_rect.y >= self.bitmap.height
      else
        self.src_rect.x += self.src_rect.width
        self.src_rect.x = 0 if self.src_rect.x >= self.bitmap.width
      end
      @curFrame = 0
    end
    @curFrame += 1
  end
end

#===============================================================================
#  Animated sprite sheet — Fight Menu variant (horizontal only)
#===============================================================================
class EBDXFight_SpriteSheet < Sprite
  attr_accessor :speed

  def initialize(viewport, frames = 1)
    @frames = frames; @speed = 1; @curFrame = 0
    super(viewport)
  end

  def setBitmap(bmp)
    self.bitmap = bmp
    self.src_rect.width /= @frames
  end

  def update
    return unless self.bitmap
    if @curFrame >= (@speed * (Graphics.frame_rate / 40.0))
      self.src_rect.x += self.src_rect.width
      self.src_rect.x = 0 if self.src_rect.x >= self.bitmap.width
      @curFrame = 0
    end
    @curFrame += 1
  end
end

#===============================================================================
#  Selector sprite for EBDX Battle Bag
#===============================================================================
class EBDXBag_SelectorSprite < EBDXBag_SpriteSheet
  attr_accessor :filename, :anchor

  def render(rect, file = nil, vertical = false)
    @filename = file if @filename.nil? && !file.nil?
    file = @filename if file.nil? && !@filename.nil?
    @curFrame = 0
    self.src_rect.x = 0
    self.src_rect.y = 0
    self.setBitmap(EBDXBag_Helpers.pbSelBitmap(@filename, rect), vertical)
    self.ox = self.src_rect.width / 2
    self.oy = self.src_rect.height / 2
    self.speed = 4
  end

  def target(sprite)
    return if !sprite || !sprite.is_a?(Sprite)
    self.render(Rect.new(0, 0, sprite.src_rect.width, sprite.src_rect.height))
    self.anchor = sprite
  end

  def update
    super
    if self.anchor
      self.x = self.anchor.x - self.anchor.ox + self.anchor.src_rect.width / 2
      self.y = self.anchor.y - self.anchor.oy + self.anchor.src_rect.height / 2
      self.opacity = self.anchor.opacity
      self.visible = self.anchor.visible
    end
  end
end

#===============================================================================
#  Static helper methods for the EBDX Bag
#===============================================================================
module EBDXBag_Helpers
  # SC Script System uses Symbol battle_use values; PE uses Integer.
  # Map between them so the battle scene case statements work.
  BATTLE_USE_SYM_TO_INT = {
    :OnPokemon => 1, :OnMove => 2, :OnBattler => 3,
    :OnFoe => 4, :Direct => 5
  }.freeze

  # Converts a battle_use value to Integer (PE format) regardless of source.
  # SC items store Symbols (:OnPokemon, :OnFoe …), PE stores Integers (1–5).
  def self.normalizeBattleUse(bu)
    return 0 if bu.nil?
    return bu if bu.is_a?(Integer)
    return BATTLE_USE_SYM_TO_INT[bu] || 0 if bu.is_a?(Symbol)
    return 0
  end

  # Renders bitmap spritesheet for selection cursor
  def self.pbSelBitmap(name, rect)
    bmp   = pbBitmap(name)
    qw    = bmp.width / 2
    qh    = bmp.height / 2
    max_w = rect.width + qw * 2 - 8
    max_h = rect.height + qh * 2 - 8
    full  = Bitmap.new(max_w * 4, max_h)
    for i in 0...4
      for j in 0...4
        m = (i < 3) ? i : (i - 2)
        x = (j % 2 == 0 ? 2 : -2) * m + max_w * i + (j % 2 == 0 ? 0 : max_w - qw)
        y = (j / 2 == 0 ? 2 : -2) * m + (j / 2 == 0 ? 0 : max_h - qh)
        full.blt(x, y, bmp, Rect.new(qw * (j % 2), qh * (j / 2), qw, qh))
      end
    end
    return full
  end

  #---------------------------------------------------------------------------
  #  Bag Integer ID repair
  #  Fill Bag may store Integer IDs (from OpenStruct Object#id) instead of
  #  Symbol IDs.  This repairs them in-place using positional matching
  #  against the ScriptRegistry item order.
  #---------------------------------------------------------------------------
  def self.repairBagIntegerIds
    return unless $bag
    @_bag_repaired ||= false
    return if @_bag_repaired
    pockets = $bag.instance_variable_get(:@pockets) rescue nil
    return unless pockets
    # Quick check: any Integer IDs?
    has_integers = false
    pockets.each do |pocket|
      next unless pocket
      if pocket.any? { |item| item && item[0].is_a?(Integer) }
        has_integers = true
        break
      end
    end
    unless has_integers
      @_bag_repaired = true
      return
    end
    # Build expected item order from ScriptRegistry (same as GameData::Item.each)
    registry = nil
    begin; registry = GameData::ScriptRegistry.items; rescue; end
    return unless registry && !registry.empty?
    items_by_pocket = {}
    registry.each do |sym_id, data|
      pocket_num = data[:pocket] || 1
      items_by_pocket[pocket_num] ||= []
      items_by_pocket[pocket_num] << sym_id
    end
    # Positional matching: replace Integer IDs with Symbols
    repaired = 0
    pockets.each_with_index do |pocket, p|
      next if pocket.nil? || pocket.empty? || p == 0
      expected = items_by_pocket[p]
      next unless expected && pocket.length == expected.length
      pocket.each_with_index do |item, idx|
        next unless item && item[0].is_a?(Integer)
        item[0] = expected[idx]
        repaired += 1
      end
    end
    @_bag_repaired = true
    echoln "[EBDX Bag] Repaired #{repaired} Integer item IDs in bag" if repaired > 0
  end

  #---------------------------------------------------------------------------
  #  Resolve an item ID (may be Symbol, String, or stale Integer) to a
  #  Symbol that GameData::Item can look up.
  #---------------------------------------------------------------------------
  def self.resolveItemId(item_id)
    return item_id if item_id.is_a?(Symbol)
    return item_id.to_sym if item_id.is_a?(String)
    return nil if item_id.nil?
    # Integer — try GameData::Item.try_get in case the override handles it
    begin
      data = GameData::Item.try_get(item_id)
      rid = data.id if data
      return rid if rid.is_a?(Symbol)
    rescue StandardError
    end
    nil
  end

  # Safe way to check if an item ID is valid
  def self.validItem?(item)
    return false if item.nil?
    item = resolveItemId(item) if item.is_a?(Integer)
    return false if item.nil?
    begin
      return GameData::Item.exists?(item)
    rescue StandardError
      return false
    end
  end

  # Safe wrapper around GameData::Item.get that never raises.
  def self.safeGetItem(item)
    return nil if item.nil?
    item = resolveItemId(item) if item.is_a?(Integer)
    return nil if item.nil?
    begin
      data = GameData::Item.get(item)
      return data
    rescue StandardError
      return nil
    end
  end

  # Check if item is usable in battle.
  # Works with BOTH PE-registered ItemHandlers AND SC's battle_use values.
  def self.usableInBattle?(item)
    # 1. Check PE handler hashes (covers items with registered procs)
    begin
      return true if ItemHandlers.hasUseInBattle(item)
      return true if ItemHandlers.hasBattleUseOnPokemon(item)
      return true if ItemHandlers.hasBattleUseOnBattler(item)
    rescue StandardError
    end
    # 2. Check SC battle_use value directly (covers items that only
    #    have a battle_use Symbol but no PE handler registered)
    data = safeGetItem(item)
    if data
      bu = data.battle_use rescue nil
      return true if bu && bu != 0 && bu != :None
    end
    return false
  end

  # Check if item is a Poké Ball
  # SC items use pocket 3 without setting flags, so pocket is primary.
  def self.isPokeBall?(item)
    data = safeGetItem(item)
    return false if data.nil?
    return true if data.pocket == 3
    begin; return true if data.respond_to?(:is_poke_ball?) && data.is_poke_ball?; rescue; end
    begin; return true if data.respond_to?(:is_pokeball?) && data.is_pokeball?; rescue; end
    begin; return true if data.respond_to?(:category) && data.category == :PokeBall; rescue; end
    return false
  end

  # Check if item is a Berry
  # SC items use pocket 5 without setting flags, so pocket is primary.
  def self.isBerry?(item)
    data = safeGetItem(item)
    return false if data.nil?
    return true if data.pocket == 5
    begin; return true if data.respond_to?(:is_berry?) && data.is_berry?; rescue; end
    begin; return true if data.respond_to?(:category) && data.category == :Berry; rescue; end
    return false
  end

  # Check if item is a medicine (HP/PP restore, status cure — not berries)
  # SC uses pocket 2; PE uses Integer battle_use 1/2.
  def self.isMedicine?(item)
    data = safeGetItem(item)
    return false if data.nil?
    pkt = data.pocket rescue nil
    return true if pkt == 2
    raw_bu = data.battle_use rescue nil
    bu = normalizeBattleUse(raw_bu)
    return [1, 2].include?(bu) && !isBerry?(item) && !isPokeBall?(item)
  end

  # Check if item is a battle item (X Attack, Guard Spec, etc.)
  # SC uses pocket 7; PE uses Integer battle_use 3/5.
  def self.isBattleItem?(item)
    data = safeGetItem(item)
    return false if data.nil?
    pkt = data.pocket rescue nil
    return true if pkt == 7
    raw_bu = data.battle_use rescue nil
    bu = normalizeBattleUse(raw_bu)
    return [3, 5].include?(bu)
  end

  # Get a numeric index for an item (for "last used" tracking)
  def self.getItemIndex(item)
    return 0 if item.nil?
    idx = 0
    counter = 0
    begin
      GameData::Item.each do |data|
        counter += 1
        if data.id == item
          idx = counter
          break
        end
      end
    rescue StandardError
    end
    return idx
  end
end

#===============================================================================
#  Static helper methods for the EBDX Fight Menu
#===============================================================================
module EBDXFight_Helpers
  def self.pbSelBitmap(name, rect)
    bmp  = pbBitmap(name)
    qw   = bmp.width / 2
    qh   = bmp.height / 2
    mw   = rect.width  + qw * 2 - 8
    mh   = rect.height + qh * 2 - 8
    full = Bitmap.new(mw * 4, mh)
    4.times do |i|
      4.times do |j|
        m = (i < 3) ? i : (i - 2)
        x = (j % 2 == 0 ? 2 : -2) * m + mw * i + (j % 2 == 0 ? 0 : mw - qw)
        y = (j / 2 == 0 ? 2 : -2) * m + (j / 2 == 0 ? 0 : mh - qh)
        full.blt(x, y, bmp, Rect.new(qw * (j % 2), qh * (j / 2), qw, qh))
      end
    end
    return full
  end
end

#===============================================================================
#  GameData::Item compatibility patches — SC <-> PE bridge
#  SC items lack the "PokeBall" flag and store battle_use as Symbol (:OnFoe).
#  PE core battle code relies on is_poke_ball? (flag-based) and expects
#  battle_use to return an Integer (1-5).  These patches bridge the gap.
#===============================================================================
class GameData::Item
  # Map SC Symbol battle_use values to PE Integer equivalents.
  # PE schema: OnPokemon=1, OnMove=2, OnBattler=3, OnFoe=4, Direct=5
  SC_BATTLE_USE_MAP = {
    :OnPokemon => 1, :OnMove => 2, :OnBattler => 3,
    :OnFoe     => 4, :Direct => 5
  }.freeze

  #---------------------------------------------------------------------------
  #  Override battle_use to always return an Integer (PE format).
  #  SC stores Symbols (:OnFoe etc.); PE expects Integers (1-5).
  #  The attack phase dispatch (010_Battle_AttackPhase.rb) uses
  #  `case battle_use when 4` — a Symbol would fall to `else -> next`
  #  and the ball throw would be silently skipped.
  #---------------------------------------------------------------------------
  def battle_use
    val = @battle_use
    return val if val.is_a?(Integer)
    return 0 if val.nil?
    SC_BATTLE_USE_MAP[val] || 0
  end

  #---------------------------------------------------------------------------
  #  Override is_poke_ball? to also recognise SC Poké Balls.
  #  SC balls use pocket 3 but set neither the "PokeBall" flag nor the
  #  :PokeBall category.  Pocket 3 is the conventional Poké Balls pocket
  #  in both PE and SC, so checking it is safe.
  #  This fixes:
  #    - CanUseInBattle handler matching (safety checks for balls)
  #    - pbItemUsesAllActions? (ball must consume all actions)
  #---------------------------------------------------------------------------
  alias_method :_ebdx_orig_is_poke_ball?, :is_poke_ball? if method_defined?(:is_poke_ball?)
  def is_poke_ball?
    return true if @pocket == 3
    return _ebdx_orig_is_poke_ball? if respond_to?(:_ebdx_orig_is_poke_ball?, true)
    false
  end
end

#===============================================================================
#  GameData::Move compatibility patch — SC <-> PE bridge
#  SC overrides get/exists?/keys/each via ScriptRegistry but does NOT override
#  try_get.  PE's base try_get checks self::DATA which SC leaves empty ({}).
#  This causes try_get to always return nil, breaking pbFindMoveAnimDetails.
#===============================================================================
if defined?(ScriptRegistry) && ScriptRegistry.respond_to?(:get_move)
  class GameData::Move
    def self.try_get(other)
      return nil if other.nil?
      return other if other.is_a?(self)
      id = (defined?(DSL) && DSL.respond_to?(:to_id)) ? DSL.to_id(other) : other.to_s.upcase.to_sym
      data = ScriptRegistry.get_move(id) rescue nil
      return data ? self.new(data) : nil
    end
  end
end

#===============================================================================
#  Animation diagnostic logger — writes to animlog.txt during battle.
#  Wraps Battle::Scene#pbAnimation and #pbCommonAnimation to trace failures.
#  DELETE this block once animations are confirmed working.
#===============================================================================
class Battle::Scene
  unless method_defined?(:_ebdx_diag_pbCommonAnimation)
    alias _ebdx_diag_pbCommonAnimation pbCommonAnimation
    def pbCommonAnimation(animName, user = nil, target = nil)
      _ebdx_anim_log("pbCommonAnimation: name=#{animName.inspect}, user=#{user&.name rescue user.inspect}")
      animations = pbLoadBattleAnimations
      if animations.nil?
        _ebdx_anim_log("  FAIL: pbLoadBattleAnimations returned nil!")
      else
        _ebdx_anim_log("  animations: #{animations.length} entries, class=#{animations.class}")
        found = animations.any? { |a| a && a.name == "Common:" + animName.to_s }
        _ebdx_anim_log("  #{found ? 'FOUND' : 'NOT FOUND'}: 'Common:#{animName}'")
      end
      _ebdx_diag_pbCommonAnimation(animName, user, target)
    rescue => e
      _ebdx_anim_log("  EXCEPTION in pbCommonAnimation: #{e.class}: #{e.message}\n  #{e.backtrace&.first(5)&.join("\n  ")}")
    end

    alias _ebdx_diag_pbAnimation pbAnimation unless method_defined?(:_ebdx_diag_pbAnimation)
    def pbAnimation(moveID, user, targets, hitNum = 0)
      _ebdx_anim_log("pbAnimation: moveID=#{moveID.inspect}, user=#{user&.name rescue user.inspect}, showAnims=#{@battle&.showAnims rescue 'N/A'}")
      begin
        move2anim = pbLoadMoveToAnim
        _ebdx_anim_log("  move2anim: #{move2anim.nil? ? 'NIL' : "#{move2anim.length} hashes"}")
        animID = pbFindMoveAnimation(moveID, user.index, hitNum)
        _ebdx_anim_log("  animID=#{animID.inspect}")
        animations = pbLoadBattleAnimations
        _ebdx_anim_log("  animations: #{animations.nil? ? 'NIL' : "#{animations.length} entries, class=#{animations.class}"}")
        if animID && animations
          anim_obj = animations[animID[0]]
          _ebdx_anim_log("  anim_obj[#{animID[0]}]=#{anim_obj.nil? ? 'NIL' : anim_obj.name.inspect}")
        end
      rescue => e
        _ebdx_anim_log("  diag error: #{e.class}: #{e.message}")
      end
      _ebdx_diag_pbAnimation(moveID, user, targets, hitNum)
    rescue => e
      _ebdx_anim_log("  EXCEPTION in pbAnimation: #{e.class}: #{e.message}\n  #{e.backtrace&.first(5)&.join("\n  ")}")
    end
  end

  def _ebdx_anim_log(msg)
    @_ebdx_anim_log_count ||= 0
    return if @_ebdx_anim_log_count > 300
    @_ebdx_anim_log_count += 1
    File.open("animlog.txt", "a") { |f| f.puts("[#{Time.now.strftime('%H:%M:%S')}] #{msg}") }
  rescue StandardError
  end
end
