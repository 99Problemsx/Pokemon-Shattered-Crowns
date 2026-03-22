#===============================================================================
# [SC] Companion Pokemon - Overworld Sprite Resolution
# Adds GameData::Species.ow_sprite_filename for resolving follower sprites
# from Graphics/Characters/Followers/ with shiny, form, gender, and swimming
# variant support.
#===============================================================================

module GameData
  class Species
    #---------------------------------------------------------------------------
    # Resolve the overworld sprite filename for a Pokemon species.
    # Checks Followers/, Followers Shiny/, Swimming/, Swimming Shiny/,
    # Levitates/, Levitates Shiny/ subfolders with full variant fallback.
    #---------------------------------------------------------------------------
    def self.ow_sprite_filename(species, form = 0, gender = 0, shiny = false, shadow = false, swimming = false)
      # Priority for swimming: Levitates > Swimming > Followers
      if swimming
        folder = shiny ? "Levitates Shiny" : "Levitates"
        ret = self.check_graphic_file("Graphics/Characters/", species, form,
                                      gender, shiny, shadow, folder)
        return ret if !nil_or_empty?(ret)

        folder = shiny ? "Swimming Shiny" : "Swimming"
        ret = self.check_graphic_file("Graphics/Characters/", species, form,
                                      gender, shiny, shadow, folder)
        return ret if !nil_or_empty?(ret)
      end
      # Default to Followers subfolder
      ret = self.check_graphic_file("Graphics/Characters/", species, form,
                                    gender, shiny, shadow, "Followers")
      ret = "Graphics/Characters/Followers/" if nil_or_empty?(ret)
      return ret
    end
  end
end

#===============================================================================
# FollowerData extension — mark Pokemon follower entries
#===============================================================================
class FollowerData
  def following_pkmn?
    return @event_name == "FollowingPkmn"
  end
end

