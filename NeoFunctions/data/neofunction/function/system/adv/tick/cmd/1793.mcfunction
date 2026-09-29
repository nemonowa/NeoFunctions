# 命名：1793
# 説明：（説明未記載）
# >/adv
# =/function neofunction:system/adv/tick/cmd/1793

execute store result score @s temp run time of minecraft:overworld query minecraft:day
execute unless score @s temp matches 13000..23000 run return 0
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.5 0.3 0.05 20
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 50 1.4
tellraw @s [{"text":"🔯セットスペル発動【シリウスの光】","color":"light_purple"}]
effect give @s speed 60 0
effect give @s haste 60 0