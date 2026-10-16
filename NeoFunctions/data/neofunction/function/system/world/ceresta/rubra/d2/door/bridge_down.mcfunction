# 命名：bridge_down
# 説明：東の浮き橋を沈める（水が 2 つぶんより少ないとき）
# 実行条件：実行者・実行位置 橋の目印
# >/function neofunction:system/world/ceresta/rubra/d2/water/apply
# =/function neofunction:system/world/ceresta/rubra/d2/door/bridge_down

# 内容
execute unless block ~ ~-1 ~ minecraft:prismarine_bricks run return 0
fill ~ ~-1 ~-1 ~6 ~-1 ~1 minecraft:air replace minecraft:prismarine_bricks
playsound minecraft:block.water.ambient block @a[distance=..32] ~3 ~ ~ 1.5 0.5
