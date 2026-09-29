# 命名：tridentforcusscheduleremove
# 説明：
# >
# =/function neofunction:entity/skill/tridentforcusscheduleremove
execute as @e[tag=tridentforcus] at @s run data merge entity @s {NoAI:0b}
execute as @e[tag=tridentforcus] run tag @s remove tridentforcus
#エリートサラザールの形態変化後、の行動猶予制御用
execute as @e[tag=elitetridentthrow] at @s run data merge entity @s {NoAI:0b}

execute as @e[tag=real] at @s run data merge entity @s {NoAI:0b}