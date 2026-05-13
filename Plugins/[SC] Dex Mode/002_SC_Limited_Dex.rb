#===============================================================================
# [SC] Dex Mode - Shattered Crowns Limited Dex (curated species list)
#===============================================================================
# ~430 species across Gen 1-9, hand-picked to fit the Shattered Crowns
# palette: nordic mythology, dragons, ghosts, ancient/fossil, weather,
# steel knights, and every line that any story character actually uses.
#
# Inclusion rules:
#   1. EVERY species used by a named story trainer (Generals, Marcus,
#      Aurora, Lyra, Kael, Ragnar, Viktor, gym leaders, Champion teams)
#   2. The three Guardian lines + their canonical antagonists
#   3. Both starter sets (Asgheim-region + classic 27 starter lines)
#   4. Astoria-region exclusives (already defined in the
#      Astoria Expansion arc — Relicanth, Aerodactyl, Cranidos, etc.)
#   5. Themed selections per gen biased toward dragon / ghost / ice /
#      steel / dark / ancient
#   6. Crowd favourites you'd be sad not to bring (Eevee, Lapras,
#      Lucario, Mimikyu, Garchomp, etc.)
#
# Lines are listed by their base form — each entry's evolutions are
# auto-added via expand_lines! at load time, so we keep the data file
# readable.
#
# To toggle whole gens off (e.g. classic-only run) edit ENABLED_GENS
# in 000_Config.rb — defaults to all-on.
#===============================================================================

