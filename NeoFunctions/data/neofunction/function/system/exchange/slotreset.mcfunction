# 命名：slotreset
# 説明：スキルスロットのアイテムをスターシャードのスコアに変換する
# >/function neofunction:system/adv/inventory_changed/50
# =/function neofunction:system/exchange/slotreset


# VFX
execute at @s run function neofunction:asset/particle/13
execute at @s run playsound entity.player.levelup record @s ~ ~ ~ 1 2 1

# 内容
summon armor_stand ~ ~ ~ {Tags:["aaa"]}
item replace entity @e[tag=aaa,type=minecraft:armor_stand,distance=..3,limit=1] weapon.mainhand from entity @s container.9
damage @e[tag=aaa,type=minecraft:armor_stand,distance=..3,limit=1] 10 minecraft:explosion
execute as @e[type=item,distance=..3,limit=1] run data remove entity @s Item.components."minecraft:custom_data".slot
execute as @e[type=minecraft:item,distance=..3] at @s run data merge entity @s {Tags:["check"]}
execute as @e[type=minecraft:item,distance=..3] at @s run data merge entity @s {PickupDelay:0}
tag @e[tag=aaa,type=minecraft:armor_stand,distance=..3,limit=1] add del
item replace entity @s container.9 with air


# 成功演出

title @s title [{"text":"✯","color":"#CCFFFF"},{"text":"スロットの解除に成功","color":"#FF94FF"},{"text":"✯","color":"#CCFFFF"}]