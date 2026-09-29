# 命名：.neo
# 説明：変形武器！！！
# 説明：ドロップしたアイテムにCMDがある場合実行される処理
# >/function neofunction:entity/.spawn/obj/item/.neo
# =/function neofunction:entity/.spawn/obj/item/cmd/.neo


# cmd
execute as @s[nbt={Item:{id:"minecraft:experience_bottle"}}] at @s run function neofunction:entity/.spawn/obj/item/cmd/experience_bottle

# 運命石の羅星盤
execute as @s[nbt={Item:{id:"minecraft:compass",components:{"minecraft:custom_model_data":{floats:[0.0f]}}}}] at @s run function neofunction:entity/.spawn/obj/item/cmd/compass
execute as @s[nbt={Item:{id:"minecraft:crossbow",components:{"minecraft:custom_model_data":{floats:[0.0f]}}}}] at @s run function neofunction:entity/.spawn/obj/item/cmd/crossbow
execute as @s[nbt={Item:{id:"minecraft:written_book",components:{"minecraft:custom_model_data":{floats:[0.0f]}}}}] at @s run function neofunction:entity/.spawn/obj/item/cmd/written_book

# カスタムスロット
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[50.0f]}}}}] run function neofunction:entity/.spawn/obj/item/cmd/50

# importantitem：属性の証、セレスティアルクリスタル
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1329.0f]}}}}] run function neofunction:asset/data/attract
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1330.0f]}}}}] run function neofunction:asset/data/attract
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1331.0f]}}}}] run function neofunction:asset/data/attract
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1332.0f]}}}}] run function neofunction:asset/data/attract
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1661.0f]}}}}] run function neofunction:asset/data/attract
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1662.0f]}}}}] run function neofunction:asset/data/attract
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1663.0f]}}}}] run function neofunction:asset/data/attract
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1664.0f]}}}}] run function neofunction:asset/data/attract
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1665.0f]}}}}] run function neofunction:asset/data/attract
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1666.0f]}}}}] run function neofunction:asset/data/attract
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1667.0f]}}}}] run function neofunction:asset/data/attract

# 転生リンゴ
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[839.0f]}}}}] run function neofunction:entity/.spawn/obj/item/cmd/839

# 異空の火器（旧式処理
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[993.0f]}}}}] run function neofunction:entity/.spawn/obj/item/cmd/993

# 異空の計器
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[994.0f]}}}}] run function neofunction:entity/.spawn/obj/item/cmd/994
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}}] run function neofunction:entity/.spawn/obj/item/cmd/995
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[996.0f]}}}}] run function neofunction:entity/.spawn/obj/item/cmd/996

# 最高神の約櫃
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[997.0f]}}}}] run function neofunction:entity/.spawn/obj/item/cmd/997
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[998.0f]}}}}] run function neofunction:entity/.spawn/obj/item/cmd/998
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[999.0f]}}}}] run function neofunction:entity/.spawn/obj/item/cmd/999

# 異空の火器
execute if data entity @s Item.components{"minecraft:custom_model_data":{floats:[1405.0f]}} at @s on origin if predicate neofunction:is_sneaking as @e[distance=0] run function neofunction:entity/.spawn/obj/item/cmd/1406
execute if data entity @s Item.components{"minecraft:custom_model_data":{floats:[1405.0f]}} at @s on origin unless predicate neofunction:is_sneaking as @e[distance=0] run function neofunction:entity/.spawn/obj/item/cmd/1405

execute if data entity @s Item.components{"minecraft:custom_model_data":{floats:[1406.0f]}} at @s on origin if predicate neofunction:is_sneaking as @e[distance=0] run function neofunction:entity/.spawn/obj/item/cmd/1407
execute if data entity @s Item.components{"minecraft:custom_model_data":{floats:[1406.0f]}} at @s on origin unless predicate neofunction:is_sneaking as @e[distance=0] run function neofunction:entity/.spawn/obj/item/cmd/1406

execute if data entity @s Item.components{"minecraft:custom_model_data":{floats:[1407.0f]}} at @s on origin if predicate neofunction:is_sneaking as @e[distance=0] run function neofunction:entity/.spawn/obj/item/cmd/1405
execute if data entity @s Item.components{"minecraft:custom_model_data":{floats:[1407.0f]}} at @s on origin unless predicate neofunction:is_sneaking as @e[distance=0] run function neofunction:entity/.spawn/obj/item/cmd/1407

# 桜の呼吸(SakuraBreathing)
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1767.0f]}}}}] run function neofunction:entity/.spawn/obj/item/cmd/1767/1

# レアリティ・アイテムのドロップ処理
execute at @s unless data entity @s Item.components."minecraft:custom_data".check run function neofunction:entity/.spawn/obj/item/rare

