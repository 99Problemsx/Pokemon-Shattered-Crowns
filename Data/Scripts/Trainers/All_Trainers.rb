#===============================================================================
# Shattered Crowns - Trainer Definitions
#===============================================================================
# Auto-generated from PBS/trainers.txt
# Uses GameData::Trainer.define format
#===============================================================================

GameData::Trainer.define :CAMPER, "Liam", 0 do |t|
  t.lose_text "Very good."
  t.items     :FULLRESTORE, :FULLRESTORE
  t.pokemon :DIGLETT, 10 do |p|
  end
  t.pokemon :BONSLY, 11 do |p|
  end
  t.pokemon :GEODUDE, 12 do |p|
    p.moves    :DEFENSECURL, :HEADSMASH, :ROCKPOLISH, :ROCKTHROW
    p.gender   :male
    p.iv       20,20,20,20,20,20
  end
  t.pokemon :ONIX, 14 do |p|
    p.moves    :HEADSMASH, :ROCKTHROW, :RAGE, :ROCKTOMB
    p.item     :SITRUSBERRY
    p.gender   :male
    p.iv       20,20,20,20,20,20
    p.ball     :HEAVYBALL
    p.shiny    true
  end
end

GameData::Trainer.define :TEAMROCKET_M, "Grunt", 1 do |t|
  t.lose_text "You're too good for me!"
  t.pokemon :WEEPINBELL, 21 do |p|
    p.shadow   true
  end
end

GameData::Trainer.define :TEAMROCKET_F, "Grunt", 1 do |t|
  t.lose_text "You're too good for me!"
  t.pokemon :BURMY, 19 do |p|
  end
  t.pokemon :WINGULL, 19 do |p|
  end
  t.pokemon :ELECTABUZZ, 20 do |p|
    p.shadow   true
  end
end

GameData::Trainer.define :YOUNGSTER, "Ben", 0 do |t|
  t.lose_text "Aww, I lost."
  t.pokemon :RATTATA, 11 do |p|
  end
  t.pokemon :EKANS, 11 do |p|
  end
end

GameData::Trainer.define :CAMPER, "Jeff", 0 do |t|
  t.lose_text "A very good battle, indeed!"
  t.pokemon :SPEAROW, 16 do |p|
  end
  t.pokemon :SENTRET, 16 do |p|
  end
end

GameData::Trainer.define :CAMPER, "Jeff", 1 do |t|
  t.lose_text "You beat me again!"
  t.pokemon :FEAROW, 29 do |p|
  end
  t.pokemon :FURRET, 29 do |p|
  end
end

GameData::Trainer.define :PICNICKER, "Susie", 0 do |t|
  t.lose_text "Defeated! Oh my!"
  t.pokemon :MEOWTH, 18 do |p|
  end
end

GameData::Trainer.define :PICNICKER, "Susie", 1 do |t|
  t.lose_text "Defeated! Oh my!"
  t.pokemon :PERSIAN, 32 do |p|
  end
end

GameData::Trainer.define :HIKER, "Ford", 0 do |t|
  t.lose_text "You're too good for me!"
  t.pokemon :MACHOP, 19 do |p|
  end
end

GameData::Trainer.define :FISHERMAN, "Andrew", 0 do |t|
  t.lose_text "Washed out!"
  t.pokemon :MAGIKARP, 14 do |p|
  end
  t.pokemon :MAGIKARP, 18 do |p|
  end
end

GameData::Trainer.define :BEAUTY, "Bridget", 0 do |t|
  t.lose_text "My Skitty!"
  t.pokemon :SKITTY, 18 do |p|
  end
end

GameData::Trainer.define :LASS, "Crissy", 0 do |t|
  t.lose_text "You didn't have to win so convincingly!"
  t.pokemon :PLUSLE, 17 do |p|
  end
  t.pokemon :MINUN, 17 do |p|
  end
end

GameData::Trainer.define :COOLCOUPLE, "Alice & Bob", 0 do |t|
  t.lose_text "..."
  t.pokemon :TURTWIG, 19 do |p|
  end
  t.pokemon :CHIMCHAR, 19 do |p|
  end
  t.pokemon :COMBUSKEN, 19 do |p|
  end
end

GameData::Trainer.define :SWIMMER2_F, "Ariel", 0 do |t|
  t.lose_text "Washed out!"
  t.pokemon :STARYU, 15 do |p|
  end
  t.pokemon :GOLDEEN, 11 do |p|
  end
