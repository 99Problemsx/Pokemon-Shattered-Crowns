#===============================================================================
# Shattered Crowns - Zpower Item Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Item.define format
#===============================================================================

GameData::Item.define :ZRING do |i|
  i.name        "Z-Ring"
  i.name_plural "Z-Rings"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem, :ZRing
  i.description "A mysterious ring that enables Pokémon to use Z-Power if they are holding a compatible Z-Crystal."
end

GameData::Item.define :ZPOWERRING do |i|
  i.name        "Z-Power Ring"
  i.name_plural "Z-Power Rings"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem, :ZRing
  i.description "A mysterious ring that enables Pokémon to use Z-Power if they are holding a compatible Z-Crystal."
end

GameData::Item.define :ZBOOSTER do |i|
  i.name        "Z-Booster"
  i.name_plural "Z-Boosters"
  i.pocket      7
  i.price       4000
  i.battle_use  :Direct
  i.flags       :Fling_30, :UsesAllBattleActions
  i.description "A crystal brimming with Z-Power. It can fully recharge your Z-Ring in battle."
end

GameData::Item.define :NORMALIUMZ do |i|
  i.name        "Normalium Z"
  i.name_plural "Normalium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Normal-type moves to Normal-type Z-Moves."
end

GameData::Item.define :FIGHTINIUMZ do |i|
  i.name        "Fightinium Z"
  i.name_plural "Fightinium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Fighting-type moves to Fighting-type Z-Moves."
end

GameData::Item.define :FLYINIUMZ do |i|
  i.name        "Flyinium Z"
  i.name_plural "Flyinium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Flying-type moves to Flying-type Z-Moves."
end

GameData::Item.define :POISONIUMZ do |i|
  i.name        "Poisonium Z"
  i.name_plural "Poisonium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Poison-type moves to Poison-type Z-Moves."
end

GameData::Item.define :GROUNDIUMZ do |i|
  i.name        "Groundium Z"
  i.name_plural "Groundium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Ground-type moves to Ground-type Z-Moves."
end

GameData::Item.define :ROCKIUMZ do |i|
  i.name        "Rockium Z"
  i.name_plural "Rockium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Rock-type moves to Rock-type Z-Moves."
end

GameData::Item.define :BUGINIUMZ do |i|
  i.name        "Buginium Z"
  i.name_plural "Buginium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Bug-type moves to Bug-type Z-Moves."
end

GameData::Item.define :GHOSTIUMZ do |i|
  i.name        "Ghostium Z"
  i.name_plural "Ghostium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Ghost-type moves to Ghost-type Z-Moves."
end

GameData::Item.define :STEELIUMZ do |i|
  i.name        "Steelium Z"
  i.name_plural "Steelium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Steel-type moves to Steel-type Z-Moves."
end

GameData::Item.define :FIRIUMZ do |i|
  i.name        "Firium Z"
  i.name_plural "Firium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Fire-type moves to Fire-type Z-Moves."
end

GameData::Item.define :WATERIUMZ do |i|
  i.name        "Waterium Z"
  i.name_plural "Waterium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Water-type moves to Water-type Z-Moves."
end

GameData::Item.define :GRASSIUMZ do |i|
  i.name        "Grassium Z"
  i.name_plural "Grassium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Grass-type moves to Grass-type Z-Moves."
end

GameData::Item.define :ELECTRIUMZ do |i|
  i.name        "Electrium Z"
  i.name_plural "Electrium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Electric-type moves to Electric-type Z-Moves."
end

GameData::Item.define :PSYCHIUMZ do |i|
  i.name        "Psychium Z"
  i.name_plural "Psychium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Psychic-type moves to Psychic-type Z-Moves."
end

GameData::Item.define :ICIUMZ do |i|
  i.name        "Icium Z"
  i.name_plural "Icium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Ice-type moves to Ice-type Z-Moves."
end

GameData::Item.define :DRAGONIUMZ do |i|
  i.name        "Dragonium Z"
  i.name_plural "Dragonium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Dragon-type moves to Dragon-type Z-Moves."
end

GameData::Item.define :DARKINIUMZ do |i|
  i.name        "Darkinium Z"
  i.name_plural "Darkinium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Dark-type moves to Dark-type Z-Moves."
