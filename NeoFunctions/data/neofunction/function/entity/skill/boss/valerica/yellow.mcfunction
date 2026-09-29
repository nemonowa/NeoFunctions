# 命名：yellow
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/valerica/summonliving
# =/function neofunction:entity/skill/boss/valerica/yellow

scoreboard players set #Calc temp 0
execute as @e[tag=LivingMail] store result score @s temp run attribute @s max_health get
execute as @e[tag=LivingMail] run scoreboard players operation #Calc temp += @s temp
$bossbar set neofunction:boss/$(ID) color yellow
scoreboard players operation @s HPmax = #Calc temp
$execute store result bossbar neofunction:boss/$(ID) value run scoreboard players get #Calc temp
tag @s remove valericaToYellow