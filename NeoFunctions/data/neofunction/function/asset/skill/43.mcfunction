# 命名：43
# 説明：うま吸い
# >/function neofunction:system/adv/player_interacted_with_entity/horse
# =/function neofunction:asset/skill/43


# 内容：馬にインタラクトかトリガーすると、付近256m以内の鞍のついた馬を呼び寄せるスキル。
execute unless entity @e[type=horse,distance=6..256,nbt={equipment:{saddle:{id:"minecraft:saddle"}}}] run return run title @s actionbar {"text":"周囲に鞍付きの馬がいない！","color":"red","bold":true,"italic":false}
teleport @e[type=horse,distance=6..256,limit=1,nbt={equipment:{saddle:{id:"minecraft:saddle",count:1}}}] @s
 
# 演出：
playsound entity.horse.gallop record @s ~ ~ ~ 1 1.25
particle campfire_cosy_smoke ~ ~1.2 ~ 0.1 0.5 0.1 0.1 9 force
particle smoke ~ ~1.2 ~ 0.1 0.5 0.1 0.1 33 force
title @s actionbar {"text":"۞スキル【うま吸い】発動！","color":"light_purple","bold":true}


