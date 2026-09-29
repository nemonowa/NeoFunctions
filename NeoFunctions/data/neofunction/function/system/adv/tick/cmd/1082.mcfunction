# 命名：1082
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/tick/cmd/1082


# 内容
execute unless entity @s[nbt={active_effects:[{id:"minecraft:slow_falling",amplifier:0b}]}] run title @s actionbar {"text":"🔯セットスペル発動【空間の懐】","color":"light_purple","bold":true,"italic":false}
effect give @s minecraft:slow_falling 6
execute as @s at @s run playsound entity.enderman.ambient record @a[distance=..8] ~ ~ ~ 1.0 0.8

