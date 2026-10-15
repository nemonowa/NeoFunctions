# 命名：鉱脈感知【ヴェイン・サーチ】
# 説明：スキル 260：いちばん近い鉱石（半径 12 m）を 10 秒光らせる。メサではルブラの鉱石も。消費 SP 10
# >スキル発動時（asset/skill の振り分け）
# =/function neofunction:asset/skill/260

# 内容
execute if score @s SP matches ..9 run return run function neofunction:system/trigger/on/sp
scoreboard players remove @s SP 10
playsound minecraft:block.amethyst_block.resonate player @a[distance=..12] ~ ~ ~ 1 0.8
particle minecraft:enchant ~ ~1 ~ 0.6 0.6 0.6 0.4 60 normal
# 探す（見つけたら 1 を返す）。メサではルブラの鉱石も
scoreboard players set #s260 temp 0
execute if dimension neodimension:ceresta_festa if biome ~ ~ ~ #neofunction:mesa_all positioned ~ ~1 ~ store result score #s260 temp run function neofunction:asset/skill/260/scan_m
execute if score #s260 temp matches 0 unless biome ~ ~ ~ #neofunction:mesa_all positioned ~ ~1 ~ store result score #s260 temp run function neofunction:asset/skill/260/scan_v
execute if score #s260 temp matches 0 run title @s actionbar {"text":"近くに鉱石の気配はない……","color":"gray"}
execute if score #s260 temp matches 1 run title @s actionbar {"text":"鉱石の気配を感じる！","color":"#FFC23D"}
