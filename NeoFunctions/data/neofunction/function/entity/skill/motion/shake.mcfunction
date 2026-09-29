# 命名：shake
# 説明：
# >
# =/function neofunction:entity/skill/motion/shake
scoreboard players add #shake_timer temp 1

execute if score #shake_timer temp matches 1..10 run tp @s ~ ~ ~ ~10 ~
execute if score #shake_timer temp matches 10..20 run tp @s ~ ~ ~ ~-10 ~

execute if score #shake_timer temp matches 20.. run scoreboard players set #shake_timer temp 0