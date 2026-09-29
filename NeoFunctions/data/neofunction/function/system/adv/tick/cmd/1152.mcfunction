# 命名：1152
# 説明：波葬エル・マタドール
# 説明：進捗達成時 シフトしろやがれ
# >
# =/function neofunction:system/adv/tick/cmd/1152


# 内容
execute if biome ~ ~ ~ neodimension:cerestafesta/boss run return run title @s actionbar {"text":"※注意：このエリアでは海賊の秘宝を使用できません","color":"dark_red","bold":true,"italic":false}
execute if biome ~ ~ ~ neodimension:cerestafesta/boss run return run title @s actionbar {"text":"※注意：このエリアでは海賊の秘宝を使用できません","color":"dark_red","bold":true,"italic":false}
execute if biome ~ ~ ~ neodimension:cerestafesta/village run return run title @s actionbar {"text":"※注意：このエリアでは海賊の秘宝を使用できません","color":"dark_red","bold":true,"italic":false}


execute if block ~ ~ ~ #neofunction:air unless block ~ ~-1 ~ #neofunction:air if score @s sneak_time matches 1.. run setblock ~ ~ ~ minecraft:water[level=1] keep
execute if score @s sneak_time matches 1.. run title @s actionbar {"text":"セットスペル🔯【海賊の秘宝】","color":"light_purple","bold":true,"italic":false}