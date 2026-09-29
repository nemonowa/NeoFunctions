# 命名：loop
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/editor/load/.neo
# =/function neofunction:system/adv/tick/cmd/1717/editor/load/loop

# 【変更：2026-09-27 26.3対応】custom_model_data は小数(float)で保存されるため、これまでどおり整数で data.List に積む
execute if data storage neofunction:item/1717 Temp.Items[0].components."minecraft:custom_model_data".floats[0] run data modify storage neofunction:item/1717 data.List append value 0
execute if data storage neofunction:item/1717 Temp.Items[0].components."minecraft:custom_model_data".floats[0] run execute store result storage neofunction:item/1717 data.List[-1] int 1 run data get storage neofunction:item/1717 Temp.Items[0].components."minecraft:custom_model_data".floats[0]
execute store result score #Calc1 temp run data get storage neofunction:item/1717 Temp.Items[0].components."minecraft:custom_model_data".floats[0]
execute if score #Calc1 temp matches ..1717 run data remove storage neofunction:item/1717 data.List[-1]
execute if score #Calc1 temp matches 1739..1760 run data remove storage neofunction:item/1717 data.List[-1]
execute if score #Calc1 temp matches 1764.. run data remove storage neofunction:item/1717 data.List[-1]
data remove storage neofunction:item/1717 Temp.Items[0]
execute if data storage neofunction:item/1717 Temp.Items[0] run function neofunction:system/adv/tick/cmd/1717/editor/load/loop