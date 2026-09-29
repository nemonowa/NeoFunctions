# 命名：structure_block
# 説明：
# >/function neofunction:entity/.spawn/obj/item/.neo
# =/function neofunction:entity/.spawn/obj/item/structure_block


# ここにボス処理追記
execute if data entity @s Item.components{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/604"}} as @p at @s run function neofunction:system/adv/player_killed_entity/604
execute if data entity @s Item.components{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/621"}} as @p at @s run function neofunction:system/adv/player_killed_entity/621
execute if data entity @s Item.components{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/662"}} as @p at @s run function neofunction:system/adv/player_killed_entity/662
execute if data entity @s Item.components{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/666"}} as @p at @s run function neofunction:system/adv/player_killed_entity/666
execute if data entity @s Item.components{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/670"}} as @p at @s run function neofunction:system/adv/player_killed_entity/670
execute if data entity @s Item.components{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/676"}} as @p at @s run function neofunction:system/adv/player_killed_entity/676
execute if data entity @s Item.components{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/674"}} as @p at @s run function neofunction:system/adv/player_killed_entity/674
execute if data entity @s Item.components{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/738"}} as @p at @s run function neofunction:system/adv/player_killed_entity/738
execute if data entity @s Item.components{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/752"}} as @p at @s run function neofunction:system/adv/player_killed_entity/752
execute if data entity @s Item.components{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/768"}} as @p at @s run function neofunction:system/adv/player_killed_entity/768
execute if data entity @s Item.components{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/769"}} as @p at @s run function neofunction:system/adv/player_killed_entity/769
execute if data entity @s Item.components{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/777"}} as @p at @s run function neofunction:system/adv/player_killed_entity/777

# 釣り用処理
execute if data entity @s Item.components."minecraft:custom_data".AltLootTable run data modify storage neofunction:fishing Motion set from entity @s Motion
execute if data entity @s Item.components."minecraft:custom_data".AltLootTable at @s run function neofunction:entity/.spawn/obj/item/structure_block/1 with entity @s Item.components."minecraft:custom_data"
execute if data entity @s Item.components."minecraft:custom_data".AltLootTable at @s as @e[tag=fishing_item,distance=..0.1] run function neofunction:entity/.spawn/obj/item/structure_block/2 with entity @s
execute if data entity @s Item.components."minecraft:custom_data".AltLootTable run kill @s

kill @s