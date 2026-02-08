#===============================================================================
# Shattered Crowns - Adventure Map Definitions
#===============================================================================
# Auto-generated from PBS/adventure_maps.txt
# Uses GameData::AdventureMap.define format
#===============================================================================

GameData::AdventureMap.define 0 do |m|
  m.name            "Cavernous Lair"
  m.filename        "Cave"
  m.description     "A small cavern filled with Raid Pokémon."
  m.darkness_chance 10
  m.dimensions      17, 28
  m.player_start    "0827"
  m.pathways        "0209", "0211", "0213", "0215", "0217", "0310", "0314", "0408", "0409", "0418", "0507", "0514", "0518", "0612", "0613", "0616", "0619", "0621", "0707", "0710", "0718", "0722", "0808", "0824", "0825", "0826", "0827", "0907", "0910", "0918", "0922", "1012", "1013", "1016", "1019", "1021", "1107", "1114", "1118", "1208", "1209", "1218", "1310", "1314", "1409", "1411", "1413", "1415", "1417"
  m.battles         "0620", "1020", "0216", "1416", "1015", "0615", "0212", "1412", "1011", "0611", "0807"
  m.tile            :Assistant, "1408"
  m.tile            :Berries, "0414"
  m.tile            :Berries, "1214"
  m.tile            :Berries, "1007"
  m.tile            :Berries, "0607"
  m.tile            :Crossroad, "0210"
  m.tile            :Crossroad, "0822"
  m.tile            :Crossroad, "1410"
  m.tile            :Crossroad, "1014"
  m.tile            :Crossroad, "0614"
  m.tile            :Crossroad, "1414"
  m.tile            :Crossroad, "1018"
  m.tile            :Crossroad, "0214"
  m.tile            :Crossroad, "0618"
  m.tile            :HiddenTrap, "1307"
  m.tile            :HiddenTrap, "0307"
  m.tile            :MoveTutor, "0208"
  m.tile            :Mystic, "0813"
  m.tile            :Researcher, "0809"
  m.tile            :Roadblock, "0914"
  m.tile            :Roadblock, "0714"
  m.tile            :StartPoint, "0823"
  m.tile            :StatTrainer, "1318"
  m.tile            :Switch, "0818"
  m.tile            :Teleporter, "0812"
  m.tile            :TurnEast, "0610"
  m.tile            :TurnEast, "0407"
  m.tile            :TurnEast, "0207"
  m.tile            :TurnNorth, "0814"
  m.tile            :TurnNorth, "0617"
  m.tile            :TurnNorth, "1017"
  m.tile            :TurnNorth, "0218"
  m.tile            :TurnNorth, "1022"
  m.tile            :TurnNorth, "0410"
  m.tile            :TurnNorth, "0810"
  m.tile            :TurnNorth, "1210"
  m.tile            :TurnNorth, "0622"
  m.tile            :TurnNorth, "1418"
  m.tile            :TurnWest, "1407"
  m.tile            :TurnWest, "1010"
  m.tile            :TurnWest, "1207"
  m.tile            :ItemVendor, "0318"
  m.tile            :Warp, "0114"
  m.tile            :Warp, "0110"
  m.tile            :Warp, "1510"
  m.tile            :Warp, "1514"
end

