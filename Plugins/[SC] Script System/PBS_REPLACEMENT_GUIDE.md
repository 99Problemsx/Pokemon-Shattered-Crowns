# Shattered Crowns Script System v3.0 - Complete PBS Replacement

## Overview

This system **completely replaces** all PBS (Pokemon Base Scripts) text files with a modern Ruby DSL (Domain Specific Language). Instead of editing `.txt` files, you now define all game data using readable Ruby scripts.

## Key Benefits

- **Version Control Friendly**: Ruby files are easier to diff and merge than PBS text files
- **Type Safety**: Get syntax errors immediately when definitions are invalid
- **IDE Support**: Full autocomplete and documentation in VS Code
- **Modular Organization**: Split data across multiple files by category
- **Hot Reload**: Changes can be reloaded without restarting (debug mode)
- **Validation**: The compiler catches missing references before runtime
- **Debug Menu Persistence**: All Debug menu changes are saved to Ruby files

## Directory Structure

```
Data/Scripts/
├── Types/              # Type definitions (replaces types.txt)
├── Abilities/          # Ability definitions (replaces abilities.txt)
├── Moves/              # Move definitions by type (replaces moves.txt)
│   └── Plugins/        # Dynamax, Z-Power, Terastal moves
├── Items/              # Item definitions by pocket (replaces items.txt)
│   └── Plugins/        # DLC and custom items
├── Pokemon/            # Species definitions (replaces pokemon.txt)
│   ├── Forms/          # Mega, Alolan, G-Max forms
│   └── Plugins/        # Gen9 Pokemon
├── Trainers/           # Trainer types + trainers (replaces trainers.txt)
├── Encounters/         # Wild encounters (replaces encounters.txt)
├── Ribbons/            # Ribbon definitions (replaces ribbons.txt)
├── Maps/               # Map metadata & connections
├── Config/             # Global metadata, town map, phone
├── BattleFacility/     # Battle Tower definitions
└── Dungeons/           # Procedural dungeon parameters
```

## Converted PBS Files

