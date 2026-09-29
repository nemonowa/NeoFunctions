# 命名：c8
# 説明：スコアをアイテムに換金する
# >
# =/function neofunction:system/exchange/give/c8


# 内容
execute if score 8c temp < @s ShardC run return run title @a[distance=..8] actionbar [{"text":"クレジットが足らない：","color":"red"},{"score":{"name":"8c","objective":"temp"},"color":"gold","bold":true}]
title @a[distance=..8] actionbar [{"text":"スターシャード第8等星：","color":"white","bold":true},{"score":{"name":"8c","objective":"temp"},"color":"red"}]

# 換金
scoreboard players operation 8c temp -= @s ShardC
loot spawn ~ ~ ~ loot neofunction:item/8
data merge entity @e[type=item,distance=..1,limit=1] {PickupDelay:1}
execute at @s store result entity @e[type=item,distance=..1,limit=1,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[8.0f]}}}},nbt=!{Item:{components:{"minecraft:custom_data":{check:1}}}}] Item.count byte 1 run scoreboard players get @s ShardC
# 演出
execute at @s run function neofunction:asset/particle/13
playsound entity.player.levelup record @a[distance=..8] ~ ~ ~ 1 2 1
playsound minecraft:entity.arrow.hit_player record @a[distance=..8] ~ ~ ~ 1 2 1
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.1 99 force

# 通知
function neofunction:asset/tellraw/credit
title @s title [{"color":"#CCFFFF","text":"✯"},{"color":"#D5F4DD","text":"ア"},{"color":"#DDE8BB","text":"イ"},{"color":"#E6DD99","text":"テ"},{"color":"#EED277","text":"ム"},{"color":"#F7C655","text":"の"},{"color":"#FFBB33","text":"還"},{"color":"#F7C655","text":"元"},{"color":"#EED277","text":"に"},{"color":"#E6DD99","text":"成"},{"color":"#DDE8BB","text":"功"},{"color":"#CCFFFF","text":"✯"}]


#/setblock ~ ~ ~ birch_sign[rotation=12,waterlogged=false]{front_text:{color:"black",has_glowing_text:0b,messages:['{"text":"۞スペルサイン۞","color":"light_purple","bold":true,"italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function neofunction:system/exchange/give/1c"}}','{"text":"「通貨取引」","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/setblock ~ ~-2 ~ minecraft:redstone_block"}}','{"text":"↓クレジット↓","color":"white","clickEvent":{"action":"run_command","value":"/setblock ~ ~-2 ~ minecraft:lapis_block"}}','{"text":"換金アイテム【1lv】","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"./command4"}}']},is_waxed:0b} replace