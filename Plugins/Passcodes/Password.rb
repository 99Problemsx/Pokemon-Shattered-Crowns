module PasswordModule
  PASSWORD_SWITCHES = {
    Mintpack: 69,
    FreeExpAll: 70,
    ShinyCharm: 71,
    Pinata: 72,
    ShiningPearl: 73,
    CatchEmAll: 74,
    Healer: 75,
    Motherslove: 76,
    Fatherslove: 77,
    UnrealTime: 86,
    Tradeexpert: 85,
    NoRolls: 88,
    FullIVs: 89,
    NoBattles: 90,
    BlindSupport: 91,
    MidasTouch: 95,
    SuperHardMode: 96,
    NoCash: 183,
    Hoarder: 33,
    Monotype: 81
  }

  MUTUALLY_EXCLUSIVE_PASSWORDS = [
    [:NoCash,:Hoarder],
    [:NoBattles,:SuperHardMode]
  ]
end

class Passwords
  include PasswordModule
  def self.introOnlyPassword?(password)
   return [:CatchEmAll,:Healer,:Motherslove,:Fatherslove,].include?(password)
  end

  def self.singleRedeemPassword?(password)
    # the Intro only passwords are okay to not be included here, in case a player changes their mind
    return [:Mintpack,:FreeExpAll,:ShinyCharm,:Pinata,:MidasTouch,:Healer,:FullIVs,:Monotype,].include?(password)
  end

  def self.Mintpack
    if self.checkPassword(:Mintpack)
      $bag.add(:LONELYMINT,5)
      $bag.add(:ADAMANTMINT,5)
      $bag.add(:NAUGHTYMINT,5)
      $bag.add(:BRAVEMINT,5)
      $bag.add(:BOLDMINT,5)
      $bag.add(:IMPISHMINT,5)
      $bag.add(:LAXMINT,5)
      $bag.add(:RELAXEDMINT,5)
      $bag.add(:MODESTMINT,5)
      $bag.add(:MILDMINT,5)
      $bag.add(:RASHMINT,5)
      $bag.add(:QUIETMINT,5)
      $bag.add(:CALMMINT,5)
      $bag.add(:GENTLEMINT,5)
      $bag.add(:CAREFULMINT,5)
      $bag.add(:SASSYMINT,5)
      $bag.add(:TIMIDMINT,5)
      $bag.add(:HASTYMINT,5)
      $bag.add(:JOLLYMINT,5)
      $bag.add(:NAIVEYMINT,5)
      $bag.add(:SERIOUSMINT,5)
    end
  end
  def self.FreeExpAll
    if self.checkPassword(:FreeExpAll)
      $bag.add(:EXPALL,1)
    end
  end
  def self.ShinyCharm
    if self.checkPassword(:ShinyCharm)
      $bag.add(:SHINYCHARM,1)
    end
  end
  def self.Pinata
    self.checkPassword(:Pinata)
  end
  def self.ShiningPearl
   if self.checkPassword(:ShiningPearl)
     $bag.add(:LARGEPEARL,1)
   end
  end
  def self.FeliStarter
    self.checkPassword(:FeliStarter)
  end
  def self.CatchEmAll
    if self.checkPassword(:CatchEmAll)
      $bag.add(:POKEBALL,20)
      $bag.add(:GREATBALL,10)
      $bag.add(:ULTRABALL,10)
      $bag.add(:QUICKBALL,5)
    end
  end
  def self.Healer
    if self.checkPassword(:Healer)
      $bag.add(:POTION,20)
      $bag.add(:SUPERPOTION,15)
      $bag.add(:REVIVE,10)
    end
  end
  def self.Motherslove
    self.checkPassword(:Motherslove)
  end
  def self.Fatherslove
    self.checkPassword(:Fatherslove)
  end
  def self.IChooseYou
    self.checkPassword(:IChooseYou)
  end
  def self.UnrealTime
    self.checkPassword(:UnrealTime)
  end
  def self.NoCash
    self.checkPassword(:NoCash)
  end
  def self.Hoarder
    self.checkPassword(:Hoarder)
  end
  def self.NoRolls
    self.checkPassword(:NoRolls)
  end
  def self.FullIVs
    self.checkPassword(:FullIVs)
  end
  def self.NoBattles
    self.checkPassword(:NoBattles)
  end
  def self.BlindSupport
    self.checkPassword(:BlindSupport)
  end
  def self.MidasTouch
    self.checkPassword(:MidasTouch)
  end
  def self.Monotype
    self.checkPassword(:Monotype)
  end
    def self.Tradeexpert
    self.checkPassword(:Tradeexpert)
  end
  def self.SuperHardMode
    if self.checkPassword(:SuperHardMode)
      $PokemonSystem.challenge_mode = 2
    else
      $PokemonSystem.challenge_mode = 0
    end
  end

  def self.checkPassword(password)
    pass_switch = PASSWORD_SWITCHES[password]
    if self.introOnlyPassword?(password) && $game_switches[147] # intro done
      pbMessage(_INTL("This code cannot be redeemed, as it can only be redeemed in the intro."))
      return false
    end
    if self.singleRedeemPassword?(password) && $game_switches[pass_switch]
      pbMessage(_INTL("This code has already been redeemed."))
      return false
    elsif $game_switches[pass_switch]
      pbMessage(_INTL("You have already redeemed this code."))
      if pbConfirmMessage("Would you like to turn it off?")
        pbMessage(_INTL("This code has been disabled."))
        $game_switches[pass_switch] = false
      end
      return false
    end
    $game_switches[pass_switch] = true
    self.turn_off_mutually_exclusive(password)
    pbMessage(_INTL("This code has been redeemed."))
    return true
  end

  def self.turn_off_mutually_exclusive(password)
    MUTUALLY_EXCLUSIVE_PASSWORDS.each do |passes|
      next unless passes.include?(password)
      passes.each do |pass|
        next if pass == password
        $game_switches[PASSWORD_SWITCHES[pass]] = false
      end
    end
  end
