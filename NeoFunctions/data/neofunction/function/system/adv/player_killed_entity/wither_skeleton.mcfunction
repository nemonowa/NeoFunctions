# 命名：wither_skeleton
# 説明：
# >
# =/function neofunction:system/adv/player_killed_entity/wither_skeleton
advancement revoke @s only neofunction:player_killed_entity/wither_skeleton
execute unless predicate neofunction:random_chance/1 run return 0
give @s minecraft:wither_skeleton_skull
