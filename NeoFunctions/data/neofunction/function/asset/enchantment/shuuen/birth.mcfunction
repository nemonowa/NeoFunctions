# 命名：birth
# 説明：太陽の誕生。矢を消して小さな太陽（光るブロックの表示 3 つ）を出し
# 実行条件：爆心として、矢が最高点に達した位置で（#cur に番号）
# >/function neofunction:asset/enchantment/shuuen/tick
# =/function neofunction:asset/enchantment/shuuen/birth


# 内容
execute as @e[type=#minecraft:arrows,tag=neo.nk_arrow] if score @s neo.nk_id = #cur neo.nk_id run kill @s
summon minecraft:item_display ~ ~ ~ {Tags:["neo.nk_fx","neo.nk_sun","neo.nk_new2"],item:{id:"minecraft:pearlescent_froglight",count:1},brightness:{sky:15,block:15},view_range:8f,teleport_duration:2,Glowing:1b,glow_color_override:16766720,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]}}
summon minecraft:item_display ~ ~ ~ {Tags:["neo.nk_fx","neo.nk_sun","neo.nk_new2"],item:{id:"minecraft:ochre_froglight",count:1},brightness:{sky:15,block:15},view_range:8f,teleport_duration:2,transformation:{left_rotation:{angle:0.785f,axis:[0f,1f,0f]},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]}}
summon minecraft:item_display ~ ~ ~ {Tags:["neo.nk_fx","neo.nk_sun","neo.nk_new2"],item:{id:"minecraft:shroomlight",count:1},brightness:{sky:15,block:15},view_range:8f,teleport_duration:2,transformation:{left_rotation:{angle:0.785f,axis:[0.707f,0f,0.707f]},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]}}
scoreboard players operation @e[tag=neo.nk_new2] neo.nk_id = #cur neo.nk_id
tag @e[tag=neo.nk_new2] remove neo.nk_new2
particle minecraft:flash{color:[1.0,0.9,0.5,1.0]} ~ ~ ~ 0 0 0 0 3 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 150 force
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 20 0.5
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 20 0.5
scoreboard players set @s neo.nk_v 0
scoreboard players set @s neo.nk_h 0
