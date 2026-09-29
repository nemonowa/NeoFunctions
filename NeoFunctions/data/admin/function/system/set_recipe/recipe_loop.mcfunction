# 命名：recipe_loop
# 説明：（説明未記載）
# >
# =/function admin:system/set_recipe/recipe_loop
# 【変更：2026-09-27 26.3対応】custom_model_data は小数(float)で保存されるため、レシピ表と同じ整数にして写す
execute if data storage neofunction:crafter Temp.recipe_raw[0].components."minecraft:custom_model_data".floats[0] run execute store result storage neofunction:crafter Temp.recipe_raw[0].CustomModelData int 1 run data get storage neofunction:crafter Temp.recipe_raw[0].components."minecraft:custom_model_data".floats[0]
execute if data storage neofunction:crafter Temp.recipe_raw[0].CustomModelData run data remove storage neofunction:crafter Temp.recipe_raw[0].id
execute if data storage neofunction:crafter Temp.recipe_raw[0].CustomModelData run data remove storage neofunction:crafter Temp.recipe_raw[0].components
data modify storage neofunction:crafter Temp.recipe append from storage neofunction:crafter Temp.recipe_raw[0]
data remove storage neofunction:crafter Temp.recipe_raw[0]
execute if data storage neofunction:crafter Temp.recipe_raw[0] run function admin:system/set_recipe/recipe_loop