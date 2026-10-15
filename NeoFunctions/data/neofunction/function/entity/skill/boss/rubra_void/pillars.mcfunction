# 命名：pillars
# 説明：星灯の柱：ランプ（黒いガラス）に矢が当たると灯る。手記を広場で明かしていれば、15 秒ごとに灯籠の光が 1 本灯してくれる（派手に）。灯っている数を #rv_lit に
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/form1
# >/function neofunction:entity/skill/boss/rubra_void/form2
# =/function neofunction:entity/skill/boss/rubra_void/pillars

# 内容
execute as @e[type=marker,tag=rubra_pillar] at @s if block ~ ~ ~ minecraft:black_stained_glass if entity @e[type=#minecraft:arrows,distance=..2] run function neofunction:entity/skill/boss/rubra_void/pillar_light
execute store result score #rv_lt temp run data get storage neofunction:rubra fin.lt
scoreboard players add #rv_lt temp 1
execute if score #rv_lt temp matches 300.. run scoreboard players set #rv_lt temp 0
execute store result storage neofunction:rubra fin.lt int 1 run scoreboard players get #rv_lt temp
execute if score #rv_lt temp matches 150 if data storage neofunction:rubra choice{reveal:"reveal"} as @e[type=marker,tag=rubra_pillar,sort=random,limit=1] at @s if block ~ ~ ~ minecraft:black_stained_glass run function neofunction:entity/skill/boss/rubra_void/pillar_lantern
execute store result score #rv_lit temp if entity @e[type=marker,tag=rubra_pillar,predicate=neofunction:rubra/pillar_lit]
