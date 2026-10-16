# 命名：close
# 説明：扉を閉じる：目印の所の 3 マス幅・3 マス高さの空気を青い石（海晶レンガ）でふさぐ
# 実行条件：実行者・実行位置 扉の目印
# >/function neofunction:system/world/ceresta/rubra/d2/water/apply
# =/function neofunction:system/world/ceresta/rubra/d2/door/close

# 内容
# 館の北の壁の隠し扉（rubra_door_wall）：壁と同じ並び（下 なめらかな砂岩、真ん中 空色のテラコッタと模様のタイル、上 なめらかな砂岩）に戻す
execute if entity @s[tag=rubra_door_wall] if block ~ ~1 ~ minecraft:light_blue_glazed_terracotta run return 0
execute if entity @s[tag=rubra_door_wall] run fill ~-1 ~ ~ ~1 ~ ~ minecraft:smooth_sandstone
execute if entity @s[tag=rubra_door_wall] run fill ~-1 ~1 ~ ~1 ~1 ~ minecraft:light_blue_terracotta
execute if entity @s[tag=rubra_door_wall] run setblock ~ ~1 ~ minecraft:light_blue_glazed_terracotta[facing=south]
execute if entity @s[tag=rubra_door_wall] run return run fill ~-1 ~2 ~ ~1 ~2 ~ minecraft:smooth_sandstone
execute if block ~ ~ ~ minecraft:prismarine_bricks run return 0
execute if entity @s[tag=rubra_door_x] run fill ~-1 ~ ~ ~1 ~2 ~ minecraft:prismarine_bricks replace minecraft:air
execute if entity @s[tag=rubra_door_z] run fill ~ ~ ~-1 ~ ~2 ~1 minecraft:prismarine_bricks replace minecraft:air
playsound minecraft:block.piston.extend block @a[distance=..32] ~ ~1 ~ 1.5 0.6
