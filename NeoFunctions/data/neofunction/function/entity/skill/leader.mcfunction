# 命名：leader
# 説明：
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/leader


execute at @s[tag=leader] as @e[distance=2..32,team=red,tag=!boss,limit=10] facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.08 ~ ~