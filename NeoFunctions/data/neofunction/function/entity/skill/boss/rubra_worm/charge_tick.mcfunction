# 命名：charge_tick
# 説明：突進（毎 tick）：床の高さ（y-40）を向きのまま 1 マス（後半 1.2）進む。当たった人に 10（一度）。頭の先が柱か壁にぶつかったらスタン（crash）。40 マス進んだら潜る
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/charge_tick

# 内容
execute unless data storage neofunction:rubra worm{phase:2} rotated as @s run tp @s ^ ^ ^1
execute if data storage neofunction:rubra worm{phase:2} rotated as @s run tp @s ^ ^ ^1.2
execute at @s run tp @s ~ -40 ~
execute at @s run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 1 0.3 1 0 10 normal
execute at @s run playsound minecraft:block.gravel.break hostile @a[distance=..48] ~ ~ ~ 1 0.5
execute at @s as @a[distance=..2.8,gamemode=!spectator,tag=!rubra_wchit] run function neofunction:entity/skill/boss/rubra_worm/charge_hurt
# 頭の先（1 マス上・1.6 先）が、置き換えられない固いブロック（ろうそくは除く）ならぶつかった
execute at @s rotated as @s positioned ^ ^1.2 ^1.6 unless block ~ ~ ~ #minecraft:replaceable unless block ~ ~ ~ #minecraft:candles run return run function neofunction:entity/skill/boss/rubra_worm/crash
execute store result score #rw_d temp run data get storage neofunction:rubra worm.d
scoreboard players add #rw_d temp 1
execute store result storage neofunction:rubra worm.d int 1 run scoreboard players get #rw_d temp
execute if score #rw_d temp matches 40.. run function neofunction:entity/skill/boss/rubra_worm/dive