end

class PasswordEntering
    def self.enterCode(skipConfirm = true)
      vp = Viewport.new(0, 0, Graphics.width, Graphics.height)
      vp.z = 99999
      sp = {"base" => AnimatedPlane.new(vp) }
      if pbResolveBitmap("Graphics/UI/Pokegear/bg_password")
        sp["base"].setBitmap("Graphics/UI/Pokegear/bg_password")
      end
      pbFadeInAndShow(sp)
      if skipConfirm || pbConfirmMessage(_INTL("<ac>Would you like to enter a code? \\n(Case Sensitive)</ac>"))
        code = pbEnterText(_INTL("Enter a passcode."),0,12)
        code = code.upcase
        case code
        when "MINTPACK"
          Passwords.Mintpack
        when "FREEEXPALL"
          Passwords.FreeExpAll
        when "SHINYCHARM"
          Passwords.ShinyCharm
        when "PINATA"
          Passwords.Pinata
        when "FELISTARTER"
          Passwords.FeliStarter
        when "CATCHEMALL"
          Passwords.CatchEmAll
        when "HEALER"
          Passwords.Healer
        when "MOTHERSLOVE"
          Passwords.Motherslove
        when "FATHERSLOVE"
          Passwords.Fatherslove
        when "ICHOOSEYOU"
          Passwords.IChooseYou
        when "UNREALTIME"
          Passwords.UnrealTime
        when "NOROLLS"
          Passwords.NoRolls
        when "FULLIVS"
          Passwords.FullIVs
        when "SUPERSTORYMODE"
          Passwords.NoBattles
        when "MIDASTOUCH"
          Passwords.MidasTouch
        when "SHININGPEARL"
          Passwords.ShiningPearl
        when "BLINDRUN"
          Passwords.BlindSupport
        when "MONOTYPE"
          Passwords.Monotype
        when "SUPERHARDMODE"
          Passwords.SuperHardMode
        when "TRADEEXPERT"
          Passwords.Tradeexpert
        when "HOARDER"
          Passwords.Hoarder
        else
          pbMessage(_INTL("This is an invalid password, or isn't a password at all."))
        end
      end
      pbFadeOutAndHide(sp)
      pbDisposeSpriteHash(sp)
      vp.dispose
    end
  end

  MenuHandlers.add(:pokegear_menu, :Passcodes, { #Passcodes by Felicity
    "name"      => _INTL("Passcodes"),
    "icon_name" => "Passcodes",
    "order"     => 50,
    "effect"    => proc { |menu|
        pbMessage(_INTL("Would you like to enter a Passcode?"))
        pbFadeOutIn {
          scene = PasswordEntering.enterCode
          }
          next false
    }
  })
