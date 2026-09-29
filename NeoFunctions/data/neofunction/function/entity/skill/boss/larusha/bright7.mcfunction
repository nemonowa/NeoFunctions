# 命名：bright7
# 説明：
# >/function neofunction:entity/skill/boss/larusha/bright1 実行者server 実行位置0 0 0
# =/function neofunction:entity/skill/boss/larusha/bright7

#速さ1の太陽を生成、プレイヤーに向かって飛ばします。
execute as @e[tag=larusha] at @s as @e[type=armor_stand,tag=bright,distance=..16] run kill @s
execute as @e[tag=larusha] at @s run tag @s remove nowskilling
execute as @e[tag=larusha] at @s run data merge entity @s {NoAI:0b,NoGravity:0b}
execute as @e[tag=larusha] at @s run data merge entity @s {active_effects:[{id:"minecraft:resistance",amplifier:2b,duration:-1,show_icon:0b}]}