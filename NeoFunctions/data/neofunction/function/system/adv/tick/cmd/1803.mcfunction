# 命名：1803
# 説明：（説明未記載）
# >/adv
# =/function neofunction:system/adv/tick/cmd/1803


particle minecraft:flame ~ ~ ~ 0.3 0.5 0.3 0.05 20
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 50 1.4
tellraw @s [{"text":"🔯セットスペル発動【灼刃一体】","color":"light_purple"}]
effect give @s strength 5 2