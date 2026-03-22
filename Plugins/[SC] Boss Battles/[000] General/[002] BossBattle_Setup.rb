#===============================================================================
# Boss Battles — Battle Setup & Script Calls
#===============================================================================

#===============================================================================
# Battle Rules.
#===============================================================================
class Game_Temp
  alias boss_add_battle_rule add_battle_rule
  def add_battle_rule(rule, var = nil)
    rules = self.battle_rules
    case rule.to_s.downcase
    when "bossbattle" then rules["bossBattle"] = var
    else
      boss_add_battle_rule(rule, var)
    end
  end
end

alias boss_additionalRules additionalRules
def additionalRules
  rules = boss_additionalRules
  rules.push("bossbattle")
  return rules
end

#===============================================================================
# Boss battle setup in BattleCreationHelperMethods.
#===============================================================================
module BattleCreationHelperMethods
  module_function

  BattleCreationHelperMethods.singleton_class.alias_method :boss_prepare_battle, :prepare_battle
  def prepare_battle(battle)
    BattleCreationHelperMethods.boss_prepare_battle(battle)
    prepare_boss(battle)
  end

  def prepare_boss(battle)
    return if battle.trainerBattle?
    return if !$game_temp.battle_rules["bossBattle"]
    battleRules = $game_temp.battle_rules
    battle.bossRules = battleRules["bossBattle"]
    battle.wildBattleMode = :boss
    battle.disablePokeBalls = true
    # Apply Boss databox style — player battler falls back to :Basic automatically
    # because Databoxes/Boss/ only contains databox_foe.png (not databox.png).
    battle.databoxStyle = :Boss if !battleRules["databoxStyle"]
  end
end

#===============================================================================
# BossBattle module — main script call interface.
#===============================================================================
module BossBattle
  module_function

  #-----------------------------------------------------------------------------
  # Starts a boss battle with the given species and level.
  # rules can include:
  #   :passive_ability => :ABILITYNAME
  #   :shields         => Integer (override shield count)
  #   :hp_level        => Integer (override HP boost)
  #   :bgm             => "filename"
  #   :can_lose        => true/false
  #   :immunities      => [:SYMBOL, ...] (override default immunities)
  #   :moves           => [:MOVE1, :MOVE2, ...] (override moveset)
  #   :edit_pokemon    => { property: value, ... } (additional editWildPokemon)
  #-----------------------------------------------------------------------------
  def start(species, level, rules = {})
    boss_rules = {
      :shields         => rules[:shields],
      :passive_ability => rules[:passive_ability]
    }
    setBattleRule("bossBattle", boss_rules)
    # Set up wild Pokemon edits
    edits = {}
    edits[:boss_pokemon]    = true
    edits[:hp_level]        = rules[:hp_level] || Settings::BOSS_HP_BOOST
    edits[:immunities]      = rules[:immunities] || Settings::BOSS_DEFAULT_IMMUNITIES.clone
    edits[:passive_ability] = rules[:passive_ability] if rules[:passive_ability]
    if rules[:moves]
      rules[:moves].each_with_index { |m, i| edits[:"move#{i + 1}"] = m }
    end
    # Merge any extra Pokemon edits
    edits.merge!(rules[:edit_pokemon]) if rules[:edit_pokemon]
    setBattleRule("editWildPokemon", edits)
    # Battle settings
    setBattleRule("canLose") if rules[:can_lose]
    if rules[:bgm]
      setBattleRule("battleBGM", rules[:bgm])
      setBattleRule("lowHealthBGM", "")
    end
    # Start the wild battle
    WildBattle.start(species, level)
  end
end

#===============================================================================
# Auto-boss for wild Legendary/Mythical encounters.
#===============================================================================
EventHandlers.add(:on_wild_pokemon_created, :auto_boss_legendary,
  proc { |pkmn|
    next if !pkmn.auto_boss?
    next if $game_temp.battle_rules["bossBattle"]   # Already a manual boss battle
    next if $game_temp.battle_rules["raidBattle"]    # Don't interfere with raids
    next if pkmn.boss_pokemon                        # Already set as boss
    # Apply boss properties directly on the Pokemon object
    pkmn.boss_pokemon    = true
    pkmn.immunities      = Settings::BOSS_DEFAULT_IMMUNITIES.clone
    pkmn.hp_level        = Settings::BOSS_HP_BOOST
    # Register boss battle rules
    boss_rules = {
      :shields         => pkmn.boss_shield_count,
      :passive_ability => pkmn.passive_ability
    }
    $game_temp.battle_rules["bossBattle"] = boss_rules
  }
)
