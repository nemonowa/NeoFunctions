# 命名：212-1
# 説明：
# >/function neofunction:entity/skill/.neo-1
# =/function neofunction:asset/skill/212-1

execute store result score #Calc temp run data get entity @s Age
scoreboard players operation #Calc temp %= $2 const
execute if score #Calc temp matches 1 run function neofunction:asset/skill/212-2