end

GameData::Trainer.define :RIVAL1, "Blue", 0 do |t|
  t.lose_text "Not too shabby."
  t.pokemon :PIDGEOTTO, 17 do |p|
  end
  t.pokemon :RATTATA, 15 do |p|
  end
  t.pokemon :BULBASAUR, 18 do |p|
  end
end

GameData::Trainer.define :RIVAL1, "Blue", 1 do |t|
  t.lose_text "Not too shabby."
  t.pokemon :PIDGEOTTO, 17 do |p|
  end
  t.pokemon :RATTATA, 15 do |p|
  end
  t.pokemon :CHARMANDER, 18 do |p|
  end
end

GameData::Trainer.define :RIVAL1, "Blue", 2 do |t|
  t.lose_text "Not too shabby."
  t.pokemon :PIDGEOTTO, 17 do |p|
  end
  t.pokemon :RATTATA, 15 do |p|
  end
  t.pokemon :SQUIRTLE, 18 do |p|
  end
end

GameData::Trainer.define :CHAMPION, "Blue", 0 do |t|
  t.lose_text "A good battle indeed!"
  t.pokemon :VENUSAUR, 63 do |p|
    p.item     :SITRUSBERRY
  end
  t.pokemon :CHARIZARD, 63 do |p|
    p.item     :SITRUSBERRY
  end
  t.pokemon :BLASTOISE, 63 do |p|
    p.item     :SITRUSBERRY
  end
end

GameData::Trainer.define :RIVAL1, "Gary", 0 do |t|
  t.lose_text "What?! I can't believe I lost!"
  t.pokemon :PIDGEY, 5 do |p|
  end
end

GameData::Trainer.define :RIVAL1, "Gary", 1 do |t|
  t.lose_text "You got lucky this time!"
  t.pokemon :PIDGEOTTO, 17 do |p|
  end
  t.pokemon :RATTATA, 15 do |p|
  end
  t.pokemon :EEVEE, 18 do |p|
  end
end

GameData::Trainer.define :AITESTER_M, "MegaTester", 0 do |t|
  t.lose_text "Your Mega Evolution strategy was better!"
  t.items     :HYPERPOTION, :HYPERPOTION, :MEGARING
  t.pokemon :CHARIZARD, 20 do |p|
    p.moves    :FLAMETHROWER, :DRAGONCLAW, :AIRSLASH, :ROOST
    p.item     :CHARIZARDITEX
    p.iv       31,31,31,31,31,31
    p.ev       0,252,0,252,4,0
  end
  t.pokemon :LUCARIO, 20 do |p|
    p.moves    :AURASPHERE, :FLASHCANNON, :CLOSECOMBAT, :EXTREMESPEED
    p.item     :LUCARIONITE
    p.iv       31,31,31,31,31,31
    p.ev       0,252,0,252,4,0
  end
  t.pokemon :GENGAR, 20 do |p|
    p.moves    :SHADOWBALL, :SLUDGEBOMB, :FOCUSBLAST, :DESTINYBOND
    p.item     :GENGARITE
    p.iv       31,31,31,31,31,31
    p.ev       0,0,0,252,4,252
  end
end

GameData::Trainer.define :AITESTER_F, "DynamaxTester", 0 do |t|
  t.lose_text "Your Dynamax timing was perfect!"
  t.items     :HYPERPOTION, :HYPERPOTION, :DYNAMAXBAND
  t.pokemon :CINDERACE, 20 do |p|
    p.moves    :PYROBALL, :HIGHJUMPKICK, :UTURN, :COURTCHANGE
    p.iv       31,31,31,31,31,31
    p.ev       0,252,0,4,0,252
  end
  t.pokemon :INTELEON, 20 do |p|
    p.moves    :SNIPESHOT, :ICEBEAM, :UTURN, :AIRSLASH
    p.iv       31,31,31,31,31,31
    p.ev       0,0,0,252,4,252
  end
  t.pokemon :RILLABOOM, 20 do |p|
    p.moves    :DRUMBEATING, :KNOCKOFF, :UTURN, :HIGHHORSEPOWER
    p.iv       31,31,31,31,31,31
    p.ev       252,252,0,0,4,0
  end
end

