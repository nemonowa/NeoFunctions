# 命名：257-1
# 説明：影杭【シャドウ・ピラー】
# >/function neofunction:asset/skill/257
# =/function neofunction:asset/skill/257-1


# 効果 
#execute as @e[tag=skill257] at @s run effect give @e[tag=enemy,distance=..8] minecraft:wither 1 1
execute as @e[tag=skill257] at @s run effect give @e[tag=enemy,distance=..8] minecraft:weakness 1 1
execute as @e[tag=skill257] at @s run effect give @e[tag=enemy,distance=..8] minecraft:slowness 1 0

# nemo艦長のガチexecute幾何学
execute as @e[tag=roll,limit=1] at @s positioned as @e[tag=skill257] positioned ~ ~0.3 ~ run particle falling_obsidian_tear ^8 ^ ^ 0.1 0 0 1 10 normal
execute as @e[tag=roll,limit=1] at @s positioned as @e[tag=skill257] positioned ~ ~0.3 ~ run particle witch ^-2 ^ ^ 0.1 0 0 1 3 normal
execute as @e[tag=roll,limit=1] at @s positioned as @e[tag=skill257] positioned ~ ~0.3 ~ run particle witch ^-6 ^ ^ 0.1 0 0 1 3 normal
execute as @e[tag=skill257] at @s run function neofunction:asset/particle/star/witch8m
#execute as @e[tag=skill257] at @s run function neofunction:asset/particle/sphere8m

# ループ
execute unless entity @e[tag=skill257] run return run say 影杭の効果が切れた
schedule function neofunction:asset/skill/257-1 1t append

