# 命名：bright2
# 説明：
# >/function neofunction:entity/skill/boss/larusha/bright1 実行者as @e[type=wither_skeleton,tag=larusha,tag=!nowskilling] as @s[scores={HP=..200},tag=!ult2] as @e[type=armor_stand,tag=bright] 実行位置@s
# =/function neofunction:entity/skill/boss/larusha/bright2

#brightタグがもったアマスタにパーティクルを生成させ続けるだけのためのファックション

execute as @e[type=armor_stand,tag=bright] at @s run function neofunction:asset/particle/sphere/3_6m
execute as @e[type=armor_stand,tag=bright] run schedule function neofunction:entity/skill/boss/larusha/bright2 3t





