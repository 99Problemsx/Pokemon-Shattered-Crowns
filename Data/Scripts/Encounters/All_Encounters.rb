#===============================================================================
# Shattered Crowns - Wild Encounter Definitions
#===============================================================================
# Auto-generated from PBS/encounters.txt
# Uses GameData::Encounter.define format
#===============================================================================

GameData::Encounter.define 2, 0 do |e|
  e.water 2 do |enc|
    enc.add :TENTACOOL, 5, 0
    enc.add :MANTYKE, 5, 0
    enc.add :REMORAID, 5, 0
  end
  e.oldrod 0 do |enc|
    enc.add :MAGIKARP, 5, 0
  end
  e.goodrod 0 do |enc|
    enc.add :BARBOACH, 5, 0
    enc.add :KRABBY, 5, 0
    enc.add :SHELLDER, 5, 0
  end
  e.superrod 0 do |enc|
    enc.add :CHINCHOU, 5, 0
    enc.add :QWILFISH, 5, 0
    enc.add :CORSOLA, 5, 0
    enc.add :STARYU, 5, 0
  end
end

GameData::Encounter.define 5, 0 do |e|
  e.land 21 do |enc|
    enc.add :PIDGEY, 5, 0
    enc.add :RATTATA, 5, 0
    enc.add :PIDGEY, 5, 0
    enc.add :RATTATA, 5, 0
    enc.add :PIDGEY, 5, 0
    enc.add :RATTATA, 5, 0
  end
  e.landnight 21 do |enc|
    enc.add :RATTATA, 5, 0
    enc.add :HOOTHOOT, 5, 0
    enc.add :SPINARAK, 5, 0
    enc.add :HOOTHOOT, 5, 0
    enc.add :HOOTHOOT, 5, 0
    enc.add :RATTATA, 5, 0
  end
  e.pokeradar 20 do |enc|
    enc.add :STARLY, 5, 0
  end
end

GameData::Encounter.define 5, 1 do |e|
  e.land 21 do |enc|
    enc.add :PIDGEY, 5, 0
    enc.add :RATTATA, 5, 0
    enc.add :SENTRET, 5, 0
    enc.add :PIDGEY, 5, 0
    enc.add :RATTATA, 5, 0
  end
  e.landnight 21 do |enc|
    enc.add :RATTATA, 5, 0
    enc.add :HOOTHOOT, 5, 0
    enc.add :SPINARAK, 5, 0
    enc.add :CLEFAIRY, 5, 0
  end
end

GameData::Encounter.define 21, 0 do |e|
  e.land 21 do |enc|
    enc.add :RATTATA, 5, 0
    enc.add :POOCHYENA, 5, 0
    enc.add :SHINX, 5, 0
    enc.add :SHINX, 5, 0
  end
  e.water 2 do |enc|
    enc.add :MAGIKARP, 5, 0
    enc.add :GOLDEEN, 5, 0
    enc.add :STARYU, 5, 0
  end
  e.oldrod 0 do |enc|
    enc.add :MAGIKARP, 5, 0
    enc.add :MAGIKARP, 5, 0
  end
  e.goodrod 0 do |enc|
    enc.add :GOLDEEN, 5, 0
    enc.add :FINNEON, 5, 0
    enc.add :MAGIKARP, 5, 0
  end
  e.superrod 0 do |enc|
    enc.add :FINNEON, 5, 0
    enc.add :GOLDEEN, 5, 0
    enc.add :STARYU, 5, 0
    enc.add :STARYU, 5, 0
  end
  e.headbuttlow 0 do |enc|
    enc.add :PINECO, 5, 0
    enc.add :LEDYBA, 5, 0
    enc.add :SPINARAK, 5, 0
    enc.add :MUNCHLAX, 5, 0
  end
  e.headbutthigh 0 do |enc|
    enc.add :PINECO, 5, 0
    enc.add :WURMPLE, 5, 0
    enc.add :SPINARAK, 5, 0
  end
  e.pokeradar 10 do |enc|
    enc.add :STANTLER, 5, 0
  end
end

