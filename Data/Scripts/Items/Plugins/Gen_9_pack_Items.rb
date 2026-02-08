#===============================================================================
# Shattered Crowns - Gen_9_pack Item Definitions
#===============================================================================
# Auto-generated from PBS files
# Uses GameData::Item.define format
#===============================================================================

GameData::Item.define :BLACKAUGURITE do |i|
  i.name        "Black Augurite"
  i.name_plural "Black Augurites"
  i.pocket      1
  i.price       2100
  i.field_use   :OnPokemon
  i.flags       :Fling_30, :EvolutionStone
  i.description "A glassy black stone that produces a sharp cutting edge when split. It’s loved by a certain Pokémon."
end

GameData::Item.define :PEATBLOCK do |i|
  i.name        "Peat Block"
  i.name_plural "Peat Blocks"
  i.pocket      1
  i.price       2100
  i.field_use   :OnPokemon
  i.flags       :Fling_30, :EvolutionStone
  i.description "A block of muddy material that is for fuel. It’s loved by a certain Pokémon."
end

GameData::Item.define :LINKINGCORD do |i|
  i.name        "Linking Cord"
  i.name_plural "Linking Cords"
  i.pocket      1
  i.price       2100
  i.field_use   :OnPokemon
  i.flags       :Fling_30, :EvolutionStone
  i.description "A string exuding a mysterious energy of connection. It’s loved by certain Pokémon."
end

GameData::Item.define :ADAMANTCRYSTAL do |i|
  i.name        "Adamant Crystal"
  i.name_plural "Adamant Crystals"
  i.pocket      1
  i.price       20000
  i.sell_price  0
  i.flags       :Fling_60
  i.description "When held by Dialga, this large, glowing gem wells with power and allows the Pokémon to change form."
end

GameData::Item.define :LUSTROUSGLOBE do |i|
  i.name        "Lustrous Globe"
  i.name_plural "Lustrous Globes"
  i.pocket      1
  i.price       20000
  i.sell_price  0
  i.flags       :Fling_60
  i.description "When held by Palkia, this large, glowing orb wells with power and allows the Pokémon to change form."
end

GameData::Item.define :LEGENDPLATE do |i|
  i.name        "Legend Plate"
  i.name_plural "Legend Plates"
  i.pocket      1
  i.price       20000
  i.sell_price  0
  i.flags       :Fling_90, :Plate
  i.description "A stone tablet to be held by a certain Pokémon. It the holder the power of every type there is."
end

GameData::Item.define :BLANKPLATE do |i|
  i.name        "Blank Plate"
  i.name_plural "Blank Plates"
  i.pocket      1
  i.price       10000
  i.sell_price  500
  i.flags       :Fling_90, :Plate
  i.description "An item to be held by a Pokémon. It is a stone tablet that boosts the power of Normal-type moves."
end

GameData::Item.define :HOPOBERRY do |i|
  i.name        "Hopo Berry"
  i.name_plural "Hopo Berries"
  i.pocket      5
  i.price       20
  i.flags       :Berry, :Fling_10, :NaturalGift_FIGHTING_80
  i.description "A Berry that can be fed to a Pokémon to restore its PP."
end

GameData::Item.define :GRISEOUSCORE do |i|
  i.name        "Griseous Core"
  i.name_plural "Griseous Cores"
  i.pocket      1
  i.price       20000
  i.sell_price  0
  i.flags       :Fling_60
  i.description "When held by Giratina, this large, glowing gem wells with power and allows the Pokémon to change form."
end

GameData::Item.define :HISUIANPOKEBALL do |i|
  i.name        "Poké Ball"
  i.name_plural "Poké Balls"
  i.pocket      3
  i.price       500
  i.battle_use  :OnFoe
  i.flags       :PokeBall
  i.description "A mysterious ball that can be thrown at wild Pokémon in order to catch them."
end

GameData::Item.define :HISUIANGREATBALL do |i|
  i.name        "Great Ball"
  i.name_plural "Great Balls"
  i.pocket      3
  i.price       900
  i.battle_use  :OnFoe
  i.flags       :PokeBall
  i.description "A mysterious ball that provides a higher success catch rate than a standard Poké Ball."
end

GameData::Item.define :HISUIANULTRABALL do |i|
  i.name        "Ultra Ball"
  i.name_plural "Ultra Balls"
  i.pocket      3
  i.price       1500
  i.battle_use  :OnFoe
  i.flags       :PokeBall
  i.description "A mysterious ball that provides an even higher success catch rate than a Great Ball does."
end

GameData::Item.define :FEATHERBALL do |i|
  i.name        "Feather Ball"
  i.name_plural "Feather Balls"
  i.pocket      3
  i.price       700
  i.battle_use  :OnFoe
  i.flags       :PokeBall
  i.description "A ball that flies fast and true ideal for catching nimble Pokémon or Pokémon that fly high in the air."
