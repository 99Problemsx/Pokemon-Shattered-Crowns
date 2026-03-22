#===============================================================================
# Boss Battles — Settings
#===============================================================================
module Settings
  # Path to boss battle graphics.
  BOSS_GRAPHICS_PATH = "Graphics/UI/Battle/Boss Battle/"

  # Base number of shield segments for all bosses.
  BOSS_BASE_SHIELDS = 3

  # Level threshold for +1 shield.
  BOSS_HIGH_LEVEL_THRESH = 100

  # Base stat total threshold for +1 shield.
  BOSS_HIGH_BST_THRESH = 670

  # Base power that OHKO moves deal against bosses instead of instant KO.
  BOSS_OHKO_REPLACEMENT_BP = 250

  # Default hp_level multiplier applied to boss Pokemon.
  BOSS_HP_BOOST = 5

  # Automatically make wild Legendary/Mythical Pokemon into bosses.
  BOSS_AUTO_LEGENDARY = true

  # Wild bosses gain random stat boosts when shields break.
  BOSS_SHIELD_BREAK_STAT_BOOST = true

  # Default immunities applied to all boss Pokemon.
  BOSS_DEFAULT_IMMUNITIES = [:FLINCH, :PPLOSS, :OHKO, :SELFKO, :ESCAPE]
end