module SCLimitedDex
  #-----------------------------------------------------------------------------
  # Story-mandatory species (always included regardless of gen toggles)
  #-----------------------------------------------------------------------------
  STORY_MANDATORY = [
    # Guardians + final boss + key legendaries
    :ZACIAN, :ZAMAZENTA, :XERNEAS, :YVELTAL, :ETERNATUS, :HOOPA,
    :ARCEUS, :GIRATINA, :DIALGA, :PALKIA,
    :MEWTWO, :MEW,
    :LATIAS, :LATIOS, :SUICUNE, :ENTEI, :RAIKOU,
    :COBALION, :VIRIZION, :TERRAKION, :KELDEO,
    :RESHIRAM, :ZEKROM, :KYUREM,
    :LUGIA, :HOOH, :CELEBI,
    :JIRACHI, :DEOXYS, :DARKRAI, :CRESSELIA,
    :REGIGIGAS, :REGIROCK, :REGICE, :REGISTEEL,
    # Marcus's team
    :CHARMANDER, :CHARMELEON, :CHARIZARD,
    :GIBLE, :GABITE, :GARCHOMP,
    :BAGON, :SHELGON, :SALAMENCE,
    :LARVITAR, :PUPITAR, :TYRANITAR,
    :BELDUM, :METANG, :METAGROSS,
    :DRATINI, :DRAGONAIR, :DRAGONITE,
    # Aurora's team
    :RALTS, :KIRLIA, :GARDEVOIR, :GALLADE,
    :ABRA, :KADABRA, :ALAKAZAM,
    :STARYU, :STARMIE,
    # Companion Pokemon (Willow, Shadow)
    :EEVEE, :SYLVEON, :ESPEON, :UMBREON, :VAPOREON, :FLAREON, :JOLTEON, :LEAFEON, :GLACEON,
    :ZORUA, :ZOROARK,
    # Generals' aces
    :SPIRITOMB, :SABLEYE, :DUSKULL, :DUSCLOPS, :DUSKNOIR,
    :MAWILE, :AEGISLASH, :HONEDGE, :DOUBLADE,
    :CHANDELURE, :LITWICK, :LAMPENT,
    :HYDREIGON, :ZWEILOUS, :DEINO,
    :GRIMMSNARL, :IMPIDIMP, :MORGREM,
    # Subject Zero referenced via MEWTWO
    # Festival mask gen-1 reference
    :PIKACHU, :RAICHU, :PICHU,
    # Astoria coast pool
    :CORSOLA, :STARYU, :KRABBY, :KINGLER, :WINGULL, :PELIPPER,
    :RELICANTH, :CHINCHOU, :LANTURN, :LAPRAS,
    # Astoria cliffs pool
    :SKARMORY, :RHYHORN, :RHYDON, :RHYPERIOR,
    :LARVITAR, :PUPITAR, :TYRANITAR,
    :GLIGAR, :GLISCOR, :NOSEPASS, :PROBOPASS,
    :ANORITH, :ARMALDO, :AERODACTYL,
    :CRANIDOS, :RAMPARDOS,
    # Astoria forgotten groves
    :SNORUNT, :GLALIE, :FROSLASS,
    :ROSELIA, :ROSERADE, :BUDEW,
    :ABSOL,
    :BAGON, :SHELGON, :SALAMENCE,
    :JANGMOO, :HAKAMOO, :KOMMOO,
    :DEINO, :ZWEILOUS, :HYDREIGON,
    # Spirit Realm ambush pool
    :GASTLY, :HAUNTER, :GENGAR,
    :MISDREAVUS, :MISMAGIUS,
    :SHUPPET, :BANETTE,
    :YAMASK, :COFAGRIGUS,
    # Liberation arc reunion Pokémon (named)
    :PIDGEOT, :PIDGEY, :PIDGEOTTO,        # Scout
    :GRANBULL, :SNUBBULL,                  # named
    :LINOONE, :ZIGZAGOON,                  # named
    :BISHARP, :KINGAMBIT, :PAWNIARD,       # liberation 3
    :FURFROU,                              # Pip's tribute
    # Hilde's orphanage Houndoom
    :HOUNDOUR, :HOUNDOOM,
  ].freeze

  #-----------------------------------------------------------------------------
  # All 9 generations of starters (every starter line, all stages)
  #-----------------------------------------------------------------------------
  STARTER_LINES = [
    # Gen 1
    :BULBASAUR, :IVYSAUR, :VENUSAUR,
    :CHARMANDER, :CHARMELEON, :CHARIZARD,
    :SQUIRTLE, :WARTORTLE, :BLASTOISE,
    # Gen 2
    :CHIKORITA, :BAYLEEF, :MEGANIUM,
    :CYNDAQUIL, :QUILAVA, :TYPHLOSION,
    :TOTODILE, :CROCONAW, :FERALIGATR,
    # Gen 3
    :TREECKO, :GROVYLE, :SCEPTILE,
    :TORCHIC, :COMBUSKEN, :BLAZIKEN,
    :MUDKIP, :MARSHTOMP, :SWAMPERT,
    # Gen 4
    :TURTWIG, :GROTLE, :TORTERRA,
    :CHIMCHAR, :MONFERNO, :INFERNAPE,
    :PIPLUP, :PRINPLUP, :EMPOLEON,
    # Gen 5
    :SNIVY, :SERVINE, :SERPERIOR,
    :TEPIG, :PIGNITE, :EMBOAR,
    :OSHAWOTT, :DEWOTT, :SAMUROTT,
    # Gen 6
    :CHESPIN, :QUILLADIN, :CHESNAUGHT,
    :FENNEKIN, :BRAIXEN, :DELPHOX,
    :FROAKIE, :FROGADIER, :GRENINJA,
    # Gen 7
    :ROWLET, :DARTRIX, :DECIDUEYE,
    :LITTEN, :TORRACAT, :INCINEROAR,
    :POPPLIO, :BRIONNE, :PRIMARINA,
    # Gen 8
    :GROOKEY, :THWACKEY, :RILLABOOM,
    :SCORBUNNY, :RABOOT, :CINDERACE,
    :SOBBLE, :DRIZZILE, :INTELEON,
    # Gen 9
    :SPRIGATITO, :FLORAGATO, :MEOWSCARADA,
    :FUECOCO, :CROCALOR, :SKELEDIRGE,
    :QUAXLY, :QUAXWELL, :QUAQUAVAL,
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 1 - selected lines (Asgheim-flavoured)
  #-----------------------------------------------------------------------------
  GEN1 = [
    # already starters + electric mascot above
    :RATTATA, :RATICATE,
    :SPEAROW, :FEAROW,
    :EKANS, :ARBOK,
    :NIDORANfE, :NIDORINA, :NIDOQUEEN, :NIDORANmA, :NIDORINO, :NIDOKING,
    :VULPIX, :NINETALES,
    :ZUBAT, :GOLBAT, :CROBAT,
    :ODDISH, :GLOOM, :VILEPLUME, :BELLOSSOM,
    :GROWLITHE, :ARCANINE,
    :POLIWAG, :POLIWHIRL, :POLIWRATH, :POLITOED,
    :MACHOP, :MACHOKE, :MACHAMP,
    :BELLSPROUT, :WEEPINBELL, :VICTREEBEL,
    :TENTACOOL, :TENTACRUEL,
    :GEODUDE, :GRAVELER, :GOLEM,
    :PONYTA, :RAPIDASH,
    :SLOWPOKE, :SLOWBRO, :SLOWKING,
    :MAGNEMITE, :MAGNETON, :MAGNEZONE,
    :DODUO, :DODRIO,
    :GRIMER, :MUK,
    :SHELLDER, :CLOY­STER,
    :ONIX, :STEELIX,
    :DROWZEE, :HYPNO,
    :EXEGGCUTE, :EXEGGUTOR,
    :CUBONE, :MAROWAK,
    :LICKITUNG, :LICKILICKY,
    :KOFFING, :WEEZING,
    :TANGELA, :TANGROWTH,
    :KANGASKHAN,
    :HORSEA, :SEADRA, :KINGDRA,
    :SCYTHER, :SCIZOR,
    :ELECTABUZZ, :ELECTIVIRE,
    :MAGMAR, :MAGMORTAR,
    :PINSIR, :HERACROSS,
    :TAUROS,
    :MAGIKARP, :GYARADOS,
    :DITTO,
    :PORYGON, :PORYGON2, :PORYGONZ,
    :SNORLAX, :MUNCHLAX,
    :ARTICUNO, :ZAPDOS, :MOLTRES,
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 2 - selected lines (nordic-flavoured)
  #-----------------------------------------------------------------------------
  GEN2 = [
    :HOOTHOOT, :NOCTOWL,
    :LEDYBA, :LEDIAN,
    :SPINARAK, :ARIADOS,
    :MAREEP, :FLAAFFY, :AMPHAROS,
    :HOPPIP, :SKIPLOOM, :JUMPLUFF,
    :MAREEP,
    :SUDOWOODO, :BONSLY,
    :HOPPIP, :SKIPLOOM, :JUMPLUFF,
    :AIPOM, :AMBIPOM,
    :YANMA, :YANMEGA,
    :WOOPER, :QUAGSIRE,
    :MURKROW, :HONCHKROW,
    :SLUGMA, :MAGCARGO,
    :SWINUB, :PILOSWINE, :MAMOSWINE,
    :REMORAID, :OCTILLERY,
    :DELIBIRD,
    :SKARMORY,
    :SNEASEL, :WEAVILE,
    :TEDDIURSA, :URSARING,
    :STANTLER,
    :SMEARGLE,
    :TYROGUE, :HITMONLEE, :HITMONCHAN, :HITMONTOP,
    :SMOOCHUM, :JYNX,
    :ELEKID,
    :MAGBY,
    :MILTANK,
    :PHANPY, :DONPHAN,
    :HERACROSS,
    :LUGIA, :HOOH, :CELEBI,
    :SUICUNE, :ENTEI, :RAIKOU,
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 3 - selected lines (dragon + ancient)
  #-----------------------------------------------------------------------------
  GEN3 = [
    :POOCHYENA, :MIGHTYENA,
    :TAILLOW, :SWELLOW,
    :WINGULL, :PELIPPER,
    :SHROOMISH, :BRELOOM,
    :NINCADA, :NINJASK, :SHEDINJA,
    :WHISMUR, :LOUDRED, :EXPLOUD,
    :MAKUHITA, :HARIYAMA,
    :ARON, :LAIRON, :AGGRON,
    :MEDITITE, :MEDICHAM,
    :ELECTRIKE, :MANECTRIC,
    :PLUSLE, :MINUN,
    :GULPIN, :SWALOT,
    :CARVANHA, :SHARPEDO,
    :NUMEL, :CAMERUPT,
    :TORKOAL,
    :SPOINK, :GRUMPIG,
    :SPINDA,
    :TRAPINCH, :VIBRAVA, :FLYGON,
    :CACNEA, :CACTURNE,
    :SWABLU, :ALTARIA,
    :ZANGOOSE, :SEVIPER,
    :LUNATONE, :SOLROCK,
    :BARBOACH, :WHISCASH,
    :CORPHISH, :CRAWDAUNT,
    :BALTOY, :CLAYDOL,
    :LILEEP, :CRADILY,
    :ANORITH, :ARMALDO,
    :FEEBAS, :MILOTIC,
    :CASTFORM,
    :KECLEON,
    :SHUPPET, :BANETTE,
    :DUSKULL, :DUSCLOPS, :DUSKNOIR,
    :TROPIUS,
    :CHIMECHO, :CHINGLING,
    :ABSOL,
    :WYNAUT, :WOBBUFFET,
    :SNORUNT, :GLALIE, :FROSLASS,
    :CLAMPERL, :HUNTAIL, :GOREBYSS,
    :RELICANTH,
    :LUVDISC,
    :BAGON, :SHELGON, :SALAMENCE,
    :BELDUM, :METANG, :METAGROSS,
    :REGIROCK, :REGICE, :REGISTEEL,
    :LATIAS, :LATIOS,
    :KYOGRE, :GROUDON, :RAYQUAZA,
    :JIRACHI, :DEOXYS,
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 4 - selected lines
  #-----------------------------------------------------------------------------
  GEN4 = [
    :STARLY, :STARAVIA, :STARAPTOR,
    :BIDOOF, :BIBAREL,
    :KRICKETOT, :KRICKETUNE,
    :SHINX, :LUXIO, :LUXRAY,
    :BUDEW,
    :CRANIDOS, :RAMPARDOS,
    :SHIELDON, :BASTIODON,
    :BURMY, :WORMADAM, :MOTHIM,
    :COMBEE, :VESPIQUEN,
    :PACHIRISU,
    :BUIZEL, :FLOATZEL,
    :CHERUBI, :CHERRIM,
    :SHELLOS, :GASTRODON,
    :DRIFLOON, :DRIFBLIM,
    :BUNEARY, :LOPUNNY,
    :GLAMEOW, :PURUGLY,
    :CHINGLING,
    :STUNKY, :SKUNTANK,
    :BRONZOR, :BRONZONG,
    :CHATOT,
    :SPIRITOMB,
    :GIBLE, :GABITE, :GARCHOMP,
    :MUNCHLAX,
    :RIOLU, :LUCARIO,
    :HIPPOPOTAS, :HIPPOWDON,
    :SKORUPI, :DRAPION,
    :CROAGUNK, :TOXICROAK,
    :CARNIVINE,
    :FINNEON, :LUMINEON,
    :MANTYKE,
    :SNOVER, :ABOMASNOW,
    :MAGNEZONE, :LICKILICKY, :RHYPERIOR, :TANGROWTH, :ELECTIVIRE, :MAGMORTAR, :TOGEKISS, :YANMEGA, :LEAFEON, :GLACEON, :GLISCOR, :MAMOSWINE, :PORYGONZ, :GALLADE, :PROBOPASS, :DUSKNOIR, :FROSLASS, :ROTOM,
    :UXIE, :MESPRIT, :AZELF,
    :DIALGA, :PALKIA, :HEATRAN, :REGIGIGAS, :GIRATINA, :CRESSELIA, :PHIONE, :MANAPHY, :DARKRAI, :SHAYMIN, :ARCEUS,
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 5 - selected lines (dragons + ghosts heavy)
  #-----------------------------------------------------------------------------
  GEN5 = [
    :PATRAT, :WATCHOG,
    :LILLIPUP, :HERDIER, :STOUTLAND,
    :PURRLOIN, :LIEPARD,
    :PIDOVE, :TRANQUILL, :UNFEZANT,
    :BLITZLE, :ZEBSTRIKA,
    :ROGGENROLA, :BOLDORE, :GIGALITH,
    :WOOBAT, :SWOOBAT,
    :DRILBUR, :EXCADRILL,
    :AUDINO,
    :TIMBURR, :GURDURR, :CONKELDURR,
    :TYMPOLE, :PALPITOAD, :SEISMITOAD,
    :SEWADDLE, :SWADLOON, :LEAVANNY,
    :VENIPEDE, :WHIRLIPEDE, :SCOLIPEDE,
    :COTTONEE, :WHIMSICOTT,
    :PETILIL, :LILLIGANT,
    :BASCULIN,
    :SANDILE, :KROKOROK, :KROOKODILE,
    :DARUMAKA, :DARMANITAN,
    :MARACTUS,
    :DWEBBLE, :CRUSTLE,
    :SCRAGGY, :SCRAFTY,
    :SIGILYPH,
    :YAMASK, :COFAGRIGUS,
    :TIRTOUGA, :CARRACOSTA,
    :ARCHEN, :ARCHEOPS,
    :TRUBBISH, :GARBODOR,
    :ZORUA, :ZOROARK,
    :MINCCINO, :CINCCINO,
    :GOTHITA, :GOTHORITA, :GOTHITELLE,
    :SOLOSIS, :DUOSION, :REUNICLUS,
    :DUCKLETT, :SWANNA,
    :VANILLITE, :VANILLISH, :VANILLUXE,
    :DEERLING, :SAWSBUCK,
    :EMOLGA,
    :KARRABLAST, :ESCAVALIER,
    :FOONGUS, :AMOONGUSS,
    :FRILLISH, :JELLICENT,
    :ALOMOMOLA,
    :JOLTIK, :GALVANTULA,
    :FERROSEED, :FERROTHORN,
    :KLINK, :KLANG, :KLINKLANG,
    :TYNAMO, :EELEKTRIK, :EELEKTROSS,
    :ELGYEM, :BEHEEYEM,
    :LITWICK, :LAMPENT, :CHANDELURE,
    :AXEW, :FRAXURE, :HAXORUS,
    :CUBCHOO, :BEARTIC,
    :CRYOGONAL,
    :SHELMET, :ACCELGOR,
    :STUNFISK,
    :MIENFOO, :MIENSHAO,
    :DRUDDIGON,
    :GOLETT, :GOLURK,
    :PAWNIARD, :BISHARP, :KINGAMBIT,
    :BOUFFALANT,
    :RUFFLET, :BRAVIARY,
    :VULLABY, :MANDIBUZZ,
    :HEATMOR,
    :DURANT,
    :DEINO, :ZWEILOUS, :HYDREIGON,
    :LARVESTA, :VOLCARONA,
    :COBALION, :TERRAKION, :VIRIZION, :KELDEO,
    :TORNADUS, :THUNDURUS, :LANDORUS,
    :RESHIRAM, :ZEKROM, :KYUREM,
    :MELOETTA, :GENESECT,
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 6 - selected lines
  #-----------------------------------------------------------------------------
  GEN6 = [
    :BUNNELBY, :DIGGERSBY,
    :FLETCHLING, :FLETCHINDER, :TALONFLAME,
    :SCATTERBUG, :SPEWPA, :VIVILLON,
    :LITLEO, :PYROAR,
    :FLABEBE, :FLOETTE, :FLORGES,
    :SKIDDO, :GOGOAT,
    :PANCHAM, :PANGORO,
    :FURFROU,
    :ESPURR, :MEOWSTIC,
    :HONEDGE, :DOUBLADE, :AEGISLASH,
    :SPRITZEE, :AROMATISSE,
    :SWIRLIX, :SLURPUFF,
    :INKAY, :MALAMAR,
    :BINACLE, :BARBARACLE,
    :SKRELP, :DRAGALGE,
    :CLAUNCHER, :CLAWITZER,
    :HELIOPTILE, :HELIOLISK,
    :TYRUNT, :TYRANTRUM,
    :AMAURA, :AURORUS,
    :HAWLUCHA,
    :DEDENNE,
    :CARBINK,
    :GOOMY, :SLIGGOO, :GOODRA,
    :KLEFKI,
    :PHANTUMP, :TREVENANT,
    :PUMPKABOO, :GOURGEIST,
    :BERGMITE, :AVALUGG,
    :NOIBAT, :NOIVERN,
    :XERNEAS, :YVELTAL, :ZYGARDE,
    :DIANCIE, :HOOPA, :VOLCANION,
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 7 - selected lines
  #-----------------------------------------------------------------------------
  GEN7 = [
    :PIKIPEK, :TRUMBEAK, :TOUCANNON,
    :YUNGOOS, :GUMSHOOS,
    :GRUBBIN, :CHARJABUG, :VIKAVOLT,
    :CRABRAWLER, :CRABOMINABLE,
    :ORICORIO,
    :CUTIEFLY, :RIBOMBEE,
    :ROCKRUFF, :LYCANROC,
    :WISHIWASHI,
    :MAREANIE, :TOXAPEX,
    :MUDBRAY, :MUDSDALE,
    :DEWPIDER, :ARAQUANID,
    :FOMANTIS, :LURANTIS,
    :MORELULL, :SHIINOTIC,
    :SALANDIT, :SALAZZLE,
    :STUFFUL, :BEWEAR,
    :BOUNSWEET, :STEENEE, :TSAREENA,
    :COMFEY,
    :ORANGURU,
    :PASSIMIAN,
    :WIMPOD, :GOLISOPOD,
    :SANDYGAST, :PALOSSAND,
    :PYUKUMUKU,
    :TYPENULL, :SILVALLY,
    :MINIOR,
    :KOMALA,
    :TURTONATOR,
    :TOGEDEMARU,
    :MIMIKYU,
    :BRUXISH,
    :DRAMPA,
    :DHELMISE,
    :JANGMOO, :HAKAMOO, :KOMMOO,
    :TAPUKOKO, :TAPULELE, :TAPUBULU, :TAPUFINI,
    :COSMOG, :COSMOEM, :SOLGALEO, :LUNALA,
    :NIHILEGO, :BUZZWOLE, :PHEROMOSA, :XURKITREE, :CELESTEELA, :KARTANA, :GUZZLORD,
    :NECROZMA, :MAGEARNA, :MARSHADOW,
    :POIPOLE, :NAGANADEL,
    :STAKATAKA, :BLACEPHALON,
    :ZERAORA, :MELTAN, :MELMETAL,
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 8 - selected lines
  #-----------------------------------------------------------------------------
  GEN8 = [
    :SKWOVET, :GREEDENT,
    :ROOKIDEE, :CORVISQUIRE, :CORVIKNIGHT,
    :BLIPBUG, :DOTTLER, :ORBEETLE,
    :NICKIT, :THIEVUL,
    :GOSSIFLEUR, :ELDEGOSS,
    :WOOLOO, :DUBWOOL,
    :CHEWTLE, :DREDNAW,
    :YAMPER, :BOLTUND,
    :ROLYCOLY, :CARKOL, :COALOSSAL,
    :APPLIN, :FLAPPLE, :APPLETUN, :DIPPLIN,
    :SILICOBRA, :SANDACONDA,
    :CRAMORANT,
    :ARROKUDA, :BARRASKEWDA,
    :TOXEL, :TOXTRICITY,
    :SIZZLIPEDE, :CENTISKORCH,
    :CLOBBOPUS, :GRAPPLOCT,
    :SINISTEA, :POLTEAGEIST,
    :HATENNA, :HATTREM, :HATTERENE,
    :IMPIDIMP, :MORGREM, :GRIMMSNARL,
    :OBSTAGOON,
    :PERRSERKER,
    :CURSOLA,
    :SIRFETCHD,
    :MR_RIME,
    :RUNERIGUS,
    :MILCERY, :ALCREMIE,
    :FALINKS,
    :PINCURCHIN,
    :SNOM, :FROSMOTH,
    :STONJOURNER,
    :EISCUE,
    :INDEEDEE,
    :MORPEKO,
    :CUFANT, :COPPERAJAH,
    :DRACOZOLT, :ARCTOZOLT,
    :DRACOVISH, :ARCTOVISH,
    :DURALUDON, :ARCHALUDON,
    :DREEPY, :DRAKLOAK, :DRAGAPULT,
    :ZACIAN, :ZAMAZENTA, :ETERNATUS,
    :KUBFU, :URSHIFU,
    :ZARUDE,
    :REGIELEKI, :REGIDRAGO,
    :GLASTRIER, :SPECTRIER, :CALYREX,
    :ENAMORUS,
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 9 - selected lines (heavy on Paradox + new dragons)
  #-----------------------------------------------------------------------------
  GEN9 = [
    :LECHONK, :OINKOLOGNE,
    :TAROUNTULA, :SPIDOPS,
    :NYMBLE, :LOKIX,
    :PAWMI, :PAWMO, :PAWMOT,
    :TANDEMAUS, :MAUSHOLD,
    :FIDOUGH, :DACHSBUN,
    :SMOLIV, :DOLLIV, :ARBOLIVA,
    :SQUAWKABILLY,
    :NACLI, :NACLSTACK, :GARGANACL,
    :CHARCADET, :ARMAROUGE, :CERULEDGE,
    :TADBULB, :BELLIBOLT,
    :WATTREL, :KILOWATTREL,
    :MASCHIFF, :MABOSSTIFF,
    :SHROODLE, :GRAFAIAI,
    :BRAMBLIN, :BRAMBLEGHAST,
    :TOEDSCOOL, :TOEDSCRUEL,
    :KLAWF,
    :CAPSAKID, :SCOVILLAIN,
    :RELLOR, :RABSCA,
    :FLITTLE, :ESPATHRA,
    :TINKATINK, :TINKATUFF, :TINKATON,
    :WIGLETT, :WUGTRIO,
    :BOMBIRDIER,
    :FINIZEN, :PALAFIN,
    :VAROOM, :REVAVROOM,
    :CYCLIZAR,
    :ORTHWORM,
    :GLIMMET, :GLIMMORA,
    :GREAVARD, :HOUNDSTONE,
    :FLAMIGO,
    :CETODDLE, :CETITAN,
    :VELUZA,
    :DONDOZO, :TATSUGIRI,
    :ANNIHILAPE,
    :CLODSIRE,
    :FARIGIRAF,
    :DUDUNSPARCE,
    :KINGAMBIT,
    :GREATTUSK, :SCREAMTAIL, :BRUTEBONNET, :FLUTTERMANE,
    :SLITHERWING, :SANDYSHOCKS,
    :IRONTREADS, :IRONBUNDLE, :IRONHANDS, :IRONJUGULIS, :IRONMOTH, :IRONTHORNS,
    :FRIGIBAX, :ARCTIBAX, :BAXCALIBUR,
    :GIMMIGHOUL, :GHOLDENGO,
    :WO_CHIEN, :CHIEN_PAO, :TING_LU, :CHI_YU,
    :ROARING_MOON, :IRON_VALIANT,
    :KORAIDON, :MIRAIDON,
    :WALKING_WAKE, :IRON_LEAVES,
    :POLTCHAGEIST, :SINISTCHA,
    :OKIDOGI, :MUNKIDORI, :FEZANDIPITI,
    :OGERPON,
    :HYDRAPPLE,
    :GOUGING_FIRE, :RAGING_BOLT,
    :IRON_BOULDER, :IRON_CROWN,
    :TERAPAGOS,
    :PECHARUNT,
  ].freeze

  #-----------------------------------------------------------------------------
  # Final assembled list — flatten, normalize, dedupe, drop unknowns
  #-----------------------------------------------------------------------------
  def self.species
    @species_cache ||= begin
      all = STORY_MANDATORY + STARTER_LINES +
            GEN1 + GEN2 + GEN3 + GEN4 + GEN5 + GEN6 + GEN7 + GEN8 + GEN9
      list = all.map { |s| s.is_a?(Symbol) ? s : s.to_s.upcase.to_sym }
      list.uniq!
      # Drop any species that aren't actually registered (handles typos
      # and species removed by the user's PBS edits gracefully).
      list.select! { |s| GameData::Species.exists?(s) } if defined?(GameData::Species)
      list
    end
  end

  def self.count
    species.length
  end

  def self.include?(sym)
    species.include?(sym)
  end
end
