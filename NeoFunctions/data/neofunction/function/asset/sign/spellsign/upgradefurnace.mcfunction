# 命名：upgradefurnace
# 説明：竈強化
# >
# =/function neofunction:asset/sign/spellsign/upgradefurnace


# 内容

execute unless entity @e[tag=upfurnace,distance=..3] run return run summon armor_stand ~ ~-1.2 ~ {ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["upfurnacevis"],Passengers:[{id:"minecraft:marker",Tags:["upfurnace"],data:{cnt:1s}}],Rotation:[45F,0F],equipment:{head:{id:"minecraft:glass",count:1}}}

# 下が竈ではない場合
execute as @e[tag=upfurnace] at @s unless block ~ ~ ~ minecraft:furnace as @p run tag @s add failedfur
tellraw @s[tag=failedfur] {"text":"注:下部ブロックはかまどではない！","color":"red","bold":true,"underlined":true}
execute if entity @s[tag=failedfur] as @e[tag=upfurnace,distance=..3,limit=1] at @s run setblock ~ ~1 ~ air
execute if entity @s[tag=failedfur] run kill @e[tag=upfurnace,distance=..3]
execute if entity @s[tag=failedfur] run kill @e[tag=upfurnacevis,distance=..3]
#execute if entity @s[tag=failedfur] run loot 
execute if entity @s[tag=failedfur] run return run tag @s remove failedfur

execute unless entity @s[nbt={Inventory:[{id:"minecraft:coal_block"}]}] run return run tellraw @s {"text":"注:石炭ブロックを持っていない！","color":"red","bold":true,"underlined":true}


# 開始
clear @s minecraft:coal_block 1
execute as @e[tag=upfurnace,distance=..3,limit=1] run data modify entity @s data.cnt set value 1s
tag @e[tag=upfurnace,distance=..3,limit=1] add activate
data modify entity @e[tag=upfurnacevis,distance=..3,limit=1] equipment.head.id set value "minecraft:beacon"

# 演出
tellraw @s {"text":"超効率乾式精錬開始:","color":"white","bold":true,"underlined":true}
playsound minecraft:block.beacon.activate block @a[distance=..16] ~ ~ ~ 1 0.5