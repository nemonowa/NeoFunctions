# 命名：check_loop
# 説明：ループで各レシピが適するかチェック
# 実行条件：改良型作業台のクラフト実行
# >/function neofunction:system/crafter/run
# =/function neofunction:system/crafter/check_loop


# レシピ部分を抽出
data modify storage neofunction:crafter Temp.recipe_check set from storage neofunction:crafter Temp.recipe[0].recipe
data remove storage neofunction:crafter Temp.recipe_check[].count
#レシピと樽内のCount以外のデータが同じかどうかを確認
data modify storage neofunction:crafter Temp.in set value {}
data modify storage neofunction:crafter Temp.in.A set from storage neofunction:crafter Temp.recipe_check
data modify storage neofunction:crafter Temp.in.B set from storage neofunction:crafter Temp.block
execute store result storage neofunction:crafter Temp.out byte 1 run function neofunction:asset/nbt/equal with storage neofunction:crafter Temp.in

# tellraw nuyutsumine {"storage":"ie:","nbt": "nbt_check"}
# 同じなら現在のレシピを保存
execute if data storage neofunction:crafter Temp{out:1b} run data modify storage neofunction:crafter Temp.RunningRecipe set from storage neofunction:crafter Temp.recipe[0]
execute if data storage neofunction:crafter Temp{out:1b} run return run function neofunction:system/crafter/craft_check

# 違ったら次のレシピを試す
execute if data storage neofunction:crafter Temp{out:0b} run data remove storage neofunction:crafter Temp.recipe[0]
execute if data storage neofunction:crafter Temp{out:0b} if data storage neofunction:crafter Temp.recipe[0] run function neofunction:system/crafter/check_loop
