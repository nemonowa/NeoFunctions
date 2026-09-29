# 命名：ender_dragon
# 説明：
# >
# =/function neofunction:system/adv/player_killed_entity/ender_dragon
advancement revoke @s only neofunction:player_killed_entity/ender_dragon
execute unless predicate neofunction:random_chance/1 run return 0
give @s minecraft:dragon_head
