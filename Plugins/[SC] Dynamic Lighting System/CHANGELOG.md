# Dynamic Lighting System — Changelog

## 2.5.1 — 2026-05-05

### Bug Fixes

- **All `alias` statements lacked `unless method_defined?` guards** —
  10 of them across files [001], [003], and [006]. Re-loading any of
  these files (debug reload, plugin manager refresh, dev hot-reload)
  re-applied the alias, turning the wrapper into infinite recursion
  on the next call. Now every alias has a guard:

  - `[003] Scene_Integration.rb`: `lighting_createSpritesets`,
    `lighting_transfer_player`, `lighting_update`, `lighting_dispose`
  - `[001] GameData.rb`: `_lighting_save`
  - `[006] Night_Tilesets.rb`: `night_pbGetTileset`,
    `night_pbGetAutotile`, `night_pbGetTileBitmap`,
    `night_tileset_character_name`

- **`to_save_hash` silently dropped six fields**. Lights with
  `bitmap`, `sound`, `sound_range`, `heat_shimmer`, `shadows`, or a
  per-light `blend` mode lost those features after save/load. The
  serialized hash now includes them. Documented why Procs
  (`on_activate`/`on_deactivate`) are still excluded — they can't be
  Marshal'd; users that rely on them must re-attach in map setup.

- **`try_get(id) || get(id)` defeated its own purpose** in
  [002] Lighting_Core.rb:414. `try_get` was meant as the safe path,
  but the `||` fallback called `.get` which **raises** on missing IDs
  — so the fallback turned the safety net into a guaranteed crash.
  Reduced to plain `try_get`.

- **User-supplied `on_activate` / `on_deactivate` procs ran without a
  rescue** ([002]:1316–1318). A buggy callback took the entire
  per-frame light update with it. Now wrapped in `rescue`, with a
  defensive `is_a?(Proc)` check in case the attr was set to something
  weird.

## 2.5.0 and earlier

See git history.
