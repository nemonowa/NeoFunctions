# 命名：bridge_up
# 説明：【追加：2026-10-09 ルブラ編】東の浮き橋を上げる：目印から +x へ 7 マス、幅 3（z-1〜z+1）、目印の 1 つ下の高さに青い石の橋
# 実行条件：実行者・実行位置 橋の目印（橋の始まりの真ん中、歩く高さ）
# >/function neofunction:system/rubra/d2/water/apply
# =/function neofunction:system/rubra/d2/door/bridge_up

# 内容
execute if block ~ ~-1 ~ minecraft:prismarine_bricks run return 0
fill ~ ~-1 ~-1 ~6 ~-1 ~1 minecraft:prismarine_bricks replace minecraft:air
particle minecraft:splash ~3 ~ ~ 3 0.3 1 0 80 normal
playsound minecraft:block.water.ambient block @a[distance=..32] ~3 ~ ~ 1.5 0.6
playsound minecraft:block.stone.place block @a[distance=..32] ~3 ~ ~ 1 0.6
