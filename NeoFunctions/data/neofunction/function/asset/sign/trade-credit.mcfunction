# 命名：trade-credit
# 説明：スポナー破壊クレジットをアイテムに換金するスペルサイン
# >
# =/function neofunction:asset/sign/trade-credit


# 内容
execute if score @s minedSpawner matches ..1 run return run tellraw @s [{"text":"スポナー破壊クレジットが足らない：","color":"white"},{"score":{"name":"@s","objective":"minedSpawner"},"color":"gold","bold":true}]
title @a[distance=..8] actionbar [{"text":"スポナー破壊クレジット：","color":"gold","bold":true},{"score":{"name":"@s","objective":"minedSpawner"}}]

# 換金
scoreboard players remove @s minedSpawner 1
loot spawn ~ ~ ~ loot neofunction:item/1247
data merge entity @e[type=minecraft:item,distance=..1,limit=1] {PickupDelay:0}


# 演出
execute at @s run function neofunction:asset/particle/13
playsound entity.player.levelup record @a[distance=..8] ~ ~ ~ 1 2 1
playsound minecraft:entity.arrow.hit_player record @a[distance=..8] ~ ~ ~ 1 2 1
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.1 99 force

title @s title [{"color":"#CCFFFF","text":"✯"},{"color":"#D5F4DD","text":"ア"},{"color":"#DDE8BB","text":"イ"},{"color":"#E6DD99","text":"テ"},{"color":"#EED277","text":"ム"},{"color":"#F7C655","text":"の"},{"color":"#FFBB33","text":"還"},{"color":"#F7C655","text":"元"},{"color":"#EED277","text":"に"},{"color":"#E6DD99","text":"成"},{"color":"#DDE8BB","text":"功"},{"color":"#CCFFFF","text":"✯"}]


#/setblock ~ ~ ~ birch_sign[rotation=12,waterlogged=false]{front_text:{color:"black",has_glowing_text:0b,messages:['{"text":"۞スペルサイン۞","color":"light_purple","bold":true,"italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function neofunction:asset/sign/trade-credit"}}','{"text":"「通貨取引」","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/setblock ~ ~-2 ~ minecraft:redstone_block"}}','{"text":"↓破壊クレジット↓","color":"white","clickEvent":{"action":"run_command","value":"/setblock ~ ~-2 ~ minecraft:lapis_block"}}','{"text":"換金アイテム【$$$】","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"./command4"}}']},is_waxed:0b} replace