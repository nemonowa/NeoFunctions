# 命名：.motion
# 説明：（説明未記載）
# >/function neofunction:system/adv/using_item/fireweapon/shot/mainhand
# >/function neofunction:system/adv/using_item/fireweapon/shot/offhand
# =/function neofunction:system/adv/using_item/fireweapon/shot/.motion

#summonした矢のmotionをいじる
execute store result storage neofunction:fireweapon motionX1 double 1 run data get entity @s Pos[0] 1000
execute store result storage neofunction:fireweapon motionY1 double 1 run data get entity @s Pos[1] 1000
execute store result storage neofunction:fireweapon motionZ1 double 1 run data get entity @s Pos[2] 1000

teleport @s ^ ^ ^0.1

execute store result storage neofunction:fireweapon motionX2 double 1 run data get entity @s Pos[0] 1000
execute store result storage neofunction:fireweapon motionY2 double 1 run data get entity @s Pos[1] 1000
execute store result storage neofunction:fireweapon motionZ2 double 1 run data get entity @s Pos[2] 1000

execute store result score #Calc1 temp run data get storage neofunction:fireweapon motionX1
execute store result score #Calc2 temp run data get storage neofunction:fireweapon motionX2
execute store result entity @s Motion[0] double 0.020 run scoreboard players operation #Calc2 temp -= #Calc1 temp


execute store result score #Calc1 temp run data get storage neofunction:fireweapon motionY1
execute store result score #Calc2 temp run data get storage neofunction:fireweapon motionY2
execute store result entity @s Motion[1] double 0.020 run scoreboard players operation #Calc2 temp -= #Calc1 temp

execute store result score #Calc1 temp run data get storage neofunction:fireweapon motionZ1
execute store result score #Calc2 temp run data get storage neofunction:fireweapon motionZ2
execute store result entity @s Motion[2] double 0.020 run scoreboard players operation #Calc2 temp -= #Calc1 temp
data modify entity @s Owner set from entity @p UUID

tag @s remove Motion
