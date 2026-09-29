# 命名：frogdungeon
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:item_used_on_block/frogdungeon
# =/function neofunction:system/adv/item_used_on_block/frogdungeon1

## 内容
execute unless entity @s[nbt={Inventory:[{id:"minecraft:water_bucket",components:{"minecraft:custom_model_data":{floats:[1766.0f]}}}]}] at @s run return run tellraw @a [{"text":"<","color":"white","bold":true,"italic":false},{"selector":"@s"},{"text":">"},{"text":"とてもぬめぬめしていて、これ以上は進めそうにない……。","underlined":true,hover_event:{"action":"show_text","value":[{"text":"ヒント：3章メインクエストが進行すると、クラウスが必要なアイテムを作ってくれます"}]}}]

execute in neodimension:ceresta_festa run fill 745 2 2208 751 0 2214 minecraft:air replace minecraft:honey_block

playsound entity.generic.extinguish_fire record @a[distance=..16] ~ ~ ~ 1.0 0.5
playsound entity.generic.extinguish_fire record @a[distance=..16] ~ ~ ~ 1.0 0.5
playsound entity.generic.extinguish_fire record @a[distance=..16] ~ ~ ~ 1.0 0.5
playsound entity.generic.extinguish_fire record @a[distance=..16] ~ ~ ~ 1.0 0.5
playsound entity.generic.extinguish_fire record @a[distance=..16] ~ ~ ~ 1.0 0.5


## 再使用のために進捗剥奪
advancement revoke @s only neofunction:item_used_on_block/frogdungeon