GameData::Trainer.define :AITESTER_M, "TeraTester", 0 do |t|
  t.lose_text "Your Tera strategy was superior!"
  t.items     :HYPERPOTION, :HYPERPOTION, :TERAORB
  t.pokemon :PIKACHU, 20 do |p|
    p.moves    :THUNDERBOLT, :SURF, :VOLTSWITCH, :KNOCKOFF
    p.iv       31,31,31,31,31,31
    p.ev       0,0,0,252,4,252
  end
  t.pokemon :GARCHOMP, 20 do |p|
    p.moves    :EARTHQUAKE, :DRAGONCLAW, :STONEEDGE, :SWORDSDANCE
    p.iv       31,31,31,31,31,31
    p.ev       0,252,0,4,0,252
  end
  t.pokemon :AEGISLASH, 20 do |p|
    p.moves    :SHADOWBALL, :FLASHCANNON, :SHADOWSNEAK, :KINGSSHIELD
    p.iv       31,31,31,31,31,31
    p.ev       252,252,0,4,0,0
  end
end

GameData::Trainer.define :AITESTER_F, "ZMoveTester", 0 do |t|
  t.lose_text "Your Z-Move was devastating!"
  t.items     :HYPERPOTION, :HYPERPOTION, :ZPOWERRING
  t.pokemon :RAICHU, 20 do |p|
    p.moves    :THUNDERBOLT, :VOLTSWITCH, :GRASSKNOT, :NASTYPLOT
    p.item     :PIKANIUMZ
    p.iv       31,31,31,31,31,31
    p.ev       0,0,0,252,4,252
  end
  t.pokemon :DECIDUEYE, 20 do |p|
    p.moves    :SPIRITSHACKLE, :LEAFBLADE, :UTURN, :SWORDSDANCE
    p.item     :DECIDIUMZ
    p.iv       31,31,31,31,31,31
    p.ev       0,252,0,4,0,252
  end
  t.pokemon :PRIMARINA, 20 do |p|
    p.moves    :SPARKLINGARIA, :MOONBLAST, :PSYCHIC, :CALMMIND
    p.item     :PRIMARIUMZ
    p.iv       31,31,31,31,31,31
    p.ev       252,0,0,252,4,0
  end
end

GameData::Trainer.define :CHAMPION, "MechanicMaster", 0 do |t|
  t.lose_text "You've mastered all battle mechanics!"
  t.items     :FULLRESTORE, :FULLRESTORE, :FULLRESTORE, :MEGARING, :DYNAMAXBAND, :TERAORB, :ZPOWERRING
  t.pokemon :CHARIZARD, 25 do |p|
    p.moves    :FLAMETHROWER, :AIRSLASH, :SOLARBEAM, :ROOST
    p.item     :CHARIZARDITEY
    p.iv       31,31,31,31,31,31
    p.ev       0,0,0,252,4,252
  end
  t.pokemon :CINDERACE, 25 do |p|
    p.moves    :PYROBALL, :HIGHJUMPKICK, :UTURN, :IRONHEAD
    p.iv       31,31,31,31,31,31
    p.ev       0,252,0,4,0,252
  end
  t.pokemon :GARCHOMP, 25 do |p|
    p.moves    :EARTHQUAKE, :DRAGONCLAW, :STONEEDGE, :SWORDSDANCE
    p.iv       31,31,31,31,31,31
    p.ev       0,252,0,4,0,252
  end
  t.pokemon :RAICHU, 25 do |p|
    p.moves    :THUNDERBOLT, :PSYCHIC, :GRASSKNOT, :NASTYPLOT
    p.item     :ALORAICHIUMZ
    p.iv       31,31,31,31,31,31
    p.ev       0,0,0,252,4,252
  end
  t.pokemon :LUCARIO, 25 do |p|
    p.moves    :AURASPHERE, :FLASHCANNON, :CLOSECOMBAT, :EXTREMESPEED
    p.item     :LUCARIONITE
    p.iv       31,31,31,31,31,31
    p.ev       0,252,0,252,4,0
  end
  t.pokemon :DRAGAPULT, 25 do |p|
    p.moves    :DRACOMETEOR, :SHADOWBALL, :UTURN, :FIREBLAST
    p.iv       31,31,31,31,31,31
    p.ev       0,0,0,252,4,252
  end
end

