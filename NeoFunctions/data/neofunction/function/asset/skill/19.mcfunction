# 命名：19
# 説明：
# >
# =/function neofunction:asset/skill/19


# 内容
execute as @s[gamemode=!survival] run return run tellraw @s {"text":"このエリアでは使用できない！","bold":true,"italic":true,"color":"red"}
execute at @s unless block ^ ^ ^5 #neofunction:airs run return run tellraw @s {"text":"発動失敗！","bold":true,"italic":true,"color":"red"}

execute at @s run tp @s ^ ^ ^5

effect give @s minecraft:slow_falling 1 0 true

playsound minecraft:entity.player.attack.sweep record @s ~ ~ ~ 2 1.5


# 消費SP
scoreboard players remove @s SP 20