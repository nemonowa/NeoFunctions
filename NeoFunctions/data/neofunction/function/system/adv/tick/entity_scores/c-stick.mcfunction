# 命名：c-stick
# 説明：進捗：人参杖使用時
# 説明：1s周期
# >/function neofunction:tick/entity_scores/c-stick
# >/function neofunction:entity/.spawn/obj/arrow/shooter
# =/function neofunction:system/adv/tick/entity_scores/c-stick


# メインハンド
scoreboard players reset @s Cstick
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{slot:red}}}}] run return run function neofunction:system/trigger/on/red
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{slot:blue}}}}] run return run function neofunction:system/trigger/on/blue
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{slot:green}}}}] run return run function neofunction:system/trigger/on/green

# オフハンド
execute as @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{slot:red}}}}}] run function neofunction:system/trigger/on/red
execute as @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{slot:blue}}}}}] run function neofunction:system/trigger/on/blue
execute as @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{slot:green}}}}}] run function neofunction:system/trigger/on/green

# 
#item modify entity @s weapon.mainhand neofunction:set_damage/add/0.05

# advancement revoke @s only neofunction:tick/entity_scores/c-stick