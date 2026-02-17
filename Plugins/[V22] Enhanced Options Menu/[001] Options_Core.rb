#===============================================================================
# V22 Enhanced Options Menu - Core System Extensions
# Backported to v21 by Nononever
#===============================================================================

class PokemonSystem
  # V22 additions
  attr_accessor :pokemon_cry_volume
  attr_writer   :controls

  alias v22_options_initialize initialize
  def initialize
    v22_options_initialize
    @pokemon_cry_volume = 100 if !@pokemon_cry_volume
    @controls = nil
  end

  def controls
    reset_controls if !@controls
    return @controls
  end

  def reset_controls
    @controls ||= {}
    # V21 compatibility: Check if Input constants exist
    return if !defined?(Input::DEFAULT_INPUT_MAPPINGS)
    
    keys = Input::DEFAULT_INPUT_MAPPINGS.keys
    if defined?(Input::DEFAULT_INPUT_MAPPINGS_REMAPPABLE)
      keys += Input::DEFAULT_INPUT_MAPPINGS_REMAPPABLE.keys
    end
    keys.uniq!
    
    keys.each do |key|
      @controls[key] = []
      if defined?(Input::DEFAULT_INPUT_MAPPINGS_REMAPPABLE) && Input::DEFAULT_INPUT_MAPPINGS_REMAPPABLE[key]
        @controls[key][0] = Input::DEFAULT_INPUT_MAPPINGS_REMAPPABLE[key][0]
        @controls[key][1] = Input::DEFAULT_INPUT_MAPPINGS_REMAPPABLE[key][1]
      end
    end
  end

  def reapply_all_options
    @force_set_options = true
    all_options = self.instance_variables.map { |val| val.to_s.gsub("@", "").to_sym }
    all_options.each do |option|
      next if option == :force_set_options
      setter = (option.to_s + "=").to_sym
      next if !self.respond_to?(setter)
      self.send(setter, self.send(option))
    end
    @force_set_options = false
  end
end
