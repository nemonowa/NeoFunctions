# 命名：craft_check
# 説明：レシピ確定後本当にクラフトできるかチェック
# 実行条件：改良型作業台のクラフトするレシピ確定時
# >/function neofunction:system/crafter/check_loop
# =/function neofunction:system/crafter/craft_check


data modify storage neofunction:crafter CanCraft set value 1b
# 素材の数が足りている
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:0b}] run function neofunction:system/crafter/recipe_count_check {a:0}
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:1b}] run function neofunction:system/crafter/recipe_count_check {a:1}
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:2b}] run function neofunction:system/crafter/recipe_count_check {a:2}
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:9b}] run function neofunction:system/crafter/recipe_count_check {a:9}
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:10b}] run function neofunction:system/crafter/recipe_count_check {a:10}
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:11b}] run function neofunction:system/crafter/recipe_count_check {a:11}
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:18b}] run function neofunction:system/crafter/recipe_count_check {a:18}
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:19b}] run function neofunction:system/crafter/recipe_count_check {a:19}
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:20b}] run function neofunction:system/crafter/recipe_count_check {a:20}

# CMDのみ指定のアイテムを展開
summon item_display ~ ~ ~ {Tags:["resolve","del"],view_range:0}
function neofunction:system/crafter/result_loop
kill @e[tag=resolve,limit=1,sort=nearest,distance=..0.01]

#　クラフト後のスロットがスタック可能か空
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:6b}] if data block ~ ~-2 ~ Items[{Slot:6b}] run function neofunction:system/crafter/result_check_macro {a:6}
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:7b}] if data block ~ ~-2 ~ Items[{Slot:7b}] run function neofunction:system/crafter/result_check_macro {a:7}
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:8b}] if data block ~ ~-2 ~ Items[{Slot:8b}] run function neofunction:system/crafter/result_check_macro {a:8}
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:15b}] if data block ~ ~-2 ~ Items[{Slot:15b}] run function neofunction:system/crafter/result_check_macro {a:15}
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:16b}] if data block ~ ~-2 ~ Items[{Slot:16b}] run function neofunction:system/crafter/result_check_macro {a:16}
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:17b}] if data block ~ ~-2 ~ Items[{Slot:17b}] run function neofunction:system/crafter/result_check_macro {a:17}
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:24b}] if data block ~ ~-2 ~ Items[{Slot:24b}] run function neofunction:system/crafter/result_check_macro {a:24}
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:25b}] if data block ~ ~-2 ~ Items[{Slot:25b}] run function neofunction:system/crafter/result_check_macro {a:25}
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:26b}] if data block ~ ~-2 ~ Items[{Slot:26b}] run function neofunction:system/crafter/result_check_macro {a:26}
# クラフト不可能なら終わり
execute if data storage neofunction:crafter {CanCraft:0b} run return 0

## クラフト可能ならクラフトする

# それぞれのスロットを必要個数分減らす
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:0b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:0b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:0b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:0b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:0b}] run scoreboard players operation #Calc1 temp -= #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:0b}] store result block ~ ~-2 ~ Items[{Slot:0b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:1b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:1b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:1b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:1b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:1b}] run scoreboard players operation #Calc1 temp -= #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:1b}] store result block ~ ~-2 ~ Items[{Slot:1b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:2b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:2b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:2b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:2b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:2b}] run scoreboard players operation #Calc1 temp -= #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:2b}] store result block ~ ~-2 ~ Items[{Slot:2b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:9b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:9b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:9b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:9b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:9b}] run scoreboard players operation #Calc1 temp -= #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:9b}] store result block ~ ~-2 ~ Items[{Slot:9b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:10b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:10b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:10b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:10b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:10b}] run scoreboard players operation #Calc1 temp -= #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:10b}] store result block ~ ~-2 ~ Items[{Slot:10b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:11b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:11b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:11b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:11b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:11b}] run scoreboard players operation #Calc1 temp -= #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:11b}] store result block ~ ~-2 ~ Items[{Slot:11b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:18b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:18b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:18b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:18b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:18b}] run scoreboard players operation #Calc1 temp -= #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:18b}] store result block ~ ~-2 ~ Items[{Slot:18b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:19b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:19b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:19b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:19b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:19b}] run scoreboard players operation #Calc1 temp -= #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:19b}] store result block ~ ~-2 ~ Items[{Slot:19b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:20b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:20b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:20b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:20b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:20b}] run scoreboard players operation #Calc1 temp -= #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.recipe[{Slot:20b}] store result block ~ ~-2 ~ Items[{Slot:20b}].count byte 1 run scoreboard players get #Calc1 temp


