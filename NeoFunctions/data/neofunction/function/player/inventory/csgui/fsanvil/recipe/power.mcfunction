# 命名：power
# 説明：inferiorReforge
# >/function
# =/function neofunction:player/inventory/csgui/fsanvil/recipe/power

# 内容

##武器のattributeを反映
data modify storage neofunction:gui Anvil.status.atk set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}]
data modify storage neofunction:gui Anvil.status.atk set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}]
###データを消すこと
data remove entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}]
data remove entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}]

##乗算
# 【変更：2026-09-27 26.3対応】属性値のデータ(attribute_modifiers の要素)のキー名は 1.20.5 で Amount→amount、Operation(数値)→operation(文字列) に変わった
execute if data entity @s Items[{Slot:16b}].components{"minecraft:custom_data":{rare:0}} if data storage neofunction:gui Anvil.status.atk store result storage neofunction:gui Anvil.status.atk.amount float 1.15 run data get storage neofunction:gui Anvil.status.atk.amount
execute if data entity @s Items[{Slot:16b}].components{"minecraft:custom_data":{rare:["1"]}} if data storage neofunction:gui Anvil.status.atk store result storage neofunction:gui Anvil.status.atk.amount float 1.3 run data get storage neofunction:gui Anvil.status.atk.amount
execute if data entity @s Items[{Slot:16b}].components{"minecraft:custom_data":{rare:["2"]}} if data storage neofunction:gui Anvil.status.atk store result storage neofunction:gui Anvil.status.atk.amount float 1.45 run data get storage neofunction:gui Anvil.status.atk.amount
execute if data entity @s Items[{Slot:16b}].components{"minecraft:custom_data":{rare:["3"]}} if data storage neofunction:gui Anvil.status.atk store result storage neofunction:gui Anvil.status.atk.amount float 1.6 run data get storage neofunction:gui Anvil.status.atk.amount
execute if data entity @s Items[{Slot:16b}].components{"minecraft:custom_data":{rare:["4"]}} if data storage neofunction:gui Anvil.status.atk store result storage neofunction:gui Anvil.status.atk.amount float 1.75 run data get storage neofunction:gui Anvil.status.atk.amount
execute if data entity @s Items[{Slot:16b}].components{"minecraft:custom_data":{rare:["5"]}} if data storage neofunction:gui Anvil.status.atk store result storage neofunction:gui Anvil.status.atk.amount float 1.9 run data get storage neofunction:gui Anvil.status.atk.amount
execute if data entity @s Items[{Slot:16b}].components{"minecraft:custom_data":{rare:["6"]}} if data storage neofunction:gui Anvil.status.atk store result storage neofunction:gui Anvil.status.atk.amount float 2.05 run data get storage neofunction:gui Anvil.status.atk.amount
execute if data entity @s Items[{Slot:16b}].components{"minecraft:custom_data":{rare:["7"]}} if data storage neofunction:gui Anvil.status.atk store result storage neofunction:gui Anvil.status.atk.amount float 2.2 run data get storage neofunction:gui Anvil.status.atk.amount
execute if data entity @s Items[{Slot:16b}].components{"minecraft:custom_data":{rare:["8"]}} if data storage neofunction:gui Anvil.status.atk store result storage neofunction:gui Anvil.status.atk.amount float 2.35 run data get storage neofunction:gui Anvil.status.atk.amount
execute if data entity @s Items[{Slot:16b}].components{"minecraft:custom_data":{rare:["9"]}} if data storage neofunction:gui Anvil.status.atk store result storage neofunction:gui Anvil.status.atk.amount float 2.5 run data get storage neofunction:gui Anvil.status.atk.amount



#execute if data storage neofunction:gui Anvil.status.atk{operation:"add_multiplied_base"} store result storage neofunction:gui Anvil.status.atk.amount float 1.5 run data get storage neofunction:gui Anvil.status.atk.amount








