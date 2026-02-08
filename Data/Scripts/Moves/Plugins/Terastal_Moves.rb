#===============================================================================
# Shattered Crowns - Plugin - terastal Move Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Move.define format
#===============================================================================

GameData::Move.define :TERABLAST do |m|
  m.name          "Tera Blast"
  m.type          :NORMAL
  m.category      :Special
  m.power         80
  m.accuracy      100
  m.total_pp      10
  m.target        :NearOther
  m.function_code "CategoryDependsOnHigherDamageTera"
  m.flags         :CanProtect, :CanMirrorMove
  m.description   "Move type changes to match a Terastallized user's Tera Type. Deals damage based on user's higher stat."
end