# 完成品スロットにアイテムがある場合
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:6b}] if data block ~ ~-2 ~ Items[{Slot:6b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:6b}].count
# 【変更：2026-09-28 26.3対応】アイテムの数の項目が 26.3 では Count（byte）から count（int）に変わった
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:6b}] if data block ~ ~-2 ~ Items[{Slot:6b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:6b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:6b}] if data block ~ ~-2 ~ Items[{Slot:6b}] run scoreboard players operation #Calc1 temp += #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:6b}] if data block ~ ~-2 ~ Items[{Slot:6b}] store result block ~ ~-2 ~ Items[{Slot:6b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:7b}] if data block ~ ~-2 ~ Items[{Slot:7b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:7b}].count
# 【変更：2026-09-28 26.3対応】アイテムの数の項目が 26.3 では Count（byte）から count（int）に変わった
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:7b}] if data block ~ ~-2 ~ Items[{Slot:7b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:7b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:7b}] if data block ~ ~-2 ~ Items[{Slot:7b}] run scoreboard players operation #Calc1 temp += #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:7b}] if data block ~ ~-2 ~ Items[{Slot:7b}] store result block ~ ~-2 ~ Items[{Slot:7b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:8b}] if data block ~ ~-2 ~ Items[{Slot:8b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:8b}].count
# 【変更：2026-09-28 26.3対応】アイテムの数の項目が 26.3 では Count（byte）から count（int）に変わった
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:8b}] if data block ~ ~-2 ~ Items[{Slot:8b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:8b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:8b}] if data block ~ ~-2 ~ Items[{Slot:8b}] run scoreboard players operation #Calc1 temp += #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:8b}] if data block ~ ~-2 ~ Items[{Slot:8b}] store result block ~ ~-2 ~ Items[{Slot:8b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:15b}] if data block ~ ~-2 ~ Items[{Slot:15b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:15b}].count
# 【変更：2026-09-28 26.3対応】アイテムの数の項目が 26.3 では Count（byte）から count（int）に変わった
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:15b}] if data block ~ ~-2 ~ Items[{Slot:15b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:15b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:15b}] if data block ~ ~-2 ~ Items[{Slot:15b}] run scoreboard players operation #Calc1 temp += #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:15b}] if data block ~ ~-2 ~ Items[{Slot:15b}] store result block ~ ~-2 ~ Items[{Slot:15b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:16b}] if data block ~ ~-2 ~ Items[{Slot:16b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:16b}].count
# 【変更：2026-09-28 26.3対応】アイテムの数の項目が 26.3 では Count（byte）から count（int）に変わった
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:16b}] if data block ~ ~-2 ~ Items[{Slot:16b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:16b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:16b}] if data block ~ ~-2 ~ Items[{Slot:16b}] run scoreboard players operation #Calc1 temp += #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:16b}] if data block ~ ~-2 ~ Items[{Slot:16b}] store result block ~ ~-2 ~ Items[{Slot:16b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:17b}] if data block ~ ~-2 ~ Items[{Slot:17b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:17b}].count
# 【変更：2026-09-28 26.3対応】アイテムの数の項目が 26.3 では Count（byte）から count（int）に変わった
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:17b}] if data block ~ ~-2 ~ Items[{Slot:17b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:17b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:17b}] if data block ~ ~-2 ~ Items[{Slot:17b}] run scoreboard players operation #Calc1 temp += #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:17b}] if data block ~ ~-2 ~ Items[{Slot:17b}] store result block ~ ~-2 ~ Items[{Slot:17b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:24b}] if data block ~ ~-2 ~ Items[{Slot:24b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:24b}].count
# 【変更：2026-09-28 26.3対応】アイテムの数の項目が 26.3 では Count（byte）から count（int）に変わった
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:24b}] if data block ~ ~-2 ~ Items[{Slot:24b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:24b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:24b}] if data block ~ ~-2 ~ Items[{Slot:24b}] run scoreboard players operation #Calc1 temp += #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:24b}] if data block ~ ~-2 ~ Items[{Slot:24b}] store result block ~ ~-2 ~ Items[{Slot:24b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:25b}] if data block ~ ~-2 ~ Items[{Slot:25b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:25b}].count
# 【変更：2026-09-28 26.3対応】アイテムの数の項目が 26.3 では Count（byte）から count（int）に変わった
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:25b}] if data block ~ ~-2 ~ Items[{Slot:25b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:25b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:25b}] if data block ~ ~-2 ~ Items[{Slot:25b}] run scoreboard players operation #Calc1 temp += #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:25b}] if data block ~ ~-2 ~ Items[{Slot:25b}] store result block ~ ~-2 ~ Items[{Slot:25b}].count byte 1 run scoreboard players get #Calc1 temp

execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:26b}] if data block ~ ~-2 ~ Items[{Slot:26b}] store result score #Calc1 temp run data get block ~ ~-2 ~ Items[{Slot:26b}].count
# 【変更：2026-09-28 26.3対応】アイテムの数の項目が 26.3 では Count（byte）から count（int）に変わった
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:26b}] if data block ~ ~-2 ~ Items[{Slot:26b}] store result score #Calc2 temp run data get storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:26b}].count
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:26b}] if data block ~ ~-2 ~ Items[{Slot:26b}] run scoreboard players operation #Calc1 temp += #Calc2 temp
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:26b}] if data block ~ ~-2 ~ Items[{Slot:26b}] store result block ~ ~-2 ~ Items[{Slot:26b}].count byte 1 run scoreboard players get #Calc1 temp

# 完成品スロットにアイテムが無い場合
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:6b}] unless data block ~ ~-2 ~ Items[{Slot:6b}] run data modify block ~ ~-2 ~ Items append from storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:6b}]
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:7b}] unless data block ~ ~-2 ~ Items[{Slot:7b}] run data modify block ~ ~-2 ~ Items append from storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:7b}]
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:8b}] unless data block ~ ~-2 ~ Items[{Slot:8b}] run data modify block ~ ~-2 ~ Items append from storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:8b}]
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:15b}] unless data block ~ ~-2 ~ Items[{Slot:15b}] run data modify block ~ ~-2 ~ Items append from storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:15b}]
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:16b}] unless data block ~ ~-2 ~ Items[{Slot:16b}] run data modify block ~ ~-2 ~ Items append from storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:16b}]
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:17b}] unless data block ~ ~-2 ~ Items[{Slot:17b}] run data modify block ~ ~-2 ~ Items append from storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:17b}]
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:24b}] unless data block ~ ~-2 ~ Items[{Slot:24b}] run data modify block ~ ~-2 ~ Items append from storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:24b}]
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:25b}] unless data block ~ ~-2 ~ Items[{Slot:25b}] run data modify block ~ ~-2 ~ Items append from storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:25b}]
execute if data storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:26b}] unless data block ~ ~-2 ~ Items[{Slot:26b}] run data modify block ~ ~-2 ~ Items append from storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:26b}]
