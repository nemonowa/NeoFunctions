# 命名：descend
# 説明：太陽の降下。毎 tick 0.3 ブロックずつ下ろし、炎をまとわせ。地面の 4 ブロック上に着くか 30 秒で炸裂へ
# 実行条件：爆心として（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/shuuen/tick
# =/function neofunction:asset/enchantment/shuuen/descend


# 内容
execute if score #nk_v temp matches 0 run function neofunction:asset/enchantment/shuuen/sun_grow
scoreboard players set #nk_v temp 1
scoreboard players add #nk_h temp 1
tp @s ~ ~-0.3 ~
execute at @s as @e[type=item_display,tag=neo.nk_sun] if score @s neo.nk_id = #nk_cur temp run tp @s ~ ~ ~
execute at @s run particle minecraft:flame ~ ~ ~ 2.5 2.5 2.5 0.03 30 force
execute at @s run particle minecraft:lava ~ ~ ~ 2 2 2 0 2 force
execute at @s run particle minecraft:end_rod ~ ~ ~ 3 3 3 0.02 6 force
execute at @s run particle minecraft:small_flame ~ ~-3 ~ 1.5 1 1.5 0.05 10 force
scoreboard players operation #nk_m temp = #nk_h temp
scoreboard players operation #nk_m temp %= #nk_20 temp
execute if score #nk_m temp matches 0 at @s run playsound minecraft:entity.blaze.burn master @a ~ ~ ~ 12 0.5
execute if score #nk_h temp matches 600.. run return run scoreboard players set #nk_t temp 59
execute at @s unless block ~ ~-4 ~ #minecraft:replaceable run return run scoreboard players set #nk_t temp 59
scoreboard players set #nk_t temp 2
