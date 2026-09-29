# 命名：corona2
# 説明：
# >/function neofunction:entity/skill/boss/larusha/corona1 実行者server 実行位置0 0 0
# =/function neofunction:entity/skill/boss/larusha/corona2
execute as @e[type=wither_skeleton,tag=larusha] at @s run function neofunction:asset/particle/sphere/1_6m
execute as @e[type=wither_skeleton,tag=larusha] at @s as @a[distance=..30] at @s run playsound block.anvil.place master @a ~ ~ ~ 0.3 1.7