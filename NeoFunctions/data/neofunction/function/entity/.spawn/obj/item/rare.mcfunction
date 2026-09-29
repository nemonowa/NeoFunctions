# 命名：rare
# 説明：エンティティ処理
# >/function neofunction:entity/.spawn/obj/item/cmd/.neo
# =/function neofunction:entity/.spawn/obj/item/rare

# 内容
# 次に出なくする
data modify entity @s Item.components."minecraft:custom_data".check set value 1

# 花火の星を除外
# execute as @s[nbt={Item:{id:"minecraft:firework_star"}}] run return 1

# コモン・アイテム
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{rare:["1"]}}}}] run function neofunction:entity/.spawn/obj/item/rare/1

# レア・アイテム
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{rare:["2"]}}}}] run function neofunction:entity/.spawn/obj/item/rare/2

# レガシー・アイテム
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{rare:["3"]}}}}] run function neofunction:entity/.spawn/obj/item/rare/3

# エピック・アイテム
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{rare:["4"]}}}}] run function neofunction:entity/.spawn/obj/item/rare/4

# スーパーレア・アイテム
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{rare:["5"]}}}}] run function neofunction:entity/.spawn/obj/item/rare/5

# レジェンダリー・アイテム
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{rare:["6"]}}}}] run function neofunction:entity/.spawn/obj/item/rare/6

# アルティメット・アイテム
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{rare:["7"]}}}}] run function neofunction:entity/.spawn/obj/item/rare/7

# ゴッズ・アイテム
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{rare:["8"]}}}}] run function neofunction:entity/.spawn/obj/item/rare/8

# ワールズ・アイテム
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{rare:["9"]}}}}] run function neofunction:entity/.spawn/obj/item/rare/9

# ST・アイテム
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{rare:["st"]}}}}] run function neofunction:entity/.spawn/obj/item/rare/st

# SE・アイテム
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{rare:["se"]}}}}] run function neofunction:entity/.spawn/obj/item/rare/se