GameData::Encounter.define 28, 0 do |e|
  e.land 21 do |enc|
    enc.add :CATERPIE, 5, 0
    enc.add :SUNKERN, 5, 0
    enc.add :WEEDLE, 5, 0
    enc.add :PIDGEY, 5, 0
    enc.add :PIDGEY, 5, 0
    enc.add :KAKUNA, 5, 0
    enc.add :METAPOD, 5, 0
  end
  e.landnight 21 do |enc|
    enc.add :HOOTHOOT, 5, 0
    enc.add :SPINARAK, 5, 0
    enc.add :PINECO, 5, 0
    enc.add :DROWZEE, 5, 0
    enc.add :NATU, 5, 0
  end
  e.landmorning 21 do |enc|
    enc.add :CATERPIE, 5, 0
    enc.add :WEEDLE, 5, 0
    enc.add :PIDGEY, 5, 0
    enc.add :KAKUNA, 5, 0
    enc.add :METAPOD, 5, 0
  end
  e.bugcontest 21 do |enc|
    enc.add :CATERPIE, 5, 0
    enc.add :WEEDLE, 5, 0
    enc.add :KAKUNA, 5, 0
    enc.add :METAPOD, 5, 0
    enc.add :PARAS, 5, 0
    enc.add :VENONAT, 5, 0
    enc.add :BEEDRILL, 5, 0
    enc.add :BUTTERFREE, 5, 0
    enc.add :PINSIR, 5, 0
    enc.add :SCYTHER, 5, 0
  end
  e.pokeradar 40 do |enc|
    enc.add :BUTTERFREE, 5, 0
    enc.add :BEEDRILL, 5, 0
  end
end

GameData::Encounter.define 31, 0 do |e|
  e.land 21 do |enc|
    enc.add :PIKACHU, 5, 0
    enc.add :EEVEE, 5, 0
    enc.add :PONYTA, 5, 0
  end
  e.water 2 do |enc|
    enc.add :SURSKIT, 5, 0
    enc.add :LOTAD, 5, 0
    enc.add :LOTAD, 5, 0
  end
  e.oldrod 0 do |enc|
    enc.add :MAGIKARP, 5, 0
    enc.add :MAGIKARP, 5, 0
  end
  e.goodrod 0 do |enc|
    enc.add :POLIWAG, 5, 0
    enc.add :PSYDUCK, 5, 0
    enc.add :WOOPER, 5, 0
  end
  e.superrod 0 do |enc|
    enc.add :CHINCHOU, 5, 0
    enc.add :REMORAID, 5, 0
    enc.add :LUVDISC, 5, 0
  end
  e.rocksmash 50 do |enc|
    enc.add :NOSEPASS, 5, 0
    enc.add :GEODUDE, 5, 0
  end
  e.headbuttlow 0 do |enc|
    enc.add :PINECO, 5, 0
    enc.add :COMBEE, 5, 0
    enc.add :PINECO, 5, 0
    enc.add :HERACROSS, 5, 0
    enc.add :HERACROSS, 5, 0
    enc.add :COMBEE, 5, 0
    enc.add :MUNCHLAX, 5, 0
  end
  e.headbutthigh 0 do |enc|
    enc.add :SEEDOT, 5, 0
    enc.add :SHROOMISH, 5, 0
    enc.add :BURMY, 5, 0
  end
end

GameData::Encounter.define 34, 0 do |e|
  e.cave 5 do |enc|
    enc.add :SWINUB, 5, 0
    enc.add :SNEASEL, 5, 0
    enc.add :SNORUNT, 5, 0
    enc.add :SMOOCHUM, 5, 0
    enc.add :SNOVER, 5, 0
  end
end

GameData::Encounter.define 39, 0 do |e|
  e.land 21 do |enc|
    enc.add :SHELLOS, 5, 0, form: 1
    enc.add :GRIMER, 5, 0
    enc.add :MURKROW, 5, 0
  end
end

GameData::Encounter.define 41, 0 do |e|
  e.land 21 do |enc|
    enc.add :GRIMER, 5, 0
    enc.add :SPEAROW, 5, 0
    enc.add :SLUGMA, 5, 0
  end
end

GameData::Encounter.define 44, 0 do |e|
  e.land 21 do |enc|
    enc.add :SHELLOS, 5, 0, form: 1
    enc.add :GRIMER, 5, 0
    enc.add :MURKROW, 5, 0
  end
end

GameData::Encounter.define 47, 0 do |e|
  e.land 21 do |enc|
    enc.add :SHELLOS, 5, 0
    enc.add :BIDOOF, 5, 0
    enc.add :MURKROW, 5, 0
    enc.add :WURMPLE, 5, 0
  end
  e.rocksmash 50 do |enc|
    enc.add :NOSEPASS, 5, 0
    enc.add :GEODUDE, 5, 0
  end
end

GameData::Encounter.define 49, 0 do |e|
  e.cave 5 do |enc|
    enc.add :MAGNETON, 5, 0
    enc.add :MAGNETON, 5, 0
    enc.add :NOSEPASS, 5, 0
    enc.add :NOSEPASS, 5, 0
    enc.add :GEODUDE, 5, 0
    enc.add :MAWILE, 5, 0
  end
end

