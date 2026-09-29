# 命名：skeleton
# 説明：
# >
# =/function neofunction:system/adv/player_killed_entity/skeleton
advancement revoke @s only neofunction:player_killed_entity/skeleton
execute unless predicate neofunction:random_chance/1 run return 0
give @s minecraft:skeleton_skull
