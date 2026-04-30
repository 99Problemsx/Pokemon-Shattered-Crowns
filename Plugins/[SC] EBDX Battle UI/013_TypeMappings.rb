#===============================================================================
#  [SC] EBDX Battle UI — Type Fallback Mappings
#  Maps each type to a default move animation for each damage category.
#  Ported 1:1 from EBDX PBS/EBDX/animationmap.txt
#  When a move has no specific animation, mapMoveGlobal uses these fallbacks.
#===============================================================================

# --- NORMAL ---
EBDXAnimations.registerTypeMapping(:NORMAL, {
  physical: :TACKLE,
  special:  :HYPERBEAM,
  multihit: :FURYSWIPES,
  allOpp:   :HYPERVOICE
})

# --- FIGHTING ---
EBDXAnimations.registerTypeMapping(:FIGHTING, {
  physical: :CLOSECOMBAT,
  special:  :AURASPHERE,
  status:   :BULKUP,
  multihit: :DOUBLEKICK
})

# --- FLYING ---
EBDXAnimations.registerTypeMapping(:FLYING, {
  physical: :WINGATTACK,
  special:  :AIRSLASH,
  status:   :ROOST,
  multihit: :WINGATTACK,
  allOpp:   :AIRCUTTER
})

# --- POISON ---
EBDXAnimations.registerTypeMapping(:POISON, {
  physical: :POISONJAB,
  special:  :SLUDGEBOMB,
  status:   :TOXIC,
  multihit: :POISONJAB,
  allOpp:   :POISONGAS,
  nonUsr:   :SLUDGEWAVE
})

# --- GROUND ---
EBDXAnimations.registerTypeMapping(:GROUND, {
  physical: :EARTHQUAKE,
  special:  :EARTHPOWER,
  status:   :MUDSPORT,
  multihit: :BONERUSH,
  nonUsr:   :EARTHQUAKE
})

# --- ROCK ---
EBDXAnimations.registerTypeMapping(:ROCK, {
  physical: :ROCKSLIDE,
  special:  :ANCIENTPOWER,
  status:   :ROCKPOLISH,
  allOpp:   :ROCKSLIDE
})

# --- BUG ---
EBDXAnimations.registerTypeMapping(:BUG, {
  physical: :BUGBITE,
  special:  :STRUGGLEBUG,
  status:   :RAGEPOWDER,
  multihit: :PINMISSILE,
  allOpp:   :STRINGSHOT
})

# --- GHOST ---
EBDXAnimations.registerTypeMapping(:GHOST, {
  physical: :SHADOWCLAW,
  special:  :SHADOWBALL,
  status:   :HEX,
  multihit: :SHADOWCLAW
})

# --- STEEL ---
EBDXAnimations.registerTypeMapping(:STEEL, {
  physical: :IRONHEAD,
  special:  :MAGNETBOMB,
  status:   :AUTOTOMIZE,
  multihit: :GEARGRIND
})

# --- FIRE ---
EBDXAnimations.registerTypeMapping(:FIRE, {
  physical: :FLAREBLITZ,
  special:  :FLAMETHROWER,
  status:   :WILLOWISP,
  multihit: :FIREPUNCH,
  allOpp:   :HEATWAVE,
  nonUsr:   :LAVAPLUME
})

# --- WATER ---
EBDXAnimations.registerTypeMapping(:WATER, {
  physical: :CRABHAMMER,
  special:  :WATERGUN,
  status:   :AQUARING,
  multihit: :CRABHAMMER,
  allOpp:   :BUBBLE,
  nonUsr:   :SURF
})

# --- GRASS ---
EBDXAnimations.registerTypeMapping(:GRASS, {
  physical: :VINEWHIP,
  special:  :LEAFSTORM,
  status:   :INGRAIN,
  multihit: :BULLETSEED,
  allOpp:   :RAZORLEAF
})

# --- ELECTRIC ---
EBDXAnimations.registerTypeMapping(:ELECTRIC, {
  physical: :SPARK,
  special:  :THUNDERBOLT,
  status:   :THUNDERWAVE,
  multihit: :THUNDERPUNCH,
  allOpp:   :ELECTROWEB,
  nonUsr:   :DISCHARGE
})

# --- PSYCHIC ---
EBDXAnimations.registerTypeMapping(:PSYCHIC, {
  physical: :PSYCHOCUT,
  special:  :PSYCHIC,
  status:   :MEDITATE,
  allOpp:   :HEALBLOCK,
  nonUsr:   :SYNCHRONOISE
})

# --- ICE ---
EBDXAnimations.registerTypeMapping(:ICE, {
  physical: :ICICLECRASH,
  special:  :ICEBEAM,
  status:   :MIST,
  multihit: :ICEPUNCH,
  allOpp:   :ICYWIND
})

# --- DRAGON ---
EBDXAnimations.registerTypeMapping(:DRAGON, {
  physical: :DRAGONCLAW,
  special:  :DRAGONBREATH,
  status:   :DRAGONDANCE,
  multihit: :DUALCHOP,
  allOpp:   :OUTRAGE
})

# --- DARK ---
EBDXAnimations.registerTypeMapping(:DARK, {
  physical: :NIGHTSLASH,
  special:  :DARKPULSE,
  status:   :NASTYPLOT,
  allOpp:   :DARKVOID
})

# --- FAIRY (not in original EBDX map, added for completeness) ---
EBDXAnimations.registerTypeMapping(:FAIRY, {
  physical: :PLAYROUGH,
  special:  :MOONBLAST,
  status:   :SWEETKISS,
  allOpp:   :DAZZLINGGLEAM
})
