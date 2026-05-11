#===============================================================================
#  [SC] EBDX Battle UI — Battle Scene Integration
#  Overrides Battle::Scene to use EBDX-style bag UI and party lineup.
#  Compatible with Pokémon Essentials v21.1 and Deluxe Battle Kit.
#===============================================================================

class Battle::Scene
  #-----------------------------------------------------------------------------
  #  Create the EBDX bag window + party lineups (called during scene setup)
  #-----------------------------------------------------------------------------
  alias ebdx_bag_pbInitSprites pbInitSprites unless method_defined?(:ebdx_bag_pbInitSprites)
  def pbInitSprites
    ebdx_bag_pbInitSprites
    @bagWindowEBDX = BagWindowEBDX.new(self, @viewport)
    # EBDX Party Lineups
    @ebdxPlayerLineup   = PartyLineupEBDX.new(@viewport, self, @battle, 0)
    @ebdxOpponentLineup = PartyLineupEBDX.new(@viewport, self, @battle, 1)
    # Pass battle reference to target window for Pokémon icons
    tw = @sprites["targetWindow"]
    tw.ebdx_battle = @battle if tw && tw.respond_to?(:ebdx_battle=)
  end

  #-----------------------------------------------------------------------------
  #  Dispose the EBDX bag window + party lineups
  #-----------------------------------------------------------------------------
  alias ebdx_bag_pbDisposeSprites pbDisposeSprites unless method_defined?(:ebdx_bag_pbDisposeSprites)
  def pbDisposeSprites
    @bagWindowEBDX.dispose if @bagWindowEBDX && !@bagWindowEBDX.disposed?
    @ebdxPlayerLineup&.dispose
    @ebdxOpponentLineup&.dispose
    ebdx_bag_pbDisposeSprites
  end

  #-----------------------------------------------------------------------------
  #  Hook into pbFrameUpdate so EBDX lineups animate every frame.
  #  This drives the asynchronous slide-in started by pbShowPartyLineup.
  #-----------------------------------------------------------------------------
  alias ebdx_lineup_pbFrameUpdate pbFrameUpdate unless method_defined?(:ebdx_lineup_pbFrameUpdate)
  def pbFrameUpdate(cw = nil)
    ebdx_lineup_pbFrameUpdate(cw)
    @ebdxPlayerLineup&.update   if @ebdxPlayerLineup && !@ebdxPlayerLineup.disposed?
    @ebdxOpponentLineup&.update if @ebdxOpponentLineup && !@ebdxOpponentLineup.disposed?
  end

  #-----------------------------------------------------------------------------
  #  Override party lineup to use EBDX-style (if graphics available)
  #  fullAnim=true:  battle intro — return immediately, animation runs via
  #                  pbFrameUpdate so both lineups slide in simultaneously.
  #  fullAnim=false: mid-battle refresh — block until animation complete.
  #-----------------------------------------------------------------------------
  alias ebdx_lineup_pbShowPartyLineup pbShowPartyLineup unless method_defined?(:ebdx_lineup_pbShowPartyLineup)
  def pbShowPartyLineup(side, fullAnim = false)
    lineup = (side % 2 == 0) ? @ebdxPlayerLineup : @ebdxOpponentLineup
    if lineup && !lineup.disposed? && lineup.available
      lineup.refresh
      # fullAnim=true (intro): return immediately; the slide-in plays
      # asynchronously via the pbFrameUpdate hook above.
      # fullAnim=false (switching): block until the slide-in finishes.
      unless fullAnim
        while lineup.animating?
          pbUpdate
        end
      end
    else
      ebdx_lineup_pbShowPartyLineup(side, fullAnim)
    end
  end

  #-----------------------------------------------------------------------------
  #  Override pbSendOutBattlers to hide EBDX lineup before send-out animations
  #  PE's TrainerFade/PlayerFade only affect PE's partyBar_* sprites, not ours.
  #-----------------------------------------------------------------------------
  alias ebdx_lineup_pbSendOutBattlers pbSendOutBattlers unless method_defined?(:ebdx_lineup_pbSendOutBattlers)
  def pbSendOutBattlers(sendOuts, startBattle = false)
    # Hide EBDX lineups with fade-out animation
    [@ebdxPlayerLineup, @ebdxOpponentLineup].each do |lineup|
      next unless lineup && !lineup.disposed? && lineup.loaded
      lineup.hide
    end
    # Animate hide for both lineups
    hiding = true
    while hiding
      hiding = false
      [@ebdxPlayerLineup, @ebdxOpponentLineup].each do |lineup|
        next unless lineup && !lineup.disposed? && lineup.animating?
        lineup.update
        hiding = true
      end
      Graphics.update if hiding
    end
    # Continue with standard send-out
    ebdx_lineup_pbSendOutBattlers(sendOuts, startBattle)
  end

  #-----------------------------------------------------------------------------
  #  Override pbCommandMenuEx — EBDX uses linear LEFT/RIGHT navigation
  #  instead of PE's 2×2 grid (which uses bitwise UP/DOWN/LEFT/RIGHT).
  #  Without this, only Fight/Bag (top row 0/1) are reachable via LEFT/RIGHT.
  #  Also integrates DBK's JUMPDOWN (Poké Ball picker) and JUMPUP (Battle Info).
  #-----------------------------------------------------------------------------
  alias ebdx_cmd_pbCommandMenuEx pbCommandMenuEx unless method_defined?(:ebdx_cmd_pbCommandMenuEx)
  def pbCommandMenuEx(idxBattler, texts, mode = 0)
    # Set @orgPos on first command menu open (for camera drift compensation)
    ebdx_set_org_pos if respond_to?(:ebdx_set_org_pos)
    cw = @sprites["commandWindow"]
    return ebdx_cmd_pbCommandMenuEx(idxBattler, texts, mode) unless cw.instance_variable_get(:@ebdx_cmd_available)
    # DBK UI prompt support
    pbRefreshUIPrompt(idxBattler, COMMAND_BOX) if respond_to?(:pbRefreshUIPrompt)
    pbShowWindow(COMMAND_BOX)
    cw.setTexts(texts)
    cw.setIndexAndMode(@lastCmd[idxBattler], mode)
    pbSelectBattler(idxBattler)
    # Determine number of visible commands (texts[0] is prompt, rest are commands)
    numCmds = texts.length - 1
    # Clamp index
    cw.index = cw.index.clamp(0, numCmds - 1) if numCmds > 0
    ret = -1
    loop do
      oldIndex = cw.index
      pbUpdate(cw)
      # Linear LEFT/RIGHT navigation matching horizontal EBDX button layout
      if Input.trigger?(Input::LEFT)
        cw.index = (cw.index > 0) ? cw.index - 1 : numCmds - 1
      elsif Input.trigger?(Input::RIGHT)
        cw.index = (cw.index < numCmds - 1) ? cw.index + 1 : 0
      elsif Input.trigger?(Input::UP)
        cw.index = (cw.index > 0) ? cw.index - 1 : numCmds - 1
      elsif Input.trigger?(Input::DOWN)
        cw.index = (cw.index < numCmds - 1) ? cw.index + 1 : 0
      end
      pbSEPlay("EBDX/SE_Select1") rescue pbPlayCursorSE if cw.index != oldIndex
      if Input.trigger?(Input::USE)
        pbSEPlay("EBDX/SE_Select2") rescue pbPlayDecisionSE
        ret = cw.index
        @lastCmd[idxBattler] = ret
        break
      elsif Input.trigger?(Input::BACK) && mode > 0
        pbSEPlay("EBDX/SE_Select2") rescue pbPlayCancelSE
        break
      elsif Input.trigger?(Input::F9) && $DEBUG
        pbPlayDecisionSE
        pbHideInfoUI if respond_to?(:pbHideInfoUI)
        ret = -2
        break
      elsif Input.trigger?(Input::JUMPUP) && !pbInSafari? && respond_to?(:pbToggleBattleInfo)
        pbToggleBattleInfo
      elsif Input.trigger?(Input::JUMPDOWN) && !pbInSafari? && respond_to?(:pbToggleBallInfo)
        if pbToggleBallInfo(idxBattler)
          ret = 1
          break
        end
      end
    end
    return ret
  end

  #-----------------------------------------------------------------------------
  #  Override pbShowCommands to use EBDX choice window
  #-----------------------------------------------------------------------------
  alias ebdx_choice_pbShowCommands pbShowCommands unless method_defined?(:ebdx_choice_pbShowCommands)
  def pbShowCommands(msg, commands, defaultValue)
    if !pbResolveBitmap(EBDXBattleUI::GRAPHICS_PATH + "btnEmpty")
      return ebdx_choice_pbShowCommands(msg, commands, defaultValue)
    end
    pbWaitMessage
    pbShowWindow(MESSAGE_BOX)
    dw = @sprites["messageWindow"]
    dw.text = msg
    cw = ChoiceWindowEBDX.new(@viewport, commands, self)
    PBDebug.log_message(msg)
    loop do
      pbUpdate(cw)
      dw.update
      if Input.trigger?(Input::BACK) && defaultValue >= 0
        if dw.busy?
          pbPlayDecisionSE if dw.pausing?
          dw.resume
        else
          pbSEPlay("EBDX/SE_Select2") rescue pbPlayCancelSE
          cw.dispose(self)
          dw.text = ""
          return defaultValue
        end
      elsif Input.trigger?(Input::USE)
        if dw.busy?
          pbPlayDecisionSE if dw.pausing?
          dw.resume
        else
          pbSEPlay("EBDX/SE_Select2") rescue pbPlayDecisionSE
          cw.dispose(self)
          dw.text = ""
          return cw.index
        end
      end
    end
  end

  #-----------------------------------------------------------------------------
  #  Item menu functionality handler — EBDX style
  #-----------------------------------------------------------------------------
  alias ebdx_bag_pbItemMenu pbItemMenu unless method_defined?(:ebdx_bag_pbItemMenu)
  def pbItemMenu(idxBattler, firstAction)
    ret      = 0
    retindex = -1
    pkmnid   = -1
    # update input to prevent misclicks
    Input.update
    # Hide command window so the slide-in re-triggers when we return
    @sprites["commandWindow"].visible = false if @sprites["commandWindow"]
    # show bag UI
    @bagWindowEBDX.show
    # start main loop
    loop do
      Input.update
      @bagWindowEBDX.update
      break if @bagWindowEBDX.finished
      # jump into next level to confirm item use
      if !@bagWindowEBDX.ret.nil? && @bagWindowEBDX.useItem?
        item = EBDXBag_Helpers.safeGetItem(@bagWindowEBDX.ret)
        next if item.nil?
        itemName = (item.name rescue @bagWindowEBDX.ret.to_s)
        # Normalize battle_use: SC uses Symbols (:OnPokemon, :OnFoe etc.),
        # PE uses Integers (1-5). Convert to Integer for the case below.
        raw_bu   = item.battle_use rescue nil
        useType  = EBDXBag_Helpers.normalizeBattleUse(raw_bu)
        case useType
        when 1, 2, 3   # Use on Pokémon/Pokémon's move/battler
          case useType
          when 1   # Use on Pokémon
            if @battle.pbTeamLengthFromBattlerIndex(idxBattler) == 1
              ret = item
              break if yield item.id, useType, @battle.battlers[idxBattler].pokemonIndex, -1, @bagWindowEBDX
            end
          when 3   # Use on battler
            if @battle.pbPlayerBattlerCount == 1
              ret = item
              break if yield item.id, useType, @battle.battlers[idxBattler].pokemonIndex, -1, @bagWindowEBDX
            end
          end
          # Get player's party
          party    = @battle.pbParty(idxBattler)
          partyPos = @battle.pbPartyOrder(idxBattler)
          partyStart, _partyEnd = @battle.pbTeamIndexRangeFromBattlerIndex(idxBattler)
          modParty = @battle.pbPlayerDisplayParty(idxBattler)
          # Start party screen
          @bagWindowEBDX.clearSel
          pkmnScene  = PokemonParty_Scene.new
          pkmnScreen = PokemonPartyScreen.new(pkmnScene, modParty)
          pkmnScreen.pbStartScene(_INTL("Use on which Pokémon?"), @battle.pbNumPositions(0, 0))
          idxParty = -1
          loop do
            pkmnScene.pbSetHelpText(_INTL("Use on which Pokémon?"))
            idxParty = pkmnScreen.pbChoosePokemon
            break if idxParty < 0
            idxPartyRet = -1
            partyPos.each_with_index do |pos, i|
              next if pos != idxParty + partyStart
              idxPartyRet = i
              break
            end
            next if idxPartyRet < 0
            pkmn = party[idxPartyRet]
            next if !pkmn || pkmn.egg?
            idxMove = -1
            if useType == 2   # Use on Pokémon's move
              idxMove = pkmnScreen.pbChooseMove(pkmn, _INTL("Restore which move?"))
              next if idxMove < 0
            end
            break if yield item.id, useType, idxPartyRet, idxMove, pkmnScene
          end
          pkmnScene.pbEndScene
          break if idxParty >= 0
        when 4   # Use on opposing battler (Poké Balls)
          idxTarget = -1
          if @battle.pbOpposingBattlerCount(idxBattler) == 1
            @battle.allOtherSideBattlers(idxBattler).each { |b| idxTarget = b.index }
            ret = item
            break if yield item.id, useType, idxTarget, -1, @bagWindowEBDX
          else
            wasTargeting = true
            @bagWindowEBDX.sprites["back"].opacity = 0
            idxTarget = pbChooseTarget(idxBattler, GameData::Target.get(:Foe))
            if idxTarget >= 0
              ret = item
              break if yield item.id, useType, idxTarget, -1, self
            end
            wasTargeting = false
          end
          @bagWindowEBDX.closeCurrent
        when 5   # Use with no target
          ret = item
          break if yield item.id, useType, idxBattler, -1, @bagWindowEBDX
        end
      end
      Graphics.update
    end
    # close out bag
    @bagWindowEBDX.clearSel
    @bagWindowEBDX.hide
    begin
      if ret != 0 && ret.respond_to?(:id)
        numId = EBDXBag_Helpers.getItemIndex(ret.id)
        $lastUsed = nil if (numId > 0 && $bag.quantity(ret.id) <= 1)
      else
        $lastUsed = nil
      end
    rescue StandardError
      $lastUsed = nil
    end
  end
end
