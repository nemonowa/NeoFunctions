# 命名：fly1
# 説明：
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/fly1


execute at @s positioned ~-0.5 -70 ~-0.5 run data merge entity @s {fall_distance:0f}
execute at @s positioned ~-0.5 -70 ~-0.5 run tp @s[dy=-29] @p
