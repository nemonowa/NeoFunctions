# 命名：dps
# 説明：HP可視化処理
# 説明：https://discord.com/channels/1067520683715866634/1067521054622355527/1379156565118025959
# >/function neofunction:system/clock/1_second
# =/function neofunction:entity/skill/dps

#dps  DPS
#dps1 赤ハート
#dps2 金ハート
#dps3 1s前のHP保存用


#内容
execute as @s store result score dps1 temp run data get entity @s Health 1.0
execute as @s store result score dps2 temp run data get entity @s AbsorptionAmount

scoreboard players operation dps1 temp += dps2 temp

scoreboard players operation dps temp = dps3 temp
scoreboard players operation dps temp -= dps1 temp
scoreboard players operation dps3 temp = dps1 temp

execute as @s at @s anchored eyes run summon text_display ^ ^ ^0.6 {alignment:"center",billboard:"center",Tags:[check,del1s],text:[{"text":"DPS: ","color":"red"},{"score":{"name":"dps","objective":"temp"},"color":"red","bold":true}],background:2130706432}