GameData::Trainer.define :COOLCOUPLE, "MechanicDuo", 0 do |t|
  t.lose_text "Great test!"
  t.items     :MEGARING, :DYNAMAXBAND, :TERAORB
  t.pokemon :CHARIZARD, 22 do |p|
    p.moves    :HEATWAVE, :AIRSLASH, :PROTECT, :TAILWIND
    p.item     :CHARIZARDITEX
    p.iv       31,31,31,31,31,31
    p.ev       0,0,0,252,4,252
  end
  t.pokemon :RILLABOOM, 22 do |p|
    p.moves    :DRUMBEATING, :KNOCKOFF, :PROTECT, :GRASSYGLIDE
    p.iv       31,31,31,31,31,31
    p.ev       252,252,0,0,4,0
  end
  t.pokemon :INTELEON, 22 do |p|
    p.moves    :SNIPESHOT, :ICEBEAM, :PROTECT, :UTURN
    p.iv       31,31,31,31,31,31
    p.ev       0,0,0,252,4,252
  end
  t.pokemon :AEGISLASH, 22 do |p|
    p.moves    :FLASHCANNON, :SHADOWBALL, :KINGSSHIELD, :WIDEGUARD
    p.iv       31,31,31,31,31,31
    p.ev       252,252,0,4,0,0
  end
  t.pokemon :SABLEYE, 20 do |p|
    p.moves    :WILLOWISP, :RECOVER, :TAUNT, :KNOCKOFF
    p.item     :LEFTOVERS
    p.nature   :BOLD
    p.iv       31,31,31,31,31,31
    p.ev       252,0,252,0,4,0
  end
  t.pokemon :MURKROW, 20 do |p|
    p.moves    :THUNDERWAVE, :TAILWIND, :ROOST, :FOULPLAY
    p.item     :EVIOLITE
    p.nature   :CALM
    p.iv       31,31,31,31,31,31
    p.ev       252,0,252,0,4,0
  end
  t.pokemon :FERROSEED, 20 do |p|
    p.moves    :LEECHSEED, :PROTECT, :GYROBALL, :STEALTHROCK
    p.item     :ROCKYHELMET
    p.nature   :RELAXED
    p.iv       31,31,31,31,31,0
    p.ev       252,4,252,0,0,0
  end
  t.pokemon :MIENFOO, 20 do |p|
    p.moves    :UTURN, :FAKEOUT, :HIGHJUMPKICK, :KNOCKOFF
    p.item     :LIFEORB
    p.nature   :JOLLY
    p.iv       31,31,31,31,31,31
    p.ev       0,252,0,0,4,252
  end
  t.pokemon :VULPIX, 20 do |p|
    p.moves    :FLAMETHROWER, :WILLOWISP, :HEX, :PROTECT
    p.item     :HEATROCK
    p.nature   :TIMID
    p.iv       31,31,31,31,31,31
    p.ev       0,0,0,252,4,252
  end
  t.pokemon :EEVEE, 20 do |p|
    p.moves    :QUICKATTACK, :BITE, :CHARM, :HELPINGHAND
    p.item     :SILKSCARF
    p.nature   :ADAMANT
    p.iv       31,31,31,31,31,31
    p.ev       0,252,0,0,4,252
  end
end

GameData::Trainer.define :RIVAL_RAGNAR, "Ragnar", 0 do |t|
  t.lose_text "Hmph... You've gotten stronger."
  t.pokemon :RIOLU, 8 do |p|
    p.moves    :QUICKATTACK, :COUNTER, :FORCEPALM, :FEINT
    p.nature   :ADAMANT
  end
end

GameData::Trainer.define :RIVAL_RAGNAR, "Ragnar", 1 do |t|
  t.lose_text "This changes nothing!"
  t.pokemon :RIOLU, 14 do |p|
    p.moves    :QUICKATTACK, :FORCEPALM, :COUNTER, :METALCLAW
    p.nature   :ADAMANT
  end
  t.pokemon :PIDGEY, 12 do |p|
    p.moves    :GUST, :QUICKATTACK, :SANDATTACK, :TACKLE
  end
end

GameData::Trainer.define :RIVAL_RAGNAR, "Ragnar", 2 do |t|
  t.lose_text "I underestimated you... again."
  t.pokemon :LUCARIO, 26 do |p|
    p.moves    :AURASPHERE, :QUICKATTACK, :METALCLAW, :BONERUSH
    p.item     :SITRUSBERRY
    p.nature   :ADAMANT
  end
  t.pokemon :PIDGEOTTO, 24 do |p|
    p.moves    :WINGATTACK, :GUST, :QUICKATTACK, :TWISTER
  end
  t.pokemon :GROWLITHE, 23 do |p|
    p.moves    :FLAMEWHEEL, :BITE, :REVERSAL, :ROAR
  end
