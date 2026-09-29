# 命名：41
# 説明：装備修復
# 説明：消費SP150%
# >
# =/function neofunction:asset/skill/41


# 内容

# 装備修復

execute if data entity @s equipment.feet run tag @s add repairer
execute if data entity @s equipment.legs run tag @s add repairer
execute if data entity @s equipment.chest run tag @s add repairer
execute if data entity @s equipment.head run tag @s add repairer

execute if entity @s[tag=!repairer] run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 2 1
execute if entity @s[tag=!repairer] run return run tellraw @s "修復する防具が存在しません"

item modify entity @s armor.head neofunction:set_damage/1
item modify entity @s armor.chest neofunction:set_damage/1
item modify entity @s armor.legs neofunction:set_damage/1
item modify entity @s armor.feet neofunction:set_damage/1
tag @s remove repairer
 
# 演出
playsound block.anvil.use record @s ~ ~ ~ 0.1 0.7
particle crit ~ ~1 ~ 0.1 0.5 0.1 0.1 100 force

# SP消費：150%SP消費
scoreboard players operation @s SP -= @s SP150p
