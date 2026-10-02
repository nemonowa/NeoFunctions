# 命名：descend
# 説明：太陽の降下。毎 tick 0.3 ブロックずつ下ろし、炎をまとわせ。地面の 4 ブロック上に着くか 30 秒で炸裂へ
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/shuuen/tick
# =/function neofunction:asset/enchantment/shuuen/descend


# 内容
execute if score @s neo.nk_v matches 0 run function neofunction:asset/enchantment/shuuen/sun_grow
scoreboard players set @s neo.nk_v 1
scoreboard players add @s neo.nk_h 1
tp @s ~ ~-0.3 ~
execute at @s as @e[type=item_display,tag=neo.nk_sun] if score @s neo.nk_id = #cur neo.nk_id run tp @s ~ ~ ~
execute at @s run particle minecraft:flame ~ ~ ~ 2.5 2.5 2.5 0.03 30 force
execute at @s run particle minecraft:lava ~ ~ ~ 2 2 2 0 2 force
execute at @s run particle minecraft:end_rod ~ ~ ~ 3 3 3 0.02 6 force
execute at @s run particle minecraft:small_flame ~ ~-3 ~ 1.5 1 1.5 0.05 10 force
scoreboard players operation #m neo.nk_tmp = @s neo.nk_h
scoreboard players operation #m neo.nk_tmp %= #20 neo.nk_tmp
execute if score #m neo.nk_tmp matches 0 at @s run playsound minecraft:entity.blaze.burn master @a ~ ~ ~ 12 0.5
execute if score @s neo.nk_h matches 600.. run return run scoreboard players set @s neo.nk_t 59
execute at @s unless block ~ ~-4 ~ #minecraft:replaceable run return run scoreboard players set @s neo.nk_t 59
scoreboard players set @s neo.nk_t 2
