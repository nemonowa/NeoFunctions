# 命名：fix
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/fix
 # fix.mcfunction
 # 
 #
 # Created by .
##

execute store result score #Calc1 temp run data get entity @s transformation.translation[0] 100000
execute store result score #Calc2 temp run data get entity @s transformation.translation[1] 100000
execute store result score #Calc3 temp run data get entity @s transformation.translation[2] 100000

scoreboard players operation #Calc1 temp -= #CalcX temp
scoreboard players operation #Calc2 temp -= #CalcY temp
scoreboard players operation #Calc3 temp -= #CalcZ temp

execute store result entity @s transformation.translation[0] float 0.00001 run scoreboard players get #Calc1 temp
execute store result entity @s transformation.translation[1] float 0.00001 run scoreboard players get #Calc2 temp
execute store result entity @s transformation.translation[2] float 0.00001 run scoreboard players get #Calc3 temp