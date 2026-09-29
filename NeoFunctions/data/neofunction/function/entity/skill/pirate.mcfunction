# 命名：pirate
# 説明：サラザールのスキル
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/pirate


execute as @s at @s as @a[distance=..32] run playsound entity.zombie_villager.cure record @s
item replace entity @e[limit=1,tag=boss] armor.legs with leather_leggings[minecraft:dyed_color=10355480,minecraft:trim={material:"minecraft:netherite",pattern:"minecraft:eye"}] 1
item replace entity @e[limit=1,tag=boss] armor.chest with leather_chestplate[minecraft:dyed_color=10355480,minecraft:trim={material:"minecraft:gold",pattern:"minecraft:rib"}] 1
item replace entity @e[limit=1,tag=boss] armor.feet with leather_boots[minecraft:dyed_color=10355480,minecraft:enchantments={"minecraft:depth_strider":3},minecraft:attribute_modifiers=[{type:"follow_range",id:"neofunction:8046bb48-0945-4ec5-8061-18a6996b47d2",amount:32,operation:"add_value",slot:"feet"},{type:"max_health",id:"neofunction:b1dde072-5b17-4ba7-9e99-3ec241342476",amount:60,operation:"add_value",slot:"feet"},{type:"movement_speed",id:"neofunction:1917f99c-020d-4f4a-926d-06de6bfbe07e",amount:-0.5,operation:"add_multiplied_base",slot:"feet"}],minecraft:trim={material:"minecraft:gold",pattern:"minecraft:rib"}] 1
tag @s remove pirate