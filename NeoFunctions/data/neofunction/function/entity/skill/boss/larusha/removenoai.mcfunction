# 命名：removenoai
# 説明：
# >/function neofunction:entity/skill/boss/larusha/corona1 実行者server 実行位置0 0 0
# =/function neofunction:entity/skill/boss/larusha/removenoai
execute as @e[type=wither_skeleton,tag=larusha] at @s run data modify entity @s NoAI set value 0b
