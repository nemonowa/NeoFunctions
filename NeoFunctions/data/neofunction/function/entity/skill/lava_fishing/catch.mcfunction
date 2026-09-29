# 命名：catch
# 説明：
# >/function neofunction:entity/skill/lava_fishing_aec
# =/function neofunction:entity/skill/lava_fishing/catch

execute if score #Calc1 temp matches -7..0 on origin run loot spawn ~ ~1.7 ~ loot neofunction:fishing/lava/.neo
execute unless score #Calc1 temp matches -7..0 on origin run loot spawn ~ ~1 ~ loot neofunction:fishing/lava/.neo
execute at @s on origin facing entity @s eyes in neodimension:nexus positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1.8 {Tags:["MotionMarker"]}
execute as @e[type=item,tag=!check,distance=..1.8] run data modify entity @s Motion set from entity @e[tag=MotionMarker,limit=1] Pos
execute as @e[type=item,tag=!check,distance=..1.8] run function neofunction:entity/skill/lava_fishing/item with entity @s
kill @e[tag=MotionMarker]
execute on origin at @s run summon experience_orb ~ ~ ~ {Value:3s}