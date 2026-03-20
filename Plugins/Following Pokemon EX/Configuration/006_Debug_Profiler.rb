#===============================================================================
# [Following Pokemon EX] Map Transfer Profiler
# Only logs during connected map transitions — captures EVERYTHING that fires.
# Set FOLLOWER_DEBUG = true to enable, false to disable.
#===============================================================================
module FollowingPkmn
  FOLLOWER_DEBUG = true
end

# Tracking state: only log when a map transfer is happening
$__fpkmn_trace_active = false
$__fpkmn_trace_log = []
$__fpkmn_last_map_id = nil
$__fpkmn_trace_frames_remaining = 0
$__fpkmn_connected_transfer = false

def __fpkmn_trace(method_name, elapsed_ms, extra = "")
  return unless $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
  frame = Graphics.frame_count
  map_id = $game_map&.map_id rescue "?"
  msg = "[TRACE f#{frame} map#{map_id}] #{method_name}: #{elapsed_ms.round(2)}ms #{extra}"
  $__fpkmn_trace_log.push(msg)
end

def __fpkmn_flush_trace(reason)
  return if $__fpkmn_trace_log.empty?
  echoln "======== MAP TRANSFER TRACE (#{reason}) ========"
  $__fpkmn_trace_log.each { |line| echoln line }
  echoln "======== END TRACE (#{$__fpkmn_trace_log.length} entries) ========"
  $__fpkmn_trace_log.clear
end

#===============================================================================
# Detect map change — start tracing
#===============================================================================
EventHandlers.add(:on_leave_map, :debug_trace_start, proc { |new_id, _new_map|
  next unless FollowingPkmn::FOLLOWER_DEBUG
  old_id = $game_map&.map_id
  $__fpkmn_trace_active = true
  $__fpkmn_trace_frames_remaining = 5  # capture 5 frames after transfer too
  $__fpkmn_trace_log.clear
  __fpkmn_trace(">>> ON_LEAVE_MAP", 0, "old=#{old_id} new=#{new_id}")
})

EventHandlers.add(:on_enter_map, :debug_trace_enter, proc { |old_map_id|
  next unless FollowingPkmn::FOLLOWER_DEBUG
  __fpkmn_trace(">>> ON_ENTER_MAP", 0, "old=#{old_map_id} new=#{$game_map&.map_id}")
})

#===============================================================================
# Deferred patching
#===============================================================================
$__fpkmn_debug_installed = false

