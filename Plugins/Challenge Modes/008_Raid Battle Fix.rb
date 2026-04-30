#===============================================================================
# Raid Battle Storage Fix
# SC Fix (v2): The original code aliased `pbStorePokemon` on `class Battle`,
# but in PE v21.1 that method lives on `class Battle::Peer` with signature
# `(player, pkmn)`. The old alias was a no-op (method_defined? was false) and
# the new def added a method that nothing ever called — entirely dead code.
#
# v21.1's stock `Battle::Peer#pbStorePokemon` already does the desired
# party-first-then-PC behaviour, so this file is now intentionally inert
# to preserve the load-order entry without breaking anything.
#===============================================================================