end

GameData::Item.define :WINGBALL do |i|
  i.name        "Wing Ball"
  i.name_plural "Wing Balls"
  i.pocket      3
  i.price       1000
  i.battle_use  :OnFoe
  i.flags       :PokeBall
  i.description "An improvement on the original Feather Ball design. It has a higher success rate than the Feather Ball."
end

GameData::Item.define :JETBALL do |i|
  i.name        "Jet Ball"
  i.name_plural "Jet Balls"
  i.pocket      3
  i.price       1500
  i.battle_use  :OnFoe
  i.flags       :PokeBall
  i.description "The ultimate iteration of the Feather Ball. It has an even higher success rate than the Wing Ball does."
end

GameData::Item.define :HISUIANHEAVYBALL do |i|
  i.name        "Heavy Ball"
  i.name_plural "Heavy Balls"
  i.pocket      3
  i.price       700
  i.battle_use  :OnFoe
  i.flags       :PokeBall
  i.description "A ball that is too heavy to throw, but it is highly effective to an unsuspecting Pokémon."
end

GameData::Item.define :LEADENBALL do |i|
  i.name        "Leaden Ball"
  i.name_plural "Leaden Balls"
  i.pocket      3
  i.price       1000
  i.battle_use  :OnFoe
  i.flags       :PokeBall
  i.description "An improvement on the original Heavy Ball design. It has a higher success rate than the Heavy Ball."
end

GameData::Item.define :GIGATONBALL do |i|
  i.name        "Gigaton Ball"
  i.name_plural "Gigaton Balls"
  i.pocket      3
  i.price       1500
  i.battle_use  :OnFoe
  i.flags       :PokeBall
  i.description "The ultimate iteration of the Heavy Ball. It has an even higher success rate than the Leaden Ball does."
end

GameData::Item.define :ORIGINBALL do |i|
  i.name        "Origin Ball"
  i.name_plural "Origin Balls"
  i.pocket      3
  i.price       0
  i.battle_use  :OnFoe
  i.flags       :PokeBall
  i.description "An irreplicable Poké Ball that was once used to catch the frenzied Pokémon at the Temple of Sinnoh."
end

GameData::Item.define :STRANGEBALL do |i|
  i.name        "Strange Ball"
  i.name_plural "Strange Balls"
  i.pocket      3
  i.price       0
  i.battle_use  :OnFoe
  i.flags       :PokeBall
  i.description "A strange looking Poke Ball that arrived from the past Sinnoh."
end

GameData::Item.define :AUSPICIOUSARMOR do |i|
  i.name        "Auspicious Armor"
  i.name_plural "Auspicious Armors"
  i.pocket      1
  i.price       3000
  i.field_use   :OnPokemon
  i.flags       :EvolutionStone, :Fling_30
  i.description "A peculiar set of armor that can make a certain Pokémon evolve. Auspicious wishes live within it."
end

GameData::Item.define :MALICIOUSARMOR do |i|
  i.name        "Malicious Armor"
  i.name_plural "Malicious Armors"
  i.pocket      1
  i.price       3000
  i.field_use   :OnPokemon
  i.flags       :EvolutionStone, :Fling_30
  i.description "A peculiar set of armor that can make a certain Pokémon evolve. Malicious will lurks within it."
end

GameData::Item.define :SCROLLOFDARKNESS do |i|
  i.name        "Scroll of Darkness"
  i.name_plural "Scroll of Darkness"
  i.pocket      1
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :EvolutionStone, :Fling_30
  i.description "A scroll that evolves certain Pokémon. Written on it are the true secrets of the path of darkness."
end

GameData::Item.define :SCROLLOFWATERS do |i|
  i.name        "Scroll of Waters"
  i.name_plural "Scroll of Waters"
  i.pocket      1
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :EvolutionStone, :Fling_30
  i.description "A scroll that evolves certain Pokémon. Written on it are the true secrets of the path of water."
end

GameData::Item.define :LEADERSCREST do |i|
  i.name        "Leader's Crest"
  i.name_plural "Leader's Crests"
  i.pocket      1
  i.price       3000
  i.flags       :Fling_30
  i.description "A shard of what appears to be an old blade of some sort. It is held only by a head of certain Pokémon group."
end

GameData::Item.define :BOOSTERENERGY do |i|
  i.name        "Booster Energy"
  i.name_plural "Booster Energies"
  i.pocket      1
  i.price       0
  i.flags       :Fling_30
  i.description "An item to be held by Pokémon with certain Abilities. It boosts the strength of the Pokémon."
end

GameData::Item.define :ABILITYSHIELD do |i|
  i.name        "Ability Shield"
  i.name_plural "Ability Shields"
  i.pocket      1
  i.price       20000
  i.flags       :Fling_30
  i.description "An item to be held by a Pokémon. This shield protects the holder from having its Ability changed by others."
end

