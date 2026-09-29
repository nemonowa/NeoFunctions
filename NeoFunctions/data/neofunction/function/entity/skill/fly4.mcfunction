# 命名：fly4
# 説明：
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/fly4


execute at @s run particle dust{color:[0.169,0.310,1.000],scale:1} ~ ~ ~ 0.5 10 0.5 1 10 normal
execute at @s run effect give @e[dx=1,dy=7,dz=1,tag=!boss] minecraft:levitation 1 7 true