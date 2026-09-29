# 命名：starshard-score
# 説明：ここがレアリティ持ったアイテムをスロットに入れた時に起動する汎用処理
# 説明：スキルスロットのアイテムをスターシャードのスコアに変換する
# >/function neofunction:system/adv/inventory_changed/50
# =/function neofunction:system/exchange/starshard-score


# VFX
execute at @s run function neofunction:asset/particle/13
execute at @s run playsound entity.player.levelup record @s ~ ~ ~ 1 2 1

# マモン変換システムを追加
execute if data entity @s Inventory[{Slot:9b,count:64,components:{"minecraft:custom_model_data":{floats:[11.0f]}}}] run return run function neofunction:system/exchange/give/m64neo
execute if data entity @s Inventory[{Slot:9b,count:1,components:{"minecraft:custom_model_data":{floats:[12.0f]}}}] run return run function neofunction:system/exchange/give/m64
execute if data entity @s Inventory[{Slot:9b,count:64,components:{"minecraft:custom_model_data":{floats:[12.0f]}}}] run return run function neofunction:system/exchange/give/m4096neo
execute if data entity @s Inventory[{Slot:9b,count:1,components:{"minecraft:custom_model_data":{floats:[13.0f]}}}] run return run function neofunction:system/exchange/give/m4096

# スターシャード
execute store result score count temp run data get entity @s Inventory[{Slot:9b}].count
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_model_data":{floats:[1247.0f]}}}] run scoreboard players operation @s minedSpawner += count temp
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["1"]}}}] run scoreboard players operation 1c temp += count temp
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["2"]}}}] run scoreboard players operation 2c temp += count temp
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["3"]}}}] run scoreboard players operation 3c temp += count temp
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["4"]}}}] run scoreboard players operation 4c temp += count temp
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["5"]}}}] run scoreboard players operation 5c temp += count temp
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["6"]}}}] run scoreboard players operation 6c temp += count temp
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["7"]}}}] run scoreboard players operation 7c temp += count temp
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["8"]}}}] run scoreboard players operation 8c temp += count temp
execute if data entity @s Inventory[{Slot:9b,components:{"minecraft:custom_data":{rare:["9"]}}}] run scoreboard players operation 9c temp += count temp
scoreboard players reset count temp

# 成功演出
function neofunction:asset/tellraw/credit
title @s title [{"color":"#CCFFFF","text":"✯"},{"color":"#D5F4DD","text":"ア"},{"color":"#DDE8BB","text":"イ"},{"color":"#E6DD99","text":"テ"},{"color":"#EED277","text":"ム"},{"color":"#F7C655","text":"の"},{"color":"#FFBB33","text":"還"},{"color":"#F7C655","text":"元"},{"color":"#EED277","text":"に"},{"color":"#E6DD99","text":"成"},{"color":"#DDE8BB","text":"功"},{"color":"#CCFFFF","text":"✯"}]