#===============================================================================
# Game_FollowingPkmn — Pokemon-specific follower event
# Extends Game_Follower with terrain-aware movement, sprite awareness,
# and water/airborne handling.
#===============================================================================
class Game_FollowingPkmn < Game_Follower
  def initialize(*args)
    super(*args)
    @last_leader_x = nil
    @last_leader_y = nil
  end

  #-----------------------------------------------------------------------------
  # Constant walk animation speed regardless of move speed
  #-----------------------------------------------------------------------------
  def update_pattern
    return if @lock_pattern
    if @moved_last_frame && !@moved_this_frame && !@step_anime
      @pattern = @original_pattern
      @anime_count = 0
      return
    end
    if !@moved_last_frame && @moved_this_frame && !@step_anime
      @pattern = (@pattern + 1) % 4 if @walk_anime
      @anime_count = 0
      return
    end
    pattern_time = pattern_update_speed / 4
    return if @anime_count < pattern_time
    @pattern = (@pattern + 1) % 4
    @anime_count -= pattern_time
  end

  #-----------------------------------------------------------------------------
  # Don't turn off walk animation when ice sliding if airborne
  #-----------------------------------------------------------------------------
  alias __sc_follower__walk_anime walk_anime= unless method_defined?(:__sc_follower__walk_anime)
  def walk_anime=(value)
    return if $PokemonGlobal.ice_sliding && CompanionFollower.airborne?
    __sc_follower__walk_anime(value)
  end

  alias __sc_follower__straighten straighten unless method_defined?(:__sc_follower__straighten)
  def straighten
    return if $PokemonGlobal.ice_sliding && CompanionFollower.airborne?
    __sc_follower__straighten
  end

  #-----------------------------------------------------------------------------
  # Dust animation only when grounded
  #-----------------------------------------------------------------------------
  def show_dust_animation
    return unless CompanionFollower.active? && !CompanionFollower.airborne?
    spriteset = $scene.spriteset(map_id) rescue nil
    spriteset&.addUserAnimation(CompanionFollower::DUST_ANIMATION_ID, self.x, self.y, true, 1)
  end

  def update_move
    was_jumping = jumping?
    super
    show_dust_animation if was_jumping && !jumping?
  end

  #-----------------------------------------------------------------------------
  # Water-aware passability — followers can traverse water if waterborne
  #-----------------------------------------------------------------------------
  def location_passable?(x, y, direction)
    this_map = self.map
    return false if !this_map || !this_map.valid?(x, y)
    return true if @through
    passed_tile_checks = false
    bit = (1 << ((direction / 2) - 1)) & 0x0f
    this_map.events.each_value do |event|
      next if event.tile_id < 0 || event.through || !event.at_coordinate?(x, y)
      tile_data = GameData::TerrainTag.try_get(this_map.terrain_tags[event.tile_id])
      next if tile_data.ignore_passability
      next if tile_data.bridge && $PokemonGlobal.bridge == 0
      return false if tile_data.ledge
      return true if tile_data.can_surf && CompanionFollower.waterborne?
      passage = this_map.passages[event.tile_id] || 0
      return false if passage & bit != 0
      passed_tile_checks = true if (tile_data.bridge && $PokemonGlobal.bridge > 0) ||
                                   (this_map.priorities[event.tile_id] || -1) == 0
      break if passed_tile_checks
    end
    if !passed_tile_checks
      [2, 1, 0].each do |i|
        tile_id = this_map.data[x, y, i] || 0
        next if tile_id == 0
        tile_data = GameData::TerrainTag.try_get(this_map.terrain_tags[tile_id])
        next if tile_data.ignore_passability
        next if tile_data.bridge && $PokemonGlobal.bridge == 0
        return false if tile_data.ledge
        return true if tile_data.can_surf && CompanionFollower.waterborne?
        passage = this_map.passages[tile_id] || 0
        return false if passage & bit != 0
        break if tile_data.bridge && $PokemonGlobal.bridge > 0
        break if (this_map.priorities[tile_id] || -1) == 0
      end
    end
    this_map.events.values.each do |event|
      next if !event.at_coordinate?(x, y)
      return false if !event.through && event.character_name != ""
    end
    return true
  end

  #-----------------------------------------------------------------------------
  # Facing behavior
  #-----------------------------------------------------------------------------
  def turn_towards_leader(leader)
    return if CompanionFollower.active? && !CompanionFollower::ALWAYS_FACE_PLAYER
    pbTurnTowardEvent(self, leader)
  end

  #-----------------------------------------------------------------------------
  # Smart follow logic — find best position behind leader
  #-----------------------------------------------------------------------------
  def follow_leader(leader, instant = false, leaderIsTrueLeader = true)
    return if @move_route_forcing
    return if (jumping? || moving?) && !instant &&
              leader.x == @last_leader_x && leader.y == @last_leader_y
    end_movement

    old_terrain = $map_factory.getTerrainTag(self.map.map_id, self.x, self.y) rescue nil

    if @last_leader_x.nil? || @last_leader_y.nil? || leader.x != @last_leader_x || leader.y != @last_leader_y
      @last_leader_x = leader.x
      @last_leader_y = leader.y

      maps_connected = $map_factory.areConnected?(leader.map.map_id, self.map.map_id)
      target = nil

      if maps_connected
        bg_dir = 10 - leader.direction
        dirs = case leader.direction
               when 2 then [8, 4, 6]
               when 4 then [6, 2, 8]
               when 6 then [4, 2, 8]
               when 8 then [2, 4, 6]
               else [bg_dir]
               end

        dirs.each do |dir|
          t = $map_factory.getFacingTile(dir, leader)
          next if !t
          map = $map_factory.getMap(t[0])
          next if !map || !map.valid?(t[1], t[2])
          blocked = false
          map.events.each_value do |e|
            next if e.through || !e.at_coordinate?(t[1], t[2])
            next if e == self || e == leader
            blocked = true
            break
          end
          next if blocked
          if map.passable?(t[1], t[2], 0, self)
            target = t
            break
          end
        end

        if target && $map_factory.getTerrainTag(target[0], target[1], target[2]).ledge
          target = $map_factory.getFacingTileFromPos(target[0], target[1], target[2], bg_dir)
        end
        target = [leader.map.map_id, leader.x, leader.y] if !target

        # Stair support
        if GameData::TerrainTag.exists?(:StairLeft)
          currentTag = $map_factory.getTerrainTag(self.map.map_id, self.x, self.y) rescue nil
          if currentTag == :StairLeft
            target[2] += (target[1] > $game_player.x ? -1 : 1)
          elsif currentTag == :StairRight
            target[2] += (target[1] < $game_player.x ? -1 : 1)
          end
        end
      else
        target = [leader.map.map_id, leader.x, leader.y]
      end

      # Handle cross-map movement
      if self.map.map_id != target[0]
        vector = $map_factory.getRelativePos(target[0], 0, 0, self.map.map_id, @x, @y)
        @map = $map_factory.getMap(target[0])
        @x = vector[0]
        @y = vector[1]
        @real_x = @x * Game_Map::REAL_RES_X
        @real_y = @y * Game_Map::REAL_RES_Y
      end

      if instant || !maps_connected
        moveto(target[1], target[2])
      else
        fancy_moveto(target[1], target[2], leader)
      end

      calculate_bush_depth

      # Refresh sprite on water/land transition
      new_terrain = $map_factory.getTerrainTag(self.map.map_id, self.x, self.y) rescue nil
      if old_terrain && new_terrain && (old_terrain.can_surf != new_terrain.can_surf)
        pkmn = CompanionFollower.get_pokemon
        CompanionFollower.change_sprite(pkmn) if pkmn
      end
    end
  end

  def moveto(x, y)
    super(x, y)
    calculate_bush_depth
  end

  def fancy_moveto(new_x, new_y, leader)
    super(new_x, new_y, leader)
    calculate_bush_depth
  end

  def move_through(direction)
    old_through = @through
    @through = true
    case direction
    when 2 then move_down
    when 4 then move_left
    when 6 then move_right
    when 8 then move_up
    end
    @through = old_through
    @step_anime = true
  end

  def screen_z(height = 0)
    ret = super
    return ret + 1
  end
end

#===============================================================================
# Sync follower move speed with player
#===============================================================================
class Game_FollowerFactory
  alias __sc_follower__update update unless method_defined?(:__sc_follower__update)
  def update(*args)
    __sc_follower__update(*args)
    followers = $PokemonGlobal.followers
    return if followers.length == 0
    leader = $game_player
    followers.each_with_index do |follower, i|
      event = @events[i]
      next if !event
      event.move_speed = leader.move_speed if follower.following_pkmn?
      leader = event
    end
  end
end

#===============================================================================
# Ensure bush depth is recalculated on follower creation
#===============================================================================
class Game_Follower
  alias __sc_follower__initialize initialize unless method_defined?(:__sc_follower__initialize)
  def initialize(*args)
    __sc_follower__initialize(*args)
    calculate_bush_depth
  end
end
