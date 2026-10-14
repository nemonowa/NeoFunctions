# 命名：orbit
# 説明：【追加：2026-10-14 ルブラ編】三つ目の結晶を回す：向きの印を 1 tick に 2 度ずつ回し、2.2 マス先に結晶と当たり判定を置く
# 実行条件：実行者・実行位置 向きの印（marker、タグ rubra_xrot）
# >/function neofunction:system/rubra/d3/xtal/loop
# =/function neofunction:system/rubra/d3/xtal/orbit

# 内容
tp @s ~ ~ ~ ~2 0
execute rotated as @s positioned ^ ^ ^2.2 run tp @e[type=item_display,tag=rubra_xtal_3] ~ ~0.5 ~
execute rotated as @s positioned ^ ^ ^2.2 run tp @e[type=interaction,tag=rubra_xtal_3] ~ ~-0.05 ~
