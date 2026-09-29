# 命名：stardust
# 説明：オフハンドのアイテムをスターシャードに換金する
# 説明：花火の星
# >/function neofunction:asset/skill/34
# =/function neofunction:system/exchange/stardust


# 内容
execute if entity @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{rare:["1"]}}}}}] run return run function neofunction:system/exchange/stardust/1
execute if entity @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{rare:["2"]}}}}}] run return run function neofunction:system/exchange/stardust/2
execute if entity @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{rare:["3"]}}}}}] run return run function neofunction:system/exchange/stardust/3
execute if entity @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{rare:["4"]}}}}}] run return run function neofunction:system/exchange/stardust/4
execute if entity @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{rare:["5"]}}}}}] run return run function neofunction:system/exchange/stardust/5
execute if entity @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{rare:["6"]}}}}}] run return run function neofunction:system/exchange/stardust/6
execute if entity @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{rare:["7"]}}}}}] run return run function neofunction:system/exchange/stardust/7
execute if entity @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{rare:["8"]}}}}}] run return run function neofunction:system/exchange/stardust/8
execute if entity @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{rare:["9"]}}}}}] run return run function neofunction:system/exchange/stardust/9


#演出
title @s title {"text":"交換可能アイテムがない！","color":"red"}
playsound minecraft:block.dispenser.fail record @s ~ ~ ~ 1 1.2 1