GameData::Item.define :CLEARAMULET do |i|
  i.name        "Clear Amulet"
  i.name_plural "Clear Amulets"
  i.pocket      1
  i.price       30000
  i.flags       :Fling_30
  i.description "An item to be held by a Pokémon. It protects the holder from having its stats lowered."
end

GameData::Item.define :MIRRORHERB do |i|
  i.name        "Mirror Herb"
  i.name_plural "Mirror Herbs"
  i.pocket      1
  i.price       30000
  i.flags       :Fling_30
  i.description "An item to be held by a Pokémon. This herb will allow the holder to mirror an opponent's stat increases once."
end

GameData::Item.define :PUNCHINGGLOVE do |i|
  i.name        "Punching Glove"
  i.name_plural "Punching Gloves"
  i.pocket      1
  i.price       15000
  i.flags       :Fling_30
  i.description "An item to be held by a Pokémon. It boosts the holder's punching moves and prevents direct contact."
end

GameData::Item.define :COVERTCLOAK do |i|
  i.name        "Covert Cloak"
  i.name_plural "Covert Cloaks"
  i.pocket      1
  i.price       20000
  i.flags       :Fling_30
  i.description "An item to be held by a Pokémon. It conceals the holder, protecting it from move's additional effects."
end

GameData::Item.define :LOADEDDICE do |i|
  i.name        "Loaded Dice"
  i.name_plural "Loaded Dices"
  i.pocket      1
  i.price       20000
  i.flags       :Fling_30
  i.description "An item to be held by a Pokémon. It ensures the holder's multistrike moves hit more times."
end

GameData::Item.define :GIMMIGHOULCOIN do |i|
  i.name        "Gimmighoul Coin"
  i.name_plural "Gimmighoul Coins"
  i.pocket      1
  i.price       0
  i.flags       :Fling_10
  i.description "An item that accidentally dropped by a Pokémon. It seems that Gimmighoul treasure and hoard these."
end

GameData::Item.define :TINYBAMBOOSHOOT do |i|
  i.name        "Tiny Bamboo Shoot"
  i.name_plural "Tiny Bamboo Shoots"
  i.pocket      1
  i.price       1500
  i.flags       :Fling_30
  i.description "A small and rare bamboo shoot. It's quite popular with a certain class of gourmands."
end

GameData::Item.define :BIGBAMBOOSHOOT do |i|
  i.name        "Big Bamboo Shoot"
  i.name_plural "Big Bamboo Shoots"
  i.pocket      1
  i.price       6000
  i.flags       :Fling_30
  i.description "A large and rare bamboo shoot. It's extremely popular with a certain class of gourmands."
end

GameData::Item.define :ROTOMPHONE do |i|
  i.name        "Rotom Phone"
  i.name_plural "Rotom Phones"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "The latest model of smartphone. A Rotom lives within it, and it can be used to run all sorts of handy apps."
end

GameData::Item.define :SCARLETBOOK do |i|
  i.name        "Scarlet Book"
  i.name_plural "Scarlet Books"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A record of the Heath's expedition on the Great Crater of Paldea. It has the name \"Sada\" written on it."
end

GameData::Item.define :VIOLETBOOK do |i|
  i.name        "Violet Book"
  i.name_plural "Violet Books"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A record of the Heath's expedition on the Great Crater of Paldea. It has the name \"Turo\" written on it."
end

GameData::Item.define :HEALTHMOCHI do |i|
  i.name        "Health Mochi"
  i.name_plural "Health Mochi"
  i.pocket      2
  i.price       250
  i.field_use   :OnPokemon
  i.flags       :Fling_20
  i.description "A mochi cake with Berries kneaded into its dough. It increases base points for a Pokémon's HP stat."
end

GameData::Item.define :MUSCLEMOCHI do |i|
  i.name        "Muscle Mochi"
  i.name_plural "Muscle Mochi"
  i.pocket      2
  i.price       250
  i.field_use   :OnPokemon
  i.flags       :Fling_20
  i.description "A mochi cake with Berries kneaded into its dough. It increases base points for a Pokémon's Attack stat."
end

GameData::Item.define :RESISTMOCHI do |i|
  i.name        "Resist Mochi"
  i.name_plural "Resist Mochi"
  i.pocket      2
  i.price       250
  i.field_use   :OnPokemon
  i.flags       :Fling_20
  i.description "A mochi cake with Berries kneaded into its dough. It increases base points for a Pokémon's Defense stat."
end

GameData::Item.define :GENIUSMOCHI do |i|
  i.name        "Genius Mochi"
  i.name_plural "Genius Mochi"
  i.pocket      2
  i.price       250
  i.field_use   :OnPokemon
  i.flags       :Fling_20
  i.description "A mochi cake with Berries kneaded into its dough. It increases base points for a Pokémon's Sp. Atk stat."
end

