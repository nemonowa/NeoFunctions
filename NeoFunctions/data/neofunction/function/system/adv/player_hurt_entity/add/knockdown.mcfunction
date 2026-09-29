# 命名：knockdown
# 説明：システム
# 説明：<neofunction:player_hurt_entity/.all
# 説明：進捗達成時
# >/function neofunction:system/scoreboard/showhp
# =/function neofunction:system/adv/player_hurt_entity/add/knockdown



## 内容
title @s subtitle {"text":"                    ↠KnockDown!!!","color":"#D60000","bold":true,"italic":true}
title @s title ""

#演出
playsound minecraft:entity.zombie.attack_iron_door record @s ~ ~ ~ 0.1 1.3 0


#ダメージ
execute as @s at @s as @e[tag=hit] run data merge entity @s {Motion:[0d,-0.1d,0d]}