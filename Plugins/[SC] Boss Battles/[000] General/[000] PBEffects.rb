#===============================================================================
# Boss Battles — New PBEffects
#===============================================================================
module PBEffects
  BossShieldMax      = 420   # Maximum number of shield segments
  BossShieldCurrent  = 421   # Current intact shield segments
  BossShieldsLost    = 422   # Total segments broken (scales stat boosts)
  BossPassiveAbility = 423   # Symbol ID of the passive ability
end

#===============================================================================
# Register in $DELUXE_PBEFFECTS for DBK compatibility.
#===============================================================================
if defined?($DELUXE_PBEFFECTS)
  $DELUXE_PBEFFECTS[:battler][:counter] << :BossShieldMax
  $DELUXE_PBEFFECTS[:battler][:counter] << :BossShieldCurrent
  $DELUXE_PBEFFECTS[:battler][:counter] << :BossShieldsLost
end
