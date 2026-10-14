# 命名：mark
# 説明：【追加：2026-10-14 ルブラ編】掘った鉱石の場所：掘り跡（テラコッタ）を置き、また生える印（marker、タグ rubra_ore。data.b＝鉱石、data.t＝生える時刻＝今から 5 分後）を置く
# 実行条件：実行位置 掘ったブロックの真ん中。引数 b（鉱石のブロック）
# >/function neofunction:system/rubra/mine/drop
# =/function neofunction:system/rubra/mine/mark

# 内容
$summon marker ~ ~ ~ {Tags:["rubra_ore","rubra_ore_new"],data:{b:"$(b)"}}
execute store result score #ore_t temp run time query gametime
scoreboard players add #ore_t temp 6000
execute as @e[type=marker,tag=rubra_ore_new,distance=..0.5] store result entity @s data.t int 1 run scoreboard players get #ore_t temp
tag @e[type=marker,tag=rubra_ore_new,distance=..0.5] remove rubra_ore_new
setblock ~ ~ ~ minecraft:terracotta