GameData::Item.define :CLEVERMOCHI do |i|
  i.name        "Clever Mochi"
  i.name_plural "Clever Mochi"
  i.pocket      2
  i.price       250
  i.field_use   :OnPokemon
  i.flags       :Fling_20
  i.description "A mochi cake with Berries kneaded into its dough. It increases base points for a Pokémon's Sp. Def stat."
end

GameData::Item.define :SWIFTMOCHI do |i|
  i.name        "Swift Mochi"
  i.name_plural "Swift Mochi"
  i.pocket      2
  i.price       250
  i.field_use   :OnPokemon
  i.flags       :Fling_20
  i.description "A mochi cake with Berries kneaded into its dough. It increases base points for a Pokémon's Speed stat."
end

GameData::Item.define :FRESHSTARTMOCHI do |i|
  i.name        "Fresh-Start Mochi"
  i.name_plural "Fresh-Start Mochi"
  i.pocket      2
  i.price       250
  i.field_use   :OnPokemon
  i.flags       :Fling_20
  i.description "A mochi cake with Berries kneaded into its dough. It causes a Pokémon to lose all its base points."
end

GameData::Item.define :FAIRYFEATHER do |i|
  i.name        "Fairy Feather"
  i.name_plural "Fairy Feathers"
  i.pocket      1
  i.price       3000
  i.sell_price  750
  i.flags       :Fling_20
  i.description "An item to be held by a Pokémon. It boosts the power of the holder's Fairy-type moves."
end

GameData::Item.define :SYRUPYAPPLE do |i|
  i.name        "Syrupy Apple"
  i.name_plural "Syrupy Apples"
  i.pocket      1
  i.price       2200
  i.sell_price  550
  i.bp_price    5
  i.field_use   :OnPokemon
  i.flags       :EvolutionStone, :Fling_30
  i.description "A peculiar apple that can make a certain species of Pokémon evolve. It's exceptionally syrupy."
end

GameData::Item.define :UNREMARKABLETEACUP do |i|
  i.name        "Unremarkable Teacup"
  i.name_plural "Unremarkable Teacups"
  i.pocket      1
  i.price       1500
  i.sell_price  400
  i.bp_price    5
  i.field_use   :OnPokemon
  i.flags       :EvolutionStone, :Fling_80
  i.description "A peculiar cracked teacup that can make a certain species of Pokémon evolve. It makes delicious tea."
end

GameData::Item.define :MASTERPIECETEACUP do |i|
  i.name        "Masterpiece Teacup"
  i.name_plural "Masterpiece Teacups"
  i.pocket      1
  i.price       1500
  i.sell_price  9500
  i.bp_price    5
  i.field_use   :OnPokemon
  i.flags       :EvolutionStone, :Fling_80
  i.description "A peculiar chipped teacup that can make a certain species of Pokémon evolve. It makes delicious tea."
end

GameData::Item.define :WELLSPRINGMASK do |i|
  i.name        "Wellspring Mask"
  i.name_plural "Wellspring Masks"
  i.pocket      1
  i.price       0
  i.flags       :Fling_60
  i.description "A carved wooden mask to be held by Ogerpon. It allows Ogerpon to wield the Water type during battle."
end

GameData::Item.define :HEARTHFLAMEMASK do |i|
  i.name        "Hearthflame Mask"
  i.name_plural "Hearthflame Masks"
  i.pocket      1
  i.price       0
  i.flags       :Fling_60
  i.description "A carved wooden mask to be held by Ogerpon. It allows Ogerpon to wield the Fire type during battle."
end

GameData::Item.define :CORNERSTONEMASK do |i|
  i.name        "Cornerstone Mask"
  i.name_plural "Cornerstone Masks"
  i.pocket      1
  i.price       0
  i.flags       :Fling_60
  i.description "A carved wooden mask to be held by Ogerpon. It allows Ogerpon to wield the Rock type during battle."
end

GameData::Item.define :TEALMASK do |i|
  i.name        "Teal Mask"
  i.name_plural "Teal Masks"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem, :Fling_60
  i.description "A teal mask patterned after the face of an ogre. Dropped by Ogerpon after visiting the Festival of Masks."
end

GameData::Item.define :METALALLOY do |i|
  i.name        "Metal Alloy"
  i.name_plural "Metal Alloys"
  i.pocket      1
  i.price       3000
  i.sell_price  1500
  i.bp_price    8
  i.field_use   :OnPokemon
  i.flags       :EvolutionStone, :Fling_30
  i.description "A peculiar metal that can make certain species of Pokémon evolve. It is composed of many layers."
end

GameData::Item.define :INDIGODISK do |i|
  i.name        "Indigo Disk"
  i.name_plural "Indigo Disks"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A mysterious disk with an indigo shine to it, given by the Top Champion. It seems to be tied to Area Zero."
end