end

GameData::Trainer.define :RIVAL_RAGNAR, "Ragnar", 3 do |t|
  t.lose_text "You... you're actually strong."
  t.pokemon :LUCARIO, 35 do |p|
    p.moves    :AURASPHERE, :CLOSECOMBAT, :FLASHCANNON, :EXTREMESPEED
    p.item     :EXPERTBELT
    p.nature   :ADAMANT
  end
  t.pokemon :PIDGEOT, 33 do |p|
    p.moves    :AIRSLASH, :HURRICANE, :ROOST, :HEATWAVE
  end
  t.pokemon :ARCANINE, 34 do |p|
    p.moves    :FLAMETHROWER, :EXTREMESPEED, :CRUNCH, :WILDCHARGE
  end
  t.pokemon :GALLADE, 32 do |p|
    p.moves    :PSYCHOCUT, :CLOSECOMBAT, :LEAFBLADE, :SWORDSDANCE
  end
end

GameData::Trainer.define :LEADER_FLORA, "Flora", 0 do |t|
  t.lose_text "You've truly blossomed as a trainer!"
  t.items     :SUPERPOTION, :SUPERPOTION
  t.pokemon :BUTTERFREE, 14 do |p|
    p.moves    :CONFUSION, :SLEEPPOWDER, :GUST, :STUNSPORE
    p.gender   :female
  end
  t.pokemon :BEEDRILL, 14 do |p|
    p.moves    :FURYATTACK, :TWINEEDLE, :FOCUSENERGY, :POISONSTING
    p.gender   :female
  end
  t.pokemon :VIVILLON, 16 do |p|
    p.moves    :STRUGGLEBUG, :GUST, :STUNSPORE, :LIGHTSCREEN
    p.item     :SITRUSBERRY
    p.gender   :female
  end
end

GameData::Trainer.define :LEADER_MARINA, "Marina", 0 do |t|
  t.lose_text "The tide turns in your favor!"
  t.items     :SUPERPOTION, :SUPERPOTION
  t.pokemon :STARYU, 20 do |p|
    p.moves    :WATERPULSE, :SWIFT, :RECOVER, :CONFUSERAY
  end
  t.pokemon :WARTORTLE, 21 do |p|
    p.moves    :WATERPULSE, :BITE, :AQUARING, :PROTECT
    p.gender   :male
  end
  t.pokemon :DEWGONG, 23 do |p|
    p.moves    :AURORABEAM, :WATERPULSE, :ICESHARD, :AQUARING
    p.item     :SITRUSBERRY
    p.gender   :female
  end
end

GameData::Trainer.define :LEADER_ROCKY, "Rocky", 0 do |t|
  t.lose_text "You're rock solid, trainer!"
  t.items     :HYPERPOTION, :HYPERPOTION
  t.pokemon :GRAVELER, 26 do |p|
    p.moves    :ROCKSLIDE, :EARTHQUAKE, :DEFENSECURL, :BULLDOZE
    p.gender   :male
  end
  t.pokemon :ONIX, 27 do |p|
    p.moves    :ROCKSLIDE, :DIG, :IRONTAIL, :SANDSTORM
    p.gender   :male
  end
  t.pokemon :GOLEM, 29 do |p|
    p.moves    :ROCKSLIDE, :EARTHQUAKE, :EXPLOSION, :STEALTHROCK
    p.item     :SITRUSBERRY
    p.gender   :male
  end
end

GameData::Trainer.define :CULTIST, "Grunt", 1 do |t|
  t.lose_text "The Shattered Hand will prevail!"
  t.pokemon :ZUBAT, 18 do |p|
  end
  t.pokemon :GRIMER, 19 do |p|
  end
end

GameData::Trainer.define :CULTIST, "Grunt", 2 do |t|
  t.lose_text "You cannot stop what is coming!"
  t.pokemon :GOLBAT, 25 do |p|
  end
  t.pokemon :MUK, 26 do |p|
  end
  t.pokemon :HAUNTER, 24 do |p|
  end
end

