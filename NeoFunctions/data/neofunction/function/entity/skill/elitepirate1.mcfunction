# 命名：elitepirate1
# 説明：
# >/function neofunction:asset/bossbar/update
# =/function neofunction:entity/skill/elitepirate1





#サウンド 
playsound entity.wither.death record @a[distance=..32] ~ ~ ~ 1.0 0.9

execute in neodimension:ceresta_festa run tp @s 398 42 1031

data merge entity @s {NoAI:1b}

#30秒の猶予後スキル行動＋通常行動を再開。
schedule function neofunction:entity/skill/tridentforcusscheduleremove 10s append

#ボスの見た目変更
item replace entity @e[limit=1,tag=elitepirate1] armor.legs with leather_leggings[minecraft:dyed_color=8722076,minecraft:trim={material:"minecraft:netherite",pattern:"minecraft:eye"}] 1
item replace entity @e[limit=1,tag=elitepirate1] armor.chest with leather_chestplate[minecraft:dyed_color=8722076,minecraft:trim={material:"minecraft:gold",pattern:"minecraft:rib"}] 1
item replace entity @e[limit=1,tag=elitepirate1] armor.feet with leather_boots[minecraft:dyed_color=8722076,minecraft:enchantments={"minecraft:depth_strider":3},minecraft:attribute_modifiers=[{type:"movement_speed",id:"neofunction:93ddc64f-9eb0-4b99-88e5-9fa25e50fc51",amount:0.1,operation:"add_multiplied_base",slot:"feet"}],minecraft:trim={material:"minecraft:gold",pattern:"minecraft:rib"}] 1

#行動の中身

execute as @e[tag=elitepirate1] at @s run summon item 398 41 1046 {PickupDelay:32767,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Almirante Salazar","color":"dark_red","bold":true,"italic":false}],Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{summon:739}}}}

execute as @e[tag=elitepirate1] at @s run summon item 398 41 1016 {PickupDelay:32767,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Almirante Salazar","color":"dark_red","bold":true,"italic":false}],Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{summon:739}}}}

execute as @e[tag=elitepirate1] at @s run summon item 383 41 1031 {PickupDelay:32767,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Almirante Salazar","color":"dark_red","bold":true,"italic":false}],Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{summon:739}}}}

execute as @e[tag=elitepirate1] at @s run summon item 413 41 1031 {PickupDelay:32767,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Almirante Salazar","color":"dark_red","bold":true,"italic":false}],Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{summon:739}}}}

execute as @e[tag=elitepirate1] at @s run summon item 406 41 1023 {PickupDelay:32767,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Almirante Salazar","color":"dark_red","bold":true,"italic":false}],Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{summon:739}}}}

execute as @e[tag=elitepirate1] at @s run summon item 390 41 1039 {PickupDelay:32767,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Almirante Salazar","color":"dark_red","bold":true,"italic":false}],Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{summon:739}}}}



tag @s remove tridentforcus8
tag @s add tridentforcus16

tag @s remove elitepirate1
