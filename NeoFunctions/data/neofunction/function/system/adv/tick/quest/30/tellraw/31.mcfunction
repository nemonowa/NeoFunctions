# 命名：31
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/31

execute in neodimension:ceresta_festa run loot spawn 958 45 2265 loot neofunction:item/1663
execute in neodimension:ceresta_festa positioned 958 45 2265 run data merge entity @e[type=item,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1663.0f]}}}},limit=1] {PickupDelay:100,Glowing:1b}




