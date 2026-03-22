# Mega Stone Consume

**Version:** 1.0.0  
**Essentials:** v21.1  
**Author:** Nononever

After a Pokemon Mega Evolves, its Mega Stone is permanently consumed and removed from inventory. This makes Mega Evolution a strategic one-time-use decision.

---

## Features

- **One-Time Mega** -- Mega Stones are consumed upon Mega Evolution
- **Permanent Removal** -- Item is removed from both the battler and the underlying Pokemon
- **End-of-Battle Safe** -- Clears initialItems so the stone is NOT restored after battle
- **Battle Message** -- Displays "The [stone] was consumed by the Mega Evolution energy!"

---

## How It Works

The plugin aliases `Battle#pbMegaEvolve`. After the standard Mega Evolution runs:

1. Detects the battler held a Mega Stone
2. Sets `battler.item = nil`
3. Clears `@initialItems` for the party index (prevents end-of-battle restore)
4. Sets `battler.pokemon.item = nil` on the actual Pokemon object

---

## Configuration

No configuration module. The plugin is a single-file drop-in.

---

## File Structure

```
[SC] Mega Stone Consume/
  meta.txt              - Plugin metadata
  MegaStoneConsume.rb   - Battle alias for pbMegaEvolve, stone removal logic
```
