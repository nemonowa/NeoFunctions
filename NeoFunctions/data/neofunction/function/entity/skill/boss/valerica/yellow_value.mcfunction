# 命名：yellow_value
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/valerica/damage
# =/function neofunction:entity/skill/boss/valerica/yellow_value

scoreboard players set #Calc temp 0
execute as @e[tag=LivingMail] store result score @s temp run data get entity @s Health
execute as @e[tag=LivingMail] run scoreboard players operation #Calc temp += @s temp
$execute store result bossbar neofunction:boss/$(ID) value run scoreboard players get #Calc temp