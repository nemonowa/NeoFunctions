# 命名：piglin
# 説明：
# >
# =/function neofunction:system/adv/player_killed_entity/piglin
advancement revoke @s only neofunction:player_killed_entity/piglin
execute unless predicate neofunction:random_chance/1 run return 0
give @s minecraft:piglin_head
