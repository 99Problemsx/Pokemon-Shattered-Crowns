#===============================================================================
# Shattered Crowns - Dynamax Item Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Item.define format
#===============================================================================

GameData::Item.define :DYNAMAXBAND do |i|
  i.name        "Dynamax Band"
  i.name_plural "Dynamax Bands"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem, :DynamaxBand
  i.description "A Wishing Star has been affixed to it. It lets out light that allows Pokémon to Dynamax when at a Power Spot."
end

GameData::Item.define :WISHINGSTAR do |i|
  i.name        "Wishing Star"
  i.name_plural "Wishing Stars"
  i.pocket      7
  i.price       4000
  i.battle_use  :Direct
  i.flags       :Fling_50, :UsesAllBattleActions
  i.description "A stone that radiates Dynamax energy. It can fully recharge your Dynamax Band in battle."
end

GameData::Item.define :DYNAMAXCANDY do |i|
  i.name        "Dynamax Candy"
  i.name_plural "Dynamax Candies"
  i.pocket      2
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :Fling_30
  i.description "Raises the Dynamax Level of a single Pokémon by one. A higher level means higher HP when Dynamaxed."
end

GameData::Item.define :DYNAMAXCANDYXL do |i|
  i.name        "Dynamax Candy XL"
  i.name_plural "Dynamax Candies XL"
  i.pocket      2
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :Fling_30
  i.description "Maxes out the Dynamax Level of a single Pokémon. A higher level means higher HP when Dynamaxed."
end

GameData::Item.define :MAXSOUP do |i|
  i.name        "Max Soup"
  i.name_plural "Max Soups"
  i.pocket      2
  i.price       10000
  i.field_use   :OnPokemon
  i.flags       :Fling_30
  i.description "A soup that packs a huge kick. Certain Pokémon that consume it may be given the ability to Gigantamax."
end