GameData::Trainer.define :CULT_ACOLYTE, "Acolyte", 1 do |t|
  t.lose_text "Lord Malachar will have his revenge!"
  t.pokemon :SABLEYE, 30 do |p|
    p.moves    :SHADOWBALL, :CONFUSERAY, :FOULPLAY, :WILLOWISP
  end
  t.pokemon :DUSCLOPS, 32 do |p|
    p.moves    :SHADOWPUNCH, :WILLOWISP, :CURSE, :CONFUSERAY
  end
  t.pokemon :SPIRITOMB, 31 do |p|
    p.moves    :DARKPULSE, :SHADOWBALL, :HYPNOSIS, :DREAMEATER
  end
end

GameData::Trainer.define :GENERAL_SHADE, "Shade", 0 do |t|
  t.lose_text "Impressive... but this is far from over."
  t.items     :FULLRESTORE, :FULLRESTORE
  t.pokemon :HONCHKROW, 48 do |p|
    p.moves    :DARKPULSE, :BRAVEBIRD, :HEATWAVE, :NASTYPLOT
    p.item     :LIFEORB
    p.nature   :MODEST
    p.iv       31,31,31,31,31,31
  end
  t.pokemon :WEAVILE, 47 do |p|
    p.moves    :NIGHTSLASH, :ICEPUNCH, :BRICKBREAK, :SWORDSDANCE
    p.nature   :JOLLY
    p.iv       31,31,31,31,31,31
  end
  t.pokemon :BISHARP, 49 do |p|
    p.moves    :IRONHEAD, :NIGHTSLASH, :SWORDSDANCE, :SUCKERPUNCH
    p.item     :FOCUSSASH
    p.nature   :ADAMANT
    p.iv       31,31,31,31,31,31
  end
  t.pokemon :DUSKNOIR, 48 do |p|
    p.moves    :SHADOWPUNCH, :EARTHQUAKE, :ICEPUNCH, :THUNDERPUNCH
    p.nature   :ADAMANT
    p.iv       31,31,31,31,31,31
  end
  t.pokemon :SPIRITOMB, 50 do |p|
    p.moves    :DARKPULSE, :SHADOWBALL, :WILLOWISP, :CALMMIND
    p.item     :LEFTOVERS
    p.nature   :BOLD
    p.iv       31,31,31,31,31,31
  end
end

GameData::Trainer.define :MALACHAR, "Malachar", 0 do |t|
  t.lose_text "No... the fragments... how?!"
  t.items     :FULLRESTORE, :FULLRESTORE, :FULLRESTORE
  t.pokemon :HYDREIGON, 68 do |p|
    p.moves    :DARKPULSE, :DRACOMETEOR, :FLAMETHROWER, :FLASHCANNON
    p.item     :LIFEORB
    p.nature   :TIMID
    p.iv       31,31,31,31,31,31
    p.ev       0,0,0,252,4,252
  end
  t.pokemon :TYRANITAR, 67 do |p|
    p.moves    :STONEEDGE, :CRUNCH, :EARTHQUAKE, :DRAGONDANCE
    p.item     :FOCUSSASH
    p.nature   :ADAMANT
    p.iv       31,31,31,31,31,31
    p.ev       0,252,0,0,4,252
  end
  t.pokemon :CHANDELURE, 66 do |p|
    p.moves    :SHADOWBALL, :FIREBLAST, :ENERGYBALL, :TRICKROOM
    p.item     :CHOICESPECS
    p.nature   :QUIET
    p.iv       31,31,31,31,31,0
    p.ev       252,0,0,252,4,0
  end
  t.pokemon :AEGISLASH, 67 do |p|
    p.moves    :SHADOWBALL, :FLASHCANNON, :KINGSSHIELD, :SHADOWSNEAK
    p.nature   :QUIET
    p.iv       31,31,31,31,31,31
    p.ev       252,0,4,252,0,0
  end
  t.pokemon :GRIMMSNARL, 66 do |p|
    p.moves    :SPIRITBREAK, :DARKESTLARIAT, :THUNDERWAVE, :TAUNT
    p.item     :LIGHTCLAY
    p.nature   :IMPISH
    p.iv       31,31,31,31,31,31
    p.ev       252,0,252,0,4,0
  end
  t.pokemon :DARKRAI, 70 do |p|
    p.moves    :DARKPULSE, :DARKVOID, :DREAMEATER, :NASTYPLOT
    p.item     :LEFTOVERS
    p.nature   :TIMID
    p.iv       31,31,31,31,31,31
    p.ev       0,0,0,252,4,252
  end
end

