# 命名：reset1
# 説明：色彩の神殿入場処理
# >/neo
# =/function neofunction:system/adv/tick/dungeon/colorofsanctuary/reset1


#内容
execute as @s at @a[advancements={neofunction:tick/dungeon/colorofsanctuary/start=true}] run playsound block.beacon.activate record @s ~ ~ ~ 2.0 0.5

#アイテムをいったんストレージに入れつつ没収する汎用処理
execute as @s at @s run function neofunction:system/world/ceresta/parkour/confiscate with entity @s

# 不正禁止タグ付与
tag @s add parkour
tag @s add 1024
tag @s add color1

#ダンジョン用の弓と矢を与える
give @p minecraft:arrow[minecraft:custom_name={"text":"Color of arrow","color":"gray","bold":true,"italic":false},minecraft:enchantments={"minecraft:infinity":10},minecraft:custom_model_data={floats:[1024.0f]},minecraft:custom_data={rare:["st"]}] 1

give @p minecraft:bow[minecraft:custom_name=[{"text":"Color ","color":"yellow","bold":true,"italic":false},{"text":"of ","color":"gold"},{"text":"Trial","color":"yellow"}],minecraft:lore=[{"text":"試練に挑む者の手に、一時だけ託される色彩の弓。","color":"gray","bold":true,"italic":false},{"text":"敵の魂を鮮やかに射抜き、その存在価値を問う。 ","color":"gray","bold":true,"italic":false},{"text":"色とりどりの矢が、敵を四散へと導く。","color":"gray","bold":true,"italic":false}],minecraft:repair_cost=2147483536,minecraft:unbreakable={},minecraft:damage=0,minecraft:enchantments={"minecraft:infinity":10},minecraft:custom_model_data={floats:[1024.0f]},minecraft:custom_data={rare:["st"]}] 1

#演出
title @s title ["",{"text":"Color","bold":true,"underlined":true,"color":"gold"},{"text":" ","bold":true,"color":"gold"},{"text":"of","bold":true,"underlined":true,"color":"gold"},{"text":" ","bold":true},{"text":"Trial","bold":true,"underlined":true,"color":"gold"}]
title @s subtitle {"text":"Stage 1","color":"gold"}
title @s times 20 100 20

#ダンジョン内にテレポート
execute in neodimension:ceresta_festa run tp @s 1142.5 37.00 1441.5 -180 0