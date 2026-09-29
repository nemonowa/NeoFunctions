# 命名：marker
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/marker
 # marker.mcfunction
 # 
 #
 # Created by .
##

# マクロのX,Y,Z:それぞれの大きさ

$function neofunction:asset/nbt/for_in_range {Min:0,Max:$(X),Function:"admin:block_to_display/for_x"}

execute store result score #CalcX temp run data get entity @s Pos[0] 100000
execute store result score #CalcY temp run data get entity @s Pos[1] 100000
execute store result score #CalcZ temp run data get entity @s Pos[2] 100000

scoreboard players set $100000 const 100000

scoreboard players operation #CalcX temp %= $100000 const
scoreboard players operation #CalcY temp %= $100000 const
scoreboard players operation #CalcZ temp %= $100000 const

execute as @e[tag=BTDTemp] run function admin:block_to_display/fix

execute at @s run summon armor_stand ~ ~ ~ {Tags:["check","BTDTemp"]}
execute as @e[tag=BTDTemp,type=!armor_stand] run ride @s mount @e[tag=BTDTemp,type=armor_stand,limit=1]
execute as @e[tag=BTDTemp,type=armor_stand] on passengers store result entity @s view_range float 0.01 run random value 90..110

tag @e[tag=BTDTemp] remove BTDTemp