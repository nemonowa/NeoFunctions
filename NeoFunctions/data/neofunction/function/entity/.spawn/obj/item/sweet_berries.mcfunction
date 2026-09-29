# 命名：sweet_berries
# 説明：スイートベリー：
# >/function neofunction:entity/.spawn/obj/item/.neo
# =/function neofunction:entity/.spawn/obj/item/sweet_berries


# セレスタなら置き換える
execute as @s at @s unless dimension neodimension:ceresta_festa run return 0

data modify entity @s Item.components set value {"minecraft:can_place_on":[{blocks:"minecraft:grass_block"}],"minecraft:can_break":[{blocks:"minecraft:sweet_berry_bush"}],"minecraft:custom_name":[{"text":"セレスタベリー","color":"aqua","bold":true,"italic":false},{"text":"【Wildberry】","color":"dark_purple"}],"minecraft:lore":[[{"text":"甘酸っぱい","color":"dark_gray","bold":false,"italic":false},{"text":"謎色の果実","color":"dark_purple"},{"text":"。そのままでも食べられるが","color":"dark_gray"}],{"text":"様々な食材や薬品に加工することができる。","color":"dark_gray","bold":false,"italic":false},[{"text":"食べると","color":"dark_gray","bold":false,"italic":false},{"text":"満福度と魔力","color":"light_purple"},{"text":"を回復するが、たまに","color":"dark_gray"},{"text":"毒","color":"dark_green"},{"text":"がある"}]],"minecraft:custom_model_data":{floats:[317.0f]},"minecraft:custom_data":{rare:["1",]}}



