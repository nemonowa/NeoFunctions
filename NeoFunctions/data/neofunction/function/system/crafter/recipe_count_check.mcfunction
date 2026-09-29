# 命名：recipe_count_check
# 説明：素材のアイテム数をチェックする
# >/function neofunction:system/crafter/craft_check
# =/function neofunction:system/crafter/recipe_count_check

$execute store result score #Calc1 temp run data get storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:$(a)b}].count
$execute store result score #Calc2 temp run data get block ~ ~-2 ~ Items[{Slot:$(a)b}].count
execute if score #Calc1 temp > #Calc2 temp run data modify storage neofunction:crafter CanCraft set value 0b