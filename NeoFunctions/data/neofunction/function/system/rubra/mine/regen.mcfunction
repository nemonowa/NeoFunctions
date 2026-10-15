# 命名：regen
# 説明：【追加：2026-10-14 ルブラ編】また生える印 1 つ：時刻が来ていて、掘り跡（テラコッタ）のままで、プレイヤーが重なっていなければ鉱石に戻す。掘り跡が別のブロックに変わっていたら印だけ消す
# 実行条件：実行者・実行位置 印（marker、タグ rubra_ore）
# >/function neofunction:system/rubra/mine/regen_all
# =/function neofunction:system/rubra/mine/regen

# 内容
execute store result score #ore_t temp run data get entity @s data.t
execute if score #ore_now temp < #ore_t temp run return 0
# 【追加：2026-10-15】64m 以内にプレイヤーがいるあいだは戻さない（目の前で生えて掘り続けられないように）
execute if entity @a[distance=..64] run return 0
execute unless block ~ ~ ~ minecraft:terracotta run return run kill @s
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0] run return 0
function neofunction:system/rubra/mine/regen_set with entity @s data
particle minecraft:wax_on ~ ~ ~ 0.4 0.4 0.4 0 8 normal
kill @s
