# 命名：shulker
# 説明：
# >
# =/function neofunction:system/adv/player_killed_entity/shulker
advancement revoke @s only neofunction:player_killed_entity/shulker
execute unless predicate neofunction:random_chance/1 run return 0
give @s minecraft:player_head[minecraft:profile={name:"mhf_shulker"}]
