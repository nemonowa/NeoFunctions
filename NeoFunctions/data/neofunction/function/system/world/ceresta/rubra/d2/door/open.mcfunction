# 命名：open
# 説明：扉を開ける：目印の所の 3 マス幅・3 マス高さの青い石（海晶レンガ）を消す。向きは目印のタグ（rubra_door_x：x に 3 マス、rubra_door_z：z に 3 マス）
# 実行条件：実行者・実行位置 扉の目印（扉のいちばん下の真ん中）
# >/function neofunction:system/world/ceresta/rubra/d2/water/apply
# >/function neofunction:system/world/ceresta/rubra/d2/gate
# >/function neofunction:system/adv/tick/quest/40/d2/428_end
# =/function neofunction:system/world/ceresta/rubra/d2/door/open

# 内容
# 館の北の壁の隠し扉（rubra_door_wall）：壁と同じ石。真ん中の模様のタイル（~ ~1 ~）があれば閉じている
execute if entity @s[tag=rubra_door_wall] unless block ~ ~1 ~ minecraft:light_blue_glazed_terracotta run return 0
execute if entity @s[tag=rubra_door_wall] run fill ~-1 ~ ~ ~1 ~2 ~ minecraft:air
execute if entity @s[tag=rubra_door_wall] run particle minecraft:dust_plume ~ ~1.5 ~ 1 1 0.3 0 30 normal
execute if entity @s[tag=rubra_door_wall] run playsound minecraft:block.piston.contract block @a[distance=..32] ~ ~1 ~ 1.5 0.5
execute if entity @s[tag=rubra_door_wall] run return run playsound minecraft:block.water.ambient block @a[distance=..32] ~ ~1 ~ 1 0.8
execute unless block ~ ~ ~ minecraft:prismarine_bricks run return 0
execute if entity @s[tag=rubra_door_x] run fill ~-1 ~ ~ ~1 ~2 ~ minecraft:air replace minecraft:prismarine_bricks
execute if entity @s[tag=rubra_door_z] run fill ~ ~ ~-1 ~ ~2 ~1 minecraft:air replace minecraft:prismarine_bricks
particle minecraft:bubble_pop ~ ~1.5 ~ 1 1 1 0 40 normal
playsound minecraft:block.piston.contract block @a[distance=..32] ~ ~1 ~ 1.5 0.6
playsound minecraft:block.water.ambient block @a[distance=..32] ~ ~1 ~ 1 0.8