GameData::Encounter.define 50, 0 do |e|
  e.cave 5 do |enc|
    enc.add :MAGNETON, 5, 0
    enc.add :MAGNETON, 5, 0
    enc.add :NOSEPASS, 5, 0
    enc.add :NOSEPASS, 5, 0
    enc.add :BURMY, 5, 0
    enc.add :GEODUDE, 5, 0
  end
end

GameData::Encounter.define 51, 0 do |e|
  e.cave 5 do |enc|
    enc.add :CHINGLING, 5, 0
    enc.add :CLEFFA, 5, 0
    enc.add :IGGLYBUFF, 5, 0
    enc.add :PICHU, 5, 0
    enc.add :RIOLU, 5, 0
    enc.add :TYROGUE, 5, 0
  end
end

GameData::Encounter.define 66, 0 do |e|
  e.land 21 do |enc|
    enc.add :ABRA, 5, 0
    enc.add :DODUO, 5, 0
    enc.add :HOPPIP, 5, 0
    enc.add :TANGELA, 5, 0
  end
end

GameData::Encounter.define 68, 0 do |e|
  e.land 21 do |enc|
    enc.add :EXEGGCUTE, 5, 0
    enc.add :RHYHORN, 5, 0
    enc.add :AIPOM, 5, 0
    enc.add :GIRAFARIG, 5, 0
    enc.add :VENONAT, 5, 0
    enc.add :VENONAT, 5, 0
    enc.add :HERACROSS, 5, 0
    enc.add :TAUROS, 5, 0
    enc.add :PINSIR, 5, 0
    enc.add :SCYTHER, 5, 0
    enc.add :CHANSEY, 5, 0
    enc.add :KANGASKHAN, 5, 0
  end
  e.water 2 do |enc|
    enc.add :PSYDUCK, 5, 0
    enc.add :MARILL, 5, 0
    enc.add :BUIZEL, 5, 0
    enc.add :SLOWPOKE, 5, 0
  end
  e.oldrod 0 do |enc|
    enc.add :MAGIKARP, 5, 0
    enc.add :MAGIKARP, 5, 0
  end
  e.goodrod 0 do |enc|
    enc.add :MAGIKARP, 5, 0
    enc.add :FEEBAS, 5, 0
    enc.add :POLIWAG, 5, 0
  end
  e.superrod 0 do |enc|
    enc.add :GOLDEEN, 5, 0
    enc.add :REMORAID, 5, 0
    enc.add :CARVANHA, 5, 0
    enc.add :FINNEON, 5, 0
    enc.add :DRATINI, 5, 0
  end
end

GameData::Encounter.define 69, 0 do |e|
  e.land 21 do |enc|
    enc.add :MAREEP, 5, 0
    enc.add :ODDISH, 5, 0
    enc.add :BONSLY, 5, 0
    enc.add :DITTO, 5, 0
    enc.add :DITTO, 5, 0
    enc.add :LOTAD, 5, 0
    enc.add :LOTAD, 5, 0
    enc.add :BONSLY, 5, 0
    enc.add :BONSLY, 5, 0
    enc.add :BONSLY, 5, 0
  end
  e.water 2 do |enc|
    enc.add :TENTACOOL, 5, 0
    enc.add :MANTYKE, 5, 0
    enc.add :REMORAID, 5, 0
  end
  e.oldrod 0 do |enc|
    enc.add :MAGIKARP, 5, 0
  end
  e.goodrod 0 do |enc|
    enc.add :BARBOACH, 5, 0
    enc.add :KRABBY, 5, 0
    enc.add :SHELLDER, 5, 0
  end
  e.superrod 0 do |enc|
    enc.add :CHINCHOU, 5, 0
    enc.add :QWILFISH, 5, 0
    enc.add :CORSOLA, 5, 0
    enc.add :STARYU, 5, 0
  end
end

GameData::Encounter.define 70, 0 do |e|
  e.land 21 do |enc|
    enc.add :CHINCHOU, 5, 0
    enc.add :CLAMPERL, 5, 0
    enc.add :SHELLDER, 5, 0
    enc.add :CLAMPERL, 5, 0
    enc.add :CORSOLA, 5, 0
    enc.add :RELICANTH, 5, 0
    enc.add :SHELLDER, 5, 0
  end
end

GameData::Encounter.define 75, 0 do |e|
  e.land 21 do |enc|
    enc.add :GEODUDE, 5, 0, form: 1
    enc.add :RATTATA, 5, 0, form: 1
    enc.add :CUBONE, 5, 0
    enc.add :DIGLETT, 5, 0, form: 1
    enc.add :MEOWTH, 5, 0, form: 1
    enc.add :PIKACHU, 5, 0
    enc.add :SANDSHREW, 5, 0, form: 1
    enc.add :VULPIX, 5, 0, form: 1
  end
end

