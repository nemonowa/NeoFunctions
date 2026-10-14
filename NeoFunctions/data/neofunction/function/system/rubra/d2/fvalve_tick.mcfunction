# 命名：fvalve_tick
# 説明：【追加：2026-10-14 ルブラ編】壁画の間の黒い水の水門（1 秒ごと）：開いている数を数え、閉じた水門の柱を水色に戻す。両方開いていたら flush。1 秒ごと（迷宮の処理の間隔）に水の粒と「開いている水門 n / 2」を出す
# 実行条件：実行者 プレイヤー（黒い水の溜まりの近く、まだ流していないとき）
# >/function neofunction:system/adv/tick/dungeon/rubra2
# =/function neofunction:system/rubra/d2/fvalve_tick

# 内容
execute store result score #fv_now temp run time query gametime
execute store result score #fv_a temp run data get storage neofunction:rubra d2.fv.a
execute store result score #fv_b temp run data get storage neofunction:rubra d2.fv.b
scoreboard players operation #fv_a temp -= #fv_now temp
scoreboard players operation #fv_b temp -= #fv_now temp
scoreboard players set #fv_n temp 0
execute if score #fv_a temp matches 1.. run scoreboard players add #fv_n temp 1
execute if score #fv_b temp matches 1.. run scoreboard players add #fv_n temp 1
# 閉じた水門は柱を水色に戻す
execute if score #fv_a temp matches ..0 as @e[type=interaction,tag=rubra_fvalve_1,limit=1] at @s run fill ~ ~1 ~ ~ ~4 ~ minecraft:light_blue_stained_glass replace minecraft:blue_stained_glass
execute if score #fv_b temp matches ..0 as @e[type=interaction,tag=rubra_fvalve_2,limit=1] at @s run fill ~ ~1 ~ ~ ~4 ~ minecraft:light_blue_stained_glass replace minecraft:blue_stained_glass
execute if score #fv_n temp matches 2 run return run function neofunction:system/rubra/d2/flush
execute if score #fv_n temp matches 0 run return 0
# 水の粒と、画面の表示（1 秒ごと）
execute if score #fv_a temp matches 1.. as @e[type=interaction,tag=rubra_fvalve_1,limit=1] at @s run particle minecraft:falling_water ~ ~2 ~ 0.3 0.4 0.3 0 6 normal
execute if score #fv_b temp matches 1.. as @e[type=interaction,tag=rubra_fvalve_2,limit=1] at @s run particle minecraft:falling_water ~ ~2 ~ 0.3 0.4 0.3 0 6 normal
scoreboard players set #fv_min temp 99999
execute if score #fv_a temp matches 1.. if score #fv_a temp < #fv_min temp run scoreboard players operation #fv_min temp = #fv_a temp
execute if score #fv_b temp matches 1.. if score #fv_b temp < #fv_min temp run scoreboard players operation #fv_min temp = #fv_b temp
scoreboard players operation #fv_min temp /= $20 const
scoreboard players add #fv_min temp 1
execute if score #fv_min temp matches ..5 run playsound minecraft:block.note_block.hat block @s ~ ~ ~ 1 1.5
title @s actionbar [{"text":"開いている水門 ","color":"#7FD8FF"},{"score":{"name":"#fv_n","objective":"temp"},"color":"white","bold":true},{"text":" / 2　","color":"#7FD8FF"},{"text":"（閉じるまで ","color":"gray"},{"score":{"name":"#fv_min","objective":"temp"},"color":"white"},{"text":" 秒）","color":"gray"}]
