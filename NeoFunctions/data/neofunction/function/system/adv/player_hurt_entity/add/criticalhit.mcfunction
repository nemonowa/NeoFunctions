# 命名：criticalhit
# 説明：システム
# >/function neofunction:player_hurt_entity/.all
# =/function neofunction:system/adv/player_hurt_entity/add/criticalhit



# 内容
title @s subtitle {"text":"                    ↠CriticalHit!!!","color":"#D60000","bold":true,"italic":true}
title @s title ""


#演出
#playsound minecraft:entity.zombie.attack_iron_door record @s ~ ~ ~ 0.1 1.3 0


#ダメージ
execute store result storage neofunction:player atk double 0.1 run scoreboard players get @s ATK
execute as @s at @s as @e[tag=hit] run function neofunction:system/dmg/generic with storage neofunction:player