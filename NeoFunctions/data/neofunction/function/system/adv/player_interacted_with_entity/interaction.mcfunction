# 命名：interaction
# 説明：
# >/function neofunction:player_interacted_with_entity
# =/function neofunction:system/adv/player_interacted_with_entity/interaction

# ごくごく民
execute if entity @e[limit=1,sort=nearest,distance=..8,nbt={Tags:["drink"]}] run return run function neofunction:system/adv/player_interacted_with_entity/interaction/drink

# イースターエッグ要素
execute if entity @e[limit=1,sort=nearest,distance=..8,nbt={Tags:[easter]}] run playsound entity.allay.ambient_without_item record @s ~ ~ ~ 2.0 2.0
execute if entity @e[limit=1,sort=nearest,distance=..8,nbt={Tags:[easter]}] run tellraw @s [{"selector":"@s",hover_event:{"action":"show_text","value":[{"text":"夢想の断片\nよく見つけたね！"}]}},{"text":"が進捗"},{"text":"[","color":"green"},{"text":"夢想の断片","color":"white","bold":true},{"text":"]","color":"green"},{"text":"を達成しました。"}]
# execute if entity @e[limit=1,sort=nearest,distance=..8,nbt={Tags:[easter]}] run function neofunction:system/adv/player_interacted_with_entity/interaction/drink
