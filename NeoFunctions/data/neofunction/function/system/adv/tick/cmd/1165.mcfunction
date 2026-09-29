# 命名：1165
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/tick/cmd/1165



## 内容
tellraw @s [{"text":"スペルアイテム🔯発動【色彩散華】","color":"light_purple"}]
execute as @s at @s run playsound block.pointed_dripstone.land record @p ~ ~ ~ 1.0 0.8
item replace entity @s weapon.offhand with minecraft:arrow[minecraft:custom_name={"text":"Color of arrow","color":"gray","bold":true,"italic":false},minecraft:enchantments={"minecraft:infinity":10},minecraft:custom_model_data={floats:[1120.0f]},minecraft:custom_data={rare:["st"]}] 1