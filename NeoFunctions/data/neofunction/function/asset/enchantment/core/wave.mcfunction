# 命名：wave
# 説明：衝撃波。半径を 3 ずつ広げながら輪を描き、通過したモブにダメージと吹き飛ばし。96 で終わる
# 実行条件：爆心として（temp の #nk_r が 0 以上のあいだ）
# >/function neofunction:asset/enchantment/core/tick
# =/function neofunction:asset/enchantment/core/wave


# 内容
scoreboard players add #nk_r temp 3
scoreboard players operation #nk_wr temp = #nk_r temp
execute store result storage neofunction:enchantment ring.r float 1 run scoreboard players get #nk_wr temp
data modify storage neofunction:enchantment ring.p set value "minecraft:cloud"
data modify storage neofunction:enchantment ring.c set value 3
data modify storage neofunction:enchantment ring.d set value 2.0
function neofunction:asset/enchantment/core/ring with storage neofunction:enchantment ring
data modify storage neofunction:enchantment ring.p set value "minecraft:flame"
data modify storage neofunction:enchantment ring.c set value 2
data modify storage neofunction:enchantment ring.d set value 1.4
function neofunction:asset/enchantment/core/ring with storage neofunction:enchantment ring
execute store result storage neofunction:enchantment wave.b int 1 run scoreboard players get #nk_wr temp
scoreboard players remove #nk_wr temp 3
execute store result storage neofunction:enchantment wave.a int 1 run scoreboard players get #nk_wr temp
scoreboard players add #nk_wr temp 3
execute store result score #nk_gx temp run data get entity @s Pos[0] 100
execute store result score #nk_gz temp run data get entity @s Pos[2] 100
execute as @a if score @s neo.nk_id = #nk_cur temp run tag @s add neo.nk_src
function neofunction:asset/enchantment/core/wave_band with storage neofunction:enchantment wave
tag @a[tag=neo.nk_src] remove neo.nk_src
execute if score #nk_r temp matches 96.. run scoreboard players set #nk_r temp -1