| Original PBS | Ruby Location | Count |
|--------------|---------------|-------|
| types.txt | Types/All_Types.rb | 19 types |
| abilities.txt | Abilities/All_Abilities.rb | 310 abilities |
| moves.txt | Moves/*_Moves.rb | 921 moves |
| items.txt | Items/*_Items.rb | 1160 items |
| pokemon.txt | Pokemon/*_Pokemon.rb | 1025 species |
| pokemon_forms.txt | Pokemon/Forms/*.rb | 497 forms |
| trainer_types.txt | Trainers/TrainerTypes.rb | 92 types |
| trainers.txt | Trainers/All_Trainers.rb | 38 trainers |
| encounters.txt | Encounters/All_Encounters.rb | 19 maps |
| ribbons.txt | Ribbons/All_Ribbons.rb | 167 ribbons |
| map_metadata.txt | Maps/All_MapMetadata.rb | 69 maps |
| map_connections.txt | Maps/All_MapConnections.rb | 19 connections |
| regional_dexes.txt | Pokemon/All_RegionalDexes.rb | 2 dexes |
| metadata.txt | Config/All_Metadata.rb | 3 entries |
| town_map.txt | Config/All_TownMaps.rb | 2 regions |
| pokemon_metrics.txt | Pokemon/All_Metrics.rb | 1292 entries |
| battle_tower_*.txt | BattleFacility/*.rb | 882 Pokemon, 300 trainers |
| dungeon_*.txt | Dungeons/*.rb | 2 dungeons |
| berry_plants.txt | Items/All_BerryPlants.rb | 67 berries |
| phone.txt | Config/All_PhoneMessages.rb | 3 contacts |

## Quick Start

### 1. Define a Type

```ruby
# Data/Scripts/Types/000_AllTypes.rb
GameData::Type.define :FIRE do |t|
  t.name "Fire"
  t.icon_position 10
  t.special_type
  
  t.super_effective_against :BUG, :STEEL, :GRASS, :ICE
  t.not_effective_against :ROCK, :FIRE, :WATER, :DRAGON
end
```

### 2. Define an Ability

```ruby
# Data/Scripts/Abilities/000_CommonAbilities.rb
GameData::Ability.define :BLAZE do |a|
  a.name "Blaze"
  a.description "Powers up Fire-type moves when HP is low."
end
```

### 3. Define a Move

```ruby
# Data/Scripts/Moves/Fire_Moves.rb
GameData::Move.define :FLAMETHROWER do |m|
  m.name "Flamethrower"
  m.type :FIRE
  m.special
  m.power 90
  m.accuracy 100
  m.pp 15
  m.effect :Burn
  m.effect_chance 10
  m.description "A powerful fire attack that may burn the target."
end
```

### 4. Define a Pokemon

```ruby
# Data/Scripts/Pokemon/Gen1/Charmander.rb
GameData::Species.define :CHARMANDER do |pkmn|
  pkmn.name "Charmander"
  pkmn.category "Lizard"
  pkmn.types :FIRE
  
  pkmn.base_stats hp: 39, attack: 52, defense: 43,
                  sp_atk: 60, sp_def: 50, speed: 65
  
  pkmn.abilities :BLAZE
  pkmn.hidden_abilities :SOLARPOWER
  
  pkmn.gender_ratio :FemaleOneEighth
  pkmn.growth_rate :MediumSlow
  pkmn.catch_rate 45
  
  pkmn.egg_groups :Monster, :Dragon
  pkmn.hatch_steps 5120
  
  pkmn.height 0.6
  pkmn.weight 8.5
  pkmn.color :Red
  
  pkmn.pokedex_entry "A flame burns at the tip of its tail."
  
  pkmn.moves do |m|
    m.start :SCRATCH, :GROWL
    m.at 4, :EMBER
    m.at 8, :SMOKESCREEN
    m.at 12, :DRAGONBREATH
    m.at 24, :FLAMETHROWER
    m.at 40, :FLAREBLITZ
  end
  
  pkmn.evolutions do |evo|
    evo.level_up :CHARMELEON, 16
  end
end
```

### 5. Define an Item

```ruby
# Data/Scripts/Items/Medicine.rb
GameData::Item.define :POTION do |i|
  i.name "Potion"
  i.pocket :medicine
  i.price 200
  i.field_use :hp_restore
  i.battle_use :hp_restore
  i.description "Restores 20 HP."
end
```

### 6. Define a Trainer

```ruby
# Data/Scripts/Trainers/Route1Trainers.rb
GameData::Trainer.define "YOUNGSTER_Joey_0" do |t|
  t.trainer_type :YOUNGSTER
  t.name "Joey"
  t.lose_text "My Rattata was in the top percentage!"
  
  t.party do |team|
    team.add :RATTATA, 4
  end
end
```

### 7. Define Encounters

```ruby
# Data/Scripts/Maps/Routes/Route_1.rb
GameData::MapEncounter.define :route_1 do |enc|
  enc.map_id 36
  enc.name "Route 1"
  
  enc.land do |land|
    land.encounter :PIDGEY, 2..4, 30      # 30% chance
    land.encounter :RATTATA, 2..4, 30     # 30% chance
    land.encounter :SENTRET, 2..3, 20     # 20% chance
    land.encounter :HOOTHOOT, 2..3, 10    # 10% chance
    land.encounter :SPEAROW, 3..4, 10     # 10% chance
  end
end
```

## Configuration

Edit `000_Config.rb` to configure the system:

```ruby
module SCScripts
  # Enable full PBS replacement (recommended)
  PBS_REPLACEMENT_MODE = true
  
  # Enable debug logging
  DEBUG = true
  LOG_LEVEL = :info  # :debug, :info, :warn, :error
end
```

## Migration from PBS

### Automatic Migration

Use the built-in migration tool (Debug Menu → Migrate PBS to Scripts):

```ruby
SCScripts::PBSMigrator.migrate_all
```

This generates Ruby script files from your existing PBS data.

### Manual Migration

1. Create the directory structure under `Data/Scripts/`
2. Convert each PBS file to Ruby using the DSL patterns above
3. Set `PBS_REPLACEMENT_MODE = true` in config
4. Delete or rename the PBS folder

## Compilation & Validation

The system automatically validates all definitions at startup:

```ruby
# Manual compilation
SCScripts::Compiler.compile_all

# Export to Marshal format (for faster loading)
SCScripts::Compiler.export_marshal

# Generate statistics report
puts SCScripts::Compiler.generate_report
```

## Hot Reload (Debug Mode)

In debug mode, scripts can be hot-reloaded without restarting:

```ruby
# Enable hot reload
SCScripts::HotReload.enable

# Reload all scripts
SCScripts::HotReload.reload_all

# Reload specific data type
SCScripts::Loader.reload_data_type(:pokemon)
```

## DSL Reference

### Species Builder Methods

| Method | Description |
|--------|-------------|
| `name(val)` | Display name |
| `types(*vals)` | Type symbols (1 or 2) |
| `base_stats(hash)` | HP, Attack, Defense, etc. |
| `abilities(*vals)` | Regular abilities |
| `hidden_abilities(*vals)` | Hidden abilities |
| `moves { \|m\| ... }` | Level-up moves block |
| `evolutions { \|evo\| ... }` | Evolution methods |
| `egg_groups(*vals)` | Breeding groups |
| `egg_moves(*vals)` | Egg-inherited moves |
| `legendary` / `mythical` | Special flags |

### Move Builder Methods

| Method | Description |
|--------|-------------|
| `type(val)` | Type symbol |
| `physical` / `special` / `status` | Category |
| `power(val)` | Base power |
| `accuracy(val)` | Accuracy percentage |
| `pp(val)` | Power points |
| `priority(val)` | Priority (-7 to +7) |
| `effect(val)` | Effect handler |
| `effect_chance(val)` | % chance of effect |
| `makes_contact` | Contact flag |
| `sound_based` | Sound move flag |
| `punching` | Punch move flag |

### Item Builder Methods

| Method | Description |
|--------|-------------|
| `pocket(val)` | Bag pocket (1-8 or symbol) |
| `price(val)` | Shop price |
| `field_use(val)` | Field use handler |
| `battle_use(val)` | Battle use handler |
| `teaches(move)` | TM/HM move |
| `key_item` | Mark as key item |
| `consumable(bool)` | Whether consumed on use |

### Additional DSL Examples

#### Map Metadata

```ruby
GameData::MapMetadata.define 5 do |m|
  m.name          "Route 1"
  m.outdoor       true
  m.show_area     true
  m.map_position  0, 13, 11
  m.battle_back   "field"
  m.weather       :Rain, 50
end
```

#### Map Connection

```ruby
GameData::MapConnection.define do |c|
  c.map1    5
  c.edge1   :N
  c.offset1 0
  c.map2    7
  c.edge2   :S
  c.offset2 0
end
```

#### Wild Encounters

```ruby
GameData::Encounter.define 5 do |e|
  e.density :Land, 25
  e.method :Land do |m|
    m.rate 20, :PIDGEY
    m.rate 20, :RATTATA
    m.rate 10, :PIKACHU, level: 5..8
  end
end
```

#### Ribbon

```ruby
GameData::Ribbon.define :HOENNCOOL do |r|
  r.name "Cool Ribbon"
  r.description "Hoenn Contest Cool Winner!"
end
```

#### Battle Tower Pokemon

```ruby
GameData::BattleTowerPokemon.define 0 do |p|
  p.species :SUNKERN
  p.item    :LAXINCENSE
  p.nature  :RELAXED
  p.evs     :HP, :SA
  p.moves   :MEGADRAIN, :HELPINGHAND, :SUNNYDAY, :LIGHTSCREEN
end
```

#### Dungeon Parameters

```ruby
GameData::DungeonParameters.define :cave do |d|
  d.dungeon_size      5, 4
  d.cell_size         10, 10
  d.min_room_size     5, 5
  d.max_room_size     9, 9
  d.corridor_width    2
  d.room_chance       70
end
```

#### Berry Plant

```ruby
GameData::BerryPlant.define :CHERIBERRY do |b|
  b.hours_per_stage 3
  b.drying_per_hour 15
  b.yield           2, 5
end
```

## Troubleshooting

### Scripts not loading?

1. Check file is in correct path under `Data/Scripts/`
2. Check for Ruby syntax errors in console
3. Ensure file extension is `.rb`

### Data not available in game?

1. Check `SCScripts::Compiler.compile_errors` for validation errors
2. Use `SCScripts::ScriptRegistry.stats` to see loaded counts
3. Ensure PBS_REPLACEMENT_MODE is enabled

### Hot reload not working?

1. Must be in debug mode ($DEBUG = true)
2. Call `SCScripts::HotReload.enable` after startup
3. Check console for reload confirmation

## Support

For issues or questions, check the console output for detailed error messages. The system logs all loading and compilation steps when DEBUG = true.
