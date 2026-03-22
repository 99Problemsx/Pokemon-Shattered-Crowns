# Secret Base

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

Player-owned secret base with functional decorations, upgrades, and NPC invitations. Decorations provide gameplay effects like healing, PC access, and training.

---

## Features

- **Functional Decorations** -- Items that provide gameplay benefits
- **NPC Invitations** -- Invite companion NPCs to visit your base
- **Base Upgrades** -- Expand and improve your base over time
- **Multiple Locations** -- Choose from several base spots in the world

---

## Configuration

Module: `SecretBase`

| Constant | Default | Description |
|----------|---------|-------------|
| `ENABLED` | `true` | Master toggle |
| `BASE_LOCATIONS` | `{...}` | Available base locations |
| `BASE_INTERIOR_MAP_ID` | varies | Map ID for base interior |
| `DECORATIONS` | 8 | Decoration definitions |
| `INVITABLE_NPCS` | `{...}` | NPCs that can be invited |

---

## Decorations

| Decoration | Effect |
|------------|--------|
| Healing Bed | Full party heal |
| PC Terminal | Access Pokemon storage |
| Shop Counter | Buy/sell items |
| Training Dummy | EV training exercises |
| Jukebox | Change background music |
| Bookshelf | Lore and tips |
| Trophy Case | Display achievements |
| Cooking Pot | Craft items (with Crafting System) |

---

## Event Tag

Place a **Comment** on an event to mark a secret base entrance:

```
[SecretBase]
```

---

## Script Helpers

| Method | Description |
|--------|-------------|
| `pbEnterSecretBase` | Teleport to the player's base |
| `pbHasSecretBase?` | Check if player has a base |
| `pbPlaceDecoration(id)` | Add a decoration |
| `pbInviteNPC(npc_id)` | Invite an NPC to the base |

---

## File Structure

```
[SC] Secret Base/
  meta.txt              - Plugin metadata
  000_Config.rb         - Locations, decorations, NPC definitions
  001_SecretBaseCore.rb - Base management, decoration effects, invitations
```
