# 命名：1798
# 説明：
# >/advancement neofunction:shot_crossbow/1798
# =/function neofunction:system/adv/shot_crossbow/1798


# 【変更：2026-09-27 26.3対応】「レベルを問わず早業が付いているか」は NBT 一致では表せないため execute if items の enchantments~ 判定に置き換える
execute if items entity @s weapon.mainhand minecraft:crossbow[custom_model_data={floats:[1798.0f]},enchantments~[{enchantments:"minecraft:quick_charge"}]] unless entity @s[nbt={Inventory:[],equipment:{offhand:{id:"minecraft:shield",components:{"minecraft:custom_model_data":{floats:[1797.0f]}}}}}] run tellraw @s [{"text":"🔯セットスペル【巨星の一閃】の効果が切れた。","color":"gray"}]
execute if entity @s[nbt={Inventory:[],equipment:{offhand:{id:"minecraft:crossbow",components:{"minecraft:custom_model_data":{floats:[1798.0f]}}}}}] run item modify entity @s weapon.offhand neofunction:cmd/1798
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_model_data":{floats:[1798.0f]}}}}] unless entity @s[nbt={Inventory:[],equipment:{offhand:{id:"minecraft:shield",components:{"minecraft:custom_model_data":{floats:[1797.0f]}}}}}] run item modify entity @s weapon.mainhand neofunction:cmd/1798


# 【変更：2026-09-27 26.3対応】「レベルを問わず早業が付いているか」は NBT 一致では表せないため execute if items の enchantments~ 判定に置き換える
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_model_data":{floats:[1798.0f]}}},Inventory:[],equipment:{offhand:{id:"minecraft:shield",components:{"minecraft:custom_model_data":{floats:[1797.0f]}}}}}] unless items entity @s weapon.mainhand minecraft:crossbow[custom_model_data={floats:[1798.0f]},enchantments~[{enchantments:"minecraft:quick_charge"}]] run tellraw @s [{"text":"🔯セットスペル発動【巨星の一閃】","color":"light_purple"}]
# 【変更：2026-09-27 26.3対応】「レベルを問わず早業が付いているか」は NBT 一致では表せないため execute if items の enchantments~ 判定に置き換える
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_model_data":{floats:[1798.0f]}}},Inventory:[],equipment:{offhand:{id:"minecraft:shield",components:{"minecraft:custom_model_data":{floats:[1797.0f]}}}}}] unless items entity @s weapon.mainhand minecraft:crossbow[custom_model_data={floats:[1798.0f]},enchantments~[{enchantments:"minecraft:quick_charge"}]] run enchant @s minecraft:quick_charge 1