EventHandlers.add(:on_map_or_spriteset_change, :install_debug_profiler, proc { |scene, _map_changed|
  next if $__fpkmn_debug_installed
  $__fpkmn_debug_installed = true

  # Resolve classes from live instances
  klass_MapFactory = $map_factory.class
  klass_Player     = $game_player.class
  klass_SceneMap   = scene.class
  klass_FollowerSprites = $scene.spriteset.follower_sprites.class rescue eval("FollowerSprites")
  klass_FollowingPkmn = eval("Game_FollowingPkmn")

  echoln "=== Connected map transfer optimization installed ===" if FollowingPkmn::FOLLOWER_DEBUG

  #---------------------------------------------------------------------------
  # setCurrentMap — THE connected map boundary crossing
  #---------------------------------------------------------------------------
  factory_profiler = Module.new do
    define_method(:setCurrentMap) do
      old_map = $game_map&.map_id
      t0 = System.uptime if FollowingPkmn::FOLLOWER_DEBUG
      super()
      new_map = $game_map&.map_id
      if old_map != new_map
        if FollowingPkmn::FOLLOWER_DEBUG
          elapsed = (System.uptime - t0) * 1000
          $__fpkmn_trace_active = true
          $__fpkmn_trace_frames_remaining = 5
          $__fpkmn_connected_transfer = true
          __fpkmn_trace("setCurrentMap CHANGED", elapsed, "#{old_map} -> #{new_map}")
        end
      end
    end

    define_method(:updateMapsInternal) do
      if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
        old_count = @maps.length
        t0 = System.uptime
        super()
        elapsed = (System.uptime - t0) * 1000
        new_count = @maps.length
        __fpkmn_trace("updateMapsInternal", elapsed, "maps: #{old_count} -> #{new_count}")
      else
        super()
      end
    end

    define_method(:setMapsInRange) do
      if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
        t0 = System.uptime
        super()
        elapsed = (System.uptime - t0) * 1000
        __fpkmn_trace("setMapsInRange", elapsed, "maps=#{@maps.length}")
      else
        super()
      end
    end
  end
  klass_MapFactory.prepend(factory_profiler)

  #---------------------------------------------------------------------------
  # Scene_Map — frame-level + spritesets + updateMaps
  #---------------------------------------------------------------------------
  scene_profiler = Module.new do
    define_method(:updateMaps) do
      if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
        t0 = System.uptime
        super()
        elapsed = (System.uptime - t0) * 1000
        __fpkmn_trace("Scene_Map#updateMaps", elapsed, "maps=#{$map_factory.maps.length rescue '?'}")
      else
        super()
      end
    end

    define_method(:updateSpritesets) do |refresh_arg = false|
      if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
        t0 = System.uptime
        super(refresh_arg)
        elapsed = (System.uptime - t0) * 1000
        __fpkmn_trace("updateSpritesets(#{refresh_arg})", elapsed)
      else
        super(refresh_arg)
      end
    end

    define_method(:update) do |*args|
      if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
        t0 = System.uptime
        super(*args)
        elapsed = (System.uptime - t0) * 1000
        __fpkmn_trace("Scene_Map#update FRAME", elapsed)
        # If a connected map transfer happened this frame, end active trace
        # and start the countdown for post-settle frames
        if $__fpkmn_connected_transfer
          $__fpkmn_connected_transfer = false
          $__fpkmn_trace_active = false
          # Don't flush yet — let countdown capture settle frames
        end
        # Count down post-transfer frames
        if !$__fpkmn_trace_active && $__fpkmn_trace_frames_remaining > 0
          $__fpkmn_trace_frames_remaining -= 1
          if $__fpkmn_trace_frames_remaining == 0
            __fpkmn_flush_trace("connected map transfer")
          end
        end
      else
        super(*args)
      end
    end

    define_method(:createSpritesets) do
      if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
        t0 = System.uptime
        super()
        elapsed = (System.uptime - t0) * 1000
        __fpkmn_trace("createSpritesets", elapsed)
      else
        super()
      end
    end

    define_method(:disposeSpritesets) do
      if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
        t0 = System.uptime
        super()
        elapsed = (System.uptime - t0) * 1000
        __fpkmn_trace("disposeSpritesets", elapsed)
      else
        super()
      end
    end

    define_method(:transfer_player) do |cancel_swimming = true|
      $__fpkmn_trace_active = true
      $__fpkmn_trace_frames_remaining = 5
      __fpkmn_trace(">>> transfer_player START", 0, "new_map=#{$game_temp.player_new_map_id}")
      t0 = System.uptime
      super(cancel_swimming)
      elapsed = (System.uptime - t0) * 1000
      __fpkmn_trace("<<< transfer_player DONE", elapsed)
      $__fpkmn_trace_active = false
      __fpkmn_flush_trace("transfer_player")
    end
  end
  klass_SceneMap.prepend(scene_profiler)

  #---------------------------------------------------------------------------
  # Game_Player#update — only during trace
  #---------------------------------------------------------------------------
  player_profiler = Module.new do
    define_method(:update) do
      if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
        t0 = System.uptime
        super()
        elapsed = (System.uptime - t0) * 1000
        __fpkmn_trace("Game_Player#update", elapsed, "moving=#{moving?} x=#{@x} y=#{@y}")
      else
        super()
      end
    end
  end
  klass_Player.prepend(player_profiler)

  #---------------------------------------------------------------------------
  # FollowingPkmn.refresh — only during trace
  #---------------------------------------------------------------------------
  orig_refresh = FollowingPkmn.method(:refresh)
  FollowingPkmn.define_singleton_method(:refresh) do |anim = false|
    if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
      t0 = System.uptime
      ret = orig_refresh.call(anim)
      elapsed = (System.uptime - t0) * 1000
      __fpkmn_trace("FollowingPkmn.refresh(anim=#{anim})", elapsed, "result=#{ret}")
      ret
    else
      orig_refresh.call(anim)
    end
  end

  orig_refresh_internal = FollowingPkmn.method(:refresh_internal)
  FollowingPkmn.define_singleton_method(:refresh_internal) do
    if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
      t0 = System.uptime
      orig_refresh_internal.call
      elapsed = (System.uptime - t0) * 1000
      __fpkmn_trace("FollowingPkmn.refresh_internal", elapsed, "active=#{FollowingPkmn.active?}")
    else
      orig_refresh_internal.call
    end
  end

  #---------------------------------------------------------------------------
  # Game_FollowingPkmn — follow_leader only during trace
  #---------------------------------------------------------------------------
  follower_profiler = Module.new do
    define_method(:follow_leader) do |leader, instant = false, leaderIsTrueLeader = true|
      if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
        t0 = System.uptime
        super(leader, instant, leaderIsTrueLeader)
        elapsed = (System.uptime - t0) * 1000
        __fpkmn_trace("follow_leader", elapsed,
          "pos=#{self.x},#{self.y} map=#{self.map&.map_id} leader=#{leader.x},#{leader.y} lmap=#{leader.map&.map_id} instant=#{instant}")
      else
        super(leader, instant, leaderIsTrueLeader)
      end
    end
  end
  klass_FollowingPkmn.prepend(follower_profiler)

  #---------------------------------------------------------------------------
  # FollowerSprites#refresh — only during trace
  #---------------------------------------------------------------------------
  sprite_profiler = Module.new do
    define_method(:refresh) do |*args|
      if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
        t0 = System.uptime
        ret = super(*args)
        elapsed = (System.uptime - t0) * 1000
        __fpkmn_trace("FollowerSprites#refresh", elapsed)
        ret
      else
        super(*args)
      end
    end
  end
  klass_FollowerSprites.prepend(sprite_profiler)

  #---------------------------------------------------------------------------
  # Dynamic Lighting System — fix double refresh + defer heavy rebuild
  # On connected map transitions, Lighting#update detects the map change and
  # calls refresh_all(true) (setup_map + setup_effects + setup_overlay + all
  # per-frame refreshes), then falls through to call refresh_all AGAIN.
  # Fix: defer setup_effects and setup_overlay across subsequent frames,
  #      and prevent the double refresh_all call.
  #---------------------------------------------------------------------------
  klass_Lighting = scene.instance_variable_get(:@spritesetGlobal)&.lighting&.class rescue nil
  klass_Lighting ||= eval("Lighting") rescue nil

  if klass_Lighting
    lighting_optimizer = Module.new do
      define_method(:update) do
        if $game_map && $game_map.map_id != @last_map_id
          @last_map_id = $game_map.map_id
          # Lightweight setup: just load map settings (hash lookup)
          setup_map
          # Defer the expensive parts (sprite recreation, overlay drawing)
          @__deferred_setup_effects = true
          @__deferred_setup_overlay = true
          if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
            __fpkmn_trace("Lighting: map change detected, deferring rebuild", 0)
          end
          # Fall through to normal refresh_all below (runs once, not twice)
        end

        # Handle deferred setup — one piece per frame to spread the cost
        if @__deferred_setup_effects
          @__deferred_setup_effects = false
          t0 = System.uptime if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
          setup_effects
          if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
            elapsed = (System.uptime - t0) * 1000
            __fpkmn_trace("Lighting: deferred setup_effects", elapsed)
          end
        elsif @__deferred_setup_overlay
          @__deferred_setup_overlay = false
          t0 = System.uptime if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
          setup_overlay
          if $__fpkmn_trace_active || $__fpkmn_trace_frames_remaining > 0
            elapsed = (System.uptime - t0) * 1000
            __fpkmn_trace("Lighting: deferred setup_overlay", elapsed)
          end
        end

        return if !@map_settings
        refresh_all
      end
    end
    klass_Lighting.prepend(lighting_optimizer)
    echoln "=== Lighting deferred rebuild patch installed ===" if FollowingPkmn::FOLLOWER_DEBUG
  end

  echoln "=== Map Transfer Profiler READY — walk across a map boundary ===" if FollowingPkmn::FOLLOWER_DEBUG
})

echoln "=== Connected map optimization registered ===" if FollowingPkmn::FOLLOWER_DEBUG
