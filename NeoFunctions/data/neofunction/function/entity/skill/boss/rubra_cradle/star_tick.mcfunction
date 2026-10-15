# 命名：star_tick
# 説明：星の雨の印（毎 tick）：1.5 秒（30 tick）のあいだ足もとに赤い印と、上から落ちてくる光で知らせ、そのあと星が落ちる（半径 2.5 の人に 8 ダメージ）
# 実行条件：実行者・実行位置 星の雨の印（marker、タグ rubra_star）
# >/function neofunction:entity/skill/boss/rubra_cradle/tick
# =/function neofunction:entity/skill/boss/rubra_cradle/star_tick

# 内容
execute store result score #rs_t temp run data get entity @s data.t
scoreboard players add #rs_t temp 1
execute store result entity @s data.t int 1 run scoreboard players get #rs_t temp
execute if score #rs_t temp matches ..29 run particle minecraft:dust{color:[1.0,0.25,0.2],scale:1.3} ~ ~0.15 ~ 1.4 0 1.4 0 8 normal
execute if score #rs_t temp matches 10 run particle minecraft:end_rod ~ ~9 ~ 0.1 0.3 0.1 0 8 normal
execute if score #rs_t temp matches 18 run particle minecraft:end_rod ~ ~5 ~ 0.1 0.3 0.1 0 8 normal
execute if score #rs_t temp matches 24 run particle minecraft:firework ~ ~2 ~ 0.1 0.3 0.1 0 10 normal
execute if score #rs_t temp matches ..29 run return 0
particle minecraft:explosion ~ ~0.5 ~ 0.5 0.2 0.5 0 3 normal
particle minecraft:dust{color:[1.0,0.3,0.2],scale:2.0} ~ ~0.5 ~ 1.5 0.4 1.5 0 40 normal
playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 1.3
execute as @a[distance=..2.5,gamemode=!spectator] run damage @s 8 minecraft:magic by @e[type=evoker,tag=rubra_eater,limit=1]
kill @s
