# 命名：zombie
# 説明：
# >
# =/function neofunction:system/adv/player_killed_entity/zombie
advancement revoke @s only neofunction:player_killed_entity/zombie
execute unless predicate neofunction:random_chance/1 run return 0
give @s minecraft:zombie_head
