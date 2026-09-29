# 命名：1018-1
# 説明：
# >/function neofunction:system/adv/entity_hurt_player/1018-0
# =/function neofunction:system/adv/entity_hurt_player/1018-1


execute in neodimension:nexus run summon marker 0.0 0 0.0 {Tags:["1018"]}
execute store result storage neofunction:item/1018 rotation_x float 1 run random value -179..180
execute store result storage neofunction:item/1018 rotation_y float 1 run random value -90..0
data modify entity @e[type=minecraft:marker,tag=1018,limit=1] Rotation[0] set from storage neofunction:item/1018 rotation_x
data modify entity @e[type=minecraft:marker,tag=1018,limit=1] Rotation[1] set from storage neofunction:item/1018 rotation_y
execute as @e[type=minecraft:marker,tag=1018,limit=1] at @s run tp @s ^ ^ ^0.4
function neofunction:system/adv/entity_hurt_player/1018-2 with entity @e[type=minecraft:marker,tag=1018,limit=1]
kill @e[type=minecraft:marker,tag=1018,limit=1]