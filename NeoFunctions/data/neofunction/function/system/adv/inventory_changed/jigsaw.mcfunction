# 命名：jigsaw
# 説明：システム
# 説明：進捗達成時
# >inventory_changed/jigsaw
# =/function neofunction:system/adv/inventory_changed/jigsaw

# 内容 深淵召喚
execute if data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1116.0f]}}}] run function neofunction:asset/summon/44
clear @s[gamemode=!creative] minecraft:jigsaw


## 再使用のために進捗剥奪
advancement revoke @s only neofunction:inventory_changed/jigsaw