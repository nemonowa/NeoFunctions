# 命名：creeper
# 説明：
# >
# =/function neofunction:system/adv/player_killed_entity/creeper
advancement revoke @s only neofunction:player_killed_entity/creeper
execute unless predicate neofunction:random_chance/1 run return 0
give @s minecraft:creeper_head
