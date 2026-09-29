# 命名：1799
# 説明：（説明未記載）
# >/adv
# =/function neofunction:system/adv/tick/cmd/1799

execute store result score @s temp run time of minecraft:overworld query minecraft:day
execute unless score @s temp matches 0..12000 run return 0
particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.05 20
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 50 1.4
tellraw @s [{"text":"🔯セットスペル発動【太陽の加護】","color":"light_purple"}]
effect give @s speed 60 0
effect give @s jump_boost 60 0