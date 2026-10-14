# 命名：pillar_light
# 説明：【追加：2026-10-09 ルブラ編】星灯の柱に矢が当たった：ランプを灯す（海のランタン）
# 実行条件：実行者・実行位置 柱の目印（ランプの真ん中）
# >/function neofunction:entity/skill/boss/rubra_void/pillars
# =/function neofunction:entity/skill/boss/rubra_void/pillar_light

# 内容
setblock ~ ~ ~ minecraft:sea_lantern
kill @e[type=#minecraft:arrows,distance=..2.5]
particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 60 force @a[distance=..128]
particle minecraft:flash{color:[0.7,0.9,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
playsound minecraft:block.beacon.activate block @a[distance=..128] ~ ~ ~ 2 1.6
