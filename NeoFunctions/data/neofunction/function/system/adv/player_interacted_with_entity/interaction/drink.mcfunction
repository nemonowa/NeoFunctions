# 命名：drink
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:using_item/carrot_on_a_stick
# =/function neofunction:system/adv/player_interacted_with_entity/interaction/drink



## 内容
playsound minecraft:item.honey_bottle.drink record @s ~ ~ ~ 1 0.8 1
title @s actionbar [{"selector":"@s","color":"blue","bold":true,"italic":false},{"text":" drank the liquid!"}]

# NEXUS
execute at @s if dimension neodimension:nexus run title @s actionbar [{"selector":"@s","color":"blue","bold":true,"italic":false},{"text":" は超流体生金属を食べた！"}]
execute at @s if dimension neodimension:nexus run effect give @s minecraft:saturation 1 0 true
execute at @s if dimension neodimension:nexus run effect give @s minecraft:glowing infinite 0 true

# セレスタ
execute at @s if dimension neodimension:ceresta_festa run title @s actionbar [{"selector":"@s","color":"blue","bold":true,"italic":false},{"text":" は生水を飲んだ！"}]
execute at @s if dimension neodimension:ceresta_festa run effect give @s minecraft:hunger 30 0 false
execute at @s if dimension neodimension:ceresta_festa run effect give @s minecraft:bad_omen 180 0 false


# execute at @s if biome ~ ~ ~ neodimension:cerestafesta run title @s actionbar [{"selector":"@s","color":"blue","bold":true,"italic":false},{"text":" drank the liquid!"}]

tag @e[type=minecraft:interaction,sort=nearest,limit=1,tag=drink] add del
