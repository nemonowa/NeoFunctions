# 命名：1415_armor
# 説明：
# >(呼び出し元が見つかりませんでした)
# =/function neofunction:system/adv/tick/cmd/1415_armor

loot spawn ~ ~ ~ loot neofunction:farming/wheat_ex
# 【変更：2026-09-27 26.3対応】元の行は show_item の tag 文字列内の引用符が崩れていて 1.20.4 でも読み込めなかったため、意図どおりに直して 26.3 形式にした
execute if entity @e[type=item,limit=1,sort=nearest,tag=!check,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1591.0f]}}}}] run tellraw @s {"translate": "レガシードロップ！%1$s","color": "dark_aqua","bold": true,"with": [{"text": "黄金麦の圧縮俵","color": "gold","bold": true,hover_event:{action:"show_item",id:"hay_block",count:1,components:{"minecraft:enchantments":{"minecraft:efficiency":1},"minecraft:lore":[{"translate":"%1$sが大量に圧縮されてできた俵。","color":"gray","italic":false,"with":[{"text":"黄金麦","color":"gold","bold":true}]},{"text":"ルクスイーファの名産品で、通貨のように扱われることもある。","color":"gray","italic":false}],"minecraft:custom_name":{"text":"黄金麦の圧縮俵","color":"gold","bold":true,"italic":false},"minecraft:custom_data":{rare:["3"]},"minecraft:custom_model_data":{floats:[1591.0f]}}}}]}
execute as @e[type=item,limit=1,sort=nearest,nbt=!{PickupDelay:0s}] if data entity @s Item.components{"minecraft:custom_model_data":{floats:[1591.0f]}} run data modify entity @s PickupDelay set value 0s
execute as @e[type=item,limit=1,sort=nearest,nbt={PickupDelay:0s},tag=!check] at @s run function neofunction:entity/.spawn/.neo