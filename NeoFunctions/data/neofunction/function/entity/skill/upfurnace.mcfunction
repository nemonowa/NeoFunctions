# 命名：upfurnace
# 説明：スペルサイン強化におけるかまどのステータス操作
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/upfurnace


#内容
execute if block ~ ~ ~ #neofunction:air run kill @e[tag=upfurnacevis]
execute if block ~ ~ ~ #neofunction:air run kill @s

execute unless entity @s[tag=activate] run return 0

execute store result entity @s data.CookTimeMax short 1 run data get block ~ ~ ~ CookTimeTotal
execute store result entity @s data.CookTimeMax short 0.99999999 run data get entity @s data.CookTimeMax
execute store result block ~ ~ ~ CookTime short 1 run data get entity @s data.CookTimeMax
data modify block ~ ~ ~ BurnTime set value 300s
execute store result entity @s data.cnt short -1 run data get entity @s data.cnt -1.000000001
particle minecraft:small_flame ~ ~ ~ 0 0 0 0.05 10
execute if data block ~ ~ ~ Items[{Slot:0b}] run particle minecraft:large_smoke ~ ~1 ~ 0 0.1 0 1 0 force
execute if data block ~ ~ ~ Items[{Slot:0b}] run playsound minecraft:block.fire.extinguish block @a[distance=..16] ~ ~ ~ 1 1

execute if data entity @s data{cnt:1200s} run tellraw @a[distance=..8] {"text":"超効率乾式精錬終了:","color":"white","bold":true,"underlined":true}
execute if data entity @s data{cnt:1200s} run data modify entity @e[tag=upfurnacevis,distance=..3,limit=1] equipment.head.id set value "minecraft:glass"
execute if data entity @s data{cnt:1200s} run tag @s remove activate