GameData::Item.define :MYTHICALPECHABERRY do |i|
  i.name        "Mythical Pecha Berry"
  i.name_plural "Mythical Pecha Berries"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Pecha Berry of the highest quality. It's one of every a few years berry that carefully tended by an expert."
end

GameData::Item.define :SYNCHROMACHINE do |i|
  i.name        "Synchro Machine"
  i.name_plural "Synchro Machines"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A device that synchronizes your mind and feelings with your Pokémon's as one. It's still a prototype—hence."
end

GameData::Item.define :METEORITE do |i|
  i.name        "Meteorite"
  i.name_plural "Meteorites"
  i.pocket      8
  i.price       0
  i.field_use   :OnPokemon
  i.flags       :KeyItem
  i.description "A rock that fell to earth from space. It allows a certain species of Pokémon to change forms."
end

GameData::Item.define :BRIARSBOOK do |i|
  i.name        "Briar's Book"
  i.name_plural "Briar's Books"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A proof copy of the exploration notes, along with Briar's thoughts covering the Area Zero Underdepths."
end

GameData::Item.define :CLEFABLITE do |i|
  i.name        "Clefablite"
  i.name_plural "Clefablites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Clefable hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :VICTREEBELITE do |i|
  i.name        "Victreebelite"
  i.name_plural "Victreebelites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Victreebel hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :STARMINITE do |i|
  i.name        "Starminite"
  i.name_plural "Starminites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Starmie hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :DRAGONINITE do |i|
  i.name        "Dragoninite"
  i.name_plural "Dragoninites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Dragonite hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :MEGANIUMITE do |i|
  i.name        "Meganiumite"
  i.name_plural "Meganiumites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Meganium hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :FERALIGITE do |i|
  i.name        "Feraligite"
  i.name_plural "Feraligites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Feraligatr hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :SKARMORITE do |i|
  i.name        "Skarmorite"
  i.name_plural "Skarmorites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Skarmory hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :FROSLASSITE do |i|
  i.name        "Froslassite"
  i.name_plural "Froslassites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Froslass hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :EMBOARITE do |i|
  i.name        "Emboarite"
  i.name_plural "Emboarites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Haven Emboar hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :EXCADRITE do |i|
  i.name        "Excadrite"
  i.name_plural "Excadrites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Haven Excadrill hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :SCOLIPITE do |i|
  i.name        "Scolipite"
  i.name_plural "Scolipites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Scolipede hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :SCRAFTINITE do |i|
  i.name        "Scraftinite"
  i.name_plural "Scraftinites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Scrafty hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :EELEKTROSSITE do |i|
  i.name        "Eelektrossite"
  i.name_plural "Eelektrossites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Eelektross hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :CHANDELURITE do |i|
  i.name        "Chandelurite"
  i.name_plural "Chandelurites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Chandelure hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :CHESNAUGHTITE do |i|
  i.name        "Chesnaughtite"
  i.name_plural "Chesnaughtites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Chesnaught hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :DELPHOXITE do |i|
  i.name        "Delphoxite"
  i.name_plural "Delphoxites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Delphox hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :GRENINJITE do |i|
  i.name        "Greninjite"
  i.name_plural "Greninjites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Greninja hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :PYROARITE do |i|
  i.name        "Pyroarite"
  i.name_plural "Pyroarites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Pyroar hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :FLOETTITE do |i|
  i.name        "Floettite"
  i.name_plural "Floettites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have special Floette hold it to Mega Evolve."
end

GameData::Item.define :MALAMARITE do |i|
  i.name        "Malamarite"
  i.name_plural "Malamarites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Malamar hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :BARBARACITE do |i|
  i.name        "Barbaracite"
  i.name_plural "Barbaracites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Barbaracle hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :DRAGALGITE do |i|
  i.name        "Dragalgite"
  i.name_plural "Dragalgites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Dragalge hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :HAWLUCHANITE do |i|
  i.name        "Hawluchanite"
  i.name_plural "Hawluchanites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Hawlucha hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :ZYGARDITE do |i|
  i.name        "Zygardite"
  i.name_plural "Zygardites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Complete Forme Zygarde hold it to Mega Evolve."
end

GameData::Item.define :DRAMPANITE do |i|
  i.name        "Drampanite"
  i.name_plural "Drampanites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Drampa hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :FALINKSITE do |i|
  i.name        "Falinksite"
  i.name_plural "Falinksites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Falinks hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :MEGASHARD do |i|
  i.name        "Mega Shard"
  i.name_plural "Mega Shards"
  i.pocket      1
  i.price       0
  i.description "A mysterious shard found by smashing Mega Crystals. It seems that some people collect these shards."
end

GameData::Item.define :REDCANARIPLUSHLV1 do |i|
  i.name        "Red Canari Plush"
  i.name_plural "Red Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a red charm. It slightly boosts the Exp. Points that Pokémon can get."
end

GameData::Item.define :REDCANARIPLUSHLV2 do |i|
  i.name        "Red Canari Plush"
  i.name_plural "Red Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a red charm. It boosts the Exp. Points that Pokémon can get."
