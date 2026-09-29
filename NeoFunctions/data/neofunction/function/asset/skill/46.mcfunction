# 命名：46
# 説明：ウマタタビうまあい
# >/function neofunction:system/adv/player_interacted_with_entity/horse
# =/function neofunction:asset/skill/46


# 内容：馬に必ず乗れるようになるスキル。
execute as @e[type=horse,distance=..6] run data merge entity @s {Tame:1b}

 
# 演出：
playsound minecraft:entity.horse.ambient record @s ~ ~ ~ 1 1.5
particle minecraft:heart ~ ~1.2 ~ 0.1 0.5 0.1 0.1 9 force
title @s actionbar {"text":"۞スキル【ウマタタビうまあい】発動！","color":"light_purple","bold":true}

