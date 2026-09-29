# 命名：get_data
# 説明：
# >/function neofunction:system/crafter/run
# =/function neofunction:system/crafter/get_data
$execute unless data block ~ ~-2 ~ Items[{Slot:$(Slot)b}] run return 0
data modify storage neofunction:crafter Temp.block append value {}
# 【変更：2026-09-27 26.3対応】custom_model_data は小数(float)で保存されるため、レシピ(整数)と比較できるよう整数に変換して写す
$execute if data block ~ ~-2 ~ Items[{Slot:$(Slot)b}].components."minecraft:custom_model_data".floats[0] run execute store result storage neofunction:crafter Temp.block[-1].CustomModelData int 1 run data get block ~ ~-2 ~ Items[{Slot:$(Slot)b}].components."minecraft:custom_model_data".floats[0]
$execute if data block ~ ~-2 ~ Items[{Slot:$(Slot)b}].components."minecraft:custom_model_data".floats[0] run return run data modify storage neofunction:crafter Temp.block[-1].Slot set value $(Slot)b
$data modify storage neofunction:crafter Temp.block[-1] set from block ~ ~-2 ~ Items[{Slot:$(Slot)b}]
