# 命名：1053
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/tick/cmd/1053


# 内容
execute unless entity @s[nbt={active_effects:[{id:"minecraft:jump_boost",amplifier:0b}]}] run title @s actionbar {"text":"🔯セットスペル発動【弾性の加護】","color":"light_purple","bold":true,"italic":false}
effect give @s minecraft:jump_boost 11 1

