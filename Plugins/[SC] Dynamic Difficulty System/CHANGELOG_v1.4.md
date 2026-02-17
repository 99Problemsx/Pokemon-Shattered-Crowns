# Dynamic Difficulty System — v1.4.0 Changelog

## New Feature: Competitive Sets (VGC-style Builds)

### Overview
Pro and Extreme tier opponents now receive **curated competitive movesets,
abilities, natures, items, and EV spreads** drawn from real VGC / Smogon
meta-game builds spanning **Generations 1–9**.

### New Files
| File | Purpose |
|------|---------|
| `DDS_CompetitiveSets.rb` | Core lookup + application engine |
| `DDS_Sets_Gen1to3.rb` | Kanto, Johto, Hoenn set data |
| `DDS_Sets_Gen4to6.rb` | Sinnoh, Unova, Kalos set data |
| `DDS_Sets_Gen7to9.rb` | Alola, Galar, Paldea set data |
| `DDS_DoublesTeams.rb` | Pre-built doubles team compositions |

### Competitive Sets
- **200+ Pokémon** across all nine generations with hand-crafted builds.
- Each species has at least a **Pro (tier 3)** and **Extreme (tier 4)** set.
- Meta-relevant Pokémon also have dedicated **doubles** sets.
- Every set specifies: ability, nature, held item, 4 moves, full EV spread.
- All moves / abilities / items are **validated** at runtime via
  `GameData::Move.exists?`, `GameData::Ability.exists?`, etc. — unknown
  entries are silently skipped, ensuring forward-compatibility.

### Doubles Teams
- **20 pre-built doubles cores** organised by archetype:
  - Weather (Sun, Rain, Sand, Hail/Snow)
  - Trick Room
  - Hyper Offense
  - Tailwind
  - Goodstuff / Balance
- Each team defines a **6-mon core** with a preferred **lead pair**.
- Leads are placed first in the party so the battle AI opens with them.
- Teams are selected randomly from the pool matching the current DDS tier.

### Integration
- **TeamBuilder** now applies a competitive set to every Pokémon it creates
  (for Pro/Extreme tiers when `COMPETITIVE_SETS_ENABLED = true`).
- **TeamScaler** respects applied sets — level scaling still applies, but
  ability, nature, item, and EVs are **not overwritten** when a competitive
  set has already been applied.
- **BattleHooks** clears the applied-set tracker at the start of each battle.

### New Settings
```ruby
# Master switch for competitive set application
COMPETITIVE_SETS_ENABLED = true

# Master switch for pre-built doubles team compositions
DOUBLES_TEAMS_ENABLED = true

# Minimum DDS tier for doubles teams (3 = Pro)
DOUBLES_TEAMS_MIN_TIER = 3
```

### Bug Fixes
- Fixed 11 typos across set data files (`:ICICLE_SPEAR`, `:ICESHAD`,
  `:ICESHSRD`, `:CHARTI berry`, `:FLASH CANNON`, `:GLAIVEBLAZE`,
  `:ICESHRD`, `:FLIPTURNS`, `:ICESHARDIS`, `:GIGATON`, `:ICESHARDSPEAR`).
