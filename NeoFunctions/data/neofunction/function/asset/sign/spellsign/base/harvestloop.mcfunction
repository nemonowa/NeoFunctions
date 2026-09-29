# 命名：harvestloop
# 説明：収穫数に応じてlootをループ処理
# >
# =/function neofunction:asset/sign/spellsign/base/harvestloop


# 内容

execute if score harvest temp matches ..0 run return 0
execute in neodimension:nexus positioned 1290 8 1290 run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

$execute in neodimension:nexus positioned 1290 8 1290 as @e[nbt={Item:{id:"$(id)"}},limit=1] run tag @s add checkcount
execute store result score harvestcnt temp in neodimension:nexus positioned 1290 8 1290 as @e[tag=checkcount] run data get entity @s Item.count
scoreboard players remove harvestcnt temp 1
#tellraw @a {"score":{"name":"harvestcnt","objective":"temp"}}
execute store result entity @e[tag=checkcount,limit=1] Item.count int 1 in neodimension:nexus positioned 1290 8 1290 run scoreboard players get harvestcnt temp

##ループ処理
scoreboard players remove harvest temp 1
execute if score harvest temp matches 1.. run function neofunction:asset/sign/spellsign/base/harvestloop with storage neofunction:harvest