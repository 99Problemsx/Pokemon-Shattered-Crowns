#===============================================================================
# Route 101 - Example Map Script
#===============================================================================
# Demonstrates the DSL syntax for map metadata, encounters, and trainers.
# Map ID: 33 (extracted from class name Map33)
#===============================================================================

module Data
  #=============================================================================
  # Map Metadata
  #=============================================================================
  class Map33 < GameData::MapMetadata
    metadata do
      @real_name         = 'Route 101'
      @map_BGM           = 'Routes/102.ogg'
      @outdoor_map       = true
      @announce_location = true
    end
  end

  #=============================================================================
  # Wild Encounters
  #=============================================================================
  class Encounters < GameData::MapEncounter
    @map_id = 33
    
    # Daytime land encounters
    register :Land, 30 do
      add(30, Pokemon.new(:PIDGEY),      level(2, 4))
      add(20, Pokemon.new(:POOCHYENA),   level(2, 4))
      add(10, Pokemon.new(:PIDGEY),      level(3, 5))
      add(10, Pokemon.new(:STARLY),      level(2, 4))
      add(10, Pokemon.new(:EKANS),       level(2, 3))
      add( 5, Pokemon.new(:PETILIL),     level(3, 4)) unless $PokemonGlobal&.challenge_mode
      add( 5, Pokemon.new(:ROSELIA),     level(4, 6)) unless $PokemonGlobal&.challenge_mode
    end
    
    # Nighttime land encounters
    register :LandNight, 30 do
      add(30, Pokemon.new(:HOOTHOOT),    level(2, 4))
      add(20, Pokemon.new(:POOCHYENA),   level(2, 4))
      add(10, Pokemon.new(:HOOTHOOT),    level(3, 5))
      add(10, Pokemon.new(:ZUBAT),       level(2, 4))
      add(10, Pokemon.new(:EKANS),       level(2, 3))
      add( 5, Pokemon.new(:PETILIL),     level(3, 4)) unless $PokemonGlobal&.challenge_mode
      add( 5, Pokemon.new(:ROSELIA),     level(4, 6)) unless $PokemonGlobal&.challenge_mode
    end
  end

  #=============================================================================
  # Trainers
  #=============================================================================
  class Trainers < GameData::MapTrainer
    @map_id = 33
    
    # Trainer on event 14
    register 14, :LASS, 'Marie' do |trainer|
      trainer.intro = "If your eyes meet with a trainer, they'll approach you for a battle!"
      trainer.lose_text = 'Unfair! Your Pokémon must have cheated somehow!'
      trainer.items << :POTION
      trainer.party << GameData::TrainerPokemon.new(:POLIWAG, 5)
    end
    
    # Trainer on event 19
    register 19, :ROUGHNECK, 'Dave' do |trainer|
      trainer.lose_text = 'What are they feeding the kids these days?!'
      if $PokemonGlobal&.challenge_mode
        trainer.party << GameData::TrainerPokemon.new(:ZUBAT, 4)
      end
      trainer.party << GameData::TrainerPokemon.new(:KOFFING, 6)
    end
    
    # Example of a more complex trainer
    register 25, :CAMPER, 'Liam' do |trainer|
      trainer.intro = "Let's have a good battle!"
      trainer.lose_text = "A very good battle, indeed!"
      trainer.items << :POTION
      
      # First Pokemon
      pokemon1 = GameData::TrainerPokemon.new(:DIGLETT, 10)
      trainer.party << pokemon1
      
      # Second Pokemon with custom moves
      pokemon2 = GameData::TrainerPokemon.new(:BONSLY, 11)
      pokemon2.moves = [:ROCKTHROW, :FAKEOUT, :MIMIC, :ROCKTOMB]
      pokemon2.item = :ORANBERRY
      trainer.party << pokemon2
    end
  end
end
