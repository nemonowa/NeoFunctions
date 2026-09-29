# 命名：starshard
# 説明：スキルスロットのアイテムをスターシャードのアイテムに変換する
# >/function neofunction:system/adv/inventory_changed/50
# =/function neofunction:system/exchange/starshard


# VFX
execute at @s run function neofunction:asset/particle/13
execute at @s run playsound entity.player.levelup record @s ~ ~ ~ 1 2 1


# 内容
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_model_data":{floats:[1247.0f]}}}] run scoreboard players add @s minedSpawner 1

execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["0"]}}}] run return 0
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["st"]}}}] run return 0
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["se"]}}}] run return 0

execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["1"]}}}] run loot spawn ~ ~ ~ loot neofunction:item/1
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["2"]}}}] run loot spawn ~ ~ ~ loot neofunction:item/2
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["3"]}}}] run loot spawn ~ ~ ~ loot neofunction:item/3
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["4"]}}}] run loot spawn ~ ~ ~ loot neofunction:item/4
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["5"]}}}] run loot spawn ~ ~ ~ loot neofunction:item/5
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["6"]}}}] run loot spawn ~ ~ ~ loot neofunction:item/6
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["7"]}}}] run loot spawn ~ ~ ~ loot neofunction:item/7
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["8"]}}}] run loot spawn ~ ~ ~ loot neofunction:item/8
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["9"]}}}] run loot spawn ~ ~ ~ loot neofunction:item/9

# すぐに拾いてぇよ
execute at @s run data merge entity @e[type=minecraft:item,distance=..1,limit=1] {PickupDelay:1}

# 成功演出
title @s title [{"color":"#CCFFFF","text":"✯"},{"color":"#D5F4DD","text":"ア"},{"color":"#DDE8BB","text":"イ"},{"color":"#E6DD99","text":"テ"},{"color":"#EED277","text":"ム"},{"color":"#F7C655","text":"の"},{"color":"#FFBB33","text":"還"},{"color":"#F7C655","text":"元"},{"color":"#EED277","text":"に"},{"color":"#E6DD99","text":"成"},{"color":"#DDE8BB","text":"功"},{"color":"#CCFFFF","text":"✯"}]

