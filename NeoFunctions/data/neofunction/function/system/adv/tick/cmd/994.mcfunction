# 命名：994
# 説明：異空の計器：compass
# 実行条件：メインハンドまたはオフハンドにコンパスを持っている場合
# >
# =/function neofunction:system/adv/tick/cmd/994


# 所持時の処理
execute as @s store result score pos0 temp run data get entity @s Pos[0]
execute as @s store result score pos1 temp run data get entity @s Pos[1]
execute as @s store result score pos2 temp run data get entity @s Pos[2]
execute as @s store result score pos3 temp run data get entity @s Rotation[0]
execute as @s store result score pos4 temp run data get entity @s Rotation[1]

title @s actionbar [{"text":"x:","color":"dark_aqua"},{"score":{"name":"pos0","objective":"temp"},"bold":true},{"text":" y:"},{"score":{"name":"pos1","objective":"temp"},"bold":true},{"text":" z:"},{"score":{"name":"pos2","objective":"temp"},"bold":true},{"text":" Yaw:"},{"score":{"name":"pos3","objective":"temp"},"bold":true},{"text":" Pitch:"},{"score":{"name":"pos4","objective":"temp"},"bold":true}]

title @s[scores={sneak_time=1..}] actionbar [{"text":"転相要請：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"sneak_time"}},{"text":"/"},{"text":"50 tick"}]

playsound minecraft:block.amethyst_cluster.step record @s[scores={sneak_time=50..}] ~ ~ ~ 1 1.5 1
execute as @s[scores={sneak_time=50..}] run function neofunction:asset/skill/4
scoreboard players set @s[scores={sneak_time=50..}] sneak_time 0

# 旧スニーク時の処理
# 内容(距離順に配置)(5s旧式処理)
# execute as @s[scores={sneak_time=40..}] run function neofunction:system/adv/tick/item/compass_sneak
# execute if entity @e[type=armor_stand,tag=marked,distance=..3] run function neofunction:system/pos/.macro with storage pos:0
# 【変更：2026-09-28 26.3対応】flash パーティクルは 26.3 で色の指定が必須になったため、1.20.4 と同じ白を指定
# execute as @e[type=armor_stand,tag=marked,distance=..32] at @s run particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~1 ~ 0 0 0 1 0 force
# execute as @e[type=armor_stand,tag=marked,distance=..64] run data merge entity @s {equipment:{head:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":{floats:[46.0f]}}}}}