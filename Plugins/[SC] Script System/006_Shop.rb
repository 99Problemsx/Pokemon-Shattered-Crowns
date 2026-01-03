#===============================================================================
# Shattered Crowns Script System - Shops DSL
#===============================================================================
# Provides a clean DSL for defining shop inventories.
#===============================================================================

module GameData
  #=============================================================================
  # Shop - DSL for shop inventories
  #=============================================================================
  class Shop < ScriptBase
    @shops = {}
    
    class << self
      attr_accessor :shops
    end
    
    #---------------------------------------------------------------------------
    # Define a shop
    # Usage: Shop.define :pokecenter_mart do |shop| ... end
    #---------------------------------------------------------------------------
    def self.define(name, &block)
      builder = ShopBuilder.new(name)
      yield(builder) if block_given?
      @shops[name] = builder
      SCScripts.log("Registered shop: #{name}")
    end
    
    #---------------------------------------------------------------------------
    # Open a shop by name
    # Usage: GameData::Shop.open(:pokecenter_mart)
    #---------------------------------------------------------------------------
    def self.open(name)
      shop = @shops[name]
      unless shop
        SCScripts.log("ERROR: Shop '#{name}' not found!")
        return false
      end
      
      shop.open_shop
      true
    end
    
    #---------------------------------------------------------------------------
    # Get shop inventory (for custom UI)
    #---------------------------------------------------------------------------
    def self.get_inventory(name)
      shop = @shops[name]
      return [] unless shop
      shop.get_available_items
    end
  end
  
  #=============================================================================
  # ShopBuilder - Builds shop inventories
  #=============================================================================
  class ShopBuilder
    attr_reader :name, :items
    
    def initialize(name)
      @name = name
      @items = []
      @greeting = nil
      @farewell = nil
    end
    
    #---------------------------------------------------------------------------
    # Shop configuration
    #---------------------------------------------------------------------------
    
    # Set greeting message
    def greeting(text)
      @greeting = text
    end
    
    # Set farewell message  
    def farewell(text)
      @farewell = text
    end
    
    # Add item to shop
    # Usage: item :POKEBALL
    #        item :GREATBALL, price: 800
    #        item :ULTRABALL, condition: -> { $player.badge_count >= 4 }
    #        item :MASTERBALL, price: 50000, condition: -> { has_completed_game? }
    def item(item_id, options = {})
      @items << {
        item: item_id,
        price: options[:price],      # nil = default price
        condition: options[:condition],
        stock: options[:stock],       # nil = unlimited
        badge_req: options[:badges]
      }
    end
    
    # Add multiple basic items
    def items(*item_ids)
      item_ids.each { |id| item(id) }
    end
    
    # Add items unlocked by badge count
    def badge_items(badge_count, *item_ids)
      item_ids.each do |id|
        item(id, badges: badge_count)
      end
    end
    
    # Add TM/HM
    def tm(tm_id, options = {})
      item(tm_id, options)
    end
    
    # Add items only in challenge mode
    def challenge_mode_items(*item_ids)
      item_ids.each do |id|
        item(id, condition: -> { $PokemonGlobal&.challenge_mode })
      end
    end
    
    #---------------------------------------------------------------------------
    # Get available items based on conditions
    #---------------------------------------------------------------------------
    def get_available_items
      @items.select do |item_data|
        next false if item_data[:condition] && !item_data[:condition].call
        next false if item_data[:badge_req] && $player.badge_count < item_data[:badge_req]
        next false if item_data[:stock] && item_data[:stock] <= 0
        true
      end.map do |item_data|
        [item_data[:item], item_data[:price]].compact
      end
    end
    
    #---------------------------------------------------------------------------
    # Open the shop
    #---------------------------------------------------------------------------
    def open_shop
      pbMessage(@greeting) if @greeting
      
      stock = get_available_items
      
      if stock.empty?
        pbMessage("Sorry, we're out of stock!")
        return
      end
      
      pbPokemonMart(stock)
      
      pbMessage(@farewell) if @farewell
    end
  end
end
