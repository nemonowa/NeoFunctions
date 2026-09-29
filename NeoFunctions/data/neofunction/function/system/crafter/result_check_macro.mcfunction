# 命名：result_check_macro
# 説明：レシピ確定後本当にクラフトできるかチェック
# 実行条件：改良型作業台のクラフトするレシピ確定時
# >/function neofunction:system/crafter/craft_check
# =/function neofunction:system/crafter/result_check_macro

#クラフト結果とnbtが完全一致かつスタックしても最大数からはみ出ない
$data modify storage neofunction:crafter Temp.in.A set from storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:$(a)b}]
$data modify storage neofunction:crafter Temp.in.B set from block ~ ~-2 ~ Items[{Slot:$(a)b}]
data remove storage neofunction:crafter Temp.in.A.count
data remove storage neofunction:crafter Temp.in.B.count
execute store result storage neofunction:crafter Temp.out byte 1 run function neofunction:asset/nbt/equal with storage neofunction:crafter Temp.in
execute if data storage neofunction:crafter Temp{out:0b} run data modify storage neofunction:crafter CanCraft set value 0b
$execute if data storage neofunction:crafter Temp{out:1b} store result score #Calc1 temp run data get storage neofunction:crafter Temp.RunningRecipe.result_item[{Slot:$(a)b}].count
$execute if data storage neofunction:crafter Temp{out:1b} store result score #Calc2 temp run data get block ~ ~-2 ~ Items[{Slot:$(a)b}].count
$data modify storage neofunction:crafter Temp.in.id set from block ~ ~-2 ~ Items[{Slot:$(a)b}].id
execute store result storage neofunction:crafter Temp.out byte 1 run function neofunction:asset/nbt/item_stack with storage neofunction:crafter Temp.in
#tellraw nuyutsumine {"nbt":"Temp.in","storage":"neofunction:crafter"}
execute store result score #Calc3 temp run data get storage neofunction:crafter Temp.out
scoreboard players operation #Calc1 temp += #Calc2 temp
execute if score #Calc1 temp > #Calc3 temp run data modify storage neofunction:crafter CanCraft set value 0b