end

GameData::Item.define :REDCANARIPLUSHLV3 do |i|
  i.name        "Red Canari Plush"
  i.name_plural "Red Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a red charm. It greatly boosts the Exp. Points that Pokémon can get."
end

GameData::Item.define :GOLDCANARIPLUSHLV1 do |i|
  i.name        "Gold Canari Plush"
  i.name_plural "Gold Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a gold charm. It slightly increases the battle's prize money you get."
end

GameData::Item.define :GOLDCANARIPLUSHLV2 do |i|
  i.name        "Gold Canari Plush"
  i.name_plural "Gold Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a gold charm. It increases the battle's prize money you get."
end

GameData::Item.define :GOLDCANARIPLUSHLV3 do |i|
  i.name        "Gold Canari Plush"
  i.name_plural "Gold Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a gold charm. It greatly increases the battle's prize money you get."
end

GameData::Item.define :PINKCANARIPLUSHLV1 do |i|
  i.name        "Pink Canari Plush"
  i.name_plural "Pink Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a pink charm. It slightly increases the number of Mega Shards you get."
end

GameData::Item.define :PINKCANARIPLUSHLV2 do |i|
  i.name        "Pink Canari Plush"
  i.name_plural "Pink Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a pink charm. It increases the number of Mega Shards you get."
end

GameData::Item.define :PINKCANARIPLUSHLV3 do |i|
  i.name        "Pink Canari Plush"
  i.name_plural "Pink Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a pink charm. It greatly increases the number of Mega Shards you get."
end

GameData::Item.define :GREENCANARIPLUSHLV1 do |i|
  i.name        "Green Canari Plush"
  i.name_plural "Green Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a green charm. It makes you a little less likely to black out from taking damage."
end

GameData::Item.define :GREENCANARIPLUSHLV2 do |i|
  i.name        "Green Canari Plush"
  i.name_plural "Green Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a green charm. It makes you a less likely to black out from taking damage."
end

GameData::Item.define :GREENCANARIPLUSHLV3 do |i|
  i.name        "Green Canari Plush"
  i.name_plural "Green Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a green charm. It makes you a lot less likely to black out from taking damage."
end

GameData::Item.define :BLUECANARIPLUSHLV1 do |i|
  i.name        "Blue Canari Plush"
  i.name_plural "Blue Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a blue charm. It slightly boosts your chance of catching Pokémon."
end

GameData::Item.define :BLUECANARIPLUSHLV2 do |i|
  i.name        "Blue Canari Plush"
  i.name_plural "Blue Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a blue charm. It boosts your chance of catching Pokémon."
end

GameData::Item.define :BLUECANARIPLUSHLV3 do |i|
  i.name        "Blue Canari Plush"
  i.name_plural "Blue Canari Plushies"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A Canari plush holding a blue charm. It greatly boosts your chance of catching Pokémon."
end

GameData::Item.define :HEATRANITE do |i|
  i.name        "Heatranite"
  i.name_plural "Heatranites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Heatran hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :DARKRANITE do |i|
  i.name        "Darkranite"
  i.name_plural "Darkranites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Darkrai hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :ZERAORITE do |i|
  i.name        "Zeraorite"
  i.name_plural "Zeraorites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Zeraora hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :RAICHUNITEX do |i|
  i.name        "Raichunite X"
  i.name_plural "Raichunite Xs"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Raichu hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :RAICHUNITEY do |i|
  i.name        "Raichunite Y"
  i.name_plural "Raichunite Ys"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Raichu hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :CHIMECHITE do |i|
  i.name        "Chimechite"
  i.name_plural "Chimechites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Chimecho hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :ABSOLITEZ do |i|
  i.name        "Absolite Z"
  i.name_plural "Absolite Zs"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Absol hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :STARAPTITE do |i|
  i.name        "Staraptite"
  i.name_plural "Staraptites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Staraptor hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :GARCHOMPITEZ do |i|
  i.name        "Garchompite Z"
  i.name_plural "Garchompite Zs"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Garchomp hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :LUCARIONITEZ do |i|
  i.name        "Lucarionite Z"
  i.name_plural "Lucarionite Zs"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Lucario hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :GOLURKITE do |i|
  i.name        "Golurkite"
  i.name_plural "Golurkites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Golurk hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :MEOWSTICITE do |i|
  i.name        "Meowsticite"
  i.name_plural "Meowsticites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Meowstic hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :CRABOMINITE do |i|
  i.name        "Crabominite"
  i.name_plural "Crabominites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Crabominable hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :GOLISOPITE do |i|
  i.name        "Golisopite"
  i.name_plural "Golisopites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Golisopod hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :MAGEARNITE do |i|
  i.name        "Magearnite"
  i.name_plural "Magearnites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Magearna hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :SCOVILLAINITE do |i|
  i.name        "Scovillainite"
  i.name_plural "Scovillainites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Scovillain hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :BAXCALIBRITE do |i|
  i.name        "Baxcalibrite"
  i.name_plural "Baxcalibrites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Baxcalibur hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :TATSUGIRINITE do |i|
  i.name        "Tatsugirinite"
  i.name_plural "Tatsugirinites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Tatsugiri hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :GLIMMORANITE do |i|
  i.name        "Glimmoranite"
  i.name_plural "Glimmoranites"
  i.pocket      1
  i.price       0
  i.bp_price    50
  i.flags       :MegaStone, :Fling_80
  i.description "One of a variety of mysterious Mega Stones. Have Glimmora hold it, and it will be able to Mega Evolve."
