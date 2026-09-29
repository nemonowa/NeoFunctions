# 命名：.neo
# 説明：
# >/function neofunction:entity/.spawn/obj
# =/function neofunction:entity/.spawn/obj/fishing_bobber/.neo

execute on origin unless predicate neofunction:lava_fishing run return 0
tag @s add lava_fishing
tag @s remove vanilla