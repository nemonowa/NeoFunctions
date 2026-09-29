# 命名：skill
# 説明：
# >/function neofunction:entity/skill/clock/10s 実行者as @e[type=wither_skeleton,tag=larusha,tag=!nowskilling] 実行位置@s
# =/function neofunction:entity/skill/boss/larusha/skill

#ラルーシャのHPが200を切ったら、大技を放ってほしいぞ！
execute as @s[scores={HP=..200},tag=!ult1] at @s run function neofunction:entity/skill/boss/larusha/sunbeam1
execute as @s[scores={HP=..200},tag=!ult1] at @s run return run tag @s add ult1
execute as @s[scores={HP=..200},tag=!ult2] at @s run function neofunction:entity/skill/boss/larusha/bright1
execute as @s[scores={HP=..200},tag=!ult2] at @s run return run tag @s add ult2

#一度行動をしなかったら、次には必ず行動をしてほしいぞ！
execute as @s[tag=noaction] store result score @s temp run random value 15..85
execute as @s[tag=!noaction] store result score @s temp run random value 1..100

execute if score @s temp matches 15..85 run tag @s remove noaction
execute if score @s temp matches 1..19 run tag @s add noaction

execute if score @s temp matches 15..35 run function neofunction:entity/skill/boss/larusha/beam1
execute if score @s temp matches 35..54 run function neofunction:entity/skill/boss/larusha/summonfollowers
execute if score @s temp matches 55..69 run function neofunction:entity/skill/boss/larusha/corona1
execute if score @s temp matches 70..85 run function neofunction:entity/skill/boss/larusha/tarai1

execute as @e[type=villager] at @s as @e[distance=..12] run function neofunction:entity/skill/boss/larusha/beam1




