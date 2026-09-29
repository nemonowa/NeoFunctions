# 命名：vindicator
# 説明：
# >
# =/function neofunction:system/adv/player_killed_entity/vindicator
advancement revoke @s only neofunction:player_killed_entity/vindicator
execute unless predicate neofunction:random_chance/1 run return 0
give @s minecraft:player_head[minecraft:profile={name:"mhf_vindicator"}]