end

GameData::Item.define :HYPERCHERIBERRY do |i|
  i.name        "Hyper Cheri Berry"
  i.name_plural "Hyper Cheri Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. Its spicy kick is great when added to curries."
end

GameData::Item.define :HYPERCHESTOBERRY do |i|
  i.name        "Hyper Chesto Berry"
  i.name_plural "Hyper Chesto Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. Its dry flavor offers a good balance in sweet cream."
end

GameData::Item.define :HYPERPECHABERRY do |i|
  i.name        "Hyper Pecha Berry"
  i.name_plural "Hyper Pecha Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. Its sweet flavor makes it a great ingredient for meringue."
end

GameData::Item.define :HYPERRAWSTBERRY do |i|
  i.name        "Hyper Rawst Berry"
  i.name_plural "Hyper Rawst Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. Its bitter bite works beautifully in chocolate."
end

GameData::Item.define :HYPERASPEARBERRY do |i|
  i.name        "Hyper Aspear Berry"
  i.name_plural "Hyper Aspear Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. Its sour bite makes it perfect for stewing into a confiture."
end

GameData::Item.define :HYPERORANBERRY do |i|
  i.name        "Hyper Oran Berry"
  i.name_plural "Hyper Oran Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in curries, meringue, chocolate, and confitures."
end

GameData::Item.define :HYPERPERSIMBERRY do |i|
  i.name        "Hyper Persim Berry"
  i.name_plural "Hyper Persim Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in curries, cream, chocolate, and confitures."
end

GameData::Item.define :HYPERLUMBERRY do |i|
  i.name        "Hyper Lum Berry"
  i.name_plural "Hyper Lum Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in curries, cream, meringue, and confitures."
end

GameData::Item.define :HYPERSITRUSBERRY do |i|
  i.name        "Hyper Sitrus Berry"
  i.name_plural "Hyper Sitrus Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in curries, cream, meringue, and chocolate."
end

GameData::Item.define :HYPERPOMEGBERRY do |i|
  i.name        "Hyper Pomeg Berry"
  i.name_plural "Hyper Pomeg Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in curries and meringue."
end

GameData::Item.define :HYPERKELPSYBERRY do |i|
  i.name        "Hyper Kelpsy Berry"
  i.name_plural "Hyper Kelpsy Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in cream and chocolate."
end

GameData::Item.define :HYPERQUALOTBERRY do |i|
  i.name        "Hyper Qualot Berry"
  i.name_plural "Hyper Qualot Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in meringue and confitures."
end

GameData::Item.define :HYPERHONDEWBERRY do |i|
  i.name        "Hyper Hondew Berry"
  i.name_plural "Hyper Hondew Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in cream and confitures."
end

GameData::Item.define :HYPERGREPABERRY do |i|
  i.name        "Hyper Grepa Berry"
  i.name_plural "Hyper Grepa Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in curries."
end

GameData::Item.define :HYPERTAMATOBERRY do |i|
  i.name        "Hyper Tamato Berry"
  i.name_plural "Hyper Tamato Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in cream."
end

GameData::Item.define :HYPEROCCABERRY do |i|
  i.name        "Hyper Occa Berry"
  i.name_plural "Hyper Occa Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in meringue."
end

GameData::Item.define :HYPERPASSHOBERRY do |i|
  i.name        "Hyper Passho Berry"
  i.name_plural "Hyper Passho Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in chocolate."
end

GameData::Item.define :HYPERWACANBERRY do |i|
  i.name        "Hyper Wacan Berry"
  i.name_plural "Hyper Wacan Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in confitures."
end

GameData::Item.define :HYPERRINDOBERRY do |i|
  i.name        "Hyper Rindo Berry"
  i.name_plural "Hyper Rindo Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in curries."
end

GameData::Item.define :HYPERYACHEBERRY do |i|
  i.name        "Hyper Yache Berry"
  i.name_plural "Hyper Yache Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in cream."
end

GameData::Item.define :HYPERCHOPLEBERRY do |i|
  i.name        "Hyper Chople Berry"
  i.name_plural "Hyper Chople Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in meringue."
end

GameData::Item.define :HYPERKEBIABERRY do |i|
  i.name        "Hyper Kebia Berry"
  i.name_plural "Hyper Kebia Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in chocolate."