end

GameData::Item.define :FAIRIUMZ do |i|
  i.name        "Fairium Z"
  i.name_plural "Fairium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Fairy-type moves to Fairy-type Z-Moves."
end

GameData::Item.define :PIKANIUMZ do |i|
  i.name        "Pikanium Z"
  i.name_plural "Pikanium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal, :UsableByAllForms
  i.description "It converts Z-Power into crystals that upgrade Pikachu's Volt Tackle to an exclusive Z-Move."
end

GameData::Item.define :PIKASHUNIUMZ do |i|
  i.name        "Pikashunium Z"
  i.name_plural "Pikashunium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade a capped Pikachu's Thunderbolt to an exclusive Z-Move."
end

GameData::Item.define :ALORAICHIUMZ do |i|
  i.name        "Aloraichium Z"
  i.name_plural "Aloraichium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Alolan Raichu's Thunderbolt to an exclusive Z-Move."
end

GameData::Item.define :EEVIUMZ do |i|
  i.name        "Eevium Z"
  i.name_plural "Eevium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Eevee's Last Resort to an exclusive Z-Move."
end

GameData::Item.define :SNORLIUMZ do |i|
  i.name        "Snorlium Z"
  i.name_plural "Snorlium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Snorlax's Giga Impact to an exclusive Z-Move."
end

GameData::Item.define :MEWNIUMZ do |i|
  i.name        "Mewnium Z"
  i.name_plural "Mewnium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Mew's Psychic to an exclusive Z-Move."
end

GameData::Item.define :DECIDIUMZ do |i|
  i.name        "Decidium Z"
  i.name_plural "Decidium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Decidueye's Spirit Shackle to an exclusive Z-Move."
end

GameData::Item.define :INCINIUMZ do |i|
  i.name        "Incinium Z"
  i.name_plural "Incinium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Incineroar's Darkest Lariat to an exclusive Z-Move."
end

GameData::Item.define :PRIMARIUMZ do |i|
  i.name        "Primarium Z"
  i.name_plural "Primarium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Primarina's Sparkling Aria to an exclusive Z-Move."
end

GameData::Item.define :LYCANIUMZ do |i|
  i.name        "Lycanium Z"
  i.name_plural "Lycanium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal, :UsableByAllForms
  i.description "It converts Z-Power into crystals that upgrade Lycanroc's Stone Edge to an exclusive Z-Move."
end

GameData::Item.define :MIMIKIUMZ do |i|
  i.name        "Mimikium Z"
  i.name_plural "Mimikium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal, :UsableByAllForms
  i.description "It converts Z-Power into crystals that upgrade Mimikyu's Play Rough to an exclusive Z-Move."
end

GameData::Item.define :KOMMONIUMZ do |i|
  i.name        "Kommonium Z"
  i.name_plural "Kommonium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Kommo-o's Clanging Scales to an exclusive Z-Move."
end

GameData::Item.define :TAPUNIUMZ do |i|
  i.name        "Tapunium Z"
  i.name_plural "Tapunium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade the tapus' Nature's Madness to an exclusive Z-Move."
end

GameData::Item.define :SOLGANIUMZ do |i|
  i.name        "Solganium Z"
  i.name_plural "Solganium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Solgaleo's Sunsteel Strike to an exclusive Z-Move."
end

GameData::Item.define :LUNALIUMZ do |i|
  i.name        "Lunalium Z"
  i.name_plural "Lunalium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Lunala's Moongeist Beam to an exclusive Z-Move."
end

GameData::Item.define :MARSHADIUMZ do |i|
  i.name        "Marshadium Z"
  i.name_plural "Marshadium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It converts Z-Power into crystals that upgrade Marshadow's Spectral Thief to an exclusive Z-Move."
end

GameData::Item.define :ULTRANECROZIUMZ do |i|
  i.name        "Ultranecrozium Z"
  i.name_plural "Ultranecrozium Z"
  i.pocket      9
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem, :ZCrystal
  i.description "It's a crystal that turns Necrozma fused with Solgaleo or Lunala into a new form."
end

