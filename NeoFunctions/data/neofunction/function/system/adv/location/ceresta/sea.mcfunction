# 命名：sea
# 説明：セレスタにいます定期
# 説明：1s
# >
# =/function neofunction:system/adv/location/ceresta/sea


## 内容
title @s actionbar [{"text":"神風の吹く未知海域にいる...","color":"dark_aqua","bold":true}]

#damage @s 1 minecraft:out_of_world
#effect give @s minecraft:levitation 1 33 false
#execute as @s[gamemode=!creative] at @s if entity @s[y=42,dy=-99] run tp @s ~ 45 ~
#execute as @s[gamemode=!creative] at @s if entity @s[y=199,dy=99] run function #neofunction:asset/event/prologue


#
#execute as @s at @s run particle sweep_attack ^0 ^0 ^0 1.5 22 1.5 0 99 force
#execute as @s at @s run particle end_rod ^0 ^0 ^0 2 4 2 0 9 force
#execute as @s at @s run particle dripping_water ^0 ^0 ^0 3 6 3 0 9 force
#execute as @s at @s run particle ash ^0 ^0 ^0 4 6 4 0 11 force

# execute unless entity @s[x=0,y=-99,z=0,dx=4096,dy=999,dz=4096] run function neofunction:asset/event/prologue
