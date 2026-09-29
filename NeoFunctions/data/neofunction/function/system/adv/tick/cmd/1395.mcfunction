# 命名：1395
# 説明：進捗達成時
# >1s
# =/function neofunction:system/adv/tick/cmd/1395


# 内容
tellraw @s [{"text":"🔯【六道輪廻の魔眼】","color":"light_purple"}]
execute unless entity @s[nbt={Inventory:[],equipment:{offhand:{}}}] run item replace entity @s weapon.offhand with minecraft:totem_of_undying




