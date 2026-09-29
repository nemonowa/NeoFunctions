# 命名：experience_bottle
# 説明：魔石
# 説明：実行起点がアイテム
# >/function neofunction:entity/tick
# =/function neofunction:entity/.spawn/obj/item/cmd/experience_bottle


# 内容
execute as @s at @s run playsound minecraft:item.goat_horn.sound.1 record @a[distance=..16] ~ ~ ~ 0.5 1.5
execute as @s at @s run playsound minecraft:block.amethyst_block.break record @a[distance=..16] ~ ~ ~ 1 0.5
execute as @s[nbt={Item:{id:"minecraft:experience_bottle"}}] at @s run tellraw @a[distance=..16] [{"text":"* 討伐対象の","color":"white",hover_event:{"action":"show_text","value":[{"text":"魔物の情報が記憶されている結晶"}]}},{"text":"魔石","color":"gold","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}},{"text":"がドロップした！","color":"white",hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}}]