end

GameData::Item.define :HYPERSHUCABERRY do |i|
  i.name        "Hyper Shuca Berry"
  i.name_plural "Hyper Shuca Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in confitures."
end

GameData::Item.define :HYPERCOBABERRY do |i|
  i.name        "Hyper Coba Berry"
  i.name_plural "Hyper Coba Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in curries."
end

GameData::Item.define :HYPERPAYAPABERRY do |i|
  i.name        "Hyper Payapa Berry"
  i.name_plural "Hyper Payapa Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in cream."
end

GameData::Item.define :HYPERTANGABERRY do |i|
  i.name        "Hyper Tanga Berry"
  i.name_plural "Hyper Tanga Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in meringue."
end

GameData::Item.define :HYPERCHARTIBERRY do |i|
  i.name        "Hyper Charti Berry"
  i.name_plural "Hyper Charti Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in chocolate."
end

GameData::Item.define :HYPERKASIBBERRY do |i|
  i.name        "Hyper Kasib Berry"
  i.name_plural "Hyper Kasib Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in confitures."
end

GameData::Item.define :HYPERHABANBERRY do |i|
  i.name        "Hyper Haban Berry"
  i.name_plural "Hyper Haban Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in cream and meringue."
end

GameData::Item.define :HYPERCOLBURBERRY do |i|
  i.name        "Hyper Colbur Berry"
  i.name_plural "Hyper Colbur Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in cream and confitures."
end

GameData::Item.define :HYPERBABIRIBERRY do |i|
  i.name        "Hyper Babiri Berry"
  i.name_plural "Hyper Babiri Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in chocolate and confitures."
end

GameData::Item.define :HYPERCHILANBERRY do |i|
  i.name        "Hyper Chilan Berry"
  i.name_plural "Hyper Chilan Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in curries and chocolate."
end

GameData::Item.define :HYPERROSELIBERRY do |i|
  i.name        "Hyper Roseli Berry"
  i.name_plural "Hyper Roseli Berries"
  i.pocket      5
  i.price       0
  i.flags       :Berry
  i.description "A mysterious Berry found in Hyperspace Lumiose. It goes well in curries and confitures."
end

GameData::Item.define :CANARIBREAD do |i|
  i.name        "Canari Bread"
  i.name_plural "Canari Breads"
  i.pocket      2
  i.price       0
  i.field_use   :OnPokemon
  i.battle_use  :OnPokemon
  i.flags       :Fling_30
  i.description "A bun made to look like Canari's face. It can be used to restore 100 HP to a Pokémon."
end

GameData::Item.define :LUMIOSIANBUTTER do |i|
  i.name        "Lumiosian Butter"
  i.name_plural "Lumiosian Butters"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "Some of the best butter produced in the Kalos region. Highly sought after by the cooks of Lumiose."
end

GameData::Item.define :NICEBUTTER do |i|
  i.name        "Nice Butter"
  i.name_plural "Nice Butters"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A nice pack of butter found in Hyperspace Lumiose. With it, you could make higher quality donuts."
end

GameData::Item.define :GREATBUTTER do |i|
  i.name        "Great Butter"
  i.name_plural "Great Butters"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A great pack of butter found in Hyperspace Lumiose. With it, you could make higher quality donuts."
end

GameData::Item.define :AMAZINGBUTTER do |i|
  i.name        "Amazing Butter"
  i.name_plural "Amazing Butters"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "An amazing pack of butter found in Hyperspace Lumiose. With it, you could make higher quality donuts."
end

GameData::Item.define :SUPREMEBUTTER do |i|
  i.name        "Supreme Butter"
  i.name_plural "Supreme Butters"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A supreme pack of butter found in Hyperspace Lumiose. With it, you could make higher quality donuts."
end

GameData::Item.define :HYPERSPACEBUTTER do |i|
  i.name        "Hyperspace Butter"
  i.name_plural "Hyperspace Butters"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "The absolute ultimate butter found in Hyperspace Lumiose. With it, you could make higher quality donuts."
end

GameData::Item.define :HOENNIANSALT do |i|
  i.name        "Hoennian Salt"
  i.name_plural "Hoennian Salts"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A coarse salt harvested in the Hoenn region. A tiny pinch will impart a wondrous depth of flavor."
end

GameData::Item.define :EPICENOIRE do |i|
  i.name        "Épice Noire"
  i.name_plural "Épice Noires"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "A mysterious, highly prized spice of the Rust Syndicate that elevates any dish to dreamlike perfection."
end

GameData::Item.define :ARBOLIVAOIL do |i|
  i.name        "Arboliva Oil"
  i.name_plural "Arboliva Oils"
  i.pocket      8
  i.price       0
  i.flags       :KeyItem
  i.description "Oil from Paldea's Arboliva, said to taste heavenly. How Corbeau obtained it remains a mystery."
end

