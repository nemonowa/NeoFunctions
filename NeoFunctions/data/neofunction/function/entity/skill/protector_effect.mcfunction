# 命名：protector_effect
# 説明：
# >
# =/function neofunction:entity/skill/protector_effect
particle dust{color:[1,0,0],scale:0.6} ~ ~ ~ 0 0 0 0 1 force @a[distance=..20]
execute unless entity @s[dx=1,dy=1,dz=1] positioned ^ ^ ^0.5 if entity @s[distance=..20] run function neofunction:entity/skill/protector_effect
