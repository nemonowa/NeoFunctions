# 命名：738
# 説明：738が殴られた時
# >neodvancement/player_hurt_entity/738
# =/function neofunction:system/adv/player_hurt_entity/738



## 内容
execute as @s at @s as @e[predicate=neofunction:random_chance/70,tag=boss,distance=..32] at @s run summon item ~ ~ ~ {PickupDelay:32767,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Almirante Salazar","color":"dark_red","bold":true,"italic":false}],Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{summon:739}}}}

