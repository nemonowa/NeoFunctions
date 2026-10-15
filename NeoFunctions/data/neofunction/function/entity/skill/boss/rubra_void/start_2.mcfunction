# 命名：start_2
# 説明：舞台ができたあと：夜で止め、印の付いた人を舞台へ移し、ボスの浮かぶ所にヴォイド・ゼロを出す
# 実行条件：schedule
# >/function neofunction:entity/skill/boss/rubra_void/start
# =/function neofunction:entity/skill/boss/rubra_void/start_2

# 内容
function neofunction:entity/skill/boss/rubra_void/night
function neofunction:entity/skill/boss/rubra_void/tosky
execute in neodimension:ceresta_festa as @e[type=marker,tag=rubra_sky_boss,limit=1] at @s run function neofunction:entity/skill/boss/rubra_void/spawn
title @a[tag=rubra_sky_in] subtitle {"text":"星の道の先、街の真上の夜空","color":"gray"}
title @a[tag=rubra_sky_in] title {"text":"星還りの空","color":"#B8D8FF","bold":true}
tag @a remove rubra_sky_in
