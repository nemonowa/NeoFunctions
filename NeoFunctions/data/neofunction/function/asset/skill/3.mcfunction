# 命名：3
# 説明：透明化
# >/function neofunction:entity/3
# =/function neofunction:asset/skill/3



# 内容
tellraw @s [{"text":"周囲のスポナーを探索した！","color":"aqua","bold":true,"underlined":false}]
execute as @e[tag=air,distance=..16] run effect give @s minecraft:glowing 60 0



# 固定値SP消費
scoreboard players remove @s SP 16