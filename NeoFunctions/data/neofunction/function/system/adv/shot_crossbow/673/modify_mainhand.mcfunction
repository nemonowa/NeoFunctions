# 命名：modify_mainhand
# 説明：システム
# 説明：進捗達成時（ベットで寝る
# >/function neofunction:slept_in_bed
# =/function neofunction:system/adv/shot_crossbow/673/modify_mainhand

## 内容
#装弾数調整
execute as @a if function neofunction:system/hand if data storage neofunction:hand {item:{components:{"minecraft:custom_name":{"text":"GUN <0>","bold":true}}}} run item modify entity @s weapon.mainhand neofunction:gun/673/6
execute as @a if function neofunction:system/hand if data storage neofunction:hand {item:{components:{"minecraft:custom_name":{"text":"GUN <1>","bold":true}}}} run item modify entity @s weapon.mainhand neofunction:gun/673/0
execute as @a if function neofunction:system/hand if data storage neofunction:hand {item:{components:{"minecraft:custom_name":{"text":"GUN <2>","bold":true}}}} run item modify entity @s weapon.mainhand neofunction:gun/673/1
execute as @a if function neofunction:system/hand if data storage neofunction:hand {item:{components:{"minecraft:custom_name":{"text":"GUN <3>","bold":true}}}} run item modify entity @s weapon.mainhand neofunction:gun/673/2
execute as @a if function neofunction:system/hand if data storage neofunction:hand {item:{components:{"minecraft:custom_name":{"text":"GUN <4>","bold":true}}}} run item modify entity @s weapon.mainhand neofunction:gun/673/3
execute as @a if function neofunction:system/hand if data storage neofunction:hand {item:{components:{"minecraft:custom_name":{"text":"GUN <5>","bold":true}}}} run item modify entity @s weapon.mainhand neofunction:gun/673/4
execute as @a if function neofunction:system/hand if data storage neofunction:hand {item:{components:{"minecraft:custom_name":{"text":"GUN <6>","bold":true}}}} run item modify entity @s weapon.mainhand neofunction:gun/673/5




## 再使用のために進捗剥奪
advancement revoke @a only neofunction:shot_crossbow/673