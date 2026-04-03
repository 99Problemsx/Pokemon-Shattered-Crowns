# Companion Battles

**Version:** 1.0.0\
**Module:** `CompanionBattles`\
**Requires:** None

Fight alongside **Lyra, Kael, Aldric, and Ragnar** in tag-team double battles. Each companion has a unique **AI behavior** — Lyra heals, Kael attacks, Aldric defends, Ragnar balances. Higher [Relationship](../story-narrative/relationship-system.md) tiers grant stat boosts to the companion's team.

---

## Features

| Feature | Description |
|---------|-------------|
| **4 Companions** | Each with unique AI and dialogue |
| **4 AI Profiles** | Offensive, Defensive, Support, Balanced |
| **Pre/Post Dialogue** | Companion speaks before and after battle |
| **Relationship Bonus** | +5% stats per tier above 2 |
| **Auto-Heal** | Companion team auto-healed before battle |
| **3 Pokémon Cap** | Companion brings max 3 Pokémon |

---

## The Companions

| Companion | AI | Pre-Battle Line | Speciality |
|-----------|-----|-----------------|------------|
| 🌿 **Lyra** | Support | *"I'll back you up! Let's do this together!"* | Heals and buffs |
| 🌑 **Kael** | Offensive | *"Stand back and watch me work."* | Max damage output |
| ⚔️ **Aldric** | Defensive | *"I'll protect our flank. Focus on attacking!"* | Walls and status |
| ⚡ **Ragnar** | Balanced | *"Together, we are the Chosen!"* | Adaptive strategy |

---

## AI Profiles

| Profile | Attacking | Status | Healing |
|---------|-----------|--------|---------|
| **Offensive** | 80% | 10% | 10% |
| **Defensive** | 30% | 40% | 30% |
| **Support** | 20% | 35% | 45% |
| **Balanced** | 50% | 25% | 25% |

---

## Configuration

All settings are in `000_Config.rb` inside the `CompanionBattles` module.

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `MAX_COMPANION_POKEMON` | `3` | Companion party size limit |
| `AUTO_HEAL_COMPANION` | `true` | Heal companion before battle |
| `SHOW_DIALOGUE` | `true` | Show pre/post battle lines |
| `RELATIONSHIP_BONUS_ENABLED` | `true` | Apply stat bonus from relationship |
| `RELATIONSHIP_STAT_BOOST` | `5` | % stat boost per tier above 2 |

---

## Script Calls

```ruby
# Start a companion battle with Lyra
CompanionBattles.start(:LYRA, opponents)

# Check if a companion is available for battle
CompanionBattles.available?(:KAEL)   # => true/false
```

---

## How It Connects

| System | Integration |
|--------|------------|
| [Relationship System](../story-narrative/relationship-system.md) | Tier gates who can fight; high tier = stat bonus |
| [Party Banter](../story-narrative/party-banter.md) | Companions comment post-battle |
| [Battle Rewards Ex](battle-rewards-ex.md) | Companion battles are also ranked |

---

## File Structure

```
Plugins/[SC] Companion Battles/
  meta.txt          — Plugin metadata
  000_Config.rb     — Companion definitions, AI profiles, dialogue
  001_Core.rb       — Double battle setup, AI logic, stat boosting
  002_Additions.rb  — Relationship integration, dialogue display
```
