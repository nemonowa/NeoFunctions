# 命名：result_loop
# 説明：
# >/function neofunction:system/crafter/craft_check
# =/function neofunction:system/crafter/result_loop

execute unless data storage neofunction:crafter Temp.RunningRecipe.result[0].CustomModelData run data modify storage neofunction:crafter Temp.RunningRecipe.result_item append from storage neofunction:crafter Temp.RunningRecipe.result[0]
execute if data storage neofunction:crafter Temp.RunningRecipe.result[0].CustomModelData run function neofunction:system/crafter/item_macro with storage neofunction:crafter Temp.RunningRecipe.result[0]
execute if data storage neofunction:crafter Temp.RunningRecipe.result[0].CustomModelData run data modify storage neofunction:crafter Temp.RunningRecipe.result_item append from entity @e[tag=resolve,limit=1,sort=nearest] item
execute if data storage neofunction:crafter Temp.RunningRecipe.result[0].CustomModelData run data modify storage neofunction:crafter Temp.RunningRecipe.result_item[-1].count set from storage neofunction:crafter Temp.RunningRecipe.result[0].count
execute if data storage neofunction:crafter Temp.RunningRecipe.result[0].CustomModelData run data modify storage neofunction:crafter Temp.RunningRecipe.result_item[-1].Slot set from storage neofunction:crafter Temp.RunningRecipe.result[0].Slot
data remove storage neofunction:crafter Temp.RunningRecipe.result[0]
execute if data storage neofunction:crafter Temp.RunningRecipe.result[0] run function neofunction:system/crafter